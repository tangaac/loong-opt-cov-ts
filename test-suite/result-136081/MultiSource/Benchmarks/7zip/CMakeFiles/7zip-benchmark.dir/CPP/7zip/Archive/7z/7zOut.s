	.file	"7zOut.cpp"
	.text
	.globl	_ZN8NArchive3N7z11COutArchive11WriteDirectEPKvj # -- Begin function _ZN8NArchive3N7z11COutArchive11WriteDirectEPKvj
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive11WriteDirectEPKvj,@function
_ZN8NArchive3N7z11COutArchive11WriteDirectEPKvj: # @_ZN8NArchive3N7z11COutArchive11WriteDirectEPKvj
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	beqz	$a2, .LBB0_5
# %bb.1:                                # %.lr.ph.i.preheader
	move	$s0, $a1
	ld.d	$s1, $a0, 120
	bstrpick.d	$s2, $a2, 31, 0
	addi.w	$s3, $zero, -1
	lu32i.d	$s3, 0
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 5
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	sltu	$a1, $s2, $s3
	masknez	$a2, $s3, $a1
	ld.d	$a4, $a0, 40
	maskeqz	$a0, $s2, $a1
	or	$a0, $a0, $a2
	addi.w	$a2, $a0, 0
	addi.d	$a3, $sp, 12
	move	$a0, $s1
	move	$a1, $s0
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	ld.wu	$a0, $sp, 12
	beqz	$a0, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	sub.d	$s2, $s2, $a0
	add.d	$s0, $s0, $a0
	bnez	$s2, .LBB0_2
.LBB0_5:
	move	$fp, $zero
	b	.LBB0_7
.LBB0_6:
	move	$fp, $a0
.LBB0_7:                                # %_ZL10WriteBytesP20ISequentialOutStreamPKvm.exit
	move	$a0, $fp
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	_ZN8NArchive3N7z11COutArchive11WriteDirectEPKvj, .Lfunc_end0-_ZN8NArchive3N7z11COutArchive11WriteDirectEPKvj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive14WriteSignatureEv # -- Begin function _ZN8NArchive3N7z11COutArchive14WriteSignatureEv
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive14WriteSignatureEv,@function
_ZN8NArchive3N7z11COutArchive14WriteSignatureEv: # @_ZN8NArchive3N7z11COutArchive14WriteSignatureEv
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	pcalau12i	$a1, %got_pc_hi20(_ZN8NArchive3N7z10kSignatureE)
	ld.d	$a1, $a1, %got_pc_lo12(_ZN8NArchive3N7z10kSignatureE)
	ld.h	$a2, $a1, 4
	ld.w	$a1, $a1, 0
	st.h	$a2, $sp, 4
	st.w	$a1, $sp, 0
	ori	$a1, $zero, 768
	st.h	$a1, $sp, 6
	ld.d	$s0, $a0, 120
	ori	$s2, $zero, 8
	addi.d	$s1, $sp, 0
	addi.w	$s3, $zero, -1
	lu32i.d	$s3, 0
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 5
	.p2align	4, , 16
.LBB1_1:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	sltu	$a1, $s2, $s3
	masknez	$a2, $s3, $a1
	ld.d	$a4, $a0, 40
	maskeqz	$a0, $s2, $a1
	or	$a0, $a0, $a2
	addi.w	$a2, $a0, 0
	addi.d	$a3, $sp, 12
	move	$a0, $s0
	move	$a1, $s1
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB1_5
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	ld.wu	$a0, $sp, 12
	beqz	$a0, .LBB1_6
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	sub.d	$s2, $s2, $a0
	add.d	$s1, $s1, $a0
	bnez	$s2, .LBB1_1
# %bb.4:
	move	$fp, $zero
	b	.LBB1_6
.LBB1_5:
	move	$fp, $a0
.LBB1_6:                                # %_ZN8NArchive3N7z11COutArchive11WriteDirectEPKvj.exit
	move	$a0, $fp
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	_ZN8NArchive3N7z11COutArchive14WriteSignatureEv, .Lfunc_end1-_ZN8NArchive3N7z11COutArchive14WriteSignatureEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive16WriteStartHeaderERKNS0_12CStartHeaderE # -- Begin function _ZN8NArchive3N7z11COutArchive16WriteStartHeaderERKNS0_12CStartHeaderE
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive16WriteStartHeaderERKNS0_12CStartHeaderE,@function
_ZN8NArchive3N7z11COutArchive16WriteStartHeaderERKNS0_12CStartHeaderE: # @_ZN8NArchive3N7z11COutArchive16WriteStartHeaderERKNS0_12CStartHeaderE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	vld	$vr0, $a1, 0
	ld.w	$a1, $a1, 16
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	vst	$vr0, $sp, 8
	st.w	$a1, $sp, 24
	ori	$a1, $zero, 20
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 4
	ld.d	$s0, $fp, 120
	ori	$s2, $zero, 24
	addi.d	$s1, $sp, 4
	addi.w	$s3, $zero, -1
	lu32i.d	$s3, 0
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 5
	.p2align	4, , 16
.LBB2_1:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	sltu	$a1, $s2, $s3
	masknez	$a2, $s3, $a1
	ld.d	$a4, $a0, 40
	maskeqz	$a0, $s2, $a1
	or	$a0, $a0, $a2
	addi.w	$a2, $a0, 0
	addi.d	$a3, $sp, 28
	move	$a0, $s0
	move	$a1, $s1
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB2_5
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	ld.wu	$a0, $sp, 28
	beqz	$a0, .LBB2_6
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	sub.d	$s2, $s2, $a0
	add.d	$s1, $s1, $a0
	bnez	$s2, .LBB2_1
# %bb.4:
	move	$fp, $zero
	b	.LBB2_6
.LBB2_5:
	move	$fp, $a0
.LBB2_6:                                # %_ZN8NArchive3N7z11COutArchive11WriteDirectEPKvj.exit
	move	$a0, $fp
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	_ZN8NArchive3N7z11COutArchive16WriteStartHeaderERKNS0_12CStartHeaderE, .Lfunc_end2-_ZN8NArchive3N7z11COutArchive16WriteStartHeaderERKNS0_12CStartHeaderE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive6CreateEP20ISequentialOutStreamb # -- Begin function _ZN8NArchive3N7z11COutArchive6CreateEP20ISequentialOutStreamb
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive6CreateEP20ISequentialOutStreamb,@function
_ZN8NArchive3N7z11COutArchive6CreateEP20ISequentialOutStreamb: # @_ZN8NArchive3N7z11COutArchive6CreateEP20ISequentialOutStreamb
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 120
	move	$s1, $a2
	move	$s0, $a1
	beqz	$a0, .LBB3_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 120
.LBB3_2:                                # %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit.i
	ld.d	$a0, $fp, 112
	addi.d	$s2, $fp, 112
	beqz	$a0, .LBB3_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $s2, 0
.LBB3_4:                                # %_ZN8NArchive3N7z11COutArchive5CloseEv.exit
	beqz	$s0, .LBB3_6
# %bb.5:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB3_6:
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB3_8
# %bb.7:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB3_8:                                # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit
	st.d	$s0, $fp, 120
	lu12i.w	$s4, -524284
	beqz	$s1, .LBB3_11
# %bb.9:
	ld.d	$a0, $s2, 0
	bnez	$a0, .LBB3_13
# %bb.10:
	ori	$a0, $s4, 5
	b	.LBB3_20
.LBB3_11:
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(IID_IOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(IID_IOutStream)
	move	$a0, $s0
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB3_19
# %bb.12:                               # %..thread_crit_edge
	ld.d	$s0, $fp, 120
.LBB3_13:                               # %.thread
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive3N7z10kSignatureE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8NArchive3N7z10kSignatureE)
	ld.h	$a1, $a0, 4
	ld.w	$a0, $a0, 0
	st.h	$a1, $sp, 12
	st.w	$a0, $sp, 8
	ori	$a0, $zero, 768
	st.h	$a0, $sp, 14
	ori	$s2, $zero, 8
	addi.d	$s1, $sp, 8
	addi.w	$s3, $zero, -1
	lu32i.d	$s3, 0
	ori	$s4, $s4, 5
	.p2align	4, , 16
.LBB3_14:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	sltu	$a1, $s2, $s3
	masknez	$a2, $s3, $a1
	ld.d	$a4, $a0, 40
	maskeqz	$a0, $s2, $a1
	or	$a0, $a0, $a2
	addi.w	$a2, $a0, 0
	addi.d	$a3, $sp, 20
	move	$a0, $s0
	move	$a1, $s1
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB3_20
# %bb.15:                               #   in Loop: Header=BB3_14 Depth=1
	ld.wu	$a0, $sp, 20
	beqz	$a0, .LBB3_18
# %bb.16:                               #   in Loop: Header=BB3_14 Depth=1
	sub.d	$s2, $s2, $a0
	add.d	$s1, $s1, $a0
	bnez	$s2, .LBB3_14
# %bb.17:
	ld.d	$a0, $fp, 112
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 48
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $fp
	jirl	$ra, $a4, 0
	b	.LBB3_20
.LBB3_18:
	move	$a0, $s4
	b	.LBB3_20
.LBB3_19:
	ori	$a0, $s4, 1
.LBB3_20:
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end3:
	.size	_ZN8NArchive3N7z11COutArchive6CreateEP20ISequentialOutStreamb, .Lfunc_end3-_ZN8NArchive3N7z11COutArchive6CreateEP20ISequentialOutStreamb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive5CloseEv # -- Begin function _ZN8NArchive3N7z11COutArchive5CloseEv
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive5CloseEv,@function
_ZN8NArchive3N7z11COutArchive5CloseEv:  # @_ZN8NArchive3N7z11COutArchive5CloseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 120
	beqz	$a0, .LBB4_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 120
.LBB4_2:                                # %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB4_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 112
.LBB4_4:                                # %_ZN9CMyComPtrI10IOutStreamE7ReleaseEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_ZN8NArchive3N7z11COutArchive5CloseEv, .Lfunc_end4-_ZN8NArchive3N7z11COutArchive5CloseEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive23SkipPrefixArchiveHeaderEv # -- Begin function _ZN8NArchive3N7z11COutArchive23SkipPrefixArchiveHeaderEv
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive23SkipPrefixArchiveHeaderEv,@function
_ZN8NArchive3N7z11COutArchive23SkipPrefixArchiveHeaderEv: # @_ZN8NArchive3N7z11COutArchive23SkipPrefixArchiveHeaderEv
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 112
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 48
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	move	$a3, $zero
	jr	$a4
.Lfunc_end5:
	.size	_ZN8NArchive3N7z11COutArchive23SkipPrefixArchiveHeaderEv, .Lfunc_end5-_ZN8NArchive3N7z11COutArchive23SkipPrefixArchiveHeaderEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK8NArchive3N7z11COutArchive6GetPosEv # -- Begin function _ZNK8NArchive3N7z11COutArchive6GetPosEv
	.p2align	5
	.type	_ZNK8NArchive3N7z11COutArchive6GetPosEv,@function
_ZNK8NArchive3N7z11COutArchive6GetPosEv: # @_ZNK8NArchive3N7z11COutArchive6GetPosEv
	.cfi_startproc
# %bb.0:
	ld.bu	$a2, $a0, 8
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB6_2
# %bb.1:
	ld.d	$a0, $a0, 16
	ret
.LBB6_2:
	ld.bu	$a2, $a0, 9
	bne	$a2, $a1, .LBB6_4
# %bb.3:
	addi.d	$a0, $a0, 32
	pcaddu18i	$t8, %call36(_ZNK10COutBuffer16GetProcessedSizeEv)
	jr	$t8
.LBB6_4:
	ld.d	$a0, $a0, 104
	ret
.Lfunc_end6:
	.size	_ZNK8NArchive3N7z11COutArchive6GetPosEv, .Lfunc_end6-_ZNK8NArchive3N7z11COutArchive6GetPosEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm # -- Begin function _ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm,@function
_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm: # @_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm
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
	ld.bu	$a3, $a0, 8
	ori	$a0, $zero, 1
	move	$s0, $a2
	bne	$a3, $a0, .LBB7_2
# %bb.1:
	ld.d	$a0, $fp, 16
	add.d	$a0, $a0, $s0
	st.d	$a0, $fp, 16
	b	.LBB7_11
.LBB7_2:
	move	$s1, $a1
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB7_8
# %bb.3:
	beqz	$s0, .LBB7_10
# %bb.4:                                # %.lr.ph.i
	addi.d	$s2, $fp, 32
	move	$s3, $s1
	move	$s4, $s0
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_5:                                # %_ZN10COutBuffer9WriteByteEh.exit.i
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 1
	beqz	$s4, .LBB7_10
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $fp, 40
	ld.b	$a1, $s3, 0
	ld.d	$a2, $fp, 32
	addi.d	$a3, $a0, 1
	st.w	$a3, $fp, 40
	stx.b	$a1, $a2, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB7_5
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB7_5
.LBB7_8:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	sub.d	$a1, $a1, $a0
	bltu	$a1, $s0, .LBB7_12
# %bb.9:                                # %_ZN8NArchive3N7z15CWriteBufferLoc10WriteBytesEPKvm.exit
	ld.d	$a1, $fp, 88
	add.d	$a0, $a1, $a0
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 104
	add.d	$a0, $a0, $s0
	st.d	$a0, $fp, 104
	b	.LBB7_11
.LBB7_10:                               # %_ZN10COutBuffer10WriteBytesEPKvm.exit
	ld.w	$a0, $fp, 24
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(CrcUpdate)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 24
.LBB7_11:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB7_12:
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
.Lfunc_end7:
	.size	_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm, .Lfunc_end7-_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive9WriteByteEh # -- Begin function _ZN8NArchive3N7z11COutArchive9WriteByteEh
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive9WriteByteEh,@function
_ZN8NArchive3N7z11COutArchive9WriteByteEh: # @_ZN8NArchive3N7z11COutArchive9WriteByteEh
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
	ld.bu	$a3, $a0, 8
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB8_2
# %bb.1:
	ld.d	$a1, $a0, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a0, 16
	b	.LBB8_8
.LBB8_2:
	ld.bu	$a3, $a0, 9
	bne	$a3, $a2, .LBB8_6
# %bb.3:
	ld.wu	$a2, $a0, 40
	ld.d	$a3, $a0, 32
	addi.d	$a4, $a2, 1
	st.w	$a4, $a0, 40
	stx.b	$a1, $a3, $a2
	ld.w	$a2, $a0, 40
	ld.w	$a3, $a0, 44
	bne	$a2, $a3, .LBB8_5
# %bb.4:
	addi.d	$a2, $a0, 32
	move	$fp, $a0
	move	$a0, $a2
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a0, $fp
.LBB8_5:                                # %_ZN10COutBuffer9WriteByteEh.exit
	ld.wu	$a2, $a0, 24
	pcalau12i	$a3, %got_pc_hi20(g_CrcTable)
	ld.d	$a3, $a3, %got_pc_lo12(g_CrcTable)
	xor	$a1, $a1, $a2
	andi	$a1, $a1, 255
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	srli.d	$a2, $a2, 8
	xor	$a1, $a1, $a2
	st.w	$a1, $a0, 24
	b	.LBB8_8
.LBB8_6:
	ld.d	$a3, $a0, 96
	ld.d	$a2, $a0, 104
	beq	$a3, $a2, .LBB8_9
# %bb.7:                                # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit
	ld.d	$a3, $a0, 88
	addi.d	$a4, $a2, 1
	st.d	$a4, $a0, 104
	stx.b	$a1, $a3, $a2
.LBB8_8:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB8_9:
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
.Lfunc_end8:
	.size	_ZN8NArchive3N7z11COutArchive9WriteByteEh, .Lfunc_end8-_ZN8NArchive3N7z11COutArchive9WriteByteEh
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive11WriteUInt32Ej # -- Begin function _ZN8NArchive3N7z11COutArchive11WriteUInt32Ej
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive11WriteUInt32Ej,@function
_ZN8NArchive3N7z11COutArchive11WriteUInt32Ej: # @_ZN8NArchive3N7z11COutArchive11WriteUInt32Ej
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
	ld.bu	$a3, $a0, 8
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB9_2
# %bb.1:                                # %.split.us
	ld.d	$a1, $a0, 16
	addi.d	$a1, $a1, 4
	b	.LBB9_21
.LBB9_2:
	ld.bu	$a3, $a0, 9
	addi.d	$fp, $a0, 32
	bne	$a3, $a2, .LBB9_7
# %bb.3:
	ld.wu	$a2, $a0, 40
	ld.d	$a3, $a0, 32
	addi.d	$a4, $a2, 1
	st.w	$a4, $a0, 40
	stx.b	$a1, $a3, $a2
	ld.w	$a2, $a0, 40
	ld.w	$a3, $a0, 44
	bne	$a2, $a3, .LBB9_5
# %bb.4:
	move	$s0, $a0
	move	$a0, $fp
	move	$s1, $a1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	move	$a0, $s0
.LBB9_5:                                # %_ZN10COutBuffer9WriteByteEh.exit.i
	ld.wu	$a2, $a0, 24
	pcalau12i	$a3, %got_pc_hi20(g_CrcTable)
	ld.d	$a3, $a3, %got_pc_lo12(g_CrcTable)
	xor	$a4, $a2, $a1
	andi	$a4, $a4, 255
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	srli.d	$a2, $a2, 8
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 24
	ld.bu	$a2, $a0, 8
	beqz	$a2, .LBB9_9
.LBB9_6:
	ld.d	$a2, $a0, 16
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 16
	ld.bu	$a2, $a0, 8
	bnez	$a2, .LBB9_13
	b	.LBB9_16
.LBB9_7:
	ld.d	$a3, $a0, 96
	ld.d	$a2, $a0, 104
	beq	$a3, $a2, .LBB9_31
# %bb.8:                                # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
	ld.d	$a3, $a0, 88
	addi.d	$a4, $a2, 1
	st.d	$a4, $a0, 104
	stx.b	$a1, $a3, $a2
	ld.bu	$a2, $a0, 8
	bnez	$a2, .LBB9_6
.LBB9_9:
	ld.bu	$a2, $a0, 9
	bstrpick.d	$s0, $a1, 31, 8
	beqz	$a2, .LBB9_14
# %bb.10:
	ld.wu	$a2, $a0, 40
	ld.d	$a3, $a0, 32
	addi.d	$a4, $a2, 1
	st.w	$a4, $a0, 40
	stx.b	$s0, $a3, $a2
	ld.w	$a2, $a0, 40
	ld.w	$a3, $a0, 44
	bne	$a2, $a3, .LBB9_12
# %bb.11:
	move	$s1, $a0
	move	$a0, $fp
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a0, $s1
.LBB9_12:                               # %_ZN10COutBuffer9WriteByteEh.exit.i.1
	ld.wu	$a2, $a0, 24
	pcalau12i	$a3, %got_pc_hi20(g_CrcTable)
	ld.d	$a3, $a3, %got_pc_lo12(g_CrcTable)
	xor	$a4, $a2, $s0
	andi	$a4, $a4, 255
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	srli.d	$a2, $a2, 8
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 24
	ld.bu	$a2, $a0, 8
	beqz	$a2, .LBB9_16
.LBB9_13:
	ld.d	$a2, $a0, 16
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 16
	ld.bu	$a2, $a0, 8
	bnez	$a2, .LBB9_20
	b	.LBB9_25
.LBB9_14:
	ld.d	$a3, $a0, 96
	ld.d	$a2, $a0, 104
	beq	$a3, $a2, .LBB9_31
# %bb.15:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i.1
	ld.d	$a3, $a0, 88
	addi.d	$a4, $a2, 1
	st.d	$a4, $a0, 104
	stx.b	$s0, $a3, $a2
	ld.bu	$a2, $a0, 8
	bnez	$a2, .LBB9_13
.LBB9_16:
	ld.bu	$a2, $a0, 9
	bstrpick.d	$s0, $a1, 31, 16
	beqz	$a2, .LBB9_23
# %bb.17:
	ld.wu	$a2, $a0, 40
	ld.d	$a3, $a0, 32
	addi.d	$a4, $a2, 1
	st.w	$a4, $a0, 40
	stx.b	$s0, $a3, $a2
	ld.w	$a2, $a0, 40
	ld.w	$a3, $a0, 44
	bne	$a2, $a3, .LBB9_19
# %bb.18:
	move	$s1, $a0
	move	$a0, $fp
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a0, $s1
.LBB9_19:                               # %_ZN10COutBuffer9WriteByteEh.exit.i.2
	ld.wu	$a2, $a0, 24
	pcalau12i	$a3, %got_pc_hi20(g_CrcTable)
	ld.d	$a3, $a3, %got_pc_lo12(g_CrcTable)
	xor	$a4, $a2, $s0
	andi	$a4, $a4, 255
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	srli.d	$a2, $a2, 8
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 24
	ld.bu	$a2, $a0, 8
	beqz	$a2, .LBB9_25
.LBB9_20:
	ld.d	$a1, $a0, 16
	addi.d	$a1, $a1, 1
.LBB9_21:                               # %.split9
	st.d	$a1, $a0, 16
.LBB9_22:                               # %.split9
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB9_23:
	ld.d	$a3, $a0, 96
	ld.d	$a2, $a0, 104
	beq	$a3, $a2, .LBB9_31
# %bb.24:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i.2
	ld.d	$a3, $a0, 88
	addi.d	$a4, $a2, 1
	st.d	$a4, $a0, 104
	stx.b	$s0, $a3, $a2
	ld.bu	$a2, $a0, 8
	bnez	$a2, .LBB9_20
.LBB9_25:
	ld.bu	$a2, $a0, 9
	bstrpick.d	$s0, $a1, 31, 24
	beqz	$a2, .LBB9_29
# %bb.26:
	ld.wu	$a1, $a0, 40
	ld.d	$a2, $a0, 32
	addi.d	$a3, $a1, 1
	st.w	$a3, $a0, 40
	stx.b	$s0, $a2, $a1
	ld.w	$a1, $a0, 40
	ld.w	$a2, $a0, 44
	bne	$a1, $a2, .LBB9_28
# %bb.27:
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB9_28:                               # %_ZN10COutBuffer9WriteByteEh.exit.i.3
	ld.wu	$a1, $a0, 24
	andi	$a2, $a1, 255
	pcalau12i	$a3, %got_pc_hi20(g_CrcTable)
	ld.d	$a3, $a3, %got_pc_lo12(g_CrcTable)
	xor	$a2, $a2, $s0
	addi.w	$a2, $a2, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	srli.d	$a1, $a1, 8
	xor	$a1, $a2, $a1
	st.w	$a1, $a0, 24
	b	.LBB9_22
.LBB9_29:
	ld.d	$a2, $a0, 96
	ld.d	$a1, $a0, 104
	beq	$a2, $a1, .LBB9_31
# %bb.30:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i.3
	ld.d	$a2, $a0, 88
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 104
	stx.b	$s0, $a2, $a1
	b	.LBB9_22
.LBB9_31:
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
.Lfunc_end9:
	.size	_ZN8NArchive3N7z11COutArchive11WriteUInt32Ej, .Lfunc_end9-_ZN8NArchive3N7z11COutArchive11WriteUInt32Ej
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive11WriteUInt64Ey # -- Begin function _ZN8NArchive3N7z11COutArchive11WriteUInt64Ey
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive11WriteUInt64Ey,@function
_ZN8NArchive3N7z11COutArchive11WriteUInt64Ey: # @_ZN8NArchive3N7z11COutArchive11WriteUInt64Ey
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
	ld.bu	$a0, $a0, 8
	beqz	$a0, .LBB10_3
# %bb.1:                                # %.split.us
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 8
	st.d	$a0, $fp, 16
.LBB10_2:                               # %.split8
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB10_3:                               # %.split.preheader
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(g_CrcTable)
	ld.d	$s2, $a0, %got_pc_lo12(g_CrcTable)
	addi.d	$s1, $fp, 32
	ori	$s3, $zero, 8
	ori	$s4, $zero, 1
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_4:                               #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
.LBB10_5:                               # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
                                        #   in Loop: Header=BB10_6 Depth=1
	addi.w	$s3, $s3, -1
	srli.d	$s0, $s0, 8
	beqz	$s3, .LBB10_2
.LBB10_6:                               # %.split
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, 8
	beq	$a0, $s4, .LBB10_4
# %bb.7:                                #   in Loop: Header=BB10_6 Depth=1
	ld.bu	$a0, $fp, 9
	bne	$a0, $s4, .LBB10_11
# %bb.8:                                #   in Loop: Header=BB10_6 Depth=1
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$s0, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB10_10
# %bb.9:                                #   in Loop: Header=BB10_6 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB10_10:                              # %_ZN10COutBuffer9WriteByteEh.exit.i
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.wu	$a0, $fp, 24
	xor	$a1, $s0, $a0
	andi	$a1, $a1, 255
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s2, $a1
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_11:                              #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB10_13
# %bb.12:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$s0, $a1, $a0
	b	.LBB10_5
.LBB10_13:
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
.Lfunc_end10:
	.size	_ZN8NArchive3N7z11COutArchive11WriteUInt64Ey, .Lfunc_end10-_ZN8NArchive3N7z11COutArchive11WriteUInt64Ey
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive11WriteNumberEy # -- Begin function _ZN8NArchive3N7z11COutArchive11WriteNumberEy
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive11WriteNumberEy,@function
_ZN8NArchive3N7z11COutArchive11WriteNumberEy: # @_ZN8NArchive3N7z11COutArchive11WriteNumberEy
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
	ori	$a2, $zero, 127
	move	$s0, $a1
	move	$fp, $a0
	bltu	$a2, $a1, .LBB11_2
# %bb.1:
	move	$s2, $zero
	move	$a0, $zero
	b	.LBB11_16
.LBB11_2:
	srli.d	$a0, $s0, 14
	bnez	$a0, .LBB11_4
# %bb.3:
	ori	$a0, $zero, 128
	ori	$s2, $zero, 1
	b	.LBB11_16
.LBB11_4:
	srli.d	$a0, $s0, 21
	bnez	$a0, .LBB11_6
# %bb.5:
	ori	$a0, $zero, 192
	ori	$s2, $zero, 2
	b	.LBB11_16
.LBB11_6:
	srli.d	$a0, $s0, 28
	bnez	$a0, .LBB11_8
# %bb.7:
	ori	$a0, $zero, 224
	ori	$s2, $zero, 3
	b	.LBB11_16
.LBB11_8:
	srli.d	$a0, $s0, 35
	bnez	$a0, .LBB11_10
# %bb.9:
	ori	$a0, $zero, 240
	ori	$s2, $zero, 4
	b	.LBB11_16
.LBB11_10:
	srli.d	$a0, $s0, 42
	bnez	$a0, .LBB11_12
# %bb.11:
	ori	$a0, $zero, 248
	ori	$s2, $zero, 5
	b	.LBB11_16
.LBB11_12:
	srli.d	$a0, $s0, 49
	bnez	$a0, .LBB11_14
# %bb.13:
	ori	$a0, $zero, 252
	ori	$s2, $zero, 6
	b	.LBB11_16
.LBB11_14:
	srli.d	$a0, $s0, 56
	bnez	$a0, .LBB11_18
# %bb.15:
	ori	$a0, $zero, 254
	ori	$s2, $zero, 7
.LBB11_16:
	slli.d	$a1, $s2, 3
	srl.d	$a1, $s0, $a1
	or	$s1, $a0, $a1
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB11_19
.LBB11_17:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	bnez	$s2, .LBB11_25
	b	.LBB11_27
.LBB11_18:
	ori	$s1, $zero, 255
	ori	$s2, $zero, 8
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB11_17
.LBB11_19:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB11_23
# %bb.20:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$s1, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB11_22
# %bb.21:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB11_22:                              # %_ZN10COutBuffer9WriteByteEh.exit.i
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	xor	$a2, $s1, $a0
	andi	$a2, $a2, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	bnez	$s2, .LBB11_25
	b	.LBB11_27
.LBB11_23:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB11_38
# %bb.24:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$s1, $a1, $a0
	beqz	$s2, .LBB11_27
.LBB11_25:                              # %.lr.ph
	ld.bu	$a0, $fp, 8
	beqz	$a0, .LBB11_28
# %bb.26:                               # %.lr.ph.split.us
	ld.d	$a0, $fp, 16
	add.d	$a0, $s2, $a0
	st.d	$a0, $fp, 16
.LBB11_27:                              # %._crit_edge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB11_28:                              # %.lr.ph.split.preheader
	pcalau12i	$a0, %got_pc_hi20(g_CrcTable)
	ld.d	$s3, $a0, %got_pc_lo12(g_CrcTable)
	addi.d	$s1, $fp, 32
	addi.d	$s2, $s2, 1
	ori	$s4, $zero, 1
	b	.LBB11_31
	.p2align	4, , 16
.LBB11_29:                              #   in Loop: Header=BB11_31 Depth=1
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
.LBB11_30:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit24
                                        #   in Loop: Header=BB11_31 Depth=1
	addi.w	$s2, $s2, -1
	srli.d	$s0, $s0, 8
	bge	$s4, $s2, .LBB11_27
.LBB11_31:                              # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, 8
	beq	$a0, $s4, .LBB11_29
# %bb.32:                               #   in Loop: Header=BB11_31 Depth=1
	ld.bu	$a0, $fp, 9
	bne	$a0, $s4, .LBB11_36
# %bb.33:                               #   in Loop: Header=BB11_31 Depth=1
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$s0, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB11_35
# %bb.34:                               #   in Loop: Header=BB11_31 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB11_35:                              # %_ZN10COutBuffer9WriteByteEh.exit.i21
                                        #   in Loop: Header=BB11_31 Depth=1
	ld.wu	$a0, $fp, 24
	xor	$a1, $s0, $a0
	andi	$a1, $a1, 255
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s3, $a1
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB11_30
	.p2align	4, , 16
.LBB11_36:                              #   in Loop: Header=BB11_31 Depth=1
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB11_38
# %bb.37:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i20
                                        #   in Loop: Header=BB11_31 Depth=1
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$s0, $a1, $a0
	b	.LBB11_30
.LBB11_38:
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
.Lfunc_end11:
	.size	_ZN8NArchive3N7z11COutArchive11WriteNumberEy, .Lfunc_end11-_ZN8NArchive3N7z11COutArchive11WriteNumberEy
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive11WriteFolderERKNS0_7CFolderE # -- Begin function _ZN8NArchive3N7z11COutArchive11WriteFolderERKNS0_7CFolderE
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive11WriteFolderERKNS0_7CFolderE,@function
_ZN8NArchive3N7z11COutArchive11WriteFolderERKNS0_7CFolderE: # @_ZN8NArchive3N7z11COutArchive11WriteFolderERKNS0_7CFolderE
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
	move	$fp, $a1
	ld.w	$a1, $a1, 12
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ori	$s3, $zero, 1
	blt	$a0, $s3, .LBB12_23
# %bb.1:                                # %.lr.ph
	move	$s4, $zero
	addi.d	$a0, $s0, 32
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s5, $zero, 256
	pcalau12i	$a0, %got_pc_hi20(g_CrcTable)
	ld.d	$a0, $a0, %got_pc_lo12(g_CrcTable)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s7, $sp, 25
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a0, $fp, 12
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB12_23
.LBB12_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_11 Depth 2
	ld.d	$a0, $fp, 16
	slli.d	$a1, $s4, 3
	ldx.d	$s1, $a0, $a1
	ld.d	$a0, $s1, 0
	ori	$a2, $zero, 1
	bltu	$a0, $s5, .LBB12_10
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	srli.d	$a1, $a0, 16
	ori	$a2, $zero, 2
	beqz	$a1, .LBB12_10
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	srli.d	$a1, $a0, 24
	ori	$a2, $zero, 3
	beqz	$a1, .LBB12_10
# %bb.6:                                #   in Loop: Header=BB12_3 Depth=1
	srli.d	$a1, $a0, 32
	ori	$a2, $zero, 4
	beqz	$a1, .LBB12_10
# %bb.7:                                #   in Loop: Header=BB12_3 Depth=1
	srli.d	$a1, $a0, 40
	ori	$a2, $zero, 5
	beqz	$a1, .LBB12_10
# %bb.8:                                #   in Loop: Header=BB12_3 Depth=1
	srli.d	$a1, $a0, 48
	ori	$a2, $zero, 6
	beqz	$a1, .LBB12_10
# %bb.9:                                #   in Loop: Header=BB12_3 Depth=1
	srli.d	$a1, $a0, 56
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 8
	sub.d	$a2, $a2, $a1
	.p2align	4, , 16
.LBB12_10:                              #   in Loop: Header=BB12_3 Depth=1
	ld.d	$s2, $s1, 16
	addi.d	$a1, $a2, -1
	.p2align	4, , 16
.LBB12_11:                              #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.b	$a0, $a1, $s7
	addi.d	$a3, $a1, 1
	addi.d	$a1, $a1, -1
	srli.d	$a0, $a0, 8
	bltu	$s3, $a3, .LBB12_11
# %bb.12:                               #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a0, $s1, 32
	ld.w	$a1, $s1, 36
	addi.d	$a0, $a0, -1
	ld.bu	$a3, $s0, 8
	sltui	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	and	$s8, $a0, $a1
	bne	$a3, $s3, .LBB12_14
# %bb.13:                               #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 16
	addi.d	$a1, $sp, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB12_18
	b	.LBB12_19
	.p2align	4, , 16
.LBB12_14:                              #   in Loop: Header=BB12_3 Depth=1
	ori	$a0, $zero, 16
	masknez	$a0, $a0, $s8
	ld.bu	$a1, $s0, 9
	sltu	$a3, $zero, $s2
	slli.d	$a3, $a3, 5
	or	$a0, $a3, $a0
	or	$s6, $a0, $a2
	bne	$a1, $s3, .LBB12_21
# %bb.15:                               #   in Loop: Header=BB12_3 Depth=1
	ld.wu	$a0, $s0, 40
	ld.d	$a1, $s0, 32
	addi.d	$a3, $a0, 1
	st.w	$a3, $s0, 40
	stx.b	$s6, $a1, $a0
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s0, 44
	bne	$a0, $a1, .LBB12_17
# %bb.16:                               #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$s5, $a2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	move	$a2, $s5
	ori	$s5, $zero, 256
.LBB12_17:                              # %_ZN10COutBuffer9WriteByteEh.exit.i
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.wu	$a0, $s0, 24
	andi	$a1, $a0, 255
	xor	$a1, $a1, $s6
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a1, $a3, $a1
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $s0, 24
	addi.d	$a1, $sp, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm)
	jirl	$ra, $ra, 0
	bnez	$s8, .LBB12_19
.LBB12_18:                              #   in Loop: Header=BB12_3 Depth=1
	ld.wu	$a1, $s1, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s1, 36
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
.LBB12_19:                              #   in Loop: Header=BB12_3 Depth=1
	beqz	$s2, .LBB12_2
# %bb.20:                               #   in Loop: Header=BB12_3 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 24
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm)
	jirl	$ra, $ra, 0
	b	.LBB12_2
	.p2align	4, , 16
.LBB12_21:                              #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a1, $s0, 96
	ld.d	$a0, $s0, 104
	beq	$a1, $a0, .LBB12_30
# %bb.22:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a1, $s0, 88
	addi.d	$a3, $a0, 1
	st.d	$a3, $s0, 104
	stx.b	$s6, $a1, $a0
	addi.d	$a1, $sp, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB12_18
	b	.LBB12_19
.LBB12_23:                              # %.preheader53
	ld.w	$a0, $fp, 44
	blt	$a0, $s3, .LBB12_26
# %bb.24:                               # %.lr.ph60
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB12_25:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	ldx.wu	$a1, $a0, $s1
	add.d	$s3, $a0, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s3, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a0, .LBB12_25
.LBB12_26:                              # %._crit_edge
	ld.w	$a0, $fp, 76
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB12_29
# %bb.27:                               # %.lr.ph62
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB12_28:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 80
	ldx.wu	$a1, $a0, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 76
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 4
	blt	$s2, $a0, .LBB12_28
.LBB12_29:                              # %.loopexit
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
.LBB12_30:
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
.Lfunc_end12:
	.size	_ZN8NArchive3N7z11COutArchive11WriteFolderERKNS0_7CFolderE, .Lfunc_end12-_ZN8NArchive3N7z11COutArchive11WriteFolderERKNS0_7CFolderE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive15WriteBoolVectorERK13CRecordVectorIbE # -- Begin function _ZN8NArchive3N7z11COutArchive15WriteBoolVectorERK13CRecordVectorIbE
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive15WriteBoolVectorERK13CRecordVectorIbE,@function
_ZN8NArchive3N7z11COutArchive15WriteBoolVectorERK13CRecordVectorIbE: # @_ZN8NArchive3N7z11COutArchive15WriteBoolVectorERK13CRecordVectorIbE
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
	move	$s1, $a1
	ld.w	$a1, $a1, 12
	ori	$s4, $zero, 1
	blt	$a1, $s4, .LBB13_23
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(g_CrcTable)
	ld.d	$s2, $a0, %got_pc_lo12(g_CrcTable)
	move	$s5, $zero
	move	$s3, $zero
	addi.d	$s0, $fp, 32
	ori	$a0, $zero, 128
	b	.LBB13_4
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_4 Depth=1
	bstrpick.d	$a0, $a0, 7, 1
.LBB13_3:                               # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.w	$a1, $s1, 12
	addi.d	$s5, $s5, 1
	bge	$s5, $a1, .LBB13_14
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 16
	ldx.bu	$a1, $a1, $s5
	maskeqz	$a1, $a0, $a1
	andi	$a2, $a0, 255
	or	$s3, $a1, $s3
	bltu	$s4, $a2, .LBB13_2
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	ld.bu	$a0, $fp, 8
	bne	$a0, $s4, .LBB13_7
# %bb.6:                                #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $fp, 16
	move	$s3, $zero
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	ori	$a0, $zero, 128
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_7:                               #   in Loop: Header=BB13_4 Depth=1
	ld.bu	$a0, $fp, 9
	bne	$a0, $s4, .LBB13_11
# %bb.8:                                #   in Loop: Header=BB13_4 Depth=1
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$s3, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB13_10
# %bb.9:                                #   in Loop: Header=BB13_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB13_10:                              # %_ZN10COutBuffer9WriteByteEh.exit.i
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.wu	$a0, $fp, 24
	xor	$a1, $s3, $a0
	andi	$a1, $a1, 255
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s2, $a1
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB13_13
.LBB13_11:                              #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB13_24
# %bb.12:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$s3, $a1, $a0
.LBB13_13:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
                                        #   in Loop: Header=BB13_4 Depth=1
	ori	$a0, $zero, 128
	move	$s3, $zero
	b	.LBB13_3
.LBB13_14:                              # %._crit_edge
	andi	$a0, $a0, 255
	ori	$a1, $zero, 128
	beq	$a0, $a1, .LBB13_23
# %bb.15:
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB13_17
# %bb.16:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB13_23
.LBB13_17:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB13_21
# %bb.18:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$s3, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB13_20
# %bb.19:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB13_20:                              # %_ZN10COutBuffer9WriteByteEh.exit.i16
	ld.wu	$a0, $fp, 24
	xor	$a1, $s3, $a0
	andi	$a1, $a1, 255
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s2, $a1
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB13_23
.LBB13_21:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB13_24
# %bb.22:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i15
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$s3, $a1, $a0
.LBB13_23:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit19
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
.LBB13_24:
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
.Lfunc_end13:
	.size	_ZN8NArchive3N7z11COutArchive15WriteBoolVectorERK13CRecordVectorIbE, .Lfunc_end13-_ZN8NArchive3N7z11COutArchive15WriteBoolVectorERK13CRecordVectorIbE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive16WriteHashDigestsERK13CRecordVectorIbERKS2_IjE # -- Begin function _ZN8NArchive3N7z11COutArchive16WriteHashDigestsERK13CRecordVectorIbERKS2_IjE
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive16WriteHashDigestsERK13CRecordVectorIbERKS2_IjE,@function
_ZN8NArchive3N7z11COutArchive16WriteHashDigestsERK13CRecordVectorIbERKS2_IjE: # @_ZN8NArchive3N7z11COutArchive16WriteHashDigestsERK13CRecordVectorIbERKS2_IjE
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
	ld.w	$a1, $a1, 12
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB14_39
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	move	$s1, $a0
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB14_3
# %bb.2:
	move	$a2, $zero
	move	$s2, $zero
	b	.LBB14_6
.LBB14_3:                               # %vector.ph
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	vrepli.b	$vr0, 0
	addi.d	$a3, $a0, 4
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB14_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -4
	ld.w	$a6, $a3, 0
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB14_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s2, $vr0, 0
	beq	$a2, $a1, .LBB14_8
.LBB14_6:                               # %scalar.ph.preheader
	add.d	$a0, $a0, $a2
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB14_7:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	add.w	$s2, $s2, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB14_7
.LBB14_8:                               # %._crit_edge
	beqz	$s2, .LBB14_39
# %bb.9:
	ld.bu	$a1, $s1, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB14_11
# %bb.10:
	ld.d	$a0, $s1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
	ld.w	$a1, $fp, 12
	ld.bu	$a0, $s1, 8
	beq	$s2, $a1, .LBB14_15
	b	.LBB14_19
.LBB14_11:
	ld.bu	$a1, $s1, 9
	bne	$a1, $a0, .LBB14_17
# %bb.12:
	ld.wu	$a0, $s1, 40
	ld.d	$a1, $s1, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $s1, 40
	ori	$a2, $zero, 10
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $s1, 40
	ld.w	$a1, $s1, 44
	bne	$a0, $a1, .LBB14_14
# %bb.13:
	addi.d	$a0, $s1, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB14_14:                              # %_ZN10COutBuffer9WriteByteEh.exit.i
	ld.wu	$a0, $s1, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 10
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $s1, 24
	ld.w	$a1, $fp, 12
	ld.bu	$a0, $s1, 8
	bne	$s2, $a1, .LBB14_19
.LBB14_15:
	beqz	$a0, .LBB14_21
# %bb.16:
	ld.d	$a0, $s1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
	b	.LBB14_34
.LBB14_17:
	ld.d	$a1, $s1, 96
	ld.d	$a0, $s1, 104
	beq	$a1, $a0, .LBB14_40
# %bb.18:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
	ld.d	$a1, $s1, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $s1, 104
	ori	$a2, $zero, 10
	stx.b	$a2, $a1, $a0
	ld.w	$a1, $fp, 12
	ld.bu	$a0, $s1, 8
	beq	$s2, $a1, .LBB14_15
.LBB14_19:
	beqz	$a0, .LBB14_25
# %bb.20:
	ld.d	$a0, $s1, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
	b	.LBB14_33
.LBB14_21:
	ld.bu	$a1, $s1, 9
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB14_29
# %bb.22:
	ld.wu	$a1, $s1, 40
	ld.d	$a2, $s1, 32
	addi.d	$a3, $a1, 1
	st.w	$a3, $s1, 40
	stx.b	$a0, $a2, $a1
	ld.w	$a0, $s1, 40
	ld.w	$a1, $s1, 44
	bne	$a0, $a1, .LBB14_24
# %bb.23:
	addi.d	$a0, $s1, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB14_24:                              # %_ZN10COutBuffer9WriteByteEh.exit.i20
	ld.wu	$a0, $s1, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 1
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $s1, 24
	b	.LBB14_34
.LBB14_25:
	ld.bu	$a0, $s1, 9
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB14_31
# %bb.26:
	ld.wu	$a0, $s1, 40
	ld.d	$a1, $s1, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $s1, 40
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $s1, 40
	ld.w	$a1, $s1, 44
	bne	$a0, $a1, .LBB14_28
# %bb.27:
	addi.d	$a0, $s1, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB14_28:                              # %_ZN10COutBuffer9WriteByteEh.exit.i25
	ld.wu	$a0, $s1, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $s1, 24
	b	.LBB14_33
.LBB14_29:
	ld.d	$a1, $s1, 96
	ld.d	$a0, $s1, 104
	beq	$a1, $a0, .LBB14_40
# %bb.30:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i19
	ld.d	$a1, $s1, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $s1, 104
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $a0
	b	.LBB14_34
.LBB14_31:
	ld.d	$a1, $s1, 96
	ld.d	$a0, $s1, 104
	beq	$a1, $a0, .LBB14_40
# %bb.32:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i24
	ld.d	$a1, $s1, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $s1, 104
	stx.b	$zero, $a1, $a0
.LBB14_33:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit28
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive15WriteBoolVectorERK13CRecordVectorIbE)
	jirl	$ra, $ra, 0
.LBB14_34:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit23
	ld.w	$a0, $s0, 12
	ori	$s2, $zero, 1
	blt	$a0, $s2, .LBB14_39
# %bb.35:                               # %.lr.ph32
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB14_37
	.p2align	4, , 16
.LBB14_36:                              #   in Loop: Header=BB14_37 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 4
	bge	$s4, $a0, .LBB14_39
.LBB14_37:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 16
	ldx.bu	$a1, $a1, $s4
	bne	$a1, $s2, .LBB14_36
# %bb.38:                               #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $s0, 16
	ldx.w	$a1, $a0, $s3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteUInt32Ej)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	b	.LBB14_36
.LBB14_39:                              # %.loopexit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB14_40:
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
.Lfunc_end14:
	.size	_ZN8NArchive3N7z11COutArchive16WriteHashDigestsERK13CRecordVectorIbERKS2_IjE, .Lfunc_end14-_ZN8NArchive3N7z11COutArchive16WriteHashDigestsERK13CRecordVectorIbERKS2_IjE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive13WritePackInfoEyRK13CRecordVectorIyERKS2_IbERKS2_IjE # -- Begin function _ZN8NArchive3N7z11COutArchive13WritePackInfoEyRK13CRecordVectorIyERKS2_IbERKS2_IjE
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive13WritePackInfoEyRK13CRecordVectorIyERKS2_IbERKS2_IjE,@function
_ZN8NArchive3N7z11COutArchive13WritePackInfoEyRK13CRecordVectorIyERKS2_IbERKS2_IjE: # @_ZN8NArchive3N7z11COutArchive13WritePackInfoEyRK13CRecordVectorIyERKS2_IbERKS2_IjE
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
	move	$s1, $a2
	ld.w	$a2, $a2, 12
	beqz	$a2, .LBB15_27
# %bb.1:
	move	$s0, $a4
	move	$s2, $a3
	move	$fp, $a0
	ld.bu	$a2, $a0, 8
	ori	$a0, $zero, 1
	bne	$a2, $a0, .LBB15_3
# %bb.2:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB15_9
.LBB15_3:
	ld.bu	$a2, $fp, 9
	bne	$a2, $a0, .LBB15_7
# %bb.4:
	ld.wu	$a0, $fp, 40
	ld.d	$a2, $fp, 32
	addi.d	$a3, $a0, 1
	st.w	$a3, $fp, 40
	ori	$a3, $zero, 6
	stx.b	$a3, $a2, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a2, $fp, 44
	bne	$a0, $a2, .LBB15_6
# %bb.5:
	addi.d	$a0, $fp, 32
	move	$s3, $a1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	move	$a1, $s3
.LBB15_6:                               # %_ZN10COutBuffer9WriteByteEh.exit.i
	ld.wu	$a0, $fp, 24
	pcalau12i	$a2, %got_pc_hi20(g_CrcTable)
	ld.d	$a2, $a2, %got_pc_lo12(g_CrcTable)
	andi	$a3, $a0, 255
	xori	$a3, $a3, 6
	slli.d	$a3, $a3, 2
	ldx.w	$a2, $a2, $a3
	srli.d	$a0, $a0, 8
	xor	$a0, $a2, $a0
	st.w	$a0, $fp, 24
	b	.LBB15_9
.LBB15_7:
	ld.d	$a2, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a2, $a0, .LBB15_28
# %bb.8:                                # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
	ld.d	$a2, $fp, 88
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 104
	ori	$a3, $zero, 6
	stx.b	$a3, $a2, $a0
.LBB15_9:                               # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB15_11
# %bb.10:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	ld.w	$a0, $s1, 12
	ori	$s3, $zero, 1
	bge	$a0, $s3, .LBB15_17
	b	.LBB15_19
.LBB15_11:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB15_15
# %bb.12:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 9
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB15_14
# %bb.13:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB15_14:                              # %_ZN10COutBuffer9WriteByteEh.exit.i11
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 9
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	ld.w	$a0, $s1, 12
	ori	$s3, $zero, 1
	bge	$a0, $s3, .LBB15_17
	b	.LBB15_19
.LBB15_15:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB15_28
# %bb.16:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i10
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 9
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $s1, 12
	ori	$s3, $zero, 1
	blt	$a0, $s3, .LBB15_19
.LBB15_17:                              # %.lr.ph
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB15_18:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 16
	ldx.d	$a1, $a0, $s4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 12
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB15_18
.LBB15_19:                              # %._crit_edge
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive16WriteHashDigestsERK13CRecordVectorIbERKS2_IjE)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 8
	bne	$a0, $s3, .LBB15_21
# %bb.20:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB15_27
.LBB15_21:
	ld.bu	$a0, $fp, 9
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB15_25
# %bb.22:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB15_24
# %bb.23:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB15_24:                              # %_ZN10COutBuffer9WriteByteEh.exit.i16
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB15_27
.LBB15_25:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB15_28
# %bb.26:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i15
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$zero, $a1, $a0
.LBB15_27:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit19
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
.LBB15_28:
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
.Lfunc_end15:
	.size	_ZN8NArchive3N7z11COutArchive13WritePackInfoEyRK13CRecordVectorIyERKS2_IbERKS2_IjE, .Lfunc_end15-_ZN8NArchive3N7z11COutArchive13WritePackInfoEyRK13CRecordVectorIyERKS2_IbERKS2_IjE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive15WriteUnpackInfoERK13CObjectVectorINS0_7CFolderEE # -- Begin function _ZN8NArchive3N7z11COutArchive15WriteUnpackInfoERK13CObjectVectorINS0_7CFolderEE
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive15WriteUnpackInfoERK13CObjectVectorINS0_7CFolderEE,@function
_ZN8NArchive3N7z11COutArchive15WriteUnpackInfoERK13CObjectVectorINS0_7CFolderEE: # @_ZN8NArchive3N7z11COutArchive15WriteUnpackInfoERK13CObjectVectorINS0_7CFolderEE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s0, $a1
	ld.w	$a1, $a1, 12
	beqz	$a1, .LBB16_57
# %bb.1:
	move	$fp, $a0
	ld.bu	$a1, $a0, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB16_3
# %bb.2:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB16_7
	b	.LBB16_10
.LBB16_3:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB16_8
# %bb.4:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 7
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB16_6
# %bb.5:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB16_6:                               # %_ZN10COutBuffer9WriteByteEh.exit.i
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 7
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB16_10
.LBB16_7:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB16_16
.LBB16_8:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB16_58
# %bb.9:                                # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 7
	stx.b	$a2, $a1, $a0
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB16_7
.LBB16_10:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB16_14
# %bb.11:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 11
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB16_13
# %bb.12:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB16_13:                              # %_ZN10COutBuffer9WriteByteEh.exit.i32
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 11
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB16_16
.LBB16_14:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB16_58
# %bb.15:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i31
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 11
	stx.b	$a2, $a1, $a0
.LBB16_16:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit35
	ld.w	$a1, $s0, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB16_18
# %bb.17:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	ld.w	$a0, $s0, 12
	ori	$s1, $zero, 1
	bge	$a0, $s1, .LBB16_24
	b	.LBB16_26
.LBB16_18:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB16_22
# %bb.19:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB16_21
# %bb.20:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB16_21:                              # %_ZN10COutBuffer9WriteByteEh.exit.i37
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	ld.w	$a0, $s0, 12
	ori	$s1, $zero, 1
	bge	$a0, $s1, .LBB16_24
	b	.LBB16_26
.LBB16_22:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB16_58
# %bb.23:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i36
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $s0, 12
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB16_26
.LBB16_24:                              # %.lr.ph
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB16_25:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.d	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteFolderERKNS0_7CFolderE)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB16_25
.LBB16_26:                              # %._crit_edge
	ld.bu	$a0, $fp, 8
	bne	$a0, $s1, .LBB16_28
# %bb.27:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	ld.w	$a0, $s0, 12
	ori	$s1, $zero, 1
	bge	$a0, $s1, .LBB16_32
	b	.LBB16_41
.LBB16_28:
	ld.bu	$a0, $fp, 9
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_39
# %bb.29:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 12
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB16_31
# %bb.30:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB16_31:                              # %_ZN10COutBuffer9WriteByteEh.exit.i42
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 12
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	ld.w	$a0, $s0, 12
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB16_41
.LBB16_32:                              # %.lr.ph58
	move	$s2, $zero
	b	.LBB16_34
	.p2align	4, , 16
.LBB16_33:                              # %._crit_edge56
                                        #   in Loop: Header=BB16_34 Depth=1
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB16_38
.LBB16_34:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_36 Depth 2
	ld.d	$a1, $s0, 16
	slli.d	$a2, $s2, 3
	ldx.d	$s3, $a1, $a2
	ld.w	$a1, $s3, 108
	blt	$a1, $s1, .LBB16_33
# %bb.35:                               # %.lr.ph55
                                        #   in Loop: Header=BB16_34 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB16_36:                              #   Parent Loop BB16_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 112
	ldx.d	$a1, $a0, $s4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 108
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB16_36
# %bb.37:                               # %._crit_edge56.loopexit
                                        #   in Loop: Header=BB16_34 Depth=1
	ld.w	$a0, $s0, 12
	b	.LBB16_33
.LBB16_38:                              # %._crit_edge59.loopexit
	slt	$a0, $zero, $a0
	b	.LBB16_42
.LBB16_39:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB16_58
# %bb.40:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i41
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 12
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $s0, 12
	ori	$s1, $zero, 1
	bge	$a0, $s1, .LBB16_32
.LBB16_41:
	move	$a0, $zero
.LBB16_42:                              # %._crit_edge59
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 40
	st.d	$s1, $sp, 56
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIbE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CRecordVectorIbE+16)
	st.d	$a1, $sp, 32
	vst	$vr0, $sp, 8
	ori	$a1, $zero, 4
	st.d	$a1, $sp, 24
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a1, $sp, 0
	beqz	$a0, .LBB16_47
# %bb.43:                               # %.lr.ph62
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB16_44:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.d	$s3, $a0, $s1
	ld.bu	$s4, $s3, 132
.Ltmp0:
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.45:                               #   in Loop: Header=BB16_44 Depth=1
	ld.d	$a0, $sp, 48
	ld.w	$a1, $sp, 44
	ld.w	$s3, $s3, 128
	stx.b	$s4, $a0, $a1
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 44
.Ltmp2:
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp3:
# %bb.46:                               #   in Loop: Header=BB16_44 Depth=1
	ld.w	$a0, $sp, 12
	ld.d	$a1, $sp, 16
	slli.d	$a0, $a0, 2
	stx.w	$s3, $a1, $a0
	ld.w	$a0, $sp, 12
	ld.w	$a1, $s0, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 12
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a1, .LBB16_44
.LBB16_47:                              # %._crit_edge63
.Ltmp5:
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive16WriteHashDigestsERK13CRecordVectorIbERKS2_IjE)
	jirl	$ra, $ra, 0
.Ltmp6:
# %bb.48:
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB16_50
# %bb.49:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB16_56
.LBB16_50:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB16_54
# %bb.51:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB16_53
# %bb.52:
.Ltmp9:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp10:
.LBB16_53:                              # %_ZN10COutBuffer9WriteByteEh.exit.i47
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB16_56
.LBB16_54:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB16_59
# %bb.55:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i46
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$zero, $a1, $a0
.LBB16_56:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit51
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB16_57:
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
.LBB16_58:
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
.LBB16_59:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.Ltmp7:
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp8:
# %bb.60:                               # %.noexc50
.LBB16_61:
.Ltmp11:
	b	.LBB16_63
.LBB16_62:
.Ltmp4:
.LBB16_63:
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN8NArchive3N7z11COutArchive15WriteUnpackInfoERK13CObjectVectorINS0_7CFolderEE, .Lfunc_end16-_ZN8NArchive3N7z11COutArchive15WriteUnpackInfoERK13CObjectVectorINS0_7CFolderEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
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
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp5                 #   Call between .Ltmp5 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp10                 #   Call between .Ltmp10 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Lfunc_end16-.Ltmp8            #   Call between .Ltmp8 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3N7z11COutArchive19WriteSubStreamsInfoERK13CObjectVectorINS0_7CFolderEERK13CRecordVectorIjERKS7_IyERKS7_IbESA_ # -- Begin function _ZN8NArchive3N7z11COutArchive19WriteSubStreamsInfoERK13CObjectVectorINS0_7CFolderEERK13CRecordVectorIjERKS7_IyERKS7_IbESA_
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive19WriteSubStreamsInfoERK13CObjectVectorINS0_7CFolderEERK13CRecordVectorIjERKS7_IyERKS7_IbESA_,@function
_ZN8NArchive3N7z11COutArchive19WriteSubStreamsInfoERK13CObjectVectorINS0_7CFolderEERK13CRecordVectorIjERKS7_IyERKS7_IbESA_: # @_ZN8NArchive3N7z11COutArchive19WriteSubStreamsInfoERK13CObjectVectorINS0_7CFolderEERK13CRecordVectorIjERKS7_IyERKS7_IbESA_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
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
	ld.bu	$a6, $a0, 8
	ori	$a0, $zero, 1
	move	$s0, $a5
	move	$s1, $a4
	move	$s4, $a3
	move	$s2, $a2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	bne	$a6, $a0, .LBB17_2
# %bb.1:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	ld.w	$a0, $s2, 12
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB17_8
	b	.LBB17_39
.LBB17_2:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB17_6
# %bb.3:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 8
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB17_5
# %bb.4:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB17_5:                               # %_ZN10COutBuffer9WriteByteEh.exit.i
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 8
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	ld.w	$a0, $s2, 12
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB17_8
	b	.LBB17_39
.LBB17_6:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB17_61
# %bb.7:                                # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 8
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $s2, 12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB17_39
.LBB17_8:                               # %.lr.ph
	ld.d	$a1, $s2, 16
	move	$a2, $a0
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB17_9:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	bne	$a3, $a4, .LBB17_11
# %bb.10:                               #   in Loop: Header=BB17_9 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB17_9
	b	.LBB17_21
.LBB17_11:
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB17_13
# %bb.12:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	ld.w	$a0, $s2, 12
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB17_19
	b	.LBB17_39
.LBB17_13:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB17_17
# %bb.14:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB17_16
# %bb.15:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB17_16:                              # %_ZN10COutBuffer9WriteByteEh.exit.i61
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 13
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	ld.w	$a0, $s2, 12
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB17_19
	b	.LBB17_39
.LBB17_17:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB17_61
# %bb.18:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i60
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $s2, 12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB17_39
.LBB17_19:                              # %.lr.ph85.preheader
	move	$s3, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB17_20:                              # %.lr.ph85
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 16
	ldx.wu	$a1, $a0, $s3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 12
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 4
	blt	$s5, $a0, .LBB17_20
.LBB17_21:                              # %.loopexit76
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB17_39
# %bb.22:                               # %.preheader.lr.ph
	move	$s7, $zero
	move	$s8, $zero
	ld.d	$a2, $s2, 16
	addi.d	$a3, $fp, 32
	st.d	$a3, $sp, 0                     # 8-byte Folded Spill
	b	.LBB17_25
	.p2align	4, , 16
.LBB17_23:                              # %._crit_edge.loopexit
                                        #   in Loop: Header=BB17_25 Depth=1
	ld.w	$a0, $s2, 12
	add.d	$s8, $s8, $s6
.LBB17_24:                              # %._crit_edge
                                        #   in Loop: Header=BB17_25 Depth=1
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB17_39
.LBB17_25:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_30 Depth 2
	slli.d	$s3, $s7, 2
	ldx.w	$a3, $a2, $s3
	beqz	$a3, .LBB17_24
# %bb.26:                               # %.lr.ph89.preheader
                                        #   in Loop: Header=BB17_25 Depth=1
	move	$s5, $zero
	b	.LBB17_30
.LBB17_27:                              #   in Loop: Header=BB17_30 Depth=2
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
.LBB17_28:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit69
                                        #   in Loop: Header=BB17_30 Depth=2
	ld.d	$a0, $s4, 16
	add.w	$a1, $s8, $s5
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 16
	move	$a1, $zero
.LBB17_29:                              #   in Loop: Header=BB17_30 Depth=2
	ldx.w	$a3, $a2, $s3
	move	$s5, $s6
	bgeu	$s6, $a3, .LBB17_23
.LBB17_30:                              # %.lr.ph89
                                        #   Parent Loop BB17_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s6, $s5, 1
	beq	$s6, $a3, .LBB17_29
# %bb.31:                               #   in Loop: Header=BB17_30 Depth=2
	andi	$a0, $a1, 1
	beqz	$a0, .LBB17_28
# %bb.32:                               #   in Loop: Header=BB17_30 Depth=2
	ld.bu	$a0, $fp, 8
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB17_27
# %bb.33:                               #   in Loop: Header=BB17_30 Depth=2
	ld.bu	$a0, $fp, 9
	bne	$a0, $a1, .LBB17_37
# %bb.34:                               #   in Loop: Header=BB17_30 Depth=2
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 9
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB17_36
# %bb.35:                               #   in Loop: Header=BB17_30 Depth=2
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB17_36:                              # %_ZN10COutBuffer9WriteByteEh.exit.i66
                                        #   in Loop: Header=BB17_30 Depth=2
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 9
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB17_28
.LBB17_37:                              #   in Loop: Header=BB17_30 Depth=2
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB17_61
# %bb.38:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i65
                                        #   in Loop: Header=BB17_30 Depth=2
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 9
	stx.b	$a2, $a1, $a0
	b	.LBB17_28
.LBB17_39:                              # %._crit_edge94
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 80
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIbE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIbE+16)
	st.d	$a0, $sp, 56
	vst	$vr0, $sp, 32
	ori	$a1, $zero, 4
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	st.d	$a1, $sp, 48
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a1, $sp, 24
	blt	$a0, $a2, .LBB17_51
# %bb.40:                               # %.lr.ph103
	move	$s3, $zero
	move	$s4, $zero
	ori	$a3, $zero, 1
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	b	.LBB17_43
	.p2align	4, , 16
.LBB17_41:                              #   in Loop: Header=BB17_43 Depth=1
	addi.w	$s4, $s4, 1
.LBB17_42:                              # %.loopexit
                                        #   in Loop: Header=BB17_43 Depth=1
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB17_51
.LBB17_43:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_47 Depth 2
	ld.d	$a1, $s2, 16
	slli.d	$a2, $s3, 2
	ldx.w	$s6, $a1, $a2
	bne	$s6, $a3, .LBB17_45
# %bb.44:                               #   in Loop: Header=BB17_43 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	slli.d	$a2, $s3, 3
	ldx.d	$a1, $a1, $a2
	ld.bu	$a1, $a1, 132
	beq	$a1, $a3, .LBB17_41
	b	.LBB17_46
	.p2align	4, , 16
.LBB17_45:                              #   in Loop: Header=BB17_43 Depth=1
	blt	$s6, $a3, .LBB17_42
.LBB17_46:                              # %.lr.ph98.preheader
                                        #   in Loop: Header=BB17_43 Depth=1
	slli.d	$s7, $s4, 2
	move	$s8, $s4
	.p2align	4, , 16
.LBB17_47:                              # %.lr.ph98
                                        #   Parent Loop BB17_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 16
	ldx.bu	$s5, $a0, $s8
.Ltmp12:
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.48:                               #   in Loop: Header=BB17_47 Depth=2
	ld.w	$a0, $sp, 68
	ld.d	$a1, $s0, 16
	ld.d	$a2, $sp, 72
	addi.d	$a3, $a0, 1
	st.w	$a3, $sp, 68
	ldx.w	$s2, $a1, $s7
	stx.b	$s5, $a2, $a0
.Ltmp14:
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp15:
# %bb.49:                               #   in Loop: Header=BB17_47 Depth=2
	ld.w	$a0, $sp, 36
	ld.d	$a1, $sp, 40
	slli.d	$a0, $a0, 2
	stx.w	$s2, $a1, $a0
	ld.w	$a0, $sp, 36
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 36
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 4
	addi.w	$s6, $s6, -1
	addi.w	$s4, $s4, 1
	bnez	$s6, .LBB17_47
# %bb.50:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB17_43 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ori	$a3, $zero, 1
	b	.LBB17_42
.LBB17_51:                              # %._crit_edge104
.Ltmp17:
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive16WriteHashDigestsERK13CRecordVectorIbERKS2_IjE)
	jirl	$ra, $ra, 0
.Ltmp18:
# %bb.52:
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB17_54
# %bb.53:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB17_60
.LBB17_54:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB17_58
# %bb.55:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB17_57
# %bb.56:
.Ltmp21:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp22:
.LBB17_57:                              # %_ZN10COutBuffer9WriteByteEh.exit.i71
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB17_60
.LBB17_58:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB17_62
# %bb.59:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i70
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$zero, $a1, $a0
.LBB17_60:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit75
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB17_61:
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
.LBB17_62:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.Ltmp19:
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp20:
# %bb.63:                               # %.noexc74
.LBB17_64:
.Ltmp23:
	b	.LBB17_66
.LBB17_65:
.Ltmp16:
.LBB17_66:
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
.Lfunc_end17:
	.size	_ZN8NArchive3N7z11COutArchive19WriteSubStreamsInfoERK13CObjectVectorINS0_7CFolderEERK13CRecordVectorIjERKS7_IyERKS7_IbESA_, .Lfunc_end17-_ZN8NArchive3N7z11COutArchive19WriteSubStreamsInfoERK13CObjectVectorINS0_7CFolderEERK13CRecordVectorIjERKS7_IyERKS7_IbESA_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table17:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp12-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp15-.Ltmp12                #   Call between .Ltmp12 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin1          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp22-.Ltmp17                #   Call between .Ltmp17 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin1          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp19-.Ltmp22                #   Call between .Ltmp22 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp23-.Lfunc_begin1          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Lfunc_end17-.Ltmp20           #   Call between .Ltmp20 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN8NArchive3N7z11COutArchive9SkipAlignEjj # -- Begin function _ZN8NArchive3N7z11COutArchive9SkipAlignEjj
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive9SkipAlignEjj,@function
_ZN8NArchive3N7z11COutArchive9SkipAlignEjj: # @_ZN8NArchive3N7z11COutArchive9SkipAlignEjj
# %bb.0:
	ret
.Lfunc_end18:
	.size	_ZN8NArchive3N7z11COutArchive9SkipAlignEjj, .Lfunc_end18-_ZN8NArchive3N7z11COutArchive9SkipAlignEjj
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj # -- Begin function _ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj,@function
_ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj: # @_ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj
	.cfi_startproc
# %bb.0:                                # %_ZN8NArchive3N7zL16GetBigNumberSizeEy.exit
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
	ld.bu	$a1, $a0, 8
	ld.w	$s2, $s0, 12
	ori	$a0, $zero, 1
	move	$s1, $a2
	bne	$a1, $a0, .LBB19_2
# %bb.1:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB19_8
.LBB19_2:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB19_6
# %bb.3:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$a3, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB19_5
# %bb.4:
	addi.d	$a0, $fp, 32
	move	$s3, $a4
	move	$s4, $a3
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	move	$a3, $s4
	move	$a4, $s3
.LBB19_5:                               # %_ZN10COutBuffer9WriteByteEh.exit.i
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	xor	$a2, $a3, $a0
	andi	$a2, $a2, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB19_8
.LBB19_6:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB19_34
# %bb.7:                                # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$a3, $a1, $a0
.LBB19_8:                               # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
	xor	$a0, $s1, $s2
	sltui	$a0, $a0, 1
	addi.d	$a1, $s2, 7
	bstrpick.d	$a1, $a1, 31, 3
	masknez	$a0, $a1, $a0
	bstrpick.d	$a1, $a4, 31, 0
	mul.d	$a1, $a1, $s1
	add.d	$a0, $a1, $a0
	addi.d	$a1, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	ld.bu	$a0, $fp, 8
	bne	$s1, $a1, .LBB19_11
# %bb.9:
	beqz	$a0, .LBB19_13
# %bb.10:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB19_23
	b	.LBB19_32
.LBB19_11:
	beqz	$a0, .LBB19_17
# %bb.12:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB19_31
.LBB19_13:
	ld.bu	$a1, $fp, 9
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB19_21
# %bb.14:
	ld.wu	$a1, $fp, 40
	ld.d	$a2, $fp, 32
	addi.d	$a3, $a1, 1
	st.w	$a3, $fp, 40
	stx.b	$a0, $a2, $a1
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB19_16
# %bb.15:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB19_16:                              # %_ZN10COutBuffer9WriteByteEh.exit.i15
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 1
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB19_23
	b	.LBB19_32
.LBB19_17:
	ld.bu	$a0, $fp, 9
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB19_29
# %bb.18:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB19_20
# %bb.19:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB19_20:                              # %_ZN10COutBuffer9WriteByteEh.exit.i20
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB19_31
.LBB19_21:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB19_34
# %bb.22:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i14
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $a0
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB19_32
.LBB19_23:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB19_27
# %bb.24:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB19_26
# %bb.25:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB19_26:                              # %_ZN10COutBuffer9WriteByteEh.exit.i25
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB19_33
.LBB19_27:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB19_34
# %bb.28:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i24
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$zero, $a1, $a0
	b	.LBB19_33
.LBB19_29:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB19_34
# %bb.30:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i19
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$zero, $a1, $a0
.LBB19_31:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit23
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive15WriteBoolVectorERK13CRecordVectorIbE)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB19_23
.LBB19_32:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
.LBB19_33:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit28
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB19_34:
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
.Lfunc_end19:
	.size	_ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj, .Lfunc_end19-_ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive20WriteUInt64DefVectorERKNS0_16CUInt64DefVectorEh # -- Begin function _ZN8NArchive3N7z11COutArchive20WriteUInt64DefVectorERKNS0_16CUInt64DefVectorEh
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive20WriteUInt64DefVectorERKNS0_16CUInt64DefVectorEh,@function
_ZN8NArchive3N7z11COutArchive20WriteUInt64DefVectorERKNS0_16CUInt64DefVectorEh: # @_ZN8NArchive3N7z11COutArchive20WriteUInt64DefVectorERKNS0_16CUInt64DefVectorEh
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
	move	$fp, $a1
	ld.w	$a1, $a1, 44
	ori	$a4, $zero, 1
	blt	$a1, $a4, .LBB20_14
# %bb.1:                                # %.lr.ph
	move	$a3, $a2
	move	$s0, $a0
	ld.d	$a0, $fp, 48
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB20_3
# %bb.2:
	move	$a4, $zero
	move	$a2, $zero
	b	.LBB20_6
.LBB20_3:                               # %vector.ph
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a4, $a2, 3
	vrepli.b	$vr0, 0
	addi.d	$a2, $a0, 4
	move	$a5, $a4
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB20_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, -4
	ld.w	$a7, $a2, 0
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$a5, $a5, -8
	addi.d	$a2, $a2, 8
	bnez	$a5, .LBB20_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a4, $a1, .LBB20_8
.LBB20_6:                               # %scalar.ph.preheader
	add.d	$a0, $a0, $a4
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB20_7:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a0, 0
	add.w	$a2, $a2, $a4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB20_7
.LBB20_8:                               # %._crit_edge
	beqz	$a2, .LBB20_14
# %bb.9:
	addi.d	$a1, $fp, 32
	ori	$a4, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB20_14
# %bb.10:                               # %.lr.ph24
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB20_12
	.p2align	4, , 16
.LBB20_11:                              #   in Loop: Header=BB20_12 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bge	$s3, $a0, .LBB20_14
.LBB20_12:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 48
	ldx.bu	$a1, $a1, $s3
	bne	$a1, $s1, .LBB20_11
# %bb.13:                               #   in Loop: Header=BB20_12 Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$a1, $a0, $s2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteUInt64Ey)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	b	.LBB20_11
.LBB20_14:                              # %.loopexit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end20:
	.size	_ZN8NArchive3N7z11COutArchive20WriteUInt64DefVectorERKNS0_16CUInt64DefVectorEh, .Lfunc_end20-_ZN8NArchive3N7z11COutArchive20WriteUInt64DefVectorERKNS0_16CUInt64DefVectorEh
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11COutArchive12EncodeStreamERNS0_8CEncoderERK7CBufferIhER13CRecordVectorIyER13CObjectVectorINS0_7CFolderEE # -- Begin function _ZN8NArchive3N7z11COutArchive12EncodeStreamERNS0_8CEncoderERK7CBufferIhER13CRecordVectorIyER13CObjectVectorINS0_7CFolderEE
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive12EncodeStreamERNS0_8CEncoderERK7CBufferIhER13CRecordVectorIyER13CObjectVectorINS0_7CFolderEE,@function
_ZN8NArchive3N7z11COutArchive12EncodeStreamERNS0_8CEncoderERK7CBufferIhER13CRecordVectorIyER13CObjectVectorINS0_7CFolderEE: # @_ZN8NArchive3N7z11COutArchive12EncodeStreamERNS0_8CEncoderERK7CBufferIhER13CRecordVectorIyER13CObjectVectorINS0_7CFolderEE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s0, $a4
	move	$s1, $a3
	move	$s4, $a2
	move	$s2, $a1
	move	$s3, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(_ZTV12CBufInStream)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTV12CBufInStream)
	move	$fp, $a0
	st.w	$zero, $a0, 8
	ld.d	$a2, $a1, 24
	addi.d	$a0, $a1, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $s4, 16
	ld.d	$a1, $s4, 8
	ld.d	$a2, $fp, 40
	st.d	$a0, $fp, 16
	st.d	$a1, $fp, 32
	st.d	$zero, $fp, 24
	beqz	$a2, .LBB21_3
# %bb.1:
	ld.d	$a0, $a2, 0
	ld.d	$a1, $a0, 16
.Ltmp24:
	move	$a0, $a2
	jirl	$ra, $a1, 0
.Ltmp25:
# %bb.2:                                # %._crit_edge
	ld.d	$a0, $s4, 16
	ld.d	$a1, $s4, 8
.LBB21_3:
	st.d	$zero, $fp, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16
	ori	$a2, $zero, 8
	st.d	$a2, $sp, 32
	pcalau12i	$a3, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$s5, $a3, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	st.d	$s5, $sp, 8
	vst	$vr0, $sp, 48
	st.d	$a2, $sp, 64
	pcalau12i	$a3, %pc_hi20(_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE+16)
	st.d	$a3, $sp, 40
	vst	$vr0, $sp, 80
	ori	$a3, $zero, 4
	st.d	$a3, $sp, 96
	pcalau12i	$a3, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a3, $sp, 72
	vst	$vr0, $sp, 112
	st.d	$a2, $sp, 128
	pcalau12i	$a2, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a2, $sp, 104
	ori	$a2, $zero, 1
	st.b	$a2, $sp, 140
.Ltmp27:
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
.Ltmp28:
# %bb.4:
	ld.d	$a1, $s4, 8
	ld.d	$a5, $s3, 120
	st.w	$a0, $sp, 136
	st.d	$a1, $sp, 0
.Ltmp30:
	addi.d	$a3, $sp, 0
	addi.d	$a4, $sp, 8
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $zero
	move	$a6, $s1
	move	$a7, $zero
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp31:
# %bb.5:
	move	$s1, $a0
	bnez	$a0, .LBB21_10
# %bb.6:
.Ltmp33:
	ori	$a0, $zero, 136
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp34:
# %bb.7:                                # %.noexc29
.Ltmp35:
	move	$s2, $a0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z7CFolderC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.8:
.Ltmp38:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp39:
# %bb.9:                                # %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$s2, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 12
.LBB21_10:
	addi.d	$s0, $sp, 40
	addi.d	$s2, $sp, 72
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 8
.Ltmp44:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp45:
# %bb.11:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp47:
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp48:
# %bb.12:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	move	$a0, $s1
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
.LBB21_13:
.Ltmp37:
	move	$s0, $a0
	ori	$a1, $zero, 136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB21_21
.LBB21_14:
.Ltmp26:
	move	$s0, $a0
	b	.LBB21_22
.LBB21_15:
.Ltmp40:
	b	.LBB21_20
.LBB21_16:
.Ltmp49:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB21_17:
.Ltmp46:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB21_18:
.Ltmp32:
	b	.LBB21_20
.LBB21_19:
.Ltmp29:
.LBB21_20:
	move	$s0, $a0
.LBB21_21:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z7CFolderD2Ev)
	jirl	$ra, $ra, 0
.LBB21_22:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp41:
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp42:
# %bb.23:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB21_24:
.Ltmp43:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN8NArchive3N7z11COutArchive12EncodeStreamERNS0_8CEncoderERK7CBufferIhER13CRecordVectorIyER13CObjectVectorINS0_7CFolderEE, .Lfunc_end21-_ZN8NArchive3N7z11COutArchive12EncodeStreamERNS0_8CEncoderERK7CBufferIhER13CRecordVectorIyER13CObjectVectorINS0_7CFolderEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table21:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp24-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin2          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin2          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin2          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp40-.Lfunc_begin2          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin2          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin2          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp44-.Ltmp39                #   Call between .Ltmp39 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin2          #     jumps to .Ltmp46
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp45-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp47-.Ltmp45                #   Call between .Ltmp45 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin2          #     jumps to .Ltmp49
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp48-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp41-.Ltmp48                #   Call between .Ltmp48 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin2          #     jumps to .Ltmp43
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp42-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Lfunc_end21-.Ltmp42           #   Call between .Ltmp42 and .Lfunc_end21
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
.Ltmp50:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp51:
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB22_2:
.Ltmp52:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN8NArchive3N7z7CFolderD2Ev, .Lfunc_end22-_ZN8NArchive3N7z7CFolderD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z7CFolderD2Ev,"aG",@progbits,_ZN8NArchive3N7z7CFolderD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp50-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin3          #     jumps to .Ltmp52
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end22-.Ltmp51           #   Call between .Ltmp51 and .Lfunc_end22
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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZN8NArchive3N7z11COutArchive11WriteHeaderERKNS0_16CArchiveDatabaseERKNS0_14CHeaderOptionsERy
.LCPI23_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	_ZN8NArchive3N7z11COutArchive11WriteHeaderERKNS0_16CArchiveDatabaseERKNS0_14CHeaderOptionsERy
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive11WriteHeaderERKNS0_16CArchiveDatabaseERKNS0_14CHeaderOptionsERy,@function
_ZN8NArchive3N7z11COutArchive11WriteHeaderERKNS0_16CArchiveDatabaseERKNS0_14CHeaderOptionsERy: # @_ZN8NArchive3N7z11COutArchive11WriteHeaderERKNS0_16CArchiveDatabaseERKNS0_14CHeaderOptionsERy
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	move	$s0, $a1
	ld.w	$a4, $a1, 12
	ori	$a1, $zero, 1
	move	$s7, $a2
	move	$fp, $a0
	blt	$a4, $a1, .LBB23_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s0, 16
	ori	$a2, $zero, 8
	bgeu	$a4, $a2, .LBB23_4
# %bb.2:
	move	$a2, $zero
	move	$a5, $zero
	b	.LBB23_7
.LBB23_3:
	move	$a5, $zero
	b	.LBB23_9
.LBB23_4:                               # %vector.ph
	bstrpick.d	$a2, $a4, 30, 3
	slli.d	$a2, $a2, 3
	xvrepli.b	$xr0, 0
	addi.d	$a5, $a0, 32
	move	$a6, $a2
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB23_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a5, -32
	xvld	$xr3, $a5, 0
	xvadd.d	$xr0, $xr2, $xr0
	xvadd.d	$xr1, $xr3, $xr1
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB23_5
# %bb.6:                                # %middle.block
	pcalau12i	$a5, %pc_hi20(.LCPI23_0)
	xvld	$xr2, $a5, %pc_lo12(.LCPI23_0)
	xvadd.d	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.d	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$a5, $xr0, 0
	beq	$a2, $a4, .LBB23_9
.LBB23_7:                               # %scalar.ph.preheader
	alsl.d	$a0, $a2, $a0, 3
	sub.d	$a2, $a4, $a2
	.p2align	4, , 16
.LBB23_8:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	add.d	$a5, $a4, $a5
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB23_8
.LBB23_9:                               # %._crit_edge
	st.d	$a5, $a3, 0
	ld.bu	$a0, $fp, 8
	bne	$a0, $a1, .LBB23_11
# %bb.10:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB23_17
.LBB23_11:
	ld.bu	$a1, $fp, 9
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB23_15
# %bb.12:
	ld.wu	$a1, $fp, 40
	ld.d	$a2, $fp, 32
	addi.d	$a3, $a1, 1
	st.w	$a3, $fp, 40
	stx.b	$a0, $a2, $a1
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_14
# %bb.13:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_14:                              # %_ZN10COutBuffer9WriteByteEh.exit.i
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 1
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB23_17
.LBB23_15:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB23_244
# %bb.16:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $a0
.LBB23_17:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
	ld.w	$a1, $s0, 108
	ori	$a0, $zero, 1
	pcalau12i	$a2, %pc_hi20(_ZTV13CRecordVectorIbE)
	addi.d	$s3, $a2, %pc_lo12(_ZTV13CRecordVectorIbE)
	blt	$a1, $a0, .LBB23_44
# %bb.18:
	ld.bu	$a1, $fp, 8
	bne	$a1, $a0, .LBB23_20
# %bb.19:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB23_26
.LBB23_20:
	ld.bu	$a0, $fp, 9
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB23_24
# %bb.21:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 4
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_23
# %bb.22:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_23:                              # %_ZN10COutBuffer9WriteByteEh.exit.i156
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 4
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB23_26
.LBB23_24:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB23_244
# %bb.25:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i155
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 4
	stx.b	$a2, $a1, $a0
.LBB23_26:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit159
	addi.d	$s2, $s0, 96
	addi.d	$a3, $s0, 32
	addi.d	$a4, $s0, 64
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive13WritePackInfoEyRK13CRecordVectorIyERKS2_IbERKS2_IjE)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive15WriteUnpackInfoERK13CObjectVectorINS0_7CFolderEE)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 128
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 144
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a0, $sp, 120
	vst	$vr0, $sp, 96
	addi.d	$a0, $s3, 16
	st.d	$a0, $sp, 88
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 80
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	ld.w	$a0, $s0, 172
	st.d	$a1, $sp, 56
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 112
	vst	$vr0, $sp, 64
	blt	$a0, $a1, .LBB23_34
# %bb.27:                               # %.lr.ph300
	move	$s1, $zero
	move	$s4, $zero
	b	.LBB23_29
	.p2align	4, , 16
.LBB23_28:                              #   in Loop: Header=BB23_29 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s1, $s1, 8
	bge	$s4, $a0, .LBB23_34
.LBB23_29:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 176
	ldx.d	$s5, $a1, $s1
	ld.bu	$a1, $s5, 32
	beqz	$a1, .LBB23_28
# %bb.30:                               #   in Loop: Header=BB23_29 Depth=1
	ld.d	$s6, $s5, 0
.Ltmp53:
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.31:                               #   in Loop: Header=BB23_29 Depth=1
	ld.w	$a0, $sp, 132
	ld.d	$a1, $sp, 136
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	ld.bu	$s6, $s5, 34
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
.Ltmp55:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp56:
# %bb.32:                               #   in Loop: Header=BB23_29 Depth=1
	ld.d	$a0, $sp, 104
	ld.w	$a1, $sp, 100
	stx.b	$s6, $a0, $a1
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 100
	ld.w	$s5, $s5, 12
.Ltmp57:
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp58:
# %bb.33:                               # %_ZN13CRecordVectorIjE3AddEj.exit
                                        #   in Loop: Header=BB23_29 Depth=1
	ld.w	$a0, $sp, 68
	ld.d	$a1, $sp, 72
	slli.d	$a0, $a0, 2
	stx.w	$s5, $a1, $a0
	ld.w	$a1, $sp, 68
	ld.w	$a0, $s0, 172
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 68
	b	.LBB23_28
.LBB23_34:                              # %._crit_edge301
	addi.d	$a2, $s0, 128
.Ltmp60:
	addi.d	$a3, $sp, 120
	addi.d	$a4, $sp, 88
	addi.d	$a5, $sp, 56
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive19WriteSubStreamsInfoERK13CObjectVectorINS0_7CFolderEERK13CRecordVectorIjERKS7_IyERKS7_IbESA_)
	jirl	$ra, $ra, 0
.Ltmp61:
# %bb.35:
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB23_37
# %bb.36:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB23_43
.LBB23_37:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB23_41
# %bb.38:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_40
# %bb.39:
.Ltmp64:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp65:
.LBB23_40:                              # %_ZN10COutBuffer9WriteByteEh.exit.i161
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB23_43
.LBB23_41:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB23_245
# %bb.42:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i160
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$zero, $a1, $a0
.LBB23_43:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit165
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB23_44:
	ld.w	$a1, $s0, 172
	ld.bu	$a0, $fp, 8
	beqz	$a1, .LBB23_47
# %bb.45:
	beqz	$a0, .LBB23_51
# %bb.46:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB23_57
.LBB23_47:
	bnez	$a0, .LBB23_236
# %bb.48:
	ld.bu	$a0, $fp, 9
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB23_240
.LBB23_49:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB23_244
# %bb.50:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i272
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$zero, $a1, $a0
	b	.LBB23_243
.LBB23_51:
	ld.bu	$a0, $fp, 9
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB23_55
# %bb.52:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 5
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_54
# %bb.53:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_54:                              # %_ZN10COutBuffer9WriteByteEh.exit.i172
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 5
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB23_57
.LBB23_55:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB23_244
# %bb.56:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i171
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 5
	stx.b	$a2, $a1, $a0
.LBB23_57:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit175
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $s0, 172
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	ori	$s1, $zero, 1
	ld.w	$a1, $s0, 172
	st.d	$s1, $sp, 144
	addi.d	$a0, $s3, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 120
.Ltmp67:
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp68:
# %bb.58:                               # %.preheader289
	ld.w	$a0, $s0, 172
	blt	$a0, $s1, .LBB23_112
# %bb.59:                               # %.lr.ph304
	move	$s1, $zero
	move	$s3, $zero
	move	$s2, $zero
	ori	$s4, $zero, 1
	b	.LBB23_61
	.p2align	4, , 16
.LBB23_60:                              #   in Loop: Header=BB23_61 Depth=1
	ld.w	$a0, $s0, 172
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 8
	bge	$s3, $a0, .LBB23_66
.LBB23_61:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 176
	ldx.d	$a0, $a0, $s1
	ld.bu	$a0, $a0, 32
	bne	$a0, $s4, .LBB23_64
# %bb.62:                               #   in Loop: Header=BB23_61 Depth=1
.Ltmp72:
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp73:
# %bb.63:                               # %_ZN13CRecordVectorIbE3AddEb.exit177
                                        #   in Loop: Header=BB23_61 Depth=1
	ld.d	$a0, $sp, 136
	ld.w	$a1, $sp, 132
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 132
	b	.LBB23_60
	.p2align	4, , 16
.LBB23_64:                              #   in Loop: Header=BB23_61 Depth=1
.Ltmp70:
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp71:
# %bb.65:                               #   in Loop: Header=BB23_61 Depth=1
	ld.d	$a0, $sp, 136
	ld.w	$a1, $sp, 132
	stx.b	$s4, $a0, $a1
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 132
	addi.w	$s2, $s2, 1
	b	.LBB23_60
.LBB23_66:                              # %._crit_edge305
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB23_112
# %bb.67:
	ld.bu	$a1, $fp, 8
	bne	$a1, $a0, .LBB23_69
# %bb.68:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB23_75
.LBB23_69:
	ld.bu	$a0, $fp, 9
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB23_73
# %bb.70:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 14
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_72
# %bb.71:
.Ltmp77:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp78:
.LBB23_72:                              # %_ZN10COutBuffer9WriteByteEh.exit.i181
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 14
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB23_75
.LBB23_73:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB23_247
# %bb.74:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i180
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 14
	stx.b	$a2, $a1, $a0
.LBB23_75:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit186
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 7
	bstrpick.d	$a1, $a0, 31, 3
.Ltmp79:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
.Ltmp80:
# %bb.76:
.Ltmp81:
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive15WriteBoolVectorERK13CRecordVectorIbE)
	jirl	$ra, $ra, 0
.Ltmp82:
# %bb.77:
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 112
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $sp, 88
	vst	$vr0, $sp, 64
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 56
.Ltmp84:
	addi.d	$a0, $sp, 88
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp85:
# %bb.78:
.Ltmp86:
	addi.d	$a0, $sp, 56
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp87:
# %bb.79:                               # %.preheader288
	ld.w	$a0, $s0, 172
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB23_111
# %bb.80:                               # %.lr.ph310
	move	$s3, $zero
	move	$s5, $zero
	move	$s4, $zero
	move	$s2, $zero
	b	.LBB23_85
	.p2align	4, , 16
.LBB23_81:                              #   in Loop: Header=BB23_85 Depth=1
	ld.d	$a0, $s0, 464
	ldx.b	$s7, $a0, $s5
.LBB23_82:                              # %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit
                                        #   in Loop: Header=BB23_85 Depth=1
.Ltmp92:
	ld.b	$s6, $s6, 33
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp93:
# %bb.83:                               #   in Loop: Header=BB23_85 Depth=1
	ld.d	$a0, $sp, 72
	ld.w	$a1, $sp, 68
	andn	$a2, $s1, $s6
	add.w	$s4, $s4, $a2
	andi	$a2, $s7, 1
	stx.b	$a2, $a0, $a1
	ld.w	$a0, $s0, 172
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 68
	add.w	$s2, $s2, $a2
.LBB23_84:                              #   in Loop: Header=BB23_85 Depth=1
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	bge	$s5, $a0, .LBB23_89
.LBB23_85:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 176
	ldx.d	$s6, $a1, $s3
	ld.bu	$a1, $s6, 32
	bnez	$a1, .LBB23_84
# %bb.86:                               #   in Loop: Header=BB23_85 Depth=1
	ld.bu	$s7, $s6, 33
.Ltmp89:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp90:
# %bb.87:                               #   in Loop: Header=BB23_85 Depth=1
	ld.d	$a0, $sp, 104
	ld.w	$a1, $sp, 100
	xori	$a2, $s7, 1
	stx.b	$a2, $a0, $a1
	ld.w	$a0, $s0, 460
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 100
	blt	$s5, $a0, .LBB23_81
# %bb.88:                               #   in Loop: Header=BB23_85 Depth=1
	move	$s7, $zero
	b	.LBB23_82
.LBB23_89:                              # %._crit_edge311
	beqz	$s4, .LBB23_100
# %bb.90:
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB23_92
# %bb.91:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB23_98
.LBB23_92:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB23_96
# %bb.93:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 15
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_95
# %bb.94:
.Ltmp95:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp96:
.LBB23_95:                              # %_ZN10COutBuffer9WriteByteEh.exit.i192
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 15
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB23_98
.LBB23_96:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB23_249
# %bb.97:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i191
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 15
	stx.b	$a2, $a1, $a0
.LBB23_98:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit197
	ld.w	$a0, $sp, 100
	addi.d	$a0, $a0, 7
	bstrpick.d	$a1, $a0, 31, 3
.Ltmp97:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
.Ltmp98:
# %bb.99:
.Ltmp99:
	addi.d	$a1, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive15WriteBoolVectorERK13CRecordVectorIbE)
	jirl	$ra, $ra, 0
.Ltmp100:
.LBB23_100:
	beqz	$s2, .LBB23_111
# %bb.101:
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB23_103
# %bb.102:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB23_109
.LBB23_103:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB23_107
# %bb.104:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 16
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_106
# %bb.105:
.Ltmp103:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp104:
.LBB23_106:                             # %_ZN10COutBuffer9WriteByteEh.exit.i199
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB23_109
.LBB23_107:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB23_249
# %bb.108:                              # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i198
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 16
	stx.b	$a2, $a1, $a0
.LBB23_109:                             # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit204
	ld.w	$a0, $sp, 68
	addi.d	$a0, $a0, 7
	bstrpick.d	$a1, $a0, 31, 3
.Ltmp105:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
.Ltmp106:
# %bb.110:
.Ltmp107:
	addi.d	$a1, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive15WriteBoolVectorERK13CRecordVectorIbE)
	jirl	$ra, $ra, 0
.Ltmp108:
.LBB23_111:                             # %.thread
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB23_112:                             # %._crit_edge305.thread
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 172
	ori	$a1, $zero, 1
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	blt	$a0, $a1, .LBB23_158
# %bb.113:                              # %.lr.ph318
	ld.d	$a1, $s0, 176
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB23_115
# %bb.114:
	move	$a2, $zero
	move	$s1, $zero
	move	$a3, $zero
	b	.LBB23_118
.LBB23_115:                             # %vector.ph374
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	vrepli.b	$vr0, 0
	xvrepli.b	$xr2, 0
	addi.d	$a3, $a1, 32
	move	$a4, $a2
	xvori.b	$xr3, $xr2, 0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB23_116:                             # %vector.body377
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -32
	ld.d	$a6, $a3, -24
	ld.d	$a7, $a3, -16
	ld.d	$t0, $a3, -8
	ld.d	$t1, $a3, 0
	ld.d	$t2, $a3, 8
	ld.d	$t3, $a3, 16
	ld.d	$t4, $a3, 24
	ld.w	$a5, $a5, 24
	ld.w	$a6, $a6, 24
	ld.w	$a7, $a7, 24
	ld.w	$t0, $t0, 24
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ld.w	$a5, $t1, 24
	ld.w	$a6, $t2, 24
	ld.w	$a7, $t3, 24
	ld.w	$t0, $t4, 24
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	vseqi.w	$vr6, $vr4, 0
	vseqi.w	$vr7, $vr5, 0
	vadd.w	$vr0, $vr0, $vr6
	vaddi.wu	$vr0, $vr0, 1
	vadd.w	$vr1, $vr1, $vr7
	vaddi.wu	$vr1, $vr1, 1
	vslli.w	$vr4, $vr4, 1
	vslli.w	$vr5, $vr5, 1
	vaddi.wu	$vr4, $vr4, 2
	vaddi.wu	$vr5, $vr5, 2
	vpickve2gr.w	$a5, $vr4, 0
	xvinsgr2vr.d	$xr6, $a5, 0
	vpickve2gr.w	$a5, $vr4, 1
	xvinsgr2vr.d	$xr6, $a5, 1
	vpickve2gr.w	$a5, $vr4, 2
	xvinsgr2vr.d	$xr6, $a5, 2
	vpickve2gr.w	$a5, $vr4, 3
	xvinsgr2vr.d	$xr6, $a5, 3
	vpickve2gr.w	$a5, $vr5, 0
	xvinsgr2vr.d	$xr4, $a5, 0
	vpickve2gr.w	$a5, $vr5, 1
	xvinsgr2vr.d	$xr4, $a5, 1
	vpickve2gr.w	$a5, $vr5, 2
	xvinsgr2vr.d	$xr4, $a5, 2
	vpickve2gr.w	$a5, $vr5, 3
	xvinsgr2vr.d	$xr4, $a5, 3
	xvadd.d	$xr2, $xr2, $xr6
	xvadd.d	$xr3, $xr3, $xr4
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB23_116
# %bb.117:                              # %middle.block386
	pcalau12i	$a3, %pc_hi20(.LCPI23_0)
	xvld	$xr4, $a3, %pc_lo12(.LCPI23_0)
	xvadd.d	$xr2, $xr3, $xr2
	xvpermi.d	$xr3, $xr2, 78
	xvshuf.d	$xr4, $xr0, $xr3
	xvadd.d	$xr2, $xr2, $xr4
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.d	$xr3, $xr3, 1
	xvadd.d	$xr2, $xr2, $xr3
	xvpickve2gr.d	$s1, $xr2, 0
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	beq	$a2, $a0, .LBB23_120
.LBB23_118:                             # %scalar.ph372.preheader
	alsl.d	$a1, $a2, $a1, 3
	sub.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	.p2align	4, , 16
.LBB23_119:                             # %scalar.ph372
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	ld.w	$a4, $a4, 24
	sltu	$a5, $zero, $a4
	add.w	$a3, $a3, $a5
	alsl.w	$a4, $a4, $a2, 1
	add.d	$s1, $s1, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB23_119
.LBB23_120:                             # %._crit_edge319
	beqz	$a3, .LBB23_158
# %bb.121:                              # %_ZN8NArchive3N7zL16GetBigNumberSizeEy.exit
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB23_123
# %bb.122:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB23_129
.LBB23_123:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB23_127
# %bb.124:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 17
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_126
# %bb.125:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_126:                             # %_ZN10COutBuffer9WriteByteEh.exit.i206
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 17
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB23_129
.LBB23_127:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB23_244
# %bb.128:                              # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i205
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	ori	$a2, $zero, 17
	stx.b	$a2, $a1, $a0
.LBB23_129:                             # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit209
	addi.d	$a1, $s1, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteNumberEy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB23_131
# %bb.130:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	ld.w	$a0, $s0, 172
	ori	$s5, $zero, 1
	bge	$a0, $s5, .LBB23_137
	b	.LBB23_158
.LBB23_131:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB23_135
# %bb.132:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_134
# %bb.133:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_134:                             # %_ZN10COutBuffer9WriteByteEh.exit.i211
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	ld.w	$a0, $s0, 172
	ori	$s5, $zero, 1
	bge	$a0, $s5, .LBB23_137
	b	.LBB23_158
.LBB23_135:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	beq	$a1, $a0, .LBB23_244
# %bb.136:                              # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i210
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $s0, 172
	ori	$s5, $zero, 1
	blt	$a0, $s5, .LBB23_158
.LBB23_137:                             # %.lr.ph328
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$s6, $a1, %got_pc_lo12(g_CrcTable)
	move	$s7, $zero
	addi.d	$s2, $fp, 32
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	b	.LBB23_140
	.p2align	4, , 16
.LBB23_138:                             # %._crit_edge326.loopexit
                                        #   in Loop: Header=BB23_140 Depth=1
	ld.w	$a0, $s0, 172
.LBB23_139:                             # %._crit_edge326
                                        #   in Loop: Header=BB23_140 Depth=1
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB23_158
.LBB23_140:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_144 Depth 2
	ld.d	$a1, $s0, 176
	slli.d	$a2, $s7, 3
	ldx.d	$s3, $a1, $a2
	ld.w	$a1, $s3, 24
	bltz	$a1, .LBB23_139
# %bb.141:                              # %.lr.ph325.preheader
                                        #   in Loop: Header=BB23_140 Depth=1
	move	$s1, $zero
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	b	.LBB23_144
	.p2align	4, , 16
.LBB23_142:                             #   in Loop: Header=BB23_144 Depth=2
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
.LBB23_143:                             # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit224
                                        #   in Loop: Header=BB23_144 Depth=2
	ld.w	$a0, $s3, 24
	addi.d	$s8, $s8, 1
	addi.d	$s1, $s1, 4
	bge	$s8, $a0, .LBB23_138
.LBB23_144:                             # %.lr.ph325
                                        #   Parent Loop BB23_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 16
	ld.bu	$a1, $fp, 8
	ldx.w	$s4, $a0, $s1
	bne	$a1, $s5, .LBB23_146
# %bb.145:                              #   in Loop: Header=BB23_144 Depth=2
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	ld.bu	$a0, $fp, 8
	beq	$a0, $s5, .LBB23_142
	b	.LBB23_152
	.p2align	4, , 16
.LBB23_146:                             #   in Loop: Header=BB23_144 Depth=2
	ld.bu	$a0, $fp, 9
	bne	$a0, $s5, .LBB23_150
# %bb.147:                              #   in Loop: Header=BB23_144 Depth=2
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$s4, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_149
# %bb.148:                              #   in Loop: Header=BB23_144 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
.LBB23_149:                             # %_ZN10COutBuffer9WriteByteEh.exit.i216
                                        #   in Loop: Header=BB23_144 Depth=2
	ld.wu	$a0, $fp, 24
	xor	$a1, $a0, $s4
	andi	$a1, $a1, 255
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s6, $a1
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	ld.bu	$a0, $fp, 8
	beq	$a0, $s5, .LBB23_142
	b	.LBB23_152
	.p2align	4, , 16
.LBB23_150:                             #   in Loop: Header=BB23_144 Depth=2
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB23_244
# %bb.151:                              # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i215
                                        #   in Loop: Header=BB23_144 Depth=2
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$s4, $a1, $a0
	ld.bu	$a0, $fp, 8
	beq	$a0, $s5, .LBB23_142
.LBB23_152:                             #   in Loop: Header=BB23_144 Depth=2
	ld.bu	$a0, $fp, 9
	bstrpick.d	$s4, $s4, 31, 8
	bne	$a0, $s5, .LBB23_156
# %bb.153:                              #   in Loop: Header=BB23_144 Depth=2
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$s4, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_155
# %bb.154:                              #   in Loop: Header=BB23_144 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
.LBB23_155:                             # %_ZN10COutBuffer9WriteByteEh.exit.i221
                                        #   in Loop: Header=BB23_144 Depth=2
	ld.wu	$a0, $fp, 24
	xor	$a1, $a0, $s4
	andi	$a1, $a1, 255
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s6, $a1
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB23_143
	.p2align	4, , 16
.LBB23_156:                             #   in Loop: Header=BB23_144 Depth=2
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB23_244
# %bb.157:                              # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i220
                                        #   in Loop: Header=BB23_144 Depth=2
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$s4, $a1, $a0
	b	.LBB23_143
.LBB23_158:                             # %.loopexit287
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.bu	$a0, $s5, 1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB23_173
# %bb.159:
	ld.w	$a0, $s0, 236
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB23_173
# %bb.160:                              # %.lr.ph.i
	ld.d	$a1, $s0, 240
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB23_162
# %bb.161:
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB23_165
.LBB23_162:                             # %vector.ph395
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a3, $a2, 3
	vrepli.b	$vr0, 0
	addi.d	$a2, $a1, 4
	move	$a4, $a3
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB23_163:                             # %vector.body398
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, -4
	ld.w	$a6, $a2, 0
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB23_163
# %bb.164:                              # %middle.block405
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a3, $a0, .LBB23_167
.LBB23_165:                             # %scalar.ph393.preheader
	sub.d	$a0, $a0, $a3
	add.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB23_166:                             # %scalar.ph393
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	add.w	$a2, $a2, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB23_166
.LBB23_167:                             # %._crit_edge.i
	beqz	$a2, .LBB23_173
# %bb.168:
	addi.d	$a1, $s0, 224
	ori	$a3, $zero, 18
	ori	$a4, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	ld.w	$a0, $s0, 236
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB23_173
# %bb.169:                              # %.lr.ph24.i
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB23_171
	.p2align	4, , 16
.LBB23_170:                             #   in Loop: Header=BB23_171 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bge	$s3, $a0, .LBB23_173
.LBB23_171:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 240
	ldx.bu	$a1, $a1, $s3
	bne	$a1, $s1, .LBB23_170
# %bb.172:                              #   in Loop: Header=BB23_171 Depth=1
	ld.d	$a0, $s0, 208
	ldx.d	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteUInt64Ey)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	ld.w	$a0, $s0, 236
	b	.LBB23_170
.LBB23_173:                             # %_ZN8NArchive3N7z11COutArchive20WriteUInt64DefVectorERKNS0_16CUInt64DefVectorEh.exit
	ld.bu	$a0, $s5, 2
	ori	$s2, $zero, 1
	bne	$a0, $s2, .LBB23_188
# %bb.174:
	ld.w	$a0, $s0, 300
	blt	$a0, $s2, .LBB23_188
# %bb.175:                              # %.lr.ph.i226
	ld.d	$a1, $s0, 304
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB23_177
# %bb.176:
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB23_180
.LBB23_177:                             # %vector.ph412
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a3, $a2, 3
	vrepli.b	$vr0, 0
	addi.d	$a2, $a1, 4
	move	$a4, $a3
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB23_178:                             # %vector.body415
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, -4
	ld.w	$a6, $a2, 0
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB23_178
# %bb.179:                              # %middle.block422
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a3, $a0, .LBB23_182
.LBB23_180:                             # %scalar.ph410.preheader
	sub.d	$a0, $a0, $a3
	add.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB23_181:                             # %scalar.ph410
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	add.w	$a2, $a2, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB23_181
.LBB23_182:                             # %._crit_edge.i233
	beqz	$a2, .LBB23_188
# %bb.183:
	addi.d	$a1, $s0, 288
	ori	$a3, $zero, 19
	ori	$a4, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	ld.w	$a0, $s0, 300
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB23_188
# %bb.184:                              # %.lr.ph24.i234
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB23_186
	.p2align	4, , 16
.LBB23_185:                             #   in Loop: Header=BB23_186 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	bge	$s4, $a0, .LBB23_188
.LBB23_186:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 304
	ldx.bu	$a1, $a1, $s4
	bne	$a1, $s1, .LBB23_185
# %bb.187:                              #   in Loop: Header=BB23_186 Depth=1
	ld.d	$a0, $s0, 272
	ldx.d	$a1, $a0, $s3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteUInt64Ey)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	ld.w	$a0, $s0, 300
	b	.LBB23_185
.LBB23_188:                             # %_ZN8NArchive3N7z11COutArchive20WriteUInt64DefVectorERKNS0_16CUInt64DefVectorEh.exit238
	ld.bu	$a0, $s5, 3
	bne	$a0, $s2, .LBB23_203
# %bb.189:
	ld.w	$a0, $s0, 364
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB23_203
# %bb.190:                              # %.lr.ph.i239
	ld.d	$a1, $s0, 368
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB23_192
# %bb.191:
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB23_195
.LBB23_192:                             # %vector.ph429
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a3, $a2, 3
	vrepli.b	$vr0, 0
	addi.d	$a2, $a1, 4
	move	$a4, $a3
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB23_193:                             # %vector.body432
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, -4
	ld.w	$a6, $a2, 0
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB23_193
# %bb.194:                              # %middle.block439
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a3, $a0, .LBB23_197
.LBB23_195:                             # %scalar.ph427.preheader
	sub.d	$a0, $a0, $a3
	add.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB23_196:                             # %scalar.ph427
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	add.w	$a2, $a2, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB23_196
.LBB23_197:                             # %._crit_edge.i246
	beqz	$a2, .LBB23_203
# %bb.198:
	addi.d	$a1, $s0, 352
	ori	$a3, $zero, 20
	ori	$a4, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	ld.w	$a0, $s0, 364
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB23_203
# %bb.199:                              # %.lr.ph24.i247
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB23_201
	.p2align	4, , 16
.LBB23_200:                             #   in Loop: Header=BB23_201 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bge	$s3, $a0, .LBB23_203
.LBB23_201:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 368
	ldx.bu	$a1, $a1, $s3
	bne	$a1, $s1, .LBB23_200
# %bb.202:                              #   in Loop: Header=BB23_201 Depth=1
	ld.d	$a0, $s0, 336
	ldx.d	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteUInt64Ey)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	ld.w	$a0, $s0, 364
	b	.LBB23_200
.LBB23_203:                             # %_ZN8NArchive3N7z11COutArchive20WriteUInt64DefVectorERKNS0_16CUInt64DefVectorEh.exit251
	ld.w	$a0, $s0, 428
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB23_217
# %bb.204:                              # %.lr.ph.i252
	ld.d	$a1, $s0, 432
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB23_206
# %bb.205:
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB23_209
.LBB23_206:                             # %vector.ph446
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a3, $a2, 3
	addi.d	$a2, $a1, 4
	move	$a4, $a3
	vori.b	$vr0, $vr8, 0
	vori.b	$vr1, $vr8, 0
	.p2align	4, , 16
.LBB23_207:                             # %vector.body449
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, -4
	ld.w	$a6, $a2, 0
	vinsgr2vr.w	$vr2, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 0
	vilvl.b	$vr2, $vr8, $vr2
	vilvl.h	$vr2, $vr8, $vr2
	vilvl.b	$vr3, $vr8, $vr3
	vilvl.h	$vr3, $vr8, $vr3
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB23_207
# %bb.208:                              # %middle.block456
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a3, $a0, .LBB23_211
.LBB23_209:                             # %scalar.ph444.preheader
	sub.d	$a0, $a0, $a3
	add.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB23_210:                             # %scalar.ph444
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	add.w	$a2, $a2, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB23_210
.LBB23_211:                             # %._crit_edge.i259
	beqz	$a2, .LBB23_217
# %bb.212:
	addi.d	$a1, $s0, 416
	ori	$a3, $zero, 24
	ori	$a4, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	ld.w	$a0, $s0, 428
	ori	$s2, $zero, 1
	blt	$a0, $s2, .LBB23_217
# %bb.213:                              # %.lr.ph24.i260
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB23_215
	.p2align	4, , 16
.LBB23_214:                             #   in Loop: Header=BB23_215 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	bge	$s4, $a0, .LBB23_217
.LBB23_215:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 432
	ldx.bu	$a1, $a1, $s4
	bne	$a1, $s2, .LBB23_214
# %bb.216:                              #   in Loop: Header=BB23_215 Depth=1
	ld.d	$a0, $s0, 400
	ldx.d	$a1, $a0, $s3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteUInt64Ey)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 32                   # 16-byte Folded Reload
	ld.w	$a0, $s0, 428
	b	.LBB23_214
.LBB23_217:                             # %_ZN8NArchive3N7z11COutArchive20WriteUInt64DefVectorERKNS0_16CUInt64DefVectorEh.exit264
	ld.w	$a1, $s0, 172
	vst	$vr8, $sp, 128
	st.d	$s1, $sp, 144
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 120
.Ltmp110:
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp111:
# %bb.218:                              # %.preheader286
	ld.w	$a0, $s0, 172
	ori	$s2, $zero, 1
	blt	$a0, $s2, .LBB23_230
# %bb.219:                              # %.lr.ph331
	move	$s3, $zero
	move	$s4, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB23_220:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 176
	ldx.d	$a0, $a0, $s3
	ld.bu	$s5, $a0, 35
.Ltmp113:
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp114:
# %bb.221:                              #   in Loop: Header=BB23_220 Depth=1
	ld.d	$a0, $sp, 136
	ld.w	$a1, $sp, 132
	stx.b	$s5, $a0, $a1
	addi.d	$a0, $a1, 1
	ld.w	$a1, $s0, 172
	st.w	$a0, $sp, 132
	add.w	$s1, $s1, $s5
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	blt	$s4, $a1, .LBB23_220
# %bb.222:                              # %._crit_edge332
	beqz	$s1, .LBB23_230
# %bb.223:
.Ltmp116:
	addi.d	$a1, $sp, 120
	ori	$a3, $zero, 21
	ori	$a4, $zero, 4
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive22WriteAlignedBoolHeaderERK13CRecordVectorIbEihj)
	jirl	$ra, $ra, 0
.Ltmp117:
# %bb.224:                              # %.preheader
	ld.w	$a0, $s0, 172
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB23_230
# %bb.225:                              # %.lr.ph335
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB23_228
	.p2align	4, , 16
.LBB23_226:                             # %._crit_edge357
                                        #   in Loop: Header=BB23_228 Depth=1
	ld.w	$a0, $s0, 172
.LBB23_227:                             #   in Loop: Header=BB23_228 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	bge	$s4, $a0, .LBB23_230
.LBB23_228:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 176
	ldx.d	$a1, $a1, $s3
	ld.bu	$a2, $a1, 35
	bne	$a2, $s1, .LBB23_227
# %bb.229:                              #   in Loop: Header=BB23_228 Depth=1
	ld.w	$a1, $a1, 8
.Ltmp119:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteUInt32Ej)
	jirl	$ra, $ra, 0
.Ltmp120:
	b	.LBB23_226
.LBB23_230:                             # %.loopexit
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 8
	bne	$a0, $s2, .LBB23_232
# %bb.231:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB23_236
	b	.LBB23_239
.LBB23_232:
	ld.bu	$a0, $fp, 9
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB23_237
# %bb.233:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_235
# %bb.234:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_235:                             # %_ZN10COutBuffer9WriteByteEh.exit.i268
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB23_239
.LBB23_236:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB23_243
.LBB23_237:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB23_244
# %bb.238:                              # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i267
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$zero, $a1, $a0
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB23_236
.LBB23_239:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB23_49
.LBB23_240:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB23_242
# %bb.241:
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_242:                             # %_ZN10COutBuffer9WriteByteEh.exit.i167
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
.LBB23_243:                             # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit170
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
.LBB23_244:
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
.LBB23_245:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.Ltmp62:
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp63:
# %bb.246:                              # %.noexc164
.LBB23_247:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.Ltmp75:
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp76:
# %bb.248:                              # %.noexc185
.LBB23_249:                             # %.invoke
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.Ltmp101:
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp102:
# %bb.250:                              # %.cont
.LBB23_251:
.Ltmp118:
	b	.LBB23_263
.LBB23_252:
.Ltmp109:
	b	.LBB23_265
.LBB23_253:
.Ltmp88:
	b	.LBB23_265
.LBB23_254:                             # %.loopexit.split-lp
.Ltmp83:
	b	.LBB23_263
.LBB23_255:
.Ltmp112:
	b	.LBB23_263
.LBB23_256:
.Ltmp69:
	b	.LBB23_263
.LBB23_257:
.Ltmp66:
	b	.LBB23_265
.LBB23_258:
.Ltmp121:
	b	.LBB23_263
.LBB23_259:
.Ltmp91:
	b	.LBB23_265
.LBB23_260:
.Ltmp94:
	b	.LBB23_265
.LBB23_261:
.Ltmp115:
	b	.LBB23_263
.LBB23_262:                             # %.loopexit290
.Ltmp74:
.LBB23_263:
	move	$fp, $a0
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB23_264:
.Ltmp59:
.LBB23_265:
	move	$fp, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN8NArchive3N7z11COutArchive11WriteHeaderERKNS0_16CArchiveDatabaseERKNS0_14CHeaderOptionsERy, .Lfunc_end23-_ZN8NArchive3N7z11COutArchive11WriteHeaderERKNS0_16CArchiveDatabaseERKNS0_14CHeaderOptionsERy
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table23:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp53-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp58-.Ltmp53                #   Call between .Ltmp53 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin4          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp65-.Ltmp60                #   Call between .Ltmp60 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin4          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp67-.Ltmp65                #   Call between .Ltmp65 and .Ltmp67
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin4          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp71-.Ltmp72                #   Call between .Ltmp72 and .Ltmp71
	.uleb128 .Ltmp74-.Lfunc_begin4          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp82-.Ltmp77                #   Call between .Ltmp77 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin4          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp87-.Ltmp84                #   Call between .Ltmp84 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin4          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin4          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin4          # >> Call Site 10 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin4          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin4          # >> Call Site 11 <<
	.uleb128 .Ltmp108-.Ltmp95               #   Call between .Ltmp95 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin4         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp110-.Ltmp108              #   Call between .Ltmp108 and .Ltmp110
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin4         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin4         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin4         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin4         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp62-.Ltmp120               #   Call between .Ltmp120 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin4          # >> Call Site 18 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp66-.Lfunc_begin4          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin4          # >> Call Site 19 <<
	.uleb128 .Ltmp75-.Ltmp63                #   Call between .Ltmp63 and .Ltmp75
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin4          # >> Call Site 20 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp83-.Lfunc_begin4          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin4          # >> Call Site 21 <<
	.uleb128 .Ltmp101-.Ltmp76               #   Call between .Ltmp76 and .Ltmp101
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp109-.Lfunc_begin4         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Lfunc_end23-.Ltmp102          #   Call between .Ltmp102 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZN8NArchive3N7z11COutArchive13WriteDatabaseERKNS0_16CArchiveDatabaseEPKNS0_22CCompressionMethodModeERKNS0_14CHeaderOptionsE
.LCPI24_0:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	2                               # 0x2
	.dword	2                               # 0x2
.LCPI24_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	_ZN8NArchive3N7z11COutArchive13WriteDatabaseERKNS0_16CArchiveDatabaseEPKNS0_22CCompressionMethodModeERKNS0_14CHeaderOptionsE
	.p2align	5
	.type	_ZN8NArchive3N7z11COutArchive13WriteDatabaseERKNS0_16CArchiveDatabaseEPKNS0_22CCompressionMethodModeERKNS0_14CHeaderOptionsE,@function
_ZN8NArchive3N7z11COutArchive13WriteDatabaseERKNS0_16CArchiveDatabaseEPKNS0_22CCompressionMethodModeERKNS0_14CHeaderOptionsE: # @_ZN8NArchive3N7z11COutArchive13WriteDatabaseERKNS0_16CArchiveDatabaseEPKNS0_22CCompressionMethodModeERKNS0_14CHeaderOptionsE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -816
	.cfi_def_cfa_offset 816
	st.d	$ra, $sp, 808                   # 8-byte Folded Spill
	st.d	$fp, $sp, 800                   # 8-byte Folded Spill
	st.d	$s0, $sp, 792                   # 8-byte Folded Spill
	st.d	$s1, $sp, 784                   # 8-byte Folded Spill
	st.d	$s2, $sp, 776                   # 8-byte Folded Spill
	st.d	$s3, $sp, 768                   # 8-byte Folded Spill
	st.d	$s4, $sp, 760                   # 8-byte Folded Spill
	st.d	$s5, $sp, 752                   # 8-byte Folded Spill
	st.d	$s6, $sp, 744                   # 8-byte Folded Spill
	st.d	$s7, $sp, 736                   # 8-byte Folded Spill
	st.d	$s8, $sp, 728                   # 8-byte Folded Spill
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
	move	$s2, $a1
	ld.w	$a1, $a1, 172
	ld.w	$a4, $s2, 236
	move	$fp, $a0
	lu12i.w	$s6, -524284
	ori	$s3, $s6, 5
	beq	$a4, $a1, .LBB24_2
# %bb.1:
	bnez	$a4, .LBB24_77
.LBB24_2:
	ld.w	$a0, $s2, 300
	beq	$a0, $a1, .LBB24_4
# %bb.3:
	bnez	$a0, .LBB24_77
.LBB24_4:
	ld.w	$a0, $s2, 364
	beq	$a0, $a1, .LBB24_6
# %bb.5:
	bnez	$a0, .LBB24_77
.LBB24_6:
	ld.w	$a0, $s2, 428
	beq	$a0, $a1, .LBB24_8
# %bb.7:
	bnez	$a0, .LBB24_77
.LBB24_8:                               # %_ZNK8NArchive3N7z16CArchiveDatabase13CheckNumFilesEv.exit
	ld.w	$a0, $s2, 460
	beq	$a1, $a0, .LBB24_10
# %bb.9:                                # %_ZNK8NArchive3N7z16CArchiveDatabase13CheckNumFilesEv.exit
	bnez	$a0, .LBB24_77
.LBB24_10:
	ld.w	$a0, $s2, 12
	bnez	$a0, .LBB24_16
# %bb.11:
	ld.w	$a0, $s2, 44
	bnez	$a0, .LBB24_16
# %bb.12:
	ld.w	$a0, $s2, 76
	bnez	$a0, .LBB24_16
# %bb.13:
	ld.w	$a0, $s2, 108
	bnez	$a0, .LBB24_16
# %bb.14:
	ld.w	$a0, $s2, 140
	or	$a0, $a0, $a1
	bnez	$a0, .LBB24_16
# %bb.15:
	move	$a0, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
	move	$a3, $zero
	move	$a1, $zero
	b	.LBB24_75
.LBB24_16:                              # %_ZNK8NArchive3N7z16CArchiveDatabase7IsEmptyEv.exit.thread
	beqz	$a2, .LBB24_19
# %bb.17:
	ld.w	$a1, $a2, 12
	ld.bu	$a0, $a2, 68
	bnez	$a1, .LBB24_20
# %bb.18:
	andi	$a1, $a0, 1
	bnez	$a1, .LBB24_20
.LBB24_19:
	move	$s3, $a3
	move	$s7, $zero
	move	$s0, $zero
	b	.LBB24_21
.LBB24_20:
	move	$s7, $a2
	move	$s3, $a3
	ld.b	$a1, $a3, 0
	or	$s0, $a0, $a1
.LBB24_21:                              # %.thread
	ld.d	$a1, $fp, 120
	addi.d	$s1, $fp, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer9SetStreamEP20ISequentialOutStream)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4InitEv)
	jirl	$ra, $ra, 0
	addi.w	$s8, $zero, -1
	move	$a0, $s8
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 24
	andi	$s0, $s0, 1
	st.b	$s0, $fp, 8
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 9
	st.d	$zero, $fp, 16
	addi.d	$a3, $sp, 720
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteHeaderERKNS0_16CArchiveDatabaseERKNS0_14CHeaderOptionsERy)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB24_73
# %bb.22:
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	ld.d	$s4, $fp, 16
	addi.d	$s5, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	st.d	$s5, $sp, 696
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 704
	beqz	$s4, .LBB24_25
# %bb.23:
.Ltmp122:
	move	$s0, $zero
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp123:
# %bb.24:                               # %.noexc
	st.d	$a0, $sp, 712
	st.d	$s4, $sp, 704
	move	$s0, $a0
	b	.LBB24_26
.LBB24_25:
	move	$s0, $zero
.LBB24_26:                              # %_ZN7CBufferIhE11SetCapacityEm.exit
	st.d	$s0, $fp, 88
	st.d	$s4, $fp, 96
	st.d	$zero, $fp, 104
	st.h	$zero, $fp, 8
.Ltmp124:
	addi.d	$a3, $sp, 720
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive11WriteHeaderERKNS0_16CArchiveDatabaseERKNS0_14CHeaderOptionsERy)
	jirl	$ra, $ra, 0
.Ltmp125:
# %bb.27:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 104
	bne	$a0, $a1, .LBB24_42
# %bb.28:
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 616
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 632
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	addi.d	$s4, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	st.d	$s4, $sp, 608
	addi.d	$s6, $sp, 640
	vst	$vr0, $sp, 648
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 664
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE+16)
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 672
	st.b	$zero, $sp, 676
	vst	$vr0, $sp, 680
.Ltmp127:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp128:
# %bb.29:
	st.d	$a0, $sp, 680
	st.w	$zero, $a0, 0
	move	$a1, $s7
	ld.b	$a2, $s7, 68
	ori	$a3, $zero, 4
	st.w	$a3, $sp, 692
	addi.d	$s2, $sp, 608
	st.b	$a2, $sp, 676
	move	$a2, $s3
	beq	$s7, $s2, .LBB24_36
# %bb.30:
	ld.w	$a4, $a1, 80
	st.w	$zero, $sp, 688
	addi.w	$s6, $a4, 1
	st.w	$zero, $a0, 0
	beq	$s6, $a3, .LBB24_33
# %bb.31:
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a0
	move	$s5, $a2
	slti	$a0, $a4, -1
	slli.d	$a1, $s6, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
.Ltmp130:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp131:
# %bb.32:
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 688
	st.d	$s4, $sp, 680
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s4, $a0
	st.w	$s6, $sp, 692
	move	$a0, $s4
	move	$a2, $s5
	move	$a1, $s7
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
.LBB24_33:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a3, $a1, 72
	addi.d	$s6, $sp, 640
.LBB24_34:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a0, 4
	st.w	$a4, $a0, 0
	move	$a0, $a5
	bnez	$a4, .LBB24_34
# %bb.35:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.w	$a0, $a1, 80
	st.w	$a0, $sp, 688
.LBB24_36:                              # %_ZN11CStringBaseIwEaSERKS0_.exit
	ld.bu	$a0, $a2, 0
	masknez	$a2, $s2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a1, $a0, $a2
.Ltmp133:
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CEncoderC1ERKNS0_22CCompressionMethodModeE)
	jirl	$ra, $ra, 0
.Ltmp134:
# %bb.37:
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 160
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a1, $sp, 136
	vst	$vr0, $sp, 112
	st.d	$a0, $sp, 128
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE+16)
	addi.d	$s7, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE+16)
	st.d	$s7, $sp, 104
.Ltmp136:
	addi.d	$a1, $sp, 168
	addi.d	$a2, $sp, 696
	addi.d	$a3, $sp, 136
	addi.d	$a4, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive12EncodeStreamERNS0_8CEncoderERK7CBufferIhER13CRecordVectorIyER13CObjectVectorINS0_7CFolderEE)
	jirl	$ra, $ra, 0
.Ltmp137:
# %bb.38:
	move	$s3, $a0
	bnez	$a0, .LBB24_65
# %bb.39:
	ld.w	$a0, $sp, 116
	ori	$s8, $zero, 1
	st.b	$s8, $fp, 9
	beqz	$a0, .LBB24_78
# %bb.40:
	move	$s2, $s4
	ld.bu	$a0, $fp, 8
	bne	$a0, $s8, .LBB24_43
# %bb.41:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB24_46
.LBB24_42:
	move	$s2, $zero
	ori	$s3, $s6, 5
	b	.LBB24_70
.LBB24_43:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	ori	$a2, $zero, 23
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB24_45
# %bb.44:
.Ltmp139:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp140:
.LBB24_45:                              # %_ZN10COutBuffer9WriteByteEh.exit.i.i
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	xori	$a2, $a2, 23
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
.LBB24_46:                              # %_ZN8NArchive3N7z11COutArchive7WriteIDEy.exit
	ld.d	$s4, $sp, 720
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 96
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIbE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIbE+16)
	st.d	$a0, $sp, 72
	vst	$vr0, $sp, 48
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 64
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a0, $sp, 40
.Ltmp141:
	addi.d	$a2, $sp, 136
	addi.d	$a3, $sp, 72
	addi.d	$a4, $sp, 40
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive13WritePackInfoEyRK13CRecordVectorIyERKS2_IbERKS2_IjE)
	jirl	$ra, $ra, 0
.Ltmp142:
# %bb.47:
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.Ltmp144:
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive15WriteUnpackInfoERK13CObjectVectorINS0_7CFolderEE)
	jirl	$ra, $ra, 0
.Ltmp145:
# %bb.48:
	ld.bu	$a1, $fp, 8
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB24_50
# %bb.49:
	ld.d	$a0, $fp, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 16
	b	.LBB24_56
.LBB24_50:
	ld.bu	$a1, $fp, 9
	bne	$a1, $a0, .LBB24_54
# %bb.51:
	ld.wu	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $fp, 40
	ld.w	$a1, $fp, 44
	bne	$a0, $a1, .LBB24_53
# %bb.52:
.Ltmp146:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp147:
.LBB24_53:                              # %_ZN10COutBuffer9WriteByteEh.exit.i
	ld.wu	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(g_CrcTable)
	ld.d	$a1, $a1, %got_pc_lo12(g_CrcTable)
	andi	$a2, $a0, 255
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	srli.d	$a0, $a0, 8
	xor	$a0, $a1, $a0
	st.w	$a0, $fp, 24
	b	.LBB24_56
.LBB24_54:
	ld.d	$a1, $fp, 96
	ld.d	$a0, $fp, 104
	beq	$a1, $a0, .LBB24_78
# %bb.55:                               # %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
	ld.d	$a1, $fp, 88
	addi.d	$a2, $a0, 1
	st.d	$a2, $fp, 104
	stx.b	$zero, $a1, $a0
.LBB24_56:                              # %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
	ld.w	$a0, $sp, 148
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB24_64
# %bb.57:                               # %.lr.ph
	ld.d	$a1, $sp, 152
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB24_59
# %bb.58:
	move	$a2, $zero
	b	.LBB24_62
.LBB24_59:                              # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	xvinsgr2vr.d	$xr1, $s4, 0
	pcalau12i	$a3, %pc_hi20(.LCPI24_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI24_0)
	xvpermi.d	$xr1, $xr1, 68
	xvinsgr2vr.d	$xr2, $zero, 0
	xvpermi.d	$xr2, $xr2, 68
	xvshuf.d	$xr0, $xr2, $xr1
	addi.d	$a3, $a1, 32
	xvrepli.b	$xr1, 0
	move	$a4, $a2
.LBB24_60:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvadd.d	$xr0, $xr0, $xr2
	xvadd.d	$xr1, $xr1, $xr3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB24_60
# %bb.61:                               # %middle.block
	pcalau12i	$a3, %pc_hi20(.LCPI24_1)
	xvld	$xr2, $a3, %pc_lo12(.LCPI24_1)
	xvadd.d	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.d	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$s4, $xr0, 0
	beq	$a2, $a0, .LBB24_64
.LBB24_62:                              # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 3
	sub.d	$a0, $a0, $a2
.LBB24_63:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	add.d	$s4, $s4, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB24_63
.LBB24_64:                              # %.loopexit
	st.d	$s4, $sp, 720
	move	$s4, $s2
.LBB24_65:
	st.d	$s7, $sp, 104
.Ltmp148:
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp149:
# %bb.66:                               # %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev.exit
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CEncoderD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 680
	beqz	$a0, .LBB24_68
# %bb.67:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB24_68:                              # %_ZN11CStringBaseIwED2Ev.exit.i
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 608
.Ltmp151:
	addi.d	$a0, $sp, 608
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp152:
# %bb.69:                               # %_ZN8NArchive3N7z22CCompressionMethodModeD2Ev.exit
	sltui	$s2, $s3, 1
	addi.d	$a0, $sp, 608
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB24_70:
	beqz	$s0, .LBB24_72
# %bb.71:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB24_72:                              # %_ZN7CBufferIhED2Ev.exit
	beqz	$s2, .LBB24_77
.LBB24_73:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10COutBuffer5FlushEv)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$a0, .LBB24_77
# %bb.74:
	ld.w	$a0, $fp, 24
	nor	$s0, $a0, $zero
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNK10COutBuffer16GetProcessedSizeEv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 720
	move	$a1, $a0
	move	$a0, $s0
.LBB24_75:
	ld.d	$a2, $fp, 112
	st.d	$a1, $sp, 176
	st.w	$a0, $sp, 184
	st.d	$a3, $sp, 168
	ld.d	$a0, $a2, 0
	ld.d	$a1, $fp, 0
	ld.d	$a4, $a0, 48
	move	$a0, $a2
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	move	$s3, $a0
	bnez	$a0, .LBB24_77
# %bb.76:
	addi.d	$a1, $sp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive16WriteStartHeaderERKNS0_12CStartHeaderE)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB24_77:                              # %_ZNK8NArchive3N7z16CArchiveDatabase13CheckNumFilesEv.exit.thread
	move	$a0, $s3
	ld.d	$s8, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 792                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 800                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 808                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 816
	ret
.LBB24_78:                              # %.invoke
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$s8, $a0, 0
.Ltmp154:
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp155:
# %bb.79:                               # %.cont
.LBB24_80:
.Ltmp132:
	b	.LBB24_89
.LBB24_81:
.Ltmp143:
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB24_87
.LBB24_82:
.Ltmp156:
	b	.LBB24_86
.LBB24_83:
.Ltmp153:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_84:
.Ltmp150:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_85:
.Ltmp138:
.LBB24_86:
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
.LBB24_87:
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CEncoderD1Ev)
	jirl	$ra, $ra, 0
	b	.LBB24_90
.LBB24_88:
.Ltmp135:
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
.LBB24_89:
	move	$fp, $a0
.LBB24_90:
	addi.d	$a0, $sp, 608
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z22CCompressionMethodModeD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB24_93
.LBB24_91:
.Ltmp129:
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 608
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB24_93
.LBB24_92:
.Ltmp126:
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
.LBB24_93:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 696
	beqz	$s0, .LBB24_95
# %bb.94:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB24_95:                              # %_ZN7CBufferIhED2Ev.exit85
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN8NArchive3N7z11COutArchive13WriteDatabaseERKNS0_16CArchiveDatabaseEPKNS0_22CCompressionMethodModeERKNS0_14CHeaderOptionsE, .Lfunc_end24-_ZN8NArchive3N7z11COutArchive13WriteDatabaseERKNS0_16CArchiveDatabaseEPKNS0_22CCompressionMethodModeERKNS0_14CHeaderOptionsE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table24:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp122-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp122
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp125-.Ltmp122              #   Call between .Ltmp122 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin5         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin5         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin5         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp133-.Ltmp131              #   Call between .Ltmp131 and .Ltmp133
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin5         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin5         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp156-.Lfunc_begin5         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin5         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp144-.Ltmp142              #   Call between .Ltmp142 and .Ltmp144
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp147-.Ltmp144              #   Call between .Ltmp144 and .Ltmp147
	.uleb128 .Ltmp156-.Lfunc_begin5         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin5         #     jumps to .Ltmp150
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp149-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp151-.Ltmp149              #   Call between .Ltmp149 and .Ltmp151
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin5         #     jumps to .Ltmp153
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp152-.Lfunc_begin5         # >> Call Site 15 <<
	.uleb128 .Ltmp154-.Ltmp152              #   Call between .Ltmp152 and .Ltmp154
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin5         # >> Call Site 16 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin5         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin5         # >> Call Site 17 <<
	.uleb128 .Lfunc_end24-.Ltmp155          #   Call between .Ltmp155 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev: # @_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
.Ltmp157:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp158:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB25_2:
.Ltmp159:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev, .Lfunc_end25-_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table25:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp157-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin6         #     jumps to .Ltmp159
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp158-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Lfunc_end25-.Ltmp158          #   Call between .Ltmp158 and .Lfunc_end25
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
	.section	.text._ZN8NArchive3N7z22CCompressionMethodModeD2Ev,"axG",@progbits,_ZN8NArchive3N7z22CCompressionMethodModeD2Ev,comdat
	.weak	_ZN8NArchive3N7z22CCompressionMethodModeD2Ev # -- Begin function _ZN8NArchive3N7z22CCompressionMethodModeD2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z22CCompressionMethodModeD2Ev,@function
_ZN8NArchive3N7z22CCompressionMethodModeD2Ev: # @_ZN8NArchive3N7z22CCompressionMethodModeD2Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 72
	beqz	$a0, .LBB26_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB26_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	st.d	$a0, $fp, 0
.Ltmp160:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp161:
# %bb.3:                                # %_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB26_4:
.Ltmp162:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZN8NArchive3N7z22CCompressionMethodModeD2Ev, .Lfunc_end26-_ZN8NArchive3N7z22CCompressionMethodModeD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z22CCompressionMethodModeD2Ev,"aG",@progbits,_ZN8NArchive3N7z22CCompressionMethodModeD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table26:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp160-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin7         #     jumps to .Ltmp162
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp161-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Lfunc_end26-.Ltmp161          #   Call between .Ltmp161 and .Lfunc_end26
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
	beqz	$a0, .LBB27_2
# %bb.1:
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB27_2:
	ret
.Lfunc_end27:
	.size	_ZN7CBufferIhED2Ev, .Lfunc_end27-_ZN7CBufferIhED2Ev
                                        # -- End function
	.text
	.globl	_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E # -- Begin function _ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E
	.p2align	5
	.type	_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E,@function
_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E: # @_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E
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
	ld.d	$a4, $a0, 176
	slli.d	$s1, $a1, 3
	ldx.d	$s2, $a4, $s1
	vld	$vr0, $s2, 0
	vst	$vr0, $a2, 0
	beq	$s2, $a2, .LBB28_10
# %bb.1:
	st.w	$zero, $a2, 24
	ld.d	$s0, $a2, 16
	ld.w	$a4, $s2, 24
	ld.w	$s8, $a2, 28
	addi.w	$s3, $a4, 1
	st.w	$zero, $s0, 0
	bne	$s3, $s8, .LBB28_3
# %bb.2:
	move	$fp, $s0
	b	.LBB28_7
.LBB28_3:
	move	$s7, $a2
	move	$s4, $a1
	move	$s5, $a0
	move	$s6, $a3
	slti	$a0, $a4, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$fp, $a0
	blt	$s8, $a1, .LBB28_5
# %bb.4:                                # %._crit_edge.thread.i.i.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a2, $s7
	ld.w	$a0, $s7, 24
	b	.LBB28_6
.LBB28_5:
	move	$a0, $zero
	move	$a2, $s7
.LBB28_6:
	st.d	$fp, $a2, 16
	slli.d	$a0, $a0, 2
	stx.w	$zero, $fp, $a0
	st.w	$s3, $a2, 28
	move	$a3, $s6
	move	$a0, $s5
	move	$a1, $s4
.LBB28_7:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a4, $s2, 16
	.p2align	4, , 16
.LBB28_8:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a6, $fp, 4
	st.w	$a5, $fp, 0
	move	$fp, $a6
	bnez	$a5, .LBB28_8
# %bb.9:                                # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i.i
	ld.w	$a4, $s2, 24
	st.w	$a4, $a2, 24
.LBB28_10:                              # %_ZN8NArchive3N7z9CFileItemaSERKS1_.exit
	ld.w	$a4, $s2, 32
	st.w	$a4, $a2, 32
	ld.w	$a2, $a0, 236
	bge	$a1, $a2, .LBB28_13
# %bb.11:
	ld.d	$a2, $a0, 240
	ldx.bu	$a4, $a2, $a1
	ori	$a2, $zero, 1
	bne	$a4, $a2, .LBB28_13
# %bb.12:
	ld.d	$a4, $a0, 208
	ldx.d	$a4, $a4, $s1
	ld.w	$a5, $a0, 300
	st.d	$a4, $a3, 0
	st.b	$a2, $a3, 32
	blt	$a1, $a5, .LBB28_14
	b	.LBB28_16
.LBB28_13:
	move	$a4, $zero
	move	$a2, $zero
	ld.w	$a5, $a0, 300
	st.d	$a4, $a3, 0
	st.b	$a2, $a3, 32
	bge	$a1, $a5, .LBB28_16
.LBB28_14:
	ld.d	$a2, $a0, 304
	ldx.bu	$a4, $a2, $a1
	ori	$a2, $zero, 1
	bne	$a4, $a2, .LBB28_16
# %bb.15:
	ld.d	$a4, $a0, 272
	ldx.d	$a4, $a4, $s1
	ld.w	$a5, $a0, 364
	st.d	$a4, $a3, 8
	st.b	$a2, $a3, 33
	blt	$a1, $a5, .LBB28_17
	b	.LBB28_19
.LBB28_16:
	move	$a4, $zero
	move	$a2, $zero
	ld.w	$a5, $a0, 364
	st.d	$a4, $a3, 8
	st.b	$a2, $a3, 33
	bge	$a1, $a5, .LBB28_19
.LBB28_17:
	ld.d	$a2, $a0, 368
	ldx.bu	$a4, $a2, $a1
	ori	$a2, $zero, 1
	bne	$a4, $a2, .LBB28_19
# %bb.18:
	ld.d	$a4, $a0, 336
	ldx.d	$a4, $a4, $s1
	ld.w	$a5, $a0, 428
	st.d	$a4, $a3, 16
	st.b	$a2, $a3, 34
	blt	$a1, $a5, .LBB28_20
	b	.LBB28_23
.LBB28_19:
	move	$a4, $zero
	move	$a2, $zero
	ld.w	$a5, $a0, 428
	st.d	$a4, $a3, 16
	st.b	$a2, $a3, 34
	bge	$a1, $a5, .LBB28_23
.LBB28_20:
	ld.d	$a2, $a0, 432
	ldx.bu	$a4, $a2, $a1
	ori	$a2, $zero, 1
	bne	$a4, $a2, .LBB28_23
# %bb.21:
	ld.d	$a4, $a0, 400
	ldx.d	$a4, $a4, $s1
	ld.w	$a5, $a0, 460
	st.d	$a4, $a3, 24
	st.b	$a2, $a3, 35
	blt	$a1, $a5, .LBB28_24
.LBB28_22:
	move	$a0, $zero
	b	.LBB28_25
.LBB28_23:
	move	$a4, $zero
	move	$a2, $zero
	ld.w	$a5, $a0, 460
	st.d	$a4, $a3, 24
	st.b	$a2, $a3, 35
	bge	$a1, $a5, .LBB28_22
.LBB28_24:
	ld.d	$a0, $a0, 464
	ldx.b	$a0, $a0, $a1
.LBB28_25:                              # %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit
	andi	$a0, $a0, 1
	st.b	$a0, $a3, 36
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
.Lfunc_end28:
	.size	_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E, .Lfunc_end28-_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E # -- Begin function _ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E
	.p2align	5
	.type	_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E,@function
_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E: # @_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E
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
	move	$s1, $a2
	move	$fp, $a0
	ld.w	$s3, $a0, 172
	ld.bu	$s6, $a2, 32
	ld.w	$a0, $a0, 236
	ld.d	$s5, $a2, 0
	move	$s0, $a1
	bge	$s3, $a0, .LBB29_2
# %bb.1:                                # %.._crit_edge_crit_edge.i
	ld.d	$a0, $fp, 240
	b	.LBB29_4
.LBB29_2:                               # %.lr.ph.i
	addi.d	$s2, $fp, 224
	.p2align	4, , 16
.LBB29_3:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 240
	ld.w	$a1, $fp, 236
	stx.b	$zero, $a0, $a1
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 236
	blt	$a1, $s3, .LBB29_3
.LBB29_4:                               # %._crit_edge.i
	stx.b	$s6, $a0, $s3
	slli.d	$s4, $s3, 3
	beqz	$s6, .LBB29_10
# %bb.5:                                # %.preheader.i
	ld.w	$a0, $fp, 204
	bge	$s3, $a0, .LBB29_7
# %bb.6:                                # %.preheader.._crit_edge11_crit_edge.i
	ld.d	$a0, $fp, 208
	b	.LBB29_9
.LBB29_7:
	addi.d	$s2, $fp, 192
	.p2align	4, , 16
.LBB29_8:                               # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 204
	ld.d	$a0, $fp, 208
	slli.d	$a2, $a1, 3
	stx.d	$zero, $a0, $a2
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 204
	blt	$a1, $s3, .LBB29_8
.LBB29_9:                               # %._crit_edge11.i
	stx.d	$s5, $a0, $s4
.LBB29_10:                              # %_ZN8NArchive3N7z16CUInt64DefVector7SetItemEiby.exit
	ld.bu	$s6, $s1, 33
	ld.w	$a0, $fp, 300
	ld.d	$s5, $s1, 8
	bge	$s3, $a0, .LBB29_12
# %bb.11:                               # %.._crit_edge_crit_edge.i27
	ld.d	$a0, $fp, 304
	b	.LBB29_14
.LBB29_12:                              # %.lr.ph.i16
	addi.d	$s2, $fp, 288
	.p2align	4, , 16
.LBB29_13:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 304
	ld.w	$a1, $fp, 300
	stx.b	$zero, $a0, $a1
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 300
	blt	$a1, $s3, .LBB29_13
.LBB29_14:                              # %._crit_edge.i18
	stx.b	$s6, $a0, $s3
	beqz	$s6, .LBB29_20
# %bb.15:                               # %.preheader.i19
	ld.w	$a0, $fp, 268
	bge	$s3, $a0, .LBB29_17
# %bb.16:                               # %.preheader.._crit_edge11_crit_edge.i25
	ld.d	$a0, $fp, 272
	b	.LBB29_19
.LBB29_17:
	addi.d	$s2, $fp, 256
	.p2align	4, , 16
.LBB29_18:                              # %.lr.ph10.i22
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 268
	ld.d	$a0, $fp, 272
	slli.d	$a2, $a1, 3
	stx.d	$zero, $a0, $a2
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 268
	blt	$a1, $s3, .LBB29_18
.LBB29_19:                              # %._crit_edge11.i24
	stx.d	$s5, $a0, $s4
.LBB29_20:                              # %_ZN8NArchive3N7z16CUInt64DefVector7SetItemEiby.exit30
	ld.bu	$s6, $s1, 34
	ld.w	$a0, $fp, 364
	ld.d	$s5, $s1, 16
	bge	$s3, $a0, .LBB29_22
# %bb.21:                               # %.._crit_edge_crit_edge.i43
	ld.d	$a0, $fp, 368
	b	.LBB29_24
.LBB29_22:                              # %.lr.ph.i32
	addi.d	$s2, $fp, 352
	.p2align	4, , 16
.LBB29_23:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 368
	ld.w	$a1, $fp, 364
	stx.b	$zero, $a0, $a1
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 364
	blt	$a1, $s3, .LBB29_23
.LBB29_24:                              # %._crit_edge.i34
	stx.b	$s6, $a0, $s3
	beqz	$s6, .LBB29_30
# %bb.25:                               # %.preheader.i35
	ld.w	$a0, $fp, 332
	bge	$s3, $a0, .LBB29_27
# %bb.26:                               # %.preheader.._crit_edge11_crit_edge.i41
	ld.d	$a0, $fp, 336
	b	.LBB29_29
.LBB29_27:
	addi.d	$s2, $fp, 320
	.p2align	4, , 16
.LBB29_28:                              # %.lr.ph10.i38
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 332
	ld.d	$a0, $fp, 336
	slli.d	$a2, $a1, 3
	stx.d	$zero, $a0, $a2
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 332
	blt	$a1, $s3, .LBB29_28
.LBB29_29:                              # %._crit_edge11.i40
	stx.d	$s5, $a0, $s4
.LBB29_30:                              # %_ZN8NArchive3N7z16CUInt64DefVector7SetItemEiby.exit46
	ld.bu	$s6, $s1, 35
	ld.w	$a0, $fp, 428
	ld.d	$s5, $s1, 24
	bge	$s3, $a0, .LBB29_32
# %bb.31:                               # %.._crit_edge_crit_edge.i59
	ld.d	$a0, $fp, 432
	b	.LBB29_34
.LBB29_32:                              # %.lr.ph.i48
	addi.d	$s2, $fp, 416
	.p2align	4, , 16
.LBB29_33:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 432
	ld.w	$a1, $fp, 428
	stx.b	$zero, $a0, $a1
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 428
	blt	$a1, $s3, .LBB29_33
.LBB29_34:                              # %._crit_edge.i50
	stx.b	$s6, $a0, $s3
	beqz	$s6, .LBB29_40
# %bb.35:                               # %.preheader.i51
	ld.w	$a0, $fp, 396
	bge	$s3, $a0, .LBB29_37
# %bb.36:                               # %.preheader.._crit_edge11_crit_edge.i57
	ld.d	$a0, $fp, 400
	b	.LBB29_39
.LBB29_37:
	addi.d	$s2, $fp, 384
	.p2align	4, , 16
.LBB29_38:                              # %.lr.ph10.i54
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 396
	ld.d	$a0, $fp, 400
	slli.d	$a2, $a1, 3
	stx.d	$zero, $a0, $a2
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 396
	blt	$a1, $s3, .LBB29_38
.LBB29_39:                              # %._crit_edge11.i56
	stx.d	$s5, $a0, $s4
.LBB29_40:                              # %_ZN8NArchive3N7z16CUInt64DefVector7SetItemEiby.exit62
	ld.w	$a0, $fp, 460
	ld.bu	$s2, $s1, 36
	bge	$s3, $a0, .LBB29_42
# %bb.41:                               # %.._crit_edge_crit_edge.i66
	ld.d	$a1, $fp, 464
	b	.LBB29_44
.LBB29_42:                              # %.lr.ph.i63
	addi.d	$s1, $fp, 448
	.p2align	4, , 16
.LBB29_43:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 464
	ld.w	$a0, $fp, 460
	stx.b	$zero, $a1, $a0
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 460
	blt	$a0, $s3, .LBB29_43
.LBB29_44:                              # %_ZN8NArchive3N7z16CArchiveDatabase11SetItemAntiEib.exit
	addi.d	$a0, $fp, 160
	stx.b	$s2, $a1, $s3
	move	$a1, $s0
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
	pcaddu18i	$t8, %call36(_ZN13CObjectVectorIN8NArchive3N7z9CFileItemEE3AddERKS2_)
	jr	$t8
.Lfunc_end29:
	.size	_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E, .Lfunc_end29-_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z9CFileItemEE3AddERKS2_,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z9CFileItemEE3AddERKS2_,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z9CFileItemEE3AddERKS2_ # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z9CFileItemEE3AddERKS2_
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z9CFileItemEE3AddERKS2_,@function
_ZN13CObjectVectorIN8NArchive3N7z9CFileItemEE3AddERKS2_: # @_ZN13CObjectVectorIN8NArchive3N7z9CFileItemEE3AddERKS2_
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	move	$fp, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	vld	$vr0, $s1, 0
	ld.w	$s2, $s1, 24
	move	$s0, $a0
	vst	$vr0, $a0, 0
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s3, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s3, $a0
	vst	$vr0, $s0, 16
	beqz	$a0, .LBB30_2
# %bb.1:
	move	$a0, $zero
	b	.LBB30_4
.LBB30_2:
	addi.w	$a0, $s3, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp163:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp164:
# %bb.3:                                # %.noexc
	st.d	$a0, $s0, 16
	st.w	$zero, $a0, 0
	st.w	$s3, $s0, 28
.LBB30_4:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a1, $s1, 16
	.p2align	4, , 16
.LBB30_5:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB30_5
# %bb.6:
	ld.w	$a0, $s1, 32
	st.w	$s2, $s0, 24
	st.w	$a0, $s0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a0, 3
	stx.d	$s0, $a1, $a2
	addi.d	$a1, $a0, 1
	st.w	$a1, $fp, 12
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB30_7:
.Ltmp165:
	move	$fp, $a0
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZN13CObjectVectorIN8NArchive3N7z9CFileItemEE3AddERKS2_, .Lfunc_end30-_ZN13CObjectVectorIN8NArchive3N7z9CFileItemEE3AddERKS2_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z9CFileItemEE3AddERKS2_,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z9CFileItemEE3AddERKS2_,comdat
	.p2align	2, 0x0
GCC_except_table30:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp163-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin8         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Lfunc_end30-.Ltmp164          #   Call between .Ltmp164 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp166:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp167:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB31_2:
.Ltmp168:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev, .Lfunc_end31-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table31:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp166-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin9         #     jumps to .Ltmp168
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp167-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end31-.Ltmp167          #   Call between .Ltmp167 and .Lfunc_end31
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
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
.Ltmp169:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp170:
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
.LBB32_2:
.Ltmp171:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev, .Lfunc_end32-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table32:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp169-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin10        #     jumps to .Ltmp171
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp170-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Lfunc_end32-.Ltmp170          #   Call between .Ltmp170 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
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
	blt	$s1, $a0, .LBB33_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	b	.LBB33_4
	.p2align	4, , 16
.LBB33_2:                               # %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit
                                        #   in Loop: Header=BB33_4 Depth=1
	ori	$a1, $zero, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_3:                               #   in Loop: Header=BB33_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB33_7
.LBB33_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB33_3
# %bb.5:                                #   in Loop: Header=BB33_4 Depth=1
	ld.d	$a0, $s2, 24
	st.d	$s5, $s2, 8
	beqz	$a0, .LBB33_2
# %bb.6:                                #   in Loop: Header=BB33_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB33_2
.LBB33_7:                               # %._crit_edge
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
.Lfunc_end33:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii, .Lfunc_end33-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii
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
.Lfunc_end34:
	.size	_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev, .Lfunc_end34-_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev
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
.Lfunc_end35:
	.size	__clang_call_terminate, .Lfunc_end35-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev: # @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	st.d	$a0, $fp, 0
.Ltmp172:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp173:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB36_2:
.Ltmp174:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev, .Lfunc_end36-_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table36:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp172-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin11        #     jumps to .Ltmp174
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp173-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Lfunc_end36-.Ltmp173          #   Call between .Ltmp173 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev: # @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	st.d	$a0, $fp, 0
.Ltmp175:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp176:
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev.exit
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
.LBB37_2:
.Ltmp177:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end37:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev, .Lfunc_end37-_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table37:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp175-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin12        #     jumps to .Ltmp177
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp176-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Lfunc_end37-.Ltmp176          #   Call between .Ltmp176 and .Lfunc_end37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB38_6
# %bb.1:                                # %.lr.ph
	move	$s4, $zero
	slli.d	$s5, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$s6, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	b	.LBB38_3
	.p2align	4, , 16
.LBB38_2:                               #   in Loop: Header=BB38_3 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	bgeu	$s4, $s1, .LBB38_6
.LBB38_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s5
	beqz	$s2, .LBB38_2
# %bb.4:                                #   in Loop: Header=BB38_3 Depth=1
	addi.d	$s3, $s2, 8
	st.d	$s6, $s2, 8
.Ltmp178:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp179:
# %bb.5:                                # %_ZN7CMethodD2Ev.exit
                                        #   in Loop: Header=BB38_3 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB38_2
.LBB38_6:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
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
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB38_7:
.Ltmp180:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii, .Lfunc_end38-_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table38:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp178-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin13        #     jumps to .Ltmp180
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp179-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Lfunc_end38-.Ltmp179          #   Call between .Ltmp179 and .Lfunc_end38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI5CPropED2Ev,"axG",@progbits,_ZN13CObjectVectorI5CPropED2Ev,comdat
	.weak	_ZN13CObjectVectorI5CPropED2Ev  # -- Begin function _ZN13CObjectVectorI5CPropED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropED2Ev,@function
_ZN13CObjectVectorI5CPropED2Ev:         # @_ZN13CObjectVectorI5CPropED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	st.d	$a0, $fp, 0
.Ltmp181:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp182:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB39_2:
.Ltmp183:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end39:
	.size	_ZN13CObjectVectorI5CPropED2Ev, .Lfunc_end39-_ZN13CObjectVectorI5CPropED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropED2Ev,"aG",@progbits,_ZN13CObjectVectorI5CPropED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table39:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp181-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin14        #     jumps to .Ltmp183
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp182-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Lfunc_end39-.Ltmp182          #   Call between .Ltmp182 and .Lfunc_end39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI5CPropED0Ev,"axG",@progbits,_ZN13CObjectVectorI5CPropED0Ev,comdat
	.weak	_ZN13CObjectVectorI5CPropED0Ev  # -- Begin function _ZN13CObjectVectorI5CPropED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropED0Ev,@function
_ZN13CObjectVectorI5CPropED0Ev:         # @_ZN13CObjectVectorI5CPropED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	st.d	$a0, $fp, 0
.Ltmp184:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp185:
# %bb.1:                                # %_ZN13CObjectVectorI5CPropED2Ev.exit
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
.LBB40_2:
.Ltmp186:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end40:
	.size	_ZN13CObjectVectorI5CPropED0Ev, .Lfunc_end40-_ZN13CObjectVectorI5CPropED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropED0Ev,"aG",@progbits,_ZN13CObjectVectorI5CPropED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table40:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp184-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin15        #     jumps to .Ltmp186
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp185-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Lfunc_end40-.Ltmp185          #   Call between .Ltmp185 and .Lfunc_end40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI5CPropE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI5CPropE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI5CPropE6DeleteEii # -- Begin function _ZN13CObjectVectorI5CPropE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropE6DeleteEii,@function
_ZN13CObjectVectorI5CPropE6DeleteEii:   # @_ZN13CObjectVectorI5CPropE6DeleteEii
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
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
	blt	$s1, $a0, .LBB41_6
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB41_3
	.p2align	4, , 16
.LBB41_2:                               #   in Loop: Header=BB41_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB41_6
.LBB41_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB41_2
# %bb.4:                                #   in Loop: Header=BB41_3 Depth=1
	addi.d	$a0, $s2, 8
.Ltmp187:
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp188:
# %bb.5:                                # %_ZN5CPropD2Ev.exit
                                        #   in Loop: Header=BB41_3 Depth=1
	ori	$a1, $zero, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB41_2
.LBB41_6:                               # %._crit_edge
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
.LBB41_7:
.Ltmp189:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end41:
	.size	_ZN13CObjectVectorI5CPropE6DeleteEii, .Lfunc_end41-_ZN13CObjectVectorI5CPropE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI5CPropE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table41:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp187-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin16        #     jumps to .Ltmp189
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp188-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Lfunc_end41-.Ltmp188          #   Call between .Ltmp188 and .Lfunc_end41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev,"axG",@progbits,_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev,comdat
	.weak	_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev # -- Begin function _ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev,@function
_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev: # @_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev
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
.Lfunc_end42:
	.size	_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev, .Lfunc_end42-_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev
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
	beqz	$a1, .LBB43_2
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
.LBB43_2:                               # %_ZN7CBufferIhED2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end43:
	.size	_ZN7CBufferIhED0Ev, .Lfunc_end43-_ZN7CBufferIhED0Ev
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
.Lfunc_end44:
	.size	_ZN13CRecordVectorIjED0Ev, .Lfunc_end44-_ZN13CRecordVectorIjED0Ev
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
.Lfunc_end45:
	.size	_ZN13CRecordVectorIyED0Ev, .Lfunc_end45-_ZN13CRecordVectorIyED0Ev
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
.Lfunc_end46:
	.size	_ZN13CRecordVectorIbED0Ev, .Lfunc_end46-_ZN13CRecordVectorIbED0Ev
                                        # -- End function
	.section	.text._ZN8NArchive3N7z7CFolderC2ERKS1_,"axG",@progbits,_ZN8NArchive3N7z7CFolderC2ERKS1_,comdat
	.weak	_ZN8NArchive3N7z7CFolderC2ERKS1_ # -- Begin function _ZN8NArchive3N7z7CFolderC2ERKS1_
	.p2align	5
	.type	_ZN8NArchive3N7z7CFolderC2ERKS1_,@function
_ZN8NArchive3N7z7CFolderC2ERKS1_:       # @_ZN8NArchive3N7z7CFolderC2ERKS1_
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
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
.Ltmp190:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp191:
# %bb.1:                                # %.noexc.i
.Ltmp192:
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_)
	jirl	$ra, $ra, 0
.Ltmp193:
# %bb.2:                                # %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEC2ERKS3_.exit
	addi.d	$s0, $fp, 32
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 40
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 56
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE+16)
	st.d	$a0, $fp, 32
.Ltmp195:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp196:
# %bb.3:                                # %.noexc.i11
	ld.w	$s3, $s1, 44
	ld.w	$a0, $fp, 44
	add.w	$a1, $a0, $s3
.Ltmp197:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp198:
# %bb.4:                                # %.noexc3.i
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB47_8
# %bb.5:                                # %.lr.ph.i.i.i
	move	$s2, $zero
	slli.d	$s3, $s3, 3
	.p2align	4, , 16
.LBB47_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 48
	ldx.d	$s4, $a0, $s2
.Ltmp200:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp201:
# %bb.7:                                # %.noexc4.i
                                        #   in Loop: Header=BB47_6 Depth=1
	ld.w	$a0, $fp, 44
	ld.d	$a1, $fp, 48
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a1, $a0
	ld.w	$a0, $fp, 44
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	st.w	$a0, $fp, 44
	bne	$s3, $s2, .LBB47_6
.LBB47_8:                               # %_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEEC2ERKS3_.exit
	addi.d	$s2, $fp, 64
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 72
	ori	$a0, $zero, 4
	st.d	$a0, $fp, 88
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a0, $fp, 64
.Ltmp203:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp204:
# %bb.9:                                # %.noexc.i15
	ld.w	$s4, $s1, 76
	ld.w	$a0, $fp, 76
	add.w	$a1, $a0, $s4
.Ltmp205:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp206:
# %bb.10:                               # %.noexc3.i16
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB47_14
# %bb.11:                               # %.lr.ph.i.i.i17
	move	$s3, $zero
	slli.d	$s4, $s4, 2
	.p2align	4, , 16
.LBB47_12:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 80
	ldx.w	$s5, $a0, $s3
.Ltmp208:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp209:
# %bb.13:                               # %.noexc4.i22
                                        #   in Loop: Header=BB47_12 Depth=1
	ld.w	$a0, $fp, 76
	ld.d	$a1, $fp, 80
	slli.d	$a0, $a0, 2
	stx.w	$s5, $a1, $a0
	ld.w	$a0, $fp, 76
	addi.d	$a0, $a0, 1
	addi.d	$s3, $s3, 4
	st.w	$a0, $fp, 76
	bne	$s4, $s3, .LBB47_12
.LBB47_14:                              # %_ZN13CRecordVectorIjEC2ERKS0_.exit
	addi.d	$s3, $fp, 96
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 104
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 120
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a0, $fp, 96
.Ltmp211:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp212:
# %bb.15:                               # %.noexc.i30
	ld.w	$s5, $s1, 108
	ld.w	$a0, $fp, 108
	add.w	$a1, $a0, $s5
.Ltmp213:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp214:
# %bb.16:                               # %.noexc3.i31
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB47_20
# %bb.17:                               # %.lr.ph.i.i.i32
	move	$s4, $zero
	slli.d	$s5, $s5, 3
	.p2align	4, , 16
.LBB47_18:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 112
	ldx.d	$s6, $a0, $s4
.Ltmp216:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp217:
# %bb.19:                               # %.noexc4.i37
                                        #   in Loop: Header=BB47_18 Depth=1
	ld.w	$a0, $fp, 108
	ld.d	$a1, $fp, 112
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s4, $s4, 8
	st.w	$a0, $fp, 108
	bne	$s5, $s4, .LBB47_18
.LBB47_20:                              # %_ZN13CRecordVectorIyEC2ERKS0_.exit
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
.LBB47_21:                              # %.loopexit.split-lp.i27
.Ltmp215:
	b	.LBB47_26
.LBB47_22:                              # %.loopexit.split-lp.i12
.Ltmp207:
	b	.LBB47_28
.LBB47_23:                              # %.loopexit.split-lp.i
.Ltmp199:
	b	.LBB47_31
.LBB47_24:
.Ltmp194:
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB47_25:                              # %.loopexit.i35
.Ltmp218:
.LBB47_26:                              # %.body40
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB47_29
.LBB47_27:                              # %.loopexit.i20
.Ltmp210:
.LBB47_28:                              # %.body25
	move	$s1, $a0
.LBB47_29:                              # %.body25
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB47_32
.LBB47_30:                              # %.loopexit.i
.Ltmp202:
.LBB47_31:                              # %.body
	move	$s1, $a0
.LBB47_32:                              # %.body
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end47:
	.size	_ZN8NArchive3N7z7CFolderC2ERKS1_, .Lfunc_end47-_ZN8NArchive3N7z7CFolderC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z7CFolderC2ERKS1_,"aG",@progbits,_ZN8NArchive3N7z7CFolderC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table47:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp190-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp193-.Ltmp190              #   Call between .Ltmp190 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin17        #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp198-.Ltmp195              #   Call between .Ltmp195 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin17        #     jumps to .Ltmp199
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin17        #     jumps to .Ltmp202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin17        # >> Call Site 4 <<
	.uleb128 .Ltmp206-.Ltmp203              #   Call between .Ltmp203 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin17        #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin17        # >> Call Site 5 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin17        #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin17        # >> Call Site 6 <<
	.uleb128 .Ltmp214-.Ltmp211              #   Call between .Ltmp211 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin17        #     jumps to .Ltmp215
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin17        # >> Call Site 7 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin17        #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin17        # >> Call Site 8 <<
	.uleb128 .Lfunc_end47-.Ltmp217          #   Call between .Ltmp217 and .Lfunc_end47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_ # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
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
	blt	$s1, $a0, .LBB48_6
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s1, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	b	.LBB48_3
	.p2align	4, , 16
.LBB48_2:                               # %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE3AddERKS2_.exit
                                        #   in Loop: Header=BB48_3 Depth=1
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
	beq	$s4, $s3, .LBB48_6
.LBB48_3:                               # =>This Inner Loop Header: Depth=1
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
	beqz	$s2, .LBB48_2
# %bb.4:                                # %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
                                        #   in Loop: Header=BB48_3 Depth=1
.Ltmp219:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp220:
# %bb.5:                                # %.noexc.i
                                        #   in Loop: Header=BB48_3 Depth=1
	st.d	$a0, $s1, 24
	ld.d	$a1, $s6, 24
	st.d	$s2, $s1, 16
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB48_2
.LBB48_6:                               # %._crit_edge
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
.LBB48_7:
.Ltmp221:
	move	$fp, $a0
	ori	$a1, $zero, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end48:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_, .Lfunc_end48-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,comdat
	.p2align	2, 0x0
GCC_except_table48:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp219-.Lfunc_begin18        #   Call between .Lfunc_begin18 and .Ltmp219
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin18        #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Lfunc_end48-.Ltmp220          #   Call between .Ltmp220 and .Lfunc_end48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev: # @_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE+16)
	st.d	$a0, $fp, 0
.Ltmp222:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp223:
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
.LBB49_2:
.Ltmp224:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end49:
	.size	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev, .Lfunc_end49-_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table49:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp222-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin19        #     jumps to .Ltmp224
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp223-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Lfunc_end49-.Ltmp223          #   Call between .Ltmp223 and .Lfunc_end49
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
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii
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
	blt	$s1, $a0, .LBB50_6
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	b	.LBB50_3
	.p2align	4, , 16
.LBB50_2:                               #   in Loop: Header=BB50_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB50_6
.LBB50_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB50_2
# %bb.4:                                #   in Loop: Header=BB50_3 Depth=1
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
.Ltmp225:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp226:
# %bb.5:                                # %_ZN8NArchive3N7z7CFolderD2Ev.exit
                                        #   in Loop: Header=BB50_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB50_2
.LBB50_6:                               # %._crit_edge
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
.LBB50_7:
.Ltmp227:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end50:
	.size	_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii, .Lfunc_end50-_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table50:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp225-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin20        #     jumps to .Ltmp227
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp226-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Lfunc_end50-.Ltmp226          #   Call between .Ltmp226 and .Lfunc_end50
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

	.type	_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE,@object # @_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.dword	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE,@object # @_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE,@object # @_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE
_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE:
	.asciz	"13CObjectVectorIN8NArchive3N7z11CMethodFullEE"
	.size	_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE, 46

	.type	_ZTV13CObjectVectorI5CPropE,@object # @_ZTV13CObjectVectorI5CPropE
	.section	.data.rel.ro._ZTV13CObjectVectorI5CPropE,"awG",@progbits,_ZTV13CObjectVectorI5CPropE,comdat
	.weak	_ZTV13CObjectVectorI5CPropE
	.p2align	3, 0x0
_ZTV13CObjectVectorI5CPropE:
	.dword	0
	.dword	_ZTI13CObjectVectorI5CPropE
	.dword	_ZN13CObjectVectorI5CPropED2Ev
	.dword	_ZN13CObjectVectorI5CPropED0Ev
	.dword	_ZN13CObjectVectorI5CPropE6DeleteEii
	.size	_ZTV13CObjectVectorI5CPropE, 40

	.type	_ZTI13CObjectVectorI5CPropE,@object # @_ZTI13CObjectVectorI5CPropE
	.section	.data.rel.ro._ZTI13CObjectVectorI5CPropE,"awG",@progbits,_ZTI13CObjectVectorI5CPropE,comdat
	.weak	_ZTI13CObjectVectorI5CPropE
	.p2align	3, 0x0
_ZTI13CObjectVectorI5CPropE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI5CPropE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI5CPropE, 24

	.type	_ZTS13CObjectVectorI5CPropE,@object # @_ZTS13CObjectVectorI5CPropE
	.section	.rodata._ZTS13CObjectVectorI5CPropE,"aG",@progbits,_ZTS13CObjectVectorI5CPropE,comdat
	.weak	_ZTS13CObjectVectorI5CPropE
_ZTS13CObjectVectorI5CPropE:
	.asciz	"13CObjectVectorI5CPropE"
	.size	_ZTS13CObjectVectorI5CPropE, 24

	.type	_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE,@object # @_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE
	.section	.data.rel.ro._ZTV13CRecordVectorIN8NArchive3N7z5CBindEE,"awG",@progbits,_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE,comdat
	.weak	_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE
	.p2align	3, 0x0
_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE:
	.dword	0
	.dword	_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE, 40

	.type	_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE,@object # @_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE
	.section	.data.rel.ro._ZTI13CRecordVectorIN8NArchive3N7z5CBindEE,"awG",@progbits,_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE,comdat
	.weak	_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE
	.p2align	3, 0x0
_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIN8NArchive3N7z5CBindEE, 24

	.type	_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE,@object # @_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE
	.section	.rodata._ZTS13CRecordVectorIN8NArchive3N7z5CBindEE,"aG",@progbits,_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE,comdat
	.weak	_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE
_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE:
	.asciz	"13CRecordVectorIN8NArchive3N7z5CBindEE"
	.size	_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE, 39

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
	.addrsig_sym IID_IOutStream
	.addrsig_sym _ZTIi
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTI13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.addrsig_sym _ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.addrsig_sym _ZTI13CObjectVectorI5CPropE
	.addrsig_sym _ZTS13CObjectVectorI5CPropE
	.addrsig_sym _ZTI13CRecordVectorIN8NArchive3N7z5CBindEE
	.addrsig_sym _ZTS13CRecordVectorIN8NArchive3N7z5CBindEE
	.addrsig_sym _ZTI7CBufferIhE
	.addrsig_sym _ZTS7CBufferIhE
	.addrsig_sym _ZTI13CRecordVectorIjE
	.addrsig_sym _ZTS13CRecordVectorIjE
	.addrsig_sym _ZTI13CRecordVectorIyE
	.addrsig_sym _ZTS13CRecordVectorIyE
	.addrsig_sym _ZTI13CRecordVectorIbE
	.addrsig_sym _ZTS13CRecordVectorIbE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive3N7z7CFolderEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive3N7z7CFolderEE
