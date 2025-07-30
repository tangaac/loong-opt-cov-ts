	.file	"LCALSStats.cxx"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZNK8LoopStat5printERSo         # -- Begin function _ZNK8LoopStat5printERSo
	.p2align	5
	.type	_ZNK8LoopStat5printERSo,@function
_ZNK8LoopStat5printERSo:                # @_ZNK8LoopStat5printERSo
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB0_79
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB0_3
# %bb.2:
	ld.bu	$a0, $s1, 67
	b	.LBB0_4
.LBB0_3:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB0_4:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 15
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIbEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB0_79
# %bb.5:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i46
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB0_7
# %bb.6:
	ld.bu	$a1, $s1, 67
	b	.LBB0_8
.LBB0_7:
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
.LBB0_8:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit49
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 216
	ld.d	$a1, $s0, 208
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB0_79
# %bb.9:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB0_11
# %bb.10:
	ld.bu	$a1, $s1, 67
	b	.LBB0_12
.LBB0_11:
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
.LBB0_12:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit54
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 216
	ld.d	$a1, $s0, 208
	beq	$a0, $a1, .LBB0_74
# %bb.13:                               # %.lr.ph130
	move	$s8, $zero
	move	$s1, $zero
	addi.d	$a0, $fp, 240
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s5, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %.loopexit
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $s0, 216
	ld.d	$a1, $s0, 208
	addi.w	$s1, $s1, 1
	bstrpick.d	$s8, $s1, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	bgeu	$s8, $a0, .LBB0_74
.LBB0_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_71 Depth 2
	ori	$a2, $zero, 13
	move	$a0, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a2, $zero, 5
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s6, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB0_79
# %bb.16:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i61
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $s7, 67
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.LBB0_19:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 18
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 208
	slli.d	$s2, $s8, 2
	ldx.w	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i66
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 67
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_23:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit69
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 23
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 232
	ldx.w	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.24:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 67
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s2, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB0_27:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit74
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 21
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	slli.d	$s2, $s8, 3
	ldx.d	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.28:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 67
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_31:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit79
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ldx.d	$a0, $a0, $s2
	beqz	$a0, .LBB0_14
# %bb.32:                               # %.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $s0, 16
	slli.d	$s2, $s8, 4
	alsl.d	$s7, $s8, $s2, 3
	add.d	$a1, $a0, $s7
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $s7
	beq	$a1, $a0, .LBB0_39
# %bb.33:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s6, $zero
	ori	$s3, $zero, 1
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_34:                               #   in Loop: Header=BB0_36 Depth=2
	move	$s4, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s4
.LBB0_35:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit119
                                        #   in Loop: Header=BB0_36 Depth=2
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	add.d	$a1, $a0, $s7
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $s7
	bstrpick.d	$s6, $s3, 31, 0
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 4
	addi.w	$s3, $s3, 1
	bgeu	$s6, $a0, .LBB0_39
.LBB0_36:                               # %.lr.ph
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ldx.d	$a0, $a0, $s7
	alsl.d	$a2, $s6, $a0, 4
	slli.d	$a1, $s6, 4
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.37:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_34
# %bb.38:                               #   in Loop: Header=BB0_36 Depth=2
	ld.bu	$a1, $s6, 67
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_39:                               # %._crit_edge
                                        #   in Loop: Header=BB0_15 Depth=1
	ori	$a2, $zero, 12
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	alsl.d	$a2, $s8, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.40:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 67
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_43:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 15
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 88
	alsl.d	$a2, $s8, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.44:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 67
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_46:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_47:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit89
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 11
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 112
	alsl.d	$a2, $s8, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.48:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 67
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_50:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_51:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit94
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 11
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 136
	alsl.d	$a2, $s8, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.52:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i96
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 67
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_54:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_55:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit99
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 17
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 160
	alsl.d	$a2, $s8, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.56:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i101
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 67
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_58:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_59:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 184
	alsl.d	$a2, $s8, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.60:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i106
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 67
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_62:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s2, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB0_63:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit109
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	ldx.d	$s6, $a1, $a0
	beqz	$s6, .LBB0_79
# %bb.64:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $s6, 67
	b	.LBB0_67
	.p2align	4, , 16
.LBB0_66:                               #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.LBB0_67:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit114
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	add.d	$a1, $a0, $s7
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $s7
	beq	$a1, $a0, .LBB0_14
# %bb.68:                               # %.lr.ph128.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $zero
	ori	$s2, $zero, 1
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_69:                               #   in Loop: Header=BB0_71 Depth=2
	move	$s3, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_70:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124
                                        #   in Loop: Header=BB0_71 Depth=2
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	add.d	$a1, $a0, $s7
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $s7
	bstrpick.d	$s3, $s2, 31, 0
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 4
	addi.w	$s2, $s2, 1
	bgeu	$s3, $a0, .LBB0_14
.LBB0_71:                               # %.lr.ph128
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ldx.d	$a0, $a0, $s7
	alsl.d	$a2, $s3, $a0, 4
	slli.d	$a1, $s3, 4
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.72:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i121
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_69
# %bb.73:                               #   in Loop: Header=BB0_71 Depth=2
	ld.bu	$a1, $s6, 67
	b	.LBB0_70
.LBB0_74:                               # %._crit_edge131
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB0_79
# %bb.75:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB0_77
# %bb.76:
	ld.bu	$a0, $s0, 67
	b	.LBB0_78
.LBB0_77:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB0_78:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit59
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
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
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB0_79:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZNK8LoopStat5printERSo, .Lfunc_end0-_ZNK8LoopStat5printERSo
	.cfi_endproc
                                        # -- End function
	.globl	_Z19getLoopSuiteRunInfov        # -- Begin function _Z19getLoopSuiteRunInfov
	.p2align	5
	.type	_Z19getLoopSuiteRunInfov,@function
_Z19getLoopSuiteRunInfov:               # @_Z19getLoopSuiteRunInfov
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$a0, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	ret
.Lfunc_end1:
	.size	_Z19getLoopSuiteRunInfov, .Lfunc_end1-_Z19getLoopSuiteRunInfov
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm
.LCPI2_0:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.globl	_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm
	.p2align	5
	.type	_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm,@function
_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm: # @_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
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
	.cfi_offset 56, -88
	pcalau12i	$s6, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s5, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
	move	$fp, $a5
	move	$s0, $a4
	move	$s2, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$s4, $a0
	bnez	$s5, .LBB2_2
# %bb.1:
	ori	$a0, $zero, 640
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.d	$a0, $a0, 16
	st.d	$a0, $s5, 0
	st.d	$zero, $s5, 8
	st.b	$zero, $s5, 16
	st.w	$zero, $s5, 32
	st.d	$zero, $s5, 72
	st.w	$zero, $s5, 80
	st.d	$zero, $s5, 88
	st.w	$zero, $s5, 96
	st.d	$zero, $s5, 144
	st.b	$zero, $s5, 152
	addi.d	$a0, $s5, 160
	vrepli.b	$vr0, 0
	vst	$vr0, $s5, 576
	addi.d	$s7, $s5, 600
	st.w	$zero, $s5, 600
	st.d	$zero, $s5, 608
	st.d	$zero, $s5, 40
	vst	$vr0, $s5, 48
	st.w	$zero, $s5, 64
	vst	$vr0, $s5, 104
	vst	$vr0, $s5, 120
	st.w	$zero, $s5, 136
	ori	$a2, $zero, 408
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s7, $s5, 616
	st.d	$s7, $s5, 624
	st.d	$zero, $s5, 632
	st.d	$s5, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
.LBB2_2:
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
	st.w	$s3, $s4, 32
	st.w	$s1, $s4, 64
	st.w	$s2, $s4, 136
	beqz	$s1, .LBB2_12
# %bb.3:                                # %.lr.ph.preheader
	bstrpick.d	$s1, $s1, 31, 0
	ori	$s2, $zero, 63
	ori	$s3, $zero, 1
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_4:                                #   in Loop: Header=BB2_6 Depth=1
	ld.wu	$a2, $s4, 96
	addi.d	$a0, $s4, 72
	pcaddu18i	$ra, %call36(_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
.LBB2_5:                                # %_ZNSt6vectorIbSaIbEE9push_backEb.exit
                                        #   in Loop: Header=BB2_6 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 1
	beqz	$s1, .LBB2_12
.LBB2_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 88
	ld.d	$a0, $s4, 104
	ld.bu	$a3, $s0, 0
	beq	$a1, $a0, .LBB2_4
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a0, $s4, 96
	addi.w	$a2, $a0, 0
	addi.d	$a4, $a0, 1
	st.w	$a4, $s4, 96
	bne	$a2, $s2, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=1
	st.w	$zero, $s4, 96
	addi.d	$a2, $a1, 8
	st.d	$a2, $s4, 88
.LBB2_9:                                # %_ZNSt13_Bit_iteratorppEi.exit.i
                                        #   in Loop: Header=BB2_6 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	sll.d	$a0, $s3, $a0
	beqz	$a3, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a2, $a1, 0
	or	$a0, $a2, $a0
	st.d	$a0, $a1, 0
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_11:                               #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a2, $a1, 0
	andn	$a0, $a2, $a0
	st.d	$a0, $a1, 0
	b	.LBB2_5
.LBB2_12:                               # %._crit_edge
	bstrpick.d	$a0, $fp, 62, 2
	st.d	$a0, $s4, 552
	slli.d	$a0, $fp, 1
	bstrins.d	$a0, $zero, 2, 0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 552
	st.d	$a0, $s4, 560
	beqz	$a1, .LBB2_15
# %bb.13:                               # %.lr.ph18.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI2_0)
	move	$fp, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_14:                               # %.lr.ph18
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(drand48)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$a1, $a0, 560
	ld.d	$a0, $a0, 552
	fadd.d	$fa0, $fa0, $fs0
	fstx.d	$fa0, $a1, $fp
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	bltu	$s0, $a0, .LBB2_14
.LBB2_15:                               # %._crit_edge19
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm, .Lfunc_end2-_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm
	.cfi_endproc
                                        # -- End function
	.globl	_Z20freeLoopSuiteRunInfov       # -- Begin function _Z20freeLoopSuiteRunInfov
	.p2align	5
	.type	_Z20freeLoopSuiteRunInfov,@function
_Z20freeLoopSuiteRunInfov:              # @_Z20freeLoopSuiteRunInfov
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$fp, $s0, %pc_lo12(_ZL21s_loop_suite_run_info)
	beqz	$fp, .LBB3_5
# %bb.1:
	ld.d	$a0, $fp, 560
	beqz	$a0, .LBB3_3
# %bb.2:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, %pc_lo12(_ZL21s_loop_suite_run_info)
	beqz	$fp, .LBB3_4
.LBB3_3:                                # %.thread
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16LoopSuiteRunInfoD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_4:
	st.d	$zero, $s0, %pc_lo12(_ZL21s_loop_suite_run_info)
.LBB3_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_Z20freeLoopSuiteRunInfov, .Lfunc_end3-_Z20freeLoopSuiteRunInfov
                                        # -- End function
	.section	.text._ZN16LoopSuiteRunInfoD2Ev,"axG",@progbits,_ZN16LoopSuiteRunInfoD2Ev,comdat
	.weak	_ZN16LoopSuiteRunInfoD2Ev       # -- Begin function _ZN16LoopSuiteRunInfoD2Ev
	.p2align	5
	.type	_ZN16LoopSuiteRunInfoD2Ev,@function
_ZN16LoopSuiteRunInfoD2Ev:              # @_ZN16LoopSuiteRunInfoD2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$fp, $a0
	ld.d	$a0, $a0, 616
	addi.d	$s3, $fp, 600
	addi.d	$s0, $fp, 592
	bne	$a0, $s3, .LBB4_46
.LBB4_1:                                # %._crit_edge
	ld.d	$a1, $fp, 608
.Ltmp0:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.2:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorI8LoopStatSaIS7_EESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit
	ld.d	$s0, $fp, 528
	ld.d	$s1, $fp, 536
	bne	$s0, $s1, .LBB4_27
# %bb.3:                                # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i
	beqz	$s0, .LBB4_5
.LBB4_4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_5:                                # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit
	ld.d	$s0, $fp, 504
	ld.d	$s1, $fp, 512
	bne	$s0, $s1, .LBB4_30
# %bb.6:                                # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i15
	beqz	$s0, .LBB4_8
.LBB4_7:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_8:                                # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit17
	ld.d	$s0, $fp, 480
	ld.d	$s1, $fp, 488
	bne	$s0, $s1, .LBB4_33
# %bb.9:                                # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i26
	beqz	$s0, .LBB4_11
.LBB4_10:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit28
	ld.d	$s0, $fp, 456
	ld.d	$s1, $fp, 464
	bne	$s0, $s1, .LBB4_36
# %bb.12:                               # %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
	beqz	$s0, .LBB4_14
.LBB4_13:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_14:                               # %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
	ld.d	$a0, $fp, 432
	beqz	$a0, .LBB4_16
# %bb.15:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_16:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	addi.d	$a0, $fp, 152
	pcaddu18i	$ra, %call36(_ZN8LoopStatD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 112
	ld.d	$s0, $fp, 120
	bne	$a0, $s0, .LBB4_39
# %bb.17:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
	beqz	$a0, .LBB4_19
.LBB4_18:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_19:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB4_21
# %bb.20:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 72
	st.w	$zero, $fp, 80
	st.d	$zero, $fp, 88
	st.w	$zero, $fp, 96
	st.d	$zero, $fp, 104
.LBB4_21:                               # %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
	ld.d	$a0, $fp, 40
	ld.d	$s0, $fp, 48
	bne	$a0, $s0, .LBB4_42
# %bb.22:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i52
	beqz	$a0, .LBB4_24
.LBB4_23:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_24:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit55
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB4_58
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
	.p2align	4, , 16
.LBB4_26:                               # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB4_27 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB4_52
.LBB4_27:                               # %.lr.ph.i.i2
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_26
# %bb.28:                               #   in Loop: Header=BB4_27 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_26
	.p2align	4, , 16
.LBB4_29:                               # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i11
                                        #   in Loop: Header=BB4_30 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB4_53
.LBB4_30:                               # %.lr.ph.i.i8
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_29
# %bb.31:                               #   in Loop: Header=BB4_30 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_29
	.p2align	4, , 16
.LBB4_32:                               # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i22
                                        #   in Loop: Header=BB4_33 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB4_54
.LBB4_33:                               # %.lr.ph.i.i19
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_32
# %bb.34:                               #   in Loop: Header=BB4_33 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_35:                               # %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB4_36 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB4_55
.LBB4_36:                               # %.lr.ph.i.i30
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_35
# %bb.37:                               #   in Loop: Header=BB4_36 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_35
	.p2align	4, , 16
.LBB4_38:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB4_39 Depth=1
	addi.d	$a0, $s1, 16
	beq	$a0, $s0, .LBB4_56
.LBB4_39:                               # %.lr.ph.i.i38
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a0, 16
	beq	$a1, $s1, .LBB4_38
# %bb.40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB4_39 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_38
	.p2align	4, , 16
.LBB4_41:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i48
                                        #   in Loop: Header=BB4_42 Depth=1
	addi.d	$a0, $s1, 16
	beq	$a0, $s0, .LBB4_57
.LBB4_42:                               # %.lr.ph.i.i45
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a0, 16
	beq	$a1, $s1, .LBB4_41
# %bb.43:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i47
                                        #   in Loop: Header=BB4_42 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_41
	.p2align	4, , 16
.LBB4_44:                               # %_ZNSt6vectorI8LoopStatSaIS0_EED2Ev.exit
                                        #   in Loop: Header=BB4_46 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s4
.LBB4_45:                               #   in Loop: Header=BB4_46 Depth=1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB4_1
.LBB4_46:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_48 Depth 2
	ld.d	$s1, $a0, 64
	beqz	$s1, .LBB4_45
# %bb.47:                               #   in Loop: Header=BB4_46 Depth=1
	move	$s4, $a0
	ld.d	$s2, $s1, 0
	ld.d	$s5, $s1, 8
	beq	$s2, $s5, .LBB4_50
	.p2align	4, , 16
.LBB4_48:                               # %.lr.ph.i.i
                                        #   Parent Loop BB4_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8LoopStatD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 280
	bne	$s2, $s5, .LBB4_48
# %bb.49:                               # %_ZSt8_DestroyIP8LoopStatS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i
                                        #   in Loop: Header=BB4_46 Depth=1
	ld.d	$s2, $s1, 0
.LBB4_50:                               # %_ZSt8_DestroyIP8LoopStatS0_EvT_S2_RSaIT0_E.exit.i
                                        #   in Loop: Header=BB4_46 Depth=1
	beqz	$s2, .LBB4_44
# %bb.51:                               #   in Loop: Header=BB4_46 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_44
.LBB4_52:                               # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i
	ld.d	$s0, $fp, 528
	bnez	$s0, .LBB4_4
	b	.LBB4_5
.LBB4_53:                               # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i13
	ld.d	$s0, $fp, 504
	bnez	$s0, .LBB4_7
	b	.LBB4_8
.LBB4_54:                               # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i24
	ld.d	$s0, $fp, 480
	bnez	$s0, .LBB4_10
	b	.LBB4_11
.LBB4_55:                               # %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i
	ld.d	$s0, $fp, 456
	bnez	$s0, .LBB4_13
	b	.LBB4_14
.LBB4_56:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i
	ld.d	$a0, $fp, 112
	bnez	$a0, .LBB4_18
	b	.LBB4_19
.LBB4_57:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i50
	ld.d	$a0, $fp, 40
	bnez	$a0, .LBB4_23
	b	.LBB4_24
.LBB4_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
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
.LBB4_59:
.Ltmp2:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN16LoopSuiteRunInfoD2Ev, .Lfunc_end4-_ZN16LoopSuiteRunInfoD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN16LoopSuiteRunInfoD2Ev,"aG",@progbits,_ZN16LoopSuiteRunInfoD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
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
	.globl	_Z10flushCachev                 # -- Begin function _Z10flushCachev
	.p2align	5
	.type	_Z10flushCachev,@function
_Z10flushCachev:                        # @_Z10flushCachev
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s2, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$fp, $s2, 552
	beqz	$fp, .LBB5_3
# %bb.1:                                # %.lr.ph
	ld.d	$s3, $s2, 560
	ld.d	$s0, $s2, 584
	ld.d	$s1, $s2, 576
	move	$s4, $fp
	.p2align	4, , 16
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s3, 0
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$s0, $a1
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	bnez	$s4, .LBB5_2
	b	.LBB5_4
.LBB5_3:                                # %._crit_edge8
	ld.d	$s0, $s2, 584
	ld.d	$s1, $s2, 576
.LBB5_4:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__floatunditf)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	st.d	$a1, $s2, 584
	st.d	$a0, $s2, 576
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end5:
	.size	_Z10flushCachev, .Lfunc_end5-_Z10flushCachev
                                        # -- End function
	.globl	_Z9copyTimerR8LoopStatiRK9LoopTimer # -- Begin function _Z9copyTimerR8LoopStatiRK9LoopTimer
	.p2align	5
	.type	_Z9copyTimerR8LoopStatiRK9LoopTimer,@function
_Z9copyTimerR8LoopStatiRK9LoopTimer:    # @_Z9copyTimerR8LoopStatiRK9LoopTimer
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
	ld.bu	$a3, $a2, 16
	beqz	$a3, .LBB6_9
# %bb.1:
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 0
	sub.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(__floatditf)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 190536
	lu52i.d	$a3, $a2, 1025
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 16
	slli.d	$a3, $fp, 4
	alsl.d	$a3, $fp, $a3, 3
	add.d	$s2, $a2, $a3
	ld.d	$a2, $s2, 8
	ld.d	$a3, $s2, 16
	beq	$a2, $a3, .LBB6_3
# %bb.2:
	st.d	$a0, $a2, 0
	st.d	$a1, $a2, 8
	addi.d	$a0, $a2, 16
	st.d	$a0, $s2, 8
	b	.LBB6_9
.LBB6_3:
	move	$s5, $a0
	ld.d	$fp, $s2, 0
	sub.d	$s0, $a2, $fp
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_10
# %bb.4:                                # %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i
	move	$s4, $a1
	srai.d	$a0, $s0, 4
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	add.d	$s6, $a0, $s0
	stx.d	$s5, $a0, $s0
	st.d	$s4, $s6, 8
	blez	$s0, .LBB6_6
# %bb.5:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_6:                                # %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit.i.i
	beqz	$fp, .LBB6_8
# %bb.7:                                # %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit.i.i.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB6_8:                                # %_ZNSt6vectorIeSaIeEE17_M_realloc_appendIJRKeEEEvDpOT_.exit.i
	addi.d	$a0, $s6, 16
	st.d	$s1, $s2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $s3, $s1, 4
	st.d	$a0, $s2, 16
.LBB6_9:                                # %_ZNSt6vectorIeSaIeEE9push_backERKe.exit
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
.LBB6_10:
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_Z9copyTimerR8LoopStatiRK9LoopTimer, .Lfunc_end6-_Z9copyTimerR8LoopStatiRK9LoopTimer
	.cfi_endproc
                                        # -- End function
	.globl	_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb # -- Begin function _Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb
	.p2align	5
	.type	_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb,@function
_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb: # @_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -288
	.cfi_def_cfa_offset 288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
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
	ld.d	$a4, $a1, 8
	ld.d	$a3, $a1, 0
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	sub.d	$a0, $a4, $a3
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, -479350
	ori	$a1, $a1, 3979
	lu32i.d	$a1, -329553
	lu52i.d	$a1, $a1, -1288
	mul.d	$a0, $a0, $a1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	beq	$a4, $a3, .LBB7_18
# %bb.1:                                # %.lr.ph279.preheader
	move	$a0, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	lu32i.d	$a1, -65537
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a1, $a1, 1023
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %.loopexit259
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB7_18
.LBB7_3:                                # %.lr.ph279
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #       Child Loop BB7_13 Depth 3
                                        #       Child Loop BB7_16 Depth 3
	ori	$a1, $zero, 280
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB7_2
# %bb.4:                                # %.preheader258
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$s0, $a1, $a0
	ld.d	$a0, $s0, 216
	ld.d	$a1, $s0, 208
	beq	$a0, $a1, .LBB7_2
# %bb.5:                                # %.lr.ph276
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a3, $s0, 40
	move	$a2, $zero
	move	$s8, $zero
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_6:                                # %._crit_edge.thread
                                        #   in Loop: Header=BB7_9 Depth=2
	pcaddu18i	$ra, %call36(__floatunsitf)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s1, $a1
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$a3, $s1
	move	$a2, $fp
	move	$s7, $a0
	move	$s6, $a1
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	move	$fp, $zero
	move	$s1, $zero
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	move	$s3, $s2
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
.LBB7_7:                                # %._crit_edge273
                                        #   in Loop: Header=BB7_9 Depth=2
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 64
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	stx.d	$s7, $a2, $a6
	ld.d	$a3, $s0, 88
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a2, 4
	st.d	$s6, $a2, 8
	ld.d	$a2, $s0, 112
	alsl.d	$a4, $a5, $a3, 4
	stx.d	$a0, $a3, $a6
	st.d	$a1, $a4, 8
	alsl.d	$a0, $a5, $a2, 4
	ld.d	$a1, $s0, 136
	stx.d	$s2, $a2, $a6
	st.d	$s5, $a0, 8
	ld.d	$a0, $s0, 160
	alsl.d	$a2, $a5, $a1, 4
	stx.d	$s3, $a1, $a6
	st.d	$s4, $a2, 8
	alsl.d	$a1, $a5, $a0, 4
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	stx.d	$a2, $a0, $a6
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
.LBB7_8:                                #   in Loop: Header=BB7_9 Depth=2
	addi.w	$s8, $s8, 1
	bstrpick.d	$a2, $s8, 31, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bgeu	$a2, $a0, .LBB7_2
.LBB7_9:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_13 Depth 3
                                        #       Child Loop BB7_16 Depth 3
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a3, $a0
	beqz	$a0, .LBB7_8
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=2
	ld.d	$a0, $s0, 16
	slli.d	$a1, $a2, 4
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a1, 3
	add.d	$a2, $a0, $a1
	ld.d	$a2, $a2, 8
	ldx.d	$s3, $a0, $a1
	sub.d	$a0, $a2, $s3
	srai.d	$a1, $a0, 4
	addi.w	$a0, $a1, 0
	beqz	$a0, .LBB7_6
# %bb.11:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_9 Depth=2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	addi.w	$s6, $zero, -1
	bstrpick.d	$s2, $a1, 31, 0
	move	$s5, $s6
	lu32i.d	$s5, -65537
	lu52i.d	$s7, $s5, 2047
	move	$s8, $s2
	move	$s0, $s3
	move	$s4, $s6
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_12:                               #   in Loop: Header=BB7_13 Depth=3
	slti	$a0, $s6, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $fp, $a0
	or	$s5, $a2, $a1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$s6, $a0, $a1
	slti	$a0, $s7, 0
	masknez	$a1, $s4, $a0
	maskeqz	$a2, $fp, $a0
	or	$s7, $a2, $a1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$s4, $a0, $a1
	addi.d	$s8, $s8, -1
	addi.d	$s0, $s0, 16
	beqz	$s8, .LBB7_15
.LBB7_13:                               # %.lr.ph
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $s0, 8
	ld.d	$s1, $s0, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	st.d	$s6, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s6
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s1
	move	$a1, $fp
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	move	$a2, $s4
	move	$s4, $s7
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__gttf2)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB7_12
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=3
	move	$a0, $zero
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_15:                               # %._crit_edge
                                        #   in Loop: Header=BB7_9 Depth=2
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__floatunsitf)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s1, $a1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$s6, $a1
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__gttf2)
	jirl	$ra, $ra, 0
	slt	$s0, $zero, $a0
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $fp
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s8
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	move	$s1, $zero
	maskeqz	$a1, $a1, $s0
	masknez	$a2, $s8, $s0
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	maskeqz	$a0, $a0, $s0
	masknez	$a1, $s4, $s0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_16:                               # %.lr.ph272
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s3, 8
	move	$a2, $s7
	move	$a3, $s6
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s1, $a1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 16
	bnez	$s2, .LBB7_16
# %bb.17:                               #   in Loop: Header=BB7_9 Depth=2
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	move	$s4, $s5
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	b	.LBB7_7
.LBB7_18:                               # %._crit_edge280
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB7_57
# %bb.19:
	pcalau12i	$a0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s0, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.wu	$a0, $s0, 64
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	beqz	$a0, .LBB7_29
# %bb.20:                               # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
	slli.d	$fp, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s0, 64
	st.d	$s7, $sp, 184                   # 8-byte Folded Spill
	beqz	$a0, .LBB7_30
# %bb.21:                               # %.lr.ph.preheader.i.i.i.i.i148
	slli.d	$fp, $a0, 4
.Ltmp3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.22:                               # %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit
	move	$s8, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 64
	beqz	$a0, .LBB7_31
# %bb.23:                               # %.lr.ph.preheader.i.i.i.i.i157
	slli.d	$fp, $a0, 4
.Ltmp6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.24:                               # %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit166
	move	$s1, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 64
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	beqz	$a0, .LBB7_58
# %bb.25:                               # %.lr.ph.preheader.i.i.i.i.i168
	slli.d	$fp, $a0, 4
.Ltmp9:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.26:                               # %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit177
	move	$s2, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.wu	$s0, $a0, 64
	addi.w	$a0, $s0, 0
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	beqz	$a0, .LBB7_59
# %bb.27:                               # %.lr.ph.preheader.i.i.i.i.i179
	slli.d	$fp, $s0, 4
.Ltmp12:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.28:                               # %.lr.ph.i.i.i.i.i181.preheader
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a1, $a0, .LBB7_33
	b	.LBB7_42
.LBB7_29:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	move	$s0, $zero
	move	$s8, $zero
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	b	.LBB7_32
.LBB7_30:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	move	$s0, $zero
	move	$s8, $zero
	b	.LBB7_32
.LBB7_31:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	move	$s0, $zero
.LBB7_32:                               # %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit188
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a1, $a0, .LBB7_42
.LBB7_33:                               # %.lr.ph286.preheader
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $zero
	move	$a2, $zero
	b	.LBB7_35
	.p2align	4, , 16
.LBB7_34:                               # %.loopexit
                                        #   in Loop: Header=BB7_35 Depth=1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	bstrpick.d	$a0, $a2, 31, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB7_41
.LBB7_35:                               # %.lr.ph286
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_39 Depth 2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ori	$a1, $zero, 280
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB7_34
# %bb.36:                               # %.preheader257
                                        #   in Loop: Header=BB7_35 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a0, $a1, 216
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 208
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB7_34
# %bb.37:                               # %.lr.ph284
                                        #   in Loop: Header=BB7_35 Depth=1
	move	$s1, $zero
	move	$s8, $zero
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $a1, 40
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	b	.LBB7_39
	.p2align	4, , 16
.LBB7_38:                               #   in Loop: Header=BB7_39 Depth=2
	bstrpick.d	$a0, $s4, 31, 0
	addi.d	$s2, $s2, 8
	addi.d	$s8, $s8, 4
	addi.d	$s1, $s1, 16
	addi.w	$s4, $s4, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB7_34
.LBB7_39:                               #   Parent Loop BB7_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB7_38
# %bb.40:                               #   in Loop: Header=BB7_39 Depth=2
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a0, $s7, $s8
	addi.d	$a0, $a0, 1
	stx.w	$a0, $s7, $s8
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	fld.d	$fa0, $s0, 8
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	add.d	$s6, $fp, $s1
	ldx.d	$a2, $fp, $s1
	ld.d	$a3, $s6, 8
	move	$a4, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$a5, $a1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $a2
	move	$a1, $a3
	move	$a2, $a4
	move	$a3, $a5
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 64
	stx.d	$a0, $fp, $s1
	st.d	$a1, $s6, 8
	add.d	$s0, $s3, $s1
	ldx.d	$a0, $s3, $s1
	ld.d	$a1, $s0, 8
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	add.d	$s6, $fp, $s1
	ldx.d	$a2, $fp, $s1
	ld.d	$a3, $s6, 8
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	stx.d	$a0, $fp, $s1
	st.d	$a1, $s6, 8
	ldx.d	$a2, $s3, $s1
	ld.d	$a3, $s0, 8
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	add.d	$fp, $s5, $s1
	ldx.d	$a0, $s5, $s1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$s7, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 8
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	move	$a0, $s6
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s5, $s1
	st.d	$a1, $fp, 8
	ldx.d	$a0, $s3, $s1
	ld.d	$a1, $s0, 8
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 232
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $s8
	ldx.w	$a2, $a2, $s8
	move	$fp, $a0
	move	$s5, $a1
	mul.w	$a0, $a2, $a3
	pcaddu18i	$ra, %call36(__floatsitf)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	add.d	$fp, $s0, $s1
	ldx.d	$a2, $s0, $s1
	ld.d	$a3, $fp, 8
	move	$a4, $a0
	move	$a5, $a1
	move	$a0, $a2
	move	$a1, $a3
	move	$a2, $a4
	move	$a3, $a5
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s0, $s1
	st.d	$a1, $fp, 8
	b	.LBB7_38
.LBB7_41:                               # %.preheader.loopexit
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s0, $a0, 64
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
.LBB7_42:                               # %.preheader
	addi.w	$a0, $s0, 0
	beqz	$a0, .LBB7_47
# %bb.43:                               # %.lr.ph288
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 456
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 480
	slli.d	$a3, $a0, 4
	alsl.d	$s3, $a0, $a3, 3
	ldx.d	$s4, $a1, $s3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$s5, $a2, $s3
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$fp, $a0, 1023
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	b	.LBB7_45
	.p2align	4, , 16
.LBB7_44:                               #   in Loop: Header=BB7_45 Depth=1
	addi.d	$s2, $s2, 1
	ld.wu	$a0, $a1, 64
	addi.d	$s6, $s6, 4
	addi.d	$s4, $s4, 4
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 24
	bgeu	$s2, $a0, .LBB7_47
.LBB7_45:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s6, 0
	st.w	$a0, $s4, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	vldx	$vr0, $a2, $s1
	vstx	$vr0, $s5, $s1
	blez	$a0, .LBB7_44
# %bb.46:                               #   in Loop: Header=BB7_45 Depth=1
	ld.d	$a0, $a1, 168
	ldx.d	$a1, $a0, $s0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
	add.d	$a3, $s8, $s1
	ldx.d	$a2, $s8, $s1
	ld.d	$a3, $a3, 8
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a3, $a2, $s1
	ldx.d	$a2, $a2, $s1
	ld.d	$a3, $a3, 8
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 504
	ldx.d	$a2, $a2, $s3
	add.d	$a3, $a2, $s1
	stx.d	$a0, $a2, $s1
	st.d	$a1, $a3, 8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a1, $s1
	ldx.d	$a2, $a1, $s1
	ld.d	$a3, $a0, 8
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 528
	ldx.d	$a2, $a2, $s3
	add.d	$a3, $a2, $s1
	stx.d	$a0, $a2, $s1
	st.d	$a1, $a3, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB7_44
.LBB7_47:                               # %._crit_edge289
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_49
# %bb.48:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_49:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit190
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_51
# %bb.50:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_51:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit192
	beqz	$fp, .LBB7_53
# %bb.52:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_53:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit194
	beqz	$s8, .LBB7_55
# %bb.54:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_55:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit196
	beqz	$s0, .LBB7_57
# %bb.56:
	move	$a0, $s0
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB7_57:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB7_58:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
.LBB7_59:
	move	$s0, $zero
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a1, $a0, .LBB7_33
	b	.LBB7_42
.LBB7_60:
.Ltmp14:
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB7_62
.LBB7_61:
.Ltmp11:
	move	$fp, $a0
.LBB7_62:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB7_64
.LBB7_63:
.Ltmp8:
	move	$fp, $a0
.LBB7_64:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit199
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_65:
.Ltmp5:
	move	$fp, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb, .Lfunc_end7-_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
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
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 5 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin1          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Lfunc_end7-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_ # -- Begin function _Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.p2align	5
	.type	_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_,@function
_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_: # @_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -1408
	.cfi_def_cfa_offset 1408
	st.d	$ra, $sp, 1400                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1392                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1384                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1376                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1368                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1360                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1352                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1344                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1336                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1320                  # 8-byte Folded Spill
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
	ld.d	$a0, $a0, 8
	ld.d	$a2, $fp, 0
	beq	$a0, $a2, .LBB8_150
# %bb.1:
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(_ZL21s_loop_suite_run_info)
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	srai.d	$a0, $a0, 5
	addi.w	$a1, $a0, 0
	beqz	$a1, .LBB8_16
# %bb.2:                                # %.lr.ph
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(_ZL21s_loop_suite_run_info)
	move	$s3, $zero
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	addi.d	$s0, $a1, 600
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$s7, $a0, 4095
	ori	$s8, $zero, 16
	ori	$s1, $zero, 24
	.p2align	4, , 16
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $a0, 608
	move	$a0, $s0
	beqz	$s2, .LBB8_14
# %bb.4:                                # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 5
	add.d	$a2, $a0, $a1
	ld.d	$s4, $a2, 8
	ldx.d	$fp, $a0, $a1
	move	$s5, $s0
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_7 Depth=2
	sub.d	$a0, $s6, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB8_6:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB8_7 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s2, $a0
	masknez	$a2, $s8, $a0
	maskeqz	$a3, $s1, $a0
	or	$a2, $a3, $a2
	ldx.d	$s2, $s2, $a2
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
	beqz	$s2, .LBB8_9
.LBB8_7:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s2, 40
	sltu	$a0, $s4, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_5
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_7 Depth=2
	ld.d	$a0, $s2, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_6
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_9:                                # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	move	$a0, $s0
	beq	$s5, $s0, .LBB8_14
# %bb.10:                               #   in Loop: Header=BB8_3 Depth=1
	ld.d	$s2, $s5, 40
	sltu	$a0, $s2, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_12
# %bb.11:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a1, $s5, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_13
.LBB8_12:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	sub.d	$a0, $s4, $s2
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB8_13:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
.LBB8_14:                               #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a1, $a0, 64
.Ltmp15:
	addi.w	$a0, $s3, 0
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.15:                               #   in Loop: Header=BB8_3 Depth=1
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$s3, $a0, .LBB8_3
.LBB8_16:                               # %._crit_edge
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB8_26
# %bb.17:
	ld.d	$s3, $a0, 0
	addi.d	$s4, $sp, 792
	st.d	$s4, $sp, 776
	st.d	$zero, $sp, 784
	st.b	$zero, $sp, 792
	addi.d	$a1, $fp, 1
.Ltmp18:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp19:
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
# %bb.18:
	ld.d	$a0, $sp, 784
	addi.w	$a1, $zero, -2
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a0, $a1, $a0
	bltu	$a0, $fp, .LBB8_268
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp20:
	addi.d	$a0, $sp, 776
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ld.d	$a0, $sp, 784
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB8_268
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp22:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 776
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp23:
# %bb.22:                               # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a0, $sp, 784
	addi.w	$a1, $zero, -11
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB8_272
# %bb.23:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
.Ltmp24:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 776
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp25:
# %bb.24:                               # %.noexc46
	addi.d	$a3, $sp, 696
	st.d	$a3, $sp, 680
	ld.d	$a1, $a0, 0
	addi.d	$fp, $a0, 16
	beq	$a1, $fp, .LBB8_27
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 696
	ld.d	$s0, $a0, 8
	st.d	$a1, $sp, 680
	b	.LBB8_28
.LBB8_26:
.Ltmp276:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a1, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jirl	$ra, $ra, 0
.Ltmp277:
	b	.LBB8_148
.LBB8_27:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
	ld.d	$s0, $a0, 8
	addi.d	$a2, $s0, 1
	move	$s1, $a0
	move	$a0, $a3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB8_28:
	st.d	$s0, $sp, 688
	st.d	$fp, $a0, 0
	ld.d	$a1, $sp, 776
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	beq	$a1, $s4, .LBB8_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_30:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $sp, 680
.Ltmp26:
	addi.d	$a0, $sp, 168
	ori	$a2, $zero, 48
	addi.d	$fp, $sp, 168
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp27:
# %bb.31:
	ld.d	$a0, $sp, 168
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB8_41
# %bb.32:
.Ltmp29:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp30:
# %bb.33:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 680
	ld.d	$a2, $sp, 688
.Ltmp31:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp32:
# %bb.34:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_270
# %bb.35:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_37
# %bb.36:
	ld.bu	$a0, $s3, 67
	b	.LBB8_39
.LBB8_37:
.Ltmp33:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp34:
# %bb.38:                               # %.noexc236
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp35:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp36:
.LBB8_39:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp37:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp38:
# %bb.40:                               # %.noexc238
.Ltmp39:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp40:
.LBB8_41:                               # %_ZNSolsEPFRSoS_E.exit
.Ltmp41:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp42:
# %bb.42:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
	ld.d	$a1, $sp, 680
	ld.d	$a2, $sp, 688
.Ltmp43:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.43:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit57
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_270
# %bb.44:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i241
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_46
# %bb.45:
	ld.bu	$a0, $s3, 67
	b	.LBB8_48
.LBB8_46:
.Ltmp45:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp46:
# %bb.47:                               # %.noexc246
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp47:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp48:
.LBB8_48:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i243
.Ltmp49:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp50:
# %bb.49:                               # %.noexc248
.Ltmp51:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp52:
# %bb.50:                               # %_ZNSolsEPFRSoS_E.exit59
.Ltmp53:
	addi.d	$a1, $sp, 168
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.51:                               # %.preheader271
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 36, 5
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	beqz	$a0, .LBB8_146
# %bb.52:                               # %.lr.ph442
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -14
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s3, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$s7, $a0, 4095
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	b	.LBB8_54
	.p2align	4, , 16
.LBB8_53:                               #   in Loop: Header=BB8_54 Depth=1
	addi.d	$s1, $s1, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB8_145
.LBB8_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_89 Depth 2
                                        #     Child Loop BB8_100 Depth 2
                                        #     Child Loop BB8_113 Depth 2
                                        #       Child Loop BB8_117 Depth 3
                                        #       Child Loop BB8_129 Depth 3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	ld.d	$s8, $a0, 8
	addi.d	$a0, $sp, 1304
	st.d	$a0, $sp, 1288
	st.d	$zero, $sp, 1296
	st.b	$zero, $sp, 1304
	addi.d	$a1, $s8, 1
.Ltmp55:
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp56:
# %bb.55:                               #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 1296
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s8, .LBB8_248
# %bb.56:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp57:
	addi.d	$a0, $sp, 1288
	move	$a1, $fp
	move	$a2, $s8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp58:
# %bb.57:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 1296
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB8_248
# %bb.58:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp59:
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp60:
# %bb.59:                               # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
	slli.d	$a0, $s1, 5
	add.d	$s4, $s0, $a0
	ld.d	$a0, $sp, 1296
	ld.d	$a2, $s4, 8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	bltu	$a0, $a2, .LBB8_254
# %bb.60:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp62:
	ld.d	$a1, $s4, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp63:
# %bb.61:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 5
	addi.d	$fp, $sp, 792
	st.d	$fp, $sp, 776
	ld.d	$a2, $sp, 1296
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 5
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 784
	st.b	$zero, $sp, 805
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a2, $a0, .LBB8_256
# %bb.62:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp65:
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 13
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp66:
# %bb.63:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit59.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 776
	beq	$a0, $fp, .LBB8_65
# %bb.64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_65:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 1288
.Ltmp68:
	addi.d	$a0, $sp, 776
	ori	$a2, $zero, 48
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.66:                               #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 808
	ldx.bu	$a0, $a1, $a0
	andi	$a0, $a0, 5
	beqz	$a0, .LBB8_76
# %bb.67:                               #   in Loop: Header=BB8_54 Depth=1
.Ltmp71:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp72:
# %bb.68:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 1288
	ld.d	$a2, $sp, 1296
.Ltmp73:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp74:
# %bb.69:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s8, $a0, 240
	beqz	$s8, .LBB8_252
# %bb.70:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $s8, 56
	beqz	$a0, .LBB8_72
# %bb.71:                               #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $s8, 67
	b	.LBB8_74
	.p2align	4, , 16
.LBB8_72:                               #   in Loop: Header=BB8_54 Depth=1
.Ltmp75:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp76:
# %bb.73:                               # %.noexc110.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 48
.Ltmp77:
	ori	$a1, $zero, 10
	move	$a0, $s8
	jirl	$ra, $a2, 0
.Ltmp78:
.LBB8_74:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp79:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp80:
# %bb.75:                               # %.noexc112.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp81:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp82:
.LBB8_76:                               # %_ZNSolsEPFRSoS_E.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp83:
	ori	$a2, $zero, 27
	move	$a0, $s3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp84:
# %bb.77:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 1288
	ld.d	$a2, $sp, 1296
.Ltmp85:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp86:
# %bb.78:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.i
                                        #   in Loop: Header=BB8_54 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s8, $a0, 240
	beqz	$s8, .LBB8_252
# %bb.79:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $s8, 56
	beqz	$a0, .LBB8_81
# %bb.80:                               #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $s8, 67
	b	.LBB8_83
	.p2align	4, , 16
.LBB8_81:                               #   in Loop: Header=BB8_54 Depth=1
.Ltmp87:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp88:
# %bb.82:                               # %.noexc120.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 48
.Ltmp89:
	ori	$a1, $zero, 10
	move	$a0, $s8
	jirl	$ra, $a2, 0
.Ltmp90:
.LBB8_83:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp91:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp92:
# %bb.84:                               # %.noexc122.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp93:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp94:
# %bb.85:                               # %_ZNSolsEPFRSoS_E.exit71.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.b	$a1, $a0, 2
	ld.h	$a2, $a0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	addi.d	$a0, $sp, 760
	st.d	$a0, $sp, 744
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.b	$a1, $a0, 2
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.h	$a2, $a0, 0
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 752
	st.b	$zero, $sp, 763
	ld.d	$a1, $s4, 0
	ld.d	$a2, $s4, 8
.Ltmp96:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp97:
# %bb.86:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp98:
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp99:
# %bb.87:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $s0, 120
	ld.d	$a1, $s0, 112
	beq	$a0, $a1, .LBB8_91
# %bb.88:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB8_54 Depth=1
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB8_89:                               # %.lr.ph.i
                                        #   Parent Loop BB8_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp100:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp101:
# %bb.90:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i
                                        #   in Loop: Header=BB8_89 Depth=2
	ld.d	$a0, $s0, 120
	ld.d	$a1, $s0, 112
	bstrpick.d	$a2, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.w	$fp, $fp, 1
	bltu	$a2, $a0, .LBB8_89
.LBB8_91:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 1016
	ldx.d	$fp, $a1, $a0
	beqz	$fp, .LBB8_250
# %bb.92:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_94
# %bb.93:                               #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB8_96
	.p2align	4, , 16
.LBB8_94:                               #   in Loop: Header=BB8_54 Depth=1
.Ltmp103:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp104:
# %bb.95:                               # %.noexc131.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp105:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp106:
.LBB8_96:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp107:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp108:
# %bb.97:                               # %.noexc133.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp109:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp110:
# %bb.98:                               # %_ZNSolsEPFRSoS_E.exit81.preheader.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $s0, 120
	ld.d	$a1, $s0, 112
	beq	$a0, $a1, .LBB8_103
# %bb.99:                               # %.lr.ph5.i.preheader
                                        #   in Loop: Header=BB8_54 Depth=1
	move	$s2, $zero
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB8_100:                              # %.lr.ph5.i
                                        #   Parent Loop BB8_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp111:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp112:
# %bb.101:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87.i
                                        #   in Loop: Header=BB8_100 Depth=2
	ld.d	$a1, $s0, 112
	slli.d	$a2, $s2, 5
	add.d	$a3, $a1, $a2
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $a3, 8
.Ltmp113:
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp114:
# %bb.102:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i
                                        #   in Loop: Header=BB8_100 Depth=2
	ld.d	$a0, $s0, 120
	ld.d	$a1, $s0, 112
	bstrpick.d	$s2, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.w	$fp, $fp, 1
	bltu	$s2, $a0, .LBB8_100
.LBB8_103:                              # %_ZNSolsEPFRSoS_E.exit81._crit_edge.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 1016
	ldx.d	$fp, $a1, $a0
	beqz	$fp, .LBB8_250
# %bb.104:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_106
# %bb.105:                              #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB8_108
	.p2align	4, , 16
.LBB8_106:                              #   in Loop: Header=BB8_54 Depth=1
.Ltmp116:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp117:
# %bb.107:                              # %.noexc142.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp118:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp119:
.LBB8_108:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp120:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp121:
# %bb.109:                              # %.noexc144.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp122:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp123:
# %bb.110:                              # %_ZNSolsEPFRSoS_E.exit85.preheader.i
                                        #   in Loop: Header=BB8_54 Depth=1
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 48
	ld.d	$s2, $s0, 40
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	beq	$a0, $s2, .LBB8_140
# %bb.111:                              # %.lr.ph9.i
                                        #   in Loop: Header=BB8_54 Depth=1
	move	$fp, $zero
	move	$s3, $zero
	addi.d	$a0, $s0, 600
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB8_113
	.p2align	4, , 16
.LBB8_112:                              # %_ZNSolsEPFRSoS_E.exit93.i
                                        #   in Loop: Header=BB8_113 Depth=2
	addi.w	$s3, $s3, 1
	bstrpick.d	$fp, $s3, 31, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s2
	srai.d	$a0, $a0, 5
	bgeu	$fp, $a0, .LBB8_140
.LBB8_113:                              #   Parent Loop BB8_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_117 Depth 3
                                        #       Child Loop BB8_129 Depth 3
	ld.d	$s5, $s0, 608
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beqz	$s5, .LBB8_124
# %bb.114:                              # %.lr.ph.i.i.i.i.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $a0, 8
	ld.d	$s8, $a0, 0
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB8_117
	.p2align	4, , 16
.LBB8_115:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_117 Depth=3
	sub.d	$a0, $s1, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB8_116:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i
                                        #   in Loop: Header=BB8_117 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s5, $s5, $a2
	maskeqz	$a0, $s6, $a0
	or	$s6, $a0, $a1
	beqz	$s5, .LBB8_119
.LBB8_117:                              #   Parent Loop BB8_54 Depth=1
                                        #     Parent Loop BB8_113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $s5, 40
	sltu	$a0, $s4, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_115
# %bb.118:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_117 Depth=3
	ld.d	$a0, $s5, 32
	move	$a1, $s8
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_116
	b	.LBB8_115
	.p2align	4, , 16
.LBB8_119:                              # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a0, $a1
	beq	$s6, $a1, .LBB8_124
# %bb.120:                              #   in Loop: Header=BB8_113 Depth=2
	ld.d	$s1, $s6, 40
	sltu	$a0, $s1, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s1, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_122
# %bb.121:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i62
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a1, $s6, 32
	move	$a0, $s8
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_123
.LBB8_122:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i67
                                        #   in Loop: Header=BB8_113 Depth=2
	sub.d	$a0, $s4, $s1
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB8_123:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i64
                                        #   in Loop: Header=BB8_113 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s6, $a0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB8_124:                              #   in Loop: Header=BB8_113 Depth=2
	slli.d	$a1, $fp, 5
	add.d	$a1, $s2, $a1
	ld.d	$a2, $a1, 8
	ori	$s1, $zero, 8
	beqz	$a2, .LBB8_112
# %bb.125:                              #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 280
	mul.d	$a3, $fp, $a3
	add.d	$fp, $a0, $a3
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB8_112
# %bb.126:                              #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a1, $a1, 0
.Ltmp124:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp125:
# %bb.127:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $fp, 216
	ld.d	$a1, $fp, 208
	beq	$a0, $a1, .LBB8_132
# %bb.128:                              # %.lr.ph7.i
                                        #   in Loop: Header=BB8_113 Depth=2
	move	$s4, $zero
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB8_129:                              #   Parent Loop BB8_54 Depth=1
                                        #     Parent Loop BB8_113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp126:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp127:
# %bb.130:                              #   in Loop: Header=BB8_129 Depth=3
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	st.d	$s1, $a1, 8
	ld.d	$a1, $fp, 64
	alsl.d	$a2, $s4, $a1, 4
	slli.d	$a3, $s4, 4
	ldx.d	$a1, $a1, $a3
	ld.d	$a2, $a2, 8
.Ltmp128:
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp129:
# %bb.131:                              # %_ZNSolsEe.exit.i
                                        #   in Loop: Header=BB8_129 Depth=3
	ld.d	$a0, $fp, 216
	ld.d	$a1, $fp, 208
	bstrpick.d	$s4, $s2, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	addi.w	$s2, $s2, 1
	bltu	$s4, $a0, .LBB8_129
.LBB8_132:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 1016
	ldx.d	$fp, $a1, $a0
	beqz	$fp, .LBB8_244
# %bb.133:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_135
# %bb.134:                              #   in Loop: Header=BB8_113 Depth=2
	ld.bu	$a0, $fp, 67
	b	.LBB8_137
.LBB8_135:                              #   in Loop: Header=BB8_113 Depth=2
.Ltmp131:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp132:
# %bb.136:                              # %.noexc153.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp133:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp134:
.LBB8_137:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i
                                        #   in Loop: Header=BB8_113 Depth=2
.Ltmp135:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp136:
# %bb.138:                              # %.noexc155.i
                                        #   in Loop: Header=BB8_113 Depth=2
.Ltmp137:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp138:
# %bb.139:                              # %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $s0, 48
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s2, $s0, 40
	b	.LBB8_112
	.p2align	4, , 16
.LBB8_140:                              # %_ZNSolsEPFRSoS_E.exit85._crit_edge.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp143:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp144:
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
# %bb.141:                              #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 744
	addi.d	$a1, $sp, 760
	beq	$a0, $a1, .LBB8_143
# %bb.142:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i
                                        #   in Loop: Header=BB8_54 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_143:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a2, $sp, 776
	stx.d	$a1, $a0, $a2
	addi.d	$a0, $sp, 784
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1304
	beq	$a0, $a1, .LBB8_53
# %bb.144:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i
                                        #   in Loop: Header=BB8_54 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB8_53
.LBB8_145:                              # %.preheader
	ori	$s1, $zero, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bne	$a0, $s1, .LBB8_151
.LBB8_146:                              # %._crit_edge451
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $sp, 168
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 168
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	stx.d	$a2, $a0, $a1
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 416
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 680
	addi.d	$a1, $sp, 696
	beq	$a0, $a1, .LBB8_148
# %bb.147:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_148:
	ld.d	$a0, $sp, 712
	addi.d	$a1, $sp, 728
	beq	$a0, $a1, .LBB8_150
# %bb.149:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_150:
	ld.d	$s8, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1336                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1344                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1352                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1360                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1368                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1376                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1384                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1392                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1400                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1408
	ret
.LBB8_151:                              # %.lr.ph450
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -13
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	b	.LBB8_153
	.p2align	4, , 16
.LBB8_152:                              #   in Loop: Header=BB8_153 Depth=1
	addi.d	$s1, $s1, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB8_146
.LBB8_153:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_188 Depth 2
                                        #     Child Loop BB8_199 Depth 2
                                        #     Child Loop BB8_213 Depth 2
                                        #       Child Loop BB8_217 Depth 3
                                        #       Child Loop BB8_229 Depth 3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	ld.d	$s3, $a0, 8
	addi.d	$a0, $sp, 1304
	st.d	$a0, $sp, 1288
	st.d	$zero, $sp, 1296
	st.b	$zero, $sp, 1304
	addi.d	$a1, $s3, 1
.Ltmp146:
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp147:
# %bb.154:                              #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 1296
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s3, .LBB8_258
# %bb.155:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i80
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp148:
	addi.d	$a0, $sp, 1288
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp149:
# %bb.156:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i81
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 1296
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB8_258
# %bb.157:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i82
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp150:
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp151:
# %bb.158:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i83
                                        #   in Loop: Header=BB8_153 Depth=1
	slli.d	$a0, $s1, 5
	add.d	$s5, $s0, $a0
	ld.d	$a0, $sp, 1296
	ld.d	$a2, $s5, 8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	bltu	$a0, $a2, .LBB8_266
# %bb.159:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i84
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp153:
	ld.d	$a1, $s5, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp154:
# %bb.160:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i89
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.w	$a1, $a1, 8
	addi.d	$fp, $sp, 792
	st.d	$fp, $sp, 776
	ld.d	$a2, $sp, 1296
	st.d	$a0, $fp, 0
	st.w	$a1, $fp, 8
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 784
	st.b	$zero, $sp, 804
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a2, $a0, .LBB8_264
# %bb.161:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i90
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp156:
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 12
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp157:
# %bb.162:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit59.i94
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 776
	beq	$a0, $fp, .LBB8_164
# %bb.163:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95
                                        #   in Loop: Header=BB8_153 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_164:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $sp, 1288
.Ltmp159:
	addi.d	$a0, $sp, 776
	ori	$a2, $zero, 48
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp160:
# %bb.165:                              #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 808
	ldx.bu	$a0, $a1, $a0
	andi	$a0, $a0, 5
	beqz	$a0, .LBB8_175
# %bb.166:                              #   in Loop: Header=BB8_153 Depth=1
.Ltmp162:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp163:
# %bb.167:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i100
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $sp, 1288
	ld.d	$a2, $sp, 1296
.Ltmp164:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp165:
# %bb.168:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i101
                                        #   in Loop: Header=BB8_153 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_262
# %bb.169:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i103
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_171
# %bb.170:                              #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $s3, 67
	b	.LBB8_173
	.p2align	4, , 16
.LBB8_171:                              #   in Loop: Header=BB8_153 Depth=1
.Ltmp166:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp167:
# %bb.172:                              # %.noexc110.i218
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp168:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp169:
.LBB8_173:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i105
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp170:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp171:
# %bb.174:                              # %.noexc112.i107
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp172:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp173:
.LBB8_175:                              # %_ZNSolsEPFRSoS_E.exit.i108
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp174:
	ori	$a2, $zero, 31
	move	$a0, $s2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp175:
# %bb.176:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67.i109
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $sp, 1288
	ld.d	$a2, $sp, 1296
.Ltmp176:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp177:
# %bb.177:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69.i110
                                        #   in Loop: Header=BB8_153 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_262
# %bb.178:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115.i112
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_180
# %bb.179:                              #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $s3, 67
	b	.LBB8_182
	.p2align	4, , 16
.LBB8_180:                              #   in Loop: Header=BB8_153 Depth=1
.Ltmp178:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp179:
# %bb.181:                              # %.noexc120.i215
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp180:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp181:
.LBB8_182:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117.i114
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp182:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp183:
# %bb.183:                              # %.noexc122.i116
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp184:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp185:
# %bb.184:                              # %_ZNSolsEPFRSoS_E.exit71.i117
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	addi.d	$a0, $sp, 760
	st.d	$a0, $sp, 744
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.b	$a1, $a0, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.h	$a1, $a0, 0
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 752
	st.b	$zero, $sp, 763
	ld.d	$a1, $s5, 0
	ld.d	$a2, $s5, 8
.Ltmp187:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp188:
# %bb.185:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77.i122
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp189:
	ori	$a2, $zero, 20
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp190:
# %bb.186:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i123
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	beq	$a0, $a1, .LBB8_190
# %bb.187:                              # %.lr.ph.i125.preheader
                                        #   in Loop: Header=BB8_153 Depth=1
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB8_188:                              # %.lr.ph.i125
                                        #   Parent Loop BB8_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp191:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp192:
# %bb.189:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i127
                                        #   in Loop: Header=BB8_188 Depth=2
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	bstrpick.d	$a2, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.w	$fp, $fp, 1
	bltu	$a2, $a0, .LBB8_188
.LBB8_190:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i128
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 1016
	ldx.d	$fp, $a1, $a0
	beqz	$fp, .LBB8_260
# %bb.191:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126.i130
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_193
# %bb.192:                              #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB8_195
	.p2align	4, , 16
.LBB8_193:                              #   in Loop: Header=BB8_153 Depth=1
.Ltmp194:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp195:
# %bb.194:                              # %.noexc131.i214
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp196:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp197:
.LBB8_195:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i132
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp198:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp199:
# %bb.196:                              # %.noexc133.i134
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp200:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp201:
# %bb.197:                              # %_ZNSolsEPFRSoS_E.exit81.preheader.i135
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	beq	$a0, $a1, .LBB8_202
# %bb.198:                              # %.lr.ph5.i137.preheader
                                        #   in Loop: Header=BB8_153 Depth=1
	move	$s0, $zero
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB8_199:                              # %.lr.ph5.i137
                                        #   Parent Loop BB8_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp202:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp203:
# %bb.200:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87.i139
                                        #   in Loop: Header=BB8_199 Depth=2
	ld.d	$a1, $s3, 112
	slli.d	$a2, $s0, 5
	add.d	$a3, $a1, $a2
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $a3, 8
.Ltmp204:
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp205:
# %bb.201:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i140
                                        #   in Loop: Header=BB8_199 Depth=2
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	bstrpick.d	$s0, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.w	$fp, $fp, 1
	bltu	$s0, $a0, .LBB8_199
.LBB8_202:                              # %_ZNSolsEPFRSoS_E.exit81._crit_edge.i141
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 1016
	ldx.d	$fp, $a1, $a0
	beqz	$fp, .LBB8_260
# %bb.203:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137.i143
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_205
# %bb.204:                              #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB8_207
	.p2align	4, , 16
.LBB8_205:                              #   in Loop: Header=BB8_153 Depth=1
.Ltmp207:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp208:
# %bb.206:                              # %.noexc142.i211
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp209:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp210:
.LBB8_207:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i145
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp211:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp212:
# %bb.208:                              # %.noexc144.i147
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp213:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp214:
# %bb.209:                              # %_ZNSolsEPFRSoS_E.exit85.preheader.i148
                                        #   in Loop: Header=BB8_153 Depth=1
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s2, $s3, 48
	ld.d	$a4, $s3, 40
	beq	$s2, $a4, .LBB8_239
# %bb.210:                              # %.lr.ph9.i151
                                        #   in Loop: Header=BB8_153 Depth=1
	move	$s6, $zero
	move	$s1, $zero
	addi.d	$a0, $s3, 600
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB8_213
	.p2align	4, , 16
.LBB8_211:                              # %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i196
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$s2, $s3, 48
	ld.d	$a4, $s3, 40
.LBB8_212:                              # %_ZNSolsEPFRSoS_E.exit93.i174
                                        #   in Loop: Header=BB8_213 Depth=2
	addi.w	$s1, $s1, 1
	bstrpick.d	$s6, $s1, 31, 0
	sub.d	$a0, $s2, $a4
	srai.d	$a0, $a0, 5
	bgeu	$s6, $a0, .LBB8_239
.LBB8_213:                              #   Parent Loop BB8_153 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_217 Depth 3
                                        #       Child Loop BB8_229 Depth 3
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s0, $s3, 608
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beqz	$s0, .LBB8_224
# %bb.214:                              # %.lr.ph.i.i.i.i.i154
                                        #   in Loop: Header=BB8_213 Depth=2
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	move	$s2, $s3
	ld.d	$s8, $s5, 8
	move	$s3, $s5
	ld.d	$fp, $s5, 0
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	b	.LBB8_217
	.p2align	4, , 16
.LBB8_215:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i207
                                        #   in Loop: Header=BB8_217 Depth=3
	sub.d	$a0, $s5, $s8
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB8_216:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i160
                                        #   in Loop: Header=BB8_217 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s0, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s0, $s0, $a2
	maskeqz	$a0, $s4, $a0
	or	$s4, $a0, $a1
	beqz	$s0, .LBB8_219
.LBB8_217:                              #   Parent Loop BB8_153 Depth=1
                                        #     Parent Loop BB8_213 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s5, $s0, 40
	sltu	$a0, $s8, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s8, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_215
# %bb.218:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i158
                                        #   in Loop: Header=BB8_217 Depth=3
	ld.d	$a0, $s0, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_216
	b	.LBB8_215
	.p2align	4, , 16
.LBB8_219:                              # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i.i167
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a0, $a1
	move	$s5, $s3
	move	$s3, $s2
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	beq	$s4, $a1, .LBB8_224
# %bb.220:                              #   in Loop: Header=BB8_213 Depth=2
	ld.d	$s0, $s4, 40
	sltu	$a0, $s0, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_222
# %bb.221:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i169
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a1, $s4, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_223
.LBB8_222:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i203
                                        #   in Loop: Header=BB8_213 Depth=2
	sub.d	$a0, $s8, $s0
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB8_223:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i171
                                        #   in Loop: Header=BB8_213 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s4, $a0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB8_224:                              #   in Loop: Header=BB8_213 Depth=2
	slli.d	$a1, $s6, 5
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB8_212
# %bb.225:                              #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 280
	mul.d	$a3, $s6, $a3
	add.d	$fp, $a0, $a3
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB8_212
# %bb.226:                              #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a1, $a1, 0
.Ltmp215:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp216:
	ori	$s4, $zero, 6
# %bb.227:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i183
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a0, $fp, 216
	ld.d	$a1, $fp, 208
	beq	$a0, $a1, .LBB8_232
# %bb.228:                              # %.lr.ph7.i185
                                        #   in Loop: Header=BB8_213 Depth=2
	move	$s2, $zero
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB8_229:                              #   Parent Loop BB8_153 Depth=1
                                        #     Parent Loop BB8_213 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp217:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp218:
# %bb.230:                              #   in Loop: Header=BB8_229 Depth=3
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	st.d	$s4, $a1, 8
	ld.d	$a1, $fp, 184
	alsl.d	$a2, $s2, $a1, 4
	slli.d	$a3, $s2, 4
	ldx.d	$a1, $a1, $a3
	ld.d	$a2, $a2, 8
.Ltmp219:
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp220:
# %bb.231:                              # %_ZNSolsEe.exit.i187
                                        #   in Loop: Header=BB8_229 Depth=3
	ld.d	$a0, $fp, 216
	ld.d	$a1, $fp, 208
	bstrpick.d	$s2, $s0, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	addi.w	$s0, $s0, 1
	bltu	$s2, $a0, .LBB8_229
.LBB8_232:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i188
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 1016
	ldx.d	$fp, $a1, $a0
	beqz	$fp, .LBB8_246
# %bb.233:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i191
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_235
# %bb.234:                              #   in Loop: Header=BB8_213 Depth=2
	ld.bu	$a0, $fp, 67
	b	.LBB8_237
.LBB8_235:                              #   in Loop: Header=BB8_213 Depth=2
.Ltmp222:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp223:
# %bb.236:                              # %.noexc153.i199
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp224:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp225:
.LBB8_237:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i193
                                        #   in Loop: Header=BB8_213 Depth=2
.Ltmp226:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp227:
# %bb.238:                              # %.noexc155.i195
                                        #   in Loop: Header=BB8_213 Depth=2
.Ltmp228:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp229:
	b	.LBB8_211
	.p2align	4, , 16
.LBB8_239:                              # %_ZNSolsEPFRSoS_E.exit85._crit_edge.i175
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp234:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp235:
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
# %bb.240:                              #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 744
	addi.d	$a1, $sp, 760
	beq	$a0, $a1, .LBB8_242
# %bb.241:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i176
                                        #   in Loop: Header=BB8_153 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_242:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i177
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a2, $sp, 776
	stx.d	$a1, $a0, $a2
	addi.d	$a0, $sp, 784
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1304
	beq	$a0, $a1, .LBB8_152
# %bb.243:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i178
                                        #   in Loop: Header=BB8_153 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB8_152
.LBB8_244:
.Ltmp140:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp141:
# %bb.245:                              # %.noexc152.i
.LBB8_246:
.Ltmp231:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp232:
# %bb.247:                              # %.noexc152.i202
.LBB8_248:                              # %.invoke.i.i.i
.Ltmp264:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp265:
# %bb.249:                              # %.cont.i.i.i
.LBB8_250:                              # %.invoke15.i
.Ltmp252:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp253:
# %bb.251:                              # %.cont16.i
.LBB8_252:                              # %.invoke.i
.Ltmp255:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp256:
# %bb.253:                              # %.cont.i
.LBB8_254:
.Ltmp261:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp262:
# %bb.255:                              # %.noexc.i
.LBB8_256:
.Ltmp258:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp259:
# %bb.257:                              # %.noexc57.i
.LBB8_258:                              # %.invoke.i.i.i222
.Ltmp249:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp250:
# %bb.259:                              # %.cont.i.i.i223
.LBB8_260:                              # %.invoke15.i212
.Ltmp237:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp238:
# %bb.261:                              # %.cont16.i213
.LBB8_262:                              # %.invoke.i216
.Ltmp240:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp241:
# %bb.263:                              # %.cont.i217
.LBB8_264:
.Ltmp243:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp244:
# %bb.265:                              # %.noexc57.i220
.LBB8_266:
.Ltmp246:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp247:
# %bb.267:                              # %.noexc.i221
.LBB8_268:                              # %.invoke.i.i
.Ltmp273:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp274:
# %bb.269:                              # %.cont.i.i
.LBB8_270:                              # %.invoke
.Ltmp267:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp268:
# %bb.271:                              # %.cont
.LBB8_272:
.Ltmp270:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp271:
# %bb.273:                              # %.noexc
.LBB8_274:
.Ltmp278:
	b	.LBB8_298
.LBB8_275:
.Ltmp28:
	move	$s0, $a0
	b	.LBB8_324
.LBB8_276:
.Ltmp272:
	b	.LBB8_278
.LBB8_277:
.Ltmp275:
.LBB8_278:
	ld.d	$a1, $sp, 776
	move	$s0, $a0
	beq	$a1, $s4, .LBB8_326
# %bb.279:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
	move	$a0, $a1
	b	.LBB8_325
.LBB8_280:                              # %.loopexit.split-lp252
.Ltmp248:
	move	$s0, $a0
	b	.LBB8_321
.LBB8_281:                              # %.loopexit.split-lp257
.Ltmp245:
	b	.LBB8_293
.LBB8_282:                              # %.loopexit251
.Ltmp155:
	move	$s0, $a0
	b	.LBB8_321
.LBB8_283:                              # %.loopexit256
.Ltmp158:
	b	.LBB8_293
.LBB8_284:
.Ltmp161:
	move	$s0, $a0
	b	.LBB8_321
.LBB8_285:
.Ltmp269:
	move	$s0, $a0
	b	.LBB8_323
.LBB8_286:                              # %.loopexit.split-lp262
.Ltmp242:
	move	$s0, $a0
	b	.LBB8_320
.LBB8_287:                              # %.loopexit.split-lp267
.Ltmp239:
	b	.LBB8_318
.LBB8_288:                              # %.loopexit.split-lp
.Ltmp251:
	b	.LBB8_303
.LBB8_289:                              # %.loopexit.split-lp283
.Ltmp260:
	b	.LBB8_293
.LBB8_290:                              # %.loopexit.split-lp278
.Ltmp263:
	move	$s0, $a0
	b	.LBB8_321
.LBB8_291:                              # %.loopexit277
.Ltmp64:
	move	$s0, $a0
	b	.LBB8_321
.LBB8_292:                              # %.loopexit282
.Ltmp67:
.LBB8_293:
	move	$s0, $a0
	ld.d	$a0, $sp, 776
	addi.d	$a1, $sp, 792
	beq	$a0, $a1, .LBB8_321
# %bb.294:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i91
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB8_321
.LBB8_295:
.Ltmp70:
	move	$s0, $a0
	b	.LBB8_321
.LBB8_296:                              # %.loopexit
.Ltmp152:
	b	.LBB8_303
.LBB8_297:
.Ltmp17:
.LBB8_298:
	move	$s0, $a0
	b	.LBB8_326
.LBB8_299:                              # %.loopexit.split-lp288
.Ltmp257:
	move	$s0, $a0
	b	.LBB8_320
.LBB8_300:                              # %.loopexit.split-lp293
.Ltmp254:
	b	.LBB8_318
.LBB8_301:                              # %.loopexit.split-lp273
.Ltmp266:
	b	.LBB8_303
.LBB8_302:                              # %.loopexit272
.Ltmp61:
.LBB8_303:
	move	$s0, $a0
	ld.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1304
	bne	$a0, $a1, .LBB8_322
	b	.LBB8_323
.LBB8_304:                              # %.loopexit.split-lp.i200
.Ltmp233:
	b	.LBB8_318
.LBB8_305:                              # %.loopexit261
.Ltmp186:
	move	$s0, $a0
	b	.LBB8_320
.LBB8_306:                              # %.loopexit266
.Ltmp236:
	b	.LBB8_318
.LBB8_307:                              # %.loopexit.split-lp.i
.Ltmp142:
	b	.LBB8_318
.LBB8_308:                              # %.loopexit287
.Ltmp95:
	move	$s0, $a0
	b	.LBB8_320
.LBB8_309:                              # %.loopexit292
.Ltmp145:
	b	.LBB8_318
.LBB8_310:
.Ltmp193:
	b	.LBB8_318
.LBB8_311:                              # %.loopexit.i181
.Ltmp230:
	b	.LBB8_318
.LBB8_312:
.Ltmp206:
	b	.LBB8_318
.LBB8_313:
.Ltmp102:
	b	.LBB8_318
.LBB8_314:                              # %.loopexit.i
.Ltmp139:
	b	.LBB8_318
.LBB8_315:
.Ltmp115:
	b	.LBB8_318
.LBB8_316:
.Ltmp221:
	b	.LBB8_318
.LBB8_317:
.Ltmp130:
.LBB8_318:
	move	$s0, $a0
	ld.d	$a0, $sp, 744
	addi.d	$a1, $sp, 760
	beq	$a0, $a1, .LBB8_320
# %bb.319:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_320:
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB8_321:
	ld.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1304
	beq	$a0, $a1, .LBB8_323
.LBB8_322:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_323:                              # %.body71
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB8_324:
	ld.d	$a0, $sp, 680
	addi.d	$a1, $sp, 696
	beq	$a0, $a1, .LBB8_326
.LBB8_325:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_326:
	ld.d	$a0, $sp, 712
	addi.d	$a1, $sp, 728
	beq	$a0, $a1, .LBB8_328
# %bb.327:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_328:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_, .Lfunc_end8-_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin2          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp23-.Ltmp18                #   Call between .Ltmp18 and .Ltmp23
	.uleb128 .Ltmp275-.Lfunc_begin2         #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp272-.Lfunc_begin2         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin2         #     jumps to .Ltmp278
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp26-.Ltmp277               #   Call between .Ltmp277 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin2          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp54-.Ltmp29                #   Call between .Ltmp29 and .Ltmp54
	.uleb128 .Ltmp269-.Lfunc_begin2         #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp60-.Ltmp55                #   Call between .Ltmp55 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin2          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin2          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin2          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp68-.Ltmp66                #   Call between .Ltmp66 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin2          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp94-.Ltmp71                #   Call between .Ltmp71 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin2          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp99-.Ltmp96                #   Call between .Ltmp96 and .Ltmp99
	.uleb128 .Ltmp145-.Lfunc_begin2         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin2         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp110-.Ltmp103              #   Call between .Ltmp103 and .Ltmp110
	.uleb128 .Ltmp145-.Lfunc_begin2         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp114-.Ltmp111              #   Call between .Ltmp111 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin2         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp123-.Ltmp116              #   Call between .Ltmp116 and .Ltmp123
	.uleb128 .Ltmp145-.Lfunc_begin2         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp139-.Lfunc_begin2         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp129-.Ltmp126              #   Call between .Ltmp126 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin2         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp138-.Ltmp131              #   Call between .Ltmp131 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin2         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin2         # >> Call Site 24 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin2         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin2         # >> Call Site 25 <<
	.uleb128 .Ltmp146-.Ltmp144              #   Call between .Ltmp144 and .Ltmp146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp151-.Ltmp146              #   Call between .Ltmp146 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin2         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin2         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin2         # >> Call Site 28 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin2         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin2         # >> Call Site 29 <<
	.uleb128 .Ltmp159-.Ltmp157              #   Call between .Ltmp157 and .Ltmp159
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin2         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin2         # >> Call Site 31 <<
	.uleb128 .Ltmp185-.Ltmp162              #   Call between .Ltmp162 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin2         #     jumps to .Ltmp186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin2         # >> Call Site 32 <<
	.uleb128 .Ltmp190-.Ltmp187              #   Call between .Ltmp187 and .Ltmp190
	.uleb128 .Ltmp236-.Lfunc_begin2         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin2         # >> Call Site 33 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin2         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin2         # >> Call Site 34 <<
	.uleb128 .Ltmp201-.Ltmp194              #   Call between .Ltmp194 and .Ltmp201
	.uleb128 .Ltmp236-.Lfunc_begin2         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin2         # >> Call Site 35 <<
	.uleb128 .Ltmp205-.Ltmp202              #   Call between .Ltmp202 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin2         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin2         # >> Call Site 36 <<
	.uleb128 .Ltmp214-.Ltmp207              #   Call between .Ltmp207 and .Ltmp214
	.uleb128 .Ltmp236-.Lfunc_begin2         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin2         # >> Call Site 37 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin2         # >> Call Site 38 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp230-.Lfunc_begin2         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin2         # >> Call Site 39 <<
	.uleb128 .Ltmp220-.Ltmp217              #   Call between .Ltmp217 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin2         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin2         # >> Call Site 40 <<
	.uleb128 .Ltmp229-.Ltmp222              #   Call between .Ltmp222 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin2         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin2         # >> Call Site 41 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin2         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin2         # >> Call Site 42 <<
	.uleb128 .Ltmp140-.Ltmp235              #   Call between .Ltmp235 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin2         # >> Call Site 43 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin2         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin2         # >> Call Site 44 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin2         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin2         # >> Call Site 45 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin2         #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin2         # >> Call Site 46 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin2         #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin2         # >> Call Site 47 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin2         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin2         # >> Call Site 48 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin2         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin2         # >> Call Site 49 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin2         #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin2         # >> Call Site 50 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin2         #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin2         # >> Call Site 51 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin2         #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin2         # >> Call Site 52 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin2         #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin2         # >> Call Site 53 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin2         #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin2         # >> Call Site 54 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin2         #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin2         # >> Call Site 55 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin2         #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin2         # >> Call Site 56 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin2         #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin2         # >> Call Site 57 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin2         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin2         # >> Call Site 58 <<
	.uleb128 .Lfunc_end8-.Ltmp271           #   Call between .Ltmp271 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev
	.type	_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev,@function
_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev: # @_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -560
	.cfi_def_cfa_offset 560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 16
	st.d	$s1, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
.Ltmp279:
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSi5seekgElSt12_Ios_Seekdir)
	jirl	$ra, $ra, 0
.Ltmp280:
# %bb.1:
.Ltmp281:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSi5tellgEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp282:
# %bb.2:
.Ltmp283:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp284:
# %bb.3:
.Ltmp286:
	addi.d	$a0, $sp, 8
	addi.d	$s0, $sp, 8
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSi5seekgElSt12_Ios_Seekdir)
	jirl	$ra, $ra, 0
.Ltmp287:
# %bb.4:
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$a1, $a0, 232
.Ltmp288:
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	move	$a0, $fp
	move	$a3, $zero
	move	$a4, $a2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_)
	jirl	$ra, $ra, 0
.Ltmp289:
# %bb.5:
	addi.d	$s0, $sp, 24
.Ltmp290:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv)
	jirl	$ra, $ra, 0
.Ltmp291:
# %bb.6:                                # %.noexc
	bnez	$a0, .LBB9_8
# %bb.7:
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 8
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.Ltmp292:
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp293:
.LBB9_8:                                # %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE)
	ld.d	$fp, $a0, %got_pc_lo12(_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 8
	ld.d	$a1, $fp, 24
	ld.d	$a0, $a0, -24
	addi.d	$s1, $sp, 8
	stx.d	$a1, $a0, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$a0, $sp, 8
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a0, -24
	stx.d	$a1, $a0, $s1
	st.d	$zero, $sp, 16
	addi.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB9_9:
.Ltmp285:
	b	.LBB9_11
.LBB9_10:
.Ltmp294:
.LBB9_11:
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	beq	$a0, $s1, .LBB9_13
# %bb.12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB9_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev, .Lfunc_end9-_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp279-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp279
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp294-.Lfunc_begin3         #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp284-.Ltmp281              #   Call between .Ltmp281 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin3         #     jumps to .Ltmp285
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp293-.Ltmp286              #   Call between .Ltmp286 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin3         #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Lfunc_end9-.Ltmp293           #   Call between .Ltmp293 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.type	_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo,@function
_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo: # @_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %.noexc.i
	addi.d	$sp, $sp, -544
	.cfi_def_cfa_offset 544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
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
	pcalau12i	$a1, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s6, $a1, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$s5, $a0, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s4, $a0, 0
	addi.d	$a0, $sp, 440
	st.d	$a0, $sp, 424
	ori	$a0, $zero, 108
	st.d	$a0, $sp, 392
	addi.d	$a0, $sp, 424
	addi.d	$a1, $sp, 392
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 392
	move	$fp, $a0
	st.d	$a0, $sp, 424
	st.d	$s1, $sp, 440
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 108
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 432
	stx.b	$zero, $fp, $s1
	addi.d	$a0, $sp, 408
	st.d	$a0, $sp, 392
	ori	$a0, $zero, 109
	st.d	$a0, $sp, 360
.Ltmp295:
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 360
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp296:
# %bb.1:                                # %.noexc214
	move	$fp, $a0
	ld.d	$s1, $sp, 360
	st.d	$a0, $sp, 392
	st.d	$s1, $sp, 408
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 109
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 400
	stx.b	$zero, $fp, $s1
	addi.d	$a0, $sp, 376
	st.d	$a0, $sp, 360
	ori	$a0, $zero, 56
	st.d	$a0, $sp, 328
.Ltmp298:
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 328
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp299:
# %bb.2:                                # %.noexc218
	ld.d	$a1, $sp, 328
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 360
	st.d	$a1, $sp, 376
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	vst	$vr0, $a0, 40
	st.d	$a1, $sp, 368
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 344
	st.d	$a0, $sp, 328
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 296
.Ltmp301:
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 296
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp302:
# %bb.3:                                # %.noexc222
	ld.d	$a1, $sp, 296
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 328
	st.d	$a1, $sp, 344
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 336
	stx.b	$zero, $a0, $a1
	ld.d	$a0, $s6, 120
	ld.d	$a1, $s6, 112
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	beq	$a0, $a1, .LBB10_10
# %bb.4:                                # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
.Ltmp304:
	sub.d	$s2, $a0, $a1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
.Ltmp305:
# %bb.5:                                # %.lr.ph.i.i.i.i.i.preheader
	move	$a0, $zero
	srai.d	$a1, $s2, 5
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_6:                               # %.lr.ph.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a4, $a0
	addi.d	$a3, $a2, 16
	stx.d	$a3, $a4, $a0
	st.d	$zero, $a2, 8
	st.b	$zero, $a2, 16
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB10_6
# %bb.7:                                # %.lr.ph.preheader
	move	$a1, $zero
	srai.d	$fp, $a0, 5
	add.d	$a0, $a4, $a0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB10_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 112
	slli.d	$a1, $a1, 5
	ldx.d	$a0, $a0, $a1
	ld.b	$a4, $a0, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a2, $a0, 8
.Ltmp307:
	ori	$a3, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc)
	jirl	$ra, $ra, 0
.Ltmp308:
# %bb.9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit
                                        #   in Loop: Header=BB10_8 Depth=1
	bstrpick.d	$a1, $s1, 31, 0
	addi.w	$s1, $s1, 1
	bltu	$a1, $fp, .LBB10_8
	b	.LBB10_11
.LBB10_10:
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
.LBB10_11:                              # %._crit_edge
.Ltmp310:
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp311:
# %bb.12:
.Ltmp313:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp314:
# %bb.13:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 424
	ld.d	$a2, $sp, 432
.Ltmp315:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp316:
# %bb.14:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	ld.d	$a1, $sp, 424
	ld.d	$a2, $sp, 432
.Ltmp317:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp318:
# %bb.15:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit230
.Ltmp319:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 27
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp320:
# %bb.16:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_270
# %bb.17:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_19
# %bb.18:
	ld.bu	$a0, $s2, 67
	b	.LBB10_21
.LBB10_19:
.Ltmp321:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp322:
# %bb.20:                               # %.noexc502
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp323:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp324:
.LBB10_21:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp325:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp326:
# %bb.22:                               # %.noexc504
.Ltmp327:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp328:
# %bb.23:                               # %_ZNSolsEPFRSoS_E.exit
	ld.d	$a1, $sp, 296
	ld.d	$a2, $sp, 304
.Ltmp329:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp330:
# %bb.24:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit235
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_270
# %bb.25:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i507
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_27
# %bb.26:
	ld.bu	$a0, $s3, 67
	b	.LBB10_29
.LBB10_27:
.Ltmp331:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp332:
# %bb.28:                               # %.noexc512
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp333:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp334:
.LBB10_29:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i509
.Ltmp335:
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp336:
# %bb.30:                               # %.noexc514
.Ltmp337:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp338:
# %bb.31:                               # %_ZNSolsEPFRSoS_E.exit237
.Ltmp339:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp340:
# %bb.32:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239
	ld.d	$a1, $sp, 424
	ld.d	$a2, $sp, 432
.Ltmp341:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp342:
# %bb.33:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit241
	ld.d	$a1, $sp, 424
	ld.d	$a2, $sp, 432
.Ltmp343:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp344:
# %bb.34:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit243
.Ltmp345:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 19
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp346:
# %bb.35:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit245
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_270
# %bb.36:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i518
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_38
# %bb.37:
	ld.bu	$a0, $s2, 67
	b	.LBB10_40
.LBB10_38:
.Ltmp347:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp348:
# %bb.39:                               # %.noexc523
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp349:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp350:
.LBB10_40:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i520
.Ltmp351:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp352:
# %bb.41:                               # %.noexc525
.Ltmp353:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp354:
# %bb.42:                               # %_ZNSolsEPFRSoS_E.exit247
.Ltmp355:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 20
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp356:
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit249
.Ltmp357:
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp358:
# %bb.44:                               # %_ZNSolsEm.exit
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_270
# %bb.45:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i529
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_47
# %bb.46:
	ld.bu	$a0, $s3, 67
	b	.LBB10_49
.LBB10_47:
.Ltmp359:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp360:
# %bb.48:                               # %.noexc534
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp361:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp362:
.LBB10_49:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i531
.Ltmp363:
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp364:
# %bb.50:                               # %.noexc536
.Ltmp365:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp366:
# %bb.51:                               # %_ZNSolsEPFRSoS_E.exit252
.Ltmp367:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	ori	$a2, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp368:
# %bb.52:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit254
	ld.wu	$a1, $s6, 136
.Ltmp369:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp370:
# %bb.53:                               # %_ZNSolsEj.exit
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_270
# %bb.54:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i540
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_56
# %bb.55:
	ld.bu	$a0, $s3, 67
	b	.LBB10_58
.LBB10_56:
.Ltmp371:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp372:
# %bb.57:                               # %.noexc545
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp373:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp374:
.LBB10_58:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i542
.Ltmp375:
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp376:
# %bb.59:                               # %.noexc547
.Ltmp377:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp378:
# %bb.60:                               # %_ZNSolsEPFRSoS_E.exit257
.Ltmp379:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp380:
# %bb.61:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit259
	fld.d	$fa0, $s6, 144
.Ltmp381:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp382:
# %bb.62:                               # %_ZNSolsEd.exit
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_270
# %bb.63:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i551
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_65
# %bb.64:
	ld.bu	$a0, $s3, 67
	b	.LBB10_67
.LBB10_65:
.Ltmp383:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp384:
# %bb.66:                               # %.noexc556
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp385:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp386:
.LBB10_67:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i553
.Ltmp387:
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp388:
# %bb.68:                               # %.noexc558
.Ltmp389:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp390:
# %bb.69:                               # %_ZNSolsEPFRSoS_E.exit262
.Ltmp391:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp392:
# %bb.70:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264.preheader
	sub.d	$a0, $s5, $s4
	srai.d	$a1, $a0, 5
	bstrpick.d	$a0, $a0, 36, 5
	slli.d	$a0, $a0, 5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB10_79
# %bb.71:                               # %.lr.ph762
	move	$fp, $zero
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$s2, $a0, %pc_lo12(.L.str.36)
	ori	$s3, $zero, 3
	b	.LBB10_73
	.p2align	4, , 16
.LBB10_72:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277
                                        #   in Loop: Header=BB10_73 Depth=1
	addi.d	$fp, $fp, 32
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $s1, .LBB10_79
.LBB10_73:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	addi.d	$a2, $sp, 280
	st.d	$a2, $sp, 264
	st.d	$zero, $sp, 272
	addi.d	$s1, $s1, 1
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 5
	st.b	$zero, $sp, 280
	bgeu	$s1, $a1, .LBB10_75
# %bb.74:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB10_73 Depth=1
	ld.b	$a1, $s2, 2
	ld.h	$a2, $s2, 0
	addi.d	$a3, $sp, 280
	st.b	$a1, $a3, 2
	st.h	$a2, $a3, 0
	st.d	$s3, $sp, 272
	st.b	$zero, $sp, 283
.LBB10_75:                              #   in Loop: Header=BB10_73 Depth=1
	add.d	$a2, $a0, $fp
	ldx.d	$a1, $a0, $fp
	ld.d	$a2, $a2, 8
.Ltmp393:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp394:
# %bb.76:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit272
                                        #   in Loop: Header=BB10_73 Depth=1
	ld.d	$a1, $sp, 264
	ld.d	$a2, $sp, 272
.Ltmp395:
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp396:
# %bb.77:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit274
                                        #   in Loop: Header=BB10_73 Depth=1
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	beq	$a0, $a1, .LBB10_72
# %bb.78:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275
                                        #   in Loop: Header=BB10_73 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_72
.LBB10_79:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264._crit_edge
.Ltmp398:
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a2, $zero, 26
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp399:
# %bb.80:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit266
	ld.d	$a1, $s4, 0
	ld.d	$a2, $s4, 8
.Ltmp400:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp401:
# %bb.81:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit282
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_270
# %bb.82:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i562
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_84
# %bb.83:
	ld.bu	$a0, $s3, 67
	b	.LBB10_86
.LBB10_84:
.Ltmp402:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp403:
# %bb.85:                               # %.noexc567
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp404:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp405:
.LBB10_86:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i564
.Ltmp406:
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp407:
# %bb.87:                               # %.noexc569
.Ltmp408:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp409:
# %bb.88:                               # %_ZNSolsEPFRSoS_E.exit284
	ld.d	$a1, $sp, 424
	ld.d	$a2, $sp, 432
.Ltmp410:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp411:
# %bb.89:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit286
	ld.d	$a1, $sp, 424
	ld.d	$a2, $sp, 432
.Ltmp412:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp413:
# %bb.90:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288.preheader
	addi.d	$a0, $sp, 280
	st.d	$a0, $sp, 264
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 232
.Ltmp414:
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 232
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp415:
# %bb.91:                               # %.noexc291
	ld.d	$a1, $sp, 232
	pcalau12i	$a2, %pc_hi20(.L.str.38)
	addi.d	$a2, $a2, %pc_lo12(.L.str.38)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 264
	st.d	$a1, $sp, 280
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 264
	st.d	$a1, $sp, 272
	stx.b	$zero, $a0, $a1
	ld.d	$fp, $sp, 272
.Ltmp417:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 65
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp418:
# %bb.92:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_274
# %bb.93:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i573
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_95
# %bb.94:
	ld.bu	$a0, $s2, 67
	b	.LBB10_97
.LBB10_95:
.Ltmp419:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp420:
# %bb.96:                               # %.noexc578
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp421:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp422:
.LBB10_97:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i575
.Ltmp423:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp424:
# %bb.98:                               # %.noexc580
.Ltmp425:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp426:
# %bb.99:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	addi.w	$s8, $zero, -177
	lu32i.d	$s8, 0
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	slli.d	$a1, $fp, 32
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	add.d	$a3, $a1, $a2
	ld.d	$a1, $sp, 264
	ld.d	$a2, $sp, 272
	add.d	$a0, $s0, $a0
	srai.d	$a3, $a3, 32
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a3, $a0, 16
.Ltmp427:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp428:
# %bb.100:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$fp, $zero, 18
	st.d	$fp, $a0, 16
.Ltmp429:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp430:
# %bb.101:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$fp, $a0, 16
.Ltmp431:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp432:
# %bb.102:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$fp, $zero, 18
	st.d	$fp, $a0, 16
.Ltmp433:
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 14
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp434:
# %bb.103:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$fp, $a0, 16
.Ltmp435:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp436:
# %bb.104:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
.Ltmp437:
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	ori	$a2, $zero, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp438:
# %bb.105:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit323
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_274
# %bb.106:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i584
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_108
# %bb.107:
	ld.bu	$a0, $s2, 67
	b	.LBB10_110
.LBB10_108:
.Ltmp439:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp440:
# %bb.109:                              # %.noexc589
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp441:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp442:
.LBB10_110:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i586
.Ltmp443:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp444:
# %bb.111:                              # %.noexc591
.Ltmp445:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp446:
# %bb.112:                              # %_ZNSolsEPFRSoS_E.exit325
	ld.d	$a1, $sp, 392
	ld.d	$a2, $sp, 400
.Ltmp447:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp448:
# %bb.113:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit327.preheader
	ld.d	$a0, $s6, 48
	ld.d	$s1, $s6, 40
	beq	$a0, $s1, .LBB10_235
# %bb.114:                              # %.lr.ph813
	move	$a1, $s6
	move	$s6, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	addi.d	$a0, $s0, 240
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 24
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 600
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $s0, 16
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$s4, $sp, 184
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 1023
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	b	.LBB10_116
	.p2align	4, , 16
.LBB10_115:                             # %_ZNSt6vectorIeSaIeEED2Ev.exit
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 48
	ld.d	$s1, $a1, 40
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$s6, $a2, 31, 0
	sub.d	$a0, $a0, $s1
	srai.d	$a0, $a0, 5
	bgeu	$s6, $a0, .LBB10_235
.LBB10_116:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_120 Depth 2
                                        #     Child Loop BB10_151 Depth 2
                                        #       Child Loop BB10_155 Depth 3
                                        #       Child Loop BB10_167 Depth 3
                                        #       Child Loop BB10_186 Depth 3
	ld.d	$s3, $a1, 608
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$s3, .LBB10_127
# %bb.117:                              # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s2, $a0, 8
	ld.d	$s5, $a0, 0
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	b	.LBB10_120
	.p2align	4, , 16
.LBB10_118:                             # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_120 Depth=2
	sub.d	$a0, $s7, $s2
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB10_119:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB10_120 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s3, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s3, $s3, $a2
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	beqz	$s3, .LBB10_122
.LBB10_120:                             #   Parent Loop BB10_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s3, 40
	sltu	$a0, $s2, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_118
# %bb.121:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_120 Depth=2
	ld.d	$a0, $s3, 32
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_119
	b	.LBB10_118
	.p2align	4, , 16
.LBB10_122:                             # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $a1
	beq	$fp, $a1, .LBB10_127
# %bb.123:                              #   in Loop: Header=BB10_116 Depth=1
	ld.d	$s3, $fp, 40
	sltu	$a0, $s3, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_125
# %bb.124:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_126
.LBB10_125:                             # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
	sub.d	$a0, $s2, $s3
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB10_126:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $fp, $a0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB10_127:                             #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 280
	mul.d	$a1, $s6, $a1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	add.d	$s2, $a0, $a1
	ld.d	$a0, $s2, 72
	ld.d	$a1, $s2, 64
	beq	$a0, $a1, .LBB10_132
# %bb.128:                              # %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp449:
	sub.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
.Ltmp450:
# %bb.129:                              # %.noexc332
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a1, $s2, 64
	ld.d	$a0, $s2, 72
	sub.d	$a2, $a0, $a1
	blez	$a2, .LBB10_131
# %bb.130:                              #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_131:                             # %_ZNSt6vectorIeSaIeEEC2ERKS1_.exit
                                        #   in Loop: Header=BB10_116 Depth=1
	slli.d	$fp, $s6, 5
	add.d	$a0, $s1, $fp
	ld.d	$a0, $a0, 8
	bnez	$a0, .LBB10_133
	b	.LBB10_233
	.p2align	4, , 16
.LBB10_132:                             #   in Loop: Header=BB10_116 Depth=1
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	slli.d	$fp, $s6, 5
	add.d	$a0, $s1, $fp
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB10_233
.LBB10_133:                             #   in Loop: Header=BB10_116 Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB10_233
# %bb.134:                              #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB10_144
# %bb.135:                              #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s7, $a1, $a0
	beqz	$s7, .LBB10_272
# %bb.136:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i595
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB10_138
# %bb.137:                              #   in Loop: Header=BB10_116 Depth=1
	ld.bu	$a0, $s7, 67
	b	.LBB10_140
.LBB10_138:                             #   in Loop: Header=BB10_116 Depth=1
.Ltmp452:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp453:
# %bb.139:                              # %.noexc600
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp454:
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp455:
.LBB10_140:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i597
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp456:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp457:
# %bb.141:                              # %.noexc602
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp458:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp459:
# %bb.142:                              # %_ZNSolsEPFRSoS_E.exit334
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a1, $sp, 360
	ld.d	$a2, $sp, 368
.Ltmp460:
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp461:
# %bb.143:                              # %_ZNSolsEPFRSoS_E.exit334._crit_edge
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $a0, 40
.LBB10_144:                             #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	ldx.wu	$a1, $s2, $a0
	and	$a1, $a1, $s8
	addi.d	$a1, $a1, 32
	stx.w	$a1, $s2, $a0
	add.d	$a0, $s1, $fp
	ldx.d	$a1, $s1, $fp
	ld.d	$a2, $a0, 8
.Ltmp462:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp463:
# %bb.145:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit340
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp464:
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	ori	$a2, $zero, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp465:
# %bb.146:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit342
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp466:
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp467:
# %bb.147:                              # %_ZNSolsEj.exit344
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp468:
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp469:
# %bb.148:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346.preheader
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB10_233
# %bb.149:                              # %.lr.ph807.preheader
                                        #   in Loop: Header=BB10_116 Depth=1
	move	$a1, $zero
	b	.LBB10_151
	.p2align	4, , 16
.LBB10_150:                             # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit346
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB10_233
.LBB10_151:                             # %.lr.ph807
                                        #   Parent Loop BB10_116 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_155 Depth 3
                                        #       Child Loop BB10_167 Depth 3
                                        #       Child Loop BB10_186 Depth 3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $a0, 608
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$s2, .LBB10_162
# %bb.152:                              # %.lr.ph.i.i.i.i348
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ld.d	$s1, $a1, 8
	ldx.d	$s6, $a0, $a2
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	b	.LBB10_155
	.p2align	4, , 16
.LBB10_153:                             # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i372
                                        #   in Loop: Header=BB10_155 Depth=3
	sub.d	$a0, $s3, $s1
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB10_154:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i354
                                        #   in Loop: Header=BB10_155 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s2, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s2, $s2, $a2
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	beqz	$s2, .LBB10_157
.LBB10_155:                             #   Parent Loop BB10_116 Depth=1
                                        #     Parent Loop BB10_151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s3, $s2, 40
	sltu	$a0, $s1, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s1, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_153
# %bb.156:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i352
                                        #   in Loop: Header=BB10_155 Depth=3
	ld.d	$a0, $s2, 32
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_154
	b	.LBB10_153
	.p2align	4, , 16
.LBB10_157:                             # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i361
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $a1
	beq	$fp, $a1, .LBB10_162
# %bb.158:                              #   in Loop: Header=BB10_151 Depth=2
	ld.d	$s2, $fp, 40
	sltu	$a0, $s2, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_160
# %bb.159:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i363
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a1, $fp, 32
	move	$a0, $s6
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_161
.LBB10_160:                             # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i368
                                        #   in Loop: Header=BB10_151 Depth=2
	sub.d	$a0, $s1, $s2
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB10_161:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i365
                                        #   in Loop: Header=BB10_151 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $fp, $a0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB10_162:                             #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.bu	$a1, $a0, $a1
	beqz	$a1, .LBB10_150
# %bb.163:                              #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$s3, $a0, $a1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_165
# %bb.164:                              #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a1, $sp, 328
	ld.d	$a2, $sp, 336
.Ltmp471:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp472:
	b	.LBB10_182
.LBB10_165:                             # %.preheader
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a0, $s3, 216
	ld.d	$a1, $s3, 208
	beq	$a0, $a1, .LBB10_175
# %bb.166:                              # %.lr.ph770
                                        #   in Loop: Header=BB10_151 Depth=2
	move	$s1, $zero
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB10_167:                             #   Parent Loop BB10_116 Depth=1
                                        #     Parent Loop BB10_151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp473:
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp474:
# %bb.168:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit380
                                        #   in Loop: Header=BB10_167 Depth=3
	slli.d	$a0, $s1, 5
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	ldx.d	$a1, $a1, $a0
	ld.d	$a2, $a2, 8
.Ltmp475:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp476:
# %bb.169:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit382
                                        #   in Loop: Header=BB10_167 Depth=3
.Ltmp477:
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp478:
# %bb.170:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit384
                                        #   in Loop: Header=BB10_167 Depth=3
	ld.d	$a0, $s3, 208
	slli.d	$s1, $s1, 2
	ldx.w	$a1, $a0, $s1
.Ltmp479:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp480:
# %bb.171:                              #   in Loop: Header=BB10_167 Depth=3
.Ltmp481:
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp482:
# %bb.172:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit386
                                        #   in Loop: Header=BB10_167 Depth=3
	ld.d	$a0, $s3, 232
	ldx.w	$a1, $a0, $s1
.Ltmp483:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp484:
# %bb.173:                              #   in Loop: Header=BB10_167 Depth=3
.Ltmp485:
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp486:
# %bb.174:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit388
                                        #   in Loop: Header=BB10_167 Depth=3
	ld.d	$a0, $s3, 216
	ld.d	$a1, $s3, 208
	bstrpick.d	$s1, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	addi.w	$fp, $fp, 1
	bltu	$s1, $a0, .LBB10_167
.LBB10_175:                             # %._crit_edge771
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s6, $a1, $a0
	beqz	$s6, .LBB10_268
# %bb.176:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i606
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB10_178
# %bb.177:                              #   in Loop: Header=BB10_151 Depth=2
	ld.bu	$a0, $s6, 67
	b	.LBB10_180
.LBB10_178:                             #   in Loop: Header=BB10_151 Depth=2
.Ltmp488:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp489:
# %bb.179:                              # %.noexc611
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp490:
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp491:
.LBB10_180:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i608
                                        #   in Loop: Header=BB10_151 Depth=2
.Ltmp492:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp493:
# %bb.181:                              # %.noexc613
                                        #   in Loop: Header=BB10_151 Depth=2
.Ltmp494:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp495:
.LBB10_182:                             # %_ZNSolsEPFRSoS_E.exit378
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a0, $s3, 216
	ld.d	$a1, $s3, 208
	beq	$a0, $a1, .LBB10_150
# %bb.183:                              # %.lr.ph803
                                        #   in Loop: Header=BB10_151 Depth=2
	move	$s1, $zero
	ori	$s2, $zero, 1
	b	.LBB10_186
	.p2align	4, , 16
.LBB10_184:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s3, 216
	ld.d	$a1, $s3, 208
.LBB10_185:                             #   in Loop: Header=BB10_186 Depth=3
	bstrpick.d	$s1, $s2, 31, 0
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	addi.w	$s2, $s2, 1
	bgeu	$s1, $a2, .LBB10_150
.LBB10_186:                             #   Parent Loop BB10_116 Depth=1
                                        #     Parent Loop BB10_151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s3, 40
	slli.d	$a3, $s1, 3
	ldx.d	$a2, $a2, $a3
	beqz	$a2, .LBB10_185
# %bb.187:                              #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ldx.d	$s6, $a0, $a2
	ld.d	$s7, $a1, 8
	st.d	$s4, $sp, 168
	st.d	$zero, $sp, 176
	st.b	$zero, $sp, 184
	addi.d	$a1, $s7, 1
.Ltmp497:
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp498:
# %bb.188:                              #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $sp, 176
	addi.w	$a1, $zero, -2
	lu52i.d	$fp, $a1, 2047
	sub.d	$a0, $fp, $a0
	bltu	$a0, $s7, .LBB10_258
# %bb.189:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp499:
	addi.d	$a0, $sp, 168
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp500:
# %bb.190:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $sp, 176
	beq	$a0, $fp, .LBB10_258
# %bb.191:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp501:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	addi.d	$a0, $sp, 168
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp502:
# %bb.192:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
                                        #   in Loop: Header=BB10_186 Depth=3
	slli.d	$a0, $s1, 5
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a0
	ld.d	$a3, $sp, 176
	ld.d	$a2, $a1, 8
	sub.d	$a1, $fp, $a3
	bltu	$a1, $a2, .LBB10_260
# %bb.193:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp504:
	ldx.d	$a1, $a4, $a0
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp505:
# %bb.194:                              # %.noexc394
                                        #   in Loop: Header=BB10_186 Depth=3
	addi.d	$a3, $sp, 216
	st.d	$a3, $sp, 200
	ld.d	$a1, $a0, 0
	addi.d	$s6, $a0, 16
	beq	$a1, $s6, .LBB10_196
# %bb.195:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 216
	ld.d	$s5, $a0, 8
	st.d	$a1, $sp, 200
	b	.LBB10_197
	.p2align	4, , 16
.LBB10_196:                             # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$s5, $a0, 8
	addi.d	$a2, $s5, 1
	move	$s7, $a0
	move	$a0, $a3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
.LBB10_197:                             #   in Loop: Header=BB10_186 Depth=3
	st.d	$s5, $sp, 208
	st.d	$s6, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$a1, $sp, 208
	st.b	$zero, $a0, 16
	beq	$a1, $fp, .LBB10_262
# %bb.198:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp507:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 200
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp508:
# %bb.199:                              # %.noexc400
                                        #   in Loop: Header=BB10_186 Depth=3
	addi.d	$a3, $sp, 248
	st.d	$a3, $sp, 232
	ld.d	$a1, $a0, 0
	addi.d	$s6, $a0, 16
	beq	$a1, $s6, .LBB10_201
# %bb.200:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 248
	ld.d	$fp, $a0, 8
	st.d	$a1, $sp, 232
	b	.LBB10_202
	.p2align	4, , 16
.LBB10_201:                             # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i398
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$fp, $a0, 8
	addi.d	$a2, $fp, 1
	move	$s5, $a0
	move	$a0, $a3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s5
.LBB10_202:                             #   in Loop: Header=BB10_186 Depth=3
	st.d	$fp, $sp, 240
	st.d	$s6, $a0, 0
	ld.d	$a1, $sp, 200
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	addi.d	$a0, $sp, 216
	beq	$a1, $a0, .LBB10_204
# %bb.203:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401
                                        #   in Loop: Header=BB10_186 Depth=3
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_204:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $sp, 168
	beq	$a0, $s4, .LBB10_206
# %bb.205:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404
                                        #   in Loop: Header=BB10_186 Depth=3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_206:                             #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ldx.w	$a2, $s5, $a1
	ori	$a2, $a2, 1024
	stx.w	$a2, $s5, $a1
	ld.d	$a1, $a0, -24
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ori	$a3, $zero, 10
	stx.d	$a3, $a2, $a1
	ld.d	$a1, $a0, -24
	ldx.wu	$a2, $s5, $a1
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	stx.w	$a2, $s5, $a1
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 232
	ld.d	$a2, $sp, 240
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	stx.d	$a3, $s6, $a0
.Ltmp510:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp511:
# %bb.207:                              #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	ldx.wu	$a2, $s5, $a1
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	stx.w	$a2, $s5, $a1
	ld.d	$a0, $a0, -24
	ori	$a1, $zero, 18
	stx.d	$a1, $s6, $a0
	ld.d	$a0, $s3, 64
	alsl.d	$a2, $s1, $a0, 4
	slli.d	$fp, $s1, 4
	ldx.d	$a1, $a0, $fp
	ld.d	$a2, $a2, 8
.Ltmp512:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp513:
# %bb.208:                              #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	ldx.wu	$a2, $s5, $a1
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	stx.w	$a2, $s5, $a1
	ld.d	$a0, $a0, -24
	ori	$a1, $zero, 18
	stx.d	$a1, $s6, $a0
	ld.d	$a0, $s3, 112
	alsl.d	$a2, $s1, $a0, 4
	ldx.d	$a1, $a0, $fp
	ld.d	$a2, $a2, 8
.Ltmp514:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp515:
# %bb.209:                              #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	ldx.wu	$a2, $s5, $a1
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	stx.w	$a2, $s5, $a1
	ld.d	$a0, $a0, -24
	ori	$a1, $zero, 18
	stx.d	$a1, $s6, $a0
	ld.d	$a0, $s3, 136
	alsl.d	$a2, $s1, $a0, 4
	ldx.d	$a1, $a0, $fp
	ld.d	$a2, $a2, 8
.Ltmp516:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp517:
# %bb.210:                              #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	ldx.wu	$a2, $s5, $a1
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	stx.w	$a2, $s5, $a1
	ld.d	$a0, $a0, -24
	ori	$a1, $zero, 18
	stx.d	$a1, $s6, $a0
	ld.d	$a0, $s3, 88
	alsl.d	$a2, $s1, $a0, 4
	ldx.d	$a1, $a0, $fp
	ld.d	$a2, $a2, 8
.Ltmp518:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp519:
# %bb.211:                              # %_ZNSolsEe.exit425
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_214
# %bb.212:                              #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a1, 4
	ldx.d	$s6, $a1, $fp
	ld.d	$s7, $a0, 8
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_217
# %bb.213:                              #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s3, 64
	alsl.d	$a1, $s1, $a0, 4
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $a1, 8
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$s7, $a1
	b	.LBB10_218
	.p2align	4, , 16
.LBB10_214:                             #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s5, $a1, $a0
	beqz	$s5, .LBB10_266
# %bb.215:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i628
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB10_227
# %bb.216:                              #   in Loop: Header=BB10_186 Depth=3
	ld.bu	$a0, $s5, 67
	b	.LBB10_229
.LBB10_217:                             #   in Loop: Header=BB10_186 Depth=3
	move	$s6, $zero
	move	$s7, $zero
.LBB10_218:                             #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a3, $s0, 0
	ld.d	$a1, $a3, -24
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ldx.wu	$a2, $a4, $a1
	move	$a0, $s0
	move	$s4, $s8
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	stx.w	$a2, $a4, $a1
	ld.d	$a1, $a3, -24
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ori	$a4, $zero, 6
	stx.d	$a4, $a2, $a1
	ld.d	$a1, $a3, -24
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ori	$a3, $zero, 18
	stx.d	$a3, $a2, $a1
.Ltmp520:
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp521:
# %bb.219:                              # %_ZNSolsEe.exit435
                                        #   in Loop: Header=BB10_186 Depth=3
	move	$s8, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s8, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB10_264
# %bb.220:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i617
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB10_222
# %bb.221:                              #   in Loop: Header=BB10_186 Depth=3
	ld.bu	$a0, $s5, 67
	b	.LBB10_224
.LBB10_222:                             #   in Loop: Header=BB10_186 Depth=3
.Ltmp522:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp523:
# %bb.223:                              # %.noexc622
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp524:
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp525:
.LBB10_224:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i619
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp526:
	ext.w.b	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp527:
# %bb.225:                              # %.noexc624
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp528:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp529:
# %bb.226:                              # %_ZNSolsEPFRSoS_E.exit437
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s3, 184
	alsl.d	$a1, $s1, $a0, 4
	stx.d	$s6, $a0, $fp
	st.d	$s7, $a1, 8
	move	$s8, $s4
	addi.d	$s4, $sp, 184
	b	.LBB10_231
.LBB10_227:                             #   in Loop: Header=BB10_186 Depth=3
.Ltmp534:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp535:
# %bb.228:                              # %.noexc633
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp536:
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp537:
.LBB10_229:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i630
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp538:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp539:
# %bb.230:                              # %.noexc635
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp540:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp541:
.LBB10_231:                             # %_ZNSolsEPFRSoS_E.exit439
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 248
	beq	$a0, $a1, .LBB10_184
# %bb.232:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440
                                        #   in Loop: Header=BB10_186 Depth=3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_184
	.p2align	4, , 16
.LBB10_233:                             # %.loopexit690
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB10_115
# %bb.234:                              #   in Loop: Header=BB10_116 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_115
.LBB10_235:                             # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit327._crit_edge
	ld.d	$a1, $sp, 392
	ld.d	$a2, $sp, 400
.Ltmp561:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp562:
# %bb.236:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit329
.Ltmp563:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp564:
# %bb.237:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit449
.Ltmp565:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp566:
# %bb.238:
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	beq	$a0, $a1, .LBB10_240
# %bb.239:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_240:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452
	ld.d	$a0, $sp, 296
	addi.d	$a1, $sp, 312
	beq	$a0, $a1, .LBB10_242
# %bb.241:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_242:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB10_247
# %bb.243:                              # %.lr.ph.i.i.preheader
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB10_245
	.p2align	4, , 16
.LBB10_244:                             # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB10_245 Depth=1
	addi.d	$a1, $fp, 16
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB10_247
.LBB10_245:                             # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	addi.d	$fp, $a1, 16
	beq	$a0, $fp, .LBB10_244
# %bb.246:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB10_245 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_244
.LBB10_247:                             # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_249
# %bb.248:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_249:                             # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	beq	$a0, $a1, .LBB10_251
# %bb.250:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_251:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
	ld.d	$a0, $sp, 360
	addi.d	$a1, $sp, 376
	beq	$a0, $a1, .LBB10_253
# %bb.252:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_253:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	beq	$a0, $a1, .LBB10_255
# %bb.254:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_255:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465
	ld.d	$a0, $sp, 424
	addi.d	$a1, $sp, 440
	beq	$a0, $a1, .LBB10_257
# %bb.256:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_257:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB10_258:                             # %.invoke.i.i
.Ltmp552:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp553:
# %bb.259:                              # %.cont.i.i
.LBB10_260:
.Ltmp549:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp550:
# %bb.261:                              # %.noexc393
.LBB10_262:
.Ltmp546:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp547:
# %bb.263:                              # %.noexc399
.LBB10_264:
.Ltmp531:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp532:
# %bb.265:                              # %.noexc621
.LBB10_266:
.Ltmp543:
	addi.d	$fp, $sp, 248
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp544:
# %bb.267:                              # %.noexc632
.LBB10_268:
.Ltmp555:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp556:
# %bb.269:                              # %.noexc610
.LBB10_270:                             # %.invoke
.Ltmp570:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp571:
# %bb.271:                              # %.cont
.LBB10_272:
.Ltmp558:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp559:
# %bb.273:                              # %.noexc599
.LBB10_274:                             # %.invoke910
.Ltmp567:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp568:
# %bb.275:                              # %.cont911
.LBB10_276:
.Ltmp306:
	move	$s0, $a0
	ld.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	beq	$a0, $a1, .LBB10_321
	b	.LBB10_330
.LBB10_277:
.Ltmp416:
	move	$s0, $a0
	b	.LBB10_316
.LBB10_278:
.Ltmp312:
	move	$s0, $a0
	b	.LBB10_318
.LBB10_279:
.Ltmp303:
	move	$s0, $a0
	ld.d	$a0, $sp, 360
	addi.d	$a1, $sp, 376
	beq	$a0, $a1, .LBB10_322
	b	.LBB10_331
.LBB10_280:
.Ltmp300:
	move	$s0, $a0
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	beq	$a0, $a1, .LBB10_323
	b	.LBB10_332
.LBB10_281:
.Ltmp297:
	move	$s0, $a0
	ld.d	$a0, $sp, 424
	addi.d	$a1, $sp, 440
	beq	$a0, $a1, .LBB10_324
	b	.LBB10_333
.LBB10_282:                             # %.loopexit.split-lp697
.Ltmp560:
	b	.LBB10_307
.LBB10_283:
.Ltmp451:
	b	.LBB10_285
.LBB10_284:
.Ltmp569:
.LBB10_285:                             # %_ZNSt6vectorIeSaIeEED2Ev.exit447
	move	$s0, $a0
	b	.LBB10_314
.LBB10_286:                             # %.thread
.Ltmp309:
	move	$s0, $a0
	b	.LBB10_325
.LBB10_287:                             # %.loopexit.split-lp692
.Ltmp557:
	b	.LBB10_307
.LBB10_288:                             # %.loopexit696
.Ltmp470:
	b	.LBB10_307
.LBB10_289:
.Ltmp397:
	ld.d	$a1, $sp, 264
	move	$s0, $a0
	addi.d	$a0, $sp, 280
	beq	$a1, $a0, .LBB10_316
# %bb.290:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278
	move	$a0, $a1
	b	.LBB10_315
.LBB10_291:
.Ltmp572:
	move	$s0, $a0
	b	.LBB10_316
.LBB10_292:                             # %.loopexit691
.Ltmp496:
	b	.LBB10_307
.LBB10_293:                             # %.loopexit.split-lp681
.Ltmp545:
	move	$s0, $a0
	b	.LBB10_310
.LBB10_294:                             # %.loopexit.split-lp686
.Ltmp533:
	b	.LBB10_309
.LBB10_295:                             # %.loopexit670
.Ltmp506:
	b	.LBB10_304
.LBB10_296:                             # %.loopexit.split-lp676
.Ltmp548:
	b	.LBB10_299
.LBB10_297:                             # %.loopexit.split-lp671
.Ltmp551:
	b	.LBB10_304
.LBB10_298:                             # %.loopexit675
.Ltmp509:
.LBB10_299:
	move	$s0, $a0
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 216
	beq	$a0, $a1, .LBB10_305
# %bb.300:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_305
.LBB10_301:                             # %.loopexit.split-lp
.Ltmp554:
	b	.LBB10_304
.LBB10_302:                             # %.loopexit685
.Ltmp530:
	b	.LBB10_309
.LBB10_303:                             # %.loopexit669
.Ltmp503:
.LBB10_304:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428
	move	$s0, $a0
.LBB10_305:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428
	ld.d	$a0, $sp, 168
	bne	$a0, $s4, .LBB10_311
	b	.LBB10_312
.LBB10_306:
.Ltmp487:
.LBB10_307:
	move	$s0, $a0
	b	.LBB10_312
.LBB10_308:                             # %.loopexit680
.Ltmp542:
.LBB10_309:
	move	$s0, $a0
	addi.d	$fp, $sp, 248
.LBB10_310:
	ld.d	$a0, $sp, 232
	beq	$a0, $fp, .LBB10_312
.LBB10_311:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_312:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB10_314
# %bb.313:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_314:                             # %_ZNSt6vectorIeSaIeEED2Ev.exit447
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	beq	$a0, $a1, .LBB10_316
.LBB10_315:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_316:
	ld.d	$a0, $sp, 296
	addi.d	$a1, $sp, 312
	beq	$a0, $a1, .LBB10_318
# %bb.317:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_318:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB10_325
.LBB10_319:                             # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bnez	$a0, .LBB10_329
# %bb.320:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit486
	ld.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	bne	$a0, $a1, .LBB10_330
.LBB10_321:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489
	ld.d	$a0, $sp, 360
	addi.d	$a1, $sp, 376
	bne	$a0, $a1, .LBB10_331
.LBB10_322:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	bne	$a0, $a1, .LBB10_332
.LBB10_323:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495
	ld.d	$a0, $sp, 424
	addi.d	$a1, $sp, 440
	bne	$a0, $a1, .LBB10_333
.LBB10_324:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_325:                             # %.lr.ph.i.i476.preheader
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB10_327
	.p2align	4, , 16
.LBB10_326:                             # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i479
                                        #   in Loop: Header=BB10_327 Depth=1
	addi.d	$a1, $fp, 16
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB10_319
.LBB10_327:                             # %.lr.ph.i.i476
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	addi.d	$fp, $a1, 16
	beq	$a0, $fp, .LBB10_326
# %bb.328:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i478
                                        #   in Loop: Header=BB10_327 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_326
.LBB10_329:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	beq	$a0, $a1, .LBB10_321
.LBB10_330:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	addi.d	$a1, $sp, 376
	beq	$a0, $a1, .LBB10_322
.LBB10_331:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	beq	$a0, $a1, .LBB10_323
.LBB10_332:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424
	addi.d	$a1, $sp, 440
	beq	$a0, $a1, .LBB10_324
.LBB10_333:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo, .Lfunc_end10-_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp295-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp295
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin4         #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp298-.Ltmp296              #   Call between .Ltmp296 and .Ltmp298
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp299-.Ltmp298              #   Call between .Ltmp298 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin4         #     jumps to .Ltmp300
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin4         #     jumps to .Ltmp303
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp306-.Lfunc_begin4         #     jumps to .Ltmp306
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp308-.Ltmp307              #   Call between .Ltmp307 and .Ltmp308
	.uleb128 .Ltmp309-.Lfunc_begin4         #     jumps to .Ltmp309
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp311-.Ltmp310              #   Call between .Ltmp310 and .Ltmp311
	.uleb128 .Ltmp312-.Lfunc_begin4         #     jumps to .Ltmp312
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp313-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp392-.Ltmp313              #   Call between .Ltmp313 and .Ltmp392
	.uleb128 .Ltmp572-.Lfunc_begin4         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp396-.Ltmp393              #   Call between .Ltmp393 and .Ltmp396
	.uleb128 .Ltmp397-.Lfunc_begin4         #     jumps to .Ltmp397
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp396-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp398-.Ltmp396              #   Call between .Ltmp396 and .Ltmp398
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp413-.Ltmp398              #   Call between .Ltmp398 and .Ltmp413
	.uleb128 .Ltmp572-.Lfunc_begin4         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin4         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp448-.Ltmp417              #   Call between .Ltmp417 and .Ltmp448
	.uleb128 .Ltmp569-.Lfunc_begin4         #     jumps to .Ltmp569
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp448-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp449-.Ltmp448              #   Call between .Ltmp448 and .Ltmp449
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp449-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp450-.Ltmp449              #   Call between .Ltmp449 and .Ltmp450
	.uleb128 .Ltmp451-.Lfunc_begin4         #     jumps to .Ltmp451
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp450-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp452-.Ltmp450              #   Call between .Ltmp450 and .Ltmp452
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp452-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp469-.Ltmp452              #   Call between .Ltmp452 and .Ltmp469
	.uleb128 .Ltmp470-.Lfunc_begin4         #     jumps to .Ltmp470
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp469-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp471-.Ltmp469              #   Call between .Ltmp469 and .Ltmp471
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp472-.Ltmp471              #   Call between .Ltmp471 and .Ltmp472
	.uleb128 .Ltmp496-.Lfunc_begin4         #     jumps to .Ltmp496
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp486-.Ltmp473              #   Call between .Ltmp473 and .Ltmp486
	.uleb128 .Ltmp487-.Lfunc_begin4         #     jumps to .Ltmp487
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp488-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp495-.Ltmp488              #   Call between .Ltmp488 and .Ltmp495
	.uleb128 .Ltmp496-.Lfunc_begin4         #     jumps to .Ltmp496
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp497-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp502-.Ltmp497              #   Call between .Ltmp497 and .Ltmp502
	.uleb128 .Ltmp503-.Lfunc_begin4         #     jumps to .Ltmp503
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp504-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp505-.Ltmp504              #   Call between .Ltmp504 and .Ltmp505
	.uleb128 .Ltmp506-.Lfunc_begin4         #     jumps to .Ltmp506
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp505-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Ltmp507-.Ltmp505              #   Call between .Ltmp505 and .Ltmp507
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin4         # >> Call Site 26 <<
	.uleb128 .Ltmp508-.Ltmp507              #   Call between .Ltmp507 and .Ltmp508
	.uleb128 .Ltmp509-.Lfunc_begin4         #     jumps to .Ltmp509
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp508-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp510-.Ltmp508              #   Call between .Ltmp508 and .Ltmp510
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp510-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp519-.Ltmp510              #   Call between .Ltmp510 and .Ltmp519
	.uleb128 .Ltmp542-.Lfunc_begin4         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp519-.Lfunc_begin4         # >> Call Site 29 <<
	.uleb128 .Ltmp520-.Ltmp519              #   Call between .Ltmp519 and .Ltmp520
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp520-.Lfunc_begin4         # >> Call Site 30 <<
	.uleb128 .Ltmp529-.Ltmp520              #   Call between .Ltmp520 and .Ltmp529
	.uleb128 .Ltmp530-.Lfunc_begin4         #     jumps to .Ltmp530
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp534-.Lfunc_begin4         # >> Call Site 31 <<
	.uleb128 .Ltmp541-.Ltmp534              #   Call between .Ltmp534 and .Ltmp541
	.uleb128 .Ltmp542-.Lfunc_begin4         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp541-.Lfunc_begin4         # >> Call Site 32 <<
	.uleb128 .Ltmp561-.Ltmp541              #   Call between .Ltmp541 and .Ltmp561
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp561-.Lfunc_begin4         # >> Call Site 33 <<
	.uleb128 .Ltmp566-.Ltmp561              #   Call between .Ltmp561 and .Ltmp566
	.uleb128 .Ltmp569-.Lfunc_begin4         #     jumps to .Ltmp569
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp566-.Lfunc_begin4         # >> Call Site 34 <<
	.uleb128 .Ltmp552-.Ltmp566              #   Call between .Ltmp566 and .Ltmp552
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp552-.Lfunc_begin4         # >> Call Site 35 <<
	.uleb128 .Ltmp553-.Ltmp552              #   Call between .Ltmp552 and .Ltmp553
	.uleb128 .Ltmp554-.Lfunc_begin4         #     jumps to .Ltmp554
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin4         # >> Call Site 36 <<
	.uleb128 .Ltmp550-.Ltmp549              #   Call between .Ltmp549 and .Ltmp550
	.uleb128 .Ltmp551-.Lfunc_begin4         #     jumps to .Ltmp551
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp546-.Lfunc_begin4         # >> Call Site 37 <<
	.uleb128 .Ltmp547-.Ltmp546              #   Call between .Ltmp546 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin4         #     jumps to .Ltmp548
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp531-.Lfunc_begin4         # >> Call Site 38 <<
	.uleb128 .Ltmp532-.Ltmp531              #   Call between .Ltmp531 and .Ltmp532
	.uleb128 .Ltmp533-.Lfunc_begin4         #     jumps to .Ltmp533
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin4         # >> Call Site 39 <<
	.uleb128 .Ltmp544-.Ltmp543              #   Call between .Ltmp543 and .Ltmp544
	.uleb128 .Ltmp545-.Lfunc_begin4         #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp555-.Lfunc_begin4         # >> Call Site 40 <<
	.uleb128 .Ltmp556-.Ltmp555              #   Call between .Ltmp555 and .Ltmp556
	.uleb128 .Ltmp557-.Lfunc_begin4         #     jumps to .Ltmp557
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp570-.Lfunc_begin4         # >> Call Site 41 <<
	.uleb128 .Ltmp571-.Ltmp570              #   Call between .Ltmp570 and .Ltmp571
	.uleb128 .Ltmp572-.Lfunc_begin4         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp558-.Lfunc_begin4         # >> Call Site 42 <<
	.uleb128 .Ltmp559-.Ltmp558              #   Call between .Ltmp558 and .Ltmp559
	.uleb128 .Ltmp560-.Lfunc_begin4         #     jumps to .Ltmp560
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp567-.Lfunc_begin4         # >> Call Site 43 <<
	.uleb128 .Ltmp568-.Ltmp567              #   Call between .Ltmp567 and .Ltmp568
	.uleb128 .Ltmp569-.Lfunc_begin4         #     jumps to .Ltmp569
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp568-.Lfunc_begin4         # >> Call Site 44 <<
	.uleb128 .Lfunc_end10-.Ltmp568          #   Call between .Ltmp568 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_ # -- Begin function _Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.p2align	5
	.type	_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_,@function
_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_: # @_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -608
	.cfi_def_cfa_offset 608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a2, $fp, 0
	beq	$a0, $a2, .LBB11_38
# %bb.1:
	ld.d	$s0, $a1, 8
	beqz	$s0, .LBB11_11
# %bb.2:
	ld.d	$s1, $a1, 0
	addi.d	$s2, $sp, 24
	st.d	$s2, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $sp, 24
	addi.d	$a1, $s0, 1
.Ltmp573:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp574:
# %bb.3:
	ld.d	$a0, $sp, 16
	addi.w	$a1, $zero, -2
	lu52i.d	$s3, $a1, 2047
	sub.d	$a0, $s3, $a0
	bltu	$a0, $s0, .LBB11_39
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp575:
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp576:
# %bb.5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB11_39
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp577:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp578:
# %bb.7:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a0, $sp, 16
	addi.w	$a1, $zero, -13
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB11_43
# %bb.8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
.Ltmp579:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp580:
# %bb.9:                                # %.noexc10
	addi.d	$s0, $sp, 536
	st.d	$s0, $sp, 520
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a0, 16
	beq	$a1, $s1, .LBB11_12
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 536
	ld.d	$s3, $a0, 8
	st.d	$a1, $sp, 520
	b	.LBB11_13
.LBB11_11:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a1, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $fp
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	pcaddu18i	$t8, %call36(_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jr	$t8
.LBB11_12:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
	ld.d	$s3, $a0, 8
	addi.d	$a2, $s3, 1
	move	$s4, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
.LBB11_13:
	st.d	$s3, $sp, 528
	st.d	$s1, $a0, 0
	ld.d	$a1, $sp, 8
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	beq	$a1, $s2, .LBB11_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB11_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $sp, 520
.Ltmp581:
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 48
	addi.d	$s1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp582:
# %bb.16:
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB11_26
# %bb.17:
.Ltmp584:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp585:
# %bb.18:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp586:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp587:
# %bb.19:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB11_41
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB11_22
# %bb.21:
	ld.bu	$a0, $s2, 67
	b	.LBB11_24
.LBB11_22:
.Ltmp588:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp589:
# %bb.23:                               # %.noexc31
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp590:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp591:
.LBB11_24:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp592:
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp593:
# %bb.25:                               # %.noexc33
.Ltmp594:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp595:
.LBB11_26:                              # %_ZNSolsEPFRSoS_E.exit
.Ltmp596:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	ori	$a2, $zero, 28
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp597:
# %bb.27:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp598:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp599:
# %bb.28:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB11_41
# %bb.29:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB11_31
# %bb.30:
	ld.bu	$a0, $s2, 67
	b	.LBB11_33
.LBB11_31:
.Ltmp600:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp601:
# %bb.32:                               # %.noexc41
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp602:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp603:
.LBB11_33:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38
.Ltmp604:
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp605:
# %bb.34:                               # %.noexc43
.Ltmp606:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp607:
# %bb.35:                               # %_ZNSolsEPFRSoS_E.exit23
.Ltmp608:
	addi.d	$a1, $sp, 8
	addi.d	$s1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jirl	$ra, $ra, 0
.Ltmp609:
# %bb.36:
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 8
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	stx.d	$a0, $a1, $s1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 520
	beq	$a0, $s0, .LBB11_38
# %bb.37:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB11_38:
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.LBB11_39:                              # %.invoke.i.i
.Ltmp616:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp617:
# %bb.40:                               # %.cont.i.i
.LBB11_41:                              # %.invoke
.Ltmp610:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp611:
# %bb.42:                               # %.cont
.LBB11_43:
.Ltmp613:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp614:
# %bb.44:                               # %.noexc
.LBB11_45:
.Ltmp583:
	move	$fp, $a0
	b	.LBB11_51
.LBB11_46:
.Ltmp615:
	b	.LBB11_48
.LBB11_47:
.Ltmp618:
.LBB11_48:
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	beq	$a1, $s2, .LBB11_53
# %bb.49:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	move	$a0, $a1
	b	.LBB11_52
.LBB11_50:
.Ltmp612:
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB11_51:
	ld.d	$a0, $sp, 520
	beq	$a0, $s0, .LBB11_53
.LBB11_52:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB11_53:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_, .Lfunc_end11-_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp573-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp578-.Ltmp573              #   Call between .Ltmp573 and .Ltmp578
	.uleb128 .Ltmp618-.Lfunc_begin5         #     jumps to .Ltmp618
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp579-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp580-.Ltmp579              #   Call between .Ltmp579 and .Ltmp580
	.uleb128 .Ltmp615-.Lfunc_begin5         #     jumps to .Ltmp615
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp581-.Ltmp580              #   Call between .Ltmp580 and .Ltmp581
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp581-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp582-.Ltmp581              #   Call between .Ltmp581 and .Ltmp582
	.uleb128 .Ltmp583-.Lfunc_begin5         #     jumps to .Ltmp583
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp584-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp609-.Ltmp584              #   Call between .Ltmp584 and .Ltmp609
	.uleb128 .Ltmp612-.Lfunc_begin5         #     jumps to .Ltmp612
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp609-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp616-.Ltmp609              #   Call between .Ltmp609 and .Ltmp616
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp616-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp617-.Ltmp616              #   Call between .Ltmp616 and .Ltmp617
	.uleb128 .Ltmp618-.Lfunc_begin5         #     jumps to .Ltmp618
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp610-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp611-.Ltmp610              #   Call between .Ltmp610 and .Ltmp611
	.uleb128 .Ltmp612-.Lfunc_begin5         #     jumps to .Ltmp612
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp613-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp614-.Ltmp613              #   Call between .Ltmp613 and .Ltmp614
	.uleb128 .Ltmp615-.Lfunc_begin5         #     jumps to .Ltmp615
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp614-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Lfunc_end11-.Ltmp614          #   Call between .Ltmp614 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.type	_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo,@function
_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo: # @_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:                                # %.noexc.i
	addi.d	$sp, $sp, -528
	.cfi_def_cfa_offset 528
	st.d	$ra, $sp, 520                   # 8-byte Folded Spill
	st.d	$fp, $sp, 512                   # 8-byte Folded Spill
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	st.d	$s7, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 440                   # 8-byte Folded Spill
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
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s5, $a1, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$s1, $a0, 8
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s4, $a0, 0
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 108
	st.d	$a0, $sp, 376
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 376
	move	$fp, $a0
	st.d	$a0, $sp, 408
	st.d	$s0, $sp, 424
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 108
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 416
	stx.b	$zero, $fp, $s0
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 109
	st.d	$a0, $sp, 344
.Ltmp619:
	addi.d	$a0, $sp, 376
	addi.d	$a1, $sp, 344
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp620:
# %bb.1:                                # %.noexc146
	move	$fp, $a0
	ld.d	$s0, $sp, 344
	st.d	$a0, $sp, 376
	st.d	$s0, $sp, 392
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 109
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 384
	stx.b	$zero, $fp, $s0
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 344
	ori	$a0, $zero, 56
	st.d	$a0, $sp, 312
.Ltmp622:
	addi.d	$a0, $sp, 344
	addi.d	$a1, $sp, 312
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp623:
# %bb.2:                                # %.noexc150
	ld.d	$a1, $sp, 312
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 344
	st.d	$a1, $sp, 360
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	vst	$vr0, $a0, 40
	st.d	$a1, $sp, 352
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 328
	st.d	$a0, $sp, 312
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 280
.Ltmp625:
	addi.d	$a0, $sp, 312
	addi.d	$a1, $sp, 280
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp626:
# %bb.3:                                # %.noexc154
	ld.d	$a1, $sp, 280
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 312
	st.d	$a1, $sp, 328
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 320
	stx.b	$zero, $a0, $a1
	ld.d	$fp, $s5, 120
	ld.d	$s0, $s5, 112
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	beq	$fp, $s0, .LBB12_10
# %bb.4:                                # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
.Ltmp628:
	sub.d	$s2, $fp, $s0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp629:
# %bb.5:                                # %.lr.ph.i.i.i.i.i.preheader
	move	$s8, $a0
	move	$a0, $zero
	srai.d	$a1, $s2, 5
	.p2align	4, , 16
.LBB12_6:                               # %.lr.ph.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s8, $a0
	addi.d	$a3, $a2, 16
	stx.d	$a3, $s8, $a0
	st.d	$zero, $a2, 8
	st.b	$zero, $a2, 16
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB12_6
# %bb.7:                                # %.lr.ph.preheader
	move	$a1, $zero
	srai.d	$fp, $a0, 5
	add.d	$s7, $s8, $a0
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB12_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 112
	slli.d	$a1, $a1, 5
	ldx.d	$a0, $a0, $a1
	ld.b	$a4, $a0, 0
	add.d	$a0, $s8, $a1
	ld.d	$a2, $a0, 8
.Ltmp631:
	ori	$a3, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc)
	jirl	$ra, $ra, 0
.Ltmp632:
# %bb.9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit
                                        #   in Loop: Header=BB12_8 Depth=1
	bstrpick.d	$a1, $s0, 31, 0
	addi.w	$s0, $s0, 1
	bltu	$a1, $fp, .LBB12_8
	b	.LBB12_11
.LBB12_10:
	move	$s7, $zero
	move	$s8, $zero
.LBB12_11:                              # %._crit_edge
.Ltmp634:
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp635:
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
# %bb.12:
.Ltmp637:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp638:
# %bb.13:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp639:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp640:
# %bb.14:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp641:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp642:
# %bb.15:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit162
.Ltmp643:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 27
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp644:
# %bb.16:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB12_197
# %bb.17:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB12_19
# %bb.18:
	ld.bu	$a0, $s2, 67
	b	.LBB12_21
.LBB12_19:
.Ltmp645:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp646:
# %bb.20:                               # %.noexc349
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp647:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp648:
.LBB12_21:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp649:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp650:
# %bb.22:                               # %.noexc351
.Ltmp651:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp652:
# %bb.23:                               # %_ZNSolsEPFRSoS_E.exit
	ld.d	$a1, $sp, 280
	ld.d	$a2, $sp, 288
.Ltmp653:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp654:
# %bb.24:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit167
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB12_197
# %bb.25:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i354
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB12_27
# %bb.26:
	ld.bu	$a0, $s3, 67
	b	.LBB12_29
.LBB12_27:
.Ltmp655:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp656:
# %bb.28:                               # %.noexc359
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp657:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp658:
.LBB12_29:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i356
.Ltmp659:
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp660:
# %bb.30:                               # %.noexc361
.Ltmp661:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp662:
# %bb.31:                               # %_ZNSolsEPFRSoS_E.exit169
.Ltmp663:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp664:
# %bb.32:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp665:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp666:
# %bb.33:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit173
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp667:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp668:
# %bb.34:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit175.preheader
	addi.d	$a0, $sp, 264
	st.d	$a0, $sp, 248
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 216
.Ltmp669:
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 216
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp670:
# %bb.35:                               # %.noexc178
	ld.d	$a1, $sp, 216
	pcalau12i	$a2, %pc_hi20(.L.str.54)
	addi.d	$a2, $a2, %pc_lo12(.L.str.54)
	vld	$vr0, $a2, 0
	ld.b	$a2, $a2, 16
	st.d	$a0, $sp, 248
	st.d	$a1, $sp, 264
	vst	$vr0, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 248
	st.d	$a1, $sp, 256
	stx.b	$zero, $a0, $a1
	ld.d	$fp, $sp, 256
.Ltmp672:
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp673:
# %bb.36:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB12_199
# %bb.37:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i365
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB12_39
# %bb.38:
	ld.bu	$a0, $s2, 67
	b	.LBB12_41
.LBB12_39:
.Ltmp674:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp675:
# %bb.40:                               # %.noexc370
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp676:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp677:
.LBB12_41:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i367
.Ltmp678:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp679:
# %bb.42:                               # %.noexc372
.Ltmp680:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp681:
# %bb.43:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	addi.w	$a3, $zero, -177
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	slli.d	$a1, $fp, 32
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	add.d	$a3, $a1, $a2
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
	add.d	$a0, $s0, $a0
	srai.d	$a3, $a3, 32
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $a0, 16
.Ltmp682:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp683:
# %bb.44:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$fp, $zero, 40
	st.d	$fp, $a0, 16
.Ltmp684:
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp685:
# %bb.45:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$fp, $a0, 16
.Ltmp686:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp687:
# %bb.46:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB12_199
# %bb.47:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i376
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB12_49
# %bb.48:
	ld.bu	$a0, $s2, 67
	b	.LBB12_51
.LBB12_49:
.Ltmp688:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp689:
# %bb.50:                               # %.noexc381
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp690:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp691:
.LBB12_51:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i378
.Ltmp692:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp693:
# %bb.52:                               # %.noexc383
.Ltmp694:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp695:
# %bb.53:                               # %_ZNSolsEPFRSoS_E.exit197
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 384
.Ltmp696:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp697:
# %bb.54:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199.preheader
	ld.d	$a0, $s5, 48
	ld.d	$fp, $s5, 40
	beq	$a0, $fp, .LBB12_160
# %bb.55:                               # %.lr.ph578
	move	$a3, $s5
	move	$s5, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	sub.d	$a0, $s1, $s4
	srai.d	$a1, $a0, 5
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a4, $a2, 240
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s1, $a2, 24
	addi.d	$a4, $a3, 600
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 36, 5
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a2, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a2, 16
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$s4, $a0, 4095
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	b	.LBB12_57
	.p2align	4, , 16
.LBB12_56:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 48
	ld.d	$fp, $a3, 40
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$s5, $a1, 31, 0
	sub.d	$a0, $a0, $fp
	srai.d	$a0, $a0, 5
	bgeu	$s5, $a0, .LBB12_160
.LBB12_57:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_61 Depth 2
                                        #     Child Loop BB12_92 Depth 2
                                        #       Child Loop BB12_96 Depth 3
                                        #       Child Loop BB12_117 Depth 3
	ld.d	$s6, $a3, 608
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$s6, .LBB12_68
# %bb.58:                               # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s3, $a0, 8
	ld.d	$s2, $a0, 0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	b	.LBB12_61
	.p2align	4, , 16
.LBB12_59:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_61 Depth=2
	sub.d	$a0, $s8, $s3
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB12_60:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB12_61 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s6, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s6, $s6, $a2
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a1
	beqz	$s6, .LBB12_63
.LBB12_61:                              #   Parent Loop BB12_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s6, 40
	sltu	$a0, $s3, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_59
# %bb.62:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_61 Depth=2
	ld.d	$a0, $s6, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_60
	b	.LBB12_59
	.p2align	4, , 16
.LBB12_63:                              # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $a1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	beq	$s0, $a1, .LBB12_68
# %bb.64:                               #   in Loop: Header=BB12_57 Depth=1
	ld.d	$s6, $s0, 40
	sltu	$a0, $s6, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_66
# %bb.65:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a1, $s0, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_67
.LBB12_66:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
	sub.d	$a0, $s3, $s6
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB12_67:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s0, $a0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB12_68:                              #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 280
	mul.d	$a1, $s5, $a1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	add.d	$s2, $a0, $a1
	ld.d	$a0, $s2, 264
	ld.d	$a1, $s2, 256
	beq	$a0, $a1, .LBB12_73
# %bb.69:                               # %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp698:
	sub.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
.Ltmp699:
# %bb.70:                               # %.noexc204
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a1, $s2, 256
	ld.d	$a0, $s2, 264
	sub.d	$a2, $a0, $a1
	blez	$a2, .LBB12_72
# %bb.71:                               #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB12_72:                              # %_ZNSt6vectorIeSaIeEEC2ERKS1_.exit
                                        #   in Loop: Header=BB12_57 Depth=1
	slli.d	$s0, $s5, 5
	add.d	$a0, $fp, $s0
	ld.d	$a0, $a0, 8
	bnez	$a0, .LBB12_74
	b	.LBB12_158
	.p2align	4, , 16
.LBB12_73:                              #   in Loop: Header=BB12_57 Depth=1
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	slli.d	$s0, $s5, 5
	add.d	$a0, $fp, $s0
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB12_158
.LBB12_74:                              #   in Loop: Header=BB12_57 Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB12_158
# %bb.75:                               #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB12_85
# %bb.76:                               #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s6, $a1, $a0
	beqz	$s6, .LBB12_195
# %bb.77:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i387
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB12_79
# %bb.78:                               #   in Loop: Header=BB12_57 Depth=1
	ld.bu	$a0, $s6, 67
	b	.LBB12_81
.LBB12_79:                              #   in Loop: Header=BB12_57 Depth=1
.Ltmp701:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp702:
# %bb.80:                               # %.noexc392
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp703:
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp704:
.LBB12_81:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i389
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp705:
	ext.w.b	$a1, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp706:
# %bb.82:                               # %.noexc394
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp707:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp708:
# %bb.83:                               # %_ZNSolsEPFRSoS_E.exit206
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a1, $sp, 344
	ld.d	$a2, $sp, 352
.Ltmp709:
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp710:
# %bb.84:                               # %_ZNSolsEPFRSoS_E.exit206._crit_edge
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $a0, 40
.LBB12_85:                              #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, -24
	ldx.wu	$a1, $s1, $a2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	and	$a1, $a1, $a3
	addi.d	$a1, $a1, 32
	stx.w	$a1, $s1, $a2
	add.d	$a2, $fp, $s0
	ldx.d	$a1, $fp, $s0
	ld.d	$a2, $a2, 8
.Ltmp711:
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp712:
# %bb.86:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit212
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp713:
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	ori	$a2, $zero, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp714:
# %bb.87:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp715:
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp716:
# %bb.88:                               # %_ZNSolsEj.exit
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp717:
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp718:
# %bb.89:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217.preheader
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB12_158
# %bb.90:                               # %.lr.ph572.preheader
                                        #   in Loop: Header=BB12_57 Depth=1
	move	$a1, $zero
	b	.LBB12_92
	.p2align	4, , 16
.LBB12_91:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB12_158
.LBB12_92:                              # %.lr.ph572
                                        #   Parent Loop BB12_57 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_96 Depth 3
                                        #       Child Loop BB12_117 Depth 3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $a0, 608
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$s2, .LBB12_103
# %bb.93:                               # %.lr.ph.i.i.i.i219
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ld.d	$s0, $a1, 8
	ldx.d	$s5, $a0, $a2
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	b	.LBB12_96
	.p2align	4, , 16
.LBB12_94:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i243
                                        #   in Loop: Header=BB12_96 Depth=3
	sub.d	$a0, $s3, $s0
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB12_95:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i225
                                        #   in Loop: Header=BB12_96 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s2, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s2, $s2, $a2
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	beqz	$s2, .LBB12_98
.LBB12_96:                              #   Parent Loop BB12_57 Depth=1
                                        #     Parent Loop BB12_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s3, $s2, 40
	sltu	$a0, $s0, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_94
# %bb.97:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i223
                                        #   in Loop: Header=BB12_96 Depth=3
	ld.d	$a0, $s2, 32
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_95
	b	.LBB12_94
	.p2align	4, , 16
.LBB12_98:                              # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i232
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $a1
	beq	$fp, $a1, .LBB12_103
# %bb.99:                               #   in Loop: Header=BB12_92 Depth=2
	ld.d	$s2, $fp, 40
	sltu	$a0, $s2, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_101
# %bb.100:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i234
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a1, $fp, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_102
.LBB12_101:                             # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i239
                                        #   in Loop: Header=BB12_92 Depth=2
	sub.d	$a0, $s0, $s2
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB12_102:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i236
                                        #   in Loop: Header=BB12_92 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $fp, $a0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB12_103:                             #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a0, $a0, 64
	ld.d	$fp, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.bu	$a0, $fp, $a0
	beqz	$a0, .LBB12_91
# %bb.104:                              #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_106
# %bb.105:                              #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a1, $sp, 312
	ld.d	$a2, $sp, 320
.Ltmp720:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp721:
	b	.LBB12_113
.LBB12_106:                             #   in Loop: Header=BB12_92 Depth=2
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s5, $a1, $a0
	beqz	$s5, .LBB12_193
# %bb.107:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i398
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB12_109
# %bb.108:                              #   in Loop: Header=BB12_92 Depth=2
	ld.bu	$a0, $s5, 67
	b	.LBB12_111
.LBB12_109:                             #   in Loop: Header=BB12_92 Depth=2
.Ltmp722:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp723:
# %bb.110:                              # %.noexc403
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp724:
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp725:
.LBB12_111:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i400
                                        #   in Loop: Header=BB12_92 Depth=2
.Ltmp726:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp727:
# %bb.112:                              # %.noexc405
                                        #   in Loop: Header=BB12_92 Depth=2
.Ltmp728:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp729:
.LBB12_113:                             # %_ZNSolsEPFRSoS_E.exit249
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$s3, $fp, $a0
	ld.d	$a0, $s3, 216
	ld.d	$a1, $s3, 208
	beq	$a0, $a1, .LBB12_91
# %bb.114:                              # %.lr.ph568
                                        #   in Loop: Header=BB12_92 Depth=2
	move	$s0, $zero
	ori	$fp, $zero, 1
	b	.LBB12_117
	.p2align	4, , 16
.LBB12_115:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $s3, 216
	ld.d	$a1, $s3, 208
.LBB12_116:                             #   in Loop: Header=BB12_117 Depth=3
	bstrpick.d	$s0, $fp, 31, 0
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	addi.w	$fp, $fp, 1
	bgeu	$s0, $a2, .LBB12_91
.LBB12_117:                             #   Parent Loop BB12_57 Depth=1
                                        #     Parent Loop BB12_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s3, 40
	slli.d	$a3, $s0, 3
	ldx.d	$a2, $a2, $a3
	beqz	$a2, .LBB12_116
# %bb.118:                              #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ldx.d	$s5, $a0, $a2
	ld.d	$s6, $a1, 8
	addi.d	$a0, $sp, 168
	st.d	$a0, $sp, 152
	st.d	$zero, $sp, 160
	st.b	$zero, $sp, 168
	addi.d	$a1, $s6, 1
.Ltmp731:
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp732:
# %bb.119:                              #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 160
	addi.w	$a1, $zero, -2
	lu52i.d	$s2, $a1, 2047
	sub.d	$a0, $s2, $a0
	bltu	$a0, $s6, .LBB12_183
# %bb.120:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp733:
	addi.d	$a0, $sp, 152
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp734:
# %bb.121:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 160
	beq	$a0, $s2, .LBB12_183
# %bb.122:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp735:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp736:
# %bb.123:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
                                        #   in Loop: Header=BB12_117 Depth=3
	slli.d	$a0, $s0, 5
	add.d	$a1, $s8, $a0
	ld.d	$a3, $sp, 160
	ld.d	$a2, $a1, 8
	sub.d	$a1, $s2, $a3
	bltu	$a1, $a2, .LBB12_185
# %bb.124:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp738:
	ldx.d	$a1, $s8, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp739:
# %bb.125:                              # %.noexc253
                                        #   in Loop: Header=BB12_117 Depth=3
	addi.d	$a3, $sp, 200
	st.d	$a3, $sp, 184
	ld.d	$a1, $a0, 0
	addi.d	$s5, $a0, 16
	beq	$a1, $s5, .LBB12_127
# %bb.126:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 200
	ld.d	$s6, $a0, 8
	st.d	$a1, $sp, 184
	b	.LBB12_128
	.p2align	4, , 16
.LBB12_127:                             # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$s6, $a0, 8
	addi.d	$a2, $s6, 1
	move	$s8, $a0
	move	$a0, $a3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
.LBB12_128:                             #   in Loop: Header=BB12_117 Depth=3
	st.d	$s6, $sp, 192
	st.d	$s5, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$a1, $sp, 192
	st.b	$zero, $a0, 16
	beq	$a1, $s2, .LBB12_187
# %bb.129:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp741:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 184
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp742:
# %bb.130:                              # %.noexc259
                                        #   in Loop: Header=BB12_117 Depth=3
	addi.d	$a3, $sp, 232
	st.d	$a3, $sp, 216
	ld.d	$a1, $a0, 0
	addi.d	$s5, $a0, 16
	beq	$a1, $s5, .LBB12_132
# %bb.131:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 232
	ld.d	$s2, $a0, 8
	st.d	$a1, $sp, 216
	b	.LBB12_133
	.p2align	4, , 16
.LBB12_132:                             # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i257
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$s2, $a0, 8
	addi.d	$a2, $s2, 1
	move	$s6, $a0
	move	$a0, $a3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
.LBB12_133:                             #   in Loop: Header=BB12_117 Depth=3
	st.d	$s2, $sp, 224
	st.d	$s5, $a0, 0
	ld.d	$a1, $sp, 184
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	addi.d	$a0, $sp, 200
	beq	$a1, $a0, .LBB12_135
# %bb.134:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
                                        #   in Loop: Header=BB12_117 Depth=3
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_135:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB12_137
# %bb.136:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
                                        #   in Loop: Header=BB12_117 Depth=3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_137:                             #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$a1, $a3, -24
	ldx.w	$a2, $s1, $a1
	ori	$a2, $a2, 1024
	stx.w	$a2, $s1, $a1
	ld.d	$a1, $a3, -24
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ori	$a4, $zero, 32
	stx.d	$a4, $a2, $a1
	ld.d	$a1, $a3, -24
	ldx.wu	$a2, $s1, $a1
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	and	$a2, $a2, $a4
	addi.d	$a2, $a2, 32
	stx.w	$a2, $s1, $a1
	ld.d	$a3, $a3, -24
	ld.d	$a1, $sp, 216
	ld.d	$a2, $sp, 224
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	stx.d	$a4, $a5, $a3
.Ltmp744:
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp745:
# %bb.138:                              #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$a1, $a3, -24
	ldx.wu	$a2, $s1, $a1
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	and	$a2, $a2, $a4
	addi.d	$a2, $a2, 128
	stx.w	$a2, $s1, $a1
	ld.d	$a1, $a3, -24
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ori	$a3, $zero, 40
	stx.d	$a3, $a2, $a1
	ld.d	$a1, $s3, 256
	alsl.d	$a2, $s0, $a1, 4
	slli.d	$s2, $s0, 4
	ldx.d	$a1, $a1, $s2
	ld.d	$a2, $a2, 8
.Ltmp746:
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp747:
# %bb.139:                              # %_ZNSolsEe.exit
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_144
# %bb.140:                              #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $s3, 256
	alsl.d	$a1, $s0, $a0, 4
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $a1, 8
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a3, $s0, $a2, 4
	ldx.d	$a2, $a2, $s2
	ld.d	$a3, $a3, 8
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a5, 0
	ld.d	$a3, $a2, -24
	ldx.wu	$a4, $s1, $a3
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	and	$a4, $a4, $a6
	addi.d	$a4, $a4, 128
	stx.w	$a4, $s1, $a3
	ld.d	$a2, $a2, -24
	move	$a3, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ori	$a4, $zero, 40
	stx.d	$a4, $a0, $a2
	bstrpick.d	$a2, $a1, 62, 0
.Ltmp748:
	move	$a0, $a5
	move	$a1, $a3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp749:
# %bb.141:                              # %_ZNSolsEe.exit276
                                        #   in Loop: Header=BB12_117 Depth=3
	move	$s5, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s5, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB12_189
# %bb.142:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i409
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB12_147
# %bb.143:                              #   in Loop: Header=BB12_117 Depth=3
	ld.bu	$a0, $s6, 67
	b	.LBB12_149
	.p2align	4, , 16
.LBB12_144:                             #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 0
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s5, $a1, $a0
	beqz	$s5, .LBB12_191
# %bb.145:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i420
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB12_151
# %bb.146:                              #   in Loop: Header=BB12_117 Depth=3
	ld.bu	$a0, $s5, 67
	b	.LBB12_154
.LBB12_147:                             #   in Loop: Header=BB12_117 Depth=3
.Ltmp750:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp751:
# %bb.148:                              # %.noexc414
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp752:
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp753:
.LBB12_149:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i411
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp754:
	ext.w.b	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp755:
# %bb.150:                              # %.noexc416
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp756:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp757:
	b	.LBB12_156
.LBB12_151:                             #   in Loop: Header=BB12_117 Depth=3
.Ltmp762:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp763:
# %bb.152:                              # %.noexc425
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp764:
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp765:
# %bb.153:                              #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
.LBB12_154:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i422
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp766:
	ext.w.b	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp767:
# %bb.155:                              # %.noexc427
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp768:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp769:
.LBB12_156:                             # %_ZNSolsEPFRSoS_E.exit278
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB12_115
# %bb.157:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287
                                        #   in Loop: Header=BB12_117 Depth=3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_115
	.p2align	4, , 16
.LBB12_158:                             # %.loopexit478
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB12_56
# %bb.159:                              #   in Loop: Header=BB12_57 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_56
.LBB12_160:                             # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199._crit_edge
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 384
.Ltmp789:
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp790:
# %bb.161:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201
.Ltmp791:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp792:
# %bb.162:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296
.Ltmp793:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp794:
# %bb.163:
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB12_165
# %bb.164:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_165:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB12_167
# %bb.166:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_167:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB12_172
# %bb.168:                              # %.lr.ph.i.i.preheader
	move	$a1, $s8
	b	.LBB12_170
	.p2align	4, , 16
.LBB12_169:                             # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB12_170 Depth=1
	addi.d	$a1, $fp, 16
	beq	$a1, $s7, .LBB12_172
.LBB12_170:                             # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	addi.d	$fp, $a1, 16
	beq	$a0, $fp, .LBB12_169
# %bb.171:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB12_170 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_169
.LBB12_172:                             # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
	beqz	$s8, .LBB12_174
# %bb.173:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_174:                             # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB12_176
# %bb.175:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_176:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB12_178
# %bb.177:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_178:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB12_180
# %bb.179:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_180:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB12_182
# %bb.181:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_182:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 520                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 528
	ret
.LBB12_183:                             # %.invoke.i.i
.Ltmp780:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp781:
# %bb.184:                              # %.cont.i.i
.LBB12_185:
.Ltmp777:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp778:
# %bb.186:                              # %.noexc252
.LBB12_187:
.Ltmp774:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp775:
# %bb.188:                              # %.noexc258
.LBB12_189:
.Ltmp759:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp760:
# %bb.190:                              # %.noexc413
.LBB12_191:
.Ltmp771:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp772:
# %bb.192:                              # %.noexc424
.LBB12_193:
.Ltmp783:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp784:
# %bb.194:                              # %.noexc402
.LBB12_195:
.Ltmp786:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp787:
# %bb.196:                              # %.noexc391
.LBB12_197:                             # %.invoke
.Ltmp798:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp799:
# %bb.198:                              # %.cont
.LBB12_199:                             # %.invoke665
.Ltmp795:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp796:
# %bb.200:                              # %.cont666
.LBB12_201:
.Ltmp630:
	move	$s0, $a0
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB12_241
	b	.LBB12_250
.LBB12_202:
.Ltmp671:
	move	$s0, $a0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB12_235
	b	.LBB12_238
.LBB12_203:
.Ltmp636:
	move	$s0, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB12_239
	b	.LBB12_245
.LBB12_204:
.Ltmp627:
	move	$s0, $a0
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB12_242
	b	.LBB12_251
.LBB12_205:
.Ltmp624:
	move	$s0, $a0
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB12_243
	b	.LBB12_252
.LBB12_206:
.Ltmp621:
	move	$s0, $a0
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB12_244
	b	.LBB12_253
.LBB12_207:                             # %.loopexit.split-lp485
.Ltmp788:
	b	.LBB12_214
.LBB12_208:
.Ltmp700:
	b	.LBB12_210
.LBB12_209:
.Ltmp797:
.LBB12_210:                             # %_ZNSt6vectorIeSaIeEED2Ev.exit294
	move	$s0, $a0
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB12_234
	b	.LBB12_237
.LBB12_211:
.Ltmp800:
	move	$s0, $a0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB12_235
	b	.LBB12_238
.LBB12_212:                             # %.thread
.Ltmp633:
	move	$s0, $a0
	b	.LBB12_245
.LBB12_213:                             # %.loopexit.split-lp480
.Ltmp785:
.LBB12_214:
	move	$s0, $a0
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	b	.LBB12_232
.LBB12_215:                             # %.loopexit484
.Ltmp719:
	b	.LBB12_217
.LBB12_216:                             # %.loopexit479
.Ltmp730:
.LBB12_217:
	move	$s0, $a0
	b	.LBB12_232
.LBB12_218:                             # %.loopexit.split-lp469
.Ltmp773:
	b	.LBB12_255
.LBB12_219:                             # %.loopexit.split-lp474
.Ltmp761:
	b	.LBB12_255
.LBB12_220:                             # %.loopexit463
.Ltmp743:
	b	.LBB12_222
.LBB12_221:                             # %.loopexit.split-lp464
.Ltmp776:
.LBB12_222:
	move	$s0, $a0
	addi.d	$a1, $sp, 200
	ld.d	$a0, $sp, 184
	beq	$a0, $a1, .LBB12_230
# %bb.223:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_230
.LBB12_224:                             # %.loopexit.split-lp459
.Ltmp779:
	b	.LBB12_229
.LBB12_225:                             # %.loopexit458
.Ltmp740:
	b	.LBB12_229
.LBB12_226:                             # %.loopexit.split-lp
.Ltmp782:
	b	.LBB12_229
.LBB12_227:                             # %.loopexit473
.Ltmp758:
	b	.LBB12_255
.LBB12_228:                             # %.loopexit457
.Ltmp737:
.LBB12_229:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
	move	$s0, $a0
.LBB12_230:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB12_232
.LBB12_231:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_232:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB12_236
# %bb.233:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit294
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	bne	$a0, $a1, .LBB12_237
.LBB12_234:
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	bne	$a0, $a1, .LBB12_238
.LBB12_235:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB12_239
	b	.LBB12_245
.LBB12_236:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB12_234
.LBB12_237:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB12_235
.LBB12_238:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB12_245
.LBB12_239:                             # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i330
	bnez	$s8, .LBB12_249
# %bb.240:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit333
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	bne	$a0, $a1, .LBB12_250
.LBB12_241:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	bne	$a0, $a1, .LBB12_251
.LBB12_242:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	bne	$a0, $a1, .LBB12_252
.LBB12_243:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	bne	$a0, $a1, .LBB12_253
.LBB12_244:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_245:                             # %.lr.ph.i.i323.preheader
	move	$a1, $s8
	b	.LBB12_247
	.p2align	4, , 16
.LBB12_246:                             # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i326
                                        #   in Loop: Header=BB12_247 Depth=1
	addi.d	$a1, $fp, 16
	beq	$a1, $s7, .LBB12_239
.LBB12_247:                             # %.lr.ph.i.i323
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	addi.d	$fp, $a1, 16
	beq	$a0, $fp, .LBB12_246
# %bb.248:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i325
                                        #   in Loop: Header=BB12_247 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_246
.LBB12_249:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB12_241
.LBB12_250:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB12_242
.LBB12_251:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB12_243
.LBB12_252:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB12_244
.LBB12_253:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_254:                             # %.loopexit468
.Ltmp770:
.LBB12_255:
	move	$s0, $a0
	addi.d	$a1, $sp, 232
	ld.d	$a0, $sp, 216
	beq	$a0, $a1, .LBB12_232
	b	.LBB12_231
.Lfunc_end12:
	.size	_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo, .Lfunc_end12-_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp619-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp619
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp619-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp620-.Ltmp619              #   Call between .Ltmp619 and .Ltmp620
	.uleb128 .Ltmp621-.Lfunc_begin6         #     jumps to .Ltmp621
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp620-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp622-.Ltmp620              #   Call between .Ltmp620 and .Ltmp622
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp622-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp623-.Ltmp622              #   Call between .Ltmp622 and .Ltmp623
	.uleb128 .Ltmp624-.Lfunc_begin6         #     jumps to .Ltmp624
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp625-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp626-.Ltmp625              #   Call between .Ltmp625 and .Ltmp626
	.uleb128 .Ltmp627-.Lfunc_begin6         #     jumps to .Ltmp627
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp628-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp629-.Ltmp628              #   Call between .Ltmp628 and .Ltmp629
	.uleb128 .Ltmp630-.Lfunc_begin6         #     jumps to .Ltmp630
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp631-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp632-.Ltmp631              #   Call between .Ltmp631 and .Ltmp632
	.uleb128 .Ltmp633-.Lfunc_begin6         #     jumps to .Ltmp633
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp634-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp635-.Ltmp634              #   Call between .Ltmp634 and .Ltmp635
	.uleb128 .Ltmp636-.Lfunc_begin6         #     jumps to .Ltmp636
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp637-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp668-.Ltmp637              #   Call between .Ltmp637 and .Ltmp668
	.uleb128 .Ltmp800-.Lfunc_begin6         #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp669-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp670-.Ltmp669              #   Call between .Ltmp669 and .Ltmp670
	.uleb128 .Ltmp671-.Lfunc_begin6         #     jumps to .Ltmp671
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp672-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp697-.Ltmp672              #   Call between .Ltmp672 and .Ltmp697
	.uleb128 .Ltmp797-.Lfunc_begin6         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp697-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp698-.Ltmp697              #   Call between .Ltmp697 and .Ltmp698
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp698-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp699-.Ltmp698              #   Call between .Ltmp698 and .Ltmp699
	.uleb128 .Ltmp700-.Lfunc_begin6         #     jumps to .Ltmp700
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp699-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp701-.Ltmp699              #   Call between .Ltmp699 and .Ltmp701
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp701-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp718-.Ltmp701              #   Call between .Ltmp701 and .Ltmp718
	.uleb128 .Ltmp719-.Lfunc_begin6         #     jumps to .Ltmp719
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp718-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp720-.Ltmp718              #   Call between .Ltmp718 and .Ltmp720
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp720-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp729-.Ltmp720              #   Call between .Ltmp720 and .Ltmp729
	.uleb128 .Ltmp730-.Lfunc_begin6         #     jumps to .Ltmp730
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp731-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp736-.Ltmp731              #   Call between .Ltmp731 and .Ltmp736
	.uleb128 .Ltmp737-.Lfunc_begin6         #     jumps to .Ltmp737
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp738-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp739-.Ltmp738              #   Call between .Ltmp738 and .Ltmp739
	.uleb128 .Ltmp740-.Lfunc_begin6         #     jumps to .Ltmp740
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp739-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp741-.Ltmp739              #   Call between .Ltmp739 and .Ltmp741
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp741-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp742-.Ltmp741              #   Call between .Ltmp741 and .Ltmp742
	.uleb128 .Ltmp743-.Lfunc_begin6         #     jumps to .Ltmp743
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp742-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp744-.Ltmp742              #   Call between .Ltmp742 and .Ltmp744
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp744-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp747-.Ltmp744              #   Call between .Ltmp744 and .Ltmp747
	.uleb128 .Ltmp770-.Lfunc_begin6         #     jumps to .Ltmp770
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp747-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp748-.Ltmp747              #   Call between .Ltmp747 and .Ltmp748
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp748-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp757-.Ltmp748              #   Call between .Ltmp748 and .Ltmp757
	.uleb128 .Ltmp758-.Lfunc_begin6         #     jumps to .Ltmp758
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp762-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp769-.Ltmp762              #   Call between .Ltmp762 and .Ltmp769
	.uleb128 .Ltmp770-.Lfunc_begin6         #     jumps to .Ltmp770
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp769-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp789-.Ltmp769              #   Call between .Ltmp769 and .Ltmp789
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp789-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp794-.Ltmp789              #   Call between .Ltmp789 and .Ltmp794
	.uleb128 .Ltmp797-.Lfunc_begin6         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp794-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp780-.Ltmp794              #   Call between .Ltmp794 and .Ltmp780
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp780-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp781-.Ltmp780              #   Call between .Ltmp780 and .Ltmp781
	.uleb128 .Ltmp782-.Lfunc_begin6         #     jumps to .Ltmp782
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp777-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp778-.Ltmp777              #   Call between .Ltmp777 and .Ltmp778
	.uleb128 .Ltmp779-.Lfunc_begin6         #     jumps to .Ltmp779
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp774-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp775-.Ltmp774              #   Call between .Ltmp774 and .Ltmp775
	.uleb128 .Ltmp776-.Lfunc_begin6         #     jumps to .Ltmp776
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp759-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp760-.Ltmp759              #   Call between .Ltmp759 and .Ltmp760
	.uleb128 .Ltmp761-.Lfunc_begin6         #     jumps to .Ltmp761
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp771-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp772-.Ltmp771              #   Call between .Ltmp771 and .Ltmp772
	.uleb128 .Ltmp773-.Lfunc_begin6         #     jumps to .Ltmp773
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp783-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp784-.Ltmp783              #   Call between .Ltmp783 and .Ltmp784
	.uleb128 .Ltmp785-.Lfunc_begin6         #     jumps to .Ltmp785
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp786-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Ltmp787-.Ltmp786              #   Call between .Ltmp786 and .Ltmp787
	.uleb128 .Ltmp788-.Lfunc_begin6         #     jumps to .Ltmp788
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp798-.Lfunc_begin6         # >> Call Site 37 <<
	.uleb128 .Ltmp799-.Ltmp798              #   Call between .Ltmp798 and .Ltmp799
	.uleb128 .Ltmp800-.Lfunc_begin6         #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp795-.Lfunc_begin6         # >> Call Site 38 <<
	.uleb128 .Ltmp796-.Ltmp795              #   Call between .Ltmp795 and .Ltmp796
	.uleb128 .Ltmp797-.Lfunc_begin6         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp796-.Lfunc_begin6         # >> Call Site 39 <<
	.uleb128 .Lfunc_end12-.Ltmp796          #   Call between .Ltmp796 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_ # -- Begin function _Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.p2align	5
	.type	_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_,@function
_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_: # @_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -608
	.cfi_def_cfa_offset 608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a2, $fp, 0
	beq	$a0, $a2, .LBB13_38
# %bb.1:
	ld.d	$s0, $a1, 8
	beqz	$s0, .LBB13_11
# %bb.2:
	ld.d	$s1, $a1, 0
	addi.d	$s2, $sp, 24
	st.d	$s2, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $sp, 24
	addi.d	$a1, $s0, 1
.Ltmp801:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp802:
# %bb.3:
	ld.d	$a0, $sp, 16
	addi.w	$a1, $zero, -2
	lu52i.d	$s3, $a1, 2047
	sub.d	$a0, $s3, $a0
	bltu	$a0, $s0, .LBB13_39
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp803:
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp804:
# %bb.5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_39
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp805:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp806:
# %bb.7:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a0, $sp, 16
	addi.w	$a1, $zero, -8
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB13_43
# %bb.8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
.Ltmp807:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp808:
# %bb.9:                                # %.noexc10
	addi.d	$s0, $sp, 536
	st.d	$s0, $sp, 520
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a0, 16
	beq	$a1, $s1, .LBB13_12
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 536
	ld.d	$s3, $a0, 8
	st.d	$a1, $sp, 520
	b	.LBB13_13
.LBB13_11:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a1, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $fp
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	pcaddu18i	$t8, %call36(_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jr	$t8
.LBB13_12:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
	ld.d	$s3, $a0, 8
	addi.d	$a2, $s3, 1
	move	$s4, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
.LBB13_13:
	st.d	$s3, $sp, 528
	st.d	$s1, $a0, 0
	ld.d	$a1, $sp, 8
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	beq	$a1, $s2, .LBB13_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB13_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $sp, 520
.Ltmp809:
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 48
	addi.d	$s1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp810:
# %bb.16:
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB13_26
# %bb.17:
.Ltmp812:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp813:
# %bb.18:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp814:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp815:
# %bb.19:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB13_41
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB13_22
# %bb.21:
	ld.bu	$a0, $s2, 67
	b	.LBB13_24
.LBB13_22:
.Ltmp816:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp817:
# %bb.23:                               # %.noexc31
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp818:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp819:
.LBB13_24:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp820:
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp821:
# %bb.25:                               # %.noexc33
.Ltmp822:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp823:
.LBB13_26:                              # %_ZNSolsEPFRSoS_E.exit
.Ltmp824:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 20
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp825:
# %bb.27:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp826:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp827:
# %bb.28:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB13_41
# %bb.29:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB13_31
# %bb.30:
	ld.bu	$a0, $s2, 67
	b	.LBB13_33
.LBB13_31:
.Ltmp828:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp829:
# %bb.32:                               # %.noexc41
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp830:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp831:
.LBB13_33:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38
.Ltmp832:
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp833:
# %bb.34:                               # %.noexc43
.Ltmp834:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp835:
# %bb.35:                               # %_ZNSolsEPFRSoS_E.exit23
.Ltmp836:
	addi.d	$a1, $sp, 8
	addi.d	$s1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jirl	$ra, $ra, 0
.Ltmp837:
# %bb.36:
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 8
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	stx.d	$a0, $a1, $s1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 520
	beq	$a0, $s0, .LBB13_38
# %bb.37:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB13_38:
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.LBB13_39:                              # %.invoke.i.i
.Ltmp844:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp845:
# %bb.40:                               # %.cont.i.i
.LBB13_41:                              # %.invoke
.Ltmp838:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp839:
# %bb.42:                               # %.cont
.LBB13_43:
.Ltmp841:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp842:
# %bb.44:                               # %.noexc
.LBB13_45:
.Ltmp811:
	move	$fp, $a0
	b	.LBB13_51
.LBB13_46:
.Ltmp843:
	b	.LBB13_48
.LBB13_47:
.Ltmp846:
.LBB13_48:
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	beq	$a1, $s2, .LBB13_53
# %bb.49:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	move	$a0, $a1
	b	.LBB13_52
.LBB13_50:
.Ltmp840:
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB13_51:
	ld.d	$a0, $sp, 520
	beq	$a0, $s0, .LBB13_53
.LBB13_52:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB13_53:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_, .Lfunc_end13-_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp801-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp806-.Ltmp801              #   Call between .Ltmp801 and .Ltmp806
	.uleb128 .Ltmp846-.Lfunc_begin7         #     jumps to .Ltmp846
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp807-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp808-.Ltmp807              #   Call between .Ltmp807 and .Ltmp808
	.uleb128 .Ltmp843-.Lfunc_begin7         #     jumps to .Ltmp843
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp808-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp809-.Ltmp808              #   Call between .Ltmp808 and .Ltmp809
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp809-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp810-.Ltmp809              #   Call between .Ltmp809 and .Ltmp810
	.uleb128 .Ltmp811-.Lfunc_begin7         #     jumps to .Ltmp811
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp812-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp837-.Ltmp812              #   Call between .Ltmp812 and .Ltmp837
	.uleb128 .Ltmp840-.Lfunc_begin7         #     jumps to .Ltmp840
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp837-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp844-.Ltmp837              #   Call between .Ltmp837 and .Ltmp844
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp844-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp845-.Ltmp844              #   Call between .Ltmp844 and .Ltmp845
	.uleb128 .Ltmp846-.Lfunc_begin7         #     jumps to .Ltmp846
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp838-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp839-.Ltmp838              #   Call between .Ltmp838 and .Ltmp839
	.uleb128 .Ltmp840-.Lfunc_begin7         #     jumps to .Ltmp840
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp841-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp842-.Ltmp841              #   Call between .Ltmp841 and .Ltmp842
	.uleb128 .Ltmp843-.Lfunc_begin7         #     jumps to .Ltmp843
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp842-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Lfunc_end13-.Ltmp842          #   Call between .Ltmp842 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.type	_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo,@function
_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo: # @_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:                                # %.noexc.i
	addi.d	$sp, $sp, -304
	.cfi_def_cfa_offset 304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
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
	move	$fp, $a1
	pcalau12i	$a1, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s6, $a1, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$s0, $a0, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s3, $a0, 0
	addi.d	$a0, $sp, 200
	st.d	$a0, $sp, 184
	ori	$a0, $zero, 108
	st.d	$a0, $sp, 152
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 152
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 152
	move	$s1, $a0
	st.d	$a0, $sp, 184
	st.d	$s2, $sp, 200
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 108
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 192
	stx.b	$zero, $s1, $s2
	addi.d	$a0, $sp, 168
	st.d	$a0, $sp, 152
	ori	$a0, $zero, 56
	st.d	$a0, $sp, 120
.Ltmp847:
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 120
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp848:
# %bb.1:                                # %.noexc71
	ld.d	$a1, $sp, 120
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 152
	st.d	$a1, $sp, 168
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	vst	$vr0, $a0, 40
	st.d	$a1, $sp, 160
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 136
	st.d	$a0, $sp, 120
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 88
.Ltmp850:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp851:
# %bb.2:                                # %.noexc75
	ld.d	$a1, $sp, 88
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
.Ltmp853:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp854:
# %bb.3:
.Ltmp856:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp857:
# %bb.4:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp858:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp859:
# %bb.5:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp860:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp861:
# %bb.6:                                # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80
.Ltmp862:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 27
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp863:
# %bb.7:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB14_99
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB14_10
# %bb.9:
	ld.bu	$a0, $s1, 67
	b	.LBB14_12
.LBB14_10:
.Ltmp864:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp865:
# %bb.11:                               # %.noexc158
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp866:
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp867:
.LBB14_12:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp868:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp869:
# %bb.13:                               # %.noexc160
.Ltmp870:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp871:
# %bb.14:                               # %_ZNSolsEPFRSoS_E.exit
	ld.d	$a1, $sp, 88
	ld.d	$a2, $sp, 96
.Ltmp872:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp873:
# %bb.15:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB14_99
# %bb.16:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB14_18
# %bb.17:
	ld.bu	$a0, $s2, 67
	b	.LBB14_20
.LBB14_18:
.Ltmp874:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp875:
# %bb.19:                               # %.noexc168
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp876:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp877:
.LBB14_20:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i165
.Ltmp878:
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp879:
# %bb.21:                               # %.noexc170
.Ltmp880:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp881:
# %bb.22:                               # %_ZNSolsEPFRSoS_E.exit87
.Ltmp882:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp883:
# %bb.23:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp884:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp885:
# %bb.24:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp886:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp887:
# %bb.25:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit93
.Ltmp888:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp889:
# %bb.26:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB14_99
# %bb.27:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB14_29
# %bb.28:
	ld.bu	$a0, $s1, 67
	b	.LBB14_31
.LBB14_29:
.Ltmp890:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp891:
# %bb.30:                               # %.noexc179
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp892:
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp893:
.LBB14_31:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176
.Ltmp894:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp895:
# %bb.32:                               # %.noexc181
.Ltmp896:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp897:
# %bb.33:                               # %_ZNSolsEPFRSoS_E.exit97
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp898:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp899:
# %bb.34:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit99
	sub.d	$a0, $s0, $s3
	bstrpick.d	$a1, $a0, 36, 5
	slli.d	$a1, $a1, 5
	beqz	$a1, .LBB14_83
# %bb.35:                               # %.lr.ph243
	move	$s3, $zero
	srai.d	$a0, $a0, 5
	addi.d	$s8, $fp, 24
	addi.d	$a1, $fp, 240
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	addi.d	$a1, $fp, 8
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a0, $zero, -177
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB14_37
	.p2align	4, , 16
.LBB14_36:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit133
                                        #   in Loop: Header=BB14_37 Depth=1
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beq	$s3, $a0, .LBB14_83
.LBB14_37:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_50 Depth 2
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	ldx.wu	$a1, $s8, $a0
	ld.d	$s0, $s6, 456
	ld.d	$s1, $s6, 480
	ld.d	$s2, $s6, 504
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	stx.w	$a1, $s8, $a0
.Ltmp900:
	ori	$a2, $zero, 16
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp901:
# %bb.38:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 5
	add.d	$a2, $a0, $a1
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
.Ltmp902:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp903:
# %bb.39:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit106
                                        #   in Loop: Header=BB14_37 Depth=1
	move	$s4, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB14_97
# %bb.40:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB14_42
# %bb.41:                               #   in Loop: Header=BB14_37 Depth=1
	ld.bu	$a0, $s5, 67
	b	.LBB14_44
	.p2align	4, , 16
.LBB14_42:                              #   in Loop: Header=BB14_37 Depth=1
.Ltmp904:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp905:
# %bb.43:                               # %.noexc190
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp906:
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp907:
.LBB14_44:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i187
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp908:
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp909:
# %bb.45:                               # %.noexc192
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp910:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp911:
# %bb.46:                               # %_ZNSolsEPFRSoS_E.exit108.preheader
                                        #   in Loop: Header=BB14_37 Depth=1
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $s6, 120
	ld.d	$a1, $s6, 112
	beq	$a0, $a1, .LBB14_74
# %bb.47:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB14_37 Depth=1
	move	$s3, $zero
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a0, $a1, 4
	alsl.d	$a0, $a1, $a0, 3
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	add.d	$s1, $s1, $a0
	add.d	$s0, $s2, $a0
	ori	$s2, $zero, 1
	b	.LBB14_50
	.p2align	4, , 16
.LBB14_48:                              # %._ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit129_crit_edge
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s6, 120
	ld.d	$a1, $s6, 112
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
.LBB14_49:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit129
                                        #   in Loop: Header=BB14_50 Depth=2
	bstrpick.d	$s3, $s2, 31, 0
	addi.w	$s2, $s2, 1
	bgeu	$s3, $a0, .LBB14_74
.LBB14_50:                              # %.lr.ph
                                        #   Parent Loop BB14_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp912:
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp913:
# %bb.51:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit110
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s6, 112
	slli.d	$a1, $s3, 5
	add.d	$a2, $a0, $a1
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
.Ltmp914:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp915:
# %bb.52:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit112
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp916:
	move	$s4, $a0
	ori	$a2, $zero, 19
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp917:
# %bb.53:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 2
	ldx.w	$a1, $a0, $a1
.Ltmp918:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp919:
# %bb.54:                               #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, -24
	ldx.w	$a2, $s8, $a1
	ori	$a2, $a2, 1024
	stx.w	$a2, $s8, $a1
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.d	$a2, $a1, $a0
.Ltmp920:
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a1, $a0, %pc_lo12(.L.str.62)
	ori	$a2, $zero, 23
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp921:
# %bb.55:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s1, 0
	alsl.d	$a2, $s3, $a0, 4
	slli.d	$s7, $s3, 4
	ldx.d	$a1, $a0, $s7
	ld.d	$a2, $a2, 8
.Ltmp922:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp923:
# %bb.56:                               # %_ZNSolsEe.exit
                                        #   in Loop: Header=BB14_50 Depth=2
	move	$s4, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB14_95
# %bb.57:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i196
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB14_59
# %bb.58:                               #   in Loop: Header=BB14_50 Depth=2
	ld.bu	$a0, $s5, 67
	b	.LBB14_61
	.p2align	4, , 16
.LBB14_59:                              #   in Loop: Header=BB14_50 Depth=2
.Ltmp924:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp925:
# %bb.60:                               # %.noexc201
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp926:
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp927:
.LBB14_61:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i198
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp928:
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp929:
# %bb.62:                               # %.noexc203
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp930:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp931:
# %bb.63:                               # %_ZNSolsEPFRSoS_E.exit121
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp932:
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a1, $a0, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 17
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp933:
# %bb.64:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s0, 0
	alsl.d	$a2, $s3, $a0, 4
	ldx.d	$a1, $a0, $s7
	ld.d	$a2, $a2, 8
.Ltmp934:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp935:
# %bb.65:                               # %_ZNSolsEe.exit125
                                        #   in Loop: Header=BB14_50 Depth=2
	move	$s4, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB14_95
# %bb.66:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i207
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB14_68
# %bb.67:                               #   in Loop: Header=BB14_50 Depth=2
	ld.bu	$a0, $s5, 67
	b	.LBB14_70
	.p2align	4, , 16
.LBB14_68:                              #   in Loop: Header=BB14_50 Depth=2
.Ltmp936:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp937:
# %bb.69:                               # %.noexc212
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp938:
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp939:
.LBB14_70:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i209
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp940:
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp941:
# %bb.71:                               # %.noexc214
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp942:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp943:
# %bb.72:                               # %_ZNSolsEPFRSoS_E.exit127
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s6, 120
	ld.d	$a1, $s6, 112
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.d	$a1, $a0, -1
	bgeu	$s3, $a1, .LBB14_49
# %bb.73:                               #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp944:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp945:
	b	.LBB14_48
	.p2align	4, , 16
.LBB14_74:                              # %_ZNSolsEPFRSoS_E.exit108._crit_edge
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s3, $a0, .LBB14_36
# %bb.75:                               #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	ldx.d	$s4, $a1, $a0
	beqz	$s4, .LBB14_97
# %bb.76:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i218
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB14_78
# %bb.77:                               #   in Loop: Header=BB14_37 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB14_80
.LBB14_78:                              #   in Loop: Header=BB14_37 Depth=1
.Ltmp950:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp951:
# %bb.79:                               # %.noexc223
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp952:
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp953:
.LBB14_80:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i220
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp954:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp955:
# %bb.81:                               # %.noexc225
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp956:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp957:
# %bb.82:                               # %_ZNSolsEPFRSoS_E.exit131
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a1, $sp, 152
	ld.d	$a2, $sp, 160
.Ltmp958:
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp959:
	b	.LBB14_36
.LBB14_83:                              # %._crit_edge
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp964:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp965:
# %bb.84:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit101
.Ltmp966:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp967:
# %bb.85:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135
.Ltmp968:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp969:
# %bb.86:
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB14_88
# %bb.87:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB14_88:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB14_90
# %bb.89:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB14_90:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB14_92
# %bb.91:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB14_92:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB14_94
# %bb.93:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB14_94:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB14_95:                              # %.invoke255
.Ltmp947:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp948:
# %bb.96:                               # %.cont256
.LBB14_97:                              # %.invoke253
.Ltmp961:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp962:
# %bb.98:                               # %.cont254
.LBB14_99:                              # %.invoke
.Ltmp971:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp972:
# %bb.100:                              # %.cont
.LBB14_101:
.Ltmp855:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB14_112
	b	.LBB14_116
.LBB14_102:
.Ltmp852:
	move	$fp, $a0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB14_113
	b	.LBB14_117
.LBB14_103:
.Ltmp849:
	move	$fp, $a0
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB14_114
	b	.LBB14_118
.LBB14_104:
.Ltmp970:
	b	.LBB14_110
.LBB14_105:
.Ltmp973:
	b	.LBB14_110
.LBB14_106:                             # %.loopexit.split-lp231
.Ltmp963:
	b	.LBB14_110
.LBB14_107:                             # %.loopexit230
.Ltmp960:
	b	.LBB14_110
.LBB14_108:                             # %.loopexit.split-lp
.Ltmp949:
	b	.LBB14_110
.LBB14_109:                             # %.loopexit
.Ltmp946:
.LBB14_110:
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	bne	$a0, $a1, .LBB14_115
# %bb.111:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	bne	$a0, $a1, .LBB14_116
.LBB14_112:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	bne	$a0, $a1, .LBB14_117
.LBB14_113:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	bne	$a0, $a1, .LBB14_118
.LBB14_114:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_115:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB14_112
.LBB14_116:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB14_113
.LBB14_117:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB14_114
.LBB14_118:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo, .Lfunc_end14-_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp847-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp847
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp847-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp848-.Ltmp847              #   Call between .Ltmp847 and .Ltmp848
	.uleb128 .Ltmp849-.Lfunc_begin8         #     jumps to .Ltmp849
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp850-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp851-.Ltmp850              #   Call between .Ltmp850 and .Ltmp851
	.uleb128 .Ltmp852-.Lfunc_begin8         #     jumps to .Ltmp852
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp853-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp854-.Ltmp853              #   Call between .Ltmp853 and .Ltmp854
	.uleb128 .Ltmp855-.Lfunc_begin8         #     jumps to .Ltmp855
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp856-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp899-.Ltmp856              #   Call between .Ltmp856 and .Ltmp899
	.uleb128 .Ltmp973-.Lfunc_begin8         #     jumps to .Ltmp973
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp900-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp911-.Ltmp900              #   Call between .Ltmp900 and .Ltmp911
	.uleb128 .Ltmp960-.Lfunc_begin8         #     jumps to .Ltmp960
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp912-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp945-.Ltmp912              #   Call between .Ltmp912 and .Ltmp945
	.uleb128 .Ltmp946-.Lfunc_begin8         #     jumps to .Ltmp946
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp950-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp959-.Ltmp950              #   Call between .Ltmp950 and .Ltmp959
	.uleb128 .Ltmp960-.Lfunc_begin8         #     jumps to .Ltmp960
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp964-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp969-.Ltmp964              #   Call between .Ltmp964 and .Ltmp969
	.uleb128 .Ltmp970-.Lfunc_begin8         #     jumps to .Ltmp970
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp969-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp947-.Ltmp969              #   Call between .Ltmp969 and .Ltmp947
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp947-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Ltmp948-.Ltmp947              #   Call between .Ltmp947 and .Ltmp948
	.uleb128 .Ltmp949-.Lfunc_begin8         #     jumps to .Ltmp949
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp961-.Lfunc_begin8         # >> Call Site 12 <<
	.uleb128 .Ltmp962-.Ltmp961              #   Call between .Ltmp961 and .Ltmp962
	.uleb128 .Ltmp963-.Lfunc_begin8         #     jumps to .Ltmp963
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp971-.Lfunc_begin8         # >> Call Site 13 <<
	.uleb128 .Ltmp972-.Ltmp971              #   Call between .Ltmp971 and .Ltmp972
	.uleb128 .Ltmp973-.Lfunc_begin8         #     jumps to .Ltmp973
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp972-.Lfunc_begin8         # >> Call Site 14 <<
	.uleb128 .Lfunc_end14-.Ltmp972          #   Call between .Ltmp972 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
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
.Lfunc_end15:
	.size	__clang_call_terminate, .Lfunc_end15-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN8LoopStatD2Ev,"axG",@progbits,_ZN8LoopStatD2Ev,comdat
	.weak	_ZN8LoopStatD2Ev                # -- Begin function _ZN8LoopStatD2Ev
	.p2align	5
	.type	_ZN8LoopStatD2Ev,@function
_ZN8LoopStatD2Ev:                       # @_ZN8LoopStatD2Ev
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
	ld.d	$a0, $a0, 256
	beqz	$a0, .LBB16_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_2:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit
	ld.d	$a0, $fp, 232
	beqz	$a0, .LBB16_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_4:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $fp, 208
	beqz	$a0, .LBB16_6
# %bb.5:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_6:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit3
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB16_8
# %bb.7:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_8:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit5
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB16_10
# %bb.9:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_10:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit7
	ld.d	$a0, $fp, 136
	beqz	$a0, .LBB16_12
# %bb.11:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_12:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit9
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB16_14
# %bb.13:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_14:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit11
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB16_16
# %bb.15:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_16:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit13
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB16_18
# %bb.17:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_18:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit15
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB16_20
# %bb.19:
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_20:                              # %_ZNSt6vectorImSaImEED2Ev.exit
	ld.d	$s0, $fp, 16
	ld.d	$s1, $fp, 24
	bne	$s0, $s1, .LBB16_24
# %bb.21:                               # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i
	beqz	$s0, .LBB16_27
.LBB16_22:
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
	.p2align	4, , 16
.LBB16_23:                              # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB16_24 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB16_26
.LBB16_24:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB16_23
# %bb.25:                               #   in Loop: Header=BB16_24 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB16_23
.LBB16_26:                              # %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i
	ld.d	$s0, $fp, 16
	bnez	$s0, .LBB16_22
.LBB16_27:                              # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	_ZN8LoopStatD2Ev, .Lfunc_end16-_ZN8LoopStatD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB17_6
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
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit
                                        #   in Loop: Header=BB17_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB17_5
.LBB17_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB17_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB17_3 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB17_2
.LBB17_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB17_6:                               # %._crit_edge
	ret
.Lfunc_end17:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E, .Lfunc_end17-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_ # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_
	.p2align	5
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_
	.cfi_startproc
# %bb.0:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_.exit
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	st.d	$zero, $sp, 16
	addi.d	$a0, $sp, 8
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$a2, $fp, 16
	beq	$a0, $a2, .LBB18_4
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
	ld.d	$a1, $sp, 8
	beq	$a1, $s0, .LBB18_7
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
	ld.d	$a2, $a2, 0
	vld	$vr0, $sp, 16
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	beqz	$a0, .LBB18_6
.LBB18_3:
	st.d	$a0, $sp, 8
	st.d	$a2, $sp, 24
	st.d	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 8
	bne	$a0, $s0, .LBB18_13
	b	.LBB18_14
.LBB18_4:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $sp, 8
	beq	$a1, $s0, .LBB18_7
# %bb.5:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 16
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	bnez	$a0, .LBB18_3
.LBB18_6:
	st.d	$s0, $sp, 8
	move	$a0, $s0
	st.d	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 8
	bne	$a0, $s0, .LBB18_13
	b	.LBB18_14
.LBB18_7:
	addi.d	$a2, $sp, 8
	beq	$a2, $fp, .LBB18_15
# %bb.8:
	ld.d	$a2, $sp, 16
	beqz	$a2, .LBB18_12
# %bb.9:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB18_11
# %bb.10:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB18_12
.LBB18_11:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 8
	beq	$a0, $s0, .LBB18_14
.LBB18_13:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB18_14:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB18_15:
	move	$a0, $a1
	st.d	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 8
	bne	$a0, $s0, .LBB18_13
	b	.LBB18_14
.Lfunc_end18:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_, .Lfunc_end18-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
	.p2align	5
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:                                # %.peel.begin
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
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	move	$s0, $a4
	move	$s2, $a3
	move	$s4, $a2
	move	$s1, $a1
	move	$fp, $a0
	move	$a0, $a2
	ori	$a1, $zero, 15
	st.d	$a1, $sp, 16
	beqz	$s1, .LBB19_4
# %bb.1:                                # %.peel.begin
	addi.w	$a1, $s4, 0
	addi.w	$a2, $zero, -1
	bne	$a1, $a2, .LBB19_4
# %bb.2:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_42
# %bb.3:                                # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel
	ld.bu	$a0, $a0, 0
.LBB19_4:                               # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
	addi.d	$s5, $fp, 16
	addi.w	$s7, $zero, -1
	addi.w	$s3, $a0, 0
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	beqz	$s2, .LBB19_9
# %bb.5:                                # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
	addi.w	$a2, $s0, 0
	addi.w	$a1, $zero, -1
	move	$a0, $s0
	bne	$a2, $a1, .LBB19_10
# %bb.6:
	ld.d	$a0, $s2, 16
	ld.d	$a2, $s2, 24
	bgeu	$a0, $a2, .LBB19_43
# %bb.7:                                # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel
	beq	$s3, $a1, .LBB19_11
.LBB19_8:
	move	$s3, $zero
	addi.w	$s8, $s4, 0
	bnez	$s1, .LBB19_35
	b	.LBB19_38
.LBB19_9:
	move	$a0, $s0
.LBB19_10:                              # %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
	addi.d	$a1, $s3, 1
	sltui	$a1, $a1, 1
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	beq	$a1, $a0, .LBB19_8
.LBB19_11:
	beqz	$s1, .LBB19_15
# %bb.12:
	addi.w	$a0, $s4, 0
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB19_15
# %bb.13:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_97
# %bb.14:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel
	ld.bu	$s4, $a0, 0
.LBB19_15:                              # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
	st.b	$s4, $s5, 0
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_98
.LBB19_16:
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
.LBB19_17:                              # %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader
	ori	$s4, $zero, 17
	addi.w	$s5, $s0, 0
	ori	$s8, $zero, 15
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_20
	b	.LBB19_25
	.p2align	4, , 16
.LBB19_18:
	move	$s1, $zero
	ori	$a0, $zero, 255
	stx.b	$a0, $fp, $s4
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_32
.LBB19_19:
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
	addi.d	$s4, $s4, 1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_25
.LBB19_20:
	move	$s6, $zero
	beqz	$s2, .LBB19_26
.LBB19_21:                              # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
	bne	$s5, $s7, .LBB19_26
# %bb.22:
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s2, 24
	bgeu	$a0, $a1, .LBB19_24
# %bb.23:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i
	ld.bu	$a0, $a0, 0
	b	.LBB19_27
.LBB19_24:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s2
	jirl	$ra, $a1, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s2, $s2, $a1
	b	.LBB19_27
.LBB19_25:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$a0, $a0, 1
	sltui	$s6, $a0, 1
	masknez	$s1, $s1, $s6
	bnez	$s2, .LBB19_21
	.p2align	4, , 16
.LBB19_26:
	move	$a0, $s0
.LBB19_27:                              # %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	addi.d	$s3, $s4, -16
	beq	$s6, $a0, .LBB19_34
# %bb.28:                               # %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
	bgeu	$s3, $s8, .LBB19_34
# %bb.29:
	beqz	$s1, .LBB19_18
# %bb.30:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_33
# %bb.31:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
	ld.bu	$a0, $a0, 0
	stx.b	$a0, $fp, $s4
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_19
.LBB19_32:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 80
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$s4, $s4, 1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_20
	b	.LBB19_25
.LBB19_33:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s1, $s1, $a1
	stx.b	$a0, $fp, $s4
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_19
	b	.LBB19_32
.LBB19_34:                              # %.preheader.loopexit
	move	$s4, $s7
	addi.w	$s8, $s4, 0
	beqz	$s1, .LBB19_38
.LBB19_35:                              # %.preheader
	bne	$s8, $s7, .LBB19_38
# %bb.36:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_44
# %bb.37:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i29.peel
	ld.bu	$s5, $a0, 0
	bnez	$s2, .LBB19_39
	b	.LBB19_46
.LBB19_38:
	move	$s5, $s4
	beqz	$s2, .LBB19_46
.LBB19_39:                              # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i21.peel
	addi.w	$a0, $s0, 0
	bne	$a0, $s7, .LBB19_46
# %bb.40:
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s2, 24
	bgeu	$a0, $a1, .LBB19_56
.LBB19_41:                              # %.thr_comm.peel
	addi.w	$a0, $s5, 0
	bne	$a0, $s7, .LBB19_96
	b	.LBB19_47
.LBB19_42:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s1, $s1, $a1
	b	.LBB19_4
.LBB19_43:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s2
	jirl	$ra, $a1, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s2, $s2, $a1
	b	.LBB19_10
.LBB19_44:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i28.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
.Ltmp974:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp975:
# %bb.45:                               # %.noexc.peel
	move	$s5, $a0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$s1, $s1, $a0
	bnez	$s2, .LBB19_39
.LBB19_46:
	addi.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	addi.w	$a1, $s5, 0
	addi.d	$a1, $a1, 1
	sltui	$a1, $a1, 1
	beq	$a0, $a1, .LBB19_96
.LBB19_47:
	ld.d	$a0, $sp, 16
	bne	$s3, $a0, .LBB19_60
.LBB19_48:
	addi.d	$a0, $s3, 1
	st.d	$a0, $sp, 16
.Ltmp978:
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp979:
# %bb.49:
	move	$s5, $a0
	beqz	$s3, .LBB19_52
# %bb.50:
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB19_55
# %bb.51:
	ld.b	$a0, $a1, 0
	st.b	$a0, $s5, 0
.LBB19_52:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB19_54
.LBB19_53:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB19_54:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel
	ld.d	$a0, $sp, 16
	st.d	$s5, $fp, 0
	st.d	$a0, $fp, 16
	bnez	$s1, .LBB19_61
	b	.LBB19_64
.LBB19_55:
	move	$a0, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB19_53
	b	.LBB19_54
.LBB19_56:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i26.peel
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
.Ltmp976:
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp977:
# %bb.57:                               # %.noexc30.peel
	bne	$a0, $s7, .LBB19_41
# %bb.58:
	addi.w	$a0, $s5, 0
	beq	$a0, $s7, .LBB19_96
# %bb.59:
	move	$s2, $zero
	ld.d	$a0, $sp, 16
	beq	$s3, $a0, .LBB19_48
.LBB19_60:                              # %._crit_edge
	ld.d	$s5, $fp, 0
	beqz	$s1, .LBB19_64
.LBB19_61:
	bne	$s8, $s7, .LBB19_64
# %bb.62:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_99
# %bb.63:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i36.peel
	ld.bu	$s4, $a0, 0
.LBB19_64:
	stx.b	$s4, $s5, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_101
.LBB19_65:
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
.LBB19_66:                              # %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit40.peel.preheader
	addi.d	$s3, $s3, 1
	addi.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	sltui	$s5, $a0, 1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_69
	b	.LBB19_90
	.p2align	4, , 16
.LBB19_67:
	move	$s1, $zero
	ori	$a0, $zero, 255
	stx.b	$a0, $s4, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_88
.LBB19_68:
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
	addi.d	$s3, $s3, 1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_90
.LBB19_69:
	move	$s4, $zero
	beqz	$s2, .LBB19_92
.LBB19_70:                              # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i21
	addi.w	$a0, $s0, 0
	bne	$a0, $s7, .LBB19_92
# %bb.71:
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s2, 24
	bgeu	$a0, $a1, .LBB19_73
.LBB19_72:                              # %.thr_comm
	bnez	$s4, .LBB19_78
	b	.LBB19_96
.LBB19_73:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i26
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
.Ltmp989:
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp990:
# %bb.74:                               # %.noexc30
	bne	$a0, $s7, .LBB19_72
# %bb.75:
	bnez	$s4, .LBB19_96
# %bb.76:
	move	$s2, $zero
	ld.d	$a0, $sp, 16
	beq	$s3, $a0, .LBB19_79
	.p2align	4, , 16
.LBB19_77:                              # %._crit_edge88
	ld.d	$s4, $fp, 0
	bnez	$s1, .LBB19_86
	b	.LBB19_67
	.p2align	4, , 16
.LBB19_78:
	ld.d	$a0, $sp, 16
	bne	$s3, $a0, .LBB19_77
.LBB19_79:
	addi.d	$a0, $s3, 1
	st.d	$a0, $sp, 16
.Ltmp991:
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp992:
# %bb.80:
	move	$s4, $a0
	addi.d	$a0, $s3, -1
	beq	$a0, $s7, .LBB19_83
# %bb.81:
	ld.d	$a1, $fp, 0
	bnez	$a0, .LBB19_93
# %bb.82:
	ld.b	$a0, $a1, 0
	st.b	$a0, $s4, 0
.LBB19_83:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
	ld.d	$a0, $fp, 0
	beq	$a0, $s6, .LBB19_85
.LBB19_84:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB19_85:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
	ld.d	$a0, $sp, 16
	st.d	$s4, $fp, 0
	st.d	$a0, $fp, 16
	beqz	$s1, .LBB19_67
.LBB19_86:
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_94
# %bb.87:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i36
	ld.bu	$a0, $a0, 0
	stx.b	$a0, $s4, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_68
.LBB19_88:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 80
.Ltmp997:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp998:
# %bb.89:                               # %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit40.peel.backedge
	addi.d	$s3, $s3, 1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_69
.LBB19_90:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i28
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
.Ltmp987:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp988:
# %bb.91:                               # %.noexc
	addi.d	$a0, $a0, 1
	sltui	$s4, $a0, 1
	masknez	$s1, $s1, $s4
	bnez	$s2, .LBB19_70
	.p2align	4, , 16
.LBB19_92:
	bne	$s5, $s4, .LBB19_78
	b	.LBB19_96
	.p2align	4, , 16
.LBB19_93:
	move	$a0, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bne	$a0, $s6, .LBB19_84
	b	.LBB19_85
.LBB19_94:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i35
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
.Ltmp994:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp995:
# %bb.95:                               # %.noexc37
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s1, $s1, $a1
	stx.b	$a0, $s4, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_68
	b	.LBB19_88
.LBB19_96:                              # %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit
	ld.d	$a0, $fp, 0
	st.d	$s3, $fp, 8
	stx.b	$zero, $a0, $s3
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
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
.LBB19_97:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s1
	jirl	$ra, $a1, 0
	move	$s4, $a0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$s1, $s1, $a0
	st.b	$s4, $s5, 0
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_16
.LBB19_98:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 80
	move	$a0, $s1
	jirl	$ra, $a1, 0
	b	.LBB19_17
.LBB19_99:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i35.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
.Ltmp981:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp982:
# %bb.100:                              # %.noexc37.peel
	move	$s4, $a0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$s1, $s1, $a0
	stx.b	$s4, $s5, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_65
.LBB19_101:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 80
.Ltmp984:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp985:
	b	.LBB19_66
.LBB19_102:                             # %.loopexit.split-lp84
.Ltmp983:
	b	.LBB19_108
.LBB19_103:                             # %.loopexit.split-lp
.Ltmp986:
	b	.LBB19_108
.LBB19_104:                             # %.loopexit83
.Ltmp996:
	b	.LBB19_108
.LBB19_105:                             # %.loopexit
.Ltmp999:
	b	.LBB19_108
.LBB19_106:                             # %.loopexit.split-lp79
.Ltmp980:
	b	.LBB19_108
.LBB19_107:                             # %.loopexit78
.Ltmp993:
.LBB19_108:
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB19_110
# %bb.109:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB19_110:                             # %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag, .Lfunc_end19-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
	.cfi_endproc
	.section	.gcc_except_table._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,"aG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp974-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp974
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp974-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp975-.Ltmp974              #   Call between .Ltmp974 and .Ltmp975
	.uleb128 .Ltmp986-.Lfunc_begin9         #     jumps to .Ltmp986
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp978-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp979-.Ltmp978              #   Call between .Ltmp978 and .Ltmp979
	.uleb128 .Ltmp980-.Lfunc_begin9         #     jumps to .Ltmp980
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp979-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp976-.Ltmp979              #   Call between .Ltmp979 and .Ltmp976
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp976-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp977-.Ltmp976              #   Call between .Ltmp976 and .Ltmp977
	.uleb128 .Ltmp986-.Lfunc_begin9         #     jumps to .Ltmp986
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp989-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp990-.Ltmp989              #   Call between .Ltmp989 and .Ltmp990
	.uleb128 .Ltmp999-.Lfunc_begin9         #     jumps to .Ltmp999
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp991-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp992-.Ltmp991              #   Call between .Ltmp991 and .Ltmp992
	.uleb128 .Ltmp993-.Lfunc_begin9         #     jumps to .Ltmp993
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp992-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Ltmp997-.Ltmp992              #   Call between .Ltmp992 and .Ltmp997
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp997-.Lfunc_begin9         # >> Call Site 9 <<
	.uleb128 .Ltmp988-.Ltmp997              #   Call between .Ltmp997 and .Ltmp988
	.uleb128 .Ltmp999-.Lfunc_begin9         #     jumps to .Ltmp999
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp988-.Lfunc_begin9         # >> Call Site 10 <<
	.uleb128 .Ltmp994-.Ltmp988              #   Call between .Ltmp988 and .Ltmp994
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp994-.Lfunc_begin9         # >> Call Site 11 <<
	.uleb128 .Ltmp995-.Ltmp994              #   Call between .Ltmp994 and .Ltmp995
	.uleb128 .Ltmp996-.Lfunc_begin9         #     jumps to .Ltmp996
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp995-.Lfunc_begin9         # >> Call Site 12 <<
	.uleb128 .Ltmp981-.Ltmp995              #   Call between .Ltmp995 and .Ltmp981
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp981-.Lfunc_begin9         # >> Call Site 13 <<
	.uleb128 .Ltmp982-.Ltmp981              #   Call between .Ltmp981 and .Ltmp982
	.uleb128 .Ltmp983-.Lfunc_begin9         #     jumps to .Ltmp983
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp984-.Lfunc_begin9         # >> Call Site 14 <<
	.uleb128 .Ltmp985-.Ltmp984              #   Call between .Ltmp984 and .Ltmp985
	.uleb128 .Ltmp986-.Lfunc_begin9         #     jumps to .Ltmp986
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp985-.Lfunc_begin9         # >> Call Site 15 <<
	.uleb128 .Lfunc_end19-.Ltmp985          #   Call between .Ltmp985 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb,"axG",@progbits,_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb,comdat
	.weak	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb # -- Begin function _ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
	.p2align	5
	.type	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb,@function
_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb: # @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
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
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$s4, $fp, 32
	move	$s0, $a1
	beq	$a0, $s4, .LBB20_10
# %bb.1:
	ld.wu	$a1, $fp, 24
	bstrpick.d	$a5, $a2, 31, 0
	addi.d	$a4, $a1, 1
	bne	$s0, $a0, .LBB20_3
# %bb.2:
	addi.w	$a6, $a2, 0
	addi.w	$a7, $a1, 0
	beq	$a7, $a6, .LBB20_8
.LBB20_3:                               # %_ZNSt13_Bit_iteratormmEv.exit.preheader.i
	srli.d	$a6, $a4, 3
	lu12i.w	$a7, 262143
	ori	$a7, $a7, 4088
	and	$a6, $a6, $a7
	add.d	$a6, $a0, $a6
	andi	$t2, $a4, 63
	addi.w	$a7, $zero, -8
	ori	$t0, $zero, 63
	ori	$t1, $zero, 1
	addi.w	$a2, $a2, 0
	move	$t4, $a1
	move	$t3, $a0
	.p2align	4, , 16
.LBB20_4:                               # %_ZNSt13_Bit_iteratormmEv.exit.i
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$t6, $t4, -1
	addi.w	$t4, $t4, 0
	sltui	$t4, $t4, 1
	maskeqz	$t5, $a7, $t4
	masknez	$t6, $t6, $t4
	maskeqz	$t4, $t0, $t4
	or	$t4, $t4, $t6
	addi.w	$t6, $t2, -1
	sltui	$t7, $t2, 1
	masknez	$t2, $t6, $t7
	maskeqz	$t6, $t0, $t7
	ldx.d	$t8, $t3, $t5
	or	$t2, $t6, $t2
	maskeqz	$t6, $a7, $t7
	add.d	$a6, $a6, $t6
	srl.d	$t6, $t8, $t4
	andi	$t7, $t6, 1
	sll.d	$t6, $t1, $t2
	beqz	$t7, .LBB20_6
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=1
	ld.d	$t7, $a6, 0
	or	$t6, $t7, $t6
	add.d	$t3, $t3, $t5
	st.d	$t6, $a6, 0
	beq	$t3, $s0, .LBB20_7
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_6:                               #   in Loop: Header=BB20_4 Depth=1
	ld.d	$t7, $a6, 0
	andn	$t6, $t7, $t6
	add.d	$t3, $t3, $t5
	st.d	$t6, $a6, 0
	bne	$t3, $s0, .LBB20_4
.LBB20_7:                               # %_ZNSt14_Bit_referenceaSERKS_.exit.i
                                        #   in Loop: Header=BB20_4 Depth=1
	bne	$t4, $a2, .LBB20_4
.LBB20_8:                               # %_ZSt23__copy_move_backward_a2ILb0ESt13_Bit_iteratorS0_ET1_T0_S2_S1_.exit
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a5
	beqz	$a3, .LBB20_22
# %bb.9:
	ld.d	$a3, $s0, 0
	or	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ori	$a2, $zero, 63
	st.w	$a4, $fp, 24
	beq	$a1, $a2, .LBB20_23
	b	.LBB20_36
.LBB20_10:
	ld.d	$s1, $fp, 0
	ld.wu	$a1, $fp, 24
	sub.d	$a0, $a0, $s1
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a1, 3
	addi.w	$a0, $zero, -64
	lu52i.d	$a0, $a0, 2047
	beq	$a1, $a0, .LBB20_39
# %bb.11:                               # %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
	move	$s8, $a3
	move	$s5, $a2
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a1, $a3
	or	$a2, $a3, $a2
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a2
	sltu	$a3, $a1, $a0
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	addi.d	$a0, $a0, 63
	masknez	$a0, $a0, $a2
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 2047
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	srli.d	$s6, $a0, 3
	addi.w	$s7, $zero, -8
	lu52i.d	$a0, $s7, 255
	and	$a0, $s6, $a0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	sub.d	$s3, $s0, $s1
	ori	$a1, $zero, 9
	move	$s2, $a0
	blt	$s3, $a1, .LBB20_37
# %bb.12:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	add.d	$a1, $s2, $s3
.LBB20_13:                              # %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
	addi.w	$a3, $s5, 0
	move	$a2, $s8
	move	$a4, $zero
	beqz	$a3, .LBB20_20
# %bb.14:                               # %.lr.ph.i.i.i.preheader
	move	$a7, $zero
	ori	$a5, $zero, 1
	move	$a6, $s0
	.p2align	4, , 16
.LBB20_15:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a6, 0
	srl.d	$t0, $t0, $a7
	andi	$t1, $t0, 1
	sll.d	$t0, $a5, $a4
	beqz	$t1, .LBB20_17
# %bb.16:                               #   in Loop: Header=BB20_15 Depth=1
	ld.d	$t1, $a1, 0
	or	$t0, $t1, $t0
	b	.LBB20_18
	.p2align	4, , 16
.LBB20_17:                              #   in Loop: Header=BB20_15 Depth=1
	ld.d	$t1, $a1, 0
	andn	$t0, $t1, $t0
.LBB20_18:                              # %_ZNSt14_Bit_referenceaSEb.exit.i.i.i
                                        #   in Loop: Header=BB20_15 Depth=1
	st.d	$t0, $a1, 0
	addi.w	$t0, $a4, 1
	addi.d	$a4, $a4, -63
	sltui	$t1, $a4, 1
	masknez	$a4, $t0, $t1
	alsl.d	$a1, $t1, $a1, 3
	addi.w	$t0, $a7, 1
	addi.d	$a7, $a7, -63
	sltui	$t1, $a7, 1
	masknez	$a7, $t0, $t1
	alsl.d	$a6, $t1, $a6, 3
	bne	$a7, $a3, .LBB20_15
# %bb.19:                               # %_ZNSt14_Bit_referenceaSEb.exit.i.i.i
                                        #   in Loop: Header=BB20_15 Depth=1
	bne	$a6, $s0, .LBB20_15
.LBB20_20:                              # %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
	addi.w	$a5, $a4, 1
	addi.d	$a3, $a4, -63
	sltui	$a6, $a3, 1
	ori	$a3, $zero, 1
	sll.d	$a3, $a3, $a4
	beqz	$a2, .LBB20_24
# %bb.21:
	ld.d	$a2, $a1, 0
	or	$a2, $a2, $a3
	b	.LBB20_25
.LBB20_22:
	ld.d	$a3, $s0, 0
	andn	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ori	$a2, $zero, 63
	st.w	$a4, $fp, 24
	bne	$a1, $a2, .LBB20_36
.LBB20_23:
	st.w	$zero, $fp, 24
	addi.d	$a0, $a0, 8
	st.d	$a0, $fp, 16
	b	.LBB20_36
.LBB20_24:
	ld.d	$a2, $a1, 0
	andn	$a2, $a2, $a3
.LBB20_25:                              # %_ZNSt14_Bit_referenceaSEb.exit124
	st.d	$a2, $a1, 0
	ld.d	$a2, $fp, 16
	ld.w	$a3, $fp, 24
	alsl.d	$s3, $a6, $a1, 3
	masknez	$s8, $a5, $a6
	bne	$s0, $a2, .LBB20_27
# %bb.26:                               # %_ZNSt14_Bit_referenceaSEb.exit124
	addi.w	$a1, $s5, 0
	beq	$a1, $a3, .LBB20_33
.LBB20_27:                              # %.lr.ph.i.i.preheader
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB20_28:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $s0, 0
	addi.w	$a4, $s5, 0
	srl.d	$a5, $a5, $a4
	andi	$a6, $a5, 1
	sll.d	$a5, $a1, $s8
	beqz	$a6, .LBB20_30
# %bb.29:                               #   in Loop: Header=BB20_28 Depth=1
	ld.d	$a6, $s3, 0
	or	$a5, $a6, $a5
	b	.LBB20_31
	.p2align	4, , 16
.LBB20_30:                              #   in Loop: Header=BB20_28 Depth=1
	ld.d	$a6, $s3, 0
	andn	$a5, $a6, $a5
.LBB20_31:                              # %_ZNSt14_Bit_referenceaSERKS_.exit.i.i
                                        #   in Loop: Header=BB20_28 Depth=1
	st.d	$a5, $s3, 0
	addi.w	$a5, $s8, 1
	addi.d	$a6, $s8, -63
	sltui	$a6, $a6, 1
	masknez	$s8, $a5, $a6
	alsl.d	$s3, $a6, $s3, 3
	addi.w	$a0, $s5, 1
	addi.d	$a4, $a4, -63
	sltui	$a4, $a4, 1
	alsl.d	$s0, $a4, $s0, 3
	masknez	$s5, $a0, $a4
	bne	$s0, $a2, .LBB20_28
# %bb.32:                               # %_ZNSt14_Bit_referenceaSERKS_.exit.i.i
                                        #   in Loop: Header=BB20_28 Depth=1
	bne	$s5, $a3, .LBB20_28
.LBB20_33:                              # %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
	beqz	$s1, .LBB20_35
# %bb.34:
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	sub.d	$a0, $s4, $a0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_35:                              # %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
	lu52i.d	$a0, $s7, 511
	and	$a0, $s6, $a0
	add.d	$a0, $s2, $a0
	st.d	$a0, $fp, 32
	st.d	$s2, $fp, 0
	st.w	$zero, $fp, 8
	st.d	$s3, $fp, 16
	st.w	$s8, $fp, 24
.LBB20_36:                              # %_ZNSt13_Bit_iteratorppEv.exit
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
.LBB20_37:
	ori	$a0, $zero, 8
	move	$a1, $s2
	bne	$s3, $a0, .LBB20_13
# %bb.38:
	ld.d	$a0, $s1, 0
	st.d	$a0, $s2, 0
	addi.d	$a1, $s2, 8
	b	.LBB20_13
.LBB20_39:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb, .Lfunc_end20-_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nLoopStat::print..."
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\tloop_is_run = "
	.size	.L.str.1, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\tnum loop lengths = "
	.size	.L.str.2, 21

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\t\t ilength = "
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" --> "
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\t\t\t loop_length = "
	.size	.L.str.5, 19

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\t\t\t samples_per_pass = "
	.size	.L.str.6, 24

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\t\t\t loop_run_count = "
	.size	.L.str.7, 22

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\t\t\t\t sample time = "
	.size	.L.str.8, 20

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\t\t\t\t mean = "
	.size	.L.str.9, 13

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\t\t\t\t std_dev = "
	.size	.L.str.10, 16

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\t\t\t\t min = "
	.size	.L.str.11, 12

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\t\t\t\t max = "
	.size	.L.str.12, 12

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\t\t\t\t harm_mean = "
	.size	.L.str.13, 18

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\t\t\t\t meanrel2ref = "
	.size	.L.str.14, 20

	.type	_ZL21s_loop_suite_run_info,@object # @_ZL21s_loop_suite_run_info
	.local	_ZL21s_loop_suite_run_info
	.comm	_ZL21s_loop_suite_run_info,8,8
	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"/"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"timing.txt"
	.size	.L.str.16, 11

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	" ERROR: Can't open output file "
	.size	.L.str.17, 32

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\n writeTimingSummaryReport...   "
	.size	.L.str.18, 33

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"checksum.txt"
	.size	.L.str.19, 13

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\n writeChecksumReport...    "
	.size	.L.str.20, 29

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"fom.txt"
	.size	.L.str.21, 8

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\n writeFOMReport... "
	.size	.L.str.22, 21

	.type	.L.str.24,@object               # @.str.24
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.24:
	.asciz	"===========================================================================================================\n"
	.size	.L.str.24, 109

	.type	.L.str.25,@object               # @.str.25
	.p2align	3, 0x0
.L.str.25:
	.asciz	"------------------------------------------------------------------------------------------------------------\n"
	.size	.L.str.25, 110

	.type	.L.str.26,@object               # @.str.26
	.p2align	3, 0x0
.L.str.26:
	.asciz	"-------------------------------------------------------\n"
	.size	.L.str.26, 57

	.type	.L.str.27,@object               # @.str.27
	.p2align	3, 0x0
.L.str.27:
	.asciz	"............................................\n"
	.size	.L.str.27, 46

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"\n\n\n"
	.size	.L.str.28, 4

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"LCALS compilation summary: "
	.size	.L.str.29, 28

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"\n\n"
	.size	.L.str.30, 3

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"LCALS run summary: "
	.size	.L.str.31, 20

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"sizeof(Real_type) = "
	.size	.L.str.32, 21

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"     num suite passes = "
	.size	.L.str.33, 25

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"     loop sample fraction = "
	.size	.L.str.34, 29

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"     loop variants run : "
	.size	.L.str.35, 26

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	" , "
	.size	.L.str.36, 4

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"\n     reference variant : "
	.size	.L.str.37, 27

	.type	.L.str.38,@object               # @.str.38
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.38:
	.asciz	"Variant(length id)"
	.size	.L.str.38, 19

	.type	.L.str.39,@object               # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"Loop name(Loop ID) -->   <length id>:(length, samples/pass), etc."
	.size	.L.str.39, 66

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"   Mean Time "
	.size	.L.str.40, 14

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"        Min Time"
	.size	.L.str.41, 17

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"      Max Time"
	.size	.L.str.42, 15

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"    Std. Dev."
	.size	.L.str.43, 14

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Mean time rel to ref variant"
	.size	.L.str.44, 29

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	" ("
	.size	.L.str.45, 3

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	") --> "
	.size	.L.str.46, 7

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"   "
	.size	.L.str.47, 4

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	":("
	.size	.L.str.48, 3

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	", "
	.size	.L.str.49, 3

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	")"
	.size	.L.str.50, 2

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"("
	.size	.L.str.51, 2

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"basic_string::append"
	.size	.L.str.53, 21

	.type	.L.str.54,@object               # @.str.54
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.54:
	.asciz	"Variant(length #)"
	.size	.L.str.54, 18

	.type	.L.str.55,@object               # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"Loop name -->"
	.size	.L.str.55, 14

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Check Sum    "
	.size	.L.str.56, 14

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"        Delta from reference"
	.size	.L.str.57, 29

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"LCALS FOM results: "
	.size	.L.str.58, 20

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"Loop variant -- "
	.size	.L.str.59, 17

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"\t"
	.size	.L.str.60, 2

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	" :   # loops run = "
	.size	.L.str.61, 20

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	" ,   total exec time = "
	.size	.L.str.62, 24

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"\t\tFOM_relative = "
	.size	.L.str.63, 18

	.type	.L.str.64,@object               # @.str.64
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.64:
	.asciz	"-meantime.txt"
	.size	.L.str.64, 14

	.type	.L.str.65,@object               # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"\n writeMeanTimeReport...   "
	.size	.L.str.65, 28

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	" Mean Run Times "
	.size	.L.str.66, 17

	.type	.L.str.67,@object               # @.str.67
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.67:
	.asciz	"-reltime.txt"
	.size	.L.str.67, 13

	.type	.L.str.68,@object               # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"\n writeRelativeTimeReport...   "
	.size	.L.str.68, 32

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	" Relative Run Times "
	.size	.L.str.69, 21

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"lcalsversioninfo.txt"
	.size	.L.str.70, 21

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"vector<bool>::_M_insert_aux"
	.size	.L.str.71, 28

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.72, 26

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
