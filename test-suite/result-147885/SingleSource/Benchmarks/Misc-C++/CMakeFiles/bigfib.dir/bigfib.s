	.file	"bigfib.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN9Fibonacci10get_numberEj     # -- Begin function _ZN9Fibonacci10get_numberEj
	.p2align	5
	.type	_ZN9Fibonacci10get_numberEj,@function
_ZN9Fibonacci10get_numberEj:            # @_ZN9Fibonacci10get_numberEj
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
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
	ld.d	$a3, $a1, 16
	ld.d	$fp, $a1, 0
	move	$s1, $a2
	addi.d	$a1, $a2, 1
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$a2, $a3, $fp
	srli.d	$a2, $a2, 3
	lu12i.w	$a3, -349526
	ori	$a3, $a3, 2731
	lu32i.d	$a3, -349526
	ld.d	$s4, $s0, 8
	lu52i.d	$a3, $a3, -1366
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	mul.d	$a2, $a2, $a3
	move	$s5, $a0
	bgeu	$a2, $a1, .LBB0_7
# %bb.1:                                # %_ZNSt12_Vector_baseI6BigIntSaIS0_EE11_M_allocateEm.exit.i
	slli.d	$a0, $a1, 4
	alsl.d	$s3, $a1, $a0, 3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beq	$s4, $fp, .LBB0_66
# %bb.2:                                # %.lr.ph.i.i.i.i.i.preheader
	vrepli.b	$vr0, 0
	move	$a0, $s2
	move	$a1, $fp
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a1, 0
	ld.d	$a2, $a1, 16
	vst	$vr1, $a0, 0
	st.d	$a2, $a0, 16
	st.d	$zero, $a1, 16
	vst	$vr0, $a1, 0
	addi.d	$a1, $a1, 24
	addi.d	$a0, $a0, 24
	bne	$a1, $s4, .LBB0_3
# %bb.4:                                # %_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.loopexit.i
	ld.d	$a0, $s0, 0
	sub.d	$fp, $s4, $fp
	beqz	$a0, .LBB0_6
.LBB0_5:
	ld.d	$a1, $s0, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_6:                                # %_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m.exit.i
	st.d	$s2, $s0, 0
	add.d	$s4, $s2, $fp
	st.d	$s4, $s0, 8
	add.d	$a0, $s2, $s3
	st.d	$a0, $s0, 16
	move	$fp, $s2
	b	.LBB0_8
.LBB0_7:
	move	$s2, $fp
.LBB0_8:                                # %_ZNSt6vectorI6BigIntSaIS0_EE7reserveEm.exit
	sub.d	$a0, $s4, $fp
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.w	$s6, $a0, $a1
	bltu	$s1, $s6, .LBB0_60
# %bb.9:                                # %.lr.ph
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ori	$s7, $zero, 1
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	bstrins.d	$a0, $a0, 58, 32
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s0, 8
	ld.d	$a1, $s0, 16
	move	$s3, $a0
	st.d	$zero, $a0, 0
	addi.d	$fp, $a0, 8
	beq	$s8, $a1, .LBB0_22
# %bb.11:                               #   in Loop: Header=BB0_14 Depth=1
	st.d	$s3, $s8, 0
	st.d	$fp, $s8, 8
	st.d	$fp, $s8, 16
	addi.d	$a0, $s8, 24
.LBB0_12:                               # %_ZN6BigIntD2Ev.exit
                                        #   in Loop: Header=BB0_14 Depth=1
	st.d	$a0, $s0, 8
.LBB0_13:                               # %_ZN6BigIntD2Ev.exit
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.w	$s6, $s6, 1
	bltu	$s1, $s6, .LBB0_59
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_54 Depth 2
	beq	$s6, $s7, .LBB0_20
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	beqz	$s6, .LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	addi.w	$a2, $s6, -2
	addi.d	$a0, $sp, 88
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9Fibonacci10get_numberEj)
	jirl	$ra, $ra, 0
	addi.w	$a2, $s6, -1
.Ltmp15:
	addi.d	$a0, $sp, 64
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9Fibonacci10get_numberEj)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=1
.Ltmp18:
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 64
	pcaddu18i	$ra, %call36(_ZN6BigIntC2ES_S_)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s4, $s0, 8
	ld.d	$a0, $s0, 16
	beq	$s4, $a0, .LBB0_33
# %bb.19:                               # %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit38.thread
                                        #   in Loop: Header=BB0_14 Depth=1
	vld	$vr0, $sp, 112
	vst	$vr0, $s4, 0
	ld.d	$a0, $sp, 128
	st.d	$a0, $s4, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	st.d	$zero, $sp, 128
	addi.d	$a0, $s4, 24
	st.d	$a0, $s0, 8
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s2, $s0, 0
	ld.d	$s4, $s0, 8
	beq	$s2, $s4, .LBB0_29
# %bb.21:                               # %._ZN6BigIntD2Ev.exit26_crit_edge
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s8, $s0, 16
	b	.LBB0_31
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s2, $s0, 0
	sub.d	$s1, $s8, $s2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB0_71
# %bb.23:                               # %_ZNKSt6vectorI6BigIntSaIS0_EE12_M_check_lenEmPKc.exit.i
                                        #   in Loop: Header=BB0_14 Depth=1
	srli.d	$a0, $s1, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sltu	$a1, $s7, $a0
	maskeqz	$a2, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s5, $a0, $a1
	slli.d	$a0, $s5, 4
	alsl.d	$a0, $s5, $a0, 3
.Ltmp9:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.24:                               # %.noexc59
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$s4, $a0
	add.d	$a0, $a0, $s1
	stx.d	$s3, $s4, $s1
	st.d	$fp, $a0, 8
	st.d	$fp, $a0, 16
	move	$fp, $s4
	beq	$s2, $s8, .LBB0_27
# %bb.25:                               # %.lr.ph.i.i.i.i.i52.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$fp, $s4
	move	$a0, $s2
	.p2align	4, , 16
.LBB0_26:                               # %.lr.ph.i.i.i.i.i52
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 0
	ld.d	$a1, $a0, 16
	vst	$vr0, $fp, 0
	st.d	$a1, $fp, 16
	st.d	$zero, $a0, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	addi.d	$a0, $a0, 24
	addi.d	$fp, $fp, 24
	bne	$a0, $s8, .LBB0_26
.LBB0_27:                               # %_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i56
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	beqz	$s2, .LBB0_58
# %bb.28:                               # %_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m.exit.i.i
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $s0, 16
	sub.d	$a1, $a0, $s2
	move	$a0, $s2
	b	.LBB0_57
.LBB0_29:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s0, 16
	move	$s3, $a0
	st.d	$zero, $a0, 0
	addi.d	$fp, $a0, 8
	beq	$s2, $s8, .LBB0_46
# %bb.30:                               #   in Loop: Header=BB0_14 Depth=1
	st.d	$s3, $s4, 0
	st.d	$fp, $s4, 8
	st.d	$fp, $s4, 16
	addi.d	$s4, $s4, 24
	st.d	$s4, $s0, 8
.LBB0_31:                               # %_ZN6BigIntD2Ev.exit26
                                        #   in Loop: Header=BB0_14 Depth=1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s7, $a0, 0
	addi.d	$fp, $a0, 8
	beq	$s4, $s8, .LBB0_50
# %bb.32:                               #   in Loop: Header=BB0_14 Depth=1
	st.d	$s2, $s4, 0
	st.d	$fp, $s4, 8
	st.d	$fp, $s4, 16
	addi.d	$a0, $s4, 24
	b	.LBB0_12
.LBB0_33:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s2, $s0, 0
	sub.d	$fp, $s4, $s2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB0_69
# %bb.34:                               # %_ZNKSt6vectorI6BigIntSaIS0_EE12_M_check_lenEmPKc.exit.i88
                                        #   in Loop: Header=BB0_14 Depth=1
	srli.d	$a0, $fp, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sltu	$a1, $s7, $a0
	maskeqz	$a2, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s8, $a0, $a1
	slli.d	$a0, $s8, 4
	alsl.d	$a0, $s8, $a0, 3
.Ltmp21:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp22:
# %bb.35:                               # %.noexc100
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$s3, $a0
	vld	$vr0, $sp, 112
	ld.d	$a0, $sp, 128
	add.d	$a1, $s3, $fp
	vstx	$vr0, $s3, $fp
	st.d	$a0, $a1, 16
	st.d	$zero, $sp, 128
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	move	$fp, $s3
	beq	$s2, $s4, .LBB0_38
# %bb.36:                               # %.lr.ph.i.i.i.i.i91.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$fp, $s3
	move	$a0, $s2
	.p2align	4, , 16
.LBB0_37:                               # %.lr.ph.i.i.i.i.i91
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 0
	ld.d	$a1, $a0, 16
	vst	$vr0, $fp, 0
	st.d	$a1, $fp, 16
	st.d	$zero, $a0, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	addi.d	$a0, $a0, 24
	addi.d	$fp, $fp, 24
	bne	$a0, $s4, .LBB0_37
.LBB0_38:                               # %_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i95
                                        #   in Loop: Header=BB0_14 Depth=1
	beqz	$s2, .LBB0_40
# %bb.39:                               # %_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m.exit.i.i98
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $s0, 16
	sub.d	$a1, $a0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_40:                               # %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit38
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a1, $fp, 24
	st.d	$s3, $s0, 0
	ld.d	$a0, $sp, 112
	st.d	$a1, $s0, 8
	ori	$a1, $zero, 24
	mul.d	$a1, $s8, $a1
	add.d	$a1, $s3, $a1
	st.d	$a1, $s0, 16
	beqz	$a0, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a1, $sp, 128
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_42:                               # %_ZN6BigIntD2Ev.exit40
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a1, $sp, 80
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_44:                               # %_ZN6BigIntD2Ev.exit42
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB0_13
# %bb.45:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a1, $sp, 104
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_13
.LBB0_46:                               # %_ZNKSt6vectorI6BigIntSaIS0_EE12_M_check_lenEmPKc.exit.i60
                                        #   in Loop: Header=BB0_14 Depth=1
.Ltmp0:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.47:                               # %_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i67
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$s4, $a0
	st.d	$s3, $a0, 0
	st.d	$fp, $a0, 8
	st.d	$fp, $a0, 16
	beqz	$s2, .LBB0_49
# %bb.48:                               # %_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m.exit.i.i70
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_49:                               # %_ZN6BigIntD2Ev.exit26.thread
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$s8, $s4, 24
	st.d	$s4, $s0, 0
	st.d	$s8, $s0, 8
	st.d	$s8, $s0, 16
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s7, $a0, 0
	addi.d	$fp, $a0, 8
.LBB0_50:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s3, $s0, 0
	sub.d	$s1, $s8, $s3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB0_67
# %bb.51:                               # %_ZNKSt6vectorI6BigIntSaIS0_EE12_M_check_lenEmPKc.exit.i74
                                        #   in Loop: Header=BB0_14 Depth=1
	srli.d	$a0, $s1, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sltu	$a1, $s7, $a0
	maskeqz	$a2, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s5, $a0, $a1
	slli.d	$a0, $s5, 4
	alsl.d	$a0, $s5, $a0, 3
.Ltmp3:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.52:                               # %.noexc86
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$s4, $a0
	add.d	$a0, $a0, $s1
	stx.d	$s2, $s4, $s1
	st.d	$fp, $a0, 8
	st.d	$fp, $a0, 16
	move	$fp, $s4
	beq	$s3, $s8, .LBB0_55
# %bb.53:                               # %.lr.ph.i.i.i.i.i77.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$fp, $s4
	move	$a0, $s3
	.p2align	4, , 16
.LBB0_54:                               # %.lr.ph.i.i.i.i.i77
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 0
	ld.d	$a1, $a0, 16
	vst	$vr0, $fp, 0
	st.d	$a1, $fp, 16
	st.d	$zero, $a0, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	addi.d	$a0, $a0, 24
	addi.d	$fp, $fp, 24
	bne	$a0, $s8, .LBB0_54
.LBB0_55:                               # %_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i81
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	beqz	$s3, .LBB0_58
# %bb.56:                               # %_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m.exit.i.i84
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $s0, 16
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
.LBB0_57:                               # %.noexc
                                        #   in Loop: Header=BB0_14 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_58:                               # %.noexc
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a0, $fp, 24
	st.d	$s4, $s0, 0
	st.d	$a0, $s0, 8
	ori	$a0, $zero, 24
	mul.d	$a0, $s5, $a0
	add.d	$a0, $s4, $a0
	st.d	$a0, $s0, 16
	b	.LBB0_13
.LBB0_59:                               # %._crit_edge.loopexit
	ld.d	$s2, $s0, 0
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
.LBB0_60:                               # %._crit_edge
	bstrpick.d	$a0, $s1, 31, 0
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	add.d	$fp, $s2, $a0
	ld.d	$a1, $fp, 8
	ldx.d	$a0, $s2, $a0
	sub.d	$s1, $a1, $a0
	beq	$a1, $a0, .LBB0_62
# %bb.61:                               # %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB0_63
.LBB0_62:
	move	$s0, $zero
.LBB0_63:
	st.d	$s0, $s5, 0
	st.d	$s0, $s5, 8
	add.d	$a0, $s0, $s1
	st.d	$a0, $s5, 16
	ld.d	$a1, $fp, 0
	ld.d	$a0, $fp, 8
	sub.d	$s1, $a0, $a1
	blez	$s1, .LBB0_65
# %bb.64:
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s1
.LBB0_65:                               # %_ZN6BigIntC2ERKS_.exit
	st.d	$s0, $s5, 8
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB0_66:
	move	$a0, $fp
	sub.d	$fp, $s4, $fp
	bnez	$a0, .LBB0_5
	b	.LBB0_6
.LBB0_67:
.Ltmp6:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.68:                               # %.noexc85
.LBB0_69:
.Ltmp24:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp25:
# %bb.70:                               # %.noexc99
.LBB0_71:
.Ltmp12:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.72:                               # %.noexc58
.LBB0_73:                               # %_ZN6BigIntD2Ev.exit28
.Ltmp2:
	b	.LBB0_76
.LBB0_74:                               # %_ZN6BigIntD2Ev.exit21.loopexit.split-lp
.Ltmp14:
	b	.LBB0_76
.LBB0_75:                               # %_ZN6BigIntD2Ev.exit21.loopexit
.Ltmp11:
.LBB0_76:                               # %_ZN6BigIntD2Ev.exit21
	move	$fp, $a0
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_77:                               # %.loopexit.split-lp
.Ltmp26:
	b	.LBB0_79
.LBB0_78:                               # %.loopexit
.Ltmp23:
.LBB0_79:
	move	$fp, $a0
	ld.d	$a0, $sp, 112
	bnez	$a0, .LBB0_83
# %bb.80:                               # %_ZN6BigIntD2Ev.exit46
	ld.d	$a0, $sp, 64
	bnez	$a0, .LBB0_88
.LBB0_81:                               # %_ZN6BigIntD2Ev.exit48
	ld.d	$a0, $sp, 88
	bnez	$a0, .LBB0_90
.LBB0_82:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_83:
	ld.d	$a1, $sp, 128
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB0_81
	b	.LBB0_88
.LBB0_84:                               # %_ZN6BigIntD2Ev.exit35.loopexit.split-lp
.Ltmp8:
	b	.LBB0_86
.LBB0_85:                               # %_ZN6BigIntD2Ev.exit35.loopexit
.Ltmp5:
.LBB0_86:                               # %_ZN6BigIntD2Ev.exit35
	move	$fp, $a0
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_87:
.Ltmp20:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB0_81
.LBB0_88:
	ld.d	$a1, $sp, 80
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB0_82
	b	.LBB0_90
.LBB0_89:
.Ltmp17:
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB0_82
.LBB0_90:
	ld.d	$a1, $sp, 104
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN9Fibonacci10get_numberEj, .Lfunc_end0-_ZN9Fibonacci10get_numberEj
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
	.uleb128 .Ltmp15-.Lfunc_begin0          #   Call between .Lfunc_begin0 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp21-.Ltmp10                #   Call between .Ltmp10 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp0-.Ltmp22                 #   Call between .Ltmp22 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 9 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 10 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 11 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 12 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Lfunc_end0-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6BigIntC2ES_S_,"axG",@progbits,_ZN6BigIntC2ES_S_,comdat
	.weak	_ZN6BigIntC2ES_S_               # -- Begin function _ZN6BigIntC2ES_S_
	.p2align	5
	.type	_ZN6BigIntC2ES_S_,@function
_ZN6BigIntC2ES_S_:                      # @_ZN6BigIntC2ES_S_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $a1, 8
	ld.d	$a3, $a1, 0
	ld.d	$a0, $s0, 8
	ld.d	$a1, $s0, 0
	sub.d	$a2, $a2, $a3
	srai.d	$a3, $a2, 3
	sub.d	$a2, $a0, $a1
	srai.d	$s3, $a2, 3
	bgeu	$s3, $a3, .LBB1_3
# %bb.1:
	move	$a2, $s3
	move	$s3, $a3
	bgeu	$a2, $s3, .LBB1_6
.LBB1_2:
	sub.d	$a1, $s3, $a2
.Ltmp29:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorImSaImEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp30:
	b	.LBB1_9
.LBB1_3:
	bgeu	$a3, $s3, .LBB1_9
# %bb.4:
	sub.d	$a1, $s3, $a3
.Ltmp27:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorImSaImEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp28:
# %bb.5:                                # %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge
	ld.d	$a0, $s0, 8
	ld.d	$a1, $s0, 0
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 3
	bltu	$a2, $s3, .LBB1_2
.LBB1_6:
	bgeu	$s3, $a2, .LBB1_9
# %bb.7:
	alsl.d	$a1, $s3, $a1, 3
	beq	$a0, $a1, .LBB1_9
# %bb.8:
	st.d	$a1, $s0, 8
.LBB1_9:                                # %_ZNSt6vectorImSaImEE6resizeEm.exit13
	ld.d	$a0, $fp, 8
	ld.d	$s2, $fp, 0
	sub.d	$a1, $a0, $s2
	srai.d	$a1, $a1, 3
	bgeu	$a1, $s3, .LBB1_12
# %bb.10:
	sub.d	$a1, $s3, $a1
.Ltmp31:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt6vectorImSaImEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp32:
# %bb.11:                               # %._ZNSt6vectorImSaImEE6resizeEm.exit16_crit_edge
	ld.d	$s2, $fp, 0
	ld.d	$a0, $fp, 8
	b	.LBB1_15
.LBB1_12:
	bgeu	$s3, $a1, .LBB1_15
# %bb.13:
	alsl.d	$a1, $s3, $s2, 3
	beq	$a0, $a1, .LBB1_15
# %bb.14:
	st.d	$a1, $fp, 8
	move	$a0, $a1
.LBB1_15:                               # %_ZNSt6vectorImSaImEE6resizeEm.exit16
	ld.d	$s4, $s1, 0
	ld.d	$s5, $s1, 8
	ld.d	$s6, $s0, 0
	pcalau12i	$s3, %pc_hi20(_ZN6BigInt6head_sE)
	st.d	$zero, $s3, %pc_lo12(_ZN6BigInt6head_sE)
	sub.d	$s0, $a0, $s2
	beq	$a0, $s2, .LBB1_18
# %bb.16:                               # %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i
.Ltmp33:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp34:
# %bb.17:
	move	$s1, $a0
	add.d	$s7, $a0, $s0
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$s0, $s7
	bne	$s4, $s5, .LBB1_19
	b	.LBB1_21
.LBB1_18:                               # %.noexc17
	move	$s1, $zero
	beq	$s4, $s5, .LBB1_21
.LBB1_19:                               # %.lr.ph.i.preheader
	lu12i.w	$a0, -390731
	ori	$a0, $a0, 2643
	lu32i.d	$a0, 309295
	lu52i.d	$a0, $a0, 4
	lu12i.w	$a1, 244140
	ori	$a1, $a1, 2560
	.p2align	4, , 16
.LBB1_20:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s4, 0
	ld.d	$a3, $s6, 0
	ld.d	$a4, $s3, %pc_lo12(_ZN6BigInt6head_sE)
	add.d	$a2, $a3, $a2
	add.d	$a2, $a2, $a4
	srli.d	$a3, $a2, 9
	mulh.du	$a3, $a3, $a0
	srli.d	$a3, $a3, 11
	st.d	$a3, $s3, %pc_lo12(_ZN6BigInt6head_sE)
	mul.d	$a3, $a3, $a1
	sub.d	$a2, $a2, $a3
	st.d	$a2, $s2, 0
	addi.d	$s4, $s4, 8
	addi.d	$s6, $s6, 8
	addi.d	$s2, $s2, 8
	bne	$s4, $s5, .LBB1_20
.LBB1_21:                               # %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_S6_6BigIntET1_T_S9_T0_S8_T2_.exit
	beqz	$s1, .LBB1_23
# %bb.22:
	sub.d	$a1, $s0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_23:                               # %_ZN6BigIntD2Ev.exit
	ld.d	$s3, $s3, %pc_lo12(_ZN6BigInt6head_sE)
	beqz	$s3, .LBB1_33
# %bb.24:
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB1_26
# %bb.25:
	st.d	$s3, $a0, 0
	addi.d	$a0, $a0, 8
	st.d	$a0, $fp, 8
	b	.LBB1_33
.LBB1_26:
	ld.d	$s0, $fp, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB1_34
# %bb.27:                               # %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
	srai.d	$a0, $s1, 3
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 255
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 3
.Ltmp35:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.28:                               # %.noexc20
	move	$s2, $a0
	stx.d	$s3, $a0, $s1
	blez	$s1, .LBB1_30
# %bb.29:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_30:                               # %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB1_32
# %bb.31:                               # %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i.i
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_32:                               # %_ZNSt6vectorImSaImEE17_M_realloc_appendIJRKmEEEvDpOT_.exit.i
	addi.d	$a0, $s3, 8
	st.d	$s2, $fp, 0
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s4, $s2, 3
	st.d	$a0, $fp, 16
.LBB1_33:                               # %_ZNSt6vectorImSaImEE9push_backERKm.exit
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
.LBB1_34:
.Ltmp37:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp38:
# %bb.35:                               # %.noexc19
.LBB1_36:
.Ltmp39:
	ld.d	$a2, $fp, 0
	move	$s0, $a0
	beqz	$a2, .LBB1_38
# %bb.37:
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_38:                               # %_ZNSt6vectorImSaImEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN6BigIntC2ES_S_, .Lfunc_end1-_ZN6BigIntC2ES_S_
	.cfi_endproc
	.section	.gcc_except_table._ZN6BigIntC2ES_S_,"aG",@progbits,_ZN6BigIntC2ES_S_,comdat
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp34-.Ltmp29                #   Call between .Ltmp29 and .Ltmp34
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Lfunc_end1-.Ltmp38            #   Call between .Ltmp38 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZNK9Fibonacci16show_all_numbersEv # -- Begin function _ZNK9Fibonacci16show_all_numbersEv
	.p2align	5
	.type	_ZNK9Fibonacci16show_all_numbersEv,@function
_ZNK9Fibonacci16show_all_numbersEv:     # @_ZNK9Fibonacci16show_all_numbersEv
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -512
	.cfi_def_cfa_offset 512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
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
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	beq	$a0, $a1, .LBB2_13
# %bb.1:                                # %.lr.ph.preheader
	move	$s4, $zero
	move	$s5, $zero
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, -349526
	lu52i.d	$s6, $a0, -1366
	ori	$s7, $zero, 9
	ori	$s8, $zero, 304
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
.Ltmp40:
	addi.d	$a0, $sp, 48
	ori	$a2, $zero, 5
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp41:
# %bb.3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
                                        #   in Loop: Header=BB2_2 Depth=1
.Ltmp42:
	addi.d	$a0, $sp, 48
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp43:
# %bb.4:                                # %_ZNSolsEj.exit
                                        #   in Loop: Header=BB2_2 Depth=1
.Ltmp44:
	move	$s3, $a0
	ori	$a2, $zero, 4
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp45:
# %bb.5:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s4, 4
	alsl.d	$a1, $s4, $a1, 3
	add.d	$s4, $a0, $a1
	ld.d	$a2, $s4, 8
	ldx.d	$a0, $a0, $a1
	sub.d	$a1, $a2, $a0
	srai.d	$a1, $a1, 3
	addi.d	$s0, $a1, -1
	beqz	$s0, .LBB2_10
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	slli.d	$a0, $a1, 3
	addi.d	$s1, $a0, -8
	.p2align	4, , 16
.LBB2_7:                                # %.lr.ph.i
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 0
	ldx.d	$a1, $a0, $s1
.Ltmp46:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp47:
# %bb.8:                                # %.noexc14
                                        #   in Loop: Header=BB2_7 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, -24
	add.d	$a2, $a0, $a2
	st.d	$s7, $a2, 16
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	st.h	$s8, $a0, 224
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, -8
	bnez	$s0, .LBB2_7
# %bb.9:                                # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $s4, 0
.LBB2_10:                               # %._crit_edge.i
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a1, $a0, 0
.Ltmp49:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp50:
# %bb.11:                               # %_ZlsRSoRK6BigInt.exit
                                        #   in Loop: Header=BB2_2 Depth=1
.Ltmp51:
	ori	$a2, $zero, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp52:
# %bb.12:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	addi.w	$s5, $s5, 1
	bstrpick.d	$s4, $s5, 31, 0
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 3
	mul.d	$a0, $a0, $s6
	bltu	$s4, $a0, .LBB2_2
.LBB2_13:                               # %._crit_edge
	ld.d	$a0, $sp, 96
	addi.d	$s0, $sp, 32
	st.d	$s0, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $sp, 32
	beqz	$a0, .LBB2_16
# %bb.14:                               # %._crit_edge
	ld.d	$a1, $sp, 80
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB2_16
# %bb.15:
	ld.d	$a3, $sp, 88
	sub.d	$a4, $a0, $a3
.Ltmp54:
	addi.d	$a0, $sp, 16
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp55:
	b	.LBB2_17
.LBB2_16:
	addi.d	$a1, $sp, 128
.Ltmp56:
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp57:
.LBB2_17:                               # %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp59:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp60:
# %bb.18:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	ld.d	$a0, $sp, 16
	beq	$a0, $s0, .LBB2_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 48
	ld.d	$a2, $a0, 24
	ld.d	$a1, $a1, -24
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a3, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	addi.d	$a4, $sp, 48
	ld.d	$a0, $sp, 128
	stx.d	$a2, $a1, $a4
	addi.d	$a1, $a3, 16
	addi.d	$a2, $sp, 144
	st.d	$a1, $sp, 56
	beq	$a0, $a2, .LBB2_22
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_22:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 56
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.LBB2_23:
.Ltmp61:
	b	.LBB2_25
.LBB2_24:
.Ltmp58:
.LBB2_25:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s0, .LBB2_29
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_27:                               # %.loopexit.split-lp
.Ltmp53:
	move	$fp, $a0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_28:                               # %.loopexit
.Ltmp48:
	move	$fp, $a0
.LBB2_29:
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZNK9Fibonacci16show_all_numbersEv, .Lfunc_end2-_ZNK9Fibonacci16show_all_numbersEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp40-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp45-.Ltmp40                #   Call between .Ltmp40 and .Ltmp45
	.uleb128 .Ltmp53-.Lfunc_begin2          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp52-.Ltmp49                #   Call between .Ltmp49 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin2          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp57-.Ltmp54                #   Call between .Ltmp54 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin2          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin2          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Lfunc_end2-.Ltmp60            #   Call between .Ltmp60 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZNK9Fibonacci16show_last_numberEv # -- Begin function _ZNK9Fibonacci16show_last_numberEv
	.p2align	5
	.type	_ZNK9Fibonacci16show_last_numberEv,@function
_ZNK9Fibonacci16show_last_numberEv:     # @_ZNK9Fibonacci16show_last_numberEv
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -464
	.cfi_def_cfa_offset 464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s0, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
.Ltmp62:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 32
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp63:
# %bb.1:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $s0, 8
	ld.d	$a1, $s0, 0
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, -349526
	lu52i.d	$a1, $a1, -1366
	mul.d	$a0, $a0, $a1
	addi.d	$a1, $a0, -1
.Ltmp64:
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp65:
# %bb.2:                                # %_ZNSolsEm.exit
.Ltmp66:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp67:
# %bb.3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
	ld.d	$s0, $s0, 8
	ld.d	$a1, $s0, -16
	ld.d	$a0, $s0, -24
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	addi.d	$s1, $a1, -1
	beqz	$s1, .LBB3_8
# %bb.4:                                # %.lr.ph.i.preheader
	slli.d	$a0, $a1, 3
	addi.d	$s2, $a0, -8
	ori	$s3, $zero, 9
	ori	$s4, $zero, 304
	.p2align	4, , 16
.LBB3_5:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, -24
	ldx.d	$a1, $a0, $s2
.Ltmp68:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.6:                                # %.noexc7
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, -24
	add.d	$a2, $a0, $a2
	st.d	$s3, $a2, 16
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	st.h	$s4, $a0, 224
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, -8
	bnez	$s1, .LBB3_5
# %bb.7:                                # %._crit_edge.loopexit.i
	ld.d	$a0, $s0, -24
.LBB3_8:                                # %._crit_edge.i
	ld.d	$a1, $a0, 0
.Ltmp71:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp72:
# %bb.9:                                # %_ZlsRSoRK6BigInt.exit
.Ltmp73:
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp74:
# %bb.10:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
	ld.d	$a0, $sp, 80
	addi.d	$s0, $sp, 16
	st.d	$s0, $sp, 0
	st.d	$zero, $sp, 8
	st.b	$zero, $sp, 16
	beqz	$a0, .LBB3_13
# %bb.11:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
	ld.d	$a1, $sp, 64
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB3_13
# %bb.12:
	ld.d	$a3, $sp, 72
	sub.d	$a4, $a0, $a3
.Ltmp76:
	addi.d	$a0, $sp, 0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp77:
	b	.LBB3_14
.LBB3_13:
	addi.d	$a1, $sp, 112
.Ltmp78:
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp79:
.LBB3_14:                               # %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
	ld.d	$a1, $sp, 0
	ld.d	$a2, $sp, 8
.Ltmp81:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp82:
# %bb.15:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	ld.d	$a0, $sp, 0
	beq	$a0, $s0, .LBB3_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_17:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 32
	ld.d	$a2, $a0, 24
	ld.d	$a1, $a1, -24
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a3, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	addi.d	$a4, $sp, 32
	ld.d	$a0, $sp, 112
	stx.d	$a2, $a1, $a4
	addi.d	$a1, $a3, 16
	addi.d	$a2, $sp, 128
	st.d	$a1, $sp, 40
	beq	$a0, $a2, .LBB3_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_19:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 40
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.LBB3_20:
.Ltmp83:
	b	.LBB3_22
.LBB3_21:
.Ltmp80:
.LBB3_22:
	ld.d	$a2, $sp, 0
	move	$fp, $a0
	beq	$a2, $s0, .LBB3_26
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
	ld.d	$a0, $sp, 16
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_24:                               # %.loopexit.split-lp
.Ltmp75:
	move	$fp, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_25:                               # %.loopexit
.Ltmp70:
	move	$fp, $a0
.LBB3_26:
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZNK9Fibonacci16show_last_numberEv, .Lfunc_end3-_ZNK9Fibonacci16show_last_numberEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp62-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp67-.Ltmp62                #   Call between .Ltmp62 and .Ltmp67
	.uleb128 .Ltmp75-.Lfunc_begin3          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin3          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp74-.Ltmp71                #   Call between .Ltmp71 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin3          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp79-.Ltmp76                #   Call between .Ltmp76 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin3          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin3          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Lfunc_end3-.Ltmp82            #   Call between .Ltmp82 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9Fibonacci11show_numberEm    # -- Begin function _ZN9Fibonacci11show_numberEm
	.p2align	5
	.type	_ZN9Fibonacci11show_numberEm,@function
_ZN9Fibonacci11show_numberEm:           # @_ZN9Fibonacci11show_numberEm
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -496
	.cfi_def_cfa_offset 496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	ld.d	$a1, $s0, 0
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, -349526
	lu52i.d	$a1, $a1, -1366
	mul.d	$a0, $a0, $a1
	bltu	$fp, $a0, .LBB4_4
# %bb.1:
.Ltmp84:
	addi.w	$a2, $fp, 0
	addi.d	$a0, $sp, 40
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9Fibonacci10get_numberEj)
	jirl	$ra, $ra, 0
.Ltmp85:
# %bb.2:
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB4_4
# %bb.3:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_4:                                # %_ZN6BigIntD2Ev.exit
.Ltmp86:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 64
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp87:
# %bb.5:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp88:
	addi.d	$a0, $sp, 64
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp89:
# %bb.6:                                # %_ZNSolsEm.exit
.Ltmp90:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp91:
# %bb.7:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
	ld.d	$a0, $s0, 0
	slli.d	$a1, $fp, 4
	alsl.d	$a1, $fp, $a1, 3
	add.d	$fp, $a0, $a1
	ld.d	$a2, $fp, 8
	ldx.d	$a0, $a0, $a1
	sub.d	$a1, $a2, $a0
	srai.d	$a1, $a1, 3
	addi.d	$s0, $a1, -1
	beqz	$s0, .LBB4_12
# %bb.8:                                # %.lr.ph.i.preheader
	slli.d	$a0, $a1, 3
	addi.d	$s2, $a0, -8
	ori	$s3, $zero, 9
	ori	$s4, $zero, 304
	.p2align	4, , 16
.LBB4_9:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a1, $a0, $s2
.Ltmp92:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp93:
# %bb.10:                               # %.noexc12
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, -24
	add.d	$a2, $a0, $a2
	st.d	$s3, $a2, 16
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	st.h	$s4, $a0, 224
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, -8
	bnez	$s0, .LBB4_9
# %bb.11:                               # %._crit_edge.loopexit.i
	ld.d	$a0, $fp, 0
.LBB4_12:                               # %._crit_edge.i
	ld.d	$a1, $a0, 0
.Ltmp95:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp96:
# %bb.13:                               # %_ZlsRSoRK6BigInt.exit
.Ltmp97:
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp98:
# %bb.14:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
	ld.d	$a0, $sp, 112
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $sp, 24
	beqz	$a0, .LBB4_17
# %bb.15:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
	ld.d	$a1, $sp, 96
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB4_17
# %bb.16:
	ld.d	$a3, $sp, 104
	sub.d	$a4, $a0, $a3
.Ltmp100:
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp101:
	b	.LBB4_18
.LBB4_17:
	addi.d	$a1, $sp, 144
.Ltmp102:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp103:
.LBB4_18:                               # %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
	ld.d	$a1, $sp, 8
	ld.d	$a2, $sp, 16
.Ltmp105:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp106:
# %bb.19:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	ld.d	$a0, $sp, 8
	beq	$a0, $s0, .LBB4_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 64
	ld.d	$a2, $a0, 24
	ld.d	$a1, $a1, -24
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a3, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	addi.d	$a4, $sp, 64
	ld.d	$a0, $sp, 144
	stx.d	$a2, $a1, $a4
	addi.d	$a1, $a3, 16
	addi.d	$a2, $sp, 160
	st.d	$a1, $sp, 72
	beq	$a0, $a2, .LBB4_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_23:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 72
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.LBB4_24:
.Ltmp107:
	b	.LBB4_26
.LBB4_25:
.Ltmp104:
.LBB4_26:
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s0, .LBB4_30
# %bb.27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_28:                               # %.loopexit.split-lp
.Ltmp99:
	move	$fp, $a0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_29:                               # %.loopexit
.Ltmp94:
	move	$fp, $a0
.LBB4_30:
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN9Fibonacci11show_numberEm, .Lfunc_end4-_ZN9Fibonacci11show_numberEm
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp84-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp99-.Lfunc_begin4          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp91-.Ltmp86                #   Call between .Ltmp86 and .Ltmp91
	.uleb128 .Ltmp99-.Lfunc_begin4          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin4          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp98-.Ltmp95                #   Call between .Ltmp95 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin4          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp103-.Ltmp100              #   Call between .Ltmp100 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin4         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin4         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Lfunc_end4-.Ltmp106           #   Call between .Ltmp106 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z5usagePPc                     # -- Begin function _Z5usagePPc
	.p2align	5
	.type	_Z5usagePPc,@function
_Z5usagePPc:                            # @_Z5usagePPc
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
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_33
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_3
# %bb.2:
	ld.bu	$a0, $s0, 67
	b	.LBB5_4
.LBB5_3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB5_4:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a2, $a1, %got_pc_lo12(_ZSt4cerr)
	ext.w.b	$a1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 0
	beqz	$s1, .LBB5_6
# %bb.5:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB5_7
.LBB5_6:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB5_7:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ori	$a2, $zero, 4
	st.d	$a2, $a1, 16
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.wu	$a1, $a0, 24
	addi.w	$s2, $zero, -177
	lu32i.d	$s2, 0
	and	$a1, $a1, $s2
	addi.d	$a1, $a1, 32
	st.w	$a1, $a0, 24
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB5_33
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB5_10
# %bb.9:
	ld.bu	$a0, $s1, 67
	b	.LBB5_11
.LBB5_10:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB5_11:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 0
	beqz	$s1, .LBB5_13
# %bb.12:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB5_14
.LBB5_13:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB5_14:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s2
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 4
	st.d	$a1, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 36
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB5_33
# %bb.15:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB5_17
# %bb.16:
	ld.bu	$a0, $s1, 67
	b	.LBB5_18
.LBB5_17:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB5_18:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 0
	beqz	$s1, .LBB5_20
# %bb.19:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB5_21
.LBB5_20:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s2
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 4
	st.d	$a1, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 58
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB5_33
# %bb.22:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i28
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB5_24
# %bb.23:
	ld.bu	$a0, $s1, 67
	b	.LBB5_25
.LBB5_24:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB5_25:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit31
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB5_27
# %bb.26:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB5_28
.LBB5_27:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB5_28:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s2
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 4
	st.d	$a1, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 67
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 6
	ori	$a1, $a0, 424
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_33
# %bb.29:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i33
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_31
# %bb.30:
	ld.bu	$a0, $s0, 67
	b	.LBB5_32
.LBB5_31:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB5_32:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit36
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB5_33:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_Z5usagePPc, .Lfunc_end5-_Z5usagePPc
	.cfi_endproc
                                        # -- End function
	.globl	_Z5checkB5cxx11iPPc             # -- Begin function _Z5checkB5cxx11iPPc
	.p2align	5
	.type	_Z5checkB5cxx11iPPc,@function
_Z5checkB5cxx11iPPc:                    # @_Z5checkB5cxx11iPPc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	ori	$a3, $zero, 2
	move	$fp, $a0
	blt	$a3, $a1, .LBB6_2
# %bb.1:
	addi.d	$a0, $fp, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	b	.LBB6_19
.LBB6_2:
	ld.d	$s0, $a2, 8
	addi.d	$s2, $sp, 16
	st.d	$s2, $sp, 0
	beqz	$s0, .LBB6_20
# %bb.3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 32
	move	$a0, $s2
	bltu	$s1, $a1, .LBB6_5
# %bb.4:                                # %.noexc.i
	addi.d	$a0, $sp, 0
	addi.d	$a1, $sp, 32
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32
	st.d	$a0, $sp, 0
	st.d	$a1, $sp, 16
.LBB6_5:                                # %._crit_edge.i.i
	beqz	$s1, .LBB6_9
# %bb.6:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB6_8
# %bb.7:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB6_9
.LBB6_8:
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_9:
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 0
	st.d	$a0, $sp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$s0, $sp, 8
	ori	$a0, $zero, 2
	beq	$s0, $a0, .LBB6_16
# %bb.10:
	ori	$a0, $zero, 4
	beq	$s0, $a0, .LBB6_13
# %bb.11:
	ori	$a0, $zero, 3
	bne	$s0, $a0, .LBB6_17
# %bb.12:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$s1, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_17
	b	.LBB6_15
.LBB6_13:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9
	ld.d	$s1, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_15
# %bb.14:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11
	ld.w	$a0, $s1, 0
	lu12i.w	$a1, 411366
	ori	$a1, $a1, 370
	bne	$a0, $a1, .LBB6_17
.LBB6_15:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	addi.d	$a0, $fp, 16
	st.d	$a0, $fp, 0
	addi.d	$a2, $s0, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 8
	ld.d	$a0, $sp, 0
	bne	$a0, $s2, .LBB6_18
	b	.LBB6_19
.LBB6_16:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7
	ld.d	$s1, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_15
.LBB6_17:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread21
	addi.d	$a0, $fp, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	ld.d	$a0, $sp, 0
	beq	$a0, $s2, .LBB6_19
.LBB6_18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_19:
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB6_20:                               # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_Z5checkB5cxx11iPPc, .Lfunc_end6-_Z5checkB5cxx11iPPc
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$a0, $sp, 32
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_Z5checkB5cxx11iPPc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB7_5
# %bb.1:
	ld.d	$a0, $s0, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	ld.d	$s2, $sp, 32
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB7_7
.LBB7_2:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread88
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB7_16
.LBB7_3:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread89
	ori	$s3, $zero, 4
	beq	$a0, $s3, .LBB7_33
.LBB7_4:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52.thread90
	beq	$a0, $s3, .LBB7_49
	b	.LBB7_68
.LBB7_5:
.Ltmp108:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a3, $a0, %pc_lo12(.L.str.9)
	addi.d	$a0, $sp, 32
	ori	$a4, $zero, 2
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp109:
# %bb.6:
	lu12i.w	$a0, 12
	ori	$fp, $a0, 848
	ld.d	$a0, $sp, 40
	ld.d	$s2, $sp, 32
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB7_2
.LBB7_7:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_68
# %bb.8:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
	st.d	$zero, $sp, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16
.Ltmp111:
	addi.w	$a2, $fp, 0
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9Fibonacci10get_numberEj)
	jirl	$ra, $ra, 0
.Ltmp112:
# %bb.9:
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB7_11
# %bb.10:
	ld.d	$a1, $sp, 80
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_11:
.Ltmp114:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNK9Fibonacci16show_all_numbersEv)
	jirl	$ra, $ra, 0
.Ltmp115:
# %bb.12:
	ld.d	$s2, $sp, 8
	ld.d	$s3, $sp, 16
	bne	$s2, $s3, .LBB7_23
# %bb.13:                               # %_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E.exit.i.i
	beqz	$s2, .LBB7_15
.LBB7_14:
	ld.d	$a0, $sp, 24
	sub.d	$a1, $a0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_15:                               # %_ZN9FibonacciD2Ev.exit
	ld.d	$a0, $sp, 40
	ld.d	$s2, $sp, 32
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB7_3
.LBB7_16:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35
	ld.hu	$a0, $s2, 0
	lu12i.w	$a1, 6
	ori	$a1, $a1, 2164
	bne	$a0, $a1, .LBB7_68
# %bb.17:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread
	st.d	$zero, $sp, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16
.Ltmp117:
	addi.w	$a2, $fp, 0
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9Fibonacci10get_numberEj)
	jirl	$ra, $ra, 0
.Ltmp118:
# %bb.18:
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB7_20
# %bb.19:
	ld.d	$a1, $sp, 80
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_20:
.Ltmp120:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNK9Fibonacci16show_last_numberEv)
	jirl	$ra, $ra, 0
.Ltmp121:
# %bb.21:
	ld.d	$s2, $sp, 8
	ld.d	$s3, $sp, 16
	bne	$s2, $s3, .LBB7_26
	b	.LBB7_30
	.p2align	4, , 16
.LBB7_22:                               # %_ZSt8_DestroyI6BigIntEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB7_23 Depth=1
	addi.d	$s2, $s2, 24
	beq	$s2, $s3, .LBB7_28
.LBB7_23:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB7_22
# %bb.24:                               #   in Loop: Header=BB7_23 Depth=1
	ld.d	$a1, $s2, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_22
	.p2align	4, , 16
.LBB7_25:                               # %_ZSt8_DestroyI6BigIntEvPT_.exit.i.i.i44
                                        #   in Loop: Header=BB7_26 Depth=1
	addi.d	$s2, $s2, 24
	beq	$s2, $s3, .LBB7_29
.LBB7_26:                               # %.lr.ph.i.i.i41
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB7_25
# %bb.27:                               #   in Loop: Header=BB7_26 Depth=1
	ld.d	$a1, $s2, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_25
.LBB7_28:                               # %_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i
	ld.d	$s2, $sp, 8
	bnez	$s2, .LBB7_14
	b	.LBB7_15
.LBB7_29:                               # %_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i46
	ld.d	$s2, $sp, 8
.LBB7_30:                               # %_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E.exit.i.i48
	beqz	$s2, .LBB7_32
# %bb.31:
	ld.d	$a0, $sp, 24
	sub.d	$a1, $a0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_32:                               # %_ZN9FibonacciD2Ev.exit50
	ld.d	$a0, $sp, 40
	ld.d	$s2, $sp, 32
	ori	$s3, $zero, 4
	bne	$a0, $s3, .LBB7_4
.LBB7_33:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52
	ld.w	$a0, $s2, 0
	lu12i.w	$a1, 415446
	ori	$a1, $a1, 3955
	bne	$a0, $a1, .LBB7_49
# %bb.34:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52.thread
	st.d	$zero, $sp, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16
.Ltmp123:
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN9Fibonacci10get_numberEj)
	jirl	$ra, $ra, 0
.Ltmp124:
# %bb.35:
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB7_37
# %bb.36:
	ld.d	$a1, $sp, 80
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_37:                               # %_ZN9FibonacciC2Ej.exit56
	ori	$a0, $zero, 3
	blt	$s1, $a0, .LBB7_41
# %bb.38:                               # %.lr.ph.preheader
	addi.d	$s2, $s0, 16
	addi.d	$s4, $s1, -2
	.p2align	4, , 16
.LBB7_39:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
.Ltmp126:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9Fibonacci11show_numberEm)
	jirl	$ra, $ra, 0
.Ltmp127:
# %bb.40:                               #   in Loop: Header=BB7_39 Depth=1
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 8
	bnez	$s4, .LBB7_39
.LBB7_41:                               # %._crit_edge
	ld.d	$s2, $sp, 8
	ld.d	$s4, $sp, 16
	bne	$s2, $s4, .LBB7_43
	b	.LBB7_46
	.p2align	4, , 16
.LBB7_42:                               # %_ZSt8_DestroyI6BigIntEvPT_.exit.i.i.i61
                                        #   in Loop: Header=BB7_43 Depth=1
	addi.d	$s2, $s2, 24
	beq	$s2, $s4, .LBB7_45
.LBB7_43:                               # %.lr.ph.i.i.i58
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB7_42
# %bb.44:                               #   in Loop: Header=BB7_43 Depth=1
	ld.d	$a1, $s2, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_42
.LBB7_45:                               # %_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i63
	ld.d	$s2, $sp, 8
.LBB7_46:                               # %_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E.exit.i.i65
	beqz	$s2, .LBB7_48
# %bb.47:
	ld.d	$a0, $sp, 24
	sub.d	$a1, $a0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_48:                               # %_ZN9FibonacciD2Ev.exit67
	ld.d	$a0, $sp, 40
	ld.d	$s2, $sp, 32
	bne	$a0, $s3, .LBB7_68
.LBB7_49:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69
	ld.w	$a0, $s2, 0
	lu12i.w	$a1, 411366
	ori	$a1, $a1, 370
	bne	$a0, $a1, .LBB7_68
# %bb.50:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69.thread
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB7_52
# %bb.51:
	lu12i.w	$a0, 6
	ori	$s0, $a0, 424
	b	.LBB7_53
.LBB7_52:
	ld.d	$a0, $s0, 24
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB7_53:
	st.d	$zero, $sp, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16
.Ltmp129:
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN9Fibonacci10get_numberEj)
	jirl	$ra, $ra, 0
.Ltmp130:
# %bb.54:
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB7_56
# %bb.55:
	ld.d	$a1, $sp, 80
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_56:                               # %_ZN9FibonacciC2Ej.exit73
	addi.w	$a0, $fp, 0
	beqz	$a0, .LBB7_60
# %bb.57:
	addi.w	$s0, $s0, 0
	.p2align	4, , 16
.LBB7_58:                               # %.lr.ph95
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	mod.w	$a1, $a0, $s0
.Ltmp132:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9Fibonacci11show_numberEm)
	jirl	$ra, $ra, 0
.Ltmp133:
# %bb.59:                               #   in Loop: Header=BB7_58 Depth=1
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB7_58
.LBB7_60:                               # %._crit_edge96
	ld.d	$fp, $sp, 8
	ld.d	$s0, $sp, 16
	bne	$fp, $s0, .LBB7_62
	b	.LBB7_65
	.p2align	4, , 16
.LBB7_61:                               # %_ZSt8_DestroyI6BigIntEvPT_.exit.i.i.i78
                                        #   in Loop: Header=BB7_62 Depth=1
	addi.d	$fp, $fp, 24
	beq	$fp, $s0, .LBB7_64
.LBB7_62:                               # %.lr.ph.i.i.i75
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB7_61
# %bb.63:                               #   in Loop: Header=BB7_62 Depth=1
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_61
.LBB7_64:                               # %_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i80
	ld.d	$fp, $sp, 8
.LBB7_65:                               # %_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E.exit.i.i82
	beqz	$fp, .LBB7_67
# %bb.66:
	ld.d	$a0, $sp, 24
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_67:                               # %_ZN9FibonacciD2Ev.exit84
	ld.d	$s2, $sp, 32
.LBB7_68:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit69.thread91
	addi.d	$a0, $sp, 48
	beq	$s2, $a0, .LBB7_70
# %bb.69:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 48
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_70:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $zero
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB7_71:
.Ltmp125:
	b	.LBB7_77
.LBB7_72:
.Ltmp131:
	b	.LBB7_77
.LBB7_73:
.Ltmp122:
	b	.LBB7_81
.LBB7_74:
.Ltmp119:
	b	.LBB7_77
.LBB7_75:
.Ltmp116:
	b	.LBB7_81
.LBB7_76:
.Ltmp113:
.LBB7_77:
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt6vectorI6BigIntSaIS0_EED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB7_82
.LBB7_78:
.Ltmp110:
	move	$fp, $a0
	b	.LBB7_82
.LBB7_79:
.Ltmp128:
	b	.LBB7_81
.LBB7_80:
.Ltmp134:
.LBB7_81:
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9FibonacciD2Ev)
	jirl	$ra, $ra, 0
.LBB7_82:
	ld.d	$a0, $sp, 32
	addi.d	$a1, $sp, 48
	beq	$a0, $a1, .LBB7_84
# %bb.83:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
	ld.d	$a1, $sp, 48
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_84:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp108-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin5         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp111-.Ltmp109              #   Call between .Ltmp109 and .Ltmp111
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin5         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp114-.Ltmp112              #   Call between .Ltmp112 and .Ltmp114
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin5         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp117-.Ltmp115              #   Call between .Ltmp115 and .Ltmp117
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin5         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp120-.Ltmp118              #   Call between .Ltmp118 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin5         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp123-.Ltmp121              #   Call between .Ltmp121 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin5         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp126-.Ltmp124              #   Call between .Ltmp124 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin5         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin5         # >> Call Site 15 <<
	.uleb128 .Ltmp129-.Ltmp127              #   Call between .Ltmp127 and .Ltmp129
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin5         # >> Call Site 16 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin5         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin5         # >> Call Site 17 <<
	.uleb128 .Ltmp132-.Ltmp130              #   Call between .Ltmp130 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin5         # >> Call Site 18 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin5         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin5         # >> Call Site 19 <<
	.uleb128 .Lfunc_end7-.Ltmp133           #   Call between .Ltmp133 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9FibonacciD2Ev,"axG",@progbits,_ZN9FibonacciD2Ev,comdat
	.weak	_ZN9FibonacciD2Ev               # -- Begin function _ZN9FibonacciD2Ev
	.p2align	5
	.type	_ZN9FibonacciD2Ev,@function
_ZN9FibonacciD2Ev:                      # @_ZN9FibonacciD2Ev
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
	ld.d	$s0, $a0, 0
	ld.d	$s1, $a0, 8
	bne	$s0, $s1, .LBB8_4
# %bb.1:                                # %_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E.exit.i
	beqz	$s0, .LBB8_7
.LBB8_2:
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
	.p2align	4, , 16
.LBB8_3:                                # %_ZSt8_DestroyI6BigIntEvPT_.exit.i.i
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB8_6
.LBB8_4:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB8_3
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a1, $s0, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB8_3
.LBB8_6:                                # %_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i
	ld.d	$s0, $fp, 0
	bnez	$s0, .LBB8_2
.LBB8_7:                                # %_ZNSt6vectorI6BigIntSaIS0_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	_ZN9FibonacciD2Ev, .Lfunc_end8-_ZN9FibonacciD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorImSaImEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorImSaImEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorImSaImEE17_M_default_appendEm # -- Begin function _ZNSt6vectorImSaImEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorImSaImEE17_M_default_appendEm,@function
_ZNSt6vectorImSaImEE17_M_default_appendEm: # @_ZNSt6vectorImSaImEE17_M_default_appendEm
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
	beqz	$a1, .LBB9_15
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a1, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $a1
	srai.d	$a0, $a0, 3
	bgeu	$a0, $s0, .LBB9_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a1, $s1
	srai.d	$a1, $s2, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB9_16
# %bb.3:
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
	ori	$a0, $zero, 1
	stx.d	$zero, $s3, $s2
	beq	$s0, $a0, .LBB9_5
# %bb.4:                                # %.lr.ph.i.preheader.i.i.i31
	addi.d	$a0, $s6, 8
	slli.d	$a1, $s0, 3
	addi.d	$a2, $a1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB9_5:                                # %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
	blez	$s2, .LBB9_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_7:                                # %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
	beqz	$s1, .LBB9_9
# %bb.8:                                # %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_9:                                # %_ZNSt6vectorImSaImEE12_Guard_allocD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 3
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 3
	st.d	$a0, $fp, 16
	b	.LBB9_15
.LBB9_10:
	st.d	$zero, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a0, $a1, 8
	bne	$s0, $a2, .LBB9_12
# %bb.11:
	st.d	$a0, $fp, 8
	b	.LBB9_15
.LBB9_12:
	slli.d	$a2, $s0, 3
	ori	$a3, $zero, 8
	alsl.d	$s0, $s0, $a1, 3
	beq	$a2, $a3, .LBB9_14
# %bb.13:                               # %.lr.ph.i.preheader.i.i.i
	addi.d	$a2, $a2, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB9_14:                               # %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit
	st.d	$s0, $fp, 8
.LBB9_15:
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
.LBB9_16:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZNSt6vectorImSaImEE17_M_default_appendEm, .Lfunc_end9-_ZNSt6vectorImSaImEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorI6BigIntSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI6BigIntSaIS0_EED2Ev,comdat
	.weak	_ZNSt6vectorI6BigIntSaIS0_EED2Ev # -- Begin function _ZNSt6vectorI6BigIntSaIS0_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorI6BigIntSaIS0_EED2Ev,@function
_ZNSt6vectorI6BigIntSaIS0_EED2Ev:       # @_ZNSt6vectorI6BigIntSaIS0_EED2Ev
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
	ld.d	$s0, $a0, 0
	ld.d	$s1, $a0, 8
	bne	$s0, $s1, .LBB10_4
# %bb.1:                                # %_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E.exit
	beqz	$s0, .LBB10_7
.LBB10_2:
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
	.p2align	4, , 16
.LBB10_3:                               # %_ZSt8_DestroyI6BigIntEvPT_.exit.i
                                        #   in Loop: Header=BB10_4 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB10_6
.LBB10_4:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB10_3
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a1, $s0, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB10_3
.LBB10_6:                               # %_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E.exitthread-pre-split
	ld.d	$s0, $fp, 0
	bnez	$s0, .LBB10_2
.LBB10_7:                               # %_ZNSt12_Vector_baseI6BigIntSaIS0_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	_ZNSt6vectorI6BigIntSaIS0_EED2Ev, .Lfunc_end10-_ZNSt6vectorI6BigIntSaIS0_EED2Ev
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Fib ["
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"] = "
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n"
	.size	.L.str.2, 2

	.type	_ZN6BigInt6head_sE,@object      # @_ZN6BigInt6head_sE
	.bss
	.globl	_ZN6BigInt6head_sE
	.p2align	3, 0x0
_ZN6BigInt6head_sE:
	.dword	0                               # 0x0
	.size	_ZN6BigInt6head_sE, 8

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"bigfib"
	.size	.L.str.3, 7

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"USAGE : "
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"  "
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" "
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"all"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	" <N>              ---> Fibonacci [0 - N]"
	.size	.L.str.8, 41

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"th"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	" <N>              ---> Fibonacci [N]"
	.size	.L.str.10, 37

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"some"
	.size	.L.str.11, 5

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	" <N1> [<N2> ...]  ---> Fibonacci [N1], Fibonacci [N2], ..."
	.size	.L.str.12, 59

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"rand"
	.size	.L.str.13, 5

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	" <K>  [<M>]       ---> K random Fibonacci numbers ( < M; Default = "
	.size	.L.str.14, 68

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	" )"
	.size	.L.str.15, 3

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.16, 26

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"vector::_M_default_append"
	.size	.L.str.17, 26

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"basic_string: construction from null is not valid"
	.size	.L.str.19, 50

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
	.addrsig_sym _ZSt4cerr
