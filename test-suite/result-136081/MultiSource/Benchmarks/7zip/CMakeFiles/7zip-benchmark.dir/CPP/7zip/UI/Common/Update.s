	.file	"Update.cpp"
	.text
	.globl	_ZN18COutMultiVolStream5CloseEv # -- Begin function _ZN18COutMultiVolStream5CloseEv
	.p2align	5
	.type	_ZN18COutMultiVolStream5CloseEv,@function
_ZN18COutMultiVolStream5CloseEv:        # @_ZN18COutMultiVolStream5CloseEv
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
	ld.w	$a1, $a0, 52
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_5
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	move	$s0, $zero
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bge	$s2, $a1, .LBB0_6
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(_ZN14COutFileStream5CloseEv)
	jirl	$ra, $ra, 0
	sltui	$a2, $a0, 1
	ld.w	$a1, $fp, 52
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s0, $a2
	or	$s0, $a2, $a0
	b	.LBB0_2
.LBB0_5:
	move	$s0, $zero
.LBB0_6:                                # %._crit_edge
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	_ZN18COutMultiVolStream5CloseEv, .Lfunc_end0-_ZN18COutMultiVolStream5CloseEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN18COutMultiVolStream5WriteEPKvjPj # -- Begin function _ZN18COutMultiVolStream5WriteEPKvjPj
	.p2align	5
	.type	_ZN18COutMultiVolStream5WriteEPKvjPj,@function
_ZN18COutMultiVolStream5WriteEPKvjPj:   # @_ZN18COutMultiVolStream5WriteEPKvjPj
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a0
	beqz	$a3, .LBB1_2
# %bb.1:
	st.w	$zero, $a3, 0
.LBB1_2:
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZTV14COutFileStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV14COutFileStream)
	addi.d	$a1, $s1, 40
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$s0, $sp, 136
	ori	$s7, $zero, 3
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	ori	$fp, $zero, 48
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	addi.w	$s8, $zero, -1
.LBB1_3:                                # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_14 Depth 4
                                        #         Child Loop BB1_19 Depth 4
                                        #         Child Loop BB1_27 Depth 4
                                        #       Child Loop BB1_34 Depth 3
                                        #       Child Loop BB1_50 Depth 3
                                        #       Child Loop BB1_59 Depth 3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bnez	$a0, .LBB1_5
	b	.LBB1_86
	.p2align	4, , 16
.LBB1_4:                                # %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit
                                        #   in Loop: Header=BB1_5 Depth=2
	beqz	$s4, .LBB1_87
.LBB1_5:                                # %.outer.split
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_14 Depth 4
                                        #         Child Loop BB1_19 Depth 4
                                        #         Child Loop BB1_27 Depth 4
                                        #       Child Loop BB1_34 Depth 3
                                        #       Child Loop BB1_50 Depth 3
                                        #       Child Loop BB1_59 Depth 3
	ld.w	$s2, $s1, 12
	ld.w	$a0, $s1, 52
	blt	$s2, $a0, .LBB1_69
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	addi.d	$a0, $sp, 208
	st.d	$zero, $a0, 16
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 228
	addi.w	$a0, $s2, 1
.Ltmp0:
	addi.d	$a1, $sp, 136
	pcaddu18i	$ra, %call36(_Z21ConvertUInt32ToStringjPw)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=2
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 120
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.w	$s2, $a0, 0
	addi.w	$s3, $a0, 1
	slti	$a0, $s2, -1
	slli.d	$a1, $s3, 2
	maskeqz	$a2, $s8, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
.Ltmp3:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.8:                                # %.noexc
                                        #   in Loop: Header=BB1_5 Depth=2
	move	$a1, $zero
	st.d	$a0, $sp, 120
	st.w	$zero, $a0, 0
	st.w	$s3, $sp, 132
	.p2align	4, , 16
.LBB1_9:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a2, $a1, $s0
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_9
# %bb.10:                               # %_ZN11CStringBaseIwEC2EPKw.exit
                                        #   in Loop: Header=BB1_5 Depth=2
	st.w	$s6, $sp, 128
	ori	$a0, $zero, 2
	blt	$a0, $s2, .LBB1_29
	.p2align	4, , 16
.LBB1_11:                               # %.lr.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_14 Depth 4
                                        #         Child Loop BB1_19 Depth 4
                                        #         Child Loop BB1_27 Depth 4
.Ltmp6:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=3
	move	$s4, $a0
	st.d	$fp, $a0, 0
.Ltmp9:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.13:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
                                        #   in Loop: Header=BB1_11 Depth=3
	move	$s5, $a0
	st.w	$fp, $a0, 0
	ori	$a0, $zero, 4
	.p2align	4, , 16
.LBB1_14:                               # %thread-pre-split
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a1, $s4, $a0
	stx.w	$a1, $s5, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB1_14
# %bb.15:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
                                        #   in Loop: Header=BB1_11 Depth=3
	addi.w	$a0, $s6, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_18
# %bb.16:                               #   in Loop: Header=BB1_11 Depth=3
.Ltmp12:
	ori	$a0, $zero, 28
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.17:                               # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB1_11 Depth=3
	move	$s6, $a0
	ld.w	$a0, $s5, 0
	st.w	$a0, $s6, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.w	$zero, $s6, 4
	move	$s5, $s6
.LBB1_18:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
                                        #   in Loop: Header=BB1_11 Depth=3
	ld.d	$s6, $sp, 120
	move	$a0, $zero
	.p2align	4, , 16
.LBB1_19:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a1, $s6, $a0
	add.d	$a2, $s5, $a0
	st.w	$a1, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB1_19
# %bb.20:                               #   in Loop: Header=BB1_11 Depth=3
	ld.w	$s2, $sp, 128
	st.w	$zero, $sp, 128
	st.w	$zero, $s6, 0
	ld.w	$s1, $sp, 132
	addi.w	$s3, $s2, 2
	beq	$s3, $s1, .LBB1_26
# %bb.21:                               #   in Loop: Header=BB1_11 Depth=3
	slti	$a0, $s2, -2
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
.Ltmp15:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.22:                               # %.noexc98
                                        #   in Loop: Header=BB1_11 Depth=3
	move	$s7, $a0
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB1_24
# %bb.23:                               # %._crit_edge.thread.i.i
                                        #   in Loop: Header=BB1_11 Depth=3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 128
	b	.LBB1_25
.LBB1_24:                               #   in Loop: Header=BB1_11 Depth=3
	move	$a0, $zero
.LBB1_25:                               #   in Loop: Header=BB1_11 Depth=3
	st.d	$s7, $sp, 120
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s7, $a0
	st.w	$s3, $sp, 132
	move	$s6, $s7
	ori	$s7, $zero, 3
.LBB1_26:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i94.preheader
                                        #   in Loop: Header=BB1_11 Depth=3
	move	$a1, $zero
	addi.d	$a0, $s2, 1
	.p2align	4, , 16
.LBB1_27:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i94
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a2, $s5, $a1
	stx.w	$a2, $s6, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_27
# %bb.28:                               # %_ZN11CStringBaseIwED2Ev.exit99
                                        #   in Loop: Header=BB1_11 Depth=3
	st.w	$a0, $sp, 128
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s6, $sp, 128
	blt	$s6, $s7, .LBB1_11
.LBB1_29:                               # %._crit_edge
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s2, $a0, 112
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s3, $a0, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	and	$a0, $s3, $a0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 104
	beqz	$a0, .LBB1_31
# %bb.30:                               #   in Loop: Header=BB1_5 Depth=2
	move	$a0, $zero
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_31:                               #   in Loop: Header=BB1_5 Depth=2
	addi.w	$a0, $s3, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	maskeqz	$a2, $s8, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp18:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.32:                               # %.noexc108
                                        #   in Loop: Header=BB1_5 Depth=2
	st.d	$a0, $sp, 104
	st.w	$zero, $a0, 0
	st.w	$s3, $sp, 116
.LBB1_33:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i102
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 104
	.p2align	4, , 16
.LBB1_34:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB1_34
# %bb.35:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i106
                                        #   in Loop: Header=BB1_5 Depth=2
	st.w	$s2, $sp, 112
.Ltmp21:
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp22:
# %bb.36:                               # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit111
                                        #   in Loop: Header=BB1_5 Depth=2
.Ltmp24:
	ori	$a0, $zero, 1112
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp25:
# %bb.37:                               #   in Loop: Header=BB1_5 Depth=2
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	st.w	$zero, $s4, 8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 16
	st.d	$a1, $s4, 0
	addi.d	$a0, $a0, 16
	st.d	$a0, $s4, 16
	move	$a0, $s8
	lu32i.d	$a0, 0
	st.w	$a0, $s4, 24
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $s4, 32
.Ltmp26:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp27:
# %bb.38:                               #   in Loop: Header=BB1_5 Depth=2
	st.d	$a0, $s4, 32
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s4, 44
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	st.d	$a0, $s4, 16
	st.d	$s4, $sp, 200
.Ltmp29:
	move	$a0, $s4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp30:
# %bb.39:                               # %.noexc113
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 208
	beqz	$a0, .LBB1_41
# %bb.40:                               #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp31:
	jirl	$ra, $a1, 0
.Ltmp32:
.LBB1_41:                               #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 200
	ld.d	$a1, $sp, 104
	st.d	$s4, $sp, 208
	st.d	$zero, $a0, 1104
	addi.d	$a0, $a0, 16
.Ltmp33:
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO8COutFile6CreateEPKwb)
	jirl	$ra, $ra, 0
.Ltmp34:
# %bb.42:                               # %_ZN14COutFileStream6CreateEPKwb.exit
                                        #   in Loop: Header=BB1_5 Depth=2
	move	$s4, $a0
	beqz	$a0, .LBB1_46
# %bb.43:                               #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 120
.Ltmp35:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.44:                               # %.noexc120
                                        #   in Loop: Header=BB1_5 Depth=2
	move	$s5, $a0
	ld.w	$s2, $sp, 112
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s3, $a0, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	and	$a0, $s3, $a0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $s5, 0
	beqz	$a0, .LBB1_47
# %bb.45:                               #   in Loop: Header=BB1_5 Depth=2
	move	$a0, $zero
	b	.LBB1_49
	.p2align	4, , 16
.LBB1_46:                               #   in Loop: Header=BB1_5 Depth=2
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB1_61
	.p2align	4, , 16
.LBB1_47:                               #   in Loop: Header=BB1_5 Depth=2
	addi.w	$a0, $s3, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	maskeqz	$a2, $s8, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp37:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp38:
# %bb.48:                               # %.noexc.i
                                        #   in Loop: Header=BB1_5 Depth=2
	st.d	$a0, $s5, 0
	st.w	$zero, $a0, 0
	st.w	$s3, $s5, 12
.LBB1_49:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i116
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a1, $sp, 104
	.p2align	4, , 16
.LBB1_50:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB1_50
# %bb.51:                               #   in Loop: Header=BB1_5 Depth=2
	st.w	$s2, $s5, 8
.Ltmp40:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp41:
# %bb.52:                               #   in Loop: Header=BB1_5 Depth=2
	ld.w	$a0, $s6, 12
	ld.d	$a1, $s6, 16
	slli.d	$a2, $a0, 3
	stx.d	$s5, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 12
	ld.d	$s5, $sp, 216
	st.w	$zero, $sp, 224
	addi.d	$a0, $sp, 232
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	st.w	$zero, $s5, 0
	ld.w	$a0, $sp, 112
	ld.w	$s1, $sp, 228
	addi.w	$s2, $a0, 1
	beq	$s2, $s1, .LBB1_58
# %bb.53:                               #   in Loop: Header=BB1_5 Depth=2
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
.Ltmp42:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp43:
# %bb.54:                               # %.noexc130
                                        #   in Loop: Header=BB1_5 Depth=2
	move	$s6, $a0
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB1_56
# %bb.55:                               # %._crit_edge.thread.i.i128
                                        #   in Loop: Header=BB1_5 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 224
	b	.LBB1_57
.LBB1_56:                               #   in Loop: Header=BB1_5 Depth=2
	move	$a0, $zero
.LBB1_57:                               #   in Loop: Header=BB1_5 Depth=2
	st.d	$s6, $sp, 216
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s6, $a0
	st.w	$s2, $sp, 228
	move	$s5, $s6
.LBB1_58:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 104
	.p2align	4, , 16
.LBB1_59:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s5, 4
	st.w	$a1, $s5, 0
	move	$s5, $a2
	bnez	$a1, .LBB1_59
# %bb.60:                               #   in Loop: Header=BB1_5 Depth=2
	ld.w	$a0, $sp, 112
	st.w	$a0, $sp, 224
.Ltmp44:
	addi.d	$a1, $sp, 200
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_)
	jirl	$ra, $ra, 0
.Ltmp45:
.LBB1_61:                               #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB1_63
# %bb.62:                               #   in Loop: Header=BB1_5 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_63:                               # %_ZN11CStringBaseIwED2Ev.exit132
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 120
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_65
# %bb.64:                               #   in Loop: Header=BB1_5 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_65:                               # %_ZN11CStringBaseIwED2Ev.exit133
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 216
	beqz	$a0, .LBB1_67
# %bb.66:                               #   in Loop: Header=BB1_5 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_67:                               # %_ZN11CStringBaseIwED2Ev.exit.i134
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 208
	beqz	$a0, .LBB1_4
# %bb.68:                               #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp47:
	jirl	$ra, $a1, 0
.Ltmp48:
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_69:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s1, 84
	slt	$a1, $s2, $a0
	addi.w	$a0, $a0, -1
	maskeqz	$a2, $s2, $a1
	ld.d	$a3, $s1, 88
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s5, $a3, $a0
	ld.d	$s4, $s1, 16
	bgeu	$s4, $s5, .LBB1_75
# %bb.70:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s1, 56
	slli.d	$a1, $s2, 3
	ldx.d	$s6, $a0, $a1
	ld.d	$a0, $s6, 32
	beq	$s4, $a0, .LBB1_73
# %bb.71:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s6, 8
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 48
	move	$a1, $s4
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB1_88
# %bb.72:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s4, $s1, 16
	st.d	$s4, $s6, 32
.LBB1_73:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s6, 8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $a0, 0
	sub.d	$a3, $s5, $s4
	sltu	$a4, $a1, $a3
	masknez	$a3, $a3, $a4
	ld.d	$a5, $a2, 40
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a3
	addi.w	$a2, $a1, 0
	addi.d	$a3, $sp, 136
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	jirl	$ra, $a5, 0
	beqz	$a0, .LBB1_76
# %bb.74:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 2
	beq	$a1, $a0, .LBB1_3
	b	.LBB1_85
	.p2align	4, , 16
.LBB1_75:                               #   in Loop: Header=BB1_3 Depth=1
	sub.d	$a0, $s4, $s5
	st.d	$a0, $s1, 16
	addi.d	$a0, $s2, 1
	st.w	$a0, $s1, 12
	ori	$a1, $zero, 2
	ori	$a0, $zero, 2
	beq	$a1, $a0, .LBB1_3
	b	.LBB1_85
.LBB1_76:                               #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 136
	ld.d	$a1, $s6, 32
	add.d	$a1, $a1, $a0
	st.d	$a1, $s6, 32
	ld.d	$a2, $s1, 16
	ld.d	$a3, $s1, 24
	ld.d	$a4, $s1, 32
	add.d	$a2, $a2, $a0
	st.d	$a2, $s1, 16
	add.d	$a3, $a3, $a0
	st.d	$a3, $s1, 24
	bgeu	$a4, $a3, .LBB1_83
# %bb.77:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$a3, $s1, 32
	ld.d	$a3, $s6, 40
	bltu	$a3, $a2, .LBB1_84
.LBB1_78:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	beqz	$a3, .LBB1_80
.LBB1_79:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a2, $a3, 0
	add.d	$a2, $a2, $a0
	st.w	$a2, $a3, 0
.LBB1_80:                               #   in Loop: Header=BB1_3 Depth=1
	bne	$a1, $s5, .LBB1_82
# %bb.81:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a1, $s1, 12
	addi.d	$a1, $a1, 1
	st.w	$a1, $s1, 12
	st.d	$zero, $s1, 16
.LBB1_82:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.w	$a1, $a1, $a0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	sltui	$a0, $a0, 1
	xor	$a1, $s5, $s4
	sltu	$a1, $zero, $a1
	and	$a0, $a1, $a0
	masknez	$a1, $s7, $a0
	ori	$a2, $zero, 1
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a0
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 2
	beq	$a1, $a0, .LBB1_3
	b	.LBB1_85
.LBB1_83:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $s6, 40
	bgeu	$a3, $a2, .LBB1_78
.LBB1_84:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$a2, $s6, 40
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	bnez	$a3, .LBB1_79
	b	.LBB1_80
.LBB1_85:
	ori	$a0, $zero, 3
	bne	$a1, $a0, .LBB1_87
.LBB1_86:
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
.LBB1_87:                               # %.thread
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
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
.LBB1_88:
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB1_87
.LBB1_89:
.Ltmp39:
	move	$fp, $a0
	ori	$a1, $zero, 16
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_99
.LBB1_90:
.Ltmp20:
	move	$fp, $a0
	b	.LBB1_107
.LBB1_91:
.Ltmp49:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_92:
.Ltmp28:
	move	$fp, $a0
	ori	$a1, $zero, 1112
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_99
.LBB1_93:
.Ltmp23:
	ld.d	$a1, $sp, 104
	move	$fp, $a0
	beqz	$a1, .LBB1_107
# %bb.94:
	move	$a0, $a1
	b	.LBB1_106
.LBB1_95:
.Ltmp2:
	b	.LBB1_97
.LBB1_96:
.Ltmp5:
.LBB1_97:
	move	$fp, $a0
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN18COutMultiVolStream14CSubStreamInfoD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_98:
.Ltmp46:
	move	$fp, $a0
.LBB1_99:                               # %.body122
	ld.d	$a0, $sp, 104
	bnez	$a0, .LBB1_106
	b	.LBB1_107
.LBB1_100:                              # %_ZN11CStringBaseIwED2Ev.exit100
.Ltmp17:
	b	.LBB1_102
.LBB1_101:                              # %_ZN11CStringBaseIwED2Ev.exit.i
.Ltmp14:
.LBB1_102:                              # %_ZN11CStringBaseIwED2Ev.exit101
	move	$fp, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB1_105
.LBB1_103:
.Ltmp8:
	move	$fp, $a0
	b	.LBB1_107
.LBB1_104:
.Ltmp11:
	move	$fp, $a0
.LBB1_105:
	move	$a0, $s4
.LBB1_106:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_107:
	ld.d	$a0, $sp, 120
	beqz	$a0, .LBB1_109
# %bb.108:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_109:
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN18COutMultiVolStream14CSubStreamInfoD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN18COutMultiVolStream5WriteEPKvjPj, .Lfunc_end1-_ZN18COutMultiVolStream5WriteEPKvjPj
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
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
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp36-.Ltmp29                #   Call between .Ltmp29 and .Ltmp36
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp43-.Ltmp40                #   Call between .Ltmp40 and .Ltmp43
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp47-.Ltmp45                #   Call between .Ltmp45 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Lfunc_end1-.Ltmp48            #   Call between .Ltmp48 and .Lfunc_end1
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
	.section	.text._ZN11CStringBaseIwEaSERKS0_,"axG",@progbits,_ZN11CStringBaseIwEaSERKS0_,comdat
	.weak	_ZN11CStringBaseIwEaSERKS0_     # -- Begin function _ZN11CStringBaseIwEaSERKS0_
	.p2align	5
	.type	_ZN11CStringBaseIwEaSERKS0_,@function
_ZN11CStringBaseIwEaSERKS0_:            # @_ZN11CStringBaseIwEaSERKS0_
	.cfi_startproc
# %bb.0:
	beq	$a1, $a0, .LBB2_10
# %bb.1:
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
	st.w	$zero, $a0, 8
	ld.d	$s0, $a0, 0
	ld.w	$a2, $a1, 8
	ld.w	$s4, $a0, 12
	addi.w	$s1, $a2, 1
	st.w	$zero, $s0, 0
	bne	$s1, $s4, .LBB2_3
# %bb.2:
	move	$fp, $s0
	b	.LBB2_7
.LBB2_3:
	move	$s2, $a1
	move	$s3, $a0
	slti	$a0, $a2, -1
	slli.d	$a1, $s1, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$fp, $a0
	blt	$s4, $a1, .LBB2_5
# %bb.4:                                # %._crit_edge.thread.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.w	$a1, $s3, 8
	b	.LBB2_6
.LBB2_5:
	move	$a1, $zero
	move	$a0, $s3
.LBB2_6:
	st.d	$fp, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$zero, $fp, $a1
	st.w	$s1, $a0, 12
	move	$a1, $s2
.LBB2_7:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
	ld.d	$a2, $a1, 0
	.p2align	4, , 16
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $fp, 4
	st.w	$a3, $fp, 0
	move	$fp, $a4
	bnez	$a3, .LBB2_8
# %bb.9:                                # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	ld.w	$a1, $a1, 8
	st.w	$a1, $a0, 8
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB2_10:
	ret
.Lfunc_end2:
	.size	_ZN11CStringBaseIwEaSERKS0_, .Lfunc_end2-_ZN11CStringBaseIwEaSERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN14COutFileStreamC2Ev,"axG",@progbits,_ZN14COutFileStreamC2Ev,comdat
	.weak	_ZN14COutFileStreamC2Ev         # -- Begin function _ZN14COutFileStreamC2Ev
	.p2align	5
	.type	_ZN14COutFileStreamC2Ev,@function
_ZN14COutFileStreamC2Ev:                # @_ZN14COutFileStreamC2Ev
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
	pcalau12i	$a1, %got_pc_hi20(_ZTV14COutFileStream)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTV14COutFileStream)
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	addi.d	$a1, $a1, 16
	st.d	$a1, $fp, 0
	st.w	$zero, $fp, 8
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 16
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 24
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 32
	ori	$a0, $zero, 4
	ori	$s0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	st.b	$zero, $a0, 0
	st.w	$s0, $fp, 44
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	st.d	$a0, $fp, 16
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_ZN14COutFileStreamC2Ev, .Lfunc_end3-_ZN14COutFileStreamC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_,"axG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_,comdat
	.weak	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_ # -- Begin function _ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_
	.p2align	5
	.type	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_,@function
_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_: # @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_
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
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	vld	$vr0, $s1, 0
	move	$fp, $a0
	vst	$vr0, $a0, 0
	beqz	$a1, .LBB4_2
# %bb.1:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 8
.Ltmp50:
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp51:
.LBB4_2:                                # %_ZN9CMyComPtrI10IOutStreamEC2ERKS1_.exit.i
	ld.w	$s2, $s1, 24
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s3, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s3, $a0
	vst	$vr0, $fp, 16
	beqz	$a0, .LBB4_4
# %bb.3:
	move	$a0, $zero
	b	.LBB4_6
.LBB4_4:
	addi.w	$a0, $s3, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp53:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.5:                                # %.noexc.i
	st.d	$a0, $fp, 16
	st.w	$zero, $a0, 0
	st.w	$s3, $fp, 28
.LBB4_6:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a1, $s1, 16
	.p2align	4, , 16
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB4_7
# %bb.8:
	vld	$vr0, $s1, 32
	st.w	$s2, $fp, 24
	vst	$vr0, $fp, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$fp, $a1, $a2
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, 12
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_9:
.Ltmp55:
	ld.d	$a1, $fp, 8
	move	$s0, $a0
	beqz	$a1, .LBB4_13
# %bb.10:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp56:
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp57:
	b	.LBB4_13
.LBB4_11:
.Ltmp58:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_12:
.Ltmp52:
	move	$s0, $a0
.LBB4_13:                               # %.body
	ori	$a1, $zero, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_, .Lfunc_end4-_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_,"aG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp50-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin1          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp56-.Ltmp54                #   Call between .Ltmp54 and .Ltmp56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin1          #     jumps to .Ltmp58
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp57-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Lfunc_end4-.Ltmp57            #   Call between .Ltmp57 and .Lfunc_end4
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
	.section	.text._ZN18COutMultiVolStream14CSubStreamInfoD2Ev,"axG",@progbits,_ZN18COutMultiVolStream14CSubStreamInfoD2Ev,comdat
	.weak	_ZN18COutMultiVolStream14CSubStreamInfoD2Ev # -- Begin function _ZN18COutMultiVolStream14CSubStreamInfoD2Ev
	.p2align	5
	.type	_ZN18COutMultiVolStream14CSubStreamInfoD2Ev,@function
_ZN18COutMultiVolStream14CSubStreamInfoD2Ev: # @_ZN18COutMultiVolStream14CSubStreamInfoD2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB5_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_2:                                # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB5_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp59:
	jirl	$ra, $a1, 0
.Ltmp60:
.LBB5_4:                                # %_ZN9CMyComPtrI10IOutStreamED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_5:
.Ltmp61:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN18COutMultiVolStream14CSubStreamInfoD2Ev, .Lfunc_end5-_ZN18COutMultiVolStream14CSubStreamInfoD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18COutMultiVolStream14CSubStreamInfoD2Ev,"aG",@progbits,_ZN18COutMultiVolStream14CSubStreamInfoD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp59-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin2          #     jumps to .Ltmp61
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp60            #   Call between .Ltmp60 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
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
	.globl	_ZN18COutMultiVolStream4SeekExjPy # -- Begin function _ZN18COutMultiVolStream4SeekExjPy
	.p2align	5
	.type	_ZN18COutMultiVolStream4SeekExjPy,@function
_ZN18COutMultiVolStream4SeekExjPy:      # @_ZN18COutMultiVolStream4SeekExjPy
# %bb.0:
	ori	$a4, $zero, 2
	bgeu	$a4, $a2, .LBB6_2
# %bb.1:
	lu12i.w	$a0, -524240
	ori	$a0, $a0, 1
	ret
.LBB6_2:
	beq	$a2, $a4, .LBB6_5
# %bb.3:
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB6_7
# %bb.4:
	ld.d	$a2, $a0, 24
	b	.LBB6_6
.LBB6_5:
	ld.d	$a2, $a0, 32
.LBB6_6:
	add.d	$a1, $a2, $a1
.LBB6_7:
	st.d	$a1, $a0, 24
	st.d	$a1, $a0, 16
	beqz	$a3, .LBB6_9
# %bb.8:
	st.d	$a1, $a3, 0
.LBB6_9:
	st.w	$zero, $a0, 12
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	_ZN18COutMultiVolStream4SeekExjPy, .Lfunc_end6-_ZN18COutMultiVolStream4SeekExjPy
                                        # -- End function
	.globl	_ZN18COutMultiVolStream7SetSizeEy # -- Begin function _ZN18COutMultiVolStream7SetSizeEy
	.p2align	5
	.type	_ZN18COutMultiVolStream7SetSizeEy,@function
_ZN18COutMultiVolStream7SetSizeEy:      # @_ZN18COutMultiVolStream7SetSizeEy
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
	move	$fp, $a0
	ld.w	$a0, $a0, 52
	ori	$s2, $zero, 1
	move	$s0, $a1
	blt	$a0, $s2, .LBB7_4
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $fp, 56
	.p2align	4, , 16
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a1, 0
	ld.d	$a2, $s1, 40
	bltu	$s0, $a2, .LBB7_5
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	sub.d	$s0, $s0, $a2
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.w	$s2, $s2, 1
	bnez	$a0, .LBB7_2
	b	.LBB7_11
.LBB7_4:
	move	$s2, $zero
	blt	$s2, $a0, .LBB7_7
	b	.LBB7_11
.LBB7_5:
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 56
	move	$a1, $s0
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB7_12
# %bb.6:                                # %.thread32
	ld.w	$a0, $fp, 52
	st.d	$s0, $s1, 40
	bge	$s2, $a0, .LBB7_11
.LBB7_7:                                # %.lr.ph49
	addi.d	$s1, $fp, 40
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_8:                                # %_ZN9CMyComPtrI10IOutStreamE7ReleaseEv.exit
                                        #   in Loop: Header=BB7_9 Depth=1
	ld.d	$a0, $s3, 16
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 52
	bge	$s2, $a0, .LBB7_11
.LBB7_9:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$s3, $a0, -8
	ld.d	$a0, $s3, 8
	beqz	$a0, .LBB7_8
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $s3, 8
	b	.LBB7_8
.LBB7_11:                               # %._crit_edge
	ld.d	$a1, $fp, 24
	move	$a0, $zero
	st.d	$a1, $fp, 16
	st.w	$zero, $fp, 12
	st.d	$s0, $fp, 32
.LBB7_12:                               # %.thread
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	_ZN18COutMultiVolStream7SetSizeEy, .Lfunc_end7-_ZN18COutMultiVolStream7SetSizeEy
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE # -- Begin function _ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE
	.p2align	5
	.type	_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE,@function
_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE: # @_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	ld.w	$a4, $a2, 12
	ori	$a5, $zero, 1
	blt	$a5, $a4, .LBB8_13
# %bb.1:
	move	$s8, $a3
	move	$s0, $a1
	move	$fp, $a0
	beqz	$a4, .LBB8_4
# %bb.2:
	ld.d	$a0, $a2, 16
	ld.w	$a0, $a0, 0
	bltz	$a0, .LBB8_4
# %bb.3:
	st.w	$a0, $fp, 0
	b	.LBB8_9
.LBB8_4:                                # %.thread
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNK7CCodecs24FindFormatForArchiveNameERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.w	$a0, $fp, 0
	blt	$a1, $a0, .LBB8_9
# %bb.5:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$a0, $sp, 56
	st.d	$a2, $a0, 0
	st.w	$a1, $a0, 8
	ori	$a0, $zero, 2
	lu32i.d	$a0, 3
	st.d	$a0, $sp, 64
.Ltmp62:
	addi.d	$a1, $sp, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp63:
# %bb.6:
	ld.d	$a1, $sp, 56
	st.w	$a0, $fp, 0
	beqz	$a1, .LBB8_8
# %bb.7:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
.LBB8_8:
	bltz	$a0, .LBB8_13
.LBB8_9:                                # %.thread84
	ld.d	$a1, $s0, 32
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB8_13
# %bb.10:
	ld.w	$a1, $a0, 52
	beqz	$a1, .LBB8_15
# %bb.11:
	ld.d	$a0, $a0, 56
	ld.d	$s2, $a0, 0
	ld.w	$a2, $s2, 8
	bstrpick.d	$a0, $a2, 31, 0
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	slti	$s1, $a2, -1
	beqz	$a1, .LBB8_16
# %bb.12:
	move	$s0, $zero
	b	.LBB8_17
.LBB8_13:
	move	$a0, $zero
.LBB8_14:                               # %_ZN11CStringBaseIwED2Ev.exit62
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
.LBB8_15:                               # %.thread105
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	ori	$s2, $zero, 1
	b	.LBB8_22
.LBB8_16:
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	addi.w	$a1, $zero, -1
	maskeqz	$a1, $a1, $s1
	masknez	$a0, $a0, $s1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$zero, $a0, 0
.LBB8_17:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a0, $s2, 0
	move	$a1, $zero
	.p2align	4, , 16
.LBB8_18:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB8_18
# %bb.19:                               # %_ZNK10CArcInfoEx10GetMainExtEv.exit
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s2, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s2, $a0
	beqz	$a0, .LBB8_21
# %bb.20:
	move	$s2, $zero
	move	$s1, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB8_24
.LBB8_21:
	addi.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	addi.w	$a1, $zero, -1
	maskeqz	$a1, $a1, $s1
	masknez	$a0, $a0, $s1
	or	$a0, $a1, $a0
.LBB8_22:
.Ltmp65:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp66:
# %bb.23:                               # %.noexc
	move	$s1, $a0
	st.w	$zero, $a0, 0
.LBB8_24:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i35
	move	$a0, $zero
	.p2align	4, , 16
.LBB8_25:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s0, $a0
	stx.w	$a1, $s1, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB8_25
# %bb.26:
	ld.bu	$a1, $fp, 200
	ori	$a0, $zero, 1
	addi.w	$s4, $s2, 0
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	bne	$a1, $a0, .LBB8_29
# %bb.27:
	st.w	$zero, $s1, 0
	bne	$s4, $a0, .LBB8_30
# %bb.28:
	move	$s3, $s1
	b	.LBB8_34
.LBB8_29:
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	b	.LBB8_35
.LBB8_30:
.Ltmp68:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.31:                               # %.noexc44
	move	$s3, $a0
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB8_33
# %bb.32:                               # %._crit_edge.thread.i.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_33:
	st.w	$zero, $s3, 0
	move	$s1, $s3
.LBB8_34:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i40
	move	$a2, $zero
	st.w	$zero, $s3, 0
.LBB8_35:
	ld.d	$s3, $fp, 128
	st.w	$zero, $fp, 136
	ld.w	$s5, $fp, 140
	st.w	$zero, $s3, 0
	addi.w	$s2, $a2, 1
	slti	$a0, $a2, -1
	slli.d	$a1, $s2, 2
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	bne	$s2, $s5, .LBB8_37
# %bb.36:
	move	$s4, $s3
	b	.LBB8_42
.LBB8_37:
	move	$a3, $a0
	move	$s6, $a2
	masknez	$a0, $a1, $a0
	addi.w	$a1, $zero, -1
	maskeqz	$a1, $a1, $a3
	or	$a0, $a1, $a0
.Ltmp71:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp72:
# %bb.38:                               # %.noexc51
	move	$s4, $a0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB8_40
# %bb.39:                               # %._crit_edge.thread.i.i49
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 136
	b	.LBB8_41
.LBB8_40:
	move	$a0, $zero
.LBB8_41:
	st.d	$s4, $fp, 128
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s4, $a0
	st.w	$s2, $fp, 140
	move	$a2, $s6
.LBB8_42:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i45.preheader
	move	$a0, $zero
	addi.d	$s3, $fp, 80
	.p2align	4, , 16
.LBB8_43:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i45
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s1, $a0
	stx.w	$a1, $s4, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB8_43
# %bb.44:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.d	$s5, $fp, 144
	ld.w	$s7, $fp, 156
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.w	$a2, $fp, 136
	st.w	$zero, $fp, 152
	st.w	$zero, $s5, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slti	$s6, $a0, -1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bne	$a0, $s7, .LBB8_46
# %bb.45:
	move	$s4, $s5
	b	.LBB8_51
.LBB8_46:
	slli.d	$a0, $a0, 2
	addi.w	$a1, $zero, -1
	maskeqz	$a1, $a1, $s6
	masknez	$a0, $a0, $s6
	or	$a0, $a1, $a0
.Ltmp73:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp74:
# %bb.47:                               # %.noexc59
	move	$s4, $a0
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB8_49
# %bb.48:                               # %._crit_edge.thread.i.i57
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 152
	b	.LBB8_50
.LBB8_49:
	move	$a0, $zero
.LBB8_50:
	st.d	$s4, $fp, 144
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s4, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $fp, 156
.LBB8_51:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i52.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB8_52:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i52
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s0, $a0
	stx.w	$a1, $s4, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB8_52
# %bb.53:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i56
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $fp, 152
.Ltmp76:
	move	$a0, $s3
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp77:
# %bb.54:                               # %.preheader
	ld.w	$a0, $fp, 52
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_74
# %bb.55:                               # %.lr.ph
	move	$s3, $zero
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	masknez	$a0, $a0, $a2
	addi.w	$a1, $zero, -1
	maskeqz	$a2, $a1, $a2
	or	$a0, $a2, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	maskeqz	$a1, $a1, $s6
	masknez	$a0, $a0, $s6
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB8_56:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_63 Depth 2
                                        #     Child Loop BB8_71 Depth 2
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s3, 3
	ldx.d	$s4, $a0, $a1
	ld.d	$s6, $s4, 64
	ld.w	$s7, $s4, 76
	st.w	$zero, $s4, 72
	st.w	$zero, $s6, 0
	beq	$s2, $s7, .LBB8_62
# %bb.57:                               #   in Loop: Header=BB8_56 Depth=1
.Ltmp79:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp80:
# %bb.58:                               # %.noexc70
                                        #   in Loop: Header=BB8_56 Depth=1
	move	$s5, $a0
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB8_60
# %bb.59:                               # %._crit_edge.thread.i.i68
                                        #   in Loop: Header=BB8_56 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 72
	b	.LBB8_61
.LBB8_60:                               #   in Loop: Header=BB8_56 Depth=1
	move	$a0, $zero
.LBB8_61:                               #   in Loop: Header=BB8_56 Depth=1
	st.d	$s5, $s4, 64
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s5, $a0
	st.w	$s2, $s4, 76
	move	$s6, $s5
.LBB8_62:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i63.preheader
                                        #   in Loop: Header=BB8_56 Depth=1
	addi.d	$s5, $s4, 16
	move	$a0, $s1
	.p2align	4, , 16
.LBB8_63:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i63
                                        #   Parent Loop BB8_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s6, 4
	st.w	$a1, $s6, 0
	move	$s6, $a2
	bnez	$a1, .LBB8_63
# %bb.64:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i67
                                        #   in Loop: Header=BB8_56 Depth=1
	ld.d	$s6, $s4, 80
	ld.w	$s8, $s4, 92
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $s4, 72
	st.w	$zero, $s4, 88
	st.w	$zero, $s6, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $s8, .LBB8_70
# %bb.65:                               #   in Loop: Header=BB8_56 Depth=1
.Ltmp81:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp82:
# %bb.66:                               # %.noexc79
                                        #   in Loop: Header=BB8_56 Depth=1
	move	$s7, $a0
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB8_68
# %bb.67:                               # %._crit_edge.thread.i.i77
                                        #   in Loop: Header=BB8_56 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 88
	b	.LBB8_69
.LBB8_68:                               #   in Loop: Header=BB8_56 Depth=1
	move	$a0, $zero
.LBB8_69:                               #   in Loop: Header=BB8_56 Depth=1
	st.d	$s7, $s4, 80
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s7, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $s4, 92
	move	$s6, $s7
.LBB8_70:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i72.preheader
                                        #   in Loop: Header=BB8_56 Depth=1
	move	$a0, $s0
	.p2align	4, , 16
.LBB8_71:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i72
                                        #   Parent Loop BB8_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s6, 4
	st.w	$a1, $s6, 0
	move	$s6, $a2
	bnez	$a1, .LBB8_71
# %bb.72:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i76
                                        #   in Loop: Header=BB8_56 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $s4, 88
.Ltmp83:
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp84:
# %bb.73:                               #   in Loop: Header=BB8_56 Depth=1
	ld.w	$a0, $fp, 52
	addi.d	$s3, $s3, 1
	blt	$s3, $a0, .LBB8_56
.LBB8_74:                               # %._crit_edge
	beqz	$s1, .LBB8_76
# %bb.75:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_76:                               # %_ZN11CStringBaseIwED2Ev.exit61
	ori	$a0, $zero, 1
	beqz	$s0, .LBB8_14
# %bb.77:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB8_14
.LBB8_78:
.Ltmp70:
	b	.LBB8_85
.LBB8_79:
.Ltmp64:
	ld.d	$a1, $sp, 56
	move	$fp, $a0
	beqz	$a1, .LBB8_90
# %bb.80:
	move	$a0, $a1
	b	.LBB8_89
.LBB8_81:
.Ltmp67:
	move	$fp, $a0
	b	.LBB8_87
.LBB8_82:
.Ltmp78:
	b	.LBB8_85
.LBB8_83:
.Ltmp75:
	b	.LBB8_85
.LBB8_84:
.Ltmp85:
.LBB8_85:
	move	$fp, $a0
	beqz	$s1, .LBB8_87
# %bb.86:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_87:                               # %_ZN11CStringBaseIwED2Ev.exit81
	beqz	$s0, .LBB8_90
# %bb.88:
	move	$a0, $s0
.LBB8_89:                               # %_ZN11CStringBaseIwED2Ev.exit82
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_90:                               # %_ZN11CStringBaseIwED2Ev.exit82
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE, .Lfunc_end8-_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
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
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin3          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp65-.Ltmp63                #   Call between .Ltmp63 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin3          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin3          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp71-.Ltmp69                #   Call between .Ltmp69 and .Ltmp71
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp75-.Lfunc_begin3          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin3          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp76-.Ltmp74                #   Call between .Ltmp74 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin3          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp85-.Lfunc_begin3          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 14 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp85-.Lfunc_begin3          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin3          # >> Call Site 15 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin3          # >> Call Site 16 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin3          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin3          # >> Call Site 17 <<
	.uleb128 .Lfunc_end8-.Ltmp84            #   Call between .Ltmp84 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEaSEPKw,"axG",@progbits,_ZN11CStringBaseIwEaSEPKw,comdat
	.weak	_ZN11CStringBaseIwEaSEPKw       # -- Begin function _ZN11CStringBaseIwEaSEPKw
	.p2align	5
	.type	_ZN11CStringBaseIwEaSEPKw,@function
_ZN11CStringBaseIwEaSEPKw:              # @_ZN11CStringBaseIwEaSEPKw
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
	move	$fp, $a0
	ld.d	$s3, $a0, 0
	move	$s0, $a1
	st.w	$zero, $a0, 8
	st.w	$zero, $s3, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	ld.w	$s5, $fp, 12
	move	$s1, $a0
	addi.w	$s4, $a0, 1
	bne	$s4, $s5, .LBB9_2
# %bb.1:
	move	$s2, $s3
	b	.LBB9_6
.LBB9_2:
	addi.w	$a0, $s1, 0
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s2, $a0
	blt	$s5, $a1, .LBB9_4
# %bb.3:                                # %._crit_edge.thread.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	b	.LBB9_5
.LBB9_4:
	move	$a0, $zero
.LBB9_5:
	st.d	$s2, $fp, 0
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $fp, 12
	.p2align	4, , 16
.LBB9_6:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$a1, $s2, 4
	st.w	$a0, $s2, 0
	move	$s2, $a1
	bnez	$a0, .LBB9_6
# %bb.7:                                # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	st.w	$s1, $fp, 8
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
	ret
.Lfunc_end9:
	.size	_ZN11CStringBaseIwEaSEPKw, .Lfunc_end9-_ZN11CStringBaseIwEaSEPKw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE,"axG",@progbits,_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE,comdat
	.weak	_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE # -- Begin function _ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE
	.p2align	5
	.type	_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE,@function
_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE: # @_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s1, $a1
	move	$fp, $a0
	beq	$a1, $a0, .LBB10_10
# %bb.1:
	ld.d	$s2, $fp, 0
	st.w	$zero, $fp, 8
	st.w	$zero, $s2, 0
	ld.w	$a0, $s1, 8
	ld.w	$s4, $fp, 12
	addi.w	$s3, $a0, 1
	bne	$s3, $s4, .LBB10_3
# %bb.2:
	move	$s0, $s2
	b	.LBB10_7
.LBB10_3:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s0, $a0
	blt	$s4, $a1, .LBB10_5
# %bb.4:                                # %._crit_edge.thread.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	b	.LBB10_6
.LBB10_5:
	move	$a0, $zero
.LBB10_6:
	st.d	$s0, $fp, 0
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s0, $a0
	st.w	$s3, $fp, 12
.LBB10_7:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $s1, 0
	.p2align	4, , 16
.LBB10_8:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s0, 4
	st.w	$a1, $s0, 0
	move	$s0, $a2
	bnez	$a1, .LBB10_8
# %bb.9:                                # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.w	$a0, $s1, 8
	st.w	$a0, $fp, 8
.LBB10_10:                              # %_ZN11CStringBaseIwEaSERKS0_.exit
	addi.d	$a1, $fp, 16
	addi.d	$s0, $fp, 32
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_Z16SplitPathToPartsRK11CStringBaseIwERS0_S3_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	beqz	$a0, .LBB10_42
# %bb.11:
	ld.d	$a1, $s0, 0
	slli.d	$a2, $a0, 2
	addi.d	$a2, $a2, -4
	ori	$a3, $zero, 46
	addi.w	$a4, $zero, -4
	.p2align	4, , 16
.LBB10_12:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a5, $a1, $a2
	beq	$a5, $a3, .LBB10_14
# %bb.13:                               #   in Loop: Header=BB10_12 Depth=1
	addi.d	$a2, $a2, -4
	bne	$a2, $a4, .LBB10_12
	b	.LBB10_42
.LBB10_14:                              # %_ZNK11CStringBaseIwE11ReverseFindEw.exit
	srli.d	$a1, $a2, 2
	addi.w	$s1, $a1, 0
	bltz	$s1, .LBB10_42
# %bb.15:
	addi.w	$a2, $a0, -1
	bne	$a2, $s1, .LBB10_19
# %bb.16:
	addi.d	$a0, $sp, 0
	addi.d	$s2, $sp, 0
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
	beq	$s2, $s0, .LBB10_26
# %bb.17:
	ld.d	$s1, $fp, 32
	st.w	$zero, $fp, 40
	st.w	$zero, $s1, 0
	ld.w	$a0, $sp, 8
	ld.w	$s3, $fp, 44
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB10_27
# %bb.18:
	move	$s0, $s1
	b	.LBB10_36
.LBB10_19:
	addi.w	$s2, $a1, 1
	sub.w	$a3, $a0, $s2
	addi.d	$a0, $sp, 0
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	ld.d	$a1, $sp, 0
.Ltmp86:
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp87:
# %bb.20:                               # %_ZNK11CStringBaseIwE13CompareNoCaseERKS0_.exit
	move	$s3, $a0
	ld.d	$a0, $sp, 0
	beqz	$a0, .LBB10_22
# %bb.21:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_22:                              # %_ZN11CStringBaseIwED2Ev.exit23
	bnez	$s3, .LBB10_41
# %bb.23:
	ld.w	$a0, $fp, 40
	addi.d	$s3, $fp, 48
	sub.w	$a3, $a0, $s2
	addi.d	$a0, $sp, 0
	addi.d	$s4, $sp, 0
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
	beq	$s4, $s3, .LBB10_30
# %bb.24:
	ld.d	$s3, $fp, 48
	st.w	$zero, $fp, 56
	st.w	$zero, $s3, 0
	ld.w	$a0, $sp, 8
	ld.w	$s5, $fp, 60
	addi.w	$s4, $a0, 1
	bne	$s4, $s5, .LBB10_31
# %bb.25:
	move	$s2, $s3
	b	.LBB10_45
.LBB10_26:                              # %._ZN11CStringBaseIwEaSERKS0_.exit20_crit_edge
	ld.d	$a0, $sp, 0
	b	.LBB10_39
.LBB10_27:
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp95:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp96:
# %bb.28:                               # %.noexc
	move	$s0, $a0
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB10_34
# %bb.29:                               # %._crit_edge.thread.i.i18
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	b	.LBB10_35
.LBB10_30:                              # %._ZN11CStringBaseIwEaSERKS0_.exit32_crit_edge
	ld.d	$a0, $sp, 0
	b	.LBB10_48
.LBB10_31:
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp89:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp90:
# %bb.32:                               # %.noexc31
	move	$s2, $a0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB10_43
# %bb.33:                               # %._crit_edge.thread.i.i29
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 56
	b	.LBB10_44
.LBB10_34:
	move	$a0, $zero
.LBB10_35:
	st.d	$s0, $fp, 32
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s0, $a0
	st.w	$s2, $fp, 44
.LBB10_36:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i13
	ld.d	$a0, $sp, 0
	move	$a1, $zero
	.p2align	4, , 16
.LBB10_37:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB10_37
# %bb.38:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i17
	ld.w	$a1, $sp, 8
	st.w	$a1, $fp, 40
.LBB10_39:                              # %_ZN11CStringBaseIwEaSERKS0_.exit20
	beqz	$a0, .LBB10_41
# %bb.40:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_41:
	ld.d	$a0, $fp, 48
	st.w	$zero, $fp, 56
	st.w	$zero, $a0, 0
.LBB10_42:                              # %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread
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
.LBB10_43:
	move	$a0, $zero
.LBB10_44:
	st.d	$s2, $fp, 48
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $fp, 60
.LBB10_45:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i24
	ld.d	$a0, $sp, 0
	move	$a1, $zero
	.p2align	4, , 16
.LBB10_46:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB10_46
# %bb.47:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i28
	ld.w	$a1, $sp, 8
	st.w	$a1, $fp, 56
.LBB10_48:                              # %_ZN11CStringBaseIwEaSERKS0_.exit32
	beqz	$a0, .LBB10_50
# %bb.49:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_50:                              # %_ZN11CStringBaseIwED2Ev.exit33
	addi.d	$a0, $sp, 0
	addi.d	$s2, $sp, 0
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
	beq	$s2, $s0, .LBB10_53
# %bb.51:
	ld.d	$s1, $fp, 32
	st.w	$zero, $fp, 40
	st.w	$zero, $s1, 0
	ld.w	$a0, $sp, 8
	ld.w	$s3, $fp, 44
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB10_54
# %bb.52:
	move	$s0, $s1
	b	.LBB10_59
.LBB10_53:                              # %_ZN11CStringBaseIwED2Ev.exit33._ZN11CStringBaseIwEaSERKS0_.exit42_crit_edge
	ld.d	$a0, $sp, 0
	b	.LBB10_62
.LBB10_54:
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp92:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp93:
# %bb.55:                               # %.noexc41
	move	$s0, $a0
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB10_57
# %bb.56:                               # %._crit_edge.thread.i.i39
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	b	.LBB10_58
.LBB10_57:
	move	$a0, $zero
.LBB10_58:
	st.d	$s0, $fp, 32
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s0, $a0
	st.w	$s2, $fp, 44
.LBB10_59:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i34
	ld.d	$a0, $sp, 0
	move	$a1, $zero
	.p2align	4, , 16
.LBB10_60:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB10_60
# %bb.61:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i38
	ld.w	$a1, $sp, 8
	st.w	$a1, $fp, 40
.LBB10_62:                              # %_ZN11CStringBaseIwEaSERKS0_.exit42
	beqz	$a0, .LBB10_42
# %bb.63:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_42
.LBB10_64:
.Ltmp94:
	b	.LBB10_68
.LBB10_65:
.Ltmp91:
	b	.LBB10_68
.LBB10_66:
.Ltmp97:
	b	.LBB10_68
.LBB10_67:
.Ltmp88:
.LBB10_68:
	ld.d	$a1, $sp, 0
	move	$fp, $a0
	beqz	$a1, .LBB10_70
# %bb.69:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_70:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE, .Lfunc_end10-_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE
	.cfi_endproc
	.section	.gcc_except_table._ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE,"aG",@progbits,_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp86-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin4          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp95-.Ltmp87                #   Call between .Ltmp87 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin4          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp89-.Ltmp96                #   Call between .Ltmp96 and .Ltmp89
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin4          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp92-.Ltmp90                #   Call between .Ltmp90 and .Ltmp92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin4          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Lfunc_end10-.Ltmp93           #   Call between .Ltmp93 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE # -- Begin function _Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE
	.p2align	5
	.type	_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE,@function
_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE: # @_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s6, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 56
	addi.d	$a1, $sp, 132
	move	$a0, $s2
	jirl	$ra, $a2, 0
	move	$s8, $a0
	bnez	$a0, .LBB11_44
# %bb.1:
	ld.w	$a1, $sp, 132
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	beqz	$a0, .LBB11_43
# %bb.2:                                # %.lr.ph
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s3, $zero
	addi.d	$s4, $sp, 96
	addi.d	$s7, $sp, 112
	addi.w	$s5, $zero, -1
	ori	$fp, $zero, 4
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	lu32i.d	$s5, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB11_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_39 Depth 2
	st.d	$zero, $sp, 104
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96
	st.w	$zero, $a0, 0
	st.d	$fp, $sp, 108
	st.w	$s5, $sp, 120
.Ltmp98:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNK4CArc11GetItemPathEjR11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp99:
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	bnez	$a0, .LBB11_7
# %bb.5:                                #   in Loop: Header=BB11_3 Depth=1
.Ltmp101:
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_Z19IsArchiveItemFolderP10IInArchivejRb)
	jirl	$ra, $ra, 0
.Ltmp102:
# %bb.6:                                #   in Loop: Header=BB11_3 Depth=1
	beqz	$a0, .LBB11_11
.LBB11_7:                               #   in Loop: Header=BB11_3 Depth=1
	move	$s1, $zero
	move	$s8, $a0
	ld.d	$a0, $sp, 96
	beqz	$a0, .LBB11_9
.LBB11_8:                               #   in Loop: Header=BB11_3 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_9:                               # %_ZN8CArcItemD2Ev.exit
                                        #   in Loop: Header=BB11_3 Depth=1
	beqz	$s1, .LBB11_44
# %bb.10:                               #   in Loop: Header=BB11_3 Depth=1
	ld.w	$a0, $sp, 132
	addi.w	$s3, $s3, 1
	bltu	$s3, $a0, .LBB11_3
	b	.LBB11_43
.LBB11_11:                              #   in Loop: Header=BB11_3 Depth=1
	move	$fp, $s7
	ld.b	$a0, $sp, 112
	ori	$a1, $zero, 1
	andn	$a2, $a1, $a0
.Ltmp104:
	move	$s7, $s6
	move	$a0, $s6
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNK9NWildcard7CCensor9CheckPathERK11CStringBaseIwEb)
	jirl	$ra, $ra, 0
.Ltmp105:
# %bb.12:                               #   in Loop: Header=BB11_3 Depth=1
	st.b	$a0, $sp, 115
.Ltmp106:
	move	$a0, $s0
	move	$a1, $s3
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 114
	pcaddu18i	$ra, %call36(_ZNK4CArc12GetItemMTimeEjR9_FILETIMERb)
	jirl	$ra, $ra, 0
.Ltmp107:
# %bb.13:                               #   in Loop: Header=BB11_3 Depth=1
	beqz	$a0, .LBB11_15
# %bb.14:                               #   in Loop: Header=BB11_3 Depth=1
	move	$s1, $zero
	move	$s8, $a0
	b	.LBB11_42
.LBB11_15:                              #   in Loop: Header=BB11_3 Depth=1
	st.w	$zero, $sp, 64
	ld.d	$a0, $s2, 0
	ld.d	$a4, $a0, 64
.Ltmp109:
	ori	$a2, $zero, 7
	addi.d	$a3, $sp, 64
	move	$a0, $s2
	move	$a1, $s3
	jirl	$ra, $a4, 0
.Ltmp110:
# %bb.16:                               #   in Loop: Header=BB11_3 Depth=1
	move	$s6, $a0
	beqz	$a0, .LBB11_19
# %bb.17:                               # %.critedge
                                        #   in Loop: Header=BB11_3 Depth=1
.Ltmp112:
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp113:
# %bb.18:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit84
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$s1, $zero
	move	$s8, $s6
	b	.LBB11_42
.LBB11_19:                              #   in Loop: Header=BB11_3 Depth=1
	ld.hu	$a0, $sp, 64
	sltu	$a1, $zero, $a0
	st.b	$a1, $sp, 113
	beqz	$a0, .LBB11_22
# %bb.20:                               #   in Loop: Header=BB11_3 Depth=1
.Ltmp115:
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.Ltmp116:
# %bb.21:                               #   in Loop: Header=BB11_3 Depth=1
	st.d	$a0, $sp, 80
.LBB11_22:                              #   in Loop: Header=BB11_3 Depth=1
.Ltmp121:
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp122:
# %bb.23:                               #   in Loop: Header=BB11_3 Depth=1
	st.w	$zero, $sp, 64
	ld.d	$a0, $s2, 0
	ld.d	$a4, $a0, 64
.Ltmp124:
	ori	$a2, $zero, 40
	addi.d	$a3, $sp, 64
	move	$a0, $s2
	move	$a1, $s3
	jirl	$ra, $a4, 0
.Ltmp125:
# %bb.24:                               #   in Loop: Header=BB11_3 Depth=1
	beqz	$a0, .LBB11_26
# %bb.25:                               #   in Loop: Header=BB11_3 Depth=1
	move	$s1, $zero
	move	$s8, $a0
	b	.LBB11_30
.LBB11_26:                              #   in Loop: Header=BB11_3 Depth=1
	ld.hu	$a0, $sp, 64
	ori	$a1, $zero, 19
	bne	$a0, $a1, .LBB11_28
# %bb.27:                               #   in Loop: Header=BB11_3 Depth=1
	ld.w	$a0, $sp, 72
	st.w	$a0, $sp, 120
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB11_29
.LBB11_28:                              #   in Loop: Header=BB11_3 Depth=1
	ori	$s1, $zero, 1
	b	.LBB11_30
.LBB11_29:                              #   in Loop: Header=BB11_3 Depth=1
	move	$s1, $zero
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
.LBB11_30:                              #   in Loop: Header=BB11_3 Depth=1
.Ltmp130:
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp131:
# %bb.31:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit82
                                        #   in Loop: Header=BB11_3 Depth=1
	beqz	$s1, .LBB11_35
# %bb.32:                               #   in Loop: Header=BB11_3 Depth=1
	st.w	$s3, $sp, 116
.Ltmp133:
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp134:
# %bb.33:                               # %.noexc
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$s6, $a0
	vld	$vr0, $sp, 80
	ld.w	$a4, $sp, 104
	vst	$vr0, $a0, 0
	bstrpick.d	$a0, $a4, 31, 0
	addi.d	$s1, $a0, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	and	$a0, $s1, $a0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $s6, 16
	beqz	$a0, .LBB11_36
# %bb.34:                               #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $zero
	b	.LBB11_38
.LBB11_35:                              #   in Loop: Header=BB11_3 Depth=1
	move	$s1, $zero
	b	.LBB11_42
.LBB11_36:                              #   in Loop: Header=BB11_3 Depth=1
	addi.w	$a0, $s1, 0
	st.d	$a4, $sp, 0                     # 8-byte Folded Spill
	slti	$a1, $a4, -1
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp135:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp136:
# %bb.37:                               # %.noexc.i
                                        #   in Loop: Header=BB11_3 Depth=1
	st.d	$a0, $s6, 16
	st.w	$zero, $a0, 0
	st.w	$s1, $s6, 28
	ld.d	$a4, $sp, 0                     # 8-byte Folded Reload
.LBB11_38:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a1, $sp, 96
	.p2align	4, , 16
.LBB11_39:                              #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB11_39
# %bb.40:                               #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a1, $fp, 8
	st.w	$a4, $s6, 24
	st.d	$a0, $s6, 32
	st.w	$a1, $s6, 40
.Ltmp138:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp139:
# %bb.41:                               # %_ZN13CObjectVectorI8CArcItemE3AddERKS0_.exit
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 12
	ld.d	$a1, $a3, 16
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $a3, 12
	ori	$s1, $zero, 1
.LBB11_42:                              #   in Loop: Header=BB11_3 Depth=1
	move	$s6, $s7
	move	$s7, $fp
	ori	$fp, $zero, 4
	ld.d	$a0, $sp, 96
	bnez	$a0, .LBB11_8
	b	.LBB11_9
.LBB11_43:
	move	$s8, $zero
.LBB11_44:                              # %.loopexit
	addi.w	$a0, $s8, 0
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
.LBB11_45:
.Ltmp137:
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB11_60
.LBB11_46:
.Ltmp117:
	b	.LBB11_53
.LBB11_47:
.Ltmp132:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_48:
.Ltmp126:
	move	$fp, $a0
.Ltmp127:
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp128:
	b	.LBB11_60
.LBB11_49:
.Ltmp129:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_50:
.Ltmp123:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_51:
.Ltmp114:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_52:
.Ltmp111:
.LBB11_53:
	move	$fp, $a0
.Ltmp118:
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp119:
	b	.LBB11_60
.LBB11_54:
.Ltmp120:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_55:
.Ltmp108:
	b	.LBB11_59
.LBB11_56:
.Ltmp140:
	b	.LBB11_59
.LBB11_57:
.Ltmp103:
	b	.LBB11_59
.LBB11_58:
.Ltmp100:
.LBB11_59:                              # %.body
	move	$fp, $a0
.LBB11_60:                              # %.body
	ld.d	$a0, $sp, 96
	beqz	$a0, .LBB11_62
# %bb.61:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_62:                              # %_ZN8CArcItemD2Ev.exit85
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE, .Lfunc_end11-_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp98-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp98
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin5         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin5         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp104-.Ltmp102              #   Call between .Ltmp102 and .Ltmp104
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp140-.Lfunc_begin5         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin5         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin5         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin5         #     jumps to .Ltmp114
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp115-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin5         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin5         #     jumps to .Ltmp123
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp124-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin5         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin5         #     jumps to .Ltmp132
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp133-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp140-.Lfunc_begin5         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin5         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin5         # >> Call Site 15 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin5         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin5         # >> Call Site 16 <<
	.uleb128 .Ltmp127-.Ltmp139              #   Call between .Ltmp139 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin5         # >> Call Site 17 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin5         #     jumps to .Ltmp129
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp128-.Lfunc_begin5         # >> Call Site 18 <<
	.uleb128 .Ltmp118-.Ltmp128              #   Call between .Ltmp128 and .Ltmp118
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin5         # >> Call Site 19 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin5         #     jumps to .Ltmp120
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp119-.Lfunc_begin5         # >> Call Site 20 <<
	.uleb128 .Lfunc_end11-.Ltmp119          #   Call between .Ltmp119 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2
.LCPI12_0:
	.word	55                              # 0x37
	.word	45                              # 0x2d
	.word	90                              # 0x5a
	.word	105                             # 0x69
	.word	112                             # 0x70
	.word	32                              # 0x20
	.word	99                              # 0x63
	.word	97                              # 0x61
.LCPI12_1:
	.word	110                             # 0x6e
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	110                             # 0x6e
.LCPI12_2:
	.word	100                             # 0x64
	.word	32                              # 0x20
	.word	115                             # 0x73
	.word	112                             # 0x70
	.word	101                             # 0x65
	.word	99                              # 0x63
	.word	105                             # 0x69
	.word	102                             # 0x66
.LCPI12_3:
	.word	105                             # 0x69
	.word	101                             # 0x65
	.word	100                             # 0x64
	.word	32                              # 0x20
	.word	83                              # 0x53
	.word	70                              # 0x46
	.word	88                              # 0x58
	.word	32                              # 0x20
.LCPI12_5:
	.word	83                              # 0x53
	.word	70                              # 0x46
	.word	88                              # 0x58
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	101                             # 0x65
.LCPI12_6:
	.word	32                              # 0x20
	.word	105                             # 0x69
	.word	115                             # 0x73
	.word	32                              # 0x20
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
.LCPI12_7:
	.word	115                             # 0x73
	.word	112                             # 0x70
	.word	101                             # 0x65
	.word	99                              # 0x63
	.word	105                             # 0x69
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	101                             # 0x65
.LCPI12_9:
	.word	84                              # 0x54
	.word	104                             # 0x68
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	101                             # 0x65
.LCPI12_10:
	.word	32                              # 0x20
	.word	97                              # 0x61
	.word	108                             # 0x6c
	.word	114                             # 0x72
	.word	101                             # 0x65
	.word	97                              # 0x61
	.word	100                             # 0x64
	.word	121                             # 0x79
.LCPI12_11:
	.word	32                              # 0x20
	.word	101                             # 0x65
	.word	120                             # 0x78
	.word	105                             # 0x69
	.word	115                             # 0x73
	.word	116                             # 0x74
	.word	115                             # 0x73
	.word	0                               # 0x0
.LCPI12_12:
	.word	110                             # 0x6e
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	111                             # 0x6f
	.word	112                             # 0x70
	.word	101                             # 0x65
.LCPI12_14:
	.word	110                             # 0x6e
	.word	32                              # 0x20
	.word	83                              # 0x53
	.word	70                              # 0x46
	.word	88                              # 0x58
	.word	32                              # 0x20
	.word	109                             # 0x6d
	.word	111                             # 0x6f
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI12_4:
	.word	109                             # 0x6d
	.word	111                             # 0x6f
	.word	100                             # 0x64
	.word	117                             # 0x75
.LCPI12_8:
	.dword	8                               # 0x8
	.dword	0                               # 0x0
.LCPI12_13:
	.word	110                             # 0x6e
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	105                             # 0x69
.LCPI12_15:
	.word	100                             # 0x64
	.word	117                             # 0x75
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.text
	.globl	_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2
	.p2align	5
	.type	_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2,@function
_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2: # @_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -928
	.cfi_def_cfa_offset 928
	st.d	$ra, $sp, 920                   # 8-byte Folded Spill
	st.d	$fp, $sp, 912                   # 8-byte Folded Spill
	st.d	$s0, $sp, 904                   # 8-byte Folded Spill
	st.d	$s1, $sp, 896                   # 8-byte Folded Spill
	st.d	$s2, $sp, 888                   # 8-byte Folded Spill
	st.d	$s3, $sp, 880                   # 8-byte Folded Spill
	st.d	$s4, $sp, 872                   # 8-byte Folded Spill
	st.d	$s5, $sp, 864                   # 8-byte Folded Spill
	st.d	$s6, $sp, 856                   # 8-byte Folded Spill
	st.d	$s7, $sp, 848                   # 8-byte Folded Spill
	st.d	$s8, $sp, 840                   # 8-byte Folded Spill
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
	st.d	$a5, $sp, 352                   # 8-byte Folded Spill
	move	$s6, $a4
	st.d	$a3, $sp, 360                   # 8-byte Folded Spill
	move	$s0, $a2
	move	$s4, $a1
	ld.bu	$a2, $a2, 248
	ld.bu	$a4, $s0, 249
	lu12i.w	$a3, -524284
	ori	$a1, $zero, 1
	ori	$fp, $a3, 5
	bne	$a2, $a1, .LBB12_2
# %bb.1:
	andi	$a2, $a4, 1
	bnez	$a2, .LBB12_425
.LBB12_2:
	ld.w	$a3, $s0, 300
	ld.b	$a2, $s0, 200
	blt	$a3, $a1, .LBB12_5
# %bb.3:
	or	$a1, $a4, $a2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_5
# %bb.4:
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 1
	b	.LBB12_425
.LBB12_5:
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	andi	$a0, $a2, 255
	andi	$a0, $a0, 1
	st.d	$s4, $sp, 192                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_52
# %bb.6:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $sp, 472
	st.w	$zero, $a0, 0
	ori	$s1, $zero, 4
	st.w	$s1, $sp, 484
	st.d	$zero, $sp, 496
.Ltmp141:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp142:
# %bb.7:                                # %_ZN9CPropertyC2Ev.exit
	move	$s2, $a0
	st.d	$a0, $sp, 488
	st.w	$zero, $a0, 0
	st.w	$s1, $sp, 500
	st.w	$zero, $sp, 480
	st.w	$zero, $s3, 0
.Ltmp144:
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp145:
# %bb.8:
	move	$s5, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	vld	$vr0, $a0, 0
	ld.w	$a0, $a0, 16
	st.d	$s5, $sp, 472
	vst	$vr0, $s5, 0
	st.w	$a0, $s5, 16
	ori	$a0, $zero, 4
	lu32i.d	$a0, 5
	st.d	$a0, $sp, 480
	st.w	$zero, $sp, 496
	st.w	$zero, $s2, 0
.Ltmp146:
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp147:
# %bb.9:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i296
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 488
	ori	$a0, $zero, 111
	lu32i.d	$a0, 110
	st.d	$a0, $s3, 0
	st.w	$zero, $s3, 8
	ori	$a0, $zero, 2
	lu32i.d	$a0, 3
	st.d	$a0, $sp, 496
	addi.d	$a0, $s0, 8
.Ltmp148:
	addi.d	$a1, $sp, 472
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI9CPropertyE3AddERKS0_)
	jirl	$ra, $ra, 0
.Ltmp149:
# %bb.10:
	ld.w	$s1, $s0, 216
	beqz	$s1, .LBB12_13
# %bb.11:
	bstrpick.d	$a0, $s1, 31, 0
	addi.d	$s4, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s4, $a0
	beqz	$a0, .LBB12_15
# %bb.12:
	move	$s3, $zero
	b	.LBB12_17
.LBB12_13:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $a0, 40
	st.w	$zero, $a0, 48
	st.w	$zero, $s3, 0
	ld.w	$s1, $a0, 52
	ori	$a0, $zero, 26
	bne	$s1, $a0, .LBB12_23
# %bb.14:
	move	$s2, $s3
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	b	.LBB12_31
.LBB12_15:
	addi.w	$a0, $s4, 0
	slti	$a1, $s1, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp150:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp151:
# %bb.16:                               # %.noexc317
	move	$s3, $a0
	st.w	$zero, $a0, 0
.LBB12_17:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i313
	addi.d	$a3, $s0, 208
	ld.d	$a0, $a3, 0
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_18:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s3, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_18
# %bb.19:
.Ltmp153:
	move	$a0, $zero
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory12MySearchPathEPKwS3_S3_R11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp154:
# %bb.20:
	move	$s5, $a0
	bnez	$a0, .LBB12_44
# %bb.21:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s8, $a1, 40
	st.w	$a0, $a1, 0
	st.w	$zero, $a1, 48
	st.w	$zero, $s8, 0
	ld.w	$s7, $a1, 52
	ori	$a0, $zero, 39
	bne	$s7, $a0, .LBB12_26
# %bb.22:
	move	$s2, $s8
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	b	.LBB12_34
.LBB12_23:
.Ltmp160:
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp161:
# %bb.24:                               # %.noexc311
	move	$s2, $a0
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB12_29
# %bb.25:                               # %._crit_edge.thread.i.i309
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 48
	b	.LBB12_30
.LBB12_26:
.Ltmp155:
	ori	$a0, $zero, 156
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp156:
# %bb.27:                               # %.noexc325
	move	$s2, $a0
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB12_32
# %bb.28:                               # %._crit_edge.thread.i.i323
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 48
	b	.LBB12_33
.LBB12_29:
	move	$a0, $zero
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
.LBB12_30:
	st.d	$s2, $a1, 40
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	ori	$a0, $zero, 26
	st.w	$a0, $a1, 52
.LBB12_31:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i305
	pcalau12i	$a0, %pc_hi20(.LCPI12_5)
	xvld	$xr0, $a0, %pc_lo12(.LCPI12_5)
	pcalau12i	$a0, %pc_hi20(.LCPI12_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI12_6)
	pcalau12i	$a0, %pc_hi20(.LCPI12_7)
	xvld	$xr2, $a0, %pc_lo12(.LCPI12_7)
	move	$s5, $zero
	xvst	$xr0, $s2, 0
	xvst	$xr1, $s2, 32
	xvst	$xr2, $s2, 64
	ori	$a0, $zero, 100
	st.d	$a0, $s2, 96
	ori	$a0, $zero, 25
	st.w	$a0, $a1, 48
	b	.LBB12_47
.LBB12_32:
	move	$a0, $zero
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
.LBB12_33:
	st.d	$s2, $a1, 40
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	ori	$a0, $zero, 39
	st.w	$a0, $a1, 52
.LBB12_34:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i319
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI12_0)
	xvst	$xr0, $s2, 0
	pcalau12i	$a0, %pc_hi20(.LCPI12_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI12_1)
	pcalau12i	$a0, %pc_hi20(.LCPI12_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI12_2)
	pcalau12i	$a0, %pc_hi20(.LCPI12_3)
	xvld	$xr2, $a0, %pc_lo12(.LCPI12_3)
	pcalau12i	$a0, %pc_hi20(.LCPI12_4)
	vld	$vr3, $a0, %pc_lo12(.LCPI12_4)
	xvst	$xr0, $s2, 32
	xvst	$xr1, $s2, 64
	xvst	$xr2, $s2, 96
	vst	$vr3, $s2, 128
	ori	$a0, $zero, 108
	lu32i.d	$a0, 101
	st.d	$a0, $s2, 144
	st.w	$zero, $s2, 152
	ld.d	$s8, $a1, 8
	ori	$a0, $zero, 38
	st.w	$a0, $a1, 48
	st.w	$zero, $a1, 16
	st.w	$zero, $s8, 0
	ld.w	$s7, $a1, 20
	addi.w	$a0, $s4, 0
	bne	$a0, $s7, .LBB12_36
# %bb.35:
	move	$s2, $s8
	b	.LBB12_41
.LBB12_36:
	slti	$a1, $s1, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp157:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp158:
# %bb.37:                               # %.noexc333
	move	$s2, $a0
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB12_39
# %bb.38:                               # %._crit_edge.thread.i.i331
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 16
	b	.LBB12_40
.LBB12_39:
	move	$a0, $zero
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
.LBB12_40:
	st.d	$s2, $a1, 8
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $a1, 20
.LBB12_41:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i327.preheader
	move	$a0, $s3
	.p2align	4, , 16
.LBB12_42:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i327
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s2, 4
	st.w	$a1, $s2, 0
	move	$s2, $a2
	bnez	$a1, .LBB12_42
# %bb.43:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	st.w	$s1, $a0, 16
.LBB12_44:                              # %_ZN11CStringBaseIwEaSERKS0_.exit
	beqz	$s3, .LBB12_46
# %bb.45:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_46:                              # %_ZN11CStringBaseIwED2Ev.exit334
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
.LBB12_47:                              # %_ZN11CStringBaseIwED2Ev.exit334
	ld.d	$a0, $sp, 488
	beqz	$a0, .LBB12_49
# %bb.48:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_49:                              # %_ZN11CStringBaseIwED2Ev.exit.i335
	ld.d	$a0, $sp, 472
	beqz	$a0, .LBB12_51
# %bb.50:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_51:                              # %_ZN9CPropertyD2Ev.exit
	beqz	$s5, .LBB12_425
.LBB12_52:
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 624
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 640
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $sp, 616
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	vst	$vr0, $sp, 656
	pcalau12i	$a0, %pc_hi20(.LCPI12_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_8)
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$a0, $sp, 648
	vst	$vr0, $sp, 672
	st.b	$zero, $sp, 688
	addi.d	$s5, $s0, 80
.Ltmp163:
	addi.d	$a0, $sp, 600
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp164:
# %bb.53:
	ld.w	$a0, $s0, 88
	beqz	$a0, .LBB12_60
# %bb.54:
	st.d	$zero, $sp, 520
.Ltmp166:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp167:
# %bb.55:
	st.d	$a0, $sp, 512
	ld.d	$a1, $sp, 600
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 524
.Ltmp169:
	addi.d	$a0, $sp, 472
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw)
	jirl	$ra, $ra, 0
.Ltmp170:
# %bb.56:
	beqz	$a0, .LBB12_61
# %bb.57:
	ld.bu	$a0, $sp, 504
	andi	$a0, $a0, 16
	bnez	$a0, .LBB12_435
# %bb.58:
	ld.w	$a0, $s0, 300
	blez	$a0, .LBB12_395
# %bb.59:
	move	$s1, $zero
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 1
	ld.d	$a0, $sp, 512
	bnez	$a0, .LBB12_62
	b	.LBB12_63
.LBB12_60:
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 5
	b	.LBB12_64
.LBB12_61:
	ori	$s1, $zero, 1
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 5
	ld.d	$a0, $sp, 512
	beqz	$a0, .LBB12_63
.LBB12_62:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_63:                              # %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit
	beqz	$s1, .LBB12_422
.LBB12_64:
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $sp, 480
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 496
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a1, $sp, 472
	vst	$vr0, $sp, 512
	ori	$a1, $zero, 4
	st.d	$a1, $sp, 528
	pcalau12i	$a2, %pc_hi20(_ZTV13CRecordVectorIiE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV13CRecordVectorIiE+16)
	st.d	$a2, $sp, 504
	vst	$vr0, $sp, 544
	st.d	$a1, $sp, 560
	st.d	$a2, $sp, 536
	vst	$vr0, $sp, 576
	ld.bu	$a1, $s0, 225
	st.d	$a0, $sp, 592
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI8CDirItemE+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTV13CObjectVectorI8CDirItemE+16)
	st.d	$a2, $sp, 568
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	beqz	$a1, .LBB12_77
# %bb.65:
	st.d	$zero, $sp, 752
.Ltmp199:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp200:
# %bb.66:
	addi.d	$a2, $sp, 744
	st.d	$a0, $sp, 744
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 756
	addi.w	$s1, $zero, -1
	addi.d	$s4, $s0, 232
	st.d	$s1, $sp, 764
	beq	$s4, $a2, .LBB12_73
# %bb.67:
	ld.w	$a2, $s0, 240
	st.w	$zero, $sp, 752
	addi.w	$s6, $a2, 1
	st.w	$zero, $a0, 0
	beq	$s6, $a1, .LBB12_70
# %bb.68:
	move	$s2, $a0
	slti	$a0, $a2, -1
	slli.d	$a1, $s6, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
.Ltmp202:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp203:
# %bb.69:
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 752
	st.d	$s3, $sp, 744
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	st.w	$s6, $sp, 756
	move	$a0, $s3
.LBB12_70:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i342
	ld.d	$a1, $s4, 0
	.p2align	4, , 16
.LBB12_71:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB12_71
# %bb.72:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i346
	ld.w	$a0, $s0, 240
	st.w	$a0, $sp, 752
.LBB12_73:                              # %_ZN11CStringBaseIwEaSERKS0_.exit350
	st.d	$s1, $sp, 712
	st.w	$zero, $sp, 760
	addi.d	$a0, $sp, 736
.Ltmp204:
	pcaddu18i	$ra, %call36(_ZN8NWindows5NTime17GetCurUtcFileTimeER9_FILETIME)
	jirl	$ra, $ra, 0
.Ltmp205:
# %bb.74:
	ld.d	$a0, $sp, 736
	st.d	$a0, $sp, 728
	st.d	$a0, $sp, 720
.Ltmp206:
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp207:
# %bb.75:                               # %.noexc351
	move	$s3, $a0
	xvld	$xr0, $sp, 712
	ld.w	$s2, $sp, 752
	xvst	$xr0, $a0, 0
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s4, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s4, $a0
	vst	$vr0, $s3, 32
	beqz	$a0, .LBB12_100
# %bb.76:
	move	$a0, $zero
	b	.LBB12_102
.LBB12_77:                              # %.preheader432
	ld.w	$a0, $s0, 52
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB12_107
# %bb.78:                               # %.lr.ph
	ld.d	$a1, $s0, 56
	move	$a3, $zero
	ori	$a2, $zero, 2
	b	.LBB12_80
	.p2align	4, , 16
.LBB12_79:                              # %_ZNK14NUpdateArchive10CActionSet12NeedScanningEv.exit
                                        #   in Loop: Header=BB12_80 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB12_87
.LBB12_80:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	ld.w	$a6, $a5, 136
	move	$a4, $a3
	ori	$a3, $zero, 1
	beq	$a6, $a2, .LBB12_79
# %bb.81:                               #   in Loop: Header=BB12_80 Depth=1
	ld.w	$a6, $a5, 140
	beq	$a6, $a2, .LBB12_79
# %bb.82:                               #   in Loop: Header=BB12_80 Depth=1
	ld.w	$a7, $a5, 144
	beq	$a7, $a2, .LBB12_79
# %bb.83:                               #   in Loop: Header=BB12_80 Depth=1
	ld.w	$t0, $a5, 148
	beq	$t0, $a2, .LBB12_79
# %bb.84:                               #   in Loop: Header=BB12_80 Depth=1
	ld.w	$t1, $a5, 152
	beq	$t1, $a2, .LBB12_79
# %bb.85:                               #   in Loop: Header=BB12_80 Depth=1
	ld.w	$t2, $a5, 156
	beq	$t2, $a2, .LBB12_79
# %bb.86:                               #   in Loop: Header=BB12_80 Depth=1
	ld.w	$a3, $a5, 160
	or	$a3, $a6, $a3
	or	$a3, $a3, $a7
	or	$a3, $a3, $t0
	or	$a3, $a3, $t1
	or	$a3, $a3, $t2
	sltu	$a3, $zero, $a3
	or	$a3, $a3, $a4
	b	.LBB12_79
.LBB12_87:                              # %._crit_edge
	andi	$a0, $a3, 1
	beqz	$a0, .LBB12_107
# %bb.88:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTV26CEnumDirItemUpdateCallback+16)
	ld.d	$a2, $a2, 96
	addi.d	$a1, $a1, %pc_lo12(_ZTV26CEnumDirItemUpdateCallback+16)
	st.d	$a1, $sp, 440
	st.d	$a0, $sp, 448
.Ltmp185:
	jirl	$ra, $a2, 0
.Ltmp186:
# %bb.89:
	move	$s3, $a0
	bnez	$a0, .LBB12_419
# %bb.90:
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $sp, 720
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 736
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $sp, 712
	vst	$vr0, $sp, 800
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 816
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a0, $sp, 792
.Ltmp188:
	addi.d	$a1, $sp, 472
	addi.d	$a2, $sp, 440
	addi.d	$a3, $sp, 712
	addi.d	$a4, $sp, 792
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Z14EnumerateItemsRKN9NWildcard7CCensorER9CDirItemsP20IEnumDirItemCallbackR13CObjectVectorI11CStringBaseIwEER13CRecordVectorIjE)
	jirl	$ra, $ra, 0
.Ltmp189:
# %bb.91:                               # %.preheader
	move	$s6, $a0
	ld.w	$a0, $sp, 724
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB12_96
# %bb.92:                               # %.lr.ph567
	move	$s1, $zero
	move	$s2, $zero
	move	$s4, $zero
.LBB12_93:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 728
	ldx.d	$a1, $a0, $s1
	ld.d	$a2, $sp, 808
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$a1, $a1, 0
	ldx.w	$a2, $a2, $s2
	ld.d	$a3, $a3, 112
.Ltmp190:
	jirl	$ra, $a3, 0
.Ltmp191:
# %bb.94:                               #   in Loop: Header=BB12_93 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB12_426
# %bb.95:                               #   in Loop: Header=BB12_93 Depth=1
	ld.w	$a0, $sp, 724
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, 8
	blt	$s4, $a0, .LBB12_93
.LBB12_96:                              # %._crit_edge568
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 4
	beq	$s6, $a0, .LBB12_428
# %bb.97:                               # %._crit_edge568
	bnez	$s6, .LBB12_427
# %bb.98:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 120
.Ltmp193:
	jirl	$ra, $a1, 0
.Ltmp194:
# %bb.99:
	sltui	$s1, $a0, 1
	masknez	$a0, $a0, $s1
	maskeqz	$a1, $fp, $s1
	or	$s3, $a1, $a0
	b	.LBB12_429
.LBB12_100:
	addi.w	$a0, $s4, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	maskeqz	$a2, $s1, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp208:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp209:
# %bb.101:                              # %.noexc.i
	st.d	$a0, $s3, 32
	st.w	$zero, $a0, 0
	st.w	$s4, $s3, 44
.LBB12_102:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
	addi.d	$a5, $sp, 568
	ld.d	$a2, $sp, 744
	addi.d	$a1, $sp, 760
	.p2align	4, , 16
.LBB12_103:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a0, 4
	st.w	$a3, $a0, 0
	move	$a0, $a4
	bnez	$a3, .LBB12_103
# %bb.104:
	ld.d	$a0, $a1, 0
	ld.w	$a1, $a1, 8
	st.w	$s2, $s3, 40
	st.d	$a0, $s3, 48
	st.w	$a1, $s3, 56
.Ltmp211:
	move	$a0, $a5
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp212:
# %bb.105:
	ld.w	$a1, $sp, 580
	ld.d	$a0, $sp, 584
	slli.d	$a2, $a1, 3
	stx.d	$s3, $a0, $a2
	ld.d	$a0, $sp, 744
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 580
	beqz	$a0, .LBB12_107
# %bb.106:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_107:                             # %.thread400
	move	$s7, $zero
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $sp, 448
	ld.bu	$a0, $s0, 248
	ld.bu	$a1, $sp, 688
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ori	$a1, $zero, 8
	st.d	$a1, $sp, 464
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a1, $sp, 440
	bnez	$a0, .LBB12_115
# %bb.108:                              # %.thread400
	ld.b	$a0, $s0, 72
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_115
# %bb.109:
	ld.d	$a0, $s0, 56
	ld.d	$s1, $a0, 0
	addi.d	$a0, $s1, 16
.Ltmp214:
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN12CArchivePathaSERKS_)
	jirl	$ra, $ra, 0
.Ltmp215:
# %bb.110:
	ld.w	$a0, $s0, 280
	sltu	$a1, $zero, $a0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	or	$a1, $a2, $a1
	ori	$a2, $zero, 1
	move	$s7, $zero
	bne	$a1, $a2, .LBB12_115
# %bb.111:
	ld.w	$a1, $s0, 300
	bnez	$a1, .LBB12_115
# %bb.112:
	ori	$s7, $zero, 1
	st.b	$s7, $s1, 96
	beqz	$a0, .LBB12_115
# %bb.113:
	addi.d	$a1, $s0, 272
	addi.d	$s2, $s1, 104
.Ltmp216:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp217:
# %bb.114:
.Ltmp218:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile5NName22NormalizeDirPathPrefixER11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp219:
.LBB12_115:
	ld.w	$a0, $s0, 52
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB12_144
# %bb.116:                              # %.lr.ph573
	move	$s6, $zero
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI12_9)
	xvld	$xr0, $a1, %pc_lo12(.LCPI12_9)
	xvst	$xr0, $sp, 272                  # 32-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI12_10)
	xvld	$xr0, $a1, %pc_lo12(.LCPI12_10)
	xvst	$xr0, $sp, 240                  # 32-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI12_11)
	xvld	$xr0, $a1, %pc_lo12(.LCPI12_11)
	xvst	$xr0, $sp, 208                  # 32-byte Folded Spill
	lu12i.w	$a1, -524284
	ori	$s4, $a1, 5
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	move	$s1, $fp
	b	.LBB12_120
	.p2align	4, , 16
.LBB12_117:                             #   in Loop: Header=BB12_120 Depth=1
	bnez	$s3, .LBB12_394
# %bb.118:                              # %..thread406_crit_edge
                                        #   in Loop: Header=BB12_120 Depth=1
	ld.w	$a0, $s0, 52
.LBB12_119:                             # %.thread406
                                        #   in Loop: Header=BB12_120 Depth=1
	addi.d	$s6, $s6, 1
	bge	$s6, $a0, .LBB12_145
.LBB12_120:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_140 Depth 2
	sltui	$a1, $s6, 1
	and	$a1, $s7, $a1
	bnez	$a1, .LBB12_119
# %bb.121:                              #   in Loop: Header=BB12_120 Depth=1
	ld.b	$a1, $s0, 248
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_119
# %bb.122:                              #   in Loop: Header=BB12_120 Depth=1
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 56
	slli.d	$a1, $s6, 3
	ldx.d	$a0, $a0, $a1
	addi.d	$a1, $a0, 16
.Ltmp221:
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp222:
# %bb.123:                              #   in Loop: Header=BB12_120 Depth=1
	ld.d	$a0, $sp, 712
.Ltmp224:
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile5NFind18DoesFileOrDirExistEPKw)
	jirl	$ra, $ra, 0
.Ltmp225:
# %bb.124:                              #   in Loop: Header=BB12_120 Depth=1
	move	$s3, $a0
	beqz	$a0, .LBB12_142
# %bb.125:                              #   in Loop: Header=BB12_120 Depth=1
	ld.d	$s2, $fp, 40
	st.w	$zero, $fp, 0
	st.w	$zero, $fp, 48
	st.w	$zero, $s2, 0
	move	$a0, $fp
	ld.w	$s1, $fp, 52
	ori	$a1, $zero, 24
	bne	$s1, $a1, .LBB12_127
# %bb.126:                              #   in Loop: Header=BB12_120 Depth=1
	move	$a1, $a0
	b	.LBB12_132
.LBB12_127:                             #   in Loop: Header=BB12_120 Depth=1
.Ltmp226:
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp227:
# %bb.128:                              # %.noexc366
                                        #   in Loop: Header=BB12_120 Depth=1
	move	$s5, $a0
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB12_130
# %bb.129:                              # %._crit_edge.thread.i.i364
                                        #   in Loop: Header=BB12_120 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.w	$a0, $fp, 48
	b	.LBB12_131
.LBB12_130:                             #   in Loop: Header=BB12_120 Depth=1
	move	$a0, $zero
	move	$a1, $fp
.LBB12_131:                             #   in Loop: Header=BB12_120 Depth=1
	st.d	$s5, $a1, 40
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s5, $a0
	ori	$a0, $zero, 24
	st.w	$a0, $a1, 52
	move	$s2, $s5
.LBB12_132:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i359
                                        #   in Loop: Header=BB12_120 Depth=1
	xvld	$xr0, $sp, 272                  # 32-byte Folded Reload
	xvst	$xr0, $s2, 0
	xvld	$xr0, $sp, 240                  # 32-byte Folded Reload
	xvst	$xr0, $s2, 32
	xvld	$xr0, $sp, 208                  # 32-byte Folded Reload
	xvst	$xr0, $s2, 64
	ori	$a0, $zero, 23
	st.w	$a0, $a1, 48
	move	$s1, $s4
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 712
	beq	$a2, $a0, .LBB12_142
# %bb.133:                              #   in Loop: Header=BB12_120 Depth=1
	ld.d	$s2, $a1, 8
	st.w	$zero, $a1, 16
	st.w	$zero, $s2, 0
	ld.w	$a0, $sp, 720
	ld.w	$s8, $a1, 20
	addi.w	$s1, $a0, 1
	beq	$s1, $s8, .LBB12_139
# %bb.134:                              #   in Loop: Header=BB12_120 Depth=1
	slti	$a0, $a0, -1
	slli.d	$a1, $s1, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp228:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp229:
# %bb.135:                              # %.noexc375
                                        #   in Loop: Header=BB12_120 Depth=1
	move	$s5, $a0
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB12_137
# %bb.136:                              # %._crit_edge.thread.i.i373
                                        #   in Loop: Header=BB12_120 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	b	.LBB12_138
.LBB12_137:                             #   in Loop: Header=BB12_120 Depth=1
	move	$a0, $zero
.LBB12_138:                             #   in Loop: Header=BB12_120 Depth=1
	st.d	$s5, $fp, 8
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s5, $a0
	st.w	$s1, $fp, 20
	move	$s2, $s5
.LBB12_139:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i368
                                        #   in Loop: Header=BB12_120 Depth=1
	ld.d	$a0, $sp, 712
	.p2align	4, , 16
.LBB12_140:                             #   Parent Loop BB12_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s2, 4
	st.w	$a1, $s2, 0
	move	$s2, $a2
	bnez	$a1, .LBB12_140
# %bb.141:                              # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i372
                                        #   in Loop: Header=BB12_120 Depth=1
	ld.w	$a0, $sp, 720
	st.w	$a0, $fp, 16
	move	$s1, $s4
.LBB12_142:                             # %_ZN11CStringBaseIwEaSERKS0_.exit376
                                        #   in Loop: Header=BB12_120 Depth=1
	ld.d	$a0, $sp, 712
	beqz	$a0, .LBB12_117
# %bb.143:                              #   in Loop: Header=BB12_120 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_117
.LBB12_144:
	move	$s1, $fp
.LBB12_145:                             # %._crit_edge574
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $sp, 416
	ori	$a1, $zero, 8
	st.d	$a1, $sp, 432
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorI8CArcItemE+16)
	addi.d	$a2, $a1, %pc_lo12(_ZTV13CObjectVectorI8CArcItemE+16)
	st.d	$a2, $sp, 408
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	beqz	$a1, .LBB12_149
# %bb.146:
	ld.w	$a0, $sp, 628
	ld.d	$a1, $sp, 632
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, -8
.Ltmp231:
	addi.d	$a2, $sp, 408
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE)
	jirl	$ra, $ra, 0
.Ltmp232:
# %bb.147:
	move	$s3, $a0
	bnez	$a0, .LBB12_414
# %bb.148:
	ld.w	$a0, $sp, 628
	ld.d	$a1, $sp, 632
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	ld.d	$s2, $a0, 0
	ld.w	$a0, $s0, 52
	b	.LBB12_150
.LBB12_149:
	move	$s2, $zero
.LBB12_150:
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB12_380
# %bb.151:                              # %.lr.ph.i
	move	$s1, $zero
	pcalau12i	$a0, %got_pc_hi20(_ZTV14COutFileStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV14COutFileStream)
	addi.d	$a1, $s0, 208
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZTV17CStdOutFileStream)
	ld.d	$a2, $a0, %got_pc_lo12(_ZTV17CStdOutFileStream)
	pcalau12i	$a0, %got_pc_hi20(_ZTV13CInFileStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV13CInFileStream)
	addi.d	$a1, $a1, 40
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $a2, 24
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a1, $s0, 8
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	sltu	$a0, $zero, $s2
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorI12CUpdatePair2E+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorI12CUpdatePair2E+16)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$a0, $zero, 108
	lu32i.d	$a0, 101
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 192                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB12_152:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_182 Depth 2
                                        #     Child Loop BB12_185 Depth 2
                                        #     Child Loop BB12_214 Depth 2
                                        #     Child Loop BB12_271 Depth 2
                                        #     Child Loop BB12_286 Depth 2
                                        #     Child Loop BB12_227 Depth 2
                                        #       Child Loop BB12_242 Depth 3
                                        #       Child Loop BB12_246 Depth 3
                                        #       Child Loop BB12_256 Depth 3
                                        #     Child Loop BB12_331 Depth 2
                                        #     Child Loop BB12_280 Depth 2
                                        #     Child Loop BB12_354 Depth 2
	ld.d	$a0, $s0, 56
	slli.d	$a1, $s1, 3
	ldx.d	$s5, $a0, $a1
	ld.bu	$a0, $s0, 248
	addi.d	$a2, $s5, 16
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB12_155
# %bb.153:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s4, $a2
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 128
.Ltmp239:
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
.Ltmp240:
# %bb.154:                              # %.noexc386
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	beqz	$a0, .LBB12_160
	b	.LBB12_414
.LBB12_155:                             #   in Loop: Header=BB12_152 Depth=1
.Ltmp234:
	addi.d	$a0, $sp, 712
	move	$s4, $a2
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp235:
# %bb.156:                              # %.noexc387
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.b	$a2, $s0, 72
	ld.d	$a1, $sp, 712
	ld.d	$a3, $a3, 128
	sltui	$a4, $s1, 1
	and	$a2, $a4, $a2
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	and	$a2, $a4, $a2
.Ltmp236:
	jirl	$ra, $a3, 0
.Ltmp237:
# %bb.157:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	ld.d	$a0, $sp, 712
	beqz	$a0, .LBB12_159
# %bb.158:                              #   in Loop: Header=BB12_152 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_159:                             # %_ZN11CStringBaseIwED2Ev.exit.i380
                                        #   in Loop: Header=BB12_152 Depth=1
	bnez	$s3, .LBB12_414
.LBB12_160:                             #   in Loop: Header=BB12_152 Depth=1
	ld.bu	$s6, $s0, 224
	ld.bu	$s8, $s0, 225
	ld.bu	$fp, $s0, 248
	ld.bu	$s3, $s0, 200
	st.d	$zero, $sp, 832
	beqz	$s2, .LBB12_166
# %bb.161:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 8
.Ltmp241:
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp242:
# %bb.162:                              # %_ZN9CMyComPtrI10IInArchiveEC2EPS0_.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a3, $a0, 0
.Ltmp244:
	pcalau12i	$a0, %got_pc_hi20(IID_IOutArchive)
	ld.d	$a1, $a0, %got_pc_lo12(IID_IOutArchive)
	addi.d	$a2, $sp, 832
	move	$a0, $s2
	jirl	$ra, $a3, 0
.Ltmp245:
# %bb.163:                              # %_ZNK9CMyComPtrI10IInArchiveE14QueryInterfaceI11IOutArchiveEEiRK4GUIDPPT_.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	bnez	$a0, .LBB12_434
# %bb.164:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 16
.Ltmp253:
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp254:
# %bb.165:                              # %_ZN9CMyComPtrI10IInArchiveED2Ev.exit244thread-pre-split.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 832
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	bnez	$a0, .LBB12_172
	b	.LBB12_433
.LBB12_166:                             #   in Loop: Header=BB12_152 Depth=1
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 32
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 16
.Ltmp256:
	jirl	$ra, $a0, 0
.Ltmp257:
# %bb.167:                              # %.noexc245.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	beqz	$a0, .LBB12_169
# %bb.168:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp258:
	move	$s2, $a0
	jirl	$ra, $a1, 0
	move	$a0, $s2
.Ltmp259:
.LBB12_169:                             # %.noexc246.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a1, $sp, 832
	beqz	$a1, .LBB12_171
# %bb.170:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 16
.Ltmp260:
	move	$s2, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	move	$a0, $s2
.Ltmp261:
.LBB12_171:                             #   in Loop: Header=BB12_152 Depth=1
	st.d	$a0, $sp, 832
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_433
.LBB12_172:                             #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 48
.Ltmp263:
	addi.d	$a1, $sp, 828
	jirl	$ra, $a2, 0
.Ltmp264:
# %bb.173:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB12_373
# %bb.174:                              #   in Loop: Header=BB12_152 Depth=1
	ld.w	$a2, $sp, 828
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ori	$a0, $zero, 2
	bltu	$a0, $a2, .LBB12_373
# %bb.175:                              #   in Loop: Header=BB12_152 Depth=1
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 800
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 816
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $sp, 792
	addi.d	$a0, $sp, 720
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 736
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorI11CUpdatePairE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorI11CUpdatePairE+16)
	st.d	$a0, $sp, 712
.Ltmp266:
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 408
	addi.d	$a3, $sp, 712
	pcaddu18i	$ra, %call36(_Z21GetUpdatePairInfoListRK9CDirItemsRK13CObjectVectorI8CArcItemEN13NFileTimeType5EEnumER13CRecordVectorI11CUpdatePairE)
	jirl	$ra, $ra, 0
.Ltmp267:
# %bb.176:                              #   in Loop: Header=BB12_152 Depth=1
.Ltmp268:
	addi.d	$a1, $s5, 136
	addi.d	$a0, $sp, 712
	addi.d	$a2, $sp, 792
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_Z13UpdateProduceRK13CRecordVectorI11CUpdatePairERKN14NUpdateArchive10CActionSetERS_I12CUpdatePair2EP22IUpdateProduceCallback)
	jirl	$ra, $ra, 0
.Ltmp269:
# %bb.177:                              #   in Loop: Header=BB12_152 Depth=1
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 804
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB12_180
# %bb.178:                              # %.lr.ph.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a1, $sp, 808
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB12_181
# %bb.179:                              #   in Loop: Header=BB12_152 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB12_184
.LBB12_180:                             #   in Loop: Header=BB12_152 Depth=1
	move	$a1, $zero
	b	.LBB12_187
.LBB12_181:                             # %vector.ph
                                        #   in Loop: Header=BB12_152 Depth=1
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 64
	move	$a4, $a2
	vld	$vr4, $sp, 320                  # 16-byte Folded Reload
	vori.b	$vr0, $vr4, 0
	vori.b	$vr1, $vr4, 0
	.p2align	4, , 16
.LBB12_182:                             # %vector.body
                                        #   Parent Loop BB12_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a5, $a3, -16
	ld.b	$a6, $a3, -32
	ld.b	$a7, $a3, -48
	ld.b	$t0, $a3, -64
	st.b	$a5, $sp, 387
	st.b	$a6, $sp, 386
	st.b	$a7, $sp, 385
	st.b	$t0, $sp, 384
	vld	$vr2, $sp, 384
	ld.b	$a5, $a3, 48
	ld.b	$a6, $a3, 32
	ld.b	$a7, $a3, 16
	ld.b	$t0, $a3, 0
	st.b	$a5, $sp, 371
	st.b	$a6, $sp, 370
	st.b	$a7, $sp, 369
	st.b	$t0, $sp, 368
	vld	$vr3, $sp, 368
	vilvl.b	$vr2, $vr4, $vr2
	vilvl.h	$vr2, $vr4, $vr2
	vilvl.b	$vr3, $vr4, $vr3
	vilvl.h	$vr3, $vr4, $vr3
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 128
	bnez	$a4, .LBB12_182
# %bb.183:                              # %middle.block
                                        #   in Loop: Header=BB12_152 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	beq	$a2, $a0, .LBB12_186
.LBB12_184:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB12_152 Depth=1
	sub.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $a1, 4
	.p2align	4, , 16
.LBB12_185:                             # %scalar.ph
                                        #   Parent Loop BB12_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 0
	add.w	$a3, $a3, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB12_185
.LBB12_186:                             # %._crit_edge.loopexit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	bstrpick.d	$a1, $a3, 31, 0
.LBB12_187:                             # %._crit_edge.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 40
.Ltmp271:
	jirl	$ra, $a2, 0
.Ltmp272:
# %bb.188:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB12_372
# %bb.189:                              #   in Loop: Header=BB12_152 Depth=1
.Ltmp274:
	ori	$a0, $zero, 160
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp275:
# %bb.190:                              #   in Loop: Header=BB12_152 Depth=1
.Ltmp277:
	move	$s3, $a0
	pcaddu18i	$ra, %call36(_ZN22CArchiveUpdateCallbackC1Ev)
	jirl	$ra, $ra, 0
.Ltmp278:
# %bb.191:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 8
.Ltmp280:
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp281:
# %bb.192:                              # %_ZN9CMyComPtrI22IArchiveUpdateCallbackEC2EPS0_.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	st.b	$s6, $s3, 112
	st.b	$s8, $s3, 113
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $s3, 104
	addi.d	$a0, $sp, 472
	st.d	$a0, $s3, 120
	addi.d	$a0, $sp, 408
	st.d	$a0, $s3, 128
	addi.d	$a0, $sp, 792
	st.d	$a0, $s3, 136
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	beqz	$fp, .LBB12_195
# %bb.193:                              #   in Loop: Header=BB12_152 Depth=1
	ld.w	$a0, $s0, 300
	beqz	$a0, .LBB12_220
# %bb.194:                              #   in Loop: Header=BB12_152 Depth=1
	lu12i.w	$a0, -524284
	ori	$s3, $a0, 5
	b	.LBB12_371
.LBB12_195:                             #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 720
.Ltmp283:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp284:
# %bb.196:                              #   in Loop: Header=BB12_152 Depth=1
	st.d	$a0, $sp, 712
	st.w	$zero, $a0, 0
.Ltmp286:
	addi.d	$a0, $sp, 776
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp287:
# %bb.197:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 776
.Ltmp289:
	addi.d	$a1, $sp, 712
	addi.d	$a2, $sp, 696
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi)
	jirl	$ra, $ra, 0
.Ltmp290:
# %bb.198:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s2, $a0
	ld.d	$a0, $sp, 776
	beqz	$a0, .LBB12_200
# %bb.199:                              #   in Loop: Header=BB12_152 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_200:                             # %_ZN11CStringBaseIwED2Ev.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	beqz	$s2, .LBB12_436
# %bb.201:                              #   in Loop: Header=BB12_152 Depth=1
	ld.w	$a3, $sp, 696
.Ltmp295:
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 712
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp296:
# %bb.202:                              # %_ZNK11CStringBaseIwE4LeftEi.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 776
.Ltmp298:
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory22CreateComplexDirectoryEPKw)
	jirl	$ra, $ra, 0
.Ltmp299:
# %bb.203:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 776
	beqz	$a0, .LBB12_205
# %bb.204:                              #   in Loop: Header=BB12_152 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_205:                             # %_ZN11CStringBaseIwED2Ev.exit253.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 712
	beqz	$a0, .LBB12_207
# %bb.206:                              #   in Loop: Header=BB12_152 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_207:                             # %.thread.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.w	$a0, $s0, 300
	beqz	$a0, .LBB12_222
# %bb.208:                              # %.thread358.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
.Ltmp301:
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp302:
# %bb.209:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s8, $a0
	move	$fp, $s4
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(_ZTV18COutMultiVolStream+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18COutMultiVolStream+16)
	st.d	$a0, $s8, 0
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $s8, 48
	ori	$a1, $zero, 8
	st.d	$a1, $s8, 64
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	st.d	$a0, $s8, 40
	addi.d	$s3, $s8, 72
	vst	$vr0, $s8, 80
	st.d	$a1, $s8, 96
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a0, $s8, 72
	vst	$vr0, $s8, 104
.Ltmp303:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp304:
# %bb.210:                              # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit295.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	st.d	$a0, $s8, 104
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s8, 116
	ori	$a0, $zero, 1
	st.w	$a0, $s8, 8
.Ltmp306:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp307:
# %bb.211:                              # %.noexc101.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.w	$s4, $s0, 300
	ld.w	$a0, $s8, 84
	add.w	$a1, $a0, $s4
.Ltmp308:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp309:
# %bb.212:                              # %.noexc102.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB12_216
# %bb.213:                              # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s2, $zero
	slli.d	$s4, $s4, 3
.LBB12_214:                             #   Parent Loop BB12_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 304
	ldx.d	$s5, $a0, $s2
.Ltmp311:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp312:
# %bb.215:                              # %.noexc103.i
                                        #   in Loop: Header=BB12_214 Depth=2
	ld.w	$a0, $s8, 84
	ld.d	$a1, $s8, 88
	slli.d	$a2, $a0, 3
	stx.d	$s5, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	st.w	$a0, $s8, 84
	bne	$s4, $s2, .LBB12_214
.LBB12_216:                             # %_ZN13CRecordVectorIyEaSERKS0_.exit.i
                                        #   in Loop: Header=BB12_152 Depth=1
.Ltmp314:
	addi.d	$a0, $sp, 776
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp315:
# %bb.217:                              #   in Loop: Header=BB12_152 Depth=1
.Ltmp317:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp318:
# %bb.218:                              # %.noexc100.i
                                        #   in Loop: Header=BB12_152 Depth=1
	st.d	$a0, $sp, 696
	ori	$a1, $zero, 46
	st.d	$a1, $a0, 0
	ld.w	$s2, $sp, 784
	ori	$a0, $zero, 1
	lu32i.d	$a0, 2
	st.d	$a0, $sp, 704
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s3, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s3, $a0
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $sp, 712
	beqz	$a0, .LBB12_268
# %bb.219:                              #   in Loop: Header=BB12_152 Depth=1
	move	$a0, $zero
	b	.LBB12_270
.LBB12_220:                             #   in Loop: Header=BB12_152 Depth=1
.Ltmp372:
	move	$s3, $s4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp373:
# %bb.221:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s8, $a0
	st.w	$zero, $a0, 8
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $s8, 0
.Ltmp374:
	move	$a0, $s8
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp375:
	move	$s4, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	b	.LBB12_294
.LBB12_222:                             # %.thread353.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
.Ltmp329:
	ori	$a0, $zero, 1112
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp330:
# %bb.223:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	st.w	$zero, $s2, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 16
	st.d	$a1, $s2, 0
	addi.d	$a0, $a0, 16
	addi.w	$a1, $zero, -1
	st.d	$a0, $s2, 16
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $a1
	lu32i.d	$a0, 0
	st.w	$a0, $s2, 24
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $s2, 32
.Ltmp331:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp332:
# %bb.224:                              #   in Loop: Header=BB12_152 Depth=1
	st.d	$a0, $s2, 32
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s2, 44
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	st.d	$a0, $s2, 16
.Ltmp334:
	move	$a0, $s2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp335:
# %bb.225:                              # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit264.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
.Ltmp336:
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp337:
# %bb.226:                              # %_ZN11CStringBaseIwEC2Ev.exit266.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s6, $a0
	st.w	$zero, $a0, 0
	ld.b	$a0, $s5, 96
	move	$s3, $zero
	addi.d	$a1, $s2, 16
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ori	$s7, $zero, 4
.LBB12_227:                             #   Parent Loop BB12_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_242 Depth 3
                                        #       Child Loop BB12_246 Depth 3
                                        #       Child Loop BB12_256 Depth 3
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_234
# %bb.228:                              #   in Loop: Header=BB12_227 Depth=2
	beqz	$s3, .LBB12_248
# %bb.229:                              #   in Loop: Header=BB12_227 Depth=2
.Ltmp345:
	addi.d	$a1, $sp, 712
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Z21ConvertUInt32ToStringjPw)
	jirl	$ra, $ra, 0
.Ltmp346:
# %bb.230:                              #   in Loop: Header=BB12_227 Depth=2
	ld.d	$s8, $s5, 120
	st.w	$zero, $s5, 128
	st.w	$zero, $s8, 0
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s5, 132
	addi.w	$a1, $a0, 1
	beq	$a1, $s2, .LBB12_245
# %bb.231:                              #   in Loop: Header=BB12_227 Depth=2
	move	$fp, $a0
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, -1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp347:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp348:
# %bb.232:                              # %.noexc268.i.i
                                        #   in Loop: Header=BB12_227 Depth=2
	move	$s4, $a0
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB12_243
# %bb.233:                              # %._crit_edge.thread.i.i.i.i
                                        #   in Loop: Header=BB12_227 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 128
	b	.LBB12_244
.LBB12_234:                             #   in Loop: Header=BB12_227 Depth=2
.Ltmp339:
	addi.d	$a0, $sp, 712
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp340:
# %bb.235:                              #   in Loop: Header=BB12_227 Depth=2
	ld.w	$a0, $sp, 720
	addi.w	$s8, $a0, 1
	st.w	$zero, $s6, 0
	bne	$s8, $s7, .LBB12_237
# %bb.236:                              #   in Loop: Header=BB12_227 Depth=2
	move	$s8, $s7
	b	.LBB12_241
.LBB12_237:                             #   in Loop: Header=BB12_227 Depth=2
	slti	$a0, $a0, -1
	slli.d	$a1, $s8, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp342:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp343:
# %bb.238:                              # %.noexc284.i.i
                                        #   in Loop: Header=BB12_227 Depth=2
	move	$s2, $a0
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB12_240
# %bb.239:                              # %._crit_edge.thread.i.i282.i.i
                                        #   in Loop: Header=BB12_227 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_240:                             #   in Loop: Header=BB12_227 Depth=2
	st.w	$zero, $s2, 0
	move	$s6, $s2
.LBB12_241:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i278.i.i
                                        #   in Loop: Header=BB12_227 Depth=2
	ld.d	$a0, $sp, 712
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_242:                             #   Parent Loop BB12_152 Depth=1
                                        #     Parent Loop BB12_227 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s6, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_242
	b	.LBB12_257
.LBB12_243:                             #   in Loop: Header=BB12_227 Depth=2
	move	$a1, $zero
.LBB12_244:                             #   in Loop: Header=BB12_227 Depth=2
	move	$a0, $fp
	st.d	$s4, $s5, 120
	slli.d	$a1, $a1, 2
	stx.w	$zero, $s4, $a1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a1, $s5, 132
	move	$s8, $s4
.LBB12_245:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382.preheader
                                        #   in Loop: Header=BB12_227 Depth=2
	move	$a3, $zero
	addi.d	$a2, $sp, 712
	.p2align	4, , 16
.LBB12_246:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382
                                        #   Parent Loop BB12_152 Depth=1
                                        #     Parent Loop BB12_227 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a1, $a3, $a2
	stx.w	$a1, $s8, $a3
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB12_246
# %bb.247:                              #   in Loop: Header=BB12_227 Depth=2
	st.w	$a0, $s5, 128
.LBB12_248:                             #   in Loop: Header=BB12_227 Depth=2
.Ltmp350:
	addi.d	$a0, $sp, 712
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath11GetTempPathEv)
	jirl	$ra, $ra, 0
.Ltmp351:
# %bb.249:                              #   in Loop: Header=BB12_227 Depth=2
	ld.w	$a0, $sp, 720
	addi.w	$s8, $a0, 1
	st.w	$zero, $s6, 0
	bne	$s8, $s7, .LBB12_251
# %bb.250:                              #   in Loop: Header=BB12_227 Depth=2
	move	$s8, $s7
	b	.LBB12_255
.LBB12_251:                             #   in Loop: Header=BB12_227 Depth=2
	slti	$a0, $a0, -1
	slli.d	$a1, $s8, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp353:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp354:
# %bb.252:                              # %.noexc275.i.i
                                        #   in Loop: Header=BB12_227 Depth=2
	move	$s2, $a0
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB12_254
# %bb.253:                              # %._crit_edge.thread.i.i273.i.i
                                        #   in Loop: Header=BB12_227 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_254:                             #   in Loop: Header=BB12_227 Depth=2
	st.w	$zero, $s2, 0
	move	$s6, $s2
.LBB12_255:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i269.i.i
                                        #   in Loop: Header=BB12_227 Depth=2
	ld.d	$a0, $sp, 712
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_256:                             #   Parent Loop BB12_152 Depth=1
                                        #     Parent Loop BB12_227 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s6, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_256
.LBB12_257:                             #   in Loop: Header=BB12_227 Depth=2
	ld.w	$s4, $sp, 720
	beqz	$a0, .LBB12_259
# %bb.258:                              #   in Loop: Header=BB12_227 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_259:                             #   in Loop: Header=BB12_227 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$zero, $a0, 1104
.Ltmp356:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO8COutFile6CreateEPKwb)
	jirl	$ra, $ra, 0
.Ltmp357:
# %bb.260:                              # %_ZN14COutFileStream6CreateEPKwb.exit.i.i
                                        #   in Loop: Header=BB12_227 Depth=2
	bnez	$a0, .LBB12_277
# %bb.261:                              #   in Loop: Header=BB12_227 Depth=2
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 17
	bne	$a1, $a0, .LBB12_264
# %bb.262:                              #   in Loop: Header=BB12_227 Depth=2
	ld.b	$a0, $s5, 96
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_264
# %bb.263:                              #   in Loop: Header=BB12_227 Depth=2
	addi.w	$s3, $s3, 1
	ori	$a0, $zero, 1
	move	$s7, $s8
	lu12i.w	$a2, 16
	bne	$s3, $a2, .LBB12_227
.LBB12_264:                             #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s2, $a0, 8
	st.w	$a1, $a0, 0
	st.w	$zero, $a0, 16
	st.w	$zero, $s2, 0
	ld.w	$s7, $a0, 20
	addi.w	$s5, $s4, 1
	beq	$s5, $s7, .LBB12_330
# %bb.265:                              #   in Loop: Header=BB12_152 Depth=1
	slti	$a0, $s4, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp359:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp360:
# %bb.266:                              # %.noexc123.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB12_328
# %bb.267:                              # %._crit_edge.thread.i.i121.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 16
	b	.LBB12_329
.LBB12_268:                             #   in Loop: Header=BB12_152 Depth=1
	addi.w	$a0, $s3, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp320:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp321:
# %bb.269:                              # %.noexc93.i
                                        #   in Loop: Header=BB12_152 Depth=1
	st.d	$a0, $sp, 712
	st.w	$zero, $a0, 0
	st.w	$s3, $sp, 724
.LBB12_270:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i88.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a1, $sp, 776
	move	$s3, $fp
	.p2align	4, , 16
.LBB12_271:                             #   Parent Loop BB12_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB12_271
# %bb.272:                              # %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	st.w	$s2, $sp, 720
.Ltmp323:
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 696
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp324:
# %bb.273:                              # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$s2, $s8, 104
	st.w	$zero, $s8, 112
	st.w	$zero, $s2, 0
	ld.w	$a0, $sp, 720
	ld.w	$s5, $s8, 116
	addi.w	$s4, $a0, 1
	beq	$s4, $s5, .LBB12_285
# %bb.274:                              #   in Loop: Header=BB12_152 Depth=1
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp326:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp327:
# %bb.275:                              # %.noexc86.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB12_283
# %bb.276:                              # %._crit_edge.thread.i.i84.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 112
	b	.LBB12_284
.LBB12_277:                             #   in Loop: Header=BB12_152 Depth=1
.Ltmp364:
	ori	$a0, $zero, 16
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp365:
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
# %bb.278:                              # %.noexc129.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	addi.w	$s2, $s4, 1
	slti	$a0, $s4, -1
	slli.d	$a1, $s2, 2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
.Ltmp366:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp367:
# %bb.279:                              # %.noexc.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$a1, $zero
	st.d	$a0, $s3, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $s3, 12
.LBB12_280:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i125.i
                                        #   Parent Loop BB12_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s6, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_280
# %bb.281:                              #   in Loop: Header=BB12_152 Depth=1
	st.w	$s4, $s3, 8
.Ltmp369:
	addi.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp370:
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
# %bb.282:                              # %_ZN11CStringBaseIwED2Ev.exit289.i.thread.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.w	$a0, $sp, 452
	ld.d	$a1, $sp, 456
	slli.d	$a2, $a0, 3
	stx.d	$s3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 452
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	move	$s4, $s8
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	b	.LBB12_294
.LBB12_283:                             #   in Loop: Header=BB12_152 Depth=1
	move	$a0, $zero
.LBB12_284:                             #   in Loop: Header=BB12_152 Depth=1
	st.d	$s3, $s8, 104
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	st.w	$s4, $s8, 116
	move	$s2, $s3
	move	$s3, $fp
.LBB12_285:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i79.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 712
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_286:                             #   Parent Loop BB12_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_286
# %bb.287:                              #   in Loop: Header=BB12_152 Depth=1
	ld.w	$a1, $sp, 720
	st.w	$a1, $s8, 112
	beqz	$a0, .LBB12_289
# %bb.288:                              #   in Loop: Header=BB12_152 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_289:                             # %_ZN11CStringBaseIwED2Ev.exit296.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 696
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_291
# %bb.290:                              #   in Loop: Header=BB12_152 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_291:                             # %_ZN11CStringBaseIwED2Ev.exit297.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 776
	beqz	$a0, .LBB12_293
# %bb.292:                              #   in Loop: Header=BB12_152 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_293:                             # %_ZN11CStringBaseIwED2Ev.exit298.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s4, $zero
	addi.d	$a0, $sp, 440
	st.d	$a0, $s8, 120
	st.d	$zero, $s8, 12
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $s8, 20
	st.w	$zero, $s8, 36
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
.LBB12_294:                             # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$fp, $s3
	ld.d	$a0, $sp, 832
.Ltmp377:
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z13SetPropertiesP8IUnknownRK13CObjectVectorI9CPropertyE)
	jirl	$ra, $ra, 0
.Ltmp378:
# %bb.295:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB12_370
# %bb.296:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_361
# %bb.297:                              #   in Loop: Header=BB12_152 Depth=1
.Ltmp380:
	st.d	$s4, $sp, 272                   # 8-byte Folded Spill
	ori	$a0, $zero, 1112
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp381:
# %bb.298:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s6, $a0
	st.w	$zero, $a0, 16
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a2, 16
	pcalau12i	$a1, %got_pc_hi20(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	st.d	$a0, $s6, 0
	addi.d	$a0, $a2, 96
	st.d	$a0, $s6, 8
	addi.d	$a0, $a1, 16
	addi.w	$s4, $zero, -1
	st.d	$a0, $s6, 24
	move	$a0, $s4
	lu32i.d	$a0, 0
	st.w	$a0, $s6, 32
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $s6, 40
.Ltmp383:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp384:
# %bb.299:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s2, $fp
	move	$s8, $s7
	st.d	$a0, $s6, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s6, 52
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows5NFile3NIO7CInFileE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows5NFile3NIO7CInFileE+16)
	st.d	$a0, $s6, 24
	st.b	$zero, $s6, 20
.Ltmp386:
	move	$a0, $s6
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp387:
# %bb.300:                              # %_ZN9CMyComPtrI9IInStreamEC2EPS0_.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
.Ltmp389:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN13CInFileStream4OpenEPKw)
	jirl	$ra, $ra, 0
.Ltmp390:
# %bb.301:                              #   in Loop: Header=BB12_152 Depth=1
	beqz	$a0, .LBB12_310
# %bb.302:                              #   in Loop: Header=BB12_152 Depth=1
	ld.w	$a0, $s0, 300
	beqz	$a0, .LBB12_315
# %bb.303:                              #   in Loop: Header=BB12_152 Depth=1
.Ltmp396:
	ori	$a0, $zero, 1112
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp397:
	ld.d	$s4, $sp, 272                   # 8-byte Folded Reload
# %bb.304:                              #   in Loop: Header=BB12_152 Depth=1
.Ltmp398:
	move	$s5, $a0
	move	$s7, $s8
	pcaddu18i	$ra, %call36(_ZN14COutFileStreamC2Ev)
	jirl	$ra, $ra, 0
.Ltmp399:
# %bb.305:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 8
.Ltmp401:
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp402:
# %bb.306:                              # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit312.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
.Ltmp403:
	addi.d	$a0, $sp, 712
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp404:
# %bb.307:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a1, $sp, 712
	st.d	$zero, $s5, 1104
	addi.d	$a0, $s5, 16
.Ltmp406:
	move	$a2, $zero
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO8COutFile6CreateEPKwb)
	jirl	$ra, $ra, 0
.Ltmp407:
# %bb.308:                              # %_ZN14COutFileStream6CreateEPKwb.exit314.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s2, $a0
	beqz	$a0, .LBB12_317
# %bb.309:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $zero
	b	.LBB12_320
.LBB12_310:                             #   in Loop: Header=BB12_152 Depth=1
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s2, $a1, 40
	st.w	$a0, $a1, 0
	st.w	$zero, $a1, 48
	st.w	$zero, $s2, 0
	ld.w	$s5, $a1, 52
	ori	$a0, $zero, 29
	bne	$s5, $a0, .LBB12_312
# %bb.311:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	b	.LBB12_345
.LBB12_312:                             #   in Loop: Header=BB12_152 Depth=1
.Ltmp391:
	ori	$a0, $zero, 116
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp392:
# %bb.313:                              # %.noexc77.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB12_343
# %bb.314:                              # %._crit_edge.thread.i.i75.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 48
	b	.LBB12_344
.LBB12_315:                             #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp413:
	jirl	$ra, $a1, 0
.Ltmp414:
# %bb.316:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s7, $s8
	move	$s2, $zero
	move	$s4, $zero
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	move	$s5, $s8
	b	.LBB12_324
.LBB12_317:                             #   in Loop: Header=BB12_152 Depth=1
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.Ltmp408:
	addi.d	$a1, $sp, 712
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp409:
# %bb.318:                              #   in Loop: Header=BB12_152 Depth=1
.Ltmp410:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp411:
# %bb.319:                              #   in Loop: Header=BB12_152 Depth=1
	lu12i.w	$a0, -524284
	ori	$s3, $a0, 5
.LBB12_320:                             #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 712
	beqz	$a0, .LBB12_322
# %bb.321:                              #   in Loop: Header=BB12_152 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_322:                             # %_ZN11CStringBaseIwED2Ev.exit316.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	beqz	$s2, .LBB12_327
# %bb.323:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s2, $s5
	move	$s4, $s3
.LBB12_324:                             # %_ZN9CMyComPtrI20ISequentialOutStreamEaSERKS1_.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
.Ltmp416:
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN9NCompress10CopyStreamEP19ISequentialInStreamP20ISequentialOutStreamP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp417:
# %bb.325:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	beqz	$a0, .LBB12_340
# %bb.326:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s2, $zero
	b	.LBB12_357
.LBB12_327:                             #   in Loop: Header=BB12_152 Depth=1
	move	$s2, $zero
	b	.LBB12_358
.LBB12_328:                             #   in Loop: Header=BB12_152 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
.LBB12_329:                             #   in Loop: Header=BB12_152 Depth=1
	st.d	$s3, $a1, 8
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	st.w	$s5, $a1, 20
	move	$s2, $s3
.LBB12_330:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116.i.preheader
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
	move	$a0, $zero
.LBB12_331:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116.i
                                        #   Parent Loop BB12_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a1, $s6, $a0
	stx.w	$a1, $s2, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB12_331
# %bb.332:                              # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i120.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s2, $a0, 40
	st.w	$s4, $a0, 16
	st.w	$zero, $a0, 48
	st.w	$zero, $s2, 0
	ld.w	$s4, $a0, 52
	ori	$a0, $zero, 23
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	bne	$s4, $a0, .LBB12_334
# %bb.333:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	b	.LBB12_339
.LBB12_334:                             #   in Loop: Header=BB12_152 Depth=1
.Ltmp361:
	ori	$a0, $zero, 92
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp362:
# %bb.335:                              # %.noexc114.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB12_337
# %bb.336:                              # %._crit_edge.thread.i.i112.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 48
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
	b	.LBB12_338
.LBB12_337:                             #   in Loop: Header=BB12_152 Depth=1
	move	$a0, $zero
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
.LBB12_338:                             #   in Loop: Header=BB12_152 Depth=1
	st.d	$s3, $a1, 40
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	ori	$a0, $zero, 23
	st.w	$a0, $a1, 52
	move	$s2, $s3
.LBB12_339:                             # %_ZN11CStringBaseIwED2Ev.exit289.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI12_0)
	pcalau12i	$a0, %pc_hi20(.LCPI12_12)
	xvld	$xr1, $a0, %pc_lo12(.LCPI12_12)
	pcalau12i	$a0, %pc_hi20(.LCPI12_13)
	vld	$vr2, $a0, %pc_lo12(.LCPI12_13)
	xvst	$xr0, $s2, 0
	xvst	$xr1, $s2, 32
	vst	$vr2, $s2, 64
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $s2, 80
	st.w	$zero, $s2, 88
	ori	$a0, $zero, 22
	st.w	$a0, $a1, 48
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524284
	ori	$s3, $a0, 5
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	b	.LBB12_370
.LBB12_340:                             #   in Loop: Header=BB12_152 Depth=1
	beqz	$s2, .LBB12_356
# %bb.341:                              #   in Loop: Header=BB12_152 Depth=1
.Ltmp419:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN14COutFileStream5CloseEv)
	jirl	$ra, $ra, 0
.Ltmp420:
# %bb.342:                              #   in Loop: Header=BB12_152 Depth=1
	sltui	$s2, $a0, 1
	masknez	$a0, $a0, $s2
	maskeqz	$a1, $s4, $s2
	or	$s3, $a1, $a0
	b	.LBB12_357
.LBB12_343:                             #   in Loop: Header=BB12_152 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
.LBB12_344:                             #   in Loop: Header=BB12_152 Depth=1
	st.d	$s3, $a1, 40
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	ori	$a0, $zero, 29
	st.w	$a0, $a1, 52
	move	$s2, $s3
.LBB12_345:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i70.i
                                        #   in Loop: Header=BB12_152 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI12_0)
	pcalau12i	$a0, %pc_hi20(.LCPI12_12)
	xvld	$xr1, $a0, %pc_lo12(.LCPI12_12)
	pcalau12i	$a0, %pc_hi20(.LCPI12_14)
	xvld	$xr2, $a0, %pc_lo12(.LCPI12_14)
	pcalau12i	$a0, %pc_hi20(.LCPI12_15)
	vld	$vr3, $a0, %pc_lo12(.LCPI12_15)
	xvst	$xr0, $s2, 0
	xvst	$xr1, $s2, 32
	xvst	$xr2, $s2, 64
	vst	$vr3, $s2, 96
	st.w	$zero, $s2, 112
	ori	$a0, $zero, 28
	st.w	$a0, $a1, 48
	lu12i.w	$a0, -524284
	ori	$s3, $a0, 5
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB12_350
# %bb.346:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$s2, $a1, 8
	st.w	$zero, $a1, 16
	st.w	$zero, $s2, 0
	ld.w	$a0, $s0, 216
	ld.w	$s7, $a1, 20
	addi.w	$s5, $a0, 1
	beq	$s5, $s7, .LBB12_353
# %bb.347:                              #   in Loop: Header=BB12_152 Depth=1
	slti	$a0, $a0, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
.Ltmp393:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp394:
# %bb.348:                              # %.noexc.i381
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s4, $a0
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB12_351
# %bb.349:                              # %._crit_edge.thread.i.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 16
	b	.LBB12_352
.LBB12_350:                             #   in Loop: Header=BB12_152 Depth=1
	move	$s2, $zero
	move	$s7, $s8
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB12_359
.LBB12_351:                             #   in Loop: Header=BB12_152 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
.LBB12_352:                             #   in Loop: Header=BB12_152 Depth=1
	st.d	$s4, $a1, 8
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s4, $a0
	st.w	$s5, $a1, 20
	move	$s2, $s4
.LBB12_353:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s7, $s8
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 272                   # 8-byte Folded Reload
.LBB12_354:                             #   Parent Loop BB12_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s2, 4
	st.w	$a1, $s2, 0
	move	$s2, $a2
	bnez	$a1, .LBB12_354
# %bb.355:                              # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.w	$a0, $s0, 216
	move	$s2, $zero
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.w	$a0, $a1, 16
	b	.LBB12_359
.LBB12_356:                             #   in Loop: Header=BB12_152 Depth=1
	ori	$s2, $zero, 1
	move	$s3, $s4
.LBB12_357:                             #   in Loop: Header=BB12_152 Depth=1
	ld.d	$s4, $sp, 272                   # 8-byte Folded Reload
.LBB12_358:                             #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
.Ltmp428:
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp429:
.LBB12_359:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 16
.Ltmp431:
	move	$a0, $s6
	jirl	$ra, $a1, 0
.Ltmp432:
# %bb.360:                              # %_ZN9CMyComPtrI9IInStreamED2Ev.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	beqz	$s2, .LBB12_366
.LBB12_361:                             #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 832
	ld.d	$a1, $a0, 0
	ld.w	$a2, $sp, 804
	ld.d	$a4, $a1, 40
.Ltmp434:
	move	$a1, $s8
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	jirl	$ra, $a4, 0
.Ltmp435:
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
# %bb.362:                              #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
.Ltmp436:
	jirl	$ra, $a1, 0
.Ltmp437:
# %bb.363:                              #   in Loop: Header=BB12_152 Depth=1
	bnez	$s3, .LBB12_370
# %bb.364:                              #   in Loop: Header=BB12_152 Depth=1
	beqz	$s4, .LBB12_367
# %bb.365:                              #   in Loop: Header=BB12_152 Depth=1
.Ltmp438:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN14COutFileStream5CloseEv)
	jirl	$ra, $ra, 0
.Ltmp439:
	b	.LBB12_369
.LBB12_366:                             #   in Loop: Header=BB12_152 Depth=1
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	b	.LBB12_370
.LBB12_367:                             #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_379
# %bb.368:                              #   in Loop: Header=BB12_152 Depth=1
.Ltmp440:
	pcaddu18i	$ra, %call36(_ZN18COutMultiVolStream5CloseEv)
	jirl	$ra, $ra, 0
.Ltmp441:
.LBB12_369:                             #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
.LBB12_370:                             #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $a0, 16
.Ltmp449:
	move	$a0, $s8
	jirl	$ra, $a1, 0
.Ltmp450:
.LBB12_371:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit324.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp452:
	jirl	$ra, $a1, 0
.Ltmp453:
.LBB12_372:                             # %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit.i.i
                                        #   in Loop: Header=BB12_152 Depth=1
	addi.d	$a0, $sp, 792
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB12_373:                             #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 832
	beqz	$a0, .LBB12_375
# %bb.374:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp455:
	jirl	$ra, $a1, 0
.Ltmp456:
.LBB12_375:                             # %_ZL8CompressP7CCodecsRKN14NUpdateArchive10CActionSetEP10IInArchiveRK22CCompressionMethodModeR12CArchivePathRK13CObjectVectorI8CArcItemEbbbRK9CDirItemsbRK11CStringBaseIwERK13CRecordVectorIyER10CTempFilesR16CUpdateErrorInfoP17IUpdateCallbackUI.exit.i
                                        #   in Loop: Header=BB12_152 Depth=1
	bnez	$s3, .LBB12_414
# %bb.376:                              #   in Loop: Header=BB12_152 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 136
.Ltmp458:
	jirl	$ra, $a1, 0
.Ltmp459:
# %bb.377:                              # %.noexc390
                                        #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB12_414
# %bb.378:                              #   in Loop: Header=BB12_152 Depth=1
	ld.w	$a0, $s0, 52
	addi.d	$s1, $s1, 1
	blt	$s1, $a0, .LBB12_152
	b	.LBB12_380
.LBB12_379:                             #   in Loop: Header=BB12_152 Depth=1
	move	$s3, $zero
	b	.LBB12_370
.LBB12_380:                             # %.loopexit
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_384
# %bb.381:
.Ltmp461:
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink5CloseEv)
	jirl	$ra, $ra, 0
.Ltmp462:
# %bb.382:
	move	$s3, $a0
	bnez	$a0, .LBB12_414
# %bb.383:
.Ltmp464:
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink7ReleaseEv)
	jirl	$ra, $ra, 0
.Ltmp465:
.LBB12_384:
.Ltmp466:
	addi.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp467:
# %bb.385:
	beqz	$s7, .LBB12_413
# %bb.386:
	ld.d	$a0, $s0, 56
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, 16
.Ltmp469:
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath11GetTempPathEv)
	jirl	$ra, $ra, 0
.Ltmp470:
# %bb.387:
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_390
# %bb.388:
	ld.d	$a0, $sp, 600
.Ltmp472:
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw)
	jirl	$ra, $ra, 0
.Ltmp473:
# %bb.389:
	beqz	$a0, .LBB12_407
.LBB12_390:
	ld.d	$a0, $sp, 712
	ld.d	$a1, $sp, 600
.Ltmp476:
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory10MyMoveFileEPKwS3_)
	jirl	$ra, $ra, 0
.Ltmp477:
# %bb.391:
	ori	$s0, $zero, 1
	bnez	$a0, .LBB12_410
# %bb.392:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	st.w	$a0, $fp, 0
	addi.d	$a0, $fp, 40
.Ltmp478:
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp479:
# %bb.393:
	addi.d	$a0, $fp, 8
	ori	$s0, $zero, 24
.Ltmp480:
	addi.d	$a1, $sp, 712
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp481:
	b	.LBB12_408
.LBB12_394:
	move	$s3, $s1
	b	.LBB12_416
.LBB12_395:
	vld	$vr0, $sp, 320                  # 16-byte Folded Reload
	vst	$vr0, $sp, 720
	ori	$a0, $zero, 4
	ld.w	$s1, $s0, 0
	st.d	$a0, $sp, 736
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIiE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIiE+16)
	st.d	$a0, $sp, 712
	bltz	$s1, .LBB12_398
# %bb.396:
.Ltmp174:
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp175:
# %bb.397:                              # %_ZN13CRecordVectorIiE3AddEi.exit
	ld.w	$a0, $sp, 724
	ld.d	$a1, $sp, 728
	slli.d	$a0, $a0, 2
	stx.w	$s1, $a1, $a0
	ld.w	$a0, $sp, 724
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 724
.LBB12_398:
.Ltmp177:
	addi.d	$a0, $sp, 616
	addi.d	$a2, $sp, 712
	addi.d	$a5, $sp, 600
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $zero
	move	$a6, $s6
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI)
	jirl	$ra, $ra, 0
.Ltmp178:
# %bb.399:
	move	$s2, $a0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 4
	beq	$s2, $a0, .LBB12_402
# %bb.400:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a1, $sp, 600
	ld.d	$a3, $a2, 88
.Ltmp179:
	move	$a2, $s2
	jirl	$ra, $a3, 0
.Ltmp180:
# %bb.401:
	beqz	$a0, .LBB12_405
.LBB12_402:
	move	$fp, $a0
.LBB12_403:
	move	$s1, $zero
.LBB12_404:
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 512
	bnez	$a0, .LBB12_62
	b	.LBB12_63
.LBB12_405:
	beqz	$s2, .LBB12_430
# %bb.406:
	move	$s1, $zero
	move	$fp, $s2
	b	.LBB12_404
.LBB12_407:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	st.w	$a0, $fp, 0
	addi.d	$a0, $fp, 40
	ori	$s0, $zero, 8
.Ltmp474:
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp475:
.LBB12_408:                             # %.invoke
	add.d	$a0, $fp, $s0
.Ltmp482:
	addi.d	$a1, $sp, 600
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp483:
# %bb.409:
	move	$s0, $zero
	lu12i.w	$a0, -524284
	ori	$s3, $a0, 5
.LBB12_410:
	ld.d	$a0, $sp, 712
	beqz	$a0, .LBB12_412
# %bb.411:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_412:                             # %_ZN11CStringBaseIwED2Ev.exit392
	beqz	$s0, .LBB12_414
.LBB12_413:
	move	$s3, $zero
.LBB12_414:                             # %_ZL19UpdateWithItemListsP7CCodecsR14CUpdateOptionsP10IInArchiveRK13CObjectVectorI8CArcItemER9CDirItemsR10CTempFilesR16CUpdateErrorInfoP18IUpdateCallbackUI2.exit.thread
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $sp, 408
.Ltmp491:
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp492:
# %bb.415:                              # %_ZN13CObjectVectorI8CArcItemED2Ev.exit
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB12_416:                             # %.thread410
.Ltmp494:
	addi.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(_ZN10CTempFiles5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp495:
# %bb.417:
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $sp, 440
.Ltmp497:
	addi.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp498:
# %bb.418:                              # %_ZN11CStringBaseIwED2Ev.exit393
	addi.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB12_419:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 568
.Ltmp500:
	addi.d	$s1, $sp, 568
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp501:
# %bb.420:                              # %_ZN13CObjectVectorI8CDirItemED2Ev.exit.i
	addi.d	$fp, $sp, 504
	addi.d	$s0, $sp, 536
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $sp, 472
.Ltmp503:
	addi.d	$a0, $sp, 472
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp504:
# %bb.421:                              # %_ZN9CDirItemsD2Ev.exit
	addi.d	$a0, $sp, 472
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$fp, $s3
.LBB12_422:
	ld.d	$a0, $sp, 600
	beqz	$a0, .LBB12_424
# %bb.423:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_424:                             # %_ZN11CStringBaseIwED2Ev.exit395
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN12CArchiveLinkD2Ev)
	jirl	$ra, $ra, 0
.LBB12_425:
	addi.w	$a0, $fp, 0
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 856                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 864                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 904                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 912                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 920                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 928
	ret
.LBB12_426:
	move	$s1, $zero
	b	.LBB12_429
.LBB12_427:
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 40
.Ltmp196:
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp197:
.LBB12_428:
	move	$s1, $zero
	move	$s3, $s6
.LBB12_429:                             # %.thread
	addi.d	$a0, $sp, 792
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI11CStringBaseIwEED2Ev)
	jirl	$ra, $ra, 0
	move	$fp, $s3
	bnez	$s1, .LBB12_107
	b	.LBB12_419
.LBB12_430:
	ld.w	$a0, $sp, 660
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB12_432
# %bb.431:
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 1
	move	$fp, $a0
	lu32i.d	$a0, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 40
.Ltmp182:
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp183:
	b	.LBB12_403
.LBB12_432:
	ld.w	$a0, $sp, 628
	ld.d	$a1, $sp, 632
	alsl.d	$a0, $a0, $a1, 3
	ld.b	$a1, $sp, 508
	ld.d	$a0, $a0, -8
	ld.d	$a2, $sp, 496
	xori	$a1, $a1, 1
	st.b	$a1, $a0, 56
	st.d	$a2, $a0, 48
	ori	$s1, $zero, 1
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 5
	b	.LBB12_404
.LBB12_433:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	st.d	$a1, $a0, 0
.Ltmp506:
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp507:
	b	.LBB12_437
.LBB12_434:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	st.d	$a1, $a0, 0
.Ltmp247:
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp248:
	b	.LBB12_437
.LBB12_435:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	st.d	$a1, $a0, 0
.Ltmp171:
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp172:
	b	.LBB12_513
.LBB12_436:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 345
	ori	$a1, $a1, 4041
	st.w	$a1, $a0, 0
.Ltmp292:
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp293:
.LBB12_437:
.LBB12_438:
.Ltmp421:
	b	.LBB12_442
.LBB12_439:
.Ltmp405:
	b	.LBB12_442
.LBB12_440:
.Ltmp400:
	move	$fp, $a0
	ori	$a1, $zero, 1112
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_460
.LBB12_441:
.Ltmp418:
.LBB12_442:
	move	$fp, $a0
	b	.LBB12_446
.LBB12_443:
.Ltmp430:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_444:
.Ltmp412:
	ld.d	$a1, $sp, 712
	move	$fp, $a0
	beqz	$a1, .LBB12_446
# %bb.445:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_446:
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
.Ltmp422:
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp423:
	b	.LBB12_460
.LBB12_447:
.Ltmp424:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_448:
.Ltmp195:
	b	.LBB12_528
.LBB12_449:
.Ltmp415:
	b	.LBB12_459
.LBB12_450:
.Ltmp363:
	b	.LBB12_525
.LBB12_451:
.Ltmp368:
	move	$fp, $a0
	ori	$a1, $zero, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_526
.LBB12_452:
.Ltmp433:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_453:
.Ltmp388:
	b	.LBB12_542
.LBB12_454:
.Ltmp385:
	move	$fp, $a0
	ori	$a1, $zero, 1112
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_543
.LBB12_455:
.Ltmp382:
	b	.LBB12_542
.LBB12_456:
.Ltmp328:
	b	.LBB12_466
.LBB12_457:
.Ltmp322:
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $sp, 696
	beqz	$a0, .LBB12_468
	b	.LBB12_470
.LBB12_458:
.Ltmp395:
.LBB12_459:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit320.i.i
	move	$fp, $a0
.LBB12_460:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit320.i.i
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 16
.Ltmp425:
	move	$a0, $s6
	jirl	$ra, $a1, 0
.Ltmp426:
	b	.LBB12_543
.LBB12_461:
.Ltmp427:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_462:
.Ltmp338:
	b	.LBB12_542
.LBB12_463:
.Ltmp333:
	move	$fp, $a0
	ori	$a1, $zero, 1112
	move	$a0, $s2
	b	.LBB12_475
.LBB12_464:                             # %.loopexit.split-lp.i.i
.Ltmp371:
	b	.LBB12_525
.LBB12_465:
.Ltmp325:
.LBB12_466:
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712
	move	$fp, $a0
	bnez	$a1, .LBB12_469
# %bb.467:                              # %_ZN11CStringBaseIwED2Ev.exit299.i.i
	ld.d	$a0, $sp, 696
	bnez	$a0, .LBB12_470
.LBB12_468:                             # %_ZN11CStringBaseIwED2Ev.exit300.i.i
	ld.d	$a0, $sp, 776
	bnez	$a0, .LBB12_472
	b	.LBB12_543
.LBB12_469:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	beqz	$a0, .LBB12_468
.LBB12_470:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 776
	bnez	$a0, .LBB12_472
	b	.LBB12_543
.LBB12_471:
.Ltmp319:
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $sp, 776
	beqz	$a0, .LBB12_543
.LBB12_472:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_543
.LBB12_473:
.Ltmp316:
	b	.LBB12_541
.LBB12_474:                             # %.body104.i
.Ltmp305:
	move	$fp, $a0
	addi.d	$s0, $s8, 40
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 128
	move	$a0, $s8
.LBB12_475:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit327.i.i
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_544
.LBB12_476:
.Ltmp442:
	b	.LBB12_541
.LBB12_477:
.Ltmp198:
	b	.LBB12_528
.LBB12_478:
.Ltmp300:
	b	.LBB12_482
.LBB12_479:
.Ltmp297:
	b	.LBB12_485
.LBB12_480:
.Ltmp294:
	b	.LBB12_485
.LBB12_481:
.Ltmp291:
.LBB12_482:
	ld.d	$a1, $sp, 776
	move	$fp, $a0
	beqz	$a1, .LBB12_486
# %bb.483:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_486
.LBB12_484:
.Ltmp288:
.LBB12_485:
	move	$fp, $a0
.LBB12_486:
	ld.d	$a0, $sp, 712
	beqz	$a0, .LBB12_544
# %bb.487:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_544
.LBB12_488:
.Ltmp285:
	move	$fp, $a0
	b	.LBB12_544
.LBB12_489:
.Ltmp181:
	b	.LBB12_506
.LBB12_490:
.Ltmp471:
	move	$fp, $a0
	b	.LBB12_512
.LBB12_491:
.Ltmp379:
	b	.LBB12_541
.LBB12_492:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.i.loopexit.split-lp.i
.Ltmp310:
	b	.LBB12_541
.LBB12_493:
.Ltmp176:
	b	.LBB12_506
.LBB12_494:
.Ltmp451:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_495:
.Ltmp463:
	b	.LBB12_577
.LBB12_496:
.Ltmp355:
	b	.LBB12_498
.LBB12_497:
.Ltmp344:
.LBB12_498:
	ld.d	$a1, $sp, 712
	move	$fp, $a0
	beqz	$a1, .LBB12_526
# %bb.499:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_526
.LBB12_500:
.Ltmp187:
	b	.LBB12_523
.LBB12_501:
.Ltmp454:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_502:
.Ltmp282:
	move	$fp, $a0
	b	.LBB12_545
.LBB12_503:
.Ltmp279:
	move	$fp, $a0
	ori	$a1, $zero, 160
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_545
.LBB12_504:
.Ltmp276:
	move	$fp, $a0
	b	.LBB12_545
.LBB12_505:
.Ltmp184:
.LBB12_506:
	move	$fp, $a0
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_550
.LBB12_507:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread388.i.i
.Ltmp376:
	move	$fp, $a0
	b	.LBB12_544
.LBB12_508:
.Ltmp468:
	b	.LBB12_577
.LBB12_509:
.Ltmp349:
	b	.LBB12_525
.LBB12_510:
.Ltmp484:
	ld.d	$a1, $sp, 712
	move	$fp, $a0
	beqz	$a1, .LBB12_512
# %bb.511:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_512:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp485:
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp486:
.LBB12_513:
.LBB12_514:
.Ltmp210:
	move	$fp, $a0
	ori	$a1, $zero, 64
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_564
.LBB12_515:
.Ltmp352:
	b	.LBB12_525
.LBB12_516:
.Ltmp341:
	b	.LBB12_525
.LBB12_517:
.Ltmp152:
	b	.LBB12_573
.LBB12_518:
.Ltmp487:
	move	$fp, $a0
.Ltmp488:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp489:
	b	.LBB12_578
.LBB12_519:
.Ltmp490:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_520:
.Ltmp233:
	b	.LBB12_577
.LBB12_521:
.Ltmp273:
	move	$fp, $a0
	b	.LBB12_545
.LBB12_522:
.Ltmp201:
.LBB12_523:
	move	$fp, $a0
	b	.LBB12_584
.LBB12_524:                             # %.loopexit.i.i
.Ltmp358:
.LBB12_525:                             # %.loopexit.split-lp.i.body.i
	move	$fp, $a0
.LBB12_526:                             # %.loopexit.split-lp.i.body.i
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_543
.LBB12_527:
.Ltmp192:
.LBB12_528:
	move	$fp, $a0
	addi.d	$a0, $sp, 792
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI11CStringBaseIwEED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_584
.LBB12_529:
.Ltmp493:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_530:
.Ltmp220:
	b	.LBB12_580
.LBB12_531:
.Ltmp499:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_532:
.Ltmp496:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_533:
.Ltmp270:
	move	$fp, $a0
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_545
.LBB12_534:
.Ltmp159:
	move	$fp, $a0
	beqz	$s3, .LBB12_574
# %bb.535:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 472
	pcaddu18i	$ra, %call36(_ZN9CPropertyD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_536:
.Ltmp168:
	move	$fp, $a0
	ld.d	$a0, $sp, 600
	beqz	$a0, .LBB12_552
	b	.LBB12_585
.LBB12_537:                             # %_ZN11CStringBaseIwED2Ev.exit.i
.Ltmp143:
	move	$fp, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_538:
.Ltmp505:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_539:
.Ltmp502:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_540:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.i.loopexit.i
.Ltmp313:
.LBB12_541:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread.i.i
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
.LBB12_542:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread.i.i
	move	$fp, $a0
.LBB12_543:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread.i.i
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp443:
	jirl	$ra, $a1, 0
.Ltmp444:
.LBB12_544:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit327.i.i
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp446:
	jirl	$ra, $a1, 0
.Ltmp447:
.LBB12_545:                             # %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit329.i.i
	addi.d	$a0, $sp, 792
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_570
.LBB12_546:
.Ltmp448:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_547:
.Ltmp238:
	ld.d	$a1, $sp, 712
	move	$fp, $a0
	beqz	$a1, .LBB12_578
# %bb.548:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_578
.LBB12_549:
.Ltmp173:
	move	$fp, $a0
.LBB12_550:
	ld.d	$a0, $sp, 512
	bnez	$a0, .LBB12_553
# %bb.551:
	ld.d	$a0, $sp, 600
	bnez	$a0, .LBB12_585
.LBB12_552:                             # %_ZN11CStringBaseIwED2Ev.exit396
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN12CArchiveLinkD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_553:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	beqz	$a0, .LBB12_552
	b	.LBB12_585
.LBB12_554:
.Ltmp165:
	move	$fp, $a0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN12CArchiveLinkD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_555:
.Ltmp457:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_556:
.Ltmp255:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_557:                             # %.loopexit.split-lp.i
.Ltmp249:
	b	.LBB12_559
.LBB12_558:                             # %.loopexit.i
.Ltmp246:
.LBB12_559:
	move	$fp, $a0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp250:
	jirl	$ra, $a1, 0
.Ltmp251:
	b	.LBB12_570
.LBB12_560:
.Ltmp252:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_561:
.Ltmp243:
	b	.LBB12_569
.LBB12_562:
.Ltmp445:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_563:
.Ltmp213:
	move	$fp, $a0
.LBB12_564:                             # %.body
	ld.d	$a0, $sp, 744
	beqz	$a0, .LBB12_584
# %bb.565:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_584
.LBB12_566:
.Ltmp262:
	b	.LBB12_569
.LBB12_567:
.Ltmp508:
	b	.LBB12_569
.LBB12_568:
.Ltmp265:
.LBB12_569:                             # %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.i.i
	move	$fp, $a0
.LBB12_570:                             # %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.i.i
	ld.d	$a0, $sp, 832
	beqz	$a0, .LBB12_578
# %bb.571:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp509:
	jirl	$ra, $a1, 0
.Ltmp510:
	b	.LBB12_578
.LBB12_572:
.Ltmp162:
.LBB12_573:                             # %_ZN11CStringBaseIwED2Ev.exit
	move	$fp, $a0
.LBB12_574:                             # %_ZN11CStringBaseIwED2Ev.exit
	addi.d	$a0, $sp, 472
	pcaddu18i	$ra, %call36(_ZN9CPropertyD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_575:
.Ltmp511:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_576:
.Ltmp460:
.LBB12_577:                             # %.body388
	move	$fp, $a0
.LBB12_578:                             # %.body388
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI8CArcItemED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_583
.LBB12_579:
.Ltmp223:
.LBB12_580:                             # %_ZN11CStringBaseIwED2Ev.exit394
	move	$fp, $a0
	b	.LBB12_583
.LBB12_581:
.Ltmp230:
	ld.d	$a1, $sp, 712
	move	$fp, $a0
	beqz	$a1, .LBB12_583
# %bb.582:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_583:                             # %_ZN11CStringBaseIwED2Ev.exit394
	addi.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(_ZN10CTempFilesD2Ev)
	jirl	$ra, $ra, 0
.LBB12_584:
	addi.d	$a0, $sp, 472
	pcaddu18i	$ra, %call36(_ZN9CDirItemsD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	beqz	$a0, .LBB12_552
.LBB12_585:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN12CArchiveLinkD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2, .Lfunc_end12-_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp141-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp141
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin6         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp162-.Lfunc_begin6         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp162-.Lfunc_begin6         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp162-.Lfunc_begin6         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin6         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp159-.Lfunc_begin6         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp160-.Ltmp154              #   Call between .Ltmp154 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin6         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp155-.Ltmp161              #   Call between .Ltmp161 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp159-.Lfunc_begin6         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin6         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp163-.Ltmp158              #   Call between .Ltmp158 and .Ltmp163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin6         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin6         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp173-.Lfunc_begin6         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp199-.Ltmp170              #   Call between .Ltmp170 and .Ltmp199
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin6         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp213-.Lfunc_begin6         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp207-.Ltmp204              #   Call between .Ltmp204 and .Ltmp207
	.uleb128 .Ltmp213-.Lfunc_begin6         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin6         #     jumps to .Ltmp187
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp198-.Lfunc_begin6         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp191-.Ltmp190              #   Call between .Ltmp190 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin6         #     jumps to .Ltmp192
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin6         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin6         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin6         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp214-.Ltmp212              #   Call between .Ltmp212 and .Ltmp214
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp219-.Ltmp214              #   Call between .Ltmp214 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin6         #     jumps to .Ltmp220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin6         #     jumps to .Ltmp223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp227-.Ltmp224              #   Call between .Ltmp224 and .Ltmp227
	.uleb128 .Ltmp230-.Lfunc_begin6         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin6         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin6         # >> Call Site 37 <<
	.uleb128 .Ltmp231-.Ltmp229              #   Call between .Ltmp229 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin6         # >> Call Site 38 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin6         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin6         # >> Call Site 39 <<
	.uleb128 .Ltmp235-.Ltmp239              #   Call between .Ltmp239 and .Ltmp235
	.uleb128 .Ltmp460-.Lfunc_begin6         #     jumps to .Ltmp460
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin6         # >> Call Site 40 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin6         #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin6         # >> Call Site 41 <<
	.uleb128 .Ltmp241-.Ltmp237              #   Call between .Ltmp237 and .Ltmp241
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin6         # >> Call Site 42 <<
	.uleb128 .Ltmp242-.Ltmp241              #   Call between .Ltmp241 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin6         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin6         # >> Call Site 43 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin6         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin6         # >> Call Site 44 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin6         #     jumps to .Ltmp255
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp256-.Lfunc_begin6         # >> Call Site 45 <<
	.uleb128 .Ltmp261-.Ltmp256              #   Call between .Ltmp256 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin6         #     jumps to .Ltmp262
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin6         # >> Call Site 46 <<
	.uleb128 .Ltmp264-.Ltmp263              #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp265-.Lfunc_begin6         #     jumps to .Ltmp265
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin6         # >> Call Site 47 <<
	.uleb128 .Ltmp269-.Ltmp266              #   Call between .Ltmp266 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin6         #     jumps to .Ltmp270
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin6         # >> Call Site 48 <<
	.uleb128 .Ltmp271-.Ltmp269              #   Call between .Ltmp269 and .Ltmp271
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin6         # >> Call Site 49 <<
	.uleb128 .Ltmp272-.Ltmp271              #   Call between .Ltmp271 and .Ltmp272
	.uleb128 .Ltmp273-.Lfunc_begin6         #     jumps to .Ltmp273
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin6         # >> Call Site 50 <<
	.uleb128 .Ltmp275-.Ltmp274              #   Call between .Ltmp274 and .Ltmp275
	.uleb128 .Ltmp276-.Lfunc_begin6         #     jumps to .Ltmp276
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin6         # >> Call Site 51 <<
	.uleb128 .Ltmp278-.Ltmp277              #   Call between .Ltmp277 and .Ltmp278
	.uleb128 .Ltmp279-.Lfunc_begin6         #     jumps to .Ltmp279
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin6         # >> Call Site 52 <<
	.uleb128 .Ltmp281-.Ltmp280              #   Call between .Ltmp280 and .Ltmp281
	.uleb128 .Ltmp282-.Lfunc_begin6         #     jumps to .Ltmp282
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin6         # >> Call Site 53 <<
	.uleb128 .Ltmp284-.Ltmp283              #   Call between .Ltmp283 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin6         #     jumps to .Ltmp285
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin6         # >> Call Site 54 <<
	.uleb128 .Ltmp287-.Ltmp286              #   Call between .Ltmp286 and .Ltmp287
	.uleb128 .Ltmp288-.Lfunc_begin6         #     jumps to .Ltmp288
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin6         # >> Call Site 55 <<
	.uleb128 .Ltmp290-.Ltmp289              #   Call between .Ltmp289 and .Ltmp290
	.uleb128 .Ltmp291-.Lfunc_begin6         #     jumps to .Ltmp291
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin6         # >> Call Site 56 <<
	.uleb128 .Ltmp295-.Ltmp290              #   Call between .Ltmp290 and .Ltmp295
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin6         # >> Call Site 57 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin6         #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin6         # >> Call Site 58 <<
	.uleb128 .Ltmp299-.Ltmp298              #   Call between .Ltmp298 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin6         #     jumps to .Ltmp300
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin6         # >> Call Site 59 <<
	.uleb128 .Ltmp301-.Ltmp299              #   Call between .Ltmp299 and .Ltmp301
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin6         # >> Call Site 60 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp376-.Lfunc_begin6         #     jumps to .Ltmp376
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin6         # >> Call Site 61 <<
	.uleb128 .Ltmp304-.Ltmp303              #   Call between .Ltmp303 and .Ltmp304
	.uleb128 .Ltmp305-.Lfunc_begin6         #     jumps to .Ltmp305
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin6         # >> Call Site 62 <<
	.uleb128 .Ltmp309-.Ltmp306              #   Call between .Ltmp306 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin6         #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin6         # >> Call Site 63 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin6         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin6         # >> Call Site 64 <<
	.uleb128 .Ltmp315-.Ltmp314              #   Call between .Ltmp314 and .Ltmp315
	.uleb128 .Ltmp316-.Lfunc_begin6         #     jumps to .Ltmp316
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin6         # >> Call Site 65 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp319-.Lfunc_begin6         #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp372-.Lfunc_begin6         # >> Call Site 66 <<
	.uleb128 .Ltmp330-.Ltmp372              #   Call between .Ltmp372 and .Ltmp330
	.uleb128 .Ltmp376-.Lfunc_begin6         #     jumps to .Ltmp376
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin6         # >> Call Site 67 <<
	.uleb128 .Ltmp332-.Ltmp331              #   Call between .Ltmp331 and .Ltmp332
	.uleb128 .Ltmp333-.Lfunc_begin6         #     jumps to .Ltmp333
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin6         # >> Call Site 68 <<
	.uleb128 .Ltmp335-.Ltmp334              #   Call between .Ltmp334 and .Ltmp335
	.uleb128 .Ltmp376-.Lfunc_begin6         #     jumps to .Ltmp376
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp336-.Lfunc_begin6         # >> Call Site 69 <<
	.uleb128 .Ltmp337-.Ltmp336              #   Call between .Ltmp336 and .Ltmp337
	.uleb128 .Ltmp338-.Lfunc_begin6         #     jumps to .Ltmp338
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin6         # >> Call Site 70 <<
	.uleb128 .Ltmp346-.Ltmp345              #   Call between .Ltmp345 and .Ltmp346
	.uleb128 .Ltmp349-.Lfunc_begin6         #     jumps to .Ltmp349
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin6         # >> Call Site 71 <<
	.uleb128 .Ltmp347-.Ltmp346              #   Call between .Ltmp346 and .Ltmp347
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin6         # >> Call Site 72 <<
	.uleb128 .Ltmp348-.Ltmp347              #   Call between .Ltmp347 and .Ltmp348
	.uleb128 .Ltmp349-.Lfunc_begin6         #     jumps to .Ltmp349
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin6         # >> Call Site 73 <<
	.uleb128 .Ltmp339-.Ltmp348              #   Call between .Ltmp348 and .Ltmp339
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp339-.Lfunc_begin6         # >> Call Site 74 <<
	.uleb128 .Ltmp340-.Ltmp339              #   Call between .Ltmp339 and .Ltmp340
	.uleb128 .Ltmp341-.Lfunc_begin6         #     jumps to .Ltmp341
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp342-.Lfunc_begin6         # >> Call Site 75 <<
	.uleb128 .Ltmp343-.Ltmp342              #   Call between .Ltmp342 and .Ltmp343
	.uleb128 .Ltmp344-.Lfunc_begin6         #     jumps to .Ltmp344
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp343-.Lfunc_begin6         # >> Call Site 76 <<
	.uleb128 .Ltmp350-.Ltmp343              #   Call between .Ltmp343 and .Ltmp350
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin6         # >> Call Site 77 <<
	.uleb128 .Ltmp351-.Ltmp350              #   Call between .Ltmp350 and .Ltmp351
	.uleb128 .Ltmp352-.Lfunc_begin6         #     jumps to .Ltmp352
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin6         # >> Call Site 78 <<
	.uleb128 .Ltmp354-.Ltmp353              #   Call between .Ltmp353 and .Ltmp354
	.uleb128 .Ltmp355-.Lfunc_begin6         #     jumps to .Ltmp355
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin6         # >> Call Site 79 <<
	.uleb128 .Ltmp356-.Ltmp354              #   Call between .Ltmp354 and .Ltmp356
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp356-.Lfunc_begin6         # >> Call Site 80 <<
	.uleb128 .Ltmp357-.Ltmp356              #   Call between .Ltmp356 and .Ltmp357
	.uleb128 .Ltmp358-.Lfunc_begin6         #     jumps to .Ltmp358
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin6         # >> Call Site 81 <<
	.uleb128 .Ltmp359-.Ltmp357              #   Call between .Ltmp357 and .Ltmp359
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp359-.Lfunc_begin6         # >> Call Site 82 <<
	.uleb128 .Ltmp360-.Ltmp359              #   Call between .Ltmp359 and .Ltmp360
	.uleb128 .Ltmp363-.Lfunc_begin6         #     jumps to .Ltmp363
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp360-.Lfunc_begin6         # >> Call Site 83 <<
	.uleb128 .Ltmp320-.Ltmp360              #   Call between .Ltmp360 and .Ltmp320
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin6         # >> Call Site 84 <<
	.uleb128 .Ltmp321-.Ltmp320              #   Call between .Ltmp320 and .Ltmp321
	.uleb128 .Ltmp322-.Lfunc_begin6         #     jumps to .Ltmp322
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin6         # >> Call Site 85 <<
	.uleb128 .Ltmp324-.Ltmp323              #   Call between .Ltmp323 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin6         #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin6         # >> Call Site 86 <<
	.uleb128 .Ltmp327-.Ltmp326              #   Call between .Ltmp326 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin6         #     jumps to .Ltmp328
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp327-.Lfunc_begin6         # >> Call Site 87 <<
	.uleb128 .Ltmp364-.Ltmp327              #   Call between .Ltmp327 and .Ltmp364
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp364-.Lfunc_begin6         # >> Call Site 88 <<
	.uleb128 .Ltmp365-.Ltmp364              #   Call between .Ltmp364 and .Ltmp365
	.uleb128 .Ltmp371-.Lfunc_begin6         #     jumps to .Ltmp371
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp366-.Lfunc_begin6         # >> Call Site 89 <<
	.uleb128 .Ltmp367-.Ltmp366              #   Call between .Ltmp366 and .Ltmp367
	.uleb128 .Ltmp368-.Lfunc_begin6         #     jumps to .Ltmp368
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp369-.Lfunc_begin6         # >> Call Site 90 <<
	.uleb128 .Ltmp370-.Ltmp369              #   Call between .Ltmp369 and .Ltmp370
	.uleb128 .Ltmp371-.Lfunc_begin6         #     jumps to .Ltmp371
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp370-.Lfunc_begin6         # >> Call Site 91 <<
	.uleb128 .Ltmp377-.Ltmp370              #   Call between .Ltmp370 and .Ltmp377
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp377-.Lfunc_begin6         # >> Call Site 92 <<
	.uleb128 .Ltmp378-.Ltmp377              #   Call between .Ltmp377 and .Ltmp378
	.uleb128 .Ltmp379-.Lfunc_begin6         #     jumps to .Ltmp379
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp380-.Lfunc_begin6         # >> Call Site 93 <<
	.uleb128 .Ltmp381-.Ltmp380              #   Call between .Ltmp380 and .Ltmp381
	.uleb128 .Ltmp382-.Lfunc_begin6         #     jumps to .Ltmp382
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp383-.Lfunc_begin6         # >> Call Site 94 <<
	.uleb128 .Ltmp384-.Ltmp383              #   Call between .Ltmp383 and .Ltmp384
	.uleb128 .Ltmp385-.Lfunc_begin6         #     jumps to .Ltmp385
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp386-.Lfunc_begin6         # >> Call Site 95 <<
	.uleb128 .Ltmp387-.Ltmp386              #   Call between .Ltmp386 and .Ltmp387
	.uleb128 .Ltmp388-.Lfunc_begin6         #     jumps to .Ltmp388
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp389-.Lfunc_begin6         # >> Call Site 96 <<
	.uleb128 .Ltmp390-.Ltmp389              #   Call between .Ltmp389 and .Ltmp390
	.uleb128 .Ltmp395-.Lfunc_begin6         #     jumps to .Ltmp395
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp396-.Lfunc_begin6         # >> Call Site 97 <<
	.uleb128 .Ltmp397-.Ltmp396              #   Call between .Ltmp396 and .Ltmp397
	.uleb128 .Ltmp415-.Lfunc_begin6         #     jumps to .Ltmp415
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin6         # >> Call Site 98 <<
	.uleb128 .Ltmp399-.Ltmp398              #   Call between .Ltmp398 and .Ltmp399
	.uleb128 .Ltmp400-.Lfunc_begin6         #     jumps to .Ltmp400
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp401-.Lfunc_begin6         # >> Call Site 99 <<
	.uleb128 .Ltmp402-.Ltmp401              #   Call between .Ltmp401 and .Ltmp402
	.uleb128 .Ltmp415-.Lfunc_begin6         #     jumps to .Ltmp415
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp403-.Lfunc_begin6         # >> Call Site 100 <<
	.uleb128 .Ltmp404-.Ltmp403              #   Call between .Ltmp403 and .Ltmp404
	.uleb128 .Ltmp405-.Lfunc_begin6         #     jumps to .Ltmp405
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp406-.Lfunc_begin6         # >> Call Site 101 <<
	.uleb128 .Ltmp407-.Ltmp406              #   Call between .Ltmp406 and .Ltmp407
	.uleb128 .Ltmp412-.Lfunc_begin6         #     jumps to .Ltmp412
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp407-.Lfunc_begin6         # >> Call Site 102 <<
	.uleb128 .Ltmp391-.Ltmp407              #   Call between .Ltmp407 and .Ltmp391
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin6         # >> Call Site 103 <<
	.uleb128 .Ltmp392-.Ltmp391              #   Call between .Ltmp391 and .Ltmp392
	.uleb128 .Ltmp395-.Lfunc_begin6         #     jumps to .Ltmp395
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp392-.Lfunc_begin6         # >> Call Site 104 <<
	.uleb128 .Ltmp413-.Ltmp392              #   Call between .Ltmp392 and .Ltmp413
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp413-.Lfunc_begin6         # >> Call Site 105 <<
	.uleb128 .Ltmp414-.Ltmp413              #   Call between .Ltmp413 and .Ltmp414
	.uleb128 .Ltmp415-.Lfunc_begin6         #     jumps to .Ltmp415
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin6         # >> Call Site 106 <<
	.uleb128 .Ltmp408-.Ltmp414              #   Call between .Ltmp414 and .Ltmp408
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp408-.Lfunc_begin6         # >> Call Site 107 <<
	.uleb128 .Ltmp411-.Ltmp408              #   Call between .Ltmp408 and .Ltmp411
	.uleb128 .Ltmp412-.Lfunc_begin6         #     jumps to .Ltmp412
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp411-.Lfunc_begin6         # >> Call Site 108 <<
	.uleb128 .Ltmp416-.Ltmp411              #   Call between .Ltmp411 and .Ltmp416
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp416-.Lfunc_begin6         # >> Call Site 109 <<
	.uleb128 .Ltmp417-.Ltmp416              #   Call between .Ltmp416 and .Ltmp417
	.uleb128 .Ltmp418-.Lfunc_begin6         #     jumps to .Ltmp418
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp361-.Lfunc_begin6         # >> Call Site 110 <<
	.uleb128 .Ltmp362-.Ltmp361              #   Call between .Ltmp361 and .Ltmp362
	.uleb128 .Ltmp363-.Lfunc_begin6         #     jumps to .Ltmp363
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp362-.Lfunc_begin6         # >> Call Site 111 <<
	.uleb128 .Ltmp419-.Ltmp362              #   Call between .Ltmp362 and .Ltmp419
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp419-.Lfunc_begin6         # >> Call Site 112 <<
	.uleb128 .Ltmp420-.Ltmp419              #   Call between .Ltmp419 and .Ltmp420
	.uleb128 .Ltmp421-.Lfunc_begin6         #     jumps to .Ltmp421
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin6         # >> Call Site 113 <<
	.uleb128 .Ltmp394-.Ltmp393              #   Call between .Ltmp393 and .Ltmp394
	.uleb128 .Ltmp395-.Lfunc_begin6         #     jumps to .Ltmp395
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp394-.Lfunc_begin6         # >> Call Site 114 <<
	.uleb128 .Ltmp428-.Ltmp394              #   Call between .Ltmp394 and .Ltmp428
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin6         # >> Call Site 115 <<
	.uleb128 .Ltmp429-.Ltmp428              #   Call between .Ltmp428 and .Ltmp429
	.uleb128 .Ltmp430-.Lfunc_begin6         #     jumps to .Ltmp430
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp431-.Lfunc_begin6         # >> Call Site 116 <<
	.uleb128 .Ltmp432-.Ltmp431              #   Call between .Ltmp431 and .Ltmp432
	.uleb128 .Ltmp433-.Lfunc_begin6         #     jumps to .Ltmp433
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp434-.Lfunc_begin6         # >> Call Site 117 <<
	.uleb128 .Ltmp441-.Ltmp434              #   Call between .Ltmp434 and .Ltmp441
	.uleb128 .Ltmp442-.Lfunc_begin6         #     jumps to .Ltmp442
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp449-.Lfunc_begin6         # >> Call Site 118 <<
	.uleb128 .Ltmp450-.Ltmp449              #   Call between .Ltmp449 and .Ltmp450
	.uleb128 .Ltmp451-.Lfunc_begin6         #     jumps to .Ltmp451
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp452-.Lfunc_begin6         # >> Call Site 119 <<
	.uleb128 .Ltmp453-.Ltmp452              #   Call between .Ltmp452 and .Ltmp453
	.uleb128 .Ltmp454-.Lfunc_begin6         #     jumps to .Ltmp454
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp453-.Lfunc_begin6         # >> Call Site 120 <<
	.uleb128 .Ltmp455-.Ltmp453              #   Call between .Ltmp453 and .Ltmp455
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp455-.Lfunc_begin6         # >> Call Site 121 <<
	.uleb128 .Ltmp456-.Ltmp455              #   Call between .Ltmp455 and .Ltmp456
	.uleb128 .Ltmp457-.Lfunc_begin6         #     jumps to .Ltmp457
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp458-.Lfunc_begin6         # >> Call Site 122 <<
	.uleb128 .Ltmp459-.Ltmp458              #   Call between .Ltmp458 and .Ltmp459
	.uleb128 .Ltmp460-.Lfunc_begin6         #     jumps to .Ltmp460
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp461-.Lfunc_begin6         # >> Call Site 123 <<
	.uleb128 .Ltmp462-.Ltmp461              #   Call between .Ltmp461 and .Ltmp462
	.uleb128 .Ltmp463-.Lfunc_begin6         #     jumps to .Ltmp463
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp464-.Lfunc_begin6         # >> Call Site 124 <<
	.uleb128 .Ltmp467-.Ltmp464              #   Call between .Ltmp464 and .Ltmp467
	.uleb128 .Ltmp468-.Lfunc_begin6         #     jumps to .Ltmp468
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp469-.Lfunc_begin6         # >> Call Site 125 <<
	.uleb128 .Ltmp470-.Ltmp469              #   Call between .Ltmp469 and .Ltmp470
	.uleb128 .Ltmp471-.Lfunc_begin6         #     jumps to .Ltmp471
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp472-.Lfunc_begin6         # >> Call Site 126 <<
	.uleb128 .Ltmp477-.Ltmp472              #   Call between .Ltmp472 and .Ltmp477
	.uleb128 .Ltmp484-.Lfunc_begin6         #     jumps to .Ltmp484
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp477-.Lfunc_begin6         # >> Call Site 127 <<
	.uleb128 .Ltmp478-.Ltmp477              #   Call between .Ltmp477 and .Ltmp478
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp478-.Lfunc_begin6         # >> Call Site 128 <<
	.uleb128 .Ltmp481-.Ltmp478              #   Call between .Ltmp478 and .Ltmp481
	.uleb128 .Ltmp484-.Lfunc_begin6         #     jumps to .Ltmp484
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp174-.Lfunc_begin6         # >> Call Site 129 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin6         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin6         # >> Call Site 130 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp184-.Lfunc_begin6         #     jumps to .Ltmp184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin6         # >> Call Site 131 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin6         #     jumps to .Ltmp181
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin6         # >> Call Site 132 <<
	.uleb128 .Ltmp474-.Ltmp180              #   Call between .Ltmp180 and .Ltmp474
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp474-.Lfunc_begin6         # >> Call Site 133 <<
	.uleb128 .Ltmp483-.Ltmp474              #   Call between .Ltmp474 and .Ltmp483
	.uleb128 .Ltmp484-.Lfunc_begin6         #     jumps to .Ltmp484
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp483-.Lfunc_begin6         # >> Call Site 134 <<
	.uleb128 .Ltmp491-.Ltmp483              #   Call between .Ltmp483 and .Ltmp491
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp491-.Lfunc_begin6         # >> Call Site 135 <<
	.uleb128 .Ltmp492-.Ltmp491              #   Call between .Ltmp491 and .Ltmp492
	.uleb128 .Ltmp493-.Lfunc_begin6         #     jumps to .Ltmp493
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp492-.Lfunc_begin6         # >> Call Site 136 <<
	.uleb128 .Ltmp494-.Ltmp492              #   Call between .Ltmp492 and .Ltmp494
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp494-.Lfunc_begin6         # >> Call Site 137 <<
	.uleb128 .Ltmp495-.Ltmp494              #   Call between .Ltmp494 and .Ltmp495
	.uleb128 .Ltmp496-.Lfunc_begin6         #     jumps to .Ltmp496
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp497-.Lfunc_begin6         # >> Call Site 138 <<
	.uleb128 .Ltmp498-.Ltmp497              #   Call between .Ltmp497 and .Ltmp498
	.uleb128 .Ltmp499-.Lfunc_begin6         #     jumps to .Ltmp499
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp498-.Lfunc_begin6         # >> Call Site 139 <<
	.uleb128 .Ltmp500-.Ltmp498              #   Call between .Ltmp498 and .Ltmp500
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp500-.Lfunc_begin6         # >> Call Site 140 <<
	.uleb128 .Ltmp501-.Ltmp500              #   Call between .Ltmp500 and .Ltmp501
	.uleb128 .Ltmp502-.Lfunc_begin6         #     jumps to .Ltmp502
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp501-.Lfunc_begin6         # >> Call Site 141 <<
	.uleb128 .Ltmp503-.Ltmp501              #   Call between .Ltmp501 and .Ltmp503
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp503-.Lfunc_begin6         # >> Call Site 142 <<
	.uleb128 .Ltmp504-.Ltmp503              #   Call between .Ltmp503 and .Ltmp504
	.uleb128 .Ltmp505-.Lfunc_begin6         #     jumps to .Ltmp505
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp504-.Lfunc_begin6         # >> Call Site 143 <<
	.uleb128 .Ltmp196-.Ltmp504              #   Call between .Ltmp504 and .Ltmp196
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin6         # >> Call Site 144 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin6         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin6         # >> Call Site 145 <<
	.uleb128 .Ltmp182-.Ltmp197              #   Call between .Ltmp197 and .Ltmp182
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin6         # >> Call Site 146 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin6         #     jumps to .Ltmp184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin6         # >> Call Site 147 <<
	.uleb128 .Ltmp506-.Ltmp183              #   Call between .Ltmp183 and .Ltmp506
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp506-.Lfunc_begin6         # >> Call Site 148 <<
	.uleb128 .Ltmp507-.Ltmp506              #   Call between .Ltmp506 and .Ltmp507
	.uleb128 .Ltmp508-.Lfunc_begin6         #     jumps to .Ltmp508
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin6         # >> Call Site 149 <<
	.uleb128 .Ltmp247-.Ltmp507              #   Call between .Ltmp507 and .Ltmp247
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin6         # >> Call Site 150 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin6         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp248-.Lfunc_begin6         # >> Call Site 151 <<
	.uleb128 .Ltmp171-.Ltmp248              #   Call between .Ltmp248 and .Ltmp171
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin6         # >> Call Site 152 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin6         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin6         # >> Call Site 153 <<
	.uleb128 .Ltmp292-.Ltmp172              #   Call between .Ltmp172 and .Ltmp292
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin6         # >> Call Site 154 <<
	.uleb128 .Ltmp293-.Ltmp292              #   Call between .Ltmp292 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin6         #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin6         # >> Call Site 155 <<
	.uleb128 .Ltmp422-.Ltmp293              #   Call between .Ltmp293 and .Ltmp422
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin6         # >> Call Site 156 <<
	.uleb128 .Ltmp423-.Ltmp422              #   Call between .Ltmp422 and .Ltmp423
	.uleb128 .Ltmp424-.Lfunc_begin6         #     jumps to .Ltmp424
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp423-.Lfunc_begin6         # >> Call Site 157 <<
	.uleb128 .Ltmp425-.Ltmp423              #   Call between .Ltmp423 and .Ltmp425
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp425-.Lfunc_begin6         # >> Call Site 158 <<
	.uleb128 .Ltmp426-.Ltmp425              #   Call between .Ltmp425 and .Ltmp426
	.uleb128 .Ltmp427-.Lfunc_begin6         #     jumps to .Ltmp427
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp426-.Lfunc_begin6         # >> Call Site 159 <<
	.uleb128 .Ltmp485-.Ltmp426              #   Call between .Ltmp426 and .Ltmp485
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp485-.Lfunc_begin6         # >> Call Site 160 <<
	.uleb128 .Ltmp486-.Ltmp485              #   Call between .Ltmp485 and .Ltmp486
	.uleb128 .Ltmp487-.Lfunc_begin6         #     jumps to .Ltmp487
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin6         # >> Call Site 161 <<
	.uleb128 .Ltmp488-.Ltmp486              #   Call between .Ltmp486 and .Ltmp488
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp488-.Lfunc_begin6         # >> Call Site 162 <<
	.uleb128 .Ltmp489-.Ltmp488              #   Call between .Ltmp488 and .Ltmp489
	.uleb128 .Ltmp490-.Lfunc_begin6         #     jumps to .Ltmp490
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp489-.Lfunc_begin6         # >> Call Site 163 <<
	.uleb128 .Ltmp443-.Ltmp489              #   Call between .Ltmp489 and .Ltmp443
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp443-.Lfunc_begin6         # >> Call Site 164 <<
	.uleb128 .Ltmp444-.Ltmp443              #   Call between .Ltmp443 and .Ltmp444
	.uleb128 .Ltmp445-.Lfunc_begin6         #     jumps to .Ltmp445
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp446-.Lfunc_begin6         # >> Call Site 165 <<
	.uleb128 .Ltmp447-.Ltmp446              #   Call between .Ltmp446 and .Ltmp447
	.uleb128 .Ltmp448-.Lfunc_begin6         #     jumps to .Ltmp448
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp447-.Lfunc_begin6         # >> Call Site 166 <<
	.uleb128 .Ltmp250-.Ltmp447              #   Call between .Ltmp447 and .Ltmp250
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin6         # >> Call Site 167 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin6         #     jumps to .Ltmp252
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp251-.Lfunc_begin6         # >> Call Site 168 <<
	.uleb128 .Ltmp509-.Ltmp251              #   Call between .Ltmp251 and .Ltmp509
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp509-.Lfunc_begin6         # >> Call Site 169 <<
	.uleb128 .Ltmp510-.Ltmp509              #   Call between .Ltmp509 and .Ltmp510
	.uleb128 .Ltmp511-.Lfunc_begin6         #     jumps to .Ltmp511
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp510-.Lfunc_begin6         # >> Call Site 170 <<
	.uleb128 .Lfunc_end12-.Ltmp510          #   Call between .Ltmp510 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CPropertyE3AddERKS0_,"axG",@progbits,_ZN13CObjectVectorI9CPropertyE3AddERKS0_,comdat
	.weak	_ZN13CObjectVectorI9CPropertyE3AddERKS0_ # -- Begin function _ZN13CObjectVectorI9CPropertyE3AddERKS0_
	.p2align	5
	.type	_ZN13CObjectVectorI9CPropertyE3AddERKS0_,@function
_ZN13CObjectVectorI9CPropertyE3AddERKS0_: # @_ZN13CObjectVectorI9CPropertyE3AddERKS0_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s1, 8
	move	$fp, $a0
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$s4, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s4, $a0
	vst	$vr0, $fp, 0
	beqz	$a0, .LBB13_2
# %bb.1:
	move	$s2, $zero
	b	.LBB13_4
.LBB13_2:
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	addi.w	$a0, $s4, 0
	slti	$a1, $s3, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp512:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp513:
# %bb.3:                                # %.noexc
	move	$s2, $a0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s4, $fp, 12
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
.LBB13_4:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a0, $s1, 0
	move	$a1, $zero
	.p2align	4, , 16
.LBB13_5:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB13_5
# %bb.6:                                # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
	ld.w	$s4, $s1, 24
	st.w	$s3, $fp, 8
	bstrpick.d	$a0, $s4, 31, 0
	addi.d	$s3, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s3, $a0
	vst	$vr0, $fp, 16
	beqz	$a0, .LBB13_8
# %bb.7:
	move	$a0, $zero
	b	.LBB13_10
.LBB13_8:
	addi.w	$a0, $s3, 0
	slti	$a1, $s4, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp515:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp516:
# %bb.9:                                # %.noexc.i
	st.d	$a0, $fp, 16
	st.w	$zero, $a0, 0
	st.w	$s3, $fp, 28
.LBB13_10:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i4.i
	ld.d	$a1, $s1, 16
	.p2align	4, , 16
.LBB13_11:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB13_11
# %bb.12:
	st.w	$s4, $fp, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$fp, $a1, $a2
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, 12
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB13_13:
.Ltmp517:
	move	$s0, $a0
	beqz	$s2, .LBB13_16
# %bb.14:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB13_16
.LBB13_15:
.Ltmp514:
	move	$s0, $a0
.LBB13_16:                              # %.body
	ori	$a1, $zero, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN13CObjectVectorI9CPropertyE3AddERKS0_, .Lfunc_end13-_ZN13CObjectVectorI9CPropertyE3AddERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CPropertyE3AddERKS0_,"aG",@progbits,_ZN13CObjectVectorI9CPropertyE3AddERKS0_,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp512-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp512
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp512-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp513-.Ltmp512              #   Call between .Ltmp512 and .Ltmp513
	.uleb128 .Ltmp514-.Lfunc_begin7         #     jumps to .Ltmp514
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp515-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp516-.Ltmp515              #   Call between .Ltmp515 and .Ltmp516
	.uleb128 .Ltmp517-.Lfunc_begin7         #     jumps to .Ltmp517
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp516-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Lfunc_end13-.Ltmp516          #   Call between .Ltmp516 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9CPropertyD2Ev,"axG",@progbits,_ZN9CPropertyD2Ev,comdat
	.weak	_ZN9CPropertyD2Ev               # -- Begin function _ZN9CPropertyD2Ev
	.p2align	5
	.type	_ZN9CPropertyD2Ev,@function
_ZN9CPropertyD2Ev:                      # @_ZN9CPropertyD2Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB14_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB14_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB14_4
# %bb.3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB14_4:                               # %_ZN11CStringBaseIwED2Ev.exit1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end14:
	.size	_ZN9CPropertyD2Ev, .Lfunc_end14-_ZN9CPropertyD2Ev
                                        # -- End function
	.section	.text._ZNK12CArchivePath12GetFinalPathEv,"axG",@progbits,_ZNK12CArchivePath12GetFinalPathEv,comdat
	.weak	_ZNK12CArchivePath12GetFinalPathEv # -- Begin function _ZNK12CArchivePath12GetFinalPathEv
	.p2align	5
	.type	_ZNK12CArchivePath12GetFinalPathEv,@function
_ZNK12CArchivePath12GetFinalPathEv:     # @_ZNK12CArchivePath12GetFinalPathEv
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	move	$s1, $a1
	ld.w	$s0, $a1, 24
	move	$fp, $a0
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s0, 31, 0
	addi.d	$s2, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s2, $a0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $fp, 0
	beqz	$a0, .LBB15_2
# %bb.1:
	move	$a0, $zero
	b	.LBB15_3
.LBB15_2:
	addi.w	$a0, $s2, 0
	slti	$a1, $s0, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $fp, 12
.LBB15_3:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
	ld.d	$a2, $s1, 16
	addi.d	$a1, $s1, 32
	.p2align	4, , 16
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a0, 4
	st.w	$a3, $a0, 0
	move	$a0, $a4
	bnez	$a3, .LBB15_4
# %bb.5:                                # %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
	st.w	$s0, $fp, 8
.Ltmp518:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp519:
# %bb.6:                                # %_ZNK12CArchivePath17GetPathWithoutExtEv.exit
	ld.w	$a0, $s1, 56
	beqz	$a0, .LBB15_16
# %bb.7:
.Ltmp521:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp522:
# %bb.8:
	move	$s0, $a0
	ori	$a0, $zero, 46
	st.d	$a0, $s0, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $sp, 24
.Ltmp524:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp525:
# %bb.9:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	move	$a2, $zero
	addi.d	$a1, $s1, 48
	st.d	$a0, $sp, 24
	st.w	$zero, $a0, 0
	ori	$a3, $zero, 2
	st.w	$a3, $sp, 36
	.p2align	4, , 16
.LBB15_10:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s0, $a2
	stx.w	$a3, $a0, $a2
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB15_10
# %bb.11:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 32
.Ltmp527:
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp528:
# %bb.12:                               # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit
.Ltmp530:
	addi.d	$a1, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp531:
# %bb.13:
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB15_15
# %bb.14:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB15_15:                              # %_ZN11CStringBaseIwED2Ev.exit7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB15_16:
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB15_17:
.Ltmp532:
	b	.LBB15_19
.LBB15_18:
.Ltmp529:
.LBB15_19:
	ld.d	$a1, $sp, 24
	move	$s1, $a0
	beqz	$a1, .LBB15_22
# %bb.20:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB15_22
.LBB15_21:
.Ltmp526:
	move	$s1, $a0
.LBB15_22:                              # %_ZN11CStringBaseIwED2Ev.exit9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB15_24
.LBB15_23:
.Ltmp523:
	move	$s1, $a0
.LBB15_24:
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB15_27
	b	.LBB15_28
.LBB15_25:
.Ltmp520:
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	beqz	$a1, .LBB15_28
# %bb.26:
	move	$a0, $a1
.LBB15_27:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB15_28:                              # %common.resume
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZNK12CArchivePath12GetFinalPathEv, .Lfunc_end15-_ZNK12CArchivePath12GetFinalPathEv
	.cfi_endproc
	.section	.gcc_except_table._ZNK12CArchivePath12GetFinalPathEv,"aG",@progbits,_ZNK12CArchivePath12GetFinalPathEv,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp518-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp518
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp518-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp519-.Ltmp518              #   Call between .Ltmp518 and .Ltmp519
	.uleb128 .Ltmp520-.Lfunc_begin8         #     jumps to .Ltmp520
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp521-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp522-.Ltmp521              #   Call between .Ltmp521 and .Ltmp522
	.uleb128 .Ltmp523-.Lfunc_begin8         #     jumps to .Ltmp523
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp524-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp525-.Ltmp524              #   Call between .Ltmp524 and .Ltmp525
	.uleb128 .Ltmp526-.Lfunc_begin8         #     jumps to .Ltmp526
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp527-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp528-.Ltmp527              #   Call between .Ltmp527 and .Ltmp528
	.uleb128 .Ltmp529-.Lfunc_begin8         #     jumps to .Ltmp529
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp530-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp531-.Ltmp530              #   Call between .Ltmp530 and .Ltmp531
	.uleb128 .Ltmp532-.Lfunc_begin8         #     jumps to .Ltmp532
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp531-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Lfunc_end15-.Ltmp531          #   Call between .Ltmp531 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEED2Ev,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED2Ev,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEED2Ev # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI11CStringBaseIwEED2Ev,@function
_ZN13CObjectVectorI11CStringBaseIwEED2Ev: # @_ZN13CObjectVectorI11CStringBaseIwEED2Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp533:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp534:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB16_2:
.Ltmp535:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN13CObjectVectorI11CStringBaseIwEED2Ev, .Lfunc_end16-_ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CStringBaseIwEED2Ev,"aG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp533-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp534-.Ltmp533              #   Call between .Ltmp533 and .Ltmp534
	.uleb128 .Ltmp535-.Lfunc_begin9         #     jumps to .Ltmp535
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp534-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end16-.Ltmp534          #   Call between .Ltmp534 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12CArchivePathaSERKS_,"axG",@progbits,_ZN12CArchivePathaSERKS_,comdat
	.weak	_ZN12CArchivePathaSERKS_        # -- Begin function _ZN12CArchivePathaSERKS_
	.p2align	5
	.type	_ZN12CArchivePathaSERKS_,@function
_ZN12CArchivePathaSERKS_:               # @_ZN12CArchivePathaSERKS_
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
	move	$s0, $a1
	move	$fp, $a0
	beq	$a1, $a0, .LBB17_3
# %bb.1:
	st.w	$zero, $fp, 8
	ld.d	$s2, $fp, 0
	ld.w	$a0, $s0, 8
	ld.w	$s4, $fp, 12
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_4
# %bb.2:
	move	$s1, $s2
	b	.LBB17_8
.LBB17_3:                               # %_ZN11CStringBaseIwEaSERKS0_.exit48.thread
	ld.b	$a0, $s0, 80
	st.b	$a0, $fp, 80
	b	.LBB17_59
.LBB17_4:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $a0
	blt	$s4, $a1, .LBB17_6
# %bb.5:                                # %._crit_edge.thread.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	b	.LBB17_7
.LBB17_6:
	move	$a0, $zero
.LBB17_7:
	st.d	$s1, $fp, 0
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 12
.LBB17_8:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $s0, 0
	.p2align	4, , 16
.LBB17_9:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_9
# %bb.10:
	ld.w	$a0, $s0, 8
	st.w	$a0, $fp, 8
	st.w	$zero, $fp, 24
	ld.d	$s2, $fp, 16
	ld.w	$a0, $s0, 24
	ld.w	$s4, $fp, 28
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_12
# %bb.11:
	move	$s1, $s2
	b	.LBB17_16
.LBB17_12:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $a0
	blt	$s4, $a1, .LBB17_14
# %bb.13:                               # %._crit_edge.thread.i.i14
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	b	.LBB17_15
.LBB17_14:
	move	$a0, $zero
.LBB17_15:
	st.d	$s1, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 28
.LBB17_16:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i9
	ld.d	$a0, $s0, 16
	.p2align	4, , 16
.LBB17_17:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_17
# %bb.18:
	ld.w	$a0, $s0, 24
	st.w	$a0, $fp, 24
	st.w	$zero, $fp, 40
	ld.d	$s2, $fp, 32
	ld.w	$a0, $s0, 40
	ld.w	$s4, $fp, 44
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_20
# %bb.19:
	move	$s1, $s2
	b	.LBB17_24
.LBB17_20:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $a0
	blt	$s4, $a1, .LBB17_22
# %bb.21:                               # %._crit_edge.thread.i.i22
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	b	.LBB17_23
.LBB17_22:
	move	$a0, $zero
.LBB17_23:
	st.d	$s1, $fp, 32
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 44
.LBB17_24:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i17
	ld.d	$a0, $s0, 32
	.p2align	4, , 16
.LBB17_25:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_25
# %bb.26:
	ld.w	$a0, $s0, 40
	st.w	$a0, $fp, 40
	st.w	$zero, $fp, 56
	ld.d	$s2, $fp, 48
	ld.w	$a0, $s0, 56
	ld.w	$s4, $fp, 60
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_28
# %bb.27:
	move	$s1, $s2
	b	.LBB17_32
.LBB17_28:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $a0
	blt	$s4, $a1, .LBB17_30
# %bb.29:                               # %._crit_edge.thread.i.i30
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 56
	b	.LBB17_31
.LBB17_30:
	move	$a0, $zero
.LBB17_31:
	st.d	$s1, $fp, 48
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 60
.LBB17_32:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i25
	ld.d	$a0, $s0, 48
	.p2align	4, , 16
.LBB17_33:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_33
# %bb.34:
	ld.w	$a0, $s0, 56
	st.w	$a0, $fp, 56
	st.w	$zero, $fp, 72
	ld.d	$s2, $fp, 64
	ld.w	$a0, $s0, 72
	ld.w	$s4, $fp, 76
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_36
# %bb.35:
	move	$s1, $s2
	b	.LBB17_40
.LBB17_36:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $a0
	blt	$s4, $a1, .LBB17_38
# %bb.37:                               # %._crit_edge.thread.i.i38
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 72
	b	.LBB17_39
.LBB17_38:
	move	$a0, $zero
.LBB17_39:
	st.d	$s1, $fp, 64
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 76
.LBB17_40:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33
	ld.d	$a0, $s0, 64
	.p2align	4, , 16
.LBB17_41:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_41
# %bb.42:
	ld.w	$a0, $s0, 72
	st.w	$a0, $fp, 72
	ld.b	$a1, $s0, 80
	st.w	$zero, $fp, 96
	ld.d	$s2, $fp, 88
	ld.w	$a0, $s0, 96
	ld.w	$s4, $fp, 100
	st.b	$a1, $fp, 80
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_44
# %bb.43:
	move	$s1, $s2
	b	.LBB17_48
.LBB17_44:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $a0
	blt	$s4, $a1, .LBB17_46
# %bb.45:                               # %._crit_edge.thread.i.i46
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 96
	b	.LBB17_47
.LBB17_46:
	move	$a0, $zero
.LBB17_47:
	st.d	$s1, $fp, 88
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 100
.LBB17_48:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i41
	ld.d	$a0, $s0, 88
	.p2align	4, , 16
.LBB17_49:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_49
# %bb.50:
	ld.w	$a0, $s0, 96
	st.w	$a0, $fp, 96
	st.w	$zero, $fp, 112
	ld.d	$s2, $fp, 104
	ld.w	$a0, $s0, 112
	ld.w	$s4, $fp, 116
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_52
# %bb.51:
	move	$s1, $s2
	b	.LBB17_56
.LBB17_52:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $a0
	blt	$s4, $a1, .LBB17_54
# %bb.53:                               # %._crit_edge.thread.i.i54
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 112
	b	.LBB17_55
.LBB17_54:
	move	$a0, $zero
.LBB17_55:
	st.d	$s1, $fp, 104
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 116
.LBB17_56:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i49
	ld.d	$a0, $s0, 104
	.p2align	4, , 16
.LBB17_57:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_57
# %bb.58:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i53
	ld.w	$a0, $s0, 112
	st.w	$a0, $fp, 112
.LBB17_59:                              # %_ZN11CStringBaseIwEaSERKS0_.exit56
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end17:
	.size	_ZN12CArchivePathaSERKS_, .Lfunc_end17-_ZN12CArchivePathaSERKS_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK12CArchivePath11GetTempPathEv,"axG",@progbits,_ZNK12CArchivePath11GetTempPathEv,comdat
	.weak	_ZNK12CArchivePath11GetTempPathEv # -- Begin function _ZNK12CArchivePath11GetTempPathEv
	.p2align	5
	.type	_ZNK12CArchivePath11GetTempPathEv,@function
_ZNK12CArchivePath11GetTempPathEv:      # @_ZNK12CArchivePath11GetTempPathEv
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	move	$s0, $a1
	ld.w	$s1, $a1, 96
	move	$fp, $a0
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s1, 31, 0
	addi.d	$s2, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s2, $a0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $fp, 0
	beqz	$a0, .LBB18_2
# %bb.1:
	move	$a0, $zero
	b	.LBB18_3
.LBB18_2:
	addi.w	$a0, $s2, 0
	slti	$a1, $s1, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $fp, 12
.LBB18_3:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a2, $s0, 88
	addi.d	$a1, $s0, 32
	.p2align	4, , 16
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a0, 4
	st.w	$a3, $a0, 0
	move	$a0, $a4
	bnez	$a3, .LBB18_4
# %bb.5:                                # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
	st.w	$s1, $fp, 8
.Ltmp536:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp537:
# %bb.6:                                # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit
	ld.w	$a0, $s0, 56
	beqz	$a0, .LBB18_16
# %bb.7:
.Ltmp539:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp540:
# %bb.8:
	move	$s1, $a0
	ori	$a0, $zero, 46
	st.d	$a0, $s1, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $sp, 24
.Ltmp542:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp543:
# %bb.9:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i10
	move	$a2, $zero
	addi.d	$a1, $s0, 48
	st.d	$a0, $sp, 24
	st.w	$zero, $a0, 0
	ori	$a3, $zero, 2
	st.w	$a3, $sp, 36
	.p2align	4, , 16
.LBB18_10:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a2
	stx.w	$a3, $a0, $a2
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB18_10
# %bb.11:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i14
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 32
.Ltmp545:
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp546:
# %bb.12:                               # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit16
.Ltmp548:
	addi.d	$a1, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp549:
# %bb.13:
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB18_15
# %bb.14:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_15:                              # %_ZN11CStringBaseIwED2Ev.exit17
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_16:
.Ltmp551:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp552:
# %bb.17:
	addi.d	$a1, $s0, 104
.Ltmp553:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp554:
# %bb.18:
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB18_19:
.Ltmp550:
	b	.LBB18_21
.LBB18_20:
.Ltmp547:
.LBB18_21:
	ld.d	$a1, $sp, 24
	move	$s0, $a0
	beqz	$a1, .LBB18_24
# %bb.22:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB18_24
.LBB18_23:
.Ltmp544:
	move	$s0, $a0
.LBB18_24:                              # %_ZN11CStringBaseIwED2Ev.exit19
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB18_30
.LBB18_25:
.Ltmp541:
	b	.LBB18_29
.LBB18_26:
.Ltmp538:
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	beqz	$a1, .LBB18_32
# %bb.27:
	move	$a0, $a1
	b	.LBB18_31
.LBB18_28:
.Ltmp555:
.LBB18_29:
	move	$s0, $a0
.LBB18_30:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB18_32
.LBB18_31:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_32:                              # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZNK12CArchivePath11GetTempPathEv, .Lfunc_end18-_ZNK12CArchivePath11GetTempPathEv
	.cfi_endproc
	.section	.gcc_except_table._ZNK12CArchivePath11GetTempPathEv,"aG",@progbits,_ZNK12CArchivePath11GetTempPathEv,comdat
	.p2align	2, 0x0
GCC_except_table18:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp536-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp536
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp536-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp537-.Ltmp536              #   Call between .Ltmp536 and .Ltmp537
	.uleb128 .Ltmp538-.Lfunc_begin10        #     jumps to .Ltmp538
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp539-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp540-.Ltmp539              #   Call between .Ltmp539 and .Ltmp540
	.uleb128 .Ltmp541-.Lfunc_begin10        #     jumps to .Ltmp541
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp542-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp543-.Ltmp542              #   Call between .Ltmp542 and .Ltmp543
	.uleb128 .Ltmp544-.Lfunc_begin10        #     jumps to .Ltmp544
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp545-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp546-.Ltmp545              #   Call between .Ltmp545 and .Ltmp546
	.uleb128 .Ltmp547-.Lfunc_begin10        #     jumps to .Ltmp547
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp548-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp549-.Ltmp548              #   Call between .Ltmp548 and .Ltmp549
	.uleb128 .Ltmp550-.Lfunc_begin10        #     jumps to .Ltmp550
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp551-.Ltmp549              #   Call between .Ltmp549 and .Ltmp551
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp551-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp554-.Ltmp551              #   Call between .Ltmp551 and .Ltmp554
	.uleb128 .Ltmp555-.Lfunc_begin10        #     jumps to .Ltmp555
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp554-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Lfunc_end18-.Ltmp554          #   Call between .Ltmp554 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
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
.Lfunc_end19:
	.size	__clang_call_terminate, .Lfunc_end19-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN13CObjectVectorI8CArcItemED2Ev,"axG",@progbits,_ZN13CObjectVectorI8CArcItemED2Ev,comdat
	.weak	_ZN13CObjectVectorI8CArcItemED2Ev # -- Begin function _ZN13CObjectVectorI8CArcItemED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI8CArcItemED2Ev,@function
_ZN13CObjectVectorI8CArcItemED2Ev:      # @_ZN13CObjectVectorI8CArcItemED2Ev
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI8CArcItemE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI8CArcItemE+16)
	st.d	$a0, $fp, 0
.Ltmp556:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp557:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB20_2:
.Ltmp558:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN13CObjectVectorI8CArcItemED2Ev, .Lfunc_end20-_ZN13CObjectVectorI8CArcItemED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI8CArcItemED2Ev,"aG",@progbits,_ZN13CObjectVectorI8CArcItemED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp556-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp557-.Ltmp556              #   Call between .Ltmp556 and .Ltmp557
	.uleb128 .Ltmp558-.Lfunc_begin11        #     jumps to .Ltmp558
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp557-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Lfunc_end20-.Ltmp557          #   Call between .Ltmp557 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN10CTempFilesD2Ev,"axG",@progbits,_ZN10CTempFilesD2Ev,comdat
	.weak	_ZN10CTempFilesD2Ev             # -- Begin function _ZN10CTempFilesD2Ev
	.p2align	5
	.type	_ZN10CTempFilesD2Ev,@function
_ZN10CTempFilesD2Ev:                    # @_ZN10CTempFilesD2Ev
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
.Ltmp559:
	pcaddu18i	$ra, %call36(_ZN10CTempFiles5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp560:
# %bb.1:
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp562:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp563:
# %bb.2:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB21_3:
.Ltmp564:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB21_4:
.Ltmp561:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN10CTempFilesD2Ev, .Lfunc_end21-_ZN10CTempFilesD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN10CTempFilesD2Ev,"aG",@progbits,_ZN10CTempFilesD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp559-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp560-.Ltmp559              #   Call between .Ltmp559 and .Ltmp560
	.uleb128 .Ltmp561-.Lfunc_begin12        #     jumps to .Ltmp561
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp562-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp563-.Ltmp562              #   Call between .Ltmp562 and .Ltmp563
	.uleb128 .Ltmp564-.Lfunc_begin12        #     jumps to .Ltmp564
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp563-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Lfunc_end21-.Ltmp563          #   Call between .Ltmp563 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9CDirItemsD2Ev,"axG",@progbits,_ZN9CDirItemsD2Ev,comdat
	.weak	_ZN9CDirItemsD2Ev               # -- Begin function _ZN9CDirItemsD2Ev
	.p2align	5
	.type	_ZN9CDirItemsD2Ev,@function
_ZN9CDirItemsD2Ev:                      # @_ZN9CDirItemsD2Ev
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
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
	addi.d	$s0, $a0, 96
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI8CDirItemE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI8CDirItemE+16)
	st.d	$a0, $fp, 96
.Ltmp565:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp566:
# %bb.1:                                # %_ZN13CObjectVectorI8CDirItemED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp568:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp569:
# %bb.2:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB22_3:
.Ltmp570:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB22_4:
.Ltmp567:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN9CDirItemsD2Ev, .Lfunc_end22-_ZN9CDirItemsD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9CDirItemsD2Ev,"aG",@progbits,_ZN9CDirItemsD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp565-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp566-.Ltmp565              #   Call between .Ltmp565 and .Ltmp566
	.uleb128 .Ltmp567-.Lfunc_begin13        #     jumps to .Ltmp567
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp566-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp568-.Ltmp566              #   Call between .Ltmp566 and .Ltmp568
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp568-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Ltmp569-.Ltmp568              #   Call between .Ltmp568 and .Ltmp569
	.uleb128 .Ltmp570-.Lfunc_begin13        #     jumps to .Ltmp570
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp569-.Lfunc_begin13        # >> Call Site 4 <<
	.uleb128 .Lfunc_end22-.Ltmp569          #   Call between .Ltmp569 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12CArchiveLinkD2Ev,"axG",@progbits,_ZN12CArchiveLinkD2Ev,comdat
	.weak	_ZN12CArchiveLinkD2Ev           # -- Begin function _ZN12CArchiveLinkD2Ev
	.p2align	5
	.type	_ZN12CArchiveLinkD2Ev,@function
_ZN12CArchiveLinkD2Ev:                  # @_ZN12CArchiveLinkD2Ev
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
.Ltmp571:
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink7ReleaseEv)
	jirl	$ra, $ra, 0
.Ltmp572:
# %bb.1:
	addi.d	$s0, $fp, 32
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 32
.Ltmp574:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp575:
# %bb.2:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $fp, 0
.Ltmp577:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp578:
# %bb.3:                                # %_ZN13CObjectVectorI4CArcED2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB23_4:
.Ltmp579:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB23_5:
.Ltmp576:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB23_6:
.Ltmp573:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN12CArchiveLinkD2Ev, .Lfunc_end23-_ZN12CArchiveLinkD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12CArchiveLinkD2Ev,"aG",@progbits,_ZN12CArchiveLinkD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table23:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp571-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp572-.Ltmp571              #   Call between .Ltmp571 and .Ltmp572
	.uleb128 .Ltmp573-.Lfunc_begin14        #     jumps to .Ltmp573
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp574-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp575-.Ltmp574              #   Call between .Ltmp574 and .Ltmp575
	.uleb128 .Ltmp576-.Lfunc_begin14        #     jumps to .Ltmp576
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp575-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp577-.Ltmp575              #   Call between .Ltmp575 and .Ltmp577
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp577-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Ltmp578-.Ltmp577              #   Call between .Ltmp577 and .Ltmp578
	.uleb128 .Ltmp579-.Lfunc_begin14        #     jumps to .Ltmp579
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp578-.Lfunc_begin14        # >> Call Site 5 <<
	.uleb128 .Lfunc_end23-.Ltmp578          #   Call between .Ltmp578 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv,@function
_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv: # @_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	pcalau12i	$a3, %got_pc_hi20(IID_IUnknown)
	ld.d	$a3, $a3, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a4, $a1, 0
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB24_16
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a3, 1
	bne	$a5, $a6, .LBB24_16
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a3, 2
	bne	$a5, $a6, .LBB24_16
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a3, 3
	bne	$a5, $a6, .LBB24_16
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a3, 4
	bne	$a5, $a6, .LBB24_16
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a3, 5
	bne	$a5, $a6, .LBB24_16
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a3, 6
	bne	$a5, $a6, .LBB24_16
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a3, 7
	bne	$a5, $a6, .LBB24_16
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a3, 8
	bne	$a5, $a6, .LBB24_16
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a3, 9
	bne	$a5, $a6, .LBB24_16
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a3, 10
	bne	$a5, $a6, .LBB24_16
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a3, 11
	bne	$a5, $a6, .LBB24_16
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a3, 12
	bne	$a5, $a6, .LBB24_16
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a3, 13
	bne	$a5, $a6, .LBB24_16
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a3, 14
	bne	$a5, $a6, .LBB24_16
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a5, $a1, 15
	ld.bu	$a3, $a3, 15
	beq	$a5, $a3, .LBB24_32
.LBB24_16:                              # %_ZeqRK4GUIDS1_.exit.thread
	pcalau12i	$a3, %got_pc_hi20(IID_IOutStream)
	ld.d	$a5, $a3, %got_pc_lo12(IID_IOutStream)
	ld.bu	$a6, $a5, 0
	lu12i.w	$a3, -524284
	ori	$a3, $a3, 2
	bne	$a4, $a6, .LBB24_33
# %bb.17:
	ld.bu	$a4, $a1, 1
	ld.bu	$a6, $a5, 1
	bne	$a4, $a6, .LBB24_33
# %bb.18:
	ld.bu	$a4, $a1, 2
	ld.bu	$a6, $a5, 2
	bne	$a4, $a6, .LBB24_33
# %bb.19:
	ld.bu	$a4, $a1, 3
	ld.bu	$a6, $a5, 3
	bne	$a4, $a6, .LBB24_33
# %bb.20:
	ld.bu	$a4, $a1, 4
	ld.bu	$a6, $a5, 4
	bne	$a4, $a6, .LBB24_33
# %bb.21:
	ld.bu	$a4, $a1, 5
	ld.bu	$a6, $a5, 5
	bne	$a4, $a6, .LBB24_33
# %bb.22:
	ld.bu	$a4, $a1, 6
	ld.bu	$a6, $a5, 6
	bne	$a4, $a6, .LBB24_33
# %bb.23:
	ld.bu	$a4, $a1, 7
	ld.bu	$a6, $a5, 7
	bne	$a4, $a6, .LBB24_33
# %bb.24:
	ld.bu	$a4, $a1, 8
	ld.bu	$a6, $a5, 8
	bne	$a4, $a6, .LBB24_33
# %bb.25:
	ld.bu	$a4, $a1, 9
	ld.bu	$a6, $a5, 9
	bne	$a4, $a6, .LBB24_33
# %bb.26:
	ld.bu	$a4, $a1, 10
	ld.bu	$a6, $a5, 10
	bne	$a4, $a6, .LBB24_33
# %bb.27:
	ld.bu	$a4, $a1, 11
	ld.bu	$a6, $a5, 11
	bne	$a4, $a6, .LBB24_33
# %bb.28:
	ld.bu	$a4, $a1, 12
	ld.bu	$a6, $a5, 12
	bne	$a4, $a6, .LBB24_33
# %bb.29:
	ld.bu	$a4, $a1, 13
	ld.bu	$a6, $a5, 13
	bne	$a4, $a6, .LBB24_33
# %bb.30:
	ld.bu	$a4, $a1, 14
	ld.bu	$a6, $a5, 14
	bne	$a4, $a6, .LBB24_33
# %bb.31:                               # %_ZeqRK4GUIDS1_.exit24
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a5, 15
	bne	$a1, $a4, .LBB24_33
.LBB24_32:                              # %_ZeqRK4GUIDS1_.exit24.thread.sink.split
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	move	$a3, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB24_33:                              # %_ZeqRK4GUIDS1_.exit24.thread
	move	$a0, $a3
	ret
.Lfunc_end24:
	.size	_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv, .Lfunc_end24-_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18COutMultiVolStream6AddRefEv,"axG",@progbits,_ZN18COutMultiVolStream6AddRefEv,comdat
	.weak	_ZN18COutMultiVolStream6AddRefEv # -- Begin function _ZN18COutMultiVolStream6AddRefEv
	.p2align	5
	.type	_ZN18COutMultiVolStream6AddRefEv,@function
_ZN18COutMultiVolStream6AddRefEv:       # @_ZN18COutMultiVolStream6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end25:
	.size	_ZN18COutMultiVolStream6AddRefEv, .Lfunc_end25-_ZN18COutMultiVolStream6AddRefEv
                                        # -- End function
	.section	.text._ZN18COutMultiVolStream7ReleaseEv,"axG",@progbits,_ZN18COutMultiVolStream7ReleaseEv,comdat
	.weak	_ZN18COutMultiVolStream7ReleaseEv # -- Begin function _ZN18COutMultiVolStream7ReleaseEv
	.p2align	5
	.type	_ZN18COutMultiVolStream7ReleaseEv,@function
_ZN18COutMultiVolStream7ReleaseEv:      # @_ZN18COutMultiVolStream7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB26_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB26_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end26:
	.size	_ZN18COutMultiVolStream7ReleaseEv, .Lfunc_end26-_ZN18COutMultiVolStream7ReleaseEv
                                        # -- End function
	.section	.text._ZN18COutMultiVolStreamD2Ev,"axG",@progbits,_ZN18COutMultiVolStreamD2Ev,comdat
	.weak	_ZN18COutMultiVolStreamD2Ev     # -- Begin function _ZN18COutMultiVolStreamD2Ev
	.p2align	5
	.type	_ZN18COutMultiVolStreamD2Ev,@function
_ZN18COutMultiVolStreamD2Ev:            # @_ZN18COutMultiVolStreamD2Ev
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
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
	ld.d	$a0, $a0, 104
	pcalau12i	$a1, %pc_hi20(_ZTV18COutMultiVolStream+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV18COutMultiVolStream+16)
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB27_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB27_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	addi.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 40
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	st.d	$a0, $fp, 40
.Ltmp580:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp581:
# %bb.3:                                # %_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev.exit
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB27_4:
.Ltmp582:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZN18COutMultiVolStreamD2Ev, .Lfunc_end27-_ZN18COutMultiVolStreamD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18COutMultiVolStreamD2Ev,"aG",@progbits,_ZN18COutMultiVolStreamD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table27:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp580-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp580
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp581-.Ltmp580              #   Call between .Ltmp580 and .Ltmp581
	.uleb128 .Ltmp582-.Lfunc_begin15        #     jumps to .Ltmp582
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp581-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Lfunc_end27-.Ltmp581          #   Call between .Ltmp581 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN18COutMultiVolStreamD0Ev,"axG",@progbits,_ZN18COutMultiVolStreamD0Ev,comdat
	.weak	_ZN18COutMultiVolStreamD0Ev     # -- Begin function _ZN18COutMultiVolStreamD0Ev
	.p2align	5
	.type	_ZN18COutMultiVolStreamD0Ev,@function
_ZN18COutMultiVolStreamD0Ev:            # @_ZN18COutMultiVolStreamD0Ev
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
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
	ld.d	$a0, $a0, 104
	pcalau12i	$a1, %pc_hi20(_ZTV18COutMultiVolStream+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV18COutMultiVolStream+16)
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB28_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB28_2:                               # %_ZN11CStringBaseIwED2Ev.exit.i
	addi.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 40
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	st.d	$a0, $fp, 40
.Ltmp583:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp584:
# %bb.3:                                # %_ZN18COutMultiVolStreamD2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 128
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB28_4:
.Ltmp585:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN18COutMultiVolStreamD0Ev, .Lfunc_end28-_ZN18COutMultiVolStreamD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18COutMultiVolStreamD0Ev,"aG",@progbits,_ZN18COutMultiVolStreamD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table28:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp583-.Lfunc_begin16        #   Call between .Lfunc_begin16 and .Ltmp583
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp583-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp584-.Ltmp583              #   Call between .Ltmp583 and .Ltmp584
	.uleb128 .Ltmp585-.Lfunc_begin16        #     jumps to .Ltmp585
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp584-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Lfunc_end28-.Ltmp584          #   Call between .Ltmp584 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NWindows5NFile3NIO8COutFileD0Ev,"axG",@progbits,_ZN8NWindows5NFile3NIO8COutFileD0Ev,comdat
	.weak	_ZN8NWindows5NFile3NIO8COutFileD0Ev # -- Begin function _ZN8NWindows5NFile3NIO8COutFileD0Ev
	.p2align	5
	.type	_ZN8NWindows5NFile3NIO8COutFileD0Ev,@function
_ZN8NWindows5NFile3NIO8COutFileD0Ev:    # @_ZN8NWindows5NFile3NIO8COutFileD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO9CFileBaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1088
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end29:
	.size	_ZN8NWindows5NFile3NIO8COutFileD0Ev, .Lfunc_end29-_ZN8NWindows5NFile3NIO8COutFileD0Ev
                                        # -- End function
	.section	.text._ZNK11CStringBaseIwE3MidEii,"axG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.weak	_ZNK11CStringBaseIwE3MidEii     # -- Begin function _ZNK11CStringBaseIwE3MidEii
	.p2align	5
	.type	_ZNK11CStringBaseIwE3MidEii,@function
_ZNK11CStringBaseIwE3MidEii:            # @_ZNK11CStringBaseIwE3MidEii
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
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
	move	$s0, $a1
	ld.w	$s2, $a1, 8
	move	$s1, $a2
	move	$fp, $a0
	add.w	$a0, $a3, $a2
	slt	$a0, $s2, $a0
	sub.w	$a1, $s2, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$s4, $a1, $a0
	bnez	$a2, .LBB30_4
# %bb.1:
	bne	$s4, $s2, .LBB30_4
# %bb.2:
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s1, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s1, $a0
	vst	$vr0, $fp, 0
	beqz	$a0, .LBB30_13
# %bb.3:
	move	$a0, $zero
	b	.LBB30_14
.LBB30_4:
	st.d	$zero, $fp, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 4
	addi.w	$s5, $s4, 1
	st.w	$a1, $fp, 12
	beq	$s5, $a1, .LBB30_7
# %bb.5:
	move	$s2, $a0
	slti	$a0, $s4, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp586:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp587:
# %bb.6:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	st.d	$s3, $fp, 0
	st.w	$zero, $s3, 0
	st.w	$s5, $fp, 12
	blez	$s4, .LBB30_12
.LBB30_7:                               # %iter.check
	ld.d	$a2, $s0, 0
	ori	$a3, $zero, 3
	alsl.d	$a1, $s1, $a2, 2
	bgeu	$a3, $s4, .LBB30_9
# %bb.8:                                # %vector.memcheck
	alsl.d	$a2, $s1, $a2, 2
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 64
	bgeu	$a2, $a3, .LBB30_18
.LBB30_9:
	move	$a2, $zero
.LBB30_10:                              # %vec.epilog.scalar.ph.preheader
	slli.d	$a3, $a2, 2
	.p2align	4, , 16
.LBB30_11:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a1, $a3
	stx.w	$a4, $a0, $a3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bltu	$a2, $s4, .LBB30_11
.LBB30_12:                              # %._crit_edge
	slli.d	$a1, $s4, 2
	stx.w	$zero, $a0, $a1
	b	.LBB30_17
.LBB30_13:
	addi.w	$a0, $s1, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s1, $fp, 12
.LBB30_14:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a1, $s0, 0
	.p2align	4, , 16
.LBB30_15:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB30_15
# %bb.16:
	move	$s4, $s2
.LBB30_17:                              # %_ZN11CStringBaseIwEC2ERKS0_.exit
	st.w	$s4, $fp, 8
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
.LBB30_18:                              # %vector.main.loop.iter.check
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $s4
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s4, $a3
	ori	$a4, $zero, 16
	or	$a3, $a3, $a2
	bgeu	$s4, $a4, .LBB30_20
# %bb.19:
	move	$a2, $zero
	b	.LBB30_24
.LBB30_20:                              # %vector.ph
	bstrpick.d	$a2, $a3, 30, 4
	slli.d	$a2, $a2, 4
	move	$a4, $zero
	move	$a5, $a2
	.p2align	4, , 16
.LBB30_21:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a1, $a4
	xvldx	$xr0, $a1, $a4
	xvld	$xr1, $a6, 32
	add.d	$a6, $a0, $a4
	xvstx	$xr0, $a0, $a4
	xvst	$xr1, $a6, 32
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB30_21
# %bb.22:                               # %middle.block
	beq	$a2, $s4, .LBB30_12
# %bb.23:                               # %vec.epilog.iter.check
	andi	$a4, $a3, 12
	beqz	$a4, .LBB30_10
.LBB30_24:                              # %vec.epilog.ph
	move	$a4, $a2
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a4, $a2
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB30_25:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a1, $a4
	vstx	$vr0, $a0, $a4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB30_25
# %bb.26:                               # %vec.epilog.middle.block
	bne	$a2, $s4, .LBB30_10
	b	.LBB30_12
.LBB30_27:                              # %_ZN11CStringBaseIwED2Ev.exit
.Ltmp588:
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZNK11CStringBaseIwE3MidEii, .Lfunc_end30-_ZNK11CStringBaseIwE3MidEii
	.cfi_endproc
	.section	.gcc_except_table._ZNK11CStringBaseIwE3MidEii,"aG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.p2align	2, 0x0
GCC_except_table30:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp586-.Lfunc_begin17        #   Call between .Lfunc_begin17 and .Ltmp586
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp586-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp587-.Ltmp586              #   Call between .Ltmp586 and .Ltmp587
	.uleb128 .Ltmp588-.Lfunc_begin17        #     jumps to .Ltmp588
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp587-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Lfunc_end30-.Ltmp587          #   Call between .Ltmp587 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI4CArcED2Ev,"axG",@progbits,_ZN13CObjectVectorI4CArcED2Ev,comdat
	.weak	_ZN13CObjectVectorI4CArcED2Ev   # -- Begin function _ZN13CObjectVectorI4CArcED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI4CArcED2Ev,@function
_ZN13CObjectVectorI4CArcED2Ev:          # @_ZN13CObjectVectorI4CArcED2Ev
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $fp, 0
.Ltmp589:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp590:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB31_2:
.Ltmp591:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZN13CObjectVectorI4CArcED2Ev, .Lfunc_end31-_ZN13CObjectVectorI4CArcED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcED2Ev,"aG",@progbits,_ZN13CObjectVectorI4CArcED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table31:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp589-.Lfunc_begin18        # >> Call Site 1 <<
	.uleb128 .Ltmp590-.Ltmp589              #   Call between .Ltmp589 and .Ltmp590
	.uleb128 .Ltmp591-.Lfunc_begin18        #     jumps to .Ltmp591
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp590-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Lfunc_end31-.Ltmp590          #   Call between .Ltmp590 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI4CArcED0Ev,"axG",@progbits,_ZN13CObjectVectorI4CArcED0Ev,comdat
	.weak	_ZN13CObjectVectorI4CArcED0Ev   # -- Begin function _ZN13CObjectVectorI4CArcED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI4CArcED0Ev,@function
_ZN13CObjectVectorI4CArcED0Ev:          # @_ZN13CObjectVectorI4CArcED0Ev
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $fp, 0
.Ltmp592:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp593:
# %bb.1:                                # %_ZN13CObjectVectorI4CArcED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB32_2:
.Ltmp594:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZN13CObjectVectorI4CArcED0Ev, .Lfunc_end32-_ZN13CObjectVectorI4CArcED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcED0Ev,"aG",@progbits,_ZN13CObjectVectorI4CArcED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table32:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp592-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp593-.Ltmp592              #   Call between .Ltmp592 and .Ltmp593
	.uleb128 .Ltmp594-.Lfunc_begin19        #     jumps to .Ltmp594
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp593-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Lfunc_end32-.Ltmp593          #   Call between .Ltmp593 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI4CArcE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI4CArcE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI4CArcE6DeleteEii # -- Begin function _ZN13CObjectVectorI4CArcE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI4CArcE6DeleteEii,@function
_ZN13CObjectVectorI4CArcE6DeleteEii:    # @_ZN13CObjectVectorI4CArcE6DeleteEii
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB33_13
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB33_4
	.p2align	4, , 16
.LBB33_2:                               # %_ZN4CArcD2Ev.exit
                                        #   in Loop: Header=BB33_4 Depth=1
	ori	$a1, $zero, 80
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_3:                               #   in Loop: Header=BB33_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB33_13
.LBB33_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB33_3
# %bb.5:                                #   in Loop: Header=BB33_4 Depth=1
	ld.d	$a0, $s2, 64
	beqz	$a0, .LBB33_7
# %bb.6:                                #   in Loop: Header=BB33_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_7:                               # %_ZN11CStringBaseIwED2Ev.exit.i
                                        #   in Loop: Header=BB33_4 Depth=1
	ld.d	$a0, $s2, 24
	beqz	$a0, .LBB33_9
# %bb.8:                                #   in Loop: Header=BB33_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_9:                               # %_ZN11CStringBaseIwED2Ev.exit1.i
                                        #   in Loop: Header=BB33_4 Depth=1
	ld.d	$a0, $s2, 8
	beqz	$a0, .LBB33_11
# %bb.10:                               #   in Loop: Header=BB33_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_11:                              # %_ZN11CStringBaseIwED2Ev.exit2.i
                                        #   in Loop: Header=BB33_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB33_2
# %bb.12:                               #   in Loop: Header=BB33_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp595:
	jirl	$ra, $a1, 0
.Ltmp596:
	b	.LBB33_2
.LBB33_13:                              # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB33_14:
.Ltmp597:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	_ZN13CObjectVectorI4CArcE6DeleteEii, .Lfunc_end33-_ZN13CObjectVectorI4CArcE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI4CArcE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table33:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp595-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp595
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp595-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp596-.Ltmp595              #   Call between .Ltmp595 and .Ltmp596
	.uleb128 .Ltmp597-.Lfunc_begin20        #     jumps to .Ltmp597
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp596-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Lfunc_end33-.Ltmp596          #   Call between .Ltmp596 and .Lfunc_end33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEpLERKS0_,"axG",@progbits,_ZN11CStringBaseIwEpLERKS0_,comdat
	.weak	_ZN11CStringBaseIwEpLERKS0_     # -- Begin function _ZN11CStringBaseIwEpLERKS0_
	.p2align	5
	.type	_ZN11CStringBaseIwEpLERKS0_,@function
_ZN11CStringBaseIwEpLERKS0_:            # @_ZN11CStringBaseIwEpLERKS0_
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
	move	$fp, $a1
	ld.w	$s1, $a0, 8
	ld.w	$s4, $a0, 12
	ld.w	$a1, $a1, 8
	nor	$a2, $s1, $zero
	add.w	$a2, $s4, $a2
	bge	$a2, $a1, .LBB34_21
# %bb.1:
	ori	$a3, $zero, 64
	slt	$a3, $a3, $s4
	bstrpick.d	$a4, $s4, 31, 1
	ori	$a5, $zero, 8
	slt	$a5, $a5, $s4
	ori	$a6, $zero, 4
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 16
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	add.w	$a4, $a3, $a2
	slt	$a4, $a4, $a1
	sub.d	$a1, $a1, $a2
	masknez	$a2, $a3, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	add.w	$a1, $a1, $s4
	addi.w	$s2, $a1, 1
	beq	$s2, $s4, .LBB34_21
# %bb.2:
	move	$s3, $a0
	slti	$a0, $a1, -1
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$s0, $a0
	blt	$s4, $a2, .LBB34_8
# %bb.3:                                # %.preheader.i.i
	ld.d	$a0, $s3, 0
	blt	$s1, $a2, .LBB34_9
# %bb.4:                                # %iter.check
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s1, $a2, .LBB34_17
# %bb.5:                                # %iter.check
	sub.d	$a2, $s0, $a0
	ori	$a3, $zero, 63
	bgeu	$a3, $a2, .LBB34_17
# %bb.6:                                # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$s1, $a1, .LBB34_10
# %bb.7:
	move	$a1, $zero
	b	.LBB34_14
.LBB34_8:
	move	$a1, $s3
	b	.LBB34_20
.LBB34_9:                               # %._crit_edge.i.i
	move	$a1, $s3
	bnez	$a0, .LBB34_19
	b	.LBB34_20
.LBB34_10:                              # %vector.ph
	bstrpick.d	$a1, $s1, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $s0, 32
	addi.d	$a3, $a0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB34_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB34_11
# %bb.12:                               # %middle.block
	beq	$a1, $s1, .LBB34_19
# %bb.13:                               # %vec.epilog.iter.check
	andi	$a2, $s1, 12
	beqz	$a2, .LBB34_17
.LBB34_14:                              # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s1, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $s0, 2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB34_15:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB34_15
# %bb.16:                               # %vec.epilog.middle.block
	beq	$a1, $s1, .LBB34_19
.LBB34_17:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a2, $s1, $a1
	alsl.d	$a3, $a1, $s0, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB34_18:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB34_18
.LBB34_19:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	ld.w	$s1, $s3, 8
.LBB34_20:
	move	$a0, $a1
	st.d	$s0, $a1, 0
	slli.d	$a1, $s1, 2
	stx.w	$zero, $s0, $a1
	st.w	$s2, $a0, 12
.LBB34_21:                              # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a2, $s1, $a2, 2
	.p2align	4, , 16
.LBB34_22:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a2, 4
	st.w	$a3, $a2, 0
	move	$a2, $a4
	bnez	$a3, .LBB34_22
# %bb.23:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	ld.w	$a1, $fp, 8
	add.d	$a1, $a1, $s1
	st.w	$a1, $a0, 8
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end34:
	.size	_ZN11CStringBaseIwEpLERKS0_, .Lfunc_end34-_ZN11CStringBaseIwEpLERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorI8CDirItemED2Ev,"axG",@progbits,_ZN13CObjectVectorI8CDirItemED2Ev,comdat
	.weak	_ZN13CObjectVectorI8CDirItemED2Ev # -- Begin function _ZN13CObjectVectorI8CDirItemED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI8CDirItemED2Ev,@function
_ZN13CObjectVectorI8CDirItemED2Ev:      # @_ZN13CObjectVectorI8CDirItemED2Ev
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception21
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI8CDirItemE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI8CDirItemE+16)
	st.d	$a0, $fp, 0
.Ltmp598:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp599:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB35_2:
.Ltmp600:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	_ZN13CObjectVectorI8CDirItemED2Ev, .Lfunc_end35-_ZN13CObjectVectorI8CDirItemED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI8CDirItemED2Ev,"aG",@progbits,_ZN13CObjectVectorI8CDirItemED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table35:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp598-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp599-.Ltmp598              #   Call between .Ltmp598 and .Ltmp599
	.uleb128 .Ltmp600-.Lfunc_begin21        #     jumps to .Ltmp600
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp599-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Lfunc_end35-.Ltmp599          #   Call between .Ltmp599 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI8CDirItemED0Ev,"axG",@progbits,_ZN13CObjectVectorI8CDirItemED0Ev,comdat
	.weak	_ZN13CObjectVectorI8CDirItemED0Ev # -- Begin function _ZN13CObjectVectorI8CDirItemED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI8CDirItemED0Ev,@function
_ZN13CObjectVectorI8CDirItemED0Ev:      # @_ZN13CObjectVectorI8CDirItemED0Ev
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception22
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI8CDirItemE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI8CDirItemE+16)
	st.d	$a0, $fp, 0
.Ltmp601:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp602:
# %bb.1:                                # %_ZN13CObjectVectorI8CDirItemED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB36_2:
.Ltmp603:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	_ZN13CObjectVectorI8CDirItemED0Ev, .Lfunc_end36-_ZN13CObjectVectorI8CDirItemED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI8CDirItemED0Ev,"aG",@progbits,_ZN13CObjectVectorI8CDirItemED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table36:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp601-.Lfunc_begin22        # >> Call Site 1 <<
	.uleb128 .Ltmp602-.Ltmp601              #   Call between .Ltmp601 and .Ltmp602
	.uleb128 .Ltmp603-.Lfunc_begin22        #     jumps to .Ltmp603
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp602-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Lfunc_end36-.Ltmp602          #   Call between .Ltmp602 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI8CDirItemE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI8CDirItemE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI8CDirItemE6DeleteEii # -- Begin function _ZN13CObjectVectorI8CDirItemE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI8CDirItemE6DeleteEii,@function
_ZN13CObjectVectorI8CDirItemE6DeleteEii: # @_ZN13CObjectVectorI8CDirItemE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB37_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB37_4
	.p2align	4, , 16
.LBB37_2:                               # %_ZN8CDirItemD2Ev.exit
                                        #   in Loop: Header=BB37_4 Depth=1
	ori	$a1, $zero, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_3:                               #   in Loop: Header=BB37_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB37_7
.LBB37_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB37_3
# %bb.5:                                #   in Loop: Header=BB37_4 Depth=1
	ld.d	$a0, $s2, 32
	beqz	$a0, .LBB37_2
# %bb.6:                                #   in Loop: Header=BB37_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB37_2
.LBB37_7:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end37:
	.size	_ZN13CObjectVectorI8CDirItemE6DeleteEii, .Lfunc_end37-_ZN13CObjectVectorI8CDirItemE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw,"axG",@progbits,_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw,comdat
	.weak	_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw # -- Begin function _ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw
	.p2align	5
	.type	_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw,@function
_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw: # @_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 8
	ld.d	$a4, $a0, 0
	ld.d	$a4, $a4, 104
	jr	$a4
.Lfunc_end38:
	.size	_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw, .Lfunc_end38-_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CRecordVectorI12CUpdatePair2ED0Ev,"axG",@progbits,_ZN13CRecordVectorI12CUpdatePair2ED0Ev,comdat
	.weak	_ZN13CRecordVectorI12CUpdatePair2ED0Ev # -- Begin function _ZN13CRecordVectorI12CUpdatePair2ED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorI12CUpdatePair2ED0Ev,@function
_ZN13CRecordVectorI12CUpdatePair2ED0Ev: # @_ZN13CRecordVectorI12CUpdatePair2ED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end39:
	.size	_ZN13CRecordVectorI12CUpdatePair2ED0Ev, .Lfunc_end39-_ZN13CRecordVectorI12CUpdatePair2ED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorI11CUpdatePairED0Ev,"axG",@progbits,_ZN13CRecordVectorI11CUpdatePairED0Ev,comdat
	.weak	_ZN13CRecordVectorI11CUpdatePairED0Ev # -- Begin function _ZN13CRecordVectorI11CUpdatePairED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorI11CUpdatePairED0Ev,@function
_ZN13CRecordVectorI11CUpdatePairED0Ev:  # @_ZN13CRecordVectorI11CUpdatePairED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end40:
	.size	_ZN13CRecordVectorI11CUpdatePairED0Ev, .Lfunc_end40-_ZN13CRecordVectorI11CUpdatePairED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev # -- Begin function _ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev,@function
_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev: # @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception23
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp604:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp605:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB41_2:
.Ltmp606:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end41:
	.size	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev, .Lfunc_end41-_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table41:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp604-.Lfunc_begin23        # >> Call Site 1 <<
	.uleb128 .Ltmp605-.Ltmp604              #   Call between .Ltmp604 and .Ltmp605
	.uleb128 .Ltmp606-.Lfunc_begin23        #     jumps to .Ltmp606
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp605-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Lfunc_end41-.Ltmp605          #   Call between .Ltmp605 and .Lfunc_end41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev # -- Begin function _ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev,@function
_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev: # @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception24
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp607:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp608:
# %bb.1:                                # %_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB42_2:
.Ltmp609:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev, .Lfunc_end42-_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table42:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp607-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp608-.Ltmp607              #   Call between .Ltmp607 and .Ltmp608
	.uleb128 .Ltmp609-.Lfunc_begin24        #     jumps to .Ltmp609
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp608-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Lfunc_end42-.Ltmp608          #   Call between .Ltmp608 and .Lfunc_end42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii,@function
_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii: # @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii
.Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception25
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB43_9
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB43_4
	.p2align	4, , 16
.LBB43_2:                               # %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit
                                        #   in Loop: Header=BB43_4 Depth=1
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB43_3:                               #   in Loop: Header=BB43_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB43_9
.LBB43_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB43_3
# %bb.5:                                #   in Loop: Header=BB43_4 Depth=1
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB43_7
# %bb.6:                                #   in Loop: Header=BB43_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB43_7:                               # %_ZN11CStringBaseIwED2Ev.exit.i
                                        #   in Loop: Header=BB43_4 Depth=1
	ld.d	$a0, $s2, 8
	beqz	$a0, .LBB43_2
# %bb.8:                                #   in Loop: Header=BB43_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp610:
	jirl	$ra, $a1, 0
.Ltmp611:
	b	.LBB43_2
.LBB43_9:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB43_10:
.Ltmp612:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii, .Lfunc_end43-_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table43:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Lfunc_begin25-.Lfunc_begin25  # >> Call Site 1 <<
	.uleb128 .Ltmp610-.Lfunc_begin25        #   Call between .Lfunc_begin25 and .Ltmp610
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp610-.Lfunc_begin25        # >> Call Site 2 <<
	.uleb128 .Ltmp611-.Ltmp610              #   Call between .Ltmp610 and .Ltmp611
	.uleb128 .Ltmp612-.Lfunc_begin25        #     jumps to .Ltmp612
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp611-.Lfunc_begin25        # >> Call Site 3 <<
	.uleb128 .Lfunc_end43-.Ltmp611          #   Call between .Ltmp611 and .Lfunc_end43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end25:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase19:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CRecordVectorIyED0Ev,"axG",@progbits,_ZN13CRecordVectorIyED0Ev,comdat
	.weak	_ZN13CRecordVectorIyED0Ev       # -- Begin function _ZN13CRecordVectorIyED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIyED0Ev,@function
_ZN13CRecordVectorIyED0Ev:              # @_ZN13CRecordVectorIyED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end44:
	.size	_ZN13CRecordVectorIyED0Ev, .Lfunc_end44-_ZN13CRecordVectorIyED0Ev
                                        # -- End function
	.section	.text._ZN8NWindows5NFile3NIO7CInFileD0Ev,"axG",@progbits,_ZN8NWindows5NFile3NIO7CInFileD0Ev,comdat
	.weak	_ZN8NWindows5NFile3NIO7CInFileD0Ev # -- Begin function _ZN8NWindows5NFile3NIO7CInFileD0Ev
	.p2align	5
	.type	_ZN8NWindows5NFile3NIO7CInFileD0Ev,@function
_ZN8NWindows5NFile3NIO7CInFileD0Ev:     # @_ZN8NWindows5NFile3NIO7CInFileD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO9CFileBaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1088
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end45:
	.size	_ZN8NWindows5NFile3NIO7CInFileD0Ev, .Lfunc_end45-_ZN8NWindows5NFile3NIO7CInFileD0Ev
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEpLEPKw,"axG",@progbits,_ZN11CStringBaseIwEpLEPKw,comdat
	.weak	_ZN11CStringBaseIwEpLEPKw       # -- Begin function _ZN11CStringBaseIwEpLEPKw
	.p2align	5
	.type	_ZN11CStringBaseIwEpLEPKw,@function
_ZN11CStringBaseIwEpLEPKw:              # @_ZN11CStringBaseIwEpLEPKw
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
	move	$s0, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 8
	ld.w	$s5, $fp, 12
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	nor	$a1, $s3, $zero
	add.w	$a1, $s5, $a1
	bge	$a1, $a0, .LBB46_20
# %bb.1:
	ori	$a2, $zero, 64
	slt	$a2, $a2, $s5
	bstrpick.d	$a3, $s5, 31, 1
	ori	$a4, $zero, 8
	slt	$a4, $a4, $s5
	ori	$a5, $zero, 4
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 16
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	add.w	$a3, $a2, $a1
	slt	$a0, $a3, $a0
	sub.d	$a1, $s1, $a1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	add.w	$a0, $a0, $s5
	addi.w	$s4, $a0, 1
	beq	$s4, $s5, .LBB46_20
# %bb.2:
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s2, $a0
	blt	$s5, $a1, .LBB46_19
# %bb.3:                                # %.preheader.i.i
	ld.d	$a0, $fp, 0
	blt	$s3, $a1, .LBB46_8
# %bb.4:                                # %iter.check
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s3, $a2, .LBB46_16
# %bb.5:                                # %iter.check
	sub.d	$a2, $s2, $a0
	ori	$a3, $zero, 63
	bgeu	$a3, $a2, .LBB46_16
# %bb.6:                                # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$s3, $a1, .LBB46_9
# %bb.7:
	move	$a1, $zero
	b	.LBB46_13
.LBB46_8:                               # %._crit_edge.i.i
	bnez	$a0, .LBB46_18
	b	.LBB46_19
.LBB46_9:                               # %vector.ph
	bstrpick.d	$a1, $s3, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $s2, 32
	addi.d	$a3, $a0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB46_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB46_10
# %bb.11:                               # %middle.block
	beq	$a1, $s3, .LBB46_18
# %bb.12:                               # %vec.epilog.iter.check
	andi	$a2, $s3, 12
	beqz	$a2, .LBB46_16
.LBB46_13:                              # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s3, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $s2, 2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB46_14:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB46_14
# %bb.15:                               # %vec.epilog.middle.block
	beq	$a1, $s3, .LBB46_18
.LBB46_16:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a2, $s3, $a1
	alsl.d	$a3, $a1, $s2, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB46_17:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB46_17
.LBB46_18:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 8
.LBB46_19:
	st.d	$s2, $fp, 0
	slli.d	$a0, $s3, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $fp, 12
.LBB46_20:                              # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a0, $fp, 0
	alsl.d	$a0, $s3, $a0, 2
	.p2align	4, , 16
.LBB46_21:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$a2, $a0, 4
	st.w	$a1, $a0, 0
	move	$a0, $a2
	bnez	$a1, .LBB46_21
# %bb.22:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	add.d	$a0, $s3, $s1
	st.w	$a0, $fp, 8
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
	ret
.Lfunc_end46:
	.size	_ZN11CStringBaseIwEpLEPKw, .Lfunc_end46-_ZN11CStringBaseIwEpLEPKw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEED0Ev,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED0Ev,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEED0Ev # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI11CStringBaseIwEED0Ev,@function
_ZN13CObjectVectorI11CStringBaseIwEED0Ev: # @_ZN13CObjectVectorI11CStringBaseIwEED0Ev
.Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception26
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp613:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp614:
# %bb.1:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB47_2:
.Ltmp615:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end47:
	.size	_ZN13CObjectVectorI11CStringBaseIwEED0Ev, .Lfunc_end47-_ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CStringBaseIwEED0Ev,"aG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table47:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp613-.Lfunc_begin26        # >> Call Site 1 <<
	.uleb128 .Ltmp614-.Ltmp613              #   Call between .Ltmp613 and .Ltmp614
	.uleb128 .Ltmp615-.Lfunc_begin26        #     jumps to .Ltmp615
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp614-.Lfunc_begin26        # >> Call Site 2 <<
	.uleb128 .Lfunc_end47-.Ltmp614          #   Call between .Ltmp614 and .Lfunc_end47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end26:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,@function
_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii: # @_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB48_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB48_4
	.p2align	4, , 16
.LBB48_2:                               # %_ZN11CStringBaseIwED2Ev.exit
                                        #   in Loop: Header=BB48_4 Depth=1
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB48_3:                               #   in Loop: Header=BB48_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB48_7
.LBB48_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB48_3
# %bb.5:                                #   in Loop: Header=BB48_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB48_2
# %bb.6:                                #   in Loop: Header=BB48_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB48_2
.LBB48_7:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end48:
	.size	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii, .Lfunc_end48-_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CRecordVectorIiED0Ev,"axG",@progbits,_ZN13CRecordVectorIiED0Ev,comdat
	.weak	_ZN13CRecordVectorIiED0Ev       # -- Begin function _ZN13CRecordVectorIiED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIiED0Ev,@function
_ZN13CRecordVectorIiED0Ev:              # @_ZN13CRecordVectorIiED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end49:
	.size	_ZN13CRecordVectorIiED0Ev, .Lfunc_end49-_ZN13CRecordVectorIiED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIjED0Ev,"axG",@progbits,_ZN13CRecordVectorIjED0Ev,comdat
	.weak	_ZN13CRecordVectorIjED0Ev       # -- Begin function _ZN13CRecordVectorIjED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIjED0Ev,@function
_ZN13CRecordVectorIjED0Ev:              # @_ZN13CRecordVectorIjED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end50:
	.size	_ZN13CRecordVectorIjED0Ev, .Lfunc_end50-_ZN13CRecordVectorIjED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorI8CArcItemED0Ev,"axG",@progbits,_ZN13CObjectVectorI8CArcItemED0Ev,comdat
	.weak	_ZN13CObjectVectorI8CArcItemED0Ev # -- Begin function _ZN13CObjectVectorI8CArcItemED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI8CArcItemED0Ev,@function
_ZN13CObjectVectorI8CArcItemED0Ev:      # @_ZN13CObjectVectorI8CArcItemED0Ev
.Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception27
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI8CArcItemE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI8CArcItemE+16)
	st.d	$a0, $fp, 0
.Ltmp616:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp617:
# %bb.1:                                # %_ZN13CObjectVectorI8CArcItemED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB51_2:
.Ltmp618:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end51:
	.size	_ZN13CObjectVectorI8CArcItemED0Ev, .Lfunc_end51-_ZN13CObjectVectorI8CArcItemED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI8CArcItemED0Ev,"aG",@progbits,_ZN13CObjectVectorI8CArcItemED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table51:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Ltmp616-.Lfunc_begin27        # >> Call Site 1 <<
	.uleb128 .Ltmp617-.Ltmp616              #   Call between .Ltmp616 and .Ltmp617
	.uleb128 .Ltmp618-.Lfunc_begin27        #     jumps to .Ltmp618
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp617-.Lfunc_begin27        # >> Call Site 2 <<
	.uleb128 .Lfunc_end51-.Ltmp617          #   Call between .Ltmp617 and .Lfunc_end51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end27:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase21:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI8CArcItemE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI8CArcItemE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI8CArcItemE6DeleteEii # -- Begin function _ZN13CObjectVectorI8CArcItemE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI8CArcItemE6DeleteEii,@function
_ZN13CObjectVectorI8CArcItemE6DeleteEii: # @_ZN13CObjectVectorI8CArcItemE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB52_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB52_4
	.p2align	4, , 16
.LBB52_2:                               # %_ZN8CArcItemD2Ev.exit
                                        #   in Loop: Header=BB52_4 Depth=1
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB52_3:                               #   in Loop: Header=BB52_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB52_7
.LBB52_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB52_3
# %bb.5:                                #   in Loop: Header=BB52_4 Depth=1
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB52_2
# %bb.6:                                #   in Loop: Header=BB52_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB52_2
.LBB52_7:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end52:
	.size	_ZN13CObjectVectorI8CArcItemE6DeleteEii, .Lfunc_end52-_ZN13CObjectVectorI8CArcItemE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str4.8,"aMS",@progbits,4
	.p2align	3, 0x0
.L.str:
	.word	114                             # 0x72
	.word	115                             # 0x73
	.word	102                             # 0x66
	.word	120                             # 0x78
	.word	0                               # 0x0
	.size	.L.str, 20

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"there is no such archive"
	.size	.L.str.4, 25

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.5:
	.word	85                              # 0x55
	.word	112                             # 0x70
	.word	100                             # 0x64
	.word	97                              # 0x61
	.word	116                             # 0x74
	.word	105                             # 0x69
	.word	110                             # 0x6e
	.word	103                             # 0x67
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	111                             # 0x6f
	.word	114                             # 0x72
	.word	32                              # 0x20
	.word	109                             # 0x6d
	.word	117                             # 0x75
	.word	108                             # 0x6c
	.word	116                             # 0x74
	.word	105                             # 0x69
	.word	118                             # 0x76
	.word	111                             # 0x6f
	.word	108                             # 0x6c
	.word	117                             # 0x75
	.word	109                             # 0x6d
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	97                              # 0x61
	.word	114                             # 0x72
	.word	99                              # 0x63
	.word	104                             # 0x68
	.word	105                             # 0x69
	.word	118                             # 0x76
	.word	101                             # 0x65
	.word	115                             # 0x73
	.word	32                              # 0x20
	.word	105                             # 0x69
	.word	115                             # 0x73
	.word	32                              # 0x20
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	105                             # 0x69
	.word	109                             # 0x6d
	.word	112                             # 0x70
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	109                             # 0x6d
	.word	101                             # 0x65
	.word	110                             # 0x6e
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	100                             # 0x64
	.word	0                               # 0x0
	.size	.L.str.5, 212

	.type	.L.str.6,@object                # @.str.6
	.p2align	2, 0x0
.L.str.6:
	.word	83                              # 0x53
	.word	99                              # 0x63
	.word	97                              # 0x61
	.word	110                             # 0x6e
	.word	110                             # 0x6e
	.word	105                             # 0x69
	.word	110                             # 0x6e
	.word	103                             # 0x67
	.word	32                              # 0x20
	.word	101                             # 0x65
	.word	114                             # 0x72
	.word	114                             # 0x72
	.word	111                             # 0x6f
	.word	114                             # 0x72
	.word	0                               # 0x0
	.size	.L.str.6, 60

	.type	.L.str.8,@object                # @.str.8
	.p2align	2, 0x0
.L.str.8:
	.word	55                              # 0x37
	.word	45                              # 0x2d
	.word	90                              # 0x5a
	.word	105                             # 0x69
	.word	112                             # 0x70
	.word	32                              # 0x20
	.word	99                              # 0x63
	.word	97                              # 0x61
	.word	110                             # 0x6e
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	100                             # 0x64
	.word	101                             # 0x65
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	116                             # 0x74
	.word	104                             # 0x68
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.8, 116

	.type	.L.str.9,@object                # @.str.9
	.p2align	2, 0x0
.L.str.9:
	.word	55                              # 0x37
	.word	45                              # 0x2d
	.word	90                              # 0x5a
	.word	105                             # 0x69
	.word	112                             # 0x70
	.word	32                              # 0x20
	.word	99                              # 0x63
	.word	97                              # 0x61
	.word	110                             # 0x6e
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	109                             # 0x6d
	.word	111                             # 0x6f
	.word	118                             # 0x76
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	116                             # 0x74
	.word	104                             # 0x68
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.9, 108

	.type	_ZTV18COutMultiVolStream,@object # @_ZTV18COutMultiVolStream
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV18COutMultiVolStream
	.p2align	3, 0x0
_ZTV18COutMultiVolStream:
	.dword	0
	.dword	_ZTI18COutMultiVolStream
	.dword	_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv
	.dword	_ZN18COutMultiVolStream6AddRefEv
	.dword	_ZN18COutMultiVolStream7ReleaseEv
	.dword	_ZN18COutMultiVolStreamD2Ev
	.dword	_ZN18COutMultiVolStreamD0Ev
	.dword	_ZN18COutMultiVolStream5WriteEPKvjPj
	.dword	_ZN18COutMultiVolStream4SeekExjPy
	.dword	_ZN18COutMultiVolStream7SetSizeEy
	.size	_ZTV18COutMultiVolStream, 80

	.type	_ZTI18COutMultiVolStream,@object # @_ZTI18COutMultiVolStream
	.globl	_ZTI18COutMultiVolStream
	.p2align	3, 0x0
_ZTI18COutMultiVolStream:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS18COutMultiVolStream
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI10IOutStream
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTI18COutMultiVolStream, 56

	.type	_ZTS18COutMultiVolStream,@object # @_ZTS18COutMultiVolStream
	.section	.rodata,"a",@progbits
	.globl	_ZTS18COutMultiVolStream
_ZTS18COutMultiVolStream:
	.asciz	"18COutMultiVolStream"
	.size	_ZTS18COutMultiVolStream, 21

	.type	_ZTI10IOutStream,@object        # @_ZTI10IOutStream
	.section	.data.rel.ro._ZTI10IOutStream,"awG",@progbits,_ZTI10IOutStream,comdat
	.weak	_ZTI10IOutStream
	.p2align	3, 0x0
_ZTI10IOutStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS10IOutStream
	.dword	_ZTI20ISequentialOutStream
	.size	_ZTI10IOutStream, 24

	.type	_ZTS10IOutStream,@object        # @_ZTS10IOutStream
	.section	.rodata._ZTS10IOutStream,"aG",@progbits,_ZTS10IOutStream,comdat
	.weak	_ZTS10IOutStream
_ZTS10IOutStream:
	.asciz	"10IOutStream"
	.size	_ZTS10IOutStream, 13

	.type	_ZTI20ISequentialOutStream,@object # @_ZTI20ISequentialOutStream
	.section	.data.rel.ro._ZTI20ISequentialOutStream,"awG",@progbits,_ZTI20ISequentialOutStream,comdat
	.weak	_ZTI20ISequentialOutStream
	.p2align	3, 0x0
_ZTI20ISequentialOutStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS20ISequentialOutStream
	.dword	_ZTI8IUnknown
	.size	_ZTI20ISequentialOutStream, 24

	.type	_ZTS20ISequentialOutStream,@object # @_ZTS20ISequentialOutStream
	.section	.rodata._ZTS20ISequentialOutStream,"aG",@progbits,_ZTS20ISequentialOutStream,comdat
	.weak	_ZTS20ISequentialOutStream
_ZTS20ISequentialOutStream:
	.asciz	"20ISequentialOutStream"
	.size	_ZTS20ISequentialOutStream, 23

	.type	_ZTI8IUnknown,@object           # @_ZTI8IUnknown
	.section	.data.rel.ro._ZTI8IUnknown,"awG",@progbits,_ZTI8IUnknown,comdat
	.weak	_ZTI8IUnknown
	.p2align	3, 0x0
_ZTI8IUnknown:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS8IUnknown
	.size	_ZTI8IUnknown, 16

	.type	_ZTS8IUnknown,@object           # @_ZTS8IUnknown
	.section	.rodata._ZTS8IUnknown,"aG",@progbits,_ZTS8IUnknown,comdat
	.weak	_ZTS8IUnknown
_ZTS8IUnknown:
	.asciz	"8IUnknown"
	.size	_ZTS8IUnknown, 10

	.type	_ZTI13CMyUnknownImp,@object     # @_ZTI13CMyUnknownImp
	.section	.data.rel.ro._ZTI13CMyUnknownImp,"awG",@progbits,_ZTI13CMyUnknownImp,comdat
	.weak	_ZTI13CMyUnknownImp
	.p2align	3, 0x0
_ZTI13CMyUnknownImp:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS13CMyUnknownImp
	.size	_ZTI13CMyUnknownImp, 16

	.type	_ZTS13CMyUnknownImp,@object     # @_ZTS13CMyUnknownImp
	.section	.rodata._ZTS13CMyUnknownImp,"aG",@progbits,_ZTS13CMyUnknownImp,comdat
	.weak	_ZTS13CMyUnknownImp
_ZTS13CMyUnknownImp:
	.asciz	"13CMyUnknownImp"
	.size	_ZTS13CMyUnknownImp, 16

	.type	_ZTVN8NWindows5NFile3NIO8COutFileE,@object # @_ZTVN8NWindows5NFile3NIO8COutFileE
	.section	.data.rel.ro._ZTVN8NWindows5NFile3NIO8COutFileE,"awG",@progbits,_ZTVN8NWindows5NFile3NIO8COutFileE,comdat
	.weak	_ZTVN8NWindows5NFile3NIO8COutFileE
	.p2align	3, 0x0
_ZTVN8NWindows5NFile3NIO8COutFileE:
	.dword	0
	.dword	_ZTIN8NWindows5NFile3NIO8COutFileE
	.dword	_ZN8NWindows5NFile3NIO9CFileBaseD2Ev
	.dword	_ZN8NWindows5NFile3NIO8COutFileD0Ev
	.dword	_ZN8NWindows5NFile3NIO9CFileBase5CloseEv
	.size	_ZTVN8NWindows5NFile3NIO8COutFileE, 40

	.type	_ZTIN8NWindows5NFile3NIO8COutFileE,@object # @_ZTIN8NWindows5NFile3NIO8COutFileE
	.section	.data.rel.ro._ZTIN8NWindows5NFile3NIO8COutFileE,"awG",@progbits,_ZTIN8NWindows5NFile3NIO8COutFileE,comdat
	.weak	_ZTIN8NWindows5NFile3NIO8COutFileE
	.p2align	3, 0x0
_ZTIN8NWindows5NFile3NIO8COutFileE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN8NWindows5NFile3NIO8COutFileE
	.dword	_ZTIN8NWindows5NFile3NIO9CFileBaseE
	.size	_ZTIN8NWindows5NFile3NIO8COutFileE, 24

	.type	_ZTSN8NWindows5NFile3NIO8COutFileE,@object # @_ZTSN8NWindows5NFile3NIO8COutFileE
	.section	.rodata._ZTSN8NWindows5NFile3NIO8COutFileE,"aG",@progbits,_ZTSN8NWindows5NFile3NIO8COutFileE,comdat
	.weak	_ZTSN8NWindows5NFile3NIO8COutFileE
_ZTSN8NWindows5NFile3NIO8COutFileE:
	.asciz	"N8NWindows5NFile3NIO8COutFileE"
	.size	_ZTSN8NWindows5NFile3NIO8COutFileE, 31

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str4.8,"aMS",@progbits,4
	.p2align	3, 0x0
.L.str.10:
	.word	55                              # 0x37
	.word	122                             # 0x7a
	.word	0                               # 0x0
	.size	.L.str.10, 12

	.type	_ZTV13CObjectVectorI4CArcE,@object # @_ZTV13CObjectVectorI4CArcE
	.section	.data.rel.ro._ZTV13CObjectVectorI4CArcE,"awG",@progbits,_ZTV13CObjectVectorI4CArcE,comdat
	.weak	_ZTV13CObjectVectorI4CArcE
	.p2align	3, 0x0
_ZTV13CObjectVectorI4CArcE:
	.dword	0
	.dword	_ZTI13CObjectVectorI4CArcE
	.dword	_ZN13CObjectVectorI4CArcED2Ev
	.dword	_ZN13CObjectVectorI4CArcED0Ev
	.dword	_ZN13CObjectVectorI4CArcE6DeleteEii
	.size	_ZTV13CObjectVectorI4CArcE, 40

	.type	_ZTI13CObjectVectorI4CArcE,@object # @_ZTI13CObjectVectorI4CArcE
	.section	.data.rel.ro._ZTI13CObjectVectorI4CArcE,"awG",@progbits,_ZTI13CObjectVectorI4CArcE,comdat
	.weak	_ZTI13CObjectVectorI4CArcE
	.p2align	3, 0x0
_ZTI13CObjectVectorI4CArcE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI4CArcE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI4CArcE, 24

	.type	_ZTS13CObjectVectorI4CArcE,@object # @_ZTS13CObjectVectorI4CArcE
	.section	.rodata._ZTS13CObjectVectorI4CArcE,"aG",@progbits,_ZTS13CObjectVectorI4CArcE,comdat
	.weak	_ZTS13CObjectVectorI4CArcE
_ZTS13CObjectVectorI4CArcE:
	.asciz	"13CObjectVectorI4CArcE"
	.size	_ZTS13CObjectVectorI4CArcE, 23

	.type	_ZTI13CRecordVectorIPvE,@object # @_ZTI13CRecordVectorIPvE
	.section	.data.rel.ro._ZTI13CRecordVectorIPvE,"awG",@progbits,_ZTI13CRecordVectorIPvE,comdat
	.weak	_ZTI13CRecordVectorIPvE
	.p2align	3, 0x0
_ZTI13CRecordVectorIPvE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIPvE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIPvE, 24

	.type	_ZTS13CRecordVectorIPvE,@object # @_ZTS13CRecordVectorIPvE
	.section	.rodata._ZTS13CRecordVectorIPvE,"aG",@progbits,_ZTS13CRecordVectorIPvE,comdat
	.weak	_ZTS13CRecordVectorIPvE
_ZTS13CRecordVectorIPvE:
	.asciz	"13CRecordVectorIPvE"
	.size	_ZTS13CRecordVectorIPvE, 20

	.type	_ZTV13CObjectVectorI8CDirItemE,@object # @_ZTV13CObjectVectorI8CDirItemE
	.section	.data.rel.ro._ZTV13CObjectVectorI8CDirItemE,"awG",@progbits,_ZTV13CObjectVectorI8CDirItemE,comdat
	.weak	_ZTV13CObjectVectorI8CDirItemE
	.p2align	3, 0x0
_ZTV13CObjectVectorI8CDirItemE:
	.dword	0
	.dword	_ZTI13CObjectVectorI8CDirItemE
	.dword	_ZN13CObjectVectorI8CDirItemED2Ev
	.dword	_ZN13CObjectVectorI8CDirItemED0Ev
	.dword	_ZN13CObjectVectorI8CDirItemE6DeleteEii
	.size	_ZTV13CObjectVectorI8CDirItemE, 40

	.type	_ZTI13CObjectVectorI8CDirItemE,@object # @_ZTI13CObjectVectorI8CDirItemE
	.section	.data.rel.ro._ZTI13CObjectVectorI8CDirItemE,"awG",@progbits,_ZTI13CObjectVectorI8CDirItemE,comdat
	.weak	_ZTI13CObjectVectorI8CDirItemE
	.p2align	3, 0x0
_ZTI13CObjectVectorI8CDirItemE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI8CDirItemE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI8CDirItemE, 24

	.type	_ZTS13CObjectVectorI8CDirItemE,@object # @_ZTS13CObjectVectorI8CDirItemE
	.section	.rodata._ZTS13CObjectVectorI8CDirItemE,"aG",@progbits,_ZTS13CObjectVectorI8CDirItemE,comdat
	.weak	_ZTS13CObjectVectorI8CDirItemE
_ZTS13CObjectVectorI8CDirItemE:
	.asciz	"13CObjectVectorI8CDirItemE"
	.size	_ZTS13CObjectVectorI8CDirItemE, 27

	.type	_ZTV26CEnumDirItemUpdateCallback,@object # @_ZTV26CEnumDirItemUpdateCallback
	.section	.data.rel.ro._ZTV26CEnumDirItemUpdateCallback,"awG",@progbits,_ZTV26CEnumDirItemUpdateCallback,comdat
	.weak	_ZTV26CEnumDirItemUpdateCallback
	.p2align	3, 0x0
_ZTV26CEnumDirItemUpdateCallback:
	.dword	0
	.dword	_ZTI26CEnumDirItemUpdateCallback
	.dword	_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw
	.size	_ZTV26CEnumDirItemUpdateCallback, 24

	.type	_ZTI26CEnumDirItemUpdateCallback,@object # @_ZTI26CEnumDirItemUpdateCallback
	.section	.data.rel.ro._ZTI26CEnumDirItemUpdateCallback,"awG",@progbits,_ZTI26CEnumDirItemUpdateCallback,comdat
	.weak	_ZTI26CEnumDirItemUpdateCallback
	.p2align	3, 0x0
_ZTI26CEnumDirItemUpdateCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS26CEnumDirItemUpdateCallback
	.dword	_ZTI20IEnumDirItemCallback
	.size	_ZTI26CEnumDirItemUpdateCallback, 24

	.type	_ZTS26CEnumDirItemUpdateCallback,@object # @_ZTS26CEnumDirItemUpdateCallback
	.section	.rodata._ZTS26CEnumDirItemUpdateCallback,"aG",@progbits,_ZTS26CEnumDirItemUpdateCallback,comdat
	.weak	_ZTS26CEnumDirItemUpdateCallback
_ZTS26CEnumDirItemUpdateCallback:
	.asciz	"26CEnumDirItemUpdateCallback"
	.size	_ZTS26CEnumDirItemUpdateCallback, 29

	.type	_ZTI20IEnumDirItemCallback,@object # @_ZTI20IEnumDirItemCallback
	.section	.data.rel.ro._ZTI20IEnumDirItemCallback,"awG",@progbits,_ZTI20IEnumDirItemCallback,comdat
	.weak	_ZTI20IEnumDirItemCallback
	.p2align	3, 0x0
_ZTI20IEnumDirItemCallback:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS20IEnumDirItemCallback
	.size	_ZTI20IEnumDirItemCallback, 16

	.type	_ZTS20IEnumDirItemCallback,@object # @_ZTS20IEnumDirItemCallback
	.section	.rodata._ZTS20IEnumDirItemCallback,"aG",@progbits,_ZTS20IEnumDirItemCallback,comdat
	.weak	_ZTS20IEnumDirItemCallback
_ZTS20IEnumDirItemCallback:
	.asciz	"20IEnumDirItemCallback"
	.size	_ZTS20IEnumDirItemCallback, 23

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.12:
	.word	115                             # 0x73
	.word	116                             # 0x74
	.word	100                             # 0x64
	.word	111                             # 0x6f
	.word	117                             # 0x75
	.word	116                             # 0x74
	.word	0                               # 0x0
	.size	.L.str.12, 28

	.type	.L.str.13,@object               # @.str.13
	.p2align	2, 0x0
.L.str.13:
	.word	55                              # 0x37
	.word	45                              # 0x2d
	.word	90                              # 0x5a
	.word	105                             # 0x69
	.word	112                             # 0x70
	.word	32                              # 0x20
	.word	99                              # 0x63
	.word	97                              # 0x61
	.word	110                             # 0x6e
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	111                             # 0x6f
	.word	112                             # 0x70
	.word	101                             # 0x65
	.word	110                             # 0x6e
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.13, 92

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"update operations are not supported for this archive"
	.size	.L.str.16, 53

	.type	_ZTV13CRecordVectorI12CUpdatePair2E,@object # @_ZTV13CRecordVectorI12CUpdatePair2E
	.section	.data.rel.ro._ZTV13CRecordVectorI12CUpdatePair2E,"awG",@progbits,_ZTV13CRecordVectorI12CUpdatePair2E,comdat
	.weak	_ZTV13CRecordVectorI12CUpdatePair2E
	.p2align	3, 0x0
_ZTV13CRecordVectorI12CUpdatePair2E:
	.dword	0
	.dword	_ZTI13CRecordVectorI12CUpdatePair2E
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorI12CUpdatePair2ED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorI12CUpdatePair2E, 40

	.type	_ZTI13CRecordVectorI12CUpdatePair2E,@object # @_ZTI13CRecordVectorI12CUpdatePair2E
	.section	.data.rel.ro._ZTI13CRecordVectorI12CUpdatePair2E,"awG",@progbits,_ZTI13CRecordVectorI12CUpdatePair2E,comdat
	.weak	_ZTI13CRecordVectorI12CUpdatePair2E
	.p2align	3, 0x0
_ZTI13CRecordVectorI12CUpdatePair2E:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorI12CUpdatePair2E
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorI12CUpdatePair2E, 24

	.type	_ZTS13CRecordVectorI12CUpdatePair2E,@object # @_ZTS13CRecordVectorI12CUpdatePair2E
	.section	.rodata._ZTS13CRecordVectorI12CUpdatePair2E,"aG",@progbits,_ZTS13CRecordVectorI12CUpdatePair2E,comdat
	.weak	_ZTS13CRecordVectorI12CUpdatePair2E
_ZTS13CRecordVectorI12CUpdatePair2E:
	.asciz	"13CRecordVectorI12CUpdatePair2E"
	.size	_ZTS13CRecordVectorI12CUpdatePair2E, 32

	.type	_ZTV13CRecordVectorI11CUpdatePairE,@object # @_ZTV13CRecordVectorI11CUpdatePairE
	.section	.data.rel.ro._ZTV13CRecordVectorI11CUpdatePairE,"awG",@progbits,_ZTV13CRecordVectorI11CUpdatePairE,comdat
	.weak	_ZTV13CRecordVectorI11CUpdatePairE
	.p2align	3, 0x0
_ZTV13CRecordVectorI11CUpdatePairE:
	.dword	0
	.dword	_ZTI13CRecordVectorI11CUpdatePairE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorI11CUpdatePairED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorI11CUpdatePairE, 40

	.type	_ZTI13CRecordVectorI11CUpdatePairE,@object # @_ZTI13CRecordVectorI11CUpdatePairE
	.section	.data.rel.ro._ZTI13CRecordVectorI11CUpdatePairE,"awG",@progbits,_ZTI13CRecordVectorI11CUpdatePairE,comdat
	.weak	_ZTI13CRecordVectorI11CUpdatePairE
	.p2align	3, 0x0
_ZTI13CRecordVectorI11CUpdatePairE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorI11CUpdatePairE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorI11CUpdatePairE, 24

	.type	_ZTS13CRecordVectorI11CUpdatePairE,@object # @_ZTS13CRecordVectorI11CUpdatePairE
	.section	.rodata._ZTS13CRecordVectorI11CUpdatePairE,"aG",@progbits,_ZTS13CRecordVectorI11CUpdatePairE,comdat
	.weak	_ZTS13CRecordVectorI11CUpdatePairE
_ZTS13CRecordVectorI11CUpdatePairE:
	.asciz	"13CRecordVectorI11CUpdatePairE"
	.size	_ZTS13CRecordVectorI11CUpdatePairE, 31

	.type	_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,@object # @_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,"awG",@progbits,_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,comdat
	.weak	_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.dword	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev
	.dword	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev
	.dword	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii
	.size	_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE, 40

	.type	_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,@object # @_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,"awG",@progbits,_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,comdat
	.weak	_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE, 24

	.type	_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,@object # @_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.section	.rodata._ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,"aG",@progbits,_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,comdat
	.weak	_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE:
	.asciz	"13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE"
	.size	_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE, 56

	.type	_ZTV13CRecordVectorIyE,@object  # @_ZTV13CRecordVectorIyE
	.section	.data.rel.ro._ZTV13CRecordVectorIyE,"awG",@progbits,_ZTV13CRecordVectorIyE,comdat
	.weak	_ZTV13CRecordVectorIyE
	.p2align	3, 0x0
_ZTV13CRecordVectorIyE:
	.dword	0
	.dword	_ZTI13CRecordVectorIyE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIyED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIyE, 40

	.type	_ZTI13CRecordVectorIyE,@object  # @_ZTI13CRecordVectorIyE
	.section	.data.rel.ro._ZTI13CRecordVectorIyE,"awG",@progbits,_ZTI13CRecordVectorIyE,comdat
	.weak	_ZTI13CRecordVectorIyE
	.p2align	3, 0x0
_ZTI13CRecordVectorIyE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIyE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIyE, 24

	.type	_ZTS13CRecordVectorIyE,@object  # @_ZTS13CRecordVectorIyE
	.section	.rodata._ZTS13CRecordVectorIyE,"aG",@progbits,_ZTS13CRecordVectorIyE,comdat
	.weak	_ZTS13CRecordVectorIyE
_ZTS13CRecordVectorIyE:
	.asciz	"13CRecordVectorIyE"
	.size	_ZTS13CRecordVectorIyE, 19

	.type	_ZTVN8NWindows5NFile3NIO7CInFileE,@object # @_ZTVN8NWindows5NFile3NIO7CInFileE
	.section	.data.rel.ro._ZTVN8NWindows5NFile3NIO7CInFileE,"awG",@progbits,_ZTVN8NWindows5NFile3NIO7CInFileE,comdat
	.weak	_ZTVN8NWindows5NFile3NIO7CInFileE
	.p2align	3, 0x0
_ZTVN8NWindows5NFile3NIO7CInFileE:
	.dword	0
	.dword	_ZTIN8NWindows5NFile3NIO7CInFileE
	.dword	_ZN8NWindows5NFile3NIO9CFileBaseD2Ev
	.dword	_ZN8NWindows5NFile3NIO7CInFileD0Ev
	.dword	_ZN8NWindows5NFile3NIO9CFileBase5CloseEv
	.size	_ZTVN8NWindows5NFile3NIO7CInFileE, 40

	.type	_ZTIN8NWindows5NFile3NIO7CInFileE,@object # @_ZTIN8NWindows5NFile3NIO7CInFileE
	.section	.data.rel.ro._ZTIN8NWindows5NFile3NIO7CInFileE,"awG",@progbits,_ZTIN8NWindows5NFile3NIO7CInFileE,comdat
	.weak	_ZTIN8NWindows5NFile3NIO7CInFileE
	.p2align	3, 0x0
_ZTIN8NWindows5NFile3NIO7CInFileE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN8NWindows5NFile3NIO7CInFileE
	.dword	_ZTIN8NWindows5NFile3NIO9CFileBaseE
	.size	_ZTIN8NWindows5NFile3NIO7CInFileE, 24

	.type	_ZTSN8NWindows5NFile3NIO7CInFileE,@object # @_ZTSN8NWindows5NFile3NIO7CInFileE
	.section	.rodata._ZTSN8NWindows5NFile3NIO7CInFileE,"aG",@progbits,_ZTSN8NWindows5NFile3NIO7CInFileE,comdat
	.weak	_ZTSN8NWindows5NFile3NIO7CInFileE
_ZTSN8NWindows5NFile3NIO7CInFileE:
	.asciz	"N8NWindows5NFile3NIO7CInFileE"
	.size	_ZTSN8NWindows5NFile3NIO7CInFileE, 30

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.17:
	.word	46                              # 0x2e
	.word	116                             # 0x74
	.word	109                             # 0x6d
	.word	112                             # 0x70
	.word	0                               # 0x0
	.size	.L.str.17, 20

	.type	_ZTV13CObjectVectorI11CStringBaseIwEE,@object # @_ZTV13CObjectVectorI11CStringBaseIwEE
	.section	.data.rel.ro._ZTV13CObjectVectorI11CStringBaseIwEE,"awG",@progbits,_ZTV13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTV13CObjectVectorI11CStringBaseIwEE
	.p2align	3, 0x0
_ZTV13CObjectVectorI11CStringBaseIwEE:
	.dword	0
	.dword	_ZTI13CObjectVectorI11CStringBaseIwEE
	.dword	_ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.dword	_ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.dword	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.size	_ZTV13CObjectVectorI11CStringBaseIwEE, 40

	.type	_ZTI13CObjectVectorI11CStringBaseIwEE,@object # @_ZTI13CObjectVectorI11CStringBaseIwEE
	.section	.data.rel.ro._ZTI13CObjectVectorI11CStringBaseIwEE,"awG",@progbits,_ZTI13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTI13CObjectVectorI11CStringBaseIwEE
	.p2align	3, 0x0
_ZTI13CObjectVectorI11CStringBaseIwEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI11CStringBaseIwEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI11CStringBaseIwEE, 24

	.type	_ZTS13CObjectVectorI11CStringBaseIwEE,@object # @_ZTS13CObjectVectorI11CStringBaseIwEE
	.section	.rodata._ZTS13CObjectVectorI11CStringBaseIwEE,"aG",@progbits,_ZTS13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTS13CObjectVectorI11CStringBaseIwEE
_ZTS13CObjectVectorI11CStringBaseIwEE:
	.asciz	"13CObjectVectorI11CStringBaseIwEE"
	.size	_ZTS13CObjectVectorI11CStringBaseIwEE, 34

	.type	_ZTV13CRecordVectorIiE,@object  # @_ZTV13CRecordVectorIiE
	.section	.data.rel.ro._ZTV13CRecordVectorIiE,"awG",@progbits,_ZTV13CRecordVectorIiE,comdat
	.weak	_ZTV13CRecordVectorIiE
	.p2align	3, 0x0
_ZTV13CRecordVectorIiE:
	.dword	0
	.dword	_ZTI13CRecordVectorIiE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIiED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIiE, 40

	.type	_ZTI13CRecordVectorIiE,@object  # @_ZTI13CRecordVectorIiE
	.section	.data.rel.ro._ZTI13CRecordVectorIiE,"awG",@progbits,_ZTI13CRecordVectorIiE,comdat
	.weak	_ZTI13CRecordVectorIiE
	.p2align	3, 0x0
_ZTI13CRecordVectorIiE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIiE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIiE, 24

	.type	_ZTS13CRecordVectorIiE,@object  # @_ZTS13CRecordVectorIiE
	.section	.rodata._ZTS13CRecordVectorIiE,"aG",@progbits,_ZTS13CRecordVectorIiE,comdat
	.weak	_ZTS13CRecordVectorIiE
_ZTS13CRecordVectorIiE:
	.asciz	"13CRecordVectorIiE"
	.size	_ZTS13CRecordVectorIiE, 19

	.type	_ZTV13CRecordVectorIjE,@object  # @_ZTV13CRecordVectorIjE
	.section	.data.rel.ro._ZTV13CRecordVectorIjE,"awG",@progbits,_ZTV13CRecordVectorIjE,comdat
	.weak	_ZTV13CRecordVectorIjE
	.p2align	3, 0x0
_ZTV13CRecordVectorIjE:
	.dword	0
	.dword	_ZTI13CRecordVectorIjE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIjED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIjE, 40

	.type	_ZTI13CRecordVectorIjE,@object  # @_ZTI13CRecordVectorIjE
	.section	.data.rel.ro._ZTI13CRecordVectorIjE,"awG",@progbits,_ZTI13CRecordVectorIjE,comdat
	.weak	_ZTI13CRecordVectorIjE
	.p2align	3, 0x0
_ZTI13CRecordVectorIjE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIjE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIjE, 24

	.type	_ZTS13CRecordVectorIjE,@object  # @_ZTS13CRecordVectorIjE
	.section	.rodata._ZTS13CRecordVectorIjE,"aG",@progbits,_ZTS13CRecordVectorIjE,comdat
	.weak	_ZTS13CRecordVectorIjE
_ZTS13CRecordVectorIjE:
	.asciz	"13CRecordVectorIjE"
	.size	_ZTS13CRecordVectorIjE, 19

	.type	_ZTV13CObjectVectorI8CArcItemE,@object # @_ZTV13CObjectVectorI8CArcItemE
	.section	.data.rel.ro._ZTV13CObjectVectorI8CArcItemE,"awG",@progbits,_ZTV13CObjectVectorI8CArcItemE,comdat
	.weak	_ZTV13CObjectVectorI8CArcItemE
	.p2align	3, 0x0
_ZTV13CObjectVectorI8CArcItemE:
	.dword	0
	.dword	_ZTI13CObjectVectorI8CArcItemE
	.dword	_ZN13CObjectVectorI8CArcItemED2Ev
	.dword	_ZN13CObjectVectorI8CArcItemED0Ev
	.dword	_ZN13CObjectVectorI8CArcItemE6DeleteEii
	.size	_ZTV13CObjectVectorI8CArcItemE, 40

	.type	_ZTI13CObjectVectorI8CArcItemE,@object # @_ZTI13CObjectVectorI8CArcItemE
	.section	.data.rel.ro._ZTI13CObjectVectorI8CArcItemE,"awG",@progbits,_ZTI13CObjectVectorI8CArcItemE,comdat
	.weak	_ZTI13CObjectVectorI8CArcItemE
	.p2align	3, 0x0
_ZTI13CObjectVectorI8CArcItemE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI8CArcItemE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI8CArcItemE, 24

	.type	_ZTS13CObjectVectorI8CArcItemE,@object # @_ZTS13CObjectVectorI8CArcItemE
	.section	.rodata._ZTS13CObjectVectorI8CArcItemE,"aG",@progbits,_ZTS13CObjectVectorI8CArcItemE,comdat
	.weak	_ZTS13CObjectVectorI8CArcItemE
_ZTS13CObjectVectorI8CArcItemE:
	.asciz	"13CObjectVectorI8CArcItemE"
	.size	_ZTS13CObjectVectorI8CArcItemE, 27

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
	.addrsig_sym _ZTIPKc
	.addrsig_sym _ZTI18COutMultiVolStream
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTS18COutMultiVolStream
	.addrsig_sym _ZTI10IOutStream
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS10IOutStream
	.addrsig_sym _ZTI20ISequentialOutStream
	.addrsig_sym _ZTS20ISequentialOutStream
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
	.addrsig_sym _ZTIN8NWindows5NFile3NIO8COutFileE
	.addrsig_sym _ZTSN8NWindows5NFile3NIO8COutFileE
	.addrsig_sym _ZTIN8NWindows5NFile3NIO9CFileBaseE
	.addrsig_sym _ZTI13CObjectVectorI4CArcE
	.addrsig_sym _ZTS13CObjectVectorI4CArcE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTI13CObjectVectorI8CDirItemE
	.addrsig_sym _ZTS13CObjectVectorI8CDirItemE
	.addrsig_sym _ZTI26CEnumDirItemUpdateCallback
	.addrsig_sym _ZTS26CEnumDirItemUpdateCallback
	.addrsig_sym _ZTI20IEnumDirItemCallback
	.addrsig_sym _ZTS20IEnumDirItemCallback
	.addrsig_sym IID_IOutArchive
	.addrsig_sym _ZTIi
	.addrsig_sym _ZTI13CRecordVectorI12CUpdatePair2E
	.addrsig_sym _ZTS13CRecordVectorI12CUpdatePair2E
	.addrsig_sym _ZTI13CRecordVectorI11CUpdatePairE
	.addrsig_sym _ZTS13CRecordVectorI11CUpdatePairE
	.addrsig_sym _ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.addrsig_sym _ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.addrsig_sym _ZTI13CRecordVectorIyE
	.addrsig_sym _ZTS13CRecordVectorIyE
	.addrsig_sym _ZTIN8NWindows5NFile3NIO7CInFileE
	.addrsig_sym _ZTSN8NWindows5NFile3NIO7CInFileE
	.addrsig_sym _ZTI13CObjectVectorI11CStringBaseIwEE
	.addrsig_sym _ZTS13CObjectVectorI11CStringBaseIwEE
	.addrsig_sym _ZTI13CRecordVectorIiE
	.addrsig_sym _ZTS13CRecordVectorIiE
	.addrsig_sym _ZTI13CRecordVectorIjE
	.addrsig_sym _ZTS13CRecordVectorIjE
	.addrsig_sym _ZTI13CObjectVectorI8CArcItemE
	.addrsig_sym _ZTS13CObjectVectorI8CArcItemE
