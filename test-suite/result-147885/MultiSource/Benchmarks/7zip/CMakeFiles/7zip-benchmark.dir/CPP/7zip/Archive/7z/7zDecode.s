	.file	"7zDecode.cpp"
	.text
	.globl	_ZN8NArchive3N7z8CDecoderC2Eb   # -- Begin function _ZN8NArchive3N7z8CDecoderC2Eb
	.p2align	5
	.type	_ZN8NArchive3N7z8CDecoderC2Eb,@function
_ZN8NArchive3N7z8CDecoderC2Eb:          # @_ZN8NArchive3N7z8CDecoderC2Eb
	.cfi_startproc
# %bb.0:
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 16
	ori	$a1, $zero, 8
	st.d	$a1, $a0, 32
	pcalau12i	$a2, %pc_hi20(_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE+16)
	st.d	$a2, $a0, 8
	vst	$vr0, $a0, 48
	st.d	$a1, $a0, 64
	pcalau12i	$a2, %pc_hi20(_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE+16)
	st.d	$a2, $a0, 40
	vst	$vr0, $a0, 80
	ori	$a2, $zero, 4
	st.d	$a2, $a0, 96
	pcalau12i	$a3, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a3, $a0, 72
	vst	$vr0, $a0, 112
	st.d	$a2, $a0, 128
	st.d	$a3, $a0, 104
	vst	$vr0, $a0, 144
	st.d	$a1, $a0, 160
	pcalau12i	$a2, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a2, $a0, 136
	st.d	$zero, $a0, 192
	vst	$vr0, $a0, 208
	st.d	$a1, $a0, 224
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	st.d	$a1, $a0, 200
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 168
	st.b	$zero, $a0, 0
	ret
.Lfunc_end0:
	.size	_ZN8NArchive3N7z8CDecoderC2Eb, .Lfunc_end0-_ZN8NArchive3N7z8CDecoderC2Eb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive3N7z11CBindInfoExD2Ev,"axG",@progbits,_ZN8NArchive3N7z11CBindInfoExD2Ev,comdat
	.weak	_ZN8NArchive3N7z11CBindInfoExD2Ev # -- Begin function _ZN8NArchive3N7z11CBindInfoExD2Ev
	.p2align	5
	.type	_ZN8NArchive3N7z11CBindInfoExD2Ev,@function
_ZN8NArchive3N7z11CBindInfoExD2Ev:      # @_ZN8NArchive3N7z11CBindInfoExD2Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, 128
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 96
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.Lfunc_end1:
	.size	_ZN8NArchive3N7z11CBindInfoExD2Ev, .Lfunc_end1-_ZN8NArchive3N7z11CBindInfoExD2Ev
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj
.LCPI2_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI2_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj
	.p2align	5
	.type	_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj,@function
_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj: # @_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -560
	.cfi_def_cfa_offset 560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
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
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	move	$s4, $a4
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$a0, $a4
	pcaddu18i	$ra, %call36(_ZNK8NArchive3N7z7CFolder14CheckStructureEv)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, -524284
	beqz	$a0, .LBB2_45
# %bb.1:
	ld.d	$a0, $sp, 560
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.b	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vst	$vr0, $sp, 448
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 464
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $sp, 440
	st.d	$zero, $sp, 392
	addi.d	$a0, $sp, 400
.Ltmp0:
	pcaddu18i	$ra, %call36(CriticalSection_Init)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.2:                                # %_ZN15CLockedInStreamC2Ev.exit
	beqz	$s0, .LBB2_4
# %bb.3:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
.Ltmp6:
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp7:
.LBB2_4:                                # %.noexc
	ld.d	$a0, $sp, 392
	beqz	$a0, .LBB2_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp8:
	jirl	$ra, $a1, 0
.Ltmp9:
.LBB2_6:                                # %_ZN15CLockedInStream4InitEP9IInStream.exit
	ld.w	$a0, $s4, 76
	st.d	$s0, $sp, 392
	blez	$a0, .LBB2_21
# %bb.7:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(_ZTV28CLockedSequentialInStreamImp)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV28CLockedSequentialInStreamImp)
	pcalau12i	$a1, %got_pc_hi20(_ZTV26CLimitedSequentialInStream)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTV26CLimitedSequentialInStream)
	move	$s5, $zero
	ld.d	$a2, $a0, 24
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $a1, 24
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	addi.d	$s8, $a0, 16
	addi.d	$s2, $a1, 16
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
.Ltmp11:
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp12:
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	move	$s0, $a0
	st.w	$zero, $a0, 8
	st.d	$s8, $a0, 0
.Ltmp14:
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp15:
# %bb.10:                               # %_ZN9CMyComPtrI19ISequentialInStreamEC2EPS0_.exit
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.d	$s7, $s6, 0
	addi.d	$a0, $sp, 392
	st.d	$a0, $s0, 16
	st.d	$fp, $s0, 24
.Ltmp17:
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp18:
# %bb.11:                               #   in Loop: Header=BB2_8 Depth=1
	move	$s1, $a0
	st.w	$zero, $a0, 8
	st.d	$s2, $a0, 0
	st.d	$zero, $a0, 16
.Ltmp20:
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp21:
# %bb.12:                               # %_ZN9CMyComPtrI19ISequentialInStreamEC2EPS0_.exit283
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
.Ltmp23:
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp24:
# %bb.13:                               # %.noexc286
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a0, $s1, 16
	beqz	$a0, .LBB2_15
# %bb.14:                               #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp25:
	jirl	$ra, $a1, 0
.Ltmp26:
.LBB2_15:                               #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a0, $s6, 0
	st.d	$s0, $s1, 16
	st.d	$a0, $s1, 24
	st.d	$zero, $s1, 32
	st.b	$zero, $s1, 40
.Ltmp27:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp28:
# %bb.16:                               #   in Loop: Header=BB2_8 Depth=1
	move	$s3, $a0
	ld.d	$a0, $s1, 0
	st.d	$s1, $s3, 0
	ld.d	$a1, $a0, 8
.Ltmp29:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp30:
# %bb.17:                               # %_ZN9CMyComPtrI19ISequentialInStreamEC2ERKS1_.exit.i
                                        #   in Loop: Header=BB2_8 Depth=1
.Ltmp32:
	addi.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp33:
# %bb.18:                               #   in Loop: Header=BB2_8 Depth=1
	ld.w	$a0, $sp, 452
	ld.d	$a1, $sp, 456
	slli.d	$a2, $a0, 3
	stx.d	$s3, $a1, $a2
	ld.d	$a1, $s1, 0
	ld.d	$a1, $a1, 16
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 452
.Ltmp41:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp42:
# %bb.19:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
.Ltmp44:
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp45:
# %bb.20:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit294
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.w	$a0, $s4, 76
	add.d	$fp, $s7, $fp
	addi.d	$s5, $s5, 1
	addi.d	$s6, $s6, 8
	blt	$s5, $a0, .LBB2_8
.LBB2_21:                               # %._crit_edge
	ld.w	$a0, $s4, 12
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 240
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 256
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE+16)
	addi.d	$fp, $a1, %pc_lo12(_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE+16)
	st.d	$fp, $sp, 232
	vst	$vr0, $sp, 272
	st.d	$a0, $sp, 288
	pcalau12i	$a1, %pc_hi20(_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE+16)
	addi.d	$s5, $a1, %pc_lo12(_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE+16)
	st.d	$s5, $sp, 264
	vst	$vr0, $sp, 304
	ori	$a1, $zero, 4
	st.d	$a1, $sp, 320
	pcalau12i	$a2, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$s3, $a2, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$s3, $sp, 296
	vst	$vr0, $sp, 336
	st.d	$a1, $sp, 352
	st.d	$s3, $sp, 328
	vst	$vr0, $sp, 368
	st.d	$a0, $sp, 384
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a0, $sp, 360
.Ltmp47:
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp48:
# %bb.22:                               # %.noexc300
.Ltmp49:
	addi.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp50:
# %bb.23:                               # %.noexc301
.Ltmp51:
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp52:
# %bb.24:                               # %.noexc302
.Ltmp53:
	addi.d	$s8, $sp, 328
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.25:                               # %.noexc303
.Ltmp55:
	addi.d	$a0, $sp, 360
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp56:
# %bb.26:                               # %.noexc304
	ld.w	$a0, $s4, 44
	blez	$a0, .LBB2_30
# %bb.27:                               # %.lr.ph.i
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB2_28:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 48
	ldx.d	$s2, $a0, $s0
.Ltmp58:
	addi.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp59:
# %bb.29:                               # %.noexc305
                                        #   in Loop: Header=BB2_28 Depth=1
	ld.w	$a0, $sp, 276
	ld.d	$a1, $sp, 280
	slli.d	$a0, $a0, 3
	stx.d	$s2, $a1, $a0
	ld.w	$a0, $sp, 276
	ld.w	$a1, $s4, 44
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 276
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a1, .LBB2_28
.LBB2_30:                               # %.preheader39.i
	ld.w	$a0, $s4, 12
	blez	$a0, .LBB2_46
# %bb.31:                               # %.lr.ph46.i
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_32:                               #   in Loop: Header=BB2_34 Depth=1
	move	$s1, $s2
.LBB2_33:                               # %._crit_edge.i
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.w	$a0, $s4, 12
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB2_46
.LBB2_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_39 Depth 2
                                        #       Child Loop BB2_41 Depth 3
	ld.d	$a0, $s4, 16
	slli.d	$a1, $s0, 3
	ldx.d	$s6, $a0, $a1
	ld.wu	$s7, $s6, 32
	ld.wu	$s2, $s6, 36
.Ltmp61:
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp62:
# %bb.35:                               # %.noexc306
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.w	$a0, $sp, 244
	ld.d	$a1, $sp, 248
	slli.d	$a2, $s2, 32
	or	$a2, $a2, $s7
	slli.d	$a0, $a0, 3
	stx.d	$a2, $a1, $a0
	ld.w	$a0, $sp, 244
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 244
	ld.d	$s6, $s6, 0
.Ltmp63:
	addi.d	$a0, $sp, 360
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp64:
# %bb.36:                               # %.noexc307
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.w	$a0, $sp, 372
	ld.d	$a1, $sp, 376
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 372
	beqz	$s2, .LBB2_33
# %bb.37:                               # %.lr.ph43.preheader.i
                                        #   in Loop: Header=BB2_34 Depth=1
	add.w	$s2, $s2, $s1
	b	.LBB2_39
	.p2align	4, , 16
.LBB2_38:                               # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.i
                                        #   in Loop: Header=BB2_39 Depth=2
	addi.w	$s1, $s1, 1
	beq	$s1, $s2, .LBB2_32
.LBB2_39:                               # %.lr.ph43.i
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_41 Depth 3
	ld.w	$a0, $s4, 44
	blez	$a0, .LBB2_43
# %bb.40:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB2_39 Depth=2
	ld.d	$a1, $s4, 48
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB2_41:                               #   Parent Loop BB2_34 Depth=1
                                        #     Parent Loop BB2_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 0
	beq	$a2, $s1, .LBB2_38
# %bb.42:                               #   in Loop: Header=BB2_41 Depth=3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB2_41
.LBB2_43:                               # %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i
                                        #   in Loop: Header=BB2_39 Depth=2
.Ltmp66:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp67:
# %bb.44:                               # %.noexc308
                                        #   in Loop: Header=BB2_39 Depth=2
	ld.w	$a0, $sp, 340
	ld.d	$a1, $sp, 344
	slli.d	$a0, $a0, 2
	stx.w	$s1, $a1, $a0
	ld.w	$a0, $sp, 340
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 340
	b	.LBB2_38
.LBB2_45:
	ori	$s1, $a1, 1
	b	.LBB2_86
.LBB2_46:                               # %.preheader.i
	ld.w	$a0, $s4, 76
	blez	$a0, .LBB2_50
# %bb.47:                               # %.lr.ph48.i
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB2_48:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 80
	ldx.w	$s2, $a0, $s0
.Ltmp69:
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp70:
# %bb.49:                               # %.noexc309
                                        #   in Loop: Header=BB2_48 Depth=1
	ld.w	$a0, $sp, 308
	ld.d	$a1, $sp, 312
	slli.d	$a0, $a0, 2
	stx.w	$s2, $a1, $a0
	ld.w	$a0, $sp, 308
	ld.w	$a1, $s4, 76
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 308
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 4
	blt	$s1, $a1, .LBB2_48
.LBB2_50:                               # %_ZN8NArchive3N7zL31ConvertFolderItemInfoToBindInfoERKNS0_7CFolderERNS0_11CBindInfoExE.exit
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.bu	$a0, $a5, 0
	beqz	$a0, .LBB2_69
# %bb.51:
	ld.w	$a0, $sp, 244
	ld.w	$a1, $a5, 20
	bne	$a0, $a1, .LBB2_69
# %bb.52:                               # %.preheader44.i
	blez	$a0, .LBB2_57
# %bb.53:                               # %.lr.ph.i314
	ld.d	$a1, $a5, 24
	ld.d	$a2, $sp, 248
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB2_54:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, -4
	ld.w	$a4, $a1, -4
	bne	$a3, $a4, .LBB2_69
# %bb.55:                               #   in Loop: Header=BB2_54 Depth=1
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	bne	$a4, $a3, .LBB2_69
# %bb.56:                               #   in Loop: Header=BB2_54 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB2_54
.LBB2_57:                               # %._crit_edge.i311
	ld.w	$a0, $sp, 276
	ld.w	$a1, $a5, 52
	bne	$a0, $a1, .LBB2_69
# %bb.58:                               # %.preheader42.i
	blez	$a0, .LBB2_63
# %bb.59:                               # %.lr.ph48.i313
	ld.d	$a1, $a5, 56
	ld.d	$a2, $sp, 280
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB2_60:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, -4
	ld.w	$a4, $a1, -4
	bne	$a3, $a4, .LBB2_69
# %bb.61:                               #   in Loop: Header=BB2_60 Depth=1
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	bne	$a4, $a3, .LBB2_69
# %bb.62:                               #   in Loop: Header=BB2_60 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB2_60
.LBB2_63:                               # %.preheader.i312
	ld.w	$a0, $sp, 372
	blez	$a0, .LBB2_67
# %bb.64:                               # %.lr.ph50.i
	ld.d	$a1, $sp, 376
	ld.d	$a2, $a5, 152
	.p2align	4, , 16
.LBB2_65:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a2, 0
	bne	$a3, $a4, .LBB2_69
# %bb.66:                               #   in Loop: Header=BB2_65 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB2_65
.LBB2_67:                               # %._crit_edge51.i
	ld.w	$a0, $sp, 308
	ld.w	$a1, $a5, 84
	bne	$a0, $a1, .LBB2_69
# %bb.68:                               # %_ZN8NArchive3N7zL18AreBindInfoExEqualERKNS0_11CBindInfoExES3_.exit
	ld.w	$a0, $sp, 340
	ld.w	$a1, $a5, 116
                                        # implicit-def: $r30
	beq	$a0, $a1, .LBB2_123
.LBB2_69:                               # %.critedge
	move	$s2, $a5
	addi.d	$s0, $a5, 200
.Ltmp72:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp73:
# %bb.70:
	ld.d	$a0, $s2, 192
	beqz	$a0, .LBB2_73
# %bb.71:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp74:
	jirl	$ra, $a1, 0
.Ltmp75:
# %bb.72:                               # %.noexc319
	st.d	$zero, $s2, 192
.LBB2_73:                               # %_ZN9CMyComPtrI15ICompressCoder2E7ReleaseEv.exit
	ld.bu	$a0, $s2, 168
	beqz	$a0, .LBB2_79
# %bb.74:
.Ltmp76:
	ori	$a0, $zero, 224
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp77:
# %bb.75:
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN11NCoderMixer14CCoderMixer2MTE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN11NCoderMixer14CCoderMixer2MTE)
	st.w	$zero, $s1, 16
	addi.d	$a1, $a0, 16
	st.d	$a1, $s1, 0
	addi.d	$a1, $a0, 104
	st.d	$a1, $s1, 8
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $s1, 32
	ori	$a1, $zero, 8
	st.d	$a1, $s1, 48
	st.d	$fp, $s1, 24
	vst	$vr0, $s1, 64
	st.d	$a1, $s1, 80
	st.d	$s5, $s1, 56
	vst	$vr0, $s1, 96
	ori	$a2, $zero, 4
	st.d	$a2, $s1, 112
	st.d	$s3, $s1, 88
	vst	$vr0, $s1, 128
	st.d	$a2, $s1, 144
	st.d	$s3, $s1, 120
	vst	$vr0, $s1, 160
	st.d	$a1, $s1, 176
	pcalau12i	$a2, %pc_hi20(_ZTV13CObjectVectorI13CStreamBinderE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV13CObjectVectorI13CStreamBinderE+16)
	st.d	$a2, $s1, 152
	vst	$vr0, $s1, 200
	st.d	$a1, $s1, 216
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE+16)
	ld.d	$a2, $a0, 24
	addi.d	$a0, $a1, %pc_lo12(_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE+16)
	st.d	$a0, $s1, 192
	st.d	$s1, $s2, 176
.Ltmp78:
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp79:
# %bb.76:                               # %.noexc321
	ld.d	$a0, $s2, 192
	beqz	$a0, .LBB2_78
# %bb.77:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp80:
	jirl	$ra, $a1, 0
.Ltmp81:
.LBB2_78:
	ld.d	$a0, $s2, 176
	st.d	$s1, $s2, 192
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 8
	masknez	$a0, $a0, $a1
	st.d	$a0, $s2, 184
	b	.LBB2_80
.LBB2_79:                               # %_ZN9CMyComPtrI15ICompressCoder2E7ReleaseEv.exit._crit_edge
	ld.d	$a0, $s2, 184
.LBB2_80:
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
.Ltmp82:
	addi.d	$a1, $sp, 232
	jirl	$ra, $a2, 0
.Ltmp83:
# %bb.81:
	move	$s1, $a0
	beqz	$a0, .LBB2_87
.LBB2_82:                               # %.thread442
	addi.d	$a0, $sp, 360
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392
	beqz	$a0, .LBB2_84
# %bb.83:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp217:
	jirl	$ra, $a1, 0
.Ltmp218:
.LBB2_84:                               # %_ZN15CLockedInStreamD2Ev.exit
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $sp, 440
.Ltmp220:
	addi.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp221:
# %bb.85:                               # %_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit
	addi.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB2_86:
	addi.w	$a0, $s1, 0
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB2_87:                               # %.preheader507
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	blez	$a0, .LBB2_114
# %bb.88:                               # %.lr.ph576
	move	$fp, $zero
	move	$s7, $zero
	slli.d	$s5, $a0, 3
	ori	$s6, $zero, 1
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_89:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 16
	ldx.d	$s1, $a0, $fp
	st.d	$zero, $sp, 200
	st.d	$zero, $sp, 168
	ld.d	$a0, $s1, 0
.Ltmp85:
	addi.d	$a1, $sp, 200
	addi.d	$a2, $sp, 168
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_Z11CreateCoderyR9CMyComPtrI14ICompressCoderERS_I15ICompressCoder2Eb)
	jirl	$ra, $ra, 0
.Ltmp86:
# %bb.90:                               #   in Loop: Header=BB2_89 Depth=1
	beqz	$a0, .LBB2_92
# %bb.91:                               #   in Loop: Header=BB2_89 Depth=1
	move	$s2, $zero
	move	$s7, $a0
	ld.d	$a0, $sp, 168
	bnez	$a0, .LBB2_107
	b	.LBB2_108
	.p2align	4, , 16
.LBB2_92:                               #   in Loop: Header=BB2_89 Depth=1
	ld.w	$a0, $s1, 32
	bne	$a0, $s6, .LBB2_98
# %bb.93:                               #   in Loop: Header=BB2_89 Depth=1
	ld.w	$a0, $s1, 36
	bne	$a0, $s6, .LBB2_98
# %bb.94:                               #   in Loop: Header=BB2_89 Depth=1
	ld.d	$s1, $sp, 200
	beqz	$s1, .LBB2_113
# %bb.95:                               #   in Loop: Header=BB2_89 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 8
.Ltmp92:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp93:
# %bb.96:                               # %_ZN9CMyComPtrI8IUnknownEaSEPS0_.exit
                                        #   in Loop: Header=BB2_89 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.bu	$a0, $a1, 168
	beqz	$a0, .LBB2_102
# %bb.97:                               #   in Loop: Header=BB2_89 Depth=1
	ld.d	$a0, $a1, 176
	ld.d	$a1, $sp, 200
.Ltmp95:
	pcaddu18i	$ra, %call36(_ZN11NCoderMixer14CCoderMixer2MT8AddCoderEP14ICompressCoder)
	jirl	$ra, $ra, 0
.Ltmp96:
	b	.LBB2_102
.LBB2_98:                               #   in Loop: Header=BB2_89 Depth=1
	ld.d	$s1, $sp, 168
	beqz	$s1, .LBB2_112
# %bb.99:                               #   in Loop: Header=BB2_89 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 8
.Ltmp88:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp89:
# %bb.100:                              # %_ZN9CMyComPtrI8IUnknownEaSEPS0_.exit332
                                        #   in Loop: Header=BB2_89 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.bu	$a0, $a1, 168
	beqz	$a0, .LBB2_102
# %bb.101:                              #   in Loop: Header=BB2_89 Depth=1
	ld.d	$a0, $a1, 176
	ld.d	$a1, $sp, 168
.Ltmp90:
	pcaddu18i	$ra, %call36(_ZN11NCoderMixer14CCoderMixer2MT9AddCoder2EP15ICompressCoder2)
	jirl	$ra, $ra, 0
.Ltmp91:
.LBB2_102:                              #   in Loop: Header=BB2_89 Depth=1
.Ltmp97:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp98:
# %bb.103:                              #   in Loop: Header=BB2_89 Depth=1
	move	$s3, $a0
	st.d	$s1, $a0, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 8
.Ltmp100:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp101:
# %bb.104:                              # %_ZN9CMyComPtrI8IUnknownEC2ERKS1_.exit.i
                                        #   in Loop: Header=BB2_89 Depth=1
.Ltmp103:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp104:
# %bb.105:                              #   in Loop: Header=BB2_89 Depth=1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 212
	ld.d	$a1, $a3, 216
	slli.d	$a2, $a0, 3
	stx.d	$s3, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $a3, 212
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	ori	$s2, $zero, 1
.Ltmp115:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp116:
# %bb.106:                              # %_ZN9CMyComPtrI8IUnknownED2Ev.exit339
                                        #   in Loop: Header=BB2_89 Depth=1
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB2_108
.LBB2_107:                              #   in Loop: Header=BB2_89 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp118:
	jirl	$ra, $a1, 0
.Ltmp119:
.LBB2_108:                              # %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit
                                        #   in Loop: Header=BB2_89 Depth=1
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB2_110
# %bb.109:                              #   in Loop: Header=BB2_89 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp121:
	jirl	$ra, $a1, 0
.Ltmp122:
.LBB2_110:                              # %_ZN9CMyComPtrI14ICompressCoderED2Ev.exit
                                        #   in Loop: Header=BB2_89 Depth=1
	beqz	$s2, .LBB2_217
# %bb.111:                              #   in Loop: Header=BB2_89 Depth=1
	addi.d	$fp, $fp, 8
	bne	$s5, $fp, .LBB2_89
	b	.LBB2_115
.LBB2_112:                              #   in Loop: Header=BB2_89 Depth=1
	move	$s2, $zero
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	b	.LBB2_108
.LBB2_113:                              #   in Loop: Header=BB2_89 Depth=1
	move	$s2, $zero
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 168
	bnez	$a0, .LBB2_107
	b	.LBB2_108
.LBB2_114:
	move	$s7, $zero
.LBB2_115:                              # %._crit_edge577
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a0, $fp, 8
.Ltmp124:
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN11NCoderMixer9CBindInfoaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp125:
# %bb.116:                              # %.noexc346
	addi.d	$s0, $fp, 136
.Ltmp126:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp127:
# %bb.117:                              # %.noexc347
	ld.w	$s1, $sp, 372
	ld.w	$a0, $fp, 148
	add.w	$a1, $a0, $s1
.Ltmp128:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp129:
# %bb.118:                              # %.noexc348
	blez	$s1, .LBB2_122
# %bb.119:                              # %.lr.ph.i.i.i
	move	$fp, $zero
	slli.d	$s1, $s1, 3
	.p2align	4, , 16
.LBB2_120:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 376
	ldx.d	$s2, $a0, $fp
.Ltmp131:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp132:
# %bb.121:                              # %.noexc349
                                        #   in Loop: Header=BB2_120 Depth=1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 148
	ld.d	$a1, $a3, 152
	slli.d	$a2, $a0, 3
	stx.d	$s2, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$fp, $fp, 8
	st.w	$a0, $a3, 148
	bne	$s1, $fp, .LBB2_120
.LBB2_122:                              # %.loopexit506
	ori	$a0, $zero, 1
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	st.b	$a0, $a5, 0
.LBB2_123:
	ld.d	$a0, $a5, 184
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp134:
	jirl	$ra, $a1, 0
.Ltmp135:
# %bb.124:                              # %.preheader500
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	blez	$a6, .LBB2_203
# %bb.125:                              # %.lr.ph598
	move	$s5, $s7
	move	$s0, $zero
	move	$s7, $zero
	move	$fp, $zero
	ld.d	$a0, $sp, 576
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 568
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(IID_ICompressSetDecoderProperties2)
	ld.d	$a0, $a0, %got_pc_lo12(IID_ICompressSetDecoderProperties2)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(IID_ICompressSetCoderMt)
	ld.d	$a0, $a0, %got_pc_lo12(IID_ICompressSetCoderMt)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(IID_ICryptoSetPassword)
	ld.d	$a0, $a0, %got_pc_lo12(IID_ICryptoSetPassword)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIPKyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIPKyE+16)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB2_126:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_152 Depth 2
                                        #     Child Loop BB2_160 Depth 2
                                        #     Child Loop BB2_163 Depth 2
                                        #     Child Loop BB2_179 Depth 2
                                        #     Child Loop BB2_184 Depth 2
                                        #       Child Loop BB2_186 Depth 3
                                        #       Child Loop BB2_190 Depth 3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 216
	ld.d	$a1, $s4, 16
	slli.d	$a2, $s0, 3
	ldx.d	$s2, $a0, $a2
	ldx.d	$s6, $a1, $a2
	st.d	$zero, $sp, 200
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 0
.Ltmp137:
	addi.d	$a2, $sp, 200
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
.Ltmp138:
# %bb.127:                              # %_ZNK9CMyComPtrI8IUnknownE14QueryInterfaceI30ICompressSetDecoderProperties2EEiRK4GUIDPPT_.exit
                                        #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB2_134
# %bb.128:                              #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a2, $s6, 16
	srli.d	$a1, $a2, 32
	beqz	$a1, .LBB2_130
# %bb.129:                              #   in Loop: Header=BB2_126 Depth=1
	move	$s3, $zero
	lu12i.w	$a1, -524284
	ori	$s5, $a1, 1
	b	.LBB2_132
	.p2align	4, , 16
.LBB2_130:                              #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a3, $a0, 0
	ld.d	$a1, $s6, 24
	ld.d	$a3, $a3, 40
.Ltmp140:
	addi.w	$a2, $a2, 0
	jirl	$ra, $a3, 0
	move	$a1, $a0
.Ltmp141:
# %bb.131:                              #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a0, $sp, 200
	sltui	$s3, $a1, 1
	masknez	$a1, $a1, $s3
	maskeqz	$a2, $s5, $s3
	or	$s5, $a2, $a1
	beqz	$a0, .LBB2_133
.LBB2_132:                              # %.thread
                                        #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp146:
	jirl	$ra, $a1, 0
.Ltmp147:
.LBB2_133:                              # %_ZN9CMyComPtrI30ICompressSetDecoderProperties2ED2Ev.exit
                                        #   in Loop: Header=BB2_126 Depth=1
	move	$s1, $s5
	beqz	$s3, .LBB2_82
.LBB2_134:                              #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB2_141
# %bb.135:                              #   in Loop: Header=BB2_126 Depth=1
	st.d	$zero, $sp, 200
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 0
.Ltmp149:
	addi.d	$a2, $sp, 200
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
.Ltmp150:
# %bb.136:                              # %_ZNK9CMyComPtrI8IUnknownE14QueryInterfaceI19ICompressSetCoderMtEEiRK4GUIDPPT_.exit
                                        #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB2_141
# %bb.137:                              #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 40
.Ltmp152:
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	jirl	$ra, $a2, 0
.Ltmp153:
# %bb.138:                              #   in Loop: Header=BB2_126 Depth=1
	move	$s1, $a0
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB2_140
# %bb.139:                              #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp158:
	jirl	$ra, $a1, 0
.Ltmp159:
.LBB2_140:                              # %_ZN9CMyComPtrI19ICompressSetCoderMtED2Ev.exit
                                        #   in Loop: Header=BB2_126 Depth=1
	bnez	$s1, .LBB2_82
.LBB2_141:                              #   in Loop: Header=BB2_126 Depth=1
	st.d	$zero, $sp, 200
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 0
.Ltmp161:
	addi.d	$a2, $sp, 200
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
.Ltmp162:
# %bb.142:                              # %_ZNK9CMyComPtrI8IUnknownE14QueryInterfaceI18ICryptoSetPasswordEEiRK4GUIDPPT_.exit
                                        #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a0, $sp, 200
	sltui	$s2, $a0, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	masknez	$a1, $a1, $s2
	maskeqz	$a2, $s5, $s2
	or	$s1, $a2, $a1
	beqz	$a0, .LBB2_172
# %bb.143:                              # %_ZNK9CMyComPtrI8IUnknownE14QueryInterfaceI18ICryptoSetPasswordEEiRK4GUIDPPT_.exit
                                        #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beqz	$a1, .LBB2_172
# %bb.144:                              #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 40
	st.d	$zero, $sp, 168
.Ltmp164:
	addi.d	$a1, $sp, 168
	jirl	$ra, $a2, 0
.Ltmp165:
# %bb.145:                              #   in Loop: Header=BB2_126 Depth=1
	move	$s1, $a0
	beqz	$a0, .LBB2_147
# %bb.146:                              #   in Loop: Header=BB2_126 Depth=1
	move	$s2, $zero
	b	.LBB2_170
.LBB2_147:                              #   in Loop: Header=BB2_126 Depth=1
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s5, $sp, 168
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 31
	addi.w	$s2, $s3, 0
	bgez	$a1, .LBB2_149
# %bb.148:                              #   in Loop: Header=BB2_126 Depth=1
	move	$s1, $zero
	b	.LBB2_151
.LBB2_149:                              #   in Loop: Header=BB2_126 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
.Ltmp167:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp168:
# %bb.150:                              # %.noexc360
                                        #   in Loop: Header=BB2_126 Depth=1
	move	$s1, $a0
	st.w	$zero, $a0, 0
.LBB2_151:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        #   in Loop: Header=BB2_126 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB2_152:                              #   Parent Loop BB2_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a1, $s5, $a0
	stx.w	$a1, $s1, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB2_152
# %bb.153:                              # %_ZN11CStringBaseIwEC2EPKw.exit
                                        #   in Loop: Header=BB2_126 Depth=1
	slli.w	$a2, $s3, 1
	beqz	$s2, .LBB2_158
# %bb.154:                              #   in Loop: Header=BB2_126 Depth=1
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 31, 0
.Ltmp170:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp171:
# %bb.155:                              # %_ZN7CBufferIhE11SetCapacityEm.exit
                                        #   in Loop: Header=BB2_126 Depth=1
	move	$s5, $a0
	blez	$s2, .LBB2_164
# %bb.156:                              # %.lr.ph579.preheader
                                        #   in Loop: Header=BB2_126 Depth=1
	bstrpick.d	$a0, $s3, 30, 0
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB2_159
# %bb.157:                              #   in Loop: Header=BB2_126 Depth=1
	move	$a1, $zero
	b	.LBB2_162
.LBB2_158:                              #   in Loop: Header=BB2_126 Depth=1
	move	$s5, $zero
	b	.LBB2_165
.LBB2_159:                              # %vector.ph
                                        #   in Loop: Header=BB2_126 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI2_0)
	pcalau12i	$a1, %pc_hi20(.LCPI2_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI2_1)
	bstrpick.d	$a1, $s3, 30, 2
	slli.d	$a1, $a1, 2
	move	$a2, $s1
	move	$a3, $a1
	.p2align	4, , 16
.LBB2_160:                              # %vector.body
                                        #   Parent Loop BB2_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a2, 0
	vslli.d	$vr3, $vr0, 1
	vslli.d	$vr4, $vr1, 1
	vpickve2gr.d	$a4, $vr4, 0
	add.d	$a4, $s5, $a4
	vpickve2gr.d	$a5, $vr4, 1
	add.d	$a5, $s5, $a5
	vpickve2gr.d	$a6, $vr3, 0
	add.d	$a6, $s5, $a6
	vpickve2gr.d	$a7, $vr3, 1
	add.d	$a7, $s5, $a7
	vstelm.b	$vr2, $a4, 0, 0
	vstelm.b	$vr2, $a5, 0, 4
	vstelm.b	$vr2, $a6, 0, 8
	vstelm.b	$vr2, $a7, 0, 12
	vsrli.w	$vr2, $vr2, 8
	vstelm.b	$vr2, $a4, 1, 0
	vstelm.b	$vr2, $a5, 1, 4
	vstelm.b	$vr2, $a6, 1, 8
	vstelm.b	$vr2, $a7, 1, 12
	vaddi.du	$vr1, $vr1, 4
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB2_160
# %bb.161:                              # %middle.block
                                        #   in Loop: Header=BB2_126 Depth=1
	beq	$a0, $a1, .LBB2_164
.LBB2_162:                              # %.lr.ph579.preheader767
                                        #   in Loop: Header=BB2_126 Depth=1
	alsl.d	$a2, $a1, $s1, 2
	alsl.d	$a3, $a1, $s5, 1
	addi.d	$a3, $a3, 1
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB2_163:                              # %.lr.ph579
                                        #   Parent Loop BB2_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a1, $a2, 0
	st.h	$a1, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 2
	bnez	$a0, .LBB2_163
.LBB2_164:                              #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
.LBB2_165:                              # %._crit_edge580
                                        #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a0, $sp, 200
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
.Ltmp173:
	move	$a1, $s5
	jirl	$ra, $a3, 0
.Ltmp174:
# %bb.166:                              #   in Loop: Header=BB2_126 Depth=1
	move	$s3, $a0
	beqz	$s1, .LBB2_168
# %bb.167:                              #   in Loop: Header=BB2_126 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_168:                              # %_ZN11CStringBaseIwED2Ev.exit
                                        #   in Loop: Header=BB2_126 Depth=1
	sltui	$s2, $s3, 1
	masknez	$a0, $s3, $s2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s2
	or	$s1, $a1, $a0
	beqz	$s5, .LBB2_170
# %bb.169:                              #   in Loop: Header=BB2_126 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_170:                              # %_ZN7CBufferIhED2Ev.exit
                                        #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a0, $sp, 168
.Ltmp182:
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp183:
# %bb.171:                              # %_ZN10CMyComBSTRD2Ev.exit
                                        #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a0, $sp, 200
.LBB2_172:                              #   in Loop: Header=BB2_126 Depth=1
	beqz	$a0, .LBB2_174
# %bb.173:                              #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp185:
	jirl	$ra, $a1, 0
.Ltmp186:
.LBB2_174:                              # %_ZN9CMyComPtrI18ICryptoSetPasswordED2Ev.exit
                                        #   in Loop: Header=BB2_126 Depth=1
	beqz	$s2, .LBB2_82
# %bb.175:                              #   in Loop: Header=BB2_126 Depth=1
	ld.w	$s5, $s6, 32
	ld.w	$s3, $s6, 36
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 208
	vst	$vr0, $a0, 0
	ori	$a1, $zero, 8
	st.d	$a1, $sp, 224
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $sp, 200
	addi.d	$a0, $sp, 176
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 192
	st.d	$a2, $sp, 168
.Ltmp188:
	addi.d	$a0, $sp, 200
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp189:
# %bb.176:                              #   in Loop: Header=BB2_126 Depth=1
.Ltmp190:
	addi.d	$a0, $sp, 168
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp191:
# %bb.177:                              # %.preheader494
                                        #   in Loop: Header=BB2_126 Depth=1
	beqz	$s3, .LBB2_182
# %bb.178:                              # %.lr.ph583.preheader
                                        #   in Loop: Header=BB2_126 Depth=1
	add.w	$s2, $fp, $s3
	.p2align	4, , 16
.LBB2_179:                              # %.lr.ph583
                                        #   Parent Loop BB2_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s4, 112
.Ltmp193:
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp194:
# %bb.180:                              #   in Loop: Header=BB2_179 Depth=2
	ld.w	$a0, $sp, 180
	ld.d	$a1, $sp, 184
	alsl.d	$a2, $fp, $s6, 3
	slli.d	$a3, $a0, 3
	stx.d	$a2, $a1, $a3
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 180
	addi.w	$s3, $s3, -1
	addi.w	$fp, $fp, 1
	bnez	$s3, .LBB2_179
# %bb.181:                              #   in Loop: Header=BB2_126 Depth=1
	move	$fp, $s2
.LBB2_182:                              # %.preheader492
                                        #   in Loop: Header=BB2_126 Depth=1
	beqz	$s5, .LBB2_198
# %bb.183:                              # %.lr.ph589.preheader
                                        #   in Loop: Header=BB2_126 Depth=1
	move	$s3, $zero
	add.w	$a0, $s7, $s5
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.LBB2_184:                              # %.lr.ph589
                                        #   Parent Loop BB2_126 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_186 Depth 3
                                        #       Child Loop BB2_190 Depth 3
	ld.w	$a0, $s4, 44
	blez	$a0, .LBB2_188
# %bb.185:                              # %.lr.ph.i371
                                        #   in Loop: Header=BB2_184 Depth=2
	ld.d	$a1, $s4, 48
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB2_186:                              #   Parent Loop BB2_126 Depth=1
                                        #     Parent Loop BB2_184 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, -4
	beq	$a2, $s7, .LBB2_193
# %bb.187:                              #   in Loop: Header=BB2_186 Depth=3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB2_186
.LBB2_188:                              # %_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit.thread
                                        #   in Loop: Header=BB2_184 Depth=2
	ld.w	$a0, $s4, 76
	ori	$s6, $zero, 1
	blez	$a0, .LBB2_197
# %bb.189:                              # %.lr.ph.i381
                                        #   in Loop: Header=BB2_184 Depth=2
	ld.d	$a1, $s4, 80
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_190:                              #   Parent Loop BB2_126 Depth=1
                                        #     Parent Loop BB2_184 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 0
	beq	$a2, $s7, .LBB2_192
# %bb.191:                              #   in Loop: Header=BB2_190 Depth=3
	addi.d	$s2, $s2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB2_190
	b	.LBB2_197
	.p2align	4, , 16
.LBB2_192:                              # %_ZNK8NArchive3N7z7CFolder24FindPackStreamArrayIndexEj.exit
                                        #   in Loop: Header=BB2_184 Depth=2
.Ltmp196:
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp197:
	b	.LBB2_195
	.p2align	4, , 16
.LBB2_193:                              # %_ZNK8NArchive3N7z7CFolder23FindBindPairForInStreamEj.exit
                                        #   in Loop: Header=BB2_184 Depth=2
	ld.w	$s2, $a1, 0
	ld.d	$s6, $s4, 112
.Ltmp199:
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp200:
# %bb.194:                              # %_ZN13CRecordVectorIPKyE3AddES1_.exit377
                                        #   in Loop: Header=BB2_184 Depth=2
	alsl.d	$s2, $s2, $s6, 3
.LBB2_195:                              #   in Loop: Header=BB2_184 Depth=2
	ld.w	$a0, $sp, 212
	ld.d	$a2, $sp, 216
	slli.d	$a1, $a0, 3
	stx.d	$s2, $a2, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 212
	addi.w	$s3, $s3, 1
	addi.w	$s7, $s7, 1
	bne	$s3, $s5, .LBB2_184
# %bb.196:                              #   in Loop: Header=BB2_126 Depth=1
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	b	.LBB2_199
	.p2align	4, , 16
.LBB2_197:                              #   in Loop: Header=BB2_126 Depth=1
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	b	.LBB2_201
	.p2align	4, , 16
.LBB2_198:                              # %.preheader492.._crit_edge590_crit_edge
                                        #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a2, $sp, 216
.LBB2_199:                              # %._crit_edge590
                                        #   in Loop: Header=BB2_126 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 184
	ld.d	$a1, $a0, 0
	ld.d	$a3, $sp, 184
	ld.d	$a4, $a1, 16
.Ltmp202:
	move	$a1, $s0
	jirl	$ra, $a4, 0
.Ltmp203:
# %bb.200:                              #   in Loop: Header=BB2_126 Depth=1
	move	$s6, $zero
	move	$s5, $s1
.LBB2_201:                              # %_ZNK8NArchive3N7z7CFolder24FindPackStreamArrayIndexEj.exit.thread
                                        #   in Loop: Header=BB2_126 Depth=1
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB2_219
# %bb.202:                              #   in Loop: Header=BB2_126 Depth=1
	addi.d	$s0, $s0, 1
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	bne	$s0, $a6, .LBB2_126
.LBB2_203:                              # %._crit_edge599
	ld.w	$a0, $sp, 244
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_207
# %bb.204:                              # %.lr.ph.i390
	ld.d	$a1, $sp, 344
	ld.w	$a2, $a1, 0
	ld.d	$a3, $sp, 248
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_205:                              # =>This Inner Loop Header: Depth=1
	alsl.d	$a4, $a1, $a3, 3
	ld.w	$a4, $a4, 4
	bltu	$a2, $a4, .LBB2_209
# %bb.206:                              #   in Loop: Header=BB2_205 Depth=1
	addi.w	$a1, $a1, 1
	sub.w	$a2, $a2, $a4
	bne	$a0, $a1, .LBB2_205
.LBB2_207:                              # %._crit_edge.i391
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.Ltmp214:
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp215:
# %bb.208:                              # %.noexc392
.LBB2_209:                              # %_ZNK11NCoderMixer9CBindInfo13FindOutStreamEjRjS1_.exit
	ld.bu	$a0, $a5, 168
	beqz	$a0, .LBB2_211
# %bb.210:
	ld.d	$a0, $a5, 176
	st.w	$a1, $a0, 184
.LBB2_211:
	beqz	$a6, .LBB2_218
# %bb.212:
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $sp, 208
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 224
	ld.w	$a1, $sp, 452
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIP19ISequentialInStreamE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIP19ISequentialInStreamE+16)
	st.d	$a0, $sp, 200
.Ltmp205:
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp206:
# %bb.213:                              # %.preheader
	ld.w	$a3, $sp, 452
	blez	$a3, .LBB2_220
# %bb.214:                              # %.lr.ph601
	move	$fp, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_215:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 456
	ldx.d	$a0, $a0, $fp
	ld.d	$s1, $a0, 0
.Ltmp208:
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp209:
# %bb.216:                              #   in Loop: Header=BB2_215 Depth=1
	ld.w	$a0, $sp, 212
	ld.d	$a1, $sp, 216
	slli.d	$a2, $a0, 3
	stx.d	$s1, $a1, $a2
	ld.w	$a3, $sp, 452
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 212
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	blt	$s0, $a3, .LBB2_215
	b	.LBB2_221
.LBB2_217:
	move	$s1, $s7
	b	.LBB2_82
.LBB2_218:
	move	$s1, $zero
	b	.LBB2_82
.LBB2_219:
	move	$s1, $s5
	b	.LBB2_82
.LBB2_220:                              # %.preheader.._crit_edge602_crit_edge
	ld.d	$a1, $sp, 216
.LBB2_221:                              # %._crit_edge602
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 192
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$a2, $sp, 168
	ld.d	$a2, $a0, 0
	ld.d	$t0, $a2, 40
.Ltmp211:
	addi.d	$a4, $sp, 168
	ori	$a6, $zero, 1
	move	$a2, $zero
	move	$a5, $zero
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	jirl	$ra, $t0, 0
.Ltmp212:
# %bb.222:
	move	$s1, $a0
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB2_82
.LBB2_223:
.Ltmp213:
	b	.LBB2_274
.LBB2_224:                              # %.loopexit.split-lp
.Ltmp207:
	b	.LBB2_274
.LBB2_225:                              # %_ZN11CStringBaseIwED2Ev.exit363.thread
.Ltmp169:
	b	.LBB2_240
.LBB2_226:
.Ltmp172:
	move	$fp, $a0
	move	$s5, $zero
	b	.LBB2_228
.LBB2_227:
.Ltmp175:
	move	$fp, $a0
.LBB2_228:
	beqz	$s1, .LBB2_230
# %bb.229:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_230:                              # %_ZN11CStringBaseIwED2Ev.exit363
	beqz	$s5, .LBB2_241
# %bb.231:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB2_241
.LBB2_232:
.Ltmp136:
	b	.LBB2_310
.LBB2_233:
.Ltmp160:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_234:
.Ltmp154:
	b	.LBB2_244
.LBB2_235:
.Ltmp142:
	b	.LBB2_269
.LBB2_236:                              # %.loopexit.split-lp496
.Ltmp204:
	b	.LBB2_301
.LBB2_237:
.Ltmp219:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_238:
.Ltmp184:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_239:
.Ltmp166:
.LBB2_240:                              # %_ZN7CBufferIhED2Ev.exit364
	move	$fp, $a0
.LBB2_241:                              # %_ZN7CBufferIhED2Ev.exit364
	ld.d	$a0, $sp, 168
.Ltmp176:
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp177:
	b	.LBB2_265
.LBB2_242:
.Ltmp178:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_243:
.Ltmp151:
.LBB2_244:
	move	$fp, $a0
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB2_311
# %bb.245:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp155:
	jirl	$ra, $a1, 0
.Ltmp156:
	b	.LBB2_311
.LBB2_246:
.Ltmp157:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_247:
.Ltmp148:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_248:
.Ltmp201:
	b	.LBB2_301
.LBB2_249:
.Ltmp198:
	b	.LBB2_301
.LBB2_250:
.Ltmp187:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_251:
.Ltmp117:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_252:                              # %.body336
.Ltmp105:
	b	.LBB2_262
.LBB2_253:                              # %.body336.thread
.Ltmp102:
	move	$fp, $a0
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_263
.LBB2_254:                              # %.body336.thread425
.Ltmp94:
	b	.LBB2_280
.LBB2_255:
.Ltmp84:
	b	.LBB2_310
.LBB2_256:
.Ltmp222:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_257:
.Ltmp2:
	ld.d	$a1, $sp, 392
	move	$fp, $a0
	beqz	$a1, .LBB2_313
# %bb.258:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp3:
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp4:
	b	.LBB2_313
.LBB2_259:
.Ltmp5:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_260:
.Ltmp10:
	move	$fp, $a0
	b	.LBB2_312
.LBB2_261:                              # %.body336.thread433
.Ltmp99:
.LBB2_262:
	move	$fp, $a0
.LBB2_263:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
.Ltmp106:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp107:
	b	.LBB2_281
.LBB2_264:
.Ltmp163:
	move	$fp, $a0
.LBB2_265:
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB2_311
# %bb.266:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp179:
	jirl	$ra, $a1, 0
.Ltmp180:
	b	.LBB2_311
.LBB2_267:
.Ltmp181:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_268:
.Ltmp139:
.LBB2_269:
	move	$fp, $a0
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB2_311
# %bb.270:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp143:
	jirl	$ra, $a1, 0
.Ltmp144:
	b	.LBB2_311
.LBB2_271:
.Ltmp145:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_272:
.Ltmp108:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_273:                              # %.loopexit
.Ltmp210:
.LBB2_274:
	move	$fp, $a0
	b	.LBB2_302
.LBB2_275:
.Ltmp120:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_276:
.Ltmp123:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_277:
.Ltmp192:
	b	.LBB2_301
.LBB2_278:                              # %.loopexit.split-lp502
.Ltmp130:
	b	.LBB2_310
.LBB2_279:
.Ltmp87:
.LBB2_280:                              # %_ZN9CMyComPtrI8IUnknownED2Ev.exit
	move	$fp, $a0
.LBB2_281:                              # %_ZN9CMyComPtrI8IUnknownED2Ev.exit
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB2_283
# %bb.282:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp109:
	jirl	$ra, $a1, 0
.Ltmp110:
.LBB2_283:                              # %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit343
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB2_311
# %bb.284:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp112:
	jirl	$ra, $a1, 0
.Ltmp113:
	b	.LBB2_311
.LBB2_285:
.Ltmp114:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_286:
.Ltmp111:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_287:
.Ltmp216:
	b	.LBB2_310
.LBB2_288:                              # %.loopexit.split-lp512.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
.Ltmp57:
	b	.LBB2_310
.LBB2_289:                              # %.loopexit501
.Ltmp133:
	b	.LBB2_310
.LBB2_290:                              # %.loopexit511
.Ltmp71:
	b	.LBB2_310
.LBB2_291:
.Ltmp13:
	move	$fp, $a0
	b	.LBB2_312
.LBB2_292:
.Ltmp16:
	move	$fp, $a0
	b	.LBB2_312
.LBB2_293:
.Ltmp19:
	b	.LBB2_295
.LBB2_294:
.Ltmp22:
.LBB2_295:                              # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit296
	move	$fp, $a0
	b	.LBB2_306
.LBB2_296:
.Ltmp31:
	move	$fp, $a0
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_305
.LBB2_297:
.Ltmp43:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_298:
.Ltmp46:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_299:                              # %.loopexit.split-lp512.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp60:
	b	.LBB2_310
.LBB2_300:                              # %.loopexit495
.Ltmp195:
.LBB2_301:
	move	$fp, $a0
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB2_302:
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB2_311
.LBB2_303:                              # %.loopexit.split-lp512.loopexit.split-lp.loopexit
.Ltmp65:
	b	.LBB2_310
.LBB2_304:
.Ltmp34:
	move	$fp, $a0
.LBB2_305:                              # %.body291
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
.Ltmp35:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp36:
.LBB2_306:                              # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit296
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
.Ltmp38:
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp39:
	b	.LBB2_312
.LBB2_307:
.Ltmp40:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_308:
.Ltmp37:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_309:                              # %.loopexit.split-lp512.loopexit
.Ltmp68:
.LBB2_310:                              # %.loopexit.split-lp512
	move	$fp, $a0
.LBB2_311:                              # %.loopexit.split-lp512
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(_ZN8NArchive3N7z11CBindInfoExD2Ev)
	jirl	$ra, $ra, 0
.LBB2_312:                              # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit298
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZN15CLockedInStreamD2Ev)
	jirl	$ra, $ra, 0
.LBB2_313:                              # %.body
	addi.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj, .Lfunc_end2-_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
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
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp28-.Ltmp23                #   Call between .Ltmp23 and .Ltmp28
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin0          #     jumps to .Ltmp43
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp56-.Ltmp47                #   Call between .Ltmp47 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin0          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp64-.Ltmp61                #   Call between .Ltmp61 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin0          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp81-.Ltmp72                #   Call between .Ltmp72 and .Ltmp81
	.uleb128 .Ltmp130-.Lfunc_begin0         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin0          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp217-.Ltmp83               #   Call between .Ltmp83 and .Ltmp217
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin0         # >> Call Site 21 <<
	.uleb128 .Ltmp218-.Ltmp217              #   Call between .Ltmp217 and .Ltmp218
	.uleb128 .Ltmp219-.Lfunc_begin0         #     jumps to .Ltmp219
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp220-.Lfunc_begin0         # >> Call Site 22 <<
	.uleb128 .Ltmp221-.Ltmp220              #   Call between .Ltmp220 and .Ltmp221
	.uleb128 .Ltmp222-.Lfunc_begin0         #     jumps to .Ltmp222
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp221-.Lfunc_begin0         # >> Call Site 23 <<
	.uleb128 .Ltmp85-.Ltmp221               #   Call between .Ltmp221 and .Ltmp85
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin0          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin0          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp99-.Lfunc_begin0          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp94-.Lfunc_begin0          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp98-.Ltmp90                #   Call between .Ltmp90 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin0          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin0         # >> Call Site 29 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin0         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin0         # >> Call Site 30 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin0         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin0         # >> Call Site 31 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin0         #     jumps to .Ltmp117
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp118-.Lfunc_begin0         # >> Call Site 32 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin0         #     jumps to .Ltmp120
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp121-.Lfunc_begin0         # >> Call Site 33 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin0         #     jumps to .Ltmp123
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp124-.Lfunc_begin0         # >> Call Site 34 <<
	.uleb128 .Ltmp129-.Ltmp124              #   Call between .Ltmp124 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin0         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin0         # >> Call Site 35 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin0         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin0         # >> Call Site 36 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin0         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin0         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin0         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin0         #     jumps to .Ltmp148
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp149-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin0         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin0         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin0         #     jumps to .Ltmp160
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp161-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin0         #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp165-.Ltmp164              #   Call between .Ltmp164 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin0         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp167-.Ltmp165              #   Call between .Ltmp165 and .Ltmp167
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp168-.Ltmp167              #   Call between .Ltmp167 and .Ltmp168
	.uleb128 .Ltmp169-.Lfunc_begin0         #     jumps to .Ltmp169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp171-.Ltmp170              #   Call between .Ltmp170 and .Ltmp171
	.uleb128 .Ltmp172-.Lfunc_begin0         #     jumps to .Ltmp172
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin0         #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp182-.Ltmp174              #   Call between .Ltmp174 and .Ltmp182
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin0         #     jumps to .Ltmp184
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp185-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin0         #     jumps to .Ltmp187
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp188-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp191-.Ltmp188              #   Call between .Ltmp188 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin0         #     jumps to .Ltmp192
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin0         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin0         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin0         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin0         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp214-.Ltmp203              #   Call between .Ltmp203 and .Ltmp214
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin0         #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin0         # >> Call Site 59 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin0         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin0         # >> Call Site 60 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin0         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin0         # >> Call Site 61 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin0         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin0         # >> Call Site 62 <<
	.uleb128 .Ltmp176-.Ltmp212              #   Call between .Ltmp212 and .Ltmp176
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin0         # >> Call Site 63 <<
	.uleb128 .Ltmp177-.Ltmp176              #   Call between .Ltmp176 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin0         #     jumps to .Ltmp178
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp177-.Lfunc_begin0         # >> Call Site 64 <<
	.uleb128 .Ltmp155-.Ltmp177              #   Call between .Ltmp177 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin0         # >> Call Site 65 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin0         #     jumps to .Ltmp157
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp156-.Lfunc_begin0         # >> Call Site 66 <<
	.uleb128 .Ltmp3-.Ltmp156                #   Call between .Ltmp156 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 67 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 68 <<
	.uleb128 .Ltmp106-.Ltmp4                #   Call between .Ltmp4 and .Ltmp106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin0         # >> Call Site 69 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin0         #     jumps to .Ltmp108
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp179-.Lfunc_begin0         # >> Call Site 70 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin0         #     jumps to .Ltmp181
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp180-.Lfunc_begin0         # >> Call Site 71 <<
	.uleb128 .Ltmp143-.Ltmp180              #   Call between .Ltmp180 and .Ltmp143
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin0         # >> Call Site 72 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin0         #     jumps to .Ltmp145
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp144-.Lfunc_begin0         # >> Call Site 73 <<
	.uleb128 .Ltmp109-.Ltmp144              #   Call between .Ltmp144 and .Ltmp109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin0         # >> Call Site 74 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 75 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin0         #     jumps to .Ltmp114
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp113-.Lfunc_begin0         # >> Call Site 76 <<
	.uleb128 .Ltmp35-.Ltmp113               #   Call between .Ltmp113 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 77 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 78 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 79 <<
	.uleb128 .Lfunc_end2-.Ltmp39            #   Call between .Ltmp39 and .Lfunc_end2
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
	.section	.text._ZN15CLockedInStreamD2Ev,"axG",@progbits,_ZN15CLockedInStreamD2Ev,comdat
	.weak	_ZN15CLockedInStreamD2Ev        # -- Begin function _ZN15CLockedInStreamD2Ev
	.p2align	5
	.type	_ZN15CLockedInStreamD2Ev,@function
_ZN15CLockedInStreamD2Ev:               # @_ZN15CLockedInStreamD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB3_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp223:
	jirl	$ra, $a1, 0
.Ltmp224:
.LBB3_2:                                # %_ZN9CMyComPtrI9IInStreamED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB3_3:
.Ltmp225:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN15CLockedInStreamD2Ev, .Lfunc_end3-_ZN15CLockedInStreamD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN15CLockedInStreamD2Ev,"aG",@progbits,_ZN15CLockedInStreamD2Ev,comdat
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
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp223-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp223
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp224-.Ltmp223              #   Call between .Ltmp223 and .Ltmp224
	.uleb128 .Ltmp225-.Lfunc_begin1         #     jumps to .Ltmp225
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp224-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp224           #   Call between .Ltmp224 and .Lfunc_end3
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
	.section	.text._ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev # -- Begin function _ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev,@function
_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev: # @_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	st.d	$a0, $fp, 0
.Ltmp226:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp227:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB4_2:
.Ltmp228:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev, .Lfunc_end4-_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp226-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp227-.Ltmp226              #   Call between .Ltmp226 and .Ltmp227
	.uleb128 .Ltmp228-.Lfunc_begin2         #     jumps to .Ltmp228
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp227-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp227           #   Call between .Ltmp227 and .Lfunc_end4
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
	.section	.text._ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev,"axG",@progbits,_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev,comdat
	.weak	_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev # -- Begin function _ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev,@function
_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev: # @_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev
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
.Lfunc_end5:
	.size	_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev, .Lfunc_end5-_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev,"axG",@progbits,_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev,comdat
	.weak	_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev # -- Begin function _ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev,@function
_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev: # @_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev
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
.Lfunc_end6:
	.size	_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev, .Lfunc_end6-_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev
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
.Lfunc_end7:
	.size	_ZN13CRecordVectorIjED0Ev, .Lfunc_end7-_ZN13CRecordVectorIjED0Ev
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
.Lfunc_end8:
	.size	_ZN13CRecordVectorIyED0Ev, .Lfunc_end8-_ZN13CRecordVectorIyED0Ev
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
.Lfunc_end9:
	.size	__clang_call_terminate, .Lfunc_end9-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN13CObjectVectorI13CStreamBinderED2Ev,"axG",@progbits,_ZN13CObjectVectorI13CStreamBinderED2Ev,comdat
	.weak	_ZN13CObjectVectorI13CStreamBinderED2Ev # -- Begin function _ZN13CObjectVectorI13CStreamBinderED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI13CStreamBinderED2Ev,@function
_ZN13CObjectVectorI13CStreamBinderED2Ev: # @_ZN13CObjectVectorI13CStreamBinderED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI13CStreamBinderE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI13CStreamBinderE+16)
	st.d	$a0, $fp, 0
.Ltmp229:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp230:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB10_2:
.Ltmp231:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN13CObjectVectorI13CStreamBinderED2Ev, .Lfunc_end10-_ZN13CObjectVectorI13CStreamBinderED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI13CStreamBinderED2Ev,"aG",@progbits,_ZN13CObjectVectorI13CStreamBinderED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp229-.Lfunc_begin3         # >> Call Site 1 <<
	.uleb128 .Ltmp230-.Ltmp229              #   Call between .Ltmp229 and .Ltmp230
	.uleb128 .Ltmp231-.Lfunc_begin3         #     jumps to .Ltmp231
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp230-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Lfunc_end10-.Ltmp230          #   Call between .Ltmp230 and .Lfunc_end10
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
	.section	.text._ZN13CObjectVectorI13CStreamBinderED0Ev,"axG",@progbits,_ZN13CObjectVectorI13CStreamBinderED0Ev,comdat
	.weak	_ZN13CObjectVectorI13CStreamBinderED0Ev # -- Begin function _ZN13CObjectVectorI13CStreamBinderED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI13CStreamBinderED0Ev,@function
_ZN13CObjectVectorI13CStreamBinderED0Ev: # @_ZN13CObjectVectorI13CStreamBinderED0Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI13CStreamBinderE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI13CStreamBinderE+16)
	st.d	$a0, $fp, 0
.Ltmp232:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp233:
# %bb.1:                                # %_ZN13CObjectVectorI13CStreamBinderED2Ev.exit
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
.LBB11_2:
.Ltmp234:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN13CObjectVectorI13CStreamBinderED0Ev, .Lfunc_end11-_ZN13CObjectVectorI13CStreamBinderED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI13CStreamBinderED0Ev,"aG",@progbits,_ZN13CObjectVectorI13CStreamBinderED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table11:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp232-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp233-.Ltmp232              #   Call between .Ltmp232 and .Ltmp233
	.uleb128 .Ltmp234-.Lfunc_begin4         #     jumps to .Ltmp234
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp233-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Lfunc_end11-.Ltmp233          #   Call between .Ltmp233 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI13CStreamBinderE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI13CStreamBinderE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI13CStreamBinderE6DeleteEii # -- Begin function _ZN13CObjectVectorI13CStreamBinderE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI13CStreamBinderE6DeleteEii,@function
_ZN13CObjectVectorI13CStreamBinderE6DeleteEii: # @_ZN13CObjectVectorI13CStreamBinderE6DeleteEii
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	blez	$s1, .LBB12_10
# %bb.1:                                # %.lr.ph
	move	$s4, $zero
	slli.d	$s5, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	addi.d	$s6, $a0, %pc_lo12(_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE+16)
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               #   in Loop: Header=BB12_3 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	bgeu	$s4, $s1, .LBB12_10
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s5
	beqz	$s2, .LBB12_2
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	ld.d	$s3, $s2, 152
	beqz	$s3, .LBB12_8
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	ld.bu	$a0, $s3, 88
	beqz	$a0, .LBB12_7
# %bb.6:                                #   in Loop: Header=BB12_3 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(pthread_mutex_destroy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 40
	pcaddu18i	$ra, %call36(pthread_cond_destroy)
	jirl	$ra, $ra, 0
.LBB12_7:                               # %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i
                                        #   in Loop: Header=BB12_3 Depth=1
	ori	$a1, $zero, 96
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_8:                               #   in Loop: Header=BB12_3 Depth=1
	st.d	$zero, $s2, 152
	st.d	$s6, $s2, 128
	st.d	$zero, $s2, 136
	addi.d	$a0, $s2, 24
.Ltmp235:
	pcaddu18i	$ra, %call36(Event_Close)
	jirl	$ra, $ra, 0
.Ltmp236:
# %bb.9:                                # %_ZN13CStreamBinderD2Ev.exit
                                        #   in Loop: Header=BB12_3 Depth=1
	ori	$a1, $zero, 184
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_2
.LBB12_10:                              # %._crit_edge
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
.LBB12_11:
.Ltmp237:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN13CObjectVectorI13CStreamBinderE6DeleteEii, .Lfunc_end12-_ZN13CObjectVectorI13CStreamBinderE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI13CStreamBinderE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI13CStreamBinderE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp235-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp235
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp237-.Lfunc_begin5         #     jumps to .Ltmp237
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp236-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp236          #   Call between .Ltmp236 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
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
	beqz	$a0, .LBB13_3
# %bb.1:
	ld.bu	$a2, $a1, 16
	bnez	$a2, .LBB13_3
# %bb.2:
	st.b	$zero, $a1, 17
.LBB13_3:
	ret
.Lfunc_end13:
	.size	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv, .Lfunc_end13-_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev,"axG",@progbits,_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev,comdat
	.weak	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev # -- Begin function _ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev,@function
_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev: # @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE+16)
	st.d	$a0, $fp, 0
.Ltmp238:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp239:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB14_2:
.Ltmp240:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev, .Lfunc_end14-_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev,"aG",@progbits,_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp238-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.uleb128 .Ltmp240-.Lfunc_begin6         #     jumps to .Ltmp240
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp239-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Lfunc_end14-.Ltmp239          #   Call between .Ltmp239 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev,"axG",@progbits,_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev,comdat
	.weak	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev # -- Begin function _ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev,@function
_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev: # @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE+16)
	st.d	$a0, $fp, 0
.Ltmp241:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp242:
# %bb.1:                                # %_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev.exit
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
.LBB15_2:
.Ltmp243:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev, .Lfunc_end15-_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev,"aG",@progbits,_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp241-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp242-.Ltmp241              #   Call between .Ltmp241 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin7         #     jumps to .Ltmp243
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp242-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Lfunc_end15-.Ltmp242          #   Call between .Ltmp242 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii # -- Begin function _ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii,@function
_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii: # @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii
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
	blez	$s1, .LBB16_5
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB16_3
	.p2align	4, , 16
.LBB16_2:                               #   in Loop: Header=BB16_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB16_5
.LBB16_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB16_2
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN11NCoderMixer7CCoder2D2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 528
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_2
.LBB16_5:                               # %._crit_edge
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
.Lfunc_end16:
	.size	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii, .Lfunc_end16-_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11NCoderMixer7CCoder2D2Ev,"axG",@progbits,_ZN11NCoderMixer7CCoder2D2Ev,comdat
	.weak	_ZN11NCoderMixer7CCoder2D2Ev    # -- Begin function _ZN11NCoderMixer7CCoder2D2Ev
	.p2align	5
	.type	_ZN11NCoderMixer7CCoder2D2Ev,@function
_ZN11NCoderMixer7CCoder2D2Ev:           # @_ZN11NCoderMixer7CCoder2D2Ev
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
	pcalau12i	$a1, %got_pc_hi20(_ZTVN11NCoderMixer7CCoder2E)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTVN11NCoderMixer7CCoder2E)
	move	$fp, $a0
	addi.d	$a0, $a1, 16
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 496
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 464
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 432
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	st.d	$a0, $fp, 432
.Ltmp244:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp245:
# %bb.1:                                # %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 400
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	st.d	$a0, $fp, 400
.Ltmp247:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp248:
# %bb.2:                                # %_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CVirtThreadD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 360
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 328
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 296
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 264
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 248
	beqz	$a0, .LBB17_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp250:
	jirl	$ra, $a1, 0
.Ltmp251:
.LBB17_4:                               # %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit.i
	ld.d	$a0, $fp, 240
	beqz	$a0, .LBB17_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp253:
	jirl	$ra, $a1, 0
.Ltmp254:
.LBB17_6:                               # %_ZN11NCoderMixer11CCoderInfo2D2Ev.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB17_7:
.Ltmp255:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_8:
.Ltmp252:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_9:
.Ltmp249:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB17_10:
.Ltmp246:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN11NCoderMixer7CCoder2D2Ev, .Lfunc_end17-_ZN11NCoderMixer7CCoder2D2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN11NCoderMixer7CCoder2D2Ev,"aG",@progbits,_ZN11NCoderMixer7CCoder2D2Ev,comdat
	.p2align	2, 0x0
GCC_except_table17:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp244-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp244
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin8         #     jumps to .Ltmp246
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp245-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp247-.Ltmp245              #   Call between .Ltmp245 and .Ltmp247
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin8         #     jumps to .Ltmp249
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp248-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp250-.Ltmp248              #   Call between .Ltmp248 and .Ltmp250
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin8         #     jumps to .Ltmp252
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp253-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin8         #     jumps to .Ltmp255
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp254-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Lfunc_end17-.Ltmp254          #   Call between .Ltmp254 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev # -- Begin function _ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev,@function
_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev: # @_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	st.d	$a0, $fp, 0
.Ltmp256:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp257:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB18_2:
.Ltmp258:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev, .Lfunc_end18-_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table18:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp256-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp257-.Ltmp256              #   Call between .Ltmp256 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin9         #     jumps to .Ltmp258
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp257-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end18-.Ltmp257          #   Call between .Ltmp257 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev # -- Begin function _ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev,@function
_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev: # @_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE+16)
	st.d	$a0, $fp, 0
.Ltmp259:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp260:
# %bb.1:                                # %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit
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
.LBB19_2:
.Ltmp261:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev, .Lfunc_end19-_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp259-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.uleb128 .Ltmp261-.Lfunc_begin10        #     jumps to .Ltmp261
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp260-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Lfunc_end19-.Ltmp260          #   Call between .Ltmp260 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii # -- Begin function _ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii,@function
_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii: # @_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
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
	blez	$s1, .LBB20_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_2:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
                                        #   in Loop: Header=BB20_4 Depth=1
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_3:                               #   in Loop: Header=BB20_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB20_7
.LBB20_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB20_3
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB20_2
# %bb.6:                                #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp262:
	jirl	$ra, $a1, 0
.Ltmp263:
	b	.LBB20_2
.LBB20_7:                               # %._crit_edge
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
.LBB20_8:
.Ltmp264:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii, .Lfunc_end20-_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp262-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp262
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp263-.Ltmp262              #   Call between .Ltmp262 and .Ltmp263
	.uleb128 .Ltmp264-.Lfunc_begin11        #     jumps to .Ltmp264
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp263-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Lfunc_end20-.Ltmp263          #   Call between .Ltmp263 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11NCoderMixer9CBindInfoaSERKS0_,"axG",@progbits,_ZN11NCoderMixer9CBindInfoaSERKS0_,comdat
	.weak	_ZN11NCoderMixer9CBindInfoaSERKS0_ # -- Begin function _ZN11NCoderMixer9CBindInfoaSERKS0_
	.p2align	5
	.type	_ZN11NCoderMixer9CBindInfoaSERKS0_,@function
_ZN11NCoderMixer9CBindInfoaSERKS0_:     # @_ZN11NCoderMixer9CBindInfoaSERKS0_
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
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s0, 12
	ld.w	$a0, $fp, 12
	add.w	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB21_3
# %bb.1:                                # %.lr.ph.i.i
	move	$s1, $zero
	slli.d	$s2, $s2, 3
	.p2align	4, , 16
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	ldx.d	$s3, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 3
	stx.d	$s3, $a1, $a0
	ld.w	$a0, $fp, 12
	addi.d	$a0, $a0, 1
	addi.d	$s1, $s1, 8
	st.w	$a0, $fp, 12
	bne	$s2, $s1, .LBB21_2
.LBB21_3:                               # %_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEaSERKS2_.exit
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
	blez	$s3, .LBB21_6
# %bb.4:                                # %.lr.ph.i.i5
	move	$s2, $zero
	slli.d	$s3, $s3, 3
	.p2align	4, , 16
.LBB21_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 48
	ldx.d	$s4, $a0, $s2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ld.d	$a1, $fp, 48
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a1, $a0
	ld.w	$a0, $fp, 44
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	st.w	$a0, $fp, 44
	bne	$s3, $s2, .LBB21_5
.LBB21_6:                               # %_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEaSERKS2_.exit
	addi.d	$s1, $fp, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s0, 76
	ld.w	$a0, $fp, 76
	add.w	$a1, $a0, $s3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB21_9
# %bb.7:                                # %.lr.ph.i.i11
	move	$s2, $zero
	slli.d	$s3, $s3, 2
	.p2align	4, , 16
.LBB21_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 80
	ldx.w	$s4, $a0, $s2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 76
	ld.d	$a1, $fp, 80
	slli.d	$a0, $a0, 2
	stx.w	$s4, $a1, $a0
	ld.w	$a0, $fp, 76
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 4
	st.w	$a0, $fp, 76
	bne	$s3, $s2, .LBB21_8
.LBB21_9:                               # %_ZN13CRecordVectorIjEaSERKS0_.exit
	addi.d	$s1, $fp, 96
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s0, 108
	ld.w	$a0, $fp, 108
	add.w	$a1, $a0, $s3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	blez	$s3, .LBB21_12
# %bb.10:                               # %.lr.ph.i.i16
	move	$s2, $zero
	slli.d	$s3, $s3, 2
	.p2align	4, , 16
.LBB21_11:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 112
	ldx.w	$s4, $a0, $s2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 108
	ld.d	$a1, $fp, 112
	slli.d	$a0, $a0, 2
	stx.w	$s4, $a1, $a0
	ld.w	$a0, $fp, 108
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 4
	st.w	$a0, $fp, 108
	bne	$s3, $s2, .LBB21_11
.LBB21_12:                              # %_ZN13CRecordVectorIjEaSERKS0_.exit21
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
.Lfunc_end21:
	.size	_ZN11NCoderMixer9CBindInfoaSERKS0_, .Lfunc_end21-_ZN11NCoderMixer9CBindInfoaSERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev # -- Begin function _ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev,@function
_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev: # @_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	st.d	$a0, $fp, 0
.Ltmp265:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp266:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB22_2:
.Ltmp267:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev, .Lfunc_end22-_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp265-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp266-.Ltmp265              #   Call between .Ltmp265 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin12        #     jumps to .Ltmp267
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp266-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Lfunc_end22-.Ltmp266          #   Call between .Ltmp266 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev # -- Begin function _ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev,@function
_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev: # @_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE+16)
	st.d	$a0, $fp, 0
.Ltmp268:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp269:
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
.LBB23_2:
.Ltmp270:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev, .Lfunc_end23-_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table23:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp268-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin13        #     jumps to .Ltmp270
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp269-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Lfunc_end23-.Ltmp269          #   Call between .Ltmp269 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii # -- Begin function _ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii,@function
_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii: # @_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
	blez	$s1, .LBB24_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB24_4
	.p2align	4, , 16
.LBB24_2:                               # %_ZN9CMyComPtrI8IUnknownED2Ev.exit
                                        #   in Loop: Header=BB24_4 Depth=1
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB24_3:                               #   in Loop: Header=BB24_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB24_7
.LBB24_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB24_3
# %bb.5:                                #   in Loop: Header=BB24_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB24_2
# %bb.6:                                #   in Loop: Header=BB24_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp271:
	jirl	$ra, $a1, 0
.Ltmp272:
	b	.LBB24_2
.LBB24_7:                               # %._crit_edge
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
.LBB24_8:
.Ltmp273:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii, .Lfunc_end24-_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI8IUnknownEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table24:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp271-.Lfunc_begin14        #   Call between .Lfunc_begin14 and .Ltmp271
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp272-.Ltmp271              #   Call between .Ltmp271 and .Ltmp272
	.uleb128 .Ltmp273-.Lfunc_begin14        #     jumps to .Ltmp273
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp272-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Lfunc_end24-.Ltmp272          #   Call between .Ltmp272 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev # -- Begin function _ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev,@function
_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev: # @_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE+16)
	st.d	$a0, $fp, 0
.Ltmp274:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp275:
# %bb.1:                                # %_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit
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
.LBB25_2:
.Ltmp276:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev, .Lfunc_end25-_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table25:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp274-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp275-.Ltmp274              #   Call between .Ltmp274 and .Ltmp275
	.uleb128 .Ltmp276-.Lfunc_begin15        #     jumps to .Ltmp276
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp275-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Lfunc_end25-.Ltmp275          #   Call between .Ltmp275 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii # -- Begin function _ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii,@function
_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii: # @_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii
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
	blez	$s1, .LBB26_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB26_4
	.p2align	4, , 16
.LBB26_2:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
                                        #   in Loop: Header=BB26_4 Depth=1
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB26_3:                               #   in Loop: Header=BB26_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB26_7
.LBB26_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB26_3
# %bb.5:                                #   in Loop: Header=BB26_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB26_2
# %bb.6:                                #   in Loop: Header=BB26_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp277:
	jirl	$ra, $a1, 0
.Ltmp278:
	b	.LBB26_2
.LBB26_7:                               # %._crit_edge
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
.LBB26_8:
.Ltmp279:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii, .Lfunc_end26-_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table26:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp277-.Lfunc_begin16        #   Call between .Lfunc_begin16 and .Ltmp277
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp278-.Ltmp277              #   Call between .Ltmp277 and .Ltmp278
	.uleb128 .Ltmp279-.Lfunc_begin16        #     jumps to .Ltmp279
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp278-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Lfunc_end26-.Ltmp278          #   Call between .Ltmp278 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CRecordVectorIPKyED0Ev,"axG",@progbits,_ZN13CRecordVectorIPKyED0Ev,comdat
	.weak	_ZN13CRecordVectorIPKyED0Ev     # -- Begin function _ZN13CRecordVectorIPKyED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIPKyED0Ev,@function
_ZN13CRecordVectorIPKyED0Ev:            # @_ZN13CRecordVectorIPKyED0Ev
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
.Lfunc_end27:
	.size	_ZN13CRecordVectorIPKyED0Ev, .Lfunc_end27-_ZN13CRecordVectorIPKyED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIP19ISequentialInStreamED0Ev,"axG",@progbits,_ZN13CRecordVectorIP19ISequentialInStreamED0Ev,comdat
	.weak	_ZN13CRecordVectorIP19ISequentialInStreamED0Ev # -- Begin function _ZN13CRecordVectorIP19ISequentialInStreamED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIP19ISequentialInStreamED0Ev,@function
_ZN13CRecordVectorIP19ISequentialInStreamED0Ev: # @_ZN13CRecordVectorIP19ISequentialInStreamED0Ev
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
.Lfunc_end28:
	.size	_ZN13CRecordVectorIP19ISequentialInStreamED0Ev, .Lfunc_end28-_ZN13CRecordVectorIP19ISequentialInStreamED0Ev
                                        # -- End function
	.type	_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,@object # @_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.section	.data.rel.ro._ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,"awG",@progbits,_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,comdat
	.weak	_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.p2align	3, 0x0
_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE:
	.dword	0
	.dword	_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE, 40

	.type	_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,@object # @_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.section	.data.rel.ro._ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,"awG",@progbits,_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,comdat
	.weak	_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.p2align	3, 0x0
_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE, 24

	.type	_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,@object # @_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.section	.rodata._ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,"aG",@progbits,_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE,comdat
	.weak	_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE:
	.asciz	"13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE"
	.size	_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE, 52

	.type	_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE,@object # @_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE
	.section	.data.rel.ro._ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE,"awG",@progbits,_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE,comdat
	.weak	_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE
	.p2align	3, 0x0
_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE:
	.dword	0
	.dword	_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIN11NCoderMixer9CBindPairEE, 40

	.type	_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE,@object # @_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE
	.section	.data.rel.ro._ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE,"awG",@progbits,_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE,comdat
	.weak	_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE
	.p2align	3, 0x0
_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE, 24

	.type	_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE,@object # @_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE
	.section	.rodata._ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE,"aG",@progbits,_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE,comdat
	.weak	_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE
_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE:
	.asciz	"13CRecordVectorIN11NCoderMixer9CBindPairEE"
	.size	_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE, 43

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

	.type	_ZTV13CObjectVectorI13CStreamBinderE,@object # @_ZTV13CObjectVectorI13CStreamBinderE
	.section	.data.rel.ro._ZTV13CObjectVectorI13CStreamBinderE,"awG",@progbits,_ZTV13CObjectVectorI13CStreamBinderE,comdat
	.weak	_ZTV13CObjectVectorI13CStreamBinderE
	.p2align	3, 0x0
_ZTV13CObjectVectorI13CStreamBinderE:
	.dword	0
	.dword	_ZTI13CObjectVectorI13CStreamBinderE
	.dword	_ZN13CObjectVectorI13CStreamBinderED2Ev
	.dword	_ZN13CObjectVectorI13CStreamBinderED0Ev
	.dword	_ZN13CObjectVectorI13CStreamBinderE6DeleteEii
	.size	_ZTV13CObjectVectorI13CStreamBinderE, 40

	.type	_ZTI13CObjectVectorI13CStreamBinderE,@object # @_ZTI13CObjectVectorI13CStreamBinderE
	.section	.data.rel.ro._ZTI13CObjectVectorI13CStreamBinderE,"awG",@progbits,_ZTI13CObjectVectorI13CStreamBinderE,comdat
	.weak	_ZTI13CObjectVectorI13CStreamBinderE
	.p2align	3, 0x0
_ZTI13CObjectVectorI13CStreamBinderE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI13CStreamBinderE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI13CStreamBinderE, 24

	.type	_ZTS13CObjectVectorI13CStreamBinderE,@object # @_ZTS13CObjectVectorI13CStreamBinderE
	.section	.rodata._ZTS13CObjectVectorI13CStreamBinderE,"aG",@progbits,_ZTS13CObjectVectorI13CStreamBinderE,comdat
	.weak	_ZTS13CObjectVectorI13CStreamBinderE
_ZTS13CObjectVectorI13CStreamBinderE:
	.asciz	"13CObjectVectorI13CStreamBinderE"
	.size	_ZTS13CObjectVectorI13CStreamBinderE, 33

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

	.type	_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE,@object # @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE
	.section	.data.rel.ro._ZTVN8NWindows16NSynchronization14CBaseEventWFMOE,"awG",@progbits,_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE,comdat
	.weak	_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE
	.p2align	3, 0x0
_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE:
	.dword	0
	.dword	_ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.dword	_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv
	.size	_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, 24

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

	.type	_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE,@object # @_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE
	.section	.data.rel.ro._ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE,"awG",@progbits,_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE,comdat
	.weak	_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE
	.dword	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev
	.dword	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev
	.dword	_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii
	.size	_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE, 40

	.type	_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE,@object # @_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE
	.section	.data.rel.ro._ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE,"awG",@progbits,_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE,comdat
	.weak	_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE, 24

	.type	_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE,@object # @_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE
	.section	.rodata._ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE,"aG",@progbits,_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE,comdat
	.weak	_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE
_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE:
	.asciz	"13CObjectVectorIN11NCoderMixer7CCoder2EE"
	.size	_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE, 41

	.type	_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,@object # @_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.section	.data.rel.ro._ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,"awG",@progbits,_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,comdat
	.weak	_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.p2align	3, 0x0
_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE:
	.dword	0
	.dword	_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.dword	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev
	.dword	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev
	.dword	_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii
	.size	_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE, 40

	.type	_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,@object # @_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.section	.data.rel.ro._ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,"awG",@progbits,_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,comdat
	.weak	_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.p2align	3, 0x0
_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE, 24

	.type	_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,@object # @_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.section	.rodata._ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,"aG",@progbits,_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE,comdat
	.weak	_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE:
	.asciz	"13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE"
	.size	_ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE, 52

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

	.type	_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,@object # @_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.section	.data.rel.ro._ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,"awG",@progbits,_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,comdat
	.weak	_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.p2align	3, 0x0
_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE:
	.dword	0
	.dword	_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.dword	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev
	.dword	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev
	.dword	_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii
	.size	_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE, 40

	.type	_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,@object # @_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.section	.data.rel.ro._ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,"awG",@progbits,_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,comdat
	.weak	_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.p2align	3, 0x0
_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE, 24

	.type	_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,@object # @_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.section	.rodata._ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,"aG",@progbits,_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE,comdat
	.weak	_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE:
	.asciz	"13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE"
	.size	_ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE, 51

	.type	_ZTV13CRecordVectorIPKyE,@object # @_ZTV13CRecordVectorIPKyE
	.section	.data.rel.ro._ZTV13CRecordVectorIPKyE,"awG",@progbits,_ZTV13CRecordVectorIPKyE,comdat
	.weak	_ZTV13CRecordVectorIPKyE
	.p2align	3, 0x0
_ZTV13CRecordVectorIPKyE:
	.dword	0
	.dword	_ZTI13CRecordVectorIPKyE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIPKyED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIPKyE, 40

	.type	_ZTI13CRecordVectorIPKyE,@object # @_ZTI13CRecordVectorIPKyE
	.section	.data.rel.ro._ZTI13CRecordVectorIPKyE,"awG",@progbits,_ZTI13CRecordVectorIPKyE,comdat
	.weak	_ZTI13CRecordVectorIPKyE
	.p2align	3, 0x0
_ZTI13CRecordVectorIPKyE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIPKyE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIPKyE, 24

	.type	_ZTS13CRecordVectorIPKyE,@object # @_ZTS13CRecordVectorIPKyE
	.section	.rodata._ZTS13CRecordVectorIPKyE,"aG",@progbits,_ZTS13CRecordVectorIPKyE,comdat
	.weak	_ZTS13CRecordVectorIPKyE
_ZTS13CRecordVectorIPKyE:
	.asciz	"13CRecordVectorIPKyE"
	.size	_ZTS13CRecordVectorIPKyE, 21

	.type	_ZTV13CRecordVectorIP19ISequentialInStreamE,@object # @_ZTV13CRecordVectorIP19ISequentialInStreamE
	.section	.data.rel.ro._ZTV13CRecordVectorIP19ISequentialInStreamE,"awG",@progbits,_ZTV13CRecordVectorIP19ISequentialInStreamE,comdat
	.weak	_ZTV13CRecordVectorIP19ISequentialInStreamE
	.p2align	3, 0x0
_ZTV13CRecordVectorIP19ISequentialInStreamE:
	.dword	0
	.dword	_ZTI13CRecordVectorIP19ISequentialInStreamE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIP19ISequentialInStreamED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIP19ISequentialInStreamE, 40

	.type	_ZTI13CRecordVectorIP19ISequentialInStreamE,@object # @_ZTI13CRecordVectorIP19ISequentialInStreamE
	.section	.data.rel.ro._ZTI13CRecordVectorIP19ISequentialInStreamE,"awG",@progbits,_ZTI13CRecordVectorIP19ISequentialInStreamE,comdat
	.weak	_ZTI13CRecordVectorIP19ISequentialInStreamE
	.p2align	3, 0x0
_ZTI13CRecordVectorIP19ISequentialInStreamE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIP19ISequentialInStreamE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIP19ISequentialInStreamE, 24

	.type	_ZTS13CRecordVectorIP19ISequentialInStreamE,@object # @_ZTS13CRecordVectorIP19ISequentialInStreamE
	.section	.rodata._ZTS13CRecordVectorIP19ISequentialInStreamE,"aG",@progbits,_ZTS13CRecordVectorIP19ISequentialInStreamE,comdat
	.weak	_ZTS13CRecordVectorIP19ISequentialInStreamE
_ZTS13CRecordVectorIP19ISequentialInStreamE:
	.asciz	"13CRecordVectorIP19ISequentialInStreamE"
	.size	_ZTS13CRecordVectorIP19ISequentialInStreamE, 40

	.globl	_ZN8NArchive3N7z8CDecoderC1Eb
	.type	_ZN8NArchive3N7z8CDecoderC1Eb,@function
_ZN8NArchive3N7z8CDecoderC1Eb = _ZN8NArchive3N7z8CDecoderC2Eb
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
	.addrsig_sym IID_ICompressSetDecoderProperties2
	.addrsig_sym IID_ICompressSetCoderMt
	.addrsig_sym IID_ICryptoSetPassword
	.addrsig_sym _ZTI13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTI13CRecordVectorIN11NCoderMixer9CBindPairEE
	.addrsig_sym _ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE
	.addrsig_sym _ZTI13CRecordVectorIjE
	.addrsig_sym _ZTS13CRecordVectorIjE
	.addrsig_sym _ZTI13CRecordVectorIyE
	.addrsig_sym _ZTS13CRecordVectorIyE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTI13CObjectVectorI13CStreamBinderE
	.addrsig_sym _ZTS13CObjectVectorI13CStreamBinderE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTIN8NWindows16NSynchronization14CBaseEventWFMOE
	.addrsig_sym _ZTSN8NWindows16NSynchronization14CBaseEventWFMOE
	.addrsig_sym _ZTIN8NWindows16NSynchronization15CBaseHandleWFMOE
	.addrsig_sym _ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE
	.addrsig_sym _ZTI13CObjectVectorIN11NCoderMixer7CCoder2EE
	.addrsig_sym _ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE
	.addrsig_sym _ZTI13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.addrsig_sym _ZTS13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE
	.addrsig_sym _ZTIi
	.addrsig_sym _ZTI13CObjectVectorI9CMyComPtrI8IUnknownEE
	.addrsig_sym _ZTS13CObjectVectorI9CMyComPtrI8IUnknownEE
	.addrsig_sym _ZTI13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.addrsig_sym _ZTS13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE
	.addrsig_sym _ZTI13CRecordVectorIPKyE
	.addrsig_sym _ZTS13CRecordVectorIPKyE
	.addrsig_sym _ZTI13CRecordVectorIP19ISequentialInStreamE
	.addrsig_sym _ZTS13CRecordVectorIP19ISequentialInStreamE
