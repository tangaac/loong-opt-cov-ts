	.file	"7zUpdate.cpp"
	.text
	.globl	_ZNK8NArchive3N7z11CUpdateItem15GetExtensionPosEv # -- Begin function _ZNK8NArchive3N7z11CUpdateItem15GetExtensionPosEv
	.p2align	5
	.type	_ZNK8NArchive3N7z11CUpdateItem15GetExtensionPosEv,@function
_ZNK8NArchive3N7z11CUpdateItem15GetExtensionPosEv: # @_ZNK8NArchive3N7z11CUpdateItem15GetExtensionPosEv
# %bb.0:
	move	$a1, $a0
	ld.w	$a0, $a0, 48
	beqz	$a0, .LBB0_4
# %bb.1:
	ld.d	$a2, $a1, 40
	slli.d	$a4, $a0, 2
	addi.d	$a5, $a4, -4
	ori	$a6, $zero, 47
	addi.d	$a1, $zero, -1
	addi.w	$a3, $zero, -4
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a7, $a2, $a5
	beq	$a7, $a6, .LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addi.d	$a5, $a5, -4
	bne	$a5, $a3, .LBB0_2
	b	.LBB0_6
.LBB0_4:
	move	$a0, $zero
	ret
.LBB0_5:
	srli.d	$a1, $a5, 2
.LBB0_6:                                # %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit
	addi.d	$a4, $a4, -4
	ori	$a5, $zero, 46
	.p2align	4, , 16
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a6, $a2, $a4
	beq	$a6, $a5, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addi.d	$a4, $a4, -4
	bne	$a4, $a3, .LBB0_7
.LBB0_9:                                # %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread
	ret
.LBB0_10:                               # %_ZNK11CStringBaseIwE11ReverseFindEw.exit
	srli.d	$a2, $a4, 2
	addi.w	$a3, $a2, 0
	bltz	$a3, .LBB0_9
# %bb.11:
	addi.w	$a1, $a1, 0
	slt	$a1, $a3, $a1
	addi.w	$a2, $a2, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ret
.Lfunc_end0:
	.size	_ZNK8NArchive3N7z11CUpdateItem15GetExtensionPosEv, .Lfunc_end0-_ZNK8NArchive3N7z11CUpdateItem15GetExtensionPosEv
                                        # -- End function
	.globl	_ZNK8NArchive3N7z11CUpdateItem12GetExtensionEv # -- Begin function _ZNK8NArchive3N7z11CUpdateItem12GetExtensionEv
	.p2align	5
	.type	_ZNK8NArchive3N7z11CUpdateItem12GetExtensionEv,@function
_ZNK8NArchive3N7z11CUpdateItem12GetExtensionEv: # @_ZNK8NArchive3N7z11CUpdateItem12GetExtensionEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	move	$a2, $a1
	ld.w	$a3, $a1, 48
	addi.d	$a1, $a1, 40
	beqz	$a3, .LBB1_4
# %bb.1:
	ld.d	$a2, $a2, 40
	slli.d	$a6, $a3, 2
	addi.d	$a7, $a6, -4
	ori	$t0, $zero, 47
	addi.d	$a4, $zero, -1
	addi.w	$a5, $zero, -4
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$t1, $a2, $a7
	beq	$t1, $t0, .LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a7, $a7, -4
	bne	$a7, $a5, .LBB1_2
	b	.LBB1_6
.LBB1_4:
	move	$a2, $zero
	b	.LBB1_12
.LBB1_5:
	srli.d	$a4, $a7, 2
.LBB1_6:                                # %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit.i
	addi.d	$a6, $a6, -4
	ori	$a7, $zero, 46
	.p2align	4, , 16
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$t0, $a2, $a6
	beq	$t0, $a7, .LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	addi.d	$a6, $a6, -4
	bne	$a6, $a5, .LBB1_7
# %bb.9:
	move	$a2, $a3
	b	.LBB1_12
.LBB1_10:                               # %_ZNK11CStringBaseIwE11ReverseFindEw.exit.i
	srli.d	$a5, $a6, 2
	addi.w	$a6, $a5, 0
	move	$a2, $a3
	bltz	$a6, .LBB1_12
# %bb.11:
	addi.w	$a2, $a4, 0
	slt	$a2, $a6, $a2
	addi.w	$a4, $a5, 1
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
.LBB1_12:                               # %_ZNK8NArchive3N7z11CUpdateItem15GetExtensionPosEv.exit
	sub.w	$a3, $a3, $a2
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZNK8NArchive3N7z11CUpdateItem12GetExtensionEv, .Lfunc_end1-_ZNK8NArchive3N7z11CUpdateItem12GetExtensionEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z11GetExtIndexEPKc # -- Begin function _ZN8NArchive3N7z11GetExtIndexEPKc
	.p2align	5
	.type	_ZN8NArchive3N7z11GetExtIndexEPKc,@function
_ZN8NArchive3N7z11GetExtIndexEPKc:      # @_ZN8NArchive3N7z11GetExtIndexEPKc
# %bb.0:
	move	$a1, $a0
	addi.d	$a2, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a4, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 1
	ori	$a3, $zero, 32
	.p2align	4, , 16
.LBB2_1:                                # %.loopexit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
                                        #     Child Loop BB2_8 Depth 2
	ld.bu	$a5, $a4, 0
	addi.d	$a4, $a4, 1
	beq	$a5, $a3, .LBB2_1
# %bb.2:                                # %.loopexit
                                        #   in Loop: Header=BB2_1 Depth=1
	beqz	$a5, .LBB2_10
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a7, $a1, 0
	andi	$a6, $a5, 223
	or	$a6, $a7, $a6
	beqz	$a6, .LBB2_10
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_1 Depth=1
	move	$a6, $zero
	.p2align	4, , 16
.LBB2_5:                                # %.lr.ph
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$a5, $a7, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=2
	ldx.b	$t0, $a4, $a6
	ldx.bu	$a7, $a2, $a6
	andi	$a5, $t0, 255
	andi	$t0, $t0, 223
	or	$t0, $a7, $t0
	addi.d	$a6, $a6, 1
	bnez	$t0, .LBB2_5
	b	.LBB2_10
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$a4, $a4, $a6
	beqz	$a5, .LBB2_10
	.p2align	4, , 16
.LBB2_8:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a5, $a3, .LBB2_1
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=2
	ld.bu	$a5, $a4, 0
	addi.d	$a4, $a4, 1
	bnez	$a5, .LBB2_8
.LBB2_10:                               # %.thread
	ret
.Lfunc_end2:
	.size	_ZN8NArchive3N7z11GetExtIndexEPKc, .Lfunc_end2-_ZN8NArchive3N7z11GetExtIndexEPKc
                                        # -- End function
	.globl	_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream # -- Begin function _ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream,@function
_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream: # @_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream
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
	move	$s0, $a4
	move	$fp, $a0
	st.d	$a1, $a0, 32
	st.w	$a2, $a0, 56
	st.d	$a3, $a0, 40
	beqz	$a4, .LBB3_2
# %bb.1:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB3_2:
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB3_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB3_4:                                # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit
	st.d	$s0, $fp, 48
	st.w	$zero, $fp, 60
	st.b	$zero, $fp, 64
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN8NArchive3N7z17CFolderOutStream217ProcessEmptyFilesEv)
	jr	$t8
.Lfunc_end3:
	.size	_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream, .Lfunc_end3-_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z17CFolderOutStream217ProcessEmptyFilesEv # -- Begin function _ZN8NArchive3N7z17CFolderOutStream217ProcessEmptyFilesEv
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream217ProcessEmptyFilesEv,@function
_ZN8NArchive3N7z17CFolderOutStream217ProcessEmptyFilesEv: # @_ZN8NArchive3N7z17CFolderOutStream217ProcessEmptyFilesEv
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
	ld.d	$a1, $a0, 40
	ld.w	$a0, $a0, 60
	ld.w	$a2, $a1, 12
	bge	$a0, $a2, .LBB4_15
# %bb.1:                                # %.lr.ph
	addi.w	$s1, $zero, -1
	ori	$s2, $zero, 1
	move	$s3, $s1
	lu32i.d	$s3, 0
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %.backedge
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $fp, 40
	ld.w	$a2, $a1, 12
	bge	$a0, $a2, .LBB4_15
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 32
	ld.w	$a3, $fp, 56
	ld.d	$a2, $a2, 176
	add.w	$a3, $a3, $a0
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB4_15
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $a1, 16
	ldx.bu	$a0, $a1, $a0
	ld.d	$s4, $fp, 16
	bne	$a0, $s2, .LBB4_7
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$s0, $fp, 48
	beqz	$s0, .LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s4, 16
	bnez	$a0, .LBB4_8
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_7:                                #   in Loop: Header=BB4_3 Depth=1
	move	$s0, $zero
	ld.d	$a0, $s4, 16
	beqz	$a0, .LBB4_9
.LBB4_8:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB4_9:                                # %_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 32
	ld.w	$a2, $fp, 56
	ld.w	$a1, $fp, 60
	ld.d	$a0, $a0, 176
	st.d	$s0, $s4, 16
	add.w	$a2, $a1, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$s0, $a0, $a2
	ld.d	$a0, $s0, 0
	ld.d	$s4, $fp, 16
	st.d	$a0, $fp, 72
	ld.d	$a0, $s4, 16
	st.d	$zero, $s4, 24
	st.b	$s2, $s4, 36
	st.w	$s3, $s4, 32
	st.b	$s2, $fp, 64
	beqz	$a0, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	ld.w	$a1, $fp, 60
	st.d	$zero, $s4, 16
.LBB4_11:                               # %_ZN8NArchive3N7z17CFolderOutStream29CloseFileEv.exit.i
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$a2, $s0, 33
	st.b	$zero, $fp, 64
	addi.w	$a0, $a1, 1
	st.w	$a0, $fp, 60
	bnez	$a2, .LBB4_2
# %bb.12:                               #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$a1, $s0, 34
	bne	$a1, $s2, .LBB4_2
# %bb.13:                               # %_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $fp, 16
	ld.w	$a2, $s0, 12
	ld.w	$a1, $a1, 32
	xor	$a1, $a1, $a2
	beq	$a1, $s1, .LBB4_2
# %bb.14:
	ori	$a0, $zero, 1
	b	.LBB4_16
.LBB4_15:
	move	$a0, $zero
.LBB4_16:                               # %.critedge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end4:
	.size	_ZN8NArchive3N7z17CFolderOutStream217ProcessEmptyFilesEv, .Lfunc_end4-_ZN8NArchive3N7z17CFolderOutStream217ProcessEmptyFilesEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z17CFolderOutStream216ReleaseOutStreamEv # -- Begin function _ZN8NArchive3N7z17CFolderOutStream216ReleaseOutStreamEv
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream216ReleaseOutStreamEv,@function
_ZN8NArchive3N7z17CFolderOutStream216ReleaseOutStreamEv: # @_ZN8NArchive3N7z17CFolderOutStream216ReleaseOutStreamEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 48
	beqz	$a0, .LBB5_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 48
.LBB5_2:                                # %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit
	ld.d	$fp, $fp, 16
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB5_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 16
.LBB5_4:                                # %_ZN17COutStreamWithCRC13ReleaseStreamEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	_ZN8NArchive3N7z17CFolderOutStream216ReleaseOutStreamEv, .Lfunc_end5-_ZN8NArchive3N7z17CFolderOutStream216ReleaseOutStreamEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv # -- Begin function _ZN8NArchive3N7z17CFolderOutStream28OpenFileEv
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv,@function
_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv: # @_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv
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
	ld.w	$a1, $fp, 60
	ld.d	$a0, $a0, 16
	ldx.bu	$a0, $a0, $a1
	ld.d	$s1, $fp, 16
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_3
# %bb.1:
	ld.d	$s0, $fp, 48
	beqz	$s0, .LBB6_3
# %bb.2:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 16
	bnez	$a0, .LBB6_4
	b	.LBB6_5
.LBB6_3:
	move	$s0, $zero
	ld.d	$a0, $s1, 16
	beqz	$a0, .LBB6_5
.LBB6_4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB6_5:                                # %_ZN17COutStreamWithCRC9SetStreamEP20ISequentialOutStream.exit
	ld.d	$a0, $fp, 32
	ld.w	$a1, $fp, 56
	ld.w	$a2, $fp, 60
	ld.d	$a3, $fp, 16
	st.d	$s0, $s1, 16
	ld.d	$a0, $a0, 176
	add.w	$a1, $a2, $a1
	st.d	$zero, $a3, 24
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a3, 32
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	st.b	$a1, $a3, 36
	st.b	$a1, $fp, 64
	st.d	$a0, $fp, 72
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv, .Lfunc_end6-_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z17CFolderOutStream29CloseFileEv # -- Begin function _ZN8NArchive3N7z17CFolderOutStream29CloseFileEv
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream29CloseFileEv,@function
_ZN8NArchive3N7z17CFolderOutStream29CloseFileEv: # @_ZN8NArchive3N7z17CFolderOutStream29CloseFileEv
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
	ld.d	$s0, $a0, 16
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB7_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $s0, 16
.LBB7_2:                                # %_ZN17COutStreamWithCRC13ReleaseStreamEv.exit
	ld.w	$a0, $fp, 60
	st.b	$zero, $fp, 64
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 60
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	_ZN8NArchive3N7z17CFolderOutStream29CloseFileEv, .Lfunc_end7-_ZN8NArchive3N7z17CFolderOutStream29CloseFileEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv # -- Begin function _ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv,@function
_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv: # @_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv
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
	ld.d	$a0, $a0, 32
	ld.w	$a2, $fp, 56
	ld.w	$a1, $fp, 60
	ld.d	$s1, $fp, 16
	ld.d	$a3, $a0, 176
	add.w	$a0, $a1, $a2
	slli.d	$a2, $a0, 3
	ld.d	$a0, $s1, 16
	ldx.d	$s0, $a3, $a2
	beqz	$a0, .LBB8_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	ld.w	$a1, $fp, 60
	st.d	$zero, $s1, 16
.LBB8_2:                                # %_ZN8NArchive3N7z17CFolderOutStream29CloseFileEv.exit
	ld.bu	$a0, $s0, 33
	st.b	$zero, $fp, 64
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 60
	bnez	$a0, .LBB8_5
# %bb.3:
	ld.bu	$a0, $s0, 34
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_5
# %bb.4:
	ld.d	$a0, $fp, 16
	ld.w	$a1, $s0, 12
	ld.w	$a0, $a0, 32
	xor	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	sltu	$a0, $zero, $a0
	b	.LBB8_6
.LBB8_5:
	move	$a0, $zero
.LBB8_6:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv, .Lfunc_end8-_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z17CFolderOutStream25WriteEPKvjPj # -- Begin function _ZN8NArchive3N7z17CFolderOutStream25WriteEPKvjPj
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream25WriteEPKvjPj,@function
_ZN8NArchive3N7z17CFolderOutStream25WriteEPKvjPj: # @_ZN8NArchive3N7z17CFolderOutStream25WriteEPKvjPj
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
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	beqz	$a3, .LBB9_2
# %bb.1:
	st.w	$zero, $s0, 0
.LBB9_2:
	beqz	$s1, .LBB9_25
# %bb.3:                                # %.lr.ph
	ori	$s5, $zero, 1
	addi.w	$s6, $zero, -1
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 5
	b	.LBB9_6
	.p2align	4, , 16
.LBB9_4:                                # %_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv.exit.thread
                                        #   in Loop: Header=BB9_6 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z17CFolderOutStream217ProcessEmptyFilesEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_27
.LBB9_5:                                # %.backedge
                                        #   in Loop: Header=BB9_6 Depth=1
	beqz	$s1, .LBB9_25
.LBB9_6:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s3, 64
	bne	$a0, $s5, .LBB9_17
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a0, $s3, 24
	ld.d	$a1, $s3, 72
	bstrpick.d	$a2, $s1, 31, 0
	ld.d	$a3, $a0, 0
	sltu	$a4, $a1, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a1, $a1, $a4
	ld.d	$a4, $a3, 40
	or	$a1, $a1, $a2
	st.w	$a1, $sp, 12
	addi.w	$a2, $a1, 0
	addi.d	$a3, $sp, 12
	move	$a1, $s2
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB9_28
# %bb.8:                                #   in Loop: Header=BB9_6 Depth=1
	ld.w	$a0, $sp, 12
	beqz	$a0, .LBB9_25
# %bb.9:                                #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a1, $s3, 72
	bstrpick.d	$a2, $a0, 31, 0
	sub.d	$a3, $a1, $a2
	st.d	$a3, $s3, 72
	beqz	$s0, .LBB9_11
# %bb.10:                               #   in Loop: Header=BB9_6 Depth=1
	ld.w	$a3, $s0, 0
	add.d	$a3, $a3, $a0
	st.w	$a3, $s0, 0
.LBB9_11:                               #   in Loop: Header=BB9_6 Depth=1
	add.d	$s2, $s2, $a2
	sub.w	$s1, $s1, $a0
	bne	$a1, $a2, .LBB9_5
# %bb.12:                               #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a0, $s3, 32
	ld.w	$a2, $s3, 56
	ld.w	$a1, $s3, 60
	ld.d	$s7, $s3, 16
	ld.d	$a3, $a0, 176
	add.w	$a0, $a1, $a2
	slli.d	$a2, $a0, 3
	ld.d	$a0, $s7, 16
	ldx.d	$s4, $a3, $a2
	beqz	$a0, .LBB9_14
# %bb.13:                               #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	ld.w	$a1, $s3, 60
	st.d	$zero, $s7, 16
.LBB9_14:                               # %_ZN8NArchive3N7z17CFolderOutStream29CloseFileEv.exit.i
                                        #   in Loop: Header=BB9_6 Depth=1
	ld.bu	$a0, $s4, 33
	st.b	$zero, $s3, 64
	addi.d	$a1, $a1, 1
	st.w	$a1, $s3, 60
	bnez	$a0, .LBB9_4
# %bb.15:                               #   in Loop: Header=BB9_6 Depth=1
	ld.bu	$a0, $s4, 34
	bne	$a0, $s5, .LBB9_4
# %bb.16:                               # %_ZN8NArchive3N7z17CFolderOutStream221CloseFileAndSetResultEv.exit
                                        #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a0, $s3, 16
	ld.w	$a1, $s4, 12
	ld.w	$a0, $a0, 32
	xor	$a0, $a0, $a1
	beq	$a0, $s6, .LBB9_4
	b	.LBB9_27
	.p2align	4, , 16
.LBB9_17:                               #   in Loop: Header=BB9_6 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z17CFolderOutStream217ProcessEmptyFilesEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_27
# %bb.18:                               #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a1, $s3, 40
	ld.w	$a0, $s3, 60
	ld.w	$a2, $a1, 12
	beq	$a0, $a2, .LBB9_26
# %bb.19:                               #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a1, $a1, 16
	ldx.bu	$a0, $a1, $a0
	ld.d	$s7, $s3, 16
	bne	$a0, $s5, .LBB9_22
# %bb.20:                               #   in Loop: Header=BB9_6 Depth=1
	ld.d	$s4, $s3, 48
	beqz	$s4, .LBB9_22
# %bb.21:                               #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s4
	jirl	$ra, $a1, 0
	ld.d	$a0, $s7, 16
	bnez	$a0, .LBB9_23
	b	.LBB9_24
	.p2align	4, , 16
.LBB9_22:                               #   in Loop: Header=BB9_6 Depth=1
	move	$s4, $zero
	ld.d	$a0, $s7, 16
	beqz	$a0, .LBB9_24
.LBB9_23:                               #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB9_24:                               # %_ZN8NArchive3N7z17CFolderOutStream28OpenFileEv.exit
                                        #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a0, $s3, 32
	ld.w	$a1, $s3, 56
	ld.w	$a2, $s3, 60
	st.d	$s4, $s7, 16
	ld.d	$a0, $a0, 176
	add.w	$a1, $a2, $a1
	ld.d	$a2, $s3, 16
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	st.d	$zero, $a2, 24
	st.b	$s5, $a2, 36
	move	$a1, $s6
	ld.d	$a0, $a0, 0
	lu32i.d	$a1, 0
	st.w	$a1, $a2, 32
	st.b	$s5, $s3, 64
	st.d	$a0, $s3, 72
	b	.LBB9_5
.LBB9_25:
	move	$fp, $zero
.LBB9_26:                               # %.loopexit
	move	$a0, $fp
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
.LBB9_27:
	ori	$fp, $zero, 1
	b	.LBB9_26
.LBB9_28:
	move	$fp, $a0
	b	.LBB9_26
.Lfunc_end9:
	.size	_ZN8NArchive3N7z17CFolderOutStream25WriteEPKvjPj, .Lfunc_end9-_ZN8NArchive3N7z17CFolderOutStream25WriteEPKvjPj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z14CThreadDecoder7ExecuteEv # -- Begin function _ZN8NArchive3N7z14CThreadDecoder7ExecuteEv
	.p2align	5
	.type	_ZN8NArchive3N7z14CThreadDecoder7ExecuteEv,@function
_ZN8NArchive3N7z14CThreadDecoder7ExecuteEv: # @_ZN8NArchive3N7z14CThreadDecoder7ExecuteEv
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	ld.d	$a1, $a0, 240
	ld.d	$a2, $a0, 264
	ld.d	$a3, $a0, 272
	ld.d	$a4, $a0, 280
	ld.d	$a5, $a0, 256
	ld.d	$a7, $a0, 288
	ld.bu	$a6, $a0, 528
	ld.w	$t0, $a0, 532
	addi.d	$a0, $a0, 296
.Ltmp0:
	st.d	$t0, $sp, 16
	st.d	$a6, $sp, 8
	addi.d	$a6, $sp, 39
	st.d	$a6, $sp, 0
	move	$a6, $zero
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.1:
	st.w	$a0, $fp, 236
	beqz	$a0, .LBB10_8
.LBB10_2:                               # %._crit_edge
	ld.d	$s0, $fp, 248
	ld.d	$a0, $s0, 48
	beqz	$a0, .LBB10_4
.LBB10_3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $s0, 48
.LBB10_4:                               # %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit.i
	ld.d	$fp, $s0, 16
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB10_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $fp, 16
.LBB10_6:                               # %_ZN8NArchive3N7z17CFolderOutStream216ReleaseOutStreamEv.exit
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB10_7:
.Ltmp2:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 236
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 236
	bnez	$a0, .LBB10_2
.LBB10_8:
	ld.d	$s0, $fp, 248
	ld.d	$a0, $s0, 40
	ld.w	$a1, $s0, 60
	ld.w	$a0, $a0, 12
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	lu12i.w	$a1, -524284
	ori	$a1, $a1, 5
	masknez	$a0, $a1, $a0
	st.w	$a0, $fp, 236
	ld.d	$a0, $s0, 48
	bnez	$a0, .LBB10_3
	b	.LBB10_4
.Lfunc_end10:
	.size	_ZN8NArchive3N7z14CThreadDecoder7ExecuteEv, .Lfunc_end10-_ZN8NArchive3N7z14CThreadDecoder7ExecuteEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
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
	.uleb128 .Lfunc_end10-.Ltmp1            #   Call between .Ltmp1 and .Lfunc_end10
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
	.globl	_ZN8NArchive3N7z22CCryptoGetTextPassword21CryptoGetTextPasswordEPPw # -- Begin function _ZN8NArchive3N7z22CCryptoGetTextPassword21CryptoGetTextPasswordEPPw
	.p2align	5
	.type	_ZN8NArchive3N7z22CCryptoGetTextPassword21CryptoGetTextPasswordEPPw,@function
_ZN8NArchive3N7z22CCryptoGetTextPassword21CryptoGetTextPasswordEPPw: # @_ZN8NArchive3N7z22CCryptoGetTextPassword21CryptoGetTextPasswordEPPw
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$a0, $a0, 16
	move	$fp, $a1
	pcaddu18i	$ra, %call36(SysAllocString)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	lu12i.w	$a2, -524176
	ori	$a2, $a2, 14
	maskeqz	$a1, $a2, $a1
	st.d	$a0, $fp, 0
	move	$a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	_ZN8NArchive3N7z22CCryptoGetTextPassword21CryptoGetTextPasswordEPPw, .Lfunc_end11-_ZN8NArchive3N7z22CCryptoGetTextPassword21CryptoGetTextPasswordEPPw
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword # -- Begin function _ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword
	.p2align	5
	.type	_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword,@function
_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword: # @_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
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
	addi.d	$sp, $sp, -992
	.cfi_def_cfa_offset 3024
	ld.d	$t0, $a7, 24
	st.d	$t0, $sp, 280                   # 8-byte Folded Spill
	st.d	$a6, $sp, 184                   # 8-byte Folded Spill
	move	$s4, $a5
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	move	$s3, $a2
	move	$s5, $a1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a7, $sp, 272                   # 8-byte Folded Spill
	beqz	$a1, .LBB12_4
# %bb.1:
	ld.d	$a3, $s5, 488
	beqz	$a3, .LBB12_4
# %bb.2:
	ld.b	$a0, $a7, 41
	andi	$a0, $a0, 1
	bnez	$a0, .LBB12_4
# %bb.3:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $zero
	move	$fp, $a4
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL10WriteRangeEP9IInStreamP20ISequentialOutStreamyyP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
	move	$a4, $fp
	move	$fp, $a0
	bnez	$a0, .LBB12_533
.LBB12_4:                               # %.thread
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 1288
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 1304
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIiE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV13CRecordVectorIiE+16)
	st.d	$a1, $sp, 1280
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	vst	$vr0, $sp, 1256
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 1272
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIN8NArchive3N7z13CFolderRepackEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIN8NArchive3N7z13CFolderRepackEE+16)
	st.d	$a0, $sp, 1248
	st.d	$a4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	beqz	$s5, .LBB12_52
# %bb.5:
	ld.w	$a1, $s5, 172
.Ltmp3:
	addi.d	$a0, $sp, 1280
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.6:                                # %.preheader971
	ld.w	$a0, $s5, 172
	ori	$fp, $zero, 1
	addi.w	$s0, $zero, -1
	blt	$a0, $fp, .LBB12_10
# %bb.7:                                # %.lr.ph
	move	$s1, $zero
	move	$s2, $s0
	lu32i.d	$s2, 0
	.p2align	4, , 16
.LBB12_8:                               # =>This Inner Loop Header: Depth=1
.Ltmp6:
	addi.d	$a0, $sp, 1280
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.9:                                #   in Loop: Header=BB12_8 Depth=1
	ld.w	$a0, $sp, 1292
	ld.d	$a1, $sp, 1296
	slli.d	$a0, $a0, 2
	stx.w	$s2, $a1, $a0
	ld.w	$a0, $sp, 1292
	ld.w	$a1, $s5, 172
	addi.d	$a0, $a0, 1
	addi.w	$s1, $s1, 1
	st.w	$a0, $sp, 1292
	blt	$s1, $a1, .LBB12_8
.LBB12_10:                              # %.preheader970
	ld.w	$a0, $s3, 12
	blt	$a0, $fp, .LBB12_15
# %bb.11:                               # %.lr.ph1216
	ld.d	$a1, $s3, 16
	ld.d	$a2, $sp, 1296
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB12_13
	.p2align	4, , 16
.LBB12_12:                              #   in Loop: Header=BB12_13 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bge	$a4, $a0, .LBB12_15
.LBB12_13:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	ld.w	$a5, $a5, 0
	beq	$a5, $s0, .LBB12_12
# %bb.14:                               #   in Loop: Header=BB12_13 Depth=1
	slli.d	$a0, $a5, 2
	stx.w	$a3, $a2, $a0
	ld.w	$a0, $s3, 12
	b	.LBB12_12
.LBB12_15:                              # %.preheader969
	st.d	$s4, $sp, 192                   # 8-byte Folded Spill
	ld.w	$a0, $s5, 108
	ori	$s3, $zero, 1
	blt	$a0, $s3, .LBB12_99
# %bb.16:                               # %.lr.ph1228
	move	$s4, $zero
	move	$t0, $zero
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	lu12i.w	$a1, 28432
	ori	$s7, $a1, 1793
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	lu12i.w	$t1, 12336
	ori	$t2, $t1, 259
	st.d	$t2, $sp, 232                   # 8-byte Folded Spill
	b	.LBB12_19
	.p2align	4, , 16
.LBB12_17:                              #   in Loop: Header=BB12_19 Depth=1
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
.LBB12_18:                              # %._crit_edge.thread
                                        #   in Loop: Header=BB12_19 Depth=1
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB12_100
.LBB12_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_22 Depth 2
                                        #     Child Loop BB12_28 Depth 2
                                        #     Child Loop BB12_31 Depth 2
                                        #     Child Loop BB12_49 Depth 2
                                        #     Child Loop BB12_42 Depth 2
	ld.d	$a1, $s5, 144
	slli.d	$s6, $s4, 2
	ldx.w	$s8, $a1, $s6
	beqz	$s8, .LBB12_18
# %bb.20:                               # %.lr.ph1221
                                        #   in Loop: Header=BB12_19 Depth=1
	ld.d	$a1, $s5, 632
	ldx.w	$a1, $a1, $s6
	ld.d	$a2, $s5, 176
	ld.d	$a3, $sp, 1296
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 16
	move	$a5, $zero
	move	$s5, $zero
	move	$s2, $zero
	b	.LBB12_22
	.p2align	4, , 16
.LBB12_21:                              #   in Loop: Header=BB12_22 Depth=2
	addi.w	$a1, $a1, 1
	bgeu	$a5, $s8, .LBB12_26
.LBB12_22:                              #   Parent Loop BB12_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a6, $a1, 3
	ldx.d	$a6, $a2, $a6
	ld.bu	$a7, $a6, 32
	bne	$a7, $s3, .LBB12_21
# %bb.23:                               #   in Loop: Header=BB12_22 Depth=2
	slli.d	$a7, $a1, 2
	ldx.w	$a7, $a3, $a7
	addi.w	$a5, $a5, 1
	bltz	$a7, .LBB12_21
# %bb.24:                               #   in Loop: Header=BB12_22 Depth=2
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a4, $a7
	ld.bu	$a7, $a7, 60
	bnez	$a7, .LBB12_21
# %bb.25:                               #   in Loop: Header=BB12_22 Depth=2
	ld.d	$a6, $a6, 0
	addi.w	$s5, $s5, 1
	add.d	$s2, $a6, $s2
	b	.LBB12_21
	.p2align	4, , 16
.LBB12_26:                              # %._crit_edge
                                        #   in Loop: Header=BB12_19 Depth=1
	beqz	$s5, .LBB12_17
# %bb.27:                               #   in Loop: Header=BB12_19 Depth=1
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 112
	slli.d	$a5, $s4, 3
	ldx.d	$a1, $a0, $a5
	ld.wu	$a0, $a1, 12
	ld.d	$a1, $a1, 16
	addi.w	$a2, $a0, 0
	alsl.d	$a3, $a0, $a1, 3
	addi.d	$a3, $a3, -8
	addi.d	$fp, $a0, 1
	.p2align	4, , 16
.LBB12_28:                              #   Parent Loop BB12_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$fp, $fp, -1
	blt	$fp, $s3, .LBB12_30
# %bb.29:                               #   in Loop: Header=BB12_28 Depth=2
	ld.d	$a4, $a3, 0
	ld.d	$a4, $a4, 0
	addi.d	$a3, $a3, -8
	bne	$a4, $s7, .LBB12_28
.LBB12_30:                              # %_ZNK8NArchive3N7z7CFolder11IsEncryptedEv.exit
                                        #   in Loop: Header=BB12_19 Depth=1
	st.d	$t0, $sp, 288                   # 8-byte Folded Spill
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	blt	$a2, $s3, .LBB12_34
	.p2align	4, , 16
.LBB12_31:                              # %.lr.ph.i
                                        #   Parent Loop BB12_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 0
	beq	$a2, $t2, .LBB12_35
# %bb.32:                               # %.lr.ph.i
                                        #   in Loop: Header=BB12_31 Depth=2
	ori	$a3, $t1, 283
	beq	$a2, $a3, .LBB12_35
# %bb.33:                               #   in Loop: Header=BB12_31 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB12_31
.LBB12_34:                              #   in Loop: Header=BB12_19 Depth=1
	move	$s1, $zero
	b	.LBB12_36
.LBB12_35:                              #   in Loop: Header=BB12_19 Depth=1
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
.LBB12_36:                              # %_ZN8NArchive3N7zL18Is86FilteredFolderERKNS0_7CFolderE.exit
                                        #   in Loop: Header=BB12_19 Depth=1
.Ltmp9:
	addi.d	$a0, $sp, 1248
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.37:                               #   in Loop: Header=BB12_19 Depth=1
	slt	$a0, $zero, $fp
	slli.d	$a0, $a0, 33
	ld.w	$a1, $sp, 1260
	ld.d	$a2, $sp, 1264
	or	$a0, $a0, $s1
	or	$a0, $a0, $s4
	ori	$a3, $zero, 12
	mul.d	$a1, $a1, $a3
	add.d	$a3, $a2, $a1
	stx.d	$a0, $a2, $a1
	st.w	$s5, $a3, 8
	ld.w	$a0, $sp, 1260
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 1260
	bne	$s5, $s8, .LBB12_43
# %bb.38:                               #   in Loop: Header=BB12_19 Depth=1
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $s5, 112
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 76
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$t1, 12336
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	blt	$a1, $s3, .LBB12_44
# %bb.39:                               # %.lr.ph.i689
                                        #   in Loop: Header=BB12_19 Depth=1
	ld.d	$a0, $s5, 600
	ldx.w	$a2, $a0, $s6
	ld.d	$a0, $s5, 16
	ori	$a3, $zero, 6
	bgeu	$a1, $a3, .LBB12_46
# %bb.40:                               #   in Loop: Header=BB12_19 Depth=1
	move	$a3, $zero
	move	$s2, $zero
.LBB12_41:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB12_19 Depth=1
	sub.d	$a1, $a1, $a3
	add.w	$a2, $a2, $a3
	.p2align	4, , 16
.LBB12_42:                              # %scalar.ph
                                        #   Parent Loop BB12_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	add.d	$s2, $a3, $s2
	addi.d	$a1, $a1, -1
	addi.w	$a2, $a2, 1
	bnez	$a1, .LBB12_42
	b	.LBB12_45
.LBB12_43:                              #   in Loop: Header=BB12_19 Depth=1
	slt	$a0, $zero, $fp
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	sltu	$a1, $a2, $s2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s2, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	or	$a1, $a0, $a1
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$t1, 12336
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	b	.LBB12_45
.LBB12_44:                              #   in Loop: Header=BB12_19 Depth=1
	move	$s2, $zero
	.p2align	4, , 16
.LBB12_45:                              # %_ZNK8NArchive3N7z18CArchiveDatabaseEx21GetFolderFullPackSizeEi.exit
                                        #   in Loop: Header=BB12_19 Depth=1
	ld.w	$a0, $s5, 108
	add.d	$t0, $s2, $t0
	b	.LBB12_18
.LBB12_46:                              # %vector.scevcheck
                                        #   in Loop: Header=BB12_19 Depth=1
	addi.d	$a4, $a1, -1
	add.w	$a5, $a2, $a4
	move	$a3, $zero
	blt	$a5, $a2, .LBB12_51
# %bb.47:                               # %vector.scevcheck
                                        #   in Loop: Header=BB12_19 Depth=1
	srli.d	$a4, $a4, 32
	move	$s2, $a3
	bnez	$a4, .LBB12_41
# %bb.48:                               # %vector.ph
                                        #   in Loop: Header=BB12_19 Depth=1
	bstrpick.d	$a3, $a1, 30, 2
	slli.d	$a3, $a3, 2
	move	$a4, $a2
	move	$a5, $a3
	vld	$vr1, $sp, 160                  # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB12_49:                              # %vector.body
                                        #   Parent Loop BB12_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a6, $a4, $a0, 3
	slli.d	$a7, $a4, 3
	vldx	$vr2, $a0, $a7
	vld	$vr3, $a6, 16
	vadd.d	$vr0, $vr2, $vr0
	vadd.d	$vr1, $vr3, $vr1
	addi.d	$a5, $a5, -4
	addi.w	$a4, $a4, 4
	bnez	$a5, .LBB12_49
# %bb.50:                               # %middle.block
                                        #   in Loop: Header=BB12_19 Depth=1
	vadd.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vadd.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$s2, $vr0, 0
	bne	$a3, $a1, .LBB12_41
	b	.LBB12_45
.LBB12_51:                              #   in Loop: Header=BB12_19 Depth=1
	move	$s2, $a3
	b	.LBB12_41
.LBB12_52:
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	move	$a7, $zero
	move	$t0, $zero
	ld.w	$a0, $s3, 12
	ori	$a1, $zero, 1
	st.d	$zero, $sp, 1240
	bge	$a0, $a1, .LBB12_140
.LBB12_53:
	move	$a3, $zero
.LBB12_54:                              # %._crit_edge1250
	sltu	$a0, $a3, $a7
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a1
	bltu	$a3, $a7, .LBB12_56
# %bb.55:                               # %._crit_edge1250
	srli.d	$a1, $a0, 16
	bnez	$a1, .LBB12_57
.LBB12_56:
	lu12i.w	$a1, 16
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 1240
.LBB12_57:
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 40
.Ltmp12:
	move	$a1, $t0
	jirl	$ra, $a2, 0
.Ltmp13:
# %bb.58:
	move	$fp, $a0
	bnez	$a0, .LBB12_532
# %bb.59:
.Ltmp15:
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.60:
.Ltmp18:
	move	$s5, $a0
	pcaddu18i	$ra, %call36(_ZN14CLocalProgressC1Ev)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.61:
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 8
.Ltmp21:
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp22:
# %bb.62:                               # %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit
.Ltmp24:
	ori	$a2, $zero, 1
	move	$a0, $s5
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN14CLocalProgress4InitEP9IProgressb)
	jirl	$ra, $ra, 0
.Ltmp25:
# %bb.63:
.Ltmp27:
	addi.d	$a0, $sp, 704
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z14CThreadDecoderC2Ev)
	jirl	$ra, $ra, 0
.Ltmp28:
# %bb.64:
	ld.w	$a0, $sp, 1260
	beqz	$a0, .LBB12_67
# %bb.65:
.Ltmp30:
	addi.d	$a0, $sp, 704
	pcaddu18i	$ra, %call36(_ZN11CVirtThread6CreateEv)
	jirl	$ra, $ra, 0
.Ltmp31:
# %bb.66:
	move	$fp, $a0
	bnez	$a0, .LBB12_525
.LBB12_67:
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 680
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 696
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE+16)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 672
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	vst	$vr0, $sp, 1832
	ori	$s0, $zero, 4
	st.d	$s0, $sp, 1848
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$s1, $a0, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$s1, $sp, 1824
.Ltmp33:
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_)
	jirl	$ra, $ra, 0
.Ltmp34:
# %bb.68:
	addi.d	$fp, $sp, 1832
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	vst	$vr0, $fp, 0
	st.d	$s0, $sp, 1848
	st.d	$s1, $sp, 1824
.Ltmp35:
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.69:
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	vst	$vr0, $fp, 0
	ori	$s0, $zero, 4
	st.d	$s0, $sp, 1848
	st.d	$s1, $sp, 1824
.Ltmp37:
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_)
	jirl	$ra, $ra, 0
.Ltmp38:
# %bb.70:
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	vst	$vr0, $fp, 0
	st.d	$s0, $sp, 1848
	st.d	$s1, $sp, 1824
.Ltmp39:
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_)
	jirl	$ra, $ra, 0
.Ltmp40:
# %bb.71:
	st.d	$s4, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	ld.w	$a0, $fp, 12
	ori	$a1, $zero, 1
	st.d	$s5, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB12_73
# %bb.72:
	ld.w	$a0, $fp, 44
	beqz	$a0, .LBB12_180
.LBB12_73:
	move	$a1, $zero
	ld.w	$a0, $s3, 12
	ori	$s0, $zero, 1
	blt	$a0, $s0, .LBB12_181
.LBB12_74:                              # %.lr.ph1255
	move	$s2, $zero
	andi	$s4, $a1, 1
	lu12i.w	$s5, 8
	lu12i.w	$s6, 1168
	addi.w	$s7, $zero, -1
	lu32i.d	$s7, 0
	pcalau12i	$a1, %pc_hi20(_ZTVN8NWindows5NFile3NIO7CInFileE+16)
	addi.d	$s8, $a1, %pc_lo12(_ZTVN8NWindows5NFile3NIO7CInFileE+16)
	b	.LBB12_76
	.p2align	4, , 16
.LBB12_75:                              # %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit.thread
                                        #   in Loop: Header=BB12_76 Depth=1
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB12_181
.LBB12_76:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_94 Depth 2
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	slli.d	$a2, $s2, 3
	ldx.d	$s1, $a1, $a2
	ld.bu	$a1, $s1, 60
	bne	$a1, $s0, .LBB12_75
# %bb.77:                               #   in Loop: Header=BB12_76 Depth=1
	ld.bu	$a1, $s1, 63
	bnez	$a1, .LBB12_75
# %bb.78:                               #   in Loop: Header=BB12_76 Depth=1
	ld.b	$a1, $s1, 62
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_75
# %bb.79:                               # %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit
                                        #   in Loop: Header=BB12_76 Depth=1
	ld.d	$a1, $s1, 32
	beqz	$a1, .LBB12_75
# %bb.80:                               #   in Loop: Header=BB12_76 Depth=1
	beqz	$s4, .LBB12_82
# %bb.81:                               #   in Loop: Header=BB12_76 Depth=1
	ld.wu	$a0, $s1, 56
	and	$a2, $a0, $s5
	bnez	$a2, .LBB12_85
.LBB12_82:                              #   in Loop: Header=BB12_76 Depth=1
	move	$s3, $zero
.LBB12_83:                              # %_ZN8NArchive3N7zL9IsExeFileERKNS0_11CUpdateItemE.exit
                                        #   in Loop: Header=BB12_76 Depth=1
	ld.b	$a0, $fp, 68
	ld.d	$a1, $sp, 688
	bstrins.d	$s3, $a0, 1, 1
	slli.d	$a0, $s3, 3
	ldx.d	$s3, $a1, $a0
.Ltmp50:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp51:
# %bb.84:                               # %_ZN13CRecordVectorIjE3AddEj.exit
                                        #   in Loop: Header=BB12_76 Depth=1
	ld.w	$a0, $s3, 12
	ld.d	$a1, $s3, 16
	slli.d	$a0, $a0, 2
	stx.w	$s2, $a1, $a0
	ld.w	$a0, $s3, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 12
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	b	.LBB12_75
.LBB12_85:                              #   in Loop: Header=BB12_76 Depth=1
	srli.d	$a1, $a1, 11
	move	$s3, $zero
	beqz	$a1, .LBB12_83
# %bb.86:                               #   in Loop: Header=BB12_76 Depth=1
	and	$a0, $a0, $s6
	beqz	$a0, .LBB12_83
# %bb.87:                               #   in Loop: Header=BB12_76 Depth=1
	st.w	$s7, $sp, 1832
	st.d	$zero, $sp, 1848
.Ltmp42:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp43:
# %bb.88:                               # %.noexc
                                        #   in Loop: Header=BB12_76 Depth=1
	st.d	$a0, $sp, 1840
	ld.d	$a1, $s1, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 1852
	st.d	$s8, $sp, 1824
.Ltmp44:
	addi.d	$a0, $sp, 1824
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO7CInFile4OpenEPKwb)
	jirl	$ra, $ra, 0
.Ltmp45:
# %bb.89:                               #   in Loop: Header=BB12_76 Depth=1
	beqz	$a0, .LBB12_96
# %bb.90:                               #   in Loop: Header=BB12_76 Depth=1
.Ltmp47:
	addi.d	$a0, $sp, 1824
	addi.d	$a1, $sp, 1312
	ori	$a2, $zero, 512
	addi.d	$a3, $sp, 448
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO7CInFile4ReadEPvjRj)
	jirl	$ra, $ra, 0
.Ltmp48:
# %bb.91:                               #   in Loop: Header=BB12_76 Depth=1
	beqz	$a0, .LBB12_96
# %bb.92:                               # %.preheader.i697
                                        #   in Loop: Header=BB12_76 Depth=1
	ld.wu	$a0, $sp, 448
	beqz	$a0, .LBB12_96
# %bb.93:                               # %.lr.ph.preheader.i698
                                        #   in Loop: Header=BB12_76 Depth=1
	addi.d	$a1, $sp, 1312
.LBB12_94:                              # %.lr.ph.i700
                                        #   Parent Loop BB12_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 0
	beqz	$a2, .LBB12_98
# %bb.95:                               #   in Loop: Header=BB12_94 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB12_94
.LBB12_96:                              #   in Loop: Header=BB12_76 Depth=1
	move	$s3, $zero
.LBB12_97:                              # %.thread.sink.split.i
                                        #   in Loop: Header=BB12_76 Depth=1
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO9CFileBaseD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_83
.LBB12_98:                              #   in Loop: Header=BB12_76 Depth=1
	ori	$s3, $zero, 1
	b	.LBB12_97
.LBB12_99:
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
	move	$t0, $zero
.LBB12_100:                             # %._crit_edge1229
	ld.w	$s4, $sp, 1260
	ori	$a0, $zero, 2
	bge	$s4, $a0, .LBB12_102
# %bb.101:
	ld.d	$s3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	b	.LBB12_139
.LBB12_102:
	st.d	$t0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1264
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	addi.d	$s7, $a0, -12
	srli.d	$s2, $s4, 1
	b	.LBB12_105
	.p2align	4, , 16
.LBB12_103:                             #   in Loop: Header=BB12_105 Depth=1
	move	$a0, $a2
.LBB12_104:                             # %_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit.i
                                        #   in Loop: Header=BB12_105 Depth=1
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	add.d	$a1, $s7, $a0
	stx.w	$s8, $s7, $a0
	st.w	$s6, $a1, 4
	addi.d	$s2, $s2, -1
	st.w	$s5, $a1, 8
	beqz	$s2, .LBB12_137
.LBB12_105:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_107 Depth 2
                                        #       Child Loop BB12_114 Depth 3
                                        #         Child Loop BB12_120 Depth 4
                                        #       Child Loop BB12_129 Depth 3
	slli.d	$a0, $s2, 3
	alsl.d	$a0, $s2, $a0, 2
	add.d	$a1, $s7, $a0
	ldx.w	$s8, $s7, $a0
	ld.w	$s6, $a1, 4
	ld.w	$s5, $a1, 8
	slli.w	$s1, $s2, 1
	move	$a0, $s2
	blt	$s4, $s1, .LBB12_104
# %bb.106:                              # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB12_105 Depth=1
	slli.d	$s3, $s8, 3
	move	$fp, $s2
	.p2align	4, , 16
.LBB12_107:                             # %.lr.ph.i.i
                                        #   Parent Loop BB12_105 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_114 Depth 3
                                        #         Child Loop BB12_120 Depth 4
                                        #       Child Loop BB12_129 Depth 3
	bge	$s1, $s4, .LBB12_109
# %bb.108:                              #   in Loop: Header=BB12_107 Depth=2
	alsl.d	$a0, $s1, $s1, 1
	slli.d	$a0, $a0, 2
	add.d	$a1, $s7, $a0
	addi.d	$a0, $a1, 12
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL20CompareFolderRepacksEPKNS0_13CFolderRepackES3_Pv)
	jirl	$ra, $ra, 0
	slt	$a0, $zero, $a0
	or	$a0, $s1, $a0
	b	.LBB12_110
	.p2align	4, , 16
.LBB12_109:                             #   in Loop: Header=BB12_107 Depth=2
	move	$a0, $s1
.LBB12_110:                             #   in Loop: Header=BB12_107 Depth=2
	slli.d	$a1, $a0, 3
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a1, $s7, $a1
	ld.w	$a2, $a1, 4
	bne	$s6, $a2, .LBB12_125
# %bb.111:                              #   in Loop: Header=BB12_107 Depth=2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $a2, 112
	ld.w	$a2, $a1, 0
	ldx.d	$a3, $a4, $s3
	slli.d	$a5, $a2, 3
	ldx.d	$a4, $a4, $a5
	ld.w	$a5, $a3, 12
	ld.w	$a6, $a4, 12
	bne	$a5, $a6, .LBB12_131
# %bb.112:                              # %.preheader57.i.i1595
                                        #   in Loop: Header=BB12_107 Depth=2
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB12_126
# %bb.113:                              # %.lr.ph.i.i1611
                                        #   in Loop: Header=BB12_107 Depth=2
	ld.d	$a6, $a3, 16
	ld.d	$a7, $a4, 16
	move	$t0, $zero
	.p2align	4, , 16
.LBB12_114:                             #   Parent Loop BB12_105 Depth=1
                                        #     Parent Loop BB12_107 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_120 Depth 4
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $a6, $t1
	ldx.d	$t3, $a7, $t1
	ld.w	$t1, $t2, 32
	ld.w	$t4, $t3, 32
	bne	$t1, $t4, .LBB12_122
# %bb.115:                              #   in Loop: Header=BB12_114 Depth=3
	ld.w	$t1, $t2, 36
	ld.w	$t4, $t3, 36
	bne	$t1, $t4, .LBB12_122
# %bb.116:                              #   in Loop: Header=BB12_114 Depth=3
	ld.d	$t1, $t2, 0
	ld.d	$t4, $t3, 0
	bne	$t1, $t4, .LBB12_122
# %bb.117:                              #   in Loop: Header=BB12_114 Depth=3
	ld.d	$t1, $t2, 16
	ld.d	$t4, $t3, 16
	bne	$t1, $t4, .LBB12_122
# %bb.118:                              # %.preheader.i.i.i.i1628
                                        #   in Loop: Header=BB12_114 Depth=3
	beqz	$t1, .LBB12_123
# %bb.119:                              #   in Loop: Header=BB12_114 Depth=3
	ld.d	$t2, $t2, 24
	ld.d	$t3, $t3, 24
	.p2align	4, , 16
.LBB12_120:                             # %.lr.ph.i.i.i.i1630
                                        #   Parent Loop BB12_105 Depth=1
                                        #     Parent Loop BB12_107 Depth=2
                                        #       Parent Loop BB12_114 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t4, $t2, 0
	ld.bu	$t5, $t3, 0
	bne	$t4, $t5, .LBB12_124
# %bb.121:                              #   in Loop: Header=BB12_120 Depth=4
	addi.d	$t1, $t1, -1
	addi.d	$t3, $t3, 1
	addi.d	$t2, $t2, 1
	bnez	$t1, .LBB12_120
	b	.LBB12_123
	.p2align	4, , 16
.LBB12_122:                             #   in Loop: Header=BB12_114 Depth=3
	sltu	$t2, $t1, $t4
	sltu	$t1, $t4, $t1
	sub.d	$t1, $t1, $t2
	bnez	$t1, .LBB12_132
.LBB12_123:                             # %_ZN8NArchive3N7zL13CompareCodersERKNS0_10CCoderInfoES3_.exit.thread.i.i1618
                                        #   in Loop: Header=BB12_114 Depth=3
	addi.d	$t0, $t0, 1
	bne	$t0, $a5, .LBB12_114
	b	.LBB12_126
.LBB12_124:                             # %.loopexit.split.loop.exit5.i.i.i.i1633
                                        #   in Loop: Header=BB12_114 Depth=3
	sltu	$t1, $t4, $t5
	sltu	$t2, $t5, $t4
	sub.d	$t1, $t2, $t1
	beqz	$t1, .LBB12_123
	b	.LBB12_132
	.p2align	4, , 16
.LBB12_125:                             #   in Loop: Header=BB12_107 Depth=2
	slt	$a3, $s6, $a2
	slt	$a2, $a2, $s6
	b	.LBB12_134
.LBB12_126:                             # %._crit_edge.i.i1596
                                        #   in Loop: Header=BB12_107 Depth=2
	ld.w	$a5, $a3, 44
	ld.w	$a6, $a4, 44
	bne	$a5, $a6, .LBB12_131
# %bb.127:                              # %.preheader.i.i1598
                                        #   in Loop: Header=BB12_107 Depth=2
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB12_133
# %bb.128:                              # %.lr.ph64.i.i1599
                                        #   in Loop: Header=BB12_107 Depth=2
	ld.d	$a4, $a4, 48
	ld.d	$a6, $a3, 48
	addi.d	$a3, $a4, 4
	addi.d	$a4, $a6, 4
	.p2align	4, , 16
.LBB12_129:                             #   Parent Loop BB12_105 Depth=1
                                        #     Parent Loop BB12_107 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a4, -4
	ld.w	$a7, $a3, -4
	ld.w	$t0, $a4, 0
	ld.w	$t1, $a3, 0
	sltu	$t2, $a6, $a7
	sltu	$t3, $a7, $a6
	sub.d	$t2, $t3, $t2
	xor	$a6, $a6, $a7
	sltui	$a6, $a6, 1
	sltu	$a7, $t0, $t1
	sltu	$t0, $t1, $t0
	sub.d	$a7, $t0, $a7
	masknez	$t0, $t2, $a6
	maskeqz	$a6, $a7, $a6
	or	$t1, $a6, $t0
	bnez	$t1, .LBB12_132
# %bb.130:                              #   in Loop: Header=BB12_129 Depth=3
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB12_129
	b	.LBB12_133
	.p2align	4, , 16
.LBB12_131:                             #   in Loop: Header=BB12_107 Depth=2
	slt	$a3, $a5, $a6
	slt	$a4, $a6, $a5
	sub.d	$t1, $a4, $a3
.LBB12_132:                             # %_ZN8NArchive3N7zL14CompareFoldersERKNS0_7CFolderES3_.exit.i1591
                                        #   in Loop: Header=BB12_107 Depth=2
	bnez	$t1, .LBB12_135
.LBB12_133:                             # %_ZN8NArchive3N7zL14CompareFoldersERKNS0_7CFolderES3_.exit.thread.i1594
                                        #   in Loop: Header=BB12_107 Depth=2
	slt	$a3, $s8, $a2
	slt	$a2, $a2, $s8
.LBB12_134:                             # %_ZN8NArchive3N7zL20CompareFolderRepacksEPKNS0_13CFolderRepackES3_Pv.exit1635
                                        #   in Loop: Header=BB12_107 Depth=2
	sub.d	$t1, $a2, $a3
.LBB12_135:                             # %_ZN8NArchive3N7zL20CompareFolderRepacksEPKNS0_13CFolderRepackES3_Pv.exit1635
                                        #   in Loop: Header=BB12_107 Depth=2
	addi.w	$a2, $fp, 0
	blt	$s0, $t1, .LBB12_103
# %bb.136:                              #   in Loop: Header=BB12_107 Depth=2
	ld.d	$a3, $a1, 0
	slli.d	$a4, $a2, 3
	alsl.d	$a2, $a2, $a4, 2
	stx.d	$a3, $s7, $a2
	ld.w	$a1, $a1, 8
	add.d	$a2, $s7, $a2
	slli.w	$s1, $a0, 1
	st.w	$a1, $a2, 8
	move	$fp, $a0
	bge	$s4, $s1, .LBB12_107
	b	.LBB12_104
.LBB12_137:                             # %.preheader.i.preheader
	slli.d	$a0, $s4, 3
	alsl.d	$a0, $s4, $a0, 2
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $a3, 0
	add.d	$a2, $s7, $a0
	ldx.w	$s5, $s7, $a0
	ld.w	$fp, $a2, 4
	stx.d	$a1, $s7, $a0
	ld.w	$a0, $a3, 8
	ld.w	$s8, $a2, 8
	st.w	$a0, $a2, 8
	st.w	$s5, $a3, 0
	st.w	$fp, $a3, 4
	ori	$a0, $zero, 2
	st.w	$s8, $a3, 8
	bne	$s4, $a0, .LBB12_149
.LBB12_138:                             # %_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit28.thread.i
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.w	$s5, $a0, 0
	st.w	$fp, $a0, 4
	st.w	$s8, $a0, 8
	ld.d	$s3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
.LBB12_139:                             # %_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEE4SortEPFiPKS2_S5_PvES6_.exit
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a0, $s3, 12
	ori	$a1, $zero, 1
	st.d	$zero, $sp, 1240
	blt	$a0, $a1, .LBB12_53
.LBB12_140:                             # %.lr.ph1249
	ld.d	$a2, $s3, 16
	move	$a3, $zero
	ori	$a4, $zero, 2
	b	.LBB12_144
	.p2align	4, , 16
.LBB12_141:                             #   in Loop: Header=BB12_144 Depth=1
	add.d	$a5, $a5, $a3
.LBB12_142:                             # %.sink.split
                                        #   in Loop: Header=BB12_144 Depth=1
	st.d	$a5, $sp, 1240
	move	$a3, $a5
.LBB12_143:                             #   in Loop: Header=BB12_144 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	beqz	$a0, .LBB12_54
.LBB12_144:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 0
	ld.bu	$a6, $a5, 60
	bne	$a6, $a1, .LBB12_143
# %bb.145:                              #   in Loop: Header=BB12_144 Depth=1
	ld.d	$a5, $a5, 32
	add.d	$t0, $a5, $t0
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	bgeu	$a6, $a4, .LBB12_141
# %bb.146:                              #   in Loop: Header=BB12_144 Depth=1
	bltu	$a3, $a5, .LBB12_142
	b	.LBB12_143
	.p2align	4, , 16
.LBB12_147:                             #   in Loop: Header=BB12_149 Depth=1
	move	$a0, $s6
.LBB12_148:                             # %_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit28.i
                                        #   in Loop: Header=BB12_149 Depth=1
	ori	$a2, $zero, 12
	mul.d	$a0, $a0, $a2
	add.d	$a1, $s7, $a0
	stx.w	$s5, $s7, $a0
	st.w	$fp, $a1, 4
	st.w	$s8, $a1, 8
	mul.d	$a0, $s4, $a2
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $a3, 0
	add.d	$a2, $s7, $a0
	ldx.w	$s5, $s7, $a0
	ld.w	$fp, $a2, 4
	stx.d	$a1, $s7, $a0
	ld.w	$a0, $a3, 8
	ld.w	$s8, $a2, 8
	st.w	$a0, $a2, 8
	st.w	$s5, $a3, 0
	st.w	$fp, $a3, 4
	st.w	$s8, $a3, 8
	ori	$a0, $zero, 4
	blt	$s2, $a0, .LBB12_138
.LBB12_149:                             # %.lr.ph.i21.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_150 Depth 2
                                        #       Child Loop BB12_157 Depth 3
                                        #         Child Loop BB12_163 Depth 4
                                        #       Child Loop BB12_172 Depth 3
	move	$s2, $s4
	addi.d	$s4, $s4, -1
	ori	$s1, $zero, 2
	slli.d	$s3, $s5, 3
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB12_150:                             # %.lr.ph.i21.i
                                        #   Parent Loop BB12_149 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_157 Depth 3
                                        #         Child Loop BB12_163 Depth 4
                                        #       Child Loop BB12_172 Depth 3
	bge	$s1, $s4, .LBB12_152
# %bb.151:                              #   in Loop: Header=BB12_150 Depth=2
	alsl.d	$a0, $s1, $s1, 1
	slli.d	$a0, $a0, 2
	add.d	$a1, $s7, $a0
	addi.d	$a0, $a1, 12
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL20CompareFolderRepacksEPKNS0_13CFolderRepackES3_Pv)
	jirl	$ra, $ra, 0
	slt	$a0, $zero, $a0
	or	$a0, $s1, $a0
	b	.LBB12_153
	.p2align	4, , 16
.LBB12_152:                             #   in Loop: Header=BB12_150 Depth=2
	move	$a0, $s1
.LBB12_153:                             #   in Loop: Header=BB12_150 Depth=2
	slli.d	$a1, $a0, 3
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a1, $s7, $a1
	ld.w	$a2, $a1, 4
	bne	$fp, $a2, .LBB12_168
# %bb.154:                              #   in Loop: Header=BB12_150 Depth=2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $a2, 112
	ld.w	$a2, $a1, 0
	ldx.d	$a3, $a4, $s3
	slli.d	$a5, $a2, 3
	ldx.d	$a4, $a4, $a5
	ld.w	$a5, $a3, 12
	ld.w	$a6, $a4, 12
	bne	$a5, $a6, .LBB12_174
# %bb.155:                              # %.preheader57.i.i
                                        #   in Loop: Header=BB12_150 Depth=2
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB12_169
# %bb.156:                              # %.lr.ph.i.i872
                                        #   in Loop: Header=BB12_150 Depth=2
	ld.d	$a6, $a3, 16
	ld.d	$a7, $a4, 16
	move	$t0, $zero
	.p2align	4, , 16
.LBB12_157:                             #   Parent Loop BB12_149 Depth=1
                                        #     Parent Loop BB12_150 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_163 Depth 4
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $a6, $t1
	ldx.d	$t3, $a7, $t1
	ld.w	$t1, $t2, 32
	ld.w	$t4, $t3, 32
	bne	$t1, $t4, .LBB12_165
# %bb.158:                              #   in Loop: Header=BB12_157 Depth=3
	ld.w	$t1, $t2, 36
	ld.w	$t4, $t3, 36
	bne	$t1, $t4, .LBB12_165
# %bb.159:                              #   in Loop: Header=BB12_157 Depth=3
	ld.d	$t1, $t2, 0
	ld.d	$t4, $t3, 0
	bne	$t1, $t4, .LBB12_165
# %bb.160:                              #   in Loop: Header=BB12_157 Depth=3
	ld.d	$t1, $t2, 16
	ld.d	$t4, $t3, 16
	bne	$t1, $t4, .LBB12_165
# %bb.161:                              # %.preheader.i.i.i.i
                                        #   in Loop: Header=BB12_157 Depth=3
	beqz	$t1, .LBB12_166
# %bb.162:                              #   in Loop: Header=BB12_157 Depth=3
	ld.d	$t2, $t2, 24
	ld.d	$t3, $t3, 24
	.p2align	4, , 16
.LBB12_163:                             # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB12_149 Depth=1
                                        #     Parent Loop BB12_150 Depth=2
                                        #       Parent Loop BB12_157 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t4, $t2, 0
	ld.bu	$t5, $t3, 0
	bne	$t4, $t5, .LBB12_167
# %bb.164:                              #   in Loop: Header=BB12_163 Depth=4
	addi.d	$t1, $t1, -1
	addi.d	$t3, $t3, 1
	addi.d	$t2, $t2, 1
	bnez	$t1, .LBB12_163
	b	.LBB12_166
	.p2align	4, , 16
.LBB12_165:                             #   in Loop: Header=BB12_157 Depth=3
	sltu	$t2, $t1, $t4
	sltu	$t1, $t4, $t1
	sub.d	$t1, $t1, $t2
	bnez	$t1, .LBB12_175
.LBB12_166:                             # %_ZN8NArchive3N7zL13CompareCodersERKNS0_10CCoderInfoES3_.exit.thread.i.i
                                        #   in Loop: Header=BB12_157 Depth=3
	addi.d	$t0, $t0, 1
	bne	$t0, $a5, .LBB12_157
	b	.LBB12_169
.LBB12_167:                             # %.loopexit.split.loop.exit5.i.i.i.i
                                        #   in Loop: Header=BB12_157 Depth=3
	sltu	$t1, $t4, $t5
	sltu	$t2, $t5, $t4
	sub.d	$t1, $t2, $t1
	beqz	$t1, .LBB12_166
	b	.LBB12_175
	.p2align	4, , 16
.LBB12_168:                             #   in Loop: Header=BB12_150 Depth=2
	slt	$a3, $fp, $a2
	slt	$a2, $a2, $fp
	b	.LBB12_177
.LBB12_169:                             # %._crit_edge.i.i
                                        #   in Loop: Header=BB12_150 Depth=2
	ld.w	$a5, $a3, 44
	ld.w	$a6, $a4, 44
	bne	$a5, $a6, .LBB12_174
# %bb.170:                              # %.preheader.i.i
                                        #   in Loop: Header=BB12_150 Depth=2
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB12_176
# %bb.171:                              # %.lr.ph64.i.i
                                        #   in Loop: Header=BB12_150 Depth=2
	ld.d	$a4, $a4, 48
	ld.d	$a6, $a3, 48
	addi.d	$a3, $a4, 4
	addi.d	$a4, $a6, 4
	.p2align	4, , 16
.LBB12_172:                             #   Parent Loop BB12_149 Depth=1
                                        #     Parent Loop BB12_150 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a4, -4
	ld.w	$a7, $a3, -4
	ld.w	$t0, $a4, 0
	ld.w	$t1, $a3, 0
	sltu	$t2, $a6, $a7
	sltu	$t3, $a7, $a6
	sub.d	$t2, $t3, $t2
	xor	$a6, $a6, $a7
	sltui	$a6, $a6, 1
	sltu	$a7, $t0, $t1
	sltu	$t0, $t1, $t0
	sub.d	$a7, $t0, $a7
	masknez	$t0, $t2, $a6
	maskeqz	$a6, $a7, $a6
	or	$t1, $a6, $t0
	bnez	$t1, .LBB12_175
# %bb.173:                              #   in Loop: Header=BB12_172 Depth=3
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB12_172
	b	.LBB12_176
	.p2align	4, , 16
.LBB12_174:                             #   in Loop: Header=BB12_150 Depth=2
	slt	$a3, $a5, $a6
	slt	$a4, $a6, $a5
	sub.d	$t1, $a4, $a3
.LBB12_175:                             # %_ZN8NArchive3N7zL14CompareFoldersERKNS0_7CFolderES3_.exit.i
                                        #   in Loop: Header=BB12_150 Depth=2
	bnez	$t1, .LBB12_178
.LBB12_176:                             # %_ZN8NArchive3N7zL14CompareFoldersERKNS0_7CFolderES3_.exit.thread.i
                                        #   in Loop: Header=BB12_150 Depth=2
	slt	$a3, $s5, $a2
	slt	$a2, $a2, $s5
.LBB12_177:                             # %_ZN8NArchive3N7zL20CompareFolderRepacksEPKNS0_13CFolderRepackES3_Pv.exit
                                        #   in Loop: Header=BB12_150 Depth=2
	sub.d	$t1, $a2, $a3
.LBB12_178:                             # %_ZN8NArchive3N7zL20CompareFolderRepacksEPKNS0_13CFolderRepackES3_Pv.exit
                                        #   in Loop: Header=BB12_150 Depth=2
	blt	$s0, $t1, .LBB12_147
# %bb.179:                              #   in Loop: Header=BB12_150 Depth=2
	ld.d	$a2, $a1, 0
	slli.d	$a3, $s6, 3
	alsl.d	$a3, $s6, $a3, 2
	stx.d	$a2, $s7, $a3
	ld.w	$a1, $a1, 8
	add.d	$a2, $s7, $a3
	slli.w	$s1, $a0, 1
	st.w	$a1, $a2, 8
	move	$s6, $a0
	blt	$s1, $s2, .LBB12_150
	b	.LBB12_148
.LBB12_180:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.b	$a1, $a0, 16
	ld.w	$a0, $s3, 12
	ori	$s0, $zero, 1
	bge	$a0, $s0, .LBB12_74
.LBB12_181:                             # %._crit_edge1256
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_190
# %bb.182:
.Ltmp53:
	ori	$a0, $zero, 32
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp54:
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
# %bb.183:
	move	$s8, $a0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE+16)
	st.d	$a0, $s8, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s8, 16
.Ltmp55:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp56:
# %bb.184:                              # %.noexc707
	st.d	$a0, $s8, 16
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 992
	ori	$a1, $zero, 4
	st.w	$a1, $s8, 28
	ori	$s0, $zero, 1
	st.w	$s0, $s8, 8
	beqz	$a0, .LBB12_186
# %bb.185:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp58:
	jirl	$ra, $a1, 0
.Ltmp59:
.LBB12_186:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	st.d	$s8, $sp, 992
	ld.bu	$a0, $fp, 68
	addi.d	$s3, $s8, 16
	bne	$a0, $s0, .LBB12_191
# %bb.187:
	addi.d	$s0, $fp, 72
	beq	$s0, $s3, .LBB12_195
# %bb.188:
	ld.d	$s7, $s8, 16
	st.w	$zero, $s8, 24
	st.w	$zero, $s7, 0
	ld.w	$a0, $fp, 80
	ld.w	$s2, $s8, 28
	addi.w	$s1, $a0, 1
	bne	$s1, $s2, .LBB12_197
# %bb.189:
	move	$s3, $s7
	b	.LBB12_205
.LBB12_190:
	move	$s8, $zero
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	b	.LBB12_208
.LBB12_191:
	ori	$a0, $zero, 3024
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB12_196
# %bb.192:
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 40
	st.d	$zero, $sp, 1824
.Ltmp60:
	addi.d	$a1, $sp, 1824
	jirl	$ra, $a2, 0
.Ltmp61:
# %bb.193:
	ld.d	$a1, $sp, 1824
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_200
# %bb.194:                              # %.critedge
.Ltmp63:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp64:
	b	.LBB12_523
.LBB12_195:
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	b	.LBB12_208
.LBB12_196:
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	b	.LBB12_523
.LBB12_197:
	slti	$a0, $a0, -1
	slli.d	$a1, $s1, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp75:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp76:
# %bb.198:                              # %.noexc710
	move	$s3, $a0
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB12_203
# %bb.199:                              # %._crit_edge.thread.i.i
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 24
	b	.LBB12_204
.LBB12_200:
.Ltmp66:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp67:
# %bb.201:
	ld.d	$a0, $sp, 1824
.Ltmp72:
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp73:
# %bb.202:                              # %_ZN10CMyComBSTRD2Ev.exit
	move	$a1, $fp
	b	.LBB12_208
.LBB12_203:
	move	$a0, $zero
.LBB12_204:
	st.d	$s3, $s8, 16
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	st.w	$s1, $s8, 28
.LBB12_205:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	.p2align	4, , 16
.LBB12_206:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s3, 4
	st.w	$a1, $s3, 0
	move	$s3, $a2
	bnez	$a1, .LBB12_206
# %bb.207:                              # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.w	$a0, $fp, 80
	st.w	$a0, $s8, 24
	move	$a1, $a3
.LBB12_208:                             # %_ZN11CStringBaseIwEaSERKS0_.exit
.Ltmp78:
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive6CreateEP20ISequentialOutStreamb)
	jirl	$ra, $ra, 0
.Ltmp79:
# %bb.209:
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	bnez	$a0, .LBB12_523
# %bb.210:
.Ltmp81:
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11COutArchive23SkipPrefixArchiveHeaderEv)
	jirl	$ra, $ra, 0
.Ltmp82:
# %bb.211:
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	bnez	$a0, .LBB12_523
# %bb.212:
	move	$s2, $zero
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	st.d	$zero, $s5, 40
	addi.d	$a1, $sp, 656
	sltui	$a0, $s8, 1
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a2, $s8, 16
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	addi.d	$a2, $s5, 56
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a2, $s6, 96
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a2, $s6, 128
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	sltu	$a2, $s1, $a2
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a0, $s5, 64
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	b	.LBB12_214
	.p2align	4, , 16
.LBB12_213:                             #   in Loop: Header=BB12_214 Depth=1
	move	$s4, $s5
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s2, $s2, 1
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ori	$a0, $zero, 4
	beq	$s2, $a0, .LBB12_496
.LBB12_214:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_227 Depth 2
                                        #     Child Loop BB12_234 Depth 2
                                        #       Child Loop BB12_258 Depth 3
                                        #       Child Loop BB12_335 Depth 3
                                        #       Child Loop BB12_338 Depth 3
                                        #       Child Loop BB12_344 Depth 3
                                        #         Child Loop BB12_345 Depth 4
                                        #       Child Loop BB12_268 Depth 3
                                        #       Child Loop BB12_240 Depth 3
                                        #       Child Loop BB12_249 Depth 3
                                        #       Child Loop BB12_306 Depth 3
                                        #         Child Loop BB12_321 Depth 4
                                        #     Child Loop BB12_359 Depth 2
                                        #     Child Loop BB12_367 Depth 2
                                        #       Child Loop BB12_369 Depth 3
                                        #     Child Loop BB12_478 Depth 2
                                        #       Child Loop BB12_479 Depth 3
                                        #     Child Loop BB12_380 Depth 2
                                        #     Child Loop BB12_383 Depth 2
                                        #       Child Loop BB12_386 Depth 3
                                        #         Child Loop BB12_390 Depth 4
                                        #         Child Loop BB12_396 Depth 4
                                        #         Child Loop BB12_417 Depth 4
                                        #       Child Loop BB12_434 Depth 3
                                        #       Child Loop BB12_437 Depth 3
                                        #       Child Loop BB12_443 Depth 3
                                        #         Child Loop BB12_444 Depth 4
                                        #       Child Loop BB12_454 Depth 3
	ld.d	$a0, $sp, 688
	slli.d	$a1, $s2, 3
	ldx.d	$a0, $a0, $a1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 592
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 608
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	addi.d	$s7, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	st.d	$s7, $sp, 584
	addi.d	$a0, $sp, 624
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 640
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE+16)
	st.d	$a0, $sp, 616
	ori	$s5, $zero, 1
	st.w	$s1, $sp, 648
	st.b	$zero, $sp, 652
	addi.d	$a0, $sp, 656
	vst	$vr0, $a0, 0
.Ltmp84:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp85:
# %bb.215:                              #   in Loop: Header=BB12_214 Depth=1
	ld.d	$a1, $fp, 0
	st.d	$a0, $sp, 656
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 668
.Ltmp87:
	addi.d	$a0, $sp, 584
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp88:
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
# %bb.216:                              #   in Loop: Header=BB12_214 Depth=1
	ori	$a0, $zero, 2
	bgeu	$s2, $a0, .LBB12_218
# %bb.217:                              #   in Loop: Header=BB12_214 Depth=1
	ld.d	$a0, $sp, 656
	st.b	$zero, $sp, 652
	st.w	$zero, $sp, 664
	st.w	$zero, $a0, 0
	b	.LBB12_230
	.p2align	4, , 16
.LBB12_218:                             #   in Loop: Header=BB12_214 Depth=1
	ld.bu	$a0, $sp, 652
	bnez	$a0, .LBB12_230
# %bb.219:                              #   in Loop: Header=BB12_214 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bnez	$a0, .LBB12_229
# %bb.220:                              #   in Loop: Header=BB12_214 Depth=1
	ld.d	$s3, $sp, 656
	st.w	$zero, $sp, 664
	st.w	$zero, $s3, 0
	ld.w	$a0, $s1, 24
	ld.w	$s0, $sp, 668
	addi.w	$fp, $a0, 1
	beq	$fp, $s0, .LBB12_226
# %bb.221:                              #   in Loop: Header=BB12_214 Depth=1
	slti	$a0, $a0, -1
	slli.d	$a1, $fp, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp89:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp90:
# %bb.222:                              # %.noexc721
                                        #   in Loop: Header=BB12_214 Depth=1
	move	$s8, $a0
	blt	$s0, $s5, .LBB12_224
# %bb.223:                              # %._crit_edge.thread.i.i719
                                        #   in Loop: Header=BB12_214 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 664
	b	.LBB12_225
.LBB12_224:                             #   in Loop: Header=BB12_214 Depth=1
	move	$a0, $zero
.LBB12_225:                             #   in Loop: Header=BB12_214 Depth=1
	st.d	$s8, $sp, 656
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s8, $a0
	st.w	$fp, $sp, 668
	move	$s3, $s8
.LBB12_226:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i714
                                        #   in Loop: Header=BB12_214 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	.p2align	4, , 16
.LBB12_227:                             #   Parent Loop BB12_214 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s3, 4
	st.w	$a1, $s3, 0
	move	$s3, $a2
	bnez	$a1, .LBB12_227
# %bb.228:                              # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i718
                                        #   in Loop: Header=BB12_214 Depth=1
	ld.w	$a0, $s1, 24
	st.w	$a0, $sp, 664
.LBB12_229:                             # %_ZN11CStringBaseIwEaSERKS0_.exit722
                                        #   in Loop: Header=BB12_214 Depth=1
	st.b	$s5, $sp, 652
.LBB12_230:                             #   in Loop: Header=BB12_214 Depth=1
.Ltmp92:
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 1824
	addi.d	$a1, $sp, 584
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CEncoderC1ERKNS0_22CCompressionMethodModeE)
	jirl	$ra, $ra, 0
.Ltmp93:
# %bb.231:                              # %.preheader960
                                        #   in Loop: Header=BB12_214 Depth=1
	ld.w	$a0, $sp, 1260
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.w	$fp, $a1, 0
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIyE)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CRecordVectorIyE)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	bge	$fp, $a0, .LBB12_354
# %bb.232:                              # %.lr.ph1277.preheader
                                        #   in Loop: Header=BB12_214 Depth=1
	ori	$s1, $zero, 1
	b	.LBB12_234
	.p2align	4, , 16
.LBB12_233:                             # %._crit_edge1274
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.w	$a0, $sp, 1260
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	addi.d	$fp, $fp, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	bge	$fp, $a0, .LBB12_355
.LBB12_234:                             # %.lr.ph1277
                                        #   Parent Loop BB12_214 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_258 Depth 3
                                        #       Child Loop BB12_335 Depth 3
                                        #       Child Loop BB12_338 Depth 3
                                        #       Child Loop BB12_344 Depth 3
                                        #         Child Loop BB12_345 Depth 4
                                        #       Child Loop BB12_268 Depth 3
                                        #       Child Loop BB12_240 Depth 3
                                        #       Child Loop BB12_249 Depth 3
                                        #       Child Loop BB12_306 Depth 3
                                        #         Child Loop BB12_321 Depth 4
	ld.d	$a0, $sp, 1264
	slli.d	$a1, $fp, 3
	alsl.d	$a1, $fp, $a1, 2
	add.d	$s7, $a0, $a1
	ld.wu	$a0, $s7, 4
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB12_492
# %bb.235:                              #   in Loop: Header=BB12_234 Depth=2
	ld.w	$s2, $s7, 0
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a3, 144
	ld.w	$a1, $s7, 8
	slli.d	$s8, $s2, 2
	ldx.w	$a0, $a0, $s8
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	bne	$a1, $a0, .LBB12_241
# %bb.236:                              #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a0, $a3, 112
	slli.d	$fp, $s2, 3
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $a3, 600
	ld.w	$a2, $a0, 76
	ldx.w	$a0, $a1, $s8
	blt	$a2, $s1, .LBB12_244
# %bb.237:                              # %.lr.ph.i724
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $a3, 16
	ori	$a3, $zero, 6
	bgeu	$a2, $a3, .LBB12_265
# %bb.238:                              #   in Loop: Header=BB12_234 Depth=2
	move	$a3, $zero
	move	$s4, $zero
.LBB12_239:                             # %scalar.ph2262.preheader
                                        #   in Loop: Header=BB12_234 Depth=2
	sub.d	$a2, $a2, $a3
	add.w	$a3, $a0, $a3
	.p2align	4, , 16
.LBB12_240:                             # %scalar.ph2262
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	add.d	$s4, $a4, $s4
	addi.d	$a2, $a2, -1
	addi.w	$a3, $a3, 1
	bnez	$a2, .LBB12_240
	b	.LBB12_245
	.p2align	4, , 16
.LBB12_241:                             #   in Loop: Header=BB12_234 Depth=2
	st.d	$zero, $sp, 1320
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE+16)
	st.d	$a0, $sp, 1312
	st.w	$zero, $sp, 1336
	st.d	$zero, $sp, 1448
	st.d	$a0, $sp, 1440
	st.d	$zero, $sp, 1464
.Ltmp95:
	addi.d	$a0, $sp, 1312
	pcaddu18i	$ra, %call36(_ZN13CStreamBinder12CreateEventsEv)
	jirl	$ra, $ra, 0
.Ltmp96:
# %bb.242:                              #   in Loop: Header=BB12_234 Depth=2
	move	$s3, $a0
	beqz	$a0, .LBB12_255
# %bb.243:                              #   in Loop: Header=BB12_234 Depth=2
	move	$fp, $zero
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	b	.LBB12_296
.LBB12_244:                             #   in Loop: Header=BB12_234 Depth=2
	move	$s4, $zero
.LBB12_245:                             # %.loopexit951
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 568
	ld.d	$a2, $a2, 504
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 120
	add.d	$a2, $a0, $a2
.Ltmp154:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL10WriteRangeEP9IInStreamP20ISequentialOutStreamyyP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp155:
# %bb.246:                              #   in Loop: Header=BB12_234 Depth=2
	move	$s3, $a0
	bnez	$a0, .LBB12_494
# %bb.247:                              #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 40
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 112
	add.d	$a0, $a0, $s4
	st.d	$a0, $a2, 40
	ldx.d	$s4, $a1, $fp
	ld.w	$a0, $s4, 76
	blt	$a0, $s1, .LBB12_251
# %bb.248:                              # %.lr.ph1268.preheader
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 600
	ldx.w	$fp, $a0, $s8
	move	$s0, $zero
	.p2align	4, , 16
.LBB12_249:                             # %.lr.ph1268
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	slli.d	$a1, $fp, 3
	ldx.d	$s1, $a0, $a1
.Ltmp157:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp158:
# %bb.250:                              #   in Loop: Header=BB12_249 Depth=3
	ld.w	$a0, $s6, 12
	ld.d	$a1, $s6, 16
	slli.d	$a2, $a0, 3
	stx.d	$s1, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 12
	ld.w	$a0, $s4, 76
	addi.d	$s0, $s0, 1
	addi.w	$fp, $fp, 1
	blt	$s0, $a0, .LBB12_249
.LBB12_251:                             # %._crit_edge1269
                                        #   in Loop: Header=BB12_234 Depth=2
.Ltmp160:
	ori	$a0, $zero, 136
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp161:
# %bb.252:                              # %.noexc731
                                        #   in Loop: Header=BB12_234 Depth=2
.Ltmp162:
	move	$s5, $a0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z7CFolderC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp163:
# %bb.253:                              #   in Loop: Header=BB12_234 Depth=2
.Ltmp165:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp166:
# %bb.254:                              #   in Loop: Header=BB12_234 Depth=2
	sltui	$a0, $s3, 1
	masknez	$a1, $s3, $a0
	ld.w	$a2, $s6, 108
	ld.d	$a3, $s6, 112
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	slli.d	$a0, $a2, 3
	stx.d	$s5, $a3, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s6, 108
	ori	$s1, $zero, 1
	b	.LBB12_302
.LBB12_255:                             #   in Loop: Header=BB12_234 Depth=2
	st.d	$zero, $sp, 376
	st.d	$zero, $sp, 312
.Ltmp98:
	addi.d	$a0, $sp, 1312
	addi.d	$a1, $sp, 312
	addi.d	$a2, $sp, 376
	pcaddu18i	$ra, %call36(_ZN13CStreamBinder13CreateStreamsEPP19ISequentialInStreamPP20ISequentialOutStream)
	jirl	$ra, $ra, 0
.Ltmp99:
# %bb.256:                              #   in Loop: Header=BB12_234 Depth=2
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 416
	vst	$vr0, $a0, 0
	st.d	$s1, $sp, 432
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIbE+16)
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 144
	ld.d	$a2, $a2, 632
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIbE+16)
	st.d	$a0, $sp, 408
	ldx.w	$s0, $a1, $s8
	ldx.w	$fp, $a2, $s8
	beqz	$s0, .LBB12_270
# %bb.257:                              # %.lr.ph1260.preheader
                                        #   in Loop: Header=BB12_234 Depth=2
	ori	$s5, $zero, 1
	move	$s1, $zero
	.p2align	4, , 16
.LBB12_258:                             # %.lr.ph1260
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 176
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	ld.bu	$a0, $a0, 32
	bne	$a0, $s5, .LBB12_261
# %bb.259:                              #   in Loop: Header=BB12_258 Depth=3
	ld.d	$a0, $sp, 1296
	slli.d	$a1, $fp, 2
	ldx.w	$a0, $a0, $a1
	addi.w	$s1, $s1, 1
	bltz	$a0, .LBB12_261
# %bb.260:                              #   in Loop: Header=BB12_258 Depth=3
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.b	$a0, $a0, 60
	xori	$s4, $a0, 1
	b	.LBB12_262
	.p2align	4, , 16
.LBB12_261:                             #   in Loop: Header=BB12_258 Depth=3
	move	$s4, $zero
.LBB12_262:                             #   in Loop: Header=BB12_258 Depth=3
.Ltmp101:
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp102:
# %bb.263:                              #   in Loop: Header=BB12_258 Depth=3
	ld.d	$a0, $sp, 424
	ld.w	$a1, $sp, 420
	andi	$a2, $s4, 1
	stx.b	$a2, $a0, $a1
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 420
	addi.w	$fp, $fp, 1
	bltu	$s1, $s0, .LBB12_258
# %bb.264:                              # %._crit_edge1261.loopexit
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 632
	ldx.w	$fp, $a0, $s8
	ori	$s1, $zero, 1
	b	.LBB12_271
.LBB12_265:                             # %vector.scevcheck2261
                                        #   in Loop: Header=BB12_234 Depth=2
	addi.d	$a4, $a2, -1
	add.w	$a5, $a0, $a4
	move	$a3, $zero
	blt	$a5, $a0, .LBB12_328
# %bb.266:                              # %vector.scevcheck2261
                                        #   in Loop: Header=BB12_234 Depth=2
	srli.d	$a4, $a4, 32
	move	$s4, $a3
	bnez	$a4, .LBB12_239
# %bb.267:                              # %vector.ph2264
                                        #   in Loop: Header=BB12_234 Depth=2
	bstrpick.d	$a3, $a2, 30, 2
	slli.d	$a3, $a3, 2
	move	$a4, $a0
	move	$a5, $a3
	vld	$vr1, $sp, 208                  # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB12_268:                             # %vector.body2267
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	alsl.d	$a6, $a4, $a1, 3
	slli.d	$a7, $a4, 3
	vldx	$vr2, $a1, $a7
	vld	$vr3, $a6, 16
	vadd.d	$vr0, $vr2, $vr0
	vadd.d	$vr1, $vr3, $vr1
	addi.d	$a5, $a5, -4
	addi.w	$a4, $a4, 4
	bnez	$a5, .LBB12_268
# %bb.269:                              # %middle.block2274
                                        #   in Loop: Header=BB12_234 Depth=2
	vadd.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vadd.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$s4, $vr0, 0
	bne	$a3, $a2, .LBB12_239
	b	.LBB12_245
.LBB12_270:                             #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
.LBB12_271:                             # %._crit_edge1261
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$s4, $sp, 952
	ld.d	$s5, $sp, 376
	st.d	$a1, $s4, 32
	st.w	$fp, $s4, 56
	addi.d	$a0, $sp, 408
	st.d	$a0, $s4, 40
	beqz	$s5, .LBB12_273
# %bb.272:                              #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 8
.Ltmp104:
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp105:
.LBB12_273:                             # %.noexc737
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a0, $s4, 48
	beqz	$a0, .LBB12_275
# %bb.274:                              #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp106:
	jirl	$ra, $a1, 0
.Ltmp107:
.LBB12_275:                             # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit.i
                                        #   in Loop: Header=BB12_234 Depth=2
	st.d	$s5, $s4, 48
	st.w	$zero, $s4, 60
	st.b	$zero, $s4, 64
.Ltmp108:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z17CFolderOutStream217ProcessEmptyFilesEv)
	jirl	$ra, $ra, 0
.Ltmp109:
# %bb.276:                              # %_ZN8NArchive3N7z17CFolderOutStream24InitEPKNS0_18CArchiveDatabaseExEjPK13CRecordVectorIbEP20ISequentialOutStream.exit
                                        #   in Loop: Header=BB12_234 Depth=2
	beqz	$a0, .LBB12_278
# %bb.277:                              #   in Loop: Header=BB12_234 Depth=2
	move	$fp, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312
	bnez	$a0, .LBB12_293
	b	.LBB12_294
.LBB12_278:                             #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a0, $sp, 376
	beqz	$a0, .LBB12_281
# %bb.279:                              #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp111:
	jirl	$ra, $a1, 0
.Ltmp112:
# %bb.280:                              # %.noexc742
                                        #   in Loop: Header=BB12_234 Depth=2
	st.d	$zero, $sp, 376
.LBB12_281:                             # %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB12_283
# %bb.282:                              #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp113:
	jirl	$ra, $a1, 0
.Ltmp114:
.LBB12_283:                             # %.noexc745
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a0, $sp, 944
	beqz	$a0, .LBB12_285
# %bb.284:                              #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp115:
	jirl	$ra, $a1, 0
.Ltmp116:
.LBB12_285:                             #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a4, 112
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 944
	slli.d	$a1, $s2, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $a4, 600
	st.d	$a0, $sp, 984
	ldx.w	$a0, $a1, $s8
	ld.d	$a1, $a4, 568
	ld.d	$a2, $a4, 504
	slli.d	$a3, $a0, 3
	ldx.d	$a1, $a1, $a3
	ld.d	$a3, $a4, 16
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 968
	alsl.d	$a0, $a0, $a3, 3
	st.d	$a0, $sp, 976
.Ltmp117:
	addi.d	$a0, $sp, 704
	pcaddu18i	$ra, %call36(_ZN11CVirtThread5StartEv)
	jirl	$ra, $ra, 0
.Ltmp118:
# %bb.286:                              #   in Loop: Header=BB12_234 Depth=2
	ld.w	$fp, $s6, 12
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 456
	vst	$vr0, $a0, 0
	ori	$a2, $zero, 8
	st.d	$a2, $sp, 472
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$s2, $a0, 16
	st.d	$s2, $sp, 448
	addi.d	$a0, $sp, 488
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 504
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 480
	addi.d	$a0, $sp, 520
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 536
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 512
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 544
	ld.d	$a1, $sp, 312
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $a0, 120
	addi.d	$a0, $sp, 552
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 568
	st.b	$zero, $sp, 580
.Ltmp120:
	addi.d	$a0, $sp, 1824
	addi.d	$a3, $sp, 1240
	addi.d	$a4, $sp, 448
	move	$a2, $zero
	move	$a6, $s6
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp121:
# %bb.287:                              #   in Loop: Header=BB12_234 Depth=2
	move	$s4, $a0
	bnez	$a0, .LBB12_290
# %bb.288:                              #   in Loop: Header=BB12_234 Depth=2
.Ltmp123:
	addi.d	$a0, $sp, 816
	pcaddu18i	$ra, %call36(Event_Wait)
	jirl	$ra, $ra, 0
.Ltmp124:
# %bb.289:                              # %_ZN11CVirtThread10WaitFinishEv.exit
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.w	$s4, $sp, 940
	beqz	$s4, .LBB12_329
.LBB12_290:                             #   in Loop: Header=BB12_234 Depth=2
	move	$fp, $zero
.LBB12_291:                             #   in Loop: Header=BB12_234 Depth=2
	addi.d	$a0, $sp, 544
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 512
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 480
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 448
.Ltmp142:
	addi.d	$a0, $sp, 448
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp143:
# %bb.292:                              # %_ZN8NArchive3N7z7CFolderD2Ev.exit
                                        #   in Loop: Header=BB12_234 Depth=2
	addi.d	$a0, $sp, 448
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 256                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312
	beqz	$a0, .LBB12_294
.LBB12_293:                             #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp145:
	jirl	$ra, $a1, 0
.Ltmp146:
.LBB12_294:                             # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a0, $sp, 376
	beqz	$a0, .LBB12_296
# %bb.295:                              #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp148:
	jirl	$ra, $a1, 0
.Ltmp149:
.LBB12_296:                             #   in Loop: Header=BB12_234 Depth=2
	ld.d	$s3, $sp, 1464
	beqz	$s3, .LBB12_300
# %bb.297:                              #   in Loop: Header=BB12_234 Depth=2
	ld.bu	$a0, $s3, 88
	bne	$a0, $s1, .LBB12_299
# %bb.298:                              #   in Loop: Header=BB12_234 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 40
	pcaddu18i	$ra, %call36(pthread_cond_destroy)
	jirl	$ra, $ra, 0
.LBB12_299:                             # %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i
                                        #   in Loop: Header=BB12_234 Depth=2
	ori	$a1, $zero, 96
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_300:                             #   in Loop: Header=BB12_234 Depth=2
	st.d	$zero, $sp, 1464
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	st.d	$a0, $sp, 1440
	st.d	$zero, $sp, 1448
.Ltmp151:
	addi.d	$a0, $sp, 1336
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp152:
# %bb.301:                              # %_ZN13CStreamBinderD2Ev.exit
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	beqz	$fp, .LBB12_494
.LBB12_302:                             #   in Loop: Header=BB12_234 Depth=2
	ld.w	$fp, $s7, 8
.Ltmp168:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp169:
# %bb.303:                              #   in Loop: Header=BB12_234 Depth=2
	ld.w	$a0, $s6, 140
	ld.d	$a1, $s6, 144
	slli.d	$a0, $a0, 2
	stx.w	$fp, $a1, $a0
	ld.w	$a0, $s6, 140
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 140
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 144
	ldx.w	$fp, $a0, $s8
	ld.d	$s5, $sp, 296                   # 8-byte Folded Reload
	beqz	$fp, .LBB12_233
# %bb.304:                              # %.lr.ph1273.preheader
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 632
	ldx.w	$s3, $a0, $s8
	move	$s0, $zero
	b	.LBB12_306
	.p2align	4, , 16
.LBB12_305:                             # %_ZN8NArchive3N7z9CFileItemD2Ev.exit769
                                        #   in Loop: Header=BB12_306 Depth=3
	addi.w	$s3, $s3, 1
	bgeu	$s0, $fp, .LBB12_233
.LBB12_306:                             # %.lr.ph1273
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_321 Depth 4
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $sp, 1336
.Ltmp171:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp172:
# %bb.307:                              #   in Loop: Header=BB12_306 Depth=3
	st.d	$a0, $sp, 1328
	st.w	$zero, $a0, 0
	st.w	$s1, $sp, 1344
.Ltmp174:
	addi.d	$a2, $sp, 1312
	addi.d	$a3, $sp, 448
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E)
	jirl	$ra, $ra, 0
.Ltmp175:
# %bb.308:                              #   in Loop: Header=BB12_306 Depth=3
	ld.bu	$a0, $sp, 1344
	bne	$a0, $s1, .LBB12_326
# %bb.309:                              #   in Loop: Header=BB12_306 Depth=3
	ld.d	$a0, $sp, 1296
	slli.d	$a1, $s3, 2
	ldx.w	$a0, $a0, $a1
	addi.w	$s0, $s0, 1
	bltz	$a0, .LBB12_326
# %bb.310:                              #   in Loop: Header=BB12_306 Depth=3
	ld.d	$a1, $s5, 16
	slli.d	$a0, $a0, 3
	ldx.d	$s4, $a1, $a0
	ld.bu	$a0, $s4, 60
	bnez	$a0, .LBB12_326
# %bb.311:                              #   in Loop: Header=BB12_306 Depth=3
	ld.bu	$a0, $s4, 61
	bne	$a0, $s1, .LBB12_325
# %bb.312:                              #   in Loop: Header=BB12_306 Depth=3
	move	$s8, $s5
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $sp, 432
.Ltmp177:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp178:
# %bb.313:                              #   in Loop: Header=BB12_306 Depth=3
	st.d	$a0, $sp, 424
	st.w	$zero, $a0, 0
	ori	$s7, $zero, 1
	st.w	$s1, $sp, 440
.Ltmp180:
	addi.d	$a1, $sp, 408
	addi.d	$a2, $sp, 448
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E)
	jirl	$ra, $ra, 0
.Ltmp181:
# %bb.314:                              #   in Loop: Header=BB12_306 Depth=3
	ld.d	$a0, $sp, 1312
	ld.w	$a1, $sp, 1324
	st.d	$a0, $sp, 408
	ld.b	$a0, $sp, 1346
	st.w	$a1, $sp, 420
	ld.b	$a1, $sp, 1344
	ld.d	$a2, $sp, 416
	st.b	$a0, $sp, 442
	ld.d	$s4, $sp, 1328
	st.b	$a1, $sp, 440
	st.d	$a2, $sp, 1320
	st.w	$zero, $sp, 1336
	st.w	$zero, $s4, 0
	ld.w	$s1, $sp, 432
	ld.w	$s6, $sp, 1340
	addi.w	$s2, $s1, 1
	beq	$s2, $s6, .LBB12_320
# %bb.315:                              #   in Loop: Header=BB12_306 Depth=3
	slti	$a0, $s1, -1
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp182:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp183:
# %bb.316:                              # %.noexc767
                                        #   in Loop: Header=BB12_306 Depth=3
	move	$s5, $a0
	blt	$s6, $s7, .LBB12_318
# %bb.317:                              # %._crit_edge.thread.i.i.i
                                        #   in Loop: Header=BB12_306 Depth=3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1336
	b	.LBB12_319
.LBB12_318:                             #   in Loop: Header=BB12_306 Depth=3
	move	$a0, $zero
.LBB12_319:                             #   in Loop: Header=BB12_306 Depth=3
	st.d	$s5, $sp, 1328
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s5, $a0
	st.w	$s2, $sp, 1340
	move	$s4, $s5
.LBB12_320:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
                                        #   in Loop: Header=BB12_306 Depth=3
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 424
	move	$a1, $zero
	move	$s5, $s8
	.p2align	4, , 16
.LBB12_321:                             #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_306 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s4, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_321
# %bb.322:                              #   in Loop: Header=BB12_306 Depth=3
	ld.w	$a1, $sp, 440
	st.w	$s1, $sp, 1336
	st.w	$a1, $sp, 1344
	beqz	$a0, .LBB12_324
# %bb.323:                              #   in Loop: Header=BB12_306 Depth=3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_324:                             # %_ZN8NArchive3N7z9CFileItemD2Ev.exit
                                        #   in Loop: Header=BB12_306 Depth=3
	ori	$s1, $zero, 1
.LBB12_325:                             #   in Loop: Header=BB12_306 Depth=3
.Ltmp185:
	addi.d	$a1, $sp, 1312
	addi.d	$a2, $sp, 448
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E)
	jirl	$ra, $ra, 0
.Ltmp186:
	.p2align	4, , 16
.LBB12_326:                             # %.critedge686
                                        #   in Loop: Header=BB12_306 Depth=3
	ld.d	$a0, $sp, 1328
	beqz	$a0, .LBB12_305
# %bb.327:                              #   in Loop: Header=BB12_306 Depth=3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_305
.LBB12_328:                             #   in Loop: Header=BB12_234 Depth=2
	move	$s4, $a3
	b	.LBB12_239
.LBB12_329:                             # %.preheader952
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.w	$a0, $s6, 12
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	bge	$fp, $a0, .LBB12_339
# %bb.330:                              # %.lr.ph1263
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a1, $s6, 16
	ld.d	$a2, $a6, 0
	sub.d	$a3, $a0, $fp
	ori	$a4, $zero, 4
	bltu	$a3, $a4, .LBB12_337
# %bb.331:                              # %vector.memcheck2279
                                        #   in Loop: Header=BB12_234 Depth=2
	alsl.d	$a4, $a0, $a1, 3
	alsl.d	$a5, $fp, $a1, 3
	bgeu	$a6, $a4, .LBB12_334
# %bb.332:                              # %vector.memcheck2279
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a5, $a4, .LBB12_334
# %bb.333:                              #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	b	.LBB12_337
.LBB12_334:                             # %vector.ph2287
                                        #   in Loop: Header=BB12_234 Depth=2
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	add.d	$fp, $a4, $fp
	vinsgr2vr.d	$vr0, $a2, 0
	vinsgr2vr.d	$vr1, $zero, 0
	vpackev.d	$vr0, $vr1, $vr0
	addi.d	$a2, $a5, 16
	move	$a5, $a4
	vld	$vr1, $sp, 208                  # 16-byte Folded Reload
.LBB12_335:                             # %vector.body2290
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr2, $a2, -16
	vld	$vr3, $a2, 0
	vadd.d	$vr0, $vr2, $vr0
	vadd.d	$vr1, $vr3, $vr1
	addi.d	$a5, $a5, -4
	addi.d	$a2, $a2, 32
	bnez	$a5, .LBB12_335
# %bb.336:                              # %middle.block2298
                                        #   in Loop: Header=BB12_234 Depth=2
	vadd.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vadd.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$a2, $vr0, 0
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	st.d	$a2, $a6, 0
	beq	$a3, $a4, .LBB12_339
.LBB12_337:                             # %scalar.ph2285.preheader
                                        #   in Loop: Header=BB12_234 Depth=2
	alsl.d	$a1, $fp, $a1, 3
	sub.d	$a0, $a0, $fp
	.p2align	4, , 16
.LBB12_338:                             # %scalar.ph2285
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a1, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $a6, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB12_338
.LBB12_339:                             # %._crit_edge1264
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.w	$a0, $sp, 556
	beqz	$a0, .LBB12_349
# %bb.340:                              # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i
                                        #   in Loop: Header=BB12_234 Depth=2
	blt	$a0, $s1, .LBB12_536
# %bb.341:                              # %.lr.ph.i748
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.w	$a1, $sp, 492
	addi.w	$a2, $a0, -1
	blt	$a1, $s1, .LBB12_348
# %bb.342:                              # %.lr.ph.i.us.i.preheader
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a3, $sp, 496
	bstrpick.d	$a0, $a1, 31, 0
	addi.d	$a1, $a3, 4
	b	.LBB12_344
.LBB12_343:                             # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
                                        #   in Loop: Header=BB12_344 Depth=3
	addi.w	$a2, $a3, -1
	blez	$a3, .LBB12_536
.LBB12_344:                             # %.lr.ph.i.us.i
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_345 Depth 4
	move	$a3, $a2
	move	$a2, $a1
	move	$a4, $a0
	.p2align	4, , 16
.LBB12_345:                             #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_234 Depth=2
                                        #       Parent Loop BB12_344 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a2, 0
	beq	$a5, $a3, .LBB12_343
# %bb.346:                              #   in Loop: Header=BB12_345 Depth=4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB12_345
# %bb.347:                              #   in Loop: Header=BB12_234 Depth=2
	move	$a2, $a3
.LBB12_348:                             # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a0, $sp, 560
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB12_350
.LBB12_349:                             #   in Loop: Header=BB12_234 Depth=2
	move	$a0, $zero
.LBB12_350:                             # %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit
                                        #   in Loop: Header=BB12_234 Depth=2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 48
	add.d	$a0, $a1, $a0
	st.d	$a0, $a2, 48
.Ltmp128:
	ori	$a0, $zero, 136
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp129:
# %bb.351:                              # %.noexc750
                                        #   in Loop: Header=BB12_234 Depth=2
.Ltmp130:
	move	$s5, $a0
	addi.d	$a1, $sp, 448
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z7CFolderC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp131:
# %bb.352:                              #   in Loop: Header=BB12_234 Depth=2
.Ltmp133:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp134:
# %bb.353:                              # %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit754
                                        #   in Loop: Header=BB12_234 Depth=2
	sltui	$a0, $s3, 1
	masknez	$a1, $s3, $a0
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	sltui	$a1, $s4, 1
	masknez	$a2, $s4, $a1
	ld.w	$a3, $s6, 108
	ld.d	$a4, $s6, 112
	maskeqz	$a0, $a0, $a1
	or	$s4, $a0, $a2
	slli.d	$a0, $a3, 3
	stx.d	$s5, $a4, $a0
	addi.d	$a0, $a3, 1
	st.w	$a0, $s6, 108
	ori	$fp, $zero, 1
	b	.LBB12_291
	.p2align	4, , 16
.LBB12_354:                             #   in Loop: Header=BB12_214 Depth=1
	move	$s5, $s4
	ori	$s1, $zero, 1
.LBB12_355:                             # %.critedge681
                                        #   in Loop: Header=BB12_214 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 12
	beqz	$fp, .LBB12_493
.LBB12_356:                             #   in Loop: Header=BB12_214 Depth=1
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 384
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 24
	st.d	$a0, $sp, 400
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIN8NArchive3N7z8CRefItemEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIN8NArchive3N7z8CRefItemEE+16)
	st.d	$a0, $sp, 376
.Ltmp188:
	addi.d	$a0, $sp, 376
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp189:
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
# %bb.357:                              #   in Loop: Header=BB12_214 Depth=1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	st.b	$s1, $sp, 375
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	blez	$fp, .LBB12_363
# %bb.358:                              # %.lr.ph1285
                                        #   in Loop: Header=BB12_214 Depth=1
	move	$a0, $fp
	move	$fp, $zero
	slli.d	$s0, $a0, 2
	.p2align	4, , 16
.LBB12_359:                             #   Parent Loop BB12_214 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ldx.w	$a1, $a0, $fp
	ld.d	$a0, $s5, 16
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a0, $a2
.Ltmp191:
	addi.d	$a0, $sp, 344
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb)
	jirl	$ra, $ra, 0
.Ltmp192:
# %bb.360:                              #   in Loop: Header=BB12_359 Depth=2
.Ltmp193:
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp194:
# %bb.361:                              #   in Loop: Header=BB12_359 Depth=2
	ld.w	$a0, $sp, 388
	ld.d	$a1, $sp, 392
	vld	$vr0, $sp, 344
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 3
	vstx	$vr0, $a1, $a0
	ld.d	$a2, $sp, 360
	add.d	$a0, $a1, $a0
	st.d	$a2, $a0, 16
	ld.w	$a0, $sp, 388
	addi.w	$s2, $a0, 1
	addi.d	$fp, $fp, 4
	st.w	$s2, $sp, 388
	bne	$s0, $fp, .LBB12_359
# %bb.362:                              #   in Loop: Header=BB12_214 Depth=1
	move	$s7, $s5
	ori	$a0, $zero, 2
	bge	$s2, $a0, .LBB12_364
	b	.LBB12_377
.LBB12_363:                             # %.._crit_edge1286_crit_edge
                                        #   in Loop: Header=BB12_214 Depth=1
	move	$s7, $s5
	ld.w	$s2, $sp, 388
	ori	$a0, $zero, 2
	blt	$s2, $a0, .LBB12_377
.LBB12_364:                             #   in Loop: Header=BB12_214 Depth=1
	ld.d	$s4, $sp, 392
	addi.d	$s5, $s4, -24
	srli.d	$fp, $s2, 1
	b	.LBB12_367
	.p2align	4, , 16
.LBB12_365:                             #   in Loop: Header=BB12_367 Depth=2
	move	$s0, $a1
.LBB12_366:                             # %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit.i
                                        #   in Loop: Header=BB12_367 Depth=2
	vld	$vr0, $sp, 1312
	slli.d	$a0, $s0, 4
	alsl.d	$a0, $s0, $a0, 3
	vstx	$vr0, $s5, $a0
	ld.d	$a1, $sp, 1328
	add.d	$a0, $s5, $a0
	addi.d	$fp, $fp, -1
	st.d	$a1, $a0, 16
	beqz	$fp, .LBB12_376
.LBB12_367:                             #   Parent Loop BB12_214 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_369 Depth 3
	slli.d	$a0, $fp, 4
	alsl.d	$a0, $fp, $a0, 3
	vldx	$vr0, $s5, $a0
	add.d	$a0, $s5, $a0
	vst	$vr0, $sp, 1312
	ld.d	$a0, $a0, 16
	slli.w	$s3, $fp, 1
	st.d	$a0, $sp, 1328
	move	$s0, $fp
	blt	$s2, $s3, .LBB12_366
# %bb.368:                              # %.lr.ph.i.i773.preheader
                                        #   in Loop: Header=BB12_367 Depth=2
	move	$s1, $fp
	.p2align	4, , 16
.LBB12_369:                             # %.lr.ph.i.i773
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_367 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bge	$s3, $s2, .LBB12_372
# %bb.370:                              #   in Loop: Header=BB12_369 Depth=3
	alsl.d	$a0, $s3, $s3, 1
	slli.d	$a0, $a0, 3
	add.d	$a1, $s5, $a0
	addi.d	$a0, $a1, 24
.Ltmp196:
	addi.d	$a2, $sp, 375
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv)
	jirl	$ra, $ra, 0
.Ltmp197:
# %bb.371:                              # %.noexc794
                                        #   in Loop: Header=BB12_369 Depth=3
	slt	$a0, $zero, $a0
	or	$s0, $s3, $a0
	b	.LBB12_373
	.p2align	4, , 16
.LBB12_372:                             #   in Loop: Header=BB12_369 Depth=3
	move	$s0, $s3
.LBB12_373:                             #   in Loop: Header=BB12_369 Depth=3
	slli.d	$a0, $s0, 4
	alsl.d	$a0, $s0, $a0, 3
	add.d	$s3, $s5, $a0
.Ltmp198:
	addi.d	$a0, $sp, 1312
	addi.d	$a2, $sp, 375
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv)
	jirl	$ra, $ra, 0
.Ltmp199:
# %bb.374:                              # %.noexc795
                                        #   in Loop: Header=BB12_369 Depth=3
	addi.w	$a2, $zero, -1
	addi.w	$a1, $s1, 0
	blt	$a2, $a0, .LBB12_365
# %bb.375:                              #   in Loop: Header=BB12_369 Depth=3
	vld	$vr0, $s3, 0
	slli.d	$a0, $a1, 4
	alsl.d	$a0, $a1, $a0, 3
	vstx	$vr0, $s5, $a0
	ld.d	$a1, $s3, 16
	add.d	$a0, $s5, $a0
	slli.w	$s3, $s0, 1
	st.d	$a1, $a0, 16
	move	$s1, $s0
	bge	$s2, $s3, .LBB12_369
	b	.LBB12_366
.LBB12_376:                             # %.preheader.i778.preheader
                                        #   in Loop: Header=BB12_214 Depth=1
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	add.d	$a1, $s5, $a0
	ld.d	$a2, $s4, 0
	ldx.d	$a3, $s5, $a0
	ld.d	$a4, $a1, 16
	ld.d	$a5, $a1, 8
	stx.d	$a2, $s5, $a0
	vld	$vr0, $s4, 8
	ori	$a0, $zero, 2912
	add.d	$a0, $sp, $a0
	st.d	$a3, $a0, 0
	ori	$a0, $zero, 2928
	add.d	$a0, $sp, $a0
	st.d	$a4, $a0, 0
	ori	$a0, $zero, 2920
	add.d	$a0, $sp, $a0
	st.d	$a5, $a0, 0
	vst	$vr0, $a1, 8
	st.d	$a4, $s4, 16
	st.d	$a5, $s4, 8
	st.d	$a3, $s4, 0
	ori	$a0, $zero, 2
	bne	$s2, $a0, .LBB12_478
.LBB12_377:                             # %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE4SortEPFiPKS2_S5_PvES6_.exit
                                        #   in Loop: Header=BB12_214 Depth=1
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 320
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 336
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 312
.Ltmp206:
	addi.d	$a0, $sp, 312
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp207:
# %bb.378:                              # %.preheader959
                                        #   in Loop: Header=BB12_214 Depth=1
	ori	$a0, $zero, 1
	move	$s5, $s7
	blt	$fp, $a0, .LBB12_382
# %bb.379:                              # %.lr.ph1288.preheader
                                        #   in Loop: Header=BB12_214 Depth=1
	move	$fp, $zero
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a0, $a1, 4
	alsl.d	$s0, $a1, $a0, 3
	.p2align	4, , 16
.LBB12_380:                             # %.lr.ph1288
                                        #   Parent Loop BB12_214 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 392
	add.d	$a0, $a0, $fp
	ld.w	$s1, $a0, 8
.Ltmp209:
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp210:
# %bb.381:                              #   in Loop: Header=BB12_380 Depth=2
	ld.w	$a0, $sp, 324
	ld.d	$a1, $sp, 328
	slli.d	$a0, $a0, 2
	stx.w	$s1, $a1, $a0
	ld.w	$a0, $sp, 324
	addi.d	$a0, $a0, 1
	addi.d	$fp, $fp, 24
	st.w	$a0, $sp, 324
	bne	$s0, $fp, .LBB12_380
.LBB12_382:                             # %.preheader953
                                        #   in Loop: Header=BB12_214 Depth=1
	move	$s2, $zero
	.p2align	4, , 16
.LBB12_383:                             #   Parent Loop BB12_214 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_386 Depth 3
                                        #         Child Loop BB12_390 Depth 4
                                        #         Child Loop BB12_396 Depth 4
                                        #         Child Loop BB12_417 Depth 4
                                        #       Child Loop BB12_434 Depth 3
                                        #       Child Loop BB12_437 Depth 3
                                        #       Child Loop BB12_443 Depth 3
                                        #         Child Loop BB12_444 Depth 4
                                        #       Child Loop BB12_454 Depth 3
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	bge	$s2, $fp, .LBB12_486
# %bb.384:                              #   in Loop: Header=BB12_383 Depth=2
.Ltmp212:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp213:
# %bb.385:                              # %.lr.ph1293.preheader
                                        #   in Loop: Header=BB12_383 Depth=2
	move	$s4, $a0
	move	$s8, $zero
	move	$s5, $zero
	move	$s0, $zero
	st.w	$zero, $a0, 0
	sub.d	$a4, $fp, $s2
	ori	$s6, $zero, 4
	ori	$s1, $zero, 1
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB12_386:                             # %.lr.ph1293
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_383 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_390 Depth 4
                                        #         Child Loop BB12_396 Depth 4
                                        #         Child Loop BB12_417 Depth 4
	ld.d	$a0, $sp, 328
	alsl.d	$a0, $s8, $a0, 2
	slli.d	$s7, $s2, 2
	ldx.w	$a0, $a0, $s7
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $a0, 32
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $a3, 32
	add.d	$s0, $a1, $s0
	bltu	$a2, $s0, .LBB12_419
# %bb.387:                              #   in Loop: Header=BB12_386 Depth=3
	ld.bu	$a1, $a3, 40
	bne	$a1, $s1, .LBB12_408
# %bb.388:                              #   in Loop: Header=BB12_386 Depth=3
	ld.w	$a3, $a0, 48
	beqz	$a3, .LBB12_393
# %bb.389:                              #   in Loop: Header=BB12_386 Depth=3
	ld.d	$a1, $a0, 40
	slli.d	$a2, $a3, 2
	addi.d	$a2, $a2, -4
	move	$a4, $a2
	ori	$a6, $zero, 47
	.p2align	4, , 16
.LBB12_390:                             #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_383 Depth=2
                                        #       Parent Loop BB12_386 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a5, $a1, $a4
	beq	$a5, $a6, .LBB12_394
# %bb.391:                              #   in Loop: Header=BB12_390 Depth=4
	addi.d	$a4, $a4, -4
	addi.w	$a5, $zero, -4
	bne	$a4, $a5, .LBB12_390
# %bb.392:                              #   in Loop: Header=BB12_386 Depth=3
	addi.d	$a4, $zero, -1
	b	.LBB12_395
.LBB12_393:                             #   in Loop: Header=BB12_386 Depth=3
	move	$a2, $zero
	b	.LBB12_401
.LBB12_394:                             #   in Loop: Header=BB12_386 Depth=3
	srli.d	$a4, $a4, 2
.LBB12_395:                             # %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit.i.i
                                        #   in Loop: Header=BB12_386 Depth=3
	ori	$a6, $zero, 46
	.p2align	4, , 16
.LBB12_396:                             #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_383 Depth=2
                                        #       Parent Loop BB12_386 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a5, $a1, $a2
	beq	$a5, $a6, .LBB12_399
# %bb.397:                              #   in Loop: Header=BB12_396 Depth=4
	addi.d	$a2, $a2, -4
	addi.w	$a5, $zero, -4
	bne	$a2, $a5, .LBB12_396
# %bb.398:                              #   in Loop: Header=BB12_386 Depth=3
	move	$a2, $a3
	b	.LBB12_401
.LBB12_399:                             # %_ZNK11CStringBaseIwE11ReverseFindEw.exit.i.i
                                        #   in Loop: Header=BB12_386 Depth=3
	srli.d	$a1, $a2, 2
	addi.w	$a5, $a1, 0
	move	$a2, $a3
	bltz	$a5, .LBB12_401
# %bb.400:                              #   in Loop: Header=BB12_386 Depth=3
	addi.w	$a2, $a4, 0
	slt	$a2, $a5, $a2
	addi.w	$a1, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a1
	.p2align	4, , 16
.LBB12_401:                             # %_ZNK8NArchive3N7z11CUpdateItem15GetExtensionPosEv.exit.i
                                        #   in Loop: Header=BB12_386 Depth=3
	addi.d	$a1, $a0, 40
	sub.w	$a3, $a3, $a2
.Ltmp215:
	addi.d	$a0, $sp, 1312
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp216:
# %bb.402:                              # %_ZNK8NArchive3N7z11CUpdateItem12GetExtensionEv.exit
                                        #   in Loop: Header=BB12_386 Depth=3
	ori	$fp, $zero, 1
	beqz	$s8, .LBB12_410
# %bb.403:                              #   in Loop: Header=BB12_386 Depth=3
	ld.d	$a0, $sp, 1312
.Ltmp218:
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp219:
# %bb.404:                              # %_ZNK11CStringBaseIwE13CompareNoCaseERKS0_.exit
                                        #   in Loop: Header=BB12_386 Depth=3
	ld.d	$a0, $sp, 1312
	sltui	$s3, $a1, 1
	move	$s1, $s6
	beqz	$a0, .LBB12_406
.LBB12_405:                             #   in Loop: Header=BB12_386 Depth=3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_406:                             # %_ZN11CStringBaseIwED2Ev.exit816
                                        #   in Loop: Header=BB12_386 Depth=3
	beqz	$s3, .LBB12_420
# %bb.407:                              #   in Loop: Header=BB12_386 Depth=3
	move	$s6, $s1
	ori	$s1, $zero, 1
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
.LBB12_408:                             # %.thread911
                                        #   in Loop: Header=BB12_386 Depth=3
	addi.d	$s8, $s8, 1
	addi.d	$s5, $s5, 1
	bge	$s8, $a4, .LBB12_421
# %bb.409:                              # %.thread911
                                        #   in Loop: Header=BB12_386 Depth=3
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	bltu	$s8, $a0, .LBB12_386
	b	.LBB12_421
.LBB12_410:                             #   in Loop: Header=BB12_386 Depth=3
	ld.w	$a0, $sp, 1320
	addi.w	$s1, $a0, 1
	st.w	$zero, $s4, 0
	bne	$s1, $s6, .LBB12_412
# %bb.411:                              #   in Loop: Header=BB12_386 Depth=3
	move	$s1, $s6
	b	.LBB12_416
.LBB12_412:                             #   in Loop: Header=BB12_386 Depth=3
	slti	$a0, $a0, -1
	slli.d	$a1, $s1, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp220:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp221:
# %bb.413:                              # %.noexc813
                                        #   in Loop: Header=BB12_386 Depth=3
	move	$s3, $a0
	blt	$s6, $fp, .LBB12_415
# %bb.414:                              # %._crit_edge.thread.i.i811
                                        #   in Loop: Header=BB12_386 Depth=3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_415:                             #   in Loop: Header=BB12_386 Depth=3
	st.w	$zero, $s3, 0
	move	$s4, $s3
.LBB12_416:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i806
                                        #   in Loop: Header=BB12_386 Depth=3
	ld.d	$a0, $sp, 1312
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_417:                             #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_383 Depth=2
                                        #       Parent Loop BB12_386 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s4, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_417
# %bb.418:                              #   in Loop: Header=BB12_386 Depth=3
	ori	$s3, $zero, 1
	bnez	$a0, .LBB12_405
	b	.LBB12_406
	.p2align	4, , 16
.LBB12_419:                             # %.thread920.split.loop.exit1579
                                        #   in Loop: Header=BB12_383 Depth=2
	move	$s5, $s8
	b	.LBB12_421
.LBB12_420:                             # %.thread920.split.loop.exit1582
                                        #   in Loop: Header=BB12_383 Depth=2
	move	$s5, $s8
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB12_421:                             # %.thread920
                                        #   in Loop: Header=BB12_383 Depth=2
.Ltmp223:
	ori	$a0, $zero, 184
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp224:
# %bb.422:                              #   in Loop: Header=BB12_383 Depth=2
.Ltmp226:
	move	$s3, $a0
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z15CFolderInStreamC1Ev)
	jirl	$ra, $ra, 0
.Ltmp227:
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
# %bb.423:                              #   in Loop: Header=BB12_383 Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 8
.Ltmp229:
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp230:
# %bb.424:                              # %_ZN9CMyComPtrI19ISequentialInStreamEC2EPS0_.exit
                                        #   in Loop: Header=BB12_383 Depth=2
	addi.w	$a0, $s5, 0
	sltu	$a1, $s1, $a0
	ld.d	$a2, $sp, 328
	masknez	$a3, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$a3, $a0, $a3
	alsl.d	$a2, $s2, $a2, 2
.Ltmp232:
	move	$a0, $s3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z15CFolderInStream4InitEP22IArchiveUpdateCallbackPKjj)
	jirl	$ra, $ra, 0
.Ltmp233:
# %bb.425:                              #   in Loop: Header=BB12_383 Depth=2
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 1320
	vst	$vr0, $a0, 0
	ori	$a1, $zero, 8
	st.d	$a1, $sp, 1336
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$s5, $a0, 16
	st.d	$s5, $sp, 1312
	addi.d	$a0, $sp, 1352
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 1368
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 1344
	addi.d	$a0, $sp, 1384
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 1400
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 1376
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 1408
	ld.w	$s0, $s6, 12
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $a0, 120
	addi.d	$a0, $sp, 1416
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 1432
	st.b	$zero, $sp, 1444
.Ltmp235:
	addi.d	$a0, $sp, 1824
	addi.d	$a3, $sp, 1240
	addi.d	$a4, $sp, 1312
	move	$a1, $s3
	move	$a2, $zero
	move	$a6, $s6
	move	$a7, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CEncoder6EncodeEP19ISequentialInStreamPKyS5_RNS0_7CFolderEP20ISequentialOutStreamR13CRecordVectorIyEP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp236:
# %bb.426:                              #   in Loop: Header=BB12_383 Depth=2
	move	$s8, $a0
	ori	$fp, $zero, 1
	st.d	$s5, $sp, 264                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_429
# %bb.427:                              #   in Loop: Header=BB12_383 Depth=2
	st.d	$s8, $sp, 256                   # 8-byte Folded Spill
.LBB12_428:                             # %.loopexit
                                        #   in Loop: Header=BB12_383 Depth=2
	ld.d	$s5, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
	b	.LBB12_473
	.p2align	4, , 16
.LBB12_429:                             # %.preheader946
                                        #   in Loop: Header=BB12_383 Depth=2
	ld.w	$a0, $s6, 12
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	bge	$s0, $a0, .LBB12_438
# %bb.430:                              # %.lr.ph1302
                                        #   in Loop: Header=BB12_383 Depth=2
	ld.d	$a1, $s6, 16
	ld.d	$a2, $a6, 0
	sub.d	$a3, $a0, $s0
	ori	$a4, $zero, 4
	bltu	$a3, $a4, .LBB12_436
# %bb.431:                              # %vector.memcheck
                                        #   in Loop: Header=BB12_383 Depth=2
	alsl.d	$a4, $a0, $a1, 3
	alsl.d	$a5, $s0, $a1, 3
	bgeu	$a6, $a4, .LBB12_433
# %bb.432:                              # %vector.memcheck
                                        #   in Loop: Header=BB12_383 Depth=2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	bltu	$a5, $a4, .LBB12_436
.LBB12_433:                             # %vector.ph2246
                                        #   in Loop: Header=BB12_383 Depth=2
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	add.d	$s0, $a4, $s0
	vinsgr2vr.d	$vr0, $a2, 0
	vinsgr2vr.d	$vr1, $zero, 0
	vpackev.d	$vr0, $vr1, $vr0
	addi.d	$a2, $a5, 16
	move	$a5, $a4
	vld	$vr1, $sp, 208                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB12_434:                             # %vector.body2249
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_383 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr2, $a2, -16
	vld	$vr3, $a2, 0
	vadd.d	$vr0, $vr2, $vr0
	vadd.d	$vr1, $vr3, $vr1
	addi.d	$a5, $a5, -4
	addi.d	$a2, $a2, 32
	bnez	$a5, .LBB12_434
# %bb.435:                              # %middle.block2256
                                        #   in Loop: Header=BB12_383 Depth=2
	vadd.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr0, 1
	vadd.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$a2, $vr0, 0
	st.d	$a2, $a6, 0
	beq	$a3, $a4, .LBB12_438
.LBB12_436:                             # %scalar.ph2244.preheader
                                        #   in Loop: Header=BB12_383 Depth=2
	alsl.d	$a1, $s0, $a1, 3
	sub.d	$a0, $a0, $s0
	.p2align	4, , 16
.LBB12_437:                             # %scalar.ph2244
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_383 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a1, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $a6, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB12_437
.LBB12_438:                             # %._crit_edge1303
                                        #   in Loop: Header=BB12_383 Depth=2
	ld.w	$a0, $sp, 1420
	beqz	$a0, .LBB12_448
# %bb.439:                              # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i819
                                        #   in Loop: Header=BB12_383 Depth=2
	blt	$a0, $s1, .LBB12_534
# %bb.440:                              # %.lr.ph.i821
                                        #   in Loop: Header=BB12_383 Depth=2
	ld.w	$a1, $sp, 1356
	addi.w	$a2, $a0, -1
	blt	$a1, $s1, .LBB12_447
# %bb.441:                              # %.lr.ph.i.us.i828.preheader
                                        #   in Loop: Header=BB12_383 Depth=2
	ld.d	$a3, $sp, 1360
	bstrpick.d	$a0, $a1, 31, 0
	addi.d	$a1, $a3, 4
	b	.LBB12_443
	.p2align	4, , 16
.LBB12_442:                             # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i833
                                        #   in Loop: Header=BB12_443 Depth=3
	addi.w	$a2, $a3, -1
	blez	$a3, .LBB12_534
.LBB12_443:                             # %.lr.ph.i.us.i828
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_383 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_444 Depth 4
	move	$a3, $a2
	move	$a2, $a1
	move	$a4, $a0
	.p2align	4, , 16
.LBB12_444:                             #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_383 Depth=2
                                        #       Parent Loop BB12_443 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a2, 0
	beq	$a5, $a3, .LBB12_442
# %bb.445:                              #   in Loop: Header=BB12_444 Depth=4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB12_444
# %bb.446:                              #   in Loop: Header=BB12_383 Depth=2
	move	$a2, $a3
.LBB12_447:                             # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i825
                                        #   in Loop: Header=BB12_383 Depth=2
	ld.d	$a0, $sp, 1424
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB12_449
.LBB12_448:                             #   in Loop: Header=BB12_383 Depth=2
	move	$a0, $zero
.LBB12_449:                             # %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit836
                                        #   in Loop: Header=BB12_383 Depth=2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 48
	add.d	$a0, $a1, $a0
	st.d	$a0, $a2, 48
.Ltmp241:
	ori	$a0, $zero, 136
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp242:
# %bb.450:                              # %.noexc837
                                        #   in Loop: Header=BB12_383 Depth=2
.Ltmp243:
	move	$s5, $a0
	addi.d	$a1, $sp, 1312
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z7CFolderC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp244:
# %bb.451:                              #   in Loop: Header=BB12_383 Depth=2
.Ltmp246:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp247:
# %bb.452:                              # %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE3AddERKS2_.exit841
                                        #   in Loop: Header=BB12_383 Depth=2
	move	$s6, $zero
	move	$s0, $zero
	sltui	$a0, $s8, 1
	masknez	$a1, $s8, $a0
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a2, $a4, 108
	ld.d	$a3, $a4, 112
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	slli.d	$a0, $a2, 3
	stx.d	$s5, $a3, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $a4, 108
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	bstrpick.d	$s8, $a0, 31, 0
	b	.LBB12_454
	.p2align	4, , 16
.LBB12_453:                             #   in Loop: Header=BB12_454 Depth=3
	addi.d	$s6, $s6, 1
	beq	$s6, $s8, .LBB12_471
.LBB12_454:                             #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_383 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 328
	alsl.d	$a0, $s6, $a0, 2
	ldx.w	$a0, $a0, $s7
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$s5, $a1, $a0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $sp, 472
.Ltmp249:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp250:
# %bb.455:                              #   in Loop: Header=BB12_454 Depth=3
	st.w	$zero, $a0, 0
	ld.bu	$a1, $s5, 61
	st.d	$a0, $sp, 464
	st.w	$s1, $sp, 480
	bne	$a1, $s1, .LBB12_457
# %bb.456:                              #   in Loop: Header=BB12_454 Depth=3
.Ltmp254:
	addi.d	$a1, $sp, 448
	addi.d	$a2, $sp, 408
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E)
	jirl	$ra, $ra, 0
.Ltmp255:
	b	.LBB12_458
	.p2align	4, , 16
.LBB12_457:                             #   in Loop: Header=BB12_454 Depth=3
	ld.w	$a1, $s5, 0
.Ltmp252:
	addi.d	$a2, $sp, 448
	addi.d	$a3, $sp, 408
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E)
	jirl	$ra, $ra, 0
.Ltmp253:
.LBB12_458:                             #   in Loop: Header=BB12_454 Depth=3
	ld.bu	$a0, $sp, 444
	ori	$fp, $zero, 1
	bnez	$a0, .LBB12_464
# %bb.459:                              #   in Loop: Header=BB12_454 Depth=3
	ld.b	$a0, $sp, 481
	andi	$a0, $a0, 1
	ori	$s1, $zero, 1
	bnez	$a0, .LBB12_463
# %bb.460:                              #   in Loop: Header=BB12_454 Depth=3
	ld.d	$a0, $s3, 104
	ldx.bu	$a0, $a0, $s6
	ori	$fp, $zero, 57
	bne	$a0, $s1, .LBB12_466
# %bb.461:                              #   in Loop: Header=BB12_454 Depth=3
	ld.d	$a0, $s3, 136
	slli.d	$a1, $s6, 2
	ldx.w	$a0, $a0, $a1
	ld.d	$a1, $s3, 168
	st.w	$a0, $sp, 460
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $a1, $a0
	st.d	$a0, $sp, 448
	sltu	$s1, $zero, $a0
	st.b	$s1, $sp, 482
	st.b	$s1, $sp, 480
.Ltmp256:
	addi.d	$a1, $sp, 448
	addi.d	$a2, $sp, 408
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E)
	jirl	$ra, $ra, 0
.Ltmp257:
# %bb.462:                              #   in Loop: Header=BB12_454 Depth=3
	move	$fp, $zero
	add.d	$s0, $s0, $s1
	b	.LBB12_465
	.p2align	4, , 16
.LBB12_463:                             #   in Loop: Header=BB12_454 Depth=3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	b	.LBB12_466
	.p2align	4, , 16
.LBB12_464:                             #   in Loop: Header=BB12_454 Depth=3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
.LBB12_465:                             #   in Loop: Header=BB12_454 Depth=3
	ori	$s1, $zero, 1
.LBB12_466:                             #   in Loop: Header=BB12_454 Depth=3
	ld.d	$a0, $sp, 464
	beqz	$a0, .LBB12_468
# %bb.467:                              #   in Loop: Header=BB12_454 Depth=3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_468:                             # %_ZN8NArchive3N7z9CFileItemD2Ev.exit845
                                        #   in Loop: Header=BB12_454 Depth=3
	ori	$a0, $zero, 57
	beq	$fp, $a0, .LBB12_453
# %bb.469:                              # %_ZN8NArchive3N7z9CFileItemD2Ev.exit845
                                        #   in Loop: Header=BB12_454 Depth=3
	beqz	$fp, .LBB12_453
# %bb.470:                              # %.loopexit.loopexit
                                        #   in Loop: Header=BB12_383 Depth=2
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	b	.LBB12_428
	.p2align	4, , 16
.LBB12_471:                             #   in Loop: Header=BB12_383 Depth=2
.Ltmp259:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp260:
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
# %bb.472:                              #   in Loop: Header=BB12_383 Depth=2
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a0, $s6, 140
	ld.d	$a1, $s6, 144
	slli.d	$a0, $a0, 2
	stx.w	$s0, $a1, $a0
	ld.w	$a0, $s6, 140
	move	$fp, $zero
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 140
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.w	$s2, $a0, $s2
	ld.d	$s5, $sp, 296                   # 8-byte Folded Reload
.LBB12_473:                             # %.loopexit
                                        #   in Loop: Header=BB12_383 Depth=2
	addi.d	$a0, $sp, 1408
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1376
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1344
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 1312
.Ltmp265:
	addi.d	$a0, $sp, 1312
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp266:
# %bb.474:                              #   in Loop: Header=BB12_383 Depth=2
	addi.d	$a0, $sp, 1312
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 16
.Ltmp268:
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp269:
# %bb.475:                              # %_ZN11CStringBaseIwED2Ev.exit851
                                        #   in Loop: Header=BB12_383 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB12_383
	b	.LBB12_487
	.p2align	4, , 16
.LBB12_476:                             #   in Loop: Header=BB12_478 Depth=2
	move	$s1, $s0
.LBB12_477:                             # %_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEE11SortRefDownEPS2_iiPFiPKS2_S6_PvES7_.exit28.i
                                        #   in Loop: Header=BB12_478 Depth=2
	ori	$a0, $zero, 2912
	add.d	$a0, $sp, $a0
	vld	$vr0, $a0, 0
	ori	$a0, $zero, 2928
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 24
	mul.d	$a1, $s1, $a3
	add.d	$a2, $s5, $a1
	vstx	$vr0, $s5, $a1
	st.d	$a0, $a2, 16
	mul.d	$a0, $s2, $a3
	add.d	$a1, $s5, $a0
	vld	$vr0, $a1, 8
	ld.d	$a2, $s4, 0
	ldx.d	$a3, $s5, $a0
	ori	$a4, $zero, 2920
	add.d	$a4, $sp, $a4
	vst	$vr0, $a4, 0
	stx.d	$a2, $s5, $a0
	vld	$vr0, $s4, 8
	ori	$a0, $zero, 2912
	add.d	$a0, $sp, $a0
	st.d	$a3, $a0, 0
	ori	$a0, $zero, 2928
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2920
	add.d	$a2, $sp, $a2
	ld.d	$a2, $a2, 0
	vst	$vr0, $a1, 8
	st.d	$a3, $s4, 0
	st.d	$a0, $s4, 16
	st.d	$a2, $s4, 8
	ori	$a0, $zero, 3
	bge	$a0, $fp, .LBB12_377
.LBB12_478:                             # %.lr.ph.i21.i781.preheader
                                        #   Parent Loop BB12_214 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_479 Depth 3
	move	$fp, $s2
	addi.d	$s2, $s2, -1
	ori	$s0, $zero, 1
	ori	$s3, $zero, 2
	.p2align	4, , 16
.LBB12_479:                             # %.lr.ph.i21.i781
                                        #   Parent Loop BB12_214 Depth=1
                                        #     Parent Loop BB12_478 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bge	$s3, $s2, .LBB12_482
# %bb.480:                              #   in Loop: Header=BB12_479 Depth=3
	alsl.d	$a0, $s3, $s3, 1
	slli.d	$a0, $a0, 3
	add.d	$a1, $s5, $a0
	addi.d	$a0, $a1, 24
.Ltmp201:
	addi.d	$a2, $sp, 375
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv)
	jirl	$ra, $ra, 0
.Ltmp202:
# %bb.481:                              # %.noexc796
                                        #   in Loop: Header=BB12_479 Depth=3
	slt	$a0, $zero, $a0
	or	$s1, $s3, $a0
	b	.LBB12_483
	.p2align	4, , 16
.LBB12_482:                             #   in Loop: Header=BB12_479 Depth=3
	move	$s1, $s3
.LBB12_483:                             #   in Loop: Header=BB12_479 Depth=3
	slli.d	$a0, $s1, 4
	alsl.d	$a0, $s1, $a0, 3
	add.d	$s3, $s5, $a0
.Ltmp203:
	ori	$a0, $zero, 2912
	add.d	$a0, $sp, $a0
	addi.d	$a2, $sp, 375
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv)
	jirl	$ra, $ra, 0
.Ltmp204:
# %bb.484:                              # %.noexc797
                                        #   in Loop: Header=BB12_479 Depth=3
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB12_476
# %bb.485:                              #   in Loop: Header=BB12_479 Depth=3
	vld	$vr0, $s3, 0
	slli.d	$a0, $s0, 4
	alsl.d	$a0, $s0, $a0, 3
	vstx	$vr0, $s5, $a0
	ld.d	$a1, $s3, 16
	add.d	$a0, $s5, $a0
	slli.w	$s3, $s1, 1
	st.d	$a1, $a0, 16
	move	$s0, $s1
	blt	$s3, $fp, .LBB12_479
	b	.LBB12_477
.LBB12_486:                             #   in Loop: Header=BB12_214 Depth=1
	move	$fp, $zero
.LBB12_487:                             #   in Loop: Header=BB12_214 Depth=1
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CEncoderD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 656
	beqz	$a0, .LBB12_489
.LBB12_488:                             #   in Loop: Header=BB12_214 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_489:                             # %_ZN11CStringBaseIwED2Ev.exit.i
                                        #   in Loop: Header=BB12_214 Depth=1
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $sp, 584
.Ltmp271:
	addi.d	$a0, $sp, 584
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp272:
# %bb.490:                              # %_ZN8NArchive3N7z22CCompressionMethodModeD2Ev.exit
                                        #   in Loop: Header=BB12_214 Depth=1
	addi.d	$a0, $sp, 584
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 25
	beq	$fp, $a0, .LBB12_213
# %bb.491:                              # %_ZN8NArchive3N7z22CCompressionMethodModeD2Ev.exit
                                        #   in Loop: Header=BB12_214 Depth=1
	beqz	$fp, .LBB12_213
	b	.LBB12_522
.LBB12_492:                             # %.critedge681.loopexit.split.loop.exit
                                        #   in Loop: Header=BB12_214 Depth=1
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 12
	bnez	$fp, .LBB12_356
.LBB12_493:                             #   in Loop: Header=BB12_214 Depth=1
	ori	$fp, $zero, 25
	b	.LBB12_495
.LBB12_494:                             # %.critedge681.thread.loopexit
                                        #   in Loop: Header=BB12_214 Depth=1
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 296                   # 8-byte Folded Reload
.LBB12_495:                             # %.critedge681.thread
                                        #   in Loop: Header=BB12_214 Depth=1
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CEncoderD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 656
	bnez	$a0, .LBB12_488
	b	.LBB12_489
.LBB12_496:
	ld.w	$a0, $sp, 1260
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	bne	$a1, $a0, .LBB12_508
# %bb.497:
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 456
	ld.w	$a0, $s4, 12
	ori	$a1, $zero, 4
	st.d	$a1, $sp, 472
	ori	$fp, $zero, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a1, $sp, 448
	blt	$a0, $fp, .LBB12_509
# %bb.498:                              # %.lr.ph1314
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
	addi.w	$s3, $zero, -1
	b	.LBB12_500
.LBB12_499:                             #   in Loop: Header=BB12_500 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bge	$s2, $a0, .LBB12_509
.LBB12_500:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 16
	ldx.d	$a1, $a1, $s0
	ld.bu	$a2, $a1, 60
	bne	$a2, $fp, .LBB12_504
# %bb.501:                              #   in Loop: Header=BB12_500 Depth=1
	ld.bu	$a2, $a1, 63
	bnez	$a2, .LBB12_506
# %bb.502:                              #   in Loop: Header=BB12_500 Depth=1
	ld.b	$a2, $a1, 62
	andi	$a2, $a2, 1
	bnez	$a2, .LBB12_506
# %bb.503:                              # %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit856
                                        #   in Loop: Header=BB12_500 Depth=1
	ld.d	$a1, $a1, 32
	bnez	$a1, .LBB12_499
	b	.LBB12_506
.LBB12_504:                             #   in Loop: Header=BB12_500 Depth=1
	ld.w	$a1, $a1, 0
	beq	$a1, $s3, .LBB12_506
# %bb.505:                              #   in Loop: Header=BB12_500 Depth=1
	ld.d	$a2, $s8, 176
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.bu	$a1, $a1, 32
	bnez	$a1, .LBB12_499
.LBB12_506:                             # %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit856.thread
                                        #   in Loop: Header=BB12_500 Depth=1
.Ltmp274:
	addi.d	$a0, $sp, 448
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp275:
# %bb.507:                              # %_ZN13CRecordVectorIiE3AddEi.exit858
                                        #   in Loop: Header=BB12_500 Depth=1
	ld.w	$a0, $sp, 460
	ld.d	$a1, $sp, 464
	slli.d	$a0, $a0, 2
	stx.w	$s1, $a1, $a0
	ld.w	$a1, $sp, 460
	ld.w	$a0, $s4, 12
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 460
	b	.LBB12_499
.LBB12_508:
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	b	.LBB12_522
.LBB12_509:                             # %._crit_edge1315
.Ltmp277:
	pcalau12i	$a0, %pc_hi20(_ZN8NArchive3N7zL17CompareEmptyItemsEPKiS2_Pv)
	addi.d	$a1, $a0, %pc_lo12(_ZN8NArchive3N7zL17CompareEmptyItemsEPKiS2_Pv)
	addi.d	$a0, $sp, 448
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZN13CRecordVectorIiE4SortEPFiPKiS2_PvES3_)
	jirl	$ra, $ra, 0
.Ltmp278:
# %bb.510:                              # %.preheader
	ld.w	$a0, $sp, 460
	ori	$fp, $zero, 1
	blt	$a0, $fp, .LBB12_520
# %bb.511:                              # %.lr.ph1317
	move	$s0, $zero
	move	$s1, $zero
	ori	$s3, $zero, 0
	lu32i.d	$s3, 4
	b	.LBB12_513
.LBB12_512:                             # %_ZN8NArchive3N7z9CFileItemD2Ev.exit864
                                        #   in Loop: Header=BB12_513 Depth=1
	ld.w	$a0, $sp, 460
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 4
	bge	$s1, $a0, .LBB12_520
.LBB12_513:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 464
	ldx.w	$a0, $a0, $s0
	ld.d	$a1, $s4, 16
	slli.d	$a0, $a0, 3
	ldx.d	$s2, $a1, $a0
	st.d	$s3, $sp, 1848
.Ltmp280:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp281:
# %bb.514:                              #   in Loop: Header=BB12_513 Depth=1
	st.w	$zero, $a0, 0
	ld.bu	$a1, $s2, 61
	st.d	$a0, $sp, 1840
	st.w	$fp, $sp, 1856
	bne	$a1, $fp, .LBB12_516
# %bb.515:                              #   in Loop: Header=BB12_513 Depth=1
.Ltmp285:
	addi.d	$a1, $sp, 1824
	addi.d	$a2, $sp, 1312
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E)
	jirl	$ra, $ra, 0
.Ltmp286:
	b	.LBB12_517
.LBB12_516:                             #   in Loop: Header=BB12_513 Depth=1
	ld.w	$a1, $s2, 0
.Ltmp283:
	addi.d	$a2, $sp, 1824
	addi.d	$a3, $sp, 1312
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNK8NArchive3N7z16CArchiveDatabase7GetFileEiRNS0_9CFileItemERNS0_10CFileItem2E)
	jirl	$ra, $ra, 0
.Ltmp284:
.LBB12_517:                             #   in Loop: Header=BB12_513 Depth=1
.Ltmp287:
	addi.d	$a1, $sp, 1824
	addi.d	$a2, $sp, 1312
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z16CArchiveDatabase7AddFileERKNS0_9CFileItemERKNS0_10CFileItem2E)
	jirl	$ra, $ra, 0
.Ltmp288:
# %bb.518:                              #   in Loop: Header=BB12_513 Depth=1
	ld.d	$a0, $sp, 1840
	beqz	$a0, .LBB12_512
# %bb.519:                              #   in Loop: Header=BB12_513 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_512
.LBB12_520:                             # %._crit_edge1318
	addi.d	$a0, $sp, 448
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.Ltmp290:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z16CArchiveDatabase11ReserveDownEv)
	jirl	$ra, $ra, 0
.Ltmp291:
# %bb.521:
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
.LBB12_522:                             # %.loopexit967.loopexit
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
.LBB12_523:                             # %.loopexit967
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 672
.Ltmp296:
	addi.d	$a0, $sp, 672
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp297:
# %bb.524:                              # %_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev.exit
	addi.d	$a0, $sp, 672
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
.LBB12_525:
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive3N7z14CThreadDecoderE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NArchive3N7z14CThreadDecoderE+16)
	st.d	$a0, $sp, 704
	addi.d	$a0, $sp, 1000
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CDecoderD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 992
	beqz	$a0, .LBB12_527
# %bb.526:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp299:
	jirl	$ra, $a1, 0
.Ltmp300:
.LBB12_527:                             # %_ZN9CMyComPtrI22ICryptoGetTextPasswordED2Ev.exit.i
	ld.d	$a0, $sp, 960
	beqz	$a0, .LBB12_529
# %bb.528:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp302:
	jirl	$ra, $a1, 0
.Ltmp303:
.LBB12_529:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit.i
	ld.d	$a0, $sp, 944
	beqz	$a0, .LBB12_531
# %bb.530:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp305:
	jirl	$ra, $a1, 0
.Ltmp306:
.LBB12_531:
	addi.d	$a0, $sp, 704
	pcaddu18i	$ra, %call36(_ZN11CVirtThreadD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
.Ltmp308:
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp309:
.LBB12_532:                             # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit
	addi.d	$a0, $sp, 1248
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1280
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB12_533:
	addi.w	$a0, $fp, 0
	addi.d	$sp, $sp, 992
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB12_534:                             # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i820
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.Ltmp238:
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp239:
# %bb.535:                              # %.noexc835
.LBB12_536:                             # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.Ltmp125:
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp126:
# %bb.537:                              # %.noexc749
.LBB12_538:
.Ltmp292:
	b	.LBB12_591
.LBB12_539:
.Ltmp279:
	b	.LBB12_557
.LBB12_540:
.Ltmp74:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_541:
.Ltmp68:
	b	.LBB12_546
.LBB12_542:
.Ltmp65:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_543:
.Ltmp132:
	move	$fp, $a0
	ori	$a1, $zero, 136
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_563
.LBB12_544:                             # %.loopexit.split-lp962
.Ltmp127:
	b	.LBB12_562
.LBB12_545:
.Ltmp62:
.LBB12_546:
	move	$fp, $a0
	ld.d	$a0, $sp, 1824
.Ltmp69:
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp70:
# %bb.547:                              # %_ZN10CMyComBSTRD2Ev.exit711
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB12_660
.LBB12_548:
.Ltmp71:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_549:
.Ltmp49:
	b	.LBB12_552
.LBB12_550:
.Ltmp83:
	move	$fp, $a0
	b	.LBB12_660
.LBB12_551:
.Ltmp46:
.LBB12_552:
	move	$fp, $a0
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO9CFileBaseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB12_660
.LBB12_553:
.Ltmp57:
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_660
.LBB12_554:
.Ltmp276:
	b	.LBB12_557
.LBB12_555:                             # %.loopexit961
.Ltmp135:
	b	.LBB12_562
.LBB12_556:
.Ltmp282:
.LBB12_557:
	move	$fp, $a0
	b	.LBB12_573
.LBB12_558:
.Ltmp80:
	move	$fp, $a0
	b	.LBB12_660
.LBB12_559:
.Ltmp77:
	move	$fp, $a0
	b	.LBB12_660
.LBB12_560:
.Ltmp144:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_561:
.Ltmp122:
.LBB12_562:                             # %.body752
	move	$fp, $a0
.LBB12_563:                             # %.body752
	addi.d	$a0, $sp, 448
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z7CFolderD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_622
.LBB12_564:
.Ltmp298:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_565:
.Ltmp307:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_566:
.Ltmp304:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_567:
.Ltmp301:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_568:
.Ltmp32:
	move	$fp, $a0
	b	.LBB12_661
.LBB12_569:
.Ltmp208:
	b	.LBB12_616
.LBB12_570:
.Ltmp190:
	b	.LBB12_650
.LBB12_571:
.Ltmp289:
	ld.d	$a1, $sp, 1840
	move	$fp, $a0
	beqz	$a1, .LBB12_573
# %bb.572:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_573:
	addi.d	$a0, $sp, 448
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB12_660
.LBB12_574:
.Ltmp150:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_575:
.Ltmp147:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_576:
.Ltmp310:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_577:
.Ltmp29:
	move	$fp, $a0
	b	.LBB12_662
.LBB12_578:
.Ltmp26:
	move	$fp, $a0
	b	.LBB12_662
.LBB12_579:
.Ltmp23:
	b	.LBB12_632
.LBB12_580:
.Ltmp20:
	move	$fp, $a0
	ori	$a1, $zero, 72
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_663
.LBB12_581:
.Ltmp17:
	b	.LBB12_632
.LBB12_582:
.Ltmp100:
	move	$fp, $a0
	b	.LBB12_623
.LBB12_583:
.Ltmp273:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_584:
.Ltmp86:
	move	$fp, $a0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 584
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB12_660
.LBB12_585:
.Ltmp94:
	b	.LBB12_587
.LBB12_586:
.Ltmp91:
.LBB12_587:
	move	$fp, $a0
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB12_659
.LBB12_588:
.Ltmp119:
	b	.LBB12_621
.LBB12_589:
.Ltmp5:
	b	.LBB12_632
.LBB12_590:
.Ltmp52:
.LBB12_591:                             # %.body
	move	$fp, $a0
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	b	.LBB12_660
.LBB12_592:
.Ltmp41:
	move	$fp, $a0
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_660
.LBB12_593:
.Ltmp14:
	b	.LBB12_632
.LBB12_594:
.Ltmp261:
	b	.LBB12_640
.LBB12_595:
.Ltmp110:
	b	.LBB12_621
.LBB12_596:
.Ltmp164:
	move	$fp, $a0
	ori	$a1, $zero, 136
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_657
.LBB12_597:
.Ltmp97:
	move	$fp, $a0
	b	.LBB12_627
.LBB12_598:
.Ltmp156:
	b	.LBB12_636
.LBB12_599:
.Ltmp153:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_600:
.Ltmp245:
	move	$fp, $a0
	ori	$a1, $zero, 136
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_643
.LBB12_601:                             # %.loopexit.split-lp956
.Ltmp240:
	b	.LBB12_640
.LBB12_602:
.Ltmp170:
	b	.LBB12_636
.LBB12_603:
.Ltmp167:
	b	.LBB12_636
.LBB12_604:                             # %.loopexit955
.Ltmp248:
	b	.LBB12_640
.LBB12_605:
.Ltmp179:
	b	.LBB12_654
.LBB12_606:
.Ltmp270:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_607:
.Ltmp267:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_608:
.Ltmp237:
	b	.LBB12_640
.LBB12_609:
.Ltmp228:
	move	$fp, $a0
	ori	$a1, $zero, 184
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_645
.LBB12_610:
.Ltmp231:
	b	.LBB12_638
.LBB12_611:
.Ltmp234:
	move	$fp, $a0
	b	.LBB12_644
.LBB12_612:
.Ltmp214:
	b	.LBB12_616
.LBB12_613:
.Ltmp225:
	b	.LBB12_638
.LBB12_614:
.Ltmp11:
	b	.LBB12_632
.LBB12_615:
.Ltmp211:
.LBB12_616:                             # %_ZN11CStringBaseIwED2Ev.exit854
	move	$fp, $a0
	b	.LBB12_646
.LBB12_617:
.Ltmp184:
	ld.d	$a1, $sp, 424
	move	$fp, $a0
	beqz	$a1, .LBB12_655
# %bb.618:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_655
.LBB12_619:
.Ltmp187:
	b	.LBB12_654
.LBB12_620:
.Ltmp103:
.LBB12_621:
	move	$fp, $a0
.LBB12_622:
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB12_623:
	ld.d	$a0, $sp, 312
	beqz	$a0, .LBB12_625
# %bb.624:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp136:
	jirl	$ra, $a1, 0
.Ltmp137:
.LBB12_625:                             # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit759
	ld.d	$a0, $sp, 376
	beqz	$a0, .LBB12_627
# %bb.626:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp139:
	jirl	$ra, $a1, 0
.Ltmp140:
.LBB12_627:
	addi.d	$a0, $sp, 1312
	pcaddu18i	$ra, %call36(_ZN13CStreamBinderD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_657
.LBB12_628:
.Ltmp141:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_629:
.Ltmp138:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_630:                             # %.loopexit.split-lp.loopexit.split-lp
.Ltmp195:
	b	.LBB12_650
.LBB12_631:
.Ltmp8:
.LBB12_632:
	move	$fp, $a0
	b	.LBB12_663
.LBB12_633:
.Ltmp222:
	ld.d	$a1, $sp, 1312
	move	$fp, $a0
	beqz	$a1, .LBB12_645
# %bb.634:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_645
.LBB12_635:
.Ltmp159:
.LBB12_636:                             # %.body733
	move	$fp, $a0
	b	.LBB12_657
.LBB12_637:
.Ltmp217:
.LBB12_638:                             # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit853
	move	$fp, $a0
	b	.LBB12_645
.LBB12_639:
.Ltmp251:
.LBB12_640:                             # %.body839
	move	$fp, $a0
	b	.LBB12_643
.LBB12_641:
.Ltmp258:
	ld.d	$a1, $sp, 464
	move	$fp, $a0
	beqz	$a1, .LBB12_643
# %bb.642:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_643:                             # %.body839
	addi.d	$a0, $sp, 1312
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z7CFolderD2Ev)
	jirl	$ra, $ra, 0
.LBB12_644:
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 16
.Ltmp262:
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp263:
.LBB12_645:                             # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit853
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_646:                             # %_ZN11CStringBaseIwED2Ev.exit854
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_651
.LBB12_647:
.Ltmp264:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_648:                             # %.loopexit947
.Ltmp205:
	b	.LBB12_650
.LBB12_649:                             # %.loopexit.split-lp.loopexit
.Ltmp200:
.LBB12_650:                             # %.loopexit.split-lp
	move	$fp, $a0
.LBB12_651:                             # %.loopexit.split-lp
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_658
.LBB12_652:
.Ltmp173:
	move	$fp, $a0
	b	.LBB12_657
.LBB12_653:
.Ltmp176:
.LBB12_654:
	move	$fp, $a0
.LBB12_655:
	ld.d	$a0, $sp, 1328
	beqz	$a0, .LBB12_657
# %bb.656:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_657:                             # %_ZN8NArchive3N7z9CFileItemD2Ev.exit770
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
.LBB12_658:                             # %.body733
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CEncoderD1Ev)
	jirl	$ra, $ra, 0
.LBB12_659:
	addi.d	$a0, $sp, 584
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z22CCompressionMethodModeD2Ev)
	jirl	$ra, $ra, 0
.LBB12_660:                             # %.body
	addi.d	$a0, $sp, 672
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev)
	jirl	$ra, $ra, 0
.LBB12_661:
	addi.d	$a0, $sp, 704
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z14CThreadDecoderD2Ev)
	jirl	$ra, $ra, 0
.LBB12_662:
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
.Ltmp293:
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp294:
.LBB12_663:
	addi.d	$a0, $sp, 1248
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1280
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_664:
.Ltmp295:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword, .Lfunc_end12-_ZN8NArchive3N7z6UpdateEP9IInStreamPKNS0_18CArchiveDatabaseExERK13CObjectVectorINS0_11CUpdateItemEERNS0_11COutArchiveERNS0_16CArchiveDatabaseEP20ISequentialOutStreamP22IArchiveUpdateCallbackRKNS0_14CUpdateOptionsEP22ICryptoGetTextPassword
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
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
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin1          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin1          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin1          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin1          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin1          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp41-.Lfunc_begin1          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp41-.Lfunc_begin1          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp41-.Lfunc_begin1          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin1          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 19 <<
	.uleb128 .Ltmp50-.Ltmp40                #   Call between .Ltmp40 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin1          # >> Call Site 20 <<
	.uleb128 .Ltmp43-.Ltmp50                #   Call between .Ltmp50 and .Ltmp43
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 21 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin1          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin1          # >> Call Site 22 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin1          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin1          # >> Call Site 23 <<
	.uleb128 .Ltmp53-.Ltmp48                #   Call between .Ltmp48 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin1          # >> Call Site 24 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp77-.Lfunc_begin1          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin1          # >> Call Site 25 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin1          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin1          # >> Call Site 26 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp77-.Lfunc_begin1          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin1          # >> Call Site 27 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin1          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin1          # >> Call Site 28 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin1          #     jumps to .Ltmp65
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp75-.Lfunc_begin1          # >> Call Site 29 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin1          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin1          # >> Call Site 30 <<
	.uleb128 .Ltmp66-.Ltmp76                #   Call between .Ltmp76 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin1          # >> Call Site 31 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin1          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin1          # >> Call Site 32 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin1          #     jumps to .Ltmp74
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp78-.Lfunc_begin1          # >> Call Site 33 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin1          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin1          # >> Call Site 34 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin1          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin1          # >> Call Site 35 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin1          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin1          # >> Call Site 36 <<
	.uleb128 .Ltmp90-.Ltmp87                #   Call between .Ltmp87 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin1          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin1          # >> Call Site 37 <<
	.uleb128 .Ltmp92-.Ltmp90                #   Call between .Ltmp90 and .Ltmp92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin1          # >> Call Site 38 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin1          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin1          # >> Call Site 39 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin1          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin1         # >> Call Site 40 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin1         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin1         # >> Call Site 41 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin1         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin1         # >> Call Site 42 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin1         # >> Call Site 43 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin1         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin1         # >> Call Site 44 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin1          # >> Call Site 45 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin1         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin1         # >> Call Site 46 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin1         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin1         # >> Call Site 47 <<
	.uleb128 .Ltmp109-.Ltmp104              #   Call between .Ltmp104 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin1         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin1         # >> Call Site 48 <<
	.uleb128 .Ltmp111-.Ltmp109              #   Call between .Ltmp109 and .Ltmp111
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin1         # >> Call Site 49 <<
	.uleb128 .Ltmp118-.Ltmp111              #   Call between .Ltmp111 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin1         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin1         # >> Call Site 50 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin1         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin1         # >> Call Site 51 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp135-.Lfunc_begin1         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 52 <<
	.uleb128 .Ltmp142-.Ltmp124              #   Call between .Ltmp124 and .Ltmp142
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin1         # >> Call Site 53 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin1         #     jumps to .Ltmp144
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp143-.Lfunc_begin1         # >> Call Site 54 <<
	.uleb128 .Ltmp145-.Ltmp143              #   Call between .Ltmp143 and .Ltmp145
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin1         # >> Call Site 55 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin1         #     jumps to .Ltmp147
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp148-.Lfunc_begin1         # >> Call Site 56 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin1         #     jumps to .Ltmp150
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp149-.Lfunc_begin1         # >> Call Site 57 <<
	.uleb128 .Ltmp151-.Ltmp149              #   Call between .Ltmp149 and .Ltmp151
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin1         # >> Call Site 58 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin1         #     jumps to .Ltmp153
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp168-.Lfunc_begin1         # >> Call Site 59 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin1         # >> Call Site 60 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin1         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin1         # >> Call Site 61 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin1         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin1         # >> Call Site 62 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin1         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin1         # >> Call Site 63 <<
	.uleb128 .Ltmp183-.Ltmp180              #   Call between .Ltmp180 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin1         #     jumps to .Ltmp184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin1         # >> Call Site 64 <<
	.uleb128 .Ltmp185-.Ltmp183              #   Call between .Ltmp183 and .Ltmp185
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin1         # >> Call Site 65 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin1         #     jumps to .Ltmp187
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin1         # >> Call Site 66 <<
	.uleb128 .Ltmp128-.Ltmp186              #   Call between .Ltmp186 and .Ltmp128
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin1         # >> Call Site 67 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp135-.Lfunc_begin1         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin1         # >> Call Site 68 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin1         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin1         # >> Call Site 69 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin1         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin1         # >> Call Site 70 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin1         #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin1         # >> Call Site 71 <<
	.uleb128 .Ltmp194-.Ltmp191              #   Call between .Ltmp191 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin1         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin1         # >> Call Site 72 <<
	.uleb128 .Ltmp199-.Ltmp196              #   Call between .Ltmp196 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin1         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin1         # >> Call Site 73 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin1         #     jumps to .Ltmp208
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin1         # >> Call Site 74 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin1         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin1         # >> Call Site 75 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin1         #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin1         # >> Call Site 76 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin1         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin1         # >> Call Site 77 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp222-.Lfunc_begin1         #     jumps to .Ltmp222
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin1         # >> Call Site 78 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin1         # >> Call Site 79 <<
	.uleb128 .Ltmp221-.Ltmp220              #   Call between .Ltmp220 and .Ltmp221
	.uleb128 .Ltmp222-.Lfunc_begin1         #     jumps to .Ltmp222
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin1         # >> Call Site 80 <<
	.uleb128 .Ltmp223-.Ltmp221              #   Call between .Ltmp221 and .Ltmp223
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin1         # >> Call Site 81 <<
	.uleb128 .Ltmp224-.Ltmp223              #   Call between .Ltmp223 and .Ltmp224
	.uleb128 .Ltmp225-.Lfunc_begin1         #     jumps to .Ltmp225
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin1         # >> Call Site 82 <<
	.uleb128 .Ltmp227-.Ltmp226              #   Call between .Ltmp226 and .Ltmp227
	.uleb128 .Ltmp228-.Lfunc_begin1         #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin1         # >> Call Site 83 <<
	.uleb128 .Ltmp230-.Ltmp229              #   Call between .Ltmp229 and .Ltmp230
	.uleb128 .Ltmp231-.Lfunc_begin1         #     jumps to .Ltmp231
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin1         # >> Call Site 84 <<
	.uleb128 .Ltmp233-.Ltmp232              #   Call between .Ltmp232 and .Ltmp233
	.uleb128 .Ltmp234-.Lfunc_begin1         #     jumps to .Ltmp234
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin1         # >> Call Site 85 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp237-.Lfunc_begin1         #     jumps to .Ltmp237
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin1         # >> Call Site 86 <<
	.uleb128 .Ltmp242-.Ltmp241              #   Call between .Ltmp241 and .Ltmp242
	.uleb128 .Ltmp248-.Lfunc_begin1         #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin1         # >> Call Site 87 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin1         #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin1         # >> Call Site 88 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin1         #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin1         # >> Call Site 89 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin1         #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin1         # >> Call Site 90 <<
	.uleb128 .Ltmp257-.Ltmp254              #   Call between .Ltmp254 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp257-.Lfunc_begin1         # >> Call Site 91 <<
	.uleb128 .Ltmp259-.Ltmp257              #   Call between .Ltmp257 and .Ltmp259
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin1         # >> Call Site 92 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin1         # >> Call Site 93 <<
	.uleb128 .Ltmp265-.Ltmp260              #   Call between .Ltmp260 and .Ltmp265
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin1         # >> Call Site 94 <<
	.uleb128 .Ltmp266-.Ltmp265              #   Call between .Ltmp265 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin1         #     jumps to .Ltmp267
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp266-.Lfunc_begin1         # >> Call Site 95 <<
	.uleb128 .Ltmp268-.Ltmp266              #   Call between .Ltmp266 and .Ltmp268
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin1         # >> Call Site 96 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin1         #     jumps to .Ltmp270
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp269-.Lfunc_begin1         # >> Call Site 97 <<
	.uleb128 .Ltmp201-.Ltmp269              #   Call between .Ltmp269 and .Ltmp201
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin1         # >> Call Site 98 <<
	.uleb128 .Ltmp204-.Ltmp201              #   Call between .Ltmp201 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin1         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin1         # >> Call Site 99 <<
	.uleb128 .Ltmp271-.Ltmp204              #   Call between .Ltmp204 and .Ltmp271
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin1         # >> Call Site 100 <<
	.uleb128 .Ltmp272-.Ltmp271              #   Call between .Ltmp271 and .Ltmp272
	.uleb128 .Ltmp273-.Lfunc_begin1         #     jumps to .Ltmp273
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp272-.Lfunc_begin1         # >> Call Site 101 <<
	.uleb128 .Ltmp274-.Ltmp272              #   Call between .Ltmp272 and .Ltmp274
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin1         # >> Call Site 102 <<
	.uleb128 .Ltmp275-.Ltmp274              #   Call between .Ltmp274 and .Ltmp275
	.uleb128 .Ltmp276-.Lfunc_begin1         #     jumps to .Ltmp276
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin1         # >> Call Site 103 <<
	.uleb128 .Ltmp278-.Ltmp277              #   Call between .Ltmp277 and .Ltmp278
	.uleb128 .Ltmp279-.Lfunc_begin1         #     jumps to .Ltmp279
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin1         # >> Call Site 104 <<
	.uleb128 .Ltmp281-.Ltmp280              #   Call between .Ltmp280 and .Ltmp281
	.uleb128 .Ltmp282-.Lfunc_begin1         #     jumps to .Ltmp282
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin1         # >> Call Site 105 <<
	.uleb128 .Ltmp288-.Ltmp285              #   Call between .Ltmp285 and .Ltmp288
	.uleb128 .Ltmp289-.Lfunc_begin1         #     jumps to .Ltmp289
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin1         # >> Call Site 106 <<
	.uleb128 .Ltmp290-.Ltmp288              #   Call between .Ltmp288 and .Ltmp290
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin1         # >> Call Site 107 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin1         #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin1         # >> Call Site 108 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin1         #     jumps to .Ltmp298
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp297-.Lfunc_begin1         # >> Call Site 109 <<
	.uleb128 .Ltmp299-.Ltmp297              #   Call between .Ltmp297 and .Ltmp299
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin1         # >> Call Site 110 <<
	.uleb128 .Ltmp300-.Ltmp299              #   Call between .Ltmp299 and .Ltmp300
	.uleb128 .Ltmp301-.Lfunc_begin1         #     jumps to .Ltmp301
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp302-.Lfunc_begin1         # >> Call Site 111 <<
	.uleb128 .Ltmp303-.Ltmp302              #   Call between .Ltmp302 and .Ltmp303
	.uleb128 .Ltmp304-.Lfunc_begin1         #     jumps to .Ltmp304
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp305-.Lfunc_begin1         # >> Call Site 112 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin1         #     jumps to .Ltmp307
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp306-.Lfunc_begin1         # >> Call Site 113 <<
	.uleb128 .Ltmp308-.Ltmp306              #   Call between .Ltmp306 and .Ltmp308
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin1         # >> Call Site 114 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin1         #     jumps to .Ltmp310
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp309-.Lfunc_begin1         # >> Call Site 115 <<
	.uleb128 .Ltmp238-.Ltmp309              #   Call between .Ltmp309 and .Ltmp238
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin1         # >> Call Site 116 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.uleb128 .Ltmp240-.Lfunc_begin1         #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin1         # >> Call Site 117 <<
	.uleb128 .Ltmp125-.Ltmp239              #   Call between .Ltmp239 and .Ltmp125
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin1         # >> Call Site 118 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin1         #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin1         # >> Call Site 119 <<
	.uleb128 .Ltmp69-.Ltmp126               #   Call between .Ltmp126 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin1          # >> Call Site 120 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin1          #     jumps to .Ltmp71
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp70-.Lfunc_begin1          # >> Call Site 121 <<
	.uleb128 .Ltmp136-.Ltmp70               #   Call between .Ltmp70 and .Ltmp136
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin1         # >> Call Site 122 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin1         #     jumps to .Ltmp138
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp139-.Lfunc_begin1         # >> Call Site 123 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin1         #     jumps to .Ltmp141
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp140-.Lfunc_begin1         # >> Call Site 124 <<
	.uleb128 .Ltmp262-.Ltmp140              #   Call between .Ltmp140 and .Ltmp262
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin1         # >> Call Site 125 <<
	.uleb128 .Ltmp263-.Ltmp262              #   Call between .Ltmp262 and .Ltmp263
	.uleb128 .Ltmp264-.Lfunc_begin1         #     jumps to .Ltmp264
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp263-.Lfunc_begin1         # >> Call Site 126 <<
	.uleb128 .Ltmp293-.Ltmp263              #   Call between .Ltmp263 and .Ltmp293
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin1         # >> Call Site 127 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin1         #     jumps to .Ltmp295
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp294-.Lfunc_begin1         # >> Call Site 128 <<
	.uleb128 .Lfunc_end12-.Ltmp294          #   Call between .Ltmp294 and .Lfunc_end12
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
	.p2align	5                               # -- Begin function _ZN8NArchive3N7zL10WriteRangeEP9IInStreamP20ISequentialOutStreamyyP21ICompressProgressInfo
	.type	_ZN8NArchive3N7zL10WriteRangeEP9IInStreamP20ISequentialOutStreamyyP21ICompressProgressInfo,@function
_ZN8NArchive3N7zL10WriteRangeEP9IInStreamP20ISequentialOutStreamyyP21ICompressProgressInfo: # @_ZN8NArchive3N7zL10WriteRangeEP9IInStreamP20ISequentialOutStreamyyP21ICompressProgressInfo
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a5, $a0, 48
	move	$s1, $a4
	move	$s0, $a3
	move	$s2, $a1
	move	$a0, $s3
	move	$a1, $a2
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a5, 0
	bnez	$a0, .LBB13_11
# %bb.1:
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(_ZTV26CLimitedSequentialInStream)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTV26CLimitedSequentialInStream)
	move	$fp, $a0
	st.w	$zero, $a0, 8
	ld.d	$a2, $a1, 24
	addi.d	$a0, $a1, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 8
.Ltmp311:
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp312:
# %bb.2:                                # %.noexc
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB13_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp313:
	jirl	$ra, $a1, 0
.Ltmp314:
.LBB13_4:
	st.d	$s3, $fp, 16
	st.d	$s0, $fp, 24
	st.d	$zero, $fp, 32
	st.b	$zero, $fp, 40
.Ltmp316:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp317:
# %bb.5:
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9NCompress10CCopyCoderE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9NCompress10CCopyCoderE)
	st.w	$zero, $s3, 16
	addi.d	$a1, $a0, 16
	st.d	$a1, $s3, 0
	addi.d	$a1, $a0, 88
	ld.d	$a2, $a0, 24
	st.d	$a1, $s3, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $s3, 24
.Ltmp319:
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp320:
# %bb.6:                                # %_ZN9CMyComPtrI14ICompressCoderEC2EPS0_.exit
	ld.d	$a0, $s3, 0
	ld.d	$a6, $a0, 40
.Ltmp322:
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $s1
	jirl	$ra, $a6, 0
.Ltmp323:
# %bb.7:
	bnez	$a0, .LBB13_9
# %bb.8:
	ld.d	$a0, $s3, 32
	xor	$a0, $a0, $s0
	sltui	$a0, $a0, 1
	lu12i.w	$a1, -524284
	ori	$a1, $a1, 5
	masknez	$a0, $a1, $a0
.LBB13_9:
	move	$s0, $a0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 16
.Ltmp331:
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp332:
# %bb.10:                               # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit38
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp334:
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp335:
	move	$a0, $s0
.LBB13_11:                              # %_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB13_12:
.Ltmp336:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_13:
.Ltmp333:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_14:
.Ltmp324:
	ld.d	$a1, $s3, 0
	ld.d	$a1, $a1, 16
	move	$s0, $a0
.Ltmp325:
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp326:
	b	.LBB13_20
.LBB13_15:
.Ltmp327:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_16:
.Ltmp321:
	b	.LBB13_19
.LBB13_17:
.Ltmp318:
	b	.LBB13_19
.LBB13_18:
.Ltmp315:
.LBB13_19:                              # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit
	move	$s0, $a0
.LBB13_20:                              # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp328:
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp329:
# %bb.21:                               # %_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit41
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_22:
.Ltmp330:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN8NArchive3N7zL10WriteRangeEP9IInStreamP20ISequentialOutStreamyyP21ICompressProgressInfo, .Lfunc_end13-_ZN8NArchive3N7zL10WriteRangeEP9IInStreamP20ISequentialOutStreamyyP21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp311-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp311
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp314-.Ltmp311              #   Call between .Ltmp311 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin2         #     jumps to .Ltmp315
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp318-.Lfunc_begin2         #     jumps to .Ltmp318
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp320-.Ltmp319              #   Call between .Ltmp319 and .Ltmp320
	.uleb128 .Ltmp321-.Lfunc_begin2         #     jumps to .Ltmp321
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp322-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp323-.Ltmp322              #   Call between .Ltmp322 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin2         #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp332-.Ltmp331              #   Call between .Ltmp331 and .Ltmp332
	.uleb128 .Ltmp333-.Lfunc_begin2         #     jumps to .Ltmp333
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp334-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp335-.Ltmp334              #   Call between .Ltmp334 and .Ltmp335
	.uleb128 .Ltmp336-.Lfunc_begin2         #     jumps to .Ltmp336
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp335-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp325-.Ltmp335              #   Call between .Ltmp335 and .Ltmp325
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin2         #     jumps to .Ltmp327
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp326-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp328-.Ltmp326              #   Call between .Ltmp326 and .Ltmp328
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp329-.Ltmp328              #   Call between .Ltmp328 and .Ltmp329
	.uleb128 .Ltmp330-.Lfunc_begin2         #     jumps to .Ltmp330
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp329-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Lfunc_end13-.Ltmp329          #   Call between .Ltmp329 and .Lfunc_end13
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
	.p2align	5                               # -- Begin function _ZN8NArchive3N7zL20CompareFolderRepacksEPKNS0_13CFolderRepackES3_Pv
	.type	_ZN8NArchive3N7zL20CompareFolderRepacksEPKNS0_13CFolderRepackES3_Pv,@function
_ZN8NArchive3N7zL20CompareFolderRepacksEPKNS0_13CFolderRepackES3_Pv: # @_ZN8NArchive3N7zL20CompareFolderRepacksEPKNS0_13CFolderRepackES3_Pv
# %bb.0:
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a1, 4
	bne	$a3, $a4, .LBB14_15
# %bb.1:
	ld.w	$a3, $a0, 0
	ld.d	$a0, $a2, 112
	ld.w	$a1, $a1, 0
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a0, $a2
	slli.d	$a4, $a1, 3
	ldx.d	$a4, $a0, $a4
	ld.w	$a5, $a2, 12
	ld.w	$a0, $a4, 12
	bne	$a5, $a0, .LBB14_21
# %bb.2:                                # %.preheader57.i
	ori	$a0, $zero, 1
	blt	$a5, $a0, .LBB14_16
# %bb.3:                                # %.lr.ph.i
	ld.d	$a6, $a2, 16
	ld.d	$a7, $a4, 16
	move	$t0, $zero
	.p2align	4, , 16
.LBB14_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_10 Depth 2
	slli.d	$a0, $t0, 3
	ldx.d	$t1, $a6, $a0
	ldx.d	$t2, $a7, $a0
	ld.w	$a0, $t1, 32
	ld.w	$t3, $t2, 32
	bne	$a0, $t3, .LBB14_12
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=1
	ld.w	$a0, $t1, 36
	ld.w	$t3, $t2, 36
	bne	$a0, $t3, .LBB14_12
# %bb.6:                                #   in Loop: Header=BB14_4 Depth=1
	ld.d	$a0, $t1, 0
	ld.d	$t3, $t2, 0
	bne	$a0, $t3, .LBB14_12
# %bb.7:                                #   in Loop: Header=BB14_4 Depth=1
	ld.d	$a0, $t1, 16
	ld.d	$t3, $t2, 16
	bne	$a0, $t3, .LBB14_12
# %bb.8:                                # %.preheader.i.i.i
                                        #   in Loop: Header=BB14_4 Depth=1
	beqz	$a0, .LBB14_13
# %bb.9:                                #   in Loop: Header=BB14_4 Depth=1
	ld.d	$t1, $t1, 24
	ld.d	$t2, $t2, 24
	.p2align	4, , 16
.LBB14_10:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t3, $t1, 0
	ld.bu	$t4, $t2, 0
	bne	$t3, $t4, .LBB14_14
# %bb.11:                               #   in Loop: Header=BB14_10 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, 1
	bnez	$a0, .LBB14_10
	b	.LBB14_13
	.p2align	4, , 16
.LBB14_12:                              #   in Loop: Header=BB14_4 Depth=1
	sltu	$t1, $a0, $t3
	sltu	$a0, $t3, $a0
	sub.d	$a0, $a0, $t1
	bnez	$a0, .LBB14_22
.LBB14_13:                              # %_ZN8NArchive3N7zL13CompareCodersERKNS0_10CCoderInfoES3_.exit.thread.i
                                        #   in Loop: Header=BB14_4 Depth=1
	addi.d	$t0, $t0, 1
	bne	$t0, $a5, .LBB14_4
	b	.LBB14_16
.LBB14_14:                              # %.loopexit.split.loop.exit5.i.i.i
                                        #   in Loop: Header=BB14_4 Depth=1
	sltu	$a0, $t3, $t4
	sltu	$t1, $t4, $t3
	sub.d	$a0, $t1, $a0
	beqz	$a0, .LBB14_13
	b	.LBB14_22
.LBB14_15:
	slt	$a0, $a3, $a4
	slt	$a1, $a4, $a3
	sub.d	$a0, $a1, $a0
	ret
.LBB14_16:                              # %._crit_edge.i
	ld.w	$a5, $a2, 44
	ld.w	$a0, $a4, 44
	bne	$a5, $a0, .LBB14_21
# %bb.17:                               # %.preheader.i
	ori	$a0, $zero, 1
	blt	$a5, $a0, .LBB14_24
# %bb.18:                               # %.lr.ph64.i
	ld.d	$a0, $a4, 48
	ld.d	$a4, $a2, 48
	addi.d	$a2, $a0, 4
	addi.d	$a4, $a4, 4
	.p2align	4, , 16
.LBB14_19:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a4, -4
	ld.w	$a6, $a2, -4
	ld.w	$a7, $a4, 0
	ld.w	$t0, $a2, 0
	sltu	$t1, $a0, $a6
	sltu	$t2, $a6, $a0
	sub.d	$t1, $t2, $t1
	xor	$a0, $a0, $a6
	sltui	$a0, $a0, 1
	sltu	$a6, $a7, $t0
	sltu	$a7, $t0, $a7
	sub.d	$a6, $a7, $a6
	masknez	$a7, $t1, $a0
	maskeqz	$a0, $a6, $a0
	or	$a0, $a0, $a7
	bnez	$a0, .LBB14_22
# %bb.20:                               #   in Loop: Header=BB14_19 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB14_19
	b	.LBB14_24
.LBB14_21:
	slt	$a2, $a5, $a0
	slt	$a0, $a0, $a5
	sub.d	$a0, $a0, $a2
.LBB14_22:                              # %_ZN8NArchive3N7zL14CompareFoldersERKNS0_7CFolderES3_.exit
	beqz	$a0, .LBB14_24
# %bb.23:
	ret
.LBB14_24:                              # %_ZN8NArchive3N7zL14CompareFoldersERKNS0_7CFolderES3_.exit.thread
	slt	$a0, $a3, $a1
	slt	$a1, $a1, $a3
	sub.d	$a0, $a1, $a0
	ret
.Lfunc_end14:
	.size	_ZN8NArchive3N7zL20CompareFolderRepacksEPKNS0_13CFolderRepackES3_Pv, .Lfunc_end14-_ZN8NArchive3N7zL20CompareFolderRepacksEPKNS0_13CFolderRepackES3_Pv
                                        # -- End function
	.section	.text._ZN8NArchive3N7z14CThreadDecoderC2Ev,"axG",@progbits,_ZN8NArchive3N7z14CThreadDecoderC2Ev,comdat
	.weak	_ZN8NArchive3N7z14CThreadDecoderC2Ev # -- Begin function _ZN8NArchive3N7z14CThreadDecoderC2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z14CThreadDecoderC2Ev,@function
_ZN8NArchive3N7z14CThreadDecoderC2Ev:   # @_ZN8NArchive3N7z14CThreadDecoderC2Ev
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	st.w	$zero, $a0, 8
	st.w	$zero, $a0, 112
	st.w	$zero, $a0, 224
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive3N7z14CThreadDecoderE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NArchive3N7z14CThreadDecoderE+16)
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 240
	st.d	$zero, $fp, 256
	st.d	$zero, $fp, 288
	addi.d	$s0, $fp, 296
.Ltmp337:
	ori	$a1, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CDecoderC1Eb)
	jirl	$ra, $ra, 0
.Ltmp338:
# %bb.1:
	st.b	$zero, $fp, 528
	st.w	$s1, $fp, 532
.Ltmp340:
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp341:
# %bb.2:
.Ltmp342:
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z17CFolderOutStream2C2Ev)
	jirl	$ra, $ra, 0
.Ltmp343:
# %bb.3:
	ld.d	$a0, $s2, 0
	st.d	$s2, $fp, 248
	ld.d	$a1, $a0, 8
.Ltmp345:
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp346:
# %bb.4:                                # %.noexc
	ld.d	$a0, $fp, 256
	beqz	$a0, .LBB15_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp347:
	jirl	$ra, $a1, 0
.Ltmp348:
.LBB15_6:
	st.d	$s2, $fp, 256
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 236
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB15_7:
.Ltmp344:
	move	$s1, $a0
	ori	$a1, $zero, 80
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB15_10
.LBB15_8:
.Ltmp339:
	move	$s1, $a0
	b	.LBB15_11
.LBB15_9:
.Ltmp349:
	move	$s1, $a0
.LBB15_10:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CDecoderD2Ev)
	jirl	$ra, $ra, 0
.LBB15_11:
	ld.d	$a0, $fp, 288
	beqz	$a0, .LBB15_13
# %bb.12:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp350:
	jirl	$ra, $a1, 0
.Ltmp351:
.LBB15_13:                              # %_ZN9CMyComPtrI22ICryptoGetTextPasswordED2Ev.exit
	ld.d	$a0, $fp, 256
	beqz	$a0, .LBB15_15
# %bb.14:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp353:
	jirl	$ra, $a1, 0
.Ltmp354:
.LBB15_15:                              # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	ld.d	$a0, $fp, 240
	beqz	$a0, .LBB15_17
# %bb.16:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp356:
	jirl	$ra, $a1, 0
.Ltmp357:
.LBB15_17:                              # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CVirtThreadD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_18:
.Ltmp358:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB15_19:
.Ltmp355:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB15_20:
.Ltmp352:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN8NArchive3N7z14CThreadDecoderC2Ev, .Lfunc_end15-_ZN8NArchive3N7z14CThreadDecoderC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z14CThreadDecoderC2Ev,"aG",@progbits,_ZN8NArchive3N7z14CThreadDecoderC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp337-.Lfunc_begin3         # >> Call Site 1 <<
	.uleb128 .Ltmp338-.Ltmp337              #   Call between .Ltmp337 and .Ltmp338
	.uleb128 .Ltmp339-.Lfunc_begin3         #     jumps to .Ltmp339
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp340-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp341-.Ltmp340              #   Call between .Ltmp340 and .Ltmp341
	.uleb128 .Ltmp349-.Lfunc_begin3         #     jumps to .Ltmp349
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp342-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp343-.Ltmp342              #   Call between .Ltmp342 and .Ltmp343
	.uleb128 .Ltmp344-.Lfunc_begin3         #     jumps to .Ltmp344
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp348-.Ltmp345              #   Call between .Ltmp345 and .Ltmp348
	.uleb128 .Ltmp349-.Lfunc_begin3         #     jumps to .Ltmp349
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp350-.Ltmp348              #   Call between .Ltmp348 and .Ltmp350
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp351-.Ltmp350              #   Call between .Ltmp350 and .Ltmp351
	.uleb128 .Ltmp352-.Lfunc_begin3         #     jumps to .Ltmp352
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp353-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp354-.Ltmp353              #   Call between .Ltmp353 and .Ltmp354
	.uleb128 .Ltmp355-.Lfunc_begin3         #     jumps to .Ltmp355
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp356-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp357-.Ltmp356              #   Call between .Ltmp356 and .Ltmp357
	.uleb128 .Ltmp358-.Lfunc_begin3         #     jumps to .Ltmp358
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp357-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Lfunc_end15-.Ltmp357          #   Call between .Ltmp357 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_ # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_,@function
_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_: # @_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	ori	$a0, $zero, 4
	st.d	$a0, $fp, 24
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a0, $fp, 0
.Ltmp359:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp360:
# %bb.1:                                # %.noexc.i.i
	ld.w	$s3, $s1, 12
	ld.w	$a0, $fp, 12
	add.w	$a1, $a0, $s3
.Ltmp361:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp362:
# %bb.2:                                # %.noexc3.i.i
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB16_6
# %bb.3:                                # %.lr.ph.i.i.i.i
	move	$s2, $zero
	slli.d	$s3, $s3, 2
	.p2align	4, , 16
.LBB16_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 16
	ldx.w	$s4, $a0, $s2
.Ltmp364:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp365:
# %bb.5:                                # %.noexc4.i.i
                                        #   in Loop: Header=BB16_4 Depth=1
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$s4, $a1, $a0
	ld.w	$a0, $fp, 12
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 4
	st.w	$a0, $fp, 12
	bne	$s3, $s2, .LBB16_4
.LBB16_6:                               # %_ZN8NArchive3N7z11CSolidGroupC2ERKS1_.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$fp, $a1, $a2
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, 12
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB16_7:                               # %.loopexit.split-lp.i.i
.Ltmp363:
	b	.LBB16_9
.LBB16_8:                               # %.loopexit.i.i
.Ltmp366:
.LBB16_9:                               # %.body
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_, .Lfunc_end16-_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE3AddERKS2_,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp359-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp359
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp359-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp362-.Ltmp359              #   Call between .Ltmp359 and .Ltmp362
	.uleb128 .Ltmp363-.Lfunc_begin4         #     jumps to .Ltmp363
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp364-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp365-.Ltmp364              #   Call between .Ltmp364 and .Ltmp365
	.uleb128 .Ltmp366-.Lfunc_begin4         #     jumps to .Ltmp366
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp365-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Lfunc_end16-.Ltmp365          #   Call between .Ltmp365 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
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
	bne	$s4, $s5, .LBB17_2
# %bb.1:
	move	$s2, $s3
	b	.LBB17_6
.LBB17_2:
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
	blt	$s5, $a1, .LBB17_4
# %bb.3:                                # %._crit_edge.thread.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	b	.LBB17_5
.LBB17_4:
	move	$a0, $zero
.LBB17_5:
	st.d	$s2, $fp, 0
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $fp, 12
	.p2align	4, , 16
.LBB17_6:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$a1, $s2, 4
	st.w	$a0, $s2, 0
	move	$s2, $a1
	bnez	$a0, .LBB17_6
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
.Lfunc_end17:
	.size	_ZN11CStringBaseIwEaSEPKw, .Lfunc_end17-_ZN11CStringBaseIwEaSEPKw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_,"axG",@progbits,_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_,comdat
	.weak	_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_ # -- Begin function _ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_
	.p2align	5
	.type	_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_,@function
_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_: # @_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_
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
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 12
	ld.w	$a0, $fp, 12
	add.w	$a1, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	blt	$s1, $s2, .LBB18_3
# %bb.1:                                # %.lr.ph.i.i
	move	$s3, $zero
	slli.d	$s1, $s1, 3
	.p2align	4, , 16
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.d	$a1, $a0, $s3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	bne	$s1, $s3, .LBB18_2
.LBB18_3:                               # %_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEEaSERKS3_.exit
	addi.d	$s1, $fp, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s0, 44
	ld.w	$a0, $fp, 44
	add.w	$a1, $a0, $s3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	blt	$s3, $s2, .LBB18_6
# %bb.4:                                # %.lr.ph.i.i5
	move	$s2, $zero
	slli.d	$s3, $s3, 4
	.p2align	4, , 16
.LBB18_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 48
	vldx	$vr0, $a0, $s2
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ld.d	$a1, $fp, 48
	slli.d	$a0, $a0, 4
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vstx	$vr0, $a1, $a0
	ld.w	$a0, $fp, 44
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 16
	st.w	$a0, $fp, 44
	bne	$s3, $s2, .LBB18_5
.LBB18_6:                               # %_ZN13CRecordVectorIN8NArchive3N7z5CBindEEaSERKS3_.exit
	ld.b	$a0, $s0, 68
	st.b	$a0, $fp, 68
	ld.w	$a0, $s0, 64
	st.w	$a0, $fp, 64
	beq	$s0, $fp, .LBB18_16
# %bb.7:
	st.w	$zero, $fp, 80
	ld.d	$s2, $fp, 72
	ld.w	$a0, $s0, 80
	ld.w	$s4, $fp, 84
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB18_9
# %bb.8:
	move	$s1, $s2
	b	.LBB18_13
.LBB18_9:
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
	blt	$s4, $a1, .LBB18_11
# %bb.10:                               # %._crit_edge.thread.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 80
	b	.LBB18_12
.LBB18_11:
	move	$a0, $zero
.LBB18_12:
	st.d	$s1, $fp, 72
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 84
.LBB18_13:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $s0, 72
	.p2align	4, , 16
.LBB18_14:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB18_14
# %bb.15:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.w	$a0, $s0, 80
	st.w	$a0, $fp, 80
.LBB18_16:                              # %_ZN11CStringBaseIwEaSERKS0_.exit
	move	$a0, $fp
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end18:
	.size	_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_, .Lfunc_end18-_ZN8NArchive3N7z22CCompressionMethodModeaSERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive3N7z7CFolderD2Ev,"axG",@progbits,_ZN8NArchive3N7z7CFolderD2Ev,comdat
	.weak	_ZN8NArchive3N7z7CFolderD2Ev    # -- Begin function _ZN8NArchive3N7z7CFolderD2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z7CFolderD2Ev,@function
_ZN8NArchive3N7z7CFolderD2Ev:           # @_ZN8NArchive3N7z7CFolderD2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
.Ltmp367:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp368:
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB19_2:
.Ltmp369:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN8NArchive3N7z7CFolderD2Ev, .Lfunc_end19-_ZN8NArchive3N7z7CFolderD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z7CFolderD2Ev,"aG",@progbits,_ZN8NArchive3N7z7CFolderD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp367-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp367
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp367-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp368-.Ltmp367              #   Call between .Ltmp367 and .Ltmp368
	.uleb128 .Ltmp369-.Lfunc_begin5         #     jumps to .Ltmp369
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp368-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Lfunc_end19-.Ltmp368          #   Call between .Ltmp368 and .Lfunc_end19
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
	.section	.text._ZN13CStreamBinderD2Ev,"axG",@progbits,_ZN13CStreamBinderD2Ev,comdat
	.weak	_ZN13CStreamBinderD2Ev          # -- Begin function _ZN13CStreamBinderD2Ev
	.p2align	5
	.type	_ZN13CStreamBinderD2Ev,@function
_ZN13CStreamBinderD2Ev:                 # @_ZN13CStreamBinderD2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	ld.d	$s0, $a0, 152
	beqz	$s0, .LBB20_4
# %bb.1:
	ld.bu	$a0, $s0, 88
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB20_3
# %bb.2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(pthread_cond_destroy)
	jirl	$ra, $ra, 0
.LBB20_3:                               # %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit
	ori	$a1, $zero, 96
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_4:
	st.d	$zero, $fp, 152
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	addi.d	$s0, $a0, %pc_lo12(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	st.d	$s0, $fp, 128
	st.d	$zero, $fp, 136
	addi.d	$a0, $fp, 24
.Ltmp370:
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp371:
# %bb.5:                                # %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit
	st.d	$s0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB20_6:
.Ltmp372:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN13CStreamBinderD2Ev, .Lfunc_end20-_ZN13CStreamBinderD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CStreamBinderD2Ev,"aG",@progbits,_ZN13CStreamBinderD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp370-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp370
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp370-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp371-.Ltmp370              #   Call between .Ltmp370 and .Ltmp371
	.uleb128 .Ltmp372-.Lfunc_begin6         #     jumps to .Ltmp372
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp371-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Lfunc_end20-.Ltmp371          #   Call between .Ltmp371 and .Lfunc_end20
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
	.text
	.p2align	5                               # -- Begin function _ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E
	.type	_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E,@function
_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E: # @_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E
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
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a1, $a0, 40
	addi.d	$a0, $sp, 0
	addi.d	$s2, $sp, 0
	pcaddu18i	$ra, %call36(_ZN8NArchive9NItemName13MakeLegalNameERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 16
	beq	$s2, $a0, .LBB21_3
# %bb.1:
	ld.d	$s3, $fp, 16
	ld.w	$a0, $sp, 8
	ld.w	$s5, $fp, 28
	st.w	$zero, $fp, 24
	addi.w	$s4, $a0, 1
	st.w	$zero, $s3, 0
	bne	$s4, $s5, .LBB21_4
# %bb.2:
	move	$s2, $s3
	b	.LBB21_9
.LBB21_3:                               # %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge
	ld.d	$a0, $sp, 0
	bnez	$a0, .LBB21_12
	b	.LBB21_13
.LBB21_4:
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp373:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp374:
# %bb.5:                                # %.noexc
	move	$s2, $a0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB21_7
# %bb.6:                                # %._crit_edge.thread.i.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	b	.LBB21_8
.LBB21_7:
	move	$a0, $zero
.LBB21_8:
	st.d	$s2, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $fp, 28
.LBB21_9:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $sp, 0
	move	$a1, $zero
	.p2align	4, , 16
.LBB21_10:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB21_10
# %bb.11:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.w	$a1, $sp, 8
	st.w	$a1, $fp, 24
	beqz	$a0, .LBB21_13
.LBB21_12:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB21_13:                              # %_ZN11CStringBaseIwED2Ev.exit
	ld.bu	$a1, $s0, 64
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB21_15
# %bb.14:
	ld.w	$a1, $s0, 56
	st.b	$a0, $fp, 35
	st.w	$a1, $fp, 8
.LBB21_15:                              # %_ZNK8NArchive3N7z11CUpdateItem9HasStreamEv.exit
	ld.b	$a0, $s0, 65
	vld	$vr0, $s0, 8
	st.b	$a0, $s1, 32
	vst	$vr0, $s1, 0
	ld.h	$a0, $s0, 66
	st.h	$a0, $s1, 33
	ld.d	$a0, $s0, 24
	ld.b	$a1, $s0, 62
	st.d	$a0, $s1, 16
	ld.d	$a0, $s0, 32
	ld.b	$a2, $s0, 63
	st.b	$a1, $s1, 36
	st.b	$zero, $s1, 35
	st.d	$a0, $fp, 0
	st.b	$a2, $fp, 33
	ld.b	$a1, $s0, 62
	or	$a1, $a2, $a1
	sltu	$a0, $zero, $a0
	andn	$a0, $a0, $a1
	st.b	$a0, $fp, 32
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
.LBB21_16:
.Ltmp375:
	ld.d	$a1, $sp, 0
	move	$fp, $a0
	beqz	$a1, .LBB21_18
# %bb.17:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB21_18:                              # %_ZN11CStringBaseIwED2Ev.exit27
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E, .Lfunc_end21-_ZN8NArchive3N7zL24FromUpdateItemToFileItemERKNS0_11CUpdateItemERNS0_9CFileItemERNS0_10CFileItem2E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table21:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp373-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp373
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp373-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp374-.Ltmp373              #   Call between .Ltmp373 and .Ltmp374
	.uleb128 .Ltmp375-.Lfunc_begin7         #     jumps to .Ltmp375
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp374-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Lfunc_end21-.Ltmp374          #   Call between .Ltmp374 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb,"axG",@progbits,_ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb,comdat
	.weak	_ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb # -- Begin function _ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb
	.p2align	5
	.type	_ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb,@function
_ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb: # @_ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
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
	st.d	$a2, $a0, 0
	st.w	$a1, $a0, 8
	st.d	$zero, $a0, 12
	st.w	$zero, $a0, 20
	beqz	$a3, .LBB22_41
# %bb.1:
	move	$fp, $a0
	ld.w	$a0, $a2, 48
	beqz	$a0, .LBB22_6
# %bb.2:
	addi.d	$a1, $a2, 40
	ld.d	$a2, $a2, 40
	slli.d	$a4, $a0, 2
	addi.d	$a5, $a4, -4
	ori	$a7, $zero, 47
	addi.w	$a6, $zero, -1
	addi.w	$a3, $zero, -4
	.p2align	4, , 16
.LBB22_3:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$t0, $a2, $a5
	beq	$t0, $a7, .LBB22_7
# %bb.4:                                #   in Loop: Header=BB22_3 Depth=1
	addi.d	$a5, $a5, -4
	bne	$a5, $a3, .LBB22_3
# %bb.5:
	move	$a5, $a6
	b	.LBB22_8
.LBB22_6:                               # %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit.thread
	st.w	$zero, $fp, 16
	b	.LBB22_40
.LBB22_7:
	srli.d	$a5, $a5, 2
.LBB22_8:                               # %_ZN8NArchive3N7zL18GetReverseSlashPosERK11CStringBaseIwE.exit
	addi.w	$a5, $a5, 0
	slt	$a7, $a6, $a5
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $a5, $a7
	or	$a6, $a7, $a6
	addi.d	$a6, $a6, 1
	st.w	$a6, $fp, 16
	addi.d	$a4, $a4, -4
	ori	$a6, $zero, 46
	.p2align	4, , 16
.LBB22_9:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a7, $a2, $a4
	beq	$a7, $a6, .LBB22_11
# %bb.10:                               #   in Loop: Header=BB22_9 Depth=1
	addi.d	$a4, $a4, -4
	bne	$a4, $a3, .LBB22_9
	b	.LBB22_40
.LBB22_11:                              # %_ZNK11CStringBaseIwE11ReverseFindEw.exit
	srli.d	$a2, $a4, 2
	addi.w	$a3, $a2, 0
	bltz	$a3, .LBB22_40
# %bb.12:                               # %_ZNK11CStringBaseIwE11ReverseFindEw.exit
	blt	$a3, $a5, .LBB22_40
# %bb.13:
	addi.w	$a2, $a2, 1
	st.w	$a2, $fp, 12
	sub.w	$a3, $a0, $a2
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 16
	beqz	$a0, .LBB22_56
# %bb.14:
	ld.d	$a0, $sp, 8
.Ltmp376:
	pcaddu18i	$ra, %call36(_Z13MyStringLowerPw)
	jirl	$ra, $ra, 0
.Ltmp377:
# %bb.15:                               # %_ZN11CStringBaseIwE9MakeLowerEv.exit
.Ltmp379:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp380:
# %bb.16:                               # %_ZN11CStringBaseIcEC2Ev.exit
	move	$s0, $a0
	ld.w	$a0, $sp, 16
	ori	$a1, $zero, 1
	st.b	$zero, $s0, 0
	blt	$a0, $a1, .LBB22_42
# %bb.17:                               # %.lr.ph.preheader
	ld.d	$a1, $sp, 8
	ld.w	$s5, $a1, 0
	move	$s4, $zero
	ori	$s3, $zero, 127
	blt	$s3, $s5, .LBB22_43
# %bb.18:                               # %.lr.ph118.preheader
	move	$s6, $zero
	ori	$s7, $zero, 1
	ori	$s1, $zero, 4
	.p2align	4, , 16
.LBB22_19:                              # %.lr.ph118
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_32 Depth 2
                                        #     Child Loop BB22_29 Depth 2
                                        #     Child Loop BB22_35 Depth 2
	nor	$a0, $s4, $zero
	add.w	$a0, $s1, $a0
	bgtz	$a0, .LBB22_38
# %bb.20:                               #   in Loop: Header=BB22_19 Depth=1
	ori	$a1, $zero, 64
	slt	$a1, $a1, $s1
	bstrpick.d	$a2, $s1, 31, 1
	ori	$a3, $zero, 8
	slt	$a3, $a3, $s1
	ori	$a4, $zero, 4
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 16
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	add.w	$a2, $a1, $a0
	slti	$a2, $a2, 1
	sub.d	$a0, $s7, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	addi.w	$s8, $a0, 1
	beq	$s8, $s1, .LBB22_38
# %bb.21:                               #   in Loop: Header=BB22_19 Depth=1
.Ltmp382:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp383:
# %bb.22:                               # %.noexc
                                        #   in Loop: Header=BB22_19 Depth=1
	move	$s2, $a0
	blt	$s1, $s7, .LBB22_37
# %bb.23:                               # %.preheader.i.i.i
                                        #   in Loop: Header=BB22_19 Depth=1
	beqz	$s6, .LBB22_36
# %bb.24:                               # %iter.check
                                        #   in Loop: Header=BB22_19 Depth=1
	move	$a0, $zero
	ori	$a1, $zero, 16
	bltu	$s6, $a1, .LBB22_35
# %bb.25:                               # %iter.check
                                        #   in Loop: Header=BB22_19 Depth=1
	sub.d	$a1, $s2, $s0
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB22_35
# %bb.26:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB22_19 Depth=1
	ori	$a0, $zero, 32
	bgeu	$s6, $a0, .LBB22_31
# %bb.27:                               #   in Loop: Header=BB22_19 Depth=1
	move	$a0, $zero
.LBB22_28:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB22_19 Depth=1
	move	$a1, $s6
	bstrins.d	$a1, $zero, 3, 0
	bstrpick.d	$a4, $s6, 62, 4
	sub.d	$a1, $a0, $a1
	add.d	$a2, $s2, $a0
	add.d	$a3, $s0, $a0
	slli.d	$a0, $a4, 4
.LBB22_29:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB22_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB22_29
# %bb.30:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB22_19 Depth=1
	bne	$s6, $a0, .LBB22_35
	b	.LBB22_36
.LBB22_31:                              # %vector.ph
                                        #   in Loop: Header=BB22_19 Depth=1
	move	$a1, $s6
	bstrins.d	$a1, $zero, 4, 0
	bstrpick.d	$a0, $s6, 62, 5
	slli.d	$a0, $a0, 5
	addi.d	$a2, $s2, 16
	addi.d	$a3, $s0, 16
.LBB22_32:                              # %vector.body
                                        #   Parent Loop BB22_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a1, $a1, -32
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a1, .LBB22_32
# %bb.33:                               # %middle.block
                                        #   in Loop: Header=BB22_19 Depth=1
	beq	$s6, $a0, .LBB22_36
# %bb.34:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB22_19 Depth=1
	andi	$a1, $s6, 16
	bnez	$a1, .LBB22_28
	.p2align	4, , 16
.LBB22_35:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB22_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a1, $s0, $a0
	stx.b	$a1, $s2, $a0
	addi.d	$a0, $a0, 1
	bne	$s6, $a0, .LBB22_35
.LBB22_36:                              # %._crit_edge.thread.i.i.i
                                        #   in Loop: Header=BB22_19 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB22_37:                              #   in Loop: Header=BB22_19 Depth=1
	stx.b	$zero, $s2, $s6
	move	$s0, $s2
	move	$s1, $s8
	.p2align	4, , 16
.LBB22_38:                              #   in Loop: Header=BB22_19 Depth=1
	ld.w	$a0, $sp, 16
	stx.b	$s5, $s0, $s6
	addi.d	$s6, $s6, 1
	addi.w	$s4, $s4, 1
	stx.b	$zero, $s0, $s6
	bge	$s6, $a0, .LBB22_43
# %bb.39:                               # %.lr.ph
                                        #   in Loop: Header=BB22_19 Depth=1
	ld.d	$a1, $sp, 8
	slli.d	$a2, $s6, 2
	ldx.w	$s5, $a1, $a2
	bge	$s3, $s5, .LBB22_19
	b	.LBB22_43
.LBB22_40:                              # %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread
	st.w	$a0, $fp, 12
.LBB22_41:
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
.LBB22_42:
	move	$s4, $zero
.LBB22_43:                              # %._crit_edge
	bne	$s4, $a0, .LBB22_54
# %bb.44:                               # %.preheader.outer.preheader
	addi.d	$a1, $s0, 1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 1
	ori	$a2, $zero, 32
	.p2align	4, , 16
.LBB22_45:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_49 Depth 2
                                        #     Child Loop BB22_52 Depth 2
	ld.bu	$a4, $a3, 0
	addi.d	$a3, $a3, 1
	beq	$a4, $a2, .LBB22_45
# %bb.46:                               # %.preheader
                                        #   in Loop: Header=BB22_45 Depth=1
	beqz	$a4, .LBB22_55
# %bb.47:                               # %.preheader.i
                                        #   in Loop: Header=BB22_45 Depth=1
	ld.bu	$a6, $s0, 0
	andi	$a5, $a4, 223
	or	$a5, $a6, $a5
	beqz	$a5, .LBB22_55
# %bb.48:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB22_45 Depth=1
	move	$a5, $zero
	.p2align	4, , 16
.LBB22_49:                              # %.lr.ph.i
                                        #   Parent Loop BB22_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$a4, $a6, .LBB22_51
# %bb.50:                               #   in Loop: Header=BB22_49 Depth=2
	ldx.b	$a7, $a3, $a5
	ldx.bu	$a6, $a1, $a5
	andi	$a4, $a7, 255
	andi	$a7, $a7, 223
	or	$a7, $a6, $a7
	addi.d	$a5, $a5, 1
	bnez	$a7, .LBB22_49
	b	.LBB22_55
.LBB22_51:                              #   in Loop: Header=BB22_45 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a3, $a3, $a5
	beqz	$a4, .LBB22_55
.LBB22_52:                              #   Parent Loop BB22_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a4, $a2, .LBB22_45
# %bb.53:                               #   in Loop: Header=BB22_52 Depth=2
	ld.bu	$a4, $a3, 0
	addi.d	$a3, $a3, 1
	bnez	$a4, .LBB22_52
	b	.LBB22_55
.LBB22_54:
	move	$a0, $zero
.LBB22_55:                              # %_ZN8NArchive3N7z11GetExtIndexEPKc.exit.thread
	st.w	$a0, $fp, 20
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB22_56:                              # %_ZN11CStringBaseIcED2Ev.exit35
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB22_41
# %bb.57:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB22_41
.LBB22_58:
.Ltmp384:
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB22_62
.LBB22_59:
.Ltmp381:
	b	.LBB22_61
.LBB22_60:
.Ltmp378:
.LBB22_61:                              # %_ZN11CStringBaseIcED2Ev.exit
	move	$fp, $a0
.LBB22_62:                              # %_ZN11CStringBaseIcED2Ev.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB22_64
# %bb.63:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB22_64:                              # %_ZN11CStringBaseIwED2Ev.exit36
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb, .Lfunc_end22-_ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb,"aG",@progbits,_ZN8NArchive3N7z8CRefItemC2EjRKNS0_11CUpdateItemEb,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp376-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp376
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp376-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp377-.Ltmp376              #   Call between .Ltmp376 and .Ltmp377
	.uleb128 .Ltmp378-.Lfunc_begin8         #     jumps to .Ltmp378
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp379-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp380-.Ltmp379              #   Call between .Ltmp379 and .Ltmp380
	.uleb128 .Ltmp381-.Lfunc_begin8         #     jumps to .Ltmp381
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp382-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp383-.Ltmp382              #   Call between .Ltmp382 and .Ltmp383
	.uleb128 .Ltmp384-.Lfunc_begin8         #     jumps to .Ltmp384
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp383-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Lfunc_end22-.Ltmp383          #   Call between .Ltmp383 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv
	.type	_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv,@function
_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv: # @_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv
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
	ld.d	$s0, $a0, 0
	ld.d	$fp, $a1, 0
	ld.bu	$a3, $s0, 63
	ld.bu	$a4, $fp, 63
	bne	$a3, $a4, .LBB23_4
# %bb.1:
	beqz	$a3, .LBB23_7
# %bb.2:
	ld.bu	$a0, $s0, 62
	ld.bu	$a1, $fp, 62
	bne	$a0, $a1, .LBB23_14
# %bb.3:
	ld.d	$a0, $s0, 40
	ld.d	$a1, $fp, 40
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
	sub.w	$a0, $zero, $a0
	b	.LBB23_6
.LBB23_4:
	addi.d	$a0, $a3, -1
.LBB23_5:
	ori	$a0, $a0, 1
.LBB23_6:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB23_7:
	ld.bu	$a2, $a2, 0
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB23_18
# %bb.8:
	ld.w	$a2, $a0, 20
	ld.w	$a3, $a1, 20
	bne	$a2, $a3, .LBB23_15
# %bb.9:
	ld.d	$a2, $s0, 40
	move	$s2, $a0
	ld.wu	$a0, $a0, 12
	ld.d	$a3, $fp, 40
	move	$s1, $a1
	ld.wu	$a1, $a1, 12
	alsl.d	$a0, $a0, $a2, 2
	alsl.d	$a1, $a1, $a3, 2
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB23_6
# %bb.10:
	ld.d	$a0, $s0, 40
	ld.wu	$a1, $s2, 16
	ld.d	$a2, $fp, 40
	ld.wu	$a3, $s1, 16
	alsl.d	$a0, $a1, $a0, 2
	alsl.d	$a1, $a3, $a2, 2
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB23_6
# %bb.11:
	ld.bu	$a0, $s0, 67
	ld.bu	$a1, $fp, 67
	beqz	$a0, .LBB23_16
# %bb.12:
	beqz	$a1, .LBB23_20
# %bb.13:
	ld.d	$a0, $s0, 24
	ld.d	$a1, $fp, 24
	beq	$a0, $a1, .LBB23_17
	b	.LBB23_19
.LBB23_14:
	addi.d	$a0, $a0, -1
	b	.LBB23_5
.LBB23_15:
	slt	$a0, $a2, $a3
	slt	$a1, $a3, $a2
	sub.d	$a0, $a1, $a0
	b	.LBB23_6
.LBB23_16:
	ori	$a0, $zero, 1
	bnez	$a1, .LBB23_6
.LBB23_17:
	ld.d	$a0, $s0, 32
	ld.d	$a1, $fp, 32
	bne	$a0, $a1, .LBB23_19
.LBB23_18:
	ld.d	$a0, $s0, 40
	ld.d	$a1, $fp, 40
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jr	$t8
.LBB23_19:
	sltu	$a2, $a0, $a1
	sltu	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	b	.LBB23_6
.LBB23_20:
	addi.w	$a0, $zero, -1
	b	.LBB23_6
.Lfunc_end23:
	.size	_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv, .Lfunc_end23-_ZN8NArchive3N7zL18CompareUpdateItemsEPKNS0_8CRefItemES3_Pv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive3N7z22CCompressionMethodModeD2Ev,"axG",@progbits,_ZN8NArchive3N7z22CCompressionMethodModeD2Ev,comdat
	.weak	_ZN8NArchive3N7z22CCompressionMethodModeD2Ev # -- Begin function _ZN8NArchive3N7z22CCompressionMethodModeD2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z22CCompressionMethodModeD2Ev,@function
_ZN8NArchive3N7z22CCompressionMethodModeD2Ev: # @_ZN8NArchive3N7z22CCompressionMethodModeD2Ev
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
	ld.d	$a0, $a0, 72
	beqz	$a0, .LBB24_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB24_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	st.d	$a0, $fp, 0
.Ltmp385:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp386:
# %bb.3:                                # %_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB24_4:
.Ltmp387:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN8NArchive3N7z22CCompressionMethodModeD2Ev, .Lfunc_end24-_ZN8NArchive3N7z22CCompressionMethodModeD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z22CCompressionMethodModeD2Ev,"aG",@progbits,_ZN8NArchive3N7z22CCompressionMethodModeD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table24:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp385-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp385
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp385-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp386-.Ltmp385              #   Call between .Ltmp385 and .Ltmp386
	.uleb128 .Ltmp387-.Lfunc_begin9         #     jumps to .Ltmp387
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp386-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Lfunc_end24-.Ltmp386          #   Call between .Ltmp386 and .Lfunc_end24
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
	.section	.text._ZN13CRecordVectorIiE4SortEPFiPKiS2_PvES3_,"axG",@progbits,_ZN13CRecordVectorIiE4SortEPFiPKiS2_PvES3_,comdat
	.weak	_ZN13CRecordVectorIiE4SortEPFiPKiS2_PvES3_ # -- Begin function _ZN13CRecordVectorIiE4SortEPFiPKiS2_PvES3_
	.p2align	5
	.type	_ZN13CRecordVectorIiE4SortEPFiPKiS2_PvES3_,@function
_ZN13CRecordVectorIiE4SortEPFiPKiS2_PvES3_: # @_ZN13CRecordVectorIiE4SortEPFiPKiS2_PvES3_
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
	ld.w	$s2, $a0, 12
	ori	$a3, $zero, 2
	blt	$s2, $a3, .LBB25_14
# %bb.1:
	move	$fp, $a2
	move	$s0, $a1
	ld.d	$s3, $a0, 16
	addi.d	$s4, $s3, -4
	srli.d	$s5, $s2, 1
	b	.LBB25_5
	.p2align	4, , 16
.LBB25_2:                               # %.._crit_edge.loopexit_crit_edge.i
                                        #   in Loop: Header=BB25_5 Depth=1
	addi.w	$s6, $s7, 0
.LBB25_3:                               # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB25_5 Depth=1
	ld.w	$a0, $sp, 0
.LBB25_4:                               # %_ZN13CRecordVectorIiE11SortRefDownEPiiiPFiPKiS3_PvES4_.exit
                                        #   in Loop: Header=BB25_5 Depth=1
	slli.d	$a1, $s6, 2
	addi.d	$s5, $s5, -1
	stx.w	$a0, $s4, $a1
	beqz	$s5, .LBB25_12
.LBB25_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_7 Depth 2
	slli.d	$a0, $s5, 2
	ldx.w	$a0, $s4, $a0
	slli.w	$s1, $s5, 1
	st.w	$a0, $sp, 0
	move	$s6, $s5
	blt	$s2, $s1, .LBB25_4
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB25_5 Depth=1
	move	$s7, $s5
	.p2align	4, , 16
.LBB25_7:                               # %.lr.ph.i
                                        #   Parent Loop BB25_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bge	$s1, $s2, .LBB25_9
# %bb.8:                                #   in Loop: Header=BB25_7 Depth=2
	alsl.d	$a1, $s1, $s4, 2
	addi.d	$a0, $a1, 4
	move	$a2, $fp
	jirl	$ra, $s0, 0
	slt	$a0, $zero, $a0
	or	$s6, $s1, $a0
	b	.LBB25_10
	.p2align	4, , 16
.LBB25_9:                               #   in Loop: Header=BB25_7 Depth=2
	move	$s6, $s1
.LBB25_10:                              #   in Loop: Header=BB25_7 Depth=2
	alsl.d	$s1, $s6, $s4, 2
	addi.d	$a0, $sp, 0
	move	$a1, $s1
	move	$a2, $fp
	jirl	$ra, $s0, 0
	bgez	$a0, .LBB25_2
# %bb.11:                               #   in Loop: Header=BB25_7 Depth=2
	ld.w	$a0, $s1, 0
	addi.w	$a1, $s7, 0
	slli.d	$a1, $a1, 2
	slli.w	$s1, $s6, 1
	stx.w	$a0, $s4, $a1
	move	$s7, $s6
	bge	$s2, $s1, .LBB25_7
	b	.LBB25_3
.LBB25_12:                              # %.preheader
	slli.d	$a1, $s2, 2
	ld.w	$a2, $s3, 0
	ldx.w	$a0, $s4, $a1
	stx.w	$a2, $s4, $a1
	st.w	$a0, $s3, 0
	ori	$a1, $zero, 2
	st.w	$a0, $sp, 4
	bne	$s2, $a1, .LBB25_15
.LBB25_13:                              # %_ZN13CRecordVectorIiE11SortRefDownEPiiiPFiPKiS3_PvES4_.exit32.thread
	st.w	$a0, $s3, 0
.LBB25_14:
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
.LBB25_15:                              # %.lr.ph.i22.preheader.preheader
	ori	$s5, $zero, 4
	b	.LBB25_18
	.p2align	4, , 16
.LBB25_16:                              # %.._crit_edge.loopexit_crit_edge.i29
                                        #   in Loop: Header=BB25_18 Depth=1
	move	$s8, $s7
.LBB25_17:                              # %_ZN13CRecordVectorIiE11SortRefDownEPiiiPFiPKiS3_PvES4_.exit32
                                        #   in Loop: Header=BB25_18 Depth=1
	ld.w	$a0, $sp, 4
	slli.d	$a1, $s8, 2
	stx.w	$a0, $s4, $a1
	slli.d	$a1, $s2, 2
	ld.w	$a2, $s3, 0
	ldx.w	$a0, $s4, $a1
	stx.w	$a2, $s4, $a1
	st.w	$a0, $s3, 0
	st.w	$a0, $sp, 4
	blt	$s6, $s5, .LBB25_13
.LBB25_18:                              # %.lr.ph.i22.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_19 Depth 2
	move	$s6, $s2
	addi.d	$s2, $s2, -1
	ori	$s7, $zero, 1
	ori	$s1, $zero, 2
	.p2align	4, , 16
.LBB25_19:                              # %.lr.ph.i22
                                        #   Parent Loop BB25_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bge	$s1, $s2, .LBB25_21
# %bb.20:                               #   in Loop: Header=BB25_19 Depth=2
	alsl.d	$a1, $s1, $s4, 2
	addi.d	$a0, $a1, 4
	move	$a2, $fp
	jirl	$ra, $s0, 0
	slt	$a0, $zero, $a0
	or	$s8, $s1, $a0
	b	.LBB25_22
	.p2align	4, , 16
.LBB25_21:                              #   in Loop: Header=BB25_19 Depth=2
	move	$s8, $s1
.LBB25_22:                              #   in Loop: Header=BB25_19 Depth=2
	alsl.d	$s1, $s8, $s4, 2
	addi.d	$a0, $sp, 4
	move	$a1, $s1
	move	$a2, $fp
	jirl	$ra, $s0, 0
	bgez	$a0, .LBB25_16
# %bb.23:                               #   in Loop: Header=BB25_19 Depth=2
	ld.w	$a0, $s1, 0
	slli.d	$a1, $s7, 2
	slli.w	$s1, $s8, 1
	stx.w	$a0, $s4, $a1
	move	$s7, $s8
	blt	$s1, $s6, .LBB25_19
	b	.LBB25_17
.Lfunc_end25:
	.size	_ZN13CRecordVectorIiE4SortEPFiPKiS2_PvES3_, .Lfunc_end25-_ZN13CRecordVectorIiE4SortEPFiPKiS2_PvES3_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN8NArchive3N7zL17CompareEmptyItemsEPKiS2_Pv
	.type	_ZN8NArchive3N7zL17CompareEmptyItemsEPKiS2_Pv,@function
_ZN8NArchive3N7zL17CompareEmptyItemsEPKiS2_Pv: # @_ZN8NArchive3N7zL17CompareEmptyItemsEPKiS2_Pv
	.cfi_startproc
# %bb.0:
	ld.w	$a0, $a0, 0
	ld.d	$a2, $a2, 16
	ld.w	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.bu	$a3, $a0, 63
	ld.bu	$a2, $a1, 63
	bne	$a3, $a2, .LBB26_4
# %bb.1:
	ld.bu	$a2, $a0, 62
	ld.bu	$a4, $a1, 62
	beqz	$a3, .LBB26_5
# %bb.2:
	bne	$a2, $a4, .LBB26_7
# %bb.3:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a0, $a0, 40
	ld.d	$a1, $a1, 40
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
	sub.w	$a0, $zero, $a0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB26_4:
	addi.d	$a0, $a3, -1
	ori	$a0, $a0, 1
	ret
.LBB26_5:
	bne	$a2, $a4, .LBB26_7
# %bb.6:
	ld.d	$a0, $a0, 40
	ld.d	$a1, $a1, 40
	pcaddu18i	$t8, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jr	$t8
.LBB26_7:
	addi.d	$a0, $a2, -1
	ori	$a0, $a0, 1
	ret
.Lfunc_end26:
	.size	_ZN8NArchive3N7zL17CompareEmptyItemsEPKiS2_Pv, .Lfunc_end26-_ZN8NArchive3N7zL17CompareEmptyItemsEPKiS2_Pv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive3N7z16CArchiveDatabase11ReserveDownEv,"axG",@progbits,_ZN8NArchive3N7z16CArchiveDatabase11ReserveDownEv,comdat
	.weak	_ZN8NArchive3N7z16CArchiveDatabase11ReserveDownEv # -- Begin function _ZN8NArchive3N7z16CArchiveDatabase11ReserveDownEv
	.p2align	5
	.type	_ZN8NArchive3N7z16CArchiveDatabase11ReserveDownEv,@function
_ZN8NArchive3N7z16CArchiveDatabase11ReserveDownEv: # @_ZN8NArchive3N7z16CArchiveDatabase11ReserveDownEv
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
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 96
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 128
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 160
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 192
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 256
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 320
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 384
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 448
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector11ReserveDownEv)
	jr	$t8
.Lfunc_end27:
	.size	_ZN8NArchive3N7z16CArchiveDatabase11ReserveDownEv, .Lfunc_end27-_ZN8NArchive3N7z16CArchiveDatabase11ReserveDownEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev: # @_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE+16)
	st.d	$a0, $fp, 0
.Ltmp388:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp389:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB28_2:
.Ltmp390:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev, .Lfunc_end28-_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table28:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp388-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp389-.Ltmp388              #   Call between .Ltmp388 and .Ltmp389
	.uleb128 .Ltmp390-.Lfunc_begin10        #     jumps to .Ltmp390
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp389-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Lfunc_end28-.Ltmp389          #   Call between .Ltmp389 and .Lfunc_end28
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
	.section	.text._ZN8NArchive3N7z14CThreadDecoderD2Ev,"axG",@progbits,_ZN8NArchive3N7z14CThreadDecoderD2Ev,comdat
	.weak	_ZN8NArchive3N7z14CThreadDecoderD2Ev # -- Begin function _ZN8NArchive3N7z14CThreadDecoderD2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z14CThreadDecoderD2Ev,@function
_ZN8NArchive3N7z14CThreadDecoderD2Ev:   # @_ZN8NArchive3N7z14CThreadDecoderD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive3N7z14CThreadDecoderE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NArchive3N7z14CThreadDecoderE+16)
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 296
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z8CDecoderD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 288
	beqz	$a0, .LBB29_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp391:
	jirl	$ra, $a1, 0
.Ltmp392:
.LBB29_2:                               # %_ZN9CMyComPtrI22ICryptoGetTextPasswordED2Ev.exit
	ld.d	$a0, $fp, 256
	beqz	$a0, .LBB29_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp394:
	jirl	$ra, $a1, 0
.Ltmp395:
.LBB29_4:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	ld.d	$a0, $fp, 240
	beqz	$a0, .LBB29_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp397:
	jirl	$ra, $a1, 0
.Ltmp398:
.LBB29_6:                               # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN11CVirtThreadD2Ev)
	jr	$t8
.LBB29_7:
.Ltmp399:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB29_8:
.Ltmp396:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB29_9:
.Ltmp393:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	_ZN8NArchive3N7z14CThreadDecoderD2Ev, .Lfunc_end29-_ZN8NArchive3N7z14CThreadDecoderD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z14CThreadDecoderD2Ev,"aG",@progbits,_ZN8NArchive3N7z14CThreadDecoderD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table29:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp391-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp391
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp392-.Ltmp391              #   Call between .Ltmp391 and .Ltmp392
	.uleb128 .Ltmp393-.Lfunc_begin11        #     jumps to .Ltmp393
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp394-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp395-.Ltmp394              #   Call between .Ltmp394 and .Ltmp395
	.uleb128 .Ltmp396-.Lfunc_begin11        #     jumps to .Ltmp396
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp397-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Ltmp398-.Ltmp397              #   Call between .Ltmp397 and .Ltmp398
	.uleb128 .Ltmp399-.Lfunc_begin11        #     jumps to .Ltmp399
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp398-.Lfunc_begin11        # >> Call Site 5 <<
	.uleb128 .Lfunc_end29-.Ltmp398          #   Call between .Ltmp398 and .Lfunc_end29
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
	.section	.text._ZN8NArchive3N7z17CFolderOutStream214QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN8NArchive3N7z17CFolderOutStream214QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN8NArchive3N7z17CFolderOutStream214QueryInterfaceERK4GUIDPPv # -- Begin function _ZN8NArchive3N7z17CFolderOutStream214QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream214QueryInterfaceERK4GUIDPPv,@function
_ZN8NArchive3N7z17CFolderOutStream214QueryInterfaceERK4GUIDPPv: # @_ZN8NArchive3N7z17CFolderOutStream214QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	pcalau12i	$a3, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a3, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a5, $a1, 0
	ld.bu	$a6, $a4, 0
	move	$a3, $a0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB30_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB30_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB30_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB30_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB30_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB30_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB30_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB30_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB30_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB30_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB30_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB30_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB30_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB30_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB30_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB30_17
# %bb.16:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a0, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a3
	jirl	$ra, $a1, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB30_17:                              # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end30:
	.size	_ZN8NArchive3N7z17CFolderOutStream214QueryInterfaceERK4GUIDPPv, .Lfunc_end30-_ZN8NArchive3N7z17CFolderOutStream214QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive3N7z17CFolderOutStream26AddRefEv,"axG",@progbits,_ZN8NArchive3N7z17CFolderOutStream26AddRefEv,comdat
	.weak	_ZN8NArchive3N7z17CFolderOutStream26AddRefEv # -- Begin function _ZN8NArchive3N7z17CFolderOutStream26AddRefEv
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream26AddRefEv,@function
_ZN8NArchive3N7z17CFolderOutStream26AddRefEv: # @_ZN8NArchive3N7z17CFolderOutStream26AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end31:
	.size	_ZN8NArchive3N7z17CFolderOutStream26AddRefEv, .Lfunc_end31-_ZN8NArchive3N7z17CFolderOutStream26AddRefEv
                                        # -- End function
	.section	.text._ZN8NArchive3N7z17CFolderOutStream27ReleaseEv,"axG",@progbits,_ZN8NArchive3N7z17CFolderOutStream27ReleaseEv,comdat
	.weak	_ZN8NArchive3N7z17CFolderOutStream27ReleaseEv # -- Begin function _ZN8NArchive3N7z17CFolderOutStream27ReleaseEv
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream27ReleaseEv,@function
_ZN8NArchive3N7z17CFolderOutStream27ReleaseEv: # @_ZN8NArchive3N7z17CFolderOutStream27ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB32_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB32_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end32:
	.size	_ZN8NArchive3N7z17CFolderOutStream27ReleaseEv, .Lfunc_end32-_ZN8NArchive3N7z17CFolderOutStream27ReleaseEv
                                        # -- End function
	.section	.text._ZN8NArchive3N7z17CFolderOutStream2D2Ev,"axG",@progbits,_ZN8NArchive3N7z17CFolderOutStream2D2Ev,comdat
	.weak	_ZN8NArchive3N7z17CFolderOutStream2D2Ev # -- Begin function _ZN8NArchive3N7z17CFolderOutStream2D2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream2D2Ev,@function
_ZN8NArchive3N7z17CFolderOutStream2D2Ev: # @_ZN8NArchive3N7z17CFolderOutStream2D2Ev
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
	ld.d	$a0, $a0, 48
	pcalau12i	$a1, %pc_hi20(_ZTVN8NArchive3N7z17CFolderOutStream2E+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTVN8NArchive3N7z17CFolderOutStream2E+16)
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB33_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp400:
	jirl	$ra, $a1, 0
.Ltmp401:
.LBB33_2:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB33_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp403:
	jirl	$ra, $a1, 0
.Ltmp404:
.LBB33_4:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit2
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB33_5:
.Ltmp405:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB33_6:
.Ltmp402:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	_ZN8NArchive3N7z17CFolderOutStream2D2Ev, .Lfunc_end33-_ZN8NArchive3N7z17CFolderOutStream2D2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z17CFolderOutStream2D2Ev,"aG",@progbits,_ZN8NArchive3N7z17CFolderOutStream2D2Ev,comdat
	.p2align	2, 0x0
GCC_except_table33:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp400-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp401-.Ltmp400              #   Call between .Ltmp400 and .Ltmp401
	.uleb128 .Ltmp402-.Lfunc_begin12        #     jumps to .Ltmp402
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp403-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp404-.Ltmp403              #   Call between .Ltmp403 and .Ltmp404
	.uleb128 .Ltmp405-.Lfunc_begin12        #     jumps to .Ltmp405
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp404-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Lfunc_end33-.Ltmp404          #   Call between .Ltmp404 and .Lfunc_end33
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
	.section	.text._ZN8NArchive3N7z17CFolderOutStream2D0Ev,"axG",@progbits,_ZN8NArchive3N7z17CFolderOutStream2D0Ev,comdat
	.weak	_ZN8NArchive3N7z17CFolderOutStream2D0Ev # -- Begin function _ZN8NArchive3N7z17CFolderOutStream2D0Ev
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream2D0Ev,@function
_ZN8NArchive3N7z17CFolderOutStream2D0Ev: # @_ZN8NArchive3N7z17CFolderOutStream2D0Ev
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 48
	pcalau12i	$a1, %pc_hi20(_ZTVN8NArchive3N7z17CFolderOutStream2E+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTVN8NArchive3N7z17CFolderOutStream2E+16)
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB34_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp406:
	jirl	$ra, $a1, 0
.Ltmp407:
.LBB34_2:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit.i
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB34_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp409:
	jirl	$ra, $a1, 0
.Ltmp410:
.LBB34_4:                               # %_ZN8NArchive3N7z17CFolderOutStream2D2Ev.exit
	ori	$a1, $zero, 80
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB34_5:
.Ltmp411:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB34_6:
.Ltmp408:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end34:
	.size	_ZN8NArchive3N7z17CFolderOutStream2D0Ev, .Lfunc_end34-_ZN8NArchive3N7z17CFolderOutStream2D0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z17CFolderOutStream2D0Ev,"aG",@progbits,_ZN8NArchive3N7z17CFolderOutStream2D0Ev,comdat
	.p2align	2, 0x0
GCC_except_table34:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp406-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp407-.Ltmp406              #   Call between .Ltmp406 and .Ltmp407
	.uleb128 .Ltmp408-.Lfunc_begin13        #     jumps to .Ltmp408
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp409-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp410-.Ltmp409              #   Call between .Ltmp409 and .Ltmp410
	.uleb128 .Ltmp411-.Lfunc_begin13        #     jumps to .Ltmp411
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp410-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Lfunc_end34-.Ltmp410          #   Call between .Ltmp410 and .Lfunc_end34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NArchive3N7z22CCryptoGetTextPassword14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN8NArchive3N7z22CCryptoGetTextPassword14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN8NArchive3N7z22CCryptoGetTextPassword14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN8NArchive3N7z22CCryptoGetTextPassword14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN8NArchive3N7z22CCryptoGetTextPassword14QueryInterfaceERK4GUIDPPv,@function
_ZN8NArchive3N7z22CCryptoGetTextPassword14QueryInterfaceERK4GUIDPPv: # @_ZN8NArchive3N7z22CCryptoGetTextPassword14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	pcalau12i	$a3, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a3, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a5, $a1, 0
	ld.bu	$a6, $a4, 0
	move	$a3, $a0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB35_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB35_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB35_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB35_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB35_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB35_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB35_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB35_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB35_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB35_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB35_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB35_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB35_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB35_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB35_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB35_17
# %bb.16:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a0, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a3
	jirl	$ra, $a1, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB35_17:                              # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end35:
	.size	_ZN8NArchive3N7z22CCryptoGetTextPassword14QueryInterfaceERK4GUIDPPv, .Lfunc_end35-_ZN8NArchive3N7z22CCryptoGetTextPassword14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive3N7z22CCryptoGetTextPassword6AddRefEv,"axG",@progbits,_ZN8NArchive3N7z22CCryptoGetTextPassword6AddRefEv,comdat
	.weak	_ZN8NArchive3N7z22CCryptoGetTextPassword6AddRefEv # -- Begin function _ZN8NArchive3N7z22CCryptoGetTextPassword6AddRefEv
	.p2align	5
	.type	_ZN8NArchive3N7z22CCryptoGetTextPassword6AddRefEv,@function
_ZN8NArchive3N7z22CCryptoGetTextPassword6AddRefEv: # @_ZN8NArchive3N7z22CCryptoGetTextPassword6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end36:
	.size	_ZN8NArchive3N7z22CCryptoGetTextPassword6AddRefEv, .Lfunc_end36-_ZN8NArchive3N7z22CCryptoGetTextPassword6AddRefEv
                                        # -- End function
	.section	.text._ZN8NArchive3N7z22CCryptoGetTextPassword7ReleaseEv,"axG",@progbits,_ZN8NArchive3N7z22CCryptoGetTextPassword7ReleaseEv,comdat
	.weak	_ZN8NArchive3N7z22CCryptoGetTextPassword7ReleaseEv # -- Begin function _ZN8NArchive3N7z22CCryptoGetTextPassword7ReleaseEv
	.p2align	5
	.type	_ZN8NArchive3N7z22CCryptoGetTextPassword7ReleaseEv,@function
_ZN8NArchive3N7z22CCryptoGetTextPassword7ReleaseEv: # @_ZN8NArchive3N7z22CCryptoGetTextPassword7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB37_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB37_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end37:
	.size	_ZN8NArchive3N7z22CCryptoGetTextPassword7ReleaseEv, .Lfunc_end37-_ZN8NArchive3N7z22CCryptoGetTextPassword7ReleaseEv
                                        # -- End function
	.section	.text._ZN8NArchive3N7z22CCryptoGetTextPasswordD2Ev,"axG",@progbits,_ZN8NArchive3N7z22CCryptoGetTextPasswordD2Ev,comdat
	.weak	_ZN8NArchive3N7z22CCryptoGetTextPasswordD2Ev # -- Begin function _ZN8NArchive3N7z22CCryptoGetTextPasswordD2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z22CCryptoGetTextPasswordD2Ev,@function
_ZN8NArchive3N7z22CCryptoGetTextPasswordD2Ev: # @_ZN8NArchive3N7z22CCryptoGetTextPasswordD2Ev
# %bb.0:
	move	$a1, $a0
	ld.d	$a0, $a0, 16
	pcalau12i	$a2, %pc_hi20(_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE+16)
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB38_2
# %bb.1:
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB38_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	ret
.Lfunc_end38:
	.size	_ZN8NArchive3N7z22CCryptoGetTextPasswordD2Ev, .Lfunc_end38-_ZN8NArchive3N7z22CCryptoGetTextPasswordD2Ev
                                        # -- End function
	.section	.text._ZN8NArchive3N7z22CCryptoGetTextPasswordD0Ev,"axG",@progbits,_ZN8NArchive3N7z22CCryptoGetTextPasswordD0Ev,comdat
	.weak	_ZN8NArchive3N7z22CCryptoGetTextPasswordD0Ev # -- Begin function _ZN8NArchive3N7z22CCryptoGetTextPasswordD0Ev
	.p2align	5
	.type	_ZN8NArchive3N7z22CCryptoGetTextPasswordD0Ev,@function
_ZN8NArchive3N7z22CCryptoGetTextPasswordD0Ev: # @_ZN8NArchive3N7z22CCryptoGetTextPasswordD0Ev
# %bb.0:
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE+16)
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB39_2
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
.LBB39_2:                               # %_ZN8NArchive3N7z22CCryptoGetTextPasswordD2Ev.exit
	ori	$a1, $zero, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end39:
	.size	_ZN8NArchive3N7z22CCryptoGetTextPasswordD0Ev, .Lfunc_end39-_ZN8NArchive3N7z22CCryptoGetTextPasswordD0Ev
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
.Lfunc_end40:
	.size	__clang_call_terminate, .Lfunc_end40-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN8NArchive3N7z17CFolderOutStream2C2Ev,"axG",@progbits,_ZN8NArchive3N7z17CFolderOutStream2C2Ev,comdat
	.weak	_ZN8NArchive3N7z17CFolderOutStream2C2Ev # -- Begin function _ZN8NArchive3N7z17CFolderOutStream2C2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z17CFolderOutStream2C2Ev,@function
_ZN8NArchive3N7z17CFolderOutStream2C2Ev: # @_ZN8NArchive3N7z17CFolderOutStream2C2Ev
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
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive3N7z17CFolderOutStream2E+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NArchive3N7z17CFolderOutStream2E+16)
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 24
	st.d	$zero, $fp, 48
.Ltmp412:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp413:
# %bb.1:
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZTV17COutStreamWithCRC)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV17COutStreamWithCRC)
	st.w	$zero, $s0, 8
	addi.d	$a1, $a0, 16
	ld.d	$a2, $a0, 24
	st.d	$a1, $s0, 0
	st.d	$zero, $s0, 16
	st.d	$s0, $fp, 16
.Ltmp414:
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp415:
# %bb.2:                                # %.noexc
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB41_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp416:
	jirl	$ra, $a1, 0
.Ltmp417:
.LBB41_4:
	st.d	$s0, $fp, 24
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB41_5:
.Ltmp418:
	ld.d	$a1, $fp, 48
	move	$s0, $a0
	beqz	$a1, .LBB41_7
# %bb.6:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp419:
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp420:
.LBB41_7:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB41_9
# %bb.8:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp422:
	jirl	$ra, $a1, 0
.Ltmp423:
.LBB41_9:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit6
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB41_10:
.Ltmp424:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB41_11:
.Ltmp421:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end41:
	.size	_ZN8NArchive3N7z17CFolderOutStream2C2Ev, .Lfunc_end41-_ZN8NArchive3N7z17CFolderOutStream2C2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z17CFolderOutStream2C2Ev,"aG",@progbits,_ZN8NArchive3N7z17CFolderOutStream2C2Ev,comdat
	.p2align	2, 0x0
GCC_except_table41:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp412-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp417-.Ltmp412              #   Call between .Ltmp412 and .Ltmp417
	.uleb128 .Ltmp418-.Lfunc_begin14        #     jumps to .Ltmp418
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp419-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp420-.Ltmp419              #   Call between .Ltmp419 and .Ltmp420
	.uleb128 .Ltmp421-.Lfunc_begin14        #     jumps to .Ltmp421
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp422-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp423-.Ltmp422              #   Call between .Ltmp422 and .Ltmp423
	.uleb128 .Ltmp424-.Lfunc_begin14        #     jumps to .Ltmp424
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp423-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Lfunc_end41-.Ltmp423          #   Call between .Ltmp423 and .Lfunc_end41
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
	.section	.text._ZN8NArchive3N7z8CDecoderD2Ev,"axG",@progbits,_ZN8NArchive3N7z8CDecoderD2Ev,comdat
	.weak	_ZN8NArchive3N7z8CDecoderD2Ev   # -- Begin function _ZN8NArchive3N7z8CDecoderD2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z8CDecoderD2Ev,@function
_ZN8NArchive3N7z8CDecoderD2Ev:          # @_ZN8NArchive3N7z8CDecoderD2Ev
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
	addi.d	$s0, $a0, 200
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	st.d	$a0, $fp, 200
.Ltmp425:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp426:
# %bb.1:                                # %_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	beqz	$a0, .LBB42_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp428:
	jirl	$ra, $a1, 0
.Ltmp429:
.LBB42_3:                               # %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit
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
.LBB42_4:
.Ltmp430:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB42_5:
.Ltmp427:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	_ZN8NArchive3N7z8CDecoderD2Ev, .Lfunc_end42-_ZN8NArchive3N7z8CDecoderD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z8CDecoderD2Ev,"aG",@progbits,_ZN8NArchive3N7z8CDecoderD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table42:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp425-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp426-.Ltmp425              #   Call between .Ltmp425 and .Ltmp426
	.uleb128 .Ltmp427-.Lfunc_begin15        #     jumps to .Ltmp427
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp426-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp428-.Ltmp426              #   Call between .Ltmp426 and .Ltmp428
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Ltmp429-.Ltmp428              #   Call between .Ltmp428 and .Ltmp429
	.uleb128 .Ltmp430-.Lfunc_begin15        #     jumps to .Ltmp430
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp429-.Lfunc_begin15        # >> Call Site 4 <<
	.uleb128 .Lfunc_end42-.Ltmp429          #   Call between .Ltmp429 and .Lfunc_end42
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
.Ltmp431:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp432:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB43_2:
.Ltmp433:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev, .Lfunc_end43-_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table43:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp431-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp432-.Ltmp431              #   Call between .Ltmp431 and .Ltmp432
	.uleb128 .Ltmp433-.Lfunc_begin16        #     jumps to .Ltmp433
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp432-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Lfunc_end43-.Ltmp432          #   Call between .Ltmp432 and .Lfunc_end43
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
.Ltmp434:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp435:
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
.LBB44_2:
.Ltmp436:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end44:
	.size	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev, .Lfunc_end44-_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table44:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp434-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp435-.Ltmp434              #   Call between .Ltmp434 and .Ltmp435
	.uleb128 .Ltmp436-.Lfunc_begin17        #     jumps to .Ltmp436
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp435-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Lfunc_end44-.Ltmp435          #   Call between .Ltmp435 and .Lfunc_end44
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
	blt	$s1, $a0, .LBB45_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB45_4
	.p2align	4, , 16
.LBB45_2:                               # %_ZN9CMyComPtrI8IUnknownED2Ev.exit
                                        #   in Loop: Header=BB45_4 Depth=1
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB45_3:                               #   in Loop: Header=BB45_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB45_7
.LBB45_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB45_3
# %bb.5:                                #   in Loop: Header=BB45_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB45_2
# %bb.6:                                #   in Loop: Header=BB45_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp437:
	jirl	$ra, $a1, 0
.Ltmp438:
	b	.LBB45_2
.LBB45_7:                               # %._crit_edge
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
.LBB45_8:
.Ltmp439:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end45:
	.size	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii, .Lfunc_end45-_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table45:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp437-.Lfunc_begin18        #   Call between .Lfunc_begin18 and .Ltmp437
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp437-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp438-.Ltmp437              #   Call between .Ltmp437 and .Ltmp438
	.uleb128 .Ltmp439-.Lfunc_begin18        #     jumps to .Ltmp439
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp438-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Lfunc_end45-.Ltmp438          #   Call between .Ltmp438 and .Lfunc_end45
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
.Lfunc_end46:
	.size	_ZN8NWindows5NFile3NIO7CInFileD0Ev, .Lfunc_end46-_ZN8NWindows5NFile3NIO7CInFileD0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev: # @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE+16)
	st.d	$a0, $fp, 0
.Ltmp440:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp441:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB47_2:
.Ltmp442:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end47:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev, .Lfunc_end47-_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table47:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp440-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp441-.Ltmp440              #   Call between .Ltmp440 and .Ltmp441
	.uleb128 .Ltmp442-.Lfunc_begin19        #     jumps to .Ltmp442
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp441-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Lfunc_end47-.Ltmp441          #   Call between .Ltmp441 and .Lfunc_end47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev: # @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
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
.Ltmp443:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp444:
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
.LBB48_2:
.Ltmp445:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end48:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev, .Lfunc_end48-_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table48:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Ltmp443-.Lfunc_begin20        # >> Call Site 1 <<
	.uleb128 .Ltmp444-.Ltmp443              #   Call between .Ltmp443 and .Ltmp444
	.uleb128 .Ltmp445-.Lfunc_begin20        #     jumps to .Ltmp445
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp444-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Lfunc_end48-.Ltmp444          #   Call between .Ltmp444 and .Lfunc_end48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception21
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
	blt	$s1, $a0, .LBB49_6
# %bb.1:                                # %.lr.ph
	move	$s4, $zero
	slli.d	$s5, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$s6, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	b	.LBB49_3
	.p2align	4, , 16
.LBB49_2:                               #   in Loop: Header=BB49_3 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	bgeu	$s4, $s1, .LBB49_6
.LBB49_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s5
	beqz	$s2, .LBB49_2
# %bb.4:                                #   in Loop: Header=BB49_3 Depth=1
	addi.d	$s3, $s2, 8
	st.d	$s6, $s2, 8
.Ltmp446:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp447:
# %bb.5:                                # %_ZN7CMethodD2Ev.exit
                                        #   in Loop: Header=BB49_3 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB49_2
.LBB49_6:                               # %._crit_edge
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
.LBB49_7:
.Ltmp448:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end49:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii, .Lfunc_end49-_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table49:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp446-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp447-.Ltmp446              #   Call between .Ltmp446 and .Ltmp447
	.uleb128 .Ltmp448-.Lfunc_begin21        #     jumps to .Ltmp448
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp447-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Lfunc_end49-.Ltmp447          #   Call between .Ltmp447 and .Lfunc_end49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI5CPropED2Ev,"axG",@progbits,_ZN13CObjectVectorI5CPropED2Ev,comdat
	.weak	_ZN13CObjectVectorI5CPropED2Ev  # -- Begin function _ZN13CObjectVectorI5CPropED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropED2Ev,@function
_ZN13CObjectVectorI5CPropED2Ev:         # @_ZN13CObjectVectorI5CPropED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	st.d	$a0, $fp, 0
.Ltmp449:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp450:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB50_2:
.Ltmp451:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end50:
	.size	_ZN13CObjectVectorI5CPropED2Ev, .Lfunc_end50-_ZN13CObjectVectorI5CPropED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropED2Ev,"aG",@progbits,_ZN13CObjectVectorI5CPropED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table50:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp449-.Lfunc_begin22        # >> Call Site 1 <<
	.uleb128 .Ltmp450-.Ltmp449              #   Call between .Ltmp449 and .Ltmp450
	.uleb128 .Ltmp451-.Lfunc_begin22        #     jumps to .Ltmp451
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp450-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Lfunc_end50-.Ltmp450          #   Call between .Ltmp450 and .Lfunc_end50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase19:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI5CPropED0Ev,"axG",@progbits,_ZN13CObjectVectorI5CPropED0Ev,comdat
	.weak	_ZN13CObjectVectorI5CPropED0Ev  # -- Begin function _ZN13CObjectVectorI5CPropED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropED0Ev,@function
_ZN13CObjectVectorI5CPropED0Ev:         # @_ZN13CObjectVectorI5CPropED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	st.d	$a0, $fp, 0
.Ltmp452:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp453:
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
.LBB51_2:
.Ltmp454:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end51:
	.size	_ZN13CObjectVectorI5CPropED0Ev, .Lfunc_end51-_ZN13CObjectVectorI5CPropED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropED0Ev,"aG",@progbits,_ZN13CObjectVectorI5CPropED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table51:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp452-.Lfunc_begin23        # >> Call Site 1 <<
	.uleb128 .Ltmp453-.Ltmp452              #   Call between .Ltmp452 and .Ltmp453
	.uleb128 .Ltmp454-.Lfunc_begin23        #     jumps to .Ltmp454
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp453-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Lfunc_end51-.Ltmp453          #   Call between .Ltmp453 and .Lfunc_end51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI5CPropE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI5CPropE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI5CPropE6DeleteEii # -- Begin function _ZN13CObjectVectorI5CPropE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropE6DeleteEii,@function
_ZN13CObjectVectorI5CPropE6DeleteEii:   # @_ZN13CObjectVectorI5CPropE6DeleteEii
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception24
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
	blt	$s1, $a0, .LBB52_6
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB52_3
	.p2align	4, , 16
.LBB52_2:                               #   in Loop: Header=BB52_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB52_6
.LBB52_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB52_2
# %bb.4:                                #   in Loop: Header=BB52_3 Depth=1
	addi.d	$a0, $s2, 8
.Ltmp455:
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp456:
# %bb.5:                                # %_ZN5CPropD2Ev.exit
                                        #   in Loop: Header=BB52_3 Depth=1
	ori	$a1, $zero, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB52_2
.LBB52_6:                               # %._crit_edge
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
.LBB52_7:
.Ltmp457:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end52:
	.size	_ZN13CObjectVectorI5CPropE6DeleteEii, .Lfunc_end52-_ZN13CObjectVectorI5CPropE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI5CPropE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table52:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp455-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp456-.Ltmp455              #   Call between .Ltmp455 and .Ltmp456
	.uleb128 .Ltmp457-.Lfunc_begin24        #     jumps to .Ltmp457
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp456-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Lfunc_end52-.Ltmp456          #   Call between .Ltmp456 and .Lfunc_end52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase21:
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
.Lfunc_end53:
	.size	_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev, .Lfunc_end53-_ZN13CRecordVectorIN8NArchive3N7z5CBindEED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_ # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_,@function
_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_: # @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_
.Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception25
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
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$fp, $a0
	st.d	$a1, $a0, 0
	addi.d	$s2, $a0, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 16
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 32
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI5CPropE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI5CPropE+16)
	st.d	$a0, $fp, 8
.Ltmp458:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp459:
# %bb.1:                                # %.noexc.i.i.i
	addi.d	$a1, $s1, 8
.Ltmp460:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI5CPropEpLERKS1_)
	jirl	$ra, $ra, 0
.Ltmp461:
# %bb.2:
	ld.d	$a0, $s1, 40
	st.d	$a0, $fp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$fp, $a1, $a2
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, 12
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB54_3:                               # %.body
.Ltmp462:
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end54:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_, .Lfunc_end54-_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEE3AddERKS2_,comdat
	.p2align	2, 0x0
GCC_except_table54:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Lfunc_begin25-.Lfunc_begin25  # >> Call Site 1 <<
	.uleb128 .Ltmp458-.Lfunc_begin25        #   Call between .Lfunc_begin25 and .Ltmp458
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp458-.Lfunc_begin25        # >> Call Site 2 <<
	.uleb128 .Ltmp461-.Ltmp458              #   Call between .Ltmp458 and .Ltmp461
	.uleb128 .Ltmp462-.Lfunc_begin25        #     jumps to .Ltmp462
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp461-.Lfunc_begin25        # >> Call Site 3 <<
	.uleb128 .Lfunc_end54-.Ltmp461          #   Call between .Ltmp461 and .Lfunc_end54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end25:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI5CPropEpLERKS1_,"axG",@progbits,_ZN13CObjectVectorI5CPropEpLERKS1_,comdat
	.weak	_ZN13CObjectVectorI5CPropEpLERKS1_ # -- Begin function _ZN13CObjectVectorI5CPropEpLERKS1_
	.p2align	5
	.type	_ZN13CObjectVectorI5CPropEpLERKS1_,@function
_ZN13CObjectVectorI5CPropEpLERKS1_:     # @_ZN13CObjectVectorI5CPropEpLERKS1_
.Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception26
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
	ld.w	$s1, $a1, 12
	ld.w	$a0, $a0, 12
	add.w	$a1, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB55_4
# %bb.1:                                # %.lr.ph
	move	$s2, $zero
	slli.d	$s3, $s1, 3
	.p2align	4, , 16
.LBB55_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.d	$s4, $a0, $s2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	move	$s1, $a0
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $s4, 8
.Ltmp463:
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariantC1ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp464:
# %bb.3:                                # %_ZN13CObjectVectorI5CPropE3AddERKS0_.exit
                                        #   in Loop: Header=BB55_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a0, 3
	stx.d	$s1, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	st.w	$a0, $fp, 12
	bne	$s3, $s2, .LBB55_2
.LBB55_4:                               # %._crit_edge
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
.LBB55_5:
.Ltmp465:
	move	$fp, $a0
	ori	$a1, $zero, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end55:
	.size	_ZN13CObjectVectorI5CPropEpLERKS1_, .Lfunc_end55-_ZN13CObjectVectorI5CPropEpLERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI5CPropEpLERKS1_,"aG",@progbits,_ZN13CObjectVectorI5CPropEpLERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table55:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Lfunc_begin26-.Lfunc_begin26  # >> Call Site 1 <<
	.uleb128 .Ltmp463-.Lfunc_begin26        #   Call between .Lfunc_begin26 and .Ltmp463
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp463-.Lfunc_begin26        # >> Call Site 2 <<
	.uleb128 .Ltmp464-.Ltmp463              #   Call between .Ltmp463 and .Ltmp464
	.uleb128 .Ltmp465-.Lfunc_begin26        #     jumps to .Ltmp465
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp464-.Lfunc_begin26        # >> Call Site 3 <<
	.uleb128 .Lfunc_end55-.Ltmp464          #   Call between .Ltmp464 and .Lfunc_end55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end26:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv,"axG",@progbits,_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv,comdat
	.weak	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv # -- Begin function _ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
	.p2align	5
	.type	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv,@function
_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv: # @_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
# %bb.0:
	move	$a1, $a0
	ld.bu	$a0, $a0, 17
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB56_3
# %bb.1:
	ld.bu	$a2, $a1, 16
	bnez	$a2, .LBB56_3
# %bb.2:
	st.b	$zero, $a1, 17
.LBB56_3:
	ret
.Lfunc_end56:
	.size	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv, .Lfunc_end56-_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp466:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp467:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB57_2:
.Ltmp468:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end57:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev, .Lfunc_end57-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table57:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase22-.Lttbaseref22
.Lttbaseref22:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Ltmp466-.Lfunc_begin27        # >> Call Site 1 <<
	.uleb128 .Ltmp467-.Ltmp466              #   Call between .Ltmp466 and .Ltmp467
	.uleb128 .Ltmp468-.Lfunc_begin27        #     jumps to .Ltmp468
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp467-.Lfunc_begin27        # >> Call Site 2 <<
	.uleb128 .Lfunc_end57-.Ltmp467          #   Call between .Ltmp467 and .Lfunc_end57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end27:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase22:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
.Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception28
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
.Ltmp469:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp470:
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
.LBB58_2:
.Ltmp471:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end58:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev, .Lfunc_end58-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table58:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase23-.Lttbaseref23
.Lttbaseref23:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Ltmp469-.Lfunc_begin28        # >> Call Site 1 <<
	.uleb128 .Ltmp470-.Ltmp469              #   Call between .Ltmp469 and .Ltmp470
	.uleb128 .Ltmp471-.Lfunc_begin28        #     jumps to .Ltmp471
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp470-.Lfunc_begin28        # >> Call Site 2 <<
	.uleb128 .Lfunc_end58-.Ltmp470          #   Call between .Ltmp470 and .Lfunc_end58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end28:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase23:
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
	blt	$s1, $a0, .LBB59_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	b	.LBB59_4
	.p2align	4, , 16
.LBB59_2:                               # %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit
                                        #   in Loop: Header=BB59_4 Depth=1
	ori	$a1, $zero, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB59_3:                               #   in Loop: Header=BB59_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB59_7
.LBB59_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB59_3
# %bb.5:                                #   in Loop: Header=BB59_4 Depth=1
	ld.d	$a0, $s2, 24
	st.d	$s5, $s2, 8
	beqz	$a0, .LBB59_2
# %bb.6:                                #   in Loop: Header=BB59_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB59_2
.LBB59_7:                               # %._crit_edge
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
.Lfunc_end59:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii, .Lfunc_end59-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE6DeleteEii
	.cfi_endproc
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
	beqz	$a0, .LBB60_2
# %bb.1:
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB60_2:
	ret
.Lfunc_end60:
	.size	_ZN7CBufferIhED2Ev, .Lfunc_end60-_ZN7CBufferIhED2Ev
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
	beqz	$a1, .LBB61_2
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
.LBB61_2:                               # %_ZN7CBufferIhED2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end61:
	.size	_ZN7CBufferIhED0Ev, .Lfunc_end61-_ZN7CBufferIhED0Ev
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
.Lfunc_end62:
	.size	_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev, .Lfunc_end62-_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEED0Ev
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
.Lfunc_end63:
	.size	_ZN13CRecordVectorIyED0Ev, .Lfunc_end63-_ZN13CRecordVectorIyED0Ev
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
.Lfunc_end64:
	.size	_ZN13CRecordVectorIjED0Ev, .Lfunc_end64-_ZN13CRecordVectorIjED0Ev
                                        # -- End function
	.section	.text._ZNK11CStringBaseIwE3MidEii,"axG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.weak	_ZNK11CStringBaseIwE3MidEii     # -- Begin function _ZNK11CStringBaseIwE3MidEii
	.p2align	5
	.type	_ZNK11CStringBaseIwE3MidEii,@function
_ZNK11CStringBaseIwE3MidEii:            # @_ZNK11CStringBaseIwE3MidEii
.Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception29
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
	bnez	$a2, .LBB65_4
# %bb.1:
	bne	$s4, $s2, .LBB65_4
# %bb.2:
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s1, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s1, $a0
	vst	$vr0, $fp, 0
	beqz	$a0, .LBB65_13
# %bb.3:
	move	$a0, $zero
	b	.LBB65_14
.LBB65_4:
	st.d	$zero, $fp, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 4
	addi.w	$s5, $s4, 1
	st.w	$a1, $fp, 12
	beq	$s5, $a1, .LBB65_7
# %bb.5:
	move	$s2, $a0
	slti	$a0, $s4, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp472:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp473:
# %bb.6:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	st.d	$s3, $fp, 0
	st.w	$zero, $s3, 0
	st.w	$s5, $fp, 12
	blez	$s4, .LBB65_12
.LBB65_7:                               # %.lr.ph
	ld.d	$a2, $s0, 0
	ori	$a3, $zero, 8
	alsl.d	$a1, $s1, $a2, 2
	bltu	$s4, $a3, .LBB65_9
# %bb.8:                                # %vector.memcheck
	alsl.d	$a2, $s1, $a2, 2
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB65_18
.LBB65_9:
	move	$a2, $zero
.LBB65_10:                              # %scalar.ph.preheader
	slli.d	$a3, $a2, 2
	.p2align	4, , 16
.LBB65_11:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a1, $a3
	stx.w	$a4, $a0, $a3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bltu	$a2, $s4, .LBB65_11
.LBB65_12:                              # %._crit_edge
	slli.d	$a1, $s4, 2
	stx.w	$zero, $a0, $a1
	b	.LBB65_17
.LBB65_13:
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
.LBB65_14:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a1, $s0, 0
	.p2align	4, , 16
.LBB65_15:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB65_15
# %bb.16:
	move	$s4, $s2
.LBB65_17:                              # %_ZN11CStringBaseIwEC2ERKS0_.exit
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
.LBB65_18:                              # %vector.ph
	bstrpick.d	$a2, $s4, 30, 3
	slli.d	$a2, $a2, 3
	move	$a3, $zero
	move	$a4, $a2
	.p2align	4, , 16
.LBB65_19:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a3
	vldx	$vr0, $a1, $a3
	vld	$vr1, $a5, 16
	add.d	$a5, $a0, $a3
	vstx	$vr0, $a0, $a3
	vst	$vr1, $a5, 16
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB65_19
# %bb.20:                               # %middle.block
	beq	$a2, $s4, .LBB65_12
	b	.LBB65_10
.LBB65_21:                              # %_ZN11CStringBaseIwED2Ev.exit
.Ltmp474:
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end65:
	.size	_ZNK11CStringBaseIwE3MidEii, .Lfunc_end65-_ZNK11CStringBaseIwE3MidEii
	.cfi_endproc
	.section	.gcc_except_table._ZNK11CStringBaseIwE3MidEii,"aG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.p2align	2, 0x0
GCC_except_table65:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Lfunc_begin29-.Lfunc_begin29  # >> Call Site 1 <<
	.uleb128 .Ltmp472-.Lfunc_begin29        #   Call between .Lfunc_begin29 and .Ltmp472
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp472-.Lfunc_begin29        # >> Call Site 2 <<
	.uleb128 .Ltmp473-.Ltmp472              #   Call between .Ltmp472 and .Ltmp473
	.uleb128 .Ltmp474-.Lfunc_begin29        #     jumps to .Ltmp474
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin29        # >> Call Site 3 <<
	.uleb128 .Lfunc_end65-.Ltmp473          #   Call between .Ltmp473 and .Lfunc_end65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end29:
	.p2align	2, 0x0
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
.Lfunc_end66:
	.size	_ZN13CRecordVectorIiED0Ev, .Lfunc_end66-_ZN13CRecordVectorIiED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEED0Ev,"axG",@progbits,_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEED0Ev,comdat
	.weak	_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEED0Ev # -- Begin function _ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEED0Ev,@function
_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEED0Ev: # @_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEED0Ev
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
.Lfunc_end67:
	.size	_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEED0Ev, .Lfunc_end67-_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED0Ev,@function
_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED0Ev: # @_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED0Ev
.Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception30
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE+16)
	st.d	$a0, $fp, 0
.Ltmp475:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp476:
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev.exit
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
.LBB68_2:
.Ltmp477:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end68:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED0Ev, .Lfunc_end68-_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table68:
.Lexception30:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase24-.Lttbaseref24
.Lttbaseref24:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Ltmp475-.Lfunc_begin30        # >> Call Site 1 <<
	.uleb128 .Ltmp476-.Ltmp475              #   Call between .Ltmp475 and .Ltmp476
	.uleb128 .Ltmp477-.Lfunc_begin30        #     jumps to .Ltmp477
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp476-.Lfunc_begin30        # >> Call Site 2 <<
	.uleb128 .Lfunc_end68-.Ltmp476          #   Call between .Ltmp476 and .Lfunc_end68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end30:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase24:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE6DeleteEii
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
	blt	$s1, $a0, .LBB69_5
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB69_3
	.p2align	4, , 16
.LBB69_2:                               #   in Loop: Header=BB69_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB69_5
.LBB69_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB69_2
# %bb.4:                                #   in Loop: Header=BB69_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB69_2
.LBB69_5:                               # %._crit_edge
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
.Lfunc_end69:
	.size	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE6DeleteEii, .Lfunc_end69-_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive3N7z7CFolderC2ERKS1_,"axG",@progbits,_ZN8NArchive3N7z7CFolderC2ERKS1_,comdat
	.weak	_ZN8NArchive3N7z7CFolderC2ERKS1_ # -- Begin function _ZN8NArchive3N7z7CFolderC2ERKS1_
	.p2align	5
	.type	_ZN8NArchive3N7z7CFolderC2ERKS1_,@function
_ZN8NArchive3N7z7CFolderC2ERKS1_:       # @_ZN8NArchive3N7z7CFolderC2ERKS1_
.Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception31
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
.Ltmp478:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp479:
# %bb.1:                                # %.noexc.i
.Ltmp480:
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_)
	jirl	$ra, $ra, 0
.Ltmp481:
# %bb.2:                                # %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEC2ERKS3_.exit
	addi.d	$s0, $fp, 32
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 40
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 56
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE+16)
	st.d	$a0, $fp, 32
.Ltmp483:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp484:
# %bb.3:                                # %.noexc.i11
	ld.w	$s3, $s1, 44
	ld.w	$a0, $fp, 44
	add.w	$a1, $a0, $s3
.Ltmp485:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp486:
# %bb.4:                                # %.noexc3.i
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB70_8
# %bb.5:                                # %.lr.ph.i.i.i
	move	$s2, $zero
	slli.d	$s3, $s3, 3
	.p2align	4, , 16
.LBB70_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 48
	ldx.d	$s4, $a0, $s2
.Ltmp488:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp489:
# %bb.7:                                # %.noexc4.i
                                        #   in Loop: Header=BB70_6 Depth=1
	ld.w	$a0, $fp, 44
	ld.d	$a1, $fp, 48
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a1, $a0
	ld.w	$a0, $fp, 44
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	st.w	$a0, $fp, 44
	bne	$s3, $s2, .LBB70_6
.LBB70_8:                               # %_ZN13CRecordVectorIN8NArchive3N7z9CBindPairEEC2ERKS3_.exit
	addi.d	$s2, $fp, 64
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 72
	ori	$a0, $zero, 4
	st.d	$a0, $fp, 88
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a0, $fp, 64
.Ltmp491:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp492:
# %bb.9:                                # %.noexc.i15
	ld.w	$s4, $s1, 76
	ld.w	$a0, $fp, 76
	add.w	$a1, $a0, $s4
.Ltmp493:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp494:
# %bb.10:                               # %.noexc3.i16
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB70_14
# %bb.11:                               # %.lr.ph.i.i.i17
	move	$s3, $zero
	slli.d	$s4, $s4, 2
	.p2align	4, , 16
.LBB70_12:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 80
	ldx.w	$s5, $a0, $s3
.Ltmp496:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp497:
# %bb.13:                               # %.noexc4.i22
                                        #   in Loop: Header=BB70_12 Depth=1
	ld.w	$a0, $fp, 76
	ld.d	$a1, $fp, 80
	slli.d	$a0, $a0, 2
	stx.w	$s5, $a1, $a0
	ld.w	$a0, $fp, 76
	addi.d	$a0, $a0, 1
	addi.d	$s3, $s3, 4
	st.w	$a0, $fp, 76
	bne	$s4, $s3, .LBB70_12
.LBB70_14:                              # %_ZN13CRecordVectorIjEC2ERKS0_.exit
	addi.d	$s3, $fp, 96
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 104
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 120
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a0, $fp, 96
.Ltmp499:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp500:
# %bb.15:                               # %.noexc.i30
	ld.w	$s5, $s1, 108
	ld.w	$a0, $fp, 108
	add.w	$a1, $a0, $s5
.Ltmp501:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp502:
# %bb.16:                               # %.noexc3.i31
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB70_20
# %bb.17:                               # %.lr.ph.i.i.i32
	move	$s4, $zero
	slli.d	$s5, $s5, 3
	.p2align	4, , 16
.LBB70_18:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 112
	ldx.d	$s6, $a0, $s4
.Ltmp504:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp505:
# %bb.19:                               # %.noexc4.i37
                                        #   in Loop: Header=BB70_18 Depth=1
	ld.w	$a0, $fp, 108
	ld.d	$a1, $fp, 112
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s4, $s4, 8
	st.w	$a0, $fp, 108
	bne	$s5, $s4, .LBB70_18
.LBB70_20:                              # %_ZN13CRecordVectorIyEC2ERKS0_.exit
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
.LBB70_21:                              # %.loopexit.split-lp.i27
.Ltmp503:
	b	.LBB70_26
.LBB70_22:                              # %.loopexit.split-lp.i12
.Ltmp495:
	b	.LBB70_28
.LBB70_23:                              # %.loopexit.split-lp.i
.Ltmp487:
	b	.LBB70_31
.LBB70_24:
.Ltmp482:
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB70_25:                              # %.loopexit.i35
.Ltmp506:
.LBB70_26:                              # %.body40
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB70_29
.LBB70_27:                              # %.loopexit.i20
.Ltmp498:
.LBB70_28:                              # %.body25
	move	$s1, $a0
.LBB70_29:                              # %.body25
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB70_32
.LBB70_30:                              # %.loopexit.i
.Ltmp490:
.LBB70_31:                              # %.body
	move	$s1, $a0
.LBB70_32:                              # %.body
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end70:
	.size	_ZN8NArchive3N7z7CFolderC2ERKS1_, .Lfunc_end70-_ZN8NArchive3N7z7CFolderC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN8NArchive3N7z7CFolderC2ERKS1_,"aG",@progbits,_ZN8NArchive3N7z7CFolderC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table70:
.Lexception31:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Ltmp478-.Lfunc_begin31        # >> Call Site 1 <<
	.uleb128 .Ltmp481-.Ltmp478              #   Call between .Ltmp478 and .Ltmp481
	.uleb128 .Ltmp482-.Lfunc_begin31        #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin31        # >> Call Site 2 <<
	.uleb128 .Ltmp486-.Ltmp483              #   Call between .Ltmp483 and .Ltmp486
	.uleb128 .Ltmp487-.Lfunc_begin31        #     jumps to .Ltmp487
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp488-.Lfunc_begin31        # >> Call Site 3 <<
	.uleb128 .Ltmp489-.Ltmp488              #   Call between .Ltmp488 and .Ltmp489
	.uleb128 .Ltmp490-.Lfunc_begin31        #     jumps to .Ltmp490
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp491-.Lfunc_begin31        # >> Call Site 4 <<
	.uleb128 .Ltmp494-.Ltmp491              #   Call between .Ltmp491 and .Ltmp494
	.uleb128 .Ltmp495-.Lfunc_begin31        #     jumps to .Ltmp495
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp496-.Lfunc_begin31        # >> Call Site 5 <<
	.uleb128 .Ltmp497-.Ltmp496              #   Call between .Ltmp496 and .Ltmp497
	.uleb128 .Ltmp498-.Lfunc_begin31        #     jumps to .Ltmp498
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp499-.Lfunc_begin31        # >> Call Site 6 <<
	.uleb128 .Ltmp502-.Ltmp499              #   Call between .Ltmp499 and .Ltmp502
	.uleb128 .Ltmp503-.Lfunc_begin31        #     jumps to .Ltmp503
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp504-.Lfunc_begin31        # >> Call Site 7 <<
	.uleb128 .Ltmp505-.Ltmp504              #   Call between .Ltmp504 and .Ltmp505
	.uleb128 .Ltmp506-.Lfunc_begin31        #     jumps to .Ltmp506
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp505-.Lfunc_begin31        # >> Call Site 8 <<
	.uleb128 .Lfunc_end70-.Ltmp505          #   Call between .Ltmp505 and .Lfunc_end70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end31:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,"axG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,comdat
	.weak	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_ # -- Begin function _ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,@function
_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_: # @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_
.Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception32
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
	blt	$s1, $a0, .LBB71_6
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s1, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	b	.LBB71_3
	.p2align	4, , 16
.LBB71_2:                               # %_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEE3AddERKS2_.exit
                                        #   in Loop: Header=BB71_3 Depth=1
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
	beq	$s4, $s3, .LBB71_6
.LBB71_3:                               # =>This Inner Loop Header: Depth=1
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
	beqz	$s2, .LBB71_2
# %bb.4:                                # %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
                                        #   in Loop: Header=BB71_3 Depth=1
.Ltmp507:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp508:
# %bb.5:                                # %.noexc.i
                                        #   in Loop: Header=BB71_3 Depth=1
	st.d	$a0, $s1, 24
	ld.d	$a1, $s6, 24
	st.d	$s2, $s1, 16
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB71_2
.LBB71_6:                               # %._crit_edge
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
.LBB71_7:
.Ltmp509:
	move	$fp, $a0
	ori	$a1, $zero, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end71:
	.size	_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_, .Lfunc_end71-_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,"aG",@progbits,_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEEpLERKS3_,comdat
	.p2align	2, 0x0
GCC_except_table71:
.Lexception32:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Lfunc_begin32-.Lfunc_begin32  # >> Call Site 1 <<
	.uleb128 .Ltmp507-.Lfunc_begin32        #   Call between .Lfunc_begin32 and .Ltmp507
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin32        # >> Call Site 2 <<
	.uleb128 .Ltmp508-.Ltmp507              #   Call between .Ltmp507 and .Ltmp508
	.uleb128 .Ltmp509-.Lfunc_begin32        #     jumps to .Ltmp509
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp508-.Lfunc_begin32        # >> Call Site 3 <<
	.uleb128 .Lfunc_end71-.Ltmp508          #   Call between .Ltmp508 and .Lfunc_end71
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end32:
	.p2align	2, 0x0
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
.Lfunc_end72:
	.size	_ZN13CRecordVectorIbED0Ev, .Lfunc_end72-_ZN13CRecordVectorIbED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIN8NArchive3N7z8CRefItemEED0Ev,"axG",@progbits,_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEED0Ev,comdat
	.weak	_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEED0Ev # -- Begin function _ZN13CRecordVectorIN8NArchive3N7z8CRefItemEED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEED0Ev,@function
_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEED0Ev: # @_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEED0Ev
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
.Lfunc_end73:
	.size	_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEED0Ev, .Lfunc_end73-_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEED0Ev
                                        # -- End function
	.type	_ZTVN8NArchive3N7z17CFolderOutStream2E,@object # @_ZTVN8NArchive3N7z17CFolderOutStream2E
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN8NArchive3N7z17CFolderOutStream2E
	.p2align	3, 0x0
_ZTVN8NArchive3N7z17CFolderOutStream2E:
	.dword	0
	.dword	_ZTIN8NArchive3N7z17CFolderOutStream2E
	.dword	_ZN8NArchive3N7z17CFolderOutStream214QueryInterfaceERK4GUIDPPv
	.dword	_ZN8NArchive3N7z17CFolderOutStream26AddRefEv
	.dword	_ZN8NArchive3N7z17CFolderOutStream27ReleaseEv
	.dword	_ZN8NArchive3N7z17CFolderOutStream2D2Ev
	.dword	_ZN8NArchive3N7z17CFolderOutStream2D0Ev
	.dword	_ZN8NArchive3N7z17CFolderOutStream25WriteEPKvjPj
	.size	_ZTVN8NArchive3N7z17CFolderOutStream2E, 64

	.type	_ZTIN8NArchive3N7z17CFolderOutStream2E,@object # @_ZTIN8NArchive3N7z17CFolderOutStream2E
	.globl	_ZTIN8NArchive3N7z17CFolderOutStream2E
	.p2align	3, 0x0
_ZTIN8NArchive3N7z17CFolderOutStream2E:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN8NArchive3N7z17CFolderOutStream2E
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI20ISequentialOutStream
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTIN8NArchive3N7z17CFolderOutStream2E, 56

	.type	_ZTSN8NArchive3N7z17CFolderOutStream2E,@object # @_ZTSN8NArchive3N7z17CFolderOutStream2E
	.section	.rodata,"a",@progbits
	.globl	_ZTSN8NArchive3N7z17CFolderOutStream2E
_ZTSN8NArchive3N7z17CFolderOutStream2E:
	.asciz	"N8NArchive3N7z17CFolderOutStream2E"
	.size	_ZTSN8NArchive3N7z17CFolderOutStream2E, 35

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

	.type	_ZTVN8NArchive3N7z14CThreadDecoderE,@object # @_ZTVN8NArchive3N7z14CThreadDecoderE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN8NArchive3N7z14CThreadDecoderE
	.p2align	3, 0x0
_ZTVN8NArchive3N7z14CThreadDecoderE:
	.dword	0
	.dword	_ZTIN8NArchive3N7z14CThreadDecoderE
	.dword	_ZN8NArchive3N7z14CThreadDecoder7ExecuteEv
	.size	_ZTVN8NArchive3N7z14CThreadDecoderE, 24

	.type	_ZTIN8NArchive3N7z14CThreadDecoderE,@object # @_ZTIN8NArchive3N7z14CThreadDecoderE
	.globl	_ZTIN8NArchive3N7z14CThreadDecoderE
	.p2align	3, 0x0
_ZTIN8NArchive3N7z14CThreadDecoderE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN8NArchive3N7z14CThreadDecoderE
	.dword	_ZTI11CVirtThread
	.size	_ZTIN8NArchive3N7z14CThreadDecoderE, 24

	.type	_ZTSN8NArchive3N7z14CThreadDecoderE,@object # @_ZTSN8NArchive3N7z14CThreadDecoderE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN8NArchive3N7z14CThreadDecoderE
_ZTSN8NArchive3N7z14CThreadDecoderE:
	.asciz	"N8NArchive3N7z14CThreadDecoderE"
	.size	_ZTSN8NArchive3N7z14CThreadDecoderE, 32

	.type	_ZTI11CVirtThread,@object       # @_ZTI11CVirtThread
	.section	.data.rel.ro._ZTI11CVirtThread,"awG",@progbits,_ZTI11CVirtThread,comdat
	.weak	_ZTI11CVirtThread
	.p2align	3, 0x0
_ZTI11CVirtThread:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS11CVirtThread
	.size	_ZTI11CVirtThread, 16

	.type	_ZTS11CVirtThread,@object       # @_ZTS11CVirtThread
	.section	.rodata._ZTS11CVirtThread,"aG",@progbits,_ZTS11CVirtThread,comdat
	.weak	_ZTS11CVirtThread
_ZTS11CVirtThread:
	.asciz	"11CVirtThread"
	.size	_ZTS11CVirtThread, 14

	.type	_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE,@object # @_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE
	.p2align	3, 0x0
_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE:
	.dword	0
	.dword	_ZTIN8NArchive3N7z22CCryptoGetTextPasswordE
	.dword	_ZN8NArchive3N7z22CCryptoGetTextPassword14QueryInterfaceERK4GUIDPPv
	.dword	_ZN8NArchive3N7z22CCryptoGetTextPassword6AddRefEv
	.dword	_ZN8NArchive3N7z22CCryptoGetTextPassword7ReleaseEv
	.dword	_ZN8NArchive3N7z22CCryptoGetTextPasswordD2Ev
	.dword	_ZN8NArchive3N7z22CCryptoGetTextPasswordD0Ev
	.dword	_ZN8NArchive3N7z22CCryptoGetTextPassword21CryptoGetTextPasswordEPPw
	.size	_ZTVN8NArchive3N7z22CCryptoGetTextPasswordE, 64

	.type	_ZTIN8NArchive3N7z22CCryptoGetTextPasswordE,@object # @_ZTIN8NArchive3N7z22CCryptoGetTextPasswordE
	.globl	_ZTIN8NArchive3N7z22CCryptoGetTextPasswordE
	.p2align	3, 0x0
_ZTIN8NArchive3N7z22CCryptoGetTextPasswordE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN8NArchive3N7z22CCryptoGetTextPasswordE
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI22ICryptoGetTextPassword
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTIN8NArchive3N7z22CCryptoGetTextPasswordE, 56

	.type	_ZTSN8NArchive3N7z22CCryptoGetTextPasswordE,@object # @_ZTSN8NArchive3N7z22CCryptoGetTextPasswordE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN8NArchive3N7z22CCryptoGetTextPasswordE
_ZTSN8NArchive3N7z22CCryptoGetTextPasswordE:
	.asciz	"N8NArchive3N7z22CCryptoGetTextPasswordE"
	.size	_ZTSN8NArchive3N7z22CCryptoGetTextPasswordE, 40

	.type	_ZTI22ICryptoGetTextPassword,@object # @_ZTI22ICryptoGetTextPassword
	.section	.data.rel.ro._ZTI22ICryptoGetTextPassword,"awG",@progbits,_ZTI22ICryptoGetTextPassword,comdat
	.weak	_ZTI22ICryptoGetTextPassword
	.p2align	3, 0x0
_ZTI22ICryptoGetTextPassword:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS22ICryptoGetTextPassword
	.dword	_ZTI8IUnknown
	.size	_ZTI22ICryptoGetTextPassword, 24

	.type	_ZTS22ICryptoGetTextPassword,@object # @_ZTS22ICryptoGetTextPassword
	.section	.rodata._ZTS22ICryptoGetTextPassword,"aG",@progbits,_ZTS22ICryptoGetTextPassword,comdat
	.weak	_ZTS22ICryptoGetTextPassword
_ZTS22ICryptoGetTextPassword:
	.asciz	"22ICryptoGetTextPassword"
	.size	_ZTS22ICryptoGetTextPassword, 25

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" lzma 7z ace arc arj bz bz2 deb lzo lzx gz pak rpm sit tgz tbz tbz2 tgz cab ha lha lzh rar zoo zip jar ear war msi 3gp avi mov mpeg mpg mpe wmv aac ape fla flac la mp3 m4a mp4 ofr ogg pac ra rm rka shn swa tta wv wma wav swf  chm hxi hxs gif jpeg jpg jp2 png tiff  bmp ico psd psp awg ps eps cgm dxf svg vrml wmf emf ai md cad dwg pps key sxi max 3ds iso bin nrg mdf img pdi tar cpio xpi vfd vhd vud vmc vsv vmdk dsk nvram vmem vmsd vmsn vmss vmtm inl inc idl acf asa h hpp hxx c cpp cxx rc java cs pas bas vb cls ctl frm dlg def f77 f f90 f95 asm sql manifest dep  mak clw csproj vcproj sln dsp dsw  class  bat cmd xml xsd xsl xslt hxk hxc htm html xhtml xht mht mhtml htw asp aspx css cgi jsp shtml awk sed hta js php php3 php4 php5 phptml pl pm py pyo rb sh tcl vbs text txt tex ans asc srt reg ini doc docx mcw dot rtf hlp xls xlr xlt xlw ppt pdf sxc sxd sxi sxg sxw stc sti stw stm odt ott odg otg odp otp ods ots odf abw afp cwk lwp wpd wps wpt wrf wri abf afm bdf fon mgf otf pcf pfa snf ttf dbf mdb nsf ntf wdb db fdb gdb exe dll ocx vbx sfx sys tlb awx com obj lib out o so  pdb pch idb ncb opt"
	.size	.L.str, 1104

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

	.type	_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE,@object # @_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE
	.section	.data.rel.ro._ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE,"awG",@progbits,_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE,comdat
	.weak	_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE
	.p2align	3, 0x0
_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE:
	.dword	0
	.dword	_ZTIN8NWindows16NSynchronization21CManualResetEventWFMOE
	.dword	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
	.size	_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE, 24

	.type	_ZTIN8NWindows16NSynchronization21CManualResetEventWFMOE,@object # @_ZTIN8NWindows16NSynchronization21CManualResetEventWFMOE
	.section	.data.rel.ro._ZTIN8NWindows16NSynchronization21CManualResetEventWFMOE,"awG",@progbits,_ZTIN8NWindows16NSynchronization21CManualResetEventWFMOE,comdat
	.weak	_ZTIN8NWindows16NSynchronization21CManualResetEventWFMOE
	.p2align	3, 0x0
_ZTIN8NWindows16NSynchronization21CManualResetEventWFMOE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN8NWindows16NSynchronization21CManualResetEventWFMOE
	.dword	_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.size	_ZTIN8NWindows16NSynchronization21CManualResetEventWFMOE, 24

	.type	_ZTSN8NWindows16NSynchronization21CManualResetEventWFMOE,@object # @_ZTSN8NWindows16NSynchronization21CManualResetEventWFMOE
	.section	.rodata._ZTSN8NWindows16NSynchronization21CManualResetEventWFMOE,"aG",@progbits,_ZTSN8NWindows16NSynchronization21CManualResetEventWFMOE,comdat
	.weak	_ZTSN8NWindows16NSynchronization21CManualResetEventWFMOE
_ZTSN8NWindows16NSynchronization21CManualResetEventWFMOE:
	.asciz	"N8NWindows16NSynchronization21CManualResetEventWFMOE"
	.size	_ZTSN8NWindows16NSynchronization21CManualResetEventWFMOE, 53

	.type	_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE,@object # @_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.section	.data.rel.ro._ZTIN8NWindows16NSynchronization14CBaseEventWFMOE,"awG",@progbits,_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE,comdat
	.weak	_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.p2align	3, 0x0
_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE
	.dword	_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE
	.size	_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE, 24

	.type	_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE,@object # @_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE
	.section	.rodata._ZTSN8NWindows16NSynchronization14CBaseEventWFMOE,"aG",@progbits,_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE,comdat
	.weak	_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE
_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE:
	.asciz	"N8NWindows16NSynchronization14CBaseEventWFMOE"
	.size	_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE, 46

	.type	_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE,@object # @_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE
	.section	.data.rel.ro._ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE,"awG",@progbits,_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE,comdat
	.weak	_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE
	.p2align	3, 0x0
_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE
	.size	_ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE, 16

	.type	_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE,@object # @_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE
	.section	.rodata._ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE,"aG",@progbits,_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE,comdat
	.weak	_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE
_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE:
	.asciz	"N8NWindows16NSynchronization15CBaseHandleWFMOE"
	.size	_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE, 47

	.type	_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE,@object # @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE
	.section	.data.rel.ro._ZTVN8NWindows16NSynchronization14CBaseEventWFMOE,"awG",@progbits,_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE,comdat
	.weak	_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE
	.p2align	3, 0x0
_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE:
	.dword	0
	.dword	_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.dword	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
	.size	_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, 24

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

	.type	_ZTV13CRecordVectorIN8NArchive3N7z13CFolderRepackEE,@object # @_ZTV13CRecordVectorIN8NArchive3N7z13CFolderRepackEE
	.section	.data.rel.ro._ZTV13CRecordVectorIN8NArchive3N7z13CFolderRepackEE,"awG",@progbits,_ZTV13CRecordVectorIN8NArchive3N7z13CFolderRepackEE,comdat
	.weak	_ZTV13CRecordVectorIN8NArchive3N7z13CFolderRepackEE
	.p2align	3, 0x0
_ZTV13CRecordVectorIN8NArchive3N7z13CFolderRepackEE:
	.dword	0
	.dword	_ZTI13CRecordVectorIN8NArchive3N7z13CFolderRepackEE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIN8NArchive3N7z13CFolderRepackEED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIN8NArchive3N7z13CFolderRepackEE, 40

	.type	_ZTI13CRecordVectorIN8NArchive3N7z13CFolderRepackEE,@object # @_ZTI13CRecordVectorIN8NArchive3N7z13CFolderRepackEE
	.section	.data.rel.ro._ZTI13CRecordVectorIN8NArchive3N7z13CFolderRepackEE,"awG",@progbits,_ZTI13CRecordVectorIN8NArchive3N7z13CFolderRepackEE,comdat
	.weak	_ZTI13CRecordVectorIN8NArchive3N7z13CFolderRepackEE
	.p2align	3, 0x0
_ZTI13CRecordVectorIN8NArchive3N7z13CFolderRepackEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIN8NArchive3N7z13CFolderRepackEE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIN8NArchive3N7z13CFolderRepackEE, 24

	.type	_ZTS13CRecordVectorIN8NArchive3N7z13CFolderRepackEE,@object # @_ZTS13CRecordVectorIN8NArchive3N7z13CFolderRepackEE
	.section	.rodata._ZTS13CRecordVectorIN8NArchive3N7z13CFolderRepackEE,"aG",@progbits,_ZTS13CRecordVectorIN8NArchive3N7z13CFolderRepackEE,comdat
	.weak	_ZTS13CRecordVectorIN8NArchive3N7z13CFolderRepackEE
_ZTS13CRecordVectorIN8NArchive3N7z13CFolderRepackEE:
	.asciz	"13CRecordVectorIN8NArchive3N7z13CFolderRepackEE"
	.size	_ZTS13CRecordVectorIN8NArchive3N7z13CFolderRepackEE, 48

	.type	_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE,@object # @_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive3N7z11CSolidGroupEE
	.dword	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive3N7z11CSolidGroupEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive3N7z11CSolidGroupEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive3N7z11CSolidGroupEE,@object # @_ZTI13CObjectVectorIN8NArchive3N7z11CSolidGroupEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive3N7z11CSolidGroupEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive3N7z11CSolidGroupEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive3N7z11CSolidGroupEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive3N7z11CSolidGroupEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive3N7z11CSolidGroupEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive3N7z11CSolidGroupEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive3N7z11CSolidGroupEE,@object # @_ZTS13CObjectVectorIN8NArchive3N7z11CSolidGroupEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive3N7z11CSolidGroupEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive3N7z11CSolidGroupEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive3N7z11CSolidGroupEE
_ZTS13CObjectVectorIN8NArchive3N7z11CSolidGroupEE:
	.asciz	"13CObjectVectorIN8NArchive3N7z11CSolidGroupEE"
	.size	_ZTS13CObjectVectorIN8NArchive3N7z11CSolidGroupEE, 46

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

	.type	_ZTV13CRecordVectorIN8NArchive3N7z8CRefItemEE,@object # @_ZTV13CRecordVectorIN8NArchive3N7z8CRefItemEE
	.section	.data.rel.ro._ZTV13CRecordVectorIN8NArchive3N7z8CRefItemEE,"awG",@progbits,_ZTV13CRecordVectorIN8NArchive3N7z8CRefItemEE,comdat
	.weak	_ZTV13CRecordVectorIN8NArchive3N7z8CRefItemEE
	.p2align	3, 0x0
_ZTV13CRecordVectorIN8NArchive3N7z8CRefItemEE:
	.dword	0
	.dword	_ZTI13CRecordVectorIN8NArchive3N7z8CRefItemEE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIN8NArchive3N7z8CRefItemEED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIN8NArchive3N7z8CRefItemEE, 40

	.type	_ZTI13CRecordVectorIN8NArchive3N7z8CRefItemEE,@object # @_ZTI13CRecordVectorIN8NArchive3N7z8CRefItemEE
	.section	.data.rel.ro._ZTI13CRecordVectorIN8NArchive3N7z8CRefItemEE,"awG",@progbits,_ZTI13CRecordVectorIN8NArchive3N7z8CRefItemEE,comdat
	.weak	_ZTI13CRecordVectorIN8NArchive3N7z8CRefItemEE
	.p2align	3, 0x0
_ZTI13CRecordVectorIN8NArchive3N7z8CRefItemEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIN8NArchive3N7z8CRefItemEE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIN8NArchive3N7z8CRefItemEE, 24

	.type	_ZTS13CRecordVectorIN8NArchive3N7z8CRefItemEE,@object # @_ZTS13CRecordVectorIN8NArchive3N7z8CRefItemEE
	.section	.rodata._ZTS13CRecordVectorIN8NArchive3N7z8CRefItemEE,"aG",@progbits,_ZTS13CRecordVectorIN8NArchive3N7z8CRefItemEE,comdat
	.weak	_ZTS13CRecordVectorIN8NArchive3N7z8CRefItemEE
_ZTS13CRecordVectorIN8NArchive3N7z8CRefItemEE:
	.asciz	"13CRecordVectorIN8NArchive3N7z8CRefItemEE"
	.size	_ZTS13CRecordVectorIN8NArchive3N7z8CRefItemEE, 42

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
	.addrsig_sym _ZN8NArchive3N7zL17CompareEmptyItemsEPKiS2_Pv
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZTIN8NArchive3N7z17CFolderOutStream2E
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTSN8NArchive3N7z17CFolderOutStream2E
	.addrsig_sym _ZTI20ISequentialOutStream
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS20ISequentialOutStream
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
	.addrsig_sym _ZTIN8NArchive3N7z14CThreadDecoderE
	.addrsig_sym _ZTSN8NArchive3N7z14CThreadDecoderE
	.addrsig_sym _ZTI11CVirtThread
	.addrsig_sym _ZTS11CVirtThread
	.addrsig_sym _ZTIN8NArchive3N7z22CCryptoGetTextPasswordE
	.addrsig_sym _ZTSN8NArchive3N7z22CCryptoGetTextPasswordE
	.addrsig_sym _ZTI22ICryptoGetTextPassword
	.addrsig_sym _ZTS22ICryptoGetTextPassword
	.addrsig_sym _ZTI13CObjectVectorI9CMyComPtrI8IUnknownEE
	.addrsig_sym _ZTS13CObjectVectorI9CMyComPtrI8IUnknownEE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTIN8NWindows5NFile3NIO7CInFileE
	.addrsig_sym _ZTSN8NWindows5NFile3NIO7CInFileE
	.addrsig_sym _ZTIN8NWindows5NFile3NIO9CFileBaseE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE
	.addrsig_sym _ZTI13CObjectVectorI5CPropE
	.addrsig_sym _ZTS13CObjectVectorI5CPropE
	.addrsig_sym _ZTI13CRecordVectorIN8NArchive3N7z5CBindEE
	.addrsig_sym _ZTS13CRecordVectorIN8NArchive3N7z5CBindEE
	.addrsig_sym _ZTIN8NWindows16NSynchronization21CManualResetEventWFMOE
	.addrsig_sym _ZTSN8NWindows16NSynchronization21CManualResetEventWFMOE
	.addrsig_sym _ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.addrsig_sym _ZTSN8NWindows16NSynchronization14CBaseEventWFMOE
	.addrsig_sym _ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE
	.addrsig_sym _ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE
	.addrsig_sym _ZTI7CBufferIhE
	.addrsig_sym _ZTS7CBufferIhE
	.addrsig_sym _ZTI13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.addrsig_sym _ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE
	.addrsig_sym _ZTI13CRecordVectorIyE
	.addrsig_sym _ZTS13CRecordVectorIyE
	.addrsig_sym _ZTIi
	.addrsig_sym _ZTI13CRecordVectorIjE
	.addrsig_sym _ZTS13CRecordVectorIjE
	.addrsig_sym _ZTI13CRecordVectorIiE
	.addrsig_sym _ZTS13CRecordVectorIiE
	.addrsig_sym _ZTI13CRecordVectorIN8NArchive3N7z13CFolderRepackEE
	.addrsig_sym _ZTS13CRecordVectorIN8NArchive3N7z13CFolderRepackEE
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive3N7z11CSolidGroupEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive3N7z11CSolidGroupEE
	.addrsig_sym _ZTI13CRecordVectorIbE
	.addrsig_sym _ZTS13CRecordVectorIbE
	.addrsig_sym _ZTI13CRecordVectorIN8NArchive3N7z8CRefItemEE
	.addrsig_sym _ZTS13CRecordVectorIN8NArchive3N7z8CRefItemEE
