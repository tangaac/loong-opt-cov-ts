	.file	"PropIDUtils.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z18ConvertUInt32ToHexjPw
.LCPI0_0:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4                               # 0x4
.LCPI0_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI0_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	5                               # 0x5
.LCPI0_3:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI0_4:
	.word	4294967295                      # 0xffffffff
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	15                              # 0xf
.LCPI0_5:
	.word	2684354560                      # 0xa0000000
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
	.text
	.globl	_Z18ConvertUInt32ToHexjPw
	.p2align	5
	.type	_Z18ConvertUInt32ToHexjPw,@function
_Z18ConvertUInt32ToHexjPw:              # @_Z18ConvertUInt32ToHexjPw
# %bb.0:
	bstrpick.d	$a2, $a0, 31, 4
	vinsgr2vr.w	$vr0, $a0, 0
	vreplvei.w	$vr1, $vr0, 0
	ori	$a3, $zero, 12
	lu32i.d	$a3, 8
	vreplgr2vr.d	$vr2, $a3
	vsrl.w	$vr2, $vr1, $vr2
	ori	$a3, $zero, 20
	lu32i.d	$a3, 16
	vreplgr2vr.d	$vr3, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	vld	$vr4, $a3, %pc_lo12(.LCPI0_0)
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	vld	$vr5, $a3, %pc_lo12(.LCPI0_1)
	vsrl.w	$vr1, $vr1, $vr3
	vinsgr2vr.w	$vr3, $a2, 0
	vshuf.w	$vr4, $vr0, $vr3
	vshuf.w	$vr5, $vr4, $vr2
	vrepli.w	$vr2, 15
	vand.v	$vr3, $vr5, $vr2
	vslti.wu	$vr4, $vr3, 10
	vrepli.w	$vr5, 48
	vor.v	$vr6, $vr3, $vr5
	vrepli.w	$vr7, 55
	vadd.w	$vr3, $vr3, $vr7
	vbitsel.v	$vr3, $vr3, $vr6, $vr4
	vst	$vr3, $a1, 16
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	vld	$vr3, $a2, %pc_lo12(.LCPI0_2)
	bstrpick.d	$a0, $a0, 31, 24
	vsrli.w	$vr4, $vr0, 28
	vinsgr2vr.w	$vr0, $a0, 1
	vshuf.w	$vr3, $vr1, $vr0
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_3)
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_4)
	pcalau12i	$a0, %pc_hi20(.LCPI0_5)
	vld	$vr6, $a0, %pc_lo12(.LCPI0_5)
	vand.v	$vr2, $vr3, $vr2
	vshuf.w	$vr0, $vr2, $vr4
	vand.v	$vr1, $vr3, $vr1
	vslt.wu	$vr1, $vr1, $vr6
	vor.v	$vr2, $vr0, $vr5
	vadd.w	$vr0, $vr0, $vr7
	vbitsel.v	$vr0, $vr0, $vr2, $vr1
	vst	$vr0, $a1, 0
	st.w	$zero, $a1, 32
	ret
.Lfunc_end0:
	.size	_Z18ConvertUInt32ToHexjPw, .Lfunc_end0-_Z18ConvertUInt32ToHexjPw
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z23ConvertPropertyToStringRK14tagPROPVARIANTjb
.LCPI1_0:
	.word	256                             # 0x100
	.word	128                             # 0x80
	.word	64                              # 0x40
	.word	32                              # 0x20
.LCPI1_1:
	.word	114                             # 0x72
	.word	119                             # 0x77
	.word	120                             # 0x78
	.word	114                             # 0x72
.LCPI1_2:
	.word	16                              # 0x10
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	2                               # 0x2
.LCPI1_3:
	.word	119                             # 0x77
	.word	120                             # 0x78
	.word	114                             # 0x72
	.word	119                             # 0x77
.LCPI1_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	5                               # 0x5
.LCPI1_5:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI1_6:
	.word	4294967295                      # 0xffffffff
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	15                              # 0xf
.LCPI1_7:
	.word	2684354560                      # 0xa0000000
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	10                              # 0xa
.LCPI1_8:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4                               # 0x4
.LCPI1_9:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb
	.p2align	5
	.type	_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb,@function
_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb: # @_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	addi.d	$a2, $a2, -9
	ori	$a4, $zero, 44
	bltu	$a4, $a2, .LBB1_33
# %bb.1:
	slli.d	$a2, $a2, 2
	pcalau12i	$a4, %pc_hi20(.LJTI1_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI1_0)
	ldx.w	$a2, $a4, $a2
	add.d	$a2, $a4, $a2
	jr	$a2
.LBB1_2:
	ld.hu	$a2, $a1, 0
	ori	$a4, $zero, 64
	bne	$a2, $a4, .LBB1_33
# %bb.3:
	ld.w	$a2, $a1, 12
	ld.w	$a4, $a1, 8
	or	$a2, $a2, $a4
	beqz	$a2, .LBB1_6
# %bb.4:
	addi.d	$a2, $a1, 8
	addi.d	$a1, $sp, 48
	move	$fp, $a0
	move	$a0, $a2
	move	$s0, $a3
	pcaddu18i	$ra, %call36(FileTimeToLocalFileTime)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	beqz	$a1, .LBB1_6
# %bb.5:
	move	$a3, $s0
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z23ConvertFileTimeToStringRK9_FILETIMEbb)
	jirl	$ra, $ra, 0
	b	.LBB1_34
.LBB1_6:
	st.d	$zero, $a0, 8
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 12
	b	.LBB1_34
.LBB1_7:
	ld.hu	$a2, $a1, 0
	ori	$a3, $zero, 19
	bne	$a2, $a3, .LBB1_33
# %bb.8:
	st.d	$zero, $a0, 8
	move	$fp, $a0
	ori	$a0, $zero, 16
	move	$s1, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	ld.wu	$s3, $s1, 8
	st.d	$s0, $fp, 0
	st.w	$zero, $s0, 0
	ori	$a1, $zero, 4
	bstrpick.d	$a2, $s3, 15, 12
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_0)
	vreplgr2vr.w	$vr1, $s3
	pcalau12i	$a3, %pc_hi20(.LCPI1_1)
	vld	$vr2, $a3, %pc_lo12(.LCPI1_1)
	vand.v	$vr0, $vr1, $vr0
	vseqi.w	$vr0, $vr0, 0
	vrepli.w	$vr3, 45
	vbitsel.v	$vr2, $vr2, $vr3, $vr0
	vst	$vr2, $sp, 52
	pcalau12i	$a3, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a3, %pc_lo12(.LCPI1_2)
	pcalau12i	$a3, %pc_hi20(_ZL11kPosixTypes)
	addi.d	$a3, $a3, %pc_lo12(_ZL11kPosixTypes)
	ldx.b	$a2, $a3, $a2
	vand.v	$vr1, $vr1, $vr2
	pcalau12i	$a3, %pc_hi20(.LCPI1_3)
	vld	$vr2, $a3, %pc_lo12(.LCPI1_3)
	st.w	$a1, $fp, 12
	st.w	$a2, $sp, 48
	vseqi.w	$vr1, $vr1, 0
	vbitsel.v	$vr2, $vr2, $vr3, $vr1
	vst	$vr2, $sp, 68
	andi	$a1, $s3, 1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 120
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 45
	maskeqz	$a3, $a3, $a1
	or	$a2, $a3, $a2
	andi	$a3, $s3, 2048
	st.w	$a2, $sp, 84
	bnez	$a3, .LBB1_35
# %bb.9:
	andi	$a2, $s3, 1024
	bnez	$a2, .LBB1_36
.LBB1_10:
	andi	$a2, $s3, 512
	beqz	$a2, .LBB1_12
.LBB1_11:
	ori	$a2, $zero, 116
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 84
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $sp, 84
.LBB1_12:
	st.w	$zero, $sp, 88
	st.w	$zero, $a0, 8
	st.w	$zero, $s0, 0
	addi.d	$a0, $sp, 48
	addi.d	$s4, $sp, 48
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$s5, $a0, 1
	ori	$a0, $zero, 4
	bne	$s5, $a0, .LBB1_37
# %bb.13:
	move	$a0, $fp
	b	.LBB1_39
.LBB1_14:
	ld.hu	$a2, $a1, 0
	ori	$a3, $zero, 19
	bne	$a2, $a3, .LBB1_33
# %bb.15:
	ld.wu	$a1, $a1, 8
	andi	$a2, $a1, 1
	bnez	$a2, .LBB1_45
# %bb.16:
	move	$a2, $zero
	andi	$a3, $a1, 2
	beqz	$a3, .LBB1_46
.LBB1_17:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 72
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 4
	beqz	$a3, .LBB1_47
.LBB1_18:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 83
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 8
	beqz	$a3, .LBB1_48
.LBB1_19:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 56
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 16
	beqz	$a3, .LBB1_49
.LBB1_20:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 68
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 32
	beqz	$a3, .LBB1_50
.LBB1_21:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 65
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 64
	beqz	$a3, .LBB1_51
.LBB1_22:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 100
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 256
	beqz	$a3, .LBB1_52
.LBB1_23:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 84
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 512
	beqz	$a3, .LBB1_53
.LBB1_24:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 115
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 1024
	beqz	$a3, .LBB1_54
.LBB1_25:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 114
	stx.w	$a5, $a3, $a4
	andi	$a3, $a1, 2048
	beqz	$a3, .LBB1_55
.LBB1_26:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 67
	stx.w	$a5, $a3, $a4
	lu12i.w	$a3, 1
	and	$a3, $a1, $a3
	beqz	$a3, .LBB1_56
.LBB1_27:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 79
	stx.w	$a5, $a3, $a4
	lu12i.w	$a3, 2
	and	$a3, $a1, $a3
	beqz	$a3, .LBB1_57
.LBB1_28:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 110
	stx.w	$a5, $a3, $a4
	lu12i.w	$a3, 4
	and	$a3, $a1, $a3
	beqz	$a3, .LBB1_58
.LBB1_29:
	slli.d	$a3, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a4, $sp, 48
	ori	$a5, $zero, 69
	stx.w	$a5, $a3, $a4
	lu12i.w	$a3, 8
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_59
	b	.LBB1_60
.LBB1_30:
	ld.hu	$a2, $a1, 0
	ori	$a3, $zero, 19
	bne	$a2, $a3, .LBB1_33
# %bb.31:
	ld.wu	$a1, $a1, 8
	srli.d	$a2, $a1, 4
	vinsgr2vr.w	$vr0, $a1, 0
	vreplvei.w	$vr1, $vr0, 0
	ori	$a3, $zero, 12
	lu32i.d	$a3, 8
	vreplgr2vr.d	$vr2, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI1_8)
	vld	$vr3, $a3, %pc_lo12(.LCPI1_8)
	pcalau12i	$a3, %pc_hi20(.LCPI1_9)
	vld	$vr4, $a3, %pc_lo12(.LCPI1_9)
	vsrl.w	$vr2, $vr1, $vr2
	vinsgr2vr.w	$vr5, $a2, 0
	vshuf.w	$vr3, $vr0, $vr5
	vshuf.w	$vr4, $vr3, $vr2
	vrepli.w	$vr2, 15
	vand.v	$vr3, $vr4, $vr2
	vslti.wu	$vr4, $vr3, 10
	vrepli.w	$vr5, 48
	vor.v	$vr6, $vr3, $vr5
	vrepli.w	$vr7, 55
	vadd.w	$vr3, $vr3, $vr7
	vbitsel.v	$vr3, $vr3, $vr6, $vr4
	vst	$vr3, $sp, 64
	srli.d	$a1, $a1, 24
	ori	$a2, $zero, 20
	lu32i.d	$a2, 16
	vreplgr2vr.d	$vr3, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI1_4)
	vld	$vr4, $a2, %pc_lo12(.LCPI1_4)
	vsrl.w	$vr1, $vr1, $vr3
	vsrli.w	$vr3, $vr0, 28
	vinsgr2vr.w	$vr0, $a1, 1
	vshuf.w	$vr4, $vr1, $vr0
	pcalau12i	$a1, %pc_hi20(.LCPI1_5)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_5)
	pcalau12i	$a1, %pc_hi20(.LCPI1_6)
	vld	$vr1, $a1, %pc_lo12(.LCPI1_6)
	pcalau12i	$a1, %pc_hi20(.LCPI1_7)
	vld	$vr6, $a1, %pc_lo12(.LCPI1_7)
	vand.v	$vr2, $vr4, $vr2
	vshuf.w	$vr0, $vr2, $vr3
	vand.v	$vr1, $vr4, $vr1
	vslt.wu	$vr1, $vr1, $vr6
	vor.v	$vr2, $vr0, $vr5
	vadd.w	$vr0, $vr0, $vr7
	vbitsel.v	$vr0, $vr0, $vr2, $vr1
	vst	$vr0, $sp, 48
	st.w	$zero, $sp, 80
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	move	$s1, $a0
	addi.d	$a0, $sp, 48
	addi.d	$s0, $sp, 48
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $a0, 0
	addi.w	$s2, $fp, 1
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	st.d	$a0, $s1, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $s1, 12
	.p2align	4, , 16
.LBB1_32:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a1, $s0
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_32
	b	.LBB1_62
.LBB1_33:
	pcaddu18i	$ra, %call36(_Z26ConvertPropVariantToStringRK14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.LBB1_34:
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
.LBB1_35:
	vpickve2gr.w	$a2, $vr0, 2
	andi	$a2, $a2, 1
	ori	$a3, $zero, 115
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 83
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.w	$a2, $sp, 60
	andi	$a2, $s3, 1024
	beqz	$a2, .LBB1_10
.LBB1_36:
	vpickve2gr.w	$a2, $vr1, 1
	andi	$a2, $a2, 1
	ori	$a3, $zero, 115
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 83
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.w	$a2, $sp, 72
	andi	$a2, $s3, 512
	bnez	$a2, .LBB1_11
	b	.LBB1_12
.LBB1_37:
	addi.w	$a0, $s1, 0
	slti	$a0, $a0, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp0:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.38:
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.w	$a1, $fp, 8
	st.d	$s2, $fp, 0
	slli.d	$a1, $a1, 2
	stx.w	$zero, $s2, $a1
	st.w	$s5, $fp, 12
	move	$s0, $s2
.LBB1_39:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i82.preheader
	move	$a1, $zero
	vinsgr2vr.w	$vr0, $s3, 0
	.p2align	4, , 16
.LBB1_40:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i82
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a1, $s4
	stx.w	$a2, $s0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_40
# %bb.41:
	srli.d	$a1, $s3, 16
	st.w	$s1, $a0, 8
	beqz	$a1, .LBB1_34
# %bb.42:
	vinsgr2vr.w	$vr1, $s3, 0
	vreplvei.w	$vr1, $vr1, 0
	ori	$a0, $zero, 20
	lu32i.d	$a0, 16
	vreplgr2vr.d	$vr2, $a0
	vsrl.w	$vr1, $vr1, $vr2
	srli.d	$a0, $s3, 24
	vsrli.w	$vr2, $vr0, 28
	pcalau12i	$a1, %pc_hi20(.LCPI1_4)
	vld	$vr3, $a1, %pc_lo12(.LCPI1_4)
	vinsgr2vr.w	$vr0, $a0, 1
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	vld	$vr4, $a0, %pc_lo12(.LCPI1_5)
	vshuf.w	$vr3, $vr1, $vr0
	vrepli.w	$vr0, 15
	vand.v	$vr0, $vr3, $vr0
	vshuf.w	$vr4, $vr0, $vr2
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_6)
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	vld	$vr1, $a0, %pc_lo12(.LCPI1_7)
	vrepli.w	$vr2, 48
	vst	$vr2, $sp, 64
	vand.v	$vr0, $vr3, $vr0
	vslt.wu	$vr0, $vr0, $vr1
	vor.v	$vr1, $vr4, $vr2
	vrepli.w	$vr2, 55
	vadd.w	$vr2, $vr4, $vr2
	vbitsel.v	$vr0, $vr2, $vr1, $vr0
	vst	$vr0, $sp, 48
	st.w	$zero, $sp, 80
	addi.d	$a0, $sp, 48
	addi.d	$s3, $sp, 48
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$s2, $a0, 1
	addi.w	$s4, $a0, 0
	slli.d	$s5, $s2, 2
	beqz	$s2, .LBB1_63
# %bb.43:
	slti	$a0, $s4, -1
	masknez	$a1, $s5, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp3:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.44:                               # %.noexc91
	move	$s0, $a0
	st.w	$zero, $a0, 0
	b	.LBB1_64
.LBB1_45:
	ori	$a2, $zero, 82
	st.w	$a2, $sp, 48
	ori	$a2, $zero, 1
	andi	$a3, $a1, 2
	bnez	$a3, .LBB1_17
.LBB1_46:
	andi	$a3, $a1, 4
	bnez	$a3, .LBB1_18
.LBB1_47:
	andi	$a3, $a1, 8
	bnez	$a3, .LBB1_19
.LBB1_48:
	andi	$a3, $a1, 16
	bnez	$a3, .LBB1_20
.LBB1_49:
	andi	$a3, $a1, 32
	bnez	$a3, .LBB1_21
.LBB1_50:
	andi	$a3, $a1, 64
	bnez	$a3, .LBB1_22
.LBB1_51:
	andi	$a3, $a1, 256
	bnez	$a3, .LBB1_23
.LBB1_52:
	andi	$a3, $a1, 512
	bnez	$a3, .LBB1_24
.LBB1_53:
	andi	$a3, $a1, 1024
	bnez	$a3, .LBB1_25
.LBB1_54:
	andi	$a3, $a1, 2048
	bnez	$a3, .LBB1_26
.LBB1_55:
	lu12i.w	$a3, 1
	and	$a3, $a1, $a3
	bnez	$a3, .LBB1_27
.LBB1_56:
	lu12i.w	$a3, 2
	and	$a3, $a1, $a3
	bnez	$a3, .LBB1_28
.LBB1_57:
	lu12i.w	$a3, 4
	and	$a3, $a1, $a3
	bnez	$a3, .LBB1_29
.LBB1_58:
	lu12i.w	$a3, 8
	and	$a1, $a1, $a3
	beqz	$a1, .LBB1_60
.LBB1_59:
	slli.d	$a1, $a2, 2
	addi.d	$a2, $a2, 1
	addi.d	$a3, $sp, 48
	ori	$a4, $zero, 95
	stx.w	$a4, $a1, $a3
.LBB1_60:
	slli.d	$a1, $a2, 2
	addi.d	$s0, $sp, 48
	stx.w	$zero, $a1, $s0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	move	$s1, $a0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.w	$a0, $a0, 0
	addi.w	$s2, $fp, 1
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	st.d	$a0, $s1, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $s1, 12
	.p2align	4, , 16
.LBB1_61:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i75
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a1, $s0
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_61
.LBB1_62:                               # %_ZN11CStringBaseIwEC2EPKw.exit
	st.w	$fp, $s1, 8
	b	.LBB1_34
.LBB1_63:
	move	$s0, $zero
.LBB1_64:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i87
	move	$a0, $zero
	.p2align	4, , 16
.LBB1_65:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $a0, $s3
	stx.w	$a1, $s0, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB1_65
# %bb.66:                               # %_ZN11CStringBaseIwEC2EPKw.exit92
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $sp, 16
	slti	$a0, $s4, -1
	masknez	$a1, $s5, $a0
	addi.w	$s3, $zero, -1
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
.Ltmp6:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.67:                               # %.noexc93
	move	$a1, $zero
	st.d	$a0, $sp, 16
	st.w	$zero, $a0, 0
	st.w	$s2, $sp, 28
	.p2align	4, , 16
.LBB1_68:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $s0, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_68
# %bb.69:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
	st.w	$s1, $sp, 24
.Ltmp9:
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEw)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.70:                               # %_ZplIwE11CStringBaseIT_ERKS2_S1_.exit
	ld.w	$s1, $sp, 24
	bstrpick.d	$a0, $s1, 31, 0
	addi.d	$s2, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s2, $a0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $sp, 32
	beqz	$a0, .LBB1_72
# %bb.71:
	move	$a0, $zero
	b	.LBB1_74
.LBB1_72:
	addi.w	$a0, $s2, 0
	slti	$a1, $s1, -1
	slli.d	$a0, $a0, 2
	maskeqz	$a2, $s3, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp12:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.73:                               # %.noexc100
	st.d	$a0, $sp, 32
	st.w	$zero, $a0, 0
	st.w	$s2, $sp, 44
.LBB1_74:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i94
	ld.d	$a1, $sp, 16
	.p2align	4, , 16
.LBB1_75:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB1_75
# %bb.76:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i98
	st.w	$s1, $sp, 40
.Ltmp15:
	addi.d	$a0, $sp, 32
	addi.d	$s1, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.77:                               # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit
	beq	$s1, $fp, .LBB1_88
# %bb.78:
	move	$a0, $fp
	ld.d	$s2, $fp, 0
	st.w	$zero, $fp, 8
	st.w	$zero, $s2, 0
	ld.w	$a1, $sp, 40
	ld.w	$s5, $fp, 12
	addi.w	$s4, $a1, 1
	bne	$s4, $s5, .LBB1_80
# %bb.79:
	move	$s1, $s2
	b	.LBB1_85
.LBB1_80:
	slti	$a0, $a1, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
.Ltmp18:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.81:                               # %.noexc109
	move	$s1, $a0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB1_83
# %bb.82:                               # %._crit_edge.thread.i.i107
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.w	$a1, $fp, 8
	b	.LBB1_84
.LBB1_83:
	move	$a1, $zero
	move	$a0, $fp
.LBB1_84:
	st.d	$s1, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$zero, $s1, $a1
	st.w	$s4, $a0, 12
.LBB1_85:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i103
	ld.d	$a1, $sp, 32
	.p2align	4, , 16
.LBB1_86:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $s1, 4
	st.w	$a2, $s1, 0
	move	$s1, $a3
	bnez	$a2, .LBB1_86
# %bb.87:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.w	$a1, $sp, 40
	st.w	$a1, $a0, 8
.LBB1_88:                               # %_ZN11CStringBaseIwEaSERKS0_.exit
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB1_90
# %bb.89:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_90:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB1_92
# %bb.91:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_92:                               # %_ZN11CStringBaseIwED2Ev.exit110
	beqz	$s0, .LBB1_34
# %bb.93:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB1_34
.LBB1_94:
.Ltmp20:
	b	.LBB1_98
.LBB1_95:
.Ltmp14:
	move	$s1, $a0
	b	.LBB1_100
.LBB1_96:
.Ltmp5:
	move	$s1, $a0
	ld.d	$s0, $fp, 0
	beqz	$s0, .LBB1_108
	b	.LBB1_110
.LBB1_97:
.Ltmp17:
.LBB1_98:
	ld.d	$a1, $sp, 32
	move	$s1, $a0
	beqz	$a1, .LBB1_100
# %bb.99:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_100:                              # %.body101
	ld.d	$a0, $sp, 16
	bnez	$a0, .LBB1_103
	b	.LBB1_105
.LBB1_101:
.Ltmp11:
	ld.d	$a1, $sp, 16
	move	$s1, $a0
	beqz	$a1, .LBB1_105
# %bb.102:
	move	$a0, $a1
.LBB1_103:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB1_105
.LBB1_104:
.Ltmp8:
	move	$s1, $a0
.LBB1_105:                              # %.body
	bnez	$s0, .LBB1_107
# %bb.106:
	ld.d	$s0, $fp, 0
	bnez	$s0, .LBB1_110
	b	.LBB1_108
.LBB1_107:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	bnez	$s0, .LBB1_110
.LBB1_108:                              # %_ZN11CStringBaseIwED2Ev.exit115
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_109:                              # %.thread
.Ltmp2:
	move	$s1, $a0
.LBB1_110:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb, .Lfunc_end1-_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_30-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
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
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Lfunc_end1-.Ltmp19            #   Call between .Ltmp19 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEpLEw,"axG",@progbits,_ZN11CStringBaseIwEpLEw,comdat
	.weak	_ZN11CStringBaseIwEpLEw         # -- Begin function _ZN11CStringBaseIwEpLEw
	.p2align	5
	.type	_ZN11CStringBaseIwEpLEw,@function
_ZN11CStringBaseIwEpLEw:                # @_ZN11CStringBaseIwEpLEw
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
	ld.w	$s0, $a0, 8
	ld.w	$s4, $a0, 12
	nor	$a2, $s0, $zero
	add.w	$a2, $s4, $a2
	bgtz	$a2, .LBB2_15
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
	slti	$a4, $a4, 1
	ori	$s5, $zero, 1
	sub.d	$a2, $s5, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	add.w	$a2, $a2, $s4
	addi.w	$s1, $a2, 1
	beq	$s1, $s4, .LBB2_15
# %bb.2:
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
	move	$fp, $a0
	blt	$s4, $s5, .LBB2_11
# %bb.3:                                # %.preheader.i.i
	ld.d	$a0, $s3, 0
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB2_12
# %bb.4:                                # %.lr.ph.i.i
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s0, $a2, .LBB2_9
# %bb.5:                                # %.lr.ph.i.i
	sub.d	$a2, $fp, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB2_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a1, $s0, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $fp, 16
	addi.d	$a3, $a0, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB2_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB2_7
# %bb.8:                                # %middle.block
	beq	$a1, $s0, .LBB2_13
.LBB2_9:                                # %scalar.ph.preheader
	sub.d	$a2, $s0, $a1
	alsl.d	$a3, $a1, $fp, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB2_10:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB2_10
	b	.LBB2_13
.LBB2_11:
	move	$a2, $s3
	move	$a1, $s2
	b	.LBB2_14
.LBB2_12:                               # %._crit_edge.i.i
	move	$a2, $s3
	move	$a1, $s2
	beqz	$a0, .LBB2_14
.LBB2_13:                               # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a2, $s3
	ld.w	$s0, $s3, 8
.LBB2_14:
	move	$a0, $a2
	st.d	$fp, $a2, 0
	slli.d	$a2, $s0, 2
	stx.w	$zero, $fp, $a2
	st.w	$s1, $a0, 12
.LBB2_15:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	slli.d	$a3, $s0, 2
	stx.w	$a1, $a2, $a3
	addi.w	$a1, $s0, 1
	st.w	$a1, $a0, 8
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a2, $a1
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
	.size	_ZN11CStringBaseIwEpLEw, .Lfunc_end2-_ZN11CStringBaseIwEpLEw
	.cfi_endproc
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
	bge	$a2, $a1, .LBB3_15
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
	beq	$s2, $s4, .LBB3_15
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
	blt	$s4, $a2, .LBB3_11
# %bb.3:                                # %.preheader.i.i
	ld.d	$a1, $s3, 0
	blt	$s1, $a2, .LBB3_12
# %bb.4:                                # %.lr.ph.i.i
	ori	$a2, $zero, 8
	move	$a0, $zero
	bltu	$s1, $a2, .LBB3_9
# %bb.5:                                # %.lr.ph.i.i
	sub.d	$a2, $s0, $a1
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB3_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a0, $s1, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a2, $s0, 16
	addi.d	$a3, $a1, 16
	move	$a4, $a0
	.p2align	4, , 16
.LBB3_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB3_7
# %bb.8:                                # %middle.block
	beq	$a0, $s1, .LBB3_13
.LBB3_9:                                # %scalar.ph.preheader
	sub.d	$a2, $s1, $a0
	alsl.d	$a3, $a0, $s0, 2
	alsl.d	$a0, $a0, $a1, 2
	.p2align	4, , 16
.LBB3_10:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB3_10
	b	.LBB3_13
.LBB3_11:
	move	$a0, $s3
	b	.LBB3_14
.LBB3_12:                               # %._crit_edge.i.i
	move	$a0, $s3
	beqz	$a1, .LBB3_14
.LBB3_13:                               # %._crit_edge.thread.i.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.w	$s1, $s3, 8
.LBB3_14:
	st.d	$s0, $a0, 0
	slli.d	$a1, $s1, 2
	stx.w	$zero, $s0, $a1
	st.w	$s2, $a0, 12
.LBB3_15:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a2, $s1, $a2, 2
	.p2align	4, , 16
.LBB3_16:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a2, 4
	st.w	$a3, $a2, 0
	move	$a2, $a4
	bnez	$a3, .LBB3_16
# %bb.17:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
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
.Lfunc_end3:
	.size	_ZN11CStringBaseIwEpLERKS0_, .Lfunc_end3-_ZN11CStringBaseIwEpLERKS0_
	.cfi_endproc
                                        # -- End function
	.type	_ZL11kPosixTypes,@object        # @_ZL11kPosixTypes
	.section	.rodata.cst16,"aM",@progbits,16
_ZL11kPosixTypes:
	.ascii	"0pc3d5b7-9lBsDEF"
	.size	_ZL11kPosixTypes, 16

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
