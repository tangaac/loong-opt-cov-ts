	.file	"7zIn.cpp"
	.text
	.globl	_ZNK8NArchive3N7z7CFolder14CheckStructureEv # -- Begin function _ZNK8NArchive3N7z7CFolder14CheckStructureEv
	.p2align	5
	.type	_ZNK8NArchive3N7z7CFolder14CheckStructureEv,@function
_ZNK8NArchive3N7z7CFolder14CheckStructureEv: # @_ZNK8NArchive3N7z7CFolder14CheckStructureEv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -256
	.cfi_def_cfa_offset 256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.w	$a1, $a0, 12
	ori	$a0, $zero, 32
	blt	$a0, $a1, .LBB0_39
# %bb.1:
	ld.w	$s0, $fp, 44
	blt	$a0, $s0, .LBB0_39
# %bb.2:
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $sp, 96
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 112
	ld.w	$s1, $fp, 76
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIbE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIbE+16)
	st.d	$a0, $sp, 88
.Ltmp0:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.3:                                # %.noexc
.Ltmp2:
	add.w	$s0, $s1, $s0
	addi.d	$a0, $sp, 88
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp3:
# %bb.4:                                # %.noexc67
	ori	$s1, $zero, 1
	blt	$s0, $s1, .LBB0_7
	.p2align	4, , 16
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
.Ltmp5:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp6:
# %bb.6:                                # %.noexc68
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 104
	ld.w	$a1, $sp, 100
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $a1, 1
	addi.w	$s0, $s0, -1
	st.w	$a0, $sp, 100
	bnez	$s0, .LBB0_5
.LBB0_7:                                # %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit
	ld.w	$a0, $fp, 44
	blt	$a0, $s1, .LBB0_12
# %bb.8:                                # %.lr.ph
	ld.d	$a1, $fp, 48
	ld.w	$a2, $sp, 100
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	bgeu	$a4, $a2, .LBB0_38
# %bb.10:                               # %_ZN8NArchive3N7zL20BoolVector_GetAndSetER13CRecordVectorIbEj.exit
                                        #   in Loop: Header=BB0_9 Depth=1
	ld.d	$a5, $sp, 104
	ldx.bu	$a6, $a5, $a4
	stx.b	$a3, $a5, $a4
	bnez	$a6, .LBB0_38
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB0_9
.LBB0_12:                               # %.preheader96
	ld.w	$a0, $fp, 76
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_17
# %bb.13:                               # %.lr.ph106
	ld.d	$a2, $fp, 80
	ld.w	$a3, $sp, 100
	.p2align	4, , 16
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	bgeu	$a4, $a3, .LBB0_38
# %bb.15:                               # %_ZN8NArchive3N7zL20BoolVector_GetAndSetER13CRecordVectorIbEj.exit71
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a5, $sp, 104
	ldx.bu	$a6, $a5, $a4
	stx.b	$a1, $a5, $a4
	bnez	$a6, .LBB0_38
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB0_14
.LBB0_17:                               # %._crit_edge
	ld.w	$s0, $fp, 108
.Ltmp8:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp9:
# %bb.18:                               # %.noexc75
.Ltmp10:
	addi.d	$a0, $sp, 88
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp11:
# %bb.19:                               # %.noexc76
	ori	$s1, $zero, 1
	blt	$s0, $s1, .LBB0_22
	.p2align	4, , 16
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
.Ltmp13:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp14:
# %bb.21:                               # %.noexc77
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a0, $sp, 104
	ld.w	$a1, $sp, 100
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $a1, 1
	addi.w	$s0, $s0, -1
	st.w	$a0, $sp, 100
	bnez	$s0, .LBB0_20
.LBB0_22:                               # %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit78
	ld.w	$a0, $fp, 44
	blt	$a0, $s1, .LBB0_27
# %bb.23:                               # %.lr.ph108
	ld.d	$a2, $fp, 48
	ld.w	$a1, $sp, 100
	addi.d	$a2, $a2, 4
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	bgeu	$a4, $a1, .LBB0_38
# %bb.25:                               # %_ZN8NArchive3N7zL20BoolVector_GetAndSetER13CRecordVectorIbEj.exit81
                                        #   in Loop: Header=BB0_24 Depth=1
	ld.d	$a5, $sp, 104
	ldx.bu	$a6, $a5, $a4
	stx.b	$a3, $a5, $a4
	bnez	$a6, .LBB0_38
# %bb.26:                               #   in Loop: Header=BB0_24 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB0_24
.LBB0_27:                               # %._crit_edge109
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 80
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIiE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CRecordVectorIiE+16)
	ld.w	$a2, $fp, 12
	st.d	$a1, $sp, 56
	vst	$vr0, $sp, 32
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 24
	blez	$a2, .LBB0_41
# %bb.28:                               # %.lr.ph119
	move	$s0, $zero
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %._crit_edge116
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a0, $fp, 12
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB0_41
.LBB0_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_36 Depth 2
	ld.d	$a0, $fp, 16
	slli.d	$a1, $s0, 3
	ldx.d	$s1, $a0, $a1
	ld.w	$a0, $s1, 32
	beqz	$a0, .LBB0_34
# %bb.31:                               # %.lr.ph113.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$s2, $zero
	.p2align	4, , 16
.LBB0_32:                               # %.lr.ph113
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp16:
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp17:
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=2
	ld.w	$a0, $sp, 68
	ld.d	$a1, $sp, 72
	slli.d	$a0, $a0, 2
	stx.w	$s0, $a1, $a0
	ld.w	$a0, $sp, 68
	ld.w	$a1, $s1, 32
	addi.d	$a0, $a0, 1
	addi.w	$s2, $s2, 1
	st.w	$a0, $sp, 68
	bltu	$s2, $a1, .LBB0_32
.LBB0_34:                               # %.preheader90
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a0, $s1, 36
	beqz	$a0, .LBB0_29
# %bb.35:                               # %.lr.ph115.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$s2, $zero
	.p2align	4, , 16
.LBB0_36:                               # %.lr.ph115
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp19:
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp20:
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=2
	ld.w	$a0, $sp, 36
	ld.d	$a1, $sp, 40
	slli.d	$a0, $a0, 2
	stx.w	$s0, $a1, $a0
	ld.w	$a0, $sp, 36
	ld.w	$a1, $s1, 36
	addi.d	$a0, $a0, 1
	addi.w	$s2, $s2, 1
	st.w	$a0, $sp, 36
	bltu	$s2, $a1, .LBB0_36
	b	.LBB0_29
.LBB0_38:                               # %.critedge
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB0_39:
	move	$a0, $zero
.LBB0_40:
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB0_41:                               # %.preheader89
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_44
# %bb.42:                               # %.lr.ph121
	ld.d	$a4, $fp, 48
	ld.d	$a2, $sp, 40
	ld.d	$a3, $sp, 72
	addi.d	$a4, $a4, 4
	addi.d	$a5, $sp, 88
	.p2align	4, , 16
.LBB0_43:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, -4
	ld.w	$a7, $a4, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	slli.d	$a7, $a7, 2
	ldx.wu	$a7, $a2, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$t0, $a6, $a5
	sll.w	$a7, $a1, $a7
	or	$a7, $t0, $a7
	stx.w	$a7, $a6, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 8
	bnez	$a0, .LBB0_43
.LBB0_44:                               # %._crit_edge122
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 128
	ori	$a3, $zero, 32
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_45:                               #   in Loop: Header=BB0_46 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a3, .LBB0_50
.LBB0_46:                               # %.preheader88
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_48 Depth 2
	slli.d	$a4, $a0, 2
	ldx.w	$a4, $a4, $a1
	move	$a5, $zero
	move	$a6, $zero
	alsl.d	$a7, $a0, $a1, 2
	b	.LBB0_48
	.p2align	4, , 16
.LBB0_47:                               #   in Loop: Header=BB0_48 Depth=2
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 1
	beq	$a5, $a2, .LBB0_45
.LBB0_48:                               #   Parent Loop BB0_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srl.w	$t0, $a4, $a6
	andi	$t0, $t0, 1
	beqz	$t0, .LBB0_47
# %bb.49:                               #   in Loop: Header=BB0_48 Depth=2
	ldx.w	$t0, $a5, $a1
	or	$a4, $t0, $a4
	st.w	$a4, $a7, 0
	b	.LBB0_47
.LBB0_50:                               # %.preheader.preheader
	ld.bu	$a0, $sp, 88
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_39
# %bb.51:                               # %.preheader.1
	ld.bu	$a0, $sp, 92
	andi	$a0, $a0, 2
	bnez	$a0, .LBB0_39
# %bb.52:                               # %.preheader.2
	ld.bu	$a0, $sp, 96
	andi	$a0, $a0, 4
	bnez	$a0, .LBB0_39
# %bb.53:                               # %.preheader.3
	ld.bu	$a0, $sp, 100
	andi	$a0, $a0, 8
	bnez	$a0, .LBB0_39
# %bb.54:                               # %.preheader.4
	ld.bu	$a0, $sp, 104
	andi	$a0, $a0, 16
	bnez	$a0, .LBB0_39
# %bb.55:                               # %.preheader.5
	ld.bu	$a0, $sp, 108
	andi	$a0, $a0, 32
	bnez	$a0, .LBB0_39
# %bb.56:                               # %.preheader.6
	ld.bu	$a0, $sp, 112
	andi	$a0, $a0, 64
	bnez	$a0, .LBB0_39
# %bb.57:                               # %.preheader.7
	ld.bu	$a0, $sp, 116
	andi	$a0, $a0, 128
	bnez	$a0, .LBB0_39
# %bb.58:                               # %.preheader.8
	ld.bu	$a0, $sp, 121
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_39
# %bb.59:                               # %.preheader.9
	ld.bu	$a0, $sp, 125
	andi	$a0, $a0, 2
	bnez	$a0, .LBB0_39
# %bb.60:                               # %.preheader.10
	ld.bu	$a0, $sp, 129
	andi	$a0, $a0, 4
	bnez	$a0, .LBB0_39
# %bb.61:                               # %.preheader.11
	ld.bu	$a0, $sp, 133
	andi	$a0, $a0, 8
	bnez	$a0, .LBB0_39
# %bb.62:                               # %.preheader.12
	ld.bu	$a0, $sp, 137
	andi	$a0, $a0, 16
	bnez	$a0, .LBB0_39
# %bb.63:                               # %.preheader.13
	ld.bu	$a0, $sp, 141
	andi	$a0, $a0, 32
	bnez	$a0, .LBB0_39
# %bb.64:                               # %.preheader.14
	ld.bu	$a0, $sp, 145
	andi	$a0, $a0, 64
	bnez	$a0, .LBB0_39
# %bb.65:                               # %.preheader.15
	ld.bu	$a0, $sp, 149
	andi	$a0, $a0, 128
	bnez	$a0, .LBB0_39
# %bb.66:                               # %.preheader.16
	ld.bu	$a0, $sp, 154
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_39
# %bb.67:                               # %.preheader.17
	ld.bu	$a0, $sp, 158
	andi	$a0, $a0, 2
	bnez	$a0, .LBB0_39
# %bb.68:                               # %.preheader.18
	ld.bu	$a0, $sp, 162
	andi	$a0, $a0, 4
	bnez	$a0, .LBB0_39
# %bb.69:                               # %.preheader.19
	ld.bu	$a0, $sp, 166
	andi	$a0, $a0, 8
	bnez	$a0, .LBB0_39
# %bb.70:                               # %.preheader.20
	ld.bu	$a0, $sp, 170
	andi	$a0, $a0, 16
	bnez	$a0, .LBB0_39
# %bb.71:                               # %.preheader.21
	ld.bu	$a0, $sp, 174
	andi	$a0, $a0, 32
	bnez	$a0, .LBB0_39
# %bb.72:                               # %.preheader.22
	ld.bu	$a0, $sp, 178
	andi	$a0, $a0, 64
	bnez	$a0, .LBB0_39
# %bb.73:                               # %.preheader.23
	ld.bu	$a0, $sp, 182
	andi	$a0, $a0, 128
	bnez	$a0, .LBB0_39
# %bb.74:                               # %.preheader.24
	ld.bu	$a0, $sp, 187
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_39
# %bb.75:                               # %.preheader.25
	ld.bu	$a0, $sp, 191
	andi	$a0, $a0, 2
	bnez	$a0, .LBB0_39
# %bb.76:                               # %.preheader.26
	ld.bu	$a0, $sp, 195
	andi	$a0, $a0, 4
	bnez	$a0, .LBB0_39
# %bb.77:                               # %.preheader.27
	ld.bu	$a0, $sp, 199
	andi	$a0, $a0, 8
	bnez	$a0, .LBB0_39
# %bb.78:                               # %.preheader.28
	ld.bu	$a0, $sp, 203
	andi	$a0, $a0, 16
	bnez	$a0, .LBB0_39
# %bb.79:                               # %.preheader.29
	ld.bu	$a0, $sp, 207
	andi	$a0, $a0, 32
	bnez	$a0, .LBB0_39
# %bb.80:                               # %.preheader.30
	ld.bu	$a0, $sp, 211
	ld.w	$a1, $sp, 212
	andi	$a0, $a0, 64
	sltui	$a0, $a0, 1
	addi.w	$a2, $zero, -1
	slt	$a1, $a2, $a1
	and	$a0, $a0, $a1
	b	.LBB0_40
.LBB0_81:                               # %.loopexit.split-lp92
.Ltmp12:
	b	.LBB0_85
.LBB0_82:                               # %.loopexit.split-lp100
.Ltmp4:
	b	.LBB0_85
.LBB0_83:                               # %.loopexit91
.Ltmp15:
	b	.LBB0_85
.LBB0_84:                               # %.loopexit99
.Ltmp7:
.LBB0_85:
	move	$fp, $a0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_86:                               # %.loopexit
.Ltmp21:
	b	.LBB0_88
.LBB0_87:                               # %.loopexit.split-lp
.Ltmp18:
.LBB0_88:
	move	$fp, $a0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZNK8NArchive3N7z7CFolder14CheckStructureEv, .Lfunc_end0-_ZNK8NArchive3N7z7CFolder14CheckStructureEv
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
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp11-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp14                #   Call between .Ltmp14 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin0          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Lfunc_end0-.Ltmp20            #   Call between .Ltmp20 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3N7z13CStreamSwitch6RemoveEv # -- Begin function _ZN8NArchive3N7z13CStreamSwitch6RemoveEv
	.p2align	5
	.type	_ZN8NArchive3N7z13CStreamSwitch6RemoveEv,@function
_ZN8NArchive3N7z13CStreamSwitch6RemoveEv: # @_ZN8NArchive3N7z13CStreamSwitch6RemoveEv
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
	move	$fp, $a0
	ld.bu	$a0, $a0, 8
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_4
# %bb.1:
	ld.d	$s0, $fp, 0
	addi.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 20
	beqz	$a0, .LBB1_3
# %bb.2:
	ld.d	$a1, $s0, 24
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $s0, 40
.LBB1_3:                                # %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit
	st.b	$zero, $fp, 8
.LBB1_4:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	_ZN8NArchive3N7z13CStreamSwitch6RemoveEv, .Lfunc_end1-_ZN8NArchive3N7z13CStreamSwitch6RemoveEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm # -- Begin function _ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm
	.p2align	5
	.type	_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm,@function
_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm: # @_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm
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
	ld.bu	$a0, $a0, 8
	ori	$s5, $zero, 1
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	bne	$a0, $s5, .LBB2_4
# %bb.1:
	ld.d	$s3, $fp, 0
	addi.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 20
	beqz	$a0, .LBB2_3
# %bb.2:
	ld.d	$a1, $s3, 24
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $s3, 40
.LBB2_3:                                # %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i
	st.b	$zero, $fp, 8
.LBB2_4:                                # %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit
	st.d	$s2, $fp, 0
	addi.d	$s3, $s2, 8
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 20
	ld.d	$a1, $s2, 24
	slli.d	$a2, $a0, 3
	stx.d	$s4, $a1, $a2
	ld.d	$a1, $s2, 24
	addi.w	$a0, $a0, 1
	alsl.d	$a1, $a0, $a1, 3
	ld.d	$a1, $a1, -8
	st.w	$a0, $s2, 20
	st.d	$a1, $s2, 40
	st.d	$s1, $a1, 0
	st.d	$s0, $a1, 8
	st.d	$zero, $a1, 16
	st.b	$s5, $fp, 8
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
.Lfunc_end2:
	.size	_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm, .Lfunc_end2-_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveERK7CBufferIhE # -- Begin function _ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveERK7CBufferIhE
	.p2align	5
	.type	_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveERK7CBufferIhE,@function
_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveERK7CBufferIhE: # @_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveERK7CBufferIhE
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
	ld.d	$s3, $a2, 16
	ld.bu	$a0, $a0, 8
	ld.d	$s5, $a2, 8
	ori	$s4, $zero, 1
	move	$s0, $a1
	bne	$a0, $s4, .LBB3_4
# %bb.1:
	ld.d	$s1, $fp, 0
	addi.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 20
	beqz	$a0, .LBB3_3
# %bb.2:
	ld.d	$a1, $s1, 24
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $s1, 40
.LBB3_3:                                # %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i.i
	st.b	$zero, $fp, 8
.LBB3_4:                                # %_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit
	st.d	$s0, $fp, 0
	addi.d	$s1, $s0, 8
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 20
	ld.d	$a1, $s0, 24
	slli.d	$a2, $a0, 3
	stx.d	$s2, $a1, $a2
	ld.d	$a1, $s0, 24
	addi.w	$a0, $a0, 1
	alsl.d	$a1, $a0, $a1, 3
	ld.d	$a1, $a1, -8
	st.w	$a0, $s0, 20
	st.d	$a1, $s0, 40
	st.d	$s3, $a1, 0
	st.d	$s5, $a1, 8
	st.d	$zero, $a1, 16
	st.b	$s4, $fp, 8
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
.Lfunc_end3:
	.size	_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveERK7CBufferIhE, .Lfunc_end3-_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveERK7CBufferIhE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE # -- Begin function _ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE
	.p2align	5
	.type	_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE,@function
_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE: # @_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE
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
	ld.bu	$a0, $a0, 8
	ori	$a3, $zero, 1
	move	$s1, $a2
	move	$s0, $a1
	bne	$a0, $a3, .LBB4_4
# %bb.1:
	ld.d	$s2, $fp, 0
	addi.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 20
	beqz	$a0, .LBB4_3
# %bb.2:
	ld.d	$a1, $s2, 24
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $s2, 40
.LBB4_3:                                # %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i
	st.b	$zero, $fp, 8
.LBB4_4:                                # %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit
	ld.d	$a0, $s0, 40
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a0, 8
	bgeu	$a1, $a2, .LBB4_14
# %bb.5:                                # %_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 16
	ldx.bu	$a1, $a2, $a1
	beqz	$a1, .LBB4_13
# %bb.6:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	srli.d	$a1, $a0, 31
	bnez	$a1, .LBB4_14
# %bb.7:                                # %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit
	ld.w	$a1, $s1, 12
	addi.w	$a2, $a0, 0
	bge	$a2, $a1, .LBB4_14
# %bb.8:
	ld.d	$a1, $s1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$s3, $a0, 16
	ld.bu	$a1, $fp, 8
	ld.d	$s5, $a0, 8
	ori	$s4, $zero, 1
	bne	$a1, $s4, .LBB4_12
# %bb.9:
	ld.d	$s1, $fp, 0
	addi.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 20
	beqz	$a0, .LBB4_11
# %bb.10:
	ld.d	$a1, $s1, 24
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $s1, 40
.LBB4_11:                               # %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i.i.i
	st.b	$zero, $fp, 8
.LBB4_12:                               # %_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveERK7CBufferIhE.exit
	st.d	$s0, $fp, 0
	addi.d	$s1, $s0, 8
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 20
	ld.d	$a1, $s0, 24
	slli.d	$a2, $a0, 3
	stx.d	$s2, $a1, $a2
	ld.d	$a1, $s0, 24
	addi.w	$a0, $a0, 1
	alsl.d	$a1, $a0, $a1, 3
	ld.d	$a1, $a1, -8
	st.w	$a0, $s0, 20
	st.d	$a1, $s0, 40
	st.d	$s3, $a1, 0
	st.d	$s5, $a1, 8
	st.d	$zero, $a1, 16
	st.b	$s4, $fp, 8
.LBB4_13:
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
.LBB4_14:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE, .Lfunc_end4-_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z8CInByte28ReadByteEv # -- Begin function _ZN8NArchive3N7z8CInByte28ReadByteEv
	.p2align	5
	.type	_ZN8NArchive3N7z8CInByte28ReadByteEv,@function
_ZN8NArchive3N7z8CInByte28ReadByteEv:   # @_ZN8NArchive3N7z8CInByte28ReadByteEv
	.cfi_startproc
# %bb.0:
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a0, 8
	bgeu	$a1, $a2, .LBB5_2
# %bb.1:
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 16
	ldx.bu	$a0, $a2, $a1
	ret
.LBB5_2:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN8NArchive3N7z8CInByte28ReadByteEv, .Lfunc_end5-_ZN8NArchive3N7z8CInByte28ReadByteEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z8CInByte29ReadBytesEPhm # -- Begin function _ZN8NArchive3N7z8CInByte29ReadBytesEPhm
	.p2align	5
	.type	_ZN8NArchive3N7z8CInByte29ReadBytesEPhm,@function
_ZN8NArchive3N7z8CInByte29ReadBytesEPhm: # @_ZN8NArchive3N7z8CInByte29ReadBytesEPhm
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a3, $a0, 8
	ld.d	$a4, $a0, 16
	sub.d	$a3, $a3, $a4
	bltu	$a3, $a2, .LBB6_4
# %bb.1:                                # %.preheader
	beqz	$a2, .LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 16
	ld.d	$a4, $a0, 0
	addi.d	$a5, $a3, 1
	st.d	$a5, $a0, 16
	ldx.b	$a3, $a4, $a3
	st.b	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB6_2
.LBB6_3:                                # %._crit_edge
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_4:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN8NArchive3N7z8CInByte29ReadBytesEPhm, .Lfunc_end6-_ZN8NArchive3N7z8CInByte29ReadBytesEPhm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z8CInByte28SkipDataEy # -- Begin function _ZN8NArchive3N7z8CInByte28SkipDataEy
	.p2align	5
	.type	_ZN8NArchive3N7z8CInByte28SkipDataEy,@function
_ZN8NArchive3N7z8CInByte28SkipDataEy:   # @_ZN8NArchive3N7z8CInByte28SkipDataEy
	.cfi_startproc
# %bb.0:
	ld.d	$a3, $a0, 8
	ld.d	$a2, $a0, 16
	sub.d	$a3, $a3, $a2
	bltu	$a3, $a1, .LBB7_2
# %bb.1:
	add.d	$a1, $a2, $a1
	st.d	$a1, $a0, 16
	ret
.LBB7_2:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN8NArchive3N7z8CInByte28SkipDataEy, .Lfunc_end7-_ZN8NArchive3N7z8CInByte28SkipDataEy
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z8CInByte28SkipDataEv # -- Begin function _ZN8NArchive3N7z8CInByte28SkipDataEv
	.p2align	5
	.type	_ZN8NArchive3N7z8CInByte28SkipDataEv,@function
_ZN8NArchive3N7z8CInByte28SkipDataEv:   # @_ZN8NArchive3N7z8CInByte28SkipDataEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 8
	ld.d	$a1, $fp, 16
	sub.d	$a2, $a2, $a1
	bltu	$a2, $a0, .LBB8_2
# %bb.1:                                # %_ZN8NArchive3N7z8CInByte28SkipDataEy.exit
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, 16
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB8_2:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN8NArchive3N7z8CInByte28SkipDataEv, .Lfunc_end8-_ZN8NArchive3N7z8CInByte28SkipDataEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z8CInByte210ReadNumberEv # -- Begin function _ZN8NArchive3N7z8CInByte210ReadNumberEv
	.p2align	5
	.type	_ZN8NArchive3N7z8CInByte210ReadNumberEv,@function
_ZN8NArchive3N7z8CInByte210ReadNumberEv: # @_ZN8NArchive3N7z8CInByte210ReadNumberEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a3, $a0, 16
	ld.d	$a5, $a0, 8
	bgeu	$a3, $a5, .LBB9_27
# %bb.1:
	ld.d	$a4, $a0, 0
	addi.d	$a2, $a3, 1
	st.d	$a2, $a0, 16
	ldx.b	$a6, $a4, $a3
	andi	$a1, $a6, 255
	bltz	$a6, .LBB9_3
# %bb.2:
	move	$a3, $zero
	move	$a2, $zero
	ori	$a0, $zero, 383
	b	.LBB9_24
.LBB9_3:
	nor	$a6, $a3, $zero
	add.d	$a5, $a5, $a6
	beqz	$a5, .LBB9_27
# %bb.4:
	addi.d	$a7, $a3, 2
	st.d	$a7, $a0, 16
	ldx.bu	$a2, $a4, $a2
	andi	$a6, $a1, 64
	bnez	$a6, .LBB9_6
# %bb.5:
	ori	$a0, $zero, 319
	ori	$a3, $zero, 8
	b	.LBB9_24
.LBB9_6:
	ori	$a6, $zero, 1
	beq	$a5, $a6, .LBB9_27
# %bb.7:
	addi.d	$a6, $a3, 3
	st.d	$a6, $a0, 16
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 8
	andi	$t0, $a1, 32
	or	$a2, $a7, $a2
	bnez	$t0, .LBB9_9
# %bb.8:
	ori	$a0, $zero, 287
	ori	$a3, $zero, 16
	b	.LBB9_24
.LBB9_9:
	ori	$a7, $zero, 2
	beq	$a5, $a7, .LBB9_27
# %bb.10:
	addi.d	$a7, $a3, 4
	st.d	$a7, $a0, 16
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 16
	andi	$t0, $a1, 16
	or	$a2, $a6, $a2
	bnez	$t0, .LBB9_12
# %bb.11:
	ori	$a0, $zero, 271
	ori	$a3, $zero, 24
	b	.LBB9_24
.LBB9_12:
	ori	$a6, $zero, 3
	beq	$a5, $a6, .LBB9_27
# %bb.13:
	addi.d	$a6, $a3, 5
	st.d	$a6, $a0, 16
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 24
	andi	$t0, $a1, 8
	or	$a2, $a7, $a2
	bnez	$t0, .LBB9_15
# %bb.14:
	ori	$a0, $zero, 263
	ori	$a3, $zero, 32
	b	.LBB9_24
.LBB9_15:
	ori	$a7, $zero, 4
	beq	$a5, $a7, .LBB9_27
# %bb.16:
	addi.d	$a7, $a3, 6
	st.d	$a7, $a0, 16
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 32
	andi	$t0, $a1, 4
	or	$a2, $a6, $a2
	bnez	$t0, .LBB9_18
# %bb.17:
	ori	$a0, $zero, 259
	ori	$a3, $zero, 40
	b	.LBB9_24
.LBB9_18:
	ori	$a6, $zero, 5
	beq	$a5, $a6, .LBB9_27
# %bb.19:
	addi.d	$a6, $a3, 7
	st.d	$a6, $a0, 16
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 40
	andi	$t0, $a1, 2
	or	$a2, $a7, $a2
	bnez	$t0, .LBB9_21
# %bb.20:
	ori	$a0, $zero, 257
	ori	$a3, $zero, 48
	b	.LBB9_24
.LBB9_21:
	ori	$a7, $zero, 6
	beq	$a5, $a7, .LBB9_27
# %bb.22:
	addi.d	$a7, $a3, 8
	st.d	$a7, $a0, 16
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 48
	andi	$t0, $a1, 1
	or	$a2, $a6, $a2
	bnez	$t0, .LBB9_25
# %bb.23:
	ori	$a0, $zero, 256
	ori	$a3, $zero, 56
.LBB9_24:
	and	$a0, $a0, $a1
	sll.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB9_25:
	ori	$a1, $zero, 7
	beq	$a5, $a1, .LBB9_27
# %bb.26:                               # %.loopexit.loopexit
	addi.d	$a1, $a3, 9
	st.d	$a1, $a0, 16
	ldx.b	$a0, $a4, $a7
	slli.d	$a0, $a0, 56
	or	$a0, $a0, $a2
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB9_27:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN8NArchive3N7z8CInByte210ReadNumberEv, .Lfunc_end9-_ZN8NArchive3N7z8CInByte210ReadNumberEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z8CInByte27ReadNumEv # -- Begin function _ZN8NArchive3N7z8CInByte27ReadNumEv
	.p2align	5
	.type	_ZN8NArchive3N7z8CInByte27ReadNumEv,@function
_ZN8NArchive3N7z8CInByte27ReadNumEv:    # @_ZN8NArchive3N7z8CInByte27ReadNumEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	srli.d	$a1, $a0, 31
	bnez	$a1, .LBB10_2
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_2:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN8NArchive3N7z8CInByte27ReadNumEv, .Lfunc_end10-_ZN8NArchive3N7z8CInByte27ReadNumEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z8CInByte210ReadUInt32Ev # -- Begin function _ZN8NArchive3N7z8CInByte210ReadUInt32Ev
	.p2align	5
	.type	_ZN8NArchive3N7z8CInByte210ReadUInt32Ev,@function
_ZN8NArchive3N7z8CInByte210ReadUInt32Ev: # @_ZN8NArchive3N7z8CInByte210ReadUInt32Ev
	.cfi_startproc
# %bb.0:
	ld.d	$a1, $a0, 16
	ld.d	$a3, $a0, 8
	addi.d	$a2, $a1, 4
	bltu	$a3, $a2, .LBB11_2
# %bb.1:
	ld.d	$a3, $a0, 0
	ldx.w	$a1, $a3, $a1
	st.d	$a2, $a0, 16
	move	$a0, $a1
	ret
.LBB11_2:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN8NArchive3N7z8CInByte210ReadUInt32Ev, .Lfunc_end11-_ZN8NArchive3N7z8CInByte210ReadUInt32Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z8CInByte210ReadUInt64Ev # -- Begin function _ZN8NArchive3N7z8CInByte210ReadUInt64Ev
	.p2align	5
	.type	_ZN8NArchive3N7z8CInByte210ReadUInt64Ev,@function
_ZN8NArchive3N7z8CInByte210ReadUInt64Ev: # @_ZN8NArchive3N7z8CInByte210ReadUInt64Ev
	.cfi_startproc
# %bb.0:
	ld.d	$a1, $a0, 16
	ld.d	$a3, $a0, 8
	addi.d	$a2, $a1, 8
	bltu	$a3, $a2, .LBB12_2
# %bb.1:
	ld.d	$a3, $a0, 0
	ldx.d	$a1, $a3, $a1
	st.d	$a2, $a0, 16
	move	$a0, $a1
	ret
.LBB12_2:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN8NArchive3N7z8CInByte210ReadUInt64Ev, .Lfunc_end12-_ZN8NArchive3N7z8CInByte210ReadUInt64Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z8CInByte210ReadStringER11CStringBaseIwE # -- Begin function _ZN8NArchive3N7z8CInByte210ReadStringER11CStringBaseIwE
	.p2align	5
	.type	_ZN8NArchive3N7z8CInByte210ReadStringER11CStringBaseIwE,@function
_ZN8NArchive3N7z8CInByte210ReadStringER11CStringBaseIwE: # @_ZN8NArchive3N7z8CInByte210ReadStringER11CStringBaseIwE
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
	ld.d	$s4, $a0, 16
	ld.d	$a2, $a0, 8
	ld.d	$s5, $a0, 0
	move	$fp, $a1
	sub.d	$a1, $a2, $s4
	bstrins.d	$a1, $zero, 0, 0
	add.d	$s1, $s5, $s4
	move	$s2, $zero
	beqz	$a1, .LBB13_6
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a2, $a1, -1
	bstrins.d	$a2, $zero, 0, 0
	addi.d	$a2, $a2, 2
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	addi.d	$s2, $s2, 2
	bgeu	$s2, $a1, .LBB13_5
.LBB13_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a3, $s1, $s2
	bnez	$a3, .LBB13_2
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	add.d	$a3, $s1, $s2
	ld.bu	$a3, $a3, 1
	bnez	$a3, .LBB13_2
	b	.LBB13_6
.LBB13_5:
	move	$s2, $a2
.LBB13_6:                               # %._crit_edge
	beq	$s2, $a1, .LBB13_40
# %bb.7:
	srli.d	$a1, $s2, 32
	bnez	$a1, .LBB13_40
# %bb.8:
	srli.d	$s3, $s2, 1
	addi.w	$s6, $s3, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $s6, .LBB13_40
# %bb.9:
	ld.w	$s8, $fp, 12
	blt	$s6, $s8, .LBB13_29
# %bb.10:
	addi.w	$s7, $s3, 1
	beq	$s7, $s8, .LBB13_29
# %bb.11:
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a0, $s7, 2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$s0, $a0
	blt	$s8, $a2, .LBB13_28
# %bb.12:                               # %.preheader.i.i
	ld.w	$a1, $fp, 8
	ld.d	$a0, $fp, 0
	blt	$a1, $a2, .LBB13_17
# %bb.13:                               # %iter.check
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB13_25
# %bb.14:                               # %iter.check
	sub.d	$a3, $s0, $a0
	ori	$a4, $zero, 63
	bgeu	$a4, $a3, .LBB13_25
# %bb.15:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB13_18
# %bb.16:
	move	$a2, $zero
	b	.LBB13_22
.LBB13_17:                              # %._crit_edge.i.i
	bnez	$a0, .LBB13_27
	b	.LBB13_28
.LBB13_18:                              # %vector.ph
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $s0, 32
	addi.d	$a4, $a0, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB13_19:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB13_19
# %bb.20:                               # %middle.block
	beq	$a2, $a1, .LBB13_27
# %bb.21:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 12
	beqz	$a3, .LBB13_25
.LBB13_22:                              # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $s0, 2
	alsl.d	$a5, $a5, $a0, 2
	.p2align	4, , 16
.LBB13_23:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB13_23
# %bb.24:                               # %vec.epilog.middle.block
	beq	$a2, $a1, .LBB13_27
.LBB13_25:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $s0, 2
	alsl.d	$a2, $a2, $a0, 2
	.p2align	4, , 16
.LBB13_26:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	st.w	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB13_26
.LBB13_27:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_28:
	ld.w	$a0, $fp, 8
	st.d	$s0, $fp, 0
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s0, $a0
	st.w	$s7, $fp, 12
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
.LBB13_29:                              # %_ZN11CStringBaseIwE9GetBufferEi.exit
	ld.d	$a1, $fp, 0
	beqz	$s6, .LBB13_36
# %bb.30:                               # %.lr.ph35.preheader
	ori	$a2, $zero, 16
	bltu	$s2, $a2, .LBB13_33
# %bb.31:                               # %vector.memcheck48
	add.d	$a2, $s5, $s4
	add.d	$a2, $a2, $s2
	bgeu	$a1, $a2, .LBB13_37
# %bb.32:                               # %vector.memcheck48
	alsl.d	$a2, $s2, $a1, 1
	bgeu	$s1, $a2, .LBB13_37
.LBB13_33:
	move	$a2, $zero
.LBB13_34:                              # %.lr.ph35.preheader65
	alsl.d	$a3, $a2, $a1, 2
	sub.d	$a2, $s3, $a2
	.p2align	4, , 16
.LBB13_35:                              # %.lr.ph35
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $s1, 0
	st.w	$a4, $a3, 0
	addi.d	$s1, $s1, 2
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB13_35
.LBB13_36:                              # %._crit_edge36
	ld.d	$a2, $a0, 16
	slli.d	$a3, $s3, 2
	stx.w	$zero, $a1, $a3
	st.w	$s3, $fp, 8
	add.d	$a1, $s2, $a2
	addi.d	$a1, $a1, 2
	st.d	$a1, $a0, 16
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
.LBB13_37:                              # %vector.ph51
	bstrpick.d	$a3, $s3, 30, 2
	slli.d	$a2, $a3, 2
	alsl.d	$s1, $a3, $s1, 3
	add.d	$a3, $s4, $s5
	addi.d	$a3, $a3, 3
	vrepli.b	$vr0, 0
	move	$a4, $a2
	move	$a5, $a1
	.p2align	4, , 16
.LBB13_38:                              # %vector.body54
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a6, $a3, 3
	ld.b	$a7, $a3, 1
	ld.b	$t0, $a3, -1
	ld.b	$t1, $a3, -3
	st.b	$a6, $sp, 35
	st.b	$a7, $sp, 34
	st.b	$t0, $sp, 33
	st.b	$t1, $sp, 32
	vld	$vr1, $sp, 32
	ld.b	$a6, $a3, 4
	ld.b	$a7, $a3, 2
	ld.b	$t0, $a3, 0
	ld.b	$t1, $a3, -2
	st.b	$a6, $sp, 19
	st.b	$a7, $sp, 18
	st.b	$t0, $sp, 17
	st.b	$t1, $sp, 16
	vld	$vr2, $sp, 16
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vslli.w	$vr2, $vr2, 8
	vor.v	$vr1, $vr2, $vr1
	vst	$vr1, $a5, 0
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB13_38
# %bb.39:                               # %middle.block60
	beq	$s3, $a2, .LBB13_36
	b	.LBB13_34
.LBB13_40:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN8NArchive3N7z8CInByte210ReadStringER11CStringBaseIwE, .Lfunc_end13-_ZN8NArchive3N7z8CInByte210ReadStringER11CStringBaseIwE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN8NArchive3N7z10CInArchive20FindAndReadSignatureEP9IInStreamPKy
.LCPI14_0:
	.byte	0                               # 0x0
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI14_1:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	8                               # 0x8
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.text
	.globl	_ZN8NArchive3N7z10CInArchive20FindAndReadSignatureEP9IInStreamPKy
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive20FindAndReadSignatureEP9IInStreamPKy,@function
_ZN8NArchive3N7z10CInArchive20FindAndReadSignatureEP9IInStreamPKy: # @_ZN8NArchive3N7z10CInArchive20FindAndReadSignatureEP9IInStreamPKy
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	move	$s2, $a2
	move	$fp, $a1
	move	$s1, $a0
	addi.d	$s5, $a0, 56
	ori	$a2, $zero, 32
	move	$a0, $a1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_Z16ReadStream_FALSEP19ISequentialInStreamPvm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_38
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive3N7z10kSignatureE)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN8NArchive3N7z10kSignatureE)
	ld.bu	$a0, $s5, 0
	ld.bu	$a1, $a2, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bne	$a0, $a1, .LBB14_12
# %bb.2:
	ld.bu	$a0, $s1, 57
	ld.bu	$a1, $a2, 1
	bne	$a0, $a1, .LBB14_12
# %bb.3:
	ld.bu	$a0, $s1, 58
	ld.bu	$a1, $a2, 2
	bne	$a0, $a1, .LBB14_12
# %bb.4:
	ld.bu	$a0, $s1, 59
	ld.bu	$a1, $a2, 3
	bne	$a0, $a1, .LBB14_12
# %bb.5:
	ld.bu	$a0, $s1, 60
	ld.bu	$a1, $a2, 4
	bne	$a0, $a1, .LBB14_12
# %bb.6:
	ld.bu	$a0, $s1, 61
	ld.bu	$a1, $a2, 5
	bne	$a0, $a1, .LBB14_12
# %bb.7:
	addi.d	$a0, $s1, 68
	ori	$a1, $zero, 20
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 65
	ld.bu	$a2, $s1, 64
	ld.bu	$a3, $s1, 66
	slli.w	$a5, $a1, 8
	ld.bu	$a4, $s1, 67
	or	$a5, $a5, $a2
	slli.w	$a6, $a3, 16
	or	$a5, $a5, $a6
	slli.w	$a6, $a4, 24
	or	$a5, $a5, $a6
	bne	$a0, $a5, .LBB14_9
.LBB14_8:
	move	$a0, $zero
	b	.LBB14_38
.LBB14_9:                               # %.preheader.preheader.i
	or	$a0, $a1, $a2
	or	$a0, $a0, $a3
	or	$a0, $a0, $a4
	ld.b	$a1, $s1, 72
	vld	$vr0, $s1, 68
	vld	$vr1, $s1, 73
	ld.d	$a2, $s1, 75
	pcalau12i	$a3, %pc_hi20(.LCPI14_0)
	vld	$vr2, $a3, %pc_lo12(.LCPI14_0)
	pcalau12i	$a3, %pc_hi20(.LCPI14_1)
	vld	$vr3, $a3, %pc_lo12(.LCPI14_1)
	vinsgr2vr.b	$vr4, $a0, 0
	vshuf.b	$vr0, $vr0, $vr4, $vr2
	vinsgr2vr.d	$vr2, $a2, 0
	vshuf.h	$vr3, $vr1, $vr0
	ld.w	$a0, $s1, 83
	vinsgr2vr.b	$vr3, $a1, 5
	vpackev.d	$vr0, $vr2, $vr3
	vseqi.b	$vr0, $vr0, 0
	vinsgr2vr.w	$vr1, $a0, 0
	vseqi.b	$vr1, $vr1, 0
	vilvl.b	$vr1, $vr1, $vr1
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 24
	vsrai.w	$vr1, $vr1, 24
	vpickve2gr.b	$a0, $vr0, 0
	vinsgr2vr.w	$vr2, $a0, 0
	vpickve2gr.b	$a0, $vr0, 1
	vinsgr2vr.w	$vr2, $a0, 1
	vpickve2gr.b	$a0, $vr0, 2
	vinsgr2vr.w	$vr2, $a0, 2
	vpickve2gr.b	$a0, $vr0, 3
	vinsgr2vr.w	$vr2, $a0, 3
	vand.v	$vr1, $vr2, $vr1
	vpickve2gr.w	$a0, $vr1, 3
	vpickve2gr.w	$a1, $vr1, 2
	vpickve2gr.w	$a2, $vr1, 0
	vpickve2gr.w	$a3, $vr1, 1
	andi	$a3, $a3, 1
	bstrins.d	$a2, $a3, 63, 1
	bstrins.d	$a2, $a1, 2, 2
	bstrins.d	$a2, $a0, 3, 3
	vpickve2gr.b	$a0, $vr0, 4
	bstrins.d	$a2, $a0, 4, 4
	vpickve2gr.b	$a0, $vr0, 5
	bstrins.d	$a2, $a0, 5, 5
	vpickve2gr.b	$a0, $vr0, 6
	andi	$a0, $a0, 1
	slli.d	$a0, $a0, 6
	or	$a0, $a2, $a0
	vpickve2gr.b	$a1, $vr0, 7
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr0, 8
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr0, 9
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 9
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr0, 10
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 10
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr0, 11
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 11
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr0, 12
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 12
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr0, 13
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 13
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr0, 14
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 14
	or	$a0, $a0, $a1
	vpickve2gr.b	$a1, $vr0, 15
	slli.d	$a1, $a1, 15
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4095
	bne	$a0, $a1, .LBB14_12
# %bb.10:                               # %.preheader.preheader.i
	ld.bu	$a0, $s1, 87
	bnez	$a0, .LBB14_12
# %bb.11:
	ld.b	$a0, $s1, 63
	ld.bu	$a1, $s1, 62
	andi	$a0, $a0, 255
	or	$a0, $a1, $a0
	bnez	$a0, .LBB14_8
.LBB14_12:                              # %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread
	lu12i.w	$s4, 16
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	xvld	$xr0, $s5, 0
	move	$s3, $a0
	ld.d	$s6, $s1, 48
	xvst	$xr0, $a0, 0
	ori	$s7, $zero, 33
	ori	$s8, $zero, 55
	beqz	$s2, .LBB14_14
.LBB14_13:
	ld.d	$a0, $s1, 48
	ld.d	$a1, $s2, 0
	sub.d	$a0, $s6, $a0
	bltu	$a1, $a0, .LBB14_34
.LBB14_14:                              # %.preheader225
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_15 Depth 2
                                        #     Child Loop BB14_21 Depth 2
                                        #       Child Loop BB14_22 Depth 3
	ori	$a0, $zero, 32
	.p2align	4, , 16
.LBB14_15:                              #   Parent Loop BB14_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 0
	ld.d	$a4, $a1, 40
	move	$s0, $a0
	sub.w	$a2, $s4, $a0
	add.d	$a1, $s3, $a0
.Ltmp22:
	addi.d	$a3, $sp, 52
	move	$a0, $fp
	jirl	$ra, $a4, 0
.Ltmp23:
# %bb.16:                               #   in Loop: Header=BB14_15 Depth=2
	bnez	$a0, .LBB14_36
# %bb.17:                               #   in Loop: Header=BB14_15 Depth=2
	ld.w	$a1, $sp, 52
	beqz	$a1, .LBB14_34
# %bb.18:                               #   in Loop: Header=BB14_15 Depth=2
	add.w	$a0, $a1, $s0
	bltu	$a0, $s7, .LBB14_15
# %bb.19:                               # %.preheader.preheader
                                        #   in Loop: Header=BB14_14 Depth=1
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$s6, $zero
	addi.w	$s2, $a0, -32
	bstrpick.d	$s1, $s2, 31, 0
	add.d	$a0, $s0, $a1
	addi.w	$s0, $a0, -31
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	b	.LBB14_21
	.p2align	4, , 16
.LBB14_20:                              # %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread
                                        #   in Loop: Header=BB14_21 Depth=2
	bgeu	$s6, $s2, .LBB14_33
.LBB14_21:                              # %.preheader
                                        #   Parent Loop BB14_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_22 Depth 3
	bstrpick.d	$s7, $s6, 31, 0
	.p2align	4, , 16
.LBB14_22:                              #   Parent Loop BB14_14 Depth=1
                                        #     Parent Loop BB14_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a1, $s7
	ldx.bu	$a0, $s3, $s7
	addi.d	$s7, $s7, 1
	addi.w	$s6, $s6, 1
	bgeu	$a1, $s1, .LBB14_24
# %bb.23:                               #   in Loop: Header=BB14_22 Depth=3
	bne	$a0, $s8, .LBB14_22
.LBB14_24:                              #   in Loop: Header=BB14_21 Depth=2
	beq	$s0, $s6, .LBB14_33
# %bb.25:                               #   in Loop: Header=BB14_21 Depth=2
	ld.bu	$a1, $a2, 0
	bne	$a0, $a1, .LBB14_20
# %bb.26:                               #   in Loop: Header=BB14_21 Depth=2
	ldx.bu	$a0, $s3, $s7
	ld.bu	$a1, $a2, 1
	bne	$a0, $a1, .LBB14_20
# %bb.27:                               #   in Loop: Header=BB14_21 Depth=2
	add.d	$s5, $s3, $s7
	ld.bu	$a0, $s5, 1
	ld.bu	$a1, $a2, 2
	bne	$a0, $a1, .LBB14_20
# %bb.28:                               #   in Loop: Header=BB14_21 Depth=2
	ld.bu	$a0, $s5, 2
	ld.bu	$a1, $a2, 3
	bne	$a0, $a1, .LBB14_20
# %bb.29:                               #   in Loop: Header=BB14_21 Depth=2
	ld.bu	$a0, $s5, 3
	ld.bu	$a1, $a2, 4
	bne	$a0, $a1, .LBB14_20
# %bb.30:                               #   in Loop: Header=BB14_21 Depth=2
	ld.bu	$a0, $s5, 4
	ld.bu	$a1, $a2, 5
	bne	$a0, $a1, .LBB14_20
# %bb.31:                               #   in Loop: Header=BB14_21 Depth=2
	addi.d	$a0, $s5, 11
.Ltmp25:
	ori	$a1, $zero, 20
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
.Ltmp26:
# %bb.32:                               # %_ZN8NArchive3N7zL13TestSignatureEPKh.exit
                                        #   in Loop: Header=BB14_21 Depth=2
	ld.w	$a1, $s5, 7
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB14_20
	b	.LBB14_35
.LBB14_33:                              # %._crit_edge
                                        #   in Loop: Header=BB14_14 Depth=1
	xvldx	$xr0, $s3, $s1
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	add.d	$s6, $s6, $s1
	xvst	$xr0, $s3, 0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ori	$s7, $zero, 33
	bnez	$s2, .LBB14_13
	b	.LBB14_14
.LBB14_34:
	ori	$fp, $zero, 1
	b	.LBB14_37
.LBB14_35:
	xvld	$xr0, $s5, -1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	xvst	$xr0, $a0, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s7
	addi.d	$a2, $a1, -1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	st.d	$a2, $a3, 48
	ld.d	$a4, $a0, 48
	addi.d	$a1, $a1, 31
.Ltmp28:
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp29:
.LBB14_36:                              # %.thread
	move	$fp, $a0
.LBB14_37:                              # %_ZN7CBufferIhED2Ev.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB14_38:                              # %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread88
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
.LBB14_39:                              # %.loopexit.split-lp
.Ltmp30:
	b	.LBB14_42
.LBB14_40:                              # %.loopexit
.Ltmp27:
	b	.LBB14_42
.LBB14_41:
.Ltmp24:
.LBB14_42:                              # %_ZN7CBufferIhED2Ev.exit81
	move	$fp, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN8NArchive3N7z10CInArchive20FindAndReadSignatureEP9IInStreamPKy, .Lfunc_end14-_ZN8NArchive3N7z10CInArchive20FindAndReadSignatureEP9IInStreamPKy
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp22-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin1          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Lfunc_end14-.Ltmp29           #   Call between .Ltmp29 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7CBufferIhED2Ev,"axG",@progbits,_ZN7CBufferIhED2Ev,comdat
	.weak	_ZN7CBufferIhED2Ev              # -- Begin function _ZN7CBufferIhED2Ev
	.p2align	5
	.type	_ZN7CBufferIhED2Ev,@function
_ZN7CBufferIhED2Ev:                     # @_ZN7CBufferIhED2Ev
# %bb.0:
	move	$a1, $a0
	ld.d	$a0, $a0, 16
	pcalau12i	$a2, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV7CBufferIhE+16)
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB15_2
# %bb.1:
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB15_2:
	ret
.Lfunc_end15:
	.size	_ZN7CBufferIhED2Ev, .Lfunc_end15-_ZN7CBufferIhED2Ev
                                        # -- End function
	.text
	.globl	_ZN8NArchive3N7z10CInArchive4OpenEP9IInStreamPKy # -- Begin function _ZN8NArchive3N7z10CInArchive4OpenEP9IInStreamPKy
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive4OpenEP9IInStreamPKy,@function
_ZN8NArchive3N7z10CInArchive4OpenEP9IInStreamPKy: # @_ZN8NArchive3N7z10CInArchive4OpenEP9IInStreamPKy
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
	ld.d	$a0, $a0, 0
	move	$s1, $a2
	move	$s0, $a1
	st.d	$zero, $fp, 88
	beqz	$a0, .LBB16_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 0
.LBB16_2:                               # %_ZN8NArchive3N7z10CInArchive5CloseEv.exit
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 48
	addi.d	$a3, $fp, 48
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB16_7
# %bb.3:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive20FindAndReadSignatureEP9IInStreamPKy)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_7
# %bb.4:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB16_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB16_6:                               # %_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit
	move	$a0, $zero
	st.d	$s0, $fp, 0
.LBB16_7:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	_ZN8NArchive3N7z10CInArchive4OpenEP9IInStreamPKy, .Lfunc_end16-_ZN8NArchive3N7z10CInArchive4OpenEP9IInStreamPKy
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z10CInArchive5CloseEv # -- Begin function _ZN8NArchive3N7z10CInArchive5CloseEv
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive5CloseEv,@function
_ZN8NArchive3N7z10CInArchive5CloseEv:   # @_ZN8NArchive3N7z10CInArchive5CloseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB17_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 0
.LBB17_2:                               # %_ZN9CMyComPtrI9IInStreamE7ReleaseEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end17:
	.size	_ZN8NArchive3N7z10CInArchive5CloseEv, .Lfunc_end17-_ZN8NArchive3N7z10CInArchive5CloseEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE # -- Begin function _ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE,@function
_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE: # @_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE
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
	move	$fp, $a0
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_3
	.p2align	4, , 16
.LBB18_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $fp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 8
	ld.d	$a2, $s0, 16
	sub.d	$a1, $a1, $a2
	bltu	$a1, $a0, .LBB18_4
# %bb.2:                                # %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit
                                        #   in Loop: Header=BB18_1 Depth=1
	ld.d	$a1, $fp, 40
	add.d	$a0, $a2, $a0
	st.d	$a0, $s0, 16
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_1
.LBB18_3:                               # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB18_4:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE, .Lfunc_end18-_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z10CInArchive17GetNextFolderItemERNS0_7CFolderE # -- Begin function _ZN8NArchive3N7z10CInArchive17GetNextFolderItemERNS0_7CFolderE
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive17GetNextFolderItemERNS0_7CFolderE,@function
_ZN8NArchive3N7z10CInArchive17GetNextFolderItemERNS0_7CFolderE: # @_ZN8NArchive3N7z10CInArchive17GetNextFolderItemERNS0_7CFolderE
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
	move	$s0, $a0
	ld.d	$a0, $a0, 40
	move	$fp, $a1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	srli.d	$a0, $a0, 31
	bnez	$a0, .LBB19_55
# %bb.1:                                # %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	move	$s4, $zero
	beqz	$s1, .LBB19_33
# %bb.2:                                # %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit.lr.ph
	move	$s3, $zero
	move	$s5, $zero
	addi.d	$s6, $sp, 56
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a0, $s1, 0
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB19_3:                               # %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_7 Depth 2
                                        #     Child Loop BB19_10 Depth 2
                                        #     Child Loop BB19_28 Depth 2
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s1, 8
	st.d	$zero, $s1, 16
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s1, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.d	$a0, $fp, 16
	slli.d	$a2, $a1, 3
	stx.d	$s1, $a0, $a2
	ld.d	$a0, $s0, 40
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $fp, 12
	bgeu	$a2, $a3, .LBB19_55
# %bb.4:                                # %_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a4, $a0, 0
	ld.d	$a5, $fp, 16
	addi.d	$a6, $a2, 1
	st.d	$a6, $a0, 16
	ldx.bu	$s7, $a4, $a2
	alsl.d	$a1, $a1, $a5, 3
	ld.d	$s8, $a1, -8
	andi	$a1, $s7, 15
	sub.d	$a3, $a3, $a6
	bltu	$a3, $a1, .LBB19_55
# %bb.5:                                # %.preheader.i.i
                                        #   in Loop: Header=BB19_3 Depth=1
	beqz	$a1, .LBB19_13
# %bb.6:                                # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB19_3 Depth=1
	addi.d	$a3, $a4, 1
	addi.d	$a4, $sp, 57
	move	$a5, $a1
	.p2align	4, , 16
.LBB19_7:                               # %.lr.ph.i.i
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a6, $a2, 2
	st.d	$a6, $a0, 16
	ldx.b	$a6, $a3, $a2
	st.b	$a6, $a4, 0
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 1
	bnez	$a5, .LBB19_7
# %bb.8:                                # %_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit
                                        #   in Loop: Header=BB19_3 Depth=1
	ori	$a2, $zero, 8
	bltu	$a2, $a1, .LBB19_55
# %bb.9:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB19_3 Depth=1
	move	$a3, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB19_10:                              # %.lr.ph
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a4, $s6, $a1
	sll.d	$a4, $a4, $a3
	or	$a2, $a4, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB19_10
# %bb.11:                               # %._crit_edge
                                        #   in Loop: Header=BB19_3 Depth=1
	andi	$a1, $s7, 16
	st.d	$a2, $s8, 0
	bnez	$a1, .LBB19_14
.LBB19_12:                              #   in Loop: Header=BB19_3 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $s8, 32
	b	.LBB19_16
	.p2align	4, , 16
.LBB19_13:                              #   in Loop: Header=BB19_3 Depth=1
	move	$a2, $zero
	andi	$a1, $s7, 16
	st.d	$a2, $s8, 0
	beqz	$a1, .LBB19_12
.LBB19_14:                              #   in Loop: Header=BB19_3 Depth=1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	srli.d	$a1, $a0, 31
	bnez	$a1, .LBB19_55
# %bb.15:                               # %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit78
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a1, $s0, 40
	st.w	$a0, $s8, 32
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	srli.d	$a1, $a0, 31
	bnez	$a1, .LBB19_55
.LBB19_16:                              #   in Loop: Header=BB19_3 Depth=1
	andi	$a1, $s7, 32
	st.w	$a0, $s8, 36
	beqz	$a1, .LBB19_29
# %bb.17:                               #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	srli.d	$a0, $a0, 31
	bnez	$a0, .LBB19_55
# %bb.18:                               # %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit80
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$s0, $s8, 16
	bne	$s1, $s0, .LBB19_20
# %bb.19:                               # %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit80._ZN7CBufferIhE11SetCapacityEm.exit_crit_edge
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$s2, $s8, 24
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB19_26
	.p2align	4, , 16
.LBB19_20:                              #   in Loop: Header=BB19_3 Depth=1
	beqz	$s1, .LBB19_31
# %bb.21:                               #   in Loop: Header=BB19_3 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$s0, .LBB19_23
# %bb.22:                               #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a1, $s8, 24
	sltu	$a0, $s0, $s1
	masknez	$a2, $s1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB19_23:                              #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a0, $s8, 24
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB19_25
.LBB19_24:                              #   in Loop: Header=BB19_3 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB19_25:                              #   in Loop: Header=BB19_3 Depth=1
	st.d	$s2, $s8, 24
	st.d	$s1, $s8, 16
.LBB19_26:                              # %_ZN7CBufferIhE11SetCapacityEm.exit
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.d	$a0, $s0, 40
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a0, 16
	sub.d	$a1, $a1, $a2
	bltu	$a1, $s1, .LBB19_55
# %bb.27:                               # %.preheader.i.i81
                                        #   in Loop: Header=BB19_3 Depth=1
	beqz	$s1, .LBB19_29
	.p2align	4, , 16
.LBB19_28:                              # %.lr.ph.i.i83
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 16
	ldx.b	$a1, $a2, $a1
	st.b	$a1, $s2, 0
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 1
	bnez	$s1, .LBB19_28
.LBB19_29:                              # %_ZN8NArchive3N7z10CInArchive9ReadBytesEPhm.exit86
                                        #   in Loop: Header=BB19_3 Depth=1
	ext.w.b	$a0, $s7
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bge	$a1, $a0, .LBB19_55
# %bb.30:                               #   in Loop: Header=BB19_3 Depth=1
	ld.w	$a0, $s8, 32
	ld.w	$a1, $s8, 36
	add.w	$s4, $a0, $s4
	addi.w	$s5, $s5, 1
	add.d	$s3, $a1, $s3
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	bne	$s5, $a0, .LBB19_3
	b	.LBB19_32
.LBB19_31:                              #   in Loop: Header=BB19_3 Depth=1
	move	$s2, $zero
	ld.d	$a0, $s8, 24
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB19_24
	b	.LBB19_25
.LBB19_32:                              # %._crit_edge126.loopexit
	addi.w	$s2, $s3, -1
	b	.LBB19_34
.LBB19_33:
	addi.w	$s2, $zero, -1
.LBB19_34:                              # %._crit_edge126
	addi.d	$s1, $fp, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB19_39
# %bb.35:                               # %.lr.ph131
	move	$s5, $s2
	.p2align	4, , 16
.LBB19_36:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	srli.d	$a0, $a0, 31
	bnez	$a0, .LBB19_55
# %bb.37:                               # %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit88
                                        #   in Loop: Header=BB19_36 Depth=1
	ld.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	srli.d	$a1, $a0, 31
	bnez	$a1, .LBB19_55
# %bb.38:                               # %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit89
                                        #   in Loop: Header=BB19_36 Depth=1
	slli.d	$a0, $a0, 32
	or	$s0, $a0, $s3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ld.d	$a1, $fp, 48
	slli.d	$a0, $a0, 3
	stx.d	$s0, $a1, $a0
	ld.w	$a0, $fp, 44
	addi.d	$a0, $a0, 1
	addi.w	$s5, $s5, -1
	st.w	$a0, $fp, 44
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	bnez	$s5, .LBB19_36
.LBB19_39:                              # %._crit_edge132
	bltu	$s4, $s2, .LBB19_55
# %bb.40:
	sub.w	$s3, $s4, $s2
	addi.d	$s1, $fp, 64
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB19_48
# %bb.41:                               # %.preheader
	beqz	$s4, .LBB19_53
# %bb.42:                               # %.lr.ph136
	ld.w	$a1, $fp, 44
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB19_51
# %bb.43:                               # %.lr.ph.i.us.preheader
	ld.d	$a0, $fp, 48
	move	$s0, $zero
	bstrpick.d	$a1, $a1, 31, 0
.LBB19_44:                              # %.lr.ph.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_45 Depth 2
	move	$a2, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB19_45:                              #   Parent Loop BB19_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, 0
	beq	$a4, $s0, .LBB19_47
# %bb.46:                               #   in Loop: Header=BB19_45 Depth=2
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB19_45
	b	.LBB19_52
.LBB19_47:                              # %_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit.us
                                        #   in Loop: Header=BB19_44 Depth=1
	addi.w	$s0, $s0, 1
	bne	$s0, $s4, .LBB19_44
	b	.LBB19_53
.LBB19_48:                              # %.preheader99
	beq	$s4, $s2, .LBB19_54
	.p2align	4, , 16
.LBB19_49:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	srli.d	$a0, $a0, 31
	bnez	$a0, .LBB19_55
# %bb.50:                               # %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit92
                                        #   in Loop: Header=BB19_49 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 76
	ld.d	$a1, $fp, 80
	slli.d	$a0, $a0, 2
	stx.w	$s2, $a1, $a0
	ld.w	$a0, $fp, 76
	addi.d	$a0, $a0, 1
	addi.w	$s3, $s3, -1
	st.w	$a0, $fp, 76
	bnez	$s3, .LBB19_49
	b	.LBB19_54
.LBB19_51:
	move	$s0, $zero
.LBB19_52:                              # %_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit.thread
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 76
	ld.d	$a1, $fp, 80
	slli.d	$a0, $a0, 2
	stx.w	$s0, $a1, $a0
	ld.w	$a0, $fp, 76
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 76
.LBB19_53:                              # %.loopexit
	ld.w	$a0, $fp, 76
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB19_55
.LBB19_54:                              # %.loopexit100
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
.LBB19_55:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN8NArchive3N7z10CInArchive17GetNextFolderItemERNS0_7CFolderE, .Lfunc_end19-_ZN8NArchive3N7z10CInArchive17GetNextFolderItemERNS0_7CFolderE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z10CInArchive13WaitAttributeEy # -- Begin function _ZN8NArchive3N7z10CInArchive13WaitAttributeEy
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive13WaitAttributeEy,@function
_ZN8NArchive3N7z10CInArchive13WaitAttributeEy: # @_ZN8NArchive3N7z10CInArchive13WaitAttributeEy
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
	ld.d	$a0, $a0, 40
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB20_4
	.p2align	4, , 16
.LBB20_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB20_5
# %bb.2:                                #   in Loop: Header=BB20_1 Depth=1
	ld.d	$s1, $fp, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	ld.d	$a2, $s1, 16
	sub.d	$a1, $a1, $a2
	bltu	$a1, $a0, .LBB20_5
# %bb.3:                                #   in Loop: Header=BB20_1 Depth=1
	ld.d	$a1, $fp, 40
	add.d	$a0, $a2, $a0
	st.d	$a0, $s1, 16
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB20_1
.LBB20_4:                               # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB20_5:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN8NArchive3N7z10CInArchive13WaitAttributeEy, .Lfunc_end20-_ZN8NArchive3N7z10CInArchive13WaitAttributeEy
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE # -- Begin function _ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE,@function
_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE: # @_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE
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
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive15ReadBoolVector2EiR13CRecordVectorIbE)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	blt	$s1, $s3, .LBB21_7
# %bb.1:                                # %.lr.ph
	move	$s4, $zero
	b	.LBB21_4
	.p2align	4, , 16
.LBB21_2:                               #   in Loop: Header=BB21_4 Depth=1
	move	$s5, $zero
.LBB21_3:                               #   in Loop: Header=BB21_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$s5, $a1, $a0
	ld.w	$a0, $fp, 12
	addi.d	$a0, $a0, 1
	addi.d	$s4, $s4, 1
	st.w	$a0, $fp, 12
	beq	$s1, $s4, .LBB21_7
.LBB21_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.bu	$a0, $a0, $s4
	bne	$a0, $s3, .LBB21_2
# %bb.5:                                #   in Loop: Header=BB21_4 Depth=1
	ld.d	$a0, $s2, 40
	ld.d	$a1, $a0, 16
	ld.d	$a3, $a0, 8
	addi.d	$a2, $a1, 4
	bltu	$a3, $a2, .LBB21_8
# %bb.6:                                # %_ZN8NArchive3N7z10CInArchive10ReadUInt32Ev.exit
                                        #   in Loop: Header=BB21_4 Depth=1
	ld.d	$a3, $a0, 0
	ldx.w	$s5, $a3, $a1
	st.d	$a2, $a0, 16
	b	.LBB21_3
.LBB21_7:                               # %._crit_edge
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
.LBB21_8:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE, .Lfunc_end21-_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z10CInArchive15ReadBoolVector2EiR13CRecordVectorIbE # -- Begin function _ZN8NArchive3N7z10CInArchive15ReadBoolVector2EiR13CRecordVectorIbE
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive15ReadBoolVector2EiR13CRecordVectorIbE,@function
_ZN8NArchive3N7z10CInArchive15ReadBoolVector2EiR13CRecordVectorIbE: # @_ZN8NArchive3N7z10CInArchive15ReadBoolVector2EiR13CRecordVectorIbE
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
	move	$s1, $a0
	ld.d	$a0, $a0, 40
	ld.d	$a3, $a0, 16
	ld.d	$a4, $a0, 8
	bgeu	$a3, $a4, .LBB22_10
# %bb.1:                                # %_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit
	move	$fp, $a2
	move	$s0, $a1
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a3, 1
	st.d	$a2, $a0, 16
	ldx.bu	$s2, $a1, $a3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB22_4
# %bb.2:
	ori	$s1, $zero, 1
	blt	$s0, $s1, .LBB22_11
	.p2align	4, , 16
.LBB22_3:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.w	$a1, $fp, 12
	stx.b	$s1, $a0, $a1
	addi.d	$a0, $a1, 1
	addi.w	$s0, $s0, -1
	st.w	$a0, $fp, 12
	bnez	$s0, .LBB22_3
	b	.LBB22_11
.LBB22_4:
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB22_11
# %bb.5:                                # %.lr.ph.i
	move	$s3, $zero
	move	$s2, $zero
	b	.LBB22_8
	.p2align	4, , 16
.LBB22_6:                               # %_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit.i
                                        #   in Loop: Header=BB22_8 Depth=1
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 16
	ldx.bu	$s2, $a2, $a1
	ori	$s3, $zero, 128
.LBB22_7:                               #   in Loop: Header=BB22_8 Depth=1
	and	$a0, $s3, $s2
	sltu	$s4, $zero, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.w	$a1, $fp, 12
	stx.b	$s4, $a0, $a1
	addi.d	$a0, $a1, 1
	st.w	$a0, $fp, 12
	addi.w	$s0, $s0, -1
	srli.d	$s3, $s3, 1
	beqz	$s0, .LBB22_11
.LBB22_8:                               # =>This Inner Loop Header: Depth=1
	bnez	$s3, .LBB22_7
# %bb.9:                                #   in Loop: Header=BB22_8 Depth=1
	ld.d	$a0, $s1, 40
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a0, 8
	bltu	$a1, $a2, .LBB22_6
.LBB22_10:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.LBB22_11:                              # %_ZN8NArchive3N7z10CInArchive14ReadBoolVectorEiR13CRecordVectorIbE.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end22:
	.size	_ZN8NArchive3N7z10CInArchive15ReadBoolVector2EiR13CRecordVectorIbE, .Lfunc_end22-_ZN8NArchive3N7z10CInArchive15ReadBoolVector2EiR13CRecordVectorIbE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z10CInArchive12ReadPackInfoERyR13CRecordVectorIyERS3_IbERS3_IjE # -- Begin function _ZN8NArchive3N7z10CInArchive12ReadPackInfoERyR13CRecordVectorIyERS3_IbERS3_IjE
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive12ReadPackInfoERyR13CRecordVectorIyERS3_IbERS3_IjE,@function
_ZN8NArchive3N7z10CInArchive12ReadPackInfoERyR13CRecordVectorIyERS3_IbERS3_IjE: # @_ZN8NArchive3N7z10CInArchive12ReadPackInfoERyR13CRecordVectorIyERS3_IbERS3_IjE
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
	move	$s2, $a0
	ld.d	$a0, $a0, 40
	move	$fp, $a4
	move	$s0, $a3
	move	$s4, $a2
	move	$s1, $a1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 40
	st.d	$a0, $s1, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	srli.d	$a0, $a0, 31
	bnez	$a0, .LBB23_48
# %bb.1:                                # %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit
	ld.d	$a0, $s2, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 9
	beq	$a0, $s5, .LBB23_5
	.p2align	4, , 16
.LBB23_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB23_48
# %bb.3:                                #   in Loop: Header=BB23_2 Depth=1
	ld.d	$s3, $s2, 40
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 8
	ld.d	$a2, $s3, 16
	sub.d	$a1, $a1, $a2
	bltu	$a1, $a0, .LBB23_48
# %bb.4:                                #   in Loop: Header=BB23_2 Depth=1
	ld.d	$a1, $s2, 40
	add.d	$a0, $a2, $a0
	st.d	$a0, $s3, 16
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB23_2
.LBB23_5:                               # %_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s1, 0
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB23_8
# %bb.6:                                # %.lr.ph
	ori	$a0, $zero, 1
	sltu	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s6, $a1, $a0
	.p2align	4, , 16
.LBB23_7:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 12
	ld.d	$a1, $s4, 16
	slli.d	$a2, $a0, 3
	stx.d	$s5, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.w	$s6, $s6, -1
	st.w	$a0, $s4, 12
	bnez	$s6, .LBB23_7
.LBB23_8:                               # %.preheader
	ld.d	$a0, $s2, 40
	ld.d	$a3, $a0, 16
	ld.d	$a2, $a0, 8
	bgeu	$a3, $a2, .LBB23_48
# %bb.9:
	addi.d	$s8, $a0, 16
	addi.d	$s7, $a0, 8
	ori	$s4, $zero, 10
	ori	$s5, $zero, 1
	ori	$s6, $zero, 2
	b	.LBB23_12
	.p2align	4, , 16
.LBB23_10:                              #   in Loop: Header=BB23_12 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE)
	jirl	$ra, $ra, 0
.LBB23_11:                              # %.backedge
                                        #   in Loop: Header=BB23_12 Depth=1
	ld.d	$a0, $s2, 40
	ld.d	$a3, $a0, 16
	ld.d	$a2, $a0, 8
	addi.d	$s8, $a0, 16
	addi.d	$s7, $a0, 8
	bgeu	$a3, $a2, .LBB23_48
.LBB23_12:                              # %.lr.ph30
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	addi.d	$a6, $a3, 1
	st.d	$a6, $a0, 16
	ldx.b	$a5, $a4, $a3
	andi	$a1, $a5, 255
	bltz	$a5, .LBB23_14
# %bb.13:                               #   in Loop: Header=BB23_12 Depth=1
	move	$a4, $zero
	move	$a2, $zero
	ori	$a3, $zero, 383
	b	.LBB23_35
	.p2align	4, , 16
.LBB23_14:                              #   in Loop: Header=BB23_12 Depth=1
	nor	$a5, $a3, $zero
	add.d	$a5, $a2, $a5
	beqz	$a5, .LBB23_48
# %bb.15:                               #   in Loop: Header=BB23_12 Depth=1
	addi.d	$a7, $a3, 2
	st.d	$a7, $s8, 0
	ldx.bu	$a2, $a4, $a6
	andi	$a6, $a1, 64
	bnez	$a6, .LBB23_17
# %bb.16:                               #   in Loop: Header=BB23_12 Depth=1
	ori	$a3, $zero, 319
	ori	$a4, $zero, 8
	b	.LBB23_35
.LBB23_17:                              #   in Loop: Header=BB23_12 Depth=1
	beq	$a5, $s5, .LBB23_48
# %bb.18:                               #   in Loop: Header=BB23_12 Depth=1
	addi.d	$a6, $a3, 3
	st.d	$a6, $s8, 0
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 8
	andi	$t0, $a1, 32
	or	$a2, $a7, $a2
	bnez	$t0, .LBB23_20
# %bb.19:                               #   in Loop: Header=BB23_12 Depth=1
	ori	$a3, $zero, 287
	ori	$a4, $zero, 16
	b	.LBB23_35
.LBB23_20:                              #   in Loop: Header=BB23_12 Depth=1
	beq	$a5, $s6, .LBB23_48
# %bb.21:                               #   in Loop: Header=BB23_12 Depth=1
	addi.d	$a7, $a3, 4
	st.d	$a7, $s8, 0
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 16
	andi	$t0, $a1, 16
	or	$a2, $a6, $a2
	bnez	$t0, .LBB23_23
# %bb.22:                               #   in Loop: Header=BB23_12 Depth=1
	ori	$a3, $zero, 271
	ori	$a4, $zero, 24
	b	.LBB23_35
.LBB23_23:                              #   in Loop: Header=BB23_12 Depth=1
	ori	$a6, $zero, 3
	beq	$a5, $a6, .LBB23_48
# %bb.24:                               #   in Loop: Header=BB23_12 Depth=1
	addi.d	$a6, $a3, 5
	st.d	$a6, $s8, 0
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 24
	andi	$t0, $a1, 8
	or	$a2, $a7, $a2
	bnez	$t0, .LBB23_26
# %bb.25:                               #   in Loop: Header=BB23_12 Depth=1
	ori	$a3, $zero, 263
	ori	$a4, $zero, 32
	b	.LBB23_35
.LBB23_26:                              #   in Loop: Header=BB23_12 Depth=1
	ori	$a7, $zero, 4
	beq	$a5, $a7, .LBB23_48
# %bb.27:                               #   in Loop: Header=BB23_12 Depth=1
	addi.d	$a7, $a3, 6
	st.d	$a7, $s8, 0
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 32
	andi	$t0, $a1, 4
	or	$a2, $a6, $a2
	bnez	$t0, .LBB23_29
# %bb.28:                               #   in Loop: Header=BB23_12 Depth=1
	ori	$a3, $zero, 259
	ori	$a4, $zero, 40
	b	.LBB23_35
.LBB23_29:                              #   in Loop: Header=BB23_12 Depth=1
	ori	$a6, $zero, 5
	beq	$a5, $a6, .LBB23_48
# %bb.30:                               #   in Loop: Header=BB23_12 Depth=1
	addi.d	$a6, $a3, 7
	st.d	$a6, $s8, 0
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 40
	andi	$t0, $a1, 2
	or	$a2, $a7, $a2
	bnez	$t0, .LBB23_32
# %bb.31:                               #   in Loop: Header=BB23_12 Depth=1
	ori	$a3, $zero, 257
	ori	$a4, $zero, 48
	b	.LBB23_35
.LBB23_32:                              #   in Loop: Header=BB23_12 Depth=1
	ori	$a7, $zero, 6
	beq	$a5, $a7, .LBB23_48
# %bb.33:                               #   in Loop: Header=BB23_12 Depth=1
	addi.d	$a7, $a3, 8
	st.d	$a7, $s8, 0
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 48
	andi	$t0, $a1, 1
	or	$a2, $a6, $a2
	bnez	$t0, .LBB23_39
# %bb.34:                               #   in Loop: Header=BB23_12 Depth=1
	ori	$a3, $zero, 256
	ori	$a4, $zero, 56
	.p2align	4, , 16
.LBB23_35:                              #   in Loop: Header=BB23_12 Depth=1
	and	$a1, $a3, $a1
	sll.d	$a1, $a1, $a4
	add.d	$a1, $a1, $a2
	beq	$a1, $s4, .LBB23_10
.LBB23_36:                              # %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit
                                        #   in Loop: Header=BB23_12 Depth=1
	beqz	$a1, .LBB23_41
# %bb.37:                               #   in Loop: Header=BB23_12 Depth=1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s7, 0
	ld.d	$a1, $s8, 0
	sub.d	$a2, $a2, $a1
	bltu	$a2, $a0, .LBB23_48
# %bb.38:                               # %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit
                                        #   in Loop: Header=BB23_12 Depth=1
	add.d	$a0, $a1, $a0
	st.d	$a0, $s8, 0
	b	.LBB23_11
.LBB23_39:                              #   in Loop: Header=BB23_12 Depth=1
	ori	$a1, $zero, 7
	beq	$a5, $a1, .LBB23_48
# %bb.40:                               # %.loopexit.loopexit.i
                                        #   in Loop: Header=BB23_12 Depth=1
	addi.d	$a1, $a3, 9
	st.d	$a1, $s8, 0
	ldx.b	$a1, $a4, $a7
	slli.d	$a1, $a1, 56
	or	$a1, $a1, $a2
	bne	$a1, $s4, .LBB23_36
	b	.LBB23_10
.LBB23_41:
	ld.w	$a0, $s0, 12
	bnez	$a0, .LBB23_46
# %bb.42:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB23_47
	.p2align	4, , 16
.LBB23_43:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ld.w	$a1, $s0, 12
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $a1, 1
	addi.w	$s1, $s1, -1
	st.w	$a0, $s0, 12
	bnez	$s1, .LBB23_43
# %bb.44:                               # %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB23_45:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$zero, $a1, $a0
	ld.w	$a0, $fp, 12
	addi.d	$a0, $a0, 1
	addi.w	$s3, $s3, -1
	st.w	$a0, $fp, 12
	bnez	$s3, .LBB23_45
.LBB23_46:                              # %.loopexit
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
.LBB23_47:                              # %.loopexit.critedge
	addi.w	$a1, $s1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector5ClearEv)
	jr	$t8
.LBB23_48:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN8NArchive3N7z10CInArchive12ReadPackInfoERyR13CRecordVectorIyERS3_IbERS3_IjE, .Lfunc_end23-_ZN8NArchive3N7z10CInArchive12ReadPackInfoERyR13CRecordVectorIyERS3_IbERS3_IjE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z10CInArchive14ReadUnpackInfoEPK13CObjectVectorI7CBufferIhEERS2_INS0_7CFolderEE # -- Begin function _ZN8NArchive3N7z10CInArchive14ReadUnpackInfoEPK13CObjectVectorI7CBufferIhEERS2_INS0_7CFolderEE
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive14ReadUnpackInfoEPK13CObjectVectorI7CBufferIhEERS2_INS0_7CFolderEE,@function
_ZN8NArchive3N7z10CInArchive14ReadUnpackInfoEPK13CObjectVectorI7CBufferIhEERS2_INS0_7CFolderEE: # @_ZN8NArchive3N7z10CInArchive14ReadUnpackInfoEPK13CObjectVectorI7CBufferIhEERS2_INS0_7CFolderEE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
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
	move	$fp, $a0
	ld.d	$a0, $a0, 40
	move	$s0, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 11
	beq	$a0, $s3, .LBB24_4
	.p2align	4, , 16
.LBB24_1:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB24_103
# %bb.2:                                #   in Loop: Header=BB24_1 Depth=1
	ld.d	$s1, $fp, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 8
	ld.d	$a1, $s1, 16
	sub.d	$a2, $a2, $a1
	bltu	$a2, $a0, .LBB24_103
# %bb.3:                                #   in Loop: Header=BB24_1 Depth=1
	add.d	$a0, $a1, $a0
	st.d	$a0, $s1, 16
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB24_1
.LBB24_4:                               # %_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	srli.d	$a0, $a0, 31
	bnez	$a0, .LBB24_103
# %bb.5:                                # %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit
	st.b	$zero, $sp, 56
.Ltmp31:
	addi.d	$a0, $sp, 48
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE)
	jirl	$ra, $ra, 0
.Ltmp32:
# %bb.6:
.Ltmp33:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp34:
# %bb.7:
.Ltmp35:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	move	$a0, $s0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.8:                                # %.preheader74
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIjE)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIjE)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB24_16
# %bb.9:                                # %.lr.ph
	ori	$s8, $zero, 8
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$s1, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE+16)
	addi.d	$s3, $a0, %pc_lo12(_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE+16)
	ori	$s2, $zero, 4
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s4, $a0, 16
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$s7, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB24_10:                              # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 88
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	st.d	$s8, $sp, 104
	st.d	$s1, $sp, 80
	addi.d	$a0, $sp, 120
	vst	$vr0, $a0, 0
	st.d	$s8, $sp, 136
	st.d	$s3, $sp, 112
	addi.d	$a0, $sp, 152
	vst	$vr0, $a0, 0
	st.d	$s2, $sp, 168
	st.d	$s4, $sp, 144
	addi.d	$a0, $sp, 184
	vst	$vr0, $a0, 0
	st.d	$s8, $sp, 200
	st.d	$s7, $sp, 176
	st.b	$zero, $sp, 212
.Ltmp38:
	ori	$a0, $zero, 136
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp39:
# %bb.11:                               # %.noexc
                                        #   in Loop: Header=BB24_10 Depth=1
.Ltmp40:
	move	$s6, $a0
	addi.d	$a1, $sp, 80
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z7CFolderC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp41:
# %bb.12:                               #   in Loop: Header=BB24_10 Depth=1
.Ltmp43:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.13:                               #   in Loop: Header=BB24_10 Depth=1
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 12
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 80
.Ltmp46:
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp47:
# %bb.14:                               #   in Loop: Header=BB24_10 Depth=1
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, -8
.Ltmp49:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive17GetNextFolderItemERNS0_7CFolderE)
	jirl	$ra, $ra, 0
.Ltmp50:
# %bb.15:                               #   in Loop: Header=BB24_10 Depth=1
	addi.w	$s5, $s5, -1
	bnez	$s5, .LBB24_10
.LBB24_16:                              # %._crit_edge
	ld.bu	$a0, $sp, 56
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB24_20
# %bb.17:
	ld.d	$s1, $sp, 48
	addi.d	$a0, $s1, 8
.Ltmp52:
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
.Ltmp53:
# %bb.18:                               # %.noexc.i
	ld.w	$a0, $s1, 20
	beqz	$a0, .LBB24_20
# %bb.19:
	ld.d	$a1, $s1, 24
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $s1, 40
.LBB24_20:                              # %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 12
	beq	$a0, $s1, .LBB24_24
	.p2align	4, , 16
.LBB24_21:                              # %.lr.ph.i52
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB24_103
# %bb.22:                               #   in Loop: Header=BB24_21 Depth=1
	ld.d	$s3, $fp, 40
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 8
	ld.d	$a1, $s3, 16
	sub.d	$a2, $a2, $a1
	bltu	$a2, $a0, .LBB24_103
# %bb.23:                               #   in Loop: Header=BB24_21 Depth=1
	add.d	$a0, $a1, $a0
	st.d	$a0, $s3, 16
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB24_21
.LBB24_24:                              # %_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit53
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB24_65
# %bb.25:                               # %.lr.ph83
	move	$s5, $zero
	ori	$s6, $zero, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	sltu	$a0, $s6, $a2
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $a2, $a0
	or	$s8, $a0, $a1
	ori	$s2, $zero, 8
	b	.LBB24_28
	.p2align	4, , 16
.LBB24_26:                              # %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit.thread
                                        #   in Loop: Header=BB24_28 Depth=1
	addi.d	$a0, $s7, 96
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.LBB24_27:                              # %._crit_edge81
                                        #   in Loop: Header=BB24_28 Depth=1
	addi.w	$s5, $s5, 1
	beq	$s5, $s8, .LBB24_65
.LBB24_28:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_32 Depth 2
                                        #     Child Loop BB24_35 Depth 2
                                        #     Child Loop BB24_37 Depth 2
	ld.d	$a0, $s0, 16
	slli.d	$a1, $s5, 3
	ldx.d	$s7, $a0, $a1
	ld.w	$a0, $s7, 12
	blez	$a0, .LBB24_26
# %bb.29:                               # %.lr.ph.i55
                                        #   in Loop: Header=BB24_28 Depth=1
	ld.d	$a1, $s7, 16
	bgeu	$a0, $s2, .LBB24_31
# %bb.30:                               #   in Loop: Header=BB24_28 Depth=1
	move	$a2, $zero
	move	$s3, $zero
	b	.LBB24_34
	.p2align	4, , 16
.LBB24_31:                              # %vector.ph
                                        #   in Loop: Header=BB24_28 Depth=1
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 32
	move	$a4, $a2
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB24_32:                              # %vector.body
                                        #   Parent Loop BB24_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a3, -32
	ld.d	$a6, $a3, -24
	ld.d	$a7, $a3, -16
	ld.d	$t0, $a3, -8
	ld.d	$t1, $a3, 0
	ld.d	$t2, $a3, 8
	ld.d	$t3, $a3, 16
	ld.d	$t4, $a3, 24
	ld.w	$a5, $a5, 36
	ld.w	$a6, $a6, 36
	ld.w	$a7, $a7, 36
	ld.w	$t0, $t0, 36
	vinsgr2vr.w	$vr2, $a5, 0
	vinsgr2vr.w	$vr2, $a6, 1
	vinsgr2vr.w	$vr2, $a7, 2
	vinsgr2vr.w	$vr2, $t0, 3
	ld.w	$a5, $t1, 36
	ld.w	$a6, $t2, 36
	ld.w	$a7, $t3, 36
	ld.w	$t0, $t4, 36
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr3, $a7, 2
	vinsgr2vr.w	$vr3, $t0, 3
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB24_32
# %bb.33:                               # %middle.block
                                        #   in Loop: Header=BB24_28 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s3, $vr0, 0
	beq	$a2, $a0, .LBB24_36
.LBB24_34:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB24_28 Depth=1
	sub.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $a1, 3
	.p2align	4, , 16
.LBB24_35:                              # %scalar.ph
                                        #   Parent Loop BB24_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.w	$a2, $a2, 36
	add.w	$s3, $a2, $s3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB24_35
.LBB24_36:                              # %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit
                                        #   in Loop: Header=BB24_28 Depth=1
	addi.d	$s4, $s7, 96
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB24_27
	.p2align	4, , 16
.LBB24_37:                              #   Parent Loop BB24_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $fp, 40
	ld.d	$a3, $a2, 16
	ld.d	$a5, $a2, 8
	bgeu	$a3, $a5, .LBB24_103
# %bb.38:                               #   in Loop: Header=BB24_37 Depth=2
	ld.d	$a4, $a2, 0
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, 16
	ldx.b	$a6, $a4, $a3
	andi	$a0, $a6, 255
	bltz	$a6, .LBB24_40
# %bb.39:                               #   in Loop: Header=BB24_37 Depth=2
	move	$a3, $zero
	move	$a1, $zero
	ori	$a2, $zero, 383
	b	.LBB24_61
	.p2align	4, , 16
.LBB24_40:                              #   in Loop: Header=BB24_37 Depth=2
	nor	$a6, $a3, $zero
	add.d	$a5, $a5, $a6
	beqz	$a5, .LBB24_103
# %bb.41:                               #   in Loop: Header=BB24_37 Depth=2
	addi.d	$a7, $a3, 2
	st.d	$a7, $a2, 16
	ldx.bu	$a1, $a4, $a1
	andi	$a6, $a0, 64
	bnez	$a6, .LBB24_43
# %bb.42:                               #   in Loop: Header=BB24_37 Depth=2
	ori	$a2, $zero, 319
	ori	$a3, $zero, 8
	b	.LBB24_61
.LBB24_43:                              #   in Loop: Header=BB24_37 Depth=2
	beq	$a5, $s6, .LBB24_103
# %bb.44:                               #   in Loop: Header=BB24_37 Depth=2
	addi.d	$a6, $a3, 3
	st.d	$a6, $a2, 16
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 8
	andi	$t0, $a0, 32
	or	$a1, $a7, $a1
	bnez	$t0, .LBB24_46
# %bb.45:                               #   in Loop: Header=BB24_37 Depth=2
	ori	$a2, $zero, 287
	ori	$a3, $zero, 16
	b	.LBB24_61
.LBB24_46:                              #   in Loop: Header=BB24_37 Depth=2
	ori	$a7, $zero, 2
	beq	$a5, $a7, .LBB24_103
# %bb.47:                               #   in Loop: Header=BB24_37 Depth=2
	addi.d	$a7, $a3, 4
	st.d	$a7, $a2, 16
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 16
	andi	$t0, $a0, 16
	or	$a1, $a6, $a1
	bnez	$t0, .LBB24_49
# %bb.48:                               #   in Loop: Header=BB24_37 Depth=2
	ori	$a2, $zero, 271
	ori	$a3, $zero, 24
	b	.LBB24_61
.LBB24_49:                              #   in Loop: Header=BB24_37 Depth=2
	ori	$a6, $zero, 3
	beq	$a5, $a6, .LBB24_103
# %bb.50:                               #   in Loop: Header=BB24_37 Depth=2
	addi.d	$a6, $a3, 5
	st.d	$a6, $a2, 16
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 24
	andi	$t0, $a0, 8
	or	$a1, $a7, $a1
	bnez	$t0, .LBB24_52
# %bb.51:                               #   in Loop: Header=BB24_37 Depth=2
	ori	$a2, $zero, 263
	ori	$a3, $zero, 32
	b	.LBB24_61
.LBB24_52:                              #   in Loop: Header=BB24_37 Depth=2
	ori	$a7, $zero, 4
	beq	$a5, $a7, .LBB24_103
# %bb.53:                               #   in Loop: Header=BB24_37 Depth=2
	addi.d	$a7, $a3, 6
	st.d	$a7, $a2, 16
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 32
	andi	$t0, $a0, 4
	or	$a1, $a6, $a1
	bnez	$t0, .LBB24_55
# %bb.54:                               #   in Loop: Header=BB24_37 Depth=2
	ori	$a2, $zero, 259
	ori	$a3, $zero, 40
	b	.LBB24_61
.LBB24_55:                              #   in Loop: Header=BB24_37 Depth=2
	ori	$a6, $zero, 5
	beq	$a5, $a6, .LBB24_103
# %bb.56:                               #   in Loop: Header=BB24_37 Depth=2
	addi.d	$a6, $a3, 7
	st.d	$a6, $a2, 16
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 40
	andi	$t0, $a0, 2
	or	$a1, $a7, $a1
	bnez	$t0, .LBB24_58
# %bb.57:                               #   in Loop: Header=BB24_37 Depth=2
	ori	$a2, $zero, 257
	ori	$a3, $zero, 48
	b	.LBB24_61
.LBB24_58:                              #   in Loop: Header=BB24_37 Depth=2
	ori	$a7, $zero, 6
	beq	$a5, $a7, .LBB24_103
# %bb.59:                               #   in Loop: Header=BB24_37 Depth=2
	addi.d	$a7, $a3, 8
	st.d	$a7, $a2, 16
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 48
	andi	$t0, $a0, 1
	or	$a1, $a6, $a1
	bnez	$t0, .LBB24_63
# %bb.60:                               #   in Loop: Header=BB24_37 Depth=2
	ori	$a2, $zero, 256
	ori	$a3, $zero, 56
	.p2align	4, , 16
.LBB24_61:                              #   in Loop: Header=BB24_37 Depth=2
	and	$a0, $a2, $a0
	sll.d	$a0, $a0, $a3
	add.d	$s1, $a0, $a1
.LBB24_62:                              # %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit
                                        #   in Loop: Header=BB24_37 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 108
	ld.d	$a1, $s7, 112
	slli.d	$a2, $a0, 3
	stx.d	$s1, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.w	$s3, $s3, -1
	st.w	$a0, $s7, 108
	bnez	$s3, .LBB24_37
	b	.LBB24_27
.LBB24_63:                              #   in Loop: Header=BB24_37 Depth=2
	ori	$a0, $zero, 7
	beq	$a5, $a0, .LBB24_103
# %bb.64:                               # %.loopexit.loopexit.i
                                        #   in Loop: Header=BB24_37 Depth=2
	addi.d	$a0, $a3, 9
	st.d	$a0, $a2, 16
	ldx.b	$a0, $a4, $a7
	slli.d	$a0, $a0, 56
	or	$s1, $a0, $a1
	b	.LBB24_62
.LBB24_65:                              # %.preheader73
	ld.d	$a0, $fp, 40
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a0, 8
	bgeu	$a2, $a3, .LBB24_103
# %bb.66:                               # %.lr.ph88
	addi.d	$s2, $a0, 16
	addi.d	$s3, $a0, 8
	ori	$s4, $zero, 1
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	sltu	$a1, $s4, $a5
	masknez	$a4, $s4, $a1
	maskeqz	$a1, $a5, $a1
	or	$s5, $a1, $a4
	ori	$s6, $zero, 10
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIbE+16)
	addi.d	$s7, $a1, %pc_lo12(_ZTV13CRecordVectorIbE+16)
	ori	$s8, $zero, 4
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s1, $a1, 16
	b	.LBB24_69
	.p2align	4, , 16
.LBB24_67:                              # %._crit_edge86
                                        #   in Loop: Header=BB24_69 Depth=1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB24_68:                              #   in Loop: Header=BB24_69 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a0, 8
	addi.d	$s2, $a0, 16
	addi.d	$s3, $a0, 8
	bgeu	$a2, $a3, .LBB24_103
.LBB24_69:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_101 Depth 2
	ld.d	$a4, $a0, 0
	addi.d	$a6, $a2, 1
	st.d	$a6, $a0, 16
	ldx.b	$a5, $a4, $a2
	andi	$a1, $a5, 255
	bltz	$a5, .LBB24_71
# %bb.70:                               #   in Loop: Header=BB24_69 Depth=1
	move	$a4, $zero
	move	$a3, $zero
	ori	$a2, $zero, 383
	b	.LBB24_92
	.p2align	4, , 16
.LBB24_71:                              #   in Loop: Header=BB24_69 Depth=1
	nor	$a5, $a2, $zero
	add.d	$a5, $a3, $a5
	beqz	$a5, .LBB24_103
# %bb.72:                               #   in Loop: Header=BB24_69 Depth=1
	addi.d	$a7, $a2, 2
	st.d	$a7, $s2, 0
	ldx.bu	$a3, $a4, $a6
	andi	$a6, $a1, 64
	bnez	$a6, .LBB24_74
# %bb.73:                               #   in Loop: Header=BB24_69 Depth=1
	ori	$a2, $zero, 319
	ori	$a4, $zero, 8
	b	.LBB24_92
.LBB24_74:                              #   in Loop: Header=BB24_69 Depth=1
	beq	$a5, $s4, .LBB24_103
# %bb.75:                               #   in Loop: Header=BB24_69 Depth=1
	addi.d	$a6, $a2, 3
	st.d	$a6, $s2, 0
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 8
	andi	$t0, $a1, 32
	or	$a3, $a7, $a3
	bnez	$t0, .LBB24_77
# %bb.76:                               #   in Loop: Header=BB24_69 Depth=1
	ori	$a2, $zero, 287
	ori	$a4, $zero, 16
	b	.LBB24_92
.LBB24_77:                              #   in Loop: Header=BB24_69 Depth=1
	ori	$a7, $zero, 2
	beq	$a5, $a7, .LBB24_103
# %bb.78:                               #   in Loop: Header=BB24_69 Depth=1
	addi.d	$a7, $a2, 4
	st.d	$a7, $s2, 0
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 16
	andi	$t0, $a1, 16
	or	$a3, $a6, $a3
	bnez	$t0, .LBB24_80
# %bb.79:                               #   in Loop: Header=BB24_69 Depth=1
	ori	$a2, $zero, 271
	ori	$a4, $zero, 24
	b	.LBB24_92
.LBB24_80:                              #   in Loop: Header=BB24_69 Depth=1
	ori	$a6, $zero, 3
	beq	$a5, $a6, .LBB24_103
# %bb.81:                               #   in Loop: Header=BB24_69 Depth=1
	addi.d	$a6, $a2, 5
	st.d	$a6, $s2, 0
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 24
	andi	$t0, $a1, 8
	or	$a3, $a7, $a3
	bnez	$t0, .LBB24_83
# %bb.82:                               #   in Loop: Header=BB24_69 Depth=1
	ori	$a2, $zero, 263
	ori	$a4, $zero, 32
	b	.LBB24_92
.LBB24_83:                              #   in Loop: Header=BB24_69 Depth=1
	beq	$a5, $s8, .LBB24_103
# %bb.84:                               #   in Loop: Header=BB24_69 Depth=1
	addi.d	$a7, $a2, 6
	st.d	$a7, $s2, 0
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 32
	andi	$t0, $a1, 4
	or	$a3, $a6, $a3
	bnez	$t0, .LBB24_86
# %bb.85:                               #   in Loop: Header=BB24_69 Depth=1
	ori	$a2, $zero, 259
	ori	$a4, $zero, 40
	b	.LBB24_92
.LBB24_86:                              #   in Loop: Header=BB24_69 Depth=1
	ori	$a6, $zero, 5
	beq	$a5, $a6, .LBB24_103
# %bb.87:                               #   in Loop: Header=BB24_69 Depth=1
	addi.d	$a6, $a2, 7
	st.d	$a6, $s2, 0
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 40
	andi	$t0, $a1, 2
	or	$a3, $a7, $a3
	bnez	$t0, .LBB24_89
# %bb.88:                               #   in Loop: Header=BB24_69 Depth=1
	ori	$a2, $zero, 257
	ori	$a4, $zero, 48
	b	.LBB24_92
.LBB24_89:                              #   in Loop: Header=BB24_69 Depth=1
	ori	$a7, $zero, 6
	beq	$a5, $a7, .LBB24_103
# %bb.90:                               #   in Loop: Header=BB24_69 Depth=1
	addi.d	$a7, $a2, 8
	st.d	$a7, $s2, 0
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 48
	andi	$t0, $a1, 1
	or	$a3, $a6, $a3
	bnez	$t0, .LBB24_96
# %bb.91:                               #   in Loop: Header=BB24_69 Depth=1
	ori	$a2, $zero, 256
	ori	$a4, $zero, 56
	.p2align	4, , 16
.LBB24_92:                              #   in Loop: Header=BB24_69 Depth=1
	and	$a1, $a2, $a1
	sll.d	$a1, $a1, $a4
	add.d	$a1, $a1, $a3
	beq	$a1, $s6, .LBB24_98
.LBB24_93:                              # %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit71
                                        #   in Loop: Header=BB24_69 Depth=1
	beqz	$a1, .LBB24_102
# %bb.94:                               #   in Loop: Header=BB24_69 Depth=1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 0
	ld.d	$a1, $s2, 0
	sub.d	$a2, $a2, $a1
	bltu	$a2, $a0, .LBB24_103
# %bb.95:                               # %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit
                                        #   in Loop: Header=BB24_69 Depth=1
	add.d	$a0, $a1, $a0
	st.d	$a0, $s2, 0
	b	.LBB24_68
.LBB24_96:                              #   in Loop: Header=BB24_69 Depth=1
	ori	$a1, $zero, 7
	beq	$a5, $a1, .LBB24_103
# %bb.97:                               # %.loopexit.loopexit.i66
                                        #   in Loop: Header=BB24_69 Depth=1
	addi.d	$a1, $a2, 9
	st.d	$a1, $s2, 0
	ldx.b	$a1, $a4, $a7
	slli.d	$a1, $a1, 56
	or	$a1, $a1, $a3
	bne	$a1, $s6, .LBB24_93
	.p2align	4, , 16
.LBB24_98:                              #   in Loop: Header=BB24_69 Depth=1
	addi.d	$a0, $sp, 88
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	st.d	$s4, $sp, 104
	st.d	$s7, $sp, 80
	addi.d	$a0, $sp, 56
	vst	$vr0, $a0, 0
	st.d	$s8, $sp, 72
	st.d	$s1, $sp, 48
.Ltmp55:
	addi.d	$a2, $sp, 80
	addi.d	$a3, $sp, 48
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE)
	jirl	$ra, $ra, 0
.Ltmp56:
# %bb.99:                               # %.preheader
                                        #   in Loop: Header=BB24_69 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB24_67
# %bb.100:                              # %.lr.ph85
                                        #   in Loop: Header=BB24_69 Depth=1
	ld.d	$a0, $s0, 16
	ld.d	$a1, $sp, 96
	ld.d	$a2, $sp, 64
	move	$a3, $zero
	.p2align	4, , 16
.LBB24_101:                             #   Parent Loop BB24_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	ldx.b	$a5, $a1, $a3
	st.b	$a5, $a4, 132
	slli.d	$a5, $a3, 2
	ldx.w	$a5, $a2, $a5
	addi.w	$a3, $a3, 1
	st.w	$a5, $a4, 128
	bne	$s5, $a3, .LBB24_101
	b	.LBB24_67
.LBB24_102:
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
.LBB24_103:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.LBB24_104:
.Ltmp54:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_105:
.Ltmp37:
	b	.LBB24_109
.LBB24_106:
.Ltmp42:
	move	$fp, $a0
	ori	$a1, $zero, 136
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB24_112
.LBB24_107:
.Ltmp48:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_108:
.Ltmp51:
.LBB24_109:
	move	$fp, $a0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z13CStreamSwitchD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB24_110:
.Ltmp57:
	move	$fp, $a0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB24_111:
.Ltmp45:
	move	$fp, $a0
.LBB24_112:                             # %.body
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z7CFolderD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z13CStreamSwitchD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN8NArchive3N7z10CInArchive14ReadUnpackInfoEPK13CObjectVectorI7CBufferIhEERS2_INS0_7CFolderEE, .Lfunc_end24-_ZN8NArchive3N7z10CInArchive14ReadUnpackInfoEPK13CObjectVectorI7CBufferIhEERS2_INS0_7CFolderEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table24:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp31-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp36-.Ltmp31                #   Call between .Ltmp31 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin2          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin2          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin2          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp46-.Ltmp44                #   Call between .Ltmp44 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp47-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp49-.Ltmp47                #   Call between .Ltmp47 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin2          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin2          #     jumps to .Ltmp54
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp53-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp55-.Ltmp53                #   Call between .Ltmp53 and .Ltmp55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin2          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Lfunc_end24-.Ltmp56           #   Call between .Ltmp56 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive3N7z7CFolderD2Ev,"axG",@progbits,_ZN8NArchive3N7z7CFolderD2Ev,comdat
	.weak	_ZN8NArchive3N7z7CFolderD2Ev    # -- Begin function _ZN8NArchive3N7z7CFolderD2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z7CFolderD2Ev,@function
_ZN8NArchive3N7z7CFolderD2Ev:           # @_ZN8NArchive3N7z7CFolderD2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	addi.d	$a0, $a0, 96
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp58:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp59:
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB25_2:
.Ltmp60:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN8NArchive3N7z7CFolderD2Ev, .Lfunc_end25-_ZN8NArchive3N7z7CFolderD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z7CFolderD2Ev,"aG",@progbits,_ZN8NArchive3N7z7CFolderD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table25:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp58-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin3          #     jumps to .Ltmp60
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp59-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end25-.Ltmp59           #   Call between .Ltmp59 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive3N7z13CStreamSwitchD2Ev,"axG",@progbits,_ZN8NArchive3N7z13CStreamSwitchD2Ev,comdat
	.weak	_ZN8NArchive3N7z13CStreamSwitchD2Ev # -- Begin function _ZN8NArchive3N7z13CStreamSwitchD2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z13CStreamSwitchD2Ev,@function
_ZN8NArchive3N7z13CStreamSwitchD2Ev:    # @_ZN8NArchive3N7z13CStreamSwitchD2Ev
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
	ld.bu	$a0, $a0, 8
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB26_5
# %bb.1:
	ld.d	$s0, $fp, 0
	addi.d	$a0, $s0, 8
.Ltmp61:
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
.Ltmp62:
# %bb.2:                                # %.noexc
	ld.w	$a0, $s0, 20
	beqz	$a0, .LBB26_4
# %bb.3:
	ld.d	$a1, $s0, 24
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $s0, 40
.LBB26_4:                               # %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i
	st.b	$zero, $fp, 8
.LBB26_5:                               # %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB26_6:
.Ltmp63:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZN8NArchive3N7z13CStreamSwitchD2Ev, .Lfunc_end26-_ZN8NArchive3N7z13CStreamSwitchD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z13CStreamSwitchD2Ev,"aG",@progbits,_ZN8NArchive3N7z13CStreamSwitchD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table26:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp61-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin4          #     jumps to .Ltmp63
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp62-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Lfunc_end26-.Ltmp62           #   Call between .Ltmp62 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
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
	.globl	_ZN8NArchive3N7z10CInArchive18ReadSubStreamsInfoERK13CObjectVectorINS0_7CFolderEER13CRecordVectorIjERS7_IyERS7_IbES9_ # -- Begin function _ZN8NArchive3N7z10CInArchive18ReadSubStreamsInfoERK13CObjectVectorINS0_7CFolderEER13CRecordVectorIjERS7_IyERS7_IbES9_
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive18ReadSubStreamsInfoERK13CObjectVectorINS0_7CFolderEER13CRecordVectorIjERS7_IyERS7_IbES9_,@function
_ZN8NArchive3N7z10CInArchive18ReadSubStreamsInfoERK13CObjectVectorINS0_7CFolderEER13CRecordVectorIjERS7_IyERS7_IbES9_: # @_ZN8NArchive3N7z10CInArchive18ReadSubStreamsInfoERK13CObjectVectorINS0_7CFolderEER13CRecordVectorIjERS7_IyERS7_IbES9_
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
	move	$fp, $a5
	move	$s0, $a4
	move	$s4, $a3
	move	$s1, $a2
	move	$s3, $a1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 12
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 13
	ori	$s7, $zero, 1
	ori	$s8, $zero, 2
	.p2align	4, , 16
.LBB27_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_8 Depth 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB27_6
# %bb.2:                                #   in Loop: Header=BB27_1 Depth=1
	move	$s5, $a0
	addi.d	$a0, $a0, -9
	bltu	$a0, $s8, .LBB27_37
# %bb.3:                                #   in Loop: Header=BB27_1 Depth=1
	beqz	$s5, .LBB27_37
# %bb.4:                                #   in Loop: Header=BB27_1 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $a0, 40
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 8
	ld.d	$a1, $s5, 16
	sub.d	$a2, $a2, $a1
	bltu	$a2, $a0, .LBB27_36
# %bb.5:                                # %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit
                                        #   in Loop: Header=BB27_1 Depth=1
	add.d	$a0, $a1, $a0
	st.d	$a0, $s5, 16
	b	.LBB27_1
	.p2align	4, , 16
.LBB27_6:                               # %.preheader132
                                        #   in Loop: Header=BB27_1 Depth=1
	ld.w	$a0, $s3, 12
	blt	$a0, $s7, .LBB27_1
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB27_1 Depth=1
	move	$s5, $zero
	.p2align	4, , 16
.LBB27_8:                               #   Parent Loop BB27_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 40
	ld.d	$a3, $a2, 16
	ld.d	$a5, $a2, 8
	bgeu	$a3, $a5, .LBB27_36
# %bb.9:                                #   in Loop: Header=BB27_8 Depth=2
	ld.d	$a4, $a2, 0
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, 16
	ldx.b	$a6, $a4, $a3
	andi	$a0, $a6, 255
	bltz	$a6, .LBB27_11
# %bb.10:                               #   in Loop: Header=BB27_8 Depth=2
	move	$a3, $zero
	move	$a1, $zero
	ori	$a2, $zero, 383
	b	.LBB27_32
	.p2align	4, , 16
.LBB27_11:                              #   in Loop: Header=BB27_8 Depth=2
	nor	$a6, $a3, $zero
	add.d	$a5, $a5, $a6
	beqz	$a5, .LBB27_36
# %bb.12:                               #   in Loop: Header=BB27_8 Depth=2
	addi.d	$a7, $a3, 2
	st.d	$a7, $a2, 16
	ldx.bu	$a1, $a4, $a1
	andi	$a6, $a0, 64
	bnez	$a6, .LBB27_14
# %bb.13:                               #   in Loop: Header=BB27_8 Depth=2
	ori	$a2, $zero, 319
	ori	$a3, $zero, 8
	b	.LBB27_32
.LBB27_14:                              #   in Loop: Header=BB27_8 Depth=2
	beq	$a5, $s7, .LBB27_36
# %bb.15:                               #   in Loop: Header=BB27_8 Depth=2
	addi.d	$a6, $a3, 3
	st.d	$a6, $a2, 16
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 8
	andi	$t0, $a0, 32
	or	$a1, $a7, $a1
	bnez	$t0, .LBB27_17
# %bb.16:                               #   in Loop: Header=BB27_8 Depth=2
	ori	$a2, $zero, 287
	ori	$a3, $zero, 16
	b	.LBB27_32
.LBB27_17:                              #   in Loop: Header=BB27_8 Depth=2
	beq	$a5, $s8, .LBB27_36
# %bb.18:                               #   in Loop: Header=BB27_8 Depth=2
	addi.d	$a7, $a3, 4
	st.d	$a7, $a2, 16
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 16
	andi	$t0, $a0, 16
	or	$a1, $a6, $a1
	bnez	$t0, .LBB27_20
# %bb.19:                               #   in Loop: Header=BB27_8 Depth=2
	ori	$a2, $zero, 271
	ori	$a3, $zero, 24
	b	.LBB27_32
.LBB27_20:                              #   in Loop: Header=BB27_8 Depth=2
	ori	$a6, $zero, 3
	beq	$a5, $a6, .LBB27_36
# %bb.21:                               #   in Loop: Header=BB27_8 Depth=2
	addi.d	$a6, $a3, 5
	st.d	$a6, $a2, 16
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 24
	andi	$t0, $a0, 8
	or	$a1, $a7, $a1
	bnez	$t0, .LBB27_23
# %bb.22:                               #   in Loop: Header=BB27_8 Depth=2
	ori	$a2, $zero, 263
	ori	$a3, $zero, 32
	b	.LBB27_32
.LBB27_23:                              #   in Loop: Header=BB27_8 Depth=2
	ori	$a7, $zero, 4
	beq	$a5, $a7, .LBB27_36
# %bb.24:                               #   in Loop: Header=BB27_8 Depth=2
	addi.d	$a7, $a3, 6
	st.d	$a7, $a2, 16
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 32
	andi	$t0, $a0, 4
	or	$a1, $a6, $a1
	bnez	$t0, .LBB27_26
# %bb.25:                               #   in Loop: Header=BB27_8 Depth=2
	ori	$a2, $zero, 259
	ori	$a3, $zero, 40
	b	.LBB27_32
.LBB27_26:                              #   in Loop: Header=BB27_8 Depth=2
	ori	$a6, $zero, 5
	beq	$a5, $a6, .LBB27_36
# %bb.27:                               #   in Loop: Header=BB27_8 Depth=2
	addi.d	$a6, $a3, 7
	st.d	$a6, $a2, 16
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 40
	andi	$t0, $a0, 2
	or	$a1, $a7, $a1
	bnez	$t0, .LBB27_29
# %bb.28:                               #   in Loop: Header=BB27_8 Depth=2
	ori	$a2, $zero, 257
	ori	$a3, $zero, 48
	b	.LBB27_32
.LBB27_29:                              #   in Loop: Header=BB27_8 Depth=2
	ori	$a7, $zero, 6
	beq	$a5, $a7, .LBB27_36
# %bb.30:                               #   in Loop: Header=BB27_8 Depth=2
	addi.d	$a7, $a3, 8
	st.d	$a7, $a2, 16
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 48
	andi	$t0, $a0, 1
	or	$a1, $a6, $a1
	bnez	$t0, .LBB27_34
# %bb.31:                               #   in Loop: Header=BB27_8 Depth=2
	ori	$a2, $zero, 256
	ori	$a3, $zero, 56
	.p2align	4, , 16
.LBB27_32:                              #   in Loop: Header=BB27_8 Depth=2
	and	$a0, $a2, $a0
	sll.d	$a0, $a0, $a3
	add.d	$s2, $a0, $a1
	srli.d	$a0, $s2, 31
	bnez	$a0, .LBB27_36
.LBB27_33:                              # %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit
                                        #   in Loop: Header=BB27_8 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 12
	ld.d	$a1, $s1, 16
	slli.d	$a0, $a0, 2
	stx.w	$s2, $a1, $a0
	ld.w	$a0, $s1, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 12
	ld.w	$a0, $s3, 12
	addi.w	$s5, $s5, 1
	blt	$s5, $a0, .LBB27_8
	b	.LBB27_1
.LBB27_34:                              #   in Loop: Header=BB27_8 Depth=2
	ori	$a0, $zero, 7
	beq	$a5, $a0, .LBB27_36
# %bb.35:                               # %.loopexit.loopexit.i
                                        #   in Loop: Header=BB27_8 Depth=2
	addi.d	$a0, $a3, 9
	st.d	$a0, $a2, 16
	ldx.b	$a0, $a4, $a7
	slli.d	$a0, $a0, 56
	or	$s2, $a0, $a1
	srli.d	$a0, $s2, 31
	beqz	$a0, .LBB27_33
.LBB27_36:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.LBB27_37:
	ld.w	$a0, $s1, 12
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	bnez	$a0, .LBB27_41
# %bb.38:
	ld.w	$a1, $s3, 12
	ori	$s3, $zero, 1
	blt	$a1, $s3, .LBB27_41
# %bb.39:                               # %.lr.ph152.preheader
	move	$s6, $zero
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB27_40:                              # %.lr.ph152
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 12
	ld.d	$a1, $s1, 16
	slli.d	$a0, $a0, 2
	stx.w	$s3, $a1, $a0
	ld.w	$a0, $s1, 12
	addi.w	$a0, $a0, 1
	st.w	$a0, $s1, 12
	ld.w	$a1, $s2, 12
	addi.w	$s6, $s6, 1
	blt	$s6, $a1, .LBB27_40
.LBB27_41:                              # %.loopexit131
	ori	$s2, $zero, 1
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	blt	$a0, $s2, .LBB27_88
# %bb.42:                               # %.lr.ph160
	move	$s7, $zero
	b	.LBB27_46
	.p2align	4, , 16
.LBB27_43:                              #   in Loop: Header=BB27_46 Depth=1
	move	$a0, $zero
.LBB27_44:                              # %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit
                                        #   in Loop: Header=BB27_46 Depth=1
	sub.d	$s2, $a0, $s8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 12
	ld.d	$a2, $s4, 16
	addi.d	$a0, $a1, 1
	st.w	$a0, $s4, 12
	ld.w	$a0, $s1, 12
	slli.d	$a1, $a1, 3
	stx.d	$s2, $a2, $a1
	ori	$s2, $zero, 1
.LBB27_45:                              #   in Loop: Header=BB27_46 Depth=1
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB27_88
.LBB27_46:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_50 Depth 2
                                        #     Child Loop BB27_83 Depth 2
                                        #       Child Loop BB27_84 Depth 3
	ld.d	$a1, $s1, 16
	slli.d	$a2, $s7, 2
	ldx.w	$a1, $a1, $a2
	beqz	$a1, .LBB27_45
# %bb.47:                               #   in Loop: Header=BB27_46 Depth=1
	move	$s8, $zero
	beq	$a1, $s2, .LBB27_78
# %bb.48:                               # %.lr.ph155
                                        #   in Loop: Header=BB27_46 Depth=1
	ori	$a0, $zero, 9
	bne	$s5, $a0, .LBB27_78
# %bb.49:                               # %.lr.ph155.split.us.preheader
                                        #   in Loop: Header=BB27_46 Depth=1
	addi.d	$s6, $a1, -1
	.p2align	4, , 16
.LBB27_50:                              # %.lr.ph155.split.us
                                        #   Parent Loop BB27_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 40
	ld.d	$a3, $a2, 16
	ld.d	$a5, $a2, 8
	bgeu	$a3, $a5, .LBB27_36
# %bb.51:                               #   in Loop: Header=BB27_50 Depth=2
	ld.d	$a4, $a2, 0
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, 16
	ldx.b	$a6, $a4, $a3
	addi.w	$a7, $zero, -1
	andi	$a0, $a6, 255
	bge	$a7, $a6, .LBB27_53
# %bb.52:                               #   in Loop: Header=BB27_50 Depth=2
	move	$a3, $zero
	move	$a1, $zero
	ori	$a2, $zero, 383
	b	.LBB27_74
	.p2align	4, , 16
.LBB27_53:                              #   in Loop: Header=BB27_50 Depth=2
	nor	$a6, $a3, $zero
	add.d	$a5, $a5, $a6
	beqz	$a5, .LBB27_36
# %bb.54:                               #   in Loop: Header=BB27_50 Depth=2
	addi.d	$a7, $a3, 2
	st.d	$a7, $a2, 16
	ldx.bu	$a1, $a4, $a1
	andi	$a6, $a0, 64
	bnez	$a6, .LBB27_56
# %bb.55:                               #   in Loop: Header=BB27_50 Depth=2
	ori	$a2, $zero, 319
	ori	$a3, $zero, 8
	b	.LBB27_74
.LBB27_56:                              #   in Loop: Header=BB27_50 Depth=2
	beq	$a5, $s2, .LBB27_36
# %bb.57:                               #   in Loop: Header=BB27_50 Depth=2
	addi.d	$a6, $a3, 3
	st.d	$a6, $a2, 16
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 8
	andi	$t0, $a0, 32
	or	$a1, $a7, $a1
	bnez	$t0, .LBB27_59
# %bb.58:                               #   in Loop: Header=BB27_50 Depth=2
	ori	$a2, $zero, 287
	ori	$a3, $zero, 16
	b	.LBB27_74
.LBB27_59:                              #   in Loop: Header=BB27_50 Depth=2
	ori	$a7, $zero, 2
	beq	$a5, $a7, .LBB27_36
# %bb.60:                               #   in Loop: Header=BB27_50 Depth=2
	addi.d	$a7, $a3, 4
	st.d	$a7, $a2, 16
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 16
	andi	$t0, $a0, 16
	or	$a1, $a6, $a1
	bnez	$t0, .LBB27_62
# %bb.61:                               #   in Loop: Header=BB27_50 Depth=2
	ori	$a2, $zero, 271
	ori	$a3, $zero, 24
	b	.LBB27_74
.LBB27_62:                              #   in Loop: Header=BB27_50 Depth=2
	ori	$a6, $zero, 3
	beq	$a5, $a6, .LBB27_36
# %bb.63:                               #   in Loop: Header=BB27_50 Depth=2
	addi.d	$a6, $a3, 5
	st.d	$a6, $a2, 16
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 24
	andi	$t0, $a0, 8
	or	$a1, $a7, $a1
	bnez	$t0, .LBB27_65
# %bb.64:                               #   in Loop: Header=BB27_50 Depth=2
	ori	$a2, $zero, 263
	ori	$a3, $zero, 32
	b	.LBB27_74
.LBB27_65:                              #   in Loop: Header=BB27_50 Depth=2
	ori	$a7, $zero, 4
	beq	$a5, $a7, .LBB27_36
# %bb.66:                               #   in Loop: Header=BB27_50 Depth=2
	addi.d	$a7, $a3, 6
	st.d	$a7, $a2, 16
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 32
	andi	$t0, $a0, 4
	or	$a1, $a6, $a1
	bnez	$t0, .LBB27_68
# %bb.67:                               #   in Loop: Header=BB27_50 Depth=2
	ori	$a2, $zero, 259
	ori	$a3, $zero, 40
	b	.LBB27_74
.LBB27_68:                              #   in Loop: Header=BB27_50 Depth=2
	ori	$a6, $zero, 5
	beq	$a5, $a6, .LBB27_36
# %bb.69:                               #   in Loop: Header=BB27_50 Depth=2
	addi.d	$a6, $a3, 7
	st.d	$a6, $a2, 16
	ldx.bu	$a7, $a4, $a7
	slli.d	$a7, $a7, 40
	andi	$t0, $a0, 2
	or	$a1, $a7, $a1
	bnez	$t0, .LBB27_71
# %bb.70:                               #   in Loop: Header=BB27_50 Depth=2
	ori	$a2, $zero, 257
	ori	$a3, $zero, 48
	b	.LBB27_74
.LBB27_71:                              #   in Loop: Header=BB27_50 Depth=2
	ori	$a7, $zero, 6
	beq	$a5, $a7, .LBB27_36
# %bb.72:                               #   in Loop: Header=BB27_50 Depth=2
	addi.d	$a7, $a3, 8
	st.d	$a7, $a2, 16
	ldx.bu	$a6, $a4, $a6
	slli.d	$a6, $a6, 48
	andi	$t0, $a0, 1
	or	$a1, $a6, $a1
	bnez	$t0, .LBB27_76
# %bb.73:                               #   in Loop: Header=BB27_50 Depth=2
	ori	$a2, $zero, 256
	ori	$a3, $zero, 56
	.p2align	4, , 16
.LBB27_74:                              #   in Loop: Header=BB27_50 Depth=2
	and	$a0, $a2, $a0
	sll.d	$a0, $a0, $a3
	add.d	$s3, $a0, $a1
.LBB27_75:                              # %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit125.us
                                        #   in Loop: Header=BB27_50 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 12
	ld.d	$a1, $s4, 16
	slli.d	$a2, $a0, 3
	stx.d	$s3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 12
	addi.w	$s6, $s6, -1
	add.d	$s8, $s3, $s8
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	bnez	$s6, .LBB27_50
	b	.LBB27_78
.LBB27_76:                              #   in Loop: Header=BB27_50 Depth=2
	ori	$a0, $zero, 7
	beq	$a5, $a0, .LBB27_36
# %bb.77:                               # %.loopexit.loopexit.i120.us
                                        #   in Loop: Header=BB27_50 Depth=2
	addi.d	$a0, $a3, 9
	st.d	$a0, $a2, 16
	ldx.b	$a0, $a4, $a7
	slli.d	$a0, $a0, 56
	or	$s3, $a0, $a1
	b	.LBB27_75
	.p2align	4, , 16
.LBB27_78:                              # %._crit_edge
                                        #   in Loop: Header=BB27_46 Depth=1
	ld.d	$a0, $s3, 16
	slli.d	$a1, $s7, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 108
	beqz	$a1, .LBB27_43
# %bb.79:                               # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i
                                        #   in Loop: Header=BB27_46 Depth=1
	blt	$a1, $s2, .LBB27_126
# %bb.80:                               # %.lr.ph.i
                                        #   in Loop: Header=BB27_46 Depth=1
	ld.w	$a2, $a0, 44
	addi.w	$a3, $a1, -1
	blt	$a2, $s2, .LBB27_87
# %bb.81:                               # %.lr.ph.i.us.i.preheader
                                        #   in Loop: Header=BB27_46 Depth=1
	ld.d	$a4, $a0, 48
	bstrpick.d	$a1, $a2, 31, 0
	addi.d	$a2, $a4, 4
	b	.LBB27_83
	.p2align	4, , 16
.LBB27_82:                              # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
                                        #   in Loop: Header=BB27_83 Depth=2
	addi.w	$a3, $a4, -1
	blez	$a4, .LBB27_126
.LBB27_83:                              # %.lr.ph.i.us.i
                                        #   Parent Loop BB27_46 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_84 Depth 3
	move	$a4, $a3
	move	$a3, $a2
	move	$a5, $a1
	.p2align	4, , 16
.LBB27_84:                              #   Parent Loop BB27_46 Depth=1
                                        #     Parent Loop BB27_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a3, 0
	beq	$a6, $a4, .LBB27_82
# %bb.85:                               #   in Loop: Header=BB27_84 Depth=3
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 8
	bnez	$a5, .LBB27_84
# %bb.86:                               #   in Loop: Header=BB27_46 Depth=1
	move	$a3, $a4
.LBB27_87:                              # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i
                                        #   in Loop: Header=BB27_46 Depth=1
	ld.d	$a0, $a0, 112
	slli.d	$a1, $a3, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB27_44
.LBB27_88:                              # %._crit_edge161
	ori	$a0, $zero, 9
	bne	$s5, $a0, .LBB27_90
# %bb.89:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.LBB27_90:
	ld.w	$a0, $s3, 12
	ori	$s7, $zero, 1
	blt	$a0, $s7, .LBB27_96
# %bb.91:                               # %.lr.ph166
	ld.d	$a1, $s1, 16
	ld.d	$a2, $s3, 16
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$s2, $zero
	b	.LBB27_94
	.p2align	4, , 16
.LBB27_92:                              #   in Loop: Header=BB27_94 Depth=1
	add.w	$s2, $a3, $s2
.LBB27_93:                              #   in Loop: Header=BB27_94 Depth=1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.w	$a4, $a3, $a4
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	beqz	$a0, .LBB27_97
.LBB27_94:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	bne	$a3, $s7, .LBB27_92
# %bb.95:                               #   in Loop: Header=BB27_94 Depth=1
	ld.d	$a4, $a2, 0
	ld.bu	$a4, $a4, 132
	beqz	$a4, .LBB27_92
	b	.LBB27_93
.LBB27_96:
	move	$s2, $zero
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
.LBB27_97:                              # %.preheader127
	ori	$s4, $zero, 10
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIbE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIbE+16)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	b	.LBB27_100
	.p2align	4, , 16
.LBB27_98:                              # %._crit_edge176
                                        #   in Loop: Header=BB27_100 Depth=1
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ori	$s4, $zero, 10
.LBB27_99:                              #   in Loop: Header=BB27_100 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.LBB27_100:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_109 Depth 2
                                        #       Child Loop BB27_115 Depth 3
	beq	$s5, $s4, .LBB27_104
# %bb.101:                              #   in Loop: Header=BB27_100 Depth=1
	beqz	$s5, .LBB27_118
# %bb.102:                              #   in Loop: Header=BB27_100 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $a0, 40
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 8
	ld.d	$a1, $s5, 16
	sub.d	$a2, $a2, $a1
	bltu	$a2, $a0, .LBB27_36
# %bb.103:                              # %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit109
                                        #   in Loop: Header=BB27_100 Depth=1
	add.d	$a0, $a1, $a0
	st.d	$a0, $s5, 16
	b	.LBB27_99
	.p2align	4, , 16
.LBB27_104:                             #   in Loop: Header=BB27_100 Depth=1
	addi.d	$a0, $sp, 112
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	st.d	$s7, $sp, 128
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $sp, 104
	addi.d	$a0, $sp, 80
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 96
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 72
.Ltmp64:
	addi.d	$a2, $sp, 104
	addi.d	$a3, $sp, 72
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE)
	jirl	$ra, $ra, 0
.Ltmp65:
# %bb.105:                              # %.preheader
                                        #   in Loop: Header=BB27_100 Depth=1
	ld.w	$a0, $s3, 12
	blt	$a0, $s7, .LBB27_98
# %bb.106:                              # %.lr.ph175.preheader
                                        #   in Loop: Header=BB27_100 Depth=1
	move	$s5, $zero
	move	$s4, $zero
	b	.LBB27_109
.LBB27_107:                             # %_ZN13CRecordVectorIjE3AddEj.exit
                                        #   in Loop: Header=BB27_109 Depth=2
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$s2, $a1, $a0
	ld.w	$a0, $fp, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 12
	.p2align	4, , 16
.LBB27_108:                             # %.loopexit126
                                        #   in Loop: Header=BB27_109 Depth=2
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $s3, 12
	addi.d	$s5, $s5, 1
	ori	$s7, $zero, 1
	bge	$s5, $a0, .LBB27_98
.LBB27_109:                             # %.lr.ph175
                                        #   Parent Loop BB27_100 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_115 Depth 3
	ld.d	$a0, $s1, 16
	slli.d	$a1, $s5, 2
	ldx.w	$s6, $a0, $a1
	beqz	$s6, .LBB27_108
# %bb.110:                              # %.lr.ph175
                                        #   in Loop: Header=BB27_109 Depth=2
	bne	$s6, $s7, .LBB27_114
# %bb.111:                              #   in Loop: Header=BB27_109 Depth=2
	ld.d	$a0, $s3, 16
	slli.d	$a1, $s5, 3
	ldx.d	$s2, $a0, $a1
	ld.bu	$a0, $s2, 132
	bne	$a0, $s7, .LBB27_114
# %bb.112:                              #   in Loop: Header=BB27_109 Depth=2
.Ltmp67:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp68:
# %bb.113:                              #   in Loop: Header=BB27_109 Depth=2
	ld.d	$a0, $s0, 16
	ld.w	$a1, $s0, 12
	ld.w	$s2, $s2, 128
	stx.b	$s7, $a0, $a1
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 12
.Ltmp69:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp70:
	b	.LBB27_107
	.p2align	4, , 16
.LBB27_114:                             # %.lr.ph171.preheader
                                        #   in Loop: Header=BB27_109 Depth=2
	slli.d	$s3, $s4, 2
	move	$s8, $s4
	.p2align	4, , 16
.LBB27_115:                             # %.lr.ph171
                                        #   Parent Loop BB27_100 Depth=1
                                        #     Parent Loop BB27_109 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 120
	ldx.bu	$s2, $a0, $s8
.Ltmp72:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp73:
# %bb.116:                              #   in Loop: Header=BB27_115 Depth=3
	ld.w	$a0, $s0, 12
	ld.d	$a1, $sp, 88
	ld.d	$a2, $s0, 16
	addi.d	$a3, $a0, 1
	st.w	$a3, $s0, 12
	ldx.w	$s7, $a1, $s3
	stx.b	$s2, $a2, $a0
.Ltmp74:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp75:
# %bb.117:                              #   in Loop: Header=BB27_115 Depth=3
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$s7, $a1, $a0
	ld.w	$a0, $fp, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 12
	addi.d	$s8, $s8, 1
	addi.d	$s3, $s3, 4
	addi.w	$s6, $s6, -1
	addi.w	$s4, $s4, 1
	bnez	$s6, .LBB27_115
	b	.LBB27_108
.LBB27_118:
	ld.w	$a0, $s0, 12
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB27_125
# %bb.119:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB27_124
# %bb.120:                              # %.lr.ph.i108.preheader
	move	$s1, $s2
	.p2align	4, , 16
.LBB27_121:                             # %.lr.ph.i108
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ld.w	$a1, $s0, 12
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $a1, 1
	addi.w	$s1, $s1, -1
	st.w	$a0, $s0, 12
	bnez	$s1, .LBB27_121
# %bb.122:                              # %.lr.ph178
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB27_123:                             # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$zero, $a1, $a0
	ld.w	$a0, $fp, 12
	addi.d	$a0, $a0, 1
	addi.w	$s2, $s2, -1
	st.w	$a0, $fp, 12
	bnez	$s2, .LBB27_123
	b	.LBB27_125
.LBB27_124:                             # %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.LBB27_125:                             # %.loopexit
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
.LBB27_126:                             # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB27_127:
.Ltmp66:
	b	.LBB27_130
.LBB27_128:
.Ltmp71:
	b	.LBB27_130
.LBB27_129:
.Ltmp76:
.LBB27_130:
	move	$fp, $a0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZN8NArchive3N7z10CInArchive18ReadSubStreamsInfoERK13CObjectVectorINS0_7CFolderEER13CRecordVectorIjERS7_IyERS7_IbES9_, .Lfunc_end27-_ZN8NArchive3N7z10CInArchive18ReadSubStreamsInfoERK13CObjectVectorINS0_7CFolderEER13CRecordVectorIjERS7_IyERS7_IbES9_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table27:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp64-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin5          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp70-.Ltmp67                #   Call between .Ltmp67 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin5          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp75-.Ltmp72                #   Call between .Ltmp72 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin5          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Lfunc_end27-.Ltmp75           #   Call between .Ltmp75 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_ # -- Begin function _ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_,@function
_ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_: # @_ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_
	.cfi_startproc
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
	move	$fp, $a0
	ld.d	$a0, $a0, 40
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	move	$s1, $a6
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s5, $a2
	move	$s6, $a1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 262144
	bltu	$s2, $a0, .LBB28_9
# %bb.1:
	ld.d	$s7, $sp, 144
	ld.d	$s8, $sp, 136
	ld.d	$s0, $sp, 128
	ori	$s3, $zero, 8
	pcalau12i	$a1, %pc_hi20(.LJTI28_0)
	addi.d	$s4, $a1, %pc_lo12(.LJTI28_0)
	b	.LBB28_4
	.p2align	4, , 16
.LBB28_2:                               #   in Loop: Header=BB28_4 Depth=1
	move	$a0, $fp
	move	$a1, $s5
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive12ReadPackInfoERyR13CRecordVectorIyERS3_IbERS3_IjE)
	jirl	$ra, $ra, 0
.LBB28_3:                               #   in Loop: Header=BB28_4 Depth=1
	ld.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	bltu	$s2, $a0, .LBB28_9
.LBB28_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bltu	$s3, $a0, .LBB28_9
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB28_4 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	add.d	$a0, $s4, $a0
	jr	$a0
.LBB28_6:                               #   in Loop: Header=BB28_4 Depth=1
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive14ReadUnpackInfoEPK13CObjectVectorI7CBufferIhEERS2_INS0_7CFolderEE)
	jirl	$ra, $ra, 0
	b	.LBB28_3
	.p2align	4, , 16
.LBB28_7:                               #   in Loop: Header=BB28_4 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $s0
	move	$a4, $s8
	move	$a5, $s7
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive18ReadSubStreamsInfoERK13CObjectVectorINS0_7CFolderEER13CRecordVectorIjERS7_IyERS7_IbES9_)
	jirl	$ra, $ra, 0
	b	.LBB28_3
.LBB28_8:
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
	ret
.LBB28_9:                               # %._crit_edge
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_, .Lfunc_end28-_ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI28_0:
	.word	.LBB28_8-.LJTI28_0
	.word	.LBB28_9-.LJTI28_0
	.word	.LBB28_9-.LJTI28_0
	.word	.LBB28_9-.LJTI28_0
	.word	.LBB28_9-.LJTI28_0
	.word	.LBB28_9-.LJTI28_0
	.word	.LBB28_2-.LJTI28_0
	.word	.LBB28_6-.LJTI28_0
	.word	.LBB28_7-.LJTI28_0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3N7z10CInArchive14ReadBoolVectorEiR13CRecordVectorIbE # -- Begin function _ZN8NArchive3N7z10CInArchive14ReadBoolVectorEiR13CRecordVectorIbE
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive14ReadBoolVectorEiR13CRecordVectorIbE,@function
_ZN8NArchive3N7z10CInArchive14ReadBoolVectorEiR13CRecordVectorIbE: # @_ZN8NArchive3N7z10CInArchive14ReadBoolVectorEiR13CRecordVectorIbE
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB29_6
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	move	$s2, $zero
	b	.LBB29_3
	.p2align	4, , 16
.LBB29_2:                               #   in Loop: Header=BB29_3 Depth=1
	and	$a0, $s3, $s2
	sltu	$s4, $zero, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.w	$a1, $fp, 12
	stx.b	$s4, $a0, $a1
	addi.d	$a0, $a1, 1
	st.w	$a0, $fp, 12
	addi.w	$s0, $s0, -1
	srli.d	$s3, $s3, 1
	beqz	$s0, .LBB29_6
.LBB29_3:                               # =>This Inner Loop Header: Depth=1
	bnez	$s3, .LBB29_2
# %bb.4:                                #   in Loop: Header=BB29_3 Depth=1
	ld.d	$a0, $s1, 40
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a0, 8
	bgeu	$a1, $a2, .LBB29_7
# %bb.5:                                # %_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit
                                        #   in Loop: Header=BB29_3 Depth=1
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 16
	ldx.bu	$s2, $a2, $a1
	ori	$s3, $zero, 128
	b	.LBB29_2
.LBB29_6:                               # %._crit_edge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB29_7:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	_ZN8NArchive3N7z10CInArchive14ReadBoolVectorEiR13CRecordVectorIbE, .Lfunc_end29-_ZN8NArchive3N7z10CInArchive14ReadBoolVectorEiR13CRecordVectorIbE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z10CInArchive19ReadUInt64DefVectorERK13CObjectVectorI7CBufferIhEERNS0_16CUInt64DefVectorEi # -- Begin function _ZN8NArchive3N7z10CInArchive19ReadUInt64DefVectorERK13CObjectVectorI7CBufferIhEERNS0_16CUInt64DefVectorEi
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive19ReadUInt64DefVectorERK13CObjectVectorI7CBufferIhEERNS0_16CUInt64DefVectorEi,@function
_ZN8NArchive3N7z10CInArchive19ReadUInt64DefVectorERK13CObjectVectorI7CBufferIhEERNS0_16CUInt64DefVectorEi: # @_ZN8NArchive3N7z10CInArchive19ReadUInt64DefVectorERK13CObjectVectorI7CBufferIhEERNS0_16CUInt64DefVectorEi
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$s1, $a0
	addi.d	$a2, $a2, 32
	move	$a1, $a3
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive15ReadBoolVector2EiR13CRecordVectorIbE)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 16
.Ltmp77:
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE)
	jirl	$ra, $ra, 0
.Ltmp78:
# %bb.1:
.Ltmp79:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp80:
# %bb.2:                                # %.preheader
	ori	$s2, $zero, 1
	blt	$fp, $s2, .LBB30_10
# %bb.3:                                # %.lr.ph
	move	$s3, $zero
	.p2align	4, , 16
.LBB30_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 48
	ldx.bu	$a0, $a0, $s3
	bne	$a0, $s2, .LBB30_7
# %bb.5:                                #   in Loop: Header=BB30_4 Depth=1
	ld.d	$a0, $s1, 40
	ld.d	$a1, $a0, 16
	ld.d	$a3, $a0, 8
	addi.d	$a2, $a1, 8
	bltu	$a3, $a2, .LBB30_15
# %bb.6:                                # %_ZN8NArchive3N7z10CInArchive10ReadUInt64Ev.exit
                                        #   in Loop: Header=BB30_4 Depth=1
	ld.d	$a3, $a0, 0
	ldx.d	$s4, $a3, $a1
	st.d	$a2, $a0, 16
	b	.LBB30_8
	.p2align	4, , 16
.LBB30_7:                               #   in Loop: Header=BB30_4 Depth=1
	move	$s4, $zero
.LBB30_8:                               #   in Loop: Header=BB30_4 Depth=1
.Ltmp82:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp83:
# %bb.9:                                #   in Loop: Header=BB30_4 Depth=1
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$s4, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s3, $s3, 1
	st.w	$a0, $s0, 12
	bne	$fp, $s3, .LBB30_4
.LBB30_10:                              # %._crit_edge
	ld.bu	$a0, $sp, 16
	bne	$a0, $s2, .LBB30_14
# %bb.11:
	ld.d	$fp, $sp, 8
	addi.d	$a0, $fp, 8
.Ltmp85:
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
.Ltmp86:
# %bb.12:                               # %.noexc.i
	ld.w	$a0, $fp, 20
	beqz	$a0, .LBB30_14
# %bb.13:
	ld.d	$a1, $fp, 24
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $fp, 40
.LBB30_14:                              # %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB30_15:
.Ltmp88:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Ltmp89:
# %bb.16:                               # %.noexc
.LBB30_17:
.Ltmp87:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB30_18:
.Ltmp81:
	b	.LBB30_21
.LBB30_19:                              # %.loopexit.split-lp
.Ltmp90:
	b	.LBB30_21
.LBB30_20:                              # %.loopexit
.Ltmp84:
.LBB30_21:
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z13CStreamSwitchD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZN8NArchive3N7z10CInArchive19ReadUInt64DefVectorERK13CObjectVectorI7CBufferIhEERNS0_16CUInt64DefVectorEi, .Lfunc_end30-_ZN8NArchive3N7z10CInArchive19ReadUInt64DefVectorERK13CObjectVectorI7CBufferIhEERNS0_16CUInt64DefVectorEi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table30:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp77-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp77
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp80-.Ltmp77                #   Call between .Ltmp77 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin6          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin6          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin6          # >> Call Site 4 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin6          #     jumps to .Ltmp87
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp88-.Lfunc_begin6          # >> Call Site 5 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin6          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin6          # >> Call Site 6 <<
	.uleb128 .Lfunc_end30-.Ltmp89           #   Call between .Ltmp89 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
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
	.p2align	5, 0x0                          # -- Begin function _ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb
.LCPI31_0:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	2                               # 0x2
	.dword	2                               # 0x2
.LCPI31_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb,@function
_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb: # @_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -736
	.cfi_def_cfa_offset 736
	st.d	$ra, $sp, 728                   # 8-byte Folded Spill
	st.d	$fp, $sp, 720                   # 8-byte Folded Spill
	st.d	$s0, $sp, 712                   # 8-byte Folded Spill
	st.d	$s1, $sp, 704                   # 8-byte Folded Spill
	st.d	$s2, $sp, 696                   # 8-byte Folded Spill
	st.d	$s3, $sp, 688                   # 8-byte Folded Spill
	st.d	$s4, $sp, 680                   # 8-byte Folded Spill
	st.d	$s5, $sp, 672                   # 8-byte Folded Spill
	st.d	$s6, $sp, 664                   # 8-byte Folded Spill
	st.d	$s7, $sp, 656                   # 8-byte Folded Spill
	st.d	$s8, $sp, 648                   # 8-byte Folded Spill
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
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	move	$s1, $a3
	move	$s4, $a2
	move	$s3, $a1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 624
	ori	$a7, $zero, 8
	st.d	$a7, $sp, 640
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a1, $sp, 616
	vst	$vr0, $sp, 592
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 608
	pcalau12i	$a3, %pc_hi20(_ZTV13CRecordVectorIbE+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTV13CRecordVectorIbE+16)
	st.d	$a3, $sp, 584
	vst	$vr0, $sp, 560
	ori	$a4, $zero, 4
	st.d	$a4, $sp, 576
	pcalau12i	$a5, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a5, $a5, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a5, $sp, 552
	vst	$vr0, $sp, 528
	st.d	$a7, $sp, 544
	pcalau12i	$a6, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE+16)
	addi.d	$fp, $a6, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE+16)
	st.d	$fp, $sp, 520
	vst	$vr0, $sp, 496
	st.d	$a4, $sp, 512
	st.d	$a5, $sp, 488
	vst	$vr0, $sp, 464
	st.d	$a7, $sp, 480
	st.d	$a1, $sp, 456
	vst	$vr0, $sp, 432
	st.d	$a2, $sp, 448
	st.d	$a3, $sp, 424
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	vst	$vr0, $sp, 400
	st.d	$a4, $sp, 416
	st.d	$a5, $sp, 392
.Ltmp91:
	addi.d	$a1, $sp, 392
	st.d	$a1, $sp, 16
	addi.d	$a1, $sp, 424
	st.d	$a1, $sp, 8
	addi.d	$a1, $sp, 456
	addi.d	$a3, $sp, 616
	addi.d	$a4, $sp, 584
	addi.d	$a5, $sp, 552
	addi.d	$a6, $sp, 520
	addi.d	$a7, $sp, 488
	st.d	$a1, $sp, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_)
	jirl	$ra, $ra, 0
.Ltmp92:
# %bb.1:
.Ltmp94:
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 160
	ori	$a1, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CDecoderC1Eb)
	jirl	$ra, $ra, 0
.Ltmp95:
# %bb.2:
	ld.w	$a0, $sp, 532
	blt	$a0, $fp, .LBB31_49
# %bb.3:                                # %.lr.ph116
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(_ZTV19CBufPtrSeqOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTV19CBufPtrSeqOutStream)
	move	$s8, $zero
	move	$s2, $zero
	add.d	$s3, $a0, $s3
	ld.d	$a0, $a1, 24
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s0, $a0, 88
	addi.d	$a0, $a0, 96
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 16
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	.p2align	4, , 16
.LBB31_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_11 Depth 2
                                        #       Child Loop BB31_12 Depth 3
                                        #     Child Loop BB31_42 Depth 2
                                        #     Child Loop BB31_44 Depth 2
	ld.d	$a0, $sp, 536
	slli.d	$a1, $s8, 3
	ldx.d	$s6, $a0, $a1
.Ltmp97:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp98:
# %bb.5:                                # %_ZN7CBufferIhEC2ERKS0_.exit.i
                                        #   in Loop: Header=BB31_4 Depth=1
	move	$s4, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $s4, 0
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $s4, 8
.Ltmp99:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp100:
# %bb.6:                                #   in Loop: Header=BB31_4 Depth=1
	ld.w	$a0, $s1, 12
	ld.d	$a1, $s1, 16
	slli.d	$a2, $a0, 3
	stx.d	$s4, $a1, $a2
	ld.d	$a1, $s1, 16
	addi.w	$a0, $a0, 1
	st.w	$a0, $s1, 12
	alsl.d	$a1, $a0, $a1, 3
	ld.w	$a0, $s6, 108
	ld.d	$fp, $a1, -8
	beqz	$a0, .LBB31_20
# %bb.7:                                # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i
                                        #   in Loop: Header=BB31_4 Depth=1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB31_52
# %bb.8:                                # %.lr.ph.i
                                        #   in Loop: Header=BB31_4 Depth=1
	ld.w	$a1, $s6, 44
	addi.w	$a2, $a0, -1
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB31_15
# %bb.9:                                # %.lr.ph.i.us.i.preheader
                                        #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a3, $s6, 48
	bstrpick.d	$a0, $a1, 31, 0
	addi.d	$a1, $a3, 4
	b	.LBB31_11
	.p2align	4, , 16
.LBB31_10:                              # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
                                        #   in Loop: Header=BB31_11 Depth=2
	addi.w	$a2, $a3, -1
	blez	$a3, .LBB31_52
.LBB31_11:                              # %.lr.ph.i.us.i
                                        #   Parent Loop BB31_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_12 Depth 3
	move	$a3, $a2
	move	$a2, $a1
	move	$a4, $a0
	.p2align	4, , 16
.LBB31_12:                              #   Parent Loop BB31_4 Depth=1
                                        #     Parent Loop BB31_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a2, 0
	beq	$a5, $a3, .LBB31_10
# %bb.13:                               #   in Loop: Header=BB31_12 Depth=3
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB31_12
# %bb.14:                               #   in Loop: Header=BB31_4 Depth=1
	move	$a2, $a3
.LBB31_15:                              # %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit
                                        #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a0, $s6, 112
	slli.d	$a1, $a2, 3
	ldx.d	$s7, $a0, $a1
	ld.d	$s5, $fp, 8
	beq	$s7, $s5, .LBB31_26
# %bb.16:                               #   in Loop: Header=BB31_4 Depth=1
	beqz	$s7, .LBB31_21
# %bb.17:                               #   in Loop: Header=BB31_4 Depth=1
.Ltmp102:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp103:
# %bb.18:                               # %.noexc84
                                        #   in Loop: Header=BB31_4 Depth=1
	move	$s4, $a0
	beqz	$s5, .LBB31_22
# %bb.19:                               #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a1, $fp, 16
	sltu	$a0, $s5, $s7
	masknez	$a2, $s7, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB31_22
	.p2align	4, , 16
.LBB31_20:                              # %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread
                                        #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB31_25
.LBB31_21:                              #   in Loop: Header=BB31_4 Depth=1
	move	$s7, $zero
	move	$s4, $zero
.LBB31_22:                              # %.thread
                                        #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB31_24
# %bb.23:                               #   in Loop: Header=BB31_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB31_24:                              #   in Loop: Header=BB31_4 Depth=1
	st.d	$s4, $fp, 16
	st.d	$s7, $fp, 8
	b	.LBB31_26
.LBB31_25:                              #   in Loop: Header=BB31_4 Depth=1
	move	$s7, $zero
	.p2align	4, , 16
.LBB31_26:                              # %_ZN7CBufferIhE11SetCapacityEm.exit
                                        #   in Loop: Header=BB31_4 Depth=1
.Ltmp108:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp109:
# %bb.27:                               #   in Loop: Header=BB31_4 Depth=1
	move	$s5, $a0
	st.w	$zero, $a0, 8
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $s5, 0
.Ltmp111:
	move	$a0, $s5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp112:
# %bb.28:                               # %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit
                                        #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a0, $fp, 16
	st.d	$a0, $s5, 16
	ld.d	$a0, $sp, 632
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$zero, $s5, 32
	st.d	$s7, $s5, 24
	alsl.d	$a3, $s2, $a0, 3
.Ltmp114:
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 16
	st.d	$zero, $sp, 8
	addi.d	$a0, $sp, 160
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $sp, 0
	move	$a2, $s3
	move	$a4, $s6
	move	$a5, $s5
	move	$a6, $zero
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj)
	jirl	$ra, $ra, 0
.Ltmp115:
# %bb.29:                               #   in Loop: Header=BB31_4 Depth=1
	move	$s4, $a0
	bnez	$a0, .LBB31_46
# %bb.30:                               #   in Loop: Header=BB31_4 Depth=1
	ld.bu	$a0, $s6, 132
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB31_33
# %bb.31:                               #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a0, $fp, 16
.Ltmp116:
	move	$a1, $s7
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
.Ltmp117:
# %bb.32:                               #   in Loop: Header=BB31_4 Depth=1
	ld.w	$a1, $s6, 128
	bne	$a0, $a1, .LBB31_54
.LBB31_33:                              #   in Loop: Header=BB31_4 Depth=1
	ld.w	$a2, $s6, 76
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB31_46
# %bb.34:                               # %.lr.ph
                                        #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a1, $sp, 632
	ld.d	$a4, $s0, 0
	add.w	$a0, $s2, $a2
	ori	$a3, $zero, 8
	bgeu	$a2, $a3, .LBB31_36
# %bb.35:                               #   in Loop: Header=BB31_4 Depth=1
	move	$a3, $s2
	b	.LBB31_44
.LBB31_36:                              # %vector.scevcheck
                                        #   in Loop: Header=BB31_4 Depth=1
	add.d	$a3, $a2, $s2
	addi.w	$a3, $a3, -1
	bge	$a3, $s2, .LBB31_38
# %bb.37:                               #   in Loop: Header=BB31_4 Depth=1
	move	$a3, $s2
	b	.LBB31_44
.LBB31_38:                              # %vector.memcheck
                                        #   in Loop: Header=BB31_4 Depth=1
	addi.d	$a3, $a2, -1
	bstrpick.d	$a3, $a3, 31, 0
	add.d	$a3, $s2, $a3
	alsl.d	$a3, $a3, $a1, 3
	addi.d	$a3, $a3, 8
	bgeu	$s0, $a3, .LBB31_41
# %bb.39:                               # %vector.memcheck
                                        #   in Loop: Header=BB31_4 Depth=1
	alsl.d	$a3, $s2, $a1, 3
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	bgeu	$a3, $a5, .LBB31_41
# %bb.40:                               #   in Loop: Header=BB31_4 Depth=1
	move	$a3, $s2
	b	.LBB31_44
.LBB31_41:                              # %vector.ph
                                        #   in Loop: Header=BB31_4 Depth=1
	bstrpick.d	$a3, $a2, 30, 3
	pcalau12i	$a5, %pc_hi20(.LCPI31_0)
	xvld	$xr0, $a5, %pc_lo12(.LCPI31_0)
	slli.w	$a5, $a3, 3
	alsl.w	$a3, $a3, $s2, 3
	xvinsgr2vr.d	$xr1, $a4, 0
	xvpermi.d	$xr2, $xr1, 68
	xvinsgr2vr.d	$xr1, $zero, 0
	xvpermi.d	$xr3, $xr1, 68
	xvori.b	$xr1, $xr0, 0
	xvshuf.d	$xr1, $xr3, $xr2
	xvinsgr2vr.d	$xr2, $s3, 0
	xvpermi.d	$xr2, $xr2, 68
	xvshuf.d	$xr0, $xr3, $xr2
	move	$a4, $a5
	xvld	$xr2, $sp, 32                   # 32-byte Folded Reload
	xvori.b	$xr3, $xr2, 0
	.p2align	4, , 16
.LBB31_42:                              # %vector.body
                                        #   Parent Loop BB31_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a6, $s2, $a1, 3
	slli.d	$a7, $s2, 3
	xvldx	$xr4, $a1, $a7
	xvld	$xr5, $a6, 32
	xvadd.d	$xr0, $xr4, $xr0
	xvadd.d	$xr2, $xr5, $xr2
	xvadd.d	$xr1, $xr1, $xr4
	xvadd.d	$xr3, $xr3, $xr5
	addi.w	$a4, $a4, -8
	addi.w	$s2, $s2, 8
	bnez	$a4, .LBB31_42
# %bb.43:                               # %middle.block
                                        #   in Loop: Header=BB31_4 Depth=1
	pcalau12i	$a4, %pc_hi20(.LCPI31_1)
	xvld	$xr4, $a4, %pc_lo12(.LCPI31_1)
	xvadd.d	$xr1, $xr3, $xr1
	xvpermi.d	$xr3, $xr1, 78
	xvori.b	$xr5, $xr4, 0
	xvshuf.d	$xr5, $xr0, $xr3
	xvadd.d	$xr1, $xr1, $xr5
	xvpermi.d	$xr3, $xr1, 68
	xvrepl128vei.d	$xr3, $xr3, 1
	xvadd.d	$xr1, $xr1, $xr3
	xvpickve2gr.d	$a4, $xr1, 0
	xvadd.d	$xr0, $xr2, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr4, $xr0, $xr1
	xvadd.d	$xr0, $xr0, $xr4
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$s3, $xr0, 0
	st.d	$a4, $s0, 0
	beq	$a2, $a5, .LBB31_45
	.p2align	4, , 16
.LBB31_44:                              # %scalar.ph
                                        #   Parent Loop BB31_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a1, $a2
	addi.w	$a5, $a3, 1
	add.d	$s3, $a2, $s3
	add.d	$a4, $a4, $a2
	st.d	$a4, $s0, 0
	move	$a3, $a5
	bne	$a0, $a5, .LBB31_44
.LBB31_45:                              #   in Loop: Header=BB31_4 Depth=1
	move	$s2, $a0
.LBB31_46:                              # %.loopexit
                                        #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
.Ltmp125:
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp126:
# %bb.47:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90
                                        #   in Loop: Header=BB31_4 Depth=1
	bnez	$s4, .LBB31_50
# %bb.48:                               #   in Loop: Header=BB31_4 Depth=1
	ld.w	$a0, $sp, 532
	addi.d	$s8, $s8, 1
	blt	$s8, $a0, .LBB31_4
.LBB31_49:
	move	$s4, $zero
.LBB31_50:                              # %._crit_edge
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CDecoderD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 456
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $sp, 520
.Ltmp128:
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp129:
# %bb.51:                               # %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev.exit
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 584
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	ld.d	$s8, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 712                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 720                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 728                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 736
	ret
.LBB31_52:                              # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.Ltmp105:
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp106:
# %bb.53:                               # %.noexc82
.LBB31_54:
.Ltmp119:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Ltmp120:
# %bb.55:                               # %.noexc88
.LBB31_56:
.Ltmp130:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB31_57:
.Ltmp96:
	b	.LBB31_59
.LBB31_58:
.Ltmp93:
.LBB31_59:
	move	$fp, $a0
	b	.LBB31_72
.LBB31_60:                              # %.loopexit.split-lp
.Ltmp121:
	b	.LBB31_67
.LBB31_61:
.Ltmp104:
	b	.LBB31_70
.LBB31_62:
.Ltmp110:
	b	.LBB31_70
.LBB31_63:
.Ltmp127:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB31_64:
.Ltmp113:
	b	.LBB31_70
.LBB31_65:
.Ltmp107:
	b	.LBB31_70
.LBB31_66:                              # %.loopexit103
.Ltmp118:
.LBB31_67:
	move	$fp, $a0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
.Ltmp122:
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp123:
	b	.LBB31_71
.LBB31_68:
.Ltmp124:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB31_69:                              # %_ZN7CBufferIhED2Ev.exit83
.Ltmp101:
.LBB31_70:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	move	$fp, $a0
.LBB31_71:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CDecoderD2Ev)
	jirl	$ra, $ra, 0
.LBB31_72:
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 456
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 584
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb, .Lfunc_end31-_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table31:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp91-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin7          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin7          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Ltmp100-.Ltmp97               #   Call between .Ltmp97 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin7         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin7         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp108-.Ltmp103              #   Call between .Ltmp103 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin7         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin7         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp117-.Ltmp114              #   Call between .Ltmp114 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin7         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin7         #     jumps to .Ltmp127
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp126-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Ltmp128-.Ltmp126              #   Call between .Ltmp126 and .Ltmp128
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin7         # >> Call Site 11 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin7         #     jumps to .Ltmp130
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp129-.Lfunc_begin7         # >> Call Site 12 <<
	.uleb128 .Ltmp105-.Ltmp129              #   Call between .Ltmp129 and .Ltmp105
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin7         # >> Call Site 13 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin7         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin7         # >> Call Site 14 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin7         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin7         # >> Call Site 15 <<
	.uleb128 .Ltmp122-.Ltmp120              #   Call between .Ltmp120 and .Ltmp122
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin7         # >> Call Site 16 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin7         #     jumps to .Ltmp124
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp123-.Lfunc_begin7         # >> Call Site 17 <<
	.uleb128 .Lfunc_end31-.Ltmp123          #   Call between .Ltmp123 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive3N7z8CDecoderD2Ev,"axG",@progbits,_ZN8NArchive3N7z8CDecoderD2Ev,comdat
	.weak	_ZN8NArchive3N7z8CDecoderD2Ev   # -- Begin function _ZN8NArchive3N7z8CDecoderD2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z8CDecoderD2Ev,@function
_ZN8NArchive3N7z8CDecoderD2Ev:          # @_ZN8NArchive3N7z8CDecoderD2Ev
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
	addi.d	$s0, $a0, 200
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	st.d	$a0, $fp, 200
.Ltmp131:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp132:
# %bb.1:                                # %_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	beqz	$a0, .LBB32_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp134:
	jirl	$ra, $a1, 0
.Ltmp135:
.LBB32_3:                               # %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit
	addi.d	$s0, $fp, 8
	addi.d	$a0, $fp, 136
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 104
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB32_4:
.Ltmp136:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB32_5:
.Ltmp133:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZN8NArchive3N7z8CDecoderD2Ev, .Lfunc_end32-_ZN8NArchive3N7z8CDecoderD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z8CDecoderD2Ev,"aG",@progbits,_ZN8NArchive3N7z8CDecoderD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table32:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp131-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin8         #     jumps to .Ltmp133
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp132-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp134-.Ltmp132              #   Call between .Ltmp132 and .Ltmp134
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin8         #     jumps to .Ltmp136
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp135-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Lfunc_end32-.Ltmp135          #   Call between .Ltmp135 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev: # @_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE+16)
	st.d	$a0, $fp, 0
.Ltmp137:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp138:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB33_2:
.Ltmp139:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev, .Lfunc_end33-_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table33:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp137-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin9         #     jumps to .Ltmp139
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp138-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end33-.Ltmp138          #   Call between .Ltmp138 and .Lfunc_end33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb
.LCPI34_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb,@function
_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb: # @_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.d	$a0, $a0, 40
	move	$s2, $a3
	move	$s3, $a2
	move	$fp, $a1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$s1, $a0
	bne	$a0, $a1, .LBB34_5
	.p2align	4, , 16
# %bb.1:
	ld.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB34_4
.LBB34_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s0, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 8
	ld.d	$a1, $s1, 16
	sub.d	$a2, $a2, $a1
	bltu	$a2, $a0, .LBB34_177
# %bb.3:                                # %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit.i
                                        #   in Loop: Header=BB34_2 Depth=1
	add.d	$a0, $a1, $a0
	st.d	$a0, $s1, 16
	ld.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB34_2
.LBB34_4:                               # %_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE.exit
	ld.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB34_5:
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 384
	ori	$s4, $zero, 8
	st.d	$s4, $sp, 400
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI7CBufferIhEE+16)
	addi.d	$s7, $a0, %pc_lo12(_ZTV13CObjectVectorI7CBufferIhEE+16)
	ori	$a0, $zero, 3
	st.d	$s7, $sp, 376
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	bne	$s1, $a0, .LBB34_10
# %bb.6:
	ld.d	$a1, $fp, 496
	addi.d	$a2, $fp, 512
.Ltmp140:
	addi.d	$a3, $sp, 376
	move	$a0, $s0
	move	$a4, $s3
	move	$a5, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb)
	jirl	$ra, $ra, 0
.Ltmp141:
# %bb.7:
	move	$s1, $a0
	bnez	$a0, .LBB34_171
# %bb.8:
	ld.d	$a0, $fp, 496
	ld.d	$a1, $fp, 512
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, 512
	ld.d	$a0, $s0, 40
.Ltmp142:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
.Ltmp143:
# %bb.9:
	move	$s1, $a0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
.LBB34_10:                              # %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit.thread
	vst	$vr0, $sp, 352
	st.d	$s4, $sp, 368
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a0, $sp, 344
	vst	$vr0, $sp, 320
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 336
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIbE+16)
	addi.d	$s8, $a1, %pc_lo12(_ZTV13CRecordVectorIbE+16)
	st.d	$s8, $sp, 312
	vst	$vr0, $sp, 288
	ori	$a1, $zero, 4
	st.d	$a1, $sp, 304
	pcalau12i	$a2, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a2, $sp, 280
	bne	$s1, $a1, .LBB34_14
# %bb.11:
	addi.d	$a2, $fp, 504
	addi.d	$a4, $fp, 32
	addi.d	$a5, $fp, 64
	addi.d	$a6, $fp, 96
	addi.d	$a7, $fp, 128
.Ltmp158:
	addi.d	$a0, $sp, 280
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 312
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 344
	addi.d	$a1, $sp, 376
	st.d	$a0, $sp, 0
	move	$a0, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_)
	jirl	$ra, $ra, 0
.Ltmp159:
# %bb.12:
	ld.d	$a0, $fp, 496
	ld.d	$a1, $fp, 504
	add.d	$a0, $a1, $a0
	st.d	$a0, $fp, 504
	ld.d	$a0, $s0, 40
.Ltmp160:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
.Ltmp161:
# %bb.13:
	move	$s1, $a0
	b	.LBB34_32
.LBB34_14:                              # %.preheader337
	ld.w	$a1, $fp, 108
	blt	$a1, $a0, .LBB34_32
# %bb.15:                               # %.lr.ph
	move	$s3, $zero
	addi.d	$s2, $fp, 128
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB34_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_22 Depth 2
                                        #       Child Loop BB34_23 Depth 3
.Ltmp145:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp146:
# %bb.17:                               #   in Loop: Header=BB34_16 Depth=1
	ld.w	$a0, $fp, 140
	ld.d	$a1, $fp, 144
	slli.d	$a0, $a0, 2
	stx.w	$s4, $a1, $a0
	ld.w	$a0, $fp, 140
	ld.d	$a1, $fp, 112
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 140
	slli.d	$a0, $s3, 3
	ldx.d	$s5, $a1, $a0
	ld.w	$a0, $s5, 108
	beqz	$a0, .LBB34_27
# %bb.18:                               # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i
                                        #   in Loop: Header=BB34_16 Depth=1
	blt	$a0, $s4, .LBB34_178
# %bb.19:                               # %.lr.ph.i206
                                        #   in Loop: Header=BB34_16 Depth=1
	ld.w	$a1, $s5, 44
	addi.w	$a2, $a0, -1
	blt	$a1, $s4, .LBB34_26
# %bb.20:                               # %.lr.ph.i.us.i.preheader
                                        #   in Loop: Header=BB34_16 Depth=1
	ld.d	$a3, $s5, 48
	bstrpick.d	$a0, $a1, 31, 0
	addi.d	$a1, $a3, 4
	b	.LBB34_22
	.p2align	4, , 16
.LBB34_21:                              # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
                                        #   in Loop: Header=BB34_22 Depth=2
	addi.w	$a2, $a3, -1
	blez	$a3, .LBB34_178
.LBB34_22:                              # %.lr.ph.i.us.i
                                        #   Parent Loop BB34_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB34_23 Depth 3
	move	$a3, $a2
	move	$a2, $a1
	move	$a4, $a0
	.p2align	4, , 16
.LBB34_23:                              #   Parent Loop BB34_16 Depth=1
                                        #     Parent Loop BB34_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a2, 0
	beq	$a5, $a3, .LBB34_21
# %bb.24:                               #   in Loop: Header=BB34_23 Depth=3
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB34_23
# %bb.25:                               #   in Loop: Header=BB34_16 Depth=1
	move	$a2, $a3
.LBB34_26:                              # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i
                                        #   in Loop: Header=BB34_16 Depth=1
	ld.d	$a0, $s5, 112
	slli.d	$a1, $a2, 3
	ldx.d	$s6, $a0, $a1
	b	.LBB34_28
	.p2align	4, , 16
.LBB34_27:                              #   in Loop: Header=BB34_16 Depth=1
	move	$s6, $zero
.LBB34_28:                              # %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit
                                        #   in Loop: Header=BB34_16 Depth=1
.Ltmp151:
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp152:
# %bb.29:                               #   in Loop: Header=BB34_16 Depth=1
	ld.w	$a0, $sp, 356
	ld.d	$a1, $sp, 360
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	ld.bu	$s6, $s5, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 356
.Ltmp153:
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp154:
# %bb.30:                               #   in Loop: Header=BB34_16 Depth=1
	ld.d	$a0, $sp, 328
	ld.w	$a1, $sp, 324
	stx.b	$s6, $a0, $a1
	ld.w	$s5, $s5, 128
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 324
.Ltmp155:
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp156:
# %bb.31:                               #   in Loop: Header=BB34_16 Depth=1
	ld.w	$a0, $sp, 292
	ld.d	$a1, $sp, 296
	slli.d	$a0, $a0, 2
	stx.w	$s5, $a1, $a0
	ld.w	$a0, $sp, 292
	ld.w	$a1, $fp, 108
	addi.d	$a0, $a0, 1
	addi.d	$s3, $s3, 1
	st.w	$a0, $sp, 292
	blt	$s3, $a1, .LBB34_16
.LBB34_32:                              # %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit205
	addi.d	$s2, $fp, 160
.Ltmp162:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp163:
# %bb.33:
	beqz	$s1, .LBB34_170
# %bb.34:
	ori	$a0, $zero, 5
	bne	$s1, $a0, .LBB34_184
# %bb.35:
	ld.d	$a0, $s0, 40
.Ltmp164:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
.Ltmp165:
# %bb.36:                               # %.noexc212
	move	$s3, $a0
	srli.d	$a0, $a0, 31
	bnez	$a0, .LBB34_186
# %bb.37:
.Ltmp166:
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp167:
# %bb.38:                               # %.preheader336
	addi.w	$s1, $s3, 0
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	beqz	$s3, .LBB34_47
# %bb.39:                               # %.lr.ph349
	move	$s5, $zero
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB34_40:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_44 Depth 2
.Ltmp168:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp169:
# %bb.41:                               #   in Loop: Header=BB34_40 Depth=1
	move	$s3, $a0
	st.w	$zero, $a0, 0
.Ltmp171:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp172:
# %bb.42:                               #   in Loop: Header=BB34_40 Depth=1
	move	$s4, $a0
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $a0, 16
.Ltmp173:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp174:
# %bb.43:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
                                        #   in Loop: Header=BB34_40 Depth=1
	move	$a1, $zero
	st.d	$a0, $s4, 16
	st.w	$zero, $a0, 0
	st.w	$s6, $s4, 28
	.p2align	4, , 16
.LBB34_44:                              #   Parent Loop BB34_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s3, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB34_44
# %bb.45:                               #   in Loop: Header=BB34_40 Depth=1
	st.w	$zero, $s4, 24
	st.w	$s6, $s4, 32
.Ltmp176:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp177:
# %bb.46:                               # %_ZN8NArchive3N7z9CFileItemD2Ev.exit
                                        #   in Loop: Header=BB34_40 Depth=1
	ld.w	$a0, $fp, 172
	ld.d	$a1, $fp, 176
	slli.d	$a2, $a0, 3
	stx.d	$s4, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 172
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s5, 1
	bne	$s5, $s1, .LBB34_40
.LBB34_47:                              # %._crit_edge
	addi.d	$a0, $fp, 520
.Ltmp179:
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp180:
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
# %bb.48:
	ld.w	$a0, $fp, 532
	ld.d	$a1, $fp, 536
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 9
	stx.d	$a3, $a1, $a2
	ld.w	$a1, $fp, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 532
	beqz	$a1, .LBB34_51
# %bb.49:
.Ltmp181:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp182:
# %bb.50:                               # %_ZN13CRecordVectorIyE3AddEy.exit221
	ld.w	$a0, $fp, 532
	ld.d	$a1, $fp, 536
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 6
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 532
.LBB34_51:
	beqz	$s2, .LBB34_55
# %bb.52:
	ld.w	$a0, $sp, 292
	beqz	$a0, .LBB34_55
# %bb.53:
.Ltmp183:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp184:
# %bb.54:                               # %_ZN13CRecordVectorIyE3AddEy.exit223
	ld.w	$a0, $fp, 532
	ld.d	$a1, $fp, 536
	slli.d	$a2, $a0, 3
	ori	$a3, $zero, 10
	stx.d	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 532
.LBB34_55:
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 256
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 272
	st.d	$s8, $sp, 248
.Ltmp186:
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp187:
# %bb.56:                               # %.noexc225
.Ltmp188:
	addi.d	$a0, $sp, 248
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp189:
# %bb.57:                               # %.noexc226
	beqz	$s2, .LBB34_60
	.p2align	4, , 16
.LBB34_58:                              # =>This Inner Loop Header: Depth=1
.Ltmp191:
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp192:
# %bb.59:                               # %.noexc227
                                        #   in Loop: Header=BB34_58 Depth=1
	ld.d	$a0, $sp, 264
	ld.w	$a1, $sp, 260
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $a1, 1
	addi.w	$s2, $s2, -1
	st.w	$a0, $sp, 260
	bnez	$s2, .LBB34_58
.LBB34_60:                              # %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	move	$s3, $zero
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 224
	ori	$s6, $zero, 1
	st.d	$s6, $sp, 240
	st.d	$s8, $sp, 216
	vst	$vr0, $sp, 192
	st.d	$s6, $sp, 208
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$s8, $sp, 184
	addi.d	$a0, $fp, 320
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 256
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 192
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 384
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	sltu	$a0, $s6, $s1
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s1, $a0
	or	$s8, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.LJTI34_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI34_0)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, -524288
	ori	$a0, $a0, 7
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB34_62
	.p2align	4, , 16
.LBB34_61:                              #   in Loop: Header=BB34_62 Depth=1
	ld.d	$a0, $s0, 40
	ld.d	$a0, $a0, 16
	sub.d	$a0, $a0, $s7
	bne	$a0, $s4, .LBB34_180
.LBB34_62:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_118 Depth 2
                                        #     Child Loop BB34_127 Depth 2
                                        #     Child Loop BB34_110 Depth 2
                                        #     Child Loop BB34_84 Depth 2
                                        #     Child Loop BB34_94 Depth 2
                                        #     Child Loop BB34_74 Depth 2
                                        #     Child Loop BB34_138 Depth 2
                                        #     Child Loop BB34_140 Depth 2
                                        #     Child Loop BB34_145 Depth 2
                                        #     Child Loop BB34_151 Depth 2
	ld.d	$a0, $s0, 40
.Ltmp194:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
.Ltmp195:
# %bb.63:                               # %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit229
                                        #   in Loop: Header=BB34_62 Depth=1
	move	$s5, $a0
	beqz	$a0, .LBB34_153
# %bb.64:                               #   in Loop: Header=BB34_62 Depth=1
	ld.d	$a0, $s0, 40
.Ltmp197:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
.Ltmp198:
# %bb.65:                               # %_ZN8NArchive3N7z10CInArchive10ReadNumberEv.exit
                                        #   in Loop: Header=BB34_62 Depth=1
	move	$s4, $a0
	ld.d	$a0, $s0, 40
	ld.d	$s7, $a0, 16
	lu12i.w	$a1, 262144
	bgeu	$a1, $s5, .LBB34_68
.LBB34_66:                              # %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit256
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.d	$a1, $a0, 8
	sub.d	$a1, $a1, $s7
	bltu	$a1, $s4, .LBB34_175
# %bb.67:                               # %_ZN8NArchive3N7z10CInArchive8SkipDataEy.exit
                                        #   in Loop: Header=BB34_62 Depth=1
	add.d	$a1, $s7, $s4
	st.d	$a1, $a0, 16
	ori	$s6, $zero, 1
	b	.LBB34_105
	.p2align	4, , 16
.LBB34_68:                              #   in Loop: Header=BB34_62 Depth=1
	addi.d	$a1, $s5, -14
	ori	$a2, $zero, 11
	bltu	$a2, $a1, .LBB34_66
# %bb.69:                               #   in Loop: Header=BB34_62 Depth=1
	slli.d	$a1, $a1, 2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jr	$a1
.LBB34_70:                              #   in Loop: Header=BB34_62 Depth=1
.Ltmp219:
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp220:
# %bb.71:                               # %.noexc239
                                        #   in Loop: Header=BB34_62 Depth=1
.Ltmp221:
	addi.d	$a0, $sp, 248
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp222:
# %bb.72:                               # %.noexc240
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	beqz	$s2, .LBB34_134
# %bb.73:                               # %.lr.ph.i236.preheader
                                        #   in Loop: Header=BB34_62 Depth=1
	move	$s1, $zero
	move	$s6, $zero
	.p2align	4, , 16
.LBB34_74:                              # %.lr.ph.i236
                                        #   Parent Loop BB34_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$s1, .LBB34_77
# %bb.75:                               #   in Loop: Header=BB34_74 Depth=2
	ld.d	$a0, $s0, 40
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a0, 8
	bgeu	$a1, $a2, .LBB34_175
# %bb.76:                               # %_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit.i
                                        #   in Loop: Header=BB34_74 Depth=2
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 16
	ldx.bu	$s6, $a2, $a1
	ori	$s1, $zero, 128
.LBB34_77:                              #   in Loop: Header=BB34_74 Depth=2
.Ltmp223:
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp224:
# %bb.78:                               # %.noexc242
                                        #   in Loop: Header=BB34_74 Depth=2
	ld.d	$a0, $sp, 264
	ld.w	$a1, $sp, 260
	and	$a2, $s1, $s6
	sltu	$a2, $zero, $a2
	stx.b	$a2, $a0, $a1
	addi.w	$a0, $a1, 1
	st.w	$a0, $sp, 260
	addi.w	$s2, $s2, -1
	srli.d	$s1, $s1, 1
	bnez	$s2, .LBB34_74
# %bb.79:                               #   in Loop: Header=BB34_62 Depth=1
	ori	$s6, $zero, 1
	bnez	$a0, .LBB34_135
	b	.LBB34_141
.LBB34_80:                              #   in Loop: Header=BB34_62 Depth=1
.Ltmp205:
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp206:
# %bb.81:                               # %.noexc280
                                        #   in Loop: Header=BB34_62 Depth=1
.Ltmp207:
	addi.d	$a0, $sp, 184
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp208:
# %bb.82:                               # %.noexc281
                                        #   in Loop: Header=BB34_62 Depth=1
	blt	$s3, $s6, .LBB34_103
# %bb.83:                               # %.lr.ph.i271.preheader
                                        #   in Loop: Header=BB34_62 Depth=1
	move	$s6, $zero
	move	$s1, $zero
	move	$s2, $s3
	.p2align	4, , 16
.LBB34_84:                              # %.lr.ph.i271
                                        #   Parent Loop BB34_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$s6, .LBB34_87
# %bb.85:                               #   in Loop: Header=BB34_84 Depth=2
	ld.d	$a0, $s0, 40
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a0, 8
	bgeu	$a1, $a2, .LBB34_175
# %bb.86:                               # %_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit.i279
                                        #   in Loop: Header=BB34_84 Depth=2
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 16
	ldx.bu	$s1, $a2, $a1
	ori	$s6, $zero, 128
.LBB34_87:                              #   in Loop: Header=BB34_84 Depth=2
.Ltmp209:
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp210:
# %bb.88:                               # %.noexc283
                                        #   in Loop: Header=BB34_84 Depth=2
	ld.d	$a0, $sp, 200
	ld.w	$a1, $sp, 196
	and	$a2, $s6, $s1
	sltu	$a2, $zero, $a2
	stx.b	$a2, $a0, $a1
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 196
	addi.w	$s2, $s2, -1
	srli.d	$s6, $s6, 1
	bnez	$s2, .LBB34_84
	b	.LBB34_99
.LBB34_89:                              #   in Loop: Header=BB34_62 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	b	.LBB34_102
.LBB34_90:                              #   in Loop: Header=BB34_62 Depth=1
.Ltmp212:
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp213:
# %bb.91:                               # %.noexc266
                                        #   in Loop: Header=BB34_62 Depth=1
.Ltmp214:
	addi.d	$a0, $sp, 216
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp215:
# %bb.92:                               # %.noexc267
                                        #   in Loop: Header=BB34_62 Depth=1
	blt	$s3, $s6, .LBB34_103
# %bb.93:                               # %.lr.ph.i257.preheader
                                        #   in Loop: Header=BB34_62 Depth=1
	move	$s6, $zero
	move	$s1, $zero
	move	$s2, $s3
	.p2align	4, , 16
.LBB34_94:                              # %.lr.ph.i257
                                        #   Parent Loop BB34_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$s6, .LBB34_97
# %bb.95:                               #   in Loop: Header=BB34_94 Depth=2
	ld.d	$a0, $s0, 40
	ld.d	$a1, $a0, 16
	ld.d	$a2, $a0, 8
	bgeu	$a1, $a2, .LBB34_175
# %bb.96:                               # %_ZN8NArchive3N7z10CInArchive8ReadByteEv.exit.i265
                                        #   in Loop: Header=BB34_94 Depth=2
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 16
	ldx.bu	$s1, $a2, $a1
	ori	$s6, $zero, 128
.LBB34_97:                              #   in Loop: Header=BB34_94 Depth=2
.Ltmp216:
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp217:
# %bb.98:                               # %.noexc269
                                        #   in Loop: Header=BB34_94 Depth=2
	ld.d	$a0, $sp, 232
	ld.w	$a1, $sp, 228
	and	$a2, $s6, $s1
	sltu	$a2, $zero, $a2
	stx.b	$a2, $a0, $a1
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 228
	addi.w	$s2, $s2, -1
	srli.d	$s6, $s6, 1
	bnez	$s2, .LBB34_94
.LBB34_99:                              #   in Loop: Header=BB34_62 Depth=1
	ori	$s6, $zero, 1
	b	.LBB34_103
.LBB34_100:                             #   in Loop: Header=BB34_62 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	b	.LBB34_102
.LBB34_101:                             #   in Loop: Header=BB34_62 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
.LBB34_102:                             # %.invoke
                                        #   in Loop: Header=BB34_62 Depth=1
.Ltmp203:
	addi.d	$a1, $sp, 376
	move	$a0, $s0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive19ReadUInt64DefVectorERK13CObjectVectorI7CBufferIhEERNS0_16CUInt64DefVectorEi)
	jirl	$ra, $ra, 0
.Ltmp204:
.LBB34_103:                             # %.loopexit314
                                        #   in Loop: Header=BB34_62 Depth=1
.Ltmp261:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp262:
# %bb.104:                              # %_ZN13CRecordVectorIyE3AddEy.exit289
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.w	$a0, $fp, 532
	ld.d	$a1, $fp, 536
	slli.d	$a2, $a0, 3
	stx.d	$s5, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 532
.LBB34_105:                             # %.loopexit328
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.bu	$a0, $fp, 480
	bnez	$a0, .LBB34_61
# %bb.106:                              # %.loopexit328
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.bu	$a0, $fp, 481
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB34_62
	b	.LBB34_61
.LBB34_107:                             #   in Loop: Header=BB34_62 Depth=1
	st.b	$zero, $sp, 160
.Ltmp252:
	addi.d	$a0, $sp, 152
	addi.d	$a2, $sp, 376
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE)
	jirl	$ra, $ra, 0
.Ltmp253:
# %bb.108:                              # %.preheader312
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.w	$a0, $fp, 172
	blt	$a0, $s6, .LBB34_112
# %bb.109:                              # %.lr.ph360.preheader
                                        #   in Loop: Header=BB34_62 Depth=1
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB34_110:                             # %.lr.ph360
                                        #   Parent Loop BB34_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 176
	ldx.d	$a1, $a0, $s1
	ld.d	$a0, $s0, 40
	addi.d	$a1, $a1, 16
.Ltmp255:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadStringER11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp256:
# %bb.111:                              #   in Loop: Header=BB34_110 Depth=2
	ld.w	$a0, $fp, 172
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB34_110
.LBB34_112:                             # %._crit_edge361
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.bu	$a0, $sp, 160
	bne	$a0, $s6, .LBB34_103
# %bb.113:                              #   in Loop: Header=BB34_62 Depth=1
	ld.d	$s1, $sp, 152
	addi.d	$a0, $s1, 8
.Ltmp258:
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
.Ltmp259:
# %bb.114:                              # %.noexc.i231
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.w	$a0, $s1, 20
	beqz	$a0, .LBB34_103
# %bb.115:                              #   in Loop: Header=BB34_62 Depth=1
	ld.d	$a1, $s1, 24
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $s1, 40
	b	.LBB34_103
.LBB34_116:                             # %.preheader327
                                        #   in Loop: Header=BB34_62 Depth=1
	beqz	$s4, .LBB34_105
# %bb.117:                              # %.lr.ph351
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.d	$a1, $a0, 8
	sub.d	$a2, $a1, $s7
	sltu	$a1, $a1, $a2
	masknez	$a1, $a2, $a1
	move	$a2, $s4
	move	$a3, $s7
	.p2align	4, , 16
.LBB34_118:                             #   Parent Loop BB34_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a1, .LBB34_173
# %bb.119:                              #   in Loop: Header=BB34_118 Depth=2
	ld.d	$a5, $a0, 0
	addi.d	$a4, $a3, 1
	st.d	$a4, $a0, 16
	ldx.bu	$a3, $a5, $a3
	bnez	$a3, .LBB34_173
# %bb.120:                              #   in Loop: Header=BB34_118 Depth=2
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -1
	move	$a3, $a4
	bnez	$a2, .LBB34_118
	b	.LBB34_105
.LBB34_121:                             #   in Loop: Header=BB34_62 Depth=1
	ld.w	$a1, $fp, 172
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 160
	vst	$vr0, $a0, 0
	st.d	$s6, $sp, 176
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 152
.Ltmp240:
	addi.d	$a2, $sp, 152
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive15ReadBoolVector2EiR13CRecordVectorIbE)
	jirl	$ra, $ra, 0
.Ltmp241:
# %bb.122:                              #   in Loop: Header=BB34_62 Depth=1
	st.b	$zero, $sp, 144
.Ltmp243:
	addi.d	$a0, $sp, 136
	addi.d	$a2, $sp, 376
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE)
	jirl	$ra, $ra, 0
.Ltmp244:
# %bb.123:                              # %.preheader313
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB34_129
# %bb.124:                              # %.lr.ph357
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.d	$a0, $fp, 176
	ld.d	$a1, $sp, 168
	ld.d	$a2, $s0, 40
	move	$a3, $zero
	b	.LBB34_127
	.p2align	4, , 16
.LBB34_125:                             #   in Loop: Header=BB34_127 Depth=2
	ld.d	$a7, $a2, 0
	ldx.w	$a5, $a7, $a5
	st.d	$a6, $a2, 16
	st.w	$a5, $a4, 8
.LBB34_126:                             #   in Loop: Header=BB34_127 Depth=2
	addi.w	$a3, $a3, 1
	beq	$s8, $a3, .LBB34_129
.LBB34_127:                             #   Parent Loop BB34_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	ldx.bu	$a5, $a1, $a3
	st.b	$a5, $a4, 35
	bne	$a5, $s6, .LBB34_126
# %bb.128:                              #   in Loop: Header=BB34_127 Depth=2
	ld.d	$a5, $a2, 16
	ld.d	$a7, $a2, 8
	addi.d	$a6, $a5, 4
	bgeu	$a7, $a6, .LBB34_125
	b	.LBB34_182
.LBB34_129:                             # %._crit_edge358
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.bu	$a0, $sp, 144
	bne	$a0, $s6, .LBB34_133
# %bb.130:                              #   in Loop: Header=BB34_62 Depth=1
	ld.d	$s1, $sp, 136
	addi.d	$a0, $s1, 8
.Ltmp249:
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
.Ltmp250:
# %bb.131:                              # %.noexc.i233
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.w	$a0, $s1, 20
	beqz	$a0, .LBB34_133
# %bb.132:                              #   in Loop: Header=BB34_62 Depth=1
	ld.d	$a1, $s1, 24
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $s1, 40
.LBB34_133:                             # %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit235
                                        #   in Loop: Header=BB34_62 Depth=1
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB34_103
.LBB34_134:                             # %.noexc240._ZN8NArchive3N7z10CInArchive14ReadBoolVectorEiR13CRecordVectorIbE.exit_crit_edge
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.w	$a0, $sp, 260
	beqz	$a0, .LBB34_141
.LBB34_135:                             # %.lr.ph354
                                        #   in Loop: Header=BB34_62 Depth=1
	ld.d	$a1, $sp, 264
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	add.w	$a2, $a0, $a2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	bgeu	$a2, $a3, .LBB34_137
# %bb.136:                              #   in Loop: Header=BB34_62 Depth=1
	move	$a2, $zero
	b	.LBB34_140
.LBB34_137:                             # %vector.ph
                                        #   in Loop: Header=BB34_62 Depth=1
	move	$a2, $a0
	pcalau12i	$a3, %pc_hi20(.LCPI34_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI34_0)
	bstrins.d	$a2, $zero, 2, 0
	vinsgr2vr.w	$vr1, $s3, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	addi.d	$a3, $a1, 4
	move	$a4, $a2
	vld	$vr4, $sp, 112                  # 16-byte Folded Reload
	vori.b	$vr1, $vr4, 0
	.p2align	4, , 16
.LBB34_138:                             # %vector.body
                                        #   Parent Loop BB34_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a3, -4
	ld.w	$a6, $a3, 0
	vinsgr2vr.w	$vr2, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 0
	vilvl.b	$vr2, $vr4, $vr2
	vilvl.h	$vr2, $vr4, $vr2
	vilvl.b	$vr3, $vr4, $vr3
	vilvl.h	$vr3, $vr4, $vr3
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.w	$a4, $a4, -8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB34_138
# %bb.139:                              # %middle.block
                                        #   in Loop: Header=BB34_62 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	addi.w	$a3, $a2, 0
	vpickve2gr.w	$s3, $vr0, 0
	beq	$a0, $a3, .LBB34_141
	.p2align	4, , 16
.LBB34_140:                             # %scalar.ph
                                        #   Parent Loop BB34_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a3, $a2, 0
	ldx.bu	$a3, $a1, $a3
	addi.w	$a2, $a2, 1
	add.w	$s3, $s3, $a3
	bne	$a0, $a2, .LBB34_140
.LBB34_141:                             # %._crit_edge355
                                        #   in Loop: Header=BB34_62 Depth=1
.Ltmp226:
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp227:
# %bb.142:                              # %.noexc246
                                        #   in Loop: Header=BB34_62 Depth=1
.Ltmp228:
	addi.d	$a0, $sp, 216
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp229:
# %bb.143:                              # %.noexc247
                                        #   in Loop: Header=BB34_62 Depth=1
	blt	$s3, $s6, .LBB34_147
# %bb.144:                              # %.lr.ph.i243.preheader
                                        #   in Loop: Header=BB34_62 Depth=1
	move	$s1, $s3
	.p2align	4, , 16
.LBB34_145:                             # %.lr.ph.i243
                                        #   Parent Loop BB34_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp230:
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp231:
# %bb.146:                              # %.noexc248
                                        #   in Loop: Header=BB34_145 Depth=2
	ld.d	$a0, $sp, 232
	ld.w	$a1, $sp, 228
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $a1, 1
	addi.w	$s1, $s1, -1
	st.w	$a0, $sp, 228
	bnez	$s1, .LBB34_145
.LBB34_147:                             # %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit249
                                        #   in Loop: Header=BB34_62 Depth=1
.Ltmp233:
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp234:
# %bb.148:                              # %.noexc253
                                        #   in Loop: Header=BB34_62 Depth=1
.Ltmp235:
	addi.d	$a0, $sp, 184
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp236:
# %bb.149:                              # %.noexc254
                                        #   in Loop: Header=BB34_62 Depth=1
	blt	$s3, $s6, .LBB34_103
# %bb.150:                              # %.lr.ph.i250.preheader
                                        #   in Loop: Header=BB34_62 Depth=1
	move	$s1, $s3
	.p2align	4, , 16
.LBB34_151:                             # %.lr.ph.i250
                                        #   Parent Loop BB34_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp237:
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp238:
# %bb.152:                              # %.noexc255
                                        #   in Loop: Header=BB34_151 Depth=2
	ld.d	$a0, $sp, 200
	ld.w	$a1, $sp, 196
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $a1, 1
	addi.w	$s1, $s1, -1
	st.w	$a0, $sp, 196
	bnez	$s1, .LBB34_151
	b	.LBB34_103
.LBB34_153:                             # %.preheader311
	beqz	$s3, .LBB34_156
# %bb.154:                              # %.lr.ph364
	ld.d	$a0, $sp, 200
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.w	$a1, $s3, $a1
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	bgeu	$a1, $a2, .LBB34_157
# %bb.155:
	move	$a2, $zero
	move	$a1, $zero
	b	.LBB34_160
.LBB34_156:
	ori	$s1, $zero, 1
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	bnez	$a6, .LBB34_162
	b	.LBB34_169
.LBB34_157:                             # %vector.ph491
	move	$a1, $s3
	bstrins.d	$a1, $zero, 2, 0
	vrepli.b	$vr0, 0
	addi.d	$a2, $a0, 4
	move	$a3, $a1
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB34_158:                             # %vector.body494
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -4
	ld.w	$a5, $a2, 0
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr4, $a5, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.w	$a3, $a3, -8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB34_158
# %bb.159:                              # %middle.block501
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	addi.w	$a3, $a1, 0
	vpickve2gr.w	$a2, $vr0, 0
	beq	$s3, $a3, .LBB34_161
	.p2align	4, , 16
.LBB34_160:                             # %scalar.ph489
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $a1, 0
	ldx.bu	$a3, $a0, $a3
	addi.w	$a1, $a1, 1
	add.w	$a2, $a2, $a3
	bne	$s3, $a1, .LBB34_160
.LBB34_161:                             # %.preheader.loopexit
	sltui	$s1, $a2, 1
	beqz	$a6, .LBB34_169
.LBB34_162:                             # %.lr.ph369
	move	$s2, $zero
	move	$s4, $zero
	move	$s3, $zero
	addi.d	$s0, $fp, 448
	b	.LBB34_166
	.p2align	4, , 16
.LBB34_163:                             #   in Loop: Header=BB34_166 Depth=1
.Ltmp270:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp271:
# %bb.164:                              # %_ZN13CRecordVectorIbE3AddEb.exit294
                                        #   in Loop: Header=BB34_166 Depth=1
	ld.d	$a0, $fp, 464
	ld.w	$a1, $fp, 460
	andi	$a2, $s5, 1
	stx.b	$a2, $a0, $a1
	addi.d	$a0, $a1, 1
	st.w	$a0, $fp, 460
.LBB34_165:                             #   in Loop: Header=BB34_166 Depth=1
	addi.w	$s3, $s3, 1
	beq	$s8, $s3, .LBB34_169
.LBB34_166:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 264
	ld.d	$a1, $fp, 176
	slli.d	$a2, $s3, 3
	ldx.bu	$a3, $a0, $s3
	ldx.d	$a0, $a1, $a2
	xori	$a1, $a3, 1
	st.b	$a1, $a0, 32
	beqz	$a3, .LBB34_168
# %bb.167:                              #   in Loop: Header=BB34_166 Depth=1
	ld.d	$a1, $sp, 232
	ldx.b	$a1, $a1, $s4
	ld.d	$a2, $sp, 200
	xori	$a1, $a1, 1
	st.b	$a1, $a0, 33
	ldx.b	$s5, $a2, $s4
	addi.w	$s4, $s4, 1
	move	$a1, $zero
	move	$a2, $zero
	st.d	$a1, $a0, 0
	st.b	$a2, $a0, 34
	bnez	$s1, .LBB34_165
	b	.LBB34_163
	.p2align	4, , 16
.LBB34_168:                             #   in Loop: Header=BB34_166 Depth=1
	ld.d	$a1, $sp, 296
	st.b	$zero, $a0, 33
	ld.d	$a2, $sp, 360
	slli.d	$a3, $s2, 2
	ldx.w	$a3, $a1, $a3
	slli.d	$a1, $s2, 3
	ldx.d	$a1, $a2, $a1
	st.w	$a3, $a0, 12
	ld.d	$a2, $sp, 328
	ldx.bu	$a2, $a2, $s2
	move	$s5, $zero
	addi.w	$s2, $s2, 1
	st.d	$a1, $a0, 0
	st.b	$a2, $a0, 34
	bnez	$s1, .LBB34_165
	b	.LBB34_163
.LBB34_169:                             # %._crit_edge370
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
.LBB34_170:
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$s1, $zero
.LBB34_171:                             # %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit
	st.d	$s7, $sp, 376
.Ltmp276:
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp277:
# %bb.172:                              # %_ZN13CObjectVectorI7CBufferIhEED2Ev.exit
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.LBB34_173:                             # %.invoke409
.Ltmp200:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Ltmp201:
# %bb.174:                              # %.cont410
.LBB34_175:                             # %.invoke408
.Ltmp267:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Ltmp268:
# %bb.176:                              # %.cont
.LBB34_177:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.LBB34_178:                             # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.Ltmp148:
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp149:
# %bb.179:                              # %.noexc
.LBB34_180:
.Ltmp264:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Ltmp265:
# %bb.181:                              # %.noexc291
.LBB34_182:
.Ltmp246:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Ltmp247:
# %bb.183:                              # %.noexc232
.LBB34_184:
.Ltmp279:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Ltmp280:
# %bb.185:                              # %.noexc211
.LBB34_186:
.Ltmp273:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Ltmp274:
# %bb.187:                              # %.noexc213
.LBB34_188:
.Ltmp260:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB34_189:
.Ltmp251:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB34_190:
.Ltmp254:
	b	.LBB34_212
.LBB34_191:
.Ltmp245:
	b	.LBB34_201
.LBB34_192:
.Ltmp242:
	move	$fp, $a0
	b	.LBB34_202
.LBB34_193:                             # %.loopexit.split-lp333
.Ltmp190:
	move	$fp, $a0
	b	.LBB34_225
.LBB34_194:
.Ltmp144:
	move	$fp, $a0
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI7CBufferIhEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB34_195:
.Ltmp185:
	b	.LBB34_227
.LBB34_196:
.Ltmp278:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB34_197:
.Ltmp275:
	b	.LBB34_227
.LBB34_198:
.Ltmp281:
	b	.LBB34_227
.LBB34_199:
.Ltmp272:
	b	.LBB34_223
.LBB34_200:
.Ltmp248:
.LBB34_201:
	move	$fp, $a0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z13CStreamSwitchD2Ev)
	jirl	$ra, $ra, 0
.LBB34_202:
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB34_224
.LBB34_203:
.Ltmp266:
	b	.LBB34_223
.LBB34_204:
.Ltmp170:
	b	.LBB34_227
.LBB34_205:
.Ltmp175:
	move	$fp, $a0
	ori	$a1, $zero, 40
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB34_220
.LBB34_206:                             # %.loopexit332
.Ltmp193:
	move	$fp, $a0
	b	.LBB34_225
.LBB34_207:
.Ltmp147:
	b	.LBB34_227
.LBB34_208:                             # %.loopexit.split-lp340
.Ltmp150:
	b	.LBB34_227
.LBB34_209:                             # %.loopexit
.Ltmp239:
	b	.LBB34_223
.LBB34_210:                             # %.loopexit.split-lp.loopexit
.Ltmp232:
	b	.LBB34_223
.LBB34_211:
.Ltmp257:
.LBB34_212:
	move	$fp, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z13CStreamSwitchD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB34_224
.LBB34_213:                             # %.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp225:
	b	.LBB34_223
.LBB34_214:                             # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp211:
	b	.LBB34_223
.LBB34_215:                             # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp218:
	b	.LBB34_223
.LBB34_216:
.Ltmp199:
	b	.LBB34_223
.LBB34_217:
.Ltmp196:
	b	.LBB34_223
.LBB34_218:                             # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp263:
	b	.LBB34_223
.LBB34_219:
.Ltmp178:
	move	$fp, $a0
.LBB34_220:                             # %_ZN8NArchive3N7z9CFileItemD2Ev.exit217
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB34_228
.LBB34_221:                             # %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
.Ltmp269:
	b	.LBB34_223
.LBB34_222:
.Ltmp202:
.LBB34_223:                             # %.loopexit.split-lp
	move	$fp, $a0
.LBB34_224:                             # %.loopexit.split-lp
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB34_225:
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB34_228
.LBB34_226:                             # %.loopexit339
.Ltmp157:
.LBB34_227:
	move	$fp, $a0
.LBB34_228:
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI7CBufferIhEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end34:
	.size	_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb, .Lfunc_end34-_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI34_0:
	.word	.LBB34_70-.LJTI34_0
	.word	.LBB34_90-.LJTI34_0
	.word	.LBB34_80-.LJTI34_0
	.word	.LBB34_107-.LJTI34_0
	.word	.LBB34_89-.LJTI34_0
	.word	.LBB34_100-.LJTI34_0
	.word	.LBB34_101-.LJTI34_0
	.word	.LBB34_121-.LJTI34_0
	.word	.LBB34_66-.LJTI34_0
	.word	.LBB34_66-.LJTI34_0
	.word	.LBB34_102-.LJTI34_0
	.word	.LBB34_116-.LJTI34_0
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table34:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp140-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp143-.Ltmp140              #   Call between .Ltmp140 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin10        #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp161-.Ltmp158              #   Call between .Ltmp158 and .Ltmp161
	.uleb128 .Ltmp281-.Lfunc_begin10        #     jumps to .Ltmp281
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin10        #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp156-.Ltmp151              #   Call between .Ltmp151 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin10        #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp281-.Lfunc_begin10        #     jumps to .Ltmp281
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp167-.Ltmp164              #   Call between .Ltmp164 and .Ltmp167
	.uleb128 .Ltmp275-.Lfunc_begin10        #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin10        #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp178-.Lfunc_begin10        #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin10        # >> Call Site 10 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin10        #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin10        # >> Call Site 11 <<
	.uleb128 .Ltmp177-.Ltmp176              #   Call between .Ltmp176 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin10        #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin10        # >> Call Site 12 <<
	.uleb128 .Ltmp179-.Ltmp177              #   Call between .Ltmp177 and .Ltmp179
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin10        # >> Call Site 13 <<
	.uleb128 .Ltmp184-.Ltmp179              #   Call between .Ltmp179 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin10        #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin10        # >> Call Site 14 <<
	.uleb128 .Ltmp189-.Ltmp186              #   Call between .Ltmp186 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin10        #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin10        # >> Call Site 15 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin10        #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin10        # >> Call Site 16 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin10        #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin10        # >> Call Site 17 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin10        #     jumps to .Ltmp199
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin10        # >> Call Site 18 <<
	.uleb128 .Ltmp222-.Ltmp219              #   Call between .Ltmp219 and .Ltmp222
	.uleb128 .Ltmp263-.Lfunc_begin10        #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin10        # >> Call Site 19 <<
	.uleb128 .Ltmp224-.Ltmp223              #   Call between .Ltmp223 and .Ltmp224
	.uleb128 .Ltmp225-.Lfunc_begin10        #     jumps to .Ltmp225
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin10        # >> Call Site 20 <<
	.uleb128 .Ltmp208-.Ltmp205              #   Call between .Ltmp205 and .Ltmp208
	.uleb128 .Ltmp263-.Lfunc_begin10        #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin10        # >> Call Site 21 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin10        #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin10        # >> Call Site 22 <<
	.uleb128 .Ltmp215-.Ltmp212              #   Call between .Ltmp212 and .Ltmp215
	.uleb128 .Ltmp263-.Lfunc_begin10        #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin10        # >> Call Site 23 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin10        #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin10        # >> Call Site 24 <<
	.uleb128 .Ltmp262-.Ltmp203              #   Call between .Ltmp203 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin10        #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin10        # >> Call Site 25 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin10        #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin10        # >> Call Site 26 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin10        #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin10        # >> Call Site 27 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin10        #     jumps to .Ltmp260
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp240-.Lfunc_begin10        # >> Call Site 28 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin10        #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin10        # >> Call Site 29 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin10        #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin10        # >> Call Site 30 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin10        #     jumps to .Ltmp251
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp250-.Lfunc_begin10        # >> Call Site 31 <<
	.uleb128 .Ltmp226-.Ltmp250              #   Call between .Ltmp250 and .Ltmp226
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin10        # >> Call Site 32 <<
	.uleb128 .Ltmp229-.Ltmp226              #   Call between .Ltmp226 and .Ltmp229
	.uleb128 .Ltmp263-.Lfunc_begin10        #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin10        # >> Call Site 33 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin10        #     jumps to .Ltmp232
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin10        # >> Call Site 34 <<
	.uleb128 .Ltmp236-.Ltmp233              #   Call between .Ltmp233 and .Ltmp236
	.uleb128 .Ltmp263-.Lfunc_begin10        #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin10        # >> Call Site 35 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin10        #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin10        # >> Call Site 36 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin10        #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin10        # >> Call Site 37 <<
	.uleb128 .Ltmp276-.Ltmp271              #   Call between .Ltmp271 and .Ltmp276
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin10        # >> Call Site 38 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin10        #     jumps to .Ltmp278
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp277-.Lfunc_begin10        # >> Call Site 39 <<
	.uleb128 .Ltmp200-.Ltmp277              #   Call between .Ltmp277 and .Ltmp200
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin10        # >> Call Site 40 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin10        #     jumps to .Ltmp202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin10        # >> Call Site 41 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin10        #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin10        # >> Call Site 42 <<
	.uleb128 .Ltmp148-.Ltmp268              #   Call between .Ltmp268 and .Ltmp148
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin10        # >> Call Site 43 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin10        #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin10        # >> Call Site 44 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin10        #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin10        # >> Call Site 45 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin10        #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin10        # >> Call Site 46 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin10        #     jumps to .Ltmp281
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin10        # >> Call Site 47 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin10        #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin10        # >> Call Site 48 <<
	.uleb128 .Lfunc_end34-.Ltmp274          #   Call between .Ltmp274 and .Lfunc_end34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI7CBufferIhEED2Ev,"axG",@progbits,_ZN13CObjectVectorI7CBufferIhEED2Ev,comdat
	.weak	_ZN13CObjectVectorI7CBufferIhEED2Ev # -- Begin function _ZN13CObjectVectorI7CBufferIhEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI7CBufferIhEED2Ev,@function
_ZN13CObjectVectorI7CBufferIhEED2Ev:    # @_ZN13CObjectVectorI7CBufferIhEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI7CBufferIhEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI7CBufferIhEE+16)
	st.d	$a0, $fp, 0
.Ltmp282:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp283:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB35_2:
.Ltmp284:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	_ZN13CObjectVectorI7CBufferIhEED2Ev, .Lfunc_end35-_ZN13CObjectVectorI7CBufferIhEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI7CBufferIhEED2Ev,"aG",@progbits,_ZN13CObjectVectorI7CBufferIhEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table35:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp282-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp284-.Lfunc_begin11        #     jumps to .Ltmp284
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp283-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Lfunc_end35-.Ltmp283          #   Call between .Ltmp283 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3N7z18CArchiveDatabaseEx25FillFolderStartPackStreamEv # -- Begin function _ZN8NArchive3N7z18CArchiveDatabaseEx25FillFolderStartPackStreamEv
	.p2align	5
	.type	_ZN8NArchive3N7z18CArchiveDatabaseEx25FillFolderStartPackStreamEv,@function
_ZN8NArchive3N7z18CArchiveDatabaseEx25FillFolderStartPackStreamEv: # @_ZN8NArchive3N7z18CArchiveDatabaseEx25FillFolderStartPackStreamEv
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
	addi.d	$s0, $a0, 584
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 108
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 108
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB36_3
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB36_2:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 596
	ld.d	$a1, $fp, 600
	slli.d	$a0, $a0, 2
	ld.d	$a2, $fp, 112
	stx.w	$s3, $a1, $a0
	ld.w	$a0, $fp, 596
	ldx.d	$a1, $a2, $s1
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 596
	ld.w	$a0, $a1, 76
	ld.w	$a1, $fp, 108
	add.d	$s3, $a0, $s3
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a1, .LBB36_2
.LBB36_3:                               # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end36:
	.size	_ZN8NArchive3N7z18CArchiveDatabaseEx25FillFolderStartPackStreamEv, .Lfunc_end36-_ZN8NArchive3N7z18CArchiveDatabaseEx25FillFolderStartPackStreamEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z18CArchiveDatabaseEx12FillStartPosEv # -- Begin function _ZN8NArchive3N7z18CArchiveDatabaseEx12FillStartPosEv
	.p2align	5
	.type	_ZN8NArchive3N7z18CArchiveDatabaseEx12FillStartPosEv,@function
_ZN8NArchive3N7z18CArchiveDatabaseEx12FillStartPosEv: # @_ZN8NArchive3N7z18CArchiveDatabaseEx12FillStartPosEv
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
	addi.d	$s0, $a0, 552
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB37_3
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB37_2:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 564
	ld.d	$a1, $fp, 568
	ld.d	$a2, $fp, 16
	slli.d	$a3, $a0, 3
	stx.d	$s3, $a1, $a3
	ldx.d	$a1, $a2, $s1
	addi.d	$a0, $a0, 1
	ld.w	$a2, $fp, 12
	st.w	$a0, $fp, 564
	add.d	$s3, $a1, $s3
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a2, .LBB37_2
.LBB37_3:                               # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end37:
	.size	_ZN8NArchive3N7z18CArchiveDatabaseEx12FillStartPosEv, .Lfunc_end37-_ZN8NArchive3N7z18CArchiveDatabaseEx12FillStartPosEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z18CArchiveDatabaseEx24FillFolderStartFileIndexEv # -- Begin function _ZN8NArchive3N7z18CArchiveDatabaseEx24FillFolderStartFileIndexEv
	.p2align	5
	.type	_ZN8NArchive3N7z18CArchiveDatabaseEx24FillFolderStartFileIndexEv,@function
_ZN8NArchive3N7z18CArchiveDatabaseEx24FillFolderStartFileIndexEv: # @_ZN8NArchive3N7z18CArchiveDatabaseEx24FillFolderStartFileIndexEv
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
	addi.d	$s0, $a0, 616
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 108
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 648
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 172
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 172
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB38_14
# %bb.1:                                # %.lr.ph34
	move	$s2, $zero
	move	$s3, $zero
	move	$s5, $zero
	addi.w	$s4, $zero, -1
	lu32i.d	$s4, 0
	b	.LBB38_4
	.p2align	4, , 16
.LBB38_2:                               #   in Loop: Header=BB38_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 660
	ld.d	$a1, $fp, 664
	slli.d	$a0, $a0, 2
	stx.w	$s4, $a1, $a0
	ld.w	$a0, $fp, 660
	move	$s5, $zero
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 660
.LBB38_3:                               #   in Loop: Header=BB38_4 Depth=1
	ld.w	$a0, $fp, 172
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB38_14
.LBB38_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_11 Depth 2
	ld.d	$a0, $fp, 176
	slli.d	$a1, $s2, 3
	ldx.d	$a0, $a0, $a1
	ld.bu	$s6, $a0, 32
	bnez	$s6, .LBB38_6
# %bb.5:                                #   in Loop: Header=BB38_4 Depth=1
	beqz	$s5, .LBB38_2
.LBB38_6:                               #   in Loop: Header=BB38_4 Depth=1
	beqz	$s5, .LBB38_9
.LBB38_7:                               # %.loopexit
                                        #   in Loop: Header=BB38_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 660
	ld.d	$a1, $fp, 664
	slli.d	$a0, $a0, 2
	stx.w	$s3, $a1, $a0
	ld.w	$a0, $fp, 660
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 660
	beqz	$s6, .LBB38_3
# %bb.8:                                #   in Loop: Header=BB38_4 Depth=1
	ld.d	$a0, $fp, 144
	slli.d	$a1, $s3, 2
	ldx.w	$a0, $a0, $a1
	addi.w	$a1, $s5, 1
	sltu	$a0, $a1, $a0
	xori	$a0, $a0, 1
	masknez	$s5, $a1, $a0
	add.w	$s3, $s3, $a0
	b	.LBB38_3
.LBB38_9:                               # %.preheader
                                        #   in Loop: Header=BB38_4 Depth=1
	ld.w	$a0, $fp, 108
	bge	$s3, $a0, .LBB38_13
# %bb.10:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB38_4 Depth=1
	slli.d	$s7, $s3, 2
	move	$s8, $s3
	.p2align	4, , 16
.LBB38_11:                              # %.lr.ph
                                        #   Parent Loop BB38_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 628
	ld.d	$a1, $fp, 632
	slli.d	$a0, $a0, 2
	stx.w	$s2, $a1, $a0
	ld.w	$a0, $fp, 628
	ld.d	$a1, $fp, 144
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 628
	ldx.w	$a0, $a1, $s7
	bnez	$a0, .LBB38_7
# %bb.12:                               #   in Loop: Header=BB38_11 Depth=2
	ld.w	$a0, $fp, 108
	addi.d	$s8, $s8, 1
	addi.w	$s3, $s3, 1
	addi.d	$s7, $s7, 4
	blt	$s8, $a0, .LBB38_11
.LBB38_13:                              # %.preheader._crit_edge
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.LBB38_14:                              # %._crit_edge35
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
.Lfunc_end38:
	.size	_ZN8NArchive3N7z18CArchiveDatabaseEx24FillFolderStartFileIndexEv, .Lfunc_end38-_ZN8NArchive3N7z18CArchiveDatabaseEx24FillFolderStartFileIndexEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN8NArchive3N7z10CInArchive13ReadDatabase2ERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb
.LCPI39_0:
	.byte	8                               # 0x8
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	0                               # 0x0
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI39_1:
	.byte	9                               # 0x9
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	1                               # 0x1
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI39_2:
	.byte	10                              # 0xa
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	2                               # 0x2
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI39_3:
	.byte	11                              # 0xb
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	3                               # 0x3
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI39_4:
	.byte	12                              # 0xc
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	4                               # 0x4
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI39_5:
	.byte	13                              # 0xd
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	5                               # 0x5
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI39_6:
	.byte	14                              # 0xe
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	6                               # 0x6
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI39_7:
	.byte	15                              # 0xf
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	7                               # 0x7
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.globl	_ZN8NArchive3N7z10CInArchive13ReadDatabase2ERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive13ReadDatabase2ERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb,@function
_ZN8NArchive3N7z10CInArchive13ReadDatabase2ERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb: # @_ZN8NArchive3N7z10CInArchive13ReadDatabase2ERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:
	addi.d	$sp, $sp, -656
	.cfi_def_cfa_offset 656
	st.d	$ra, $sp, 648                   # 8-byte Folded Spill
	st.d	$fp, $sp, 640                   # 8-byte Folded Spill
	st.d	$s0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s1, $sp, 624                   # 8-byte Folded Spill
	st.d	$s2, $sp, 616                   # 8-byte Folded Spill
	st.d	$s3, $sp, 608                   # 8-byte Folded Spill
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 592                   # 8-byte Folded Spill
	st.d	$s6, $sp, 584                   # 8-byte Folded Spill
	st.d	$s7, $sp, 576                   # 8-byte Folded Spill
	st.d	$s8, $sp, 568                   # 8-byte Folded Spill
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
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z16CArchiveDatabase5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 520
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 552
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 584
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 616
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 648
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	vrepli.b	$vr9, 0
	vst	$vr9, $s1, 680
	ld.d	$a0, $s2, 48
	st.d	$a0, $s1, 488
	ld.bu	$a0, $s2, 62
	st.b	$a0, $s1, 480
	ld.b	$a1, $s2, 63
	st.b	$a1, $s1, 481
	bnez	$a0, .LBB39_52
# %bb.1:
	ld.w	$s3, $s2, 64
	vld	$vr0, $s2, 68
	pcalau12i	$a0, %pc_hi20(.LCPI39_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI39_0)
	pcalau12i	$a0, %pc_hi20(.LCPI39_1)
	vld	$vr2, $a0, %pc_lo12(.LCPI39_1)
	addi.d	$a0, $s2, 68
	ld.w	$s4, $s2, 84
	vshuf.b	$vr1, $vr9, $vr0, $vr1
	vshuf.b	$vr2, $vr9, $vr0, $vr2
	pcalau12i	$a1, %pc_hi20(.LCPI39_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI39_2)
	pcalau12i	$a1, %pc_hi20(.LCPI39_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI39_3)
	vslli.d	$vr2, $vr2, 8
	vshuf.b	$vr3, $vr9, $vr0, $vr3
	vslli.d	$vr3, $vr3, 16
	vshuf.b	$vr4, $vr9, $vr0, $vr4
	vslli.d	$vr4, $vr4, 24
	pcalau12i	$a1, %pc_hi20(.LCPI39_4)
	vld	$vr5, $a1, %pc_lo12(.LCPI39_4)
	pcalau12i	$a1, %pc_hi20(.LCPI39_5)
	vld	$vr6, $a1, %pc_lo12(.LCPI39_5)
	pcalau12i	$a1, %pc_hi20(.LCPI39_6)
	vld	$vr7, $a1, %pc_lo12(.LCPI39_6)
	pcalau12i	$a1, %pc_hi20(.LCPI39_7)
	vld	$vr8, $a1, %pc_lo12(.LCPI39_7)
	vshuf.b	$vr5, $vr9, $vr0, $vr5
	vshuf.b	$vr6, $vr9, $vr0, $vr6
	vst	$vr9, $sp, 0                    # 16-byte Folded Spill
	vshuf.b	$vr7, $vr9, $vr0, $vr7
	vshuf.b	$vr0, $vr0, $vr0, $vr8
	vslli.d	$vr0, $vr0, 56
	vslli.d	$vr7, $vr7, 48
	vslli.d	$vr6, $vr6, 40
	vslli.d	$vr5, $vr5, 32
	vor.v	$vr1, $vr2, $vr1
	vor.v	$vr1, $vr1, $vr3
	vor.v	$vr1, $vr1, $vr4
	vor.v	$vr1, $vr1, $vr5
	vor.v	$vr1, $vr1, $vr6
	vor.v	$vr1, $vr1, $vr7
	vor.v	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$a1, $zero, 20
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	bnez	$s3, .LBB39_11
# %bb.2:
	vseqi.d	$vr0, $vr1, 0
	vpickve2gr.d	$a1, $vr0, 1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB39_11
# %bb.3:
	vpickve2gr.d	$a1, $vr0, 0
	andi	$a1, $a1, 1
	beqz	$a1, .LBB39_11
# %bb.4:
	bnez	$s4, .LBB39_11
# %bb.5:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 48
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 40
	move	$a1, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB39_50
# %bb.6:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 48
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 560
	move	$a1, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB39_50
# %bb.7:
	ld.d	$a1, $sp, 560
	ld.d	$a2, $sp, 40
	ld.d	$a0, $s2, 0
	sub.d	$s4, $a1, $a2
	ld.d	$a1, $a0, 0
	sltui	$a2, $s4, 500
	maskeqz	$a3, $s4, $a2
	ori	$a4, $zero, 500
	ld.d	$a5, $a1, 48
	masknez	$a1, $a4, $a2
	or	$s3, $a3, $a1
	sub.d	$a1, $zero, $s3
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 560
	jirl	$ra, $a5, 0
	bnez	$a0, .LBB39_50
# %bb.8:
	ld.d	$a0, $s2, 0
	addi.d	$a1, $sp, 56
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_Z16ReadStream_FALSEP19ISequentialInStreamPvm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_50
# %bb.9:
	ori	$a1, $zero, 2
	ori	$a0, $zero, 1
	bltu	$s4, $a1, .LBB39_50
# %bb.10:                               # %.lr.ph.preheader
	move	$s6, $zero
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 0
	add.d	$a0, $s3, $a0
	bstrpick.d	$s7, $a0, 31, 0
	addi.d	$a1, $s3, -1
	addi.d	$a0, $sp, 56
	add.d	$a2, $a0, $s7
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	ori	$a5, $zero, 23
	ori	$a6, $zero, 6
	b	.LBB39_44
.LBB39_11:
	bne	$a0, $s3, .LBB39_52
# %bb.12:
	vpickve2gr.d	$s5, $vr1, 0
	vpickve2gr.d	$s6, $vr1, 1
	ld.d	$a0, $s2, 48
	addi.d	$a0, $a0, 32
	st.d	$a0, $s1, 496
	beqz	$s5, .LBB39_49
.LBB39_13:
	srli.d	$a1, $s5, 32
	ori	$a0, $zero, 1
	bnez	$a1, .LBB39_50
# %bb.14:
	bltz	$s6, .LBB39_50
# %bb.15:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 48
	ori	$a2, $zero, 1
	move	$a1, $s6
	move	$a3, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB39_50
# %bb.16:                               # %_ZN7CBufferIhE11SetCapacityEm.exit
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	move	$s3, $a0
.Ltmp285:
	move	$a0, $a1
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_Z16ReadStream_FALSEP19ISequentialInStreamPvm)
	jirl	$ra, $ra, 0
.Ltmp286:
# %bb.17:
	move	$s7, $a0
	bnez	$a0, .LBB39_41
# %bb.18:
	ld.d	$a0, $s2, 88
	addi.d	$a1, $s5, 32
	add.d	$a0, $a1, $a0
	st.d	$a0, $s2, 88
	add.d	$a0, $a1, $s6
	st.d	$a0, $s1, 688
.Ltmp288:
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
.Ltmp289:
# %bb.19:
	bne	$a0, $s4, .LBB39_53
# %bb.20:                               # %_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit.i
	st.b	$zero, $sp, 48
	st.d	$s2, $sp, 40
.Ltmp293:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp294:
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
# %bb.21:                               # %.noexc163
	move	$s6, $a0
	addi.d	$s4, $s2, 8
	st.d	$zero, $a0, 16
	vst	$vr0, $a0, 0
.Ltmp295:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
.Ltmp296:
# %bb.22:
	ld.w	$a0, $s2, 20
	ld.d	$a1, $s2, 24
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	ld.d	$a1, $s2, 24
	addi.w	$a0, $a0, 1
	st.w	$a0, $s2, 20
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $s2, 40
	st.d	$s3, $a0, 0
	st.d	$s5, $a0, 8
	st.d	$zero, $a0, 16
	ori	$s6, $zero, 1
	st.b	$s6, $sp, 48
	vst	$vr0, $sp, 64
	ori	$a1, $zero, 8
	st.d	$a1, $sp, 80
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorI7CBufferIhEE+16)
	addi.d	$s5, $a1, %pc_lo12(_ZTV13CObjectVectorI7CBufferIhEE+16)
	st.d	$s5, $sp, 56
.Ltmp298:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
.Ltmp299:
# %bb.23:                               # %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit
	beq	$a0, $s6, .LBB39_35
# %bb.24:                               # %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit
	ori	$a1, $zero, 23
	bne	$a0, $a1, .LBB39_55
# %bb.25:
	ld.d	$a1, $s1, 496
	addi.d	$a2, $s1, 512
.Ltmp300:
	addi.d	$a3, $sp, 56
	move	$a0, $s2
	move	$a4, $s0
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb)
	jirl	$ra, $ra, 0
.Ltmp301:
# %bb.26:
	bnez	$a0, .LBB39_36
# %bb.27:
	ld.w	$a0, $sp, 68
	beqz	$a0, .LBB39_51
# %bb.28:
	ori	$a1, $zero, 1
	blt	$a1, $a0, .LBB39_57
# %bb.29:
.Ltmp302:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
.Ltmp303:
# %bb.30:                               # %.noexc170
	ld.w	$a0, $s2, 20
	beqz	$a0, .LBB39_32
# %bb.31:
	ld.d	$a1, $s2, 24
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $s2, 40
.LBB39_32:                              # %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit
	ld.d	$a0, $sp, 72
	st.b	$zero, $sp, 48
	ld.d	$a2, $a0, 0
.Ltmp304:
	addi.d	$a0, $sp, 40
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveERK7CBufferIhE)
	jirl	$ra, $ra, 0
.Ltmp305:
# %bb.33:
	ld.d	$a0, $s2, 40
.Ltmp306:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CInByte210ReadNumberEv)
	jirl	$ra, $ra, 0
.Ltmp307:
# %bb.34:                               # %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit172
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB39_57
.LBB39_35:                              # %.thread199
	ld.d	$a0, $s2, 88
	st.d	$a0, $s1, 680
.Ltmp311:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb)
	jirl	$ra, $ra, 0
.Ltmp312:
.LBB39_36:
	move	$s7, $a0
	st.d	$s5, $sp, 56
.Ltmp313:
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp314:
# %bb.37:                               # %_ZN13CObjectVectorI7CBufferIhEED2Ev.exit
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 48
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB39_41
# %bb.38:
	ld.d	$fp, $sp, 40
	addi.d	$a0, $fp, 8
.Ltmp316:
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
.Ltmp317:
# %bb.39:                               # %.noexc.i
	ld.w	$a0, $fp, 20
	beqz	$a0, .LBB39_41
# %bb.40:
	ld.d	$a1, $fp, 24
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	st.d	$a0, $fp, 40
.LBB39_41:                              # %_ZN7CBufferIhED2Ev.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	b	.LBB39_50
.LBB39_42:                              #   in Loop: Header=BB39_44 Depth=1
	add.d	$a0, $a2, $s6
	ld.bu	$a0, $a0, 1
	beq	$a0, $a4, .LBB39_47
.LBB39_43:                              # %.thread
                                        #   in Loop: Header=BB39_44 Depth=1
	addi.d	$s6, $s6, -1
	addi.w	$a1, $a1, -1
	ori	$a0, $zero, 1
	blez	$a1, .LBB39_50
.LBB39_44:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $a2, $s6
	beq	$a0, $a3, .LBB39_42
# %bb.45:                               # %.lr.ph
                                        #   in Loop: Header=BB39_44 Depth=1
	bne	$a0, $a5, .LBB39_43
# %bb.46:                               #   in Loop: Header=BB39_44 Depth=1
	add.d	$a0, $a2, $s6
	ld.bu	$a0, $a0, 1
	bne	$a0, $a6, .LBB39_43
.LBB39_47:
	ori	$a0, $zero, 2
	sub.d	$s5, $a0, $s6
	ld.d	$s3, $sp, 560
	ld.d	$s8, $sp, 40
	addi.d	$a0, $sp, 56
	add.d	$a0, $a0, $s7
	add.d	$a0, $a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 0
	ld.d	$a3, $a2, 0
	ld.d	$a1, $sp, 40
	ld.d	$a4, $a3, 48
	move	$s4, $a0
	move	$a0, $a2
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB39_50
# %bb.48:
	sub.d	$a0, $s3, $s8
	add.d	$a0, $s7, $a0
	add.d	$s6, $a0, $s6
	ld.d	$a0, $s2, 48
	addi.d	$a0, $a0, 32
	st.d	$a0, $s1, 496
	bnez	$s5, .LBB39_13
.LBB39_49:
	move	$a0, $zero
.LBB39_50:
	ld.d	$s8, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 632                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 648                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 656
	ret
.LBB39_51:
	move	$a0, $zero
	b	.LBB39_36
.LBB39_52:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.LBB39_53:
.Ltmp290:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Ltmp291:
# %bb.54:                               # %.noexc160
.LBB39_55:
.Ltmp319:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Ltmp320:
# %bb.56:                               # %.noexc166
.LBB39_57:                              # %.invoke
.Ltmp308:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL14ThrowExceptionEv)
	jirl	$ra, $ra, 0
.Ltmp309:
# %bb.58:                               # %.cont
.LBB39_59:
.Ltmp318:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB39_60:
.Ltmp315:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB39_61:
.Ltmp310:
	b	.LBB39_65
.LBB39_62:
.Ltmp297:
	move	$fp, $a0
	b	.LBB39_66
.LBB39_63:                              # %.thread210
.Ltmp292:
	b	.LBB39_68
.LBB39_64:
.Ltmp321:
.LBB39_65:
	move	$fp, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI7CBufferIhEED2Ev)
	jirl	$ra, $ra, 0
.LBB39_66:
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z13CStreamSwitchD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB39_67:
.Ltmp287:
.LBB39_68:                              # %.thread203
	move	$fp, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end39:
	.size	_ZN8NArchive3N7z10CInArchive13ReadDatabase2ERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb, .Lfunc_end39-_ZN8NArchive3N7z10CInArchive13ReadDatabase2ERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table39:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp285-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp285
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp287-.Lfunc_begin12        #     jumps to .Ltmp287
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp292-.Lfunc_begin12        #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Ltmp296-.Ltmp293              #   Call between .Ltmp293 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin12        #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin12        # >> Call Site 5 <<
	.uleb128 .Ltmp299-.Ltmp298              #   Call between .Ltmp298 and .Ltmp299
	.uleb128 .Ltmp321-.Lfunc_begin12        #     jumps to .Ltmp321
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin12        # >> Call Site 6 <<
	.uleb128 .Ltmp307-.Ltmp300              #   Call between .Ltmp300 and .Ltmp307
	.uleb128 .Ltmp310-.Lfunc_begin12        #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin12        # >> Call Site 7 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp321-.Lfunc_begin12        #     jumps to .Ltmp321
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp313-.Lfunc_begin12        # >> Call Site 8 <<
	.uleb128 .Ltmp314-.Ltmp313              #   Call between .Ltmp313 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin12        #     jumps to .Ltmp315
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp314-.Lfunc_begin12        # >> Call Site 9 <<
	.uleb128 .Ltmp316-.Ltmp314              #   Call between .Ltmp314 and .Ltmp316
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin12        # >> Call Site 10 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp318-.Lfunc_begin12        #     jumps to .Ltmp318
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp317-.Lfunc_begin12        # >> Call Site 11 <<
	.uleb128 .Ltmp290-.Ltmp317              #   Call between .Ltmp317 and .Ltmp290
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin12        # >> Call Site 12 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin12        #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin12        # >> Call Site 13 <<
	.uleb128 .Ltmp320-.Ltmp319              #   Call between .Ltmp319 and .Ltmp320
	.uleb128 .Ltmp321-.Lfunc_begin12        #     jumps to .Ltmp321
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin12        # >> Call Site 14 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin12        #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin12        # >> Call Site 15 <<
	.uleb128 .Lfunc_end39-.Ltmp309          #   Call between .Ltmp309 and .Lfunc_end39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3N7z10CInArchive12ReadDatabaseERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb # -- Begin function _ZN8NArchive3N7z10CInArchive12ReadDatabaseERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb
	.p2align	5
	.type	_ZN8NArchive3N7z10CInArchive12ReadDatabaseERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb,@function
_ZN8NArchive3N7z10CInArchive12ReadDatabaseERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb: # @_ZN8NArchive3N7z10CInArchive12ReadDatabaseERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
.Ltmp322:
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z10CInArchive13ReadDatabase2ERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb)
	jirl	$ra, $ra, 0
.Ltmp323:
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB40_2:
.Ltmp324:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end40:
	.size	_ZN8NArchive3N7z10CInArchive12ReadDatabaseERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb, .Lfunc_end40-_ZN8NArchive3N7z10CInArchive12ReadDatabaseERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table40:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp322-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp323-.Ltmp322              #   Call between .Ltmp322 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin13        #     jumps to .Ltmp324
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp323-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Lfunc_end40-.Ltmp323          #   Call between .Ltmp323 and .Lfunc_end40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp325:                               # TypeInfo 1
	.word	.L_ZTIN8NArchive3N7z19CInArchiveExceptionE.DW.stub-.Ltmp325
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function _ZN8NArchive3N7zL14ThrowExceptionEv
	.type	_ZN8NArchive3N7zL14ThrowExceptionEv,@function
_ZN8NArchive3N7zL14ThrowExceptionEv:    # @_ZN8NArchive3N7zL14ThrowExceptionEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN8NArchive3N7z19CInArchiveExceptionE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN8NArchive3N7z19CInArchiveExceptionE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end41:
	.size	_ZN8NArchive3N7zL14ThrowExceptionEv, .Lfunc_end41-_ZN8NArchive3N7zL14ThrowExceptionEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp326:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp327:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB42_2:
.Ltmp328:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev, .Lfunc_end42-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table42:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp326-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp327-.Ltmp326              #   Call between .Ltmp326 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin14        #     jumps to .Ltmp328
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp327-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Lfunc_end42-.Ltmp327          #   Call between .Ltmp327 and .Lfunc_end42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp329:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp330:
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev.exit
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
.LBB43_2:
.Ltmp331:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev, .Lfunc_end43-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table43:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp329-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp330-.Ltmp329              #   Call between .Ltmp329 and .Ltmp330
	.uleb128 .Ltmp331-.Lfunc_begin15        #     jumps to .Ltmp331
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp330-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Lfunc_end43-.Ltmp330          #   Call between .Ltmp330 and .Lfunc_end43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii
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
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB44_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	b	.LBB44_4
	.p2align	4, , 16
.LBB44_2:                               # %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit
                                        #   in Loop: Header=BB44_4 Depth=1
	ori	$a1, $zero, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB44_3:                               #   in Loop: Header=BB44_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB44_7
.LBB44_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB44_3
# %bb.5:                                #   in Loop: Header=BB44_4 Depth=1
	ld.d	$a0, $s2, 24
	st.d	$s5, $s2, 8
	beqz	$a0, .LBB44_2
# %bb.6:                                #   in Loop: Header=BB44_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB44_2
.LBB44_7:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
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
.Lfunc_end44:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii, .Lfunc_end44-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev,"axG",@progbits,_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev,comdat
	.weak	_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev # -- Begin function _ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev,@function
_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev: # @_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev
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
.Lfunc_end45:
	.size	_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev, .Lfunc_end45-_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev
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
.Lfunc_end46:
	.size	__clang_call_terminate, .Lfunc_end46-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev # -- Begin function _ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev,@function
_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev: # @_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	st.d	$a0, $fp, 0
.Ltmp332:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp333:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB47_2:
.Ltmp334:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end47:
	.size	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev, .Lfunc_end47-_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table47:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp332-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp333-.Ltmp332              #   Call between .Ltmp332 and .Ltmp333
	.uleb128 .Ltmp334-.Lfunc_begin16        #     jumps to .Ltmp334
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp333-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Lfunc_end47-.Ltmp333          #   Call between .Ltmp333 and .Lfunc_end47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev # -- Begin function _ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev,@function
_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev: # @_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	st.d	$a0, $fp, 0
.Ltmp335:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp336:
# %bb.1:                                # %_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev.exit
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
.LBB48_2:
.Ltmp337:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end48:
	.size	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev, .Lfunc_end48-_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table48:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp335-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp336-.Ltmp335              #   Call between .Ltmp335 and .Ltmp336
	.uleb128 .Ltmp337-.Lfunc_begin17        #     jumps to .Ltmp337
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp336-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Lfunc_end48-.Ltmp336          #   Call between .Ltmp336 and .Lfunc_end48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii # -- Begin function _ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii,@function
_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii: # @_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
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
	blt	$s1, $a0, .LBB49_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB49_4
	.p2align	4, , 16
.LBB49_2:                               # %_ZN9CMyComPtrI8IUnknownED2Ev.exit
                                        #   in Loop: Header=BB49_4 Depth=1
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB49_3:                               #   in Loop: Header=BB49_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB49_7
.LBB49_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB49_3
# %bb.5:                                #   in Loop: Header=BB49_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB49_2
# %bb.6:                                #   in Loop: Header=BB49_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp338:
	jirl	$ra, $a1, 0
.Ltmp339:
	b	.LBB49_2
.LBB49_7:                               # %._crit_edge
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
.LBB49_8:
.Ltmp340:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end49:
	.size	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii, .Lfunc_end49-_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table49:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp338-.Lfunc_begin18        #   Call between .Lfunc_begin18 and .Ltmp338
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp339-.Ltmp338              #   Call between .Ltmp338 and .Ltmp339
	.uleb128 .Ltmp340-.Lfunc_begin18        #     jumps to .Ltmp340
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp339-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Lfunc_end49-.Ltmp339          #   Call between .Ltmp339 and .Lfunc_end49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive3N7z16CArchiveDatabase5ClearEv,"axG",@progbits,_ZN8NArchive3N7z16CArchiveDatabase5ClearEv,comdat
	.weak	_ZN8NArchive3N7z16CArchiveDatabase5ClearEv # -- Begin function _ZN8NArchive3N7z16CArchiveDatabase5ClearEv
	.p2align	5
	.type	_ZN8NArchive3N7z16CArchiveDatabase5ClearEv,@function
_ZN8NArchive3N7z16CArchiveDatabase5ClearEv: # @_ZN8NArchive3N7z16CArchiveDatabase5ClearEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 96
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 128
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 160
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 192
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 224
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 256
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 288
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 320
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 352
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 384
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 416
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 448
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector5ClearEv)
	jr	$t8
.Lfunc_end50:
	.size	_ZN8NArchive3N7z16CArchiveDatabase5ClearEv, .Lfunc_end50-_ZN8NArchive3N7z16CArchiveDatabase5ClearEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7CBufferIhED0Ev,"axG",@progbits,_ZN7CBufferIhED0Ev,comdat
	.weak	_ZN7CBufferIhED0Ev              # -- Begin function _ZN7CBufferIhED0Ev
	.p2align	5
	.type	_ZN7CBufferIhED0Ev,@function
_ZN7CBufferIhED0Ev:                     # @_ZN7CBufferIhED0Ev
# %bb.0:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV7CBufferIhE+16)
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB51_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB51_2:                               # %_ZN7CBufferIhED2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end51:
	.size	_ZN7CBufferIhED0Ev, .Lfunc_end51-_ZN7CBufferIhED0Ev
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
.Lfunc_end52:
	.size	_ZN13CRecordVectorIjED0Ev, .Lfunc_end52-_ZN13CRecordVectorIjED0Ev
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
.Lfunc_end53:
	.size	_ZN13CRecordVectorIyED0Ev, .Lfunc_end53-_ZN13CRecordVectorIyED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIbED0Ev,"axG",@progbits,_ZN13CRecordVectorIbED0Ev,comdat
	.weak	_ZN13CRecordVectorIbED0Ev       # -- Begin function _ZN13CRecordVectorIbED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIbED0Ev,@function
_ZN13CRecordVectorIbED0Ev:              # @_ZN13CRecordVectorIbED0Ev
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
.Lfunc_end54:
	.size	_ZN13CRecordVectorIbED0Ev, .Lfunc_end54-_ZN13CRecordVectorIbED0Ev
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
.Lfunc_end55:
	.size	_ZN13CRecordVectorIiED0Ev, .Lfunc_end55-_ZN13CRecordVectorIiED0Ev
                                        # -- End function
	.section	.text._ZN8NArchive3N7z7CFolderC2ERKS1_,"axG",@progbits,_ZN8NArchive3N7z7CFolderC2ERKS1_,comdat
	.weak	_ZN8NArchive3N7z7CFolderC2ERKS1_ # -- Begin function _ZN8NArchive3N7z7CFolderC2ERKS1_
	.p2align	5
	.type	_ZN8NArchive3N7z7CFolderC2ERKS1_,@function
_ZN8NArchive3N7z7CFolderC2ERKS1_:       # @_ZN8NArchive3N7z7CFolderC2ERKS1_
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s1, $a1
	move	$fp, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $a0, 8
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 24
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp341:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp342:
# %bb.1:                                # %.noexc.i
.Ltmp343:
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_)
	jirl	$ra, $ra, 0
.Ltmp344:
# %bb.2:                                # %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEC2ERKS3_.exit
	addi.d	$s0, $fp, 32
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 40
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 56
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE+16)
	st.d	$a0, $fp, 32
.Ltmp346:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp347:
# %bb.3:                                # %.noexc.i11
	ld.w	$s3, $s1, 44
	ld.w	$a0, $fp, 44
	add.w	$a1, $a0, $s3
.Ltmp348:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp349:
# %bb.4:                                # %.noexc3.i
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB56_8
# %bb.5:                                # %.lr.ph.i.i.i
	move	$s2, $zero
	slli.d	$s3, $s3, 3
	.p2align	4, , 16
.LBB56_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 48
	ldx.d	$s4, $a0, $s2
.Ltmp351:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp352:
# %bb.7:                                # %.noexc4.i
                                        #   in Loop: Header=BB56_6 Depth=1
	ld.w	$a0, $fp, 44
	ld.d	$a1, $fp, 48
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a1, $a0
	ld.w	$a0, $fp, 44
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	st.w	$a0, $fp, 44
	bne	$s3, $s2, .LBB56_6
.LBB56_8:                               # %_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEEC2ERKS3_.exit
	addi.d	$s2, $fp, 64
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 72
	ori	$a0, $zero, 4
	st.d	$a0, $fp, 88
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a0, $fp, 64
.Ltmp354:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp355:
# %bb.9:                                # %.noexc.i15
	ld.w	$s4, $s1, 76
	ld.w	$a0, $fp, 76
	add.w	$a1, $a0, $s4
.Ltmp356:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp357:
# %bb.10:                               # %.noexc3.i16
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB56_14
# %bb.11:                               # %.lr.ph.i.i.i17
	move	$s3, $zero
	slli.d	$s4, $s4, 2
	.p2align	4, , 16
.LBB56_12:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 80
	ldx.w	$s5, $a0, $s3
.Ltmp359:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp360:
# %bb.13:                               # %.noexc4.i22
                                        #   in Loop: Header=BB56_12 Depth=1
	ld.w	$a0, $fp, 76
	ld.d	$a1, $fp, 80
	slli.d	$a0, $a0, 2
	stx.w	$s5, $a1, $a0
	ld.w	$a0, $fp, 76
	addi.d	$a0, $a0, 1
	addi.d	$s3, $s3, 4
	st.w	$a0, $fp, 76
	bne	$s4, $s3, .LBB56_12
.LBB56_14:                              # %_ZN13CRecordVectorIjEC2ERKS0_.exit
	addi.d	$s3, $fp, 96
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 104
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 120
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a0, $fp, 96
.Ltmp362:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp363:
# %bb.15:                               # %.noexc.i30
	ld.w	$s5, $s1, 108
	ld.w	$a0, $fp, 108
	add.w	$a1, $a0, $s5
.Ltmp364:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp365:
# %bb.16:                               # %.noexc3.i31
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB56_20
# %bb.17:                               # %.lr.ph.i.i.i32
	move	$s4, $zero
	slli.d	$s5, $s5, 3
	.p2align	4, , 16
.LBB56_18:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 112
	ldx.d	$s6, $a0, $s4
.Ltmp367:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp368:
# %bb.19:                               # %.noexc4.i37
                                        #   in Loop: Header=BB56_18 Depth=1
	ld.w	$a0, $fp, 108
	ld.d	$a1, $fp, 112
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s4, $s4, 8
	st.w	$a0, $fp, 108
	bne	$s5, $s4, .LBB56_18
.LBB56_20:                              # %_ZN13CRecordVectorIyEC2ERKS0_.exit
	ld.b	$a0, $s1, 132
	st.b	$a0, $fp, 132
	ld.w	$a0, $s1, 128
	st.w	$a0, $fp, 128
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
.LBB56_21:                              # %.loopexit.split-lp.i27
.Ltmp366:
	b	.LBB56_26
.LBB56_22:                              # %.loopexit.split-lp.i12
.Ltmp358:
	b	.LBB56_28
.LBB56_23:                              # %.loopexit.split-lp.i
.Ltmp350:
	b	.LBB56_31
.LBB56_24:
.Ltmp345:
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB56_25:                              # %.loopexit.i35
.Ltmp369:
.LBB56_26:                              # %.body40
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB56_29
.LBB56_27:                              # %.loopexit.i20
.Ltmp361:
.LBB56_28:                              # %.body25
	move	$s1, $a0
.LBB56_29:                              # %.body25
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB56_32
.LBB56_30:                              # %.loopexit.i
.Ltmp353:
.LBB56_31:                              # %.body
	move	$s1, $a0
.LBB56_32:                              # %.body
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end56:
	.size	_ZN8NArchive3N7z7CFolderC2ERKS1_, .Lfunc_end56-_ZN8NArchive3N7z7CFolderC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z7CFolderC2ERKS1_,"aG",@progbits,_ZN8NArchive3N7z7CFolderC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table56:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp341-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp344-.Ltmp341              #   Call between .Ltmp341 and .Ltmp344
	.uleb128 .Ltmp345-.Lfunc_begin19        #     jumps to .Ltmp345
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Ltmp349-.Ltmp346              #   Call between .Ltmp346 and .Ltmp349
	.uleb128 .Ltmp350-.Lfunc_begin19        #     jumps to .Ltmp350
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin19        # >> Call Site 3 <<
	.uleb128 .Ltmp352-.Ltmp351              #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin19        #     jumps to .Ltmp353
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin19        # >> Call Site 4 <<
	.uleb128 .Ltmp357-.Ltmp354              #   Call between .Ltmp354 and .Ltmp357
	.uleb128 .Ltmp358-.Lfunc_begin19        #     jumps to .Ltmp358
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp359-.Lfunc_begin19        # >> Call Site 5 <<
	.uleb128 .Ltmp360-.Ltmp359              #   Call between .Ltmp359 and .Ltmp360
	.uleb128 .Ltmp361-.Lfunc_begin19        #     jumps to .Ltmp361
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp362-.Lfunc_begin19        # >> Call Site 6 <<
	.uleb128 .Ltmp365-.Ltmp362              #   Call between .Ltmp362 and .Ltmp365
	.uleb128 .Ltmp366-.Lfunc_begin19        #     jumps to .Ltmp366
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp367-.Lfunc_begin19        # >> Call Site 7 <<
	.uleb128 .Ltmp368-.Ltmp367              #   Call between .Ltmp367 and .Ltmp368
	.uleb128 .Ltmp369-.Lfunc_begin19        #     jumps to .Ltmp369
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp368-.Lfunc_begin19        # >> Call Site 8 <<
	.uleb128 .Lfunc_end56-.Ltmp368          #   Call between .Ltmp368 and .Lfunc_end56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_ # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
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
	ld.w	$s1, $a1, 12
	ld.w	$a0, $a0, 12
	add.w	$a1, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB57_6
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s1, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	b	.LBB57_3
	.p2align	4, , 16
.LBB57_2:                               # %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE3AddERKS2_.exit
                                        #   in Loop: Header=BB57_3 Depth=1
	ld.d	$a0, $s6, 32
	st.d	$a0, $s1, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a0, 3
	stx.d	$s1, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s3, $s3, 8
	st.w	$a0, $fp, 12
	beq	$s4, $s3, .LBB57_6
.LBB57_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.d	$s6, $a0, $s3
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $s6, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $s1, 16
	ld.d	$s2, $s6, 16
	st.d	$a0, $s1, 0
	st.d	$s5, $s1, 8
	beqz	$s2, .LBB57_2
# %bb.4:                                # %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
                                        #   in Loop: Header=BB57_3 Depth=1
.Ltmp370:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp371:
# %bb.5:                                # %.noexc.i
                                        #   in Loop: Header=BB57_3 Depth=1
	st.d	$a0, $s1, 24
	ld.d	$a1, $s6, 24
	st.d	$s2, $s1, 16
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB57_2
.LBB57_6:                               # %._crit_edge
	move	$a0, $fp
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
.LBB57_7:
.Ltmp372:
	move	$fp, $a0
	ori	$a1, $zero, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end57:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_, .Lfunc_end57-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,comdat
	.p2align	2, 0x0
GCC_except_table57:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp370-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp370
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp370-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp371-.Ltmp370              #   Call between .Ltmp370 and .Ltmp371
	.uleb128 .Ltmp372-.Lfunc_begin20        #     jumps to .Ltmp372
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp371-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Lfunc_end57-.Ltmp371          #   Call between .Ltmp371 and .Lfunc_end57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev: # @_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE+16)
	st.d	$a0, $fp, 0
.Ltmp373:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp374:
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev.exit
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
.LBB58_2:
.Ltmp375:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end58:
	.size	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev, .Lfunc_end58-_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table58:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp373-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp374-.Ltmp373              #   Call between .Ltmp373 and .Ltmp374
	.uleb128 .Ltmp375-.Lfunc_begin21        #     jumps to .Ltmp375
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp374-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Lfunc_end58-.Ltmp374          #   Call between .Ltmp374 and .Lfunc_end58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception22
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
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB59_6
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	b	.LBB59_3
	.p2align	4, , 16
.LBB59_2:                               #   in Loop: Header=BB59_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB59_6
.LBB59_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB59_2
# %bb.4:                                #   in Loop: Header=BB59_3 Depth=1
	addi.d	$a0, $s2, 96
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s2, 64
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s5, $s2, 0
.Ltmp376:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp377:
# %bb.5:                                # %_ZN8NArchive3N7z7CFolderD2Ev.exit
                                        #   in Loop: Header=BB59_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB59_2
.LBB59_6:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
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
.LBB59_7:
.Ltmp378:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end59:
	.size	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii, .Lfunc_end59-_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table59:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Lfunc_begin22-.Lfunc_begin22  # >> Call Site 1 <<
	.uleb128 .Ltmp376-.Lfunc_begin22        #   Call between .Lfunc_begin22 and .Ltmp376
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp376-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Ltmp377-.Ltmp376              #   Call between .Ltmp376 and .Ltmp377
	.uleb128 .Ltmp378-.Lfunc_begin22        #     jumps to .Ltmp378
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp377-.Lfunc_begin22        # >> Call Site 3 <<
	.uleb128 .Lfunc_end59-.Ltmp377          #   Call between .Ltmp377 and .Lfunc_end59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI7CBufferIhEED0Ev,"axG",@progbits,_ZN13CObjectVectorI7CBufferIhEED0Ev,comdat
	.weak	_ZN13CObjectVectorI7CBufferIhEED0Ev # -- Begin function _ZN13CObjectVectorI7CBufferIhEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI7CBufferIhEED0Ev,@function
_ZN13CObjectVectorI7CBufferIhEED0Ev:    # @_ZN13CObjectVectorI7CBufferIhEED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI7CBufferIhEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI7CBufferIhEE+16)
	st.d	$a0, $fp, 0
.Ltmp379:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp380:
# %bb.1:                                # %_ZN13CObjectVectorI7CBufferIhEED2Ev.exit
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
.LBB60_2:
.Ltmp381:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end60:
	.size	_ZN13CObjectVectorI7CBufferIhEED0Ev, .Lfunc_end60-_ZN13CObjectVectorI7CBufferIhEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI7CBufferIhEED0Ev,"aG",@progbits,_ZN13CObjectVectorI7CBufferIhEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table60:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp379-.Lfunc_begin23        # >> Call Site 1 <<
	.uleb128 .Ltmp380-.Ltmp379              #   Call between .Ltmp379 and .Ltmp380
	.uleb128 .Ltmp381-.Lfunc_begin23        #     jumps to .Ltmp381
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp380-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Lfunc_end60-.Ltmp380          #   Call between .Ltmp380 and .Lfunc_end60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI7CBufferIhEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI7CBufferIhEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI7CBufferIhEE6DeleteEii # -- Begin function _ZN13CObjectVectorI7CBufferIhEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI7CBufferIhEE6DeleteEii,@function
_ZN13CObjectVectorI7CBufferIhEE6DeleteEii: # @_ZN13CObjectVectorI7CBufferIhEE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB61_5
# %bb.1:                                # %.lr.ph
	move	$s2, $zero
	slli.d	$s3, $s0, 3
	b	.LBB61_3
	.p2align	4, , 16
.LBB61_2:                               #   in Loop: Header=BB61_3 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	bgeu	$s2, $s1, .LBB61_5
.LBB61_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$a0, $a0, $s3
	beqz	$a0, .LBB61_2
# %bb.4:                                #   in Loop: Header=BB61_3 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	b	.LBB61_2
.LBB61_5:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end61:
	.size	_ZN13CObjectVectorI7CBufferIhEE6DeleteEii, .Lfunc_end61-_ZN13CObjectVectorI7CBufferIhEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.type	_ZTIN8NArchive3N7z19CInArchiveExceptionE,@object # @_ZTIN8NArchive3N7z19CInArchiveExceptionE
	.section	.data.rel.ro._ZTIN8NArchive3N7z19CInArchiveExceptionE,"awG",@progbits,_ZTIN8NArchive3N7z19CInArchiveExceptionE,comdat
	.weak	_ZTIN8NArchive3N7z19CInArchiveExceptionE
	.p2align	3, 0x0
_ZTIN8NArchive3N7z19CInArchiveExceptionE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN8NArchive3N7z19CInArchiveExceptionE
	.size	_ZTIN8NArchive3N7z19CInArchiveExceptionE, 16

	.type	_ZTSN8NArchive3N7z19CInArchiveExceptionE,@object # @_ZTSN8NArchive3N7z19CInArchiveExceptionE
	.section	.rodata._ZTSN8NArchive3N7z19CInArchiveExceptionE,"aG",@progbits,_ZTSN8NArchive3N7z19CInArchiveExceptionE,comdat
	.weak	_ZTSN8NArchive3N7z19CInArchiveExceptionE
_ZTSN8NArchive3N7z19CInArchiveExceptionE:
	.asciz	"N8NArchive3N7z19CInArchiveExceptionE"
	.size	_ZTSN8NArchive3N7z19CInArchiveExceptionE, 37

	.type	_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,@object # @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.dword	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,@object # @_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,@object # @_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE:
	.asciz	"13CObjectVectorIN8NArchive3N7z10CCoderInfoEE"
	.size	_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, 45

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

	.type	_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE,@object # @_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.section	.data.rel.ro._ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE,"awG",@progbits,_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE,comdat
	.weak	_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.p2align	3, 0x0
_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE:
	.dword	0
	.dword	_ZTI13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE, 40

	.type	_ZTI13CRecordVectorIN8NArchive3N7z9CBindPairEE,@object # @_ZTI13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.section	.data.rel.ro._ZTI13CRecordVectorIN8NArchive3N7z9CBindPairEE,"awG",@progbits,_ZTI13CRecordVectorIN8NArchive3N7z9CBindPairEE,comdat
	.weak	_ZTI13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.p2align	3, 0x0
_ZTI13CRecordVectorIN8NArchive3N7z9CBindPairEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIN8NArchive3N7z9CBindPairEE, 24

	.type	_ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE,@object # @_ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.section	.rodata._ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE,"aG",@progbits,_ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE,comdat
	.weak	_ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE
_ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE:
	.asciz	"13CRecordVectorIN8NArchive3N7z9CBindPairEE"
	.size	_ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE, 43

	.type	_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE,@object # @_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE
	.section	.data.rel.ro._ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE,"awG",@progbits,_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE,comdat
	.weak	_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE
	.p2align	3, 0x0
_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE:
	.dword	0
	.dword	_ZTI13CObjectVectorI9CMyComPtrI8IUnknownEE
	.dword	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev
	.dword	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev
	.dword	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii
	.size	_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE, 40

	.type	_ZTI13CObjectVectorI9CMyComPtrI8IUnknownEE,@object # @_ZTI13CObjectVectorI9CMyComPtrI8IUnknownEE
	.section	.data.rel.ro._ZTI13CObjectVectorI9CMyComPtrI8IUnknownEE,"awG",@progbits,_ZTI13CObjectVectorI9CMyComPtrI8IUnknownEE,comdat
	.weak	_ZTI13CObjectVectorI9CMyComPtrI8IUnknownEE
	.p2align	3, 0x0
_ZTI13CObjectVectorI9CMyComPtrI8IUnknownEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI9CMyComPtrI8IUnknownEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI9CMyComPtrI8IUnknownEE, 24

	.type	_ZTS13CObjectVectorI9CMyComPtrI8IUnknownEE,@object # @_ZTS13CObjectVectorI9CMyComPtrI8IUnknownEE
	.section	.rodata._ZTS13CObjectVectorI9CMyComPtrI8IUnknownEE,"aG",@progbits,_ZTS13CObjectVectorI9CMyComPtrI8IUnknownEE,comdat
	.weak	_ZTS13CObjectVectorI9CMyComPtrI8IUnknownEE
_ZTS13CObjectVectorI9CMyComPtrI8IUnknownEE:
	.asciz	"13CObjectVectorI9CMyComPtrI8IUnknownEE"
	.size	_ZTS13CObjectVectorI9CMyComPtrI8IUnknownEE, 39

	.type	_ZTV7CBufferIhE,@object         # @_ZTV7CBufferIhE
	.section	.data.rel.ro._ZTV7CBufferIhE,"awG",@progbits,_ZTV7CBufferIhE,comdat
	.weak	_ZTV7CBufferIhE
	.p2align	3, 0x0
_ZTV7CBufferIhE:
	.dword	0
	.dword	_ZTI7CBufferIhE
	.dword	_ZN7CBufferIhED2Ev
	.dword	_ZN7CBufferIhED0Ev
	.size	_ZTV7CBufferIhE, 32

	.type	_ZTI7CBufferIhE,@object         # @_ZTI7CBufferIhE
	.section	.data.rel.ro._ZTI7CBufferIhE,"awG",@progbits,_ZTI7CBufferIhE,comdat
	.weak	_ZTI7CBufferIhE
	.p2align	3, 0x0
_ZTI7CBufferIhE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS7CBufferIhE
	.size	_ZTI7CBufferIhE, 16

	.type	_ZTS7CBufferIhE,@object         # @_ZTS7CBufferIhE
	.section	.rodata._ZTS7CBufferIhE,"aG",@progbits,_ZTS7CBufferIhE,comdat
	.weak	_ZTS7CBufferIhE
_ZTS7CBufferIhE:
	.asciz	"7CBufferIhE"
	.size	_ZTS7CBufferIhE, 12

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

	.type	_ZTV13CRecordVectorIbE,@object  # @_ZTV13CRecordVectorIbE
	.section	.data.rel.ro._ZTV13CRecordVectorIbE,"awG",@progbits,_ZTV13CRecordVectorIbE,comdat
	.weak	_ZTV13CRecordVectorIbE
	.p2align	3, 0x0
_ZTV13CRecordVectorIbE:
	.dword	0
	.dword	_ZTI13CRecordVectorIbE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIbED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIbE, 40

	.type	_ZTI13CRecordVectorIbE,@object  # @_ZTI13CRecordVectorIbE
	.section	.data.rel.ro._ZTI13CRecordVectorIbE,"awG",@progbits,_ZTI13CRecordVectorIbE,comdat
	.weak	_ZTI13CRecordVectorIbE
	.p2align	3, 0x0
_ZTI13CRecordVectorIbE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIbE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIbE, 24

	.type	_ZTS13CRecordVectorIbE,@object  # @_ZTS13CRecordVectorIbE
	.section	.rodata._ZTS13CRecordVectorIbE,"aG",@progbits,_ZTS13CRecordVectorIbE,comdat
	.weak	_ZTS13CRecordVectorIbE
_ZTS13CRecordVectorIbE:
	.asciz	"13CRecordVectorIbE"
	.size	_ZTS13CRecordVectorIbE, 19

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

	.type	_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE,@object # @_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive3N7z7CFolderEE
	.dword	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive3N7z7CFolderEE,@object # @_ZTI13CObjectVectorIN8NArchive3N7z7CFolderEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive3N7z7CFolderEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive3N7z7CFolderEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive3N7z7CFolderEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive3N7z7CFolderEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive3N7z7CFolderEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive3N7z7CFolderEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive3N7z7CFolderEE,@object # @_ZTS13CObjectVectorIN8NArchive3N7z7CFolderEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive3N7z7CFolderEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive3N7z7CFolderEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive3N7z7CFolderEE
_ZTS13CObjectVectorIN8NArchive3N7z7CFolderEE:
	.asciz	"13CObjectVectorIN8NArchive3N7z7CFolderEE"
	.size	_ZTS13CObjectVectorIN8NArchive3N7z7CFolderEE, 41

	.type	_ZTV13CObjectVectorI7CBufferIhEE,@object # @_ZTV13CObjectVectorI7CBufferIhEE
	.section	.data.rel.ro._ZTV13CObjectVectorI7CBufferIhEE,"awG",@progbits,_ZTV13CObjectVectorI7CBufferIhEE,comdat
	.weak	_ZTV13CObjectVectorI7CBufferIhEE
	.p2align	3, 0x0
_ZTV13CObjectVectorI7CBufferIhEE:
	.dword	0
	.dword	_ZTI13CObjectVectorI7CBufferIhEE
	.dword	_ZN13CObjectVectorI7CBufferIhEED2Ev
	.dword	_ZN13CObjectVectorI7CBufferIhEED0Ev
	.dword	_ZN13CObjectVectorI7CBufferIhEE6DeleteEii
	.size	_ZTV13CObjectVectorI7CBufferIhEE, 40

	.type	_ZTI13CObjectVectorI7CBufferIhEE,@object # @_ZTI13CObjectVectorI7CBufferIhEE
	.section	.data.rel.ro._ZTI13CObjectVectorI7CBufferIhEE,"awG",@progbits,_ZTI13CObjectVectorI7CBufferIhEE,comdat
	.weak	_ZTI13CObjectVectorI7CBufferIhEE
	.p2align	3, 0x0
_ZTI13CObjectVectorI7CBufferIhEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI7CBufferIhEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI7CBufferIhEE, 24

	.type	_ZTS13CObjectVectorI7CBufferIhEE,@object # @_ZTS13CObjectVectorI7CBufferIhEE
	.section	.rodata._ZTS13CObjectVectorI7CBufferIhEE,"aG",@progbits,_ZTS13CObjectVectorI7CBufferIhEE,comdat
	.weak	_ZTS13CObjectVectorI7CBufferIhEE
_ZTS13CObjectVectorI7CBufferIhEE:
	.asciz	"13CObjectVectorI7CBufferIhEE"
	.size	_ZTS13CObjectVectorI7CBufferIhEE, 29

	.data
	.p2align	3, 0x0
.L_ZTIN8NArchive3N7z19CInArchiveExceptionE.DW.stub:
	.dword	_ZTIN8NArchive3N7z19CInArchiveExceptionE
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
	.addrsig_sym _ZTIN8NArchive3N7z19CInArchiveExceptionE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSN8NArchive3N7z19CInArchiveExceptionE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTI13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.addrsig_sym _ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.addrsig_sym _ZTIi
	.addrsig_sym _ZTI13CObjectVectorI9CMyComPtrI8IUnknownEE
	.addrsig_sym _ZTS13CObjectVectorI9CMyComPtrI8IUnknownEE
	.addrsig_sym _ZTI7CBufferIhE
	.addrsig_sym _ZTS7CBufferIhE
	.addrsig_sym _ZTI13CRecordVectorIjE
	.addrsig_sym _ZTS13CRecordVectorIjE
	.addrsig_sym _ZTI13CRecordVectorIyE
	.addrsig_sym _ZTS13CRecordVectorIyE
	.addrsig_sym _ZTI13CRecordVectorIbE
	.addrsig_sym _ZTS13CRecordVectorIbE
	.addrsig_sym _ZTI13CRecordVectorIiE
	.addrsig_sym _ZTS13CRecordVectorIiE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive3N7z7CFolderEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive3N7z7CFolderEE
	.addrsig_sym _ZTI13CObjectVectorI7CBufferIhEE
	.addrsig_sym _ZTS13CObjectVectorI7CBufferIhEE
