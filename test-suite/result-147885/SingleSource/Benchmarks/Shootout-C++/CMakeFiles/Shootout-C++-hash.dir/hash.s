	.file	"hash.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB0_3
.LBB0_2:
	lu12i.w	$a0, 122
	ori	$fp, $a0, 288
.LBB0_3:
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 24
	vst	$vr0, $sp, 8
.Ltmp0:
	addi.d	$a0, $sp, 0
	ori	$a1, $zero, 100
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.4:                                # %_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEEC2Ev.exit.preheader
	addi.w	$s4, $fp, 0
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB0_31
# %bb.5:                                # %.lr.ph
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$s0, $a1, %pc_lo12(.L.str)
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                # %_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEEC2Ev.exit
                                        #   in Loop: Header=BB0_7 Depth=1
	st.w	$s1, $s3, 16
	addi.w	$a0, $s1, 1
	beq	$s1, $s4, .LBB0_18
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_14 Depth 2
	move	$s1, $a0
	addi.d	$a0, $sp, 40
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32
	move	$s2, $a0
	addi.d	$a1, $a1, 1
.Ltmp3:
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.8:                                # %.noexc
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.bu	$a1, $s2, 0
	beqz	$a1, .LBB0_11
# %bb.9:                                # %.lr.ph.i.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	move	$a0, $zero
	addi.d	$a2, $s2, 1
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph.i.i.i.i.i.i.i
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a3, $a1
	ld.bu	$a1, $a2, 0
	alsl.d	$a0, $a0, $a0, 2
	add.d	$a0, $a0, $a3
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB0_10
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	move	$a0, $zero
.LBB0_12:                               # %_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE10_M_bkt_numERKS5_.exit.i.i
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a1, $sp, 16
	ld.d	$s6, $sp, 8
	sub.d	$a1, $a1, $s6
	srai.d	$a1, $a1, 3
	mod.du	$s7, $a0, $a1
	slli.d	$a0, $s7, 3
	ldx.d	$s5, $s6, $a0
	beqz	$s5, .LBB0_16
# %bb.13:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	move	$s3, $s5
	.p2align	4, , 16
.LBB0_14:                               # %.lr.ph.i.i
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB0_14
.LBB0_16:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB0_7 Depth=1
.Ltmp5:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp6:
# %bb.17:                               # %.noexc26
                                        #   in Loop: Header=BB0_7 Depth=1
	move	$s3, $a0
	alsl.d	$a0, $s7, $s6, 3
	st.d	$s2, $s3, 8
	ld.d	$a1, $sp, 32
	st.w	$zero, $s3, 16
	st.d	$s5, $s3, 0
	st.d	$s3, $a0, 0
	addi.d	$a0, $a1, 1
	st.d	$a0, $sp, 32
	b	.LBB0_6
.LBB0_18:                               # %.lr.ph62
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	ori	$s4, $zero, 1
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_19:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.w	$a0, $s8, 16
	sltu	$a1, $zero, $a0
	add.w	$s0, $s0, $a1
	addi.d	$fp, $fp, -1
	bge	$s4, $s2, .LBB0_32
.LBB0_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_27 Depth 2
	addi.w	$s2, $fp, 0
	addi.d	$a0, $sp, 40
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32
	move	$s3, $a0
	addi.d	$a1, $a1, 1
.Ltmp8:
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm)
	jirl	$ra, $ra, 0
.Ltmp9:
# %bb.21:                               # %.noexc40
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.bu	$a1, $s3, 0
	beqz	$a1, .LBB0_24
# %bb.22:                               # %.lr.ph.i.i.i.i.i.i.i28.preheader
                                        #   in Loop: Header=BB0_20 Depth=1
	move	$a0, $zero
	addi.d	$a2, $s3, 1
	.p2align	4, , 16
.LBB0_23:                               # %.lr.ph.i.i.i.i.i.i.i28
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a3, $a1
	ld.bu	$a1, $a2, 0
	alsl.d	$a0, $a0, $a0, 2
	add.d	$a0, $a0, $a3
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB0_23
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               #   in Loop: Header=BB0_20 Depth=1
	move	$a0, $zero
.LBB0_25:                               # %_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE10_M_bkt_numERKS5_.exit.i.i32
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a1, $sp, 16
	ld.d	$s5, $sp, 8
	sub.d	$a1, $a1, $s5
	srai.d	$a1, $a1, 3
	mod.du	$s7, $a0, $a1
	slli.d	$a0, $s7, 3
	ldx.d	$s6, $s5, $a0
	beqz	$s6, .LBB0_29
# %bb.26:                               # %.lr.ph.i.i35.preheader
                                        #   in Loop: Header=BB0_20 Depth=1
	move	$s8, $s6
	.p2align	4, , 16
.LBB0_27:                               # %.lr.ph.i.i35
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_19
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=2
	ld.d	$s8, $s8, 0
	bnez	$s8, .LBB0_27
.LBB0_29:                               # %._crit_edge.i.i38
                                        #   in Loop: Header=BB0_20 Depth=1
.Ltmp10:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp11:
# %bb.30:                               # %.noexc41
                                        #   in Loop: Header=BB0_20 Depth=1
	move	$a1, $zero
	alsl.d	$a2, $s7, $s5, 3
	st.d	$s3, $a0, 8
	ld.d	$a3, $sp, 32
	st.w	$zero, $a0, 16
	st.d	$s6, $a0, 0
	st.d	$a0, $a2, 0
	addi.d	$a0, $a3, 1
	st.d	$a0, $sp, 32
	add.w	$s0, $s0, $a1
	addi.d	$fp, $fp, -1
	blt	$s4, $s2, .LBB0_20
	b	.LBB0_32
.LBB0_31:
	move	$s0, $zero
.LBB0_32:                               # %._crit_edge
.Ltmp13:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp14:
# %bb.33:
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB0_52
# %bb.34:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB0_36
# %bb.35:
	ld.bu	$a0, $s0, 67
	b	.LBB0_38
.LBB0_36:
.Ltmp15:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.37:                               # %.noexc47
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp17:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp18:
.LBB0_38:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp19:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp20:
# %bb.39:                               # %.noexc49
.Ltmp21:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp22:
# %bb.40:                               # %_ZNSolsEPFRSoS_E.exit
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB0_51
# %bb.41:                               # %.preheader.i.i.i
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 8
	beq	$a1, $a0, .LBB0_48
# %bb.42:                               # %.lr.ph12.i.i.i.preheader
	move	$fp, $zero
	b	.LBB0_44
	.p2align	4, , 16
.LBB0_43:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB0_44 Depth=1
	addi.d	$fp, $fp, 1
	sub.d	$a2, $a1, $a0
	srai.d	$a2, $a2, 3
	stx.d	$zero, $a0, $s0
	bgeu	$fp, $a2, .LBB0_48
.LBB0_44:                               # %.lr.ph12.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
	slli.d	$s0, $fp, 3
	ldx.d	$a3, $a0, $s0
	beqz	$a3, .LBB0_43
# %bb.45:                               # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB0_44 Depth=1
	move	$a0, $a3
	.p2align	4, , 16
.LBB0_46:                               # %.lr.ph.i.i.i
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bnez	$s1, .LBB0_46
# %bb.47:                               # %._crit_edge.loopexit.i.i.i
                                        #   in Loop: Header=BB0_44 Depth=1
	ld.d	$a0, $sp, 8
	ld.d	$a1, $sp, 16
	b	.LBB0_43
.LBB0_48:                               # %._crit_edge13.i.i.i
	st.d	$zero, $sp, 32
	beqz	$a0, .LBB0_50
.LBB0_49:
	ld.d	$a1, $sp, 24
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_50:                               # %_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev.exit
	move	$a0, $zero
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
.LBB0_51:                               # %._ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv.exit_crit_edge.i.i
	ld.d	$a0, $sp, 8
	bnez	$a0, .LBB0_49
	b	.LBB0_50
.LBB0_52:
.Ltmp23:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp24:
# %bb.53:                               # %.noexc46
.LBB0_54:
.Ltmp2:
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beqz	$a2, .LBB0_56
# %bb.55:
	ld.d	$a0, $sp, 24
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_56:                               # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_57:
.Ltmp25:
	b	.LBB0_60
.LBB0_58:
.Ltmp12:
	b	.LBB0_60
.LBB0_59:
.Ltmp7:
.LBB0_60:
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp5-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp8-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 9 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp22-.Ltmp13                #   Call between .Ltmp13 and .Ltmp22
	.uleb128 .Ltmp25-.Lfunc_begin0          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin0          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Lfunc_end0-.Ltmp24            #   Call between .Ltmp24 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev,"axG",@progbits,_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev,comdat
	.weak	_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev # -- Begin function _ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev
	.p2align	5
	.type	_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev,@function
_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev: # @_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev
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
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB1_10
# %bb.1:                                # %.preheader.i.i
	ld.d	$a1, $fp, 16
	ld.d	$a0, $fp, 8
	beq	$a1, $a0, .LBB1_8
# %bb.2:                                # %.lr.ph12.i.i.preheader
	move	$s0, $zero
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %._crit_edge.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$s0, $s0, 1
	sub.d	$a2, $a1, $a0
	srai.d	$a2, $a2, 3
	stx.d	$zero, $a0, $s1
	bgeu	$s0, $a2, .LBB1_8
.LBB1_4:                                # %.lr.ph12.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	slli.d	$s1, $s0, 3
	ldx.d	$a3, $a0, $s1
	beqz	$a3, .LBB1_3
# %bb.5:                                # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $a3
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph.i.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bnez	$s2, .LBB1_6
# %bb.7:                                # %._crit_edge.loopexit.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 16
	b	.LBB1_3
.LBB1_8:                                # %._crit_edge13.i.i
	st.d	$zero, $fp, 32
	beqz	$a0, .LBB1_11
.LBB1_9:
	ld.d	$a1, $fp, 24
	sub.d	$a1, $a1, $a0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB1_10:                               # %._ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv.exit_crit_edge.i
	ld.d	$a0, $fp, 8
	bnez	$a0, .LBB1_9
.LBB1_11:                               # %_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEED2Ev.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev, .Lfunc_end1-_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm,"axG",@progbits,_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm,comdat
	.weak	_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm # -- Begin function _ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm
	.p2align	5
	.type	_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm,@function
_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm: # @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm
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
	ori	$a2, $zero, 29
	pcalau12i	$a0, %pc_hi20(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a0, $a0, %pc_lo12(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	.p2align	4, , 16
.LBB2_1:                                # %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a3, $a2, 1
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	alsl.d	$a5, $a3, $a0, 3
	sltu	$a4, $a4, $a1
	addi.d	$a5, $a5, 8
	nor	$a6, $a3, $zero
	add.d	$a2, $a2, $a6
	maskeqz	$a2, $a2, $a4
	masknez	$a3, $a3, $a4
	or	$a2, $a2, $a3
	maskeqz	$a3, $a5, $a4
	masknez	$a0, $a0, $a4
	or	$a0, $a3, $a0
	bgtz	$a2, .LBB2_1
# %bb.2:                                # %_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE12_M_next_sizeEm.exit
	pcalau12i	$a1, %pc_hi20(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a1, $a1, %pc_lo12(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a2, $a1, 232
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	addi.d	$a1, $a1, 224
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	ld.d	$s0, $a0, 0
	srli.d	$a0, $s0, 60
	bnez	$a0, .LBB2_10
# %bb.3:
	ld.d	$a0, $fp, 24
	ld.d	$s2, $fp, 8
	ld.d	$a1, $fp, 16
	sub.d	$s3, $a0, $s2
	srai.d	$a0, $s3, 3
	addi.d	$s1, $fp, 8
	bgeu	$a0, $s0, .LBB2_9
# %bb.4:                                # %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE11_M_allocateEm.exit.i
	sub.d	$s4, $a1, $s2
	slli.d	$a0, $s0, 3
	move	$s6, $a1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beq	$s6, $s2, .LBB2_6
# %bb.5:
	move	$a0, $s5
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i
	beqz	$s2, .LBB2_8
# %bb.7:
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13_M_deallocateEPS8_m.exit.i
	st.d	$s5, $fp, 8
	add.d	$a1, $s5, $s4
	st.d	$a1, $fp, 16
	alsl.d	$a0, $s0, $s5, 3
	st.d	$a0, $fp, 24
.LBB2_9:                                # %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE7reserveEm.exit
	st.d	$zero, $sp, 0
	addi.d	$a3, $sp, 0
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 32
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
.LBB2_10:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm, .Lfunc_end2-_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_,"axG",@progbits,_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_,comdat
	.weak	_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_ # -- Begin function _ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_
	.p2align	5
	.type	_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_,@function
_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_: # @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_
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
	beqz	$a2, .LBB3_58
# %bb.1:
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$s5, $a0, 16
	ld.d	$s4, $a0, 8
	sub.d	$a0, $s5, $s4
	srai.d	$a0, $a0, 3
	bgeu	$a0, $a2, .LBB3_5
# %bb.2:
	ld.d	$s2, $s0, 0
	sub.d	$a0, $s4, $s2
	srai.d	$a1, $a0, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	sub.d	$a2, $a0, $a1
	bltu	$a2, $s1, .LBB3_66
# %bb.3:                                # %.lr.ph.preheader.i.i.i83
	move	$s3, $a3
	sltu	$a2, $s1, $a1
	masknez	$a3, $s1, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s6, $a1, $a0
	sub.d	$s7, $fp, $s2
	slli.d	$a0, $s6, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	move	$s3, $a0
	ori	$a2, $zero, 4
	add.d	$a0, $a0, $s7
	bgeu	$s1, $a2, .LBB3_24
# %bb.4:
	move	$a2, $s1
	b	.LBB3_27
.LBB3_5:
	ld.d	$s2, $a3, 0
	sub.d	$a0, $s4, $fp
	srai.d	$a1, $a0, 3
	bgeu	$s1, $a1, .LBB3_21
# %bb.6:
	slli.d	$s3, $s1, 3
	sub.d	$a3, $zero, $s3
	sub.d	$a0, $s4, $s3
	beqz	$a3, .LBB3_13
# %bb.7:                                # %.lr.ph.i.i.i.i.preheader
	addi.d	$a1, $s1, -1
	bstrpick.d	$a4, $a1, 60, 0
	ori	$a5, $zero, 3
	move	$a1, $a0
	move	$a2, $s4
	bltu	$a4, $a5, .LBB3_12
# %bb.8:                                # %.lr.ph.i.i.i.i.preheader
	bstrpick.d	$a1, $s1, 60, 2
	slli.d	$a5, $a1, 2
	move	$a1, $a0
	move	$a2, $s4
	beqz	$a5, .LBB3_12
# %bb.9:                                # %vector.ph166
	addi.d	$a4, $a4, 1
	bstrpick.d	$a1, $a4, 61, 2
	slli.d	$a5, $a1, 2
	slli.d	$a2, $a1, 5
	add.d	$a1, $a0, $a2
	add.d	$a2, $s4, $a2
	move	$a6, $a5
	move	$a7, $s4
	.p2align	4, , 16
.LBB3_10:                               # %vector.body169
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a7, $a3
	vldx	$vr0, $a7, $a3
	vld	$vr1, $t0, 16
	vst	$vr0, $a7, 0
	vst	$vr1, $a7, 16
	addi.d	$a6, $a6, -4
	addi.d	$a7, $a7, 32
	bnez	$a6, .LBB3_10
# %bb.11:                               # %middle.block178
	beq	$a4, $a5, .LBB3_13
	.p2align	4, , 16
.LBB3_12:                               # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bne	$a1, $s4, .LBB3_12
.LBB3_13:                               # %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit
	alsl.d	$a1, $s1, $s4, 3
	st.d	$a1, $s0, 8
	sub.d	$a2, $a0, $fp
	srai.d	$a1, $a2, 3
	ori	$a3, $zero, 2
	sub.d	$a0, $s4, $a2
	blt	$a1, $a3, .LBB3_67
# %bb.14:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB3_15:                               # %_ZSt13move_backwardIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_ET0_T_SB_SA_.exit
	addi.d	$a1, $s3, -8
	ori	$a2, $zero, 24
	move	$a0, $fp
	bltu	$a1, $a2, .LBB3_19
# %bb.16:                               # %vector.ph184
	srli.d	$a0, $a1, 3
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 61, 2
	slli.d	$a2, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	vreplgr2vr.d	$vr0, $s2
	addi.d	$a3, $fp, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB3_17:                               # %vector.body189
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB3_17
# %bb.18:                               # %middle.block194
	beq	$a1, $a2, .LBB3_58
.LBB3_19:                               # %.lr.ph.i.preheader
	alsl.d	$a1, $s1, $fp, 3
	.p2align	4, , 16
.LBB3_20:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$s2, $a0, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $a1, .LBB3_20
	b	.LBB3_58
.LBB3_21:
	sub.d	$a3, $s1, $a1
	move	$a1, $s4
	beqz	$a3, .LBB3_44
# %bb.22:                               # %.lr.ph.i.i.i.preheader
	ori	$a1, $zero, 4
	bgeu	$a3, $a1, .LBB3_40
# %bb.23:
	move	$a2, $a3
	move	$a1, $s4
	b	.LBB3_43
.LBB3_24:                               # %vector.ph199
	move	$a3, $s1
	bstrins.d	$a3, $zero, 1, 0
	andi	$a2, $s1, 3
	alsl.d	$a0, $a3, $a0, 3
	vreplgr2vr.d	$vr0, $a1
	add.d	$a4, $s7, $s3
	addi.d	$a4, $a4, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_25:                               # %vector.body204
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_25
# %bb.26:                               # %middle.block209
	beq	$s1, $a3, .LBB3_28
	.p2align	4, , 16
.LBB3_27:                               # %.lr.ph.i.i.i85
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, -1
	st.d	$a1, $a0, 0
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_27
.LBB3_28:                               # %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E.exit90
	move	$a0, $s3
	beq	$s2, $fp, .LBB3_35
# %bb.29:                               # %.lr.ph.i.i.i.i92.preheader
	addi.d	$a2, $s7, -8
	ori	$a3, $zero, 24
	move	$a1, $s2
	move	$a0, $s3
	bltu	$a2, $a3, .LBB3_34
# %bb.30:                               # %.lr.ph.i.i.i.i92.preheader
	sub.d	$a3, $s3, $s2
	ori	$a4, $zero, 32
	move	$a1, $s2
	move	$a0, $s3
	bltu	$a3, $a4, .LBB3_34
# %bb.31:                               # %vector.ph217
	srli.d	$a0, $a2, 3
	addi.d	$a2, $a0, 1
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$a3, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	add.d	$a0, $s3, $a0
	addi.d	$a4, $s3, 16
	addi.d	$a5, $s2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_32:                               # %vector.body220
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_32
# %bb.33:                               # %middle.block229
	beq	$a2, $a3, .LBB3_35
	.p2align	4, , 16
.LBB3_34:                               # %.lr.ph.i.i.i.i92
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a0, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB3_34
.LBB3_35:                               # %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit
	alsl.d	$s7, $s1, $a0, 3
	beq	$s4, $fp, .LBB3_55
# %bb.36:                               # %.lr.ph.i.i.i.i98.preheader
	sub.d	$a1, $s4, $fp
	addi.d	$a1, $a1, -8
	ori	$a2, $zero, 56
	bgeu	$a1, $a2, .LBB3_38
# %bb.37:
	move	$a1, $fp
	b	.LBB3_54
.LBB3_38:                               # %vector.memcheck233
	alsl.d	$a2, $s1, $a0, 3
	sub.d	$a2, $a2, $fp
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB3_51
# %bb.39:
	move	$a1, $fp
	b	.LBB3_54
.LBB3_40:                               # %vector.ph
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	andi	$a2, $a3, 3
	alsl.d	$a1, $a4, $s4, 3
	vreplgr2vr.d	$vr0, $s2
	addi.d	$a5, $s4, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_41:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, -16
	vst	$vr0, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_41
# %bb.42:                               # %middle.block
	beq	$a3, $a4, .LBB3_44
	.p2align	4, , 16
.LBB3_43:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, -1
	st.d	$s2, $a1, 0
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB3_43
.LBB3_44:                               # %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEmS8_S8_ET_SA_T0_RKT1_RSaIT2_E.exit
	beq	$s4, $fp, .LBB3_50
# %bb.45:                               # %.lr.ph.i.i.i.i70.preheader
	addi.d	$a3, $a0, -8
	srli.d	$a2, $a3, 3
	ori	$a4, $zero, 24
	addi.d	$a2, $a2, 1
	bltu	$a3, $a4, .LBB3_59
# %bb.46:                               # %.lr.ph.i.i.i.i70.preheader
	sub.d	$a6, $a1, $fp
	ori	$a7, $zero, 32
	move	$a4, $fp
	move	$a5, $a1
	bltu	$a6, $a7, .LBB3_60
# %bb.47:                               # %vector.ph132
	bstrpick.d	$a4, $a2, 61, 2
	slli.d	$a6, $a4, 2
	slli.d	$a5, $a4, 5
	add.d	$a4, $fp, $a5
	add.d	$a5, $a1, $a5
	addi.d	$a7, $a1, 16
	addi.d	$t0, $fp, 16
	move	$t1, $a6
	.p2align	4, , 16
.LBB3_48:                               # %vector.body135
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB3_48
# %bb.49:                               # %middle.block143
	bne	$a2, $a6, .LBB3_60
	b	.LBB3_61
.LBB3_50:                               # %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit75.thread
	add.d	$a0, $a1, $a0
	st.d	$a0, $s0, 8
	b	.LBB3_58
.LBB3_51:                               # %vector.ph238
	srli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 1
	slli.d	$a4, $s1, 3
	bstrpick.d	$a1, $a2, 61, 2
	slli.d	$a3, $a1, 2
	slli.d	$a5, $a1, 5
	add.d	$a1, $fp, $a5
	add.d	$s7, $s7, $a5
	add.d	$a0, $a4, $a0
	addi.d	$a0, $a0, 16
	addi.d	$a4, $fp, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_52:                               # %vector.body241
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a0, -16
	vst	$vr1, $a0, 0
	addi.d	$a0, $a0, 32
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_52
# %bb.53:                               # %middle.block250
	beq	$a2, $a3, .LBB3_55
	.p2align	4, , 16
.LBB3_54:                               # %.lr.ph.i.i.i.i98
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	st.d	$a0, $s7, 0
	addi.d	$a1, $a1, 8
	addi.d	$s7, $s7, 8
	bne	$a1, $s4, .LBB3_54
.LBB3_55:                               # %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit103
	beqz	$s2, .LBB3_57
# %bb.56:
	sub.d	$a1, $s5, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_57:                               # %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13_M_deallocateEPS8_m.exit
	st.d	$s3, $s0, 0
	st.d	$s7, $s0, 8
	alsl.d	$a0, $s6, $s3, 3
	st.d	$a0, $s0, 16
.LBB3_58:                               # %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES8_EvT_SA_RKT0_.exit68
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
.LBB3_59:
	move	$a4, $fp
	move	$a5, $a1
	.p2align	4, , 16
.LBB3_60:                               # %.lr.ph.i.i.i.i70
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	st.d	$a6, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	bne	$a4, $s4, .LBB3_60
.LBB3_61:                               # %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit75
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 24
	st.d	$a0, $s0, 8
	move	$a0, $fp
	bltu	$a3, $a1, .LBB3_65
# %bb.62:                               # %vector.ph149
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$a1, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	vreplgr2vr.d	$vr0, $s2
	addi.d	$a3, $fp, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB3_63:                               # %vector.body154
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB3_63
# %bb.64:                               # %middle.block159
	beq	$a2, $a1, .LBB3_58
	.p2align	4, , 16
.LBB3_65:                               # %.lr.ph.i77
                                        # =>This Inner Loop Header: Depth=1
	st.d	$s2, $a0, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $s4, .LBB3_65
	b	.LBB3_58
.LBB3_66:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB3_67:                               # %_ZSt9__advanceIPPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEElEvRT_T0_St26random_access_iterator_tag.exit.thread.i
	ori	$a1, $zero, 8
	bne	$a2, $a1, .LBB3_15
# %bb.68:
	ld.d	$a1, $fp, 0
	st.d	$a1, $a0, 0
	b	.LBB3_15
.Lfunc_end3:
	.size	_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_, .Lfunc_end3-_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm,"axG",@progbits,_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm,comdat
	.weak	_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm # -- Begin function _ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm
	.p2align	5
	.type	_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm,@function
_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm: # @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm
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
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	ld.d	$s4, $a0, 16
	ld.d	$fp, $a0, 8
	sub.d	$a2, $s4, $fp
	srai.d	$s2, $a2, 3
	bgeu	$s2, $a1, .LBB4_18
# %bb.1:                                # %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.preheader
	ori	$a3, $zero, 29
	pcalau12i	$a2, %pc_hi20(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a2, $a2, %pc_lo12(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	.p2align	4, , 16
.LBB4_2:                                # %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a4, $a3, 1
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a2, $a5
	alsl.d	$a6, $a4, $a2, 3
	sltu	$a5, $a5, $a1
	addi.d	$a6, $a6, 8
	nor	$a7, $a4, $zero
	add.d	$a3, $a3, $a7
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	maskeqz	$a4, $a6, $a5
	masknez	$a2, $a2, $a5
	or	$a2, $a4, $a2
	bgtz	$a3, .LBB4_2
# %bb.3:                                # %_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE12_M_next_sizeEm.exit
	pcalau12i	$a1, %pc_hi20(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a1, $a1, %pc_lo12(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a3, $a1, 232
	xor	$a3, $a2, $a3
	sltui	$a3, $a3, 1
	masknez	$a2, $a2, $a3
	addi.d	$a1, $a1, 224
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	ld.d	$s3, $a1, 0
	bgeu	$s2, $s3, .LBB4_18
# %bb.4:
	move	$s5, $a0
	srli.d	$a0, $s3, 60
	bnez	$a0, .LBB4_19
# %bb.5:                                # %.lr.ph.preheader.i.i.i.i.i
	slli.d	$s1, $s3, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s3, $s0, 3
	beq	$s4, $fp, .LBB4_16
# %bb.6:                                # %.lr.ph66.preheader
	move	$a2, $zero
	move	$a1, $s5
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2EmRKS8_RKS9_.exit
                                        #   in Loop: Header=BB4_8 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s2, .LBB4_15
.LBB4_8:                                # %.lr.ph66
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_14 Depth 3
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $fp, $a3
	beqz	$a3, .LBB4_7
# %bb.9:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_8 Depth=1
	alsl.d	$a4, $a2, $fp, 3
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_10:                               #   in Loop: Header=BB4_12 Depth=2
	move	$a6, $zero
.LBB4_11:                               # %.loopexit
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a5, $a3, 0
	mod.du	$a6, $a6, $s3
	st.d	$a5, $a4, 0
	slli.d	$a5, $a6, 3
	ldx.d	$a6, $s0, $a5
	st.d	$a6, $a3, 0
	stx.d	$a3, $s0, $a5
	ld.d	$a3, $a4, 0
	beqz	$a3, .LBB4_7
.LBB4_12:                               # %.lr.ph
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
	ld.d	$a7, $a3, 8
	ld.bu	$a5, $a7, 0
	beqz	$a5, .LBB4_10
# %bb.13:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB4_12 Depth=2
	move	$a6, $zero
	addi.d	$a7, $a7, 1
	.p2align	4, , 16
.LBB4_14:                               # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB4_8 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ext.w.b	$t0, $a5
	ld.bu	$a5, $a7, 0
	alsl.d	$a6, $a6, $a6, 2
	add.d	$a6, $a6, $t0
	addi.d	$a7, $a7, 1
	bnez	$a5, .LBB4_14
	b	.LBB4_11
.LBB4_15:                               # %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2EmRKS8_RKS9_.exit._crit_edge.thread
	ld.d	$a2, $a1, 24
	st.d	$s0, $a1, 8
	st.d	$a0, $a1, 16
	st.d	$a0, $a1, 24
	b	.LBB4_17
.LBB4_16:                               # %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2EmRKS8_RKS9_.exit._crit_edge
	ld.d	$a2, $s5, 24
	st.d	$s0, $s5, 8
	st.d	$a0, $s5, 16
	st.d	$a0, $s5, 24
	beqz	$fp, .LBB4_18
.LBB4_17:
	sub.d	$a1, $a2, $fp
	move	$a0, $fp
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB4_18:                               # %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EED2Ev.exit
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB4_19:                               # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm, .Lfunc_end4-_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%x"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE,@object # @_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE
	.section	.rodata._ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE,"aG",@progbits,_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE,comdat
	.weak	_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE
	.p2align	3, 0x0
_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE:
	.dword	5                               # 0x5
	.dword	53                              # 0x35
	.dword	97                              # 0x61
	.dword	193                             # 0xc1
	.dword	389                             # 0x185
	.dword	769                             # 0x301
	.dword	1543                            # 0x607
	.dword	3079                            # 0xc07
	.dword	6151                            # 0x1807
	.dword	12289                           # 0x3001
	.dword	24593                           # 0x6011
	.dword	49157                           # 0xc005
	.dword	98317                           # 0x1800d
	.dword	196613                          # 0x30005
	.dword	393241                          # 0x60019
	.dword	786433                          # 0xc0001
	.dword	1572869                         # 0x180005
	.dword	3145739                         # 0x30000b
	.dword	6291469                         # 0x60000d
	.dword	12582917                        # 0xc00005
	.dword	25165843                        # 0x1800013
	.dword	50331653                        # 0x3000005
	.dword	100663319                       # 0x6000017
	.dword	201326611                       # 0xc000013
	.dword	402653189                       # 0x18000005
	.dword	805306457                       # 0x30000059
	.dword	1610612741                      # 0x60000005
	.dword	3221225473                      # 0xc0000001
	.dword	4294967291                      # 0xfffffffb
	.size	_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE, 232

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"vector::reserve"
	.size	.L.str.2, 16

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"vector::_M_fill_insert"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.4, 49

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
	.addrsig_sym _ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE
