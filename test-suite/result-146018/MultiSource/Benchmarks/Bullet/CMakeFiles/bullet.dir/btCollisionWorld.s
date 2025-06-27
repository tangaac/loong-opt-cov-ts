	.file	"btCollisionWorld.cpp"
	.text
	.globl	_ZN16btCollisionWorldC2EP12btDispatcherP21btBroadphaseInterfaceP24btCollisionConfiguration # -- Begin function _ZN16btCollisionWorldC2EP12btDispatcherP21btBroadphaseInterfaceP24btCollisionConfiguration
	.p2align	5
	.type	_ZN16btCollisionWorldC2EP12btDispatcherP21btBroadphaseInterfaceP24btCollisionConfiguration,@function
_ZN16btCollisionWorldC2EP12btDispatcherP21btBroadphaseInterfaceP24btCollisionConfiguration: # @_ZN16btCollisionWorldC2EP12btDispatcherP21btBroadphaseInterfaceP24btCollisionConfiguration
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
	pcalau12i	$a0, %pc_hi20(_ZTV16btCollisionWorld+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV16btCollisionWorld+16)
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 32
	st.d	$zero, $fp, 24
	st.d	$zero, $fp, 12
	st.d	$a1, $fp, 40
	st.d	$zero, $fp, 48
	lu52i.d	$a1, $a0, 1016
	st.d	$a1, $fp, 56
	st.b	$zero, $fp, 64
	st.d	$zero, $fp, 72
	ori	$a1, $zero, 256
	st.h	$a1, $fp, 80
	st.b	$a0, $fp, 82
	lu12i.w	$a1, 250429
	ori	$a1, $a1, 1802
	st.w	$a1, $fp, 84
	st.b	$zero, $fp, 88
	st.w	$zero, $fp, 92
	st.d	$zero, $fp, 96
	ld.d	$a1, $a3, 0
	st.d	$a2, $fp, 112
	st.d	$zero, $fp, 120
	st.b	$a0, $fp, 128
	ld.d	$a1, $a1, 32
.Ltmp0:
	move	$a0, $a3
	jirl	$ra, $a1, 0
.Ltmp1:
# %bb.1:
	st.d	$a0, $fp, 104
	st.d	$a0, $fp, 96
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_2:
.Ltmp2:
	move	$s0, $a0
	addi.d	$a0, $fp, 8
.Ltmp3:
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_4:
.Ltmp5:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN16btCollisionWorldC2EP12btDispatcherP21btBroadphaseInterfaceP24btCollisionConfiguration, .Lfunc_end0-_ZN16btCollisionWorldC2EP12btDispatcherP21btBroadphaseInterfaceP24btCollisionConfiguration
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end0-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end0
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
	.section	.text._ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev # -- Begin function _ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev,@function
_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev: # @_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev
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
.LBB1_3:                                # %_ZN20btAlignedObjectArrayIP17btCollisionObjectE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev, .Lfunc_end1-_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev
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
	.globl	_ZN16btCollisionWorldD2Ev       # -- Begin function _ZN16btCollisionWorldD2Ev
	.p2align	5
	.type	_ZN16btCollisionWorldD2Ev,@function
_ZN16btCollisionWorldD2Ev:              # @_ZN16btCollisionWorldD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	ld.w	$a0, $a0, 12
	pcalau12i	$a1, %pc_hi20(_ZTV16btCollisionWorld+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV16btCollisionWorld+16)
	ori	$a2, $zero, 1
	st.d	$a1, $fp, 0
	blt	$a0, $a2, .LBB3_8
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bge	$s2, $a0, .LBB3_8
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 24
	ldx.d	$s3, $a1, $s1
	ld.d	$s0, $s3, 192
	beqz	$s0, .LBB3_2
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $fp, 112
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 64
.Ltmp6:
	jirl	$ra, $a1, 0
.Ltmp7:
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $fp, 40
	ld.d	$a3, $a1, 80
.Ltmp8:
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp9:
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $fp, 112
	ld.d	$a1, $a0, 0
	ld.d	$a2, $fp, 40
	ld.d	$a3, $a1, 24
.Ltmp10:
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp11:
# %bb.7:                                #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a0, $fp, 12
	st.d	$zero, $s3, 192
	b	.LBB3_2
.LBB3_8:                                # %._crit_edge
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB3_11
# %bb.9:                                # %._crit_edge
	ld.b	$a1, $fp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_11
# %bb.10:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB3_11:                               # %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 32
	st.d	$zero, $fp, 24
	st.d	$zero, $fp, 12
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_12:
.Ltmp12:
	move	$s0, $a0
	addi.d	$a0, $fp, 8
.Ltmp13:
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev)
	jirl	$ra, $ra, 0
.Ltmp14:
# %bb.13:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_14:
.Ltmp15:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN16btCollisionWorldD2Ev, .Lfunc_end3-_ZN16btCollisionWorldD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp11-.Ltmp6                 #   Call between .Ltmp6 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin1          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp13-.Ltmp11                #   Call between .Ltmp11 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end3-.Ltmp14            #   Call between .Ltmp14 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
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
	.globl	_ZN16btCollisionWorldD0Ev       # -- Begin function _ZN16btCollisionWorldD0Ev
	.p2align	5
	.type	_ZN16btCollisionWorldD0Ev,@function
_ZN16btCollisionWorldD0Ev:              # @_ZN16btCollisionWorldD0Ev
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
.Ltmp16:
	pcaddu18i	$ra, %call36(_ZN16btCollisionWorldD2Ev)
	jirl	$ra, $ra, 0
.Ltmp17:
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB4_2:
.Ltmp18:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN16btCollisionWorldD0Ev, .Lfunc_end4-_ZN16btCollisionWorldD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp16-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin2          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp17            #   Call between .Ltmp17 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss # -- Begin function _ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss
	.p2align	5
	.type	_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss,@function
_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss: # @_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s2, $a0
	ld.w	$a4, $a0, 12
	ld.w	$a0, $a0, 16
	move	$s0, $a3
	move	$s1, $a2
	move	$fp, $a1
	bne	$a4, $a0, .LBB5_17
# %bb.1:
	sltui	$a0, $a4, 1
	slli.w	$a1, $a4, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$s4, $a0, $a1
	bge	$a4, $s4, .LBB5_17
# %bb.2:
	beqz	$s4, .LBB5_12
# %bb.3:
	slli.d	$a0, $s4, 3
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s2, 12
	move	$s3, $a0
	ld.d	$a0, $s2, 24
	ori	$a1, $zero, 1
	blt	$a4, $a1, .LBB5_13
.LBB5_4:                                # %.lr.ph.i.i.i
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$a4, $a2, .LBB5_9
# %bb.5:                                # %.lr.ph.i.i.i
	sub.d	$a2, $s3, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB5_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a1, $a4, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $a0, 16
	addi.d	$a3, $s3, 16
	move	$a5, $a1
	.p2align	4, , 16
.LBB5_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB5_7
# %bb.8:                                # %middle.block
	beq	$a1, $a4, .LBB5_11
.LBB5_9:                                # %scalar.ph.preheader
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a1, $a0, 3
	alsl.d	$a1, $a1, $s3, 3
	.p2align	4, , 16
.LBB5_10:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	st.d	$a5, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB5_10
.LBB5_11:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a1, $s2, 32
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB5_15
	b	.LBB5_16
.LBB5_12:
	move	$s3, $zero
	ld.d	$a0, $s2, 24
	ori	$a1, $zero, 1
	bge	$a4, $a1, .LBB5_4
.LBB5_13:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
	beqz	$a0, .LBB5_16
# %bb.14:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
	ld.b	$a1, $s2, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_16
.LBB5_15:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s2, 12
.LBB5_16:                               # %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s2, 32
	st.d	$s3, $s2, 24
	st.w	$s4, $s2, 16
.LBB5_17:                               # %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit
	ld.d	$a0, $s2, 24
	slli.d	$a1, $a4, 3
	stx.d	$fp, $a0, $a1
	addi.d	$a0, $a4, 1
	st.w	$a0, $s2, 12
	vld	$vr0, $fp, 8
	vst	$vr0, $sp, 40
	vld	$vr0, $fp, 24
	vld	$vr1, $fp, 40
	vld	$vr2, $fp, 56
	ld.d	$a0, $fp, 200
	vst	$vr0, $sp, 56
	vst	$vr1, $sp, 72
	vst	$vr2, $sp, 88
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 16
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 8
	jirl	$ra, $a4, 0
	ld.d	$a0, $s2, 112
	ld.d	$a1, $fp, 200
	ld.d	$a2, $a0, 0
	ld.w	$a3, $a1, 8
	ld.d	$a7, $s2, 40
	ld.d	$t0, $a2, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	st.d	$zero, $sp, 0
	move	$a4, $fp
	move	$a5, $s1
	move	$a6, $s0
	jirl	$ra, $t0, 0
	st.d	$a0, $fp, 192
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end5:
	.size	_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss, .Lfunc_end5-_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN16btCollisionWorld16updateSingleAabbEP17btCollisionObject
.LCPI6_0:
	.word	0x5368d4a5                      # float 9.99999995E+11
	.text
	.globl	_ZN16btCollisionWorld16updateSingleAabbEP17btCollisionObject
	.p2align	5
	.type	_ZN16btCollisionWorld16updateSingleAabbEP17btCollisionObject,@function
_ZN16btCollisionWorld16updateSingleAabbEP17btCollisionObject: # @_ZN16btCollisionWorld16updateSingleAabbEP17btCollisionObject
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$s0, $a1
	ld.d	$a4, $a1, 200
	ld.d	$a1, $a4, 0
	ld.d	$a5, $a1, 16
	move	$fp, $a0
	addi.d	$a1, $s0, 8
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 8
	move	$a0, $a4
	jirl	$ra, $a5, 0
	pcalau12i	$a0, %got_pc_hi20(gContactBreakingThreshold)
	ld.d	$a0, $a0, %got_pc_lo12(gContactBreakingThreshold)
	fld.s	$fa5, $a0, 0
	fld.s	$fa0, $sp, 24
	fld.s	$fa1, $sp, 28
	fsub.s	$fa0, $fa0, $fa5
	fst.s	$fa0, $sp, 24
	fld.s	$fa2, $sp, 32
	fsub.s	$fa1, $fa1, $fa5
	fst.s	$fa1, $sp, 28
	fld.s	$fa3, $sp, 8
	fsub.s	$fa2, $fa2, $fa5
	fld.s	$fa4, $sp, 12
	fst.s	$fa2, $sp, 32
	fadd.s	$fa3, $fa5, $fa3
	fst.s	$fa3, $sp, 8
	fadd.s	$fa4, $fa5, $fa4
	fld.s	$fa6, $sp, 16
	ld.bu	$a1, $s0, 216
	fst.s	$fa4, $sp, 12
	ld.d	$a0, $fp, 112
	fadd.s	$fa5, $fa5, $fa6
	andi	$a1, $a1, 1
	fst.s	$fa5, $sp, 16
	bnez	$a1, .LBB6_2
# %bb.1:
	fsub.s	$fa0, $fa3, $fa0
	fsub.s	$fa1, $fa4, $fa1
	fsub.s	$fa2, $fa5, $fa2
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	fld.s	$fa3, $a1, %pc_lo12(.LCPI6_0)
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	fcmp.cule.s	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB6_4
.LBB6_2:                                # %.critedge
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s0, 192
	ld.d	$a4, $fp, 40
	ld.d	$a5, $a2, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 8
	jirl	$ra, $a5, 0
.LBB6_3:
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB6_4:
	ori	$a1, $zero, 5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17btCollisionObject18setActivationStateEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_ZZN16btCollisionWorld16updateSingleAabbEP17btCollisionObjectE8reportMe)
	ld.bu	$a0, $a1, %pc_lo12(_ZZN16btCollisionWorld16updateSingleAabbEP17btCollisionObjectE8reportMe)
	bnez	$a0, .LBB6_3
# %bb.5:
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB6_3
# %bb.6:
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 72
	ori	$a3, $zero, 1
	st.b	$a3, $a1, %pc_lo12(_ZZN16btCollisionWorld16updateSingleAabbEP17btCollisionObjectE8reportMe)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 120
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 72
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 120
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 72
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 120
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 72
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	jirl	$ra, $a2, 0
	b	.LBB6_3
.Lfunc_end6:
	.size	_ZN16btCollisionWorld16updateSingleAabbEP17btCollisionObject, .Lfunc_end6-_ZN16btCollisionWorld16updateSingleAabbEP17btCollisionObject
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16btCollisionWorld11updateAabbsEv # -- Begin function _ZN16btCollisionWorld11updateAabbsEv
	.p2align	5
	.type	_ZN16btCollisionWorld11updateAabbsEv,@function
_ZN16btCollisionWorld11updateAabbsEv:   # @_ZN16btCollisionWorld11updateAabbsEv
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB7_8
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	ori	$s2, $zero, 2
	ori	$s3, $zero, 5
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_5 Depth=1
.Ltmp19:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16btCollisionWorld16updateSingleAabbEP17btCollisionObject)
	jirl	$ra, $ra, 0
.Ltmp20:
# %bb.3:                                # %._crit_edge11
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.w	$a0, $fp, 12
.LBB7_4:                                #   in Loop: Header=BB7_5 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bge	$s1, $a0, .LBB7_8
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 24
	ld.bu	$a2, $fp, 128
	ldx.d	$a1, $a1, $s0
	bnez	$a2, .LBB7_2
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	ld.w	$a2, $a1, 228
	beq	$a2, $s2, .LBB7_4
# %bb.7:                                #   in Loop: Header=BB7_5 Depth=1
	beq	$a2, $s3, .LBB7_4
	b	.LBB7_2
.LBB7_8:                                # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jr	$t8
.LBB7_9:
.Ltmp21:
	move	$fp, $a0
.Ltmp22:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp23:
# %bb.10:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_11:
.Ltmp24:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN16btCollisionWorld11updateAabbsEv, .Lfunc_end7-_ZN16btCollisionWorld11updateAabbsEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp19-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin3          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp22-.Ltmp20                #   Call between .Ltmp20 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin3          #     jumps to .Ltmp24
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp23-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Lfunc_end7-.Ltmp23            #   Call between .Ltmp23 and .Lfunc_end7
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
	.text
	.globl	_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv # -- Begin function _ZN16btCollisionWorld33performDiscreteCollisionDetectionEv
	.p2align	5
	.type	_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv,@function
_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv: # @_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp25:
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp26:
# %bb.1:
.Ltmp28:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
.Ltmp29:
# %bb.2:                                # %_ZN14CProfileSampleC2EPKc.exit
	ld.d	$a0, $fp, 112
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 40
	ld.d	$a2, $a2, 56
.Ltmp30:
	jirl	$ra, $a2, 0
.Ltmp31:
# %bb.3:
.Ltmp35:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.4:                                # %_ZN14CProfileSampleD2Ev.exit
	ld.d	$s0, $fp, 40
.Ltmp38:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
.Ltmp39:
# %bb.5:                                # %_ZN14CProfileSampleC2EPKc.exit13
	beqz	$s0, .LBB8_8
# %bb.6:
	ld.d	$a0, $fp, 112
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 64
.Ltmp40:
	jirl	$ra, $a1, 0
	move	$a1, $a0
.Ltmp41:
# %bb.7:
	ld.d	$a0, $s0, 0
	ld.d	$a3, $fp, 40
	ld.d	$a4, $a0, 64
	addi.d	$a2, $fp, 48
.Ltmp42:
	move	$a0, $s0
	jirl	$ra, $a4, 0
.Ltmp43:
.LBB8_8:
.Ltmp47:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp48:
# %bb.9:                                # %_ZN14CProfileSampleD2Ev.exit16
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jr	$t8
.LBB8_10:
.Ltmp32:
	move	$fp, $a0
.Ltmp33:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp34:
	b	.LBB8_16
.LBB8_11:
.Ltmp27:
	b	.LBB8_15
.LBB8_12:
.Ltmp44:
	move	$fp, $a0
.Ltmp45:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp46:
	b	.LBB8_16
.LBB8_13:
.Ltmp49:
	b	.LBB8_15
.LBB8_14:
.Ltmp37:
.LBB8_15:                               # %_ZN14CProfileSampleD2Ev.exit14
	move	$fp, $a0
.LBB8_16:                               # %_ZN14CProfileSampleD2Ev.exit14
.Ltmp50:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp51:
# %bb.17:                               # %_ZN14CProfileSampleD2Ev.exit17
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB8_18:
.Ltmp52:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv, .Lfunc_end8-_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp25-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin4          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp37-.Lfunc_begin4          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin4          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin4          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp49-.Lfunc_begin4          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp43-.Ltmp40                #   Call between .Ltmp40 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin4          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin4          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Ltmp33-.Ltmp48                #   Call between .Ltmp48 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin4          # >> Call Site 10 <<
	.uleb128 .Ltmp51-.Ltmp33                #   Call between .Ltmp33 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin4          #     jumps to .Ltmp52
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin4          # >> Call Site 11 <<
	.uleb128 .Lfunc_end8-.Ltmp51            #   Call between .Ltmp51 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject # -- Begin function _ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject
	.p2align	5
	.type	_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject,@function
_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject: # @_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject
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
	move	$s0, $a1
	ld.d	$s1, $a1, 192
	move	$fp, $a0
	beqz	$s1, .LBB9_2
# %bb.1:
	ld.d	$a0, $fp, 112
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 64
	jirl	$ra, $a1, 0
	ld.d	$a1, $a0, 0
	ld.d	$a2, $fp, 40
	ld.d	$a3, $a1, 80
	move	$a1, $s1
	jirl	$ra, $a3, 0
	ld.d	$a0, $fp, 112
	ld.d	$a1, $a0, 0
	ld.d	$a2, $fp, 40
	ld.d	$a3, $a1, 24
	move	$a1, $s1
	jirl	$ra, $a3, 0
	st.d	$zero, $s0, 192
.LBB9_2:
	ld.w	$a0, $fp, 12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB9_8
# %bb.3:                                # %.lr.ph.i.i
	ld.d	$a1, $fp, 24
	move	$a3, $zero
	move	$a4, $a0
	move	$a2, $a1
	.p2align	4, , 16
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	beq	$a5, $s0, .LBB9_6
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -1
	addi.w	$a3, $a3, 1
	bnez	$a4, .LBB9_4
	b	.LBB9_8
.LBB9_6:                                # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.i
	bge	$a3, $a0, .LBB9_8
# %bb.7:
	addi.w	$a0, $a0, -1
	slli.d	$a3, $a0, 3
	ldx.d	$a4, $a1, $a3
	ld.d	$a5, $a2, 0
	st.d	$a4, $a2, 0
	stx.d	$a5, $a1, $a3
	st.w	$a0, $fp, 12
.LBB9_8:                                # %_ZN20btAlignedObjectArrayIP17btCollisionObjectE6removeERKS1_.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject, .Lfunc_end9-_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE
.LCPI10_0:
	.word	0x38d1b717                      # float 9.99999974E-5
	.text
	.globl	_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE
	.p2align	5
	.type	_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE,@function
_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE: # @_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	fst.d	$fs0, $sp, 712                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 704                  # 8-byte Folded Spill
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
	.cfi_offset 57, -96
	move	$fp, $a5
	move	$s2, $a4
	move	$s1, $a3
	move	$s0, $a2
	move	$s4, $a1
	move	$s3, $a0
	addi.d	$a0, $sp, 640
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTV13btSphereShape)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV13btSphereShape)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 640
	ori	$a1, $zero, 8
	ld.w	$a0, $s1, 8
	st.w	$a1, $sp, 648
	st.w	$zero, $sp, 680
	ori	$a2, $zero, 19
	st.w	$zero, $sp, 696
	blt	$a2, $a0, .LBB10_8
# %bb.1:
	pcalau12i	$a0, %pc_hi20(_ZTVN12btConvexCast10CastResultE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN12btConvexCast10CastResultE+16)
	fld.s	$fa0, $fp, 8
	st.d	$a0, $sp, 448
	st.d	$zero, $sp, 624
	st.w	$zero, $sp, 632
	fst.s	$fa0, $sp, 616
	st.b	$zero, $sp, 416
.Ltmp76:
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 640
	addi.d	$a3, $sp, 88
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver)
	jirl	$ra, $ra, 0
.Ltmp77:
# %bb.2:
.Ltmp78:
	addi.d	$a0, $sp, 56
	addi.d	$a5, $sp, 448
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s2
	move	$a4, $s2
	pcaddu18i	$ra, %call36(_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE)
	jirl	$ra, $ra, 0
.Ltmp79:
# %bb.3:
	beqz	$a0, .LBB10_7
# %bb.4:
	fld.s	$fa1, $sp, 584
	fld.s	$fa2, $sp, 588
	fld.s	$fa3, $sp, 592
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI10_0)
	fmul.s	$fa4, $fa2, $fa2
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB10_7
# %bb.5:
	fld.s	$fa0, $sp, 616
	fld.s	$fa4, $fp, 8
	fcmp.cule.s	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB10_7
# %bb.6:
	fld.s	$fa4, $s3, 4
	fld.s	$fa5, $s3, 0
	fmul.s	$fa4, $fa2, $fa4
	fld.s	$fa6, $s3, 8
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fld.s	$fa5, $s3, 20
	fld.s	$fa7, $s3, 16
	fmadd.s	$fa4, $fa6, $fa3, $fa4
	fld.s	$fa6, $s3, 24
	fmul.s	$fa5, $fa2, $fa5
	fmadd.s	$fa5, $fa7, $fa1, $fa5
	fld.s	$fa7, $s3, 36
	fmadd.s	$fa5, $fa6, $fa3, $fa5
	fld.s	$fa6, $s3, 32
	fld.s	$ft0, $s3, 40
	fmul.s	$fa2, $fa2, $fa7
	addi.d	$a0, $sp, 584
	fmadd.s	$fa1, $fa6, $fa1, $fa2
	fmadd.s	$fa1, $ft0, $fa3, $fa1
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 592
	fmul.s	$fa2, $fa5, $fa5
	fmadd.s	$fa2, $fa4, $fa4, $fa2
	fmadd.s	$fa2, $fa1, $fa1, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa3, $fa4, $fa2
	fst.s	$fa3, $sp, 584
	fmul.s	$fa3, $fa5, $fa2
	fst.s	$fa3, $sp, 588
	fmul.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $sp, 592
	vld	$vr1, $a0, 0
	ld.d	$a0, $fp, 0
	vst	$vr1, $sp, 32
	fst.s	$fa0, $sp, 48
	ld.d	$a3, $a0, 24
	st.d	$s0, $sp, 16
	st.d	$zero, $sp, 24
.Ltmp81:
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a3, 0
.Ltmp82:
.LBB10_7:
.Ltmp86:
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp87:
	b	.LBB10_31
.LBB10_8:
	addi.w	$a2, $a0, -21
	bltu	$a1, $a2, .LBB10_13
# %bb.9:
	addi.d	$s6, $s2, 16
	addi.d	$s5, $s2, 32
	fld.s	$fa6, $s2, 0
	fld.s	$ft0, $s2, 16
	fld.s	$fa7, $s2, 32
	fld.s	$fa3, $s2, 4
	fld.s	$fa5, $s2, 20
	fld.s	$fa4, $s2, 36
	fld.s	$fa0, $s2, 8
	fld.s	$fa2, $s2, 24
	fld.s	$fa1, $s2, 40
	fld.s	$ft1, $s2, 48
	fld.s	$ft2, $s2, 52
	fld.s	$ft3, $s2, 56
	addi.d	$s7, $s2, 48
	fneg.s	$ft1, $ft1
	fneg.s	$ft4, $ft2
	fneg.s	$ft5, $ft3
	fmul.s	$ft2, $ft0, $ft4
	fmadd.s	$ft2, $fa6, $ft1, $ft2
	fmadd.s	$ft3, $fa7, $ft5, $ft2
	fmul.s	$ft2, $fa5, $ft4
	fmadd.s	$ft2, $fa3, $ft1, $ft2
	fmadd.s	$ft2, $fa4, $ft5, $ft2
	fmul.s	$ft4, $fa2, $ft4
	fmadd.s	$ft1, $fa0, $ft1, $ft4
	ori	$a1, $zero, 21
	fmadd.s	$ft1, $fa1, $ft5, $ft1
	bne	$a0, $a1, .LBB10_18
# %bb.10:
	fld.s	$ft4, $s3, 52
	fld.s	$ft5, $s3, 48
	fld.s	$ft6, $s3, 56
	fmul.s	$ft7, $ft0, $ft4
	fmadd.s	$ft7, $fa6, $ft5, $ft7
	fmadd.s	$ft7, $fa7, $ft6, $ft7
	fadd.s	$ft7, $ft3, $ft7
	fmul.s	$ft8, $fa5, $ft4
	fmadd.s	$ft8, $fa3, $ft5, $ft8
	fmadd.s	$ft8, $fa4, $ft6, $ft8
	fadd.s	$ft8, $ft2, $ft8
	fmul.s	$ft4, $fa2, $ft4
	fmadd.s	$ft4, $fa0, $ft5, $ft4
	fmadd.s	$ft4, $fa1, $ft6, $ft4
	fadd.s	$ft4, $ft1, $ft4
	movfr2gr.s	$a0, $ft7
	movfr2gr.s	$a1, $ft8
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft4
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 448
	fld.s	$ft4, $s4, 52
	fld.s	$ft5, $s4, 48
	fld.s	$ft6, $s4, 56
	st.d	$a1, $sp, 456
	fmul.s	$ft0, $ft0, $ft4
	fmadd.s	$fa6, $fa6, $ft5, $ft0
	fmadd.s	$fa6, $fa7, $ft6, $fa6
	fadd.s	$fa6, $ft3, $fa6
	fmul.s	$fa5, $fa5, $ft4
	fmadd.s	$fa3, $fa3, $ft5, $fa5
	fmadd.s	$fa3, $fa4, $ft6, $fa3
	fadd.s	$fa3, $ft2, $fa3
	fmul.s	$fa2, $fa2, $ft4
	fmadd.s	$fa0, $fa0, $ft5, $fa2
	fmadd.s	$fa0, $fa1, $ft6, $fa0
	fadd.s	$fa0, $ft1, $fa0
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	ld.w	$a3, $fp, 28
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
.Ltmp66:
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 448
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(_ZN25btTriangleRaycastCallbackC2ERK9btVector3S2_j)
	jirl	$ra, $ra, 0
.Ltmp67:
# %bb.11:
	vld	$vr0, $s2, 0
	vld	$vr1, $s6, 0
	vld	$vr2, $s5, 0
	vst	$vr0, $sp, 160
	vst	$vr1, $sp, 176
	vst	$vr2, $sp, 192
	vld	$vr0, $s7, 0
	pcalau12i	$a0, %pc_hi20(_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback+16)
	st.d	$a0, $sp, 88
	vst	$vr0, $sp, 208
	fld.s	$fa0, $fp, 8
	st.d	$fp, $sp, 136
	st.d	$s0, $sp, 144
	st.d	$s1, $sp, 152
	fst.s	$fa0, $sp, 132
.Ltmp68:
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 448
	addi.d	$a3, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.12:
.Ltmp73:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp74:
	b	.LBB10_31
.LBB10_13:
	ori	$a1, $zero, 31
	bne	$a0, $a1, .LBB10_31
# %bb.14:                               # %.preheader
	ld.w	$a0, $s1, 28
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_31
# %bb.15:                               # %.lr.ph
	move	$s5, $zero
	ori	$s6, $zero, 64
	.p2align	4, , 16
.LBB10_16:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 40
	add.d	$a1, $a0, $s6
	fld.s	$fa5, $a1, -64
	fld.s	$fa6, $a1, -60
	fld.s	$fa7, $a1, -56
	fld.s	$ft0, $a1, -48
	fld.s	$ft1, $a1, -44
	fld.s	$ft2, $a1, -40
	fld.s	$ft3, $a1, -32
	fld.s	$ft4, $a1, -28
	fld.s	$ft5, $a1, -24
	fld.s	$fa0, $a1, -16
	fld.s	$fa2, $a1, -12
	fld.s	$fa1, $a1, -8
	fld.s	$ft6, $s2, 4
	fld.s	$ft7, $s2, 0
	fld.s	$ft8, $s2, 8
	ldx.d	$a3, $a0, $s6
	fmul.s	$fa3, $ft0, $ft6
	fmadd.s	$fa3, $fa5, $ft7, $fa3
	fmadd.s	$fa3, $ft3, $ft8, $fa3
	fmul.s	$fa4, $ft1, $ft6
	fmadd.s	$fa4, $fa6, $ft7, $fa4
	fmadd.s	$fa4, $ft4, $ft8, $fa4
	fmul.s	$ft9, $ft2, $ft6
	fmadd.s	$ft9, $fa7, $ft7, $ft9
	fld.s	$ft10, $s2, 20
	fld.s	$ft11, $s2, 16
	fld.s	$ft12, $s2, 24
	fmadd.s	$ft9, $ft5, $ft8, $ft9
	fmul.s	$ft13, $ft0, $ft10
	fmadd.s	$ft13, $fa5, $ft11, $ft13
	fmadd.s	$ft13, $ft3, $ft12, $ft13
	fmul.s	$ft14, $ft1, $ft10
	fld.s	$ft15, $s2, 36
	fld.s	$fs0, $s2, 32
	fmadd.s	$ft14, $fa6, $ft11, $ft14
	fmadd.s	$ft14, $ft4, $ft12, $ft14
	fmul.s	$ft0, $ft0, $ft15
	fmadd.s	$fa5, $fa5, $fs0, $ft0
	fld.s	$ft0, $s2, 40
	fmul.s	$fs1, $ft2, $ft10
	fmadd.s	$fs1, $fa7, $ft11, $fs1
	fmadd.s	$fs1, $ft5, $ft12, $fs1
	fmadd.s	$fa5, $ft3, $ft0, $fa5
	fmul.s	$ft1, $ft1, $ft15
	fmadd.s	$fa6, $fa6, $fs0, $ft1
	fmadd.s	$fa6, $ft4, $ft0, $fa6
	fmul.s	$ft1, $ft2, $ft15
	fmadd.s	$fa7, $fa7, $fs0, $ft1
	fmadd.s	$fa7, $ft5, $ft0, $fa7
	fld.s	$ft1, $s2, 48
	fmul.s	$ft2, $fa2, $ft6
	fmadd.s	$ft2, $ft7, $fa0, $ft2
	fmadd.s	$ft2, $ft8, $fa1, $ft2
	fadd.s	$ft1, $ft2, $ft1
	fld.s	$ft2, $s2, 52
	fmul.s	$ft3, $fa2, $ft10
	fmadd.s	$ft3, $ft11, $fa0, $ft3
	fmadd.s	$ft3, $ft12, $fa1, $ft3
	fadd.s	$ft2, $ft3, $ft2
	fld.s	$ft3, $s2, 56
	fmul.s	$fa2, $fa2, $ft15
	fmadd.s	$fa0, $fs0, $fa0, $fa2
	fmadd.s	$fa0, $ft0, $fa1, $fa0
	fadd.s	$fa0, $fa0, $ft3
	movfr2gr.s	$a0, $ft1
	movfr2gr.s	$a1, $ft2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa3, $sp, 88
	fst.s	$fa4, $sp, 92
	fst.s	$ft9, $sp, 96
	st.w	$zero, $sp, 100
	fst.s	$ft13, $sp, 104
	fst.s	$ft14, $sp, 108
	fst.s	$fs1, $sp, 112
	st.w	$zero, $sp, 116
	fst.s	$fa5, $sp, 120
	fst.s	$fa6, $sp, 124
	fst.s	$fa7, $sp, 128
	st.d	$a0, $sp, 136
	ld.d	$s7, $s0, 200
	st.w	$zero, $sp, 132
	st.d	$a1, $sp, 144
	st.d	$a3, $s0, 200
.Ltmp53:
	addi.d	$a4, $sp, 88
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.17:                               #   in Loop: Header=BB10_16 Depth=1
	st.d	$s7, $s0, 200
	ld.w	$a0, $s1, 28
	addi.d	$s5, $s5, 1
	addi.d	$s6, $s6, 88
	blt	$s5, $a0, .LBB10_16
	b	.LBB10_31
.LBB10_18:
	fld.s	$ft4, $s3, 52
	fld.s	$ft5, $s3, 48
	fld.s	$ft6, $s3, 56
	fmul.s	$ft7, $ft0, $ft4
	fmadd.s	$ft7, $fa6, $ft5, $ft7
	fmadd.s	$ft7, $fa7, $ft6, $ft7
	fadd.s	$ft7, $ft3, $ft7
	fmul.s	$ft8, $fa5, $ft4
	fmadd.s	$ft8, $fa3, $ft5, $ft8
	fmadd.s	$ft8, $fa4, $ft6, $ft8
	fadd.s	$ft8, $ft2, $ft8
	fmul.s	$ft4, $fa2, $ft4
	fmadd.s	$ft4, $fa0, $ft5, $ft4
	fmadd.s	$ft4, $fa1, $ft6, $ft4
	fadd.s	$ft4, $ft1, $ft4
	movfr2gr.s	$a0, $ft7
	movfr2gr.s	$a1, $ft8
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft4
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 448
	fld.s	$ft4, $s4, 52
	fld.s	$ft5, $s4, 48
	fld.s	$ft6, $s4, 56
	st.d	$a1, $sp, 456
	fmul.s	$ft0, $ft0, $ft4
	fmadd.s	$fa6, $fa6, $ft5, $ft0
	fmadd.s	$fa6, $fa7, $ft6, $fa6
	fadd.s	$fa6, $ft3, $fa6
	fmul.s	$fa5, $fa5, $ft4
	fmadd.s	$fa3, $fa3, $ft5, $fa5
	fmadd.s	$fa3, $fa4, $ft6, $fa3
	fadd.s	$fa3, $ft2, $fa3
	fmul.s	$fa2, $fa2, $ft4
	fmadd.s	$fa0, $fa0, $ft5, $fa2
	fmadd.s	$fa0, $fa1, $ft6, $fa0
	fadd.s	$fa0, $ft1, $fa0
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	ld.w	$a3, $fp, 28
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
.Ltmp56:
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 448
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(_ZN25btTriangleRaycastCallbackC2ERK9btVector3S2_j)
	jirl	$ra, $ra, 0
.Ltmp57:
# %bb.19:
	vld	$vr0, $s2, 0
	vst	$vr0, $sp, 160
	vld	$vr0, $s6, 0
	vld	$vr1, $s5, 0
	vld	$vr2, $s7, 0
	vld	$vr3, $sp, 448
	vst	$vr0, $sp, 176
	vst	$vr1, $sp, 192
	vst	$vr2, $sp, 208
	vst	$vr3, $sp, 56
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 56
	pcalau12i	$a0, %pc_hi20(_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0+16)
	st.d	$a0, $sp, 88
	fcmp.cule.s	$fcc0, $fa1, $fa0
	fld.s	$fa1, $fp, 8
	st.d	$fp, $sp, 136
	st.d	$s0, $sp, 144
	st.d	$s1, $sp, 152
	fst.s	$fa1, $sp, 132
	bceqz	$fcc0, .LBB10_32
# %bb.20:                               # %_Z8btSetMinIfEvRT_RKS0_.exit.i
	fld.s	$fa1, $sp, 20
	fld.s	$fa2, $sp, 60
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bceqz	$fcc0, .LBB10_33
.LBB10_21:                              # %_Z8btSetMinIfEvRT_RKS0_.exit5.i
	fld.s	$fa2, $sp, 24
	fld.s	$fa3, $sp, 64
	fcmp.cule.s	$fcc0, $fa3, $fa2
	bceqz	$fcc0, .LBB10_34
.LBB10_22:                              # %_Z8btSetMinIfEvRT_RKS0_.exit6.i
	fld.s	$fa3, $sp, 28
	fld.s	$fa4, $sp, 68
	fcmp.cule.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB10_24
.LBB10_23:
	fst.s	$fa3, $sp, 68
.LBB10_24:                              # %_ZN9btVector36setMinERKS_.exit
	vld	$vr4, $sp, 448
	vst	$vr4, $sp, 0
	fld.s	$fa4, $sp, 0
	fcmp.cule.s	$fcc0, $fa0, $fa4
	bceqz	$fcc0, .LBB10_35
# %bb.25:                               # %_Z8btSetMaxIfEvRT_RKS0_.exit.i
	fld.s	$fa0, $sp, 4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB10_36
.LBB10_26:                              # %_Z8btSetMaxIfEvRT_RKS0_.exit5.i
	fld.s	$fa0, $sp, 8
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bceqz	$fcc0, .LBB10_37
.LBB10_27:                              # %_Z8btSetMaxIfEvRT_RKS0_.exit6.i
	fld.s	$fa0, $sp, 12
	fcmp.cule.s	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB10_29
.LBB10_28:
	fst.s	$fa3, $sp, 12
.LBB10_29:                              # %_ZN9btVector36setMaxERKS_.exit
	ld.d	$a0, $s1, 0
	ld.d	$a4, $a0, 96
.Ltmp58:
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 0
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp59:
# %bb.30:
.Ltmp63:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp64:
.LBB10_31:                              # %.loopexit
	addi.d	$a0, $sp, 640
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
	fld.d	$fs1, $sp, 704                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 712                  # 8-byte Folded Reload
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
.LBB10_32:
	fst.s	$fa0, $sp, 56
	fld.s	$fa1, $sp, 20
	fld.s	$fa2, $sp, 60
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB10_21
.LBB10_33:
	fst.s	$fa1, $sp, 60
	fld.s	$fa2, $sp, 24
	fld.s	$fa3, $sp, 64
	fcmp.cule.s	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB10_22
.LBB10_34:
	fst.s	$fa2, $sp, 64
	fld.s	$fa3, $sp, 28
	fld.s	$fa4, $sp, 68
	fcmp.cule.s	$fcc0, $fa4, $fa3
	bceqz	$fcc0, .LBB10_23
	b	.LBB10_24
.LBB10_35:
	fst.s	$fa0, $sp, 0
	fld.s	$fa0, $sp, 4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB10_26
.LBB10_36:
	fst.s	$fa1, $sp, 4
	fld.s	$fa0, $sp, 8
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB10_27
.LBB10_37:
	fst.s	$fa2, $sp, 8
	fld.s	$fa0, $sp, 12
	fcmp.cule.s	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB10_28
	b	.LBB10_29
.LBB10_38:
.Ltmp83:
	b	.LBB10_44
.LBB10_39:
.Ltmp60:
	move	$fp, $a0
.Ltmp61:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp62:
	b	.LBB10_48
.LBB10_40:
.Ltmp70:
	move	$fp, $a0
.Ltmp71:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp72:
	b	.LBB10_48
.LBB10_41:
.Ltmp65:
	b	.LBB10_47
.LBB10_42:
.Ltmp75:
	b	.LBB10_47
.LBB10_43:
.Ltmp80:
.LBB10_44:
	move	$fp, $a0
.Ltmp84:
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp85:
	b	.LBB10_48
.LBB10_45:
.Ltmp88:
	b	.LBB10_47
.LBB10_46:
.Ltmp55:
.LBB10_47:
	move	$fp, $a0
.LBB10_48:
.Ltmp89:
	addi.d	$a0, $sp, 640
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp90:
# %bb.49:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_50:
.Ltmp91:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE, .Lfunc_end10-_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp76-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp88-.Lfunc_begin5          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin5          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin5          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin5          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin5          # >> Call Site 6 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp75-.Lfunc_begin5          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin5          # >> Call Site 7 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin5          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin5          # >> Call Site 8 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin5          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin5          # >> Call Site 9 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin5          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin5          # >> Call Site 10 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp65-.Lfunc_begin5          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin5          # >> Call Site 11 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin5          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin5          # >> Call Site 12 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin5          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin5          # >> Call Site 13 <<
	.uleb128 .Ltmp61-.Ltmp64                #   Call between .Ltmp64 and .Ltmp61
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin5          # >> Call Site 14 <<
	.uleb128 .Ltmp90-.Ltmp61                #   Call between .Ltmp61 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin5          #     jumps to .Ltmp91
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp90-.Lfunc_begin5          # >> Call Site 15 <<
	.uleb128 .Lfunc_end10-.Ltmp90           #   Call between .Ltmp90 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResultD2Ev,"axG",@progbits,_ZN12btConvexCast10CastResultD2Ev,comdat
	.weak	_ZN12btConvexCast10CastResultD2Ev # -- Begin function _ZN12btConvexCast10CastResultD2Ev
	.p2align	5
	.type	_ZN12btConvexCast10CastResultD2Ev,@function
_ZN12btConvexCast10CastResultD2Ev:      # @_ZN12btConvexCast10CastResultD2Ev
# %bb.0:
	ret
.Lfunc_end11:
	.size	_ZN12btConvexCast10CastResultD2Ev, .Lfunc_end11-_ZN12btConvexCast10CastResultD2Ev
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf
.LCPI12_0:
	.word	0x38d1b717                      # float 9.99999974E-5
	.text
	.globl	_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf
	.p2align	5
	.type	_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf,@function
_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf: # @_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -880
	.cfi_def_cfa_offset 880
	st.d	$ra, $sp, 872                   # 8-byte Folded Spill
	st.d	$fp, $sp, 864                   # 8-byte Folded Spill
	st.d	$s0, $sp, 856                   # 8-byte Folded Spill
	st.d	$s1, $sp, 848                   # 8-byte Folded Spill
	st.d	$s2, $sp, 840                   # 8-byte Folded Spill
	st.d	$s3, $sp, 832                   # 8-byte Folded Spill
	st.d	$s4, $sp, 824                   # 8-byte Folded Spill
	st.d	$s5, $sp, 816                   # 8-byte Folded Spill
	st.d	$s6, $sp, 808                   # 8-byte Folded Spill
	st.d	$s7, $sp, 800                   # 8-byte Folded Spill
	st.d	$s8, $sp, 792                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 784                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 776                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 768                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 760                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 752                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 744                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 736                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 728                  # 8-byte Folded Spill
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
	move	$fp, $a4
	ld.w	$a4, $a4, 8
	ori	$a7, $zero, 19
	fmov.s	$fs0, $fa0
	move	$s0, $a6
	move	$s3, $a5
	move	$s1, $a3
	move	$s4, $a2
	move	$s5, $a1
	move	$s2, $a0
	blt	$a7, $a4, .LBB12_8
# %bb.1:
	pcalau12i	$a0, %pc_hi20(_ZTVN12btConvexCast10CastResultE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN12btConvexCast10CastResultE+16)
	st.d	$a0, $sp, 536
	st.d	$zero, $sp, 712
	fld.s	$fa0, $s0, 8
	pcalau12i	$a0, %got_pc_hi20(_ZTV30btGjkEpaPenetrationDepthSolver)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV30btGjkEpaPenetrationDepthSolver)
	fst.s	$fs0, $sp, 720
	fst.s	$fa0, $sp, 704
	st.b	$zero, $sp, 504
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 64
.Ltmp112:
	addi.d	$a0, $sp, 136
	addi.d	$a3, $sp, 176
	addi.d	$a4, $sp, 64
	move	$a1, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN27btContinuousConvexCollisionC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver)
	jirl	$ra, $ra, 0
.Ltmp113:
# %bb.2:
	ld.d	$a0, $sp, 136
	ld.d	$a6, $a0, 16
.Ltmp114:
	addi.d	$a0, $sp, 136
	addi.d	$a5, $sp, 536
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $s3
	jirl	$ra, $a6, 0
.Ltmp115:
# %bb.3:
	beqz	$a0, .LBB12_7
# %bb.4:
	fld.s	$fa2, $sp, 672
	fld.s	$fa1, $sp, 676
	fld.s	$fa3, $sp, 680
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI12_0)
	fmul.s	$fa4, $fa1, $fa1
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa0
	bcnez	$fcc0, .LBB12_7
# %bb.5:
	fld.s	$fa0, $sp, 704
	fld.s	$fa5, $s0, 8
	fcmp.cule.s	$fcc0, $fa5, $fa0
	bcnez	$fcc0, .LBB12_7
# %bb.6:
	addi.d	$a0, $sp, 672
	frsqrt.s	$fa4, $fa4
	fmul.s	$fa2, $fa2, $fa4
	fst.s	$fa2, $sp, 672
	fmul.s	$fa1, $fa1, $fa4
	fst.s	$fa1, $sp, 676
	fmul.s	$fa1, $fa3, $fa4
	fst.s	$fa1, $sp, 680
	vld	$vr1, $a0, 0
	vld	$vr2, $sp, 688
	ld.d	$a0, $s0, 0
	vst	$vr1, $sp, 96
	vst	$vr2, $sp, 112
	fst.s	$fa0, $sp, 128
	ld.d	$a3, $a0, 24
	st.d	$s1, $sp, 80
	st.d	$zero, $sp, 88
.Ltmp117:
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a3, 0
.Ltmp118:
.LBB12_7:
.Ltmp123:
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp124:
	b	.LBB12_25
.LBB12_8:
	addi.w	$a0, $a4, -21
	ori	$a1, $zero, 8
	bltu	$a1, $a0, .LBB12_12
# %bb.9:
	fld.s	$fs6, $s3, 0
	fld.s	$fs0, $s3, 16
	fld.s	$fs7, $s3, 32
	fld.s	$fs3, $s3, 4
	fld.s	$fs5, $s3, 20
	fld.s	$fs4, $s3, 36
	fld.s	$ft7, $s3, 8
	fld.s	$fs1, $s3, 24
	fld.s	$fa0, $s3, 48
	fld.s	$fa1, $s3, 52
	fld.s	$fa2, $s3, 56
	fld.s	$fs2, $s3, 40
	fneg.s	$fa0, $fa0
	fneg.s	$fa1, $fa1
	fneg.s	$fa2, $fa2
	fmul.s	$fa3, $fs0, $fa1
	fmadd.s	$fa3, $fs6, $fa0, $fa3
	fmadd.s	$fa7, $fs7, $fa2, $fa3
	fmul.s	$fa3, $fs5, $fa1
	fmadd.s	$fa3, $fs3, $fa0, $fa3
	fmadd.s	$fa6, $fs4, $fa2, $fa3
	fmul.s	$fa1, $fs1, $fa1
	fmadd.s	$fa0, $ft7, $fa0, $fa1
	ori	$a0, $zero, 21
	fmadd.s	$fa5, $fs2, $fa2, $fa0
	bne	$a4, $a0, .LBB12_18
# %bb.10:
	fld.s	$fa0, $s5, 52
	fld.s	$fa1, $s5, 48
	fld.s	$fa2, $s5, 56
	fmul.s	$fa3, $fs0, $fa0
	fmadd.s	$fa3, $fs6, $fa1, $fa3
	fmadd.s	$fa3, $fs7, $fa2, $fa3
	fadd.s	$fa3, $fa7, $fa3
	fmul.s	$fa4, $fs5, $fa0
	fmadd.s	$fa4, $fs3, $fa1, $fa4
	fmadd.s	$fa4, $fs4, $fa2, $fa4
	fadd.s	$fa4, $fa6, $fa4
	fmul.s	$fa0, $fs1, $fa0
	fmadd.s	$fa0, $ft7, $fa1, $fa0
	fmadd.s	$fa0, $fs2, $fa2, $fa0
	fadd.s	$fa0, $fa5, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 80
	fld.s	$fa0, $s4, 52
	fld.s	$fa1, $s4, 48
	fld.s	$fa2, $s4, 56
	st.d	$a1, $sp, 88
	fmul.s	$fa3, $fs0, $fa0
	fmadd.s	$fa3, $fs6, $fa1, $fa3
	fmadd.s	$fa3, $fs7, $fa2, $fa3
	fadd.s	$fa3, $fa7, $fa3
	fmul.s	$fa4, $fs5, $fa0
	fmadd.s	$fa4, $fs3, $fa1, $fa4
	fmadd.s	$fa4, $fs4, $fa2, $fa4
	fadd.s	$fa4, $fa6, $fa4
	fmul.s	$fa0, $fs1, $fa0
	fmadd.s	$fa0, $ft7, $fa1, $fa0
	fmadd.s	$fa0, $fs2, $fa2, $fa0
	fadd.s	$fa0, $fa5, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$fa0, $s4, 16
	st.d	$a0, $sp, 136
	st.d	$a1, $sp, 144
	fld.s	$fa1, $s4, 0
	fmul.s	$fa2, $fs0, $fa0
	fld.s	$fa3, $s4, 32
	fld.s	$fa4, $s4, 20
	fld.s	$fa5, $s4, 4
	fmadd.s	$fa2, $fa1, $fs6, $fa2
	fmadd.s	$fa2, $fa3, $fs7, $fa2
	fmul.s	$fa6, $fs0, $fa4
	fmadd.s	$fa6, $fa5, $fs6, $fa6
	fld.s	$fa7, $s4, 36
	fld.s	$ft0, $s4, 24
	fld.s	$ft1, $s4, 8
	fld.s	$ft2, $s4, 40
	fmadd.s	$fa6, $fa7, $fs7, $fa6
	fmul.s	$ft3, $fs0, $ft0
	fmadd.s	$ft3, $ft1, $fs6, $ft3
	fmadd.s	$ft3, $ft2, $fs7, $ft3
	fmul.s	$ft4, $fs5, $fa0
	fmadd.s	$ft4, $fa1, $fs3, $ft4
	fmadd.s	$ft4, $fa3, $fs4, $ft4
	fmul.s	$ft5, $fs5, $fa4
	fmadd.s	$ft5, $fa5, $fs3, $ft5
	fmadd.s	$ft5, $fa7, $fs4, $ft5
	fmul.s	$ft6, $fs5, $ft0
	fmadd.s	$ft6, $ft1, $fs3, $ft6
	fmadd.s	$ft6, $ft2, $fs4, $ft6
	fmul.s	$fa0, $fs1, $fa0
	fmadd.s	$fa0, $fa1, $ft7, $fa0
	fmadd.s	$fa0, $fa3, $fs2, $fa0
	fmul.s	$fa1, $fs1, $fa4
	fmadd.s	$fa1, $fa5, $ft7, $fa1
	fmadd.s	$fa1, $fa7, $fs2, $fa1
	fmul.s	$fa3, $fs1, $ft0
	fmadd.s	$fa3, $ft1, $ft7, $fa3
	fmadd.s	$fa3, $ft2, $fs2, $fa3
	fst.s	$fa2, $sp, 536
	fst.s	$fa6, $sp, 540
	fst.s	$ft3, $sp, 544
	st.w	$zero, $sp, 548
	fst.s	$ft4, $sp, 552
	fst.s	$ft5, $sp, 556
	fst.s	$ft6, $sp, 560
	st.w	$zero, $sp, 564
	ld.d	$a0, $fp, 0
	fst.s	$fa0, $sp, 568
	fst.s	$fa1, $sp, 572
	fst.s	$fa3, $sp, 576
	ld.d	$a1, $a0, 88
	st.w	$zero, $sp, 596
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 580
	move	$a0, $fp
	jirl	$ra, $a1, 0
	addi.d	$a0, $sp, 176
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $s4
	move	$a4, $s3
	pcaddu18i	$ra, %call36(_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 392
	fld.s	$fa0, $s0, 8
	ld.d	$a0, $s2, 0
	st.d	$s1, $sp, 400
	st.d	$fp, $sp, 408
	fst.s	$fa0, $sp, 384
	ld.d	$a4, $a0, 16
	pcalau12i	$a0, %pc_hi20(_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback+16)
	st.d	$a0, $sp, 176
.Ltmp105:
	addi.d	$a1, $sp, 536
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 48
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp106:
# %bb.11:
.Ltmp107:
	addi.d	$a1, $sp, 176
	addi.d	$a2, $sp, 80
	addi.d	$a3, $sp, 136
	addi.d	$a4, $sp, 64
	addi.d	$a5, $sp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_)
	jirl	$ra, $ra, 0
.Ltmp108:
	b	.LBB12_24
.LBB12_12:
	ori	$a0, $zero, 31
	bne	$a4, $a0, .LBB12_25
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB12_17
# %bb.14:                               # %.lr.ph
	move	$s6, $zero
	ori	$s7, $zero, 64
	.p2align	4, , 16
.LBB12_15:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	add.d	$a1, $a0, $s7
	fld.s	$fa5, $a1, -64
	fld.s	$fa6, $a1, -60
	fld.s	$fa7, $a1, -56
	fld.s	$ft0, $a1, -48
	fld.s	$ft1, $a1, -44
	fld.s	$ft2, $a1, -40
	fld.s	$ft3, $a1, -32
	fld.s	$ft4, $a1, -28
	fld.s	$ft5, $a1, -24
	fld.s	$fa0, $a1, -16
	fld.s	$fa2, $a1, -12
	fld.s	$fa1, $a1, -8
	fld.s	$ft6, $s3, 4
	fld.s	$ft7, $s3, 0
	fld.s	$ft8, $s3, 8
	ldx.d	$a4, $a0, $s7
	fmul.s	$fa3, $ft0, $ft6
	fmadd.s	$fa3, $fa5, $ft7, $fa3
	fmadd.s	$fa3, $ft3, $ft8, $fa3
	fmul.s	$fa4, $ft1, $ft6
	fmadd.s	$fa4, $fa6, $ft7, $fa4
	fmadd.s	$fa4, $ft4, $ft8, $fa4
	fmul.s	$ft9, $ft2, $ft6
	fmadd.s	$ft9, $fa7, $ft7, $ft9
	fld.s	$ft10, $s3, 20
	fld.s	$ft11, $s3, 16
	fld.s	$ft12, $s3, 24
	fmadd.s	$ft9, $ft5, $ft8, $ft9
	fmul.s	$ft13, $ft0, $ft10
	fmadd.s	$ft13, $fa5, $ft11, $ft13
	fmadd.s	$ft13, $ft3, $ft12, $ft13
	fmul.s	$ft14, $ft1, $ft10
	fld.s	$ft15, $s3, 36
	fld.s	$fs1, $s3, 32
	fmadd.s	$ft14, $fa6, $ft11, $ft14
	fmadd.s	$ft14, $ft4, $ft12, $ft14
	fmul.s	$ft0, $ft0, $ft15
	fmadd.s	$fa5, $fa5, $fs1, $ft0
	fld.s	$ft0, $s3, 40
	fmul.s	$fs2, $ft2, $ft10
	fmadd.s	$fs2, $fa7, $ft11, $fs2
	fmadd.s	$fs2, $ft5, $ft12, $fs2
	fmadd.s	$fa5, $ft3, $ft0, $fa5
	fmul.s	$ft1, $ft1, $ft15
	fmadd.s	$fa6, $fa6, $fs1, $ft1
	fmadd.s	$fa6, $ft4, $ft0, $fa6
	fmul.s	$ft1, $ft2, $ft15
	fmadd.s	$fa7, $fa7, $fs1, $ft1
	fmadd.s	$fa7, $ft5, $ft0, $fa7
	fld.s	$ft1, $s3, 48
	fmul.s	$ft2, $fa2, $ft6
	fmadd.s	$ft2, $ft7, $fa0, $ft2
	fmadd.s	$ft2, $ft8, $fa1, $ft2
	fadd.s	$ft1, $ft2, $ft1
	fld.s	$ft2, $s3, 52
	fmul.s	$ft3, $fa2, $ft10
	fmadd.s	$ft3, $ft11, $fa0, $ft3
	fmadd.s	$ft3, $ft12, $fa1, $ft3
	fadd.s	$ft2, $ft3, $ft2
	fld.s	$ft3, $s3, 56
	fmul.s	$fa2, $fa2, $ft15
	fmadd.s	$fa0, $fs1, $fa0, $fa2
	fmadd.s	$fa0, $ft0, $fa1, $fa0
	fadd.s	$fa0, $fa0, $ft3
	movfr2gr.s	$a0, $ft1
	movfr2gr.s	$a1, $ft2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa3, $sp, 176
	fst.s	$fa4, $sp, 180
	fst.s	$ft9, $sp, 184
	st.w	$zero, $sp, 188
	fst.s	$ft13, $sp, 192
	fst.s	$ft14, $sp, 196
	fst.s	$fs2, $sp, 200
	st.w	$zero, $sp, 204
	fst.s	$fa5, $sp, 208
	fst.s	$fa6, $sp, 212
	fst.s	$fa7, $sp, 216
	st.d	$a0, $sp, 224
	ld.d	$s8, $s1, 200
	st.w	$zero, $sp, 220
	st.d	$a1, $sp, 232
	st.d	$a4, $s1, 200
.Ltmp92:
	addi.d	$a5, $sp, 176
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s1
	move	$a6, $s0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf)
	jirl	$ra, $ra, 0
.Ltmp93:
# %bb.16:                               #   in Loop: Header=BB12_15 Depth=1
	st.d	$s8, $s1, 200
	ld.w	$a0, $fp, 28
	addi.d	$s6, $s6, 1
	addi.d	$s7, $s7, 88
	blt	$s6, $a0, .LBB12_15
.LBB12_17:                              # %._crit_edge
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
	b	.LBB12_25
.LBB12_18:
	fst.s	$fa7, $sp, 32                   # 4-byte Folded Spill
	fst.s	$fa6, $sp, 36                   # 4-byte Folded Spill
	fst.s	$fa5, $sp, 40                   # 4-byte Folded Spill
	fld.s	$fa0, $s5, 48
	fst.s	$fa0, $sp, 16                   # 4-byte Folded Spill
	fld.s	$fa0, $s5, 52
	fst.s	$fa0, $sp, 8                    # 4-byte Folded Spill
	fld.s	$fa0, $s5, 56
	fst.s	$fa0, $sp, 12                   # 4-byte Folded Spill
	fld.s	$fa0, $s4, 48
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fld.s	$fa0, $s4, 16
	fld.s	$fa1, $s4, 52
	fst.s	$fa1, $sp, 20                   # 4-byte Folded Spill
	fld.s	$fa1, $s4, 56
	fst.s	$fa1, $sp, 24                   # 4-byte Folded Spill
	fld.s	$fa1, $s4, 0
	fmul.s	$fa2, $fs0, $fa0
	fld.s	$fa3, $s4, 32
	fld.s	$fa4, $s4, 20
	fld.s	$fa5, $s4, 4
	fmadd.s	$fa2, $fa1, $fs6, $fa2
	fmadd.s	$fa2, $fa3, $fs7, $fa2
	fmul.s	$fa6, $fs0, $fa4
	fmadd.s	$fa6, $fa5, $fs6, $fa6
	fld.s	$fa7, $s4, 36
	fld.s	$ft0, $s4, 24
	fld.s	$ft1, $s4, 8
	fld.s	$ft2, $s4, 40
	fmadd.s	$fa6, $fa7, $fs7, $fa6
	fmul.s	$ft3, $fs0, $ft0
	fmadd.s	$ft3, $ft1, $fs6, $ft3
	fmadd.s	$ft3, $ft2, $fs7, $ft3
	fmul.s	$ft4, $fs5, $fa0
	fmadd.s	$ft4, $fa1, $fs3, $ft4
	fmadd.s	$ft4, $fa3, $fs4, $ft4
	fmul.s	$ft5, $fs5, $fa4
	fmadd.s	$ft5, $fa5, $fs3, $ft5
	fmadd.s	$ft5, $fa7, $fs4, $ft5
	fmul.s	$ft6, $fs5, $ft0
	fmadd.s	$ft6, $ft1, $fs3, $ft6
	fmadd.s	$ft6, $ft2, $fs4, $ft6
	fmul.s	$fa0, $fs1, $fa0
	fmadd.s	$fa0, $fa1, $ft7, $fa0
	fmadd.s	$fa0, $fa3, $fs2, $fa0
	fmul.s	$fa1, $fs1, $fa4
	fmadd.s	$fa1, $fa5, $ft7, $fa1
	fmadd.s	$fa1, $fa7, $fs2, $fa1
	fmul.s	$fa3, $fs1, $ft0
	fst.s	$ft7, $sp, 44                   # 4-byte Folded Spill
	fmadd.s	$fa3, $ft1, $ft7, $fa3
	fmadd.s	$fa3, $ft2, $fs2, $fa3
	fst.s	$fa2, $sp, 536
	fst.s	$fa6, $sp, 540
	fst.s	$ft3, $sp, 544
	st.w	$zero, $sp, 548
	fst.s	$ft4, $sp, 552
	fst.s	$ft5, $sp, 556
	fst.s	$ft6, $sp, 560
	st.w	$zero, $sp, 564
	ld.d	$a0, $fp, 0
	fst.s	$fa0, $sp, 568
	fst.s	$fa1, $sp, 572
	fst.s	$fa3, $sp, 576
	ld.d	$a1, $a0, 88
	st.w	$zero, $sp, 596
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 580
	move	$a0, $fp
	jirl	$ra, $a1, 0
	addi.d	$a0, $sp, 176
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $s4
	move	$a4, $s3
	pcaddu18i	$ra, %call36(_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 392
	fld.s	$fa0, $s0, 8
	ld.d	$a0, $s2, 0
	st.d	$s1, $sp, 400
	st.d	$fp, $sp, 408
	fst.s	$fa0, $sp, 384
	ld.d	$a4, $a0, 16
	pcalau12i	$a0, %pc_hi20(_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0+16)
	st.d	$a0, $sp, 176
.Ltmp97:
	addi.d	$a1, $sp, 536
	addi.d	$a2, $sp, 80
	addi.d	$a3, $sp, 136
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp98:
# %bb.19:
	fld.s	$fa6, $sp, 8                    # 4-byte Folded Reload
	fmul.s	$fa0, $fs0, $fa6
	fld.s	$fa3, $sp, 16                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fs6, $fa3, $fa0
	fld.s	$fa7, $sp, 12                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fs7, $fa7, $fa0
	fld.s	$fa4, $sp, 32                   # 4-byte Folded Reload
	fadd.s	$fa0, $fa4, $fa0
	fmul.s	$fa1, $fs5, $fa6
	fmadd.s	$fa1, $fs3, $fa3, $fa1
	fmadd.s	$fa1, $fs4, $fa7, $fa1
	fld.s	$fa5, $sp, 36                   # 4-byte Folded Reload
	fadd.s	$fa2, $fa5, $fa1
	fmul.s	$fa1, $fs1, $fa6
	fld.s	$fa6, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fa6, $fa3, $fa1
	fmadd.s	$fa1, $fs2, $fa7, $fa1
	fld.s	$fa7, $sp, 40                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa7, $fa1
	movfr2gr.s	$a0, $fa1
	bstrpick.d	$a0, $a0, 31, 0
	fld.s	$ft2, $sp, 20                   # 4-byte Folded Reload
	fmul.s	$fa3, $fs0, $ft2
	fld.s	$ft0, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fs6, $ft0, $fa3
	fld.s	$ft1, $sp, 24                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fs7, $ft1, $fa3
	fadd.s	$fa3, $fa4, $fa3
	fmul.s	$fa4, $fs5, $ft2
	fmadd.s	$fa4, $fs3, $ft0, $fa4
	fmadd.s	$fa4, $fs4, $ft1, $fa4
	fadd.s	$fa4, $fa5, $fa4
	fmul.s	$fa5, $fs1, $ft2
	fmadd.s	$fa5, $fa6, $ft0, $fa5
	fmadd.s	$fa6, $fs2, $ft1, $fa5
	movfr2gr.s	$a1, $fa2
	movfr2gr.s	$a2, $fa0
	bstrins.d	$a2, $a1, 63, 32
	st.d	$a2, $sp, 64
	fcmp.cule.s	$fcc0, $fa0, $fa3
	st.d	$a0, $sp, 72
	fmov.s	$fa5, $fa0
	bcnez	$fcc0, .LBB12_21
# %bb.20:
	fst.s	$fa3, $sp, 64
	fmov.s	$fa5, $fa3
.LBB12_21:                              # %_Z8btSetMinIfEvRT_RKS0_.exit.i
	fcmp.cule.s	$fcc0, $fa2, $fa4
	fadd.s	$fa7, $fa7, $fa6
	fmov.s	$fa6, $fa2
	bcnez	$fcc0, .LBB12_23
# %bb.22:
	fst.s	$fa4, $sp, 68
	fmov.s	$fa6, $fa4
.LBB12_23:                              # %_Z8btSetMinIfEvRT_RKS0_.exit5.i
	fcmp.clt.s	$fcc0, $fa7, $fa1
	fsel	$ft0, $fa1, $fa7, $fcc0
	st.d	$a0, $sp, 56
	fcmp.clt.s	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa0, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $fa4
	fsel	$fa2, $fa2, $fa4, $fcc0
	fld.s	$fa3, $sp, 80
	fcmp.clt.s	$fcc0, $fa1, $fa7
	fsel	$fa1, $fa1, $fa7, $fcc0
	fld.s	$fa4, $sp, 84
	fadd.s	$fa3, $fa3, $fa5
	fst.s	$fa3, $sp, 64
	fld.s	$fa3, $sp, 88
	fadd.s	$fa4, $fa4, $fa6
	fld.s	$fa5, $sp, 136
	fst.s	$fa4, $sp, 68
	fadd.s	$fa3, $fa3, $ft0
	fst.s	$fa3, $sp, 72
	fadd.s	$fa0, $fa5, $fa0
	fld.s	$fa3, $sp, 140
	ld.d	$a0, $fp, 0
	fst.s	$fa0, $sp, 48
	fld.s	$fa0, $sp, 144
	fadd.s	$fa2, $fa3, $fa2
	ld.d	$a4, $a0, 96
	fst.s	$fa2, $sp, 52
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 56
.Ltmp100:
	addi.d	$a1, $sp, 176
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 48
	move	$a0, $fp
	jirl	$ra, $a4, 0
.Ltmp101:
.LBB12_24:
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.LBB12_25:
	fld.d	$fs7, $sp, 728                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 736                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 744                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 752                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 760                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 768                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 776                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 784                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 792                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 800                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 808                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 816                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 824                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 832                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 856                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 864                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 872                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 880
	ret
.LBB12_26:
.Ltmp119:
	b	.LBB12_32
.LBB12_27:
.Ltmp102:
	b	.LBB12_29
.LBB12_28:
.Ltmp99:
.LBB12_29:
	move	$fp, $a0
.Ltmp103:
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp104:
	b	.LBB12_35
.LBB12_30:
.Ltmp109:
	move	$fp, $a0
.Ltmp110:
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp111:
	b	.LBB12_35
.LBB12_31:
.Ltmp116:
.LBB12_32:
	move	$fp, $a0
.Ltmp120:
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp121:
	b	.LBB12_35
.LBB12_33:
.Ltmp125:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_34:
.Ltmp94:
	move	$fp, $a0
.Ltmp95:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp96:
.LBB12_35:                              # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_36:
.Ltmp122:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf, .Lfunc_end12-_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp112-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp125-.Lfunc_begin6         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin6         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin6         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin6         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp105-.Ltmp124              #   Call between .Ltmp124 and .Ltmp105
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp108-.Ltmp105              #   Call between .Ltmp105 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin6         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp92-.Ltmp108               #   Call between .Ltmp108 and .Ltmp92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin6          # >> Call Site 8 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin6          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin6          # >> Call Site 9 <<
	.uleb128 .Ltmp97-.Ltmp93                #   Call between .Ltmp93 and .Ltmp97
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin6          # >> Call Site 10 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin6          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin6         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp103-.Ltmp101              #   Call between .Ltmp101 and .Ltmp103
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp121-.Ltmp103              #   Call between .Ltmp103 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin6         #     jumps to .Ltmp122
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp121-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp95-.Ltmp121               #   Call between .Ltmp121 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin6          # >> Call Site 15 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp122-.Lfunc_begin6         #     jumps to .Ltmp122
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp96-.Lfunc_begin6          # >> Call Site 16 <<
	.uleb128 .Lfunc_end12-.Ltmp96           #   Call between .Ltmp96 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE
.LCPI13_0:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.text
	.globl	_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE
	.p2align	5
	.type	_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE,@function
_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE: # @_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -272
	.cfi_def_cfa_offset 272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcalau12i	$a4, %pc_hi20(_ZTV19btSingleRayCallback+16)
	vld	$vr1, $a1, 0
	vld	$vr0, $a2, 0
	addi.d	$a4, $a4, %pc_lo12(_ZTV19btSingleRayCallback+16)
	st.d	$a4, $sp, 32
	vst	$vr1, $sp, 72
	vst	$vr0, $sp, 88
	st.d	$a0, $sp, 248
	st.d	$a3, $sp, 256
	lu12i.w	$a3, 260096
	st.w	$a3, $sp, 104
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 108
	st.w	$a3, $sp, 124
	vst	$vr0, $sp, 128
	st.d	$a3, $sp, 144
	vst	$vr1, $sp, 152
	st.w	$a3, $sp, 168
	vst	$vr0, $sp, 172
	st.w	$a3, $sp, 188
	vst	$vr0, $sp, 192
	st.d	$a3, $sp, 208
	vld	$vr1, $a2, 0
	fld.s	$fa2, $a2, 0
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a2, 4
	fld.s	$fa5, $a1, 4
	fld.s	$fa6, $a2, 8
	fld.s	$fa7, $a1, 8
	vst	$vr1, $sp, 216
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	fsub.s	$fa3, $fa6, $fa7
	fmul.s	$fa4, $fa2, $fa2
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa2, $fa4
	fmul.s	$fa3, $fa3, $fa4
	pcalau12i	$a3, %pc_hi20(.LCPI13_0)
	fld.s	$fa4, $a3, %pc_lo12(.LCPI13_0)
	frecip.s	$fa5, $fa1
	movgr2fr.w	$fa6, $zero
	fcmp.ceq.s	$fcc0, $fa1, $fa6
	fsel	$fa5, $fa5, $fa4, $fcc0
	fst.s	$fa5, $sp, 40
	frecip.s	$fa7, $fa2
	fcmp.ceq.s	$fcc0, $fa2, $fa6
	fsel	$fa7, $fa7, $fa4, $fcc0
	fst.s	$fa7, $sp, 44
	frecip.s	$ft0, $fa3
	fcmp.ceq.s	$fcc0, $fa3, $fa6
	fsel	$fa4, $ft0, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $fa6
	fst.s	$fa4, $sp, 48
	movcf2gr	$a3, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa6
	st.w	$a3, $sp, 56
	movcf2gr	$a3, $fcc0
	fld.s	$fa5, $sp, 88
	fld.s	$fa7, $sp, 72
	fcmp.clt.s	$fcc0, $fa4, $fa6
	st.w	$a3, $sp, 60
	movcf2gr	$a3, $fcc0
	st.w	$a3, $sp, 64
	fsub.s	$fa4, $fa5, $fa7
	fld.s	$fa5, $sp, 92
	fld.s	$fa6, $sp, 76
	fld.s	$fa7, $sp, 96
	ld.d	$a0, $a0, 112
	fld.s	$ft0, $sp, 80
	vst	$vr0, $sp, 16
	vst	$vr0, $sp, 0
	ld.d	$a3, $a0, 0
	fsub.s	$fa0, $fa5, $fa6
	fsub.s	$fa5, $fa7, $ft0
	fmul.s	$fa0, $fa2, $fa0
	ld.d	$a6, $a3, 48
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	fmadd.s	$fa0, $fa3, $fa5, $fa0
	fst.s	$fa0, $sp, 68
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 16
	addi.d	$a5, $sp, 0
	jirl	$ra, $a6, 0
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end13:
	.size	_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE, .Lfunc_end13-_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf
.LCPI14_0:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.text
	.globl	_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf
	.p2align	5
	.type	_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf,@function
_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf: # @_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -480
	.cfi_def_cfa_offset 480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 424                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	fmov.s	$fs0, $fa0
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	vld	$vr0, $s3, 0
	vld	$vr1, $s3, 16
	vld	$vr2, $s3, 32
	vld	$vr3, $s3, 48
	vst	$vr0, $sp, 344
	vst	$vr1, $sp, 360
	vst	$vr2, $sp, 376
	vst	$vr3, $sp, 392
	vld	$vr0, $s2, 0
	vld	$vr1, $s2, 16
	vld	$vr2, $s2, 32
	vld	$vr3, $s2, 48
	vst	$vr0, $sp, 280
	vst	$vr1, $sp, 296
	vst	$vr2, $sp, 312
	vst	$vr3, $sp, 328
.Ltmp126:
	addi.d	$a0, $sp, 344
	addi.d	$a1, $sp, 280
	addi.d	$a2, $sp, 0
	addi.d	$a3, $sp, 408
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf)
	jirl	$ra, $ra, 0
.Ltmp127:
# %bb.1:
	fld.s	$fa0, $sp, 0
	fld.s	$fa1, $sp, 408
	fld.s	$fa2, $sp, 4
	fld.s	$fa3, $sp, 8
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa1, $fa1, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 232
	st.d	$a1, $sp, 240
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 216
	vst	$vr0, $sp, 48
.Ltmp129:
	addi.d	$a0, $sp, 344
	addi.d	$a1, $sp, 408
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
.Ltmp130:
# %bb.2:
	ld.d	$a0, $sp, 408
	ld.d	$a1, $sp, 416
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	srli.d	$a0, $a1, 32
	movgr2fr.w	$fa3, $a0
	fmul.s	$fa4, $fa1, $fa1
	fmadd.s	$fa4, $fa0, $fa0, $fa4
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	vldi	$vr5, -1280
	fdiv.s	$fa4, $fa5, $fa4
	fmul.s	$fa5, $fa4, $fa0
	fmul.s	$fa6, $fa4, $fa1
	fmul.s	$fa4, $fa4, $fa2
	fmul.s	$fa7, $fa5, $fa3
	fmul.s	$ft0, $fa6, $fa3
	fmul.s	$fa3, $fa4, $fa3
	fmul.s	$fa5, $fa5, $fa0
	fmul.s	$ft1, $fa6, $fa0
	fmul.s	$fa0, $fa4, $fa0
	fmul.s	$fa6, $fa6, $fa1
	fmul.s	$fa1, $fa4, $fa1
	fmul.s	$fa2, $fa4, $fa2
	fadd.s	$fa4, $fa6, $fa2
	vldi	$vr10, -1168
	fsub.s	$fa4, $ft2, $fa4
	fsub.s	$ft3, $ft1, $fa3
	fadd.s	$ft4, $fa0, $ft0
	fadd.s	$fa3, $ft1, $fa3
	fadd.s	$fa2, $fa5, $fa2
	fsub.s	$fa2, $ft2, $fa2
	fsub.s	$ft1, $fa1, $fa7
	fsub.s	$fa0, $fa0, $ft0
	fadd.s	$fa1, $fa1, $fa7
	fadd.s	$fa5, $fa5, $fa6
	fsub.s	$fa5, $ft2, $fa5
	fst.s	$fa4, $sp, 0
	fst.s	$ft3, $sp, 4
	fst.s	$ft4, $sp, 8
	st.w	$zero, $sp, 12
	fst.s	$fa3, $sp, 16
	fst.s	$fa2, $sp, 20
	fst.s	$ft1, $sp, 24
	st.w	$zero, $sp, 28
	fst.s	$fa0, $sp, 32
	fst.s	$fa1, $sp, 36
	fst.s	$fa5, $sp, 40
	st.w	$zero, $sp, 44
.Ltmp132:
	addi.d	$a1, $sp, 0
	addi.d	$a2, $sp, 216
	addi.d	$a3, $sp, 232
	vldi	$vr0, -1168
	addi.d	$a4, $sp, 264
	addi.d	$a5, $sp, 248
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK16btCollisionShape21calculateTemporalAabbERK11btTransformRK9btVector3S5_fRS3_S6_)
	jirl	$ra, $ra, 0
.Ltmp133:
# %bb.3:
	addi.d	$a0, $s3, 16
	addi.d	$a1, $s3, 32
	addi.d	$a2, $s3, 48
	addi.d	$a3, $s2, 16
	addi.d	$a4, $s2, 32
	addi.d	$a5, $s2, 48
	pcalau12i	$a6, %pc_hi20(_ZTV21btSingleSweepCallback+16)
	addi.d	$a6, $a6, %pc_lo12(_ZTV21btSingleSweepCallback+16)
	st.d	$a6, $sp, 0
	vld	$vr0, $s3, 0
	vld	$vr1, $a0, 0
	vld	$vr2, $a1, 0
	vld	$vr3, $a2, 0
	vst	$vr0, $sp, 40
	vst	$vr1, $sp, 56
	vst	$vr2, $sp, 72
	vst	$vr3, $sp, 88
	vld	$vr0, $s2, 0
	vld	$vr1, $a3, 0
	vld	$vr2, $a4, 0
	vld	$vr3, $a5, 0
	vst	$vr0, $sp, 104
	vst	$vr1, $sp, 120
	vst	$vr2, $sp, 136
	vst	$vr3, $sp, 152
	st.d	$fp, $sp, 184
	st.d	$s1, $sp, 192
	fst.s	$fs0, $sp, 200
	fld.s	$fa0, $sp, 152
	fld.s	$fa1, $sp, 88
	fld.s	$fa2, $sp, 156
	fld.s	$fa3, $sp, 92
	fld.s	$fa4, $sp, 160
	fld.s	$fa5, $sp, 96
	st.d	$s0, $sp, 208
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa4, $fa0, $fa3
	fmul.s	$fa5, $fa1, $fa3
	fmul.s	$fa3, $fa2, $fa3
	pcalau12i	$a0, %pc_hi20(.LCPI14_0)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI14_0)
	frecip.s	$fa7, $fa4
	movgr2fr.w	$ft0, $zero
	fcmp.ceq.s	$fcc0, $fa4, $ft0
	fsel	$fa7, $fa7, $fa6, $fcc0
	fst.s	$fa7, $sp, 8
	frecip.s	$ft1, $fa5
	fcmp.ceq.s	$fcc0, $fa5, $ft0
	fsel	$ft1, $ft1, $fa6, $fcc0
	fst.s	$ft1, $sp, 12
	frecip.s	$ft2, $fa3
	fcmp.ceq.s	$fcc0, $fa3, $ft0
	fsel	$fa6, $ft2, $fa6, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $ft0
	fst.s	$fa6, $sp, 16
	movcf2gr	$a0, $fcc0
	fcmp.clt.s	$fcc0, $ft1, $ft0
	st.w	$a0, $sp, 24
	movcf2gr	$a0, $fcc0
	fcmp.clt.s	$fcc0, $fa6, $ft0
	st.w	$a0, $sp, 28
	movcf2gr	$a0, $fcc0
	st.w	$a0, $sp, 32
	fmul.s	$fa1, $fa1, $fa5
	ld.d	$a0, $fp, 112
	fmadd.s	$fa0, $fa4, $fa0, $fa1
	fmadd.s	$fa0, $fa3, $fa2, $fa0
	fst.s	$fa0, $sp, 36
	ld.d	$a1, $a0, 0
	ld.d	$a6, $a1, 48
	addi.d	$a1, $sp, 392
	addi.d	$a2, $sp, 328
.Ltmp135:
	addi.d	$a3, $sp, 0
	addi.d	$a4, $sp, 264
	addi.d	$a5, $sp, 248
	jirl	$ra, $a6, 0
.Ltmp136:
# %bb.4:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 424                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.LBB14_5:
.Ltmp137:
	b	.LBB14_9
.LBB14_6:
.Ltmp134:
	b	.LBB14_9
.LBB14_7:
.Ltmp131:
	b	.LBB14_9
.LBB14_8:
.Ltmp128:
.LBB14_9:
	move	$fp, $a0
.Ltmp138:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp139:
# %bb.10:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_11:
.Ltmp140:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf, .Lfunc_end14-_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp126-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin7         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin7         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin7         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin7         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp138-.Ltmp136              #   Call between .Ltmp136 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin7         #     jumps to .Ltmp140
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp139-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Lfunc_end14-.Ltmp139          #   Call between .Ltmp139 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN23btBroadphaseRayCallbackD2Ev,"axG",@progbits,_ZN23btBroadphaseRayCallbackD2Ev,comdat
	.weak	_ZN23btBroadphaseRayCallbackD2Ev # -- Begin function _ZN23btBroadphaseRayCallbackD2Ev
	.p2align	5
	.type	_ZN23btBroadphaseRayCallbackD2Ev,@function
_ZN23btBroadphaseRayCallbackD2Ev:       # @_ZN23btBroadphaseRayCallbackD2Ev
# %bb.0:
	ret
.Lfunc_end15:
	.size	_ZN23btBroadphaseRayCallbackD2Ev, .Lfunc_end15-_ZN23btBroadphaseRayCallbackD2Ev
                                        # -- End function
	.section	.text._ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw,"axG",@progbits,_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw,comdat
	.weak	_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw # -- Begin function _ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw
	.p2align	5
	.type	_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw,@function
_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw: # @_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw
# %bb.0:
	st.d	$a1, $a0, 120
	ret
.Lfunc_end16:
	.size	_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw, .Lfunc_end16-_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw
                                        # -- End function
	.section	.text._ZN16btCollisionWorld14getDebugDrawerEv,"axG",@progbits,_ZN16btCollisionWorld14getDebugDrawerEv,comdat
	.weak	_ZN16btCollisionWorld14getDebugDrawerEv # -- Begin function _ZN16btCollisionWorld14getDebugDrawerEv
	.p2align	5
	.type	_ZN16btCollisionWorld14getDebugDrawerEv,@function
_ZN16btCollisionWorld14getDebugDrawerEv: # @_ZN16btCollisionWorld14getDebugDrawerEv
# %bb.0:
	ld.d	$a0, $a0, 120
	ret
.Lfunc_end17:
	.size	_ZN16btCollisionWorld14getDebugDrawerEv, .Lfunc_end17-_ZN16btCollisionWorld14getDebugDrawerEv
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResult9DebugDrawEf,"axG",@progbits,_ZN12btConvexCast10CastResult9DebugDrawEf,comdat
	.weak	_ZN12btConvexCast10CastResult9DebugDrawEf # -- Begin function _ZN12btConvexCast10CastResult9DebugDrawEf
	.p2align	5
	.type	_ZN12btConvexCast10CastResult9DebugDrawEf,@function
_ZN12btConvexCast10CastResult9DebugDrawEf: # @_ZN12btConvexCast10CastResult9DebugDrawEf
# %bb.0:
	ret
.Lfunc_end18:
	.size	_ZN12btConvexCast10CastResult9DebugDrawEf, .Lfunc_end18-_ZN12btConvexCast10CastResult9DebugDrawEf
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,"axG",@progbits,_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,comdat
	.weak	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform # -- Begin function _ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
	.p2align	5
	.type	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,@function
_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform: # @_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
# %bb.0:
	ret
.Lfunc_end19:
	.size	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform, .Lfunc_end19-_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResultD0Ev,"axG",@progbits,_ZN12btConvexCast10CastResultD0Ev,comdat
	.weak	_ZN12btConvexCast10CastResultD0Ev # -- Begin function _ZN12btConvexCast10CastResultD0Ev
	.p2align	5
	.type	_ZN12btConvexCast10CastResultD0Ev,@function
_ZN12btConvexCast10CastResultD0Ev:      # @_ZN12btConvexCast10CastResultD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end20:
	.size	_ZN12btConvexCast10CastResultD0Ev, .Lfunc_end20-_ZN12btConvexCast10CastResultD0Ev
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0Ev
	.type	_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0Ev,@function
_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0Ev: # @_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
.Ltmp141:
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp142:
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB21_2:
.Ltmp143:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0Ev, .Lfunc_end21-_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table21:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp141-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin8         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Lfunc_end21-.Ltmp142          #   Call between .Ltmp142 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitERK9btVector3fii
	.type	_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitERK9btVector3fii,@function
_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitERK9btVector3fii: # @_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitERK9btVector3fii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	fld.s	$fa1, $a0, 72
	fld.s	$fa2, $a0, 76
	fld.s	$fa3, $a1, 4
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a0, 80
	fld.s	$fa6, $a1, 8
	fmul.s	$fa2, $fa2, $fa3
	fmadd.s	$fa1, $fa1, $fa4, $fa2
	fld.s	$fa2, $a0, 92
	fmadd.s	$fa1, $fa5, $fa6, $fa1
	fld.s	$fa5, $a0, 88
	fld.s	$fa7, $a0, 96
	fmul.s	$fa2, $fa3, $fa2
	fld.s	$ft0, $a0, 108
	fmadd.s	$fa2, $fa5, $fa4, $fa2
	fmadd.s	$fa2, $fa7, $fa6, $fa2
	fld.s	$fa5, $a0, 104
	fmul.s	$fa3, $fa3, $ft0
	fld.s	$fa7, $a0, 112
	st.w	$a2, $sp, 48
	st.w	$a3, $sp, 52
	fmadd.s	$fa3, $fa5, $fa4, $fa3
	fmadd.s	$fa3, $fa7, $fa6, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	ld.d	$a3, $a0, 48
	movfr2gr.s	$a2, $fa3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 24
	ld.d	$a1, $a3, 0
	ld.d	$a0, $a0, 56
	st.d	$a2, $sp, 32
	fst.s	$fa0, $sp, 40
	ld.d	$a4, $a1, 24
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 48
	st.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 1
	move	$a0, $a3
	jirl	$ra, $a4, 0
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end22:
	.size	_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitERK9btVector3fii, .Lfunc_end22-_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitERK9btVector3fii
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0E_0v
	.type	_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0E_0v,@function
_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0E_0v: # @_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0E_0v
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
.Ltmp144:
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp145:
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB23_2:
.Ltmp146:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0E_0v, .Lfunc_end23-_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0E_0v
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table23:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp144-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin9         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end23-.Ltmp145          #   Call between .Ltmp145 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitE_0RK9btVector3fii
	.type	_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitE_0RK9btVector3fii,@function
_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitE_0RK9btVector3fii: # @_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitE_0RK9btVector3fii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	fld.s	$fa1, $a0, 72
	fld.s	$fa2, $a0, 76
	fld.s	$fa3, $a1, 4
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a0, 80
	fld.s	$fa6, $a1, 8
	fmul.s	$fa2, $fa2, $fa3
	fmadd.s	$fa1, $fa1, $fa4, $fa2
	fld.s	$fa2, $a0, 92
	fmadd.s	$fa1, $fa5, $fa6, $fa1
	fld.s	$fa5, $a0, 88
	fld.s	$fa7, $a0, 96
	fmul.s	$fa2, $fa3, $fa2
	fld.s	$ft0, $a0, 108
	fmadd.s	$fa2, $fa5, $fa4, $fa2
	fmadd.s	$fa2, $fa7, $fa6, $fa2
	fld.s	$fa5, $a0, 104
	fmul.s	$fa3, $fa3, $ft0
	fld.s	$fa7, $a0, 112
	st.w	$a2, $sp, 48
	st.w	$a3, $sp, 52
	fmadd.s	$fa3, $fa5, $fa4, $fa3
	fmadd.s	$fa3, $fa7, $fa6, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	ld.d	$a3, $a0, 48
	movfr2gr.s	$a2, $fa3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 24
	ld.d	$a1, $a3, 0
	ld.d	$a0, $a0, 56
	st.d	$a2, $sp, 32
	fst.s	$fa0, $sp, 40
	ld.d	$a4, $a1, 24
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 48
	st.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 1
	move	$a0, $a3
	jirl	$ra, $a4, 0
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end24:
	.size	_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitE_0RK9btVector3fii, .Lfunc_end24-_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitE_0RK9btVector3fii
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0Ev
	.type	_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0Ev,@function
_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0Ev: # @_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0Ev
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
.Ltmp147:
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp148:
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB25_2:
.Ltmp149:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0Ev, .Lfunc_end25-_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table25:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp147-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin10        #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Lfunc_end25-.Ltmp148          #   Call between .Ltmp148 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitERK9btVector3SG_fii
	.type	_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitERK9btVector3SG_fii,@function
_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitERK9btVector3SG_fii: # @_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitERK9btVector3SG_fii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a5, $a0
	ld.d	$a0, $a0, 216
	fld.s	$fa1, $a0, 8
	st.w	$a3, $sp, 64
	fcmp.cult.s	$fcc0, $fa1, $fa0
	st.w	$a4, $sp, 68
	bcnez	$fcc0, .LBB26_2
# %bb.1:
	vld	$vr1, $a1, 0
	vld	$vr2, $a2, 0
	vst	$vr1, $sp, 24
	vst	$vr2, $sp, 40
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a5, 224
	fst.s	$fa0, $sp, 56
	ld.d	$a3, $a1, 24
	st.d	$a2, $sp, 8
	addi.d	$a1, $sp, 64
	st.d	$a1, $sp, 16
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 1
	jirl	$ra, $a3, 0
.LBB26_2:
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end26:
	.size	_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitERK9btVector3SG_fii, .Lfunc_end26-_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitERK9btVector3SG_fii
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0E_0v
	.type	_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0E_0v,@function
_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0E_0v: # @_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0E_0v
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
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
.Ltmp150:
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp151:
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB27_2:
.Ltmp152:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0E_0v, .Lfunc_end27-_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0E_0v
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table27:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp150-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin11        #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Lfunc_end27-.Ltmp151          #   Call between .Ltmp151 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitE_0RK9btVector3SG_fii
	.type	_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitE_0RK9btVector3SG_fii,@function
_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitE_0RK9btVector3SG_fii: # @_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitE_0RK9btVector3SG_fii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a5, $a0
	ld.d	$a0, $a0, 216
	fld.s	$fa1, $a0, 8
	st.w	$a3, $sp, 64
	fcmp.cult.s	$fcc0, $fa1, $fa0
	st.w	$a4, $sp, 68
	bcnez	$fcc0, .LBB28_2
# %bb.1:
	vld	$vr1, $a1, 0
	vld	$vr2, $a2, 0
	vst	$vr1, $sp, 24
	vst	$vr2, $sp, 40
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a5, 224
	fst.s	$fa0, $sp, 56
	ld.d	$a3, $a1, 24
	st.d	$a2, $sp, 8
	addi.d	$a1, $sp, 64
	st.d	$a1, $sp, 16
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	jirl	$ra, $a3, 0
.LBB28_2:
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end28:
	.size	_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitE_0RK9btVector3SG_fii, .Lfunc_end28-_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitE_0RK9btVector3SG_fii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN19btSingleRayCallbackD0Ev,"axG",@progbits,_ZN19btSingleRayCallbackD0Ev,comdat
	.weak	_ZN19btSingleRayCallbackD0Ev    # -- Begin function _ZN19btSingleRayCallbackD0Ev
	.p2align	5
	.type	_ZN19btSingleRayCallbackD0Ev,@function
_ZN19btSingleRayCallbackD0Ev:           # @_ZN19btSingleRayCallbackD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end29:
	.size	_ZN19btSingleRayCallbackD0Ev, .Lfunc_end29-_ZN19btSingleRayCallbackD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN19btSingleRayCallback7processEPK17btBroadphaseProxy,"axG",@progbits,_ZN19btSingleRayCallback7processEPK17btBroadphaseProxy,comdat
	.weak	_ZN19btSingleRayCallback7processEPK17btBroadphaseProxy # -- Begin function _ZN19btSingleRayCallback7processEPK17btBroadphaseProxy
	.p2align	5
	.type	_ZN19btSingleRayCallback7processEPK17btBroadphaseProxy,@function
_ZN19btSingleRayCallback7processEPK17btBroadphaseProxy: # @_ZN19btSingleRayCallback7processEPK17btBroadphaseProxy
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 224
	fld.s	$fs0, $a0, 8
	movgr2fr.w	$fs1, $zero
	fcmp.ceq.s	$fcc0, $fs0, $fs1
	bcnez	$fcc0, .LBB30_3
# %bb.1:
	ld.d	$s0, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s0, 192
	ld.d	$a2, $a2, 16
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB30_3
# %bb.2:
	ld.d	$a3, $s0, 200
	ld.d	$a5, $fp, 224
	addi.d	$a0, $fp, 72
	addi.d	$a1, $fp, 136
	addi.d	$a4, $s0, 8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE)
	jirl	$ra, $ra, 0
.LBB30_3:
	fcmp.cune.s	$fcc0, $fs0, $fs1
	movcf2gr	$a0, $fcc0
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end30:
	.size	_ZN19btSingleRayCallback7processEPK17btBroadphaseProxy, .Lfunc_end30-_ZN19btSingleRayCallback7processEPK17btBroadphaseProxy
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
.LCPI31_0:
	.word	0x28800000                      # float 1.42108547E-14
	.section	.text._ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf,"axG",@progbits,_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf,comdat
	.weak	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
	.p2align	5
	.type	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf,@function
_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf: # @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	move	$s0, $a3
	move	$fp, $a2
	fld.s	$fa0, $a0, 36
	fld.s	$fa1, $a0, 24
	fld.s	$fa2, $a0, 20
	fld.s	$fa3, $a0, 40
	fneg.s	$fa4, $fa0
	fmul.s	$fa5, $fa1, $fa4
	fld.s	$fa6, $a0, 16
	fld.s	$fa7, $a0, 32
	fmadd.s	$fa5, $fa2, $fa3, $fa5
	fneg.s	$ft0, $fa3
	fmul.s	$ft1, $fa6, $ft0
	fmadd.s	$ft1, $fa1, $fa7, $ft1
	fneg.s	$ft2, $fa7
	fmul.s	$ft3, $fa2, $ft2
	fld.s	$ft4, $a0, 4
	fld.s	$ft5, $a0, 0
	fld.s	$ft6, $a0, 8
	fmadd.s	$ft3, $fa6, $fa0, $ft3
	fmul.s	$ft7, $ft4, $ft1
	fmadd.s	$ft7, $ft5, $fa5, $ft7
	fmadd.s	$ft7, $ft6, $ft3, $ft7
	frecip.s	$ft7, $ft7
	fmul.s	$fa5, $fa5, $ft7
	fmul.s	$ft0, $ft4, $ft0
	fmadd.s	$fa0, $ft6, $fa0, $ft0
	fmul.s	$fa0, $fa0, $ft7
	fneg.s	$ft0, $fa2
	fmul.s	$ft0, $ft6, $ft0
	fmadd.s	$ft0, $ft4, $fa1, $ft0
	fmul.s	$ft0, $ft0, $ft7
	fmul.s	$ft1, $ft1, $ft7
	fmul.s	$ft2, $ft6, $ft2
	fmadd.s	$fa3, $ft5, $fa3, $ft2
	fmul.s	$fa3, $fa3, $ft7
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $ft5, $fa1
	fmadd.s	$fa1, $ft6, $fa6, $fa1
	fmul.s	$fa1, $fa1, $ft7
	fmul.s	$ft2, $ft3, $ft7
	fmul.s	$fa4, $ft5, $fa4
	fmadd.s	$fa4, $ft4, $fa7, $fa4
	fmul.s	$fa4, $fa4, $ft7
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $ft4, $fa6
	fmadd.s	$fa2, $ft5, $fa2, $fa6
	fld.s	$fa6, $a1, 4
	fld.s	$fa7, $a1, 0
	fld.s	$ft3, $a1, 8
	fmul.s	$fa2, $fa2, $ft7
	fmul.s	$ft4, $fa6, $ft1
	fmadd.s	$ft4, $fa5, $fa7, $ft4
	fmadd.s	$ft4, $ft2, $ft3, $ft4
	fmul.s	$ft5, $fa6, $fa3
	fmadd.s	$ft5, $fa0, $fa7, $ft5
	fmadd.s	$ft5, $fa4, $ft3, $ft5
	fmul.s	$fa6, $fa6, $fa1
	fmadd.s	$fa6, $ft0, $fa7, $fa6
	fld.s	$fa7, $a1, 20
	fld.s	$ft6, $a1, 16
	fld.s	$ft7, $a1, 24
	fmadd.s	$fa6, $fa2, $ft3, $fa6
	fmul.s	$ft3, $ft1, $fa7
	fmadd.s	$ft3, $fa5, $ft6, $ft3
	fmadd.s	$ft3, $ft2, $ft7, $ft3
	fmul.s	$ft8, $fa3, $fa7
	fmadd.s	$ft8, $fa0, $ft6, $ft8
	fmadd.s	$ft8, $fa4, $ft7, $ft8
	fmul.s	$fa7, $fa1, $fa7
	fmadd.s	$fa7, $ft0, $ft6, $fa7
	fld.s	$ft6, $a1, 36
	fld.s	$ft9, $a1, 32
	fld.s	$ft10, $a1, 40
	fmadd.s	$fa7, $fa2, $ft7, $fa7
	fmul.s	$ft1, $ft1, $ft6
	fmadd.s	$fa5, $fa5, $ft9, $ft1
	fmadd.s	$fa5, $ft2, $ft10, $fa5
	fmul.s	$fa3, $fa3, $ft6
	fmadd.s	$fa0, $fa0, $ft9, $fa3
	fmadd.s	$fa0, $fa4, $ft10, $fa0
	fmul.s	$fa1, $fa1, $ft6
	fmadd.s	$fa1, $ft0, $ft9, $fa1
	fmadd.s	$fa1, $fa2, $ft10, $fa1
	fst.s	$ft4, $sp, 16
	fst.s	$ft5, $sp, 20
	fst.s	$fa6, $sp, 24
	st.w	$zero, $sp, 28
	fst.s	$ft3, $sp, 32
	fst.s	$ft8, $sp, 36
	fst.s	$fa7, $sp, 40
	st.w	$zero, $sp, 44
	fst.s	$fa5, $sp, 48
	fst.s	$fa0, $sp, 52
	fst.s	$fa1, $sp, 56
	st.w	$zero, $sp, 60
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 4
	fld.s	$fa1, $sp, 0
	fld.s	$fa2, $sp, 8
	fld.s	$fa3, $sp, 12
	fmul.s	$fa4, $fa0, $fa0
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fs0, $fa1, $fa4
	fmul.s	$fs1, $fa0, $fa4
	fmul.s	$fs2, $fa2, $fa4
	fmul.s	$fa0, $fa3, $fa4
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fa0, $fa0
	fst.s	$fa0, $s0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI31_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI31_0)
	fmul.s	$fa0, $fs1, $fs1
	fmadd.s	$fa0, $fs0, $fs0, $fa0
	fmadd.s	$fa0, $fs2, $fs2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	st.w	$zero, $fp, 12
	bceqz	$fcc0, .LBB31_2
# %bb.1:
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1168
	fmov.s	$fa2, $fa0
	b	.LBB31_3
.LBB31_2:
	frsqrt.s	$fa2, $fa0
	fmul.s	$fa1, $fs0, $fa2
	fmul.s	$fa0, $fs1, $fa2
	fmul.s	$fa2, $fs2, $fa2
.LBB31_3:
	fst.s	$fa1, $fp, 0
	fst.s	$fa0, $fp, 4
	fst.s	$fa2, $fp, 8
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end31:
	.size	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf, .Lfunc_end31-_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK11btMatrix3x311getRotationER12btQuaternion,"axG",@progbits,_ZNK11btMatrix3x311getRotationER12btQuaternion,comdat
	.weak	_ZNK11btMatrix3x311getRotationER12btQuaternion # -- Begin function _ZNK11btMatrix3x311getRotationER12btQuaternion
	.p2align	5
	.type	_ZNK11btMatrix3x311getRotationER12btQuaternion,@function
_ZNK11btMatrix3x311getRotationER12btQuaternion: # @_ZNK11btMatrix3x311getRotationER12btQuaternion
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	fld.s	$fa0, $a0, 0
	fld.s	$fa2, $a0, 20
	fld.s	$fa1, $a0, 40
	fadd.s	$fa3, $fa0, $fa2
	fadd.s	$fa3, $fa3, $fa1
	movgr2fr.w	$fa4, $zero
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB32_3
# %bb.1:
	vldi	$vr0, -1168
	fadd.s	$fa1, $fa3, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB32_6
.LBB32_2:                               # %.split
	fld.s	$fa1, $a0, 36
	fld.s	$fa2, $a0, 24
	fld.s	$fa3, $a0, 8
	fld.s	$fa4, $a0, 32
	fld.s	$fa5, $a0, 16
	fld.s	$fa6, $a0, 4
	fsub.s	$fa1, $fa1, $fa2
	vldi	$vr2, -1184
	fsub.s	$fa3, $fa3, $fa4
	fsub.s	$fa4, $fa5, $fa6
	fst.s	$fa2, $sp, 12
	fst.s	$fa4, $sp, 8
	fst.s	$fa3, $sp, 4
	fst.s	$fa1, $sp, 0
	vld	$vr1, $sp, 0
	fdiv.s	$fa2, $fa2, $fa0
	vpackev.w	$vr0, $vr0, $vr2
	vshuf4i.w	$vr0, $vr0, 64
	vfmul.s	$vr0, $vr0, $vr1
	b	.LBB32_5
.LBB32_3:
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fcmp.clt.s	$fcc1, $fa0, $fa2
	movcf2gr	$a2, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a2, $a2, 1
	movcf2gr	$a3, $fcc0
	slli.d	$a3, $a3, 1
	movcf2gr	$a4, $fcc1
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	addi.w	$a3, $a2, 1
	addi.d	$a4, $a3, -3
	sltui	$a4, $a4, 1
	masknez	$a3, $a3, $a4
	addi.d	$a4, $a2, 2
	bstrpick.d	$a5, $a4, 31, 0
	lu12i.w	$a6, -349526
	ori	$a6, $a6, 2731
	lu32i.d	$a6, 0
	mul.d	$a5, $a5, $a6
	srli.d	$a5, $a5, 33
	alsl.d	$a5, $a5, $a5, 1
	sub.d	$a4, $a4, $a5
	addi.w	$a2, $a2, 0
	alsl.d	$fp, $a2, $a0, 4
	slli.d	$s1, $a2, 2
	fldx.s	$fa0, $fp, $s1
	alsl.d	$s4, $a3, $a0, 4
	slli.d	$s0, $a3, 2
	fldx.s	$fa1, $s4, $s0
	bstrpick.d	$a2, $a4, 31, 0
	alsl.d	$s3, $a2, $a0, 4
	slli.d	$s2, $a2, 2
	fldx.s	$fa2, $s3, $s2
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa0, $fa0, $fa2
	vldi	$vr1, -1168
	fadd.s	$fa1, $fa0, $fa1
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB32_7
.LBB32_4:                               # %.split41
	vldi	$vr1, -1184
	fmul.s	$fa2, $fa0, $fa1
	fldx.s	$fa3, $s3, $s0
	fldx.s	$fa4, $s4, $s2
	addi.d	$a0, $sp, 16
	fstx.s	$fa2, $s1, $a0
	fdiv.s	$fa0, $fa1, $fa0
	fsub.s	$fa1, $fa3, $fa4
	fmul.s	$fa1, $fa0, $fa1
	fldx.s	$fa2, $s4, $s1
	fldx.s	$fa3, $fp, $s0
	fst.s	$fa1, $sp, 28
	fldx.s	$fa1, $s3, $s1
	fldx.s	$fa4, $fp, $s2
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $s0, $a0
	fadd.s	$fa1, $fa1, $fa4
	fmul.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $s2, $a0
	vld	$vr0, $sp, 16
.LBB32_5:
	vst	$vr0, $a1, 0
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
.LBB32_6:                               # %call.sqrt
	fmov.s	$fa0, $fa1
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
                                        # kill: def $f0 killed $f0 def $vr0
	b	.LBB32_2
.LBB32_7:                               # %call.sqrt42
	fmov.s	$fa0, $fa1
	move	$s5, $a1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	b	.LBB32_4
.Lfunc_end32:
	.size	_ZNK11btMatrix3x311getRotationER12btQuaternion, .Lfunc_end32-_ZNK11btMatrix3x311getRotationER12btQuaternion
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN21btSingleSweepCallbackD0Ev,"axG",@progbits,_ZN21btSingleSweepCallbackD0Ev,comdat
	.weak	_ZN21btSingleSweepCallbackD0Ev  # -- Begin function _ZN21btSingleSweepCallbackD0Ev
	.p2align	5
	.type	_ZN21btSingleSweepCallbackD0Ev,@function
_ZN21btSingleSweepCallbackD0Ev:         # @_ZN21btSingleSweepCallbackD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end33:
	.size	_ZN21btSingleSweepCallbackD0Ev, .Lfunc_end33-_ZN21btSingleSweepCallbackD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy,"axG",@progbits,_ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy,comdat
	.weak	_ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy # -- Begin function _ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy
	.p2align	5
	.type	_ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy,@function
_ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy: # @_ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 192
	fld.s	$fs0, $a0, 8
	movgr2fr.w	$fs1, $zero
	fcmp.ceq.s	$fcc0, $fs0, $fs1
	bcnez	$fcc0, .LBB34_3
# %bb.1:
	ld.d	$s0, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s0, 192
	ld.d	$a2, $a2, 16
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB34_3
# %bb.2:
	ld.d	$a0, $fp, 208
	ld.d	$a4, $s0, 200
	ld.d	$a6, $fp, 192
	fld.s	$fa0, $fp, 200
	addi.d	$a1, $fp, 40
	addi.d	$a2, $fp, 104
	addi.d	$a5, $s0, 8
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf)
	jirl	$ra, $ra, 0
.LBB34_3:
	fcmp.cune.s	$fcc0, $fs0, $fs1
	movcf2gr	$a0, $fcc0
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end34:
	.size	_ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy, .Lfunc_end34-_ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy
	.cfi_endproc
                                        # -- End function
	.type	_ZTV16btCollisionWorld,@object  # @_ZTV16btCollisionWorld
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV16btCollisionWorld
	.p2align	3, 0x0
_ZTV16btCollisionWorld:
	.dword	0
	.dword	_ZTI16btCollisionWorld
	.dword	_ZN16btCollisionWorldD2Ev
	.dword	_ZN16btCollisionWorldD0Ev
	.dword	_ZN16btCollisionWorld11updateAabbsEv
	.dword	_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw
	.dword	_ZN16btCollisionWorld14getDebugDrawerEv
	.dword	_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss
	.dword	_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject
	.dword	_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv
	.size	_ZTV16btCollisionWorld, 80

	.type	_ZZN16btCollisionWorld16updateSingleAabbEP17btCollisionObjectE8reportMe,@object # @_ZZN16btCollisionWorld16updateSingleAabbEP17btCollisionObjectE8reportMe
	.local	_ZZN16btCollisionWorld16updateSingleAabbEP17btCollisionObjectE8reportMe
	.comm	_ZZN16btCollisionWorld16updateSingleAabbEP17btCollisionObjectE8reportMe,1,1
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Overflow in AABB, object removed from simulation"
	.size	.L.str, 49

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"If you can reproduce this, please email bugs@continuousphysics.com\n"
	.size	.L.str.1, 68

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Please include above information, your Platform, version of OS.\n"
	.size	.L.str.2, 65

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Thanks.\n"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"updateAabbs"
	.size	.L.str.4, 12

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"performDiscreteCollisionDetection"
	.size	.L.str.5, 34

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"calculateOverlappingPairs"
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"dispatchAllCollisionPairs"
	.size	.L.str.7, 26

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"convexSweepCompound"
	.size	.L.str.8, 20

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"convexSweepTest"
	.size	.L.str.9, 16

	.type	_ZTI16btCollisionWorld,@object  # @_ZTI16btCollisionWorld
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI16btCollisionWorld
	.p2align	3, 0x0
_ZTI16btCollisionWorld:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS16btCollisionWorld
	.size	_ZTI16btCollisionWorld, 16

	.type	_ZTS16btCollisionWorld,@object  # @_ZTS16btCollisionWorld
	.section	.rodata,"a",@progbits
	.globl	_ZTS16btCollisionWorld
_ZTS16btCollisionWorld:
	.asciz	"16btCollisionWorld"
	.size	_ZTS16btCollisionWorld, 19

	.type	_ZTVN12btConvexCast10CastResultE,@object # @_ZTVN12btConvexCast10CastResultE
	.section	.data.rel.ro._ZTVN12btConvexCast10CastResultE,"awG",@progbits,_ZTVN12btConvexCast10CastResultE,comdat
	.weak	_ZTVN12btConvexCast10CastResultE
	.p2align	3, 0x0
_ZTVN12btConvexCast10CastResultE:
	.dword	0
	.dword	_ZTIN12btConvexCast10CastResultE
	.dword	_ZN12btConvexCast10CastResult9DebugDrawEf
	.dword	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
	.dword	_ZN12btConvexCast10CastResultD2Ev
	.dword	_ZN12btConvexCast10CastResultD0Ev
	.size	_ZTVN12btConvexCast10CastResultE, 48

	.type	_ZTIN12btConvexCast10CastResultE,@object # @_ZTIN12btConvexCast10CastResultE
	.section	.data.rel.ro._ZTIN12btConvexCast10CastResultE,"awG",@progbits,_ZTIN12btConvexCast10CastResultE,comdat
	.weak	_ZTIN12btConvexCast10CastResultE
	.p2align	3, 0x0
_ZTIN12btConvexCast10CastResultE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN12btConvexCast10CastResultE
	.size	_ZTIN12btConvexCast10CastResultE, 16

	.type	_ZTSN12btConvexCast10CastResultE,@object # @_ZTSN12btConvexCast10CastResultE
	.section	.rodata._ZTSN12btConvexCast10CastResultE,"aG",@progbits,_ZTSN12btConvexCast10CastResultE,comdat
	.weak	_ZTSN12btConvexCast10CastResultE
_ZTSN12btConvexCast10CastResultE:
	.asciz	"N12btConvexCast10CastResultE"
	.size	_ZTSN12btConvexCast10CastResultE, 29

	.type	_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback,@object # @_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback:
	.dword	0
	.dword	_ZTIZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback
	.dword	_ZN18btTriangleCallbackD2Ev
	.dword	_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0Ev
	.dword	_ZN25btTriangleRaycastCallback15processTriangleEP9btVector3ii
	.dword	_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitERK9btVector3fii
	.size	_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback, 48

	.type	_ZTIZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback,@object # @_ZTIZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback
	.p2align	3, 0x0
_ZTIZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback
	.dword	_ZTI25btTriangleRaycastCallback
	.size	_ZTIZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback, 24

	.type	_ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback,@object # @_ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback
	.section	.rodata,"a",@progbits
_ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback:
	.asciz	"ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback"
	.size	_ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback, 154

	.type	_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0,@object # @_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0:
	.dword	0
	.dword	_ZTIZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0
	.dword	_ZN18btTriangleCallbackD2Ev
	.dword	_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallbackD0E_0v
	.dword	_ZN25btTriangleRaycastCallback15processTriangleEP9btVector3ii
	.dword	_ZZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEEN29BridgeTriangleRaycastCallback9reportHitE_0RK9btVector3fii
	.size	_ZTVZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0, 48

	.type	_ZTIZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0,@object # @_ZTIZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0
	.p2align	3, 0x0
_ZTIZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0
	.dword	_ZTI25btTriangleRaycastCallback
	.size	_ZTIZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0, 24

	.type	_ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0,@object # @_ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0
	.section	.rodata,"a",@progbits
_ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0:
	.asciz	"ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0"
	.size	_ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0, 156

	.type	_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback,@object # @_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback:
	.dword	0
	.dword	_ZTIZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback
	.dword	_ZN18btTriangleCallbackD2Ev
	.dword	_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0Ev
	.dword	_ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii
	.dword	_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitERK9btVector3SG_fii
	.size	_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback, 48

	.type	_ZTIZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback,@object # @_ZTIZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback
	.p2align	3, 0x0
_ZTIZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback
	.dword	_ZTI28btTriangleConvexcastCallback
	.size	_ZTIZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback, 24

	.type	_ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback,@object # @_ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback
	.section	.rodata,"a",@progbits
_ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback:
	.asciz	"ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback"
	.size	_ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback, 182

	.type	_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0,@object # @_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0:
	.dword	0
	.dword	_ZTIZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0
	.dword	_ZN18btTriangleCallbackD2Ev
	.dword	_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallbackD0E_0v
	.dword	_ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii
	.dword	_ZZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfEN32BridgeTriangleConvexcastCallback9reportHitE_0RK9btVector3SG_fii
	.size	_ZTVZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0, 48

	.type	_ZTIZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0,@object # @_ZTIZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0
	.p2align	3, 0x0
_ZTIZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0
	.dword	_ZTI28btTriangleConvexcastCallback
	.size	_ZTIZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0, 24

	.type	_ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0,@object # @_ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0
	.section	.rodata,"a",@progbits
_ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0:
	.asciz	"ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0"
	.size	_ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0, 184

	.type	_ZTV19btSingleRayCallback,@object # @_ZTV19btSingleRayCallback
	.section	.data.rel.ro._ZTV19btSingleRayCallback,"awG",@progbits,_ZTV19btSingleRayCallback,comdat
	.weak	_ZTV19btSingleRayCallback
	.p2align	3, 0x0
_ZTV19btSingleRayCallback:
	.dword	0
	.dword	_ZTI19btSingleRayCallback
	.dword	_ZN23btBroadphaseRayCallbackD2Ev
	.dword	_ZN19btSingleRayCallbackD0Ev
	.dword	_ZN19btSingleRayCallback7processEPK17btBroadphaseProxy
	.size	_ZTV19btSingleRayCallback, 40

	.type	_ZTI19btSingleRayCallback,@object # @_ZTI19btSingleRayCallback
	.section	.data.rel.ro._ZTI19btSingleRayCallback,"awG",@progbits,_ZTI19btSingleRayCallback,comdat
	.weak	_ZTI19btSingleRayCallback
	.p2align	3, 0x0
_ZTI19btSingleRayCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19btSingleRayCallback
	.dword	_ZTI23btBroadphaseRayCallback
	.size	_ZTI19btSingleRayCallback, 24

	.type	_ZTS19btSingleRayCallback,@object # @_ZTS19btSingleRayCallback
	.section	.rodata._ZTS19btSingleRayCallback,"aG",@progbits,_ZTS19btSingleRayCallback,comdat
	.weak	_ZTS19btSingleRayCallback
_ZTS19btSingleRayCallback:
	.asciz	"19btSingleRayCallback"
	.size	_ZTS19btSingleRayCallback, 22

	.type	_ZTI23btBroadphaseRayCallback,@object # @_ZTI23btBroadphaseRayCallback
	.section	.data.rel.ro._ZTI23btBroadphaseRayCallback,"awG",@progbits,_ZTI23btBroadphaseRayCallback,comdat
	.weak	_ZTI23btBroadphaseRayCallback
	.p2align	3, 0x0
_ZTI23btBroadphaseRayCallback:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS23btBroadphaseRayCallback
	.size	_ZTI23btBroadphaseRayCallback, 16

	.type	_ZTS23btBroadphaseRayCallback,@object # @_ZTS23btBroadphaseRayCallback
	.section	.rodata._ZTS23btBroadphaseRayCallback,"aG",@progbits,_ZTS23btBroadphaseRayCallback,comdat
	.weak	_ZTS23btBroadphaseRayCallback
_ZTS23btBroadphaseRayCallback:
	.asciz	"23btBroadphaseRayCallback"
	.size	_ZTS23btBroadphaseRayCallback, 26

	.type	_ZTV21btSingleSweepCallback,@object # @_ZTV21btSingleSweepCallback
	.section	.data.rel.ro._ZTV21btSingleSweepCallback,"awG",@progbits,_ZTV21btSingleSweepCallback,comdat
	.weak	_ZTV21btSingleSweepCallback
	.p2align	3, 0x0
_ZTV21btSingleSweepCallback:
	.dword	0
	.dword	_ZTI21btSingleSweepCallback
	.dword	_ZN23btBroadphaseRayCallbackD2Ev
	.dword	_ZN21btSingleSweepCallbackD0Ev
	.dword	_ZN21btSingleSweepCallback7processEPK17btBroadphaseProxy
	.size	_ZTV21btSingleSweepCallback, 40

	.type	_ZTI21btSingleSweepCallback,@object # @_ZTI21btSingleSweepCallback
	.section	.data.rel.ro._ZTI21btSingleSweepCallback,"awG",@progbits,_ZTI21btSingleSweepCallback,comdat
	.weak	_ZTI21btSingleSweepCallback
	.p2align	3, 0x0
_ZTI21btSingleSweepCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS21btSingleSweepCallback
	.dword	_ZTI23btBroadphaseRayCallback
	.size	_ZTI21btSingleSweepCallback, 24

	.type	_ZTS21btSingleSweepCallback,@object # @_ZTS21btSingleSweepCallback
	.section	.rodata._ZTS21btSingleSweepCallback,"aG",@progbits,_ZTS21btSingleSweepCallback,comdat
	.weak	_ZTS21btSingleSweepCallback
_ZTS21btSingleSweepCallback:
	.asciz	"21btSingleSweepCallback"
	.size	_ZTS21btSingleSweepCallback, 24

	.globl	_ZN16btCollisionWorldC1EP12btDispatcherP21btBroadphaseInterfaceP24btCollisionConfiguration
	.type	_ZN16btCollisionWorldC1EP12btDispatcherP21btBroadphaseInterfaceP24btCollisionConfiguration,@function
.set _ZN16btCollisionWorldC1EP12btDispatcherP21btBroadphaseInterfaceP24btCollisionConfiguration, _ZN16btCollisionWorldC2EP12btDispatcherP21btBroadphaseInterfaceP24btCollisionConfiguration
	.globl	_ZN16btCollisionWorldD1Ev
	.type	_ZN16btCollisionWorldD1Ev,@function
.set _ZN16btCollisionWorldD1Ev, _ZN16btCollisionWorldD2Ev
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
	.addrsig_sym _ZTI16btCollisionWorld
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS16btCollisionWorld
	.addrsig_sym _ZTIN12btConvexCast10CastResultE
	.addrsig_sym _ZTSN12btConvexCast10CastResultE
	.addrsig_sym _ZTIZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback
	.addrsig_sym _ZTI25btTriangleRaycastCallback
	.addrsig_sym _ZTIZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0
	.addrsig_sym _ZTSZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackEE29BridgeTriangleRaycastCallback_0
	.addrsig_sym _ZTIZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback
	.addrsig_sym _ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback
	.addrsig_sym _ZTI28btTriangleConvexcastCallback
	.addrsig_sym _ZTIZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0
	.addrsig_sym _ZTSZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEfE32BridgeTriangleConvexcastCallback_0
	.addrsig_sym _ZTI19btSingleRayCallback
	.addrsig_sym _ZTS19btSingleRayCallback
	.addrsig_sym _ZTI23btBroadphaseRayCallback
	.addrsig_sym _ZTS23btBroadphaseRayCallback
	.addrsig_sym _ZTI21btSingleSweepCallback
	.addrsig_sym _ZTS21btSingleSweepCallback
