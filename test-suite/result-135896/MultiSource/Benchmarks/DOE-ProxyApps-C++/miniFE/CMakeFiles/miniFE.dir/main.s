	.file	"main.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN6miniFE11is_neighborERK3BoxS2_ # -- Begin function _ZN6miniFE11is_neighborERK3BoxS2_
	.p2align	5
	.type	_ZN6miniFE11is_neighborERK3BoxS2_,@function
_ZN6miniFE11is_neighborERK3BoxS2_:      # @_ZN6miniFE11is_neighborERK3BoxS2_
# %bb.0:
	ld.w	$a4, $a0, 4
	ld.w	$a5, $a1, 0
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	bne	$a4, $a5, .LBB0_5
.LBB0_1:                                # %.thread
	ld.w	$a4, $a0, 12
	ld.w	$a6, $a1, 8
	bne	$a4, $a6, .LBB0_15
.LBB0_2:                                # %.thread93
	ld.w	$a5, $a0, 20
	ld.w	$a6, $a1, 16
	ori	$a4, $zero, 1
	bne	$a5, $a6, .LBB0_25
.LBB0_3:                                # %.thread96
	beqz	$a3, .LBB0_35
# %bb.4:
	and	$a0, $a2, $a4
	ret
.LBB0_5:
	ld.w	$a6, $a1, 4
	ori	$a3, $zero, 1
	beq	$a4, $a6, .LBB0_1
# %bb.6:
	ld.w	$a7, $a0, 0
	ori	$a3, $zero, 1
	beq	$a7, $a5, .LBB0_1
# %bb.7:
	ori	$a3, $zero, 1
	beq	$a7, $a6, .LBB0_1
# %bb.8:
	bge	$a5, $a7, .LBB0_10
# %bb.9:
	ori	$a3, $zero, 1
	blt	$a4, $a6, .LBB0_1
.LBB0_10:
	slt	$t0, $a7, $a5
	slt	$a3, $a6, $a4
	and	$t1, $t0, $a3
	ori	$a3, $zero, 1
	bnez	$t1, .LBB0_1
# %bb.11:
	slt	$a3, $a5, $a7
	slt	$t1, $a7, $a6
	and	$t1, $a3, $t1
	ori	$a3, $zero, 1
	bnez	$t1, .LBB0_1
# %bb.12:
	slt	$a3, $a5, $a4
	and	$t0, $a3, $t0
	ori	$a3, $zero, 1
	bnez	$t0, .LBB0_1
# %bb.13:
	addi.w	$a5, $a5, -1
	ori	$a3, $zero, 1
	beq	$a4, $a5, .LBB0_1
# %bb.14:
	addi.w	$a3, $a6, 1
	xor	$a3, $a7, $a3
	sltui	$a3, $a3, 1
	b	.LBB0_1
.LBB0_15:
	ld.w	$a5, $a1, 12
	beq	$a4, $a5, .LBB0_2
# %bb.16:
	ld.w	$a7, $a0, 8
	beq	$a7, $a6, .LBB0_2
# %bb.17:
	beq	$a7, $a5, .LBB0_2
# %bb.18:
	bge	$a6, $a7, .LBB0_20
# %bb.19:
	blt	$a4, $a5, .LBB0_2
.LBB0_20:
	slt	$t0, $a7, $a6
	slt	$t1, $a5, $a4
	and	$t1, $t0, $t1
	bnez	$t1, .LBB0_2
# %bb.21:
	slt	$t1, $a6, $a7
	slt	$t2, $a7, $a5
	and	$t1, $t1, $t2
	bnez	$t1, .LBB0_2
# %bb.22:
	slt	$t1, $a6, $a4
	and	$t0, $t1, $t0
	bnez	$t0, .LBB0_2
# %bb.23:
	addi.w	$a6, $a6, -1
	beq	$a4, $a6, .LBB0_2
# %bb.24:
	addi.w	$a2, $a5, 1
	xor	$a2, $a7, $a2
	sltui	$a2, $a2, 1
	b	.LBB0_2
.LBB0_25:
	ld.w	$a1, $a1, 20
	beq	$a5, $a1, .LBB0_3
# %bb.26:
	ld.w	$a0, $a0, 16
	beq	$a0, $a6, .LBB0_3
# %bb.27:
	beq	$a0, $a1, .LBB0_3
# %bb.28:
	bge	$a6, $a0, .LBB0_30
# %bb.29:
	blt	$a5, $a1, .LBB0_3
.LBB0_30:
	slt	$a7, $a0, $a6
	slt	$t0, $a1, $a5
	and	$t0, $a7, $t0
	bnez	$t0, .LBB0_3
# %bb.31:
	slt	$t0, $a6, $a0
	slt	$t1, $a0, $a1
	and	$t0, $t0, $t1
	bnez	$t0, .LBB0_3
# %bb.32:
	slt	$t0, $a6, $a5
	and	$a7, $t0, $a7
	bnez	$a7, .LBB0_3
# %bb.33:
	addi.w	$a6, $a6, -1
	beq	$a5, $a6, .LBB0_3
# %bb.34:
	addi.w	$a1, $a1, 1
	xor	$a0, $a0, $a1
	sltui	$a4, $a0, 1
	b	.LBB0_3
.LBB0_35:
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	_ZN6miniFE11is_neighborERK3BoxS2_, .Lfunc_end0-_ZN6miniFE11is_neighborERK3BoxS2_
                                        # -- End function
	.globl	_ZN6miniFE18decide_how_to_growERK3BoxS2_ # -- Begin function _ZN6miniFE18decide_how_to_growERK3BoxS2_
	.p2align	5
	.type	_ZN6miniFE18decide_how_to_growERK3BoxS2_,@function
_ZN6miniFE18decide_how_to_growERK3BoxS2_: # @_ZN6miniFE18decide_how_to_growERK3BoxS2_
# %bb.0:
	ld.w	$a3, $a1, 20
	ld.w	$a4, $a0, 20
	ori	$a2, $zero, 2
	bge	$a3, $a4, .LBB1_2
.LBB1_1:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	or	$a0, $a2, $a0
	ret
.LBB1_2:
	ld.w	$a3, $a1, 16
	ld.w	$a4, $a0, 16
	bge	$a4, $a3, .LBB1_4
# %bb.3:
	move	$a0, $a2
	ret
.LBB1_4:
	ld.w	$a3, $a1, 12
	ld.w	$a4, $a0, 12
	ori	$a2, $zero, 1
	blt	$a3, $a4, .LBB1_1
# %bb.5:
	ld.w	$a3, $a1, 8
	ld.w	$a4, $a0, 8
	bge	$a4, $a3, .LBB1_7
# %bb.6:
	move	$a0, $a2
	ret
.LBB1_7:
	ld.w	$a2, $a1, 4
	ld.w	$a3, $a0, 4
	bge	$a2, $a3, .LBB1_9
# %bb.8:
	move	$a2, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	or	$a0, $a2, $a0
	ret
.LBB1_9:
	ld.w	$a1, $a1, 0
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	xori	$a1, $a0, 1
	ori	$a2, $zero, 3
	masknez	$a2, $a2, $a0
	slli.d	$a0, $a1, 32
	or	$a0, $a2, $a0
	ret
.Lfunc_end1:
	.size	_ZN6miniFE18decide_how_to_growERK3BoxS2_, .Lfunc_end1-_ZN6miniFE18decide_how_to_growERK3BoxS2_
                                        # -- End function
	.globl	_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_ # -- Begin function _ZN6miniFE20decide_how_to_shrinkERK3BoxS2_
	.p2align	5
	.type	_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_,@function
_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_: # @_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_
# %bb.0:
	ld.w	$a4, $a1, 20
	ld.w	$a5, $a0, 20
	ld.w	$a2, $a1, 16
	sub.w	$a3, $a4, $a2
	bge	$a4, $a5, .LBB2_3
# %bb.1:
	ori	$a2, $zero, 2
	bge	$a2, $a3, .LBB2_6
# %bb.2:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	or	$a0, $a2, $a0
	ret
.LBB2_3:
	ld.w	$a4, $a0, 16
	bge	$a4, $a2, .LBB2_6
# %bb.4:
	ori	$a2, $zero, 2
	bge	$a2, $a3, .LBB2_6
# %bb.5:
	ori	$a2, $zero, 2
	move	$a0, $a2
	ret
.LBB2_6:                                # %.thread
	ld.w	$a4, $a1, 12
	ld.w	$a5, $a0, 12
	ld.w	$a3, $a1, 8
	sub.w	$a2, $a4, $a3
	bge	$a4, $a5, .LBB2_9
# %bb.7:
	ori	$a3, $zero, 2
	bge	$a3, $a2, .LBB2_12
# %bb.8:
	ori	$a2, $zero, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	or	$a0, $a2, $a0
	ret
.LBB2_9:
	ld.w	$a4, $a0, 8
	bge	$a4, $a3, .LBB2_12
# %bb.10:
	ori	$a3, $zero, 2
	bge	$a3, $a2, .LBB2_12
# %bb.11:
	ori	$a2, $zero, 1
	move	$a0, $a2
	ret
.LBB2_12:                               # %.thread42
	ld.w	$a2, $a1, 4
	ld.w	$a4, $a0, 4
	ld.w	$a1, $a1, 0
	sub.w	$a3, $a2, $a1
	bge	$a2, $a4, .LBB2_15
# %bb.13:
	ori	$a4, $zero, 2
	ori	$a2, $zero, 1
	bge	$a4, $a3, .LBB2_16
# %bb.14:
	move	$a2, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	or	$a0, $a2, $a0
	ret
.LBB2_15:                               # %._crit_edge
	slti	$a2, $a3, 3
.LBB2_16:
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	or	$a0, $a0, $a2
	andi	$a1, $a0, 1
	slli.d	$a0, $a1, 32
	ori	$a2, $zero, 3
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	ret
.Lfunc_end2:
	.size	_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_, .Lfunc_end2-_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI3_0:
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	1                               # 0x1
.LCPI3_1:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -976
	.cfi_def_cfa_offset 976
	st.d	$ra, $sp, 968                   # 8-byte Folded Spill
	st.d	$fp, $sp, 960                   # 8-byte Folded Spill
	st.d	$s0, $sp, 952                   # 8-byte Folded Spill
	st.d	$s1, $sp, 944                   # 8-byte Folded Spill
	st.d	$s2, $sp, 936                   # 8-byte Folded Spill
	st.d	$s3, $sp, 928                   # 8-byte Folded Spill
	st.d	$s4, $sp, 920                   # 8-byte Folded Spill
	st.d	$s5, $sp, 912                   # 8-byte Folded Spill
	st.d	$s6, $sp, 904                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 896                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 888                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	.cfi_offset 57, -88
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI3_0)
	move	$fp, $a1
	move	$s0, $a0
	vst	$vr0, $sp, 784
	st.d	$zero, $sp, 800
	st.w	$zero, $sp, 808
	addi.d	$s2, $sp, 832
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_1)
	st.d	$s2, $sp, 816
	st.d	$zero, $sp, 824
	st.b	$zero, $sp, 832
	vst	$vr0, $sp, 848
	ori	$a0, $zero, 2
	lu32i.d	$a0, 9999
	st.d	$a0, $sp, 864
	ori	$s1, $zero, 1
	st.w	$s1, $sp, 872
.Ltmp0:
	addi.d	$a2, $sp, 784
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN6miniFE14get_parametersEiPPcRNS_10ParametersE)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.1:
	st.w	$s1, $sp, 780
	st.w	$zero, $sp, 776
.Ltmp3:
	addi.d	$a2, $sp, 780
	addi.d	$a3, $sp, 776
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN6miniFE14initialize_mpiEiPPcRiS2_)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.2:
.Ltmp6:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.3:
.Ltmp8:
	fmov.d	$fs0, $fa0
	addi.d	$a0, $sp, 784
	pcaddu18i	$ra, %call36(_ZN6miniFE20broadcast_parametersERNS_10ParametersE)
	jirl	$ra, $ra, 0
.Ltmp9:
# %bb.4:
	ld.w	$a0, $sp, 784
	st.w	$zero, $sp, 752
	st.w	$a0, $sp, 756
	ld.w	$a0, $sp, 788
	st.w	$zero, $sp, 760
	ld.w	$a1, $sp, 792
	ld.w	$s0, $sp, 780
	st.w	$a0, $sp, 764
	st.w	$zero, $sp, 768
	addi.w	$a0, $zero, -1
	st.w	$a1, $sp, 772
	bge	$a0, $s0, .LBB3_67
# %bb.5:                                # %_ZNSt6vectorI3BoxSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
	beqz	$s0, .LBB3_10
# %bb.6:
	slli.d	$a0, $s0, 4
	alsl.d	$s1, $s0, $a0, 3
.Ltmp11:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp12:
# %bb.7:                                # %.noexc51
	move	$fp, $a0
	add.d	$s3, $a0, $s1
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	ori	$a0, $zero, 1
	vst	$vr0, $fp, 0
	beq	$s0, $a0, .LBB3_11
# %bb.8:                                # %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
	ori	$a0, $zero, 24
	mul.d	$a1, $s0, $a0
	.p2align	4, , 16
.LBB3_9:                                # %.lr.ph.i.i.i.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $fp, 0
	vstx	$vr0, $fp, $a0
	ld.d	$a2, $fp, 16
	add.d	$a3, $fp, $a0
	addi.d	$a0, $a0, 24
	st.d	$a2, $a3, 16
	bne	$a1, $a0, .LBB3_9
	b	.LBB3_11
.LBB3_10:
	move	$s3, $zero
	move	$fp, $zero
.LBB3_11:                               # %_ZNSt6vectorI3BoxSaIS0_EEC2EmRKS1_.exit
.Ltmp13:
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 752
	move	$a0, $zero
	move	$a1, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_Z13box_partitioniiiRK3BoxPS_)
	jirl	$ra, $ra, 0
.Ltmp14:
# %bb.12:
	ld.w	$a0, $sp, 776
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s0, $fp, $a0
	ld.w	$a1, $s0, 4
	ldx.w	$a0, $fp, $a0
	ld.w	$a2, $s0, 12
	ld.w	$a3, $s0, 8
	ld.w	$a4, $s0, 20
	ld.w	$a5, $s0, 16
	sub.w	$a0, $a1, $a0
	sub.w	$a1, $a2, $a3
	sub.w	$a2, $a4, $a5
	sltu	$a0, $zero, $a0
	sltu	$a1, $zero, $a1
	and	$a0, $a1, $a0
	sltu	$a1, $zero, $a2
	and	$a0, $a0, $a1
	beqz	$a0, .LBB3_27
# %bb.13:
.Ltmp16:
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
.Ltmp17:
# %bb.14:
.Ltmp19:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 376
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp20:
# %bb.15:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
	ld.w	$a1, $sp, 784
.Ltmp21:
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp22:
# %bb.16:
.Ltmp23:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp24:
# %bb.17:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
	ld.w	$a1, $sp, 788
.Ltmp25:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp26:
# %bb.18:
.Ltmp27:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp28:
# %bb.19:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
	ld.w	$a1, $sp, 792
.Ltmp29:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp30:
# %bb.20:
.Ltmp31:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 376
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp32:
# %bb.21:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
	ld.d	$a2, $sp, 824
	beqz	$a2, .LBB3_24
# %bb.22:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
	ld.d	$a1, $sp, 816
.Ltmp33:
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp34:
# %bb.23:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp35:
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp36:
.LBB3_24:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.w	$a1, $a0, 0
	ld.h	$a0, $a0, 4
	addi.d	$s1, $sp, 144
	st.d	$s1, $sp, 128
	st.w	$a1, $sp, 144
	st.h	$a0, $sp, 148
	ori	$a0, $zero, 6
	st.d	$a0, $sp, 136
	st.b	$zero, $sp, 150
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ld.h	$a1, $a0, 0
	ld.b	$a0, $a0, 2
	addi.d	$s4, $sp, 112
	st.d	$s4, $sp, 96
	st.h	$a1, $sp, 112
	st.b	$a0, $sp, 114
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 104
	st.b	$zero, $sp, 115
	addi.d	$s5, $sp, 80
	st.d	$s5, $sp, 64
	ori	$a0, $zero, 46
	st.h	$a0, $sp, 80
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 72
	ld.d	$a0, $sp, 424
	addi.d	$s6, $sp, 48
	st.d	$s6, $sp, 32
	st.d	$zero, $sp, 40
	st.b	$zero, $sp, 48
	beqz	$a0, .LBB3_31
# %bb.25:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
	ld.d	$a1, $sp, 408
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB3_31
# %bb.26:
	ld.d	$a3, $sp, 416
	sub.d	$a4, $a0, $a3
.Ltmp38:
	addi.d	$a0, $sp, 32
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp39:
	b	.LBB3_32
.LBB3_27:
.Ltmp69:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 74
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp70:
# %bb.28:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_69
# %bb.29:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_59
# %bb.30:
	ld.bu	$a0, $s0, 67
	b	.LBB3_61
.LBB3_31:
	addi.d	$a1, $sp, 456
.Ltmp40:
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp41:
.LBB3_32:                               # %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
.Ltmp43:
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 32
	pcaddu18i	$ra, %call36(_ZN8YAML_DocC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.33:
	ld.d	$a0, $sp, 32
	beq	$a0, $s6, .LBB3_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 64
	beq	$a0, $s5, .LBB3_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
	ld.d	$a0, $sp, 96
	beq	$a0, $s4, .LBB3_39
# %bb.38:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_39:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB3_41
# %bb.40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
	ld.w	$a0, $sp, 776
	bnez	$a0, .LBB3_45
# %bb.42:
.Ltmp46:
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 784
	pcaddu18i	$ra, %call36(_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE)
	jirl	$ra, $ra, 0
.Ltmp47:
# %bb.43:
	ld.w	$a1, $sp, 780
.Ltmp48:
	addi.d	$a0, $sp, 160
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z25add_configuration_to_yamlR8YAML_Docii)
	jirl	$ra, $ra, 0
.Ltmp49:
# %bb.44:
.Ltmp50:
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_Z22add_timestring_to_yamlR8YAML_Doc)
	jirl	$ra, $ra, 0
.Ltmp51:
.LBB3_45:
.Ltmp53:
	addi.d	$a0, $sp, 752
	addi.d	$a2, $sp, 784
	addi.d	$a3, $sp, 160
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.46:
.Ltmp56:
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp57:
# %bb.47:
	ld.w	$a0, $sp, 776
	bnez	$a0, .LBB3_55
# %bb.48:                               # %.noexc.i96
	fmov.d	$fs1, $fa0
	st.d	$s1, $sp, 128
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 96
.Ltmp58:
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp59:
# %bb.49:                               # %.noexc97
	ld.d	$a1, $sp, 96
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 128
	fsub.d	$fa0, $fs1, $fs0
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
.Ltmp61:
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp62:
# %bb.50:
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB3_52
# %bb.51:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_52:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
.Ltmp64:
	addi.d	$a0, $sp, 0
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN8YAML_Doc12generateYAMLB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp65:
# %bb.53:
	ld.d	$a0, $sp, 0
	addi.d	$a1, $sp, 16
	beq	$a0, $a1, .LBB3_55
# %bb.54:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_55:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
.Ltmp66:
	pcaddu18i	$ra, %call36(_ZN6miniFE12finalize_mpiEv)
	jirl	$ra, $ra, 0
.Ltmp67:
# %bb.56:
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN8YAML_DocD1Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 376
	ld.d	$a2, $a0, 24
	ld.d	$a1, $a1, -24
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a3, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	addi.d	$a4, $sp, 376
	ld.d	$a0, $sp, 456
	stx.d	$a2, $a1, $a4
	addi.d	$a1, $a3, 16
	addi.d	$a2, $sp, 472
	st.d	$a1, $sp, 384
	beq	$a0, $a2, .LBB3_58
# %bb.57:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 472
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_58:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 384
	addi.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB3_64
.LBB3_59:
.Ltmp71:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp72:
# %bb.60:                               # %.noexc115
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp73:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp74:
.LBB3_61:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp75:
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cout)
	ld.d	$a2, $a1, %got_pc_lo12(_ZSt4cout)
	ext.w.b	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp76:
# %bb.62:                               # %.noexc117
.Ltmp77:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp78:
# %bb.63:                               # %_ZNSolsEPFRSoS_E.exit
	ori	$s0, $zero, 1
.Ltmp79:
	pcaddu18i	$ra, %call36(_ZN6miniFE12finalize_mpiEv)
	jirl	$ra, $ra, 0
.Ltmp80:
.LBB3_64:                               # %_ZNSt6vectorI3BoxSaIS0_EED2Ev.exit
	sub.d	$a1, $s3, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 816
	beq	$a0, $s2, .LBB3_66
# %bb.65:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 832
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_66:                               # %_ZN6miniFE10ParametersD2Ev.exit
	move	$a0, $s0
	fld.d	$fs1, $sp, 888                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 896                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 952                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 960                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 968                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 976
	ret
.LBB3_67:
.Ltmp84:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp85:
# %bb.68:                               # %.noexc
.LBB3_69:
.Ltmp81:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp82:
# %bb.70:                               # %.noexc114
.LBB3_71:
.Ltmp63:
	ld.d	$a2, $sp, 128
	move	$s0, $a0
	beq	$a2, $s1, .LBB3_92
# %bb.72:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_92
.LBB3_73:
.Ltmp60:
	b	.LBB3_91
.LBB3_74:
.Ltmp55:
	b	.LBB3_91
.LBB3_75:
.Ltmp45:
	b	.LBB3_77
.LBB3_76:
.Ltmp42:
.LBB3_77:
	ld.d	$a2, $sp, 32
	move	$s0, $a0
	bne	$a2, $s6, .LBB3_81
# %bb.78:                               # %.body
	ld.d	$a0, $sp, 64
	bne	$a0, $s5, .LBB3_82
.LBB3_79:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
	ld.d	$a0, $sp, 96
	bne	$a0, $s4, .LBB3_83
.LBB3_80:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB3_84
	b	.LBB3_98
.LBB3_81:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
	ld.d	$a0, $sp, 48
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	beq	$a0, $s5, .LBB3_79
.LBB3_82:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beq	$a0, $s4, .LBB3_80
.LBB3_83:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB3_98
.LBB3_84:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_98
.LBB3_85:
.Ltmp18:
	b	.LBB3_96
.LBB3_86:
.Ltmp52:
	b	.LBB3_91
.LBB3_87:
.Ltmp15:
	b	.LBB3_96
.LBB3_88:
.Ltmp5:
	move	$s0, $a0
	b	.LBB3_100
.LBB3_89:
.Ltmp2:
	move	$s0, $a0
	b	.LBB3_100
.LBB3_90:
.Ltmp68:
.LBB3_91:
	move	$s0, $a0
.LBB3_92:
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN8YAML_DocD1Ev)
	jirl	$ra, $ra, 0
	b	.LBB3_98
.LBB3_93:
.Ltmp86:
	move	$s0, $a0
	b	.LBB3_100
.LBB3_94:
.Ltmp10:
	move	$s0, $a0
	b	.LBB3_100
.LBB3_95:
.Ltmp83:
.LBB3_96:                               # %_ZNSt6vectorI3BoxSaIS0_EED2Ev.exit109
	move	$s0, $a0
	b	.LBB3_99
.LBB3_97:
.Ltmp37:
	move	$s0, $a0
.LBB3_98:
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB3_99:                               # %_ZNSt6vectorI3BoxSaIS0_EED2Ev.exit109
	sub.d	$a1, $s3, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_100:
	ld.d	$a0, $sp, 816
	beq	$a0, $s2, .LBB3_102
# %bb.101:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110
	ld.d	$a1, $sp, 832
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_102:                              # %_ZN6miniFE10ParametersD2Ev.exit112
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp86-.Lfunc_begin0          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin0          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp36-.Ltmp19                #   Call between .Ltmp19 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp46-.Ltmp44                #   Call between .Ltmp44 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp51-.Ltmp46                #   Call between .Ltmp46 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin0          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin0          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp64-.Ltmp62                #   Call between .Ltmp62 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp71-.Ltmp67                #   Call between .Ltmp67 and .Ltmp71
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp80-.Ltmp71                #   Call between .Ltmp71 and .Ltmp80
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp84-.Ltmp80                #   Call between .Ltmp80 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin0          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Lfunc_end3-.Ltmp82            #   Call between .Ltmp82 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE # -- Begin function _Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE
	.p2align	5
	.type	_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE,@function
_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE: # @_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %.noexc.i
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
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
	addi.d	$s1, $sp, 80
	st.d	$s1, $sp, 64
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 32
.Ltmp87:
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 32
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp88:
# %bb.1:                                # %.noexc
	ld.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$s5, $a2, %pc_lo12(.L.str.8)
	vld	$vr0, $s5, 0
	ld.d	$s4, $s5, 13
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
	addi.d	$s2, $sp, 48
	st.d	$s2, $sp, 32
	st.d	$zero, $sp, 40
	st.b	$zero, $sp, 48
.Ltmp90:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp91:
# %bb.2:
	ld.d	$a0, $sp, 32
	beq	$a0, $s2, .LBB4_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB4_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
	st.d	$s1, $sp, 64
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 32
.Ltmp93:
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 32
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp94:
# %bb.7:                                # %.noexc96
	ld.d	$a1, $sp, 32
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp96:
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp97:
# %bb.8:                                # %._crit_edge.i.i98
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ld.d	$s6, $a1, 0
	ld.h	$s7, $a1, 8
	st.d	$s2, $sp, 32
	st.d	$s6, $sp, 48
	st.h	$s7, $sp, 56
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 40
	st.b	$zero, $sp, 58
	addi.d	$s3, $sp, 16
	st.d	$s3, $sp, 0
	st.d	$zero, $sp, 8
	st.b	$zero, $sp, 16
.Ltmp99:
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp100:
# %bb.9:
	ld.d	$a0, $sp, 0
	beq	$a0, $s3, .LBB4_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
	ld.d	$a0, $sp, 32
	beq	$a0, $s2, .LBB4_13
# %bb.12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB4_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_15:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
	st.d	$s1, $sp, 64
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 32
.Ltmp102:
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 32
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp103:
# %bb.16:                               # %.noexc117
	ld.d	$a1, $sp, 32
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp105:
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp106:
# %bb.17:                               # %._crit_edge.i.i119
	st.d	$s2, $sp, 32
	st.d	$s6, $sp, 48
	st.h	$s7, $sp, 56
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 40
	st.b	$zero, $sp, 58
.Ltmp108:
	addi.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp109:
# %bb.18:                               # %._crit_edge.i.i123
	st.d	$s3, $sp, 0
	lu12i.w	$s8, 7
	ori	$a1, $s8, 2158
	st.h	$a1, $sp, 16
	ld.w	$a2, $s0, 0
	ori	$a1, $zero, 2
	st.d	$a1, $sp, 8
	st.b	$zero, $sp, 18
.Ltmp111:
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp112:
# %bb.19:
	ld.d	$a0, $sp, 0
	beq	$a0, $s3, .LBB4_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
	ld.d	$a0, $sp, 32
	beq	$a0, $s2, .LBB4_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_23:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB4_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
	st.d	$s1, $sp, 64
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 32
.Ltmp114:
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 32
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp115:
# %bb.26:                               # %.noexc138
	ld.d	$a1, $sp, 32
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp117:
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp118:
# %bb.27:                               # %._crit_edge.i.i140
	st.d	$s2, $sp, 32
	st.d	$s6, $sp, 48
	st.h	$s7, $sp, 56
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 40
	st.b	$zero, $sp, 58
.Ltmp120:
	addi.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp121:
# %bb.28:                               # %._crit_edge.i.i144
	st.d	$s3, $sp, 0
	ori	$a1, $s8, 2414
	st.h	$a1, $sp, 16
	ld.w	$a2, $s0, 4
	ori	$a1, $zero, 2
	st.d	$a1, $sp, 8
	st.b	$zero, $sp, 18
.Ltmp123:
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp124:
# %bb.29:
	ld.d	$a0, $sp, 0
	beq	$a0, $s3, .LBB4_31
# %bb.30:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_31:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
	ld.d	$a0, $sp, 32
	beq	$a0, $s2, .LBB4_33
# %bb.32:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB4_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
	st.d	$s1, $sp, 64
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 32
.Ltmp126:
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 32
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp127:
# %bb.36:                               # %.noexc159
	ld.d	$a1, $sp, 32
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp129:
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp130:
# %bb.37:                               # %._crit_edge.i.i161
	st.d	$s2, $sp, 32
	st.d	$s6, $sp, 48
	st.h	$s7, $sp, 56
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 40
	st.b	$zero, $sp, 58
.Ltmp132:
	addi.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp133:
# %bb.38:                               # %._crit_edge.i.i165
	st.d	$s3, $sp, 0
	ori	$a1, $s8, 2670
	st.h	$a1, $sp, 16
	ld.w	$a2, $s0, 8
	ori	$a1, $zero, 2
	st.d	$a1, $sp, 8
	st.b	$zero, $sp, 18
.Ltmp135:
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp136:
# %bb.39:
	ld.d	$a0, $sp, 0
	beq	$a0, $s3, .LBB4_41
# %bb.40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
	ld.d	$a0, $sp, 32
	beq	$a0, $s2, .LBB4_43
# %bb.42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB4_45
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_45:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
	st.d	$s1, $sp, 64
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 32
.Ltmp138:
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 32
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp139:
# %bb.46:                               # %.noexc180
	ld.d	$a1, $sp, 32
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp141:
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp142:
# %bb.47:                               # %._crit_edge.i.i182
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 6
	st.d	$s2, $sp, 32
	st.d	$a2, $sp, 48
	st.d	$a1, $sp, 54
	fld.s	$fa0, $s0, 24
	ori	$a1, $zero, 14
	st.d	$a1, $sp, 40
	st.b	$zero, $sp, 62
	fcvt.d.s	$fa0, $fa0
.Ltmp144:
	addi.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp145:
# %bb.48:
	ld.d	$a0, $sp, 32
	beq	$a0, $s2, .LBB4_50
# %bb.49:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_50:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB4_52
# %bb.51:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_52:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
	ld.w	$a0, $s0, 16
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_57
# %bb.53:                               # %._crit_edge.i.i192
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 3
	st.d	$s1, $sp, 64
	st.w	$a1, $sp, 80
	st.w	$a0, $sp, 83
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 72
	st.b	$zero, $sp, 87
	st.d	$s2, $sp, 32
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 0
.Ltmp159:
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp160:
# %bb.54:                               # %.noexc198
	ld.d	$a1, $sp, 0
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 48
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	stx.b	$zero, $a0, $a1
.Ltmp162:
	addi.d	$a1, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp163:
# %bb.55:                               # %.noexc.i201
	move	$fp, $a0
	st.d	$s3, $sp, 0
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 96
.Ltmp165:
	addi.d	$a0, $sp, 0
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp166:
# %bb.56:                               # %.noexc202
	ld.d	$a1, $sp, 96
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	st.d	$a0, $sp, 0
	st.d	$a1, $sp, 16
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 0
	st.d	$a1, $sp, 8
	stx.b	$zero, $a0, $a1
.Ltmp168:
	addi.d	$a1, $sp, 0
	addi.d	$a2, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp169:
	b	.LBB4_61
.LBB4_57:                               # %._crit_edge.i.i270
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ld.w	$a1, $a0, 0
	ld.h	$a0, $a0, 4
	st.d	$s1, $sp, 64
	st.w	$a1, $sp, 80
	st.h	$a0, $sp, 84
	ori	$a0, $zero, 6
	st.d	$a0, $sp, 72
	st.b	$zero, $sp, 86
	st.d	$s2, $sp, 32
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 0
.Ltmp147:
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp148:
# %bb.58:                               # %.noexc276
	ld.d	$a1, $sp, 0
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 48
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	stx.b	$zero, $a0, $a1
.Ltmp150:
	addi.d	$a1, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp151:
# %bb.59:                               # %.noexc.i279
	move	$fp, $a0
	st.d	$s3, $sp, 0
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 96
.Ltmp153:
	addi.d	$a0, $sp, 0
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp154:
# %bb.60:                               # %.noexc280
	ld.d	$a1, $sp, 96
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	st.d	$a0, $sp, 0
	st.d	$a1, $sp, 16
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 0
	st.d	$a1, $sp, 8
	stx.b	$zero, $a0, $a1
.Ltmp156:
	addi.d	$a1, $sp, 0
	addi.d	$a2, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp157:
.LBB4_61:
	ld.d	$a0, $sp, 0
	beq	$a0, $s3, .LBB4_63
# %bb.62:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_63:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
	ld.d	$a0, $sp, 32
	beq	$a0, $s2, .LBB4_65
# %bb.64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_65:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB4_67
# %bb.66:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_67:
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB4_68:
.Ltmp158:
	b	.LBB4_92
.LBB4_69:
.Ltmp170:
	b	.LBB4_92
.LBB4_70:
.Ltmp155:
	move	$fp, $a0
	b	.LBB4_94
.LBB4_71:
.Ltmp167:
	move	$fp, $a0
	b	.LBB4_94
.LBB4_72:
.Ltmp152:
	move	$fp, $a0
	b	.LBB4_94
.LBB4_73:
.Ltmp164:
	move	$fp, $a0
	b	.LBB4_94
.LBB4_74:
.Ltmp149:
	move	$fp, $a0
	b	.LBB4_97
.LBB4_75:
.Ltmp161:
	move	$fp, $a0
	b	.LBB4_97
.LBB4_76:
.Ltmp146:
	b	.LBB4_103
.LBB4_77:
.Ltmp143:
	move	$fp, $a0
	b	.LBB4_97
.LBB4_78:
.Ltmp140:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_79:
.Ltmp137:
	b	.LBB4_92
.LBB4_80:
.Ltmp134:
	move	$fp, $a0
	b	.LBB4_94
.LBB4_81:
.Ltmp131:
	move	$fp, $a0
	b	.LBB4_97
.LBB4_82:
.Ltmp128:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_83:
.Ltmp125:
	b	.LBB4_92
.LBB4_84:
.Ltmp122:
	move	$fp, $a0
	b	.LBB4_94
.LBB4_85:
.Ltmp119:
	move	$fp, $a0
	b	.LBB4_97
.LBB4_86:
.Ltmp116:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_87:
.Ltmp113:
	b	.LBB4_92
.LBB4_88:
.Ltmp110:
	move	$fp, $a0
	b	.LBB4_94
.LBB4_89:
.Ltmp107:
	move	$fp, $a0
	b	.LBB4_97
.LBB4_90:
.Ltmp104:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_91:
.Ltmp101:
.LBB4_92:
	ld.d	$a2, $sp, 0
	move	$fp, $a0
	beq	$a2, $s3, .LBB4_94
# %bb.93:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
	ld.d	$a0, $sp, 16
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_94:
	ld.d	$a0, $sp, 32
	beq	$a0, $s2, .LBB4_97
# %bb.95:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
.LBB4_96:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_97:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB4_99
# %bb.98:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_99:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_100:
.Ltmp98:
	move	$fp, $a0
	b	.LBB4_97
.LBB4_101:
.Ltmp95:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_102:
.Ltmp92:
.LBB4_103:
	ld.d	$a2, $sp, 32
	move	$fp, $a0
	beq	$a2, $s2, .LBB4_97
# %bb.104:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
	ld.d	$a0, $sp, 48
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB4_96
.LBB4_105:
.Ltmp89:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE, .Lfunc_end4-_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp87-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin1          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin1          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp93-.Ltmp91                #   Call between .Ltmp91 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin1          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin1          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin1         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp102-.Ltmp100              #   Call between .Ltmp100 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin1         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin1         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin1         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin1         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp114-.Ltmp112              #   Call between .Ltmp112 and .Ltmp114
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin1         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin1         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin1         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin1         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp126-.Ltmp124              #   Call between .Ltmp124 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin1         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin1         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin1         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin1         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp138-.Ltmp136              #   Call between .Ltmp136 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin1         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin1         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin1         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp159-.Ltmp145              #   Call between .Ltmp145 and .Ltmp159
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin1         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin1         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin1         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin1         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Lfunc_end4-.Ltmp157           #   Call between .Ltmp157 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z25add_configuration_to_yamlR8YAML_Docii
.LCPI5_0:
	.dword	8                               # 0x8
	.dword	7886488383309048912             # 0x6d726f6674616c50
.LCPI5_1:
	.dword	8                               # 0x8
	.dword	7308604897320202088             # 0x656d616e74736f68
.LCPI5_2:
	.dword	8                               # 0x8
	.dword	6000836824347990083             # 0x5347414c46585843
	.text
	.globl	_Z25add_configuration_to_yamlR8YAML_Docii
	.p2align	5
	.type	_Z25add_configuration_to_yamlR8YAML_Docii,@function
_Z25add_configuration_to_yamlR8YAML_Docii: # @_Z25add_configuration_to_yamlR8YAML_Docii
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %.noexc.i
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$s2, $sp, 104
	st.d	$s2, $sp, 88
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 56
.Ltmp171:
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp172:
# %bb.1:                                # %.noexc
	ld.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
	stx.b	$zero, $a0, $a1
.Ltmp174:
	addi.d	$a1, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp175:
# %bb.2:                                # %.noexc.i94
	move	$s1, $a0
	addi.d	$s3, $sp, 72
	st.d	$s3, $sp, 56
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 24
.Ltmp177:
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 24
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp178:
# %bb.3:                                # %.noexc95
	ld.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$a2, $a2, %pc_lo12(.L.str.17)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 56
	st.d	$a1, $sp, 64
	stx.b	$zero, $a0, $a1
.Ltmp180:
	addi.d	$a1, $sp, 56
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp181:
# %bb.4:
	ld.d	$a0, $sp, 56
	beq	$a0, $s3, .LBB5_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB5_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	st.d	$s2, $sp, 88
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $sp, 96
	st.b	$zero, $sp, 112
	st.d	$s3, $sp, 56
	st.d	$zero, $sp, 64
	st.b	$zero, $sp, 72
.Ltmp183:
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp184:
# %bb.9:
	ld.d	$a0, $sp, 56
	beq	$a0, $s3, .LBB5_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB5_13
# %bb.12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
	st.d	$s2, $sp, 88
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	st.b	$zero, $sp, 112
.Ltmp186:
	addi.d	$a1, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp187:
# %bb.14:                               # %._crit_edge.i.i118
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_1)
	st.d	$s3, $sp, 56
	vst	$vr0, $sp, 64
	st.b	$zero, $sp, 80
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	ld.w	$s1, $a1, 0
	ld.w	$s4, $a1, 3
	addi.d	$s0, $sp, 40
	st.d	$s0, $sp, 24
	st.w	$s1, $sp, 40
	st.w	$s4, $sp, 43
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 32
	st.b	$zero, $sp, 47
.Ltmp189:
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 24
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp190:
# %bb.15:
	ld.d	$a0, $sp, 24
	beq	$a0, $s0, .LBB5_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_17:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
	ld.d	$a0, $sp, 56
	beq	$a0, $s3, .LBB5_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB5_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
	st.d	$s2, $sp, 88
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	st.b	$zero, $sp, 112
.Ltmp192:
	addi.d	$a1, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp193:
# %bb.22:                               # %._crit_edge.i.i139
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	st.d	$s3, $sp, 56
	st.d	$a2, $sp, 72
	st.w	$a1, $sp, 79
	ori	$a1, $zero, 11
	st.d	$a1, $sp, 64
	st.b	$zero, $sp, 83
	st.d	$s0, $sp, 24
	st.w	$s1, $sp, 40
	st.w	$s4, $sp, 43
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 32
	st.b	$zero, $sp, 47
.Ltmp195:
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 24
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp196:
# %bb.23:
	ld.d	$a0, $sp, 24
	beq	$a0, $s0, .LBB5_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_25:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
	ld.d	$a0, $sp, 56
	beq	$a0, $s3, .LBB5_27
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_27:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB5_29
# %bb.28:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_29:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
	st.d	$s2, $sp, 88
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	st.b	$zero, $sp, 112
.Ltmp198:
	addi.d	$a1, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp199:
# %bb.30:                               # %._crit_edge.i.i160
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 6
	st.d	$s3, $sp, 56
	st.d	$a2, $sp, 72
	st.d	$a1, $sp, 78
	ori	$a1, $zero, 14
	st.d	$a1, $sp, 64
	st.b	$zero, $sp, 86
	st.d	$s0, $sp, 24
	st.w	$s1, $sp, 40
	st.w	$s4, $sp, 43
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 32
	st.b	$zero, $sp, 47
.Ltmp201:
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 24
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp202:
# %bb.31:
	ld.d	$a0, $sp, 24
	beq	$a0, $s0, .LBB5_33
# %bb.32:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
	ld.d	$a0, $sp, 56
	beq	$a0, $s3, .LBB5_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB5_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
	st.d	$s2, $sp, 88
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	st.b	$zero, $sp, 112
.Ltmp204:
	addi.d	$a1, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp205:
# %bb.38:                               # %._crit_edge.i.i181
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	ld.d	$a2, $a1, 0
	ld.b	$a1, $a1, 8
	st.d	$s3, $sp, 56
	st.d	$a2, $sp, 72
	st.b	$a1, $sp, 80
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 64
	st.b	$zero, $sp, 81
	st.d	$s0, $sp, 24
	st.w	$s1, $sp, 40
	st.w	$s4, $sp, 43
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 32
	st.b	$zero, $sp, 47
.Ltmp207:
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 24
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp208:
# %bb.39:
	ld.d	$a0, $sp, 24
	beq	$a0, $s0, .LBB5_41
# %bb.40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
	ld.d	$a0, $sp, 56
	beq	$a0, $s3, .LBB5_43
# %bb.42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB5_45
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_45:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ld.w	$s5, $a0, 0
	ld.b	$s6, $a0, 4
	st.d	$s2, $sp, 88
	st.w	$s5, $sp, 104
	st.b	$s6, $sp, 108
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 109
	st.d	$s3, $sp, 56
	st.d	$zero, $sp, 64
	st.b	$zero, $sp, 72
.Ltmp210:
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp211:
# %bb.46:
	ld.d	$a0, $sp, 56
	beq	$a0, $s3, .LBB5_48
# %bb.47:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_48:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB5_50
# %bb.49:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_50:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
	st.d	$s2, $sp, 88
	st.w	$s5, $sp, 104
	st.b	$s6, $sp, 108
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 109
.Ltmp213:
	addi.d	$a1, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp214:
# %bb.51:                               # %._crit_edge.i.i216
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.d	$s3, $sp, 56
	st.h	$a2, $sp, 72
	st.b	$a1, $sp, 74
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 64
	st.b	$zero, $sp, 75
	st.d	$s0, $sp, 24
	st.w	$s1, $sp, 40
	st.w	$s4, $sp, 43
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 32
	st.b	$zero, $sp, 47
.Ltmp216:
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 24
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp217:
# %bb.52:
	ld.d	$a0, $sp, 24
	beq	$a0, $s0, .LBB5_54
# %bb.53:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_54:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
	ld.d	$a0, $sp, 56
	beq	$a0, $s3, .LBB5_56
# %bb.55:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_56:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB5_58
# %bb.57:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
	st.d	$s2, $sp, 88
	st.w	$s5, $sp, 104
	st.b	$s6, $sp, 108
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 109
.Ltmp219:
	addi.d	$a1, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp220:
# %bb.59:                               # %._crit_edge.i.i237
	pcalau12i	$a1, %pc_hi20(.LCPI5_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_2)
	st.d	$s3, $sp, 56
	vst	$vr0, $sp, 64
	st.b	$zero, $sp, 80
	st.d	$s0, $sp, 24
	st.w	$s1, $sp, 40
	st.w	$s4, $sp, 43
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 32
	st.b	$zero, $sp, 47
.Ltmp222:
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 24
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp223:
# %bb.60:
	ld.d	$a0, $sp, 24
	beq	$a0, $s0, .LBB5_62
# %bb.61:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_62:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
	ld.d	$a0, $sp, 56
	beq	$a0, $s3, .LBB5_64
# %bb.63:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_64:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB5_66
# %bb.65:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_66:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
	st.d	$s2, $sp, 88
	lu12i.w	$a0, 6
	ori	$a0, $a0, 3950
	st.h	$a0, $sp, 104
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 106
	st.d	$s3, $sp, 56
	st.w	$s5, $sp, 72
	st.b	$s6, $sp, 76
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 64
	st.b	$zero, $sp, 77
.Ltmp225:
	addi.d	$a1, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp226:
# %bb.67:                               # %._crit_edge.i.i262
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ld.d	$a2, $a1, 0
	ld.b	$a1, $a1, 8
	st.d	$s0, $sp, 24
	st.d	$a2, $sp, 40
	st.b	$a1, $sp, 48
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 32
	st.b	$zero, $sp, 49
.Ltmp228:
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 88
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp229:
# %bb.68:
	ld.d	$a0, $sp, 24
	beq	$a0, $s0, .LBB5_70
# %bb.69:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_70:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
	ld.d	$a0, $sp, 56
	beq	$a0, $s3, .LBB5_72
# %bb.71:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_72:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB5_74
# %bb.73:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_74:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB5_75:
.Ltmp230:
	b	.LBB5_89
.LBB5_76:
.Ltmp227:
	move	$fp, $a0
	b	.LBB5_91
.LBB5_77:
.Ltmp224:
	b	.LBB5_89
.LBB5_78:
.Ltmp221:
	move	$fp, $a0
	b	.LBB5_99
.LBB5_79:
.Ltmp218:
	b	.LBB5_89
.LBB5_80:
.Ltmp215:
	move	$fp, $a0
	b	.LBB5_99
.LBB5_81:
.Ltmp212:
	b	.LBB5_96
.LBB5_82:
.Ltmp209:
	b	.LBB5_89
.LBB5_83:
.Ltmp206:
	move	$fp, $a0
	b	.LBB5_99
.LBB5_84:
.Ltmp203:
	b	.LBB5_89
.LBB5_85:
.Ltmp200:
	move	$fp, $a0
	b	.LBB5_99
.LBB5_86:
.Ltmp197:
	b	.LBB5_89
.LBB5_87:
.Ltmp194:
	move	$fp, $a0
	b	.LBB5_99
.LBB5_88:
.Ltmp191:
.LBB5_89:
	ld.d	$a2, $sp, 24
	move	$fp, $a0
	beq	$a2, $s0, .LBB5_91
# %bb.90:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347
	ld.d	$a0, $sp, 40
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_91:
	ld.d	$a0, $sp, 56
	beq	$a0, $s3, .LBB5_99
# %bb.92:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	b	.LBB5_98
.LBB5_93:
.Ltmp188:
	move	$fp, $a0
	b	.LBB5_99
.LBB5_94:
.Ltmp185:
	b	.LBB5_96
.LBB5_95:
.Ltmp182:
.LBB5_96:
	ld.d	$a2, $sp, 56
	move	$fp, $a0
	beq	$a2, $s3, .LBB5_99
# %bb.97:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275
	ld.d	$a0, $sp, 72
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB5_98:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_99:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB5_101
# %bb.100:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_101:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_102:
.Ltmp179:
	move	$fp, $a0
	b	.LBB5_99
.LBB5_103:
.Ltmp176:
	move	$fp, $a0
	b	.LBB5_99
.LBB5_104:
.Ltmp173:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_Z25add_configuration_to_yamlR8YAML_Docii, .Lfunc_end5-_Z25add_configuration_to_yamlR8YAML_Docii
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
	.uleb128 .Ltmp171-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin2         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin2         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin2         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin2         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp183-.Ltmp181              #   Call between .Ltmp181 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin2         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp186-.Ltmp184              #   Call between .Ltmp184 and .Ltmp186
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin2         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin2         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp192-.Ltmp190              #   Call between .Ltmp190 and .Ltmp192
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin2         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin2         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp198-.Ltmp196              #   Call between .Ltmp196 and .Ltmp198
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin2         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin2         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp204-.Ltmp202              #   Call between .Ltmp202 and .Ltmp204
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin2         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin2         #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp210-.Ltmp208              #   Call between .Ltmp208 and .Ltmp210
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin2         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp213-.Ltmp211              #   Call between .Ltmp211 and .Ltmp213
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin2         #     jumps to .Ltmp215
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin2         #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin2         # >> Call Site 24 <<
	.uleb128 .Ltmp219-.Ltmp217              #   Call between .Ltmp217 and .Ltmp219
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin2         # >> Call Site 25 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin2         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin2         #     jumps to .Ltmp224
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp225-.Ltmp223              #   Call between .Ltmp223 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin2         # >> Call Site 28 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin2         #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin2         # >> Call Site 29 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin2         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Lfunc_end5-.Ltmp229           #   Call between .Ltmp229 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z22add_timestring_to_yamlR8YAML_Doc # -- Begin function _Z22add_timestring_to_yamlR8YAML_Doc
	.p2align	5
	.type	_Z22add_timestring_to_yamlR8YAML_Doc,@function
_Z22add_timestring_to_yamlR8YAML_Doc:   # @_Z22add_timestring_to_yamlR8YAML_Doc
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -496
	.cfi_def_cfa_offset 496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	addi.d	$a0, $sp, 448
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 448
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 72
	addi.d	$s1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	ld.d	$a0, $a0, -24
	add.d	$s2, $s1, $a0
	ld.bu	$a0, $s2, 225
	bnez	$a0, .LBB6_6
# %bb.1:
	ld.d	$s1, $s2, 240
	beqz	$s1, .LBB6_29
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	ld.bu	$a0, $s1, 56
	bnez	$a0, .LBB6_5
# %bb.3:
.Ltmp231:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp232:
# %bb.4:                                # %.noexc14
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp233:
	ori	$a1, $zero, 32
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp234:
.LBB6_5:                                # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s2, 225
.LBB6_6:                                # %._crit_edge.i.i
	ld.w	$a0, $s0, 20
	ori	$a1, $zero, 48
	st.b	$a1, $s2, 224
	addi.w	$a1, $a0, 1900
.Ltmp237:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp238:
# %bb.7:
.Ltmp239:
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp240:
# %bb.8:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $sp, 72
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 72
	ld.w	$a2, $s0, 16
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 2
	st.d	$a1, $a0, 16
	addi.w	$a1, $a2, 1
.Ltmp241:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp242:
# %bb.9:
.Ltmp243:
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp244:
# %bb.10:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
	ld.d	$a0, $sp, 72
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 72
	ld.w	$a1, $s0, 12
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 2
	st.d	$a2, $a0, 16
.Ltmp245:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp246:
# %bb.11:
.Ltmp247:
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 2
	ori	$s1, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp248:
# %bb.12:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
	ld.d	$a0, $sp, 72
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s0, 8
	addi.d	$a2, $sp, 72
	add.d	$a0, $a2, $a0
	st.d	$s1, $a0, 16
.Ltmp249:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp250:
# %bb.13:
.Ltmp251:
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp252:
# %bb.14:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
	ld.d	$a0, $sp, 72
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 72
	ld.w	$a1, $s0, 4
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 2
	st.d	$a2, $a0, 16
.Ltmp253:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp254:
# %bb.15:
.Ltmp255:
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp256:
# %bb.16:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
	ld.d	$a0, $sp, 72
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 72
	ld.w	$a1, $s0, 0
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 2
	st.d	$a2, $a0, 16
.Ltmp257:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp258:
# %bb.17:
	ld.d	$a0, $sp, 120
	addi.d	$s0, $sp, 56
	st.d	$s0, $sp, 40
	st.d	$zero, $sp, 48
	st.b	$zero, $sp, 56
	beqz	$a0, .LBB6_20
# %bb.18:
	ld.d	$a1, $sp, 104
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB6_20
# %bb.19:
	ld.d	$a3, $sp, 112
	sub.d	$a4, $a0, $a3
.Ltmp260:
	addi.d	$a0, $sp, 40
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp261:
	b	.LBB6_21
.LBB6_20:
	addi.d	$a1, $sp, 152
.Ltmp262:
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp263:
.LBB6_21:                               # %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	addi.d	$s1, $sp, 24
	st.d	$s1, $sp, 8
	st.d	$a1, $sp, 24
	st.d	$a0, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
.Ltmp265:
	addi.d	$a1, $sp, 8
	addi.d	$a2, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp266:
# %bb.22:
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB6_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB6_26
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_26:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 72
	ld.d	$a2, $a0, 24
	ld.d	$a1, $a1, -24
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a3, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	addi.d	$a4, $sp, 72
	ld.d	$a0, $sp, 152
	stx.d	$a2, $a1, $a4
	addi.d	$a1, $a3, 16
	addi.d	$a2, $sp, 168
	st.d	$a1, $sp, 80
	beq	$a0, $a2, .LBB6_28
# %bb.27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_28:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 80
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.LBB6_29:
.Ltmp235:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp236:
# %bb.30:                               # %.noexc
.LBB6_31:
.Ltmp267:
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s1, .LBB6_33
# %bb.32:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB6_39
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	b	.LBB6_37
.LBB6_35:
.Ltmp264:
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s0, .LBB6_39
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB6_37:                               # %.body
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_38:
.Ltmp259:
	move	$fp, $a0
.LBB6_39:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_Z22add_timestring_to_yamlR8YAML_Doc, .Lfunc_end6-_Z22add_timestring_to_yamlR8YAML_Doc
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
	.uleb128 .Ltmp231-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp258-.Ltmp231              #   Call between .Ltmp231 and .Ltmp258
	.uleb128 .Ltmp259-.Lfunc_begin3         #     jumps to .Ltmp259
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp263-.Ltmp260              #   Call between .Ltmp260 and .Ltmp263
	.uleb128 .Ltmp264-.Lfunc_begin3         #     jumps to .Ltmp264
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp266-.Ltmp265              #   Call between .Ltmp265 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin3         #     jumps to .Ltmp267
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp235-.Ltmp266              #   Call between .Ltmp266 and .Ltmp235
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp259-.Lfunc_begin3         #     jumps to .Ltmp259
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Lfunc_end6-.Ltmp236           #   Call between .Ltmp236 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc
.LCPI7_0:
	.dword	0x3faeb851eb851eb8              # double 0.059999999999999998
.LCPI7_2:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI7_3:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
.LCPI7_4:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_1:
	.dword	8                               # 0x8
	.dword	7311150271011243843             # 0x65766c6f73204743
.LCPI7_5:
	.dword	8                               # 0x8
	.dword	7308613580332748612             # 0x656d695420544f44
	.section	.text._ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,"axG",@progbits,_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,comdat
	.weak	_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc
	.p2align	5
	.type	_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,@function
_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc: # @_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -800
	.cfi_def_cfa_offset 800
	st.d	$ra, $sp, 792                   # 8-byte Folded Spill
	st.d	$fp, $sp, 784                   # 8-byte Folded Spill
	st.d	$s0, $sp, 776                   # 8-byte Folded Spill
	st.d	$s1, $sp, 768                   # 8-byte Folded Spill
	st.d	$s2, $sp, 760                   # 8-byte Folded Spill
	st.d	$s3, $sp, 752                   # 8-byte Folded Spill
	st.d	$s4, $sp, 744                   # 8-byte Folded Spill
	st.d	$s5, $sp, 736                   # 8-byte Folded Spill
	st.d	$s6, $sp, 728                   # 8-byte Folded Spill
	st.d	$s7, $sp, 720                   # 8-byte Folded Spill
	st.d	$s8, $sp, 712                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 704                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 696                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 688                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 680                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 672                  # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.w	$s6, $a0, 4
	ld.w	$s7, $a0, 12
	ld.w	$s8, $a0, 20
	move	$fp, $a3
	move	$s1, $a2
	move	$s2, $a1
	st.w	$zero, $sp, 668
	st.w	$zero, $sp, 664
	addi.d	$a2, $sp, 668
	addi.d	$a3, $sp, 664
	ori	$a5, $zero, 1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 472
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_)
	jirl	$ra, $ra, 0
.Ltmp268:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp269:
# %bb.1:
.Ltmp271:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp272:
# %bb.2:
	st.b	$zero, $sp, 336
	addi.d	$a0, $sp, 344
	ori	$a2, $zero, 124
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp274:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp275:
# %bb.3:
.Ltmp276:
	fmov.d	$fs0, $fa0
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 336
	pcaddu18i	$ra, %call36(_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_)
	jirl	$ra, $ra, 0
.Ltmp277:
# %bb.4:
.Ltmp278:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp279:
# %bb.5:
	fmov.d	$fs2, $fa0
	ld.d	$a1, $sp, 352
	ld.d	$a0, $sp, 344
	sub.d	$a1, $a1, $a0
	srli.d	$s3, $a1, 2
	addi.w	$s2, $s3, 0
	blez	$s2, .LBB7_9
# %bb.6:                                # %.noexc7.i
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s5, $a0, 0
	st.w	$s5, $sp, 304
	st.w	$s3, $sp, 308
	bstrpick.d	$s4, $s3, 30, 0
	slli.d	$s0, $s4, 3
.Ltmp283:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp284:
# %bb.7:                                # %.noexc298
	st.d	$a0, $sp, 312
	alsl.d	$s6, $s4, $a0, 3
	st.d	$s6, $sp, 328
	st.d	$zero, $a0, 0
	ori	$a2, $zero, 1
	addi.d	$a1, $a0, 8
	bne	$s2, $a2, .LBB7_11
# %bb.8:
	move	$s6, $a1
	b	.LBB7_12
.LBB7_9:
	addi.w	$a1, $zero, -1
	move	$a0, $a1
	lu32i.d	$a0, 0
	st.w	$a0, $sp, 304
	st.w	$s3, $sp, 308
	bge	$a1, $s2, .LBB7_266
# %bb.10:
	st.d	$zero, $sp, 328
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 312
	st.w	$a0, $sp, 272
	st.w	$s3, $sp, 276
	st.d	$zero, $sp, 280
	vst	$vr0, $sp, 288
	b	.LBB7_17
.LBB7_11:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i
	addi.d	$a2, $s0, -8
	move	$fp, $s1
	move	$s1, $s8
	move	$s8, $s7
	move	$s7, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$s7, $s8
	move	$s8, $s1
	move	$s1, $fp
.LBB7_12:                               # %.noexc7.i301
	st.d	$s6, $sp, 320
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$s5, $sp, 272
	st.w	$s3, $sp, 276
.Ltmp286:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp287:
# %bb.13:                               # %.noexc307
	st.d	$a0, $sp, 280
	alsl.d	$s3, $s4, $a0, 3
	st.d	$s3, $sp, 296
	st.d	$zero, $a0, 0
	ori	$a2, $zero, 1
	addi.d	$a1, $a0, 8
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	bne	$s2, $a2, .LBB7_15
# %bb.14:
	move	$s3, $a1
	b	.LBB7_16
.LBB7_15:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i302
	addi.d	$a2, $s0, -8
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB7_16:                               # %.lr.ph.i303
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	st.d	$s3, $sp, 288
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB7_17:                               # %_ZN6miniFE6VectorIdiiEC2Eii.exit308
.Ltmp289:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp290:
# %bb.18:
	fmov.d	$fs1, $fa0
	ld.w	$a2, $sp, 620
	vld	$vr0, $sp, 640
	ld.w	$a5, $sp, 656
	ld.w	$a3, $sp, 628
	ld.w	$a0, $sp, 636
	vst	$vr0, $sp, 176
	st.w	$a5, $sp, 192
	ld.w	$a1, $sp, 660
	vpickve2gr.w	$t0, $vr0, 0
	vpickve2gr.w	$a6, $vr0, 1
	sub.d	$t1, $a6, $t0
	vpickve2gr.w	$a7, $vr0, 2
	vpickve2gr.w	$a4, $vr0, 3
	sub.d	$t2, $a4, $a7
	sub.d	$t3, $a1, $a5
	mul.d	$t1, $t2, $t1
	mul.w	$t2, $t1, $t3
	ori	$t1, $zero, 1
	st.w	$a1, $sp, 196
	blt	$t2, $t1, .LBB7_30
# %bb.19:
	blt	$t0, $t1, .LBB7_21
# %bb.20:
	addi.d	$t0, $t0, -1
	st.w	$t0, $sp, 176
.LBB7_21:
	ori	$t0, $zero, 1
	blt	$a7, $t0, .LBB7_23
# %bb.22:
	addi.d	$a7, $a7, -1
	st.w	$a7, $sp, 184
.LBB7_23:
	blt	$a5, $t0, .LBB7_25
# %bb.24:
	addi.d	$a5, $a5, -1
	st.w	$a5, $sp, 192
.LBB7_25:
	bge	$a6, $a2, .LBB7_71
# %bb.26:
	addi.d	$a2, $a6, 1
	st.w	$a2, $sp, 180
	blt	$a4, $a3, .LBB7_72
.LBB7_27:
	bge	$a1, $a0, .LBB7_29
.LBB7_28:
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 196
.LBB7_29:
.Ltmp291:
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 176
	addi.d	$a2, $sp, 336
	addi.d	$a3, $sp, 304
	move	$a4, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE)
	jirl	$ra, $ra, 0
.Ltmp292:
.LBB7_30:
.Ltmp293:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp294:
# %bb.31:                               # %.noexc.i310
	fmov.d	$fs3, $fa0
	addi.d	$s2, $sp, 192
	st.d	$s2, $sp, 176
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 240
.Ltmp296:
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 240
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp297:
# %bb.32:                               # %.noexc311
	st.d	$a0, $sp, 176
	ld.d	$a1, $sp, 240
	pcalau12i	$a2, %pc_hi20(.L.str.34)
	addi.d	$s3, $a2, %pc_lo12(.L.str.34)
	vld	$vr0, $s3, 0
	ld.w	$s0, $s3, 23
	ld.d	$s4, $s3, 16
	st.d	$a1, $sp, 192
	vst	$vr0, $a0, 0
	st.w	$s0, $a0, 23
	st.d	$s4, $a0, 16
	ld.d	$a0, $sp, 176
	st.d	$a1, $sp, 184
	stx.b	$zero, $a0, $a1
	addi.d	$s5, $sp, 256
	st.d	$s5, $sp, 240
	st.d	$zero, $sp, 248
	st.b	$zero, $sp, 256
.Ltmp299:
	addi.d	$a1, $sp, 176
	addi.d	$a2, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp300:
# %bb.33:
	ld.d	$a0, $sp, 240
	beq	$a0, $s5, .LBB7_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 256
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 176
	beq	$a0, $s2, .LBB7_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
	st.d	$s2, $sp, 176
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 240
.Ltmp302:
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 240
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp303:
# %bb.38:                               # %.noexc321
	ld.d	$a1, $sp, 240
	vld	$vr0, $s3, 0
	st.d	$a0, $sp, 176
	st.d	$a1, $sp, 192
	vst	$vr0, $a0, 0
	st.w	$s0, $a0, 23
	st.d	$s4, $a0, 16
	ld.d	$a0, $sp, 176
	st.d	$a1, $sp, 184
	stx.b	$zero, $a0, $a1
.Ltmp305:
	addi.d	$a1, $sp, 176
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp306:
# %bb.39:                               # %.noexc.i324
	move	$s0, $a0
	st.d	$s5, $sp, 240
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 144
.Ltmp308:
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 144
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp309:
# %bb.40:                               # %.noexc325
	ld.d	$a1, $sp, 144
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	addi.d	$a2, $a2, %pc_lo12(.L.str.35)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 240
	st.d	$a1, $sp, 256
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 240
	fsub.d	$fa0, $fs2, $fs0
	st.d	$a1, $sp, 248
	stx.b	$zero, $a0, $a1
.Ltmp311:
	addi.d	$a1, $sp, 240
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp312:
# %bb.41:
	ld.d	$a0, $sp, 240
	beq	$a0, $s5, .LBB7_43
# %bb.42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
	ld.d	$a1, $sp, 256
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329
	ld.d	$a0, $sp, 176
	beq	$a0, $s2, .LBB7_45
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_45:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	ld.d	$s0, $a0, 0
	ld.w	$s3, $a0, 7
	st.d	$s2, $sp, 176
	st.d	$s0, $sp, 192
	st.w	$s3, $sp, 199
	ori	$a0, $zero, 11
	st.d	$a0, $sp, 184
	st.b	$zero, $sp, 203
	st.d	$s5, $sp, 240
	st.d	$zero, $sp, 248
	st.b	$zero, $sp, 256
.Ltmp314:
	addi.d	$a1, $sp, 176
	addi.d	$a2, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp315:
# %bb.46:
	ld.d	$a0, $sp, 240
	beq	$a0, $s5, .LBB7_48
# %bb.47:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341
	ld.d	$a1, $sp, 256
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_48:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343
	ld.d	$a0, $sp, 176
	beq	$a0, $s2, .LBB7_50
# %bb.49:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_50:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346
	st.d	$s2, $sp, 176
	st.d	$s0, $sp, 192
	st.w	$s3, $sp, 199
	ori	$a0, $zero, 11
	st.d	$a0, $sp, 184
	st.b	$zero, $sp, 203
.Ltmp317:
	addi.d	$a1, $sp, 176
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp318:
# %bb.51:                               # %.noexc.i352
	move	$s0, $a0
	st.d	$s5, $sp, 240
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 144
.Ltmp320:
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 144
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp321:
# %bb.52:                               # %.noexc353
	ld.d	$a1, $sp, 144
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	vld	$vr0, $a2, %pc_lo12(.L.str.37)
	st.d	$a0, $sp, 240
	st.d	$a1, $sp, 256
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 240
	fsub.d	$fa0, $fs3, $fs1
	st.d	$a1, $sp, 248
	stx.b	$zero, $a0, $a1
.Ltmp323:
	addi.d	$a1, $sp, 240
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp324:
# %bb.53:
	ld.d	$a0, $sp, 240
	beq	$a0, $s5, .LBB7_55
# %bb.54:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355
	ld.d	$a1, $sp, 256
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_55:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
	ld.d	$a0, $sp, 176
	beq	$a0, $s2, .LBB7_57
# %bb.56:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_57:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360
.Ltmp326:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp327:
# %bb.58:
	addi.w	$s2, $s6, 1
	addi.w	$s3, $s7, 1
	addi.w	$s4, $s8, 1
.Ltmp328:
	movgr2fr.d	$fs0, $zero
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 304
	addi.d	$a5, $sp, 472
	fmov.d	$fa0, $fs0
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE)
	jirl	$ra, $ra, 0
.Ltmp329:
# %bb.59:
.Ltmp330:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp331:
# %bb.60:
.Ltmp333:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp334:
# %bb.61:
	addi.d	$a5, $sp, 520
.Ltmp335:
	vldi	$vr0, -912
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 304
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE)
	jirl	$ra, $ra, 0
.Ltmp336:
# %bb.62:
.Ltmp337:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp338:
# %bb.63:
.Ltmp340:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp341:
# %bb.64:
	ld.d	$a0, $sp, 352
	ld.d	$a1, $sp, 344
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 2
	st.w	$a0, $sp, 464
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 336
.Ltmp342:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp343:
# %bb.65:
.Ltmp345:
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc)
	jirl	$ra, $ra, 0
.Ltmp346:
# %bb.66:
	move	$s2, $a0
	st.w	$zero, $sp, 236
	st.d	$zero, $sp, 224
	lu52i.d	$a0, $zero, 971
	st.d	$a0, $sp, 216
.Ltmp348:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp349:
# %bb.67:
	ld.w	$s0, $s1, 16
.Ltmp351:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s3, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	ori	$a2, $zero, 23
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp352:
# %bb.68:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB7_264
# %bb.69:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB7_73
# %bb.70:
	ld.bu	$a0, $s3, 67
	b	.LBB7_75
.LBB7_71:
	bge	$a4, $a3, .LBB7_27
.LBB7_72:
	addi.d	$a2, $a4, 1
	st.w	$a2, $sp, 188
	blt	$a1, $a0, .LBB7_28
	b	.LBB7_29
.LBB7_73:
.Ltmp353:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp354:
# %bb.74:                               # %.noexc806
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp355:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp356:
.LBB7_75:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp357:
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cout)
	ld.d	$a2, $a1, %got_pc_lo12(_ZSt4cout)
	ext.w.b	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp358:
# %bb.76:                               # %.noexc808
.Ltmp359:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp360:
# %bb.77:                               # %_ZNSolsEPFRSoS_E.exit
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB7_80
# %bb.78:
.Ltmp390:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_)
	jirl	$ra, $ra, 0
.Ltmp391:
# %bb.79:
.Ltmp392:
	addi.d	$a3, $sp, 176
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 304
	addi.d	$a2, $sp, 272
	ori	$a4, $zero, 200
	addi.d	$a5, $sp, 216
	addi.d	$a6, $sp, 236
	addi.d	$a7, $sp, 224
	st.d	$a3, $sp, 0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd)
	jirl	$ra, $ra, 0
.Ltmp393:
	b	.LBB7_95
.LBB7_80:
.Ltmp361:
	addi.d	$a3, $sp, 176
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 304
	addi.d	$a2, $sp, 272
	ori	$a4, $zero, 200
	addi.d	$a5, $sp, 216
	addi.d	$a6, $sp, 236
	addi.d	$a7, $sp, 224
	st.d	$a3, $sp, 0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd)
	jirl	$ra, $ra, 0
.Ltmp362:
# %bb.81:
.Ltmp363:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp364:
# %bb.82:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit388
	fld.d	$fa0, $sp, 224
.Ltmp365:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp366:
# %bb.83:                               # %_ZNSolsEd.exit
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB7_264
# %bb.84:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i811
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB7_86
# %bb.85:
	ld.bu	$a0, $s4, 67
	b	.LBB7_88
.LBB7_86:
.Ltmp367:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp368:
# %bb.87:                               # %.noexc816
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp369:
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp370:
.LBB7_88:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i813
.Ltmp371:
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp372:
# %bb.89:                               # %.noexc818
.Ltmp373:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp374:
# %bb.90:                               # %_ZNSolsEPFRSoS_E.exit391
	ld.w	$a0, $s1, 72
	blez	$a0, .LBB7_95
# %bb.91:
.Ltmp375:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 43
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp376:
# %bb.92:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit393
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB7_268
# %bb.93:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i822
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB7_96
# %bb.94:
	ld.bu	$a0, $s1, 67
	b	.LBB7_98
.LBB7_95:
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	b	.LBB7_102
.LBB7_96:
.Ltmp377:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp378:
# %bb.97:                               # %.noexc827
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp379:
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp380:
.LBB7_98:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i824
.Ltmp381:
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cout)
	ld.d	$a2, $a1, %got_pc_lo12(_ZSt4cout)
	ext.w.b	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp382:
# %bb.99:                               # %.noexc829
.Ltmp383:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp384:
# %bb.100:                              # %_ZNSolsEPFRSoS_E.exit395
.Ltmp385:
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_0)
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 272
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db)
	jirl	$ra, $ra, 0
.Ltmp386:
# %bb.101:
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
.LBB7_102:                              # %._crit_edge.i.i396
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI7_1)
	st.d	$s5, $sp, 240
	vst	$vr0, $sp, 248
	st.b	$zero, $sp, 264
	addi.d	$s4, $sp, 160
	st.d	$s4, $sp, 144
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 112
.Ltmp394:
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp395:
# %bb.103:                              # %.noexc402
	ld.d	$a1, $sp, 112
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$s7, $a2, %pc_lo12(.L.str.8)
	vld	$vr0, $s7, 0
	ld.d	$s1, $s7, 13
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 160
	vst	$vr0, $a0, 0
	st.d	$s1, $a0, 13
	ld.d	$a0, $sp, 144
	st.d	$a1, $sp, 152
	stx.b	$zero, $a0, $a1
.Ltmp397:
	addi.d	$a1, $sp, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp398:
# %bb.104:                              # %._crit_edge.i.i404
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	addi.d	$s5, $sp, 128
	st.d	$s5, $sp, 112
	st.d	$a2, $sp, 128
	st.h	$a1, $sp, 136
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 120
	st.b	$zero, $sp, 138
	pcalau12i	$a1, %pc_hi20(.L.str.119)
	addi.d	$a1, $a1, %pc_lo12(.L.str.119)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	addi.d	$s0, $sp, 96
	st.d	$s0, $sp, 80
	st.w	$a2, $sp, 96
	st.h	$a1, $sp, 100
	ori	$a1, $zero, 6
	st.d	$a1, $sp, 88
	st.b	$zero, $sp, 102
.Ltmp400:
	addi.d	$a1, $sp, 112
	addi.d	$a2, $sp, 80
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp401:
# %bb.105:
	ld.d	$a0, $sp, 80
	beq	$a0, $s0, .LBB7_107
# %bb.106:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_107:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
	ld.d	$a0, $sp, 112
	beq	$a0, $s5, .LBB7_109
# %bb.108:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_109:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_111
# %bb.110:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_111:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420
	st.d	$s4, $sp, 144
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 112
.Ltmp403:
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp404:
# %bb.112:                              # %.noexc423
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 112
	vld	$vr0, $s7, 0
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 160
	vst	$vr0, $a0, 0
	st.d	$s1, $a0, 13
	ld.d	$a0, $sp, 144
	st.d	$a1, $sp, 152
	stx.b	$zero, $a0, $a1
.Ltmp406:
	addi.d	$a1, $sp, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp407:
# %bb.113:                              # %.noexc.i426
	move	$s3, $a0
	move	$s2, $s8
	move	$s0, $s6
	st.d	$s5, $sp, 112
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 80
.Ltmp409:
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp410:
# %bb.114:                              # %.noexc427
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.44)
	addi.d	$a2, $a2, %pc_lo12(.L.str.44)
	vld	$vr0, $a2, 0
	ld.b	$a2, $a2, 16
	st.d	$a0, $sp, 112
	st.d	$a1, $sp, 128
	vst	$vr0, $a0, 0
	st.b	$a2, $a0, 16
	st.d	$a1, $sp, 120
	ld.d	$a0, $sp, 112
	pcalau12i	$a2, %pc_hi20(.L.str.120)
	addi.d	$a2, $a2, %pc_lo12(.L.str.120)
	ld.h	$s5, $a2, 0
	ld.b	$s8, $a2, 2
	stx.b	$zero, $a0, $a1
	addi.d	$s6, $sp, 96
	st.d	$s6, $sp, 80
	st.h	$s5, $sp, 96
	st.b	$s8, $sp, 98
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 88
	st.b	$zero, $sp, 99
.Ltmp412:
	addi.d	$a1, $sp, 112
	addi.d	$a2, $sp, 80
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp413:
# %bb.115:
	ld.d	$a0, $sp, 80
	beq	$a0, $s6, .LBB7_117
# %bb.116:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_117:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
	ld.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	beq	$a0, $a1, .LBB7_119
# %bb.118:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_119:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_121
# %bb.120:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_121:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
	st.d	$s4, $sp, 144
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 112
.Ltmp415:
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp416:
# %bb.122:                              # %.noexc444
	ld.d	$a1, $sp, 112
	vld	$vr0, $s7, 0
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 160
	vst	$vr0, $a0, 0
	st.d	$s1, $a0, 13
	ld.d	$a0, $sp, 144
	st.d	$a1, $sp, 152
	stx.b	$zero, $a0, $a1
.Ltmp418:
	addi.d	$a1, $sp, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp419:
# %bb.123:                              # %.noexc.i447
	move	$s3, $a0
	addi.d	$a0, $sp, 128
	st.d	$a0, $sp, 112
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 80
.Ltmp421:
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp422:
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
# %bb.124:                              # %.noexc448
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.45)
	vld	$vr0, $a2, %pc_lo12(.L.str.45)
	st.d	$a0, $sp, 112
	st.d	$a1, $sp, 128
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 112
	st.d	$a1, $sp, 120
	stx.b	$zero, $a0, $a1
	addi.d	$s1, $sp, 96
	st.d	$s1, $sp, 80
	st.h	$s5, $sp, 96
	st.b	$s8, $sp, 98
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 88
	st.b	$zero, $sp, 99
.Ltmp424:
	addi.d	$a1, $sp, 112
	addi.d	$a2, $sp, 80
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp425:
# %bb.125:
	ld.d	$a0, $sp, 80
	addi.d	$s5, $sp, 256
	addi.d	$s7, $sp, 128
	beq	$a0, $s1, .LBB7_127
# %bb.126:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_127:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB7_129
# %bb.128:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_129:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_131
# %bb.130:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_131:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
	st.d	$s4, $sp, 144
	st.d	$zero, $sp, 152
	st.b	$zero, $sp, 160
.Ltmp427:
	addi.d	$a1, $sp, 240
	addi.d	$a2, $sp, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp428:
# %bb.132:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_134
# %bb.133:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_134:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469
.Ltmp430:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp431:
# %bb.135:                              # %._crit_edge.i.i470
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$s4, $sp, 144
	st.d	$a2, $sp, 160
	st.h	$a1, $sp, 168
	ld.w	$a2, $sp, 236
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 170
.Ltmp432:
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp433:
# %bb.136:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_138
# %bb.137:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_138:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476
.Ltmp435:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp436:
# %bb.139:                              # %.noexc.i478
	move	$s3, $a0
	st.d	$s4, $sp, 144
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 112
.Ltmp438:
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp439:
# %bb.140:                              # %.noexc479
	ld.d	$a1, $sp, 112
	pcalau12i	$a2, %pc_hi20(.L.str.47)
	vld	$vr0, $a2, %pc_lo12(.L.str.47)
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 160
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 144
	st.d	$a1, $sp, 152
	stx.b	$zero, $a0, $a1
	fld.d	$fa0, $sp, 224
.Ltmp441:
	addi.d	$a1, $sp, 144
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp442:
# %bb.141:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_143
# %bb.142:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_143:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483
	mul.d	$a0, $s6, $s0
	mul.d	$a0, $a0, $s2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	srli.d	$a1, $a3, 32
	pcalau12i	$a2, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_2)
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a1, 275200
	bstrins.d	$a3, $a1, 63, 32
	movgr2fr.d	$fa1, $a3
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $sp, 236
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa2, $fa1, $fa1
	vldi	$vr3, -1016
	addi.d	$a1, $a0, 1
	movgr2fr.w	$fa4, $a1
	ffint.d.w	$fa4, $fa4
	fmul.d	$fs2, $fa0, $fa4
	slli.d	$a1, $a0, 1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa4, $fa0
	fld.d	$fa6, $sp, 192
	pcalau12i	$a1, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_3)
	alsl.d	$a0, $a0, $a0, 1
	addi.d	$a0, $a0, 2
	movgr2fr.w	$fa5, $a0
	fcmp.cule.d	$fcc0, $fa6, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI7_4)
	bcnez	$fcc0, .LBB7_145
# %bb.144:
	fld.d	$fa7, $a0, %pc_lo12(.LCPI7_4)
	fdiv.d	$fa6, $fs2, $fa6
	fmul.d	$fa6, $fa6, $fa7
	b	.LBB7_146
.LBB7_145:
	vldi	$vr6, -784
.LBB7_146:
	vst	$vr6, $sp, 32                   # 16-byte Folded Spill
	fld.d	$fa6, $sp, 184
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fs3, $fa2, $fa4
	fcmp.cule.d	$fcc0, $fa6, $fa0
	ffint.d.w	$fa2, $fa5
	bcnez	$fcc0, .LBB7_148
# %bb.147:
	fld.d	$fa3, $a0, %pc_lo12(.LCPI7_4)
	fdiv.d	$fa4, $fs3, $fa6
	fmul.d	$fa3, $fa4, $fa3
	b	.LBB7_149
.LBB7_148:
	vldi	$vr3, -784
.LBB7_149:
	vst	$vr3, $sp, 48                   # 16-byte Folded Spill
	fld.d	$fa3, $sp, 176
	fmul.d	$fs4, $fa1, $fa2
	fcmp.cule.d	$fcc0, $fa3, $fa0
	fadd.d	$fa1, $fs2, $fs3
	bcnez	$fcc0, .LBB7_151
# %bb.150:
	fld.d	$fa2, $a0, %pc_lo12(.LCPI7_4)
	fdiv.d	$fa3, $fs4, $fa3
	fmul.d	$fa2, $fa3, $fa2
	b	.LBB7_152
.LBB7_151:
	vldi	$vr2, -784
.LBB7_152:
	vst	$vr2, $sp, 64                   # 16-byte Folded Spill
	fld.d	$fa2, $sp, 208
	fcmp.cule.d	$fcc0, $fa2, $fa0
	fadd.d	$fs1, $fa1, $fs4
	bcnez	$fcc0, .LBB7_154
# %bb.153:
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_4)
	fdiv.d	$fa1, $fs1, $fa2
	fmul.d	$fa0, $fa1, $fa0
	b	.LBB7_155
.LBB7_154:
	vldi	$vr0, -784
.LBB7_155:
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
.Ltmp444:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp445:
# %bb.156:                              # %._crit_edge.i.i520
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a1, $a1, %pc_lo12(.L.str.48)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$s4, $sp, 144
	st.d	$a2, $sp, 160
	st.h	$a1, $sp, 168
	fld.d	$fa0, $sp, 176
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 170
.Ltmp446:
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp447:
# %bb.157:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_159
# %bb.158:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i524
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_159:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526
.Ltmp449:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp450:
# %bb.160:                              # %._crit_edge.i.i527
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	st.d	$s4, $sp, 144
	st.d	$a2, $sp, 160
	st.w	$a1, $sp, 167
	ori	$a1, $zero, 11
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 171
.Ltmp451:
	addi.d	$a1, $sp, 144
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp452:
# %bb.161:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_163
# %bb.162:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_163:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_168
# %bb.164:
.Ltmp459:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp460:
# %bb.165:                              # %._crit_edge.i.i550
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$s4, $sp, 144
	st.d	$a2, $sp, 160
	st.w	$a1, $sp, 168
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 152
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.b	$zero, $sp, 172
	st.d	$s7, $sp, 112
	st.h	$a2, $sp, 128
	st.b	$a1, $sp, 130
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 120
	st.b	$zero, $sp, 131
.Ltmp461:
	addi.d	$a1, $sp, 144
	addi.d	$a2, $sp, 112
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp462:
# %bb.166:
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB7_170
# %bb.167:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i558
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_170
.LBB7_168:
.Ltmp454:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp455:
# %bb.169:                              # %._crit_edge.i.i534
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$s4, $sp, 144
	st.d	$a2, $sp, 160
	st.w	$a1, $sp, 168
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 172
.Ltmp456:
	addi.d	$a1, $sp, 144
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp457:
.LBB7_170:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_172
# %bb.171:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_172:
.Ltmp464:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp465:
# %bb.173:                              # %._crit_edge.i.i570
	pcalau12i	$a1, %pc_hi20(.LCPI7_5)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_5)
	fld.d	$fa0, $sp, 184
	st.d	$s4, $sp, 144
	vst	$vr1, $sp, 152
	st.b	$zero, $sp, 168
.Ltmp466:
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp467:
# %bb.174:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_176
# %bb.175:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_176:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576
.Ltmp469:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp470:
# %bb.177:                              # %._crit_edge.i.i577
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$a1, $a1, %pc_lo12(.L.str.53)
	ld.d	$a2, $a1, 0
	ld.b	$a1, $a1, 8
	st.d	$s4, $sp, 144
	st.d	$a2, $sp, 160
	st.b	$a1, $sp, 168
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 169
.Ltmp471:
	addi.d	$a1, $sp, 144
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp472:
# %bb.178:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_180
# %bb.179:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_180:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_185
# %bb.181:
.Ltmp479:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp480:
# %bb.182:                              # %._crit_edge.i.i600
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a1, $a1, %pc_lo12(.L.str.54)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$s4, $sp, 144
	st.d	$a2, $sp, 160
	st.h	$a1, $sp, 168
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 152
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.b	$zero, $sp, 170
	st.d	$s7, $sp, 112
	st.h	$a2, $sp, 128
	st.b	$a1, $sp, 130
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 120
	st.b	$zero, $sp, 131
.Ltmp481:
	addi.d	$a1, $sp, 144
	addi.d	$a2, $sp, 112
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp482:
# %bb.183:
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB7_187
# %bb.184:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_187
.LBB7_185:
.Ltmp474:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp475:
# %bb.186:                              # %._crit_edge.i.i584
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a1, $a1, %pc_lo12(.L.str.54)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$s4, $sp, 144
	st.d	$a2, $sp, 160
	st.h	$a1, $sp, 168
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 170
.Ltmp476:
	addi.d	$a1, $sp, 144
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp477:
.LBB7_187:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_189
# %bb.188:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i588
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_189:
.Ltmp484:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp485:
# %bb.190:                              # %._crit_edge.i.i620
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a1, $a1, %pc_lo12(.L.str.55)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	st.d	$s4, $sp, 144
	st.d	$a2, $sp, 160
	st.w	$a1, $sp, 167
	fld.d	$fa0, $sp, 192
	ori	$a1, $zero, 11
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 171
.Ltmp486:
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp487:
# %bb.191:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_193
# %bb.192:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_193:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626
.Ltmp489:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp490:
# %bb.194:                              # %._crit_edge.i.i627
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$a1, $a1, %pc_lo12(.L.str.56)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$s4, $sp, 144
	st.d	$a2, $sp, 160
	st.w	$a1, $sp, 168
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 172
.Ltmp491:
	addi.d	$a1, $sp, 144
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp492:
# %bb.195:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_197
# %bb.196:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_197:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_202
# %bb.198:
.Ltmp499:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp500:
# %bb.199:                              # %._crit_edge.i.i650
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 5
	st.d	$s4, $sp, 144
	st.d	$a2, $sp, 160
	st.d	$a1, $sp, 165
	ori	$a1, $zero, 13
	st.d	$a1, $sp, 152
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.b	$zero, $sp, 173
	st.d	$s7, $sp, 112
	st.h	$a2, $sp, 128
	st.b	$a1, $sp, 130
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 120
	st.b	$zero, $sp, 131
.Ltmp501:
	addi.d	$a1, $sp, 144
	addi.d	$a2, $sp, 112
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp502:
# %bb.200:
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB7_204
# %bb.201:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_204
.LBB7_202:
.Ltmp494:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp495:
# %bb.203:                              # %._crit_edge.i.i634
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 5
	st.d	$s4, $sp, 144
	st.d	$a2, $sp, 160
	st.d	$a1, $sp, 165
	ori	$a1, $zero, 13
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 173
.Ltmp496:
	addi.d	$a1, $sp, 144
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp497:
.LBB7_204:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_206
# %bb.205:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i638
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_206:
.Ltmp504:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp505:
# %bb.207:                              # %._crit_edge.i.i670
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ld.w	$s1, $a1, 0
	ld.b	$s2, $a1, 4
	st.d	$s4, $sp, 144
	st.w	$s1, $sp, 160
	st.b	$s2, $sp, 164
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 165
	st.d	$s7, $sp, 112
	st.d	$zero, $sp, 120
	st.b	$zero, $sp, 128
.Ltmp506:
	addi.d	$a1, $sp, 144
	addi.d	$a2, $sp, 112
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp507:
# %bb.208:
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB7_210
# %bb.209:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_210:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_212
# %bb.211:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_212:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683
.Ltmp509:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp510:
# %bb.213:                              # %._crit_edge.i.i684
	st.d	$s4, $sp, 144
	st.w	$s1, $sp, 160
	st.b	$s2, $sp, 164
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 165
.Ltmp511:
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp512:
# %bb.214:                              # %._crit_edge.i.i688
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 5
	st.d	$s7, $sp, 112
	st.d	$a2, $sp, 128
	st.d	$a1, $sp, 133
	fld.d	$fa0, $sp, 208
	ori	$a1, $zero, 13
	st.d	$a1, $sp, 120
	st.b	$zero, $sp, 141
.Ltmp514:
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp515:
# %bb.215:
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB7_217
# %bb.216:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i692
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_217:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_219
# %bb.218:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i695
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_219:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697
.Ltmp517:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp518:
# %bb.220:                              # %._crit_edge.i.i698
	st.d	$s4, $sp, 144
	st.w	$s1, $sp, 160
	st.b	$s2, $sp, 164
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 165
.Ltmp519:
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp520:
# %bb.221:                              # %._crit_edge.i.i702
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 6
	st.d	$s7, $sp, 112
	st.d	$a2, $sp, 128
	st.d	$a1, $sp, 134
	ori	$a1, $zero, 14
	st.d	$a1, $sp, 120
	st.b	$zero, $sp, 142
.Ltmp522:
	addi.d	$a1, $sp, 112
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp523:
# %bb.222:
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB7_224
# %bb.223:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i706
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_224:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit708
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_226
# %bb.225:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i709
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_226:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_232
# %bb.227:
.Ltmp533:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp534:
# %bb.228:                              # %._crit_edge.i.i750
	st.d	$s4, $sp, 144
	st.w	$s1, $sp, 160
	st.b	$s2, $sp, 164
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 165
.Ltmp535:
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp536:
# %bb.229:                              # %._crit_edge.i.i754
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 7
	st.d	$s7, $sp, 112
	st.d	$a2, $sp, 128
	st.d	$a1, $sp, 135
	ori	$a1, $zero, 15
	st.d	$a1, $sp, 120
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.b	$zero, $sp, 143
	addi.d	$s0, $sp, 96
	st.d	$s0, $sp, 80
	st.h	$a2, $sp, 96
	st.b	$a1, $sp, 98
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 88
	st.b	$zero, $sp, 99
.Ltmp538:
	addi.d	$a1, $sp, 112
	addi.d	$a2, $sp, 80
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp539:
# %bb.230:
	ld.d	$a0, $sp, 80
	beq	$a0, $s0, .LBB7_235
# %bb.231:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i762
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_235
.LBB7_232:
.Ltmp525:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp526:
# %bb.233:                              # %._crit_edge.i.i712
	st.d	$s4, $sp, 144
	st.w	$s1, $sp, 160
	st.b	$s2, $sp, 164
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 152
	st.b	$zero, $sp, 165
.Ltmp527:
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp528:
# %bb.234:                              # %._crit_edge.i.i716
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 7
	st.d	$s7, $sp, 112
	st.d	$a2, $sp, 128
	st.d	$a1, $sp, 135
	ori	$a1, $zero, 15
	st.d	$a1, $sp, 120
	st.b	$zero, $sp, 143
.Ltmp530:
	addi.d	$a1, $sp, 112
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp531:
.LBB7_235:
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB7_237
# %bb.236:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_237:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_239
# %bb.238:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_239:
.Ltmp541:
	addi.d	$a1, $sp, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp542:
# %bb.240:                              # %.noexc.i781
	move	$fp, $a0
	st.d	$s4, $sp, 144
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 112
.Ltmp544:
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp545:
# %bb.241:                              # %.noexc782
	ld.d	$a1, $sp, 112
	pcalau12i	$a2, %pc_hi20(.L.str.62)
	addi.d	$a2, $a2, %pc_lo12(.L.str.62)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 160
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 144
	st.d	$a1, $sp, 152
	stx.b	$zero, $a0, $a1
	ld.w	$a0, $sp, 236
	fld.d	$fa0, $sp, 208
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
.Ltmp547:
	addi.d	$a1, $sp, 144
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp548:
# %bb.242:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_244
# %bb.243:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_244:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786
	ld.d	$a0, $sp, 240
	beq	$a0, $s5, .LBB7_246
# %bb.245:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i787
	ld.d	$a1, $sp, 256
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_246:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit789
	ld.d	$a0, $sp, 280
	beqz	$a0, .LBB7_248
# %bb.247:
	ld.d	$a1, $sp, 296
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_248:                              # %_ZN6miniFE6VectorIdiiED2Ev.exit
	ld.d	$a0, $sp, 312
	beqz	$a0, .LBB7_250
# %bb.249:
	ld.d	$a1, $sp, 328
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_250:                              # %_ZN6miniFE6VectorIdiiED2Ev.exit791
	ld.d	$a0, $sp, 440
	beqz	$a0, .LBB7_252
# %bb.251:
	ld.d	$a1, $sp, 456
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_252:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit.i
	ld.d	$a0, $sp, 416
	beqz	$a0, .LBB7_254
# %bb.253:
	ld.d	$a1, $sp, 432
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_254:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit.i
	ld.d	$a0, $sp, 392
	beqz	$a0, .LBB7_256
# %bb.255:
	ld.d	$a1, $sp, 408
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_256:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit3.i
	ld.d	$a0, $sp, 368
	beqz	$a0, .LBB7_258
# %bb.257:
	ld.d	$a1, $sp, 384
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_258:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit5.i
	ld.d	$a0, $sp, 344
	beqz	$a0, .LBB7_260
# %bb.259:
	ld.d	$a1, $sp, 360
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_260:                              # %_ZN6miniFE9CSRMatrixIdiiED2Ev.exit
	ld.d	$a1, $sp, 584
	addi.d	$a0, $sp, 568
.Ltmp550:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
.Ltmp551:
# %bb.261:                              # %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit.i
	ld.d	$a1, $sp, 536
.Ltmp553:
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp554:
# %bb.262:                              # %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit.i
	ld.d	$a1, $sp, 488
.Ltmp556:
	addi.d	$a0, $sp, 472
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp557:
# %bb.263:                              # %_ZN6miniFE23simple_mesh_descriptionIiED2Ev.exit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	fld.d	$fs4, $sp, 672                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 680                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 688                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 696                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 704                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 776                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 784                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 792                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 800
	ret
.LBB7_264:                              # %.invoke
.Ltmp559:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp560:
# %bb.265:                              # %.cont
.LBB7_266:                              # %.noexc.i
.Ltmp281:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp282:
# %bb.267:                              # %.noexc
.LBB7_268:
.Ltmp387:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp388:
# %bb.269:                              # %.noexc826
.LBB7_270:
.Ltmp532:
	b	.LBB7_291
.LBB7_271:
.Ltmp540:
	ld.d	$a2, $sp, 80
	move	$fp, $a0
	bne	$a2, $s0, .LBB7_310
	b	.LBB7_311
.LBB7_272:
.Ltmp529:
	move	$fp, $a0
	ld.d	$a0, $sp, 144
	bne	$a0, $s4, .LBB7_321
	b	.LBB7_355
.LBB7_273:
.Ltmp537:
	move	$fp, $a0
	ld.d	$a0, $sp, 144
	bne	$a0, $s4, .LBB7_321
	b	.LBB7_355
.LBB7_274:
.Ltmp498:
	b	.LBB7_303
.LBB7_275:
.Ltmp503:
	b	.LBB7_291
.LBB7_276:
.Ltmp478:
	b	.LBB7_303
.LBB7_277:
.Ltmp483:
	b	.LBB7_291
.LBB7_278:
.Ltmp458:
	b	.LBB7_303
.LBB7_279:
.Ltmp463:
	b	.LBB7_291
.LBB7_280:
.Ltmp288:
	move	$fp, $a0
	b	.LBB7_360
.LBB7_281:
.Ltmp558:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB7_282:
.Ltmp555:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB7_283:
.Ltmp552:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB7_284:
.Ltmp549:
	b	.LBB7_303
.LBB7_285:
.Ltmp546:
	b	.LBB7_354
.LBB7_286:
.Ltmp524:
	b	.LBB7_291
.LBB7_287:
.Ltmp521:
	move	$fp, $a0
	ld.d	$a0, $sp, 144
	bne	$a0, $s4, .LBB7_321
	b	.LBB7_355
.LBB7_288:
.Ltmp516:
	b	.LBB7_291
.LBB7_289:
.Ltmp513:
	move	$fp, $a0
	ld.d	$a0, $sp, 144
	bne	$a0, $s4, .LBB7_321
	b	.LBB7_355
.LBB7_290:
.Ltmp508:
.LBB7_291:
	ld.d	$a2, $sp, 112
	move	$fp, $a0
	beq	$a2, $s7, .LBB7_320
# %bb.292:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564
	ld.d	$a0, $sp, 128
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB7_319
.LBB7_293:
.Ltmp493:
	b	.LBB7_303
.LBB7_294:
.Ltmp488:
	b	.LBB7_303
.LBB7_295:
.Ltmp473:
	b	.LBB7_303
.LBB7_296:
.Ltmp468:
	b	.LBB7_303
.LBB7_297:
.Ltmp453:
	b	.LBB7_303
.LBB7_298:
.Ltmp448:
	b	.LBB7_303
.LBB7_299:
.Ltmp443:
	b	.LBB7_303
.LBB7_300:
.Ltmp440:
	b	.LBB7_354
.LBB7_301:
.Ltmp434:
	b	.LBB7_303
.LBB7_302:
.Ltmp429:
.LBB7_303:
	ld.d	$a2, $sp, 144
	move	$fp, $a0
	beq	$a2, $s4, .LBB7_355
# %bb.304:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i793
	ld.d	$a0, $sp, 160
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB7_322
.LBB7_305:
.Ltmp426:
	ld.d	$a2, $sp, 80
	move	$fp, $a0
	bne	$a2, $s1, .LBB7_310
	b	.LBB7_311
.LBB7_306:
.Ltmp423:
	move	$fp, $a0
	ld.d	$a0, $sp, 144
	bne	$a0, $s4, .LBB7_321
	b	.LBB7_355
.LBB7_307:
.Ltmp420:
	move	$fp, $a0
	ld.d	$a0, $sp, 144
	bne	$a0, $s4, .LBB7_321
	b	.LBB7_355
.LBB7_308:
.Ltmp417:
	b	.LBB7_354
.LBB7_309:
.Ltmp414:
	ld.d	$a2, $sp, 80
	move	$fp, $a0
	beq	$a2, $s6, .LBB7_311
.LBB7_310:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493
	ld.d	$a0, $sp, 96
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_311:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495
	ld.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	bne	$a0, $a1, .LBB7_318
	b	.LBB7_320
.LBB7_312:
.Ltmp411:
	move	$fp, $a0
	ld.d	$a0, $sp, 144
	bne	$a0, $s4, .LBB7_321
	b	.LBB7_355
.LBB7_313:
.Ltmp408:
	move	$fp, $a0
	ld.d	$a0, $sp, 144
	bne	$a0, $s4, .LBB7_321
	b	.LBB7_355
.LBB7_314:
.Ltmp405:
	b	.LBB7_354
.LBB7_315:
.Ltmp402:
	ld.d	$a2, $sp, 80
	move	$fp, $a0
	beq	$a2, $s0, .LBB7_317
# %bb.316:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484
	ld.d	$a0, $sp, 96
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_317:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486
	ld.d	$a0, $sp, 112
	beq	$a0, $s5, .LBB7_320
.LBB7_318:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
.LBB7_319:
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_320:
	ld.d	$a0, $sp, 144
	beq	$a0, $s4, .LBB7_355
.LBB7_321:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
.LBB7_322:
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_355
.LBB7_323:
.Ltmp399:
	move	$fp, $a0
	ld.d	$a0, $sp, 144
	bne	$a0, $s4, .LBB7_321
	b	.LBB7_355
.LBB7_324:
.Ltmp396:
	b	.LBB7_354
.LBB7_325:
.Ltmp350:
	move	$fp, $a0
	b	.LBB7_358
.LBB7_326:
.Ltmp347:
	move	$fp, $a0
	b	.LBB7_358
.LBB7_327:
.Ltmp325:
	b	.LBB7_336
.LBB7_328:
.Ltmp322:
	move	$fp, $a0
	b	.LBB7_338
.LBB7_329:
.Ltmp319:
	move	$fp, $a0
	b	.LBB7_338
.LBB7_330:
.Ltmp316:
	b	.LBB7_336
.LBB7_331:
.Ltmp313:
	b	.LBB7_336
.LBB7_332:
.Ltmp310:
	move	$fp, $a0
	b	.LBB7_338
.LBB7_333:
.Ltmp307:
	move	$fp, $a0
	b	.LBB7_338
.LBB7_334:
.Ltmp304:
	move	$fp, $a0
	b	.LBB7_358
.LBB7_335:
.Ltmp301:
.LBB7_336:
	ld.d	$a2, $sp, 240
	move	$fp, $a0
	beq	$a2, $s5, .LBB7_338
# %bb.337:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361
	ld.d	$a0, $sp, 256
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_338:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
	ld.d	$a0, $sp, 176
	beq	$a0, $s2, .LBB7_358
# %bb.339:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
	ld.d	$a1, $sp, 192
	b	.LBB7_357
.LBB7_340:
.Ltmp298:
	move	$fp, $a0
	b	.LBB7_358
.LBB7_341:
.Ltmp285:
	move	$fp, $a0
	b	.LBB7_362
.LBB7_342:
.Ltmp273:
	b	.LBB7_344
.LBB7_343:
.Ltmp270:
.LBB7_344:
	move	$fp, $a0
	addi.d	$a0, $sp, 472
	pcaddu18i	$ra, %call36(_ZN6miniFE23simple_mesh_descriptionIiED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_345:
.Ltmp389:
	move	$fp, $a0
	b	.LBB7_358
.LBB7_346:
.Ltmp437:
	b	.LBB7_354
.LBB7_347:
.Ltmp344:
	move	$fp, $a0
	b	.LBB7_358
.LBB7_348:
.Ltmp295:
	move	$fp, $a0
	b	.LBB7_358
.LBB7_349:
.Ltmp339:
	move	$fp, $a0
	b	.LBB7_358
.LBB7_350:
.Ltmp332:
	move	$fp, $a0
	b	.LBB7_358
.LBB7_351:
.Ltmp280:
	move	$fp, $a0
	b	.LBB7_362
.LBB7_352:
.Ltmp561:
	move	$fp, $a0
	b	.LBB7_358
.LBB7_353:
.Ltmp543:
.LBB7_354:
	move	$fp, $a0
.LBB7_355:
	ld.d	$a0, $sp, 240
	addi.d	$a1, $sp, 256
	beq	$a0, $a1, .LBB7_358
# %bb.356:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i796
	ld.d	$a1, $sp, 256
.LBB7_357:
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_358:
	ld.d	$a0, $sp, 280
	beqz	$a0, .LBB7_360
# %bb.359:
	ld.d	$a1, $sp, 296
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_360:                              # %_ZN6miniFE6VectorIdiiED2Ev.exit801
	ld.d	$a0, $sp, 312
	beqz	$a0, .LBB7_362
# %bb.361:
	ld.d	$a1, $sp, 328
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_362:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZN6miniFE9CSRMatrixIdiiED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 472
	pcaddu18i	$ra, %call36(_ZN6miniFE23simple_mesh_descriptionIiED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc, .Lfunc_end7-_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,"aG",@progbits,_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp268-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp268
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin4         #     jumps to .Ltmp270
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp272-.Ltmp271              #   Call between .Ltmp271 and .Ltmp272
	.uleb128 .Ltmp273-.Lfunc_begin4         #     jumps to .Ltmp273
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp274-.Ltmp272              #   Call between .Ltmp272 and .Ltmp274
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp279-.Ltmp274              #   Call between .Ltmp274 and .Ltmp279
	.uleb128 .Ltmp280-.Lfunc_begin4         #     jumps to .Ltmp280
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp284-.Ltmp283              #   Call between .Ltmp283 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin4         #     jumps to .Ltmp285
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp286-.Ltmp284              #   Call between .Ltmp284 and .Ltmp286
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp287-.Ltmp286              #   Call between .Ltmp286 and .Ltmp287
	.uleb128 .Ltmp288-.Lfunc_begin4         #     jumps to .Ltmp288
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp289-.Ltmp287              #   Call between .Ltmp287 and .Ltmp289
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp294-.Ltmp289              #   Call between .Ltmp289 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin4         #     jumps to .Ltmp295
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin4         #     jumps to .Ltmp298
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp300-.Ltmp299              #   Call between .Ltmp299 and .Ltmp300
	.uleb128 .Ltmp301-.Lfunc_begin4         #     jumps to .Ltmp301
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp302-.Ltmp300              #   Call between .Ltmp300 and .Ltmp302
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp302-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp303-.Ltmp302              #   Call between .Ltmp302 and .Ltmp303
	.uleb128 .Ltmp304-.Lfunc_begin4         #     jumps to .Ltmp304
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin4         #     jumps to .Ltmp307
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin4         #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin4         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp314-.Ltmp312              #   Call between .Ltmp312 and .Ltmp314
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp315-.Ltmp314              #   Call between .Ltmp314 and .Ltmp315
	.uleb128 .Ltmp316-.Lfunc_begin4         #     jumps to .Ltmp316
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp317-.Ltmp315              #   Call between .Ltmp315 and .Ltmp317
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp319-.Lfunc_begin4         #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp321-.Ltmp320              #   Call between .Ltmp320 and .Ltmp321
	.uleb128 .Ltmp322-.Lfunc_begin4         #     jumps to .Ltmp322
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp324-.Ltmp323              #   Call between .Ltmp323 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin4         #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp326-.Ltmp324              #   Call between .Ltmp324 and .Ltmp326
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Ltmp331-.Ltmp326              #   Call between .Ltmp326 and .Ltmp331
	.uleb128 .Ltmp332-.Lfunc_begin4         #     jumps to .Ltmp332
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp333-.Lfunc_begin4         # >> Call Site 26 <<
	.uleb128 .Ltmp338-.Ltmp333              #   Call between .Ltmp333 and .Ltmp338
	.uleb128 .Ltmp339-.Lfunc_begin4         #     jumps to .Ltmp339
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp340-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp343-.Ltmp340              #   Call between .Ltmp340 and .Ltmp343
	.uleb128 .Ltmp344-.Lfunc_begin4         #     jumps to .Ltmp344
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp346-.Ltmp345              #   Call between .Ltmp345 and .Ltmp346
	.uleb128 .Ltmp347-.Lfunc_begin4         #     jumps to .Ltmp347
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin4         # >> Call Site 29 <<
	.uleb128 .Ltmp349-.Ltmp348              #   Call between .Ltmp348 and .Ltmp349
	.uleb128 .Ltmp350-.Lfunc_begin4         #     jumps to .Ltmp350
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin4         # >> Call Site 30 <<
	.uleb128 .Ltmp374-.Ltmp351              #   Call between .Ltmp351 and .Ltmp374
	.uleb128 .Ltmp561-.Lfunc_begin4         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp375-.Lfunc_begin4         # >> Call Site 31 <<
	.uleb128 .Ltmp386-.Ltmp375              #   Call between .Ltmp375 and .Ltmp386
	.uleb128 .Ltmp389-.Lfunc_begin4         #     jumps to .Ltmp389
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp394-.Lfunc_begin4         # >> Call Site 32 <<
	.uleb128 .Ltmp395-.Ltmp394              #   Call between .Ltmp394 and .Ltmp395
	.uleb128 .Ltmp396-.Lfunc_begin4         #     jumps to .Ltmp396
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp397-.Lfunc_begin4         # >> Call Site 33 <<
	.uleb128 .Ltmp398-.Ltmp397              #   Call between .Ltmp397 and .Ltmp398
	.uleb128 .Ltmp399-.Lfunc_begin4         #     jumps to .Ltmp399
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin4         # >> Call Site 34 <<
	.uleb128 .Ltmp401-.Ltmp400              #   Call between .Ltmp400 and .Ltmp401
	.uleb128 .Ltmp402-.Lfunc_begin4         #     jumps to .Ltmp402
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp401-.Lfunc_begin4         # >> Call Site 35 <<
	.uleb128 .Ltmp403-.Ltmp401              #   Call between .Ltmp401 and .Ltmp403
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp403-.Lfunc_begin4         # >> Call Site 36 <<
	.uleb128 .Ltmp404-.Ltmp403              #   Call between .Ltmp403 and .Ltmp404
	.uleb128 .Ltmp405-.Lfunc_begin4         #     jumps to .Ltmp405
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp406-.Lfunc_begin4         # >> Call Site 37 <<
	.uleb128 .Ltmp407-.Ltmp406              #   Call between .Ltmp406 and .Ltmp407
	.uleb128 .Ltmp408-.Lfunc_begin4         #     jumps to .Ltmp408
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp409-.Lfunc_begin4         # >> Call Site 38 <<
	.uleb128 .Ltmp410-.Ltmp409              #   Call between .Ltmp409 and .Ltmp410
	.uleb128 .Ltmp411-.Lfunc_begin4         #     jumps to .Ltmp411
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp412-.Lfunc_begin4         # >> Call Site 39 <<
	.uleb128 .Ltmp413-.Ltmp412              #   Call between .Ltmp412 and .Ltmp413
	.uleb128 .Ltmp414-.Lfunc_begin4         #     jumps to .Ltmp414
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp413-.Lfunc_begin4         # >> Call Site 40 <<
	.uleb128 .Ltmp415-.Ltmp413              #   Call between .Ltmp413 and .Ltmp415
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp415-.Lfunc_begin4         # >> Call Site 41 <<
	.uleb128 .Ltmp416-.Ltmp415              #   Call between .Ltmp415 and .Ltmp416
	.uleb128 .Ltmp417-.Lfunc_begin4         #     jumps to .Ltmp417
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp418-.Lfunc_begin4         # >> Call Site 42 <<
	.uleb128 .Ltmp419-.Ltmp418              #   Call between .Ltmp418 and .Ltmp419
	.uleb128 .Ltmp420-.Lfunc_begin4         #     jumps to .Ltmp420
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp421-.Lfunc_begin4         # >> Call Site 43 <<
	.uleb128 .Ltmp422-.Ltmp421              #   Call between .Ltmp421 and .Ltmp422
	.uleb128 .Ltmp423-.Lfunc_begin4         #     jumps to .Ltmp423
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp424-.Lfunc_begin4         # >> Call Site 44 <<
	.uleb128 .Ltmp425-.Ltmp424              #   Call between .Ltmp424 and .Ltmp425
	.uleb128 .Ltmp426-.Lfunc_begin4         #     jumps to .Ltmp426
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp425-.Lfunc_begin4         # >> Call Site 45 <<
	.uleb128 .Ltmp427-.Ltmp425              #   Call between .Ltmp425 and .Ltmp427
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp427-.Lfunc_begin4         # >> Call Site 46 <<
	.uleb128 .Ltmp428-.Ltmp427              #   Call between .Ltmp427 and .Ltmp428
	.uleb128 .Ltmp429-.Lfunc_begin4         #     jumps to .Ltmp429
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin4         # >> Call Site 47 <<
	.uleb128 .Ltmp430-.Ltmp428              #   Call between .Ltmp428 and .Ltmp430
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp430-.Lfunc_begin4         # >> Call Site 48 <<
	.uleb128 .Ltmp431-.Ltmp430              #   Call between .Ltmp430 and .Ltmp431
	.uleb128 .Ltmp437-.Lfunc_begin4         #     jumps to .Ltmp437
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp432-.Lfunc_begin4         # >> Call Site 49 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.uleb128 .Ltmp434-.Lfunc_begin4         #     jumps to .Ltmp434
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp433-.Lfunc_begin4         # >> Call Site 50 <<
	.uleb128 .Ltmp435-.Ltmp433              #   Call between .Ltmp433 and .Ltmp435
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp435-.Lfunc_begin4         # >> Call Site 51 <<
	.uleb128 .Ltmp436-.Ltmp435              #   Call between .Ltmp435 and .Ltmp436
	.uleb128 .Ltmp437-.Lfunc_begin4         #     jumps to .Ltmp437
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin4         # >> Call Site 52 <<
	.uleb128 .Ltmp439-.Ltmp438              #   Call between .Ltmp438 and .Ltmp439
	.uleb128 .Ltmp440-.Lfunc_begin4         #     jumps to .Ltmp440
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp441-.Lfunc_begin4         # >> Call Site 53 <<
	.uleb128 .Ltmp442-.Ltmp441              #   Call between .Ltmp441 and .Ltmp442
	.uleb128 .Ltmp443-.Lfunc_begin4         #     jumps to .Ltmp443
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp442-.Lfunc_begin4         # >> Call Site 54 <<
	.uleb128 .Ltmp444-.Ltmp442              #   Call between .Ltmp442 and .Ltmp444
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp444-.Lfunc_begin4         # >> Call Site 55 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp446-.Lfunc_begin4         # >> Call Site 56 <<
	.uleb128 .Ltmp447-.Ltmp446              #   Call between .Ltmp446 and .Ltmp447
	.uleb128 .Ltmp448-.Lfunc_begin4         #     jumps to .Ltmp448
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp447-.Lfunc_begin4         # >> Call Site 57 <<
	.uleb128 .Ltmp449-.Ltmp447              #   Call between .Ltmp447 and .Ltmp449
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp449-.Lfunc_begin4         # >> Call Site 58 <<
	.uleb128 .Ltmp450-.Ltmp449              #   Call between .Ltmp449 and .Ltmp450
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp451-.Lfunc_begin4         # >> Call Site 59 <<
	.uleb128 .Ltmp452-.Ltmp451              #   Call between .Ltmp451 and .Ltmp452
	.uleb128 .Ltmp453-.Lfunc_begin4         #     jumps to .Ltmp453
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp452-.Lfunc_begin4         # >> Call Site 60 <<
	.uleb128 .Ltmp459-.Ltmp452              #   Call between .Ltmp452 and .Ltmp459
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin4         # >> Call Site 61 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp461-.Lfunc_begin4         # >> Call Site 62 <<
	.uleb128 .Ltmp462-.Ltmp461              #   Call between .Ltmp461 and .Ltmp462
	.uleb128 .Ltmp463-.Lfunc_begin4         #     jumps to .Ltmp463
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin4         # >> Call Site 63 <<
	.uleb128 .Ltmp454-.Ltmp462              #   Call between .Ltmp462 and .Ltmp454
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp454-.Lfunc_begin4         # >> Call Site 64 <<
	.uleb128 .Ltmp455-.Ltmp454              #   Call between .Ltmp454 and .Ltmp455
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin4         # >> Call Site 65 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.uleb128 .Ltmp458-.Lfunc_begin4         #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp457-.Lfunc_begin4         # >> Call Site 66 <<
	.uleb128 .Ltmp464-.Ltmp457              #   Call between .Ltmp457 and .Ltmp464
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp464-.Lfunc_begin4         # >> Call Site 67 <<
	.uleb128 .Ltmp465-.Ltmp464              #   Call between .Ltmp464 and .Ltmp465
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp466-.Lfunc_begin4         # >> Call Site 68 <<
	.uleb128 .Ltmp467-.Ltmp466              #   Call between .Ltmp466 and .Ltmp467
	.uleb128 .Ltmp468-.Lfunc_begin4         #     jumps to .Ltmp468
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp467-.Lfunc_begin4         # >> Call Site 69 <<
	.uleb128 .Ltmp469-.Ltmp467              #   Call between .Ltmp467 and .Ltmp469
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp469-.Lfunc_begin4         # >> Call Site 70 <<
	.uleb128 .Ltmp470-.Ltmp469              #   Call between .Ltmp469 and .Ltmp470
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin4         # >> Call Site 71 <<
	.uleb128 .Ltmp472-.Ltmp471              #   Call between .Ltmp471 and .Ltmp472
	.uleb128 .Ltmp473-.Lfunc_begin4         #     jumps to .Ltmp473
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp472-.Lfunc_begin4         # >> Call Site 72 <<
	.uleb128 .Ltmp479-.Ltmp472              #   Call between .Ltmp472 and .Ltmp479
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp479-.Lfunc_begin4         # >> Call Site 73 <<
	.uleb128 .Ltmp480-.Ltmp479              #   Call between .Ltmp479 and .Ltmp480
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp481-.Lfunc_begin4         # >> Call Site 74 <<
	.uleb128 .Ltmp482-.Ltmp481              #   Call between .Ltmp481 and .Ltmp482
	.uleb128 .Ltmp483-.Lfunc_begin4         #     jumps to .Ltmp483
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp482-.Lfunc_begin4         # >> Call Site 75 <<
	.uleb128 .Ltmp474-.Ltmp482              #   Call between .Ltmp482 and .Ltmp474
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp474-.Lfunc_begin4         # >> Call Site 76 <<
	.uleb128 .Ltmp475-.Ltmp474              #   Call between .Ltmp474 and .Ltmp475
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin4         # >> Call Site 77 <<
	.uleb128 .Ltmp477-.Ltmp476              #   Call between .Ltmp476 and .Ltmp477
	.uleb128 .Ltmp478-.Lfunc_begin4         #     jumps to .Ltmp478
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp477-.Lfunc_begin4         # >> Call Site 78 <<
	.uleb128 .Ltmp484-.Ltmp477              #   Call between .Ltmp477 and .Ltmp484
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp484-.Lfunc_begin4         # >> Call Site 79 <<
	.uleb128 .Ltmp485-.Ltmp484              #   Call between .Ltmp484 and .Ltmp485
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin4         # >> Call Site 80 <<
	.uleb128 .Ltmp487-.Ltmp486              #   Call between .Ltmp486 and .Ltmp487
	.uleb128 .Ltmp488-.Lfunc_begin4         #     jumps to .Ltmp488
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp487-.Lfunc_begin4         # >> Call Site 81 <<
	.uleb128 .Ltmp489-.Ltmp487              #   Call between .Ltmp487 and .Ltmp489
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin4         # >> Call Site 82 <<
	.uleb128 .Ltmp490-.Ltmp489              #   Call between .Ltmp489 and .Ltmp490
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp491-.Lfunc_begin4         # >> Call Site 83 <<
	.uleb128 .Ltmp492-.Ltmp491              #   Call between .Ltmp491 and .Ltmp492
	.uleb128 .Ltmp493-.Lfunc_begin4         #     jumps to .Ltmp493
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp492-.Lfunc_begin4         # >> Call Site 84 <<
	.uleb128 .Ltmp499-.Ltmp492              #   Call between .Ltmp492 and .Ltmp499
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp499-.Lfunc_begin4         # >> Call Site 85 <<
	.uleb128 .Ltmp500-.Ltmp499              #   Call between .Ltmp499 and .Ltmp500
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp501-.Lfunc_begin4         # >> Call Site 86 <<
	.uleb128 .Ltmp502-.Ltmp501              #   Call between .Ltmp501 and .Ltmp502
	.uleb128 .Ltmp503-.Lfunc_begin4         #     jumps to .Ltmp503
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp502-.Lfunc_begin4         # >> Call Site 87 <<
	.uleb128 .Ltmp494-.Ltmp502              #   Call between .Ltmp502 and .Ltmp494
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp494-.Lfunc_begin4         # >> Call Site 88 <<
	.uleb128 .Ltmp495-.Ltmp494              #   Call between .Ltmp494 and .Ltmp495
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp496-.Lfunc_begin4         # >> Call Site 89 <<
	.uleb128 .Ltmp497-.Ltmp496              #   Call between .Ltmp496 and .Ltmp497
	.uleb128 .Ltmp498-.Lfunc_begin4         #     jumps to .Ltmp498
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp497-.Lfunc_begin4         # >> Call Site 90 <<
	.uleb128 .Ltmp504-.Ltmp497              #   Call between .Ltmp497 and .Ltmp504
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp504-.Lfunc_begin4         # >> Call Site 91 <<
	.uleb128 .Ltmp505-.Ltmp504              #   Call between .Ltmp504 and .Ltmp505
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp506-.Lfunc_begin4         # >> Call Site 92 <<
	.uleb128 .Ltmp507-.Ltmp506              #   Call between .Ltmp506 and .Ltmp507
	.uleb128 .Ltmp508-.Lfunc_begin4         #     jumps to .Ltmp508
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin4         # >> Call Site 93 <<
	.uleb128 .Ltmp509-.Ltmp507              #   Call between .Ltmp507 and .Ltmp509
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp509-.Lfunc_begin4         # >> Call Site 94 <<
	.uleb128 .Ltmp510-.Ltmp509              #   Call between .Ltmp509 and .Ltmp510
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp511-.Lfunc_begin4         # >> Call Site 95 <<
	.uleb128 .Ltmp512-.Ltmp511              #   Call between .Ltmp511 and .Ltmp512
	.uleb128 .Ltmp513-.Lfunc_begin4         #     jumps to .Ltmp513
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp514-.Lfunc_begin4         # >> Call Site 96 <<
	.uleb128 .Ltmp515-.Ltmp514              #   Call between .Ltmp514 and .Ltmp515
	.uleb128 .Ltmp516-.Lfunc_begin4         #     jumps to .Ltmp516
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp515-.Lfunc_begin4         # >> Call Site 97 <<
	.uleb128 .Ltmp517-.Ltmp515              #   Call between .Ltmp515 and .Ltmp517
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp517-.Lfunc_begin4         # >> Call Site 98 <<
	.uleb128 .Ltmp518-.Ltmp517              #   Call between .Ltmp517 and .Ltmp518
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp519-.Lfunc_begin4         # >> Call Site 99 <<
	.uleb128 .Ltmp520-.Ltmp519              #   Call between .Ltmp519 and .Ltmp520
	.uleb128 .Ltmp521-.Lfunc_begin4         #     jumps to .Ltmp521
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp522-.Lfunc_begin4         # >> Call Site 100 <<
	.uleb128 .Ltmp523-.Ltmp522              #   Call between .Ltmp522 and .Ltmp523
	.uleb128 .Ltmp524-.Lfunc_begin4         #     jumps to .Ltmp524
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp523-.Lfunc_begin4         # >> Call Site 101 <<
	.uleb128 .Ltmp533-.Ltmp523              #   Call between .Ltmp523 and .Ltmp533
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp533-.Lfunc_begin4         # >> Call Site 102 <<
	.uleb128 .Ltmp534-.Ltmp533              #   Call between .Ltmp533 and .Ltmp534
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp535-.Lfunc_begin4         # >> Call Site 103 <<
	.uleb128 .Ltmp536-.Ltmp535              #   Call between .Ltmp535 and .Ltmp536
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp538-.Lfunc_begin4         # >> Call Site 104 <<
	.uleb128 .Ltmp539-.Ltmp538              #   Call between .Ltmp538 and .Ltmp539
	.uleb128 .Ltmp540-.Lfunc_begin4         #     jumps to .Ltmp540
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp539-.Lfunc_begin4         # >> Call Site 105 <<
	.uleb128 .Ltmp525-.Ltmp539              #   Call between .Ltmp539 and .Ltmp525
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp525-.Lfunc_begin4         # >> Call Site 106 <<
	.uleb128 .Ltmp526-.Ltmp525              #   Call between .Ltmp525 and .Ltmp526
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp527-.Lfunc_begin4         # >> Call Site 107 <<
	.uleb128 .Ltmp528-.Ltmp527              #   Call between .Ltmp527 and .Ltmp528
	.uleb128 .Ltmp529-.Lfunc_begin4         #     jumps to .Ltmp529
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp530-.Lfunc_begin4         # >> Call Site 108 <<
	.uleb128 .Ltmp531-.Ltmp530              #   Call between .Ltmp530 and .Ltmp531
	.uleb128 .Ltmp532-.Lfunc_begin4         #     jumps to .Ltmp532
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp531-.Lfunc_begin4         # >> Call Site 109 <<
	.uleb128 .Ltmp541-.Ltmp531              #   Call between .Ltmp531 and .Ltmp541
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp541-.Lfunc_begin4         # >> Call Site 110 <<
	.uleb128 .Ltmp542-.Ltmp541              #   Call between .Ltmp541 and .Ltmp542
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp544-.Lfunc_begin4         # >> Call Site 111 <<
	.uleb128 .Ltmp545-.Ltmp544              #   Call between .Ltmp544 and .Ltmp545
	.uleb128 .Ltmp546-.Lfunc_begin4         #     jumps to .Ltmp546
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp547-.Lfunc_begin4         # >> Call Site 112 <<
	.uleb128 .Ltmp548-.Ltmp547              #   Call between .Ltmp547 and .Ltmp548
	.uleb128 .Ltmp549-.Lfunc_begin4         #     jumps to .Ltmp549
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp548-.Lfunc_begin4         # >> Call Site 113 <<
	.uleb128 .Ltmp550-.Ltmp548              #   Call between .Ltmp548 and .Ltmp550
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp550-.Lfunc_begin4         # >> Call Site 114 <<
	.uleb128 .Ltmp551-.Ltmp550              #   Call between .Ltmp550 and .Ltmp551
	.uleb128 .Ltmp552-.Lfunc_begin4         #     jumps to .Ltmp552
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp553-.Lfunc_begin4         # >> Call Site 115 <<
	.uleb128 .Ltmp554-.Ltmp553              #   Call between .Ltmp553 and .Ltmp554
	.uleb128 .Ltmp555-.Lfunc_begin4         #     jumps to .Ltmp555
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp556-.Lfunc_begin4         # >> Call Site 116 <<
	.uleb128 .Ltmp557-.Ltmp556              #   Call between .Ltmp556 and .Ltmp557
	.uleb128 .Ltmp558-.Lfunc_begin4         #     jumps to .Ltmp558
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp559-.Lfunc_begin4         # >> Call Site 117 <<
	.uleb128 .Ltmp560-.Ltmp559              #   Call between .Ltmp559 and .Ltmp560
	.uleb128 .Ltmp561-.Lfunc_begin4         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin4         # >> Call Site 118 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp285-.Lfunc_begin4         #     jumps to .Ltmp285
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp387-.Lfunc_begin4         # >> Call Site 119 <<
	.uleb128 .Ltmp388-.Ltmp387              #   Call between .Ltmp387 and .Ltmp388
	.uleb128 .Ltmp389-.Lfunc_begin4         #     jumps to .Ltmp389
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin4         # >> Call Site 120 <<
	.uleb128 .Lfunc_end7-.Ltmp388           #   Call between .Ltmp388 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
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
.Lfunc_end8:
	.size	__clang_call_terminate, .Lfunc_end8-__clang_call_terminate
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb
.LCPI9_0:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI9_1:
	.word	0x42c80000                      # float 100
	.section	.text._ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,"axG",@progbits,_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,comdat
	.weak	_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb
	.p2align	5
	.type	_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,@function
_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb: # @_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:                                # %_ZN6miniFE18get_global_min_maxIiEEvT_RS1_S2_RiS2_S3_.exit
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
	ld.w	$a0, $a1, 4
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a1, 12
	ld.w	$t0, $a1, 8
	ld.w	$t1, $a1, 20
	ld.w	$a1, $a1, 16
	sub.d	$a0, $a0, $a6
	sub.d	$a6, $a7, $t0
	sub.w	$a1, $t1, $a1
	mulw.d.w	$a0, $a6, $a0
	mul.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI9_0)
	ffint.s.w	$fa0, $fa0
	fabs.s	$fa2, $fa0
	fcvt.d.s	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fa1
	move	$s0, $a4
	move	$fp, $a3
	move	$s1, $a2
	bcnez	$fcc0, .LBB9_4
# %bb.1:                                # %_ZN6miniFE21percentage_differenceIfEET_S1_S1_.exit46
	alsl.w	$a1, $a0, $a0, 2
	addi.w	$a0, $a0, 0
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI9_1)
	fld.s	$fa2, $a1, %pc_lo12(.LCPI9_1)
	fsub.s	$fa1, $fa1, $fa0
	fabs.s	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	fmul.s	$fa1, $fa1, $fa2
	movgr2fr.w	$fa3, $a0
	ffint.s.w	$fa3, $fa3
	fsub.s	$fa3, $fa3, $fa0
	fabs.s	$fa3, $fa3
	fdiv.s	$fa0, $fa3, $fa0
	fmul.s	$fa0, $fa0, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_3
# %bb.2:                                # %.sink.split
	fmov.s	$fa1, $fa0
.LBB9_3:
	fst.s	$fa1, $s1, 0
	st.w	$zero, $fp, 0
	bnez	$a5, .LBB9_5
	b	.LBB9_26
.LBB9_4:
	vldi	$vr1, -1040
	fst.s	$fa1, $s1, 0
	st.w	$zero, $fp, 0
	beqz	$a5, .LBB9_26
.LBB9_5:                                # %.noexc.i
	addi.d	$s3, $sp, 56
	st.d	$s3, $sp, 40
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 8
.Ltmp562:
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp563:
# %bb.6:                                # %.noexc
	st.d	$a0, $sp, 40
	ld.d	$a1, $sp, 8
	pcalau12i	$a2, %pc_hi20(.L.str.63)
	addi.d	$s6, $a2, %pc_lo12(.L.str.63)
	vld	$vr0, $s6, 0
	ld.w	$s5, $s6, 24
	ld.d	$s7, $s6, 16
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	st.w	$s5, $a0, 24
	st.d	$s7, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	addi.d	$s4, $sp, 24
	st.d	$s4, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $sp, 24
.Ltmp565:
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp566:
# %bb.7:
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB9_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
	st.d	$s3, $sp, 40
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 8
.Ltmp568:
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp569:
# %bb.12:                               # %.noexc56
	ld.d	$a1, $sp, 8
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	st.w	$s5, $a0, 24
	st.d	$s7, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
.Ltmp571:
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp572:
# %bb.13:                               # %.noexc.i59
	move	$s2, $a0
	st.d	$s4, $sp, 8
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 72
.Ltmp574:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 72
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp575:
# %bb.14:                               # %.noexc60
	ld.d	$a1, $sp, 72
	pcalau12i	$a2, %pc_hi20(.L.str.64)
	addi.d	$a2, $a2, %pc_lo12(.L.str.64)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	fld.s	$fa0, $s1, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp577:
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp578:
# %bb.15:
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB9_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_17:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
	st.d	$s3, $sp, 40
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 8
.Ltmp580:
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp581:
# %bb.20:                               # %.noexc70
	ld.d	$a1, $sp, 8
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	st.w	$s5, $a0, 24
	st.d	$s7, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
.Ltmp583:
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp584:
# %bb.21:                               # %._crit_edge.i.i72
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	st.d	$s4, $sp, 8
	st.d	$a2, $sp, 24
	st.w	$a1, $sp, 31
	fld.s	$fa0, $fp, 0
	ori	$a1, $zero, 11
	st.d	$a1, $sp, 16
	st.b	$zero, $sp, 35
	fcvt.d.s	$fa0, $fa0
.Ltmp586:
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp587:
# %bb.22:
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB9_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_26
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_26:
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
.LBB9_27:
.Ltmp588:
	b	.LBB9_35
.LBB9_28:
.Ltmp585:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_37
	b	.LBB9_39
.LBB9_29:
.Ltmp582:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_30:
.Ltmp579:
	b	.LBB9_35
.LBB9_31:
.Ltmp576:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_37
	b	.LBB9_39
.LBB9_32:
.Ltmp573:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_37
	b	.LBB9_39
.LBB9_33:
.Ltmp570:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_34:
.Ltmp567:
.LBB9_35:
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	bne	$a2, $s4, .LBB9_38
# %bb.36:
	ld.d	$a0, $sp, 40
	bne	$a0, $s3, .LBB9_39
.LBB9_37:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_38:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_37
.LBB9_39:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_40:
.Ltmp564:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb, .Lfunc_end9-_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,"aG",@progbits,_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp562-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp563-.Ltmp562              #   Call between .Ltmp562 and .Ltmp563
	.uleb128 .Ltmp564-.Lfunc_begin5         #     jumps to .Ltmp564
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp565-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp566-.Ltmp565              #   Call between .Ltmp565 and .Ltmp566
	.uleb128 .Ltmp567-.Lfunc_begin5         #     jumps to .Ltmp567
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp566-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp568-.Ltmp566              #   Call between .Ltmp566 and .Ltmp568
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp568-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp569-.Ltmp568              #   Call between .Ltmp568 and .Ltmp569
	.uleb128 .Ltmp570-.Lfunc_begin5         #     jumps to .Ltmp570
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp571-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp572-.Ltmp571              #   Call between .Ltmp571 and .Ltmp572
	.uleb128 .Ltmp573-.Lfunc_begin5         #     jumps to .Ltmp573
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp574-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp575-.Ltmp574              #   Call between .Ltmp574 and .Ltmp575
	.uleb128 .Ltmp576-.Lfunc_begin5         #     jumps to .Ltmp576
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp577-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp578-.Ltmp577              #   Call between .Ltmp577 and .Ltmp578
	.uleb128 .Ltmp579-.Lfunc_begin5         #     jumps to .Ltmp579
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp578-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp580-.Ltmp578              #   Call between .Ltmp578 and .Ltmp580
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp581-.Ltmp580              #   Call between .Ltmp580 and .Ltmp581
	.uleb128 .Ltmp582-.Lfunc_begin5         #     jumps to .Ltmp582
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp583-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp584-.Ltmp583              #   Call between .Ltmp583 and .Ltmp584
	.uleb128 .Ltmp585-.Lfunc_begin5         #     jumps to .Ltmp585
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp586-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp587-.Ltmp586              #   Call between .Ltmp586 and .Ltmp587
	.uleb128 .Ltmp588-.Lfunc_begin5         #     jumps to .Ltmp588
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp587-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Lfunc_end9-.Ltmp587           #   Call between .Ltmp587 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,"axG",@progbits,_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,comdat
	.weak	_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_ # -- Begin function _ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_
	.p2align	5
	.type	_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,@function
_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_: # @_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	ld.w	$a3, $a1, 0
	move	$fp, $a0
	st.w	$a3, $a0, 144
	ld.w	$a6, $a1, 4
	st.w	$a6, $a0, 148
	ld.w	$a0, $a2, 0
	addi.d	$s1, $fp, 8
	st.w	$zero, $fp, 8
	st.w	$a0, $fp, 168
	ld.w	$a0, $a2, 4
	st.d	$zero, $fp, 16
	st.d	$s1, $fp, 24
	st.d	$s1, $fp, 32
	st.w	$a0, $fp, 172
	ld.w	$a3, $a1, 8
	st.d	$zero, $fp, 40
	addi.d	$a4, $fp, 104
	ld.w	$a5, $a2, 0
	st.w	$a3, $fp, 152
	ld.w	$a7, $a1, 12
	st.d	$a4, $fp, 120
	st.d	$a4, $fp, 128
	st.w	$a5, $sp, 160
	st.w	$a7, $fp, 156
	ld.w	$a3, $a2, 8
	slt	$a4, $a5, $a0
	xor	$a5, $a0, $a6
	sltui	$a5, $a5, 1
	st.w	$a3, $fp, 176
	ld.w	$a3, $a2, 12
	and	$a4, $a4, $a5
	addi.d	$t0, $fp, 56
	add.d	$a0, $a0, $a4
	st.w	$a3, $fp, 180
	ld.w	$a4, $a2, 8
	st.w	$a0, $sp, 164
	ld.w	$a0, $a1, 16
	st.w	$zero, $fp, 56
	st.w	$a4, $sp, 168
	slt	$a4, $a4, $a3
	st.w	$a0, $fp, 160
	ld.w	$a5, $a1, 20
	xor	$a0, $a3, $a7
	sltui	$a0, $a0, 1
	and	$a0, $a4, $a0
	st.w	$a5, $fp, 164
	ld.w	$a1, $a2, 16
	st.d	$zero, $fp, 64
	st.d	$t0, $fp, 72
	st.d	$t0, $sp, 144                   # 8-byte Folded Spill
	st.d	$t0, $fp, 80
	st.w	$a1, $fp, 184
	ld.w	$a1, $a2, 20
	st.d	$zero, $fp, 88
	st.w	$zero, $fp, 104
	st.d	$zero, $fp, 112
	st.w	$a1, $fp, 188
	ld.w	$a2, $a2, 16
	st.d	$zero, $fp, 136
	add.d	$a0, $a3, $a0
	st.w	$a0, $sp, 172
	st.w	$a2, $sp, 176
	slt	$a0, $a2, $a1
	xor	$a2, $a1, $a5
	sltui	$a2, $a2, 1
	and	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 180
	addi.d	$a4, $fp, 96
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a0, $a6, 1
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	addi.w	$a1, $a7, 1
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a2, $a5, 1
.Ltmp589:
	addi.d	$a3, $sp, 160
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE)
	jirl	$ra, $ra, 0
.Ltmp590:
# %bb.1:
	ld.w	$a0, $fp, 144
	ld.w	$a1, $fp, 168
	bne	$a0, $a1, .LBB10_34
# %bb.2:
	ld.w	$a0, $sp, 176
	ld.w	$a1, $sp, 180
	slt	$a2, $zero, $a0
	sub.w	$a3, $a0, $a2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bge	$a3, $a0, .LBB10_34
# %bb.3:                                # %.preheader457.lr.ph
	ld.w	$a0, $sp, 168
	ld.w	$a1, $sp, 172
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$s8, $a1, $a0
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	bge	$a2, $s8, .LBB10_34
# %bb.4:                                # %.preheader457.us.preheader
	addi.w	$s5, $zero, -1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $s5, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s4, $zero, 24
	ori	$s7, $zero, 16
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_5:                               # %._crit_edge.us
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bge	$a3, $a0, .LBB10_34
.LBB10_6:                               # %.preheader457.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
                                        #       Child Loop BB10_11 Depth 3
                                        #     Child Loop BB10_22 Depth 2
                                        #       Child Loop BB10_24 Depth 3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	slt	$a0, $a0, $a3
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB10_9
# %bb.7:                                # %.lr.ph.split.us501.preheader
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB10_22
	.p2align	4, , 16
.LBB10_8:                               #   in Loop: Header=BB10_9 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_5
.LBB10_9:                               # %.lr.ph.split.us.us
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_11 Depth 3
.Ltmp592:
	move	$a0, $s5
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp593:
# %bb.10:                               # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit.us.us
                                        #   in Loop: Header=BB10_9 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	move	$s6, $s1
	beqz	$a1, .LBB10_13
	.p2align	4, , 16
.LBB10_11:                              # %.lr.ph.i.i.i.us.us
                                        #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s6, $a1
	bnez	$a1, .LBB10_11
# %bb.12:                               # %._crit_edge.i.i.i.us.us
                                        #   in Loop: Header=BB10_9 Depth=2
	bge	$s3, $a0, .LBB10_15
.LBB10_13:                              # %._crit_edge.thread.i.i.i.us.us
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s6, $a0, .LBB10_16
# %bb.14:                               #   in Loop: Header=BB10_9 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_15:                              #   in Loop: Header=BB10_9 Depth=2
	bge	$a0, $s3, .LBB10_8
.LBB10_16:                              # %select.unfold.i.i.us.us
                                        #   in Loop: Header=BB10_9 Depth=2
	beq	$s6, $s1, .LBB10_18
# %bb.17:                               #   in Loop: Header=BB10_9 Depth=2
	ld.w	$a0, $s6, 32
	slt	$s2, $s3, $a0
	b	.LBB10_19
	.p2align	4, , 16
.LBB10_18:                              #   in Loop: Header=BB10_9 Depth=2
	ori	$s2, $zero, 1
.LBB10_19:                              # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.us.us
                                        #   in Loop: Header=BB10_9 Depth=2
.Ltmp594:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp595:
# %bb.20:                               # %.noexc.us.us
                                        #   in Loop: Header=BB10_9 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s6
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_8
	.p2align	4, , 16
.LBB10_21:                              #   in Loop: Header=BB10_22 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_5
.LBB10_22:                              # %.lr.ph.split.us501
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_24 Depth 3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	or	$a0, $s0, $a0
	slt	$a0, $s5, $a0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	slt	$a1, $a1, $s0
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$a2, $s0, $a2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s5, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s5, $a0
	or	$a0, $a1, $a0
.Ltmp597:
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp598:
# %bb.23:                               # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit.us477
                                        #   in Loop: Header=BB10_22 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	move	$s6, $s1
	beqz	$a1, .LBB10_26
	.p2align	4, , 16
.LBB10_24:                              # %.lr.ph.i.i.i.us480
                                        #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s6, $a1
	bnez	$a1, .LBB10_24
# %bb.25:                               # %._crit_edge.i.i.i.us486
                                        #   in Loop: Header=BB10_22 Depth=2
	bge	$s3, $a0, .LBB10_28
.LBB10_26:                              # %._crit_edge.thread.i.i.i.us490
                                        #   in Loop: Header=BB10_22 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s6, $a0, .LBB10_29
# %bb.27:                               #   in Loop: Header=BB10_22 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_28:                              #   in Loop: Header=BB10_22 Depth=2
	bge	$a0, $s3, .LBB10_21
.LBB10_29:                              # %select.unfold.i.i.us495
                                        #   in Loop: Header=BB10_22 Depth=2
	beq	$s6, $s1, .LBB10_31
# %bb.30:                               #   in Loop: Header=BB10_22 Depth=2
	ld.w	$a0, $s6, 32
	slt	$s2, $s3, $a0
	b	.LBB10_32
	.p2align	4, , 16
.LBB10_31:                              #   in Loop: Header=BB10_22 Depth=2
	ori	$s2, $zero, 1
.LBB10_32:                              # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.us497
                                        #   in Loop: Header=BB10_22 Depth=2
.Ltmp599:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp600:
# %bb.33:                               # %.noexc.us498
                                        #   in Loop: Header=BB10_22 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s6
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_21
.LBB10_34:                              # %.loopexit458
	ld.w	$a0, $fp, 152
	ld.w	$a1, $fp, 176
	bne	$a0, $a1, .LBB10_69
# %bb.35:
	ld.w	$a0, $sp, 176
	ld.w	$a1, $sp, 180
	slt	$a2, $zero, $a0
	sub.w	$s5, $a0, $a2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bge	$s5, $a0, .LBB10_69
# %bb.36:                               # %.preheader454.lr.ph
	ld.w	$a0, $sp, 160
	ld.w	$a1, $sp, 164
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bge	$a2, $a0, .LBB10_69
# %bb.37:                               # %.preheader454.us.preheader
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.w	$s6, $zero, -1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $s6, $a0
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s4, $zero, 24
	ori	$s0, $zero, 16
	b	.LBB10_39
	.p2align	4, , 16
.LBB10_38:                              # %._crit_edge.us508
                                        #   in Loop: Header=BB10_39 Depth=1
	addi.w	$s5, $s5, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bge	$s5, $a0, .LBB10_69
.LBB10_39:                              # %.preheader454.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_41 Depth 2
                                        #       Child Loop BB10_59 Depth 3
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	mul.d	$a0, $a0, $s5
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slt	$a0, $a0, $s5
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	and	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	masknez	$a0, $s6, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	b	.LBB10_41
	.p2align	4, , 16
.LBB10_40:                              #   in Loop: Header=BB10_41 Depth=2
	addi.w	$s7, $s7, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bge	$s7, $a0, .LBB10_38
.LBB10_41:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit241.us
                                        #   Parent Loop BB10_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_59 Depth 3
	or	$a0, $s7, $s5
	slt	$a0, $s6, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	slt	$a1, $a1, $s7
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.w	$a2, $s7, $a2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	or	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s6, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s6, $a0
	or	$s3, $a1, $a0
.Ltmp602:
	move	$a0, $s3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp603:
# %bb.42:                               # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit243.us
                                        #   in Loop: Header=BB10_41 Depth=2
	move	$s8, $a0
	blt	$s6, $a0, .LBB10_58
# %bb.43:                               #   in Loop: Header=BB10_41 Depth=2
.Ltmp604:
	ori	$a2, $zero, 21
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp605:
# %bb.44:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
                                        #   in Loop: Header=BB10_41 Depth=2
.Ltmp606:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp607:
# %bb.45:                               #   in Loop: Header=BB10_41 Depth=2
.Ltmp608:
	move	$s2, $a0
	ori	$a2, $zero, 5
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp609:
# %bb.46:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246.us
                                        #   in Loop: Header=BB10_41 Depth=2
.Ltmp610:
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp611:
# %bb.47:                               #   in Loop: Header=BB10_41 Depth=2
.Ltmp612:
	move	$s2, $a0
	ori	$a2, $zero, 30
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp613:
# %bb.48:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248.us
                                        #   in Loop: Header=BB10_41 Depth=2
.Ltmp614:
	move	$a0, $s2
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp615:
# %bb.49:                               #   in Loop: Header=BB10_41 Depth=2
.Ltmp616:
	move	$s2, $a0
	ori	$a2, $zero, 13
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp617:
# %bb.50:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit250.us
                                        #   in Loop: Header=BB10_41 Depth=2
.Ltmp618:
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp619:
# %bb.51:                               #   in Loop: Header=BB10_41 Depth=2
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_202
# %bb.52:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us
                                        #   in Loop: Header=BB10_41 Depth=2
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_54
# %bb.53:                               #   in Loop: Header=BB10_41 Depth=2
	ld.bu	$a0, $s2, 67
	b	.LBB10_56
.LBB10_54:                              #   in Loop: Header=BB10_41 Depth=2
.Ltmp620:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp621:
# %bb.55:                               # %.noexc430.us
                                        #   in Loop: Header=BB10_41 Depth=2
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp622:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp623:
.LBB10_56:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.us
                                        #   in Loop: Header=BB10_41 Depth=2
.Ltmp624:
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp625:
# %bb.57:                               # %.noexc432.us
                                        #   in Loop: Header=BB10_41 Depth=2
.Ltmp626:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp627:
.LBB10_58:                              # %_ZNSolsEPFRSoS_E.exit.us
                                        #   in Loop: Header=BB10_41 Depth=2
	ld.d	$a1, $fp, 16
	move	$s3, $s1
	beqz	$a1, .LBB10_61
	.p2align	4, , 16
.LBB10_59:                              # %.lr.ph.i.i.i255.us
                                        #   Parent Loop BB10_39 Depth=1
                                        #     Parent Loop BB10_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s3, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s8, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s0, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s3, $a1
	bnez	$a1, .LBB10_59
# %bb.60:                               # %._crit_edge.i.i.i261.us
                                        #   in Loop: Header=BB10_41 Depth=2
	bge	$s8, $a0, .LBB10_63
.LBB10_61:                              # %._crit_edge.thread.i.i.i271.us
                                        #   in Loop: Header=BB10_41 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s3, $a0, .LBB10_64
# %bb.62:                               #   in Loop: Header=BB10_41 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_63:                              #   in Loop: Header=BB10_41 Depth=2
	bge	$a0, $s8, .LBB10_40
.LBB10_64:                              # %select.unfold.i.i269.us
                                        #   in Loop: Header=BB10_41 Depth=2
	beq	$s3, $s1, .LBB10_66
# %bb.65:                               #   in Loop: Header=BB10_41 Depth=2
	ld.w	$a0, $s3, 32
	slt	$s2, $s8, $a0
	b	.LBB10_67
	.p2align	4, , 16
.LBB10_66:                              #   in Loop: Header=BB10_41 Depth=2
	ori	$s2, $zero, 1
.LBB10_67:                              # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.us
                                        #   in Loop: Header=BB10_41 Depth=2
.Ltmp628:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp629:
# %bb.68:                               # %.noexc275.us
                                        #   in Loop: Header=BB10_41 Depth=2
	st.w	$s8, $a1, 32
	move	$a0, $s2
	move	$a2, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_40
.LBB10_69:                              # %.loopexit456
	ld.w	$a0, $fp, 160
	ld.w	$a1, $fp, 184
	bne	$a0, $a1, .LBB10_102
# %bb.70:
	ld.w	$a0, $sp, 168
	ld.w	$a1, $sp, 172
	slt	$a2, $zero, $a0
	sub.w	$a3, $a0, $a2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bge	$a3, $a0, .LBB10_102
# %bb.71:                               # %.preheader452.lr.ph
	ld.w	$a0, $sp, 160
	ld.w	$a1, $sp, 164
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$s8, $a1, $a0
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	bge	$a2, $s8, .LBB10_102
# %bb.72:                               # %.preheader452.us.preheader
	addi.w	$s5, $zero, -1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slt	$a0, $s5, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s4, $zero, 24
	ori	$s7, $zero, 16
	b	.LBB10_74
	.p2align	4, , 16
.LBB10_73:                              # %._crit_edge.us548
                                        #   in Loop: Header=BB10_74 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bge	$a3, $a0, .LBB10_102
.LBB10_74:                              # %.preheader452.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_77 Depth 2
                                        #       Child Loop BB10_79 Depth 3
                                        #     Child Loop BB10_90 Depth 2
                                        #       Child Loop BB10_92 Depth 3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	slt	$a0, $a0, $a3
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB10_77
# %bb.75:                               # %.lr.ph.split.us547.preheader
                                        #   in Loop: Header=BB10_74 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB10_90
	.p2align	4, , 16
.LBB10_76:                              #   in Loop: Header=BB10_77 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_73
.LBB10_77:                              # %.lr.ph.split.us.us549
                                        #   Parent Loop BB10_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_79 Depth 3
.Ltmp631:
	move	$a0, $s5
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp632:
# %bb.78:                               # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit287.us.us
                                        #   in Loop: Header=BB10_77 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	move	$s6, $s1
	beqz	$a1, .LBB10_81
	.p2align	4, , 16
.LBB10_79:                              # %.lr.ph.i.i.i291.us.us
                                        #   Parent Loop BB10_74 Depth=1
                                        #     Parent Loop BB10_77 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s6, $a1
	bnez	$a1, .LBB10_79
# %bb.80:                               # %._crit_edge.i.i.i297.us.us
                                        #   in Loop: Header=BB10_77 Depth=2
	bge	$s3, $a0, .LBB10_83
.LBB10_81:                              # %._crit_edge.thread.i.i.i308.us.us
                                        #   in Loop: Header=BB10_77 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s6, $a0, .LBB10_84
# %bb.82:                               #   in Loop: Header=BB10_77 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_83:                              #   in Loop: Header=BB10_77 Depth=2
	bge	$a0, $s3, .LBB10_76
.LBB10_84:                              # %select.unfold.i.i305.us.us
                                        #   in Loop: Header=BB10_77 Depth=2
	beq	$s6, $s1, .LBB10_86
# %bb.85:                               #   in Loop: Header=BB10_77 Depth=2
	ld.w	$a0, $s6, 32
	slt	$s2, $s3, $a0
	b	.LBB10_87
	.p2align	4, , 16
.LBB10_86:                              #   in Loop: Header=BB10_77 Depth=2
	ori	$s2, $zero, 1
.LBB10_87:                              # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i307.us.us
                                        #   in Loop: Header=BB10_77 Depth=2
.Ltmp633:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp634:
# %bb.88:                               # %.noexc312.us.us
                                        #   in Loop: Header=BB10_77 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s6
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_76
	.p2align	4, , 16
.LBB10_89:                              #   in Loop: Header=BB10_90 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_73
.LBB10_90:                              # %.lr.ph.split.us547
                                        #   Parent Loop BB10_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_92 Depth 3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	or	$a0, $s0, $a0
	slt	$a0, $s5, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	slt	$a1, $a1, $s0
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.w	$a2, $s0, $a2
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s5, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s5, $a0
	or	$a0, $a1, $a0
.Ltmp636:
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp637:
# %bb.91:                               # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit287.us521
                                        #   in Loop: Header=BB10_90 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	move	$s6, $s1
	beqz	$a1, .LBB10_94
	.p2align	4, , 16
.LBB10_92:                              # %.lr.ph.i.i.i291.us524
                                        #   Parent Loop BB10_74 Depth=1
                                        #     Parent Loop BB10_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s6, $a1
	bnez	$a1, .LBB10_92
# %bb.93:                               # %._crit_edge.i.i.i297.us530
                                        #   in Loop: Header=BB10_90 Depth=2
	bge	$s3, $a0, .LBB10_96
.LBB10_94:                              # %._crit_edge.thread.i.i.i308.us534
                                        #   in Loop: Header=BB10_90 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s6, $a0, .LBB10_97
# %bb.95:                               #   in Loop: Header=BB10_90 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_96:                              #   in Loop: Header=BB10_90 Depth=2
	bge	$a0, $s3, .LBB10_89
.LBB10_97:                              # %select.unfold.i.i305.us539
                                        #   in Loop: Header=BB10_90 Depth=2
	beq	$s6, $s1, .LBB10_99
# %bb.98:                               #   in Loop: Header=BB10_90 Depth=2
	ld.w	$a0, $s6, 32
	slt	$s2, $s3, $a0
	b	.LBB10_100
	.p2align	4, , 16
.LBB10_99:                              #   in Loop: Header=BB10_90 Depth=2
	ori	$s2, $zero, 1
.LBB10_100:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i307.us541
                                        #   in Loop: Header=BB10_90 Depth=2
.Ltmp638:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp639:
# %bb.101:                              # %.noexc312.us542
                                        #   in Loop: Header=BB10_90 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s6
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_89
.LBB10_102:                             # %.loopexit453
	ld.w	$a0, $fp, 148
	ld.w	$a1, $fp, 172
	bne	$a0, $a1, .LBB10_135
# %bb.103:
	ld.w	$a0, $sp, 168
	ld.w	$a1, $sp, 172
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bge	$a2, $a0, .LBB10_135
# %bb.104:
	ld.w	$a0, $sp, 176
	ld.w	$a1, $sp, 180
	move	$a3, $a2
	slt	$a2, $zero, $a0
	sub.w	$a4, $a0, $a2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$s8, $a1, $a0
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	bge	$a4, $s8, .LBB10_135
# %bb.105:                              # %.preheader450.us.preheader
	move	$a2, $a3
	addi.w	$s5, $zero, -1
	ori	$s4, $zero, 24
	ori	$s7, $zero, 16
	b	.LBB10_107
	.p2align	4, , 16
.LBB10_106:                             # %._crit_edge.us587
                                        #   in Loop: Header=BB10_107 Depth=1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bge	$a2, $a0, .LBB10_135
.LBB10_107:                             # %.preheader450.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_113 Depth 2
                                        #       Child Loop BB10_115 Depth 3
                                        #     Child Loop BB10_126 Depth 2
                                        #       Child Loop BB10_128 Depth 3
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	blt	$a0, $a2, .LBB10_113
# %bb.108:                              # %.lr.ph.split.us586.preheader
                                        #   in Loop: Header=BB10_107 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB10_126
	.p2align	4, , 16
.LBB10_109:                             #   in Loop: Header=BB10_113 Depth=2
	ld.w	$a0, $s6, 32
	slt	$s2, $s3, $a0
.LBB10_110:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i345.us.us
                                        #   in Loop: Header=BB10_113 Depth=2
.Ltmp643:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp644:
# %bb.111:                              # %.noexc350.us.us
                                        #   in Loop: Header=BB10_113 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s6
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
.LBB10_112:                             #   in Loop: Header=BB10_113 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_106
.LBB10_113:                             # %.lr.ph.split.us.us588
                                        #   Parent Loop BB10_107 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_115 Depth 3
.Ltmp641:
	move	$a0, $s5
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp642:
# %bb.114:                              # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit325.us.us
                                        #   in Loop: Header=BB10_113 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 64
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	beqz	$a1, .LBB10_117
	.p2align	4, , 16
.LBB10_115:                             # %.lr.ph.i.i.i329.us.us
                                        #   Parent Loop BB10_107 Depth=1
                                        #     Parent Loop BB10_113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s6, $a1
	bnez	$a1, .LBB10_115
# %bb.116:                              # %._crit_edge.i.i.i335.us.us
                                        #   in Loop: Header=BB10_113 Depth=2
	bge	$s3, $a0, .LBB10_119
.LBB10_117:                             # %._crit_edge.thread.i.i.i346.us.us
                                        #   in Loop: Header=BB10_113 Depth=2
	ld.d	$a0, $fp, 72
	beq	$s6, $a0, .LBB10_120
# %bb.118:                              #   in Loop: Header=BB10_113 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_119:                             #   in Loop: Header=BB10_113 Depth=2
	bge	$a0, $s3, .LBB10_112
.LBB10_120:                             # %select.unfold.i.i343.us.us
                                        #   in Loop: Header=BB10_113 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bne	$s6, $a0, .LBB10_109
# %bb.121:                              #   in Loop: Header=BB10_113 Depth=2
	ori	$s2, $zero, 1
	b	.LBB10_110
	.p2align	4, , 16
.LBB10_122:                             #   in Loop: Header=BB10_126 Depth=2
	ld.w	$a0, $s6, 32
	slt	$s2, $s3, $a0
.LBB10_123:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i345.us582
                                        #   in Loop: Header=BB10_126 Depth=2
.Ltmp648:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp649:
# %bb.124:                              # %.noexc350.us583
                                        #   in Loop: Header=BB10_126 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s6
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
.LBB10_125:                             #   in Loop: Header=BB10_126 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_106
.LBB10_126:                             # %.lr.ph.split.us586
                                        #   Parent Loop BB10_107 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_128 Depth 3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	or	$a0, $a0, $s0
	slt	$a0, $s5, $a0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	slt	$a1, $a1, $s0
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a2, $s0, $a2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s5, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s5, $a0
	or	$a0, $a1, $a0
.Ltmp646:
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp647:
# %bb.127:                              # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit325.us562
                                        #   in Loop: Header=BB10_126 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 64
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	beqz	$a1, .LBB10_130
	.p2align	4, , 16
.LBB10_128:                             # %.lr.ph.i.i.i329.us565
                                        #   Parent Loop BB10_107 Depth=1
                                        #     Parent Loop BB10_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s6, $a1
	bnez	$a1, .LBB10_128
# %bb.129:                              # %._crit_edge.i.i.i335.us571
                                        #   in Loop: Header=BB10_126 Depth=2
	bge	$s3, $a0, .LBB10_132
.LBB10_130:                             # %._crit_edge.thread.i.i.i346.us575
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $fp, 72
	beq	$s6, $a0, .LBB10_133
# %bb.131:                              #   in Loop: Header=BB10_126 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_132:                             #   in Loop: Header=BB10_126 Depth=2
	bge	$a0, $s3, .LBB10_125
.LBB10_133:                             # %select.unfold.i.i343.us580
                                        #   in Loop: Header=BB10_126 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bne	$s6, $a0, .LBB10_122
# %bb.134:                              #   in Loop: Header=BB10_126 Depth=2
	ori	$s2, $zero, 1
	b	.LBB10_123
.LBB10_135:                             # %.loopexit451
	ld.w	$a0, $fp, 156
	ld.w	$a1, $fp, 180
	bne	$a0, $a1, .LBB10_168
# %bb.136:
	ld.w	$a0, $sp, 160
	ld.w	$a1, $sp, 164
	slt	$a2, $zero, $a0
	sub.w	$a3, $a0, $a2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bge	$a3, $a0, .LBB10_168
# %bb.137:
	ld.w	$a0, $sp, 176
	ld.w	$a1, $sp, 180
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$s8, $a1, $a0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bge	$a2, $s8, .LBB10_168
# %bb.138:                              # %.preheader448.us.preheader
	addi.w	$s4, $zero, -1
	ori	$s6, $zero, 24
	ori	$s7, $zero, 16
	b	.LBB10_140
	.p2align	4, , 16
.LBB10_139:                             # %._crit_edge.us626
                                        #   in Loop: Header=BB10_140 Depth=1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$a3, $a0, .LBB10_168
.LBB10_140:                             # %.preheader448.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_146 Depth 2
                                        #       Child Loop BB10_148 Depth 3
                                        #     Child Loop BB10_159 Depth 2
                                        #       Child Loop BB10_161 Depth 3
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	blt	$a0, $a3, .LBB10_146
# %bb.141:                              # %.lr.ph.split.us625.preheader
                                        #   in Loop: Header=BB10_140 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_159
	.p2align	4, , 16
.LBB10_142:                             #   in Loop: Header=BB10_146 Depth=2
	ori	$s2, $zero, 1
.LBB10_143:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i383.us.us
                                        #   in Loop: Header=BB10_146 Depth=2
.Ltmp653:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp654:
# %bb.144:                              # %.noexc388.us.us
                                        #   in Loop: Header=BB10_146 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s5
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
.LBB10_145:                             #   in Loop: Header=BB10_146 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_139
.LBB10_146:                             # %.lr.ph.split.us.us627
                                        #   Parent Loop BB10_140 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_148 Depth 3
.Ltmp651:
	move	$a0, $s4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp652:
# %bb.147:                              # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit363.us.us
                                        #   in Loop: Header=BB10_146 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	move	$s5, $s1
	beqz	$a1, .LBB10_150
	.p2align	4, , 16
.LBB10_148:                             # %.lr.ph.i.i.i367.us.us
                                        #   Parent Loop BB10_140 Depth=1
                                        #     Parent Loop BB10_146 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s5, $a1
	bnez	$a1, .LBB10_148
# %bb.149:                              # %._crit_edge.i.i.i373.us.us
                                        #   in Loop: Header=BB10_146 Depth=2
	bge	$s3, $a0, .LBB10_152
.LBB10_150:                             # %._crit_edge.thread.i.i.i384.us.us
                                        #   in Loop: Header=BB10_146 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s5, $a0, .LBB10_153
# %bb.151:                              #   in Loop: Header=BB10_146 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_152:                             #   in Loop: Header=BB10_146 Depth=2
	bge	$a0, $s3, .LBB10_145
.LBB10_153:                             # %select.unfold.i.i381.us.us
                                        #   in Loop: Header=BB10_146 Depth=2
	beq	$s5, $s1, .LBB10_142
# %bb.154:                              #   in Loop: Header=BB10_146 Depth=2
	ld.w	$a0, $s5, 32
	slt	$s2, $s3, $a0
	b	.LBB10_143
	.p2align	4, , 16
.LBB10_155:                             #   in Loop: Header=BB10_159 Depth=2
	ori	$s2, $zero, 1
.LBB10_156:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i383.us621
                                        #   in Loop: Header=BB10_159 Depth=2
.Ltmp658:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp659:
# %bb.157:                              # %.noexc388.us622
                                        #   in Loop: Header=BB10_159 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s5
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
.LBB10_158:                             #   in Loop: Header=BB10_159 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_139
.LBB10_159:                             # %.lr.ph.split.us625
                                        #   Parent Loop BB10_140 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_161 Depth 3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	or	$a0, $a0, $s0
	slt	$a0, $s4, $a0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	slt	$a1, $a1, $s0
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a2, $s0, $a2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s4, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s4, $a0
	or	$a0, $a1, $a0
.Ltmp656:
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp657:
# %bb.160:                              # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit363.us601
                                        #   in Loop: Header=BB10_159 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	move	$s5, $s1
	beqz	$a1, .LBB10_163
	.p2align	4, , 16
.LBB10_161:                             # %.lr.ph.i.i.i367.us604
                                        #   Parent Loop BB10_140 Depth=1
                                        #     Parent Loop BB10_159 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s5, $a1
	bnez	$a1, .LBB10_161
# %bb.162:                              # %._crit_edge.i.i.i373.us610
                                        #   in Loop: Header=BB10_159 Depth=2
	bge	$s3, $a0, .LBB10_165
.LBB10_163:                             # %._crit_edge.thread.i.i.i384.us614
                                        #   in Loop: Header=BB10_159 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s5, $a0, .LBB10_166
# %bb.164:                              #   in Loop: Header=BB10_159 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_165:                             #   in Loop: Header=BB10_159 Depth=2
	bge	$a0, $s3, .LBB10_158
.LBB10_166:                             # %select.unfold.i.i381.us619
                                        #   in Loop: Header=BB10_159 Depth=2
	beq	$s5, $s1, .LBB10_155
# %bb.167:                              #   in Loop: Header=BB10_159 Depth=2
	ld.w	$a0, $s5, 32
	slt	$s2, $s3, $a0
	b	.LBB10_156
.LBB10_168:                             # %.loopexit449
	ld.w	$a0, $fp, 164
	ld.w	$a1, $fp, 188
	bne	$a0, $a1, .LBB10_201
# %bb.169:
	ld.w	$a0, $sp, 160
	ld.w	$a1, $sp, 164
	slt	$a2, $zero, $a0
	sub.w	$a3, $a0, $a2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bge	$a3, $a0, .LBB10_201
# %bb.170:                              # %.preheader.lr.ph
	ld.w	$a0, $sp, 168
	ld.w	$a1, $sp, 172
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$s8, $a1, $a0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bge	$a2, $s8, .LBB10_201
# %bb.171:                              # %.preheader.us.preheader
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s3, $zero, -1
	ori	$s7, $zero, 24
	ori	$s6, $zero, 16
	b	.LBB10_173
	.p2align	4, , 16
.LBB10_172:                             # %._crit_edge.us665
                                        #   in Loop: Header=BB10_173 Depth=1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$a3, $a0, .LBB10_201
.LBB10_173:                             # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_176 Depth 2
                                        #       Child Loop BB10_178 Depth 3
                                        #     Child Loop BB10_189 Depth 2
                                        #       Child Loop BB10_191 Depth 3
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	blt	$a0, $a3, .LBB10_176
# %bb.174:                              # %.lr.ph.split.us664.preheader
                                        #   in Loop: Header=BB10_173 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_189
	.p2align	4, , 16
.LBB10_175:                             #   in Loop: Header=BB10_176 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_172
.LBB10_176:                             # %.lr.ph.split.us.us666
                                        #   Parent Loop BB10_173 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_178 Depth 3
.Ltmp661:
	move	$a0, $s3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp662:
# %bb.177:                              # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit401.us.us
                                        #   in Loop: Header=BB10_176 Depth=2
	move	$s4, $a0
	ld.d	$a1, $fp, 16
	move	$s5, $s1
	beqz	$a1, .LBB10_180
	.p2align	4, , 16
.LBB10_178:                             # %.lr.ph.i.i.i405.us.us
                                        #   Parent Loop BB10_173 Depth=1
                                        #     Parent Loop BB10_176 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s4, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s5, $a1
	bnez	$a1, .LBB10_178
# %bb.179:                              # %._crit_edge.i.i.i411.us.us
                                        #   in Loop: Header=BB10_176 Depth=2
	bge	$s4, $a0, .LBB10_182
.LBB10_180:                             # %._crit_edge.thread.i.i.i422.us.us
                                        #   in Loop: Header=BB10_176 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s5, $a0, .LBB10_183
# %bb.181:                              #   in Loop: Header=BB10_176 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_182:                             #   in Loop: Header=BB10_176 Depth=2
	bge	$a0, $s4, .LBB10_175
.LBB10_183:                             # %select.unfold.i.i419.us.us
                                        #   in Loop: Header=BB10_176 Depth=2
	beq	$s5, $s1, .LBB10_185
# %bb.184:                              #   in Loop: Header=BB10_176 Depth=2
	ld.w	$a0, $s5, 32
	slt	$s2, $s4, $a0
	b	.LBB10_186
	.p2align	4, , 16
.LBB10_185:                             #   in Loop: Header=BB10_176 Depth=2
	ori	$s2, $zero, 1
.LBB10_186:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i421.us.us
                                        #   in Loop: Header=BB10_176 Depth=2
.Ltmp663:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp664:
# %bb.187:                              # %.noexc426.us.us
                                        #   in Loop: Header=BB10_176 Depth=2
	st.w	$s4, $a1, 32
	move	$a0, $s2
	move	$a2, $s5
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_175
	.p2align	4, , 16
.LBB10_188:                             #   in Loop: Header=BB10_189 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_172
.LBB10_189:                             # %.lr.ph.split.us664
                                        #   Parent Loop BB10_173 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_191 Depth 3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	or	$a0, $a0, $s0
	slt	$a0, $s3, $a0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	slt	$a1, $a1, $s0
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $s0, $a2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s3, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s3, $a0
	or	$a0, $a1, $a0
.Ltmp666:
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp667:
# %bb.190:                              # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit401.us640
                                        #   in Loop: Header=BB10_189 Depth=2
	move	$s4, $a0
	ld.d	$a1, $fp, 16
	move	$s5, $s1
	beqz	$a1, .LBB10_193
	.p2align	4, , 16
.LBB10_191:                             # %.lr.ph.i.i.i405.us643
                                        #   Parent Loop BB10_173 Depth=1
                                        #     Parent Loop BB10_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s4, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s5, $a1
	bnez	$a1, .LBB10_191
# %bb.192:                              # %._crit_edge.i.i.i411.us649
                                        #   in Loop: Header=BB10_189 Depth=2
	bge	$s4, $a0, .LBB10_195
.LBB10_193:                             # %._crit_edge.thread.i.i.i422.us653
                                        #   in Loop: Header=BB10_189 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s5, $a0, .LBB10_196
# %bb.194:                              #   in Loop: Header=BB10_189 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_195:                             #   in Loop: Header=BB10_189 Depth=2
	bge	$a0, $s4, .LBB10_188
.LBB10_196:                             # %select.unfold.i.i419.us658
                                        #   in Loop: Header=BB10_189 Depth=2
	beq	$s5, $s1, .LBB10_198
# %bb.197:                              #   in Loop: Header=BB10_189 Depth=2
	ld.w	$a0, $s5, 32
	slt	$s2, $s4, $a0
	b	.LBB10_199
	.p2align	4, , 16
.LBB10_198:                             #   in Loop: Header=BB10_189 Depth=2
	ori	$s2, $zero, 1
.LBB10_199:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i421.us660
                                        #   in Loop: Header=BB10_189 Depth=2
.Ltmp668:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp669:
# %bb.200:                              # %.noexc426.us661
                                        #   in Loop: Header=BB10_189 Depth=2
	st.w	$s4, $a1, 32
	move	$a0, $s2
	move	$a2, $s5
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_188
.LBB10_201:                             # %.loopexit
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
.LBB10_202:                             # %.split511.us
.Ltmp671:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp672:
# %bb.203:                              # %.noexc429
.LBB10_204:
.Ltmp591:
	b	.LBB10_217
.LBB10_205:                             # %.loopexit.split-lp
.Ltmp673:
	b	.LBB10_217
.LBB10_206:                             # %.split633.split.us
.Ltmp670:
	b	.LBB10_217
.LBB10_207:                             # %.split633.us.split.us
.Ltmp665:
	b	.LBB10_217
.LBB10_208:                             # %.split514.split.us
.Ltmp640:
	b	.LBB10_217
.LBB10_209:                             # %.split514.us.split.us
.Ltmp635:
	b	.LBB10_217
.LBB10_210:                             # %.split.split.us
.Ltmp601:
	b	.LBB10_217
.LBB10_211:                             # %.split.us.split.us
.Ltmp596:
	b	.LBB10_217
.LBB10_212:                             # %.split594.split.us
.Ltmp660:
	b	.LBB10_217
.LBB10_213:                             # %.split594.us.split.us
.Ltmp655:
	b	.LBB10_217
.LBB10_214:                             # %.split555.split.us
.Ltmp650:
	b	.LBB10_217
.LBB10_215:                             # %.split555.us.split.us
.Ltmp645:
	b	.LBB10_217
.LBB10_216:                             # %.loopexit455.split.us
.Ltmp630:
.LBB10_217:
	move	$s1, $a0
	addi.d	$s2, $fp, 48
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt3setIiSt4lessIiESaIiEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3setIiSt4lessIiESaIiEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_, .Lfunc_end10-_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,"aG",@progbits,_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp589-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp590-.Ltmp589              #   Call between .Ltmp589 and .Ltmp590
	.uleb128 .Ltmp591-.Lfunc_begin6         #     jumps to .Ltmp591
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp592-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp593-.Ltmp592              #   Call between .Ltmp592 and .Ltmp593
	.uleb128 .Ltmp596-.Lfunc_begin6         #     jumps to .Ltmp596
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp593-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp594-.Ltmp593              #   Call between .Ltmp593 and .Ltmp594
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp594-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp595-.Ltmp594              #   Call between .Ltmp594 and .Ltmp595
	.uleb128 .Ltmp596-.Lfunc_begin6         #     jumps to .Ltmp596
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp595-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp597-.Ltmp595              #   Call between .Ltmp595 and .Ltmp597
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp597-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp598-.Ltmp597              #   Call between .Ltmp597 and .Ltmp598
	.uleb128 .Ltmp601-.Lfunc_begin6         #     jumps to .Ltmp601
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp598-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp599-.Ltmp598              #   Call between .Ltmp598 and .Ltmp599
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp599-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp600-.Ltmp599              #   Call between .Ltmp599 and .Ltmp600
	.uleb128 .Ltmp601-.Lfunc_begin6         #     jumps to .Ltmp601
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp600-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp602-.Ltmp600              #   Call between .Ltmp600 and .Ltmp602
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp602-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp627-.Ltmp602              #   Call between .Ltmp602 and .Ltmp627
	.uleb128 .Ltmp630-.Lfunc_begin6         #     jumps to .Ltmp630
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp627-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp628-.Ltmp627              #   Call between .Ltmp627 and .Ltmp628
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp628-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp629-.Ltmp628              #   Call between .Ltmp628 and .Ltmp629
	.uleb128 .Ltmp630-.Lfunc_begin6         #     jumps to .Ltmp630
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp629-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp631-.Ltmp629              #   Call between .Ltmp629 and .Ltmp631
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp631-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp632-.Ltmp631              #   Call between .Ltmp631 and .Ltmp632
	.uleb128 .Ltmp635-.Lfunc_begin6         #     jumps to .Ltmp635
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp632-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp633-.Ltmp632              #   Call between .Ltmp632 and .Ltmp633
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp634-.Ltmp633              #   Call between .Ltmp633 and .Ltmp634
	.uleb128 .Ltmp635-.Lfunc_begin6         #     jumps to .Ltmp635
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp634-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp636-.Ltmp634              #   Call between .Ltmp634 and .Ltmp636
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp637-.Ltmp636              #   Call between .Ltmp636 and .Ltmp637
	.uleb128 .Ltmp640-.Lfunc_begin6         #     jumps to .Ltmp640
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp637-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp638-.Ltmp637              #   Call between .Ltmp637 and .Ltmp638
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp638-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp639-.Ltmp638              #   Call between .Ltmp638 and .Ltmp639
	.uleb128 .Ltmp640-.Lfunc_begin6         #     jumps to .Ltmp640
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp639-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp643-.Ltmp639              #   Call between .Ltmp639 and .Ltmp643
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp643-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp644-.Ltmp643              #   Call between .Ltmp643 and .Ltmp644
	.uleb128 .Ltmp645-.Lfunc_begin6         #     jumps to .Ltmp645
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp644-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp641-.Ltmp644              #   Call between .Ltmp644 and .Ltmp641
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp641-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp642-.Ltmp641              #   Call between .Ltmp641 and .Ltmp642
	.uleb128 .Ltmp645-.Lfunc_begin6         #     jumps to .Ltmp645
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp642-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp648-.Ltmp642              #   Call between .Ltmp642 and .Ltmp648
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp648-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp649-.Ltmp648              #   Call between .Ltmp648 and .Ltmp649
	.uleb128 .Ltmp650-.Lfunc_begin6         #     jumps to .Ltmp650
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp649-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp646-.Ltmp649              #   Call between .Ltmp649 and .Ltmp646
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp646-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp647-.Ltmp646              #   Call between .Ltmp646 and .Ltmp647
	.uleb128 .Ltmp650-.Lfunc_begin6         #     jumps to .Ltmp650
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp647-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp653-.Ltmp647              #   Call between .Ltmp647 and .Ltmp653
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp653-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp654-.Ltmp653              #   Call between .Ltmp653 and .Ltmp654
	.uleb128 .Ltmp655-.Lfunc_begin6         #     jumps to .Ltmp655
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp654-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp651-.Ltmp654              #   Call between .Ltmp654 and .Ltmp651
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp651-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp652-.Ltmp651              #   Call between .Ltmp651 and .Ltmp652
	.uleb128 .Ltmp655-.Lfunc_begin6         #     jumps to .Ltmp655
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp652-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp658-.Ltmp652              #   Call between .Ltmp652 and .Ltmp658
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp658-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp659-.Ltmp658              #   Call between .Ltmp658 and .Ltmp659
	.uleb128 .Ltmp660-.Lfunc_begin6         #     jumps to .Ltmp660
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp659-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp656-.Ltmp659              #   Call between .Ltmp659 and .Ltmp656
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp656-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Ltmp657-.Ltmp656              #   Call between .Ltmp656 and .Ltmp657
	.uleb128 .Ltmp660-.Lfunc_begin6         #     jumps to .Ltmp660
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp657-.Lfunc_begin6         # >> Call Site 37 <<
	.uleb128 .Ltmp661-.Ltmp657              #   Call between .Ltmp657 and .Ltmp661
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp661-.Lfunc_begin6         # >> Call Site 38 <<
	.uleb128 .Ltmp662-.Ltmp661              #   Call between .Ltmp661 and .Ltmp662
	.uleb128 .Ltmp665-.Lfunc_begin6         #     jumps to .Ltmp665
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp662-.Lfunc_begin6         # >> Call Site 39 <<
	.uleb128 .Ltmp663-.Ltmp662              #   Call between .Ltmp662 and .Ltmp663
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp663-.Lfunc_begin6         # >> Call Site 40 <<
	.uleb128 .Ltmp664-.Ltmp663              #   Call between .Ltmp663 and .Ltmp664
	.uleb128 .Ltmp665-.Lfunc_begin6         #     jumps to .Ltmp665
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp664-.Lfunc_begin6         # >> Call Site 41 <<
	.uleb128 .Ltmp666-.Ltmp664              #   Call between .Ltmp664 and .Ltmp666
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp666-.Lfunc_begin6         # >> Call Site 42 <<
	.uleb128 .Ltmp667-.Ltmp666              #   Call between .Ltmp666 and .Ltmp667
	.uleb128 .Ltmp670-.Lfunc_begin6         #     jumps to .Ltmp670
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp667-.Lfunc_begin6         # >> Call Site 43 <<
	.uleb128 .Ltmp668-.Ltmp667              #   Call between .Ltmp667 and .Ltmp668
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp668-.Lfunc_begin6         # >> Call Site 44 <<
	.uleb128 .Ltmp669-.Ltmp668              #   Call between .Ltmp668 and .Ltmp669
	.uleb128 .Ltmp670-.Lfunc_begin6         #     jumps to .Ltmp670
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp669-.Lfunc_begin6         # >> Call Site 45 <<
	.uleb128 .Ltmp671-.Ltmp669              #   Call between .Ltmp669 and .Ltmp671
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp671-.Lfunc_begin6         # >> Call Site 46 <<
	.uleb128 .Ltmp672-.Ltmp671              #   Call between .Ltmp671 and .Ltmp672
	.uleb128 .Ltmp673-.Lfunc_begin6         #     jumps to .Ltmp673
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp672-.Lfunc_begin6         # >> Call Site 47 <<
	.uleb128 .Lfunc_end10-.Ltmp672          #   Call between .Ltmp672 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_
.LCPI11_0:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
.LCPI11_1:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.section	.text._ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,"axG",@progbits,_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,comdat
	.weak	_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_
	.p2align	5
	.type	_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,@function
_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_: # @_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -1072
	.cfi_def_cfa_offset 1072
	st.d	$ra, $sp, 1064                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1016                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1008                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1000                  # 8-byte Folded Spill
	st.d	$s7, $sp, 992                   # 8-byte Folded Spill
	st.d	$s8, $sp, 984                   # 8-byte Folded Spill
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
	ld.w	$s8, $a0, 148
	ld.w	$a6, $a0, 156
	ld.w	$a7, $a0, 164
	ld.w	$t0, $a0, 168
	ld.w	$a5, $a0, 172
	ld.w	$t1, $a0, 176
	ld.w	$a1, $a0, 180
	ld.w	$t2, $a0, 184
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a2, $a0, 188
	slt	$a3, $t0, $a5
	xor	$a4, $a5, $s8
	sltui	$a4, $a4, 1
	and	$a3, $a3, $a4
	add.w	$a4, $a5, $a3
	slt	$a0, $t1, $a1
	st.d	$a6, $sp, 200                   # 8-byte Folded Spill
	xor	$a3, $a1, $a6
	sltui	$a3, $a3, 1
	and	$a0, $a0, $a3
	add.w	$a3, $a1, $a0
	slt	$a0, $t2, $a2
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	xor	$a1, $a2, $a7
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	add.w	$a2, $a2, $a0
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	st.d	$a4, $sp, 344                   # 8-byte Folded Spill
	sub.d	$a0, $a4, $t0
	st.d	$t1, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	sub.d	$a1, $a3, $t1
	move	$s4, $t2
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $t2
	mul.d	$a0, $a1, $a0
	mul.w	$s0, $a0, $a2
.Ltmp674:
	ori	$a2, $zero, 27
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj)
	jirl	$ra, $ra, 0
.Ltmp675:
# %bb.1:
	addi.w	$s3, $zero, -1
	bge	$s3, $s0, .LBB11_41
# %bb.2:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	beqz	$s0, .LBB11_6
# %bb.3:
	slli.d	$s2, $s0, 2
.Ltmp700:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp701:
# %bb.4:                                # %.noexc98
	st.d	$a0, $sp, 576
	alsl.d	$fp, $s0, $a0, 2
	st.d	$fp, $sp, 592
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $a0, 4
	bne	$s0, $a1, .LBB11_7
# %bb.5:
	move	$fp, $a0
	b	.LBB11_8
.LBB11_6:                               # %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
	move	$fp, $zero
	st.d	$zero, $sp, 592
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 576
	b	.LBB11_8
.LBB11_7:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB11_8:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i99
	st.d	$fp, $sp, 584
	addi.w	$fp, $s0, 1
	st.d	$zero, $sp, 560
	slli.d	$s2, $fp, 2
.Ltmp702:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp703:
# %bb.9:                                # %.noexc105
	move	$s7, $a0
	st.d	$a0, $sp, 552
	alsl.d	$fp, $fp, $a0, 2
	st.d	$fp, $sp, 568
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	beqz	$s0, .LBB11_12
# %bb.10:
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 560
	alsl.w	$fp, $s0, $s0, 1
	slli.d	$s2, $fp, 2
.Ltmp705:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp706:
# %bb.11:                               # %.noexc113
	st.d	$a0, $sp, 528
	alsl.d	$fp, $fp, $a0, 2
	st.d	$fp, $sp, 544
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB11_13
.LBB11_12:                              # %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i111
	move	$fp, $zero
	st.d	$a0, $sp, 560
	st.d	$zero, $sp, 544
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 528
.LBB11_13:
	addi.w	$a1, $s8, 1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a3, $a0, 1
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	mul.d	$a0, $a2, $a1
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	mul.w	$a0, $a0, $a3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 536
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$s4, $a0, .LBB11_23
# %bb.14:                               # %.preheader177.lr.ph
	move	$s6, $zero
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB11_38
# %bb.15:                               # %.preheader177.lr.ph
	move	$a5, $s4
	move	$s4, $s6
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB11_24
# %bb.16:                               # %.preheader177.us.us.preheader
	move	$s4, $zero
	move	$s6, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 96
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	vreplgr2vr.w	$vr0, $a3
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vreplgr2vr.w	$vr0, $a2
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	mul.d	$a0, $a5, $a3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	mul.d	$s2, $a0, $a2
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI11_0)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	mul.d	$a0, $a3, $a2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 512                  # 16-byte Folded Spill
	vrepli.w	$vr0, 1
	vst	$vr0, $sp, 304                  # 16-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	.p2align	4, , 16
.LBB11_17:                              # %.preheader177.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_18 Depth 2
                                        #       Child Loop BB11_19 Depth 3
	vreplgr2vr.w	$vr0, $a5
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vmul.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 256                  # 16-byte Folded Spill
	vsle.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slt	$a0, $a0, $a5
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_18:                              # %.preheader176.us.us.us
                                        #   Parent Loop BB11_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_19 Depth 3
	or	$a0, $s5, $a5
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	slt	$a0, $a3, $s5
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	and	$fp, $a0, $a1
	addi.w	$a1, $s5, -1
	slt	$a2, $a3, $a1
	xori	$a2, $a2, 1
	addi.w	$a4, $s5, 1
	slt	$a3, $s5, $a3
	vreplgr2vr.w	$vr0, $a2
	vreplgr2vr.w	$vr1, $a1
	vreplgr2vr.w	$vr2, $a0
	vreplgr2vr.w	$vr3, $s5
	vreplgr2vr.w	$vr4, $a3
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr5, $a4
	vld	$vr9, $sp, 224                  # 16-byte Folded Reload
	vand.v	$vr2, $vr2, $vr9
	vld	$vr6, $sp, 512                  # 16-byte Folded Reload
	vxor.v	$vr2, $vr2, $vr6
	vinsgr2vr.w	$vr2, $zero, 3
	vand.v	$vr0, $vr0, $vr9
	vxor.v	$vr0, $vr0, $vr6
	vinsgr2vr.w	$vr0, $zero, 3
	vld	$vr7, $sp, 256                  # 16-byte Folded Reload
	vor.v	$vr6, $vr1, $vr7
	vst	$vr6, $sp, 480                  # 16-byte Folded Spill
	vld	$vr8, $sp, 240                  # 16-byte Folded Reload
	vadd.w	$vr1, $vr1, $vr8
	vld	$vr6, $sp, 160                  # 16-byte Folded Reload
	vmul.w	$vr1, $vr1, $vr6
	vst	$vr1, $sp, 464                  # 16-byte Folded Spill
	vor.v	$vr1, $vr3, $vr7
	vst	$vr1, $sp, 448                  # 16-byte Folded Spill
	vadd.w	$vr1, $vr3, $vr8
	vmul.w	$vr1, $vr1, $vr6
	vst	$vr1, $sp, 432                  # 16-byte Folded Spill
	vor.v	$vr1, $vr5, $vr7
	vst	$vr1, $sp, 416                  # 16-byte Folded Spill
	vadd.w	$vr1, $vr5, $vr8
	vmul.w	$vr1, $vr1, $vr6
	vst	$vr1, $sp, 400                  # 16-byte Folded Spill
	vand.v	$vr1, $vr4, $vr9
	alsl.w	$s0, $s6, $s6, 1
	vslli.w	$vr0, $vr0, 31
	vsrai.w	$vr0, $vr0, 31
	vst	$vr0, $sp, 384                  # 16-byte Folded Spill
	vslli.w	$vr0, $vr2, 31
	vsrai.w	$vr0, $vr0, 31
	vst	$vr0, $sp, 368                  # 16-byte Folded Spill
	vslli.w	$vr0, $vr1, 31
	vsrai.w	$vr0, $vr0, 31
	vst	$vr0, $sp, 352                  # 16-byte Folded Spill
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_19:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit.us.us.us
                                        #   Parent Loop BB11_17 Depth=1
                                        #     Parent Loop BB11_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s7, $a5
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	or	$a0, $a0, $s1
	slt	$a0, $s3, $a0
	slt	$a1, $s8, $s1
	xori	$a1, $a1, 1
	and	$a1, $a1, $fp
	andi	$a1, $a1, 1
	add.w	$a2, $s2, $s1
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s3, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s3, $a0
	or	$a0, $a1, $a0
.Ltmp708:
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp709:
# %bb.20:                               # %_ZNK6miniFE23simple_mesh_descriptionIiE13map_id_to_rowERKi.exit.us.us.us
                                        #   in Loop: Header=BB11_19 Depth=3
	ld.d	$a1, $sp, 576
	slli.d	$a2, $s6, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	stx.w	$a0, $a1, $a2
	ld.d	$a0, $sp, 528
	bstrpick.d	$a1, $s0, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$s1, $a0, $a1
	addi.d	$a1, $s0, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$s5, $a0, $a1
	addi.d	$a1, $s0, 2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	move	$a5, $s7
	stx.w	$s7, $a0, $a1
	ld.d	$s7, $sp, 552
	slt	$a0, $s8, $s1
	xori	$a1, $a0, 1
	stx.w	$s4, $s7, $a2
	slt	$a2, $s1, $s8
	addi.w	$a3, $s1, -1
	slt	$a0, $s8, $a3
	xori	$a4, $a0, 1
	addi.w	$a0, $s1, 1
	vreplgr2vr.w	$vr3, $a3
	vreplgr2vr.w	$vr5, $a4
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr1, $a2
	vreplgr2vr.w	$vr2, $s1
	pcalau12i	$a2, %pc_hi20(.LCPI11_1)
	vld	$vr6, $a2, %pc_lo12(.LCPI11_1)
	vreplgr2vr.w	$vr4, $a1
	vinsgr2vr.w	$vr7, $s4, 0
	vinsgr2vr.w	$vr8, $zero, 0
	vshuf.w	$vr6, $vr8, $vr7
	vld	$vr14, $sp, 480                 # 16-byte Folded Reload
	vor.v	$vr7, $vr14, $vr3
	vld	$vr11, $sp, 512                 # 16-byte Folded Reload
	vslt.w	$vr7, $vr11, $vr7
	vand.v	$vr7, $vr7, $vr5
	vslli.w	$vr7, $vr7, 31
	vsrai.w	$vr7, $vr7, 31
	vld	$vr15, $sp, 464                 # 16-byte Folded Reload
	vadd.w	$vr8, $vr3, $vr15
	vbitsel.v	$vr7, $vr11, $vr8, $vr7
	vslt.w	$vr8, $vr11, $vr7
	vld	$vr10, $sp, 320                 # 16-byte Folded Reload
	vslt.w	$vr7, $vr7, $vr10
	vld	$vr12, $sp, 304                 # 16-byte Folded Reload
	vand.v	$vr7, $vr7, $vr12
	vld	$vr13, $sp, 288                 # 16-byte Folded Reload
	vbitsel.v	$vr7, $vr13, $vr7, $vr8
	vadd.w	$vr7, $vr6, $vr7
	vor.v	$vr8, $vr14, $vr2
	vslt.w	$vr8, $vr11, $vr8
	vand.v	$vr8, $vr8, $vr4
	vslli.w	$vr8, $vr8, 31
	vsrai.w	$vr8, $vr8, 31
	vadd.w	$vr9, $vr2, $vr15
	vbitsel.v	$vr8, $vr11, $vr9, $vr8
	vslt.w	$vr9, $vr11, $vr8
	vslt.w	$vr8, $vr8, $vr10
	vand.v	$vr8, $vr8, $vr12
	vbitsel.v	$vr8, $vr13, $vr8, $vr9
	vadd.w	$vr7, $vr7, $vr8
	vor.v	$vr8, $vr14, $vr0
	vslt.w	$vr8, $vr11, $vr8
	vand.v	$vr8, $vr8, $vr1
	vslli.w	$vr8, $vr8, 31
	vsrai.w	$vr8, $vr8, 31
	vadd.w	$vr9, $vr0, $vr15
	vbitsel.v	$vr8, $vr11, $vr9, $vr8
	vslt.w	$vr9, $vr11, $vr8
	vslt.w	$vr8, $vr8, $vr10
	vand.v	$vr8, $vr8, $vr12
	vbitsel.v	$vr8, $vr13, $vr8, $vr9
	vadd.w	$vr7, $vr7, $vr8
	vld	$vr8, $sp, 384                  # 16-byte Folded Reload
	vbitsel.v	$vr6, $vr7, $vr6, $vr8
	vld	$vr14, $sp, 448                 # 16-byte Folded Reload
	vor.v	$vr7, $vr14, $vr3
	vslt.w	$vr7, $vr11, $vr7
	vand.v	$vr7, $vr7, $vr5
	vslli.w	$vr7, $vr7, 31
	vsrai.w	$vr7, $vr7, 31
	vld	$vr15, $sp, 432                 # 16-byte Folded Reload
	vadd.w	$vr8, $vr3, $vr15
	vbitsel.v	$vr7, $vr11, $vr8, $vr7
	vslt.w	$vr8, $vr11, $vr7
	vslt.w	$vr7, $vr7, $vr10
	vand.v	$vr7, $vr7, $vr12
	vbitsel.v	$vr7, $vr13, $vr7, $vr8
	vadd.w	$vr7, $vr6, $vr7
	vor.v	$vr8, $vr14, $vr2
	vslt.w	$vr8, $vr11, $vr8
	vand.v	$vr8, $vr8, $vr4
	vslli.w	$vr8, $vr8, 31
	vsrai.w	$vr8, $vr8, 31
	vadd.w	$vr9, $vr2, $vr15
	vbitsel.v	$vr8, $vr11, $vr9, $vr8
	vslt.w	$vr9, $vr11, $vr8
	vslt.w	$vr8, $vr8, $vr10
	vand.v	$vr8, $vr8, $vr12
	vbitsel.v	$vr8, $vr13, $vr8, $vr9
	vadd.w	$vr7, $vr7, $vr8
	vor.v	$vr8, $vr14, $vr0
	vslt.w	$vr8, $vr11, $vr8
	vand.v	$vr8, $vr8, $vr1
	vslli.w	$vr8, $vr8, 31
	vsrai.w	$vr8, $vr8, 31
	vadd.w	$vr9, $vr0, $vr15
	vbitsel.v	$vr8, $vr11, $vr9, $vr8
	vslt.w	$vr9, $vr11, $vr8
	vslt.w	$vr8, $vr8, $vr10
	vand.v	$vr8, $vr8, $vr12
	vbitsel.v	$vr8, $vr13, $vr8, $vr9
	vadd.w	$vr7, $vr7, $vr8
	vld	$vr8, $sp, 368                  # 16-byte Folded Reload
	vbitsel.v	$vr6, $vr7, $vr6, $vr8
	vld	$vr8, $sp, 416                  # 16-byte Folded Reload
	vor.v	$vr7, $vr8, $vr3
	vslt.w	$vr7, $vr11, $vr7
	vand.v	$vr5, $vr7, $vr5
	vslli.w	$vr5, $vr5, 31
	vsrai.w	$vr5, $vr5, 31
	vld	$vr7, $sp, 400                  # 16-byte Folded Reload
	vadd.w	$vr3, $vr3, $vr7
	vbitsel.v	$vr3, $vr11, $vr3, $vr5
	vslt.w	$vr5, $vr11, $vr3
	vslt.w	$vr3, $vr3, $vr10
	vand.v	$vr3, $vr3, $vr12
	vbitsel.v	$vr3, $vr13, $vr3, $vr5
	vadd.w	$vr3, $vr6, $vr3
	vor.v	$vr5, $vr8, $vr2
	vslt.w	$vr5, $vr11, $vr5
	vand.v	$vr4, $vr5, $vr4
	vslli.w	$vr4, $vr4, 31
	vsrai.w	$vr4, $vr4, 31
	vadd.w	$vr2, $vr2, $vr7
	vbitsel.v	$vr2, $vr11, $vr2, $vr4
	vslt.w	$vr4, $vr11, $vr2
	vslt.w	$vr2, $vr2, $vr10
	vand.v	$vr2, $vr2, $vr12
	vbitsel.v	$vr2, $vr13, $vr2, $vr4
	vadd.w	$vr2, $vr3, $vr2
	vor.v	$vr3, $vr8, $vr0
	vslt.w	$vr3, $vr11, $vr3
	vand.v	$vr1, $vr3, $vr1
	vslli.w	$vr1, $vr1, 31
	vsrai.w	$vr1, $vr1, 31
	vadd.w	$vr0, $vr0, $vr7
	vbitsel.v	$vr0, $vr11, $vr0, $vr1
	vslt.w	$vr1, $vr11, $vr0
	vslt.w	$vr0, $vr0, $vr10
	vand.v	$vr0, $vr0, $vr12
	vbitsel.v	$vr0, $vr13, $vr0, $vr1
	vadd.w	$vr0, $vr2, $vr0
	vld	$vr1, $sp, 352                  # 16-byte Folded Reload
	vbitsel.v	$vr0, $vr6, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 2
	vadd.w	$vr1, $vr0, $vr1
	vreplvei.w	$vr0, $vr0, 1
	vadd.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$s4, $vr0, 0
	addi.w	$s6, $s6, 1
	addi.w	$s0, $s0, 3
	move	$s1, $a0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB11_19
# %bb.21:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB11_18 Depth=2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.d	$s2, $s2, $a0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	move	$s5, $a1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB11_18
# %bb.22:                               # %._crit_edge198.split.us.us.us
                                        #   in Loop: Header=BB11_17 Depth=1
	addi.w	$a5, $a5, 1
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$s2, $s2, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$a5, $a0, .LBB11_17
	b	.LBB11_24
.LBB11_23:
	move	$s6, $zero
	move	$s4, $zero
.LBB11_24:                              # %._crit_edge
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bne	$s6, $a0, .LBB11_39
.LBB11_25:
	slli.d	$a0, $a0, 2
	stx.w	$s4, $s7, $a0
.Ltmp716:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 576
	addi.d	$a2, $sp, 552
	addi.d	$a3, $sp, 528
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	st.d	$a4, $sp, 0
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_)
	jirl	$ra, $ra, 0
.Ltmp717:
# %bb.26:                               # %.noexc126
	ld.w	$a0, $sp, 680
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB11_30
# %bb.27:                               # %.lr.ph.i.preheader
	move	$fp, $zero
	.p2align	4, , 16
.LBB11_28:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp719:
	addi.d	$a0, $sp, 608
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi)
	jirl	$ra, $ra, 0
.Ltmp720:
# %bb.29:                               # %.noexc127
                                        #   in Loop: Header=BB11_28 Depth=1
	ld.w	$a0, $sp, 680
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB11_28
.LBB11_30:                              # %.loopexit174
	ld.d	$a0, $sp, 528
	beqz	$a0, .LBB11_32
# %bb.31:
	ld.d	$a1, $sp, 544
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_32:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $sp, 552
	beqz	$a0, .LBB11_34
# %bb.33:
	ld.d	$a1, $sp, 568
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_34:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit129
	ld.d	$a0, $sp, 576
	beqz	$a0, .LBB11_36
# %bb.35:
	ld.d	$a1, $sp, 592
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_36:
	move	$a0, $zero
.LBB11_37:
	ld.d	$s8, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 992                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1064                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1072
	ret
.LBB11_38:
	move	$s4, $s6
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$s6, $a0, .LBB11_25
.LBB11_39:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.Ltmp711:
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a1, $a0, %pc_lo12(.L.str.78)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt13runtime_errorC1EPKc)
	jirl	$ra, $ra, 0
.Ltmp712:
# %bb.40:
.Ltmp714:
	pcalau12i	$a0, %got_pc_hi20(_ZTISt13runtime_error)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTISt13runtime_error)
	pcalau12i	$a0, %got_pc_hi20(_ZNSt13runtime_errorD1Ev)
	ld.d	$a2, $a0, %got_pc_lo12(_ZNSt13runtime_errorD1Ev)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp715:
	b	.LBB11_55
.LBB11_41:
.Ltmp722:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp723:
# %bb.42:                               # %.noexc
.LBB11_43:
.Ltmp713:
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_free_exception)
	jirl	$ra, $ra, 0
	b	.LBB11_71
.LBB11_44:
.Ltmp707:
	move	$fp, $a0
	b	.LBB11_73
.LBB11_45:
.Ltmp704:
	move	$fp, $a0
	b	.LBB11_75
.LBB11_46:
.Ltmp676:
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 2
	move	$fp, $a0
	bne	$a1, $a2, .LBB11_77
# %bb.47:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp677:
	addi.d	$a0, $sp, 608
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
.Ltmp678:
# %bb.48:
.Ltmp680:
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	addi.d	$a0, $sp, 608
	ori	$a2, $zero, 99
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp681:
# %bb.49:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp682:
	addi.d	$a0, $sp, 608
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp683:
# %bb.50:
.Ltmp684:
	pcalau12i	$a1, %pc_hi20(.L.str.77)
	addi.d	$a1, $a1, %pc_lo12(.L.str.77)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp685:
# %bb.51:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a1, $a0
.Ltmp686:
	addi.d	$a0, $sp, 608
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp687:
# %bb.52:
.Ltmp689:
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 608
	pcaddu18i	$ra, %call36(_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv)
	jirl	$ra, $ra, 0
.Ltmp690:
# %bb.53:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.Ltmp692:
	addi.d	$a1, $sp, 576
	pcaddu18i	$ra, %call36(_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp693:
# %bb.54:
.Ltmp695:
	pcalau12i	$a0, %got_pc_hi20(_ZTISt13runtime_error)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTISt13runtime_error)
	pcalau12i	$a0, %got_pc_hi20(_ZNSt13runtime_errorD1Ev)
	ld.d	$a2, $a0, %got_pc_lo12(_ZNSt13runtime_errorD1Ev)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp696:
.LBB11_55:
.LBB11_56:
.Ltmp697:
	move	$fp, $a0
	b	.LBB11_58
.LBB11_57:
.Ltmp694:
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_free_exception)
	jirl	$ra, $ra, 0
.LBB11_58:
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB11_63
# %bb.59:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB11_63
.LBB11_60:
.Ltmp691:
	b	.LBB11_62
.LBB11_61:
.Ltmp688:
.LBB11_62:
	move	$fp, $a0
.LBB11_63:
	addi.d	$a0, $sp, 608
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	b	.LBB11_65
.LBB11_64:
.Ltmp679:
	move	$fp, $a0
.LBB11_65:
.Ltmp698:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp699:
	b	.LBB11_77
.LBB11_66:                              # %.loopexit.split-lp
.Ltmp718:
	b	.LBB11_70
.LBB11_67:
.Ltmp724:
	move	$fp, $a0
	b	.LBB11_77
.LBB11_68:                              # %.loopexit
.Ltmp721:
	b	.LBB11_70
.LBB11_69:                              # %.split209.us.split.us.split.us
.Ltmp710:
.LBB11_70:
	move	$fp, $a0
.LBB11_71:
	ld.d	$a0, $sp, 528
	beqz	$a0, .LBB11_73
# %bb.72:
	ld.d	$a1, $sp, 544
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_73:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit133
	ld.d	$a0, $sp, 552
	beqz	$a0, .LBB11_75
# %bb.74:
	ld.d	$a1, $sp, 568
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_75:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit135
	ld.d	$a0, $sp, 576
	beqz	$a0, .LBB11_77
# %bb.76:
	ld.d	$a1, $sp, 592
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_77:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp725:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.79)
	addi.d	$a1, $a1, %pc_lo12(.L.str.79)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp726:
# %bb.78:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139
.Ltmp727:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp728:
# %bb.79:
.Ltmp729:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	ori	$a2, $zero, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp730:
# %bb.80:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB11_88
# %bb.81:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB11_83
# %bb.82:
	ld.bu	$a0, $s0, 67
	b	.LBB11_85
.LBB11_83:
.Ltmp731:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp732:
# %bb.84:                               # %.noexc145
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp733:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp734:
.LBB11_85:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp735:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp736:
# %bb.86:                               # %.noexc147
.Ltmp737:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp738:
# %bb.87:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB11_37
.LBB11_88:
.Ltmp739:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp740:
# %bb.89:                               # %.noexc144
.LBB11_90:
.Ltmp741:
	move	$fp, $a0
.Ltmp742:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp743:
# %bb.91:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_92:
.Ltmp744:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_, .Lfunc_end11-_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,"aG",@progbits,_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,comdat
	.p2align	2, 0x0
GCC_except_table11:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp674-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp675-.Ltmp674              #   Call between .Ltmp674 and .Ltmp675
	.uleb128 .Ltmp676-.Lfunc_begin7         #     jumps to .Ltmp676
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp700-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp701-.Ltmp700              #   Call between .Ltmp700 and .Ltmp701
	.uleb128 .Ltmp724-.Lfunc_begin7         #     jumps to .Ltmp724
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp701-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp702-.Ltmp701              #   Call between .Ltmp701 and .Ltmp702
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp702-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp703-.Ltmp702              #   Call between .Ltmp702 and .Ltmp703
	.uleb128 .Ltmp704-.Lfunc_begin7         #     jumps to .Ltmp704
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp703-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp705-.Ltmp703              #   Call between .Ltmp703 and .Ltmp705
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp705-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp706-.Ltmp705              #   Call between .Ltmp705 and .Ltmp706
	.uleb128 .Ltmp707-.Lfunc_begin7         #     jumps to .Ltmp707
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp706-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp708-.Ltmp706              #   Call between .Ltmp706 and .Ltmp708
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp708-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp709-.Ltmp708              #   Call between .Ltmp708 and .Ltmp709
	.uleb128 .Ltmp710-.Lfunc_begin7         #     jumps to .Ltmp710
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp716-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp717-.Ltmp716              #   Call between .Ltmp716 and .Ltmp717
	.uleb128 .Ltmp718-.Lfunc_begin7         #     jumps to .Ltmp718
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp719-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Ltmp720-.Ltmp719              #   Call between .Ltmp719 and .Ltmp720
	.uleb128 .Ltmp721-.Lfunc_begin7         #     jumps to .Ltmp721
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp720-.Lfunc_begin7         # >> Call Site 11 <<
	.uleb128 .Ltmp711-.Ltmp720              #   Call between .Ltmp720 and .Ltmp711
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp711-.Lfunc_begin7         # >> Call Site 12 <<
	.uleb128 .Ltmp712-.Ltmp711              #   Call between .Ltmp711 and .Ltmp712
	.uleb128 .Ltmp713-.Lfunc_begin7         #     jumps to .Ltmp713
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp714-.Lfunc_begin7         # >> Call Site 13 <<
	.uleb128 .Ltmp715-.Ltmp714              #   Call between .Ltmp714 and .Ltmp715
	.uleb128 .Ltmp718-.Lfunc_begin7         #     jumps to .Ltmp718
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp722-.Lfunc_begin7         # >> Call Site 14 <<
	.uleb128 .Ltmp723-.Ltmp722              #   Call between .Ltmp722 and .Ltmp723
	.uleb128 .Ltmp724-.Lfunc_begin7         #     jumps to .Ltmp724
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp723-.Lfunc_begin7         # >> Call Site 15 <<
	.uleb128 .Ltmp677-.Ltmp723              #   Call between .Ltmp723 and .Ltmp677
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp677-.Lfunc_begin7         # >> Call Site 16 <<
	.uleb128 .Ltmp678-.Ltmp677              #   Call between .Ltmp677 and .Ltmp678
	.uleb128 .Ltmp679-.Lfunc_begin7         #     jumps to .Ltmp679
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp680-.Lfunc_begin7         # >> Call Site 17 <<
	.uleb128 .Ltmp685-.Ltmp680              #   Call between .Ltmp680 and .Ltmp685
	.uleb128 .Ltmp688-.Lfunc_begin7         #     jumps to .Ltmp688
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp685-.Lfunc_begin7         # >> Call Site 18 <<
	.uleb128 .Ltmp686-.Ltmp685              #   Call between .Ltmp685 and .Ltmp686
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp686-.Lfunc_begin7         # >> Call Site 19 <<
	.uleb128 .Ltmp687-.Ltmp686              #   Call between .Ltmp686 and .Ltmp687
	.uleb128 .Ltmp688-.Lfunc_begin7         #     jumps to .Ltmp688
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp689-.Lfunc_begin7         # >> Call Site 20 <<
	.uleb128 .Ltmp690-.Ltmp689              #   Call between .Ltmp689 and .Ltmp690
	.uleb128 .Ltmp691-.Lfunc_begin7         #     jumps to .Ltmp691
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp690-.Lfunc_begin7         # >> Call Site 21 <<
	.uleb128 .Ltmp692-.Ltmp690              #   Call between .Ltmp690 and .Ltmp692
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp692-.Lfunc_begin7         # >> Call Site 22 <<
	.uleb128 .Ltmp693-.Ltmp692              #   Call between .Ltmp692 and .Ltmp693
	.uleb128 .Ltmp694-.Lfunc_begin7         #     jumps to .Ltmp694
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp695-.Lfunc_begin7         # >> Call Site 23 <<
	.uleb128 .Ltmp696-.Ltmp695              #   Call between .Ltmp695 and .Ltmp696
	.uleb128 .Ltmp697-.Lfunc_begin7         #     jumps to .Ltmp697
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp696-.Lfunc_begin7         # >> Call Site 24 <<
	.uleb128 .Ltmp698-.Ltmp696              #   Call between .Ltmp696 and .Ltmp698
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp698-.Lfunc_begin7         # >> Call Site 25 <<
	.uleb128 .Ltmp699-.Ltmp698              #   Call between .Ltmp698 and .Ltmp699
	.uleb128 .Ltmp744-.Lfunc_begin7         #     jumps to .Ltmp744
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp699-.Lfunc_begin7         # >> Call Site 26 <<
	.uleb128 .Ltmp725-.Ltmp699              #   Call between .Ltmp699 and .Ltmp725
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp725-.Lfunc_begin7         # >> Call Site 27 <<
	.uleb128 .Ltmp738-.Ltmp725              #   Call between .Ltmp725 and .Ltmp738
	.uleb128 .Ltmp741-.Lfunc_begin7         #     jumps to .Ltmp741
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp738-.Lfunc_begin7         # >> Call Site 28 <<
	.uleb128 .Ltmp739-.Ltmp738              #   Call between .Ltmp738 and .Ltmp739
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp739-.Lfunc_begin7         # >> Call Site 29 <<
	.uleb128 .Ltmp740-.Ltmp739              #   Call between .Ltmp739 and .Ltmp740
	.uleb128 .Ltmp741-.Lfunc_begin7         #     jumps to .Ltmp741
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp742-.Lfunc_begin7         # >> Call Site 30 <<
	.uleb128 .Ltmp743-.Ltmp742              #   Call between .Ltmp742 and .Ltmp743
	.uleb128 .Ltmp744-.Lfunc_begin7         #     jumps to .Ltmp744
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp743-.Lfunc_begin7         # >> Call Site 31 <<
	.uleb128 .Lfunc_end11-.Ltmp743          #   Call between .Ltmp743 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp745:                               # TypeInfo 2
	.word	.L_ZTISt9exception.DW.stub-.Ltmp745
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE,"axG",@progbits,_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE,comdat
	.weak	_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE # -- Begin function _ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE
	.p2align	5
	.type	_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE,@function
_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE: # @_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.d	$s5, $a0, 16
	ld.d	$s2, $a0, 8
	move	$s1, $a5
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	sub.d	$a1, $s5, $s2
	beq	$s5, $s2, .LBB12_2
# %bb.1:
	ld.w	$s6, $s2, 0
	add.d	$a0, $s2, $a1
	ld.w	$s7, $a0, -4
	ld.d	$a0, $s1, 24
	addi.d	$s3, $s1, 8
	srai.d	$s4, $a1, 2
	bne	$a0, $s3, .LBB12_3
	b	.LBB12_26
.LBB12_2:
	move	$s6, $zero
	addi.w	$s7, $zero, -1
	ld.d	$a0, $s1, 24
	addi.d	$s3, $s1, 8
	srai.d	$s4, $a1, 2
	beq	$a0, $s3, .LBB12_26
.LBB12_3:                               # %.lr.ph
	ld.d	$a2, $fp, 104
	ld.d	$a3, $fp, 80
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $a1, 8
	ld.d	$s0, $fp, 32
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $a2, 16
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	vldi	$vr3, -912
	movgr2fr.d	$fs1, $zero
	lu52i.d	$a1, $zero, 1023
	vreplgr2vr.d	$vr4, $a1
	vrepli.b	$vr5, 0
	vst	$vr4, $sp, 64                   # 16-byte Folded Spill
	vst	$vr5, $sp, 48                   # 16-byte Folded Spill
	b	.LBB12_5
	.p2align	4, , 16
.LBB12_4:                               # %_ZN6miniFE30zero_row_and_put_1_on_diagonalINS_9CSRMatrixIdiiEEEEvRT_NS3_17GlobalOrdinalTypeE.exit
                                        #   in Loop: Header=BB12_5 Depth=1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	vld	$vr5, $sp, 48                   # 16-byte Folded Reload
	vld	$vr4, $sp, 64                   # 16-byte Folded Reload
	vldi	$vr3, -912
	beq	$a0, $s3, .LBB12_26
.LBB12_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_12 Depth 2
                                        #     Child Loop BB12_22 Depth 2
                                        #     Child Loop BB12_25 Depth 2
	ld.w	$a1, $a0, 32
	blt	$a1, $s6, .LBB12_4
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=1
	blt	$s7, $a1, .LBB12_4
# %bb.7:                                #   in Loop: Header=BB12_5 Depth=1
	sub.w	$a2, $a1, $s6
	slli.d	$a2, $a2, 3
	fstx.d	$fs0, $s8, $a2
	beq	$s5, $s2, .LBB12_13
# %bb.8:                                #   in Loop: Header=BB12_5 Depth=1
	ld.w	$a2, $s2, 0
	sub.w	$a2, $a1, $a2
	bgeu	$a2, $s4, .LBB12_10
# %bb.9:                                #   in Loop: Header=BB12_5 Depth=1
	slli.d	$a3, $a2, 2
	ldx.w	$a3, $s2, $a3
	beq	$a3, $a1, .LBB12_17
.LBB12_10:                              #   in Loop: Header=BB12_5 Depth=1
	ori	$a2, $zero, 1
	blt	$s4, $a2, .LBB12_20
# %bb.11:                               # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	move	$a3, $s4
	move	$a2, $s2
	.p2align	4, , 16
.LBB12_12:                              # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a4, $a3, 1
	slli.d	$a5, $a4, 2
	ldx.w	$a5, $a2, $a5
	alsl.d	$a6, $a4, $a2, 2
	slt	$a5, $a5, $a1
	addi.d	$a6, $a6, 4
	nor	$a7, $a4, $zero
	add.d	$a3, $a3, $a7
	maskeqz	$a6, $a6, $a5
	masknez	$a2, $a2, $a5
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	or	$a2, $a6, $a2
	bgtz	$a3, .LBB12_12
	b	.LBB12_14
.LBB12_13:                              #   in Loop: Header=BB12_5 Depth=1
	move	$a2, $s2
.LBB12_14:                              # %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i
                                        #   in Loop: Header=BB12_5 Depth=1
	beq	$s5, $a2, .LBB12_4
.LBB12_15:                              #   in Loop: Header=BB12_5 Depth=1
	ld.w	$a3, $a2, 0
	bne	$a3, $a1, .LBB12_4
# %bb.16:                               # %.thread27.i.i
                                        #   in Loop: Header=BB12_5 Depth=1
	sub.d	$a2, $a2, $s2
	srai.d	$a2, $a2, 2
.LBB12_17:                              # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit.i
                                        #   in Loop: Header=BB12_5 Depth=1
	alsl.d	$a3, $a2, $s0, 2
	slli.d	$a2, $a2, 2
	ld.w	$a3, $a3, 4
	ldx.w	$a2, $s0, $a2
	beq	$a3, $a2, .LBB12_4
# %bb.18:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	sub.w	$a3, $a3, $a2
	ori	$a4, $zero, 4
	bgeu	$a3, $a4, .LBB12_21
# %bb.19:                               #   in Loop: Header=BB12_5 Depth=1
	move	$a4, $zero
	b	.LBB12_24
.LBB12_20:                              #   in Loop: Header=BB12_5 Depth=1
	move	$a2, $s2
	bne	$s5, $a2, .LBB12_15
	b	.LBB12_4
.LBB12_21:                              # %vector.ph
                                        #   in Loop: Header=BB12_5 Depth=1
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	vinsgr2vr.w	$vr0, $a1, 0
	vreplvei.w	$vr0, $vr0, 0
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a5, 3
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a6, $a2, $a6, 2
	move	$a7, $a4
	.p2align	4, , 16
.LBB12_22:                              # %vector.body
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a6, -8
	ld.d	$t1, $a6, 0
	vinsgr2vr.d	$vr1, $t0, 0
	vinsgr2vr.d	$vr2, $t1, 0
	vseq.w	$vr1, $vr1, $vr0
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	vseq.w	$vr2, $vr2, $vr0
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vbitsel.v	$vr1, $vr5, $vr4, $vr1
	vbitsel.v	$vr2, $vr5, $vr4, $vr2
	vst	$vr1, $a5, -16
	vst	$vr2, $a5, 0
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB12_22
# %bb.23:                               # %middle.block
                                        #   in Loop: Header=BB12_5 Depth=1
	beq	$a4, $a3, .LBB12_4
.LBB12_24:                              # %.lr.ph.i.preheader97
                                        #   in Loop: Header=BB12_5 Depth=1
	sub.d	$a3, $a3, $a4
	slli.d	$a5, $a4, 3
	alsl.d	$a5, $a2, $a5, 3
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	slli.d	$a4, $a4, 2
	alsl.d	$a2, $a2, $a4, 2
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	.p2align	4, , 16
.LBB12_25:                              # %.lr.ph.i
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, 0
	xor	$a4, $a4, $a1
	sltui	$a4, $a4, 1
	movgr2cf	$fcc0, $a4
	fsel	$fa0, $fs1, $fa3, $fcc0
	fst.d	$fa0, $a5, 0
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 8
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB12_25
	b	.LBB12_4
.LBB12_26:                              # %.preheader
	beq	$s5, $s2, .LBB12_55
# %bb.27:                               # %.lr.ph82
	ld.d	$a0, $fp, 16
	move	$a1, $zero
	ld.d	$a2, $s1, 16
	sub.d	$a3, $a0, $s2
	srai.d	$a3, $a3, 2
	ld.d	$a4, $fp, 32
	ld.d	$a5, $fp, 80
	ld.d	$a6, $fp, 104
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $a7, 8
	ori	$t0, $zero, 1
	sltu	$t1, $t0, $s4
	masknez	$t2, $t0, $t1
	maskeqz	$t1, $s4, $t1
	or	$t1, $t1, $t2
	movgr2fr.d	$fa0, $zero
	ori	$t2, $zero, 16
	ori	$t3, $zero, 24
	b	.LBB12_30
	.p2align	4, , 16
.LBB12_28:                              # %._crit_edge
                                        #   in Loop: Header=BB12_30 Depth=1
	slli.d	$t4, $a1, 3
	fldx.d	$fa2, $a7, $t4
	fmul.d	$fa1, $fs0, $fa1
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $a7, $t4
.LBB12_29:                              #   in Loop: Header=BB12_30 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $t1, .LBB12_55
.LBB12_30:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_32 Depth 2
                                        #     Child Loop BB12_40 Depth 2
                                        #     Child Loop BB12_49 Depth 2
                                        #       Child Loop BB12_50 Depth 3
	slli.d	$t4, $a1, 2
	ldx.w	$t4, $s2, $t4
	beqz	$a2, .LBB12_35
# %bb.31:                               # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB12_30 Depth=1
	move	$t6, $a2
	move	$t5, $s3
	.p2align	4, , 16
.LBB12_32:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB12_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, 32
	slt	$t7, $t7, $t4
	masknez	$t8, $t6, $t7
	masknez	$fp, $t2, $t7
	maskeqz	$s0, $t3, $t7
	or	$fp, $s0, $fp
	ldx.d	$t6, $t6, $fp
	maskeqz	$t5, $t5, $t7
	or	$t5, $t5, $t8
	bnez	$t6, .LBB12_32
# %bb.33:                               # %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i
                                        #   in Loop: Header=BB12_30 Depth=1
	beq	$t5, $s3, .LBB12_35
# %bb.34:                               # %_ZNKSt3setIiSt4lessIiESaIiEE4findERKi.exit
                                        #   in Loop: Header=BB12_30 Depth=1
	ld.w	$t5, $t5, 32
	bge	$t4, $t5, .LBB12_29
.LBB12_35:                              # %_ZNKSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread
                                        #   in Loop: Header=BB12_30 Depth=1
	beq	$a0, $s2, .LBB12_41
# %bb.36:                               #   in Loop: Header=BB12_30 Depth=1
	ld.w	$t5, $s2, 0
	sub.w	$t5, $t4, $t5
	bgeu	$t5, $a3, .LBB12_38
# %bb.37:                               #   in Loop: Header=BB12_30 Depth=1
	slli.d	$t6, $t5, 2
	ldx.w	$t6, $s2, $t6
	beq	$t6, $t4, .LBB12_45
.LBB12_38:                              #   in Loop: Header=BB12_30 Depth=1
	blt	$a3, $t0, .LBB12_54
# %bb.39:                               # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader
                                        #   in Loop: Header=BB12_30 Depth=1
	move	$t6, $a3
	move	$t5, $s2
	.p2align	4, , 16
.LBB12_40:                              # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
                                        #   Parent Loop BB12_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t7, $t6, 1
	slli.d	$t8, $t7, 2
	ldx.w	$t8, $t5, $t8
	alsl.d	$fp, $t7, $t5, 2
	slt	$t8, $t8, $t4
	addi.d	$fp, $fp, 4
	nor	$s0, $t7, $zero
	add.d	$t6, $t6, $s0
	maskeqz	$fp, $fp, $t8
	masknez	$t5, $t5, $t8
	maskeqz	$t6, $t6, $t8
	masknez	$t7, $t7, $t8
	or	$t6, $t6, $t7
	or	$t5, $fp, $t5
	bgtz	$t6, .LBB12_40
	b	.LBB12_42
	.p2align	4, , 16
.LBB12_41:                              #   in Loop: Header=BB12_30 Depth=1
	move	$t5, $s2
.LBB12_42:                              # %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i
                                        #   in Loop: Header=BB12_30 Depth=1
	fmov.d	$fa1, $fa0
	beq	$a0, $t5, .LBB12_28
.LBB12_43:                              #   in Loop: Header=BB12_30 Depth=1
	ld.w	$t6, $t5, 0
	fmov.d	$fa1, $fa0
	bne	$t6, $t4, .LBB12_28
# %bb.44:                               # %.thread27.i
                                        #   in Loop: Header=BB12_30 Depth=1
	sub.d	$t4, $t5, $s2
	srai.d	$t5, $t4, 2
.LBB12_45:                              # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit
                                        #   in Loop: Header=BB12_30 Depth=1
	alsl.d	$t4, $t5, $a4, 2
	slli.d	$t6, $t5, 2
	ld.w	$t5, $t4, 4
	ldx.w	$t7, $a4, $t6
	fmov.d	$fa1, $fa0
	beq	$t5, $t7, .LBB12_28
# %bb.46:                               # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit
                                        #   in Loop: Header=BB12_30 Depth=1
	fmov.d	$fa1, $fa0
	beqz	$a2, .LBB12_28
# %bb.47:                               # %.lr.ph.i.i.i47.preheader
                                        #   in Loop: Header=BB12_30 Depth=1
	move	$t4, $zero
	sub.w	$t5, $t5, $t7
	alsl.d	$t6, $t7, $a5, 2
	alsl.d	$t7, $t7, $a6, 3
	fmov.d	$fa1, $fa0
	b	.LBB12_49
	.p2align	4, , 16
.LBB12_48:                              # %_ZNKSt3setIiSt4lessIiESaIiEE4findERKi.exit59.thread
                                        #   in Loop: Header=BB12_49 Depth=2
	addi.d	$t4, $t4, 1
	beq	$t4, $t5, .LBB12_28
.LBB12_49:                              # %.lr.ph.i.i.i47
                                        #   Parent Loop BB12_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_50 Depth 3
	slli.d	$t8, $t4, 2
	ldx.w	$t8, $t6, $t8
	move	$s0, $a2
	move	$fp, $s3
	.p2align	4, , 16
.LBB12_50:                              #   Parent Loop BB12_30 Depth=1
                                        #     Parent Loop BB12_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s1, $s0, 32
	slt	$s1, $s1, $t8
	masknez	$s4, $s0, $s1
	masknez	$s5, $t2, $s1
	maskeqz	$s6, $t3, $s1
	or	$s5, $s6, $s5
	ldx.d	$s0, $s0, $s5
	maskeqz	$fp, $fp, $s1
	or	$fp, $fp, $s4
	bnez	$s0, .LBB12_50
# %bb.51:                               # %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i55
                                        #   in Loop: Header=BB12_49 Depth=2
	beq	$fp, $s3, .LBB12_48
# %bb.52:                               # %_ZNKSt3setIiSt4lessIiESaIiEE4findERKi.exit59
                                        #   in Loop: Header=BB12_49 Depth=2
	ld.w	$fp, $fp, 32
	blt	$t8, $fp, .LBB12_48
# %bb.53:                               #   in Loop: Header=BB12_49 Depth=2
	slli.d	$t8, $t4, 3
	fldx.d	$fa2, $t7, $t8
	fadd.d	$fa1, $fa1, $fa2
	stx.d	$zero, $t7, $t8
	b	.LBB12_48
.LBB12_54:                              #   in Loop: Header=BB12_30 Depth=1
	move	$t5, $s2
	fmov.d	$fa1, $fa0
	bne	$a0, $t5, .LBB12_43
	b	.LBB12_28
.LBB12_55:                              # %._crit_edge83
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end12:
	.size	_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE, .Lfunc_end12-_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc
.LCPI13_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI13_1:
	.dword	0x43e0000000000000              # double 9.2233720368547758E+18
.LCPI13_2:
	.dword	0x3e10000000000000              # double 9.3132257461547852E-10
	.section	.text._ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,"axG",@progbits,_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,comdat
	.weak	_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc
	.p2align	5
	.type	_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,@function
_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc: # @_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:                                # %_ZN6miniFE18get_global_min_maxIiEEvT_RS1_S2_RiS2_S3_.exit
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
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
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
	ld.d	$a4, $a0, 40
	ld.w	$a4, $a4, -4
	move	$s0, $a3
	srli.d	$a3, $a4, 32
	pcalau12i	$a5, %pc_hi20(.LCPI13_0)
	fld.d	$fs3, $a5, %pc_lo12(.LCPI13_0)
	lu52i.d	$s7, $zero, 1107
	or	$a3, $a3, $s7
	movgr2fr.d	$fa0, $a3
	fsub.d	$fa0, $fa0, $fs3
	lu12i.w	$s6, 275200
	pcalau12i	$a3, %pc_hi20(.LCPI13_1)
	fld.d	$fs1, $a3, %pc_lo12(.LCPI13_1)
	bstrins.d	$a4, $s6, 63, 32
	movgr2fr.d	$fa1, $a4
	fadd.d	$fs0, $fa1, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs1
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a3, $fa0
	movcf2gr	$a4, $fcc0
	maskeqz	$a3, $a3, $a4
	fsub.d	$fa0, $fs0, $fs1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a5, $fa0
	lu52i.d	$a6, $zero, -2048
	xor	$a5, $a5, $a6
	masknez	$a4, $a5, $a4
	or	$fp, $a3, $a4
	bnez	$a1, .LBB13_85
# %bb.1:                                # %.noexc.i
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s1, $a0, 16
	ld.d	$s2, $a0, 8
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp746:
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp747:
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 16
	pcalau12i	$a2, %pc_hi20(.L.str.93)
	addi.d	$s5, $a2, %pc_lo12(.L.str.93)
	vld	$vr0, $s5, 0
	ld.b	$s4, $s5, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
	addi.d	$s3, $sp, 32
	st.d	$s3, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $sp, 32
.Ltmp749:
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp750:
# %bb.3:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_5:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_7
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_7:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp752:
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp753:
# %bb.8:                                # %.noexc131
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp755:
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp756:
# %bb.9:                                # %._crit_edge.i.i133
	sub.d	$s8, $s1, $s2
	slli.d	$a1, $s8, 30
	pcalau12i	$a2, %pc_hi20(.L.str.94)
	addi.d	$a2, $a2, %pc_lo12(.L.str.94)
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a2, 8
	srai.d	$a2, $a1, 32
	st.d	$s3, $sp, 16
	st.d	$a3, $sp, 32
	st.w	$a4, $sp, 40
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 24
	st.b	$zero, $sp, 44
.Ltmp758:
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp759:
# %bb.10:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_14:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp761:
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp762:
# %bb.15:                               # %.noexc145
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp764:
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp765:
# %bb.16:                               # %._crit_edge.i.i147
	pcalau12i	$a1, %pc_hi20(.L.str.95)
	addi.d	$a1, $a1, %pc_lo12(.L.str.95)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$s3, $sp, 16
	st.d	$a2, $sp, 32
	st.h	$a1, $sp, 40
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 24
	st.b	$zero, $sp, 42
.Ltmp767:
	addi.d	$a1, $sp, 16
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp768:
# %bb.17:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_19:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_21:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp770:
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp771:
# %bb.22:                               # %.noexc159
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp773:
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp774:
# %bb.23:                               # %.noexc.i162
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 80
.Ltmp776:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp777:
# %bb.24:                               # %.noexc163
	pcalau12i	$a1, %pc_hi20(.LCPI13_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI13_2)
	srli.d	$s2, $s8, 2
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fs2, $fa1
	fmul.d	$fa1, $fs2, $fa0
	vldi	$vr2, -1008
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa1
	srli.d	$a1, $fp, 32
	or	$a1, $a1, $s7
	movgr2fr.d	$fa3, $a1
	fsub.d	$fa3, $fa3, $fs3
	move	$a1, $fp
	bstrins.d	$a1, $s6, 63, 32
	movgr2fr.d	$fa4, $a1
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa0, $fa3, $fa0
	fmul.d	$fa2, $fa0, $fa2
	fadd.d	$fa1, $fa1, $fa2
	vldi	$vr2, -992
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.96)
	addi.d	$a2, $a2, %pc_lo12(.L.str.96)
	vld	$vr3, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr3, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa1
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp779:
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp780:
# %bb.25:
	ld.d	$a0, $sp, 16
	addi.d	$s6, $sp, 64
	beq	$a0, $s3, .LBB13_27
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_27:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_29
# %bb.28:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_29:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp782:
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp783:
# %bb.30:                               # %.noexc173
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp785:
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp786:
# %bb.31:                               # %.noexc.i176
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 24
	st.d	$a0, $sp, 80
.Ltmp788:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp789:
# %bb.32:                               # %.noexc177
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.97)
	addi.d	$a2, $a2, %pc_lo12(.L.str.97)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 16
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp791:
	movgr2fr.d	$fa0, $zero
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp792:
# %bb.33:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_35:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_37:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp794:
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp795:
# %bb.38:                               # %.noexc187
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp797:
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp798:
# %bb.39:                               # %.noexc.i190
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 80
.Ltmp800:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp801:
# %bb.40:                               # %.noexc191
	add.w	$a1, $s8, $s2
	ld.d	$a3, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.98)
	addi.d	$a2, $a2, %pc_lo12(.L.str.98)
	vld	$vr0, $a2, 0
	ld.b	$a2, $a2, 16
	addi.w	$s2, $s2, 0
	st.d	$a0, $sp, 16
	st.d	$a3, $sp, 32
	st.b	$a2, $a0, 16
	slt	$a2, $a1, $s2
	maskeqz	$a1, $a1, $a2
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	masknez	$a2, $s2, $a2
	or	$a2, $a1, $a2
	st.d	$a3, $sp, 24
	stx.b	$zero, $a0, $a3
.Ltmp803:
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp804:
# %bb.41:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_43
# %bb.42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_43:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_45
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_45:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp806:
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp807:
# %bb.46:                               # %.noexc201
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp809:
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp810:
# %bb.47:                               # %.noexc.i204
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 80
.Ltmp812:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp813:
# %bb.48:                               # %.noexc205
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.99)
	addi.d	$a2, $a2, %pc_lo12(.L.str.99)
	vld	$vr0, $a2, 0
	ld.b	$a2, $a2, 16
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	srai.d	$a2, $s2, 63
	andn	$a2, $s2, $a2
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp815:
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp816:
# %bb.49:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_51
# %bb.50:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_51:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_53
# %bb.52:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_53:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp818:
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp819:
# %bb.54:                               # %.noexc215
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp821:
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp822:
# %bb.55:                               # %.noexc.i218
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 80
.Ltmp824:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp825:
# %bb.56:                               # %.noexc219
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a1
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.100)
	addi.d	$a2, $a2, %pc_lo12(.L.str.100)
	vld	$vr1, $a2, 0
	ld.b	$a2, $a2, 16
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr1, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	ffint.d.w	$fs3, $fa0
	fdiv.d	$fa0, $fs2, $fs3
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp827:
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp828:
# %bb.57:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_59
# %bb.58:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_59:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_61
# %bb.60:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_61:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp830:
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp831:
# %bb.62:                               # %.noexc229
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp833:
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp834:
# %bb.63:                               # %.noexc.i232
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 80
.Ltmp836:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp837:
# %bb.64:                               # %.noexc233
	vldi	$vr0, -1004
	fmul.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fa0
	fsel	$fa0, $fa0, $fs0, $fcc0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrp.d	$vr0, $vr0
	fsub.d	$fa1, $fa0, $fs1
	ftintrz.l.d	$fa1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa1
	movfr2gr.d	$a2, $fa0
	lu52i.d	$a3, $zero, -2048
	xor	$a1, $a1, $a3
	ld.d	$a3, $sp, 80
	pcalau12i	$a4, %pc_hi20(.L.str.101)
	vld	$vr0, $a4, %pc_lo12(.L.str.101)
	movcf2gr	$a4, $fcc0
	maskeqz	$a2, $a2, $a4
	st.d	$a0, $sp, 16
	st.d	$a3, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	masknez	$a1, $a1, $a4
	or	$a2, $a2, $a1
	st.d	$a3, $sp, 24
	stx.b	$zero, $a0, $a3
.Ltmp839:
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp840:
# %bb.65:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_67
# %bb.66:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_67:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_69
# %bb.68:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_69:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp842:
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp843:
# %bb.70:                               # %.noexc243
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp845:
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp846:
# %bb.71:                               # %.noexc.i246
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 80
.Ltmp848:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp849:
# %bb.72:                               # %.noexc247
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.102)
	vld	$vr0, $a2, %pc_lo12(.L.str.102)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp851:
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp852:
# %bb.73:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_75
# %bb.74:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_75:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_77
# %bb.76:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_77:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp854:
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp855:
# %bb.78:                               # %.noexc257
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp857:
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp858:
# %bb.79:                               # %.noexc.i260
	move	$s0, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 80
.Ltmp860:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp861:
# %bb.80:                               # %.noexc261
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.103)
	vld	$vr0, $a2, %pc_lo12(.L.str.103)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	fdiv.d	$fa0, $fs0, $fs3
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp863:
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp864:
# %bb.81:
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_83
# %bb.82:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_83:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_85
# %bb.84:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_85:
	move	$a0, $fp
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
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
.LBB13_86:
.Ltmp865:
	b	.LBB13_125
.LBB13_87:
.Ltmp862:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_88:
.Ltmp859:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_89:
.Ltmp856:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_90:
.Ltmp853:
	b	.LBB13_125
.LBB13_91:
.Ltmp850:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_92:
.Ltmp847:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_93:
.Ltmp844:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_94:
.Ltmp841:
	b	.LBB13_125
.LBB13_95:
.Ltmp838:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_96:
.Ltmp835:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_97:
.Ltmp832:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_98:
.Ltmp829:
	b	.LBB13_125
.LBB13_99:
.Ltmp826:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_100:
.Ltmp823:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_101:
.Ltmp820:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_102:
.Ltmp817:
	b	.LBB13_125
.LBB13_103:
.Ltmp814:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_104:
.Ltmp811:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_105:
.Ltmp808:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_106:
.Ltmp805:
	b	.LBB13_125
.LBB13_107:
.Ltmp802:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_108:
.Ltmp799:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_109:
.Ltmp796:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_110:
.Ltmp793:
	b	.LBB13_125
.LBB13_111:
.Ltmp790:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_112:
.Ltmp787:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_113:
.Ltmp784:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_114:
.Ltmp781:
	b	.LBB13_125
.LBB13_115:
.Ltmp778:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_116:
.Ltmp775:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_117:
.Ltmp772:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_118:
.Ltmp769:
	b	.LBB13_125
.LBB13_119:
.Ltmp766:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_120:
.Ltmp763:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_121:
.Ltmp760:
	b	.LBB13_125
.LBB13_122:
.Ltmp757:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_123:
.Ltmp754:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_124:
.Ltmp751:
.LBB13_125:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	bne	$a2, $s3, .LBB13_128
# %bb.126:
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	bne	$a0, $a1, .LBB13_129
.LBB13_127:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_128:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
.LBB13_129:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_130:
.Ltmp748:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc, .Lfunc_end13-_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,"aG",@progbits,_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp746-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp747-.Ltmp746              #   Call between .Ltmp746 and .Ltmp747
	.uleb128 .Ltmp748-.Lfunc_begin8         #     jumps to .Ltmp748
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp749-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp750-.Ltmp749              #   Call between .Ltmp749 and .Ltmp750
	.uleb128 .Ltmp751-.Lfunc_begin8         #     jumps to .Ltmp751
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp750-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp752-.Ltmp750              #   Call between .Ltmp750 and .Ltmp752
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp752-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp753-.Ltmp752              #   Call between .Ltmp752 and .Ltmp753
	.uleb128 .Ltmp754-.Lfunc_begin8         #     jumps to .Ltmp754
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp755-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp756-.Ltmp755              #   Call between .Ltmp755 and .Ltmp756
	.uleb128 .Ltmp757-.Lfunc_begin8         #     jumps to .Ltmp757
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp758-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp759-.Ltmp758              #   Call between .Ltmp758 and .Ltmp759
	.uleb128 .Ltmp760-.Lfunc_begin8         #     jumps to .Ltmp760
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp759-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp761-.Ltmp759              #   Call between .Ltmp759 and .Ltmp761
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp761-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp762-.Ltmp761              #   Call between .Ltmp761 and .Ltmp762
	.uleb128 .Ltmp763-.Lfunc_begin8         #     jumps to .Ltmp763
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp764-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp765-.Ltmp764              #   Call between .Ltmp764 and .Ltmp765
	.uleb128 .Ltmp766-.Lfunc_begin8         #     jumps to .Ltmp766
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp767-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp768-.Ltmp767              #   Call between .Ltmp767 and .Ltmp768
	.uleb128 .Ltmp769-.Lfunc_begin8         #     jumps to .Ltmp769
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp768-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Ltmp770-.Ltmp768              #   Call between .Ltmp768 and .Ltmp770
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp770-.Lfunc_begin8         # >> Call Site 12 <<
	.uleb128 .Ltmp771-.Ltmp770              #   Call between .Ltmp770 and .Ltmp771
	.uleb128 .Ltmp772-.Lfunc_begin8         #     jumps to .Ltmp772
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp773-.Lfunc_begin8         # >> Call Site 13 <<
	.uleb128 .Ltmp774-.Ltmp773              #   Call between .Ltmp773 and .Ltmp774
	.uleb128 .Ltmp775-.Lfunc_begin8         #     jumps to .Ltmp775
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp776-.Lfunc_begin8         # >> Call Site 14 <<
	.uleb128 .Ltmp777-.Ltmp776              #   Call between .Ltmp776 and .Ltmp777
	.uleb128 .Ltmp778-.Lfunc_begin8         #     jumps to .Ltmp778
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp779-.Lfunc_begin8         # >> Call Site 15 <<
	.uleb128 .Ltmp780-.Ltmp779              #   Call between .Ltmp779 and .Ltmp780
	.uleb128 .Ltmp781-.Lfunc_begin8         #     jumps to .Ltmp781
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp780-.Lfunc_begin8         # >> Call Site 16 <<
	.uleb128 .Ltmp782-.Ltmp780              #   Call between .Ltmp780 and .Ltmp782
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp782-.Lfunc_begin8         # >> Call Site 17 <<
	.uleb128 .Ltmp783-.Ltmp782              #   Call between .Ltmp782 and .Ltmp783
	.uleb128 .Ltmp784-.Lfunc_begin8         #     jumps to .Ltmp784
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp785-.Lfunc_begin8         # >> Call Site 18 <<
	.uleb128 .Ltmp786-.Ltmp785              #   Call between .Ltmp785 and .Ltmp786
	.uleb128 .Ltmp787-.Lfunc_begin8         #     jumps to .Ltmp787
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp788-.Lfunc_begin8         # >> Call Site 19 <<
	.uleb128 .Ltmp789-.Ltmp788              #   Call between .Ltmp788 and .Ltmp789
	.uleb128 .Ltmp790-.Lfunc_begin8         #     jumps to .Ltmp790
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp791-.Lfunc_begin8         # >> Call Site 20 <<
	.uleb128 .Ltmp792-.Ltmp791              #   Call between .Ltmp791 and .Ltmp792
	.uleb128 .Ltmp793-.Lfunc_begin8         #     jumps to .Ltmp793
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp792-.Lfunc_begin8         # >> Call Site 21 <<
	.uleb128 .Ltmp794-.Ltmp792              #   Call between .Ltmp792 and .Ltmp794
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp794-.Lfunc_begin8         # >> Call Site 22 <<
	.uleb128 .Ltmp795-.Ltmp794              #   Call between .Ltmp794 and .Ltmp795
	.uleb128 .Ltmp796-.Lfunc_begin8         #     jumps to .Ltmp796
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp797-.Lfunc_begin8         # >> Call Site 23 <<
	.uleb128 .Ltmp798-.Ltmp797              #   Call between .Ltmp797 and .Ltmp798
	.uleb128 .Ltmp799-.Lfunc_begin8         #     jumps to .Ltmp799
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp800-.Lfunc_begin8         # >> Call Site 24 <<
	.uleb128 .Ltmp801-.Ltmp800              #   Call between .Ltmp800 and .Ltmp801
	.uleb128 .Ltmp802-.Lfunc_begin8         #     jumps to .Ltmp802
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp803-.Lfunc_begin8         # >> Call Site 25 <<
	.uleb128 .Ltmp804-.Ltmp803              #   Call between .Ltmp803 and .Ltmp804
	.uleb128 .Ltmp805-.Lfunc_begin8         #     jumps to .Ltmp805
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp804-.Lfunc_begin8         # >> Call Site 26 <<
	.uleb128 .Ltmp806-.Ltmp804              #   Call between .Ltmp804 and .Ltmp806
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp806-.Lfunc_begin8         # >> Call Site 27 <<
	.uleb128 .Ltmp807-.Ltmp806              #   Call between .Ltmp806 and .Ltmp807
	.uleb128 .Ltmp808-.Lfunc_begin8         #     jumps to .Ltmp808
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp809-.Lfunc_begin8         # >> Call Site 28 <<
	.uleb128 .Ltmp810-.Ltmp809              #   Call between .Ltmp809 and .Ltmp810
	.uleb128 .Ltmp811-.Lfunc_begin8         #     jumps to .Ltmp811
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp812-.Lfunc_begin8         # >> Call Site 29 <<
	.uleb128 .Ltmp813-.Ltmp812              #   Call between .Ltmp812 and .Ltmp813
	.uleb128 .Ltmp814-.Lfunc_begin8         #     jumps to .Ltmp814
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp815-.Lfunc_begin8         # >> Call Site 30 <<
	.uleb128 .Ltmp816-.Ltmp815              #   Call between .Ltmp815 and .Ltmp816
	.uleb128 .Ltmp817-.Lfunc_begin8         #     jumps to .Ltmp817
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp816-.Lfunc_begin8         # >> Call Site 31 <<
	.uleb128 .Ltmp818-.Ltmp816              #   Call between .Ltmp816 and .Ltmp818
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp818-.Lfunc_begin8         # >> Call Site 32 <<
	.uleb128 .Ltmp819-.Ltmp818              #   Call between .Ltmp818 and .Ltmp819
	.uleb128 .Ltmp820-.Lfunc_begin8         #     jumps to .Ltmp820
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp821-.Lfunc_begin8         # >> Call Site 33 <<
	.uleb128 .Ltmp822-.Ltmp821              #   Call between .Ltmp821 and .Ltmp822
	.uleb128 .Ltmp823-.Lfunc_begin8         #     jumps to .Ltmp823
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp824-.Lfunc_begin8         # >> Call Site 34 <<
	.uleb128 .Ltmp825-.Ltmp824              #   Call between .Ltmp824 and .Ltmp825
	.uleb128 .Ltmp826-.Lfunc_begin8         #     jumps to .Ltmp826
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp827-.Lfunc_begin8         # >> Call Site 35 <<
	.uleb128 .Ltmp828-.Ltmp827              #   Call between .Ltmp827 and .Ltmp828
	.uleb128 .Ltmp829-.Lfunc_begin8         #     jumps to .Ltmp829
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp828-.Lfunc_begin8         # >> Call Site 36 <<
	.uleb128 .Ltmp830-.Ltmp828              #   Call between .Ltmp828 and .Ltmp830
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp830-.Lfunc_begin8         # >> Call Site 37 <<
	.uleb128 .Ltmp831-.Ltmp830              #   Call between .Ltmp830 and .Ltmp831
	.uleb128 .Ltmp832-.Lfunc_begin8         #     jumps to .Ltmp832
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp833-.Lfunc_begin8         # >> Call Site 38 <<
	.uleb128 .Ltmp834-.Ltmp833              #   Call between .Ltmp833 and .Ltmp834
	.uleb128 .Ltmp835-.Lfunc_begin8         #     jumps to .Ltmp835
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp836-.Lfunc_begin8         # >> Call Site 39 <<
	.uleb128 .Ltmp837-.Ltmp836              #   Call between .Ltmp836 and .Ltmp837
	.uleb128 .Ltmp838-.Lfunc_begin8         #     jumps to .Ltmp838
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp839-.Lfunc_begin8         # >> Call Site 40 <<
	.uleb128 .Ltmp840-.Ltmp839              #   Call between .Ltmp839 and .Ltmp840
	.uleb128 .Ltmp841-.Lfunc_begin8         #     jumps to .Ltmp841
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp840-.Lfunc_begin8         # >> Call Site 41 <<
	.uleb128 .Ltmp842-.Ltmp840              #   Call between .Ltmp840 and .Ltmp842
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp842-.Lfunc_begin8         # >> Call Site 42 <<
	.uleb128 .Ltmp843-.Ltmp842              #   Call between .Ltmp842 and .Ltmp843
	.uleb128 .Ltmp844-.Lfunc_begin8         #     jumps to .Ltmp844
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp845-.Lfunc_begin8         # >> Call Site 43 <<
	.uleb128 .Ltmp846-.Ltmp845              #   Call between .Ltmp845 and .Ltmp846
	.uleb128 .Ltmp847-.Lfunc_begin8         #     jumps to .Ltmp847
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp848-.Lfunc_begin8         # >> Call Site 44 <<
	.uleb128 .Ltmp849-.Ltmp848              #   Call between .Ltmp848 and .Ltmp849
	.uleb128 .Ltmp850-.Lfunc_begin8         #     jumps to .Ltmp850
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp851-.Lfunc_begin8         # >> Call Site 45 <<
	.uleb128 .Ltmp852-.Ltmp851              #   Call between .Ltmp851 and .Ltmp852
	.uleb128 .Ltmp853-.Lfunc_begin8         #     jumps to .Ltmp853
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp852-.Lfunc_begin8         # >> Call Site 46 <<
	.uleb128 .Ltmp854-.Ltmp852              #   Call between .Ltmp852 and .Ltmp854
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp854-.Lfunc_begin8         # >> Call Site 47 <<
	.uleb128 .Ltmp855-.Ltmp854              #   Call between .Ltmp854 and .Ltmp855
	.uleb128 .Ltmp856-.Lfunc_begin8         #     jumps to .Ltmp856
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp857-.Lfunc_begin8         # >> Call Site 48 <<
	.uleb128 .Ltmp858-.Ltmp857              #   Call between .Ltmp857 and .Ltmp858
	.uleb128 .Ltmp859-.Lfunc_begin8         #     jumps to .Ltmp859
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp860-.Lfunc_begin8         # >> Call Site 49 <<
	.uleb128 .Ltmp861-.Ltmp860              #   Call between .Ltmp860 and .Ltmp861
	.uleb128 .Ltmp862-.Lfunc_begin8         #     jumps to .Ltmp862
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp863-.Lfunc_begin8         # >> Call Site 50 <<
	.uleb128 .Ltmp864-.Ltmp863              #   Call between .Ltmp863 and .Ltmp864
	.uleb128 .Ltmp865-.Lfunc_begin8         #     jumps to .Ltmp865
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp864-.Lfunc_begin8         # >> Call Site 51 <<
	.uleb128 .Lfunc_end13-.Ltmp864          #   Call between .Ltmp864 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,"axG",@progbits,_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,comdat
	.weak	_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_ # -- Begin function _ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_
	.p2align	5
	.type	_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,@function
_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_: # @_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
	move	$s2, $a0
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a0, 8
	sub.d	$s8, $a1, $a2
	srai.d	$s3, $s8, 1
	srli.d	$a0, $s3, 61
	bnez	$a0, .LBB14_88
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	srai.d	$s7, $s8, 2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	beq	$a1, $a2, .LBB14_20
# %bb.2:
	slli.d	$s0, $s8, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	alsl.d	$a0, $s3, $a0, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.w	$zero, $fp, 0
	addi.d	$a0, $fp, 4
	addi.d	$s1, $s0, -4
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp866:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp867:
# %bb.3:                                # %.lr.ph
	move	$s0, $a0
	alsl.d	$a0, $s3, $a0, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.w	$zero, $s0, 0
	addi.d	$a0, $s0, 4
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	move	$t0, $zero
	ld.d	$a0, $s2, 32
	ld.d	$a1, $s2, 80
	ld.d	$a2, $s2, 104
	ori	$a3, $zero, 1
	sltu	$a4, $a3, $s7
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $s7, $a4
	or	$a4, $a4, $a5
	addi.d	$a5, $a2, 8
	addi.d	$a6, $a1, 4
	ori	$a7, $zero, 2
	b	.LBB14_5
	.p2align	4, , 16
.LBB14_4:                               # %_ZSt11lower_boundIPimET_S1_S1_RKT0_.exit
                                        #   in Loop: Header=BB14_5 Depth=1
	alsl.d	$t4, $t0, $a0, 2
	ld.w	$t4, $t4, 0
	add.d	$t6, $fp, $t2
	alsl.d	$t0, $t0, $s0, 3
	add.d	$t2, $s0, $t2
	alsl.d	$t4, $t4, $t5, 2
	sub.d	$t3, $t4, $t3
	ld.w	$t2, $t2, 0
	srli.d	$t3, $t3, 2
	st.w	$t3, $t6, 0
	st.w	$t3, $t0, 0
	add.d	$t0, $t2, $s5
	sub.w	$s5, $t0, $t3
	move	$t0, $t1
	beq	$t1, $a4, .LBB14_15
.LBB14_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_9 Depth 2
                                        #       Child Loop BB14_10 Depth 3
                                        #     Child Loop BB14_14 Depth 2
	slli.d	$t1, $t0, 2
	ldx.w	$t6, $a0, $t1
	addi.d	$t1, $t0, 1
	slli.d	$t3, $t1, 2
	ldx.w	$t4, $a0, $t3
	slli.d	$t5, $t0, 3
	stx.w	$t6, $fp, $t5
	ldx.w	$t7, $a0, $t3
	addi.d	$t2, $t5, 4
	stx.w	$t7, $fp, $t2
	stx.w	$t7, $s0, $t5
	ldx.w	$t5, $a0, $t3
	alsl.d	$t3, $t6, $a1, 2
	sub.d	$t4, $t4, $t6
	stx.w	$t5, $s0, $t2
	blt	$t4, $a7, .LBB14_12
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB14_5 Depth=1
	slli.d	$t7, $t6, 2
	alsl.d	$t5, $t6, $a2, 3
	alsl.d	$t6, $t6, $a5, 3
	add.d	$t7, $a6, $t7
	ori	$t8, $zero, 1
	b	.LBB14_9
	.p2align	4, , 16
.LBB14_7:                               #   in Loop: Header=BB14_9 Depth=2
	move	$s3, $zero
.LBB14_8:                               # %.critedge.i
                                        #   in Loop: Header=BB14_9 Depth=2
	slli.d	$s4, $s3, 2
	stx.w	$s1, $t3, $s4
	slli.d	$s1, $s3, 3
	fstx.d	$fa0, $t5, $s1
	addi.d	$t8, $t8, 1
	addi.d	$t6, $t6, 8
	addi.d	$t7, $t7, 4
	beq	$t8, $t4, .LBB14_12
.LBB14_9:                               # %.lr.ph.i
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_10 Depth 3
	slli.d	$s1, $t8, 2
	ldx.w	$s1, $t3, $s1
	slli.d	$s3, $t8, 3
	fldx.d	$fa0, $t5, $s3
	move	$s4, $t7
	move	$s6, $t6
	move	$s3, $t8
	.p2align	4, , 16
.LBB14_10:                              #   Parent Loop BB14_5 Depth=1
                                        #     Parent Loop BB14_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$ra, $s4, -4
	bge	$s1, $ra, .LBB14_8
# %bb.11:                               #   in Loop: Header=BB14_10 Depth=3
	fld.d	$fa1, $s6, -8
	addi.d	$s3, $s3, -1
	st.w	$ra, $s4, 0
	fst.d	$fa1, $s6, 0
	addi.d	$s6, $s6, -8
	addi.d	$ra, $s3, 1
	addi.d	$s4, $s4, -4
	blt	$a3, $ra, .LBB14_10
	b	.LBB14_7
	.p2align	4, , 16
.LBB14_12:                              # %_ZN6miniFE20sort_with_companionsIidEEvlPT_PT0_.exit
                                        #   in Loop: Header=BB14_5 Depth=1
	move	$t5, $t3
	blt	$t4, $a3, .LBB14_4
# %bb.13:                               # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader
                                        #   in Loop: Header=BB14_5 Depth=1
	move	$t5, $t3
	.p2align	4, , 16
.LBB14_14:                              # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i.i
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t6, $t4, 1
	slli.d	$t7, $t6, 2
	ldx.w	$t7, $t5, $t7
	alsl.d	$t8, $t6, $t5, 2
	sltu	$t7, $t7, $s7
	addi.d	$t8, $t8, 4
	nor	$s1, $t6, $zero
	add.d	$t4, $t4, $s1
	maskeqz	$t4, $t4, $t7
	masknez	$t6, $t6, $t7
	or	$t4, $t4, $t6
	maskeqz	$t6, $t8, $t7
	masknez	$t5, $t5, $t7
	or	$t5, $t6, $t5
	bgtz	$t4, .LBB14_14
	b	.LBB14_4
.LBB14_15:                              # %._crit_edge
	addi.w	$a0, $zero, -1
	bge	$a0, $s5, .LBB14_89
# %bb.16:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i139
	beqz	$s5, .LBB14_21
# %bb.17:
	slli.d	$s3, $s5, 2
.Ltmp869:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp870:
# %bb.18:                               # %.noexc144
	move	$s1, $a0
	alsl.d	$s4, $s5, $a0, 2
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $a0, 4
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	bne	$s5, $a1, .LBB14_22
# %bb.19:
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB14_23
.LBB14_20:
	move	$s0, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$s1, $zero
	move	$s3, $zero
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	b	.LBB14_28
.LBB14_21:
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$s1, $zero
	move	$s3, $zero
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	b	.LBB14_26
.LBB14_22:                              # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a2, $s3, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
.LBB14_23:
	slli.d	$s4, $s5, 3
.Ltmp871:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp872:
# %bb.24:                               # %.noexc149
	move	$s3, $a0
	alsl.d	$a0, $s5, $a0, 3
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$zero, $s3, 0
	beq	$s5, $a0, .LBB14_26
# %bb.25:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a0, $s3, 8
	addi.d	$a2, $s4, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB14_26:                              # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
	addi.d	$s5, $s7, 1
	srli.d	$a0, $s5, 61
	bnez	$a0, .LBB14_91
# %bb.27:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i150
	beqz	$s5, .LBB14_76
.LBB14_28:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i150.thread
	slli.d	$s6, $s5, 2
.Ltmp879:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp880:
# %bb.29:                               # %.noexc156
	move	$s4, $a0
	alsl.d	$a0, $s5, $a0, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.w	$zero, $s4, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB14_31
# %bb.30:                               # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit157.thread463
	addi.d	$a0, $s4, 4
	addi.d	$a2, $s6, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB14_77
.LBB14_31:
	move	$a0, $zero
.LBB14_32:                              # %._crit_edge298
	ld.d	$a2, $s2, 40
	ld.d	$a1, $s2, 32
	sub.d	$a3, $a2, $a1
	srai.d	$a3, $a3, 2
	stx.w	$a0, $s4, $s8
	bgeu	$a3, $s5, .LBB14_35
# %bb.33:
	addi.d	$s6, $s2, 32
	sub.d	$a1, $s5, $a3
.Ltmp882:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp883:
# %bb.34:                               # %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge
	ld.d	$a1, $s6, 0
	b	.LBB14_38
.LBB14_35:
	bgeu	$s5, $a3, .LBB14_38
# %bb.36:
	alsl.d	$a0, $s5, $a1, 2
	beq	$a2, $a0, .LBB14_38
# %bb.37:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a0, $s2, 40
.LBB14_38:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB14_44
# %bb.39:                               # %.lr.ph308
	move	$a0, $zero
	move	$s6, $zero
	ld.d	$a2, $s2, 80
	ld.d	$a3, $s2, 104
	ori	$a4, $zero, 1
	sltu	$a5, $a4, $s7
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $s7, $a5
	or	$a4, $a5, $a4
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	b	.LBB14_41
	.p2align	4, , 16
.LBB14_40:                              # %._crit_edge304
                                        #   in Loop: Header=BB14_41 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a4, .LBB14_45
.LBB14_41:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_43 Depth 2
	slli.d	$a5, $a0, 2
	stx.w	$s6, $a1, $a5
	alsl.d	$a6, $a0, $fp, 3
	slli.d	$a5, $a0, 3
	ldx.w	$a5, $fp, $a5
	ld.w	$a7, $a6, 4
	bge	$a5, $a7, .LBB14_40
# %bb.42:                               # %.lr.ph303.preheader
                                        #   in Loop: Header=BB14_41 Depth=1
	addi.d	$a6, $a6, 4
	alsl.d	$a7, $s6, $a2, 2
	alsl.d	$t0, $s6, $a3, 3
	alsl.d	$t1, $a5, $a2, 2
	alsl.d	$t2, $a5, $a3, 3
	.p2align	4, , 16
.LBB14_43:                              # %.lr.ph303
                                        #   Parent Loop BB14_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 0
	fld.d	$fa0, $t2, 0
	st.w	$t3, $a7, 0
	fst.d	$fa0, $t0, 0
	addi.d	$a5, $a5, 1
	ld.w	$t3, $a6, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 8
	addi.w	$s6, $s6, 1
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 8
	blt	$a5, $t3, .LBB14_43
	b	.LBB14_40
.LBB14_44:
	move	$s6, $zero
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
.LBB14_45:                              # %._crit_edge309
	sub.d	$a0, $t4, $s1
	srai.d	$a3, $a0, 2
	add.d	$a0, $a3, $s6
	stx.w	$s6, $a1, $s8
	bgeu	$s6, $a0, .LBB14_49
# %bb.46:                               # %.lr.ph313
	ld.d	$a2, $s2, 80
	ld.d	$a6, $s2, 104
	ori	$a7, $zero, 10
	slli.d	$a5, $s6, 2
	slli.d	$a4, $s6, 3
	move	$a1, $s6
	bgeu	$a3, $a7, .LBB14_71
.LBB14_47:                              # %scalar.ph511.preheader
	slli.d	$a7, $a1, 3
	alsl.d	$a3, $a1, $a6, 3
	slli.d	$a6, $a1, 2
	alsl.d	$a2, $a1, $a2, 2
	sub.d	$a5, $a6, $a5
	add.d	$a5, $s1, $a5
	sub.d	$a4, $a7, $a4
	add.d	$a4, $s3, $a4
	.p2align	4, , 16
.LBB14_48:                              # %scalar.ph511
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	fld.d	$fa0, $a4, 0
	st.w	$a6, $a2, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 8
	bltu	$a1, $a0, .LBB14_48
.LBB14_49:                              # %._crit_edge314
	ld.d	$a1, $s2, 64
	ld.d	$a0, $s2, 56
	sub.d	$a2, $a1, $a0
	srai.d	$a2, $a2, 2
	bgeu	$a2, $s5, .LBB14_52
# %bb.50:
	addi.d	$s2, $s2, 56
	sub.d	$a1, $s5, $a2
.Ltmp885:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp886:
# %bb.51:                               # %._ZNSt6vectorIiSaIiEE6resizeEm.exit162_crit_edge
	ld.d	$a0, $s2, 0
	b	.LBB14_55
.LBB14_52:
	bgeu	$s5, $a2, .LBB14_55
# %bb.53:
	alsl.d	$a2, $s5, $a0, 2
	beq	$a1, $a2, .LBB14_55
# %bb.54:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i160
	st.d	$a2, $s2, 64
.LBB14_55:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit162
	move	$a1, $zero
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $s5
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s5, $a3
	ori	$a4, $zero, 8
	or	$a2, $a3, $a2
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	bltu	$s5, $a4, .LBB14_60
# %bb.56:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit162
	sub.d	$a3, $a0, $s4
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB14_60
# %bb.57:                               # %vector.ph530
	move	$a1, $a2
	bstrins.d	$a1, $zero, 2, 0
	vreplgr2vr.w	$vr0, $s6
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s4, 16
	move	$a5, $a1
	.p2align	4, , 16
.LBB14_58:                              # %vector.body533
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB14_58
# %bb.59:                               # %middle.block538
	beq	$s5, $a1, .LBB14_62
.LBB14_60:                              # %scalar.ph528.preheader
	sub.d	$a2, $a2, $a1
	alsl.d	$a3, $a1, $s4, 2
	alsl.d	$a0, $a1, $a0, 2
	.p2align	4, , 16
.LBB14_61:                              # %scalar.ph528
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a3, 0
	add.d	$a1, $a1, $s6
	st.w	$a1, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB14_61
.LBB14_62:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit164
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB14_64
# %bb.63:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_64:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit
	beqz	$s1, .LBB14_66
# %bb.65:
	sub.d	$a1, $s2, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_66:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit167
	beqz	$s0, .LBB14_68
# %bb.67:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_68:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit169
	beqz	$fp, .LBB14_70
# %bb.69:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB14_70:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit171
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
.LBB14_71:                              # %vector.memcheck506
	alsl.d	$a1, $s6, $a2, 2
	sub.d	$a7, $a1, $s1
	ori	$t0, $zero, 8
	move	$a1, $s6
	bltu	$a7, $t0, .LBB14_47
# %bb.72:                               # %vector.memcheck506
	alsl.d	$a1, $s6, $a6, 3
	sub.d	$a7, $a1, $s3
	ori	$t0, $zero, 16
	move	$a1, $s6
	bltu	$a7, $t0, .LBB14_47
# %bb.73:                               # %vector.ph513
	move	$a7, $a3
	bstrins.d	$a7, $zero, 0, 0
	add.d	$a1, $a7, $s6
	add.d	$t0, $a6, $a4
	add.d	$t1, $a2, $a5
	move	$t2, $a7
	move	$t3, $s3
	move	$t4, $s1
	.p2align	4, , 16
.LBB14_74:                              # %vector.body516
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t5, $t4, 0
	vld	$vr0, $t3, 0
	st.d	$t5, $t1, 0
	vst	$vr0, $t0, 0
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 16
	addi.d	$t2, $t2, -2
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB14_74
# %bb.75:                               # %middle.block522
	bne	$a3, $a7, .LBB14_47
	b	.LBB14_49
.LBB14_76:
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$s4, $zero
	move	$s5, $zero
.LBB14_77:                              # %.lr.ph297
	move	$a1, $zero
	move	$a0, $zero
	ld.d	$a2, $s2, 80
	ld.d	$a3, $s2, 104
	ori	$a4, $zero, 1
	sltu	$a5, $a4, $s7
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $s7, $a5
	or	$a4, $a5, $a4
	ori	$a5, $zero, 6
	ori	$a6, $zero, 8
	ori	$a7, $zero, 16
	b	.LBB14_79
	.p2align	4, , 16
.LBB14_78:                              # %._crit_edge293
                                        #   in Loop: Header=BB14_79 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a4, .LBB14_32
.LBB14_79:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_86 Depth 2
                                        #     Child Loop BB14_82 Depth 2
	alsl.d	$t1, $a1, $s0, 3
	slli.d	$t0, $a1, 3
	ldx.w	$t0, $s0, $t0
	ld.w	$t1, $t1, 4
	slli.d	$t2, $a1, 2
	stx.w	$a0, $s4, $t2
	bge	$t0, $t1, .LBB14_78
# %bb.80:                               # %.lr.ph292.preheader
                                        #   in Loop: Header=BB14_79 Depth=1
	sub.d	$t2, $t1, $t0
	addi.w	$a0, $a0, 0
	bgeu	$t2, $a5, .LBB14_83
.LBB14_81:                              # %.lr.ph292.preheader542
                                        #   in Loop: Header=BB14_79 Depth=1
	alsl.d	$t2, $a0, $s1, 2
	alsl.d	$t3, $a0, $s3, 3
	alsl.d	$t4, $t0, $a2, 2
	alsl.d	$t5, $t0, $a3, 3
	sub.d	$t6, $t1, $t0
	add.d	$a0, $a0, $t1
	sub.d	$a0, $a0, $t0
	.p2align	4, , 16
.LBB14_82:                              # %.lr.ph292
                                        #   Parent Loop BB14_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $t4, 0
	fld.d	$fa0, $t5, 0
	st.w	$t0, $t2, 0
	fst.d	$fa0, $t3, 0
	addi.d	$t2, $t2, 4
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	bnez	$t6, .LBB14_82
	b	.LBB14_78
	.p2align	4, , 16
.LBB14_83:                              # %vector.memcheck
                                        #   in Loop: Header=BB14_79 Depth=1
	alsl.d	$t3, $a0, $s1, 2
	alsl.d	$t4, $t0, $a2, 2
	sub.d	$t3, $t3, $t4
	bltu	$t3, $a6, .LBB14_81
# %bb.84:                               # %vector.memcheck
                                        #   in Loop: Header=BB14_79 Depth=1
	alsl.d	$t3, $a0, $s3, 3
	alsl.d	$t4, $t0, $a3, 3
	sub.d	$t3, $t3, $t4
	bltu	$t3, $a7, .LBB14_81
# %bb.85:                               # %vector.ph
                                        #   in Loop: Header=BB14_79 Depth=1
	slli.d	$t7, $a0, 2
	slli.d	$t5, $t0, 2
	slli.d	$t6, $a0, 3
	slli.d	$t4, $t0, 3
	move	$t3, $t2
	bstrins.d	$t3, $zero, 0, 0
	add.d	$a0, $t3, $a0
	add.d	$t0, $t3, $t0
	add.d	$t4, $a3, $t4
	add.d	$t5, $a2, $t5
	add.d	$t6, $s3, $t6
	add.d	$t7, $s1, $t7
	move	$t8, $t3
	.p2align	4, , 16
.LBB14_86:                              # %vector.body
                                        #   Parent Loop BB14_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $t5, 0
	vld	$vr0, $t4, 0
	st.d	$s6, $t7, 0
	vst	$vr0, $t6, 0
	addi.d	$t8, $t8, -2
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 8
	bnez	$t8, .LBB14_86
# %bb.87:                               # %middle.block
                                        #   in Loop: Header=BB14_79 Depth=1
	beq	$t2, $t3, .LBB14_78
	b	.LBB14_81
.LBB14_88:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB14_89:
.Ltmp876:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp877:
# %bb.90:                               # %.noexc143
.LBB14_91:
.Ltmp874:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp875:
# %bb.92:                               # %.noexc155
.LBB14_93:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit173.thread
.Ltmp873:
	move	$s2, $a0
	b	.LBB14_106
.LBB14_94:
.Ltmp887:
	move	$s2, $a0
	bnez	$s4, .LBB14_101
# %bb.95:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	bnez	$s3, .LBB14_105
.LBB14_96:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit173
	bnez	$s1, .LBB14_106
.LBB14_97:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit175
	bnez	$s0, .LBB14_107
.LBB14_98:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit177
	bnez	$fp, .LBB14_108
.LBB14_99:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit179
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_100:                             # %.thread
.Ltmp884:
	move	$s2, $a0
.LBB14_101:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB14_96
	b	.LBB14_105
.LBB14_102:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit177.thread
.Ltmp868:
	move	$s2, $a0
	b	.LBB14_108
.LBB14_103:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit175.thread
.Ltmp878:
	move	$s2, $a0
	b	.LBB14_107
.LBB14_104:
.Ltmp881:
	move	$s2, $a0
	beqz	$s3, .LBB14_96
.LBB14_105:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB14_97
.LBB14_106:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB14_98
.LBB14_107:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB14_99
.LBB14_108:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_, .Lfunc_end14-_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,"aG",@progbits,_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp866-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp866
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp866-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp867-.Ltmp866              #   Call between .Ltmp866 and .Ltmp867
	.uleb128 .Ltmp868-.Lfunc_begin9         #     jumps to .Ltmp868
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp867-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp869-.Ltmp867              #   Call between .Ltmp867 and .Ltmp869
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp869-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp870-.Ltmp869              #   Call between .Ltmp869 and .Ltmp870
	.uleb128 .Ltmp878-.Lfunc_begin9         #     jumps to .Ltmp878
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp870-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp871-.Ltmp870              #   Call between .Ltmp870 and .Ltmp871
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp871-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp872-.Ltmp871              #   Call between .Ltmp871 and .Ltmp872
	.uleb128 .Ltmp873-.Lfunc_begin9         #     jumps to .Ltmp873
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp872-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp879-.Ltmp872              #   Call between .Ltmp872 and .Ltmp879
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp879-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Ltmp880-.Ltmp879              #   Call between .Ltmp879 and .Ltmp880
	.uleb128 .Ltmp881-.Lfunc_begin9         #     jumps to .Ltmp881
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp880-.Lfunc_begin9         # >> Call Site 9 <<
	.uleb128 .Ltmp882-.Ltmp880              #   Call between .Ltmp880 and .Ltmp882
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp882-.Lfunc_begin9         # >> Call Site 10 <<
	.uleb128 .Ltmp883-.Ltmp882              #   Call between .Ltmp882 and .Ltmp883
	.uleb128 .Ltmp884-.Lfunc_begin9         #     jumps to .Ltmp884
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp885-.Lfunc_begin9         # >> Call Site 11 <<
	.uleb128 .Ltmp886-.Ltmp885              #   Call between .Ltmp885 and .Ltmp886
	.uleb128 .Ltmp887-.Lfunc_begin9         #     jumps to .Ltmp887
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp886-.Lfunc_begin9         # >> Call Site 12 <<
	.uleb128 .Ltmp876-.Ltmp886              #   Call between .Ltmp886 and .Ltmp876
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp876-.Lfunc_begin9         # >> Call Site 13 <<
	.uleb128 .Ltmp877-.Ltmp876              #   Call between .Ltmp876 and .Ltmp877
	.uleb128 .Ltmp878-.Lfunc_begin9         #     jumps to .Ltmp878
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp874-.Lfunc_begin9         # >> Call Site 14 <<
	.uleb128 .Ltmp875-.Ltmp874              #   Call between .Ltmp874 and .Ltmp875
	.uleb128 .Ltmp881-.Lfunc_begin9         #     jumps to .Ltmp881
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp875-.Lfunc_begin9         # >> Call Site 15 <<
	.uleb128 .Lfunc_end14-.Ltmp875          #   Call between .Ltmp875 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
.LCPI15_0:
	.dword	0x3cb0000000000000              # double 2.2204460492503131E-16
.LCPI15_1:
	.dword	0x4059000000000000              # double 100
.LCPI15_2:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.section	.text._ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,"axG",@progbits,_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,comdat
	.weak	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
	.p2align	5
	.type	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,@function
_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd: # @_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 216                  # 8-byte Folded Spill
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
	ld.d	$s1, $sp, 368
	st.d	$a7, $sp, 200                   # 8-byte Folded Spill
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	move	$s6, $a4
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	move	$s2, $a1
	move	$s7, $a0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 0
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	beqz	$a0, .LBB15_10
# %bb.1:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 2
	addi.w	$fp, $a1, 0
	addi.w	$s0, $zero, -1
	bge	$s0, $fp, .LBB15_186
# %bb.2:                                # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	ld.w	$s4, $s7, 128
	slli.d	$a0, $a0, 30
	srai.d	$s2, $a0, 32
	slli.d	$s3, $s2, 3
	beqz	$fp, .LBB15_13
# %bb.3:                                # %.noexc7.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	alsl.d	$s1, $s2, $a0, 3
	st.d	$zero, $a0, 0
	ori	$a1, $zero, 1
	addi.d	$s8, $a0, 8
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	beq	$fp, $a1, .LBB15_5
# %bb.4:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i
	addi.d	$a2, $s3, -8
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s8, $s1
.LBB15_5:                               # %.lr.ph.i
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	bge	$s0, $s4, .LBB15_14
.LBB15_6:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i136
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	beqz	$s4, .LBB15_18
# %bb.7:                                # %.noexc7.i138
	slli.d	$s1, $s4, 3
.Ltmp888:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp889:
# %bb.8:                                # %.noexc143
	move	$s0, $a0
	alsl.d	$s6, $s4, $a0, 3
	st.d	$zero, $a0, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $a0, 8
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	bne	$s4, $a1, .LBB15_20
# %bb.9:
	move	$s6, $a0
	b	.LBB15_21
.LBB15_10:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	ori	$a2, $zero, 92
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a1, $a0, %pc_lo12(.L.str.105)
	ori	$a2, $zero, 78
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB15_187
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB15_16
# %bb.12:
	ld.bu	$a0, $fp, 67
	b	.LBB15_17
.LBB15_13:
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	move	$s8, $zero
	move	$s5, $zero
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	blt	$s0, $s4, .LBB15_6
.LBB15_14:                              # %.noexc.i142
.Ltmp988:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp989:
# %bb.15:                               # %.noexc
.LBB15_16:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB15_17:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a2, $a1, %got_pc_lo12(_ZSt4cerr)
	ext.w.b	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB15_18:
	move	$s6, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	move	$s0, $zero
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	bnez	$fp, .LBB15_22
.LBB15_19:
	move	$s1, $zero
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$s6, $zero
	b	.LBB15_27
.LBB15_20:                              # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i139
	addi.d	$a2, $s1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB15_21:                              # %.lr.ph.i140
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	beqz	$fp, .LBB15_19
.LBB15_22:                              # %.noexc7.i147
.Ltmp890:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp891:
# %bb.23:                               # %.noexc153
	move	$s1, $a0
	alsl.d	$s6, $s2, $a0, 3
	st.d	$zero, $a0, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $a0, 8
	bne	$fp, $a1, .LBB15_25
# %bb.24:
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB15_26
.LBB15_25:                              # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i148
	addi.d	$a2, $s3, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
.LBB15_26:                              # %.lr.ph.i149
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB15_27:                              # %_ZN6miniFE6VectorIdiiEC2Eii.exit154
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
.Ltmp893:
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 192                  # 8-byte Folded Spill
.Ltmp894:
# %bb.28:
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	ori	$s2, $zero, 1
	sub.d	$a1, $a1, $a0
	srli.d	$a3, $a1, 3
	addi.w	$a1, $a3, 0
	blt	$a1, $s2, .LBB15_36
# %bb.29:                               # %.lr.ph.preheader.i
	bstrpick.d	$a1, $a3, 30, 0
	ori	$a4, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a4, .LBB15_34
# %bb.30:                               # %.lr.ph.preheader.i
	sub.d	$a4, $s0, $a0
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB15_34
# %bb.31:                               # %vector.ph
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s0, 16
	addi.d	$a4, $a0, 16
	vrepli.b	$vr0, 0
	move	$a5, $a2
	.p2align	4, , 16
.LBB15_32:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vfmul.d	$vr3, $vr1, $vr0
	vfmul.d	$vr4, $vr2, $vr0
	vfadd.d	$vr1, $vr1, $vr3
	vfadd.d	$vr2, $vr2, $vr4
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB15_32
# %bb.33:                               # %middle.block
	beq	$a1, $a2, .LBB15_36
.LBB15_34:                              # %.lr.ph.i155.preheader
	sub.d	$a1, $a2, $a1
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB15_35:                              # %.lr.ph.i155
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fmul.d	$fa2, $fa1, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB15_35
.LBB15_36:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit
.Ltmp895:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
.Ltmp896:
# %bb.37:
.Ltmp897:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp898:
# %bb.38:
	fmov.d	$fs4, $fa0
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srli.d	$a3, $a0, 2
	addi.w	$a0, $a3, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB15_44
# %bb.39:                               # %.lr.ph34.preheader.i
	ld.d	$a0, $s7, 32
	ld.d	$a1, $s7, 80
	ld.d	$a2, $s7, 104
	ld.w	$t1, $a0, 0
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 30, 0
	movgr2fr.d	$fa0, $zero
	b	.LBB15_41
	.p2align	4, , 16
.LBB15_40:                              # %._crit_edge.i
                                        #   in Loop: Header=BB15_41 Depth=1
	alsl.d	$a4, $a4, $s1, 3
	fst.d	$fa1, $a4, 0
	move	$t1, $a6
	move	$a4, $a5
	beq	$a5, $a3, .LBB15_44
.LBB15_41:                              # %.lr.ph34.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_43 Depth 2
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $s1, $a5
	addi.d	$a5, $a4, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	fmul.d	$fa1, $fa1, $fa0
	bge	$t1, $a6, .LBB15_40
# %bb.42:                               # %.lr.ph.preheader.i156
                                        #   in Loop: Header=BB15_41 Depth=1
	sub.d	$a7, $a6, $t1
	alsl.d	$t0, $t1, $a1, 2
	alsl.d	$t1, $t1, $a2, 3
	.p2align	4, , 16
.LBB15_43:                              # %.lr.ph.i158
                                        #   Parent Loop BB15_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	fld.d	$fa2, $t1, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa3, $s0, $t2
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	bnez	$a7, .LBB15_43
	b	.LBB15_40
.LBB15_44:                              # %_ZN6miniFE14matvec_overlapINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7_.exit
.Ltmp899:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp900:
# %bb.45:
.Ltmp901:
	fmov.d	$fs5, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp902:
# %bb.46:
	fmov.d	$fs6, $fa0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srli.d	$a3, $a1, 3
	addi.w	$a1, $a3, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB15_51
# %bb.47:                               # %.lr.ph.preheader.i163
	bstrpick.d	$a1, $a3, 30, 0
	ori	$a2, $zero, 6
	bgeu	$a1, $a2, .LBB15_163
# %bb.48:
	move	$a2, $zero
.LBB15_49:                              # %.lr.ph.i165.preheader
	sub.d	$a1, $a2, $a1
	alsl.d	$a3, $a2, $s5, 3
	alsl.d	$a4, $a2, $s1, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB15_50:                              # %.lr.ph.i165
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a4, 0
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB15_50
.LBB15_51:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit169
.Ltmp903:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp904:
# %bb.52:
.Ltmp905:
	fmov.d	$fs7, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp906:
# %bb.53:
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs3, $zero
	sub.d	$a0, $s8, $s5
	srli.d	$s4, $a0, 3
	addi.w	$fp, $s4, 0
	ori	$a0, $zero, 1
	fmov.d	$fs1, $fs3
	blt	$fp, $a0, .LBB15_56
# %bb.54:                               # %.lr.ph.preheader.i171
	bstrpick.d	$a0, $s4, 30, 0
	movgr2fr.d	$fs1, $zero
	move	$a1, $s5
	.p2align	4, , 16
.LBB15_55:                              # %.lr.ph.i173
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs1, $fs1, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB15_55
.LBB15_56:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit
.Ltmp907:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp908:
# %bb.57:
	fmov.d	$fs2, $fa0
	fsqrt.d	$fa0, $fs1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB15_188
.LBB15_58:                              # %.split
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
.Ltmp909:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.106)
	addi.d	$a1, $a1, %pc_lo12(.L.str.106)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp910:
# %bb.59:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fld.d	$fa0, $a0, 0
.Ltmp911:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp912:
# %bb.60:                               # %_ZNSolsEd.exit
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s8, $a0, 240
	beqz	$s8, .LBB15_189
# %bb.61:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i272
	ld.bu	$a0, $s8, 56
	beqz	$a0, .LBB15_63
# %bb.62:
	ld.bu	$a0, $s8, 67
	b	.LBB15_65
.LBB15_63:
.Ltmp913:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp914:
# %bb.64:                               # %.noexc276
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 48
.Ltmp915:
	ori	$a1, $zero, 10
	move	$a0, $s8
	jirl	$ra, $a2, 0
.Ltmp916:
.LBB15_65:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp917:
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp918:
# %bb.66:                               # %.noexc278
.Ltmp919:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp920:
# %bb.67:                               # %_ZNSolsEPFRSoS_E.exit.preheader
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	fld.d	$fa0, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 168                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fsub.d	$fa1, $fs5, $fs4
	fadd.d	$fa0, $fa0, $fs3
	fsub.d	$fa2, $fs7, $fs6
	fsub.d	$fa3, $fs2, $fs0
	movgr2fr.d	$fs5, $zero
	fadd.d	$fa1, $fa1, $fs3
	fst.d	$fa1, $sp, 192                  # 8-byte Folded Spill
	fadd.d	$fs7, $fa0, $fa2
	ori	$s5, $zero, 1
	fadd.d	$fa0, $fa3, $fs5
	fst.d	$fa0, $sp, 208                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	blt	$a1, $s5, .LBB15_161
# %bb.68:                               # %.lr.ph
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1639
	mul.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 34
	add.d	$a0, $a0, $a1
	slti	$a1, $a0, 50
	ori	$a2, $zero, 50
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$s6, $s4, 30, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s1
	srli.d	$a1, $a0, 3
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 33, 3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s0
	srli.d	$a1, $a0, 3
	bstrpick.d	$a0, $a0, 33, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 30, 2
	slli.d	$s2, $a0, 2
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $s6
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $s1, 16
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI15_0)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	fld.d	$fa0, $a0, %pc_lo12(.LCPI15_0)
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	addi.w	$a0, $a1, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB15_69:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_78 Depth 2
                                        #     Child Loop BB15_92 Depth 2
                                        #     Child Loop BB15_95 Depth 2
                                        #     Child Loop BB15_85 Depth 2
                                        #     Child Loop BB15_88 Depth 2
                                        #     Child Loop BB15_116 Depth 2
                                        #       Child Loop BB15_118 Depth 3
                                        #     Child Loop BB15_123 Depth 2
                                        #     Child Loop BB15_129 Depth 2
                                        #     Child Loop BB15_133 Depth 2
                                        #     Child Loop BB15_156 Depth 2
                                        #     Child Loop BB15_144 Depth 2
                                        #     Child Loop BB15_149 Depth 2
                                        #     Child Loop BB15_152 Depth 2
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	fld.d	$fa0, $a1, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_161
# %bb.70:                               #   in Loop: Header=BB15_69 Depth=1
	move	$s8, $a0
	bne	$a0, $s5, .LBB15_75
# %bb.71:                               #   in Loop: Header=BB15_69 Depth=1
.Ltmp930:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp931:
# %bb.72:                               #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fs0, $fa0
	blt	$fp, $s5, .LBB15_89
# %bb.73:                               # %.lr.ph.i183.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s6, $a0, .LBB15_84
# %bb.74:                               #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $zero
	b	.LBB15_87
	.p2align	4, , 16
.LBB15_75:                              #   in Loop: Header=BB15_69 Depth=1
.Ltmp921:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp922:
# %bb.76:                               #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs6, $zero
	blt	$fp, $s5, .LBB15_79
# %bb.77:                               # %.lr.ph.i192.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $s6
	.p2align	4, , 16
.LBB15_78:                              # %.lr.ph.i192
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB15_78
.LBB15_79:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit197
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp923:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp924:
# %bb.80:                               #   in Loop: Header=BB15_69 Depth=1
.Ltmp925:
	fmov.d	$fs2, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp926:
# %bb.81:                               #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fs3, $fa0
	blt	$fp, $s5, .LBB15_96
# %bb.82:                               # %.lr.ph.i201.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	fdiv.d	$fa0, $fs6, $fs1
	ori	$a0, $zero, 4
	bgeu	$s6, $a0, .LBB15_91
# %bb.83:                               #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $zero
	b	.LBB15_94
.LBB15_84:                              # %vector.body504.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s2
	vld	$vr4, $sp, 0                    # 16-byte Folded Reload
	.p2align	4, , 16
.LBB15_85:                              # %vector.body504
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, -16
	vld	$vr1, $a0, 0
	vfmul.d	$vr2, $vr0, $vr4
	vfmul.d	$vr3, $vr1, $vr4
	vfadd.d	$vr0, $vr0, $vr2
	vfadd.d	$vr1, $vr1, $vr3
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB15_85
# %bb.86:                               # %middle.block509
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $s2
	beq	$s6, $s2, .LBB15_89
.LBB15_87:                              # %.lr.ph.i183.preheader531
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $s0, 3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB15_88:                              # %.lr.ph.i183
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, 0
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB15_88
.LBB15_89:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit187
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp932:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp933:
# %bb.90:                               #   in Loop: Header=BB15_69 Depth=1
	fsub.d	$fs4, $fa0, $fs0
	b	.LBB15_98
.LBB15_91:                              # %vector.ph514
                                        #   in Loop: Header=BB15_69 Depth=1
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s2
	.p2align	4, , 16
.LBB15_92:                              # %vector.body519
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a1, -16
	vst	$vr3, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB15_92
# %bb.93:                               # %middle.block526
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $s2
	beq	$s6, $s2, .LBB15_96
.LBB15_94:                              # %.lr.ph.i201.preheader532
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $s0, 3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB15_95:                              # %.lr.ph.i201
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB15_95
.LBB15_96:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit205
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp927:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp928:
# %bb.97:                               #   in Loop: Header=BB15_69 Depth=1
	fsub.d	$fa1, $fs2, $fs0
	fld.d	$fa2, $sp, 208                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 208                  # 8-byte Folded Spill
	fsub.d	$fs4, $fa0, $fs3
	fmov.d	$fs1, $fs6
.LBB15_98:                              #   in Loop: Header=BB15_69 Depth=1
	fsqrt.d	$fa0, $fs1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB15_158
# %bb.99:                               # %.split700
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beq	$s8, $a0, .LBB15_101
.LBB15_100:                             # %.split700
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	mod.wu	$a0, $s8, $a0
	bnez	$a0, .LBB15_112
.LBB15_101:                             #   in Loop: Header=BB15_69 Depth=1
.Ltmp934:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a1, $a1, %pc_lo12(.L.str.107)
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp935:
# %bb.102:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp936:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp937:
# %bb.103:                              #   in Loop: Header=BB15_69 Depth=1
.Ltmp938:
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	ori	$a2, $zero, 14
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp939:
# %bb.104:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fld.d	$fa0, $a0, 0
.Ltmp940:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp941:
# %bb.105:                              # %_ZNSolsEd.exit211
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB15_184
# %bb.106:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i282
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB15_108
# %bb.107:                              #   in Loop: Header=BB15_69 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB15_110
.LBB15_108:                             #   in Loop: Header=BB15_69 Depth=1
.Ltmp942:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp943:
# %bb.109:                              # %.noexc287
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp944:
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp945:
.LBB15_110:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i284
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp946:
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp947:
# %bb.111:                              # %.noexc289
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp948:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp949:
.LBB15_112:                             # %_ZNSolsEPFRSoS_E.exit213
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp951:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp952:
# %bb.113:                              #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fs0, $fa0
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srli.d	$a3, $a0, 2
	addi.w	$a0, $a3, 0
	blt	$a0, $s5, .LBB15_119
# %bb.114:                              # %.lr.ph34.preheader.i214
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $s7, 32
	ld.d	$a1, $s7, 80
	ld.d	$a2, $s7, 104
	ld.w	$t1, $a0, 0
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 30, 0
	b	.LBB15_116
	.p2align	4, , 16
.LBB15_115:                             # %._crit_edge.i220
                                        #   in Loop: Header=BB15_116 Depth=2
	alsl.d	$a4, $a4, $s1, 3
	fst.d	$fa0, $a4, 0
	move	$t1, $a6
	move	$a4, $a5
	beq	$a5, $a3, .LBB15_119
.LBB15_116:                             # %.lr.ph34.i217
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_118 Depth 3
	slli.d	$a5, $a4, 3
	fldx.d	$fa0, $s1, $a5
	addi.d	$a5, $a4, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	fmul.d	$fa0, $fa0, $fs5
	bge	$t1, $a6, .LBB15_115
# %bb.117:                              # %.lr.ph.preheader.i223
                                        #   in Loop: Header=BB15_116 Depth=2
	sub.d	$a7, $a6, $t1
	alsl.d	$t0, $t1, $a1, 2
	alsl.d	$t1, $t1, $a2, 3
	.p2align	4, , 16
.LBB15_118:                             # %.lr.ph.i225
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	fld.d	$fa1, $t1, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa2, $s0, $t2
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	bnez	$a7, .LBB15_118
	b	.LBB15_115
	.p2align	4, , 16
.LBB15_119:                             # %_ZN6miniFE14matvec_overlapINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7_.exit230
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp953:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp954:
# %bb.120:                              #   in Loop: Header=BB15_69 Depth=1
.Ltmp955:
	fmov.d	$fs2, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp956:
# %bb.121:                              #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fs3, $fa0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	fmov.d	$fs6, $fs5
	blt	$s3, $s5, .LBB15_124
# %bb.122:                              # %.lr.ph.i235.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	fmov.d	$fs6, $fs5
	.p2align	4, , 16
.LBB15_123:                             # %.lr.ph.i235
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB15_123
.LBB15_124:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit240
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp957:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp958:
# %bb.125:                              #   in Loop: Header=BB15_69 Depth=1
	fadd.d	$fs7, $fs7, $fs4
	fsub.d	$fa1, $fs2, $fs0
	fld.d	$fa2, $sp, 192                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 192                  # 8-byte Folded Spill
	fsub.d	$fa0, $fa0, $fs3
	fld.d	$fa1, $sp, 168                  # 8-byte Folded Reload
	fcmp.cule.d	$fcc0, $fa1, $fs6
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 208                  # 8-byte Folded Spill
	bcnez	$fcc0, .LBB15_137
# %bb.126:                              #   in Loop: Header=BB15_69 Depth=1
	fcmp.clt.d	$fcc0, $fs6, $fs5
	bcnez	$fcc0, .LBB15_168
# %bb.127:                              #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fa0, $fs5
	blt	$s3, $s5, .LBB15_130
# %bb.128:                              # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	.p2align	4, , 16
.LBB15_129:                             # %.lr.ph.i.i
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB15_129
.LBB15_130:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit.i
                                        #   in Loop: Header=BB15_69 Depth=1
	fsqrt.d	$fs0, $fa0
	fcmp.cor.d	$fcc0, $fs0, $fs0
	bceqz	$fcc0, .LBB15_159
# %bb.131:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit.i.split
                                        #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fa0, $fs5
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $s5, .LBB15_134
.LBB15_132:                             # %.lr.ph.i10.i.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	.p2align	4, , 16
.LBB15_133:                             # %.lr.ph.i10.i
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB15_133
.LBB15_134:                             # %.loopexit
                                        #   in Loop: Header=BB15_69 Depth=1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB15_160
.LBB15_135:                             # %.loopexit.split
                                        #   in Loop: Header=BB15_69 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI15_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI15_1)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(.LCPI15_0)
	fabs.d	$fa3, $fs6
	fmul.d	$fa0, $fs0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fcmp.cult.d	$fcc0, $fa0, $fa3
	bceqz	$fcc0, .LBB15_168
# %bb.136:                              #   in Loop: Header=BB15_69 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI15_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI15_2)
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
.LBB15_137:                             #   in Loop: Header=BB15_69 Depth=1
.Ltmp959:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp960:
# %bb.138:                              #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fs2, $fa0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srli.d	$a2, $a1, 3
	addi.w	$a1, $a2, 0
	fdiv.d	$fa0, $fs1, $fs6
	blt	$a1, $s5, .LBB15_145
# %bb.139:                              # %.lr.ph.preheader.i246
                                        #   in Loop: Header=BB15_69 Depth=1
	bstrpick.d	$a1, $a2, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB15_142
# %bb.140:                              # %vector.memcheck480
                                        #   in Loop: Header=BB15_69 Depth=1
	alsl.d	$a3, $a1, $s0, 3
	bgeu	$a0, $a3, .LBB15_155
# %bb.141:                              # %vector.memcheck480
                                        #   in Loop: Header=BB15_69 Depth=1
	alsl.d	$a3, $a1, $a0, 3
	bgeu	$s0, $a3, .LBB15_155
.LBB15_142:                             #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $zero
.LBB15_143:                             # %.lr.ph.i248.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	sub.d	$a1, $a2, $a1
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB15_144:                             # %.lr.ph.i248
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a0, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB15_144
.LBB15_145:                             # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit252
                                        #   in Loop: Header=BB15_69 Depth=1
	blt	$fp, $s5, .LBB15_153
# %bb.146:                              # %.lr.ph.i256.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s6, $a0, .LBB15_148
# %bb.147:                              #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $zero
	b	.LBB15_151
	.p2align	4, , 16
.LBB15_148:                             # %vector.ph467
                                        #   in Loop: Header=BB15_69 Depth=1
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	move	$a2, $s2
	.p2align	4, , 16
.LBB15_149:                             # %vector.body470
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfsub.d	$vr2, $vr4, $vr2
	vfsub.d	$vr3, $vr5, $vr3
	vst	$vr2, $a0, -16
	vst	$vr3, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB15_149
# %bb.150:                              # %middle.block477
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $s2
	beq	$s6, $s2, .LBB15_153
.LBB15_151:                             # %.lr.ph.i256.preheader530
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $s1, 3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB15_152:                             # %.lr.ph.i256
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB15_152
.LBB15_153:                             # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit260
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp961:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp962:
# %bb.154:                              # %_ZNSolsEPFRSoS_E.exit
                                        #   in Loop: Header=BB15_69 Depth=1
	fsub.d	$fa0, $fa0, $fs2
	fadd.d	$fs7, $fs7, $fa0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.w	$s8, $a0, 0
	addi.w	$a0, $s8, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bne	$s8, $a1, .LBB15_69
	b	.LBB15_161
.LBB15_155:                             # %vector.ph484
                                        #   in Loop: Header=BB15_69 Depth=1
	bstrpick.d	$a2, $a2, 30, 2
	slli.d	$a2, $a2, 2
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a3, $a0, 16
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	move	$a5, $a2
	.p2align	4, , 16
.LBB15_156:                             # %vector.body489
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vld	$vr4, $a3, -16
	vld	$vr5, $a3, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a3, -16
	vst	$vr3, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB15_156
# %bb.157:                              # %middle.block496
                                        #   in Loop: Header=BB15_69 Depth=1
	beq	$a1, $a2, .LBB15_145
	b	.LBB15_143
.LBB15_158:                             # %call.sqrt701
                                        #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bne	$s8, $a0, .LBB15_100
	b	.LBB15_101
.LBB15_159:                             # %call.sqrt702
                                        #   in Loop: Header=BB15_69 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fs5
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$a0, $s5, .LBB15_132
	b	.LBB15_134
.LBB15_160:                             # %call.sqrt703
                                        #   in Loop: Header=BB15_69 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB15_135
.LBB15_161:                             # %_ZNSolsEPFRSoS_E.exit._crit_edge
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	fst.d	$fs7, $s4, 0
	fld.d	$fa0, $sp, 208                  # 8-byte Folded Reload
	fst.d	$fa0, $s4, 8
	fld.d	$fa0, $sp, 192                  # 8-byte Folded Reload
	fst.d	$fa0, $s4, 16
	st.d	$zero, $s4, 24
.Ltmp982:
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp983:
# %bb.162:
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	b	.LBB15_177
.LBB15_163:                             # %vector.memcheck445
	sub.d	$a5, $s5, $a0
	ori	$a4, $zero, 32
	move	$a2, $zero
	bltu	$a5, $a4, .LBB15_49
# %bb.164:                              # %vector.memcheck445
	sub.d	$a5, $s5, $s1
	bltu	$a5, $a4, .LBB15_49
# %bb.165:                              # %vector.ph452
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s5, 16
	addi.d	$a4, $s1, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB15_166:                             # %vector.body455
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vfsub.d	$vr0, $vr0, $vr2
	vfsub.d	$vr1, $vr1, $vr3
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB15_166
# %bb.167:                              # %middle.block462
	bne	$a1, $a2, .LBB15_49
	b	.LBB15_51
.LBB15_168:
.Ltmp964:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a1, $a0, %pc_lo12(.L.str.109)
	ori	$a2, $zero, 44
	move	$a0, $s2
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp965:
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
# %bb.169:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB15_191
# %bb.170:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i293
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB15_172
# %bb.171:
	ld.bu	$a0, $s2, 67
	b	.LBB15_174
.LBB15_172:
.Ltmp966:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp967:
# %bb.173:                              # %.noexc298
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp968:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp969:
.LBB15_174:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i295
.Ltmp970:
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a2, $a1, %got_pc_lo12(_ZSt4cerr)
	ext.w.b	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp971:
# %bb.175:                              # %.noexc300
.Ltmp972:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp973:
# %bb.176:                              # %_ZNSolsEPFRSoS_E.exit244
	fst.d	$fs7, $s4, 0
	fld.d	$fa0, $sp, 208                  # 8-byte Folded Reload
	fst.d	$fa0, $s4, 8
	fld.d	$fa0, $sp, 192                  # 8-byte Folded Reload
	fst.d	$fa0, $s4, 16
.Ltmp974:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp975:
.LBB15_177:                             # %.critedge
	fld.d	$fa1, $sp, 64                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s4, 32
	beqz	$s1, .LBB15_179
# %bb.178:
	sub.d	$a1, $s6, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_179:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit
	beqz	$s0, .LBB15_181
# %bb.180:
	sub.d	$a1, $s5, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_181:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit262
	beqz	$fp, .LBB15_183
# %bb.182:
	sub.d	$a1, $s3, $fp
	move	$a0, $fp
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB15_183:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit264
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB15_184:
.Ltmp979:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp980:
# %bb.185:                              # %.noexc286
.LBB15_186:                             # %.noexc.i
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB15_187:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB15_188:                             # %call.sqrt
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB15_58
.LBB15_189:
.Ltmp985:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp986:
# %bb.190:                              # %.noexc275
.LBB15_191:
.Ltmp976:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp977:
# %bb.192:                              # %.noexc297
.LBB15_193:
.Ltmp892:
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	move	$s2, $a0
	beqz	$s0, .LBB15_204
	b	.LBB15_207
.LBB15_194:
.Ltmp984:
	b	.LBB15_202
.LBB15_195:                             # %.loopexit.split-lp370
.Ltmp978:
	b	.LBB15_202
.LBB15_196:
.Ltmp990:
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	move	$s2, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_205
	b	.LBB15_208
.LBB15_197:                             # %.loopexit.split-lp
.Ltmp981:
	b	.LBB15_202
.LBB15_198:
.Ltmp929:
	b	.LBB15_202
.LBB15_199:
.Ltmp987:
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	b	.LBB15_202
.LBB15_200:                             # %.loopexit368
.Ltmp950:
	b	.LBB15_202
.LBB15_201:                             # %.loopexit369
.Ltmp963:
.LBB15_202:
	move	$s2, $a0
	bnez	$s1, .LBB15_206
# %bb.203:                              # %_ZN6miniFE6VectorIdiiED2Ev.exit266
	bnez	$s0, .LBB15_207
.LBB15_204:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit268
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bnez	$a0, .LBB15_208
.LBB15_205:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit270
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_206:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB15_204
.LBB15_207:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_205
.LBB15_208:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd, .Lfunc_end15-_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,"aG",@progbits,_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp888-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp888
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp888-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp889-.Ltmp888              #   Call between .Ltmp888 and .Ltmp889
	.uleb128 .Ltmp990-.Lfunc_begin10        #     jumps to .Ltmp990
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp889-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp988-.Ltmp889              #   Call between .Ltmp889 and .Ltmp988
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp988-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp989-.Ltmp988              #   Call between .Ltmp988 and .Ltmp989
	.uleb128 .Ltmp990-.Lfunc_begin10        #     jumps to .Ltmp990
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp989-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp890-.Ltmp989              #   Call between .Ltmp989 and .Ltmp890
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp890-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp891-.Ltmp890              #   Call between .Ltmp890 and .Ltmp891
	.uleb128 .Ltmp892-.Lfunc_begin10        #     jumps to .Ltmp892
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp891-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp893-.Ltmp891              #   Call between .Ltmp891 and .Ltmp893
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp893-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp920-.Ltmp893              #   Call between .Ltmp893 and .Ltmp920
	.uleb128 .Ltmp987-.Lfunc_begin10        #     jumps to .Ltmp987
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp930-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Ltmp924-.Ltmp930              #   Call between .Ltmp930 and .Ltmp924
	.uleb128 .Ltmp950-.Lfunc_begin10        #     jumps to .Ltmp950
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp925-.Lfunc_begin10        # >> Call Site 10 <<
	.uleb128 .Ltmp926-.Ltmp925              #   Call between .Ltmp925 and .Ltmp926
	.uleb128 .Ltmp929-.Lfunc_begin10        #     jumps to .Ltmp929
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp932-.Lfunc_begin10        # >> Call Site 11 <<
	.uleb128 .Ltmp933-.Ltmp932              #   Call between .Ltmp932 and .Ltmp933
	.uleb128 .Ltmp950-.Lfunc_begin10        #     jumps to .Ltmp950
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp927-.Lfunc_begin10        # >> Call Site 12 <<
	.uleb128 .Ltmp928-.Ltmp927              #   Call between .Ltmp927 and .Ltmp928
	.uleb128 .Ltmp929-.Lfunc_begin10        #     jumps to .Ltmp929
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp934-.Lfunc_begin10        # >> Call Site 13 <<
	.uleb128 .Ltmp949-.Ltmp934              #   Call between .Ltmp934 and .Ltmp949
	.uleb128 .Ltmp950-.Lfunc_begin10        #     jumps to .Ltmp950
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp951-.Lfunc_begin10        # >> Call Site 14 <<
	.uleb128 .Ltmp962-.Ltmp951              #   Call between .Ltmp951 and .Ltmp962
	.uleb128 .Ltmp963-.Lfunc_begin10        #     jumps to .Ltmp963
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp962-.Lfunc_begin10        # >> Call Site 15 <<
	.uleb128 .Ltmp982-.Ltmp962              #   Call between .Ltmp962 and .Ltmp982
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp982-.Lfunc_begin10        # >> Call Site 16 <<
	.uleb128 .Ltmp983-.Ltmp982              #   Call between .Ltmp982 and .Ltmp983
	.uleb128 .Ltmp984-.Lfunc_begin10        #     jumps to .Ltmp984
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp964-.Lfunc_begin10        # >> Call Site 17 <<
	.uleb128 .Ltmp975-.Ltmp964              #   Call between .Ltmp964 and .Ltmp975
	.uleb128 .Ltmp978-.Lfunc_begin10        #     jumps to .Ltmp978
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp975-.Lfunc_begin10        # >> Call Site 18 <<
	.uleb128 .Ltmp979-.Ltmp975              #   Call between .Ltmp975 and .Ltmp979
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp979-.Lfunc_begin10        # >> Call Site 19 <<
	.uleb128 .Ltmp980-.Ltmp979              #   Call between .Ltmp979 and .Ltmp980
	.uleb128 .Ltmp981-.Lfunc_begin10        #     jumps to .Ltmp981
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp980-.Lfunc_begin10        # >> Call Site 20 <<
	.uleb128 .Ltmp985-.Ltmp980              #   Call between .Ltmp980 and .Ltmp985
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp985-.Lfunc_begin10        # >> Call Site 21 <<
	.uleb128 .Ltmp986-.Ltmp985              #   Call between .Ltmp985 and .Ltmp986
	.uleb128 .Ltmp987-.Lfunc_begin10        #     jumps to .Ltmp987
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp976-.Lfunc_begin10        # >> Call Site 22 <<
	.uleb128 .Ltmp977-.Ltmp976              #   Call between .Ltmp976 and .Ltmp977
	.uleb128 .Ltmp978-.Lfunc_begin10        #     jumps to .Ltmp978
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp977-.Lfunc_begin10        # >> Call Site 23 <<
	.uleb128 .Lfunc_end15-.Ltmp977          #   Call between .Ltmp977 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
.LCPI16_0:
	.dword	0x3cb0000000000000              # double 2.2204460492503131E-16
.LCPI16_1:
	.dword	0x4059000000000000              # double 100
.LCPI16_2:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.section	.text._ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,"axG",@progbits,_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,comdat
	.weak	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
	.p2align	5
	.type	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,@function
_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd: # @_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 216                  # 8-byte Folded Spill
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
	ld.d	$s1, $sp, 368
	st.d	$a7, $sp, 200                   # 8-byte Folded Spill
	st.d	$a6, $sp, 144                   # 8-byte Folded Spill
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	move	$s6, $a4
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	move	$s2, $a1
	move	$s7, $a0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 0
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	beqz	$a0, .LBB16_10
# %bb.1:
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 2
	addi.w	$fp, $a1, 0
	addi.w	$s0, $zero, -1
	bge	$s0, $fp, .LBB16_186
# %bb.2:                                # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	ld.w	$s4, $s7, 128
	slli.d	$a0, $a0, 30
	srai.d	$s2, $a0, 32
	slli.d	$s3, $s2, 3
	beqz	$fp, .LBB16_13
# %bb.3:                                # %.noexc7.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	alsl.d	$s1, $s2, $a0, 3
	st.d	$zero, $a0, 0
	ori	$a1, $zero, 1
	addi.d	$s8, $a0, 8
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	beq	$fp, $a1, .LBB16_5
# %bb.4:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i
	addi.d	$a2, $s3, -8
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s8, $s1
.LBB16_5:                               # %.lr.ph.i
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	bge	$s0, $s4, .LBB16_14
.LBB16_6:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i136
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	beqz	$s4, .LBB16_18
# %bb.7:                                # %.noexc7.i138
	slli.d	$s1, $s4, 3
.Ltmp991:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp992:
# %bb.8:                                # %.noexc143
	move	$s0, $a0
	alsl.d	$s6, $s4, $a0, 3
	st.d	$zero, $a0, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $a0, 8
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	bne	$s4, $a1, .LBB16_20
# %bb.9:
	move	$s6, $a0
	b	.LBB16_21
.LBB16_10:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	ori	$a2, $zero, 92
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a1, $a0, %pc_lo12(.L.str.105)
	ori	$a2, $zero, 78
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB16_187
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB16_16
# %bb.12:
	ld.bu	$a0, $fp, 67
	b	.LBB16_17
.LBB16_13:
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	move	$s8, $zero
	move	$s5, $zero
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	blt	$s0, $s4, .LBB16_6
.LBB16_14:                              # %.noexc.i142
.Ltmp1091:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1092:
# %bb.15:                               # %.noexc
.LBB16_16:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB16_17:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a2, $a1, %got_pc_lo12(_ZSt4cerr)
	ext.w.b	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB16_18:
	move	$s6, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	move	$s0, $zero
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	bnez	$fp, .LBB16_22
.LBB16_19:
	move	$s1, $zero
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$s6, $zero
	b	.LBB16_27
.LBB16_20:                              # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i139
	addi.d	$a2, $s1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB16_21:                              # %.lr.ph.i140
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	beqz	$fp, .LBB16_19
.LBB16_22:                              # %.noexc7.i147
.Ltmp993:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp994:
# %bb.23:                               # %.noexc153
	move	$s1, $a0
	alsl.d	$s6, $s2, $a0, 3
	st.d	$zero, $a0, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $a0, 8
	bne	$fp, $a1, .LBB16_25
# %bb.24:
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB16_26
.LBB16_25:                              # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i148
	addi.d	$a2, $s3, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
.LBB16_26:                              # %.lr.ph.i149
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB16_27:                              # %_ZN6miniFE6VectorIdiiEC2Eii.exit154
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
.Ltmp996:
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 192                  # 8-byte Folded Spill
.Ltmp997:
# %bb.28:
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	ori	$s2, $zero, 1
	sub.d	$a1, $a1, $a0
	srli.d	$a3, $a1, 3
	addi.w	$a1, $a3, 0
	blt	$a1, $s2, .LBB16_36
# %bb.29:                               # %.lr.ph.preheader.i
	bstrpick.d	$a1, $a3, 30, 0
	ori	$a4, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a4, .LBB16_34
# %bb.30:                               # %.lr.ph.preheader.i
	sub.d	$a4, $s0, $a0
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB16_34
# %bb.31:                               # %vector.ph
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s0, 16
	addi.d	$a4, $a0, 16
	vrepli.b	$vr0, 0
	move	$a5, $a2
	.p2align	4, , 16
.LBB16_32:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vfmul.d	$vr3, $vr1, $vr0
	vfmul.d	$vr4, $vr2, $vr0
	vfadd.d	$vr1, $vr1, $vr3
	vfadd.d	$vr2, $vr2, $vr4
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB16_32
# %bb.33:                               # %middle.block
	beq	$a1, $a2, .LBB16_36
.LBB16_34:                              # %.lr.ph.i155.preheader
	sub.d	$a1, $a2, $a1
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB16_35:                              # %.lr.ph.i155
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fmul.d	$fa2, $fa1, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_35
.LBB16_36:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit
.Ltmp998:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
.Ltmp999:
# %bb.37:
.Ltmp1000:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1001:
# %bb.38:
	fmov.d	$fs4, $fa0
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srli.d	$a3, $a0, 2
	addi.w	$a0, $a3, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB16_44
# %bb.39:                               # %.lr.ph36.preheader.i
	ld.d	$a0, $s7, 32
	ld.d	$a1, $s7, 80
	ld.d	$a2, $s7, 104
	ld.w	$t1, $a0, 0
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 30, 0
	movgr2fr.d	$fa0, $zero
	b	.LBB16_41
	.p2align	4, , 16
.LBB16_40:                              # %._crit_edge.i
                                        #   in Loop: Header=BB16_41 Depth=1
	alsl.d	$a4, $a4, $s1, 3
	fst.d	$fa1, $a4, 0
	move	$t1, $a6
	move	$a4, $a5
	beq	$a5, $a3, .LBB16_44
.LBB16_41:                              # %.lr.ph36.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_43 Depth 2
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $s1, $a5
	addi.d	$a5, $a4, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	fmul.d	$fa1, $fa1, $fa0
	bge	$t1, $a6, .LBB16_40
# %bb.42:                               # %.lr.ph.preheader.i156
                                        #   in Loop: Header=BB16_41 Depth=1
	sub.d	$a7, $a6, $t1
	alsl.d	$t0, $t1, $a1, 2
	alsl.d	$t1, $t1, $a2, 3
	.p2align	4, , 16
.LBB16_43:                              # %.lr.ph.i158
                                        #   Parent Loop BB16_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	fld.d	$fa2, $t1, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa3, $s0, $t2
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	bnez	$a7, .LBB16_43
	b	.LBB16_40
.LBB16_44:                              # %_ZN6miniFE10matvec_stdINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7_.exit
.Ltmp1002:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1003:
# %bb.45:
.Ltmp1004:
	fmov.d	$fs5, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1005:
# %bb.46:
	fmov.d	$fs6, $fa0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srli.d	$a3, $a1, 3
	addi.w	$a1, $a3, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB16_51
# %bb.47:                               # %.lr.ph.preheader.i163
	bstrpick.d	$a1, $a3, 30, 0
	ori	$a2, $zero, 6
	bgeu	$a1, $a2, .LBB16_163
# %bb.48:
	move	$a2, $zero
.LBB16_49:                              # %.lr.ph.i165.preheader
	sub.d	$a1, $a2, $a1
	alsl.d	$a3, $a2, $s5, 3
	alsl.d	$a4, $a2, $s1, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB16_50:                              # %.lr.ph.i165
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a4, 0
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_50
.LBB16_51:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit169
.Ltmp1006:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1007:
# %bb.52:
.Ltmp1008:
	fmov.d	$fs7, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1009:
# %bb.53:
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs3, $zero
	sub.d	$a0, $s8, $s5
	srli.d	$s4, $a0, 3
	addi.w	$fp, $s4, 0
	ori	$a0, $zero, 1
	fmov.d	$fs1, $fs3
	blt	$fp, $a0, .LBB16_56
# %bb.54:                               # %.lr.ph.preheader.i171
	bstrpick.d	$a0, $s4, 30, 0
	movgr2fr.d	$fs1, $zero
	move	$a1, $s5
	.p2align	4, , 16
.LBB16_55:                              # %.lr.ph.i173
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs1, $fs1, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB16_55
.LBB16_56:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit
.Ltmp1010:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1011:
# %bb.57:
	fmov.d	$fs2, $fa0
	fsqrt.d	$fa0, $fs1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_188
.LBB16_58:                              # %.split
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
.Ltmp1012:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.106)
	addi.d	$a1, $a1, %pc_lo12(.L.str.106)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1013:
# %bb.59:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fld.d	$fa0, $a0, 0
.Ltmp1014:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1015:
# %bb.60:                               # %_ZNSolsEd.exit
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s8, $a0, 240
	beqz	$s8, .LBB16_189
# %bb.61:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i272
	ld.bu	$a0, $s8, 56
	beqz	$a0, .LBB16_63
# %bb.62:
	ld.bu	$a0, $s8, 67
	b	.LBB16_65
.LBB16_63:
.Ltmp1016:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1017:
# %bb.64:                               # %.noexc276
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 48
.Ltmp1018:
	ori	$a1, $zero, 10
	move	$a0, $s8
	jirl	$ra, $a2, 0
.Ltmp1019:
.LBB16_65:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp1020:
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1021:
# %bb.66:                               # %.noexc278
.Ltmp1022:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1023:
# %bb.67:                               # %_ZNSolsEPFRSoS_E.exit.preheader
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	fld.d	$fa0, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 168                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fsub.d	$fa1, $fs5, $fs4
	fadd.d	$fa0, $fa0, $fs3
	fsub.d	$fa2, $fs7, $fs6
	fsub.d	$fa3, $fs2, $fs0
	movgr2fr.d	$fs5, $zero
	fadd.d	$fa1, $fa1, $fs3
	fst.d	$fa1, $sp, 192                  # 8-byte Folded Spill
	fadd.d	$fs7, $fa0, $fa2
	ori	$s5, $zero, 1
	fadd.d	$fa0, $fa3, $fs5
	fst.d	$fa0, $sp, 208                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	blt	$a1, $s5, .LBB16_161
# %bb.68:                               # %.lr.ph
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1639
	mul.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 34
	add.d	$a0, $a0, $a1
	slti	$a1, $a0, 50
	ori	$a2, $zero, 50
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$s6, $s4, 30, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s1
	srli.d	$a1, $a0, 3
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 33, 3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s0
	srli.d	$a1, $a0, 3
	bstrpick.d	$a0, $a0, 33, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 30, 2
	slli.d	$s2, $a0, 2
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $s6
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $s1, 16
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	fld.d	$fa0, $a0, %pc_lo12(.LCPI16_0)
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	addi.w	$a0, $a1, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB16_69:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_78 Depth 2
                                        #     Child Loop BB16_92 Depth 2
                                        #     Child Loop BB16_95 Depth 2
                                        #     Child Loop BB16_85 Depth 2
                                        #     Child Loop BB16_88 Depth 2
                                        #     Child Loop BB16_116 Depth 2
                                        #       Child Loop BB16_118 Depth 3
                                        #     Child Loop BB16_123 Depth 2
                                        #     Child Loop BB16_129 Depth 2
                                        #     Child Loop BB16_133 Depth 2
                                        #     Child Loop BB16_156 Depth 2
                                        #     Child Loop BB16_144 Depth 2
                                        #     Child Loop BB16_149 Depth 2
                                        #     Child Loop BB16_152 Depth 2
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	fld.d	$fa0, $a1, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_161
# %bb.70:                               #   in Loop: Header=BB16_69 Depth=1
	move	$s8, $a0
	bne	$a0, $s5, .LBB16_75
# %bb.71:                               #   in Loop: Header=BB16_69 Depth=1
.Ltmp1033:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1034:
# %bb.72:                               #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fs0, $fa0
	blt	$fp, $s5, .LBB16_89
# %bb.73:                               # %.lr.ph.i183.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s6, $a0, .LBB16_84
# %bb.74:                               #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $zero
	b	.LBB16_87
	.p2align	4, , 16
.LBB16_75:                              #   in Loop: Header=BB16_69 Depth=1
.Ltmp1024:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1025:
# %bb.76:                               #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs6, $zero
	blt	$fp, $s5, .LBB16_79
# %bb.77:                               # %.lr.ph.i192.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $s6
	.p2align	4, , 16
.LBB16_78:                              # %.lr.ph.i192
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_78
.LBB16_79:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit197
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1026:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1027:
# %bb.80:                               #   in Loop: Header=BB16_69 Depth=1
.Ltmp1028:
	fmov.d	$fs2, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1029:
# %bb.81:                               #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fs3, $fa0
	blt	$fp, $s5, .LBB16_96
# %bb.82:                               # %.lr.ph.i201.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	fdiv.d	$fa0, $fs6, $fs1
	ori	$a0, $zero, 4
	bgeu	$s6, $a0, .LBB16_91
# %bb.83:                               #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $zero
	b	.LBB16_94
.LBB16_84:                              # %vector.body504.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s2
	vld	$vr4, $sp, 0                    # 16-byte Folded Reload
	.p2align	4, , 16
.LBB16_85:                              # %vector.body504
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, -16
	vld	$vr1, $a0, 0
	vfmul.d	$vr2, $vr0, $vr4
	vfmul.d	$vr3, $vr1, $vr4
	vfadd.d	$vr0, $vr0, $vr2
	vfadd.d	$vr1, $vr1, $vr3
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB16_85
# %bb.86:                               # %middle.block509
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $s2
	beq	$s6, $s2, .LBB16_89
.LBB16_87:                              # %.lr.ph.i183.preheader531
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $s0, 3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB16_88:                              # %.lr.ph.i183
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, 0
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB16_88
.LBB16_89:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit187
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1035:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1036:
# %bb.90:                               #   in Loop: Header=BB16_69 Depth=1
	fsub.d	$fs4, $fa0, $fs0
	b	.LBB16_98
.LBB16_91:                              # %vector.ph514
                                        #   in Loop: Header=BB16_69 Depth=1
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s2
	.p2align	4, , 16
.LBB16_92:                              # %vector.body519
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a1, -16
	vst	$vr3, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB16_92
# %bb.93:                               # %middle.block526
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $s2
	beq	$s6, $s2, .LBB16_96
.LBB16_94:                              # %.lr.ph.i201.preheader532
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $s0, 3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB16_95:                              # %.lr.ph.i201
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB16_95
.LBB16_96:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit205
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1030:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1031:
# %bb.97:                               #   in Loop: Header=BB16_69 Depth=1
	fsub.d	$fa1, $fs2, $fs0
	fld.d	$fa2, $sp, 208                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 208                  # 8-byte Folded Spill
	fsub.d	$fs4, $fa0, $fs3
	fmov.d	$fs1, $fs6
.LBB16_98:                              #   in Loop: Header=BB16_69 Depth=1
	fsqrt.d	$fa0, $fs1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_158
# %bb.99:                               # %.split700
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beq	$s8, $a0, .LBB16_101
.LBB16_100:                             # %.split700
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	mod.wu	$a0, $s8, $a0
	bnez	$a0, .LBB16_112
.LBB16_101:                             #   in Loop: Header=BB16_69 Depth=1
.Ltmp1037:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a1, $a1, %pc_lo12(.L.str.107)
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1038:
# %bb.102:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1039:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp1040:
# %bb.103:                              #   in Loop: Header=BB16_69 Depth=1
.Ltmp1041:
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	ori	$a2, $zero, 14
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1042:
# %bb.104:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fld.d	$fa0, $a0, 0
.Ltmp1043:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1044:
# %bb.105:                              # %_ZNSolsEd.exit211
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB16_184
# %bb.106:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i282
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB16_108
# %bb.107:                              #   in Loop: Header=BB16_69 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB16_110
.LBB16_108:                             #   in Loop: Header=BB16_69 Depth=1
.Ltmp1045:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1046:
# %bb.109:                              # %.noexc287
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp1047:
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp1048:
.LBB16_110:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i284
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1049:
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1050:
# %bb.111:                              # %.noexc289
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1051:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1052:
.LBB16_112:                             # %_ZNSolsEPFRSoS_E.exit213
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1054:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1055:
# %bb.113:                              #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fs0, $fa0
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srli.d	$a3, $a0, 2
	addi.w	$a0, $a3, 0
	blt	$a0, $s5, .LBB16_119
# %bb.114:                              # %.lr.ph36.preheader.i214
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $s7, 32
	ld.d	$a1, $s7, 80
	ld.d	$a2, $s7, 104
	ld.w	$t1, $a0, 0
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 30, 0
	b	.LBB16_116
	.p2align	4, , 16
.LBB16_115:                             # %._crit_edge.i220
                                        #   in Loop: Header=BB16_116 Depth=2
	alsl.d	$a4, $a4, $s1, 3
	fst.d	$fa0, $a4, 0
	move	$t1, $a6
	move	$a4, $a5
	beq	$a5, $a3, .LBB16_119
.LBB16_116:                             # %.lr.ph36.i217
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_118 Depth 3
	slli.d	$a5, $a4, 3
	fldx.d	$fa0, $s1, $a5
	addi.d	$a5, $a4, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	fmul.d	$fa0, $fa0, $fs5
	bge	$t1, $a6, .LBB16_115
# %bb.117:                              # %.lr.ph.preheader.i223
                                        #   in Loop: Header=BB16_116 Depth=2
	sub.d	$a7, $a6, $t1
	alsl.d	$t0, $t1, $a1, 2
	alsl.d	$t1, $t1, $a2, 3
	.p2align	4, , 16
.LBB16_118:                             # %.lr.ph.i225
                                        #   Parent Loop BB16_69 Depth=1
                                        #     Parent Loop BB16_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	fld.d	$fa1, $t1, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa2, $s0, $t2
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	bnez	$a7, .LBB16_118
	b	.LBB16_115
	.p2align	4, , 16
.LBB16_119:                             # %_ZN6miniFE10matvec_stdINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7_.exit230
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1056:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1057:
# %bb.120:                              #   in Loop: Header=BB16_69 Depth=1
.Ltmp1058:
	fmov.d	$fs2, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1059:
# %bb.121:                              #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fs3, $fa0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	fmov.d	$fs6, $fs5
	blt	$s3, $s5, .LBB16_124
# %bb.122:                              # %.lr.ph.i235.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	fmov.d	$fs6, $fs5
	.p2align	4, , 16
.LBB16_123:                             # %.lr.ph.i235
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB16_123
.LBB16_124:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit240
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1060:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1061:
# %bb.125:                              #   in Loop: Header=BB16_69 Depth=1
	fadd.d	$fs7, $fs7, $fs4
	fsub.d	$fa1, $fs2, $fs0
	fld.d	$fa2, $sp, 192                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 192                  # 8-byte Folded Spill
	fsub.d	$fa0, $fa0, $fs3
	fld.d	$fa1, $sp, 168                  # 8-byte Folded Reload
	fcmp.cule.d	$fcc0, $fa1, $fs6
	fld.d	$fa1, $sp, 208                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 208                  # 8-byte Folded Spill
	bcnez	$fcc0, .LBB16_137
# %bb.126:                              #   in Loop: Header=BB16_69 Depth=1
	fcmp.clt.d	$fcc0, $fs6, $fs5
	bcnez	$fcc0, .LBB16_168
# %bb.127:                              #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fa0, $fs5
	blt	$s3, $s5, .LBB16_130
# %bb.128:                              # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	.p2align	4, , 16
.LBB16_129:                             # %.lr.ph.i.i
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_129
.LBB16_130:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit.i
                                        #   in Loop: Header=BB16_69 Depth=1
	fsqrt.d	$fs0, $fa0
	fcmp.cor.d	$fcc0, $fs0, $fs0
	bceqz	$fcc0, .LBB16_159
# %bb.131:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit.i.split
                                        #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fa0, $fs5
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $s5, .LBB16_134
.LBB16_132:                             # %.lr.ph.i10.i.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	.p2align	4, , 16
.LBB16_133:                             # %.lr.ph.i10.i
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_133
.LBB16_134:                             # %.loopexit
                                        #   in Loop: Header=BB16_69 Depth=1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB16_160
.LBB16_135:                             # %.loopexit.split
                                        #   in Loop: Header=BB16_69 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI16_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI16_1)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fld.d	$fa2, $a0, %pc_lo12(.LCPI16_0)
	fabs.d	$fa3, $fs6
	fmul.d	$fa0, $fs0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fcmp.cult.d	$fcc0, $fa0, $fa3
	bceqz	$fcc0, .LBB16_168
# %bb.136:                              #   in Loop: Header=BB16_69 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI16_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI16_2)
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
.LBB16_137:                             #   in Loop: Header=BB16_69 Depth=1
.Ltmp1062:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1063:
# %bb.138:                              #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fs2, $fa0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srli.d	$a2, $a1, 3
	addi.w	$a1, $a2, 0
	fdiv.d	$fa0, $fs1, $fs6
	blt	$a1, $s5, .LBB16_145
# %bb.139:                              # %.lr.ph.preheader.i246
                                        #   in Loop: Header=BB16_69 Depth=1
	bstrpick.d	$a1, $a2, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB16_142
# %bb.140:                              # %vector.memcheck480
                                        #   in Loop: Header=BB16_69 Depth=1
	alsl.d	$a3, $a1, $s0, 3
	bgeu	$a0, $a3, .LBB16_155
# %bb.141:                              # %vector.memcheck480
                                        #   in Loop: Header=BB16_69 Depth=1
	alsl.d	$a3, $a1, $a0, 3
	bgeu	$s0, $a3, .LBB16_155
.LBB16_142:                             #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $zero
.LBB16_143:                             # %.lr.ph.i248.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	sub.d	$a1, $a2, $a1
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB16_144:                             # %.lr.ph.i248
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a0, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_144
.LBB16_145:                             # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit252
                                        #   in Loop: Header=BB16_69 Depth=1
	blt	$fp, $s5, .LBB16_153
# %bb.146:                              # %.lr.ph.i256.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s6, $a0, .LBB16_148
# %bb.147:                              #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $zero
	b	.LBB16_151
	.p2align	4, , 16
.LBB16_148:                             # %vector.ph467
                                        #   in Loop: Header=BB16_69 Depth=1
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	move	$a2, $s2
	.p2align	4, , 16
.LBB16_149:                             # %vector.body470
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfsub.d	$vr2, $vr4, $vr2
	vfsub.d	$vr3, $vr5, $vr3
	vst	$vr2, $a0, -16
	vst	$vr3, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB16_149
# %bb.150:                              # %middle.block477
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $s2
	beq	$s6, $s2, .LBB16_153
.LBB16_151:                             # %.lr.ph.i256.preheader530
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $s1, 3
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB16_152:                             # %.lr.ph.i256
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB16_152
.LBB16_153:                             # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit260
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1064:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1065:
# %bb.154:                              # %_ZNSolsEPFRSoS_E.exit
                                        #   in Loop: Header=BB16_69 Depth=1
	fsub.d	$fa0, $fa0, $fs2
	fadd.d	$fs7, $fs7, $fa0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.w	$s8, $a0, 0
	addi.w	$a0, $s8, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bne	$s8, $a1, .LBB16_69
	b	.LBB16_161
.LBB16_155:                             # %vector.ph484
                                        #   in Loop: Header=BB16_69 Depth=1
	bstrpick.d	$a2, $a2, 30, 2
	slli.d	$a2, $a2, 2
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a3, $a0, 16
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	move	$a5, $a2
	.p2align	4, , 16
.LBB16_156:                             # %vector.body489
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vld	$vr4, $a3, -16
	vld	$vr5, $a3, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a3, -16
	vst	$vr3, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB16_156
# %bb.157:                              # %middle.block496
                                        #   in Loop: Header=BB16_69 Depth=1
	beq	$a1, $a2, .LBB16_145
	b	.LBB16_143
.LBB16_158:                             # %call.sqrt701
                                        #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	fst.d	$fa0, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bne	$s8, $a0, .LBB16_100
	b	.LBB16_101
.LBB16_159:                             # %call.sqrt702
                                        #   in Loop: Header=BB16_69 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fs5
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$a0, $s5, .LBB16_132
	b	.LBB16_134
.LBB16_160:                             # %call.sqrt703
                                        #   in Loop: Header=BB16_69 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB16_135
.LBB16_161:                             # %_ZNSolsEPFRSoS_E.exit._crit_edge
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	fst.d	$fs7, $s4, 0
	fld.d	$fa0, $sp, 208                  # 8-byte Folded Reload
	fst.d	$fa0, $s4, 8
	fld.d	$fa0, $sp, 192                  # 8-byte Folded Reload
	fst.d	$fa0, $s4, 16
	st.d	$zero, $s4, 24
.Ltmp1085:
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1086:
# %bb.162:
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	b	.LBB16_177
.LBB16_163:                             # %vector.memcheck445
	sub.d	$a5, $s5, $a0
	ori	$a4, $zero, 32
	move	$a2, $zero
	bltu	$a5, $a4, .LBB16_49
# %bb.164:                              # %vector.memcheck445
	sub.d	$a5, $s5, $s1
	bltu	$a5, $a4, .LBB16_49
# %bb.165:                              # %vector.ph452
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s5, 16
	addi.d	$a4, $s1, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB16_166:                             # %vector.body455
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vfsub.d	$vr0, $vr0, $vr2
	vfsub.d	$vr1, $vr1, $vr3
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB16_166
# %bb.167:                              # %middle.block462
	bne	$a1, $a2, .LBB16_49
	b	.LBB16_51
.LBB16_168:
.Ltmp1067:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a1, $a0, %pc_lo12(.L.str.109)
	ori	$a2, $zero, 44
	move	$a0, $s2
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1068:
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
# %bb.169:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB16_191
# %bb.170:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i293
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB16_172
# %bb.171:
	ld.bu	$a0, $s2, 67
	b	.LBB16_174
.LBB16_172:
.Ltmp1069:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1070:
# %bb.173:                              # %.noexc298
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1071:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1072:
.LBB16_174:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i295
.Ltmp1073:
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a2, $a1, %got_pc_lo12(_ZSt4cerr)
	ext.w.b	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1074:
# %bb.175:                              # %.noexc300
.Ltmp1075:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1076:
# %bb.176:                              # %_ZNSolsEPFRSoS_E.exit244
	fst.d	$fs7, $s4, 0
	fld.d	$fa0, $sp, 208                  # 8-byte Folded Reload
	fst.d	$fa0, $s4, 8
	fld.d	$fa0, $sp, 192                  # 8-byte Folded Reload
	fst.d	$fa0, $s4, 16
.Ltmp1077:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1078:
.LBB16_177:                             # %.critedge
	fld.d	$fa1, $sp, 64                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s4, 32
	beqz	$s1, .LBB16_179
# %bb.178:
	sub.d	$a1, $s6, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_179:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit
	beqz	$s0, .LBB16_181
# %bb.180:
	sub.d	$a1, $s5, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_181:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit262
	beqz	$fp, .LBB16_183
# %bb.182:
	sub.d	$a1, $s3, $fp
	move	$a0, $fp
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB16_183:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit264
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB16_184:
.Ltmp1082:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp1083:
# %bb.185:                              # %.noexc286
.LBB16_186:                             # %.noexc.i
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB16_187:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB16_188:                             # %call.sqrt
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB16_58
.LBB16_189:
.Ltmp1088:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp1089:
# %bb.190:                              # %.noexc275
.LBB16_191:
.Ltmp1079:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp1080:
# %bb.192:                              # %.noexc297
.LBB16_193:
.Ltmp995:
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	move	$s2, $a0
	beqz	$s0, .LBB16_204
	b	.LBB16_207
.LBB16_194:
.Ltmp1087:
	b	.LBB16_202
.LBB16_195:                             # %.loopexit.split-lp370
.Ltmp1081:
	b	.LBB16_202
.LBB16_196:
.Ltmp1093:
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	move	$s2, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB16_205
	b	.LBB16_208
.LBB16_197:                             # %.loopexit.split-lp
.Ltmp1084:
	b	.LBB16_202
.LBB16_198:
.Ltmp1032:
	b	.LBB16_202
.LBB16_199:
.Ltmp1090:
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	b	.LBB16_202
.LBB16_200:                             # %.loopexit368
.Ltmp1053:
	b	.LBB16_202
.LBB16_201:                             # %.loopexit369
.Ltmp1066:
.LBB16_202:
	move	$s2, $a0
	bnez	$s1, .LBB16_206
# %bb.203:                              # %_ZN6miniFE6VectorIdiiED2Ev.exit266
	bnez	$s0, .LBB16_207
.LBB16_204:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit268
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bnez	$a0, .LBB16_208
.LBB16_205:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit270
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_206:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB16_204
.LBB16_207:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB16_205
.LBB16_208:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd, .Lfunc_end16-_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,"aG",@progbits,_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp991-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp991
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp991-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp992-.Ltmp991              #   Call between .Ltmp991 and .Ltmp992
	.uleb128 .Ltmp1093-.Lfunc_begin11       #     jumps to .Ltmp1093
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp992-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp1091-.Ltmp992             #   Call between .Ltmp992 and .Ltmp1091
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1091-.Lfunc_begin11       # >> Call Site 4 <<
	.uleb128 .Ltmp1092-.Ltmp1091            #   Call between .Ltmp1091 and .Ltmp1092
	.uleb128 .Ltmp1093-.Lfunc_begin11       #     jumps to .Ltmp1093
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1092-.Lfunc_begin11       # >> Call Site 5 <<
	.uleb128 .Ltmp993-.Ltmp1092             #   Call between .Ltmp1092 and .Ltmp993
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp993-.Lfunc_begin11        # >> Call Site 6 <<
	.uleb128 .Ltmp994-.Ltmp993              #   Call between .Ltmp993 and .Ltmp994
	.uleb128 .Ltmp995-.Lfunc_begin11        #     jumps to .Ltmp995
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp994-.Lfunc_begin11        # >> Call Site 7 <<
	.uleb128 .Ltmp996-.Ltmp994              #   Call between .Ltmp994 and .Ltmp996
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp996-.Lfunc_begin11        # >> Call Site 8 <<
	.uleb128 .Ltmp1023-.Ltmp996             #   Call between .Ltmp996 and .Ltmp1023
	.uleb128 .Ltmp1090-.Lfunc_begin11       #     jumps to .Ltmp1090
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1033-.Lfunc_begin11       # >> Call Site 9 <<
	.uleb128 .Ltmp1027-.Ltmp1033            #   Call between .Ltmp1033 and .Ltmp1027
	.uleb128 .Ltmp1053-.Lfunc_begin11       #     jumps to .Ltmp1053
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1028-.Lfunc_begin11       # >> Call Site 10 <<
	.uleb128 .Ltmp1029-.Ltmp1028            #   Call between .Ltmp1028 and .Ltmp1029
	.uleb128 .Ltmp1032-.Lfunc_begin11       #     jumps to .Ltmp1032
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1035-.Lfunc_begin11       # >> Call Site 11 <<
	.uleb128 .Ltmp1036-.Ltmp1035            #   Call between .Ltmp1035 and .Ltmp1036
	.uleb128 .Ltmp1053-.Lfunc_begin11       #     jumps to .Ltmp1053
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1030-.Lfunc_begin11       # >> Call Site 12 <<
	.uleb128 .Ltmp1031-.Ltmp1030            #   Call between .Ltmp1030 and .Ltmp1031
	.uleb128 .Ltmp1032-.Lfunc_begin11       #     jumps to .Ltmp1032
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1037-.Lfunc_begin11       # >> Call Site 13 <<
	.uleb128 .Ltmp1052-.Ltmp1037            #   Call between .Ltmp1037 and .Ltmp1052
	.uleb128 .Ltmp1053-.Lfunc_begin11       #     jumps to .Ltmp1053
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1054-.Lfunc_begin11       # >> Call Site 14 <<
	.uleb128 .Ltmp1065-.Ltmp1054            #   Call between .Ltmp1054 and .Ltmp1065
	.uleb128 .Ltmp1066-.Lfunc_begin11       #     jumps to .Ltmp1066
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1065-.Lfunc_begin11       # >> Call Site 15 <<
	.uleb128 .Ltmp1085-.Ltmp1065            #   Call between .Ltmp1065 and .Ltmp1085
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1085-.Lfunc_begin11       # >> Call Site 16 <<
	.uleb128 .Ltmp1086-.Ltmp1085            #   Call between .Ltmp1085 and .Ltmp1086
	.uleb128 .Ltmp1087-.Lfunc_begin11       #     jumps to .Ltmp1087
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1067-.Lfunc_begin11       # >> Call Site 17 <<
	.uleb128 .Ltmp1078-.Ltmp1067            #   Call between .Ltmp1067 and .Ltmp1078
	.uleb128 .Ltmp1081-.Lfunc_begin11       #     jumps to .Ltmp1081
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1078-.Lfunc_begin11       # >> Call Site 18 <<
	.uleb128 .Ltmp1082-.Ltmp1078            #   Call between .Ltmp1078 and .Ltmp1082
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1082-.Lfunc_begin11       # >> Call Site 19 <<
	.uleb128 .Ltmp1083-.Ltmp1082            #   Call between .Ltmp1082 and .Ltmp1083
	.uleb128 .Ltmp1084-.Lfunc_begin11       #     jumps to .Ltmp1084
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1083-.Lfunc_begin11       # >> Call Site 20 <<
	.uleb128 .Ltmp1088-.Ltmp1083            #   Call between .Ltmp1083 and .Ltmp1088
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1088-.Lfunc_begin11       # >> Call Site 21 <<
	.uleb128 .Ltmp1089-.Ltmp1088            #   Call between .Ltmp1088 and .Ltmp1089
	.uleb128 .Ltmp1090-.Lfunc_begin11       #     jumps to .Ltmp1090
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1079-.Lfunc_begin11       # >> Call Site 22 <<
	.uleb128 .Ltmp1080-.Ltmp1079            #   Call between .Ltmp1079 and .Ltmp1080
	.uleb128 .Ltmp1081-.Lfunc_begin11       #     jumps to .Ltmp1081
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1080-.Lfunc_begin11       # >> Call Site 23 <<
	.uleb128 .Lfunc_end16-.Ltmp1080         #   Call between .Ltmp1080 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db
.LCPI17_0:
	.dword	0x3fa999999999999a              # double 0.050000000000000003
.LCPI17_1:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI17_2:
	.dword	0x4023bd3cc9be45de              # double 9.869604401089358
.LCPI17_3:
	.dword	0x3ff9f02f6222c720              # double 1.6211389382774044
	.section	.text._ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,"axG",@progbits,_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,comdat
	.weak	_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db
	.p2align	5
	.type	_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,@function
_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db: # @_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:
	addi.d	$sp, $sp, -336
	.cfi_def_cfa_offset 336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 184                  # 8-byte Folded Spill
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
	ld.w	$a5, $a0, 184
	ld.w	$a3, $a0, 188
	ld.w	$a6, $a0, 164
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	slt	$a4, $a5, $a3
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	xor	$a2, $a3, $a6
	sltui	$a2, $a2, 1
	and	$a2, $a4, $a2
	add.w	$a2, $a3, $a2
	movgr2fr.d	$fs6, $zero
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	bge	$a5, $a2, .LBB17_46
# %bb.1:                                # %.preheader266.lr.ph
	ld.w	$a6, $a0, 176
	ld.w	$a4, $a0, 180
	ld.w	$a3, $a0, 156
	slt	$a2, $a6, $a4
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	xor	$a3, $a4, $a3
	sltui	$a3, $a3, 1
	and	$a2, $a2, $a3
	add.w	$a2, $a4, $a2
	move	$s0, $zero
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	bge	$a6, $a2, .LBB17_54
# %bb.2:                                # %.preheader266.lr.ph
	ld.w	$a4, $a0, 168
	ld.w	$a3, $a0, 172
	ld.w	$a7, $a0, 148
	slt	$a0, $a4, $a3
	xor	$a2, $a3, $a7
	sltui	$a2, $a2, 1
	and	$a0, $a0, $a2
	add.w	$a0, $a3, $a0
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bge	$a4, $a0, .LBB17_54
# %bb.3:                                # %.preheader266.us.us.preheader
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$s2, $zero
	move	$s4, $zero
	move	$t2, $zero
	move	$s5, $zero
	move	$s3, $zero
	move	$t1, $zero
	move	$s0, $zero
	addi.w	$t0, $a7, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	slt	$a2, $a1, $t0
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $t0, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a1, $a0
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a0, $a3
	or	$a1, $a3, $a1
	ori	$a3, $zero, 1
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	slt	$a4, $a3, $a6
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a6, $a4
	or	$a3, $a4, $a3
	movgr2fr.w	$fa0, $a3
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa1, $a1
	mul.w	$a1, $a0, $t0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ffint.d.w	$fs0, $fa0
	ffint.d.l	$fs2, $fa1
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fs3, $fa0
	mul.d	$a0, $a5, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$t0, $sp, 152                   # 8-byte Folded Spill
	mul.d	$a1, $a0, $t0
	ori	$fp, $zero, 1
	vldi	$vr2, -800
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	b	.LBB17_5
	.p2align	4, , 16
.LBB17_4:                               # %._crit_edge391.split.us.us.us
                                        #   in Loop: Header=BB17_5 Depth=1
	addi.w	$a5, $a5, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$a5, $a0, .LBB17_55
.LBB17_5:                               # %.preheader266.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_7 Depth 2
                                        #       Child Loop BB17_10 Depth 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	slt	$a0, $a0, $a5
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	b	.LBB17_7
	.p2align	4, , 16
.LBB17_6:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB17_7 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bge	$a2, $a0, .LBB17_4
.LBB17_7:                               # %.preheader261.us.us.us
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_10 Depth 3
	or	$a0, $a2, $a5
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	slt	$a0, $a0, $a2
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	b	.LBB17_10
	.p2align	4, , 16
.LBB17_8:                               #   in Loop: Header=BB17_10 Depth=3
	fst.d	$fs4, $s7, 0
	addi.d	$t2, $s7, 8
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	move	$s5, $s4
	move	$s4, $a0
.LBB17_9:                               # %_ZNSt6vectorIdSaIdEE9push_backERKd.exit108.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	addi.w	$s8, $s8, 1
	addi.d	$s2, $s2, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bge	$s8, $a0, .LBB17_6
.LBB17_10:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit.us.us.us
                                        #   Parent Loop BB17_5 Depth=1
                                        #     Parent Loop BB17_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	or	$a0, $a0, $s8
	addi.w	$s1, $zero, -1
	slt	$a0, $s1, $a0
	slt	$a1, $a7, $s8
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	and	$a1, $a1, $a2
	andi	$a1, $a1, 1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	add.w	$a2, $a2, $s8
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s1, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s1, $a0
	or	$a0, $a1, $a0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	div.w	$a1, $a0, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs4, $fa0, $fs0
	mul.d	$a1, $a1, $a2
	sub.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	div.w	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs5, $fa0, $fs2
	mod.w	$a0, $a0, $a2
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs1, $fa0, $fs3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_15
.LBB17_11:                              # %.critedge.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	beq	$t1, $s3, .LBB17_18
# %bb.12:                               #   in Loop: Header=BB17_10 Depth=3
	st.w	$s2, $t1, 0
	move	$a0, $s0
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	beq	$t2, $s4, .LBB17_25
.LBB17_13:                              #   in Loop: Header=BB17_10 Depth=3
	fst.d	$fs1, $t2, 0
	addi.d	$a0, $t2, 8
	beq	$a0, $s4, .LBB17_32
.LBB17_14:                              #   in Loop: Header=BB17_10 Depth=3
	fst.d	$fs5, $t2, 8
	addi.d	$s7, $t2, 16
	move	$a0, $s4
	move	$s4, $s5
	addi.d	$t1, $t1, 4
	bne	$s7, $a0, .LBB17_8
	b	.LBB17_39
	.p2align	4, , 16
.LBB17_15:                              #   in Loop: Header=BB17_10 Depth=3
	pcalau12i	$a0, %pc_hi20(.LCPI17_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI17_0)
	fadd.d	$fa1, $fs1, $fa2
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB17_9
# %bb.16:                               #   in Loop: Header=BB17_10 Depth=3
	fadd.d	$fa1, $fs5, $fa2
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB17_9
# %bb.17:                               #   in Loop: Header=BB17_10 Depth=3
	fadd.d	$fa1, $fs4, $fa2
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB17_9
	b	.LBB17_11
	.p2align	4, , 16
.LBB17_18:                              #   in Loop: Header=BB17_10 Depth=3
	move	$s7, $s4
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	sub.d	$s4, $s3, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB17_121
# %bb.19:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	st.d	$t2, $sp, 176                   # 8-byte Folded Spill
	move	$s3, $s0
	ori	$s0, $zero, 1
	move	$fp, $s5
	srai.d	$a0, $s4, 2
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu52i.d	$a2, $s1, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
.Ltmp1094:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1095:
# %bb.20:                               # %.noexc85.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s6, $a0
	stx.w	$s2, $s6, $s4
	blt	$s4, $s0, .LBB17_22
# %bb.21:                               #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s6
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
.LBB17_22:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	beqz	$s3, .LBB17_24
# %bb.23:                               #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s6
.LBB17_24:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	add.d	$t1, $a0, $s4
	alsl.d	$s3, $s5, $a0, 2
	move	$s4, $s7
	move	$s5, $fp
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ori	$fp, $zero, 1
	vldi	$vr2, -800
	ld.d	$t2, $sp, 176                   # 8-byte Folded Reload
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	bne	$t2, $s4, .LBB17_13
.LBB17_25:                              #   in Loop: Header=BB17_10 Depth=3
	move	$s7, $s4
	sub.d	$s4, $s4, $s5
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB17_123
# %bb.26:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	ori	$s0, $zero, 1
	move	$fp, $s5
	srai.d	$a0, $s4, 3
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu52i.d	$a2, $s1, 255
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 3
.Ltmp1096:
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1097:
# %bb.27:                               # %.noexc90.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s5, $a0
	fstx.d	$fs1, $a0, $s4
	blt	$s4, $s0, .LBB17_29
# %bb.28:                               #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s5
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB17_29:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	beqz	$fp, .LBB17_31
# %bb.30:                               #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_31:                              # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJRKdEEEvDpOT_.exit.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	add.d	$t2, $s5, $s4
	alsl.d	$s4, $s6, $s5, 3
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ori	$fp, $zero, 1
	vldi	$vr2, -800
	addi.d	$a0, $t2, 8
	bne	$a0, $s4, .LBB17_14
.LBB17_32:                              #   in Loop: Header=BB17_10 Depth=3
	sub.d	$s6, $s4, $s5
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	beq	$s6, $a0, .LBB17_117
# %bb.33:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i92.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	move	$s7, $s4
	srai.d	$a0, $s6, 3
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu52i.d	$a2, $s1, 255
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 3
.Ltmp1098:
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	move	$fp, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1099:
# %bb.34:                               # %.noexc98.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s4, $a0
	fstx.d	$fs5, $a0, $s6
	ori	$fp, $zero, 1
	blt	$s6, $fp, .LBB17_36
# %bb.35:                               #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB17_36:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i94.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	beqz	$s5, .LBB17_38
# %bb.37:                               #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_38:                              # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJRKdEEEvDpOT_.exit.i96.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	add.d	$a0, $s4, $s6
	addi.d	$s7, $a0, 8
	alsl.d	$a0, $s0, $s4, 3
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	vldi	$vr2, -800
	addi.d	$t1, $t1, 4
	bne	$s7, $a0, .LBB17_8
.LBB17_39:                              #   in Loop: Header=BB17_10 Depth=3
	sub.d	$s5, $s7, $s4
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	beq	$s5, $a0, .LBB17_119
# %bb.40:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i101.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s0, $t1
	srai.d	$a0, $s5, 3
	sltu	$a2, $fp, $a0
	masknez	$a3, $fp, $a2
	maskeqz	$a2, $a0, $a2
	or	$a2, $a2, $a3
	add.d	$a0, $a2, $a0
	sltu	$a2, $a0, $a2
	lu52i.d	$a3, $s1, 255
	sltu	$a4, $a0, $a3
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $a3, $a4
	or	$a0, $a0, $a4
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$s1, $a2, $a0
	slli.d	$a0, $s1, 3
.Ltmp1100:
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	move	$fp, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1101:
# %bb.41:                               # %.noexc107.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s6, $a0
	fstx.d	$fs4, $a0, $s5
	ori	$fp, $zero, 1
	blt	$s5, $fp, .LBB17_43
# %bb.42:                               #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s6
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB17_43:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i103.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	beqz	$s4, .LBB17_45
# %bb.44:                               #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_45:                              # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJRKdEEEvDpOT_.exit.i105.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	add.d	$a0, $s6, $s5
	addi.d	$t2, $a0, 8
	alsl.d	$s4, $s1, $s6, 3
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	move	$s5, $s6
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	move	$t1, $s0
	move	$s0, $a0
	vldi	$vr2, -800
	b	.LBB17_9
.LBB17_46:
	move	$s0, $zero
	move	$s3, $zero
	move	$s5, $zero
	move	$s4, $zero
                                        # implicit-def: $f28_64
                                        # implicit-def: $f27_64
                                        # implicit-def: $f25_64
                                        # implicit-def: $f31_64
                                        # implicit-def: $f29_64
	fcmp.cule.d	$fcc0, $fs6, $fs0
	bceqz	$fcc0, .LBB17_76
.LBB17_47:
.Ltmp1103:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.117)
	addi.d	$a1, $a1, %pc_lo12(.L.str.117)
	ori	$a2, $zero, 45
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1104:
# %bb.48:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141
.Ltmp1105:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1106:
# %bb.49:                               # %_ZNSolsEd.exit143
.Ltmp1107:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a1, $a0, %pc_lo12(.L.str.118)
	ori	$a2, $zero, 11
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1108:
# %bb.50:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB17_125
# %bb.51:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i182
	ld.bu	$a0, $s2, 56
	bnez	$a0, .LBB17_106
# %bb.52:
.Ltmp1109:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1110:
# %bb.53:                               # %.noexc187
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1111:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1112:
	b	.LBB17_109
.LBB17_54:
                                        # implicit-def: $f28_64
                                        # implicit-def: $f27_64
                                        # implicit-def: $f25_64
                                        # implicit-def: $f31_64
                                        # implicit-def: $f29_64
	move	$s3, $s0
	move	$s5, $s0
	move	$s4, $s0
	fcmp.cule.d	$fcc0, $fs6, $fs0
	bceqz	$fcc0, .LBB17_76
	b	.LBB17_47
.LBB17_55:                              # %.preheader
	beq	$t1, $s0, .LBB17_116
# %bb.56:                               # %.lr.ph
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $s0
	move	$s0, $zero
	addi.d	$s1, $s5, 8
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	addi.d	$s2, $s5, 16
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a0, $t1, $a0
	srai.d	$a0, $a0, 2
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $a1, 8
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	movgr2fr.d	$fa3, $zero
	vldi	$vr4, -912
	pcalau12i	$a0, %pc_hi20(.LCPI17_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI17_1)
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	addi.w	$s4, $zero, -3
	lu32i.d	$s4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI17_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI17_2)
	fst.d	$fa0, $sp, 160                  # 8-byte Folded Spill
	ori	$s5, $zero, 603
	ori	$s6, $zero, 300
	pcalau12i	$a0, %pc_hi20(.LCPI17_3)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	fmov.d	$fs6, $fa3
                                        # implicit-def: $f28_64
                                        # implicit-def: $f27_64
                                        # implicit-def: $f2_64
                                        # implicit-def: $f31_64
                                        # implicit-def: $f29_64
	fst.d	$fa3, $sp, 72                   # 8-byte Folded Spill
	b	.LBB17_58
	.p2align	4, , 16
.LBB17_57:                              #   in Loop: Header=BB17_58 Depth=1
	addi.d	$s0, $s0, 1
	beq	$s0, $s3, .LBB17_74
.LBB17_58:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_68 Depth 2
                                        #       Child Loop BB17_69 Depth 3
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa5, $fp, $a0
	slli.d	$a0, $s0, 4
	alsl.d	$a0, $s0, $a0, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	fldx.d	$fs2, $a1, $a0
	fldx.d	$fa0, $s1, $a0
	fst.d	$fa0, $sp, 152                  # 8-byte Folded Spill
	fldx.d	$fs1, $s2, $a0
	vldi	$vr0, -912
	fcmp.ceq.d	$fcc0, $fs2, $fa0
	bceqz	$fcc0, .LBB17_61
.LBB17_59:                              #   in Loop: Header=BB17_58 Depth=1
	fsub.d	$fa1, $fa0, $fa5
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fs6
	bcnez	$fcc0, .LBB17_57
# %bb.60:                               #   in Loop: Header=BB17_58 Depth=1
	fmov.d	$fs5, $fs1
	fld.d	$fs7, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$fa2, $fs2
	fmov.d	$fs3, $fa0
	fmov.d	$fs4, $fa5
	fmov.d	$fs6, $fa1
	b	.LBB17_57
	.p2align	4, , 16
.LBB17_61:                              #   in Loop: Header=BB17_58 Depth=1
	fcmp.ceq.d	$fcc0, $fs2, $fa3
	fmov.d	$fa0, $fa3
	bcnez	$fcc0, .LBB17_59
# %bb.62:                               #   in Loop: Header=BB17_58 Depth=1
	fld.d	$fa0, $sp, 152                  # 8-byte Folded Reload
	fcmp.ceq.d	$fcc0, $fa0, $fa3
	fmov.d	$fa0, $fa3
	bcnez	$fcc0, .LBB17_59
# %bb.63:                               #   in Loop: Header=BB17_58 Depth=1
	fcmp.ceq.d	$fcc0, $fs1, $fa3
	fmov.d	$fa0, $fa3
	bcnez	$fcc0, .LBB17_59
# %bb.64:                               #   in Loop: Header=BB17_58 Depth=1
	fld.d	$fa0, $sp, 152                  # 8-byte Folded Reload
	fcmp.ceq.d	$fcc0, $fa0, $fa4
	fmov.d	$fa0, $fa3
	bcnez	$fcc0, .LBB17_59
# %bb.65:                               #   in Loop: Header=BB17_58 Depth=1
	fcmp.ceq.d	$fcc0, $fs1, $fa4
	fmov.d	$fa0, $fa3
	bcnez	$fcc0, .LBB17_59
# %bb.66:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB17_58 Depth=1
	fst.d	$fa5, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fa2, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 128                  # 8-byte Folded Spill
	move	$a0, $zero
	fmov.d	$fs5, $fa3
	b	.LBB17_68
	.p2align	4, , 16
.LBB17_67:                              # %._crit_edge.i
                                        #   in Loop: Header=BB17_68 Depth=2
	addi.w	$a0, $s8, 1
	beq	$s8, $s6, .LBB17_73
.LBB17_68:                              # %.lr.ph.i
                                        #   Parent Loop BB17_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_69 Depth 3
	move	$s8, $a0
	slli.d	$a0, $a0, 1
	addi.d	$s7, $a0, 1
	bstrpick.d	$a0, $s7, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	fld.d	$fa0, $sp, 176                  # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fa1, $sp, 152                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fdiv.d	$fs6, $fa0, $fs0
	mul.d	$a0, $s7, $s7
	and	$a0, $a0, $s4
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fld.d	$fa1, $sp, 160                  # 8-byte Folded Reload
	fmul.d	$fs3, $fa0, $fa1
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB17_69:                              #   Parent Loop BB17_58 Depth=1
                                        #     Parent Loop BB17_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a0, $s7, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs4, $fa0
	fld.d	$fa0, $sp, 176                  # 8-byte Folded Reload
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fs1, $fa0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	mul.d	$a0, $s7, $s7
	and	$a0, $a0, $s4
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fld.d	$fa2, $sp, 160                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fs3, $fa1
	fsqrt.d	$fs7, $fa1
	fcmp.cor.d	$fcc0, $fs7, $fs7
	fmov.d	$fs0, $fa0
	bceqz	$fcc0, .LBB17_72
.LBB17_70:                              # %.split
                                        #   in Loop: Header=BB17_69 Depth=3
	fdiv.d	$fs4, $fs0, $fs4
	fmul.d	$fa0, $fs2, $fs7
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs6, $fs0
	fdiv.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB17_67
# %bb.71:                               #   in Loop: Header=BB17_69 Depth=3
	addi.w	$s7, $s7, 2
	fadd.d	$fs5, $fs5, $fa0
	bne	$s7, $s5, .LBB17_69
	b	.LBB17_67
.LBB17_72:                              # %call.sqrt
                                        #   in Loop: Header=BB17_69 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs7, $fa0
	b	.LBB17_70
.LBB17_73:                              # %_ZN6miniFE4solnEdddii.exit
                                        #   in Loop: Header=BB17_58 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(.LCPI17_3)
	fmul.d	$fa0, $fs5, $fa0
	fld.d	$fs6, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs7, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fa2, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fa3, $sp, 72                   # 8-byte Folded Reload
	vldi	$vr4, -912
	fld.d	$fa5, $sp, 80                   # 8-byte Folded Reload
	b	.LBB17_59
.LBB17_74:                              # %._crit_edge
	fmov.d	$fs1, $fa2
	fcmp.cor.d	$fcc0, $fs6, $fs6
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	bceqz	$fcc0, .LBB17_111
# %bb.75:                               # %._crit_edge.thread
	fcmp.cule.d	$fcc0, $fs6, $fs0
	bcnez	$fcc0, .LBB17_47
.LBB17_76:
.Ltmp1113:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.110)
	addi.d	$a1, $a1, %pc_lo12(.L.str.110)
	ori	$a2, $zero, 22
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1114:
# %bb.77:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp1115:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1116:
# %bb.78:                               # %_ZNSolsEd.exit
.Ltmp1117:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a1, $a0, %pc_lo12(.L.str.111)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1118:
# %bb.79:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB17_125
# %bb.80:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB17_82
# %bb.81:
	ld.bu	$a0, $s2, 67
	b	.LBB17_84
.LBB17_82:
.Ltmp1119:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1120:
# %bb.83:                               # %.noexc155
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1121:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1122:
.LBB17_84:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp1123:
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1124:
# %bb.85:                               # %.noexc157
.Ltmp1125:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1126:
# %bb.86:                               # %_ZNSolsEPFRSoS_E.exit
.Ltmp1127:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.112)
	addi.d	$a1, $a1, %pc_lo12(.L.str.112)
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1128:
# %bb.87:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115
.Ltmp1129:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1130:
# %bb.88:                               # %_ZNSolsEd.exit117
.Ltmp1131:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1132:
# %bb.89:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119
.Ltmp1133:
	move	$a0, $s1
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1134:
# %bb.90:                               # %_ZNSolsEd.exit121
.Ltmp1135:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1136:
# %bb.91:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
.Ltmp1137:
	move	$a0, $s1
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1138:
# %bb.92:                               # %_ZNSolsEd.exit125
.Ltmp1139:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	ori	$a2, $zero, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1140:
# %bb.93:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB17_125
# %bb.94:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i160
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB17_96
# %bb.95:
	ld.bu	$a0, $s2, 67
	b	.LBB17_98
.LBB17_96:
.Ltmp1141:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1142:
# %bb.97:                               # %.noexc165
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1143:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1144:
.LBB17_98:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i162
.Ltmp1145:
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1146:
# %bb.99:                               # %.noexc167
.Ltmp1147:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1148:
# %bb.100:                              # %_ZNSolsEPFRSoS_E.exit129
.Ltmp1149:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.115)
	addi.d	$a1, $a1, %pc_lo12(.L.str.115)
	ori	$a2, $zero, 22
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1150:
# %bb.101:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131
.Ltmp1151:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1152:
# %bb.102:                              # %_ZNSolsEd.exit133
.Ltmp1153:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	ori	$a2, $zero, 22
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1154:
# %bb.103:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135
.Ltmp1155:
	move	$a0, $s1
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1156:
# %bb.104:                              # %_ZNSolsEd.exit137
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB17_125
# %bb.105:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i171
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB17_107
.LBB17_106:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i184.invoke.sink.split
	ld.bu	$a0, $s2, 67
	b	.LBB17_109
.LBB17_107:
.Ltmp1157:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1158:
# %bb.108:                              # %.noexc176
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1159:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1160:
.LBB17_109:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i184.invoke
.Ltmp1161:
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1162:
# %bb.110:                              # %.noexc189.invoke
.Ltmp1163:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1164:
.LBB17_111:                             # %_ZNSolsEPFRSoS_E.exit139
	beqz	$s5, .LBB17_113
# %bb.112:
	sub.d	$a1, $s4, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_113:                             # %_ZNSt6vectorIdSaIdEED2Ev.exit
	beqz	$s0, .LBB17_115
# %bb.114:
	sub.d	$a1, $s3, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_115:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit
	fcmp.clt.d	$fcc0, $fs0, $fs6
	movcf2gr	$a0, $fcc0
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB17_116:
                                        # implicit-def: $f28_64
                                        # implicit-def: $f27_64
                                        # implicit-def: $f25_64
                                        # implicit-def: $f31_64
                                        # implicit-def: $f29_64
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	fcmp.cule.d	$fcc0, $fs6, $fs0
	bceqz	$fcc0, .LBB17_76
	b	.LBB17_47
.LBB17_117:                             # %.split421.us
.Ltmp1170:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1171:
# %bb.118:                              # %.noexc97
.LBB17_119:                             # %.split427.us
.Ltmp1168:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	move	$s5, $s4
	move	$s4, $s7
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1169:
# %bb.120:                              # %.noexc106
.LBB17_121:                             # %.split.us
.Ltmp1174:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	move	$s4, $s7
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1175:
# %bb.122:                              # %.noexc
.LBB17_123:                             # %.split415.us
.Ltmp1172:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	move	$s4, $s7
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1173:
# %bb.124:                              # %.noexc89
.LBB17_125:                             # %.invoke
.Ltmp1165:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp1166:
# %bb.126:                              # %.cont
.LBB17_127:
.Ltmp1167:
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	b	.LBB17_130
.LBB17_128:                             # %.loopexit.split.us.split.us.split.us
.Ltmp1102:
	move	$s1, $a0
	move	$s4, $s7
	move	$s5, $fp
	move	$s0, $s3
	b	.LBB17_131
.LBB17_129:                             # %.loopexit.split-lp
.Ltmp1176:
.LBB17_130:
	move	$s1, $a0
.LBB17_131:
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	bnez	$s5, .LBB17_134
# %bb.132:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit150
	bnez	$s0, .LBB17_135
.LBB17_133:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit152
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_134:                             # %.thread
	sub.d	$a1, $s4, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB17_133
.LBB17_135:
	sub.d	$a1, $s7, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db, .Lfunc_end17-_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,"aG",@progbits,_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,comdat
	.p2align	2, 0x0
GCC_except_table17:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp1094-.Lfunc_begin12       # >> Call Site 1 <<
	.uleb128 .Ltmp1095-.Ltmp1094            #   Call between .Ltmp1094 and .Ltmp1095
	.uleb128 .Ltmp1102-.Lfunc_begin12       #     jumps to .Ltmp1102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1095-.Lfunc_begin12       # >> Call Site 2 <<
	.uleb128 .Ltmp1096-.Ltmp1095            #   Call between .Ltmp1095 and .Ltmp1096
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1096-.Lfunc_begin12       # >> Call Site 3 <<
	.uleb128 .Ltmp1097-.Ltmp1096            #   Call between .Ltmp1096 and .Ltmp1097
	.uleb128 .Ltmp1102-.Lfunc_begin12       #     jumps to .Ltmp1102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1097-.Lfunc_begin12       # >> Call Site 4 <<
	.uleb128 .Ltmp1098-.Ltmp1097            #   Call between .Ltmp1097 and .Ltmp1098
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1098-.Lfunc_begin12       # >> Call Site 5 <<
	.uleb128 .Ltmp1099-.Ltmp1098            #   Call between .Ltmp1098 and .Ltmp1099
	.uleb128 .Ltmp1102-.Lfunc_begin12       #     jumps to .Ltmp1102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1099-.Lfunc_begin12       # >> Call Site 6 <<
	.uleb128 .Ltmp1100-.Ltmp1099            #   Call between .Ltmp1099 and .Ltmp1100
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1100-.Lfunc_begin12       # >> Call Site 7 <<
	.uleb128 .Ltmp1101-.Ltmp1100            #   Call between .Ltmp1100 and .Ltmp1101
	.uleb128 .Ltmp1102-.Lfunc_begin12       #     jumps to .Ltmp1102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1101-.Lfunc_begin12       # >> Call Site 8 <<
	.uleb128 .Ltmp1103-.Ltmp1101            #   Call between .Ltmp1101 and .Ltmp1103
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1103-.Lfunc_begin12       # >> Call Site 9 <<
	.uleb128 .Ltmp1112-.Ltmp1103            #   Call between .Ltmp1103 and .Ltmp1112
	.uleb128 .Ltmp1167-.Lfunc_begin12       #     jumps to .Ltmp1167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1112-.Lfunc_begin12       # >> Call Site 10 <<
	.uleb128 .Ltmp1113-.Ltmp1112            #   Call between .Ltmp1112 and .Ltmp1113
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1113-.Lfunc_begin12       # >> Call Site 11 <<
	.uleb128 .Ltmp1164-.Ltmp1113            #   Call between .Ltmp1113 and .Ltmp1164
	.uleb128 .Ltmp1167-.Lfunc_begin12       #     jumps to .Ltmp1167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1164-.Lfunc_begin12       # >> Call Site 12 <<
	.uleb128 .Ltmp1170-.Ltmp1164            #   Call between .Ltmp1164 and .Ltmp1170
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1170-.Lfunc_begin12       # >> Call Site 13 <<
	.uleb128 .Ltmp1173-.Ltmp1170            #   Call between .Ltmp1170 and .Ltmp1173
	.uleb128 .Ltmp1176-.Lfunc_begin12       #     jumps to .Ltmp1176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1165-.Lfunc_begin12       # >> Call Site 14 <<
	.uleb128 .Ltmp1166-.Ltmp1165            #   Call between .Ltmp1165 and .Ltmp1166
	.uleb128 .Ltmp1167-.Lfunc_begin12       #     jumps to .Ltmp1167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1166-.Lfunc_begin12       # >> Call Site 15 <<
	.uleb128 .Lfunc_end17-.Ltmp1166         #   Call between .Ltmp1166 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE9CSRMatrixIdiiED2Ev,"axG",@progbits,_ZN6miniFE9CSRMatrixIdiiED2Ev,comdat
	.weak	_ZN6miniFE9CSRMatrixIdiiED2Ev   # -- Begin function _ZN6miniFE9CSRMatrixIdiiED2Ev
	.p2align	5
	.type	_ZN6miniFE9CSRMatrixIdiiED2Ev,@function
_ZN6miniFE9CSRMatrixIdiiED2Ev:          # @_ZN6miniFE9CSRMatrixIdiiED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 104
	beqz	$a0, .LBB18_2
# %bb.1:
	ld.d	$a1, $fp, 120
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_2:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB18_4
# %bb.3:
	ld.d	$a1, $fp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_4:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB18_6
# %bb.5:
	ld.d	$a1, $fp, 72
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_6:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit3
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB18_8
# %bb.7:
	ld.d	$a1, $fp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_8:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit5
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB18_10
# %bb.9:
	ld.d	$a1, $fp, 24
	sub.d	$a1, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB18_10:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit7
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end18:
	.size	_ZN6miniFE9CSRMatrixIdiiED2Ev, .Lfunc_end18-_ZN6miniFE9CSRMatrixIdiiED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE23simple_mesh_descriptionIiED2Ev,"axG",@progbits,_ZN6miniFE23simple_mesh_descriptionIiED2Ev,comdat
	.weak	_ZN6miniFE23simple_mesh_descriptionIiED2Ev # -- Begin function _ZN6miniFE23simple_mesh_descriptionIiED2Ev
	.p2align	5
	.type	_ZN6miniFE23simple_mesh_descriptionIiED2Ev,@function
_ZN6miniFE23simple_mesh_descriptionIiED2Ev: # @_ZN6miniFE23simple_mesh_descriptionIiED2Ev
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a1, $a0, 112
	addi.d	$a0, $a0, 96
.Ltmp1177:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
.Ltmp1178:
# %bb.1:                                # %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit
	ld.d	$a1, $fp, 64
	addi.d	$a0, $fp, 48
.Ltmp1180:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp1181:
# %bb.2:                                # %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit
	ld.d	$a1, $fp, 16
.Ltmp1183:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp1184:
# %bb.3:                                # %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB19_4:
.Ltmp1185:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_5:
.Ltmp1182:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_6:
.Ltmp1179:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN6miniFE23simple_mesh_descriptionIiED2Ev, .Lfunc_end19-_ZN6miniFE23simple_mesh_descriptionIiED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE23simple_mesh_descriptionIiED2Ev,"aG",@progbits,_ZN6miniFE23simple_mesh_descriptionIiED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp1177-.Lfunc_begin13       # >> Call Site 1 <<
	.uleb128 .Ltmp1178-.Ltmp1177            #   Call between .Ltmp1177 and .Ltmp1178
	.uleb128 .Ltmp1179-.Lfunc_begin13       #     jumps to .Ltmp1179
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1180-.Lfunc_begin13       # >> Call Site 2 <<
	.uleb128 .Ltmp1181-.Ltmp1180            #   Call between .Ltmp1180 and .Ltmp1181
	.uleb128 .Ltmp1182-.Lfunc_begin13       #     jumps to .Ltmp1182
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1183-.Lfunc_begin13       # >> Call Site 3 <<
	.uleb128 .Ltmp1184-.Ltmp1183            #   Call between .Ltmp1183 and .Ltmp1184
	.uleb128 .Ltmp1185-.Lfunc_begin13       #     jumps to .Ltmp1185
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1184-.Lfunc_begin13       # >> Call Site 4 <<
	.uleb128 .Lfunc_end19-.Ltmp1184         #   Call between .Ltmp1184 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,"axG",@progbits,_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,comdat
	.weak	_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE # -- Begin function _ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE
	.p2align	5
	.type	_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,@function
_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE: # @_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
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
	move	$fp, $a4
	st.d	$zero, $sp, 24
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 8
.Ltmp1186:
	addi.d	$a4, $sp, 8
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb)
	jirl	$ra, $ra, 0
.Ltmp1187:
# %bb.1:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 8
	beq	$a0, $a1, .LBB20_15
# %bb.2:
	ld.d	$a0, $fp, 16
	ld.w	$s4, $a1, 0
	addi.d	$s0, $fp, 8
	move	$s3, $s0
	beqz	$a0, .LBB20_7
# %bb.3:                                # %.lr.ph.i.i.i.i.preheader
	ori	$a2, $zero, 16
	ori	$a3, $zero, 24
	move	$a1, $s0
	.p2align	4, , 16
.LBB20_4:                               # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 32
	slt	$a4, $a4, $s4
	masknez	$a5, $a0, $a4
	masknez	$a6, $a2, $a4
	maskeqz	$a7, $a3, $a4
	or	$a6, $a7, $a6
	ldx.d	$a0, $a0, $a6
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a5
	bnez	$a0, .LBB20_4
# %bb.5:                                # %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i
	move	$s3, $s0
	beq	$a1, $s0, .LBB20_7
# %bb.6:
	ld.w	$a0, $a1, 32
	move	$s3, $a1
	bge	$s4, $a0, .LBB20_15
.LBB20_7:                               # %.critedge.i
.Ltmp1189:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1190:
# %bb.8:                                # %.noexc105
	move	$s1, $a0
	addi.d	$s2, $a0, 32
	st.w	$s4, $a0, 32
	st.w	$zero, $a0, 36
.Ltmp1192:
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_)
	jirl	$ra, $ra, 0
.Ltmp1193:
# %bb.9:
	move	$a2, $a1
	beqz	$a1, .LBB20_14
# %bb.10:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB20_13
# %bb.11:
	beq	$s0, $a2, .LBB20_13
# %bb.12:
	ld.w	$a0, $s2, 0
	ld.w	$a1, $a2, 32
	slt	$a0, $a0, $a1
.LBB20_13:                              # %.thread.i
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB20_15
.LBB20_14:
	ori	$a1, $zero, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_15:
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 8
	sub.d	$a1, $a1, $a0
	ori	$a2, $zero, 5
	bltu	$a1, $a2, .LBB20_32
# %bb.16:                               # %.lr.ph
	addi.d	$s0, $fp, 8
	ori	$s4, $zero, 1
	ori	$s5, $zero, 16
	ori	$s6, $zero, 24
	b	.LBB20_19
.LBB20_17:                              #   in Loop: Header=BB20_19 Depth=1
	ori	$a1, $zero, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB20_18:                              #   in Loop: Header=BB20_19 Depth=1
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 8
	addi.d	$s4, $s4, 1
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 2
	bgeu	$s4, $a1, .LBB20_32
.LBB20_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_22 Depth 2
	alsl.d	$a1, $s4, $a0, 2
	slli.d	$a2, $s4, 2
	ld.w	$a1, $a1, -4
	ldx.w	$s7, $a0, $a2
	addi.w	$a0, $a1, 1
	beq	$s7, $a0, .LBB20_18
# %bb.20:                               #   in Loop: Header=BB20_19 Depth=1
	ld.d	$a0, $fp, 16
	move	$s3, $s0
	beqz	$a0, .LBB20_25
# %bb.21:                               # %.lr.ph.i.i.i.i78.preheader
                                        #   in Loop: Header=BB20_19 Depth=1
	move	$a1, $s0
	.p2align	4, , 16
.LBB20_22:                              # %.lr.ph.i.i.i.i78
                                        #   Parent Loop BB20_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 32
	slt	$a2, $a2, $s7
	masknez	$a3, $a0, $a2
	masknez	$a4, $s5, $a2
	maskeqz	$a5, $s6, $a2
	or	$a4, $a5, $a4
	ldx.d	$a0, $a0, $a4
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	bnez	$a0, .LBB20_22
# %bb.23:                               # %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i86
                                        #   in Loop: Header=BB20_19 Depth=1
	move	$s3, $s0
	beq	$a1, $s0, .LBB20_25
# %bb.24:                               #   in Loop: Header=BB20_19 Depth=1
	ld.w	$a0, $a1, 32
	move	$s3, $a1
	bge	$s7, $a0, .LBB20_18
.LBB20_25:                              # %.critedge.i91
                                        #   in Loop: Header=BB20_19 Depth=1
.Ltmp1195:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1196:
# %bb.26:                               # %.noexc114
                                        #   in Loop: Header=BB20_19 Depth=1
	move	$s1, $a0
	addi.d	$s2, $a0, 32
	st.w	$s7, $a0, 32
	st.w	$s4, $a0, 36
.Ltmp1198:
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_)
	jirl	$ra, $ra, 0
.Ltmp1199:
# %bb.27:                               #   in Loop: Header=BB20_19 Depth=1
	move	$a2, $a1
	beqz	$a1, .LBB20_17
# %bb.28:                               #   in Loop: Header=BB20_19 Depth=1
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB20_31
# %bb.29:                               #   in Loop: Header=BB20_19 Depth=1
	beq	$s0, $a2, .LBB20_31
# %bb.30:                               #   in Loop: Header=BB20_19 Depth=1
	ld.w	$a0, $s2, 0
	ld.w	$a1, $a2, 32
	slt	$a0, $a0, $a1
.LBB20_31:                              # %.thread.i112
                                        #   in Loop: Header=BB20_19 Depth=1
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB20_18
.LBB20_32:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit95
	beqz	$a0, .LBB20_34
# %bb.33:
	ld.d	$a1, $sp, 24
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_34:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit97
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
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
.LBB20_35:                              # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i
.Ltmp1194:
	b	.LBB20_41
.LBB20_36:
.Ltmp1191:
	b	.LBB20_39
.LBB20_37:
.Ltmp1188:
	b	.LBB20_39
.LBB20_38:
.Ltmp1197:
.LBB20_39:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit101
	move	$fp, $a0
	b	.LBB20_42
.LBB20_40:                              # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i106
.Ltmp1200:
.LBB20_41:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit101
	move	$fp, $a0
	ori	$a1, $zero, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_42:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit101
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB20_44
# %bb.43:
	ld.d	$a1, $sp, 24
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_44:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit103
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE, .Lfunc_end20-_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,"aG",@progbits,_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp1186-.Lfunc_begin14       # >> Call Site 1 <<
	.uleb128 .Ltmp1187-.Ltmp1186            #   Call between .Ltmp1186 and .Ltmp1187
	.uleb128 .Ltmp1188-.Lfunc_begin14       #     jumps to .Ltmp1188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1189-.Lfunc_begin14       # >> Call Site 2 <<
	.uleb128 .Ltmp1190-.Ltmp1189            #   Call between .Ltmp1189 and .Ltmp1190
	.uleb128 .Ltmp1191-.Lfunc_begin14       #     jumps to .Ltmp1191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1192-.Lfunc_begin14       # >> Call Site 3 <<
	.uleb128 .Ltmp1193-.Ltmp1192            #   Call between .Ltmp1192 and .Ltmp1193
	.uleb128 .Ltmp1194-.Lfunc_begin14       #     jumps to .Ltmp1194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1193-.Lfunc_begin14       # >> Call Site 4 <<
	.uleb128 .Ltmp1195-.Ltmp1193            #   Call between .Ltmp1193 and .Ltmp1195
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1195-.Lfunc_begin14       # >> Call Site 5 <<
	.uleb128 .Ltmp1196-.Ltmp1195            #   Call between .Ltmp1195 and .Ltmp1196
	.uleb128 .Ltmp1197-.Lfunc_begin14       #     jumps to .Ltmp1197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1198-.Lfunc_begin14       # >> Call Site 6 <<
	.uleb128 .Ltmp1199-.Ltmp1198            #   Call between .Ltmp1198 and .Ltmp1199
	.uleb128 .Ltmp1200-.Lfunc_begin14       #     jumps to .Ltmp1200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1199-.Lfunc_begin14       # >> Call Site 7 <<
	.uleb128 .Lfunc_end20-.Ltmp1199         #   Call between .Ltmp1199 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,"axG",@progbits,_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,comdat
	.weak	_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev # -- Begin function _ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev
	.p2align	5
	.type	_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,@function
_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev: # @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp1201:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
.Ltmp1202:
# %bb.1:                                # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB21_2:
.Ltmp1203:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev, .Lfunc_end21-_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,"aG",@progbits,_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp1201-.Lfunc_begin15       # >> Call Site 1 <<
	.uleb128 .Ltmp1202-.Ltmp1201            #   Call between .Ltmp1201 and .Ltmp1202
	.uleb128 .Ltmp1203-.Lfunc_begin15       #     jumps to .Ltmp1203
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1202-.Lfunc_begin15       # >> Call Site 2 <<
	.uleb128 .Lfunc_end21-.Ltmp1202         #   Call between .Ltmp1202 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3setIiSt4lessIiESaIiEED2Ev,"axG",@progbits,_ZNSt3setIiSt4lessIiESaIiEED2Ev,comdat
	.weak	_ZNSt3setIiSt4lessIiESaIiEED2Ev # -- Begin function _ZNSt3setIiSt4lessIiESaIiEED2Ev
	.p2align	5
	.type	_ZNSt3setIiSt4lessIiESaIiEED2Ev,@function
_ZNSt3setIiSt4lessIiESaIiEED2Ev:        # @_ZNSt3setIiSt4lessIiESaIiEED2Ev
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp1204:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp1205:
# %bb.1:                                # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB22_2:
.Ltmp1206:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZNSt3setIiSt4lessIiESaIiEED2Ev, .Lfunc_end22-_ZNSt3setIiSt4lessIiESaIiEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3setIiSt4lessIiESaIiEED2Ev,"aG",@progbits,_ZNSt3setIiSt4lessIiESaIiEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp1204-.Lfunc_begin16       # >> Call Site 1 <<
	.uleb128 .Ltmp1205-.Ltmp1204            #   Call between .Ltmp1204 and .Ltmp1205
	.uleb128 .Ltmp1206-.Lfunc_begin16       #     jumps to .Ltmp1206
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1205-.Lfunc_begin16       # >> Call Site 2 <<
	.uleb128 .Lfunc_end22-.Ltmp1205         #   Call between .Ltmp1205 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb,"axG",@progbits,_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb,comdat
	.weak	_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb # -- Begin function _ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb
	.p2align	5
	.type	_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb,@function
_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb: # @_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb
	.cfi_startproc
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
	ld.d	$s4, $a4, 0
	ld.d	$a6, $a4, 8
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	move	$s7, $a0
	beq	$a6, $s4, .LBB23_2
# %bb.1:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$s4, $a4, 8
	move	$a6, $s4
.LBB23_2:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit
	ld.w	$s0, $a3, 16
	ld.w	$s2, $a3, 20
	ld.w	$s3, $a3, 8
	ld.w	$s6, $a3, 12
	ld.w	$a2, $a3, 0
	ld.w	$a7, $a3, 4
	beqz	$a5, .LBB23_4
# %bb.3:
	slt	$a0, $zero, $s0
	sub.w	$s0, $s0, $a0
	slt	$a0, $zero, $s3
	sub.w	$s3, $s3, $a0
	slt	$a0, $zero, $a2
	sub.w	$a2, $a2, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	slt	$a0, $s2, $a0
	add.w	$s2, $s2, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slt	$a0, $s6, $a0
	add.w	$s6, $s6, $a0
	slt	$a0, $a7, $s7
	add.w	$a7, $a7, $a0
.LBB23_4:
	sub.d	$a0, $s2, $s0
	sub.d	$a1, $s6, $s3
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	sub.d	$a2, $a7, $a2
	mul.d	$a1, $a2, $a1
	mul.w	$fp, $a1, $a0
	addi.w	$s1, $zero, -1
	bge	$s1, $fp, .LBB23_29
# %bb.5:
	ld.d	$a0, $a4, 16
	sub.d	$s5, $a0, $s4
	srai.d	$a1, $s5, 2
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	bgeu	$a1, $fp, .LBB23_11
# %bb.6:                                # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	sub.d	$s8, $a6, $s4
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a5, $a0
	blt	$s8, $a1, .LBB23_8
# %bb.7:
	move	$a0, $a5
	move	$a1, $s4
	move	$a2, $s8
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	move	$s8, $a5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a5, $s8
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
.LBB23_8:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s4, .LBB23_10
# %bb.9:
	move	$a0, $s4
	move	$a1, $s5
	move	$s4, $a5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a5, $s4
.LBB23_10:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	st.d	$a5, $a4, 0
	add.d	$a6, $a5, $s8
	st.d	$a6, $a4, 8
	alsl.d	$a0, $fp, $a5, 2
	st.d	$a0, $a4, 16
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	blt	$s0, $s2, .LBB23_12
	b	.LBB23_27
.LBB23_11:
	move	$a5, $s4
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	bge	$s0, $s2, .LBB23_27
.LBB23_12:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	bge	$s3, $s6, .LBB23_27
# %bb.13:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	bge	$fp, $a7, .LBB23_27
# %bb.14:                               # %.preheader76.us.us.preheader
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a1, $s0, $a2
	add.d	$a1, $s3, $a1
	mul.d	$a3, $s7, $a1
	mul.d	$a1, $a2, $s7
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	lu52i.d	$a1, $s1, 511
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	b	.LBB23_16
	.p2align	4, , 16
.LBB23_15:                              # %._crit_edge79.split.us.us.us
                                        #   in Loop: Header=BB23_16 Depth=1
	addi.w	$s0, $s0, 1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$a3, $a3, $a1
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	beq	$s0, $s2, .LBB23_27
.LBB23_16:                              # %.preheader76.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_18 Depth 2
                                        #       Child Loop BB23_20 Depth 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	slt	$a1, $s0, $a1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	move	$s2, $a3
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB23_18
	.p2align	4, , 16
.LBB23_17:                              # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB23_18 Depth=2
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	addi.w	$s3, $s3, 1
	add.d	$s2, $s2, $s7
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	beq	$s3, $s6, .LBB23_15
.LBB23_18:                              # %.preheader.us.us.us
                                        #   Parent Loop BB23_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_20 Depth 3
	or	$t1, $s3, $s0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	slt	$a1, $s3, $a1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	and	$t2, $a1, $a2
	masknez	$t3, $s1, $t2
	st.d	$t1, $sp, 144                   # 8-byte Folded Spill
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t3, $sp, 128                   # 8-byte Folded Spill
	b	.LBB23_20
	.p2align	4, , 16
.LBB23_19:                              #   in Loop: Header=BB23_20 Depth=3
	st.w	$s3, $a6, 0
	addi.d	$a6, $a6, 4
	st.d	$a6, $a4, 8
	addi.w	$fp, $fp, 1
	beq	$a7, $fp, .LBB23_17
.LBB23_20:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit.us.us.us
                                        #   Parent Loop BB23_16 Depth=1
                                        #     Parent Loop BB23_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	or	$a1, $t1, $fp
	slt	$a1, $s1, $a1
	slt	$a2, $fp, $s7
	add.d	$a3, $s2, $fp
	maskeqz	$a3, $a3, $t2
	or	$a3, $a3, $t3
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s1, $a2
	or	$a2, $a3, $a2
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s1, $a1
	or	$s3, $a2, $a1
	bne	$a6, $a0, .LBB23_19
# %bb.21:                               #   in Loop: Header=BB23_20 Depth=3
	sub.d	$s4, $a0, $a5
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB23_28
# %bb.22:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.us.us.us
                                        #   in Loop: Header=BB23_20 Depth=3
	move	$s0, $s7
	srai.d	$a0, $s4, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s7, $a1, $a0
	slli.d	$a0, $s7, 2
	move	$s8, $a5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s3, $a0, $s4
	blt	$s4, $s6, .LBB23_24
# %bb.23:                               #   in Loop: Header=BB23_20 Depth=3
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB23_24:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i.us.us.us
                                        #   in Loop: Header=BB23_20 Depth=3
	beqz	$s8, .LBB23_26
# %bb.25:                               #   in Loop: Header=BB23_20 Depth=3
	move	$a0, $s8
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_26:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i.us.us.us
                                        #   in Loop: Header=BB23_20 Depth=3
	add.d	$a0, $s5, $s4
	addi.d	$a6, $a0, 4
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	st.d	$s5, $a4, 0
	st.d	$a6, $a4, 8
	alsl.d	$a0, $s7, $s5, 2
	st.d	$a0, $a4, 16
	move	$a5, $s5
	move	$s7, $s0
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	bne	$a7, $fp, .LBB23_20
	b	.LBB23_17
.LBB23_27:                              # %._crit_edge
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
.LBB23_28:                              # %.split.us
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB23_29:
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb, .Lfunc_end23-_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_,comdat
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_ # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_,@function
_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_: # @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_
	.cfi_startproc
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
	move	$a3, $a0
	addi.d	$fp, $a0, 8
	beq	$fp, $a1, .LBB24_5
# %bb.1:
	move	$a0, $a1
	ld.w	$s0, $a2, 0
	ld.w	$a1, $a1, 32
	bge	$s0, $a1, .LBB24_8
# %bb.2:
	ld.d	$s1, $a3, 24
	beq	$s1, $a0, .LBB24_20
# %bb.3:
	move	$s3, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bge	$a1, $s0, .LBB24_21
# %bb.4:
	ld.d	$a1, $a0, 24
	sltui	$a1, $a1, 1
	move	$a2, $a0
	masknez	$a0, $s2, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	b	.LBB24_36
.LBB24_5:
	ld.d	$a0, $a3, 40
	beqz	$a0, .LBB24_12
# %bb.6:
	ld.d	$a1, $a3, 32
	ld.w	$a0, $a1, 32
	ld.w	$a4, $a2, 0
	bge	$a0, $a4, .LBB24_12
.LBB24_7:
	move	$a0, $zero
	b	.LBB24_36
.LBB24_8:
	bge	$a1, $s0, .LBB24_19
# %bb.9:
	ld.d	$a1, $a3, 32
	beq	$a1, $a0, .LBB24_26
# %bb.10:
	move	$s1, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bge	$s0, $a1, .LBB24_27
# %bb.11:
	ld.d	$a1, $s2, 24
	sltui	$a1, $a1, 1
	maskeqz	$a2, $s2, $a1
	masknez	$a0, $a0, $a1
	or	$a1, $a2, $a0
	b	.LBB24_36
.LBB24_12:
	ld.d	$a5, $a3, 16
	beqz	$a5, .LBB24_16
# %bb.13:                               # %.lr.ph.i
	ld.w	$a1, $a2, 0
	ori	$a0, $zero, 24
	ori	$a6, $zero, 16
	.p2align	4, , 16
.LBB24_14:                              # =>This Inner Loop Header: Depth=1
	move	$fp, $a5
	ld.w	$a4, $a5, 32
	slt	$a5, $a1, $a4
	masknez	$a7, $a0, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	ldx.d	$a5, $fp, $a5
	bnez	$a5, .LBB24_14
# %bb.15:                               # %._crit_edge.i
	move	$a0, $fp
	bge	$a1, $a4, .LBB24_18
.LBB24_16:                              # %._crit_edge.thread.i
	ld.d	$a0, $a3, 24
	beq	$fp, $a0, .LBB24_35
# %bb.17:
	move	$a0, $fp
	move	$s0, $a2
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a4, $a0, 32
	ld.w	$a1, $s0, 0
.LBB24_18:
	slt	$a2, $a4, $a1
	b	.LBB24_34
.LBB24_19:
	move	$a1, $zero
	b	.LBB24_36
.LBB24_20:
	move	$a1, $a0
	b	.LBB24_36
.LBB24_21:
	ld.d	$a4, $s3, 16
	move	$a1, $s1
	beqz	$a4, .LBB24_25
# %bb.22:                               # %.lr.ph.i22.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB24_23:                              # %.lr.ph.i22
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.w	$a2, $a4, 32
	slt	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB24_23
# %bb.24:                               # %._crit_edge.i28
	move	$a0, $fp
	bge	$s0, $a2, .LBB24_33
.LBB24_25:                              # %._crit_edge.thread.i36
	bne	$fp, $a1, .LBB24_32
	b	.LBB24_7
.LBB24_26:
	move	$a1, $a0
	move	$a0, $zero
	b	.LBB24_36
.LBB24_27:
	move	$a1, $s1
	ld.d	$a4, $s1, 16
	beqz	$a4, .LBB24_31
# %bb.28:                               # %.lr.ph.i41.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB24_29:                              # %.lr.ph.i41
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.w	$a2, $a4, 32
	slt	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB24_29
# %bb.30:                               # %._crit_edge.i47
	move	$a0, $fp
	bge	$s0, $a2, .LBB24_33
.LBB24_31:                              # %._crit_edge.thread.i55
	ld.d	$a0, $a1, 24
	beq	$fp, $a0, .LBB24_35
.LBB24_32:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a2, $a0, 32
.LBB24_33:
	slt	$a2, $a2, $s0
.LBB24_34:                              # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE24_M_get_insert_unique_posERS1_.exit
	maskeqz	$a1, $fp, $a2
	masknez	$a0, $a0, $a2
	b	.LBB24_36
.LBB24_35:
	move	$a0, $zero
	move	$a1, $fp
.LBB24_36:                              # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE24_M_get_insert_unique_posERS1_.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end24:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_, .Lfunc_end24-_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE,"axG",@progbits,_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE,comdat
	.weak	_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE # -- Begin function _ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE
	.p2align	5
	.type	_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE,@function
_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE: # @_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE
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
	ld.d	$a3, $a1, 16
	move	$fp, $a0
	addi.d	$a2, $a1, 8
	beqz	$a3, .LBB25_8
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a0, $a2
	.p2align	4, , 16
.LBB25_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 32
	slt	$a6, $a6, $fp
	masknez	$a7, $a3, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a3, $a3, $t0
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a7
	bnez	$a3, .LBB25_2
# %bb.3:                                # %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit
	beq	$a0, $a2, .LBB25_5
# %bb.4:
	ld.w	$a2, $a0, 32
	beq	$a2, $fp, .LBB25_7
.LBB25_5:                               # %.critedge
	ld.d	$a2, $a1, 40
	beqz	$a2, .LBB25_9
.LBB25_6:
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bne	$fp, $a1, .LBB25_12
.LBB25_7:                               # %.thread
	ld.w	$a0, $a0, 36
	b	.LBB25_26
.LBB25_8:
	move	$a0, $a2
	ld.d	$a2, $a1, 40
	bnez	$a2, .LBB25_6
.LBB25_9:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	ori	$a2, $zero, 31
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB25_27
# %bb.10:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB25_19
# %bb.11:
	ld.bu	$a0, $fp, 67
	b	.LBB25_20
.LBB25_12:
	bge	$fp, $a1, .LBB25_17
# %bb.13:
	ld.d	$a2, $s0, 24
	bne	$a0, $a2, .LBB25_17
# %bb.14:
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a1, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 10
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 23
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB25_27
# %bb.15:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB25_23
.LBB25_16:
	ld.bu	$a1, $fp, 67
	b	.LBB25_24
.LBB25_17:                              # %.critedge2
	sub.w	$a1, $fp, $a1
	addi.w	$a2, $zero, -1
	bge	$a2, $a1, .LBB25_21
# %bb.18:
	ld.w	$a0, $a0, 36
	add.w	$a0, $a0, $a1
	b	.LBB25_26
.LBB25_19:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB25_20:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cout)
	ld.d	$a2, $a1, %got_pc_lo12(_ZSt4cout)
	ext.w.b	$a1, $a0
	move	$a0, $a2
	b	.LBB25_25
.LBB25_21:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 49
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB25_27
# %bb.22:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
	ld.bu	$a1, $fp, 56
	bnez	$a1, .LBB25_16
.LBB25_23:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB25_24:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15
	ext.w.b	$a1, $a1
.LBB25_25:
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -99
.LBB25_26:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB25_27:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE, .Lfunc_end25-_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,comdat
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,@function
_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E: # @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB26_4
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
	.p2align	4, , 16
.LBB26_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB26_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB26_4:                               # %._crit_edge
	ret
.Lfunc_end26:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E, .Lfunc_end26-_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE,"axG",@progbits,_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE,comdat
	.weak	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE # -- Begin function _ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE
	.p2align	5
	.type	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE,@function
_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE: # @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB27_4
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
	.p2align	4, , 16
.LBB27_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB27_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB27_4:                               # %._crit_edge
	ret
.Lfunc_end27:
	.size	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE, .Lfunc_end27-_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj,"axG",@progbits,_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj,comdat
	.weak	_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj # -- Begin function _ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj
	.p2align	5
	.type	_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj,@function
_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj: # @_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj
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
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a3, $fp, 8
	move	$s0, $a1
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$a4, $a0, $a3
	srai.d	$a4, $a4, 2
	move	$s1, $a2
	bgeu	$a4, $a1, .LBB28_2
# %bb.1:
	addi.d	$a0, $fp, 8
	sub.d	$a1, $a1, $a4
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB28_5
.LBB28_2:
	bgeu	$a1, $a4, .LBB28_5
# %bb.3:
	alsl.d	$a1, $a1, $a3, 2
	beq	$a0, $a1, .LBB28_5
# %bb.4:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a1, $fp, 16
.LBB28_5:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $fp, 40
	ld.d	$a2, $fp, 32
	addi.d	$a1, $s0, 1
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB28_7
# %bb.6:
	addi.d	$a0, $fp, 32
	sub.d	$a1, $a1, $a3
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB28_10
.LBB28_7:
	bgeu	$a1, $a3, .LBB28_10
# %bb.8:
	alsl.d	$a1, $a1, $a2, 2
	beq	$a0, $a1, .LBB28_10
# %bb.9:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i7
	st.d	$a1, $fp, 40
.LBB28_10:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit8
	ld.d	$a0, $fp, 96
	ld.d	$s2, $fp, 80
	mul.d	$a1, $s1, $s0
	bstrpick.d	$s4, $a1, 31, 0
	sub.d	$s0, $a0, $s2
	srai.d	$a0, $s0, 2
	bgeu	$a0, $s4, .LBB28_16
# %bb.11:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$a0, $fp, 88
	sub.d	$s1, $a0, $s2
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s3, $a0
	blt	$s1, $a1, .LBB28_13
# %bb.12:
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB28_13:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s2, .LBB28_15
# %bb.14:
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB28_15:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	st.d	$s3, $fp, 80
	add.d	$a0, $s3, $s1
	st.d	$a0, $fp, 88
	alsl.d	$a0, $s4, $s3, 2
	st.d	$a0, $fp, 96
.LBB28_16:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a0, $fp, 120
	ld.d	$s0, $fp, 104
	sub.d	$s1, $a0, $s0
	srai.d	$a0, $s1, 3
	bgeu	$a0, $s4, .LBB28_22
# %bb.17:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
	ld.d	$a0, $fp, 112
	sub.d	$s2, $a0, $s0
	slli.d	$a0, $s4, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s3, $a0
	blt	$s2, $a1, .LBB28_19
# %bb.18:
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB28_19:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
	beqz	$s0, .LBB28_21
# %bb.20:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB28_21:                              # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
	st.d	$s3, $fp, 104
	add.d	$a0, $s3, $s2
	st.d	$a0, $fp, 112
	alsl.d	$a0, $s4, $s3, 3
	st.d	$a0, $fp, 120
.LBB28_22:                              # %_ZNSt6vectorIdSaIdEE7reserveEm.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end28:
	.size	_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj, .Lfunc_end28-_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj
	.cfi_endproc
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
	beqz	$a1, .LBB29_13
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$s2, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $s2
	srai.d	$a0, $a0, 2
	bgeu	$a0, $a1, .LBB29_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $s2, $s1
	srai.d	$a1, $s2, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB29_14
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
	beq	$s0, $s7, .LBB29_5
# %bb.4:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i29
	addi.d	$a0, $s6, 4
	slli.d	$a1, $s0, 2
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_5:                               # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit31
	blt	$s2, $s7, .LBB29_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB29_7:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
	beqz	$s1, .LBB29_9
# %bb.8:
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB29_9:                               # %_ZZNSt6vectorIiSaIiEE17_M_default_appendEmEN6_GuardD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 2
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 16
	b	.LBB29_13
.LBB29_10:
	st.w	$zero, $s2, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $s2, 4
	beq	$s0, $a1, .LBB29_12
# %bb.11:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
	slli.d	$a1, $s0, 2
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s2, 2
.LBB29_12:                              # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit
	st.d	$a0, $fp, 8
.LBB29_13:
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
.LBB29_14:
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	_ZNSt6vectorIiSaIiEE17_M_default_appendEm, .Lfunc_end29-_ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_,"axG",@progbits,_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_,comdat
	.weak	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_ # -- Begin function _ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_
	.p2align	5
	.type	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_,@function
_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_: # @_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_
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
	move	$s0, $a2
	move	$fp, $a0
	ld.d	$a0, $a1, 0
	ld.d	$s4, $sp, 72
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a3, 0
	st.d	$a0, $fp, 0
	ld.d	$t0, $sp, 64
	st.d	$a1, $fp, 8
	st.d	$a2, $fp, 16
	st.w	$a4, $fp, 24
	ld.d	$a2, $s4, 8
	st.w	$a5, $fp, 28
	st.w	$a6, $fp, 32
	st.w	$a7, $fp, 36
	st.d	$a2, $fp, 40
	ld.d	$a3, $s4, 32
	ld.d	$a0, $s4, 80
	ld.d	$a4, $s4, 104
	ld.d	$a5, $s4, 16
	st.d	$a3, $fp, 48
	st.d	$a0, $fp, 56
	st.d	$a4, $fp, 64
	sub.d	$a2, $a5, $a2
	ld.d	$a3, $s4, 96
	srli.d	$a2, $a2, 2
	ld.d	$a5, $s4, 120
	st.w	$a2, $fp, 72
	sub.d	$a3, $a3, $a0
	srai.d	$a3, $a3, 2
	sub.d	$a4, $a5, $a4
	srai.d	$a4, $a4, 3
	st.d	$t0, $fp, 80
	beq	$a3, $a4, .LBB30_6
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	ori	$a2, $zero, 31
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 96
	ld.d	$a1, $s4, 80
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	ori	$a2, $zero, 5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	ori	$a2, $zero, 23
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 120
	ld.d	$a1, $s4, 104
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB30_23
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB30_4
# %bb.3:
	ld.bu	$a0, $s2, 67
	b	.LBB30_5
.LBB30_4:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.LBB30_5:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 96
	ld.d	$a0, $s4, 80
	ld.w	$a2, $fp, 72
	ld.d	$a1, $s0, 0
	sub.d	$a3, $a3, $a0
	srai.d	$a3, $a3, 2
.LBB30_6:
	addi.w	$a2, $a2, 0
	slli.d	$a2, $a2, 2
	ldx.w	$s0, $a1, $a2
	addi.d	$s1, $s4, 80
	bgeu	$a3, $s0, .LBB30_12
# %bb.7:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	ori	$a2, $zero, 31
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 96
	ld.d	$a1, $s4, 80
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	ori	$a2, $zero, 10
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB30_23
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i29
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB30_10
# %bb.9:
	ld.bu	$a0, $s3, 67
	b	.LBB30_11
.LBB30_10:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.LBB30_11:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit32
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
.LBB30_12:
	ld.d	$a1, $s4, 88
	sub.d	$a2, $a1, $a0
	srai.d	$a2, $a2, 2
	bgeu	$a2, $s0, .LBB30_14
# %bb.13:
	sub.d	$a1, $s0, $a2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB30_17
.LBB30_14:
	bgeu	$s0, $a2, .LBB30_17
# %bb.15:
	alsl.d	$a0, $s0, $a0, 2
	beq	$a1, $a0, .LBB30_17
# %bb.16:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a0, $s4, 88
.LBB30_17:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $s4, 112
	ld.d	$a1, $s4, 104
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 3
	bgeu	$a2, $s0, .LBB30_19
# %bb.18:
	addi.d	$a0, $s4, 104
	sub.d	$a1, $s0, $a2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB30_22
.LBB30_19:
	bgeu	$s0, $a2, .LBB30_22
# %bb.20:
	alsl.d	$a1, $s0, $a1, 3
	beq	$a0, $a1, .LBB30_22
# %bb.21:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a1, $s4, 112
.LBB30_22:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit
	ld.w	$a0, $fp, 72
	ld.d	$a1, $fp, 48
	slli.d	$a0, $a0, 2
	stx.w	$s0, $a1, $a0
	st.w	$zero, $fp, 76
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB30_23:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_, .Lfunc_end30-_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi,"axG",@progbits,_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi,comdat
	.weak	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi # -- Begin function _ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi
	.p2align	5
	.type	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi,@function
_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi: # @_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi
	.cfi_startproc
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a1, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a3, $fp, 40
	ld.d	$a4, $fp, 8
	stx.w	$a0, $a3, $a2
	ldx.w	$a4, $a4, $a2
	ld.d	$a0, $fp, 48
	ld.d	$a3, $fp, 16
	move	$s2, $zero
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	stx.w	$a4, $a0, $a2
	alsl.w	$a0, $a1, $a1, 1
	alsl.d	$a1, $a0, $a3, 2
	ld.w	$a2, $a1, 4
	ld.w	$a1, $a1, 8
	slli.d	$a0, $a0, 2
	ldx.w	$s7, $a3, $a0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a2, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a4, $a1, -1
	addi.d	$a1, $zero, -1
	ori	$a5, $zero, 2
	b	.LBB31_2
	.p2align	4, , 16
.LBB31_1:                               #   in Loop: Header=BB31_2 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 1
	beq	$a1, $a5, .LBB31_22
.LBB31_2:                               # %.preheader40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_4 Depth 2
                                        #       Child Loop BB31_9 Depth 3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	add.w	$s5, $a1, $a0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a1, $zero, -1
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	b	.LBB31_4
	.p2align	4, , 16
.LBB31_3:                               #   in Loop: Header=BB31_4 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	addi.d	$s4, $s4, 1
	beq	$a1, $a5, .LBB31_1
.LBB31_4:                               # %.preheader
                                        #   Parent Loop BB31_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_9 Depth 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.w	$s8, $a1, $a0
	or	$s3, $s8, $s5
	addi.d	$s6, $zero, -1
	b	.LBB31_9
.LBB31_5:                               #   in Loop: Header=BB31_9 Depth=3
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
.LBB31_6:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
                                        #   in Loop: Header=BB31_9 Depth=3
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB31_7:                               #   in Loop: Header=BB31_9 Depth=3
	ld.d	$a0, $fp, 56
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.w	$a1, $s2, $a1
	ld.d	$a2, $fp, 64
	slli.d	$a3, $a1, 2
	stx.w	$s0, $a0, $a3
	slli.d	$a0, $a1, 3
	stx.d	$zero, $a2, $a0
	addi.w	$s2, $s2, 1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ori	$a5, $zero, 2
	.p2align	4, , 16
.LBB31_8:                               # %_ZN6miniFE6get_idIiEET_iiiiii.exit.thread
                                        #   in Loop: Header=BB31_9 Depth=3
	addi.w	$s6, $s6, 1
	beq	$s6, $a5, .LBB31_3
.LBB31_9:                               #   Parent Loop BB31_2 Depth=1
                                        #     Parent Loop BB31_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$a0, $s7, $s6
	or	$a1, $s3, $a0
	bltz	$a1, .LBB31_8
# %bb.10:                               #   in Loop: Header=BB31_9 Depth=3
	ld.w	$a1, $fp, 24
	bge	$a0, $a1, .LBB31_8
# %bb.11:                               #   in Loop: Header=BB31_9 Depth=3
	ld.w	$a2, $fp, 28
	bge	$s8, $a2, .LBB31_8
# %bb.12:                               #   in Loop: Header=BB31_9 Depth=3
	ld.w	$a3, $fp, 32
	bge	$s5, $a3, .LBB31_8
# %bb.13:                               # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   in Loop: Header=BB31_9 Depth=3
	mul.d	$a2, $a4, $a2
	add.d	$a2, $s4, $a2
	mul.d	$a1, $a1, $a2
	add.w	$s1, $a0, $a1
	bltz	$s1, .LBB31_8
# %bb.14:                               # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   in Loop: Header=BB31_9 Depth=3
	ld.w	$a0, $fp, 36
	bge	$s1, $a0, .LBB31_8
# %bb.15:                               #   in Loop: Header=BB31_9 Depth=3
	ld.d	$a0, $fp, 80
	addi.d	$a1, $a0, 96
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	move	$s0, $a0
	blt	$a0, $a1, .LBB31_7
# %bb.16:                               #   in Loop: Header=BB31_9 Depth=3
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	ori	$a2, $zero, 33
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	ori	$a2, $zero, 13
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	ori	$a2, $zero, 19
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a1, $a0, %pc_lo12(.L.str.90)
	ori	$a2, $zero, 17
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	ld.d	$a1, $a0, 136
	beqz	$a1, .LBB31_18
# %bb.17:                               #   in Loop: Header=BB31_9 Depth=3
	addi.d	$a0, $a0, 104
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 36
	b	.LBB31_19
.LBB31_18:                              #   in Loop: Header=BB31_9 Depth=3
	move	$a1, $zero
.LBB31_19:                              # %_ZNK6miniFE23simple_mesh_descriptionIiE14max_row_in_mapEv.exit
                                        #   in Loop: Header=BB31_9 Depth=3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a1, $a0, %pc_lo12(.L.str.91)
	ori	$a2, $zero, 7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 76
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	beqz	$s1, .LBB31_28
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB31_9 Depth=3
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB31_5
# %bb.21:                               #   in Loop: Header=BB31_9 Depth=3
	ld.bu	$a1, $s1, 67
	b	.LBB31_6
.LBB31_22:
	ld.d	$a0, $fp, 56
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$fp, $a1, $a0, 2
	addi.d	$a0, $fp, -8
	ori	$a1, $zero, 2
	move	$a2, $s2
	.p2align	4, , 16
.LBB31_23:                              # =>This Inner Loop Header: Depth=1
	blt	$a2, $a1, .LBB31_27
# %bb.24:                               #   in Loop: Header=BB31_23 Depth=1
	slli.d	$a3, $a2, 2
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $fp, $a4
	ldx.w	$a3, $a0, $a3
	bge	$a4, $a3, .LBB31_23
# %bb.25:
	beqz	$s2, .LBB31_27
# %bb.26:
	alsl.d	$s0, $s2, $fp, 2
	clz.d	$a0, $s2
	slli.d	$a0, $a0, 1
	xori	$a2, $a0, 126
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
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
	pcaddu18i	$t8, %call36(_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_)
	jr	$t8
.LBB31_27:                              # %_Z14sort_if_neededIiEvPT_S0_.exit
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
.LBB31_28:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi, .Lfunc_end31-_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIdSaIdEE17_M_default_appendEm,@function
_ZNSt6vectorIdSaIdEE17_M_default_appendEm: # @_ZNSt6vectorIdSaIdEE17_M_default_appendEm
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
	beqz	$a1, .LBB32_13
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$s2, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $s2
	srai.d	$a0, $a0, 3
	bgeu	$a0, $a1, .LBB32_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $s2, $s1
	srai.d	$a1, $s2, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB32_14
# %bb.3:                                # %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	ori	$s7, $zero, 1
	stx.d	$zero, $a0, $s2
	beq	$s0, $s7, .LBB32_5
# %bb.4:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i29
	addi.d	$a0, $s6, 8
	slli.d	$a1, $s0, 3
	addi.d	$a2, $a1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB32_5:                               # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit31
	blt	$s2, $s7, .LBB32_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB32_7:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
	beqz	$s1, .LBB32_9
# %bb.8:
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB32_9:                               # %_ZZNSt6vectorIdSaIdEE17_M_default_appendEmEN6_GuardD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 3
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 3
	st.d	$a0, $fp, 16
	b	.LBB32_13
.LBB32_10:
	st.d	$zero, $s2, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $s2, 8
	beq	$s0, $a1, .LBB32_12
# %bb.11:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
	slli.d	$a1, $s0, 3
	addi.d	$a2, $a1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s2, 3
.LBB32_12:                              # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit
	st.d	$a0, $fp, 8
.LBB32_13:
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
.LBB32_14:
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZNSt6vectorIdSaIdEE17_M_default_appendEm, .Lfunc_end32-_ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ # -- Begin function _ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,@function
_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_: # @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
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
	sub.d	$s6, $a1, $a0
	ori	$a0, $zero, 65
	blt	$s6, $a0, .LBB33_35
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	addi.d	$s2, $fp, 4
	addi.w	$a0, $zero, -4
	sub.d	$s3, $a0, $fp
	lu52i.d	$s4, $a0, 2047
	ori	$s5, $zero, 64
	b	.LBB33_3
	.p2align	4, , 16
.LBB33_2:                               # %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
                                        #   in Loop: Header=BB33_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bge	$s5, $s6, .LBB33_35
.LBB33_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_16 Depth 2
                                        #       Child Loop BB33_17 Depth 3
                                        #       Child Loop BB33_19 Depth 3
	beqz	$s0, .LBB33_22
# %bb.4:                                #   in Loop: Header=BB33_3 Depth=1
	srli.d	$a0, $s6, 1
	and	$a3, $a0, $s4
	ld.w	$a2, $fp, 4
	ldx.w	$a4, $fp, $a3
	ld.w	$a0, $a1, -4
	add.d	$a3, $fp, $a3
	bge	$a2, $a4, .LBB33_7
# %bb.5:                                #   in Loop: Header=BB33_3 Depth=1
	bge	$a4, $a0, .LBB33_9
# %bb.6:                                #   in Loop: Header=BB33_3 Depth=1
	ld.w	$a0, $fp, 0
	st.w	$a4, $fp, 0
	st.w	$a0, $a3, 0
	b	.LBB33_15
	.p2align	4, , 16
.LBB33_7:                               #   in Loop: Header=BB33_3 Depth=1
	bge	$a2, $a0, .LBB33_11
# %bb.8:                                #   in Loop: Header=BB33_3 Depth=1
	ld.w	$a0, $fp, 0
	st.w	$a2, $fp, 0
	st.w	$a0, $fp, 4
	b	.LBB33_15
	.p2align	4, , 16
.LBB33_9:                               #   in Loop: Header=BB33_3 Depth=1
	ld.w	$a3, $fp, 0
	bge	$a2, $a0, .LBB33_13
# %bb.10:                               #   in Loop: Header=BB33_3 Depth=1
	st.w	$a0, $fp, 0
	st.w	$a3, $a1, -4
	b	.LBB33_15
	.p2align	4, , 16
.LBB33_11:                              #   in Loop: Header=BB33_3 Depth=1
	ld.w	$a2, $fp, 0
	bge	$a4, $a0, .LBB33_14
# %bb.12:                               #   in Loop: Header=BB33_3 Depth=1
	st.w	$a0, $fp, 0
	st.w	$a2, $a1, -4
	b	.LBB33_15
.LBB33_13:                              #   in Loop: Header=BB33_3 Depth=1
	st.w	$a2, $fp, 0
	st.w	$a3, $fp, 4
	b	.LBB33_15
.LBB33_14:                              #   in Loop: Header=BB33_3 Depth=1
	st.w	$a4, $fp, 0
	st.w	$a2, $a3, 0
	.p2align	4, , 16
.LBB33_15:                              # %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader
                                        #   in Loop: Header=BB33_3 Depth=1
	addi.d	$s0, $s0, -1
	move	$a2, $a1
	move	$a0, $s2
	.p2align	4, , 16
.LBB33_16:                              # %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
                                        #   Parent Loop BB33_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_17 Depth 3
                                        #       Child Loop BB33_19 Depth 3
	ld.w	$a3, $fp, 0
	add.d	$s6, $s3, $a0
	.p2align	4, , 16
.LBB33_17:                              #   Parent Loop BB33_3 Depth=1
                                        #     Parent Loop BB33_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$s6, $s6, 4
	blt	$a4, $a3, .LBB33_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB33_16 Depth=2
	addi.d	$s1, $a0, -4
	.p2align	4, , 16
.LBB33_19:                              # %.preheader.i.i
                                        #   Parent Loop BB33_3 Depth=1
                                        #     Parent Loop BB33_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a2, -4
	addi.d	$a2, $a2, -4
	blt	$a3, $a5, .LBB33_19
# %bb.20:                               #   in Loop: Header=BB33_16 Depth=2
	bgeu	$s1, $a2, .LBB33_2
# %bb.21:                               #   in Loop: Header=BB33_16 Depth=2
	st.w	$a5, $s1, 0
	st.w	$a4, $a2, 0
	b	.LBB33_16
.LBB33_22:
	st.b	$zero, $sp, 7
	addi.d	$a2, $sp, 7
	move	$a0, $fp
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	b	.LBB33_25
	.p2align	4, , 16
.LBB33_23:                              #   in Loop: Header=BB33_25 Depth=1
	move	$a5, $zero
.LBB33_24:                              # %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
                                        #   in Loop: Header=BB33_25 Depth=1
	slli.d	$a5, $a5, 2
	stx.w	$a3, $fp, $a5
	bge	$a2, $a4, .LBB33_35
.LBB33_25:                              # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_27 Depth 2
                                        #     Child Loop BB33_33 Depth 2
	move	$a5, $s0
	ld.w	$a3, $s0, -4
	ld.w	$a7, $fp, 0
	addi.d	$s0, $s0, -4
	sub.d	$a4, $s0, $fp
	srai.d	$a6, $a4, 2
	st.w	$a7, $a5, -4
	blt	$a6, $a0, .LBB33_29
# %bb.26:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB33_25 Depth=1
	move	$a7, $zero
	addi.d	$a5, $a6, -1
	srli.d	$t0, $a5, 63
	add.d	$a5, $a5, $t0
	srai.d	$t0, $a5, 1
	.p2align	4, , 16
.LBB33_27:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB33_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a5, $a7, 1
	addi.d	$t1, $a5, 2
	slli.d	$t2, $t1, 2
	addi.d	$a5, $a5, 1
	slli.d	$t3, $a5, 2
	ldx.w	$t2, $fp, $t2
	ldx.w	$t3, $fp, $t3
	slt	$t2, $t2, $t3
	masknez	$t1, $t1, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t1
	slli.d	$t1, $a5, 2
	ldx.w	$t1, $fp, $t1
	slli.d	$a7, $a7, 2
	stx.w	$t1, $fp, $a7
	move	$a7, $a5
	blt	$a5, $t0, .LBB33_27
# %bb.28:                               # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB33_25 Depth=1
	andi	$a7, $a4, 4
	beqz	$a7, .LBB33_30
	b	.LBB33_32
	.p2align	4, , 16
.LBB33_29:                              #   in Loop: Header=BB33_25 Depth=1
	move	$a5, $zero
	andi	$a7, $a4, 4
	bnez	$a7, .LBB33_32
.LBB33_30:                              #   in Loop: Header=BB33_25 Depth=1
	addi.d	$a6, $a6, -2
	srai.d	$a6, $a6, 1
	bne	$a5, $a6, .LBB33_32
# %bb.31:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB33_25 Depth=1
	slli.d	$a6, $a5, 1
	addi.d	$a6, $a6, 1
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $fp, $a7
	slli.d	$a5, $a5, 2
	stx.w	$a7, $fp, $a5
	move	$a5, $a6
	b	.LBB33_33
	.p2align	4, , 16
.LBB33_32:                              #   in Loop: Header=BB33_25 Depth=1
	beqz	$a5, .LBB33_23
	.p2align	4, , 16
.LBB33_33:                              # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB33_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a6, $a5, -1
	srli.d	$a7, $a6, 1
	slli.d	$t0, $a7, 2
	ldx.w	$t0, $fp, $t0
	bge	$t0, $a3, .LBB33_24
# %bb.34:                               #   in Loop: Header=BB33_33 Depth=2
	slli.d	$a5, $a5, 2
	stx.w	$t0, $fp, $a5
	move	$a5, $a7
	bltu	$a1, $a6, .LBB33_33
	b	.LBB33_23
.LBB33_35:                              # %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit
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
.Lfunc_end33:
	.size	_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_, .Lfunc_end33-_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ # -- Begin function _ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,@function
_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_: # @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
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
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 65
	blt	$a0, $a1, .LBB34_2
# %bb.1:
	addi.d	$s1, $s0, 4
	ori	$s2, $zero, 4
	ori	$s3, $zero, 5
	ori	$s4, $zero, 64
	move	$s5, $s1
	move	$s6, $s0
	b	.LBB34_18
.LBB34_2:
	beq	$s0, $fp, .LBB34_25
# %bb.3:
	addi.d	$a2, $s0, 4
	beq	$a2, $fp, .LBB34_25
# %bb.4:                                # %.lr.ph.i17.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 4
	move	$s3, $s0
	b	.LBB34_9
	.p2align	4, , 16
.LBB34_5:                               #   in Loop: Header=BB34_9 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 2
	blt	$a0, $s1, .LBB34_13
# %bb.6:                                #   in Loop: Header=BB34_9 Depth=1
	slli.d	$a0, $a0, 2
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB34_7:                               # %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB34_9 Depth=1
	move	$a0, $s0
.LBB34_8:                               # %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB34_9 Depth=1
	addi.d	$a2, $s3, 4
	st.w	$s4, $a0, 0
	beq	$a2, $fp, .LBB34_25
.LBB34_9:                               # %.lr.ph.i17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_12 Depth 2
	move	$a1, $s3
	ld.w	$s4, $s3, 4
	ld.w	$a3, $s0, 0
	move	$s3, $a2
	blt	$s4, $a3, .LBB34_5
# %bb.10:                               #   in Loop: Header=BB34_9 Depth=1
	ld.w	$a1, $a1, 0
	move	$a0, $s3
	bge	$s4, $a1, .LBB34_8
# %bb.11:                               # %.lr.ph.i.i24.preheader
                                        #   in Loop: Header=BB34_9 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB34_12:                              # %.lr.ph.i.i24
                                        #   Parent Loop BB34_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $a0, 0
	ld.w	$a1, $a0, -8
	addi.d	$a0, $a0, -4
	blt	$s4, $a1, .LBB34_12
	b	.LBB34_8
.LBB34_13:                              #   in Loop: Header=BB34_9 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB34_8
# %bb.14:                               #   in Loop: Header=BB34_9 Depth=1
	st.w	$a3, $a1, 4
	b	.LBB34_7
.LBB34_15:                              #   in Loop: Header=BB34_18 Depth=1
	st.w	$a1, $a0, 4
	.p2align	4, , 16
.LBB34_16:                              # %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB34_18 Depth=1
	move	$a0, $s0
.LBB34_17:                              # %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB34_18 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$s2, $s2, 4
	addi.d	$s5, $s5, 4
	beq	$s2, $s4, .LBB34_24
.LBB34_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_23 Depth 2
	ldx.w	$s7, $s0, $s2
	ld.w	$a1, $s0, 0
	move	$a0, $s6
	add.d	$s6, $s0, $s2
	bge	$s7, $a1, .LBB34_21
# %bb.19:                               #   in Loop: Header=BB34_18 Depth=1
	bltu	$s2, $s3, .LBB34_15
# %bb.20:                               #   in Loop: Header=BB34_18 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB34_16
	.p2align	4, , 16
.LBB34_21:                              #   in Loop: Header=BB34_18 Depth=1
	ld.w	$a1, $a0, 0
	move	$a0, $s6
	bge	$s7, $a1, .LBB34_17
# %bb.22:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB34_18 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB34_23:                              # %.lr.ph.i.i
                                        #   Parent Loop BB34_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $a0, 0
	ld.w	$a1, $a0, -8
	addi.d	$a0, $a0, -4
	blt	$s7, $a1, .LBB34_23
	b	.LBB34_17
.LBB34_24:                              # %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
	addi.d	$a0, $s0, 64
	bne	$a0, $fp, .LBB34_27
.LBB34_25:                              # %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
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
	.p2align	4, , 16
.LBB34_26:                              # %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB34_27 Depth=1
	addi.d	$a0, $a0, 4
	st.w	$a1, $a2, 0
	beq	$a0, $fp, .LBB34_25
.LBB34_27:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_29 Depth 2
	ld.w	$a1, $a0, 0
	ld.w	$a3, $a0, -4
	move	$a2, $a0
	bge	$a1, $a3, .LBB34_26
# %bb.28:                               # %.lr.ph.i.i12.preheader
                                        #   in Loop: Header=BB34_27 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB34_29:                              # %.lr.ph.i.i12
                                        #   Parent Loop BB34_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a2, 0
	ld.w	$a3, $a2, -8
	addi.d	$a2, $a2, -4
	blt	$a1, $a3, .LBB34_29
	b	.LBB34_26
.Lfunc_end34:
	.size	_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .Lfunc_end34-_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.weak	_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ # -- Begin function _ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,@function
_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_: # @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a4, $a1, 2
	ori	$a2, $zero, 2
	bge	$a4, $a2, .LBB35_2
.LBB35_1:                               # %.loopexit
	ret
.LBB35_2:
	addi.d	$a3, $a4, -2
	srli.d	$a2, $a3, 1
	addi.d	$a4, $a4, -1
	andi	$a5, $a1, 4
	srli.d	$a1, $a4, 1
	bnez	$a5, .LBB35_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $a0, 2
	alsl.d	$a5, $a2, $a0, 2
	move	$a7, $a2
	b	.LBB35_6
	.p2align	4, , 16
.LBB35_4:                               #   in Loop: Header=BB35_6 Depth=1
	move	$t1, $t0
.LBB35_5:                               # %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
                                        #   in Loop: Header=BB35_6 Depth=1
	slli.d	$t0, $t1, 2
	stx.w	$a7, $a0, $t0
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB35_1
.LBB35_6:                               # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_8 Depth 2
                                        #     Child Loop BB35_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a0, $a7
	move	$t0, $a6
	bge	$a6, $a1, .LBB35_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB35_6 Depth=1
	move	$t1, $a6
	.p2align	4, , 16
.LBB35_8:                               # %.lr.ph.i
                                        #   Parent Loop BB35_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $t1, 1
	addi.d	$t2, $t0, 2
	slli.d	$t3, $t2, 2
	addi.d	$t0, $t0, 1
	slli.d	$t4, $t0, 2
	ldx.w	$t3, $a0, $t3
	ldx.w	$t4, $a0, $t4
	slt	$t3, $t3, $t4
	masknez	$t2, $t2, $t3
	maskeqz	$t0, $t0, $t3
	or	$t0, $t0, $t2
	slli.d	$t2, $t0, 2
	ldx.w	$t2, $a0, $t2
	slli.d	$t1, $t1, 2
	stx.w	$t2, $a0, $t1
	move	$t1, $t0
	blt	$t0, $a1, .LBB35_8
.LBB35_9:                               # %._crit_edge.i
                                        #   in Loop: Header=BB35_6 Depth=1
	bne	$t0, $a2, .LBB35_11
# %bb.10:                               #   in Loop: Header=BB35_6 Depth=1
	ld.w	$t0, $a4, 0
	st.w	$t0, $a5, 0
	move	$t0, $a3
.LBB35_11:                              #   in Loop: Header=BB35_6 Depth=1
	bge	$a6, $t0, .LBB35_4
	.p2align	4, , 16
.LBB35_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB35_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 63
	add.d	$t1, $t1, $t2
	srai.d	$t1, $t1, 1
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a0, $t2
	bge	$t2, $a7, .LBB35_4
# %bb.13:                               #   in Loop: Header=BB35_12 Depth=2
	slli.d	$t0, $t0, 2
	stx.w	$t2, $a0, $t0
	move	$t0, $t1
	blt	$a6, $t1, .LBB35_12
	b	.LBB35_5
	.p2align	4, , 16
.LBB35_14:                              #   in Loop: Header=BB35_16 Depth=1
	move	$a5, $a4
.LBB35_15:                              # %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
                                        #   in Loop: Header=BB35_16 Depth=1
	slli.d	$a4, $a5, 2
	stx.w	$a2, $a0, $a4
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB35_1
.LBB35_16:                              # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_18 Depth 2
                                        #     Child Loop BB35_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a0, $a2
	move	$a5, $a3
	bge	$a3, $a1, .LBB35_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB35_16 Depth=1
	move	$a4, $a3
	.p2align	4, , 16
.LBB35_18:                              # %.lr.ph.i.us
                                        #   Parent Loop BB35_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a5, $a4
	slli.d	$a4, $a4, 1
	addi.d	$a6, $a4, 2
	slli.d	$a7, $a6, 2
	addi.d	$a4, $a4, 1
	slli.d	$t0, $a4, 2
	ldx.w	$a7, $a0, $a7
	ldx.w	$t0, $a0, $t0
	slt	$a7, $a7, $t0
	masknez	$a6, $a6, $a7
	maskeqz	$a4, $a4, $a7
	or	$a4, $a4, $a6
	slli.d	$a6, $a4, 2
	ldx.w	$a6, $a0, $a6
	slli.d	$a5, $a5, 2
	stx.w	$a6, $a0, $a5
	blt	$a4, $a1, .LBB35_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB35_16 Depth=1
	bge	$a3, $a4, .LBB35_14
	.p2align	4, , 16
.LBB35_20:                              # %.lr.ph.i.i.us
                                        #   Parent Loop BB35_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 63
	add.d	$a5, $a5, $a6
	srai.d	$a5, $a5, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	bge	$a6, $a2, .LBB35_14
# %bb.21:                               #   in Loop: Header=BB35_20 Depth=2
	slli.d	$a4, $a4, 2
	stx.w	$a6, $a0, $a4
	move	$a4, $a5
	blt	$a3, $a5, .LBB35_20
	b	.LBB35_15
.Lfunc_end35:
	.size	_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .Lfunc_end35-_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,"axG",@progbits,_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,comdat
	.weak	_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE # -- Begin function _ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE
	.p2align	5
	.type	_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,@function
_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE: # @_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
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
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 2272
	ld.w	$s5, $a1, 4
	ld.w	$a6, $a1, 0
	ld.w	$s7, $a1, 12
	ld.w	$a7, $a1, 8
	ld.w	$s3, $a1, 20
	ld.w	$s4, $a1, 16
	sub.d	$a1, $s5, $a6
	sub.d	$a4, $s7, $a7
	sub.d	$a5, $s3, $s4
	mul.d	$a1, $a4, $a1
	mul.w	$s2, $a1, $a5
	addi.w	$s8, $zero, -1
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bge	$s8, $s2, .LBB36_46
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s0, $a3
	ld.w	$s1, $a0, 148
	ld.w	$s6, $a0, 156
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 164
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	beqz	$s2, .LBB36_4
# %bb.2:                                # %.noexc40
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	alsl.d	$a2, $s2, $a0, 2
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $a0, 4
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	bne	$s2, $a1, .LBB36_5
# %bb.3:
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB36_6
.LBB36_4:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	beq	$s5, $a6, .LBB36_7
	b	.LBB36_9
.LBB36_5:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	move	$s2, $a2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
.LBB36_6:
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	bne	$s5, $a6, .LBB36_9
.LBB36_7:
	bne	$s7, $a7, .LBB36_9
# %bb.8:
	move	$a0, $fp
	move	$a1, $a7
	move	$a2, $a6
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	beq	$s3, $s4, .LBB36_23
	b	.LBB36_10
.LBB36_9:
	move	$a0, $fp
	move	$a1, $a7
	move	$a2, $a6
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB36_10:                              # %_ZNK6miniFE11BoxIteratorneERKS0_.exit.thread
                                        # =>This Inner Loop Header: Depth=1
	or	$a3, $a1, $a2
	or	$a4, $a3, $s4
	move	$a3, $s8
	bltz	$a4, .LBB36_15
# %bb.11:                               #   in Loop: Header=BB36_10 Depth=1
	move	$a3, $s8
	bge	$a2, $s1, .LBB36_15
# %bb.12:                               #   in Loop: Header=BB36_10 Depth=1
	move	$a3, $s8
	bge	$a1, $s6, .LBB36_15
# %bb.13:                               #   in Loop: Header=BB36_10 Depth=1
	move	$a3, $s8
	bge	$s4, $a5, .LBB36_15
# %bb.14:                               #   in Loop: Header=BB36_10 Depth=1
	mul.d	$a3, $s4, $s6
	add.d	$a3, $a3, $a1
	mul.d	$a3, $a3, $s1
	add.d	$a3, $a3, $a2
.LBB36_15:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   in Loop: Header=BB36_10 Depth=1
	addi.w	$a2, $a2, 1
	st.w	$a3, $a0, 0
	blt	$a2, $s5, .LBB36_20
# %bb.16:                               #   in Loop: Header=BB36_10 Depth=1
	addi.w	$a1, $a1, 1
	bge	$a1, $s7, .LBB36_18
# %bb.17:                               #   in Loop: Header=BB36_10 Depth=1
	move	$a2, $a6
	b	.LBB36_20
	.p2align	4, , 16
.LBB36_18:                              #   in Loop: Header=BB36_10 Depth=1
	addi.w	$s4, $s4, 1
	move	$a2, $a6
	move	$a1, $a7
	blt	$s4, $s3, .LBB36_20
# %bb.19:                               #   in Loop: Header=BB36_10 Depth=1
	move	$a2, $s5
	move	$a1, $s7
	move	$s4, $s3
	.p2align	4, , 16
.LBB36_20:                              # %_ZN6miniFE11BoxIteratorppEv.exit
                                        #   in Loop: Header=BB36_10 Depth=1
	addi.d	$a0, $a0, 4
	bne	$a2, $s5, .LBB36_10
# %bb.21:                               # %_ZN6miniFE11BoxIteratorppEv.exit
                                        #   in Loop: Header=BB36_10 Depth=1
	bne	$a1, $s7, .LBB36_10
# %bb.22:                               # %_ZN6miniFE11BoxIteratorppEv.exit
                                        #   in Loop: Header=BB36_10 Depth=1
	bne	$s4, $s3, .LBB36_10
.LBB36_23:                              # %._crit_edge
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 64
	addi.d	$s3, $sp, 104
.Ltmp1207:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE23compute_gradient_valuesIdEEvPT_)
	jirl	$ra, $ra, 0
.Ltmp1208:
# %bb.24:                               # %.preheader
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	beq	$s2, $fp, .LBB36_43
# %bb.25:                               # %.lr.ph
	move	$s1, $zero
	sub.d	$a0, $s2, $fp
	srai.d	$a0, $a0, 2
	addi.d	$s4, $sp, 72
	addi.d	$s5, $sp, 1640
	addi.d	$s6, $sp, 1832
	addi.d	$a1, $sp, 64
	addi.d	$a1, $a1, 2047
	addi.d	$s7, $a1, 9
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s8, $a0, $a1
	.p2align	4, , 16
.LBB36_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_38 Depth 2
.Ltmp1210:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1211:
# %bb.27:                               #   in Loop: Header=BB36_26 Depth=1
	slli.d	$a0, $s1, 2
	ldx.w	$a1, $fp, $a0
.Ltmp1212:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_)
	jirl	$ra, $ra, 0
.Ltmp1213:
# %bb.28:                               # %_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_RNS_8ElemDataIS2_T0_EE.exit
                                        #   in Loop: Header=BB36_26 Depth=1
.Ltmp1214:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1215:
# %bb.29:                               #   in Loop: Header=BB36_26 Depth=1
.Ltmp1216:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1217:
# %bb.30:                               #   in Loop: Header=BB36_26 Depth=1
.Ltmp1218:
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_)
	jirl	$ra, $ra, 0
.Ltmp1219:
# %bb.31:                               # %.noexc43
                                        #   in Loop: Header=BB36_26 Depth=1
.Ltmp1220:
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_)
	jirl	$ra, $ra, 0
.Ltmp1221:
# %bb.32:                               # %_ZN6miniFE33compute_element_matrix_and_vectorIidEEvRNS_8ElemDataIT_T0_EE.exit
                                        #   in Loop: Header=BB36_26 Depth=1
.Ltmp1222:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1223:
# %bb.33:                               #   in Loop: Header=BB36_26 Depth=1
.Ltmp1224:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1225:
# %bb.34:                               #   in Loop: Header=BB36_26 Depth=1
	ld.d	$a0, $sp, 64
.Ltmp1226:
	move	$a1, $s4
	move	$a2, $s6
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_)
	jirl	$ra, $ra, 0
.Ltmp1227:
# %bb.35:                               # %.noexc45
                                        #   in Loop: Header=BB36_26 Depth=1
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB36_41
# %bb.36:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB36_26 Depth=1
	ld.w	$a1, $s0, 0
	ld.w	$a3, $s0, 4
	ld.d	$a2, $s0, 8
	add.w	$a3, $a3, $a1
	move	$a4, $s4
	move	$a5, $s7
	b	.LBB36_38
	.p2align	4, , 16
.LBB36_37:                              #   in Loop: Header=BB36_38 Depth=2
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB36_41
.LBB36_38:                              #   Parent Loop BB36_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a4, 0
	blt	$a6, $a1, .LBB36_37
# %bb.39:                               #   in Loop: Header=BB36_38 Depth=2
	bge	$a6, $a3, .LBB36_37
# %bb.40:                               #   in Loop: Header=BB36_38 Depth=2
	sub.w	$a6, $a6, $a1
	fld.d	$fa0, $a5, 0
	slli.d	$a6, $a6, 3
	fldx.d	$fa1, $a2, $a6
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $a6
	b	.LBB36_37
	.p2align	4, , 16
.LBB36_41:                              # %_ZN6miniFE29sum_into_global_linear_systemIidNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRNS_8ElemDataIT_T0_EERT1_RT2_.exit
                                        #   in Loop: Header=BB36_26 Depth=1
.Ltmp1228:
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1229:
# %bb.42:                               #   in Loop: Header=BB36_26 Depth=1
	addi.d	$s1, $s1, 1
	bne	$s1, $s8, .LBB36_26
.LBB36_43:                              # %._crit_edge79
	beqz	$fp, .LBB36_45
# %bb.44:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_45:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	addi.d	$sp, $sp, 240
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
.LBB36_46:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB36_47:
.Ltmp1209:
	b	.LBB36_49
.LBB36_48:
.Ltmp1230:
.LBB36_49:
	beqz	$fp, .LBB36_51
# %bb.50:
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $fp
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB36_51:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit47
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE, .Lfunc_end36-_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,"aG",@progbits,_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,comdat
	.p2align	2, 0x0
GCC_except_table36:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp1207-.Lfunc_begin17       #   Call between .Lfunc_begin17 and .Ltmp1207
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1207-.Lfunc_begin17       # >> Call Site 2 <<
	.uleb128 .Ltmp1208-.Ltmp1207            #   Call between .Ltmp1207 and .Ltmp1208
	.uleb128 .Ltmp1209-.Lfunc_begin17       #     jumps to .Ltmp1209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1210-.Lfunc_begin17       # >> Call Site 3 <<
	.uleb128 .Ltmp1229-.Ltmp1210            #   Call between .Ltmp1210 and .Ltmp1229
	.uleb128 .Ltmp1230-.Lfunc_begin17       #     jumps to .Ltmp1230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1229-.Lfunc_begin17       # >> Call Site 4 <<
	.uleb128 .Lfunc_end36-.Ltmp1229         #   Call between .Ltmp1229 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN6miniFE23compute_gradient_valuesIdEEvPT_
.LCPI37_0:
	.dword	0xbfe279a74576233f              # double -0.57735026899999997
	.dword	0x3fe279a74576233f              # double 0.57735026899999997
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI37_1:
	.dword	0x3fe279a74576233f              # double 0.57735026899999997
.LCPI37_2:
	.dword	0x3ff93cd3a2bb11a0              # double 1.5773502690000001
.LCPI37_3:
	.dword	0x3fdb0cb17513b982              # double 0.42264973100000003
.LCPI37_4:
	.dword	0xbfc93cd3a2bb11a0              # double -0.19716878362500001
.LCPI37_5:
	.dword	0x3fc93cd3a2bb11a0              # double 0.19716878362500001
.LCPI37_6:
	.dword	0x3fab0cb17513b982              # double 0.052831216375000004
.LCPI37_7:
	.dword	0xbfab0cb17513b982              # double -0.052831216375000004
	.section	.text._ZN6miniFE23compute_gradient_valuesIdEEvPT_,"axG",@progbits,_ZN6miniFE23compute_gradient_valuesIdEEvPT_,comdat
	.weak	_ZN6miniFE23compute_gradient_valuesIdEEvPT_
	.p2align	5
	.type	_ZN6miniFE23compute_gradient_valuesIdEEvPT_,@function
_ZN6miniFE23compute_gradient_valuesIdEEvPT_: # @_ZN6miniFE23compute_gradient_valuesIdEEvPT_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 24                   # 8-byte Folded Spill
	.cfi_offset 56, -8
	.cfi_offset 57, -16
	.cfi_offset 58, -24
	.cfi_offset 59, -32
	.cfi_offset 60, -40
	.cfi_offset 61, -48
	.cfi_offset 62, -56
	pcalau12i	$a1, %pc_hi20(.LCPI37_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI37_0)
	vst	$vr0, $sp, 0
	addi.d	$t1, $sp, 0
	ori	$a2, $zero, 1
	addi.d	$a1, $sp, 8
	pcalau12i	$a3, %pc_hi20(.LCPI37_1)
	fld.d	$ft1, $a3, %pc_lo12(.LCPI37_1)
	vldi	$vr0, -912
	vldi	$vr1, -832
	vldi	$vr2, -960
	pcalau12i	$a3, %pc_hi20(.LCPI37_2)
	fld.d	$fa3, $a3, %pc_lo12(.LCPI37_2)
	pcalau12i	$a3, %pc_hi20(.LCPI37_3)
	fld.d	$fa4, $a3, %pc_lo12(.LCPI37_3)
	lu12i.w	$a3, 316899
	ori	$a4, $a3, 1611
	lu32i.d	$a4, 255870
	lu52i.d	$a3, $a4, -1027
	lu52i.d	$a4, $a4, 1021
	lu12i.w	$a5, 350006
	ori	$a6, $a5, 3415
	lu32i.d	$a6, 349525
	lu52i.d	$a5, $a6, 1019
	lu52i.d	$a6, $a6, -1029
	lu12i.w	$a7, 518163
	ori	$t0, $a7, 173
	pcalau12i	$a7, %pc_hi20(.LCPI37_4)
	fld.d	$fa5, $a7, %pc_lo12(.LCPI37_4)
	pcalau12i	$a7, %pc_hi20(.LCPI37_5)
	fld.d	$fa6, $a7, %pc_lo12(.LCPI37_5)
	pcalau12i	$a7, %pc_hi20(.LCPI37_6)
	fld.d	$fa7, $a7, %pc_lo12(.LCPI37_6)
	pcalau12i	$a7, %pc_hi20(.LCPI37_7)
	fld.d	$ft0, $a7, %pc_lo12(.LCPI37_7)
	lu32i.d	$t0, 449904
	lu52i.d	$a7, $t0, 1017
	lu52i.d	$t0, $t0, -1031
	.p2align	4, , 16
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	fld.d	$ft2, $t1, 0
	fsub.d	$ft6, $fa0, $ft2
	fadd.d	$ft2, $ft2, $fa0
	fmul.d	$ft5, $ft6, $fa1
	fmul.d	$ft4, $ft2, $fa1
	fmul.d	$ft3, $ft2, $fa2
	fmul.d	$ft2, $ft6, $fa2
	fmul.d	$ft7, $ft5, $fa3
	fmul.d	$ft8, $ft4, $fa3
	fmul.d	$ft9, $ft4, $fa4
	fmul.d	$ft10, $ft5, $fa4
	fmul.d	$ft11, $ft2, $fa3
	fmul.d	$ft12, $ft3, $fa3
	fmul.d	$ft13, $ft3, $fa4
	fmul.d	$ft6, $ft2, $fa4
	st.d	$a3, $a0, 0
	fst.d	$ft7, $a0, 8
	fst.d	$ft7, $a0, 16
	st.d	$a4, $a0, 24
	fst.d	$ft8, $a0, 32
	fst.d	$ft8, $a0, 40
	st.d	$a5, $a0, 48
	fst.d	$ft12, $a0, 56
	fst.d	$ft9, $a0, 64
	st.d	$a6, $a0, 72
	fst.d	$ft11, $a0, 80
	fst.d	$ft10, $a0, 88
	st.d	$a6, $a0, 96
	fst.d	$ft10, $a0, 104
	fst.d	$ft11, $a0, 112
	st.d	$a5, $a0, 120
	fst.d	$ft9, $a0, 128
	fst.d	$ft12, $a0, 136
	st.d	$a7, $a0, 144
	fst.d	$ft13, $a0, 152
	fst.d	$ft13, $a0, 160
	st.d	$t0, $a0, 168
	fst.d	$ft6, $a0, 176
	fst.d	$ft6, $a0, 184
	fsub.d	$ft14, $fa0, $ft1
	fadd.d	$ft15, $ft1, $fa0
	fmul.d	$ft1, $ft14, $fa5
	fst.d	$ft1, $a0, 192
	fmul.d	$ft1, $ft5, $ft14
	fst.d	$ft1, $a0, 200
	fst.d	$ft7, $a0, 208
	fmul.d	$ft1, $ft14, $fa6
	fst.d	$ft1, $a0, 216
	fmul.d	$ft1, $ft4, $ft14
	fst.d	$ft1, $a0, 224
	fst.d	$ft8, $a0, 232
	fmul.d	$ft1, $ft14, $fa7
	fst.d	$ft1, $a0, 240
	fmul.d	$ft1, $ft3, $ft14
	fst.d	$ft1, $a0, 248
	fst.d	$ft9, $a0, 256
	fmul.d	$ft1, $ft14, $ft0
	fst.d	$ft1, $a0, 264
	fmul.d	$ft1, $ft2, $ft14
	fst.d	$ft1, $a0, 272
	fst.d	$ft10, $a0, 280
	fmul.d	$ft1, $ft15, $fa5
	fst.d	$ft1, $a0, 288
	fmul.d	$ft1, $ft5, $ft15
	fst.d	$ft1, $a0, 296
	fst.d	$ft11, $a0, 304
	fmul.d	$ft1, $ft15, $fa6
	fst.d	$ft1, $a0, 312
	fmul.d	$ft1, $ft4, $ft15
	fst.d	$ft1, $a0, 320
	fst.d	$ft12, $a0, 328
	fmul.d	$ft1, $ft15, $fa7
	fst.d	$ft1, $a0, 336
	fmul.d	$ft1, $ft3, $ft15
	fst.d	$ft1, $a0, 344
	fst.d	$ft13, $a0, 352
	fmul.d	$ft1, $ft15, $ft0
	fst.d	$ft1, $a0, 360
	fld.d	$ft1, $sp, 8
	fmul.d	$ft7, $ft2, $ft15
	fst.d	$ft7, $a0, 368
	fst.d	$ft6, $a0, 376
	fsub.d	$ft13, $fa0, $ft1
	fadd.d	$ft6, $ft1, $fa0
	fmul.d	$ft11, $ft13, $fa1
	fmul.d	$fs2, $ft5, $ft13
	fmul.d	$ft9, $ft13, $fa2
	fmul.d	$fs3, $ft4, $ft13
	fmul.d	$ft8, $ft6, $fa2
	fmul.d	$ft10, $ft4, $ft6
	fmul.d	$ft7, $ft6, $fa1
	fmul.d	$ft15, $ft5, $ft6
	fmul.d	$fs0, $ft2, $ft13
	fld.d	$fs4, $sp, 0
	fmul.d	$fs1, $ft3, $ft13
	fmul.d	$ft14, $ft3, $ft6
	fmul.d	$ft12, $ft2, $ft6
	fsub.d	$fs5, $fa0, $fs4
	fadd.d	$fs4, $fs4, $fa0
	fmul.d	$fs6, $ft11, $fs5
	fst.d	$fs6, $a0, 384
	fmul.d	$fs6, $ft5, $fs5
	fst.d	$fs6, $a0, 392
	fst.d	$fs2, $a0, 400
	fmul.d	$fs6, $ft9, $fs5
	fst.d	$fs6, $a0, 408
	fmul.d	$fs6, $ft4, $fs5
	fst.d	$fs6, $a0, 416
	fst.d	$fs3, $a0, 424
	fmul.d	$fs6, $ft8, $fs5
	fst.d	$fs6, $a0, 432
	fmul.d	$fs6, $ft3, $fs5
	fst.d	$fs6, $a0, 440
	fst.d	$ft10, $a0, 448
	fmul.d	$fs6, $ft7, $fs5
	fst.d	$fs6, $a0, 456
	fmul.d	$fs5, $ft2, $fs5
	fst.d	$fs5, $a0, 464
	fst.d	$ft15, $a0, 472
	fmul.d	$fs5, $ft11, $fs4
	fst.d	$fs5, $a0, 480
	fmul.d	$ft5, $ft5, $fs4
	fst.d	$ft5, $a0, 488
	fst.d	$fs0, $a0, 496
	fmul.d	$ft5, $ft9, $fs4
	fst.d	$ft5, $a0, 504
	fmul.d	$ft4, $ft4, $fs4
	fst.d	$ft4, $a0, 512
	fst.d	$fs1, $a0, 520
	fmul.d	$ft4, $ft8, $fs4
	fst.d	$ft4, $a0, 528
	fmul.d	$ft3, $ft3, $fs4
	fst.d	$ft3, $a0, 536
	fst.d	$ft14, $a0, 544
	fmul.d	$ft3, $ft7, $fs4
	fst.d	$ft3, $a0, 552
	fmul.d	$ft2, $ft2, $fs4
	fst.d	$ft2, $a0, 560
	fst.d	$ft12, $a0, 568
	fmul.d	$ft2, $ft11, $ft13
	fst.d	$ft2, $a0, 576
	fst.d	$fs2, $a0, 584
	fst.d	$fs2, $a0, 592
	fmul.d	$ft2, $ft9, $ft13
	fst.d	$ft2, $a0, 600
	fst.d	$fs3, $a0, 608
	fst.d	$fs3, $a0, 616
	fmul.d	$ft2, $ft8, $ft13
	fst.d	$ft2, $a0, 624
	fst.d	$fs1, $a0, 632
	fst.d	$ft10, $a0, 640
	fmul.d	$ft2, $ft7, $ft13
	fst.d	$ft2, $a0, 648
	fst.d	$fs0, $a0, 656
	fst.d	$ft15, $a0, 664
	fmul.d	$ft2, $ft11, $ft6
	fst.d	$ft2, $a0, 672
	fst.d	$ft15, $a0, 680
	fst.d	$fs0, $a0, 688
	fmul.d	$ft2, $ft9, $ft6
	fst.d	$ft2, $a0, 696
	fst.d	$ft10, $a0, 704
	fst.d	$fs1, $a0, 712
	fmul.d	$ft2, $ft8, $ft6
	fst.d	$ft2, $a0, 720
	fst.d	$ft14, $a0, 728
	fst.d	$ft14, $a0, 736
	fmul.d	$ft2, $ft7, $ft6
	fst.d	$ft2, $a0, 744
	fst.d	$ft12, $a0, 752
	fst.d	$ft12, $a0, 760
	andi	$t2, $a2, 1
	addi.d	$a0, $a0, 768
	move	$t1, $a1
	move	$a2, $zero
	bnez	$t2, .LBB37_1
# %bb.2:
	fld.d	$fs6, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end37:
	.size	_ZN6miniFE23compute_gradient_valuesIdEEvPT_, .Lfunc_end37-_ZN6miniFE23compute_gradient_valuesIdEEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,"axG",@progbits,_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,comdat
	.weak	_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_ # -- Begin function _ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_
	.p2align	5
	.type	_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,@function
_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_: # @_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_
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
	addi.w	$s0, $zero, -1
	bge	$s0, $a1, .LBB38_7
# %bb.1:
	move	$fp, $a3
	move	$s2, $a2
	move	$s1, $a0
	ld.w	$a2, $a0, 148
	ld.w	$a0, $a0, 156
	addi.w	$s4, $a2, 1
	ld.w	$s5, $s1, 164
	mul.w	$a4, $a0, $a2
	div.w	$a3, $a1, $a4
	mul.d	$a4, $a3, $a4
	sub.w	$a4, $a1, $a4
	div.w	$a4, $a4, $a2
	mod.w	$a1, $a1, $a2
	or	$a5, $a4, $a3
	or	$a5, $a5, $a1
	addi.w	$s6, $a0, 1
	bltz	$a5, .LBB38_6
# %bb.2:
	blt	$s5, $a3, .LBB38_6
# %bb.3:
	bltz	$a2, .LBB38_6
# %bb.4:
	blt	$a0, $a4, .LBB38_6
# %bb.5:
	mul.d	$a0, $a3, $s6
	add.d	$a0, $a4, $a0
	mul.d	$a0, $a0, $s4
	add.w	$s0, $a0, $a1
.LBB38_6:                               # %_ZN6miniFE6get_idIiEET_iiiiii.exit
	st.w	$s0, $s2, 0
	addi.d	$a0, $s0, 1
	st.w	$a0, $s2, 4
	add.d	$a1, $s0, $s4
	addi.d	$a2, $a1, 1
	st.w	$a2, $s2, 8
	st.w	$a1, $s2, 12
	mul.w	$s7, $s6, $s4
	add.d	$a2, $s0, $s7
	st.w	$a2, $s2, 16
	add.d	$a0, $a0, $s7
	st.w	$a0, $s2, 20
	add.d	$a0, $a1, $s7
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 24
	st.w	$a0, $s2, 28
	addi.d	$s3, $s1, 96
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 4
	st.w	$a0, $s2, 0
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 8
	st.w	$a0, $s2, 4
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	st.w	$a0, $s2, 8
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 16
	st.w	$a0, $s2, 12
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 20
	st.w	$a0, $s2, 16
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 24
	st.w	$a0, $s2, 20
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 28
	st.w	$a0, $s2, 24
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 28
	ld.w	$a0, $s1, 148
	ld.w	$a1, $s1, 156
	ld.w	$a2, $s1, 164
	ori	$a3, $zero, 2
	slt	$a4, $a3, $s4
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $s4, $a4
	or	$a4, $a4, $a5
	addi.d	$a4, $a4, -1
	bstrpick.d	$a4, $a4, 31, 0
	slt	$a5, $a3, $s6
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $s6, $a5
	or	$a3, $a5, $a3
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a5, $zero, 1
	slt	$a6, $a5, $s5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $s5, $a6
	or	$a5, $a6, $a5
	div.w	$a6, $s0, $s7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	mul.d	$a5, $a6, $s7
	sub.w	$a5, $s0, $a5
	div.w	$a5, $a5, $s4
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	movgr2fr.d	$fa2, $a3
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	mod.w	$a3, $s0, $s4
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	movgr2fr.d	$fa3, $a4
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa2, $fa2, $fa3
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	frecip.d	$fa3, $fa3
	movgr2fr.w	$fa4, $a1
	ffint.d.w	$fa4, $fa4
	frecip.d	$fa4, $fa4
	movgr2fr.w	$fa5, $a2
	ffint.d.w	$fa5, $fa5
	frecip.d	$fa5, $fa5
	fst.d	$fa2, $fp, 0
	fst.d	$fa1, $fp, 8
	fst.d	$fa0, $fp, 16
	fadd.d	$fa3, $fa3, $fa2
	fst.d	$fa3, $fp, 24
	fst.d	$fa1, $fp, 32
	fst.d	$fa0, $fp, 40
	fst.d	$fa3, $fp, 48
	fadd.d	$fa4, $fa4, $fa1
	fst.d	$fa4, $fp, 56
	fst.d	$fa0, $fp, 64
	fst.d	$fa2, $fp, 72
	fst.d	$fa4, $fp, 80
	fst.d	$fa0, $fp, 88
	fst.d	$fa2, $fp, 96
	fst.d	$fa1, $fp, 104
	fadd.d	$fa0, $fa5, $fa0
	fst.d	$fa0, $fp, 112
	fst.d	$fa3, $fp, 120
	fst.d	$fa1, $fp, 128
	fst.d	$fa0, $fp, 136
	fst.d	$fa3, $fp, 144
	fst.d	$fa4, $fp, 152
	fst.d	$fa0, $fp, 160
	fst.d	$fa2, $fp, 168
	fst.d	$fa4, $fp, 176
	fst.d	$fa0, $fp, 184
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
.LBB38_7:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp1231:
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a1, $a0, %pc_lo12(.L.str.92)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt13runtime_errorC1EPKc)
	jirl	$ra, $ra, 0
.Ltmp1232:
# %bb.8:
	pcalau12i	$a0, %got_pc_hi20(_ZTISt13runtime_error)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTISt13runtime_error)
	pcalau12i	$a0, %got_pc_hi20(_ZNSt13runtime_errorD1Ev)
	ld.d	$a2, $a0, %got_pc_lo12(_ZNSt13runtime_errorD1Ev)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB38_9:
.Ltmp1233:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_free_exception)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_, .Lfunc_end38-_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,"aG",@progbits,_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,comdat
	.p2align	2, 0x0
GCC_except_table38:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp1231-.Lfunc_begin18       #   Call between .Lfunc_begin18 and .Ltmp1231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1231-.Lfunc_begin18       # >> Call Site 2 <<
	.uleb128 .Ltmp1232-.Ltmp1231            #   Call between .Ltmp1231 and .Ltmp1232
	.uleb128 .Ltmp1233-.Lfunc_begin18       #     jumps to .Ltmp1233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1232-.Lfunc_begin18       # >> Call Site 3 <<
	.uleb128 .Lfunc_end38-.Ltmp1232         #   Call between .Ltmp1232 and .Lfunc_end38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_,"axG",@progbits,_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_,comdat
	.weak	_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_ # -- Begin function _ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_
	.p2align	5
	.type	_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_,@function
_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_: # @_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_
	.cfi_startproc
# %bb.0:                                # %_ZN6miniFE4fillIdEEvPT_S2_RKS1_.exit
	addi.d	$sp, $sp, -416
	.cfi_def_cfa_offset 416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
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
	move	$fp, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a2, $zero, 288
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	st.d	$zero, $sp, 320
	ori	$a2, $zero, 1
	ori	$s7, $zero, 7
	addi.d	$s8, $sp, 256
	addi.d	$s4, $sp, 192
	addi.d	$s5, $sp, 128
	ori	$s6, $zero, 6
	ori	$s1, $zero, 2
	ori	$s0, $zero, 64
	ori	$s3, $zero, 8
	b	.LBB39_2
	.p2align	4, , 16
.LBB39_1:                               #   in Loop: Header=BB39_2 Depth=1
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	andi	$a0, $a0, 1
	move	$a2, $zero
	beqz	$a0, .LBB39_16
.LBB39_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_4 Depth 2
                                        #       Child Loop BB39_6 Depth 3
                                        #         Child Loop BB39_9 Depth 4
                                        #           Child Loop BB39_12 Depth 5
                                        #           Child Loop BB39_15 Depth 5
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	ori	$a2, $zero, 1
	b	.LBB39_4
	.p2align	4, , 16
.LBB39_3:                               #   in Loop: Header=BB39_4 Depth=2
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	andi	$a0, $a0, 1
	move	$a2, $zero
	beqz	$a0, .LBB39_1
.LBB39_4:                               #   Parent Loop BB39_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB39_6 Depth 3
                                        #         Child Loop BB39_9 Depth 4
                                        #           Child Loop BB39_12 Depth 5
                                        #           Child Loop BB39_15 Depth 5
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 1
	b	.LBB39_6
	.p2align	4, , 16
.LBB39_5:                               #   in Loop: Header=BB39_6 Depth=3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 24
	move	$a2, $zero
	beqz	$a0, .LBB39_3
.LBB39_6:                               # %.preheader.preheader
                                        #   Parent Loop BB39_2 Depth=1
                                        #     Parent Loop BB39_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB39_9 Depth 4
                                        #           Child Loop BB39_12 Depth 5
                                        #           Child Loop BB39_15 Depth 5
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$s2, $a1, $a0, 3
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 320
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $zero
	fld.d	$fa0, $sp, 320
	fld.d	$ft0, $sp, 56
	fld.d	$ft1, $sp, 64
	fld.d	$fa7, $sp, 72
	fld.d	$fa5, $sp, 80
	fld.d	$fa6, $sp, 88
	fld.d	$fa4, $sp, 96
	fld.d	$fa1, $sp, 104
	fld.d	$fa2, $sp, 112
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	fldx.d	$ft2, $a2, $a3
	fld.d	$ft3, $s2, 8
	fld.d	$fa3, $sp, 120
	fld.d	$ft4, $s2, 16
	fmul.d	$ft5, $ft2, $ft0
	fmul.d	$ft6, $ft3, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft4, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 256
	fmul.d	$ft5, $ft2, $fa5
	fmul.d	$ft6, $ft3, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft4, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 192
	fmul.d	$ft2, $ft2, $fa1
	fmul.d	$ft3, $ft3, $fa2
	fadd.d	$ft2, $ft2, $ft3
	fmul.d	$ft3, $ft4, $fa3
	fadd.d	$ft2, $ft2, $ft3
	fld.d	$ft3, $s2, 24
	fld.d	$ft4, $s2, 32
	fst.d	$ft2, $sp, 128
	fld.d	$ft2, $s2, 40
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 264
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 200
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 48
	fld.d	$ft4, $s2, 56
	fst.d	$ft2, $sp, 136
	fld.d	$ft2, $s2, 64
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 272
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 208
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 72
	fld.d	$ft4, $s2, 80
	fst.d	$ft2, $sp, 144
	fld.d	$ft2, $s2, 88
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 280
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 216
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 96
	fld.d	$ft4, $s2, 104
	fst.d	$ft2, $sp, 152
	fld.d	$ft2, $s2, 112
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 288
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 224
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 120
	fld.d	$ft4, $s2, 128
	fst.d	$ft2, $sp, 160
	fld.d	$ft2, $s2, 136
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 296
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 232
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 144
	fld.d	$ft4, $s2, 152
	fst.d	$ft2, $sp, 168
	fld.d	$ft2, $s2, 160
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 304
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 240
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 168
	fld.d	$ft4, $s2, 176
	fst.d	$ft2, $sp, 176
	fld.d	$ft2, $s2, 184
	fmul.d	$ft0, $ft3, $ft0
	fmul.d	$ft1, $ft4, $ft1
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$fa7, $ft2, $fa7
	fadd.d	$fa7, $ft0, $fa7
	fst.d	$fa7, $sp, 312
	fmul.d	$fa5, $ft3, $fa5
	fmul.d	$fa6, $ft4, $fa6
	fadd.d	$fa5, $fa5, $fa6
	fmul.d	$fa4, $ft2, $fa4
	fadd.d	$fa4, $fa5, $fa4
	fst.d	$fa4, $sp, 248
	fmul.d	$fa1, $ft3, $fa1
	fmul.d	$fa2, $ft4, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fmul.d	$fa2, $ft2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $sp, 184
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 7
	addi.d	$a3, $sp, 264
	addi.d	$a4, $sp, 200
	addi.d	$a5, $sp, 136
	ori	$a6, $zero, 1
	b	.LBB39_9
	.p2align	4, , 16
.LBB39_7:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB39_9 Depth=4
	move	$a1, $a7
.LBB39_8:                               # %.loopexit
                                        #   in Loop: Header=BB39_9 Depth=4
	addi.d	$a0, $a0, 1
	addi.d	$a6, $a6, 1
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	beq	$a0, $s3, .LBB39_5
.LBB39_9:                               # %.preheader
                                        #   Parent Loop BB39_2 Depth=1
                                        #     Parent Loop BB39_4 Depth=2
                                        #       Parent Loop BB39_6 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB39_12 Depth 5
                                        #           Child Loop BB39_15 Depth 5
	slli.d	$a7, $a0, 3
	fldx.d	$fa2, $a7, $s8
	fldx.d	$fa3, $a7, $s4
	fldx.d	$fa4, $a7, $s5
	fmul.d	$fa5, $fa2, $fa2
	fmul.d	$fa6, $fa3, $fa3
	fadd.d	$fa5, $fa5, $fa6
	addi.w	$a7, $a1, 0
	slli.d	$a7, $a7, 3
	fldx.d	$fa6, $fp, $a7
	fmul.d	$fa7, $fa4, $fa4
	fadd.d	$fa5, $fa5, $fa7
	fmul.d	$fa5, $fa0, $fa5
	fadd.d	$fa5, $fa6, $fa5
	fstx.d	$fa5, $fp, $a7
	addi.w	$a1, $a1, 1
	bltu	$s6, $a0, .LBB39_8
# %bb.10:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB39_9 Depth=4
	sub.d	$t1, $s7, $a0
	move	$t0, $a6
	move	$a7, $a1
	bltu	$t1, $s1, .LBB39_14
# %bb.11:                               # %vector.ph
                                        #   in Loop: Header=BB39_9 Depth=4
	move	$t3, $a2
	bstrins.d	$t3, $zero, 0, 0
	andi	$t2, $t1, 6
	add.d	$t0, $a6, $t2
	add.d	$a7, $t2, $a1
	vreplvei.d	$vr5, $vr2, 0
	vreplvei.d	$vr6, $vr3, 0
	vreplvei.d	$vr7, $vr4, 0
	alsl.d	$a1, $a1, $fp, 3
	move	$t4, $a3
	move	$t5, $a4
	move	$t6, $a5
	.p2align	4, , 16
.LBB39_12:                              # %vector.body
                                        #   Parent Loop BB39_2 Depth=1
                                        #     Parent Loop BB39_4 Depth=2
                                        #       Parent Loop BB39_6 Depth=3
                                        #         Parent Loop BB39_9 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr8, $t4, 0
	vld	$vr9, $t5, 0
	vfmul.d	$vr8, $vr5, $vr8
	vld	$vr10, $t6, 0
	vfmul.d	$vr9, $vr6, $vr9
	vfadd.d	$vr8, $vr8, $vr9
	vld	$vr9, $a1, 0
	vfmul.d	$vr10, $vr7, $vr10
	vfadd.d	$vr8, $vr8, $vr10
	vfmul.d	$vr8, $vr1, $vr8
	vfadd.d	$vr8, $vr9, $vr8
	vst	$vr8, $a1, 0
	addi.d	$a1, $a1, 16
	addi.d	$t3, $t3, -2
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	bnez	$t3, .LBB39_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB39_9 Depth=4
	beq	$t1, $t2, .LBB39_7
.LBB39_14:                              # %.lr.ph.preheader105
                                        #   in Loop: Header=BB39_9 Depth=4
	slli.d	$a1, $t0, 3
	alsl.d	$t1, $a7, $fp, 3
	sub.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 8
	.p2align	4, , 16
.LBB39_15:                              # %.lr.ph
                                        #   Parent Loop BB39_2 Depth=1
                                        #     Parent Loop BB39_4 Depth=2
                                        #       Parent Loop BB39_6 Depth=3
                                        #         Parent Loop BB39_9 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fldx.d	$fa5, $a1, $s8
	fldx.d	$fa6, $a1, $s4
	fmul.d	$fa5, $fa2, $fa5
	fldx.d	$fa7, $a1, $s5
	fmul.d	$fa6, $fa3, $fa6
	fadd.d	$fa5, $fa5, $fa6
	fld.d	$fa6, $t1, 0
	fmul.d	$fa7, $fa4, $fa7
	fadd.d	$fa5, $fa5, $fa7
	fmul.d	$fa5, $fa0, $fa5
	fadd.d	$fa5, $fa6, $fa5
	fst.d	$fa5, $t1, 0
	addi.d	$a1, $a1, 8
	addi.d	$t1, $t1, 8
	bne	$a1, $s0, .LBB39_15
	b	.LBB39_7
.LBB39_16:
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.Lfunc_end39:
	.size	_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_, .Lfunc_end39-_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_
.LCPI40_0:
	.dword	0xbfe279a74576233f              # double -0.57735026899999997
	.dword	0x3fe279a74576233f              # double 0.57735026899999997
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI40_1:
	.dword	0x3ff93cd3a2bb11a0              # double 1.5773502690000001
.LCPI40_2:
	.dword	0x3fdb0cb17513b982              # double 0.42264973100000003
	.section	.text._ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_,"axG",@progbits,_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_,comdat
	.weak	_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_
	.p2align	5
	.type	_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_,@function
_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_: # @_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_
	.cfi_startproc
# %bb.0:                                # %_ZN6miniFE4fillIdEEvPT_S2_RKS1_.exit
	addi.d	$sp, $sp, -304
	.cfi_def_cfa_offset 304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 184                  # 8-byte Folded Spill
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
	.cfi_offset 61, -104
	.cfi_offset 62, -112
	.cfi_offset 63, -120
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 48
	pcalau12i	$a0, %pc_hi20(.LCPI40_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI40_0)
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 0
	vst	$vr1, $sp, 160
	lu52i.d	$a0, $zero, 1023
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 144
	addi.d	$s2, $sp, 152
	addi.d	$s3, $sp, 168
	fld.d	$fa0, $sp, 160
	fld.d	$fa1, $sp, 144
	fst.d	$fa1, $sp, 128                  # 8-byte Folded Spill
	vldi	$vr2, -912
	fld.d	$fa1, $sp, 168
	fsub.d	$fa3, $fa2, $fa0
	fst.d	$fa3, $sp, 56                   # 8-byte Folded Spill
	fadd.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	fld.d	$fa0, $sp, 152
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	fsub.d	$fa0, $fa2, $fa1
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	fadd.d	$fa0, $fa1, $fa2
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 160
	pcalau12i	$a1, %pc_hi20(.LCPI40_1)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI40_1)
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI40_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI40_2)
	fst.d	$fa0, $sp, 8                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 144
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB40_1:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	vldi	$vr2, -912
	fadd.d	$fa1, $fa0, $fa2
	vldi	$vr3, -960
	fmul.d	$fa4, $fa1, $fa3
	fst.d	$fa4, $sp, 120                  # 8-byte Folded Spill
	fsub.d	$fa0, $fa2, $fa0
	fmul.d	$fa5, $fa0, $fa3
	fst.d	$fa5, $sp, 112                  # 8-byte Folded Spill
	fld.d	$fs6, $a1, 0
	fld.d	$fa1, $sp, 56                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa5, $fa1
	fmul.d	$fa1, $fa4, $fa1
	fld.d	$fa3, $sp, 48                   # 8-byte Folded Reload
	fmul.d	$fa2, $fa4, $fa3
	fmul.d	$fa3, $fa5, $fa3
	fld.d	$fs7, $sp, 16                   # 8-byte Folded Reload
	fmul.d	$fs2, $fa0, $fs7
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fmul.d	$fs1, $fa1, $fs7
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fmul.d	$fs3, $fa2, $fs7
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fmul.d	$fs5, $fa3, $fs7
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	fmul.d	$fs4, $fa0, $fs0
	fmul.d	$fa0, $fa1, $fs0
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	fmul.d	$fa0, $fa2, $fs0
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	fmul.d	$fa0, $fa3, $fs0
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	addi.d	$a2, $sp, 136
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 136
	fmul.d	$fa0, $fs6, $fa0
	fld.d	$fa1, $fp, 0
	fld.d	$fa2, $sp, 128                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa0
	fmul.d	$fa2, $fa0, $fs2
	fld.d	$fa3, $fp, 8
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $fp, 0
	fmul.d	$fa1, $fa0, $fs1
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 16
	fst.d	$fa1, $fp, 8
	fmul.d	$fa1, $fa0, $fs3
	fld.d	$fa3, $fp, 24
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 16
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 32
	fst.d	$fa1, $fp, 24
	fmov.d	$fs3, $fs4
	fmul.d	$fa1, $fa0, $fs4
	fld.d	$fa3, $fp, 40
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 32
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fs4
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 48
	fst.d	$fa1, $fp, 40
	fld.d	$fs2, $sp, 72                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fs2
	fld.d	$fa3, $fp, 56
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 48
	fld.d	$fs1, $sp, 80                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $fp, 56
	addi.d	$a1, $s0, 192
	addi.d	$a2, $sp, 136
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 136
	fmul.d	$fa0, $fs6, $fa0
	fld.d	$fa1, $fp, 0
	fld.d	$fa2, $sp, 128                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa0
	fmul.d	$fa2, $fa0, $fs3
	fld.d	$fa3, $fp, 8
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $fp, 0
	fmul.d	$fa1, $fa0, $fs4
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 16
	fst.d	$fa1, $fp, 8
	fmul.d	$fa1, $fa0, $fs2
	fld.d	$fa3, $fp, 24
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 16
	fmul.d	$fa1, $fa0, $fs1
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 32
	fst.d	$fa1, $fp, 24
	fld.d	$fa1, $sp, 96                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fld.d	$fa3, $fp, 40
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 32
	fld.d	$fa1, $sp, 104                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 48
	fst.d	$fa1, $fp, 40
	fld.d	$fa1, $sp, 88                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fld.d	$fa3, $fp, 56
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 48
	fmul.d	$fa0, $fa0, $fs5
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $fp, 56
	fld.d	$fa1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fa4, $sp, 112                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa4, $fa1
	fld.d	$fa2, $sp, 120                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	fld.d	$fa3, $sp, 24                   # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa3
	fmul.d	$fa3, $fa4, $fa3
	fmul.d	$fs1, $fa0, $fs7
	fst.d	$fs1, $sp, 112                  # 8-byte Folded Spill
	fmul.d	$fs5, $fa1, $fs7
	fst.d	$fs5, $sp, 120                  # 8-byte Folded Spill
	fmul.d	$fs4, $fa2, $fs7
	fmul.d	$fs3, $fa3, $fs7
	fmul.d	$fs2, $fa0, $fs0
	fmul.d	$fs7, $fa1, $fs0
	fmul.d	$fa0, $fa2, $fs0
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmul.d	$fa0, $fa3, $fs0
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	addi.d	$a1, $s0, 384
	addi.d	$a2, $sp, 136
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 136
	fmov.d	$fs0, $fs6
	fmul.d	$fa0, $fs6, $fa0
	fld.d	$fa1, $fp, 0
	fld.d	$fs6, $sp, 40                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs6, $fa0
	fmul.d	$fa2, $fa0, $fs1
	fld.d	$fa3, $fp, 8
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $fp, 0
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 16
	fst.d	$fa1, $fp, 8
	fmul.d	$fa1, $fa0, $fs4
	fmov.d	$fs5, $fs4
	fld.d	$fa3, $fp, 24
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 16
	fmul.d	$fa1, $fa0, $fs3
	fmov.d	$fs4, $fs3
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 32
	fst.d	$fa1, $fp, 24
	fmul.d	$fa1, $fa0, $fs2
	fld.d	$fa3, $fp, 40
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 32
	fmul.d	$fa1, $fa0, $fs7
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 48
	fst.d	$fa1, $fp, 40
	fld.d	$fs3, $sp, 96                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fs3
	fld.d	$fa3, $fp, 56
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 48
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $fp, 56
	addi.d	$a1, $s0, 576
	addi.d	$a2, $sp, 136
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 136
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fa1, $fp, 0
	fmul.d	$fa0, $fs6, $fa0
	fmul.d	$fa2, $fa0, $fs2
	fld.d	$fa3, $fp, 8
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $fp, 0
	fmul.d	$fa1, $fa0, $fs7
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 16
	fst.d	$fa1, $fp, 8
	fmul.d	$fa1, $fa0, $fs3
	fld.d	$fa3, $fp, 24
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 16
	fmul.d	$fa1, $fa0, $fs1
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 32
	fst.d	$fa1, $fp, 24
	fld.d	$fa1, $sp, 112                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fld.d	$fa3, $fp, 40
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 32
	fld.d	$fa1, $sp, 120                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 48
	fst.d	$fa1, $fp, 40
	fmul.d	$fa1, $fa0, $fs5
	fld.d	$fa3, $fp, 56
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 48
	fmul.d	$fa0, $fa0, $fs4
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $fp, 56
	andi	$a2, $s4, 1
	addi.d	$s0, $s0, 768
	move	$a1, $s2
	move	$a0, $s3
	move	$s4, $zero
	bnez	$a2, .LBB40_1
# %bb.2:
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end40:
	.size	_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_, .Lfunc_end40-_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_,"axG",@progbits,_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_,comdat
	.weak	_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_ # -- Begin function _ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_
	.p2align	5
	.type	_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_,@function
_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_: # @_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_
# %bb.0:
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a0, 0
	fmul.d	$fa2, $fa0, $fa1
	fld.d	$fa3, $a0, 8
	movgr2fr.d	$fa4, $zero
	fadd.d	$fa2, $fa2, $fa4
	fld.d	$fa5, $a0, 16
	fmul.d	$fa6, $fa0, $fa3
	fld.d	$fa7, $a1, 8
	fadd.d	$fa6, $fa6, $fa4
	fmul.d	$fa0, $fa0, $fa5
	fadd.d	$fa0, $fa0, $fa4
	fmul.d	$ft0, $fa1, $fa7
	fadd.d	$ft0, $ft0, $fa4
	fmul.d	$ft1, $fa3, $fa7
	fld.d	$ft2, $a1, 16
	fadd.d	$ft1, $ft1, $fa4
	fmul.d	$fa7, $fa5, $fa7
	fadd.d	$fa7, $fa7, $fa4
	fmul.d	$fa1, $fa1, $ft2
	fadd.d	$fa1, $fa1, $fa4
	fmul.d	$fa3, $fa3, $ft2
	fadd.d	$fa3, $fa3, $fa4
	fld.d	$ft3, $a1, 24
	fld.d	$ft4, $a0, 24
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$fa4, $fa5, $fa4
	fld.d	$fa5, $a0, 32
	fmul.d	$ft2, $ft3, $ft4
	fadd.d	$fa2, $fa2, $ft2
	fld.d	$ft2, $a0, 40
	fmul.d	$ft5, $ft3, $fa5
	fld.d	$ft6, $a1, 32
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft3, $ft3, $ft2
	fadd.d	$fa0, $fa0, $ft3
	fmul.d	$ft3, $ft4, $ft6
	fadd.d	$ft0, $ft0, $ft3
	fmul.d	$ft3, $fa5, $ft6
	fld.d	$ft5, $a1, 40
	fadd.d	$ft1, $ft1, $ft3
	fmul.d	$ft3, $ft2, $ft6
	fadd.d	$fa7, $fa7, $ft3
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa1, $fa1, $ft3
	fmul.d	$fa5, $fa5, $ft5
	fadd.d	$fa3, $fa3, $fa5
	fld.d	$fa5, $a1, 48
	fld.d	$ft3, $a0, 48
	fmul.d	$ft2, $ft2, $ft5
	fadd.d	$fa4, $fa4, $ft2
	fld.d	$ft2, $a0, 56
	fmul.d	$ft4, $fa5, $ft3
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 64
	fmul.d	$ft5, $fa5, $ft2
	fld.d	$ft6, $a1, 56
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$fa5, $fa5, $ft4
	fadd.d	$fa0, $fa0, $fa5
	fmul.d	$fa5, $ft3, $ft6
	fadd.d	$fa5, $ft0, $fa5
	fmul.d	$ft0, $ft2, $ft6
	fld.d	$ft5, $a1, 64
	fadd.d	$ft0, $ft1, $ft0
	fmul.d	$ft1, $ft4, $ft6
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft3, $ft5
	fadd.d	$fa1, $fa1, $ft1
	fmul.d	$ft1, $ft2, $ft5
	fadd.d	$fa3, $fa3, $ft1
	fld.d	$ft1, $a1, 72
	fld.d	$ft2, $a0, 72
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa4, $fa4, $ft3
	fld.d	$ft3, $a0, 80
	fmul.d	$ft4, $ft1, $ft2
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 88
	fmul.d	$ft5, $ft1, $ft3
	fld.d	$ft6, $a1, 80
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft1, $ft1, $ft4
	fadd.d	$fa0, $fa0, $ft1
	fmul.d	$ft1, $ft2, $ft6
	fadd.d	$fa5, $fa5, $ft1
	fmul.d	$ft1, $ft3, $ft6
	fld.d	$ft5, $a1, 88
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$ft1, $ft4, $ft6
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft2, $ft5
	fadd.d	$fa1, $fa1, $ft1
	fmul.d	$ft1, $ft3, $ft5
	fadd.d	$fa3, $fa3, $ft1
	fld.d	$ft1, $a1, 96
	fld.d	$ft2, $a0, 96
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa4, $fa4, $ft3
	fld.d	$ft3, $a0, 104
	fmul.d	$ft4, $ft1, $ft2
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 112
	fmul.d	$ft5, $ft1, $ft3
	fld.d	$ft6, $a1, 104
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft1, $ft1, $ft4
	fadd.d	$fa0, $fa0, $ft1
	fmul.d	$ft1, $ft2, $ft6
	fadd.d	$fa5, $fa5, $ft1
	fmul.d	$ft1, $ft3, $ft6
	fld.d	$ft5, $a1, 112
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$ft1, $ft4, $ft6
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft2, $ft5
	fadd.d	$fa1, $fa1, $ft1
	fmul.d	$ft1, $ft3, $ft5
	fadd.d	$fa3, $fa3, $ft1
	fld.d	$ft1, $a1, 120
	fld.d	$ft2, $a0, 120
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa4, $fa4, $ft3
	fld.d	$ft3, $a0, 128
	fmul.d	$ft4, $ft1, $ft2
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 136
	fmul.d	$ft5, $ft1, $ft3
	fld.d	$ft6, $a1, 128
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft1, $ft1, $ft4
	fadd.d	$fa0, $fa0, $ft1
	fmul.d	$ft1, $ft2, $ft6
	fadd.d	$fa5, $fa5, $ft1
	fmul.d	$ft1, $ft3, $ft6
	fld.d	$ft5, $a1, 136
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$ft1, $ft4, $ft6
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft2, $ft5
	fadd.d	$fa1, $fa1, $ft1
	fmul.d	$ft1, $ft3, $ft5
	fadd.d	$fa3, $fa3, $ft1
	fld.d	$ft1, $a1, 144
	fld.d	$ft2, $a0, 144
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa4, $fa4, $ft3
	fld.d	$ft3, $a0, 152
	fmul.d	$ft4, $ft1, $ft2
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 160
	fmul.d	$ft5, $ft1, $ft3
	fld.d	$ft6, $a1, 152
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft1, $ft1, $ft4
	fadd.d	$ft1, $fa0, $ft1
	fmul.d	$fa0, $ft2, $ft6
	fadd.d	$fa5, $fa5, $fa0
	fmul.d	$fa0, $ft3, $ft6
	fld.d	$ft5, $a1, 160
	fadd.d	$ft0, $ft0, $fa0
	fmul.d	$fa0, $ft4, $ft6
	fadd.d	$fa7, $fa7, $fa0
	fmul.d	$fa0, $ft2, $ft5
	fadd.d	$ft2, $fa1, $fa0
	fmul.d	$fa0, $ft3, $ft5
	fadd.d	$fa3, $fa3, $fa0
	fld.d	$ft3, $a1, 168
	fld.d	$ft6, $a0, 168
	fmul.d	$fa0, $ft4, $ft5
	fadd.d	$fa4, $fa4, $fa0
	fld.d	$ft4, $a0, 176
	fmul.d	$fa0, $ft3, $ft6
	fadd.d	$fa0, $fa2, $fa0
	fld.d	$ft5, $a0, 184
	fmul.d	$fa1, $ft3, $ft4
	fld.d	$ft7, $a1, 176
	fadd.d	$fa1, $fa6, $fa1
	fmul.d	$fa2, $ft3, $ft5
	fadd.d	$fa6, $ft1, $fa2
	fmul.d	$fa2, $ft6, $ft7
	fadd.d	$fa2, $fa5, $fa2
	fmul.d	$fa5, $ft4, $ft7
	fld.d	$ft1, $a1, 184
	fadd.d	$fa5, $ft0, $fa5
	fmul.d	$ft0, $ft5, $ft7
	fadd.d	$fa7, $fa7, $ft0
	fmul.d	$ft0, $ft6, $ft1
	fadd.d	$ft0, $ft2, $ft0
	fmul.d	$ft2, $ft4, $ft1
	fadd.d	$fa3, $fa3, $ft2
	fmul.d	$ft1, $ft5, $ft1
	fadd.d	$fa4, $fa4, $ft1
	fmul.d	$ft1, $fa5, $fa4
	fmul.d	$ft2, $fa7, $fa3
	fsub.d	$ft1, $ft1, $ft2
	fmul.d	$ft2, $fa4, $fa1
	fmul.d	$ft3, $fa3, $fa6
	fsub.d	$ft2, $ft2, $ft3
	fmul.d	$ft3, $fa7, $fa1
	fmul.d	$ft4, $fa5, $fa6
	fsub.d	$ft3, $ft3, $ft4
	fmul.d	$ft4, $ft1, $fa0
	fmul.d	$ft5, $fa2, $ft2
	fsub.d	$ft4, $ft4, $ft5
	fmul.d	$ft5, $ft0, $ft3
	fadd.d	$ft4, $ft5, $ft4
	fst.d	$ft4, $a3, 0
	frecip.d	$ft4, $ft4
	fmul.d	$ft1, $ft1, $ft4
	fst.d	$ft1, $a2, 0
	fneg.d	$ft1, $ft2
	fmul.d	$ft1, $ft4, $ft1
	fst.d	$ft1, $a2, 8
	fmul.d	$ft1, $ft3, $ft4
	fst.d	$ft1, $a2, 16
	fmul.d	$ft1, $fa4, $fa2
	fmul.d	$ft2, $fa7, $ft0
	fsub.d	$ft1, $ft1, $ft2
	fneg.d	$ft1, $ft1
	fmul.d	$ft1, $ft4, $ft1
	fst.d	$ft1, $a2, 24
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$ft1, $ft0, $fa6
	fsub.d	$fa4, $fa4, $ft1
	fmul.d	$fa4, $fa4, $ft4
	fst.d	$fa4, $a2, 32
	fmul.d	$fa4, $fa7, $fa0
	fmul.d	$fa6, $fa2, $fa6
	fsub.d	$fa4, $fa4, $fa6
	fneg.d	$fa4, $fa4
	fmul.d	$fa4, $ft4, $fa4
	fst.d	$fa4, $a2, 40
	fmul.d	$fa4, $fa3, $fa2
	fmul.d	$fa6, $fa5, $ft0
	fsub.d	$fa4, $fa4, $fa6
	fmul.d	$fa4, $fa4, $ft4
	fst.d	$fa4, $a2, 48
	fmul.d	$fa3, $fa3, $fa0
	fmul.d	$fa4, $ft0, $fa1
	fsub.d	$fa3, $fa3, $fa4
	fneg.d	$fa3, $fa3
	fmul.d	$fa3, $ft4, $fa3
	fst.d	$fa3, $a2, 56
	fmul.d	$fa0, $fa5, $fa0
	fmul.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $ft4
	fst.d	$fa0, $a2, 64
	ret
.Lfunc_end41:
	.size	_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_, .Lfunc_end41-_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_
.LCPI42_0:
	.dword	1                               # 0x1
	.dword	0                               # 0x0
.LCPI42_1:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI42_2:
	.dword	0                               # 0x0
	.dword	3                               # 0x3
	.section	.text._ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_,"axG",@progbits,_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_,comdat
	.weak	_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_
	.p2align	5
	.type	_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_,@function
_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_: # @_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_
# %bb.0:
	addi.d	$sp, $sp, -32
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	fld.d	$fa5, $a0, 0
	fld.d	$ft1, $a1, 8
	fld.d	$ft10, $a1, 0
	fld.d	$ft5, $a0, 24
	fld.d	$ft9, $a1, 32
	fmul.d	$fa0, $fa5, $ft1
	movgr2fr.d	$fa1, $zero
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $ft5, $ft9
	fld.d	$ft7, $a0, 48
	fld.d	$ft8, $a1, 56
	fld.d	$ft4, $a0, 72
	fld.d	$ft6, $a1, 80
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $ft7, $ft8
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $ft4, $ft6
	fld.d	$ft0, $a0, 96
	fld.d	$ft2, $a1, 104
	fld.d	$fa6, $a0, 120
	fld.d	$fa7, $a1, 128
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $ft0, $ft2
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$ft3, $fa6, $fa7
	fld.d	$fa3, $a0, 144
	fld.d	$fa4, $a1, 152
	fld.d	$fa1, $a0, 168
	fld.d	$fa2, $a1, 176
	fadd.d	$fa0, $fa0, $ft3
	fmul.d	$ft3, $fa3, $fa4
	fadd.d	$fa0, $fa0, $ft3
	fmul.d	$ft3, $fa1, $fa2
	vld	$vr19, $a0, 8
	fadd.d	$fa0, $fa0, $ft3
	vreplvei.d	$vr9, $vr9, 0
	vld	$vr20, $a1, 16
	vfmul.d	$vr9, $vr19, $vr9
	vrepli.b	$vr21, 0
	vfadd.d	$vr22, $vr9, $vr21
	vpackev.d	$vr9, $vr20, $vr18
	vreplvei.d	$vr5, $vr5, 0
	vfmul.d	$vr23, $vr9, $vr5
	vld	$vr24, $a1, 40
	pcalau12i	$a3, %pc_hi20(.LCPI42_1)
	vld	$vr11, $a3, %pc_lo12(.LCPI42_1)
	pcalau12i	$a3, %pc_hi20(.LCPI42_2)
	vld	$vr9, $a3, %pc_lo12(.LCPI42_2)
	pcalau12i	$a3, %pc_hi20(.LCPI42_0)
	vld	$vr5, $a3, %pc_lo12(.LCPI42_0)
	vfadd.d	$vr23, $vr23, $vr21
	movfr2gr.d	$a3, $ft10
	vori.b	$vr18, $vr11, 0
	vshuf.d	$vr18, $vr24, $vr20
	vori.b	$vr25, $vr9, 0
	vshuf.d	$vr25, $vr20, $vr24
	vinsgr2vr.d	$vr20, $a3, 1
	vori.b	$vr26, $vr5, 0
	vshuf.d	$vr26, $vr0, $vr19
	vfmul.d	$vr19, $vr19, $vr20
	vfmul.d	$vr20, $vr26, $vr20
	vld	$vr26, $a0, 32
	vfadd.d	$vr19, $vr19, $vr21
	vfadd.d	$vr20, $vr20, $vr21
	vreplvei.d	$vr17, $vr17, 0
	vfmul.d	$vr17, $vr26, $vr17
	vfadd.d	$vr17, $vr22, $vr17
	vreplvei.d	$vr13, $vr13, 0
	vfmul.d	$vr18, $vr18, $vr13
	fld.d	$ft5, $a1, 184
	vfadd.d	$vr18, $vr23, $vr18
	vfmul.d	$vr21, $vr26, $vr25
	vfadd.d	$vr19, $vr19, $vr21
	vori.b	$vr21, $vr5, 0
	vshuf.d	$vr21, $vr0, $vr26
	vfmul.d	$vr21, $vr21, $vr25
	vld	$vr22, $a0, 56
	vfadd.d	$vr20, $vr20, $vr21
	vld	$vr21, $a1, 64
	vreplvei.d	$vr16, $vr16, 0
	vfmul.d	$vr16, $vr22, $vr16
	vfadd.d	$vr16, $vr17, $vr16
	vori.b	$vr17, $vr11, 0
	vshuf.d	$vr17, $vr21, $vr24
	vreplvei.d	$vr15, $vr15, 0
	vfmul.d	$vr15, $vr17, $vr15
	vfadd.d	$vr15, $vr18, $vr15
	vori.b	$vr17, $vr9, 0
	vshuf.d	$vr17, $vr24, $vr21
	vfmul.d	$vr18, $vr22, $vr17
	vfadd.d	$vr18, $vr19, $vr18
	vori.b	$vr19, $vr5, 0
	vshuf.d	$vr19, $vr0, $vr22
	vfmul.d	$vr17, $vr19, $vr17
	vld	$vr19, $a0, 80
	vfadd.d	$vr17, $vr20, $vr17
	vld	$vr20, $a1, 88
	vreplvei.d	$vr14, $vr14, 0
	vfmul.d	$vr14, $vr19, $vr14
	vfadd.d	$vr14, $vr16, $vr14
	vori.b	$vr16, $vr11, 0
	vshuf.d	$vr16, $vr20, $vr21
	vreplvei.d	$vr12, $vr12, 0
	vfmul.d	$vr12, $vr16, $vr12
	vfadd.d	$vr12, $vr15, $vr12
	vori.b	$vr15, $vr9, 0
	vshuf.d	$vr15, $vr21, $vr20
	vfmul.d	$vr16, $vr19, $vr15
	vfadd.d	$vr16, $vr18, $vr16
	vori.b	$vr18, $vr5, 0
	vshuf.d	$vr18, $vr0, $vr19
	vfmul.d	$vr15, $vr18, $vr15
	vld	$vr18, $a0, 104
	vfadd.d	$vr15, $vr17, $vr15
	vld	$vr17, $a1, 112
	vreplvei.d	$vr10, $vr10, 0
	vfmul.d	$vr10, $vr18, $vr10
	vfadd.d	$vr10, $vr14, $vr10
	vori.b	$vr14, $vr11, 0
	vshuf.d	$vr14, $vr17, $vr20
	vreplvei.d	$vr8, $vr8, 0
	vfmul.d	$vr8, $vr14, $vr8
	vfadd.d	$vr8, $vr12, $vr8
	vori.b	$vr12, $vr9, 0
	vshuf.d	$vr12, $vr20, $vr17
	vfmul.d	$vr14, $vr18, $vr12
	vfadd.d	$vr14, $vr16, $vr14
	vori.b	$vr16, $vr5, 0
	vshuf.d	$vr16, $vr0, $vr18
	vfmul.d	$vr12, $vr16, $vr12
	vld	$vr16, $a0, 128
	vfadd.d	$vr12, $vr15, $vr12
	vld	$vr15, $a1, 136
	vreplvei.d	$vr7, $vr7, 0
	vfmul.d	$vr7, $vr16, $vr7
	vfadd.d	$vr7, $vr10, $vr7
	vori.b	$vr10, $vr11, 0
	vshuf.d	$vr10, $vr15, $vr17
	vreplvei.d	$vr6, $vr6, 0
	vfmul.d	$vr6, $vr10, $vr6
	vfadd.d	$vr6, $vr8, $vr6
	vori.b	$vr8, $vr9, 0
	vshuf.d	$vr8, $vr17, $vr15
	vfmul.d	$vr10, $vr16, $vr8
	vfadd.d	$vr10, $vr14, $vr10
	vori.b	$vr14, $vr5, 0
	vshuf.d	$vr14, $vr0, $vr16
	vfmul.d	$vr8, $vr14, $vr8
	vld	$vr14, $a0, 152
	vfadd.d	$vr8, $vr12, $vr8
	vld	$vr12, $a1, 160
	vreplvei.d	$vr4, $vr4, 0
	vfmul.d	$vr4, $vr14, $vr4
	vfadd.d	$vr4, $vr7, $vr4
	vshuf.d	$vr11, $vr12, $vr15
	vreplvei.d	$vr3, $vr3, 0
	vfmul.d	$vr3, $vr11, $vr3
	vfadd.d	$vr3, $vr6, $vr3
	vshuf.d	$vr9, $vr15, $vr12
	vfmul.d	$vr6, $vr14, $vr9
	vfadd.d	$vr6, $vr10, $vr6
	vori.b	$vr7, $vr5, 0
	vshuf.d	$vr7, $vr0, $vr14
	vld	$vr10, $a0, 176
	vfmul.d	$vr7, $vr7, $vr9
	vfadd.d	$vr7, $vr8, $vr7
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr2, $vr10, $vr2
	vfadd.d	$vr2, $vr4, $vr2
	vreplvei.d	$vr4, $vr12, 1
	movfr2gr.d	$a0, $ft5
	vinsgr2vr.d	$vr4, $a0, 1
	vreplvei.d	$vr1, $vr1, 0
	vfmul.d	$vr1, $vr4, $vr1
	vfadd.d	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr12, $a0, 0
	vfmul.d	$vr3, $vr10, $vr12
	vfadd.d	$vr3, $vr6, $vr3
	vori.b	$vr4, $vr5, 0
	vshuf.d	$vr4, $vr0, $vr10
	vfmul.d	$vr4, $vr4, $vr12
	vfadd.d	$vr4, $vr7, $vr4
	vreplvei.d	$vr6, $vr4, 0
	vreplvei.d	$vr7, $vr4, 1
	fmul.d	$fa6, $fa6, $fa7
	vreplvei.d	$vr7, $vr3, 0
	vreplvei.d	$vr8, $vr3, 1
	fmul.d	$fa7, $fa7, $ft0
	fsub.d	$fa6, $fa6, $fa7
	vfmul.d	$vr4, $vr2, $vr4
	vshuf.d	$vr5, $vr0, $vr2
	vfmul.d	$vr2, $vr5, $vr3
	vfsub.d	$vr2, $vr4, $vr2
	fmul.d	$fa0, $fa0, $fa6
	vfmul.d	$vr1, $vr1, $vr2
	vreplvei.d	$vr2, $vr1, 0
	fsub.d	$fa0, $fa2, $fa0
	vreplvei.d	$vr1, $vr1, 1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a2, 0
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end42:
	.size	_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_, .Lfunc_end42-_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_
                                        # -- End function
	.section	.text._ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_,"axG",@progbits,_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_,comdat
	.weak	_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_ # -- Begin function _ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_
	.p2align	5
	.type	_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_,@function
_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_: # @_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_
	.cfi_startproc
# %bb.0:
	beqz	$a0, .LBB43_36
# %bb.1:                                # %.lr.ph72
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
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a6, $a3, 16
	ld.d	$a7, $a3, 8
	ld.d	$t0, $a3, 32
	ld.d	$t1, $a3, 80
	ld.d	$a3, $a3, 104
	sub.d	$t2, $a6, $a7
	srai.d	$t2, $t2, 2
	ori	$t3, $zero, 1
	b	.LBB43_3
	.p2align	4, , 16
.LBB43_2:                               # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit.thread
                                        #   in Loop: Header=BB43_3 Depth=1
	addi.d	$a5, $a5, 1
	add.w	$a4, $a4, $t4
	beq	$a5, $a0, .LBB43_35
.LBB43_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_8 Depth 2
                                        #     Child Loop BB43_17 Depth 2
                                        #       Child Loop BB43_19 Depth 3
                                        #     Child Loop BB43_27 Depth 2
                                        #       Child Loop BB43_29 Depth 3
	slli.d	$t4, $a5, 2
	ldx.w	$t5, $a1, $t4
	sub.d	$t4, $a0, $a5
	beq	$a6, $a7, .LBB43_9
# %bb.4:                                #   in Loop: Header=BB43_3 Depth=1
	ld.w	$t6, $a7, 0
	sub.w	$t6, $t5, $t6
	bgeu	$t6, $t2, .LBB43_6
# %bb.5:                                #   in Loop: Header=BB43_3 Depth=1
	slli.d	$t7, $t6, 2
	ldx.w	$t7, $a7, $t7
	beq	$t7, $t5, .LBB43_13
.LBB43_6:                               #   in Loop: Header=BB43_3 Depth=1
	blt	$t2, $t3, .LBB43_34
# %bb.7:                                # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader
                                        #   in Loop: Header=BB43_3 Depth=1
	move	$t7, $t2
	move	$t6, $a7
	.p2align	4, , 16
.LBB43_8:                               # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
                                        #   Parent Loop BB43_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t8, $t7, 1
	slli.d	$fp, $t8, 2
	ldx.w	$fp, $t6, $fp
	alsl.d	$s0, $t8, $t6, 2
	slt	$fp, $fp, $t5
	addi.d	$s0, $s0, 4
	nor	$s1, $t8, $zero
	add.d	$t7, $t7, $s1
	maskeqz	$s0, $s0, $fp
	masknez	$t6, $t6, $fp
	maskeqz	$t7, $t7, $fp
	masknez	$t8, $t8, $fp
	or	$t7, $t7, $t8
	or	$t6, $s0, $t6
	bgtz	$t7, .LBB43_8
	b	.LBB43_10
	.p2align	4, , 16
.LBB43_9:                               #   in Loop: Header=BB43_3 Depth=1
	move	$t6, $a7
.LBB43_10:                              # %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i
                                        #   in Loop: Header=BB43_3 Depth=1
	beq	$a6, $t6, .LBB43_2
.LBB43_11:                              #   in Loop: Header=BB43_3 Depth=1
	ld.w	$t7, $t6, 0
	bne	$t7, $t5, .LBB43_2
# %bb.12:                               # %.thread27.i
                                        #   in Loop: Header=BB43_3 Depth=1
	sub.d	$t5, $t6, $a7
	srai.d	$t6, $t5, 2
.LBB43_13:                              # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit
                                        #   in Loop: Header=BB43_3 Depth=1
	alsl.d	$t5, $t6, $t0, 2
	slli.d	$t6, $t6, 2
	ldx.w	$t7, $t0, $t6
	ld.w	$t8, $t5, 4
	beq	$t8, $t7, .LBB43_2
# %bb.14:                               #   in Loop: Header=BB43_3 Depth=1
	alsl.d	$t5, $t7, $t1, 2
	alsl.d	$t6, $t7, $a3, 3
	bstrpick.d	$fp, $t4, 31, 0
	sub.w	$t7, $t8, $t7
	beqz	$fp, .LBB43_24
# %bb.15:                               # %.lr.ph.i
                                        #   in Loop: Header=BB43_3 Depth=1
	move	$t8, $zero
	alsl.d	$fp, $a5, $a1, 2
	alsl.d	$s0, $a4, $a2, 3
	addi.w	$s1, $t4, 0
	b	.LBB43_17
	.p2align	4, , 16
.LBB43_16:                              #   in Loop: Header=BB43_17 Depth=2
	addi.d	$t8, $t8, 1
	beq	$t8, $s1, .LBB43_24
.LBB43_17:                              #   Parent Loop BB43_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB43_19 Depth 3
	alsl.d	$s2, $t8, $fp, 2
	blt	$t7, $t3, .LBB43_21
# %bb.18:                               # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i
                                        #   in Loop: Header=BB43_17 Depth=2
	ld.w	$s4, $s2, 0
	move	$s3, $t5
	move	$s5, $t7
	.p2align	4, , 16
.LBB43_19:                              # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
                                        #   Parent Loop BB43_3 Depth=1
                                        #     Parent Loop BB43_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srli.d	$s6, $s5, 1
	slli.d	$s7, $s6, 2
	ldx.w	$s7, $s3, $s7
	alsl.d	$s8, $s6, $s3, 2
	slt	$s7, $s7, $s4
	addi.d	$s8, $s8, 4
	nor	$ra, $s6, $zero
	add.d	$s5, $s5, $ra
	maskeqz	$s5, $s5, $s7
	masknez	$s6, $s6, $s7
	or	$s5, $s5, $s6
	maskeqz	$s6, $s8, $s7
	masknez	$s3, $s3, $s7
	or	$s3, $s6, $s3
	bgtz	$s5, .LBB43_19
# %bb.20:                               # %_ZSt11lower_boundIPiiET_S1_S1_RKT0_.exit.i
                                        #   in Loop: Header=BB43_17 Depth=2
	sub.d	$s4, $s3, $t5
	srai.d	$s4, $s4, 2
	bge	$s4, $t7, .LBB43_16
	b	.LBB43_22
	.p2align	4, , 16
.LBB43_21:                              #   in Loop: Header=BB43_17 Depth=2
	move	$s3, $t5
	sub.d	$s4, $s3, $t5
	srai.d	$s4, $s4, 2
	bge	$s4, $t7, .LBB43_16
.LBB43_22:                              #   in Loop: Header=BB43_17 Depth=2
	ld.w	$s3, $s3, 0
	ld.w	$s2, $s2, 0
	bne	$s3, $s2, .LBB43_16
# %bb.23:                               #   in Loop: Header=BB43_17 Depth=2
	slli.d	$s2, $t8, 3
	fldx.d	$fa0, $s0, $s2
	slli.d	$s2, $s4, 3
	fldx.d	$fa1, $t6, $s2
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $t6, $s2
	b	.LBB43_16
	.p2align	4, , 16
.LBB43_24:                              # %_ZN6miniFE12sum_into_rowIidEEviPT_PT0_iPKS1_PKS3_.exit
                                        #   in Loop: Header=BB43_3 Depth=1
	beqz	$a5, .LBB43_2
# %bb.25:                               # %.lr.ph
                                        #   in Loop: Header=BB43_3 Depth=1
	move	$t8, $zero
	move	$fp, $a5
	b	.LBB43_27
	.p2align	4, , 16
.LBB43_26:                              # %_ZN6miniFE12sum_into_rowIidEEviPT_PT0_iPKS1_PKS3_.exit55
                                        #   in Loop: Header=BB43_27 Depth=2
	addi.d	$s0, $t8, 1
	nor	$t8, $t8, $zero
	add.d	$t8, $a0, $t8
	add.d	$fp, $t8, $fp
	move	$t8, $s0
	beq	$s0, $a5, .LBB43_2
.LBB43_27:                              #   Parent Loop BB43_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB43_29 Depth 3
	alsl.d	$s0, $t8, $a1, 2
	blt	$t7, $t3, .LBB43_31
# %bb.28:                               # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i45
                                        #   in Loop: Header=BB43_27 Depth=2
	ld.w	$s2, $s0, 0
	move	$s1, $t5
	move	$s3, $t7
	.p2align	4, , 16
.LBB43_29:                              # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i.i.i46
                                        #   Parent Loop BB43_3 Depth=1
                                        #     Parent Loop BB43_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srli.d	$s4, $s3, 1
	slli.d	$s5, $s4, 2
	ldx.w	$s5, $s1, $s5
	alsl.d	$s6, $s4, $s1, 2
	slt	$s5, $s5, $s2
	addi.d	$s6, $s6, 4
	nor	$s7, $s4, $zero
	add.d	$s3, $s3, $s7
	maskeqz	$s3, $s3, $s5
	masknez	$s4, $s4, $s5
	or	$s3, $s3, $s4
	maskeqz	$s4, $s6, $s5
	masknez	$s1, $s1, $s5
	or	$s1, $s4, $s1
	bgtz	$s3, .LBB43_29
# %bb.30:                               # %_ZSt11lower_boundIPiiET_S1_S1_RKT0_.exit.i41
                                        #   in Loop: Header=BB43_27 Depth=2
	sub.d	$s2, $s1, $t5
	srai.d	$s2, $s2, 2
	addi.w	$fp, $fp, 0
	bge	$s2, $t7, .LBB43_26
	b	.LBB43_32
	.p2align	4, , 16
.LBB43_31:                              #   in Loop: Header=BB43_27 Depth=2
	move	$s1, $t5
	sub.d	$s2, $s1, $t5
	srai.d	$s2, $s2, 2
	addi.w	$fp, $fp, 0
	bge	$s2, $t7, .LBB43_26
.LBB43_32:                              #   in Loop: Header=BB43_27 Depth=2
	ld.w	$s1, $s1, 0
	ld.w	$s0, $s0, 0
	bne	$s1, $s0, .LBB43_26
# %bb.33:                               #   in Loop: Header=BB43_27 Depth=2
	slli.d	$s0, $fp, 3
	fldx.d	$fa0, $a2, $s0
	slli.d	$s0, $s2, 3
	fldx.d	$fa1, $t6, $s0
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $t6, $s0
	b	.LBB43_26
.LBB43_34:                              #   in Loop: Header=BB43_3 Depth=1
	move	$t6, $a7
	bne	$a6, $t6, .LBB43_11
	b	.LBB43_2
.LBB43_35:
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
.LBB43_36:                              # %._crit_edge
	ret
.Lfunc_end43:
	.size	_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_, .Lfunc_end43-_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"One or more processors have 0 equations. Not currently supported. Exiting."
	.size	.L.str, 75

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"miniFE."
	.size	.L.str.1, 8

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"x"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"."
	.size	.L.str.3, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"miniFE"
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"2.0"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.7:
	.asciz	"Total Program Time"
	.size	.L.str.7, 19

	.type	.L.str.8,@object                # @.str.8
	.p2align	3, 0x0
.L.str.8:
	.asciz	"Global Run Parameters"
	.size	.L.str.8, 22

	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"dimensions"
	.size	.L.str.9, 11

	.type	.L.str.13,@object               # @.str.13
	.p2align	3, 0x0
.L.str.13:
	.asciz	"load_imbalance"
	.size	.L.str.13, 15

	.type	.L.str.14,@object               # @.str.14
	.p2align	3, 0x0
.L.str.14:
	.asciz	"1 (yes)"
	.size	.L.str.14, 8

	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"mv_overlap_comm_comp"
	.size	.L.str.15, 21

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"0 (no)"
	.size	.L.str.16, 7

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.17:
	.asciz	"number of processors"
	.size	.L.str.17, 21

	.type	.L.str.20,@object               # @.str.20
	.p2align	3, 0x0
.L.str.20:
	.asciz	"unknown"
	.size	.L.str.20, 8

	.type	.L.str.21,@object               # @.str.21
	.p2align	3, 0x0
.L.str.21:
	.asciz	"kernel name"
	.size	.L.str.21, 12

	.type	.L.str.22,@object               # @.str.22
	.p2align	3, 0x0
.L.str.22:
	.asciz	"kernel release"
	.size	.L.str.22, 15

	.type	.L.str.23,@object               # @.str.23
	.p2align	3, 0x0
.L.str.23:
	.asciz	"processor"
	.size	.L.str.23, 10

	.type	.L.str.24,@object               # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"Build"
	.size	.L.str.24, 6

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"CXX"
	.size	.L.str.25, 4

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.28:
	.asciz	"using MPI"
	.size	.L.str.28, 10

	.type	.L.str.29,@object               # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"-"
	.size	.L.str.29, 2

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	", "
	.size	.L.str.30, 3

	.type	.L.str.31,@object               # @.str.31
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.31:
	.asciz	"Run Date/Time"
	.size	.L.str.31, 14

	.type	.L.str.32,@object               # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.32, 49

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.34:
	.asciz	"Matrix structure generation"
	.size	.L.str.34, 28

	.type	.L.str.35,@object               # @.str.35
	.p2align	3, 0x0
.L.str.35:
	.asciz	"Mat-struc-gen Time"
	.size	.L.str.35, 19

	.type	.L.str.36,@object               # @.str.36
	.p2align	3, 0x0
.L.str.36:
	.asciz	"FE assembly"
	.size	.L.str.36, 12

	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"FE assembly Time"
	.size	.L.str.37, 17

	.type	.L.str.38,@object               # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"Starting CG solver ... "
	.size	.L.str.38, 24

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Final Resid Norm: "
	.size	.L.str.39, 19

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"verifying solution at ~ (0.5, 0.5, 0.5) ..."
	.size	.L.str.41, 44

	.type	.L.str.43,@object               # @.str.43
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.43:
	.asciz	"ScalarType"
	.size	.L.str.43, 11

	.type	.L.str.44,@object               # @.str.44
	.p2align	3, 0x0
.L.str.44:
	.asciz	"GlobalOrdinalType"
	.size	.L.str.44, 18

	.type	.L.str.45,@object               # @.str.45
	.p2align	3, 0x0
.L.str.45:
	.asciz	"LocalOrdinalType"
	.size	.L.str.45, 17

	.type	.L.str.46,@object               # @.str.46
	.p2align	3, 0x0
.L.str.46:
	.asciz	"Iterations"
	.size	.L.str.46, 11

	.type	.L.str.47,@object               # @.str.47
	.p2align	3, 0x0
.L.str.47:
	.asciz	"Final Resid Norm"
	.size	.L.str.47, 17

	.type	.L.str.48,@object               # @.str.48
	.p2align	3, 0x0
.L.str.48:
	.asciz	"WAXPY Time"
	.size	.L.str.48, 11

	.type	.L.str.49,@object               # @.str.49
	.p2align	3, 0x0
.L.str.49:
	.asciz	"WAXPY Flops"
	.size	.L.str.49, 12

	.type	.L.str.50,@object               # @.str.50
	.p2align	3, 0x0
.L.str.50:
	.asciz	"WAXPY Mflops"
	.size	.L.str.50, 13

	.type	.L.str.51,@object               # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"inf"
	.size	.L.str.51, 4

	.type	.L.str.53,@object               # @.str.53
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.53:
	.asciz	"DOT Flops"
	.size	.L.str.53, 10

	.type	.L.str.54,@object               # @.str.54
	.p2align	3, 0x0
.L.str.54:
	.asciz	"DOT Mflops"
	.size	.L.str.54, 11

	.type	.L.str.55,@object               # @.str.55
	.p2align	3, 0x0
.L.str.55:
	.asciz	"MATVEC Time"
	.size	.L.str.55, 12

	.type	.L.str.56,@object               # @.str.56
	.p2align	3, 0x0
.L.str.56:
	.asciz	"MATVEC Flops"
	.size	.L.str.56, 13

	.type	.L.str.57,@object               # @.str.57
	.p2align	3, 0x0
.L.str.57:
	.asciz	"MATVEC Mflops"
	.size	.L.str.57, 14

	.type	.L.str.58,@object               # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"Total"
	.size	.L.str.58, 6

	.type	.L.str.59,@object               # @.str.59
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.59:
	.asciz	"Total CG Time"
	.size	.L.str.59, 14

	.type	.L.str.60,@object               # @.str.60
	.p2align	3, 0x0
.L.str.60:
	.asciz	"Total CG Flops"
	.size	.L.str.60, 15

	.type	.L.str.61,@object               # @.str.61
	.p2align	3, 0x0
.L.str.61:
	.asciz	"Total CG Mflops"
	.size	.L.str.61, 16

	.type	.L.str.62,@object               # @.str.62
	.p2align	3, 0x0
.L.str.62:
	.asciz	"Time per iteration"
	.size	.L.str.62, 19

	.type	.L.str.63,@object               # @.str.63
	.p2align	3, 0x0
.L.str.63:
	.asciz	"Rows-per-proc Load Imbalance"
	.size	.L.str.63, 29

	.type	.L.str.64,@object               # @.str.64
	.p2align	3, 0x0
.L.str.64:
	.asciz	"Largest (from avg, %)"
	.size	.L.str.64, 22

	.type	.L.str.65,@object               # @.str.65
	.p2align	3, 0x0
.L.str.65:
	.asciz	"Std Dev (%)"
	.size	.L.str.65, 12

	.type	.L.str.66,@object               # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"on the y==0 face (ix="
	.size	.L.str.66, 22

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	", iz="
	.size	.L.str.67, 6

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"), ERROR: found negative row ("
	.size	.L.str.68, 31

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	") for nodeID="
	.size	.L.str.69, 14

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"vector::reserve"
	.size	.L.str.70, 16

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.71, 26

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"ERROR, failed to map id to row."
	.size	.L.str.72, 32

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"ERROR, id:"
	.size	.L.str.73, 11

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	", ids_to_rows.begin(): "
	.size	.L.str.74, 24

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"ERROR, negative offset in find_row_for_id for id="
	.size	.L.str.75, 50

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"One of A.rows.resize, A.row_offsets.resize, A.packed_cols.reserve or A.packed_coefs.reserve: nrows="
	.size	.L.str.76, 100

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	": "
	.size	.L.str.77, 3

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"ERROR in generate_matrix_structure, roffset != nrows."
	.size	.L.str.78, 54

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"proc "
	.size	.L.str.79, 6

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	" threw an exception in generate_matrix_structure, probably due to running out of memory."
	.size	.L.str.80, 89

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"vector::_M_default_append"
	.size	.L.str.81, 26

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"Warning, packed_cols.capacity ("
	.size	.L.str.82, 32

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	") != "
	.size	.L.str.83, 6

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"packed_coefs.capacity ("
	.size	.L.str.84, 24

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	")"
	.size	.L.str.85, 2

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	") <  nnz ("
	.size	.L.str.86, 11

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"mesh->map_id_to_row produced col="
	.size	.L.str.87, 34

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	" from col_id="
	.size	.L.str.88, 14

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	", but global_nrows="
	.size	.L.str.89, 20

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	", max_row_in_map="
	.size	.L.str.90, 18

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	", proc="
	.size	.L.str.91, 8

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"get_elem_nodes_and_coords ERROR, negative elemID"
	.size	.L.str.92, 49

	.type	.L.str.93,@object               # @.str.93
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.93:
	.asciz	"Matrix attributes"
	.size	.L.str.93, 18

	.type	.L.str.94,@object               # @.str.94
	.p2align	3, 0x0
.L.str.94:
	.asciz	"Global Nrows"
	.size	.L.str.94, 13

	.type	.L.str.95,@object               # @.str.95
	.p2align	3, 0x0
.L.str.95:
	.asciz	"Global NNZ"
	.size	.L.str.95, 11

	.type	.L.str.96,@object               # @.str.96
	.p2align	3, 0x0
.L.str.96:
	.asciz	"Global Memory (GB)"
	.size	.L.str.96, 19

	.type	.L.str.97,@object               # @.str.97
	.p2align	3, 0x0
.L.str.97:
	.asciz	"Pll Memory Overhead (MB)"
	.size	.L.str.97, 25

	.type	.L.str.98,@object               # @.str.98
	.p2align	3, 0x0
.L.str.98:
	.asciz	"Rows per proc MIN"
	.size	.L.str.98, 18

	.type	.L.str.99,@object               # @.str.99
	.p2align	3, 0x0
.L.str.99:
	.asciz	"Rows per proc MAX"
	.size	.L.str.99, 18

	.type	.L.str.100,@object              # @.str.100
	.p2align	3, 0x0
.L.str.100:
	.asciz	"Rows per proc AVG"
	.size	.L.str.100, 18

	.type	.L.str.101,@object              # @.str.101
	.p2align	3, 0x0
.L.str.101:
	.asciz	"NNZ per proc MIN"
	.size	.L.str.101, 17

	.type	.L.str.102,@object              # @.str.102
	.p2align	3, 0x0
.L.str.102:
	.asciz	"NNZ per proc MAX"
	.size	.L.str.102, 17

	.type	.L.str.103,@object              # @.str.103
	.p2align	3, 0x0
.L.str.103:
	.asciz	"NNZ per proc AVG"
	.size	.L.str.103, 17

	.type	.L.str.104,@object              # @.str.104
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.104:
	.asciz	"miniFE::cg_solve ERROR, A.has_local_indices is false, needs to be true. This probably means "
	.size	.L.str.104, 93

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"miniFE::make_local_matrix(A) was not called prior to calling miniFE::cg_solve."
	.size	.L.str.105, 79

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"Initial Residual = "
	.size	.L.str.106, 20

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"Iteration = "
	.size	.L.str.107, 13

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"   Residual = "
	.size	.L.str.108, 15

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"miniFE::cg_solve ERROR, numerical breakdown!"
	.size	.L.str.109, 45

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"max absolute error is "
	.size	.L.str.110, 23

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	":"
	.size	.L.str.111, 2

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"   at position ("
	.size	.L.str.112, 17

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	","
	.size	.L.str.113, 2

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"), "
	.size	.L.str.114, 4

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"   computed solution: "
	.size	.L.str.115, 23

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	",  analytic solution: "
	.size	.L.str.116, 23

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"solution matches analytic solution to within "
	.size	.L.str.117, 46

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	" or better."
	.size	.L.str.118, 12

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"double"
	.size	.L.str.119, 7

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"int"
	.size	.L.str.120, 4

	.data
	.p2align	3, 0x0
.L_ZTISt9exception.DW.stub:
	.dword	_ZTISt9exception
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
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZTISt9exception
	.addrsig_sym _ZTISt13runtime_error
	.addrsig_sym _ZSt4cerr
