	.file	"TarUpdate.cpp"
	.text
	.globl	_ZN8NArchive4NTar13UpdateArchiveEP9IInStreamP20ISequentialOutStreamRK13CObjectVectorINS0_7CItemExEERKS5_INS0_11CUpdateItemEEP22IArchiveUpdateCallback # -- Begin function _ZN8NArchive4NTar13UpdateArchiveEP9IInStreamP20ISequentialOutStreamRK13CObjectVectorINS0_7CItemExEERKS5_INS0_11CUpdateItemEEP22IArchiveUpdateCallback
	.p2align	5
	.type	_ZN8NArchive4NTar13UpdateArchiveEP9IInStreamP20ISequentialOutStreamRK13CObjectVectorINS0_7CItemExEERKS5_INS0_11CUpdateItemEEP22IArchiveUpdateCallback,@function
_ZN8NArchive4NTar13UpdateArchiveEP9IInStreamP20ISequentialOutStreamRK13CObjectVectorINS0_7CItemExEERKS5_INS0_11CUpdateItemEEP22IArchiveUpdateCallback: # @_ZN8NArchive4NTar13UpdateArchiveEP9IInStreamP20ISequentialOutStreamRK13CObjectVectorINS0_7CItemExEERKS5_INS0_11CUpdateItemEEP22IArchiveUpdateCallback
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -320
	.cfi_def_cfa_offset 320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
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
	move	$s1, $a4
	move	$s3, $a3
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$s2, $a1
	move	$s4, $a0
	st.d	$zero, $sp, 224
.Ltmp0:
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar11COutArchive6CreateEP20ISequentialOutStream)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.1:                                # %.preheader
	ld.w	$a0, $s3, 12
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_6
# %bb.2:                                # %.lr.ph
	ld.d	$a3, $s3, 16
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $a1, 16
	move	$a1, $zero
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a5, $a5, 0
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a4, $a5
	ld.wu	$a6, $a5, 120
	ld.d	$a5, $a5, 16
	add.d	$a5, $a5, $a6
	add.d	$a1, $a5, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	beqz	$a0, .LBB0_7
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	ld.bu	$a6, $a5, 72
	bne	$a6, $a2, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a5, $a5, 16
	add.d	$a1, $a5, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB0_4
	b	.LBB0_7
.LBB0_6:
	move	$a1, $zero
.LBB0_7:                                # %._crit_edge
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 40
.Ltmp3:
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp4:
# %bb.8:
	bnez	$a0, .LBB0_146
# %bb.9:
.Ltmp6:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.10:
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9NCompress10CCopyCoderE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9NCompress10CCopyCoderE)
	st.w	$zero, $fp, 16
	addi.d	$a1, $a0, 16
	st.d	$a1, $fp, 0
	addi.d	$a1, $a0, 88
	ld.d	$a2, $a0, 24
	st.d	$a1, $fp, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $fp, 24
.Ltmp9:
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp10:
# %bb.11:                               # %_ZN9CMyComPtrI14ICompressCoderEC2EPS0_.exit
.Ltmp12:
	ori	$a0, $zero, 72
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.12:
.Ltmp15:
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN14CLocalProgressC1Ev)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.13:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
.Ltmp18:
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp19:
# %bb.14:                               # %_ZN9CMyComPtrI21ICompressProgressInfoEC2EPS0_.exit
.Ltmp21:
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN14CLocalProgress4InitEP9IProgressb)
	jirl	$ra, $ra, 0
.Ltmp22:
# %bb.15:
.Ltmp24:
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp25:
# %bb.16:
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZTV26CLimitedSequentialInStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV26CLimitedSequentialInStream)
	st.w	$zero, $fp, 8
	ld.d	$a1, $a0, 24
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 16
.Ltmp27:
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp28:
# %bb.17:                               # %_ZN9CMyComPtrI26CLimitedSequentialInStreamEC2EPS0_.exit
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	beqz	$s4, .LBB0_19
# %bb.18:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 8
.Ltmp30:
	move	$a0, $s4
	jirl	$ra, $a1, 0
.Ltmp31:
.LBB0_19:                               # %.noexc
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB0_21
# %bb.20:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp32:
	jirl	$ra, $a1, 0
.Ltmp33:
.LBB0_21:                               # %_ZN26CLimitedSequentialInStream9SetStreamEP19ISequentialInStream.exit
	ld.w	$a0, $s3, 12
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $fp, 16
	ori	$fp, $zero, 1
	blt	$a0, $fp, .LBB0_141
# %bb.22:                               # %.lr.ph348
	move	$s6, $zero
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	move	$s4, $zero
	ori	$s1, $zero, 4
	pcalau12i	$a0, %got_pc_hi20(_ZN8NArchive4NTar11NFileHeader6NMagic6kEmptyE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8NArchive4NTar11NFileHeader6NMagic6kEmptyE)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_78 Depth 2
                                        #     Child Loop BB0_82 Depth 2
                                        #     Child Loop BB0_100 Depth 2
                                        #     Child Loop BB0_95 Depth 2
                                        #     Child Loop BB0_104 Depth 2
                                        #     Child Loop BB0_108 Depth 2
	st.d	$s4, $s0, 56
	st.d	$s4, $s0, 48
.Ltmp34:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN14CLocalProgress6SetCurEv)
	jirl	$ra, $ra, 0
.Ltmp35:
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=1
	bnez	$a0, .LBB0_143
# %bb.25:                               #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $s3, 16
	slli.d	$a1, $s6, 3
	ldx.d	$s2, $a0, $a1
	st.d	$zero, $sp, 120
.Ltmp37:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp38:
# %bb.26:                               # %.noexc229
                                        #   in Loop: Header=BB0_23 Depth=1
	move	$s7, $a0
	st.d	$a0, $sp, 112
	st.b	$zero, $a0, 0
	st.w	$s1, $sp, 124
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	addi.d	$a0, $sp, 160
	vst	$vr0, $a0, 0
.Ltmp40:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp41:
# %bb.27:                               #   in Loop: Header=BB0_23 Depth=1
	move	$s8, $a0
	st.d	$a0, $sp, 160
	st.b	$zero, $a0, 0
	st.w	$s1, $sp, 172
	addi.d	$a0, $sp, 176
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
.Ltmp43:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.28:                               #   in Loop: Header=BB0_23 Depth=1
	move	$s5, $a0
	st.d	$a0, $sp, 176
	st.b	$zero, $a0, 0
	st.w	$s1, $sp, 188
	addi.d	$a0, $sp, 192
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
.Ltmp46:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp47:
# %bb.29:                               #   in Loop: Header=BB0_23 Depth=1
	st.b	$zero, $a0, 0
	ld.bu	$a1, $s2, 73
	st.d	$a0, $sp, 192
	st.w	$s1, $sp, 204
	bne	$a1, $fp, .LBB0_40
# %bb.30:                               #   in Loop: Header=BB0_23 Depth=1
	ld.w	$a0, $s2, 12
	addi.d	$fp, $s2, 24
	st.w	$a0, $sp, 136
	addi.d	$a0, $sp, 112
	beq	$fp, $a0, .LBB0_37
# %bb.31:                               #   in Loop: Header=BB0_23 Depth=1
	st.b	$zero, $s7, 0
	ld.w	$a0, $s2, 32
	addi.w	$s5, $a0, 1
	st.w	$zero, $sp, 120
	beq	$s5, $s1, .LBB0_34
# %bb.32:                               #   in Loop: Header=BB0_23 Depth=1
.Ltmp51:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp52:
# %bb.33:                               #   in Loop: Header=BB0_23 Depth=1
	move	$s8, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 120
	st.d	$s8, $sp, 112
	stx.b	$zero, $s8, $a0
	st.w	$s5, $sp, 124
	move	$s7, $s8
.LBB0_34:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $fp, 0
	.p2align	4, , 16
.LBB0_35:                               #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s7, 1
	st.b	$a1, $s7, 0
	move	$s7, $a2
	bnez	$a1, .LBB0_35
# %bb.36:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.w	$a0, $s2, 32
	st.w	$a0, $sp, 120
.LBB0_37:                               # %_ZN11CStringBaseIcEaSERKS0_.exit
                                        #   in Loop: Header=BB0_23 Depth=1
	addi.d	$s5, $s2, 40
	addi.d	$a0, $sp, 176
	beq	$s5, $a0, .LBB0_84
# %bb.38:                               #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 176
	st.w	$zero, $sp, 184
	st.b	$zero, $a0, 0
	ld.w	$a0, $s2, 48
	ld.w	$fp, $sp, 188
	addi.w	$s8, $a0, 1
	bne	$s8, $fp, .LBB0_49
# %bb.39:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i249
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$s7, $sp, 176
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_40:                               #   in Loop: Header=BB0_23 Depth=1
	ld.w	$a0, $s2, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $a1, $a0
.Ltmp49:
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar5CItemaSERKS1_)
	jirl	$ra, $ra, 0
.Ltmp50:
# %bb.41:                               #   in Loop: Header=BB0_23 Depth=1
	ld.bu	$a0, $s2, 72
	ori	$fp, $zero, 1
	bne	$a0, $fp, .LBB0_114
.LBB0_42:                               #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $s2, 16
	addi.w	$a1, $zero, -1
	st.d	$a0, $sp, 128
	beq	$a0, $a1, .LBB0_48
# %bb.43:                               #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.w	$a1, $s2, 4
	ld.d	$a3, $a2, 72
	st.d	$zero, $sp, 104
.Ltmp73:
	addi.d	$a2, $sp, 104
	jirl	$ra, $a3, 0
.Ltmp74:
# %bb.44:                               #   in Loop: Header=BB0_23 Depth=1
	move	$s7, $a0
	beqz	$a0, .LBB0_59
# %bb.45:                               #   in Loop: Header=BB0_23 Depth=1
	bne	$s7, $fp, .LBB0_61
.LBB0_46:                               #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$fp, $s2, 16
	ld.d	$a2, $a1, 80
.Ltmp85:
	move	$a1, $zero
	jirl	$ra, $a2, 0
.Ltmp86:
# %bb.47:                               #   in Loop: Header=BB0_23 Depth=1
	add.d	$s4, $fp, $s4
	sltui	$s2, $a0, 1
	masknez	$a0, $a0, $s2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s2
	or	$s7, $a1, $a0
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 104
	bnez	$a0, .LBB0_62
	b	.LBB0_63
.LBB0_48:                               #   in Loop: Header=BB0_23 Depth=1
	move	$s2, $zero
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 192
	bnez	$a0, .LBB0_126
	b	.LBB0_127
.LBB0_49:                               #   in Loop: Header=BB0_23 Depth=1
.Ltmp53:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.50:                               # %.noexc251
                                        #   in Loop: Header=BB0_23 Depth=1
	move	$s7, $a0
	ld.w	$a1, $sp, 184
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB0_80
# %bb.51:                               # %.preheader.i.i239
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 176
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_72
# %bb.52:                               # %iter.check450
                                        #   in Loop: Header=BB0_23 Depth=1
	move	$a2, $zero
	ori	$a3, $zero, 16
	bltu	$a1, $a3, .LBB0_77
# %bb.53:                               # %iter.check450
                                        #   in Loop: Header=BB0_23 Depth=1
	sub.d	$a3, $s7, $a0
	ori	$a4, $zero, 31
	bgeu	$a4, $a3, .LBB0_77
# %bb.54:                               # %vector.main.loop.iter.check452
                                        #   in Loop: Header=BB0_23 Depth=1
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB0_73
# %bb.55:                               #   in Loop: Header=BB0_23 Depth=1
	move	$a2, $zero
.LBB0_56:                               # %vec.epilog.ph465
                                        #   in Loop: Header=BB0_23 Depth=1
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s7, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB0_57:                               # %vec.epilog.vector.body471
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB0_57
# %bb.58:                               # %vec.epilog.middle.block475
                                        #   in Loop: Header=BB0_23 Depth=1
	bne	$a2, $a1, .LBB0_77
	b	.LBB0_79
.LBB0_59:                               #   in Loop: Header=BB0_23 Depth=1
.Ltmp76:
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar11COutArchive11WriteHeaderERKNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp77:
# %bb.60:                               #   in Loop: Header=BB0_23 Depth=1
	move	$s7, $a0
	beqz	$a0, .LBB0_66
.LBB0_61:                               #   in Loop: Header=BB0_23 Depth=1
	move	$s2, $zero
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp91:
	jirl	$ra, $a1, 0
.Ltmp92:
.LBB0_63:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
                                        #   in Loop: Header=BB0_23 Depth=1
	beqz	$s2, .LBB0_65
# %bb.64:                               #   in Loop: Header=BB0_23 Depth=1
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 192
	bnez	$a0, .LBB0_126
	b	.LBB0_127
.LBB0_65:                               #   in Loop: Header=BB0_23 Depth=1
	move	$s2, $zero
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 192
	bnez	$a0, .LBB0_126
	b	.LBB0_127
.LBB0_66:                               #   in Loop: Header=BB0_23 Depth=1
	ld.bu	$a0, $s2, 74
	bnez	$a0, .LBB0_46
# %bb.67:                               #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a1, $sp, 104
	ld.d	$a6, $a2, 40
.Ltmp79:
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $s0
	jirl	$ra, $a6, 0
.Ltmp80:
# %bb.68:                               #   in Loop: Header=BB0_23 Depth=1
	move	$s7, $a0
	bnez	$a0, .LBB0_61
# %bb.69:                               #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 32
	ld.d	$a0, $sp, 128
	bne	$a1, $a0, .LBB0_140
# %bb.70:                               #   in Loop: Header=BB0_23 Depth=1
.Ltmp82:
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar11COutArchive16FillDataResidualEy)
	jirl	$ra, $ra, 0
.Ltmp83:
# %bb.71:                               #   in Loop: Header=BB0_23 Depth=1
	move	$s7, $a0
	bnez	$a0, .LBB0_61
	b	.LBB0_46
.LBB0_72:                               # %._crit_edge.i.i241
                                        #   in Loop: Header=BB0_23 Depth=1
	bnez	$a0, .LBB0_79
	b	.LBB0_80
.LBB0_73:                               # %vector.ph453
                                        #   in Loop: Header=BB0_23 Depth=1
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s7, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_74:                               # %vector.body456
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB0_74
# %bb.75:                               # %middle.block461
                                        #   in Loop: Header=BB0_23 Depth=1
	beq	$a2, $a1, .LBB0_79
# %bb.76:                               # %vec.epilog.iter.check466
                                        #   in Loop: Header=BB0_23 Depth=1
	andi	$a3, $a1, 16
	bnez	$a3, .LBB0_56
.LBB0_77:                               # %vec.epilog.scalar.ph464.preheader
                                        #   in Loop: Header=BB0_23 Depth=1
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s7, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB0_78:                               # %vec.epilog.scalar.ph464
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB0_78
.LBB0_79:                               # %._crit_edge.thread.i.i242
                                        #   in Loop: Header=BB0_23 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 184
.LBB0_80:                               #   in Loop: Header=BB0_23 Depth=1
	st.d	$s7, $sp, 176
	stx.b	$zero, $s7, $a1
	st.w	$s8, $sp, 188
.LBB0_81:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i234
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $s5, 0
	.p2align	4, , 16
.LBB0_82:                               #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s7, 1
	st.b	$a1, $s7, 0
	move	$s7, $a2
	bnez	$a1, .LBB0_82
# %bb.83:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i238
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.w	$a0, $s2, 48
	st.w	$a0, $sp, 184
.LBB0_84:                               # %_ZN11CStringBaseIcEaSERKS0_.exit252
                                        #   in Loop: Header=BB0_23 Depth=1
	addi.d	$s5, $s2, 56
	ori	$fp, $zero, 1
	addi.d	$a0, $sp, 192
	beq	$s5, $a0, .LBB0_110
# %bb.85:                               #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 192
	st.w	$zero, $sp, 200
	st.b	$zero, $a0, 0
	ld.w	$a0, $s2, 64
	ld.w	$fp, $sp, 204
	addi.w	$s8, $a0, 1
	bne	$s8, $fp, .LBB0_87
# %bb.86:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i269
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$s7, $sp, 192
	ori	$fp, $zero, 1
	b	.LBB0_107
.LBB0_87:                               #   in Loop: Header=BB0_23 Depth=1
.Ltmp55:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp56:
# %bb.88:                               # %.noexc271
                                        #   in Loop: Header=BB0_23 Depth=1
	move	$s7, $a0
	ld.w	$a1, $sp, 200
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB0_97
# %bb.89:                               # %.preheader.i.i259
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 192
	ori	$fp, $zero, 1
	blt	$a1, $fp, .LBB0_98
# %bb.90:                               # %iter.check
                                        #   in Loop: Header=BB0_23 Depth=1
	move	$a2, $zero
	ori	$a3, $zero, 16
	bltu	$a1, $a3, .LBB0_103
# %bb.91:                               # %iter.check
                                        #   in Loop: Header=BB0_23 Depth=1
	sub.d	$a3, $s7, $a0
	ori	$a4, $zero, 31
	bgeu	$a4, $a3, .LBB0_103
# %bb.92:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_23 Depth=1
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB0_99
# %bb.93:                               #   in Loop: Header=BB0_23 Depth=1
	move	$a2, $zero
.LBB0_94:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_23 Depth=1
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s7, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB0_95:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB0_95
# %bb.96:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_23 Depth=1
	bne	$a2, $a1, .LBB0_103
	b	.LBB0_105
.LBB0_97:                               #   in Loop: Header=BB0_23 Depth=1
	ori	$fp, $zero, 1
	b	.LBB0_106
.LBB0_98:                               # %._crit_edge.i.i261
                                        #   in Loop: Header=BB0_23 Depth=1
	bnez	$a0, .LBB0_105
	b	.LBB0_106
.LBB0_99:                               # %vector.ph
                                        #   in Loop: Header=BB0_23 Depth=1
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s7, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_100:                              # %vector.body
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB0_100
# %bb.101:                              # %middle.block
                                        #   in Loop: Header=BB0_23 Depth=1
	beq	$a2, $a1, .LBB0_105
# %bb.102:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_23 Depth=1
	andi	$a3, $a1, 16
	bnez	$a3, .LBB0_94
.LBB0_103:                              # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB0_23 Depth=1
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s7, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB0_104:                              # %vec.epilog.scalar.ph
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB0_104
.LBB0_105:                              # %._crit_edge.thread.i.i262
                                        #   in Loop: Header=BB0_23 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 200
.LBB0_106:                              #   in Loop: Header=BB0_23 Depth=1
	st.d	$s7, $sp, 192
	stx.b	$zero, $s7, $a1
	st.w	$s8, $sp, 204
.LBB0_107:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i254
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $s5, 0
	.p2align	4, , 16
.LBB0_108:                              #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s7, 1
	st.b	$a1, $s7, 0
	move	$s7, $a2
	bnez	$a1, .LBB0_108
# %bb.109:                              # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i258
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.w	$a0, $s2, 64
	st.w	$a0, $sp, 200
.LBB0_110:                              # %_ZN11CStringBaseIcEaSERKS0_.exit272
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.bu	$a0, $s2, 74
	bne	$a0, $fp, .LBB0_112
# %bb.111:                              #   in Loop: Header=BB0_23 Depth=1
	move	$a0, $zero
	ori	$a1, $zero, 53
	b	.LBB0_113
	.p2align	4, , 16
.LBB0_112:                              #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $s2, 16
	ori	$a1, $zero, 48
.LBB0_113:                              #   in Loop: Header=BB0_23 Depth=1
	st.b	$a1, $sp, 216
	ld.w	$a1, $s2, 8
	st.d	$a0, $sp, 128
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.w	$a1, $sp, 148
	st.h	$zero, $sp, 217
	st.d	$zero, $sp, 140
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 208
	ld.bu	$a0, $s2, 72
	ori	$fp, $zero, 1
	beq	$a0, $fp, .LBB0_42
.LBB0_114:                              #   in Loop: Header=BB0_23 Depth=1
	ld.w	$a0, $s2, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$s5, $a1, $a0
	ld.d	$a0, $s5, 16
	ld.bu	$a1, $s2, 73
	st.d	$a0, $sp, 128
	bne	$a1, $fp, .LBB0_120
# %bb.115:                              #   in Loop: Header=BB0_23 Depth=1
.Ltmp61:
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar11COutArchive11WriteHeaderERKNS0_5CItemE)
	jirl	$ra, $ra, 0
.Ltmp62:
# %bb.116:                              #   in Loop: Header=BB0_23 Depth=1
	bnez	$a0, .LBB0_125
# %bb.117:                              #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$a1, $s5, 112
	ld.wu	$a2, $s5, 120
	ld.d	$a4, $a3, 48
	add.d	$a1, $a1, $a2
.Ltmp64:
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp65:
# %bb.118:                              #   in Loop: Header=BB0_23 Depth=1
	bnez	$a0, .LBB0_125
# %bb.119:                              #   in Loop: Header=BB0_23 Depth=1
	ld.d	$s2, $s5, 16
	b	.LBB0_123
	.p2align	4, , 16
.LBB0_120:                              #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s5, 112
	ld.d	$a4, $a2, 48
.Ltmp58:
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
.Ltmp59:
# %bb.121:                              #   in Loop: Header=BB0_23 Depth=1
	bnez	$a0, .LBB0_125
# %bb.122:                              #   in Loop: Header=BB0_23 Depth=1
	ld.wu	$a0, $s5, 120
	ld.d	$a1, $s5, 16
	add.d	$s2, $a1, $a0
.LBB0_123:                              #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s2, $a1, 24
	st.d	$zero, $a1, 32
	st.b	$zero, $a1, 40
	ld.d	$a6, $a2, 40
.Ltmp67:
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $s0
	jirl	$ra, $a6, 0
.Ltmp68:
# %bb.124:                              #   in Loop: Header=BB0_23 Depth=1
	beqz	$a0, .LBB0_135
	.p2align	4, , 16
.LBB0_125:                              #   in Loop: Header=BB0_23 Depth=1
	move	$s2, $zero
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 192
	beqz	$a0, .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_23 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_127:                              # %_ZN11CStringBaseIcED2Ev.exit.i
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 176
	beqz	$a0, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_23 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_129:                              # %_ZN11CStringBaseIcED2Ev.exit1.i
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 160
	beqz	$a0, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_23 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_131:                              # %_ZN11CStringBaseIcED2Ev.exit2.i
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 112
	beqz	$a0, .LBB0_133
# %bb.132:                              #   in Loop: Header=BB0_23 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_133:                              # %_ZN8NArchive4NTar5CItemD2Ev.exit
                                        #   in Loop: Header=BB0_23 Depth=1
	beqz	$s2, .LBB0_142
# %bb.134:                              #   in Loop: Header=BB0_23 Depth=1
	ld.w	$a0, $s3, 12
	addi.d	$s6, $s6, 1
	blt	$s6, $a0, .LBB0_23
	b	.LBB0_141
.LBB0_135:                              #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 32
	bne	$a0, $s2, .LBB0_139
# %bb.136:                              #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a1, $s5, 16
.Ltmp70:
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar11COutArchive16FillDataResidualEy)
	jirl	$ra, $ra, 0
.Ltmp71:
# %bb.137:                              #   in Loop: Header=BB0_23 Depth=1
	bnez	$a0, .LBB0_125
# %bb.138:                              #   in Loop: Header=BB0_23 Depth=1
	add.d	$s4, $s2, $s4
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 192
	bnez	$a0, .LBB0_126
	b	.LBB0_127
.LBB0_139:                              #   in Loop: Header=BB0_23 Depth=1
	move	$s2, $zero
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 192
	bnez	$a0, .LBB0_126
	b	.LBB0_127
.LBB0_140:                              #   in Loop: Header=BB0_23 Depth=1
	move	$s2, $zero
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $sp, 104
	bnez	$a0, .LBB0_62
	b	.LBB0_63
.LBB0_141:                              # %._crit_edge349
.Ltmp94:
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar11COutArchive17WriteFinishHeaderEv)
	jirl	$ra, $ra, 0
.Ltmp95:
	b	.LBB0_143
.LBB0_142:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
.LBB0_143:                              # %.loopexit
	move	$fp, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp109:
	jirl	$ra, $a1, 0
.Ltmp110:
# %bb.144:                              # %_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
.Ltmp112:
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp113:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
# %bb.145:                              # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp115:
	jirl	$ra, $a1, 0
.Ltmp116:
	move	$a0, $fp
.LBB0_146:                              # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit
	ld.d	$a1, $sp, 224
	beqz	$a1, .LBB0_148
# %bb.147:
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 16
.Ltmp118:
	move	$fp, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	move	$a0, $fp
.Ltmp119:
.LBB0_148:                              # %_ZN8NArchive4NTar11COutArchiveD2Ev.exit
	addi.w	$a0, $a0, 0
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB0_149:
.Ltmp84:
	b	.LBB0_175
.LBB0_150:
.Ltmp81:
	b	.LBB0_175
.LBB0_151:
.Ltmp72:
	b	.LBB0_182
.LBB0_152:
.Ltmp66:
	b	.LBB0_182
.LBB0_153:
.Ltmp78:
	b	.LBB0_175
.LBB0_154:
.Ltmp87:
	b	.LBB0_175
.LBB0_155:
.Ltmp69:
	b	.LBB0_182
.LBB0_156:
.Ltmp117:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_157:
.Ltmp114:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_158:
.Ltmp111:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_159:
.Ltmp29:
	b	.LBB0_162
.LBB0_160:
.Ltmp26:
	b	.LBB0_162
.LBB0_161:
.Ltmp23:
.LBB0_162:                              # %_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit279
	move	$s2, $a0
	b	.LBB0_194
.LBB0_163:
.Ltmp20:
	b	.LBB0_166
.LBB0_164:
.Ltmp17:
	move	$s2, $a0
	ori	$a1, $zero, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_195
.LBB0_165:
.Ltmp14:
.LBB0_166:                              # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit281
	move	$s2, $a0
	b	.LBB0_195
.LBB0_167:
.Ltmp11:
	b	.LBB0_180
.LBB0_168:
.Ltmp8:
	b	.LBB0_180
.LBB0_169:
.Ltmp93:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_170:
.Ltmp63:
	b	.LBB0_182
.LBB0_171:
.Ltmp60:
	b	.LBB0_182
.LBB0_172:
.Ltmp120:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_173:
.Ltmp96:
	b	.LBB0_192
.LBB0_174:
.Ltmp75:
.LBB0_175:
	move	$s2, $a0
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB0_183
# %bb.176:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp88:
	jirl	$ra, $a1, 0
.Ltmp89:
	b	.LBB0_183
.LBB0_177:
.Ltmp90:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_178:
.Ltmp5:
	b	.LBB0_180
.LBB0_179:
.Ltmp2:
.LBB0_180:                              # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit283
	move	$s2, $a0
	b	.LBB0_196
.LBB0_181:
.Ltmp57:
.LBB0_182:
	move	$s2, $a0
.LBB0_183:
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN8NArchive4NTar5CItemD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB0_193
.LBB0_184:
.Ltmp48:
	move	$s2, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 160
	bnez	$s8, .LBB0_186
	b	.LBB0_188
.LBB0_185:                              # %.thread.i
.Ltmp45:
	move	$s2, $a0
.LBB0_186:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_188
.LBB0_187:
.Ltmp42:
	move	$s2, $a0
.LBB0_188:                              # %_ZN11CStringBaseIcED2Ev.exit8.i
	ld.d	$a0, $sp, 112
	beqz	$a0, .LBB0_193
# %bb.189:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_193
.LBB0_190:
.Ltmp39:
	b	.LBB0_192
.LBB0_191:
.Ltmp36:
.LBB0_192:
	move	$s2, $a0
.LBB0_193:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp97:
	jirl	$ra, $a1, 0
.Ltmp98:
.LBB0_194:                              # %_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit279
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
.Ltmp100:
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp101:
.LBB0_195:                              # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit281
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp103:
	jirl	$ra, $a1, 0
.Ltmp104:
.LBB0_196:                              # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit283
	ld.d	$a0, $sp, 224
	beqz	$a0, .LBB0_198
# %bb.197:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp106:
	jirl	$ra, $a1, 0
.Ltmp107:
.LBB0_198:                              # %_ZN8NArchive4NTar11COutArchiveD2Ev.exit286
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_199:
.Ltmp108:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_200:
.Ltmp105:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_201:
.Ltmp102:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_202:
.Ltmp99:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN8NArchive4NTar13UpdateArchiveEP9IInStreamP20ISequentialOutStreamRK13CObjectVectorINS0_7CItemExEERKS5_INS0_11CUpdateItemEEP22IArchiveUpdateCallback, .Lfunc_end0-_ZN8NArchive4NTar13UpdateArchiveEP9IInStreamP20ISequentialOutStreamRK13CObjectVectorINS0_7CItemExEERKS5_INS0_11CUpdateItemEEP22IArchiveUpdateCallback
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
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp33-.Ltmp30                #   Call between .Ltmp30 and .Ltmp33
	.uleb128 .Ltmp96-.Lfunc_begin0          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp49-.Ltmp52                #   Call between .Ltmp52 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin0          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin0          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin0          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin0          #     jumps to .Ltmp93
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp79-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin0          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin0          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp55-.Ltmp83                #   Call between .Ltmp83 and .Ltmp55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp61-.Ltmp56                #   Call between .Ltmp56 and .Ltmp61
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin0          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin0          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin0          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin0          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp70-.Ltmp68                #   Call between .Ltmp68 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin0          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin0          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin0         #     jumps to .Ltmp114
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp115-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin0         #     jumps to .Ltmp117
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp118-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin0         #     jumps to .Ltmp120
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp119-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp88-.Ltmp119               #   Call between .Ltmp119 and .Ltmp88
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin0          # >> Call Site 42 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin0          #     jumps to .Ltmp90
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp89-.Lfunc_begin0          # >> Call Site 43 <<
	.uleb128 .Ltmp97-.Ltmp89                #   Call between .Ltmp89 and .Ltmp97
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin0          # >> Call Site 44 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin0          #     jumps to .Ltmp99
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp100-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin0         #     jumps to .Ltmp102
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp103-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin0         #     jumps to .Ltmp105
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp106-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin0         #     jumps to .Ltmp108
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp107-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Lfunc_end0-.Ltmp107           #   Call between .Ltmp107 and .Lfunc_end0
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
	.section	.text._ZN8NArchive4NTar5CItemaSERKS1_,"axG",@progbits,_ZN8NArchive4NTar5CItemaSERKS1_,comdat
	.weak	_ZN8NArchive4NTar5CItemaSERKS1_ # -- Begin function _ZN8NArchive4NTar5CItemaSERKS1_
	.p2align	5
	.type	_ZN8NArchive4NTar5CItemaSERKS1_,@function
_ZN8NArchive4NTar5CItemaSERKS1_:        # @_ZN8NArchive4NTar5CItemaSERKS1_
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
	move	$s0, $a1
	move	$fp, $a0
	beq	$a1, $a0, .LBB1_3
# %bb.1:
	ld.d	$a0, $fp, 0
	st.w	$zero, $fp, 8
	st.b	$zero, $a0, 0
	ld.w	$a0, $s0, 8
	ld.w	$s3, $fp, 12
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB1_4
# %bb.2:                                # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
	ld.d	$s1, $fp, 0
	b	.LBB1_22
.LBB1_3:                                # %_ZN11CStringBaseIcEaSERKS0_.exit44.thread
	vld	$vr0, $s0, 32
	vst	$vr0, $fp, 32
	vld	$vr0, $s0, 16
	vst	$vr0, $fp, 16
	b	.LBB1_91
.LBB1_4:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 1
	move	$s1, $a0
	blt	$s3, $a2, .LBB1_21
# %bb.5:                                # %.preheader.i.i
	ld.d	$a0, $fp, 0
	blt	$a1, $a2, .LBB1_13
# %bb.6:                                # %iter.check
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB1_18
# %bb.7:                                # %iter.check
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 31
	bgeu	$a4, $a3, .LBB1_18
# %bb.8:                                # %vector.main.loop.iter.check
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB1_14
# %bb.9:
	move	$a2, $zero
.LBB1_10:                               # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s1, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB1_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB1_11
# %bb.12:                               # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB1_18
	b	.LBB1_20
.LBB1_13:                               # %._crit_edge.i.i
	bnez	$a0, .LBB1_20
	b	.LBB1_21
.LBB1_14:                               # %vector.ph
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s1, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_15
# %bb.16:                               # %middle.block
	beq	$a2, $a1, .LBB1_20
# %bb.17:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 16
	bnez	$a3, .LBB1_10
.LBB1_18:                               # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s1, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB1_19:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB1_19
.LBB1_20:                               # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
.LBB1_21:
	st.d	$s1, $fp, 0
	stx.b	$zero, $s1, $a1
	st.w	$s2, $fp, 12
.LBB1_22:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
	ld.d	$a0, $s0, 0
	.p2align	4, , 16
.LBB1_23:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s1, 1
	st.b	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB1_23
# %bb.24:
	ld.w	$a0, $s0, 8
	st.w	$a0, $fp, 8
	vld	$vr0, $s0, 16
	vst	$vr0, $fp, 16
	vld	$vr0, $s0, 32
	ld.d	$a0, $fp, 48
	vst	$vr0, $fp, 32
	st.w	$zero, $fp, 56
	st.b	$zero, $a0, 0
	ld.w	$a0, $s0, 56
	ld.w	$s3, $fp, 60
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB1_26
# %bb.25:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i23
	ld.d	$s1, $fp, 48
	b	.LBB1_44
.LBB1_26:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 56
	ori	$a2, $zero, 1
	move	$s1, $a0
	blt	$s3, $a2, .LBB1_43
# %bb.27:                               # %.preheader.i.i13
	ld.d	$a0, $fp, 48
	blt	$a1, $a2, .LBB1_35
# %bb.28:                               # %iter.check78
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB1_40
# %bb.29:                               # %iter.check78
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 31
	bgeu	$a4, $a3, .LBB1_40
# %bb.30:                               # %vector.main.loop.iter.check80
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB1_36
# %bb.31:
	move	$a2, $zero
.LBB1_32:                               # %vec.epilog.ph93
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s1, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB1_33:                               # %vec.epilog.vector.body99
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB1_33
# %bb.34:                               # %vec.epilog.middle.block103
	bne	$a2, $a1, .LBB1_40
	b	.LBB1_42
.LBB1_35:                               # %._crit_edge.i.i15
	bnez	$a0, .LBB1_42
	b	.LBB1_43
.LBB1_36:                               # %vector.ph81
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s1, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_37:                               # %vector.body84
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_37
# %bb.38:                               # %middle.block89
	beq	$a2, $a1, .LBB1_42
# %bb.39:                               # %vec.epilog.iter.check94
	andi	$a3, $a1, 16
	bnez	$a3, .LBB1_32
.LBB1_40:                               # %vec.epilog.scalar.ph92.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s1, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB1_41:                               # %vec.epilog.scalar.ph92
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB1_41
.LBB1_42:                               # %._crit_edge.thread.i.i16
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 56
.LBB1_43:
	st.d	$s1, $fp, 48
	stx.b	$zero, $s1, $a1
	st.w	$s2, $fp, 60
.LBB1_44:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i8
	ld.d	$a0, $s0, 48
	.p2align	4, , 16
.LBB1_45:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s1, 1
	st.b	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB1_45
# %bb.46:
	ld.w	$a0, $s0, 56
	ld.d	$a1, $fp, 64
	st.w	$a0, $fp, 56
	st.w	$zero, $fp, 72
	st.b	$zero, $a1, 0
	ld.w	$a0, $s0, 72
	ld.w	$s3, $fp, 76
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB1_48
# %bb.47:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i42
	ld.d	$s1, $fp, 64
	b	.LBB1_66
.LBB1_48:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 72
	ori	$a2, $zero, 1
	move	$s1, $a0
	blt	$s3, $a2, .LBB1_65
# %bb.49:                               # %.preheader.i.i32
	ld.d	$a0, $fp, 64
	blt	$a1, $a2, .LBB1_57
# %bb.50:                               # %iter.check111
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB1_62
# %bb.51:                               # %iter.check111
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 31
	bgeu	$a4, $a3, .LBB1_62
# %bb.52:                               # %vector.main.loop.iter.check113
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB1_58
# %bb.53:
	move	$a2, $zero
.LBB1_54:                               # %vec.epilog.ph126
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s1, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB1_55:                               # %vec.epilog.vector.body132
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB1_55
# %bb.56:                               # %vec.epilog.middle.block136
	bne	$a2, $a1, .LBB1_62
	b	.LBB1_64
.LBB1_57:                               # %._crit_edge.i.i34
	bnez	$a0, .LBB1_64
	b	.LBB1_65
.LBB1_58:                               # %vector.ph114
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s1, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_59:                               # %vector.body117
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_59
# %bb.60:                               # %middle.block122
	beq	$a2, $a1, .LBB1_64
# %bb.61:                               # %vec.epilog.iter.check127
	andi	$a3, $a1, 16
	bnez	$a3, .LBB1_54
.LBB1_62:                               # %vec.epilog.scalar.ph125.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s1, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB1_63:                               # %vec.epilog.scalar.ph125
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB1_63
.LBB1_64:                               # %._crit_edge.thread.i.i35
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 72
.LBB1_65:
	st.d	$s1, $fp, 64
	stx.b	$zero, $s1, $a1
	st.w	$s2, $fp, 76
.LBB1_66:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i27
	ld.d	$a0, $s0, 64
	.p2align	4, , 16
.LBB1_67:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s1, 1
	st.b	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB1_67
# %bb.68:
	ld.w	$a0, $s0, 72
	ld.d	$a1, $fp, 80
	st.w	$a0, $fp, 72
	st.w	$zero, $fp, 88
	st.b	$zero, $a1, 0
	ld.w	$a0, $s0, 88
	ld.w	$s3, $fp, 92
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB1_70
# %bb.69:                               # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i61
	ld.d	$s1, $fp, 80
	b	.LBB1_88
.LBB1_70:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 88
	ori	$a2, $zero, 1
	move	$s1, $a0
	blt	$s3, $a2, .LBB1_87
# %bb.71:                               # %.preheader.i.i51
	ld.d	$a0, $fp, 80
	blt	$a1, $a2, .LBB1_79
# %bb.72:                               # %iter.check144
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB1_84
# %bb.73:                               # %iter.check144
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 31
	bgeu	$a4, $a3, .LBB1_84
# %bb.74:                               # %vector.main.loop.iter.check146
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB1_80
# %bb.75:
	move	$a2, $zero
.LBB1_76:                               # %vec.epilog.ph159
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s1, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB1_77:                               # %vec.epilog.vector.body165
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB1_77
# %bb.78:                               # %vec.epilog.middle.block169
	bne	$a2, $a1, .LBB1_84
	b	.LBB1_86
.LBB1_79:                               # %._crit_edge.i.i53
	bnez	$a0, .LBB1_86
	b	.LBB1_87
.LBB1_80:                               # %vector.ph147
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s1, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_81:                               # %vector.body150
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_81
# %bb.82:                               # %middle.block155
	beq	$a2, $a1, .LBB1_86
# %bb.83:                               # %vec.epilog.iter.check160
	andi	$a3, $a1, 16
	bnez	$a3, .LBB1_76
.LBB1_84:                               # %vec.epilog.scalar.ph158.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s1, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB1_85:                               # %vec.epilog.scalar.ph158
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB1_85
.LBB1_86:                               # %._crit_edge.thread.i.i54
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 88
.LBB1_87:
	st.d	$s1, $fp, 80
	stx.b	$zero, $s1, $a1
	st.w	$s2, $fp, 92
.LBB1_88:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i46
	ld.d	$a0, $s0, 80
	.p2align	4, , 16
.LBB1_89:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s1, 1
	st.b	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB1_89
# %bb.90:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i50
	ld.w	$a0, $s0, 88
	st.w	$a0, $fp, 88
.LBB1_91:                               # %_ZN11CStringBaseIcEaSERKS0_.exit63
	ld.w	$a0, $s0, 103
	st.w	$a0, $fp, 103
	ld.d	$a0, $s0, 96
	st.d	$a0, $fp, 96
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	_ZN8NArchive4NTar5CItemaSERKS1_, .Lfunc_end1-_ZN8NArchive4NTar5CItemaSERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NTar5CItemD2Ev,"axG",@progbits,_ZN8NArchive4NTar5CItemD2Ev,comdat
	.weak	_ZN8NArchive4NTar5CItemD2Ev     # -- Begin function _ZN8NArchive4NTar5CItemD2Ev
	.p2align	5
	.type	_ZN8NArchive4NTar5CItemD2Ev,@function
_ZN8NArchive4NTar5CItemD2Ev:            # @_ZN8NArchive4NTar5CItemD2Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 80
	beqz	$a0, .LBB2_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %_ZN11CStringBaseIcED2Ev.exit
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB2_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %_ZN11CStringBaseIcED2Ev.exit1
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB2_6
# %bb.5:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %_ZN11CStringBaseIcED2Ev.exit2
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB2_8
# %bb.7:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB2_8:                                # %_ZN11CStringBaseIcED2Ev.exit3
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	_ZN8NArchive4NTar5CItemD2Ev, .Lfunc_end2-_ZN8NArchive4NTar5CItemD2Ev
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
.Lfunc_end3:
	.size	__clang_call_terminate, .Lfunc_end3-__clang_call_terminate
                                        # -- End function
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
