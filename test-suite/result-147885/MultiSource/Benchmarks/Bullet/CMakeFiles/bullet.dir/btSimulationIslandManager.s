	.file	"btSimulationIslandManager.cpp"
	.text
	.globl	_ZN25btSimulationIslandManagerC2Ev # -- Begin function _ZN25btSimulationIslandManagerC2Ev
	.p2align	5
	.type	_ZN25btSimulationIslandManagerC2Ev,@function
_ZN25btSimulationIslandManagerC2Ev:     # @_ZN25btSimulationIslandManagerC2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV25btSimulationIslandManager+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV25btSimulationIslandManager+16)
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(_ZN11btUnionFindC1Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 64
	st.d	$zero, $fp, 56
	st.d	$zero, $fp, 44
	st.b	$a0, $fp, 96
	st.d	$zero, $fp, 88
	st.d	$zero, $fp, 76
	st.b	$a0, $fp, 104
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN25btSimulationIslandManagerC2Ev, .Lfunc_end0-_ZN25btSimulationIslandManagerC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev # -- Begin function _ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev,@function
_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev: # @_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB1_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB1_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev, .Lfunc_end1-_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev
	.cfi_endproc
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
.Lfunc_end2:
	.size	__clang_call_terminate, .Lfunc_end2-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN25btSimulationIslandManagerD2Ev # -- Begin function _ZN25btSimulationIslandManagerD2Ev
	.p2align	5
	.type	_ZN25btSimulationIslandManagerD2Ev,@function
_ZN25btSimulationIslandManagerD2Ev:     # @_ZN25btSimulationIslandManagerD2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	ld.d	$a0, $a0, 88
	pcalau12i	$a1, %pc_hi20(_ZTV25btSimulationIslandManager+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV25btSimulationIslandManager+16)
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB3_3
# %bb.1:
	ld.b	$a1, $fp, 96
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_3
# %bb.2:
.Ltmp0:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp1:
.LBB3_3:
	ld.d	$a0, $fp, 56
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 96
	st.d	$zero, $fp, 88
	st.d	$zero, $fp, 76
	beqz	$a0, .LBB3_6
# %bb.4:
	ld.b	$a1, $fp, 64
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_6
# %bb.5:
.Ltmp5:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp6:
.LBB3_6:
	st.b	$s0, $fp, 64
	st.d	$zero, $fp, 56
	addi.d	$a0, $fp, 8
	st.d	$zero, $fp, 44
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN11btUnionFindD1Ev)
	jr	$t8
.LBB3_7:
.Ltmp7:
	move	$s0, $a0
	b	.LBB3_9
.LBB3_8:
.Ltmp2:
	move	$s0, $a0
	addi.d	$a0, $fp, 40
.Ltmp3:
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev)
	jirl	$ra, $ra, 0
.Ltmp4:
.LBB3_9:
	addi.d	$a0, $fp, 8
.Ltmp8:
	pcaddu18i	$ra, %call36(_ZN11btUnionFindD1Ev)
	jirl	$ra, $ra, 0
.Ltmp9:
# %bb.10:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_11:
.Ltmp10:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN25btSimulationIslandManagerD2Ev, .Lfunc_end3-_ZN25btSimulationIslandManagerD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
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
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp9-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Lfunc_end3-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end3
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
	.globl	_ZN25btSimulationIslandManagerD0Ev # -- Begin function _ZN25btSimulationIslandManagerD0Ev
	.p2align	5
	.type	_ZN25btSimulationIslandManagerD0Ev,@function
_ZN25btSimulationIslandManagerD0Ev:     # @_ZN25btSimulationIslandManagerD0Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
.Ltmp11:
	pcaddu18i	$ra, %call36(_ZN25btSimulationIslandManagerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp12:
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB4_2:
.Ltmp13:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN25btSimulationIslandManagerD0Ev, .Lfunc_end4-_ZN25btSimulationIslandManagerD0Ev
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
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp12            #   Call between .Ltmp12 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN25btSimulationIslandManager13initUnionFindEi # -- Begin function _ZN25btSimulationIslandManager13initUnionFindEi
	.p2align	5
	.type	_ZN25btSimulationIslandManager13initUnionFindEi,@function
_ZN25btSimulationIslandManager13initUnionFindEi: # @_ZN25btSimulationIslandManager13initUnionFindEi
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, 8
	pcaddu18i	$t8, %call36(_ZN11btUnionFind5resetEi)
	jr	$t8
.Lfunc_end5:
	.size	_ZN25btSimulationIslandManager13initUnionFindEi, .Lfunc_end5-_ZN25btSimulationIslandManager13initUnionFindEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN25btSimulationIslandManager10findUnionsEP12btDispatcherP16btCollisionWorld # -- Begin function _ZN25btSimulationIslandManager10findUnionsEP12btDispatcherP16btCollisionWorld
	.p2align	5
	.type	_ZN25btSimulationIslandManager10findUnionsEP12btDispatcherP16btCollisionWorld,@function
_ZN25btSimulationIslandManager10findUnionsEP12btDispatcherP16btCollisionWorld: # @_ZN25btSimulationIslandManager10findUnionsEP12btDispatcherP16btCollisionWorld
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
	move	$fp, $a2
	ld.d	$a1, $a2, 112
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 64
	move	$s0, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 72
	jirl	$ra, $a1, 0
	blez	$a0, .LBB6_15
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %_ZN11btUnionFind5uniteEii.exit
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $fp, 112
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 64
	addi.d	$s1, $s1, 1
	jirl	$ra, $a1, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 72
	jirl	$ra, $a1, 0
	bge	$s1, $a0, .LBB6_15
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
                                        #     Child Loop BB6_12 Depth 2
	ld.d	$a0, $fp, 112
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 64
	jirl	$ra, $a1, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 40
	jirl	$ra, $a1, 0
	slli.d	$a2, $s1, 5
	ldx.d	$a1, $a0, $a2
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB6_2
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	ld.bu	$a3, $a1, 216
	andi	$a3, $a3, 7
	bnez	$a3, .LBB6_2
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	add.d	$a0, $a0, $a2
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB6_2
# %bb.6:                                #   in Loop: Header=BB6_3 Depth=1
	ld.bu	$a0, $a2, 216
	andi	$a0, $a0, 7
	bnez	$a0, .LBB6_2
# %bb.7:                                #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a1, $a1, 220
	ld.d	$a0, $s0, 24
	slli.d	$a3, $a1, 3
	ldx.w	$a3, $a0, $a3
	ld.w	$a2, $a2, 220
	beq	$a1, $a3, .LBB6_10
# %bb.8:                                # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	alsl.d	$a4, $a1, $a0, 3
	.p2align	4, , 16
.LBB6_9:                                # %.lr.ph.i.i
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a1, $a3, 3
	ldx.w	$a1, $a0, $a1
	st.w	$a1, $a4, 0
	slli.d	$a3, $a1, 3
	ldx.w	$a3, $a0, $a3
	alsl.d	$a4, $a1, $a0, 3
	bne	$a1, $a3, .LBB6_9
.LBB6_10:                               # %_ZN11btUnionFind4findEi.exit.i
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.d	$a3, $a2, 3
	ldx.w	$a3, $a0, $a3
	beq	$a2, $a3, .LBB6_13
# %bb.11:                               # %.lr.ph.i10.i.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	alsl.d	$a4, $a2, $a0, 3
	.p2align	4, , 16
.LBB6_12:                               # %.lr.ph.i10.i
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $a3, 3
	ldx.w	$a2, $a0, $a2
	st.w	$a2, $a4, 0
	slli.d	$a3, $a2, 3
	ldx.w	$a3, $a0, $a3
	alsl.d	$a4, $a2, $a0, 3
	bne	$a2, $a3, .LBB6_12
.LBB6_13:                               # %_ZN11btUnionFind4findEi.exit13.i
                                        #   in Loop: Header=BB6_3 Depth=1
	beq	$a1, $a2, .LBB6_2
# %bb.14:                               #   in Loop: Header=BB6_3 Depth=1
	alsl.d	$a3, $a1, $a0, 3
	ld.w	$a3, $a3, 4
	alsl.d	$a4, $a2, $a0, 3
	ld.w	$a5, $a4, 4
	slli.d	$a1, $a1, 3
	stx.w	$a2, $a0, $a1
	add.d	$a0, $a5, $a3
	st.w	$a0, $a4, 4
	b	.LBB6_2
.LBB6_15:                               # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	_ZN25btSimulationIslandManager10findUnionsEP12btDispatcherP16btCollisionWorld, .Lfunc_end6-_ZN25btSimulationIslandManager10findUnionsEP12btDispatcherP16btCollisionWorld
	.cfi_endproc
                                        # -- End function
	.globl	_ZN25btSimulationIslandManager21updateActivationStateEP16btCollisionWorldP12btDispatcher # -- Begin function _ZN25btSimulationIslandManager21updateActivationStateEP16btCollisionWorldP12btDispatcher
	.p2align	5
	.type	_ZN25btSimulationIslandManager21updateActivationStateEP16btCollisionWorldP12btDispatcher,@function
_ZN25btSimulationIslandManager21updateActivationStateEP16btCollisionWorldP12btDispatcher: # @_ZN25btSimulationIslandManager21updateActivationStateEP16btCollisionWorldP12btDispatcher
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
	move	$fp, $a1
	ld.w	$a1, $a1, 12
	move	$s0, $a0
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(_ZN11btUnionFind5resetEi)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 12
	blez	$a2, .LBB7_8
# %bb.1:                                # %.lr.ph
	ld.d	$a3, $fp, 24
	ori	$a4, $zero, 1
	lu12i.w	$a0, 260096
	bne	$a2, $a4, .LBB7_3
# %bb.2:
	move	$a1, $zero
	b	.LBB7_6
.LBB7_3:                                # %vector.ph
	bstrpick.d	$a1, $a2, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a5, $a3, 8
	addi.w	$a6, $zero, -1
	lu32i.d	$a6, 0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, -8
	ld.d	$t1, $a5, 0
	addi.d	$t2, $a4, -1
	st.w	$t2, $t0, 220
	st.w	$a4, $t1, 220
	st.w	$a6, $t0, 224
	st.w	$a6, $t1, 224
	st.w	$a0, $t0, 260
	st.w	$a0, $t1, 260
	addi.d	$a5, $a5, 16
	addi.d	$a7, $a7, -2
	addi.d	$a4, $a4, 2
	bnez	$a7, .LBB7_4
# %bb.5:                                # %middle.block
	beq	$a1, $a2, .LBB7_8
.LBB7_6:                                # %scalar.ph.preheader
	alsl.d	$a3, $a1, $a3, 3
	sub.d	$a2, $a2, $a1
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	.p2align	4, , 16
.LBB7_7:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	st.w	$a1, $a5, 220
	st.w	$a4, $a5, 224
	st.w	$a0, $a5, 260
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB7_7
.LBB7_8:                                # %._crit_edge
	move	$a0, $s0
	move	$a2, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN25btSimulationIslandManager10findUnionsEP12btDispatcherP16btCollisionWorld)
	jr	$t8
.Lfunc_end7:
	.size	_ZN25btSimulationIslandManager21updateActivationStateEP16btCollisionWorldP12btDispatcher, .Lfunc_end7-_ZN25btSimulationIslandManager21updateActivationStateEP16btCollisionWorldP12btDispatcher
	.cfi_endproc
                                        # -- End function
	.globl	_ZN25btSimulationIslandManager26storeIslandActivationStateEP16btCollisionWorld # -- Begin function _ZN25btSimulationIslandManager26storeIslandActivationStateEP16btCollisionWorld
	.p2align	5
	.type	_ZN25btSimulationIslandManager26storeIslandActivationStateEP16btCollisionWorld,@function
_ZN25btSimulationIslandManager26storeIslandActivationStateEP16btCollisionWorld: # @_ZN25btSimulationIslandManager26storeIslandActivationStateEP16btCollisionWorld
# %bb.0:
	ld.w	$a2, $a1, 12
	blez	$a2, .LBB8_8
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 24
	move	$a3, $zero
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                # %_ZN11btUnionFind4findEi.exit
                                        #   in Loop: Header=BB8_3 Depth=1
	st.w	$a5, $a4, 220
	addi.d	$a3, $a3, 1
	st.w	$a7, $a4, 224
	beq	$a3, $a2, .LBB8_8
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
	slli.d	$a6, $a3, 3
	ldx.d	$a4, $a1, $a6
	ld.bu	$a5, $a4, 216
	andi	$t0, $a5, 3
	addi.d	$a5, $zero, -1
	addi.d	$a7, $zero, -2
	bnez	$t0, .LBB8_2
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	ldx.wu	$a6, $a0, $a6
	move	$a5, $a3
	addi.d	$a7, $zero, -1
	beq	$a3, $a6, .LBB8_2
# %bb.5:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	alsl.d	$a7, $a3, $a0, 3
	.p2align	4, , 16
.LBB8_6:                                # %.lr.ph.i
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a5, $a6, 0
	slli.d	$a5, $a5, 3
	ldx.w	$a5, $a0, $a5
	st.w	$a5, $a7, 0
	slli.d	$a6, $a5, 3
	ldx.w	$a6, $a0, $a6
	alsl.d	$a7, $a5, $a0, 3
	bne	$a5, $a6, .LBB8_6
# %bb.7:                                #   in Loop: Header=BB8_3 Depth=1
	addi.d	$a7, $zero, -1
	b	.LBB8_2
.LBB8_8:                                # %._crit_edge
	ret
.Lfunc_end8:
	.size	_ZN25btSimulationIslandManager26storeIslandActivationStateEP16btCollisionWorld, .Lfunc_end8-_ZN25btSimulationIslandManager26storeIslandActivationStateEP16btCollisionWorld
                                        # -- End function
	.globl	_ZN25btSimulationIslandManager12buildIslandsEP12btDispatcherP16btCollisionWorld # -- Begin function _ZN25btSimulationIslandManager12buildIslandsEP12btDispatcherP16btCollisionWorld
	.p2align	5
	.type	_ZN25btSimulationIslandManager12buildIslandsEP12btDispatcherP16btCollisionWorld,@function
_ZN25btSimulationIslandManager12buildIslandsEP12btDispatcherP16btCollisionWorld: # @_ZN25btSimulationIslandManager12buildIslandsEP12btDispatcherP16btCollisionWorld
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s0, 44
	bgez	$s2, .LBB9_7
# %bb.1:
	ld.w	$a1, $s0, 48
	ld.d	$a0, $s0, 56
	bgez	$a1, .LBB9_6
# %bb.2:                                # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	beqz	$a0, .LBB9_5
# %bb.3:                                # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	ld.b	$a1, $s0, 64
	andi	$a1, $a1, 1
	beqz	$a1, .LBB9_5
# %bb.4:
.Ltmp14:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp15:
.LBB9_5:                                # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 64
	st.d	$zero, $s0, 56
	st.w	$zero, $s0, 48
.LBB9_6:                                # %.lr.ph.i
	slli.d	$a1, $s2, 3
	alsl.d	$a0, $s2, $a0, 3
	sub.d	$a2, $zero, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB9_7:                                # %.loopexit134
	st.w	$zero, $s0, 44
	addi.d	$a0, $s0, 8
.Ltmp17:
	pcaddu18i	$ra, %call36(_ZN11btUnionFind11sortIslandsEv)
	jirl	$ra, $ra, 0
.Ltmp18:
# %bb.8:
	ld.w	$s3, $s0, 12
	blez	$s3, .LBB9_31
# %bb.9:                                # %.lr.ph146
	move	$s5, $zero
	ori	$s4, $zero, 2
	b	.LBB9_11
	.p2align	4, , 16
.LBB9_10:                               # %.loopexit
                                        #   in Loop: Header=BB9_11 Depth=1
	bge	$s5, $s3, .LBB9_31
.LBB9_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_12 Depth 2
                                        #     Child Loop BB9_18 Depth 2
                                        #     Child Loop BB9_27 Depth 2
                                        #     Child Loop BB9_23 Depth 2
	ld.d	$a2, $s0, 24
	move	$a1, $s5
	alsl.d	$a5, $s5, $a2, 3
	slli.d	$a0, $s5, 3
	ldx.w	$s6, $a2, $a0
	addi.w	$a3, $s5, 1
	slt	$a4, $a3, $s3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $s3, $a4
	or	$a3, $a4, $a3
	addi.w	$a4, $a3, -1
	addi.d	$a5, $a5, 8
	addi.d	$a6, $s5, 1
	.p2align	4, , 16
.LBB9_12:                               #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bge	$a6, $s3, .LBB9_15
# %bb.13:                               #   in Loop: Header=BB9_12 Depth=2
	ld.w	$a7, $a5, 0
	addi.w	$s5, $s5, 1
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 1
	beq	$a7, $s6, .LBB9_12
# %bb.14:                               # %.critedge.split.loop.exit164
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.w	$a4, $s5, -1
	blt	$a4, $a1, .LBB9_10
	b	.LBB9_16
	.p2align	4, , 16
.LBB9_15:                               #   in Loop: Header=BB9_11 Depth=1
	move	$s5, $a3
	blt	$a4, $a1, .LBB9_10
.LBB9_16:                               # %.lr.ph
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $s1, 24
	add.d	$a2, $a2, $a0
	addi.d	$a2, $a2, 4
	sub.d	$a1, $a4, $a1
	addi.d	$s7, $a1, 1
	ori	$a1, $zero, 1
	move	$a4, $s7
	b	.LBB9_18
	.p2align	4, , 16
.LBB9_17:                               #   in Loop: Header=BB9_18 Depth=2
	addi.w	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	beqz	$a4, .LBB9_20
.LBB9_18:                               #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a3, $a5
	ld.w	$a6, $a5, 220
	bne	$a6, $s6, .LBB9_17
# %bb.19:                               #   in Loop: Header=BB9_18 Depth=2
	ld.w	$a5, $a5, 228
	addi.d	$a6, $a5, -1
	sltu	$a6, $zero, $a6
	addi.d	$a5, $a5, -4
	sltu	$a5, $zero, $a5
	and	$a5, $a5, $a6
	and	$a1, $a5, $a1
	b	.LBB9_17
	.p2align	4, , 16
.LBB9_20:                               # %._crit_edge
                                        #   in Loop: Header=BB9_11 Depth=1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB9_25
# %bb.21:                               # %.lr.ph143.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.d	$s2, $a0, 4
	b	.LBB9_23
	.p2align	4, , 16
.LBB9_22:                               #   in Loop: Header=BB9_23 Depth=2
	addi.w	$s7, $s7, -1
	addi.d	$s2, $s2, 8
	beqz	$s7, .LBB9_10
.LBB9_23:                               # %.lr.ph143
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 24
	ldx.w	$a0, $a0, $s2
	ld.d	$a1, $s1, 24
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 220
	bne	$a1, $s6, .LBB9_22
# %bb.24:                               #   in Loop: Header=BB9_23 Depth=2
.Ltmp23:
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(_ZN17btCollisionObject18setActivationStateEi)
	jirl	$ra, $ra, 0
.Ltmp24:
	b	.LBB9_22
	.p2align	4, , 16
.LBB9_25:                               # %.lr.ph140.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	addi.d	$s8, $a0, 4
	b	.LBB9_27
	.p2align	4, , 16
.LBB9_26:                               #   in Loop: Header=BB9_27 Depth=2
	addi.w	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	beqz	$s7, .LBB9_10
.LBB9_27:                               # %.lr.ph140
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 24
	ldx.w	$a0, $a0, $s8
	ld.d	$a1, $s1, 24
	slli.d	$a0, $a0, 3
	ldx.d	$s2, $a1, $a0
	ld.w	$a0, $s2, 220
	bne	$a0, $s6, .LBB9_26
# %bb.28:                               #   in Loop: Header=BB9_27 Depth=2
	ld.w	$a0, $s2, 228
	bne	$a0, $s4, .LBB9_26
# %bb.29:                               #   in Loop: Header=BB9_27 Depth=2
.Ltmp20:
	ori	$a1, $zero, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17btCollisionObject18setActivationStateEi)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.30:                               #   in Loop: Header=BB9_27 Depth=2
	st.w	$zero, $s2, 232
	b	.LBB9_26
.LBB9_31:                               # %._crit_edge147
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 72
.Ltmp26:
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp27:
# %bb.32:                               # %.preheader
	move	$s1, $a0
	blez	$a0, .LBB9_69
# %bb.33:                               # %.lr.ph149
	move	$s2, $zero
	ori	$s6, $zero, 2
	ori	$s7, $zero, 1
	ori	$s8, $zero, 4
	b	.LBB9_37
.LBB9_34:                               # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i117
                                        #   in Loop: Header=BB9_37 Depth=1
	st.b	$s7, $s0, 64
	st.d	$s4, $s0, 56
	st.w	$s5, $s0, 48
.LBB9_35:                               # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit
                                        #   in Loop: Header=BB9_37 Depth=1
	ld.d	$a0, $s0, 56
	slli.d	$a2, $a1, 3
	stx.d	$s3, $a0, $a2
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 44
	.p2align	4, , 16
.LBB9_36:                               #   in Loop: Header=BB9_37 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $s1, .LBB9_69
.LBB9_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_59 Depth 2
                                        #     Child Loop BB9_62 Depth 2
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 80
.Ltmp29:
	move	$a0, $fp
	move	$a1, $s2
	jirl	$ra, $a2, 0
.Ltmp30:
# %bb.38:                               #   in Loop: Header=BB9_37 Depth=1
	move	$s3, $a0
	ld.d	$s4, $a0, 712
	ld.d	$s5, $a0, 720
	beqz	$s4, .LBB9_40
# %bb.39:                               #   in Loop: Header=BB9_37 Depth=1
	ld.w	$a0, $s4, 228
	bne	$a0, $s6, .LBB9_42
.LBB9_40:                               #   in Loop: Header=BB9_37 Depth=1
	beqz	$s5, .LBB9_36
# %bb.41:                               #   in Loop: Header=BB9_37 Depth=1
	ld.w	$a0, $s5, 228
	beq	$a0, $s6, .LBB9_36
.LBB9_42:                               #   in Loop: Header=BB9_37 Depth=1
	ld.bu	$a0, $s4, 216
	andi	$a0, $a0, 2
	beqz	$a0, .LBB9_45
# %bb.43:                               #   in Loop: Header=BB9_37 Depth=1
	ld.w	$a0, $s4, 228
	beq	$a0, $s6, .LBB9_45
# %bb.44:                               #   in Loop: Header=BB9_37 Depth=1
.Ltmp32:
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN17btCollisionObject8activateEb)
	jirl	$ra, $ra, 0
.Ltmp33:
.LBB9_45:                               #   in Loop: Header=BB9_37 Depth=1
	ld.bu	$a0, $s5, 216
	andi	$a0, $a0, 2
	beqz	$a0, .LBB9_48
# %bb.46:                               #   in Loop: Header=BB9_37 Depth=1
	ld.w	$a0, $s5, 228
	beq	$a0, $s6, .LBB9_48
# %bb.47:                               #   in Loop: Header=BB9_37 Depth=1
.Ltmp34:
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN17btCollisionObject8activateEb)
	jirl	$ra, $ra, 0
.Ltmp35:
.LBB9_48:                               #   in Loop: Header=BB9_37 Depth=1
	ld.bu	$a0, $s0, 104
	beqz	$a0, .LBB9_36
# %bb.49:                               #   in Loop: Header=BB9_37 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a3, $a0, 56
.Ltmp36:
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s5
	jirl	$ra, $a3, 0
.Ltmp37:
# %bb.50:                               #   in Loop: Header=BB9_37 Depth=1
	beqz	$a0, .LBB9_36
# %bb.51:                               #   in Loop: Header=BB9_37 Depth=1
	ld.w	$a1, $s0, 44
	ld.w	$a0, $s0, 48
	bne	$a1, $a0, .LBB9_35
# %bb.52:                               #   in Loop: Header=BB9_37 Depth=1
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $s7, $a0
	or	$s5, $a0, $a2
	bge	$a1, $s5, .LBB9_35
# %bb.53:                               #   in Loop: Header=BB9_37 Depth=1
	beqz	$s5, .LBB9_64
# %bb.54:                               #   in Loop: Header=BB9_37 Depth=1
	slli.d	$a0, $s5, 3
.Ltmp38:
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp39:
# %bb.55:                               # %.noexc125
                                        #   in Loop: Header=BB9_37 Depth=1
	move	$s4, $a0
	ld.w	$a1, $s0, 44
	ld.d	$a0, $s0, 56
	blez	$a1, .LBB9_65
.LBB9_56:                               # %.lr.ph.i.i.i118
                                        #   in Loop: Header=BB9_37 Depth=1
	move	$a2, $zero
	bltu	$a1, $s8, .LBB9_61
# %bb.57:                               # %.lr.ph.i.i.i118
                                        #   in Loop: Header=BB9_37 Depth=1
	sub.d	$a3, $s4, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB9_61
# %bb.58:                               # %vector.ph
                                        #   in Loop: Header=BB9_37 Depth=1
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s4, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB9_59:                               # %vector.body
                                        #   Parent Loop BB9_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB9_59
# %bb.60:                               # %middle.block
                                        #   in Loop: Header=BB9_37 Depth=1
	beq	$a2, $a1, .LBB9_63
.LBB9_61:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB9_37 Depth=1
	sub.d	$a3, $a1, $a2
	alsl.d	$a4, $a2, $a0, 3
	alsl.d	$a2, $a2, $s4, 3
	.p2align	4, , 16
.LBB9_62:                               # %scalar.ph
                                        #   Parent Loop BB9_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB9_62
.LBB9_63:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i123
                                        #   in Loop: Header=BB9_37 Depth=1
	ld.bu	$a2, $s0, 64
	beqz	$a2, .LBB9_34
	b	.LBB9_67
.LBB9_64:                               #   in Loop: Header=BB9_37 Depth=1
	move	$s4, $zero
	ld.d	$a0, $s0, 56
	bgtz	$a1, .LBB9_56
.LBB9_65:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i115
                                        #   in Loop: Header=BB9_37 Depth=1
	beqz	$a0, .LBB9_34
# %bb.66:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i115
                                        #   in Loop: Header=BB9_37 Depth=1
	ld.b	$a2, $s0, 64
	andi	$a2, $a2, 1
	beqz	$a2, .LBB9_34
.LBB9_67:                               #   in Loop: Header=BB9_37 Depth=1
.Ltmp40:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp41:
# %bb.68:                               # %.noexc126
                                        #   in Loop: Header=BB9_37 Depth=1
	ld.w	$a1, $s0, 44
	b	.LBB9_34
.LBB9_69:                               # %._crit_edge150
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
	pcaddu18i	$t8, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jr	$t8
.LBB9_70:
.Ltmp16:
	b	.LBB9_77
.LBB9_71:
.Ltmp28:
	b	.LBB9_77
.LBB9_72:
.Ltmp19:
	b	.LBB9_77
.LBB9_73:
.Ltmp42:
	b	.LBB9_77
.LBB9_74:
.Ltmp31:
	b	.LBB9_77
.LBB9_75:
.Ltmp22:
	b	.LBB9_77
.LBB9_76:
.Ltmp25:
.LBB9_77:
	move	$fp, $a0
.Ltmp43:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.78:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_79:
.Ltmp45:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN25btSimulationIslandManager12buildIslandsEP12btDispatcherP16btCollisionWorld, .Lfunc_end9-_ZN25btSimulationIslandManager12buildIslandsEP12btDispatcherP16btCollisionWorld
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp14-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin2          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp17-.Ltmp15                #   Call between .Ltmp15 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin2          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin2          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin2          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin2          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin2          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp41-.Ltmp32                #   Call between .Ltmp32 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin2          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp43-.Ltmp41                #   Call between .Ltmp41 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp44-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Lfunc_end9-.Ltmp44            #   Call between .Ltmp44 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN25btSimulationIslandManager22buildAndProcessIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE # -- Begin function _ZN25btSimulationIslandManager22buildAndProcessIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE
	.p2align	5
	.type	_ZN25btSimulationIslandManager22buildAndProcessIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE,@function
_ZN25btSimulationIslandManager22buildAndProcessIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE: # @_ZN25btSimulationIslandManager22buildAndProcessIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
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
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s2, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_ZN25btSimulationIslandManager12buildIslandsEP12btDispatcherP16btCollisionWorld)
	jirl	$ra, $ra, 0
	ld.w	$s5, $s1, 12
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 104
	beqz	$a0, .LBB10_50
# %bb.1:
	ld.w	$fp, $s1, 44
	ori	$a0, $zero, 2
	blt	$fp, $a0, .LBB10_3
# %bb.2:
	addi.d	$a0, $s1, 40
	addi.w	$a3, $fp, -1
.Ltmp54:
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP20btPersistentManifoldE17quickSortInternalI33btPersistentManifoldSortPredicateEEvT_ii)
	jirl	$ra, $ra, 0
.Ltmp55:
.LBB10_3:                               # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9quickSortI33btPersistentManifoldSortPredicateEEvT_.exit
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	blez	$s5, .LBB10_53
# %bb.4:                                # %.lr.ph
	move	$fp, $zero
	move	$a1, $zero
	ori	$s7, $zero, 1
	b	.LBB10_8
.LBB10_5:                               # %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i86
                                        #   in Loop: Header=BB10_8 Depth=1
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $s1, 96
	st.d	$zero, $s1, 88
	st.w	$zero, $s1, 80
.LBB10_6:                               # %.lr.ph.i
                                        #   in Loop: Header=BB10_8 Depth=1
	slli.d	$a1, $s4, 3
	alsl.d	$a0, $s4, $a0, 3
	sub.d	$a2, $zero, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB10_7:                               # %.loopexit
                                        #   in Loop: Header=BB10_8 Depth=1
	sltui	$a0, $s3, 1
	masknez	$a1, $s7, $a0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	addi.w	$a0, $fp, 0
	st.w	$zero, $s1, 76
	bge	$a0, $s5, .LBB10_53
.LBB10_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_13 Depth 2
                                        #       Child Loop BB10_22 Depth 3
                                        #       Child Loop BB10_25 Depth 3
                                        #     Child Loop BB10_36 Depth 2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $s1, 24
	move	$s6, $zero
	addi.w	$s4, $fp, 0
	slli.d	$a1, $s4, 3
	ldx.w	$s2, $a0, $a1
	addi.w	$a0, $fp, 1
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB10_13
.LBB10_9:                               #   in Loop: Header=BB10_13 Depth=2
.Ltmp59:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp60:
# %bb.10:                               # %.noexc80
                                        #   in Loop: Header=BB10_13 Depth=2
	ld.w	$a1, $s1, 76
.LBB10_11:                              # %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB10_13 Depth=2
	ori	$a0, $zero, 1
	st.b	$a0, $s1, 96
	st.d	$s3, $s1, 88
	st.w	$fp, $s1, 80
.LBB10_12:                              #   in Loop: Header=BB10_13 Depth=2
	ld.d	$a0, $s1, 88
	slli.d	$a2, $a1, 3
	ld.w	$a3, $s8, 228
	stx.d	$s8, $a0, $a2
	addi.d	$a0, $a1, 1
	st.w	$a0, $s1, 76
	addi.d	$a0, $a3, -2
	sltui	$a0, $a0, 1
	addi.d	$a1, $a3, -5
	sltui	$a1, $a1, 1
	or	$a0, $a0, $a1
	addi.d	$s4, $s4, 1
	or	$s6, $a0, $s6
	bge	$s4, $s5, .LBB10_31
.LBB10_13:                              #   Parent Loop BB10_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_22 Depth 3
                                        #       Child Loop BB10_25 Depth 3
	ld.d	$a0, $s1, 24
	slli.d	$a1, $s4, 3
	ldx.w	$a1, $a0, $a1
	bne	$a1, $s2, .LBB10_30
# %bb.14:                               #   in Loop: Header=BB10_13 Depth=2
	alsl.d	$a0, $s4, $a0, 3
	ld.w	$a0, $a0, 4
	ld.d	$a2, $s0, 24
	slli.d	$a0, $a0, 3
	ld.w	$a1, $s1, 76
	ld.w	$a3, $s1, 80
	ldx.d	$s8, $a2, $a0
	bne	$a1, $a3, .LBB10_12
# %bb.15:                               #   in Loop: Header=BB10_13 Depth=2
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$fp, $a0, $a2
	bge	$a1, $fp, .LBB10_12
# %bb.16:                               #   in Loop: Header=BB10_13 Depth=2
	beqz	$fp, .LBB10_27
# %bb.17:                               #   in Loop: Header=BB10_13 Depth=2
	slli.d	$a0, $fp, 3
.Ltmp57:
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp58:
# %bb.18:                               # %.noexc79
                                        #   in Loop: Header=BB10_13 Depth=2
	move	$s3, $a0
	ld.w	$a1, $s1, 76
	ld.d	$a0, $s1, 88
	blez	$a1, .LBB10_28
.LBB10_19:                              # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB10_13 Depth=2
	move	$a2, $zero
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB10_24
# %bb.20:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB10_13 Depth=2
	sub.d	$a3, $s3, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB10_24
# %bb.21:                               # %vector.ph
                                        #   in Loop: Header=BB10_13 Depth=2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s3, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB10_22:                              # %vector.body
                                        #   Parent Loop BB10_8 Depth=1
                                        #     Parent Loop BB10_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB10_22
# %bb.23:                               # %middle.block
                                        #   in Loop: Header=BB10_13 Depth=2
	beq	$a2, $a1, .LBB10_26
.LBB10_24:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB10_13 Depth=2
	sub.d	$a3, $a1, $a2
	alsl.d	$a4, $a2, $a0, 3
	alsl.d	$a2, $a2, $s3, 3
	.p2align	4, , 16
.LBB10_25:                              # %scalar.ph
                                        #   Parent Loop BB10_8 Depth=1
                                        #     Parent Loop BB10_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a4, 0
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB10_25
.LBB10_26:                              # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i
                                        #   in Loop: Header=BB10_13 Depth=2
	ld.bu	$a2, $s1, 96
	bnez	$a2, .LBB10_9
	b	.LBB10_11
.LBB10_27:                              #   in Loop: Header=BB10_13 Depth=2
	move	$s3, $zero
	ld.d	$a0, $s1, 88
	bgtz	$a1, .LBB10_19
.LBB10_28:                              # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
                                        #   in Loop: Header=BB10_13 Depth=2
	beqz	$a0, .LBB10_11
# %bb.29:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
                                        #   in Loop: Header=BB10_13 Depth=2
	ld.b	$a2, $s1, 96
	andi	$a2, $a2, 1
	bnez	$a2, .LBB10_9
	b	.LBB10_11
	.p2align	4, , 16
.LBB10_30:                              # %.critedge.split.loop.exit111
                                        #   in Loop: Header=BB10_8 Depth=1
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
.LBB10_31:                              # %.critedge
                                        #   in Loop: Header=BB10_8 Depth=1
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	bge	$a7, $a6, .LBB10_40
# %bb.32:                               #   in Loop: Header=BB10_8 Depth=1
	ld.d	$a1, $s1, 56
	slli.d	$a0, $a7, 3
	ldx.d	$a2, $a1, $a0
	ld.d	$a0, $a2, 712
	ld.w	$a0, $a0, 220
	bltz	$a0, .LBB10_39
# %bb.33:                               # %_Z11getIslandIdPK20btPersistentManifold.exit
                                        #   in Loop: Header=BB10_8 Depth=1
	bne	$a0, $s2, .LBB10_40
.LBB10_34:                              # %.preheader.preheader
                                        #   in Loop: Header=BB10_8 Depth=1
	alsl.d	$a3, $a7, $a1, 3
	addi.w	$a0, $a7, 1
	slt	$a2, $a0, $a6
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a6, $a2
	or	$a0, $a2, $a0
	alsl.d	$a1, $a7, $a1, 3
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a7, 1
	move	$s7, $a7
	b	.LBB10_36
	.p2align	4, , 16
.LBB10_35:                              # %_Z11getIslandIdPK20btPersistentManifold.exit81
                                        #   in Loop: Header=BB10_36 Depth=2
	addi.w	$s7, $s7, 1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 1
	bne	$s2, $a4, .LBB10_43
.LBB10_36:                              # %.preheader
                                        #   Parent Loop BB10_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bge	$a2, $a6, .LBB10_42
# %bb.37:                               #   in Loop: Header=BB10_36 Depth=2
	ld.d	$a5, $a1, 0
	ld.d	$a4, $a5, 712
	ld.w	$a4, $a4, 220
	bgez	$a4, .LBB10_35
# %bb.38:                               #   in Loop: Header=BB10_36 Depth=2
	ld.d	$a4, $a5, 720
	ld.w	$a4, $a4, 220
	b	.LBB10_35
.LBB10_39:                              #   in Loop: Header=BB10_8 Depth=1
	ld.d	$a0, $a2, 720
	ld.w	$a0, $a0, 220
	beq	$a0, $s2, .LBB10_34
	.p2align	4, , 16
.LBB10_40:                              #   in Loop: Header=BB10_8 Depth=1
	move	$s3, $zero
	move	$a3, $zero
	ld.w	$s4, $s1, 76
	andi	$a0, $s6, 1
	beqz	$a0, .LBB10_44
.LBB10_41:                              #   in Loop: Header=BB10_8 Depth=1
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	bgez	$s4, .LBB10_7
	b	.LBB10_46
.LBB10_42:                              #   in Loop: Header=BB10_8 Depth=1
	move	$s7, $a0
.LBB10_43:                              # %.critedge2
                                        #   in Loop: Header=BB10_8 Depth=1
	sub.w	$s3, $s7, $a7
	ld.w	$s4, $s1, 76
	andi	$a0, $s6, 1
	bnez	$a0, .LBB10_41
.LBB10_44:                              #   in Loop: Header=BB10_8 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s1, 88
	ld.d	$a6, $a2, 16
.Ltmp62:
	move	$a2, $s4
	move	$a4, $s3
	move	$a5, $s2
	jirl	$ra, $a6, 0
.Ltmp63:
# %bb.45:                               # %._crit_edge
                                        #   in Loop: Header=BB10_8 Depth=1
	ld.w	$s4, $s1, 76
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	bgez	$s4, .LBB10_7
.LBB10_46:                              #   in Loop: Header=BB10_8 Depth=1
	ld.w	$a1, $s1, 80
	ld.d	$a0, $s1, 88
	bgez	$a1, .LBB10_6
# %bb.47:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i84
                                        #   in Loop: Header=BB10_8 Depth=1
	beqz	$a0, .LBB10_5
# %bb.48:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i84
                                        #   in Loop: Header=BB10_8 Depth=1
	ld.b	$a1, $s1, 96
	andi	$a1, $a1, 1
	beqz	$a1, .LBB10_5
# %bb.49:                               #   in Loop: Header=BB10_8 Depth=1
.Ltmp65:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp66:
	b	.LBB10_5
.LBB10_50:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 88
.Ltmp46:
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp47:
# %bb.51:
	move	$s1, $a0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
.Ltmp49:
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp50:
# %bb.52:
	move	$a4, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$a1, $s0, 24
	ld.w	$a2, $s0, 12
	ld.d	$a6, $a3, 16
.Ltmp51:
	addi.w	$a5, $zero, -1
	move	$a3, $s1
	jirl	$ra, $a6, 0
.Ltmp52:
.LBB10_53:                              # %.loopexit98
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jr	$t8
.LBB10_54:
.Ltmp56:
	b	.LBB10_60
.LBB10_55:
.Ltmp48:
	b	.LBB10_60
.LBB10_56:
.Ltmp67:
	b	.LBB10_60
.LBB10_57:
.Ltmp53:
	b	.LBB10_60
.LBB10_58:
.Ltmp64:
	b	.LBB10_60
.LBB10_59:
.Ltmp61:
.LBB10_60:
	move	$fp, $a0
.Ltmp68:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.61:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_62:
.Ltmp70:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN25btSimulationIslandManager22buildAndProcessIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE, .Lfunc_end10-_ZN25btSimulationIslandManager22buildAndProcessIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp54-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin3          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp59-.Ltmp55                #   Call between .Ltmp55 and .Ltmp59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp58-.Ltmp59                #   Call between .Ltmp59 and .Ltmp58
	.uleb128 .Ltmp61-.Lfunc_begin3          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin3          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin3          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin3          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp52-.Ltmp49                #   Call between .Ltmp49 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin3          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp68-.Ltmp52                #   Call between .Ltmp52 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin3          #     jumps to .Ltmp70
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp69-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Lfunc_end10-.Ltmp69           #   Call between .Ltmp69 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIP20btPersistentManifoldE17quickSortInternalI33btPersistentManifoldSortPredicateEEvT_ii,"axG",@progbits,_ZN20btAlignedObjectArrayIP20btPersistentManifoldE17quickSortInternalI33btPersistentManifoldSortPredicateEEvT_ii,comdat
	.weak	_ZN20btAlignedObjectArrayIP20btPersistentManifoldE17quickSortInternalI33btPersistentManifoldSortPredicateEEvT_ii # -- Begin function _ZN20btAlignedObjectArrayIP20btPersistentManifoldE17quickSortInternalI33btPersistentManifoldSortPredicateEEvT_ii
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIP20btPersistentManifoldE17quickSortInternalI33btPersistentManifoldSortPredicateEEvT_ii,@function
_ZN20btAlignedObjectArrayIP20btPersistentManifoldE17quickSortInternalI33btPersistentManifoldSortPredicateEEvT_ii: # @_ZN20btAlignedObjectArrayIP20btPersistentManifoldE17quickSortInternalI33btPersistentManifoldSortPredicateEEvT_ii
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
	move	$fp, $a3
	move	$s0, $a0
	b	.LBB11_2
	.p2align	4, , 16
.LBB11_1:                               #   in Loop: Header=BB11_2 Depth=1
	move	$a2, $s1
	bge	$s1, $fp, .LBB11_29
.LBB11_2:                               # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_17 Depth 2
                                        #       Child Loop BB11_19 Depth 3
                                        #       Child Loop BB11_23 Depth 3
                                        #     Child Loop BB11_5 Depth 2
                                        #       Child Loop BB11_7 Depth 3
                                        #       Child Loop BB11_11 Depth 3
	ld.d	$a0, $s0, 16
	add.d	$a1, $a2, $fp
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	bstrins.d	$a1, $zero, 2, 0
	ldx.d	$a3, $a0, $a1
	ld.d	$a1, $a3, 712
	ld.w	$a4, $a1, 220
	addi.d	$a1, $a0, 8
	bltz	$a4, .LBB11_15
# %bb.3:                                # %.split.us.us.preheader
                                        #   in Loop: Header=BB11_2 Depth=1
	move	$a3, $fp
	move	$s1, $a2
	b	.LBB11_5
	.p2align	4, , 16
.LBB11_4:                               #   in Loop: Header=BB11_5 Depth=2
	addi.w	$s1, $s1, -1
	addi.w	$a3, $a3, 1
	blt	$a3, $s1, .LBB11_27
.LBB11_5:                               # %.split.us.us
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_7 Depth 3
                                        #       Child Loop BB11_11 Depth 3
	addi.d	$a6, $s1, -1
	alsl.d	$a5, $s1, $a0, 3
	b	.LBB11_7
	.p2align	4, , 16
.LBB11_6:                               # %_Z11getIslandIdPK20btPersistentManifold.exit.i.us.us
                                        #   in Loop: Header=BB11_7 Depth=3
	addi.d	$a6, $a6, 1
	addi.w	$s1, $s1, 1
	addi.d	$a5, $a5, 8
	bge	$t0, $a4, .LBB11_9
.LBB11_7:                               #   Parent Loop BB11_2 Depth=1
                                        #     Parent Loop BB11_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $a5, 0
	ld.d	$t0, $a7, 712
	ld.w	$t0, $t0, 220
	bgez	$t0, .LBB11_6
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=3
	ld.d	$t0, $a7, 720
	ld.w	$t0, $t0, 220
	b	.LBB11_6
	.p2align	4, , 16
.LBB11_9:                               # %.preheader.split.us.us
                                        #   in Loop: Header=BB11_5 Depth=2
	addi.d	$t1, $a3, 1
	alsl.d	$t0, $a3, $a1, 3
	b	.LBB11_11
	.p2align	4, , 16
.LBB11_10:                              # %_ZN33btPersistentManifoldSortPredicateclEPK20btPersistentManifoldS2_.exit34.us.us
                                        #   in Loop: Header=BB11_11 Depth=3
	addi.d	$t1, $t1, -1
	addi.w	$a3, $a3, -1
	addi.d	$t0, $t0, -8
	bge	$a4, $t3, .LBB11_13
.LBB11_11:                              # %_Z11getIslandIdPK20btPersistentManifold.exit.i33.us.us
                                        #   Parent Loop BB11_2 Depth=1
                                        #     Parent Loop BB11_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t2, $t0, -8
	ld.d	$t3, $t2, 712
	ld.w	$t3, $t3, 220
	bgez	$t3, .LBB11_10
# %bb.12:                               #   in Loop: Header=BB11_11 Depth=3
	ld.d	$t3, $t2, 720
	ld.w	$t3, $t3, 220
	b	.LBB11_10
	.p2align	4, , 16
.LBB11_13:                              # %.split49.us.us
                                        #   in Loop: Header=BB11_5 Depth=2
	blt	$t1, $a6, .LBB11_4
# %bb.14:                               #   in Loop: Header=BB11_5 Depth=2
	st.d	$t2, $a5, -8
	st.d	$a7, $t0, 0
	bge	$a3, $s1, .LBB11_5
	b	.LBB11_27
	.p2align	4, , 16
.LBB11_15:                              # %tailrecurse.split
                                        #   in Loop: Header=BB11_2 Depth=1
	ld.d	$a3, $a3, 720
	ld.w	$a4, $a3, 220
	move	$a3, $fp
	move	$s1, $a2
	b	.LBB11_17
	.p2align	4, , 16
.LBB11_16:                              #   in Loop: Header=BB11_17 Depth=2
	st.d	$t2, $a5, -8
	st.d	$a7, $t0, 0
	blt	$a3, $s1, .LBB11_27
.LBB11_17:                              # %.split
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_19 Depth 3
                                        #       Child Loop BB11_23 Depth 3
	addi.d	$a6, $s1, -1
	alsl.d	$a5, $s1, $a0, 3
	b	.LBB11_19
	.p2align	4, , 16
.LBB11_18:                              # %_Z11getIslandIdPK20btPersistentManifold.exit.i
                                        #   in Loop: Header=BB11_19 Depth=3
	addi.d	$a6, $a6, 1
	addi.w	$s1, $s1, 1
	addi.d	$a5, $a5, 8
	bge	$t0, $a4, .LBB11_21
.LBB11_19:                              #   Parent Loop BB11_2 Depth=1
                                        #     Parent Loop BB11_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $a5, 0
	ld.d	$t0, $a7, 712
	ld.w	$t0, $t0, 220
	bgez	$t0, .LBB11_18
# %bb.20:                               #   in Loop: Header=BB11_19 Depth=3
	ld.d	$t0, $a7, 720
	ld.w	$t0, $t0, 220
	b	.LBB11_18
	.p2align	4, , 16
.LBB11_21:                              # %.preheader.split
                                        #   in Loop: Header=BB11_17 Depth=2
	addi.d	$t1, $a3, 1
	alsl.d	$t0, $a3, $a1, 3
	b	.LBB11_23
	.p2align	4, , 16
.LBB11_22:                              # %_ZN33btPersistentManifoldSortPredicateclEPK20btPersistentManifoldS2_.exit34
                                        #   in Loop: Header=BB11_23 Depth=3
	addi.d	$t1, $t1, -1
	addi.w	$a3, $a3, -1
	addi.d	$t0, $t0, -8
	bge	$a4, $t3, .LBB11_25
.LBB11_23:                              # %_Z11getIslandIdPK20btPersistentManifold.exit.i33
                                        #   Parent Loop BB11_2 Depth=1
                                        #     Parent Loop BB11_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t2, $t0, -8
	ld.d	$t3, $t2, 712
	ld.w	$t3, $t3, 220
	bgez	$t3, .LBB11_22
# %bb.24:                               #   in Loop: Header=BB11_23 Depth=3
	ld.d	$t3, $t2, 720
	ld.w	$t3, $t3, 220
	b	.LBB11_22
	.p2align	4, , 16
.LBB11_25:                              # %.split49
                                        #   in Loop: Header=BB11_17 Depth=2
	bge	$t1, $a6, .LBB11_16
# %bb.26:                               #   in Loop: Header=BB11_17 Depth=2
	addi.w	$s1, $s1, -1
	addi.w	$a3, $a3, 1
	bge	$a3, $s1, .LBB11_17
	.p2align	4, , 16
.LBB11_27:                              # %.split62.us
                                        #   in Loop: Header=BB11_2 Depth=1
	bge	$a2, $a3, .LBB11_1
# %bb.28:                               #   in Loop: Header=BB11_2 Depth=1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP20btPersistentManifoldE17quickSortInternalI33btPersistentManifoldSortPredicateEEvT_ii)
	jirl	$ra, $ra, 0
	b	.LBB11_1
.LBB11_29:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	_ZN20btAlignedObjectArrayIP20btPersistentManifoldE17quickSortInternalI33btPersistentManifoldSortPredicateEEvT_ii, .Lfunc_end11-_ZN20btAlignedObjectArrayIP20btPersistentManifoldE17quickSortInternalI33btPersistentManifoldSortPredicateEEvT_ii
	.cfi_endproc
                                        # -- End function
	.type	_ZTV25btSimulationIslandManager,@object # @_ZTV25btSimulationIslandManager
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV25btSimulationIslandManager
	.p2align	3, 0x0
_ZTV25btSimulationIslandManager:
	.dword	0
	.dword	_ZTI25btSimulationIslandManager
	.dword	_ZN25btSimulationIslandManagerD2Ev
	.dword	_ZN25btSimulationIslandManagerD0Ev
	.dword	_ZN25btSimulationIslandManager21updateActivationStateEP16btCollisionWorldP12btDispatcher
	.dword	_ZN25btSimulationIslandManager26storeIslandActivationStateEP16btCollisionWorld
	.size	_ZTV25btSimulationIslandManager, 48

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"islandUnionFindAndQuickSort"
	.size	.L.str, 28

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"processIslands"
	.size	.L.str.1, 15

	.type	_ZTI25btSimulationIslandManager,@object # @_ZTI25btSimulationIslandManager
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI25btSimulationIslandManager
	.p2align	3, 0x0
_ZTI25btSimulationIslandManager:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS25btSimulationIslandManager
	.size	_ZTI25btSimulationIslandManager, 16

	.type	_ZTS25btSimulationIslandManager,@object # @_ZTS25btSimulationIslandManager
	.section	.rodata,"a",@progbits
	.globl	_ZTS25btSimulationIslandManager
_ZTS25btSimulationIslandManager:
	.asciz	"25btSimulationIslandManager"
	.size	_ZTS25btSimulationIslandManager, 28

	.globl	_ZN25btSimulationIslandManagerC1Ev
	.type	_ZN25btSimulationIslandManagerC1Ev,@function
_ZN25btSimulationIslandManagerC1Ev = _ZN25btSimulationIslandManagerC2Ev
	.globl	_ZN25btSimulationIslandManagerD1Ev
	.type	_ZN25btSimulationIslandManagerD1Ev,@function
_ZN25btSimulationIslandManagerD1Ev = _ZN25btSimulationIslandManagerD2Ev
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
	.addrsig_sym _ZTI25btSimulationIslandManager
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS25btSimulationIslandManager
