	.file	"lists1.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_Z12list_print_nNSt7__cxx114listIiSaIiEEEi # -- Begin function _Z12list_print_nNSt7__cxx114listIiSaIiEEEi
	.p2align	5
	.type	_Z12list_print_nNSt7__cxx114listIiSaIiEEEi,@function
_Z12list_print_nNSt7__cxx114listIiSaIiEEEi: # @_Z12list_print_nNSt7__cxx114listIiSaIiEEEi
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
	ld.d	$s3, $a0, 0
	beq	$s3, $a0, .LBB0_7
# %bb.1:
	move	$s0, $a1
	blez	$a1, .LBB0_7
# %bb.2:                                # %.lr.ph.preheader
	move	$fp, $a0
	addi.w	$s4, $s0, -1
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	ori	$a0, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$s2, $a1, %pc_lo12(.L.str)
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s3, 16
	move	$s5, $a0
	addi.w	$s6, $a0, -1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	bge	$s6, $s4, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s3, $s3, 0
	beq	$s3, $fp, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	addi.w	$a0, $s5, 1
	blt	$s5, $s0, .LBB0_3
.LBB0_7:                                # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB0_12
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB0_10
# %bb.9:
	ld.bu	$a0, $fp, 67
	b	.LBB0_11
.LBB0_10:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB0_11:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cout)
	ld.d	$a2, $a1, %got_pc_lo12(_ZSt4cout)
	ext.w.b	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
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
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB0_12:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z12list_print_nNSt7__cxx114listIiSaIiEEEi, .Lfunc_end0-_Z12list_print_nNSt7__cxx114listIiSaIiEEEi
	.cfi_endproc
                                        # -- End function
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB1_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s0, $a0, $a1
	b	.LBB1_3
.LBB1_2:
	lu12i.w	$a0, 244
	ori	$s0, $a0, 576
.LBB1_3:
	addi.d	$a0, $sp, 80
	st.d	$a0, $sp, 88
	st.d	$a0, $sp, 80
	st.d	$zero, $sp, 96
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 64
	st.d	$a0, $sp, 56
	st.d	$zero, $sp, 72
	move	$fp, $s0
	.p2align	4, , 16
.LBB1_4:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp0:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.5:                                # %.noexc.i
                                        #   in Loop: Header=BB1_4 Depth=1
	st.w	$zero, $a0, 16
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	addi.d	$a0, $a0, 1
	addi.d	$fp, $fp, -1
	st.d	$a0, $sp, 72
	bnez	$fp, .LBB1_4
# %bb.6:                                # %_ZNSt7__cxx114listIiSaIiEEC2EmRKS1_.exit
	ld.d	$s2, $sp, 56
	addi.d	$a0, $sp, 56
	beq	$s2, $a0, .LBB1_12
# %bb.7:                                # %.lr.ph.i.preheader
	ori	$a1, $zero, 1
	move	$a2, $s2
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	addi.d	$a4, $a1, 1
	st.w	$a1, $a2, 16
	move	$a1, $a4
	move	$a2, $a3
	bne	$a3, $a0, .LBB1_8
# %bb.9:                                # %.lr.ph.preheader
	addi.d	$s1, $sp, 56
	.p2align	4, , 16
.LBB1_10:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $sp, 80
.Ltmp3:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	ld.w	$a1, $s2, 16
	st.w	$a1, $a0, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 72
	addi.d	$a0, $a0, 1
	ld.d	$fp, $sp, 56
	st.d	$a0, $sp, 96
	addi.d	$a0, $a1, -1
	st.d	$a0, $sp, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base9_M_unhookEv)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 56
	bne	$s2, $s1, .LBB1_10
.LBB1_12:                               # %._crit_edge
	addi.d	$a0, $sp, 32
	ld.d	$fp, $sp, 80
	st.d	$a0, $sp, 40
	st.d	$a0, $sp, 32
	addi.d	$s1, $sp, 80
	st.d	$zero, $sp, 48
	beq	$fp, $s1, .LBB1_15
	.p2align	4, , 16
.LBB1_13:                               # %.lr.ph.i.i32
                                        # =>This Inner Loop Header: Depth=1
.Ltmp6:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.14:                               # %.noexc.i38
                                        #   in Loop: Header=BB1_13 Depth=1
	ld.w	$a1, $fp, 16
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	ld.d	$fp, $fp, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 48
	bne	$fp, $s1, .LBB1_13
.LBB1_15:                               # %_ZNSt7__cxx114listIiSaIiEEC2ERKS2_.exit
.Ltmp9:
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 2
	addi.d	$s1, $sp, 32
	pcaddu18i	$ra, %call36(_Z12list_print_nNSt7__cxx114listIiSaIiEEEi)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.16:
	ld.d	$a0, $sp, 32
	beq	$a0, $s1, .LBB1_19
# %bb.17:                               # %.lr.ph.i.i41.preheader
	addi.d	$fp, $sp, 32
	.p2align	4, , 16
.LBB1_18:                               # %.lr.ph.i.i41
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $fp, .LBB1_18
.LBB1_19:                               # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit
	addi.d	$a0, $sp, 80
	addi.d	$fp, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base10_M_reverseEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	addi.d	$a0, $sp, 80
	beq	$a1, $fp, .LBB1_29
.LBB1_20:                               # %.lr.ph.i.i44
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a1, 16
	beqz	$a0, .LBB1_28
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a0, $sp, 80
	beq	$a1, $a0, .LBB1_29
# %bb.22:                               #   in Loop: Header=BB1_20 Depth=1
	ld.w	$a0, $a1, 16
	beqz	$a0, .LBB1_28
# %bb.23:                               #   in Loop: Header=BB1_20 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a0, $sp, 80
	beq	$a1, $a0, .LBB1_29
# %bb.24:                               #   in Loop: Header=BB1_20 Depth=1
	ld.w	$a0, $a1, 16
	beqz	$a0, .LBB1_28
# %bb.25:                               #   in Loop: Header=BB1_20 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a0, $sp, 80
	beq	$a1, $a0, .LBB1_29
# %bb.26:                               #   in Loop: Header=BB1_20 Depth=1
	ld.w	$a0, $a1, 16
	beqz	$a0, .LBB1_28
# %bb.27:                               #   in Loop: Header=BB1_20 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a0, $sp, 80
	bne	$a1, $a0, .LBB1_20
	b	.LBB1_29
.LBB1_28:
	move	$a0, $a1
.LBB1_29:                               # %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit
	xor	$a0, $a0, $fp
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$s1, $a1, %pc_lo12(.L.str.2)
	masknez	$a1, $s1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$s2, $a2, %pc_lo12(.L.str.1)
	maskeqz	$a2, $s2, $a0
	or	$a1, $a2, $a1
	addi.d	$a2, $a0, 4
.Ltmp12:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.30:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB1_98
# %bb.31:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB1_33
# %bb.32:
	ld.bu	$a0, $fp, 67
	b	.LBB1_35
.LBB1_33:
.Ltmp14:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp15:
# %bb.34:                               # %.noexc114
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp16:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp17:
.LBB1_35:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp18:
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cout)
	ld.d	$a2, $a1, %got_pc_lo12(_ZSt4cout)
	ext.w.b	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.36:                               # %.noexc116
.Ltmp20:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.37:                               # %_ZNSolsEPFRSoS_E.exit
	ld.d	$a2, $sp, 80
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 80
	beq	$a2, $a0, .LBB1_47
.LBB1_38:                               # %.lr.ph.i.i48
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a2, 16
	beq	$a1, $s0, .LBB1_46
# %bb.39:                               #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a2, $a2, 0
	addi.d	$a1, $sp, 80
	beq	$a2, $a1, .LBB1_47
# %bb.40:                               #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a1, $a2, 16
	beq	$a1, $s0, .LBB1_46
# %bb.41:                               #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a2, $a2, 0
	addi.d	$a1, $sp, 80
	beq	$a2, $a1, .LBB1_47
# %bb.42:                               #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a1, $a2, 16
	beq	$a1, $s0, .LBB1_46
# %bb.43:                               #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a2, $a2, 0
	addi.d	$a1, $sp, 80
	beq	$a2, $a1, .LBB1_47
# %bb.44:                               #   in Loop: Header=BB1_38 Depth=1
	ld.w	$a1, $a2, 16
	beq	$a1, $s0, .LBB1_46
# %bb.45:                               #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a2, $a2, 0
	addi.d	$a1, $sp, 80
	bne	$a2, $a1, .LBB1_38
	b	.LBB1_47
.LBB1_46:
	move	$a1, $a2
.LBB1_47:                               # %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit57
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a2, $s2, $a0
	or	$a1, $a2, $a1
	addi.d	$a2, $a0, 4
.Ltmp22:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp23:
# %bb.48:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB1_100
# %bb.49:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB1_51
# %bb.50:
	ld.bu	$a0, $fp, 67
	b	.LBB1_53
.LBB1_51:
.Ltmp24:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp25:
# %bb.52:                               # %.noexc124
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp26:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp27:
.LBB1_53:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i121
.Ltmp28:
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cout)
	ld.d	$a2, $a1, %got_pc_lo12(_ZSt4cout)
	ext.w.b	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp29:
# %bb.54:                               # %.noexc126
.Ltmp30:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp31:
# %bb.55:                               # %_ZNSolsEPFRSoS_E.exit60
	ld.d	$fp, $sp, 80
	addi.d	$s1, $sp, 80
	beq	$fp, $s1, .LBB1_61
# %bb.56:                               # %.lr.ph179.preheader
	bstrpick.d	$a0, $s0, 31, 1
	addi.w	$s0, $a0, 0
	b	.LBB1_58
	.p2align	4, , 16
.LBB1_57:                               #   in Loop: Header=BB1_58 Depth=1
	ld.d	$fp, $fp, 0
	beq	$fp, $s1, .LBB1_61
.LBB1_58:                               # %.lr.ph179
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 16
	bge	$a0, $s0, .LBB1_57
# %bb.59:                               #   in Loop: Header=BB1_58 Depth=1
.Ltmp32:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp33:
# %bb.60:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB1_58 Depth=1
	ld.w	$a1, $fp, 16
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 72
	b	.LBB1_57
.LBB1_61:                               # %._crit_edge180
	addi.d	$a0, $sp, 8
	ld.d	$fp, $sp, 56
	st.d	$a0, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$s0, $sp, 56
	st.d	$zero, $sp, 24
	beq	$fp, $s0, .LBB1_64
	.p2align	4, , 16
.LBB1_62:                               # %.lr.ph.i.i67
                                        # =>This Inner Loop Header: Depth=1
.Ltmp35:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.63:                               # %.noexc.i74
                                        #   in Loop: Header=BB1_62 Depth=1
	ld.w	$a1, $fp, 16
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24
	ld.d	$fp, $fp, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 24
	bne	$fp, $s0, .LBB1_62
.LBB1_64:                               # %_ZNSt7__cxx114listIiSaIiEEC2ERKS2_.exit79
.Ltmp38:
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 10
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_Z12list_print_nNSt7__cxx114listIiSaIiEEEi)
	jirl	$ra, $ra, 0
.Ltmp39:
# %bb.65:
	ld.d	$a0, $sp, 8
	beq	$a0, $s0, .LBB1_68
# %bb.66:                               # %.lr.ph.i.i81.preheader
	addi.d	$fp, $sp, 8
	.p2align	4, , 16
.LBB1_67:                               # %.lr.ph.i.i81
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $fp, .LBB1_67
.LBB1_68:                               # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit84
	ld.d	$a0, $sp, 56
	move	$a1, $zero
	addi.d	$a2, $sp, 56
	beq	$a0, $a2, .LBB1_70
	.p2align	4, , 16
.LBB1_69:                               # %.lr.ph185
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 16
	ld.d	$a0, $a0, 0
	slti	$a4, $a3, 1000
	maskeqz	$a3, $a3, $a4
	add.w	$a1, $a3, $a1
	bne	$a0, $a2, .LBB1_69
.LBB1_70:                               # %._crit_edge186
.Ltmp41:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp42:
# %bb.71:
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB1_96
# %bb.72:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB1_74
# %bb.73:
	ld.bu	$a0, $s0, 67
	b	.LBB1_76
.LBB1_74:
.Ltmp43:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.75:                               # %.noexc135
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp45:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp46:
.LBB1_76:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i132
.Ltmp47:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp48:
# %bb.77:                               # %.noexc137
.Ltmp49:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp50:
# %bb.78:                               # %_ZNSolsEPFRSoS_E.exit90
	ld.d	$a1, $sp, 80
	addi.d	$a0, $sp, 80
	beq	$a1, $a0, .LBB1_80
# %bb.79:
	addi.d	$a0, $sp, 56
	addi.d	$a2, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 72
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 72
	st.d	$zero, $sp, 96
	b	.LBB1_81
.LBB1_80:                               # %_ZNSolsEPFRSoS_E.exit90._ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_.exit_crit_edge
	ld.d	$a1, $sp, 72
.LBB1_81:                               # %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_.exit
.Ltmp51:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp52:
# %bb.82:                               # %_ZNSolsEm.exit
.Ltmp53:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.83:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
	ld.d	$a0, $sp, 64
	ld.w	$a1, $a0, 16
.Ltmp55:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp56:
# %bb.84:
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB1_96
# %bb.85:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i141
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB1_87
# %bb.86:
	ld.bu	$a0, $s0, 67
	b	.LBB1_89
.LBB1_87:
.Ltmp57:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp58:
# %bb.88:                               # %.noexc146
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp59:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp60:
.LBB1_89:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i143
.Ltmp61:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp62:
# %bb.90:                               # %.noexc148
.Ltmp63:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp64:
# %bb.91:                               # %_ZNSolsEPFRSoS_E.exit92
	ld.d	$a0, $sp, 56
	addi.d	$fp, $sp, 56
	beq	$a0, $fp, .LBB1_93
	.p2align	4, , 16
.LBB1_92:                               # %.lr.ph.i.i94
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $fp, .LBB1_92
.LBB1_93:                               # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit97
	ld.d	$a0, $sp, 80
	addi.d	$fp, $sp, 80
	beq	$a0, $fp, .LBB1_95
	.p2align	4, , 16
.LBB1_94:                               # %.lr.ph.i.i99
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $fp, .LBB1_94
.LBB1_95:                               # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit102
	move	$a0, $zero
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB1_96:                               # %.invoke
.Ltmp65:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp66:
# %bb.97:                               # %.cont
.LBB1_98:
.Ltmp71:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp72:
# %bb.99:                               # %.noexc
.LBB1_100:
.Ltmp68:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.101:                              # %.noexc123
.LBB1_102:
.Ltmp40:
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	beq	$a1, $s0, .LBB1_120
# %bb.103:                              # %.lr.ph.i.i86.preheader
	move	$a0, $a1
	addi.d	$s0, $sp, 8
	.p2align	4, , 16
.LBB1_104:                              # %.lr.ph.i.i86
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB1_104
	b	.LBB1_120
.LBB1_105:
.Ltmp11:
	ld.d	$a1, $sp, 32
	move	$fp, $a0
	beq	$a1, $s1, .LBB1_120
# %bb.106:                              # %.lr.ph.i.i62.preheader
	move	$a0, $a1
	addi.d	$s0, $sp, 32
	.p2align	4, , 16
.LBB1_107:                              # %.lr.ph.i.i62
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB1_107
	b	.LBB1_120
.LBB1_108:
.Ltmp70:
	b	.LBB1_119
.LBB1_109:
.Ltmp73:
	b	.LBB1_119
.LBB1_110:
.Ltmp34:
	b	.LBB1_119
.LBB1_111:
.Ltmp67:
	b	.LBB1_119
.LBB1_112:
.Ltmp37:
	ld.d	$a1, $sp, 8
	addi.d	$s0, $sp, 8
	move	$fp, $a0
	beq	$a1, $s0, .LBB1_120
# %bb.113:                              # %.lr.ph.i.i.i70.preheader
	move	$a0, $a1
	.p2align	4, , 16
.LBB1_114:                              # %.lr.ph.i.i.i70
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB1_114
	b	.LBB1_120
.LBB1_115:
.Ltmp8:
	ld.d	$a1, $sp, 32
	addi.d	$s0, $sp, 32
	move	$fp, $a0
	beq	$a1, $s0, .LBB1_120
# %bb.116:                              # %.lr.ph.i.i.i34.preheader
	move	$a0, $a1
	.p2align	4, , 16
.LBB1_117:                              # %.lr.ph.i.i.i34
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB1_117
	b	.LBB1_120
.LBB1_118:
.Ltmp5:
.LBB1_119:                              # %.body39
	move	$fp, $a0
.LBB1_120:                              # %.body39
	ld.d	$a0, $sp, 56
	addi.d	$s0, $sp, 56
	beq	$a0, $s0, .LBB1_125
	.p2align	4, , 16
.LBB1_121:                              # %.lr.ph.i.i104
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB1_121
	b	.LBB1_125
.LBB1_122:
.Ltmp2:
	ld.d	$a1, $sp, 56
	addi.d	$s0, $sp, 56
	move	$fp, $a0
	beq	$a1, $s0, .LBB1_125
# %bb.123:                              # %.lr.ph.i.i.i.preheader
	move	$a0, $a1
	.p2align	4, , 16
.LBB1_124:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB1_124
.LBB1_125:                              # %.body
	ld.d	$a0, $sp, 80
	addi.d	$s0, $sp, 80
	beq	$a0, $s0, .LBB1_127
	.p2align	4, , 16
.LBB1_126:                              # %.lr.ph.i.i109
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB1_126
.LBB1_127:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
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
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp21-.Ltmp12                #   Call between .Ltmp12 and .Ltmp21
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp31-.Ltmp22                #   Call between .Ltmp22 and .Ltmp31
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp35-.Ltmp33                #   Call between .Ltmp33 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp38-.Ltmp36                #   Call between .Ltmp36 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp41-.Ltmp39                #   Call between .Ltmp39 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp50-.Ltmp41                #   Call between .Ltmp41 and .Ltmp50
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp64-.Ltmp51                #   Call between .Ltmp51 and .Ltmp64
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Lfunc_end1-.Ltmp69            #   Call between .Ltmp69 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" "
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"false"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"true"
	.size	.L.str.2, 5

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
