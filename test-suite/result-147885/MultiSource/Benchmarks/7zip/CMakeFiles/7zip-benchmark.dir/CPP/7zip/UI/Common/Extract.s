	.file	"Extract.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat
.LCPI0_0:
	.dword	8                               # 0x8
	.dword	0                               # 0x0
	.text
	.globl	_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat
	.p2align	5
	.type	_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat,@function
_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat: # @_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	ld.d	$t0, $sp, 664
	move	$s6, $a7
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	move	$s7, $a2
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.w	$zero, $t0, 40
	st.d	$zero, $t0, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $t0, 16
	st.d	$t0, $sp, 80                    # 8-byte Folded Spill
	vst	$vr0, $t0, 0
	st.d	$a5, $sp, 216                   # 8-byte Folded Spill
	ld.bu	$a0, $a5, 0
	ld.w	$a1, $a2, 12
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
	vst	$vr0, $sp, 432
	ori	$a2, $zero, 8
	st.d	$a2, $sp, 448
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a0, $sp, 424
	blt	$a1, $a2, .LBB0_12
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	move	$s8, $zero
	move	$s5, $a1
	slli.d	$s1, $a1, 3
	ori	$s2, $zero, 4
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$fp, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s4, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s0, $s0, 8
	add.d	$s8, $s3, $s8
	beq	$s1, $s0, .LBB0_13
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	st.d	$zero, $sp, 336
.Ltmp0:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	move	$s3, $zero
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.bu	$a1, $a1, 0
	st.d	$a0, $sp, 328
	st.w	$zero, $a0, 0
	st.w	$s2, $sp, 340
	st.d	$zero, $sp, 288
	bnez	$a1, .LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s7, 16
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $a0, 0
.Ltmp3:
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	beqz	$a0, .LBB0_223
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	ld.bu	$a0, $sp, 320
	andi	$a0, $a0, 16
	bnez	$a0, .LBB0_222
# %bb.8:                                # %._crit_edge462
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s3, $sp, 288
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp9:
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $sp, 436
	ld.d	$a0, $sp, 440
	slli.d	$a2, $a1, 3
	stx.d	$s3, $a0, $a2
	ld.d	$a0, $sp, 328
	ld.d	$s3, $sp, 288
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 436
	beqz	$a0, .LBB0_2
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_12:
	move	$s5, $a1
	move	$s8, $zero
.LBB0_13:                               # %._crit_edge
.Ltmp12:
	ori	$a0, $zero, 336
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.14:
.Ltmp15:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN23CArchiveExtractCallbackC2Ev)
	jirl	$ra, $ra, 0
.Ltmp16:
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
# %bb.15:
	move	$s3, $s5
	move	$s0, $s6
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
.Ltmp18:
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp19:
# %bb.16:                               # %_ZN9CMyComPtrI23IArchiveExtractCallbackEC2EPS0_.exit
	ld.d	$a1, $s2, 8
	ori	$a0, $zero, 1
	slt	$a2, $a0, $s3
	st.b	$a2, $fp, 267
	st.d	$a1, $fp, 88
	st.d	$zero, $fp, 304
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $fp, 312
	ori	$a1, $zero, 2
	st.w	$zero, $fp, 328
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	move	$s5, $s1
	blt	$s3, $a1, .LBB0_19
# %bb.17:
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 40
.Ltmp21:
	move	$a0, $s0
	move	$a1, $s8
	jirl	$ra, $a2, 0
.Ltmp22:
# %bb.18:
	move	$s4, $a0
	bnez	$a0, .LBB0_218
	b	.LBB0_20
.LBB0_19:
	blt	$s3, $a0, .LBB0_217
.LBB0_20:                               # %.lr.ph437
	move	$s1, $zero
	move	$s4, $zero
	ld.d	$a0, $sp, 656
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIiE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIiE+16)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 192                   # 8-byte Folded Spill
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               #   in Loop: Header=BB0_22 Depth=1
	addi.d	$s1, $s1, 1
	bge	$s1, $s3, .LBB0_217
.LBB0_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_51 Depth 2
                                        #     Child Loop BB0_122 Depth 2
                                        #     Child Loop BB0_127 Depth 2
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_74 Depth 3
                                        #     Child Loop BB0_108 Depth 2
                                        #     Child Loop BB0_160 Depth 2
                                        #     Child Loop BB0_143 Depth 2
                                        #     Child Loop BB0_179 Depth 2
                                        #     Child Loop BB0_206 Depth 2
	move	$s6, $s7
	ld.d	$a0, $s7, 16
	slli.d	$a1, $s1, 3
	ldx.d	$s7, $a0, $a1
	st.d	$zero, $sp, 416
.Ltmp24:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp25:
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	ld.bu	$a1, $s2, 0
	st.d	$a0, $sp, 408
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 420
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=1
	st.d	$zero, $sp, 368
	st.w	$zero, $sp, 400
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a1, $s7, 0
.Ltmp27:
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw)
	jirl	$ra, $ra, 0
.Ltmp28:
# %bb.26:                               #   in Loop: Header=BB0_22 Depth=1
	beqz	$a0, .LBB0_220
# %bb.27:                               #   in Loop: Header=BB0_22 Depth=1
	ld.bu	$a0, $sp, 400
	andi	$a0, $a0, 16
	bnez	$a0, .LBB0_220
.LBB0_28:                               #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 48
.Ltmp32:
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp33:
# %bb.29:                               #   in Loop: Header=BB0_22 Depth=1
	move	$fp, $s4
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 88
.Ltmp35:
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp36:
# %bb.30:                               #   in Loop: Header=BB0_22 Depth=1
	move	$s4, $a0
	ori	$a1, $zero, 1
	beqz	$a0, .LBB0_35
# %bb.31:                               #   in Loop: Header=BB0_22 Depth=1
	move	$s7, $s6
	ld.d	$a0, $sp, 408
	beqz	$a0, .LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_22 Depth=1
	move	$fp, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $fp
.LBB0_33:                               # %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310
                                        #   in Loop: Header=BB0_22 Depth=1
	ori	$a0, $zero, 7
	beq	$a1, $a0, .LBB0_21
# %bb.34:                               # %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit310
                                        #   in Loop: Header=BB0_22 Depth=1
	beqz	$a1, .LBB0_21
	b	.LBB0_218
	.p2align	4, , 16
.LBB0_35:                               #   in Loop: Header=BB0_22 Depth=1
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	move	$s1, $s3
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 296
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 312
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 288
	addi.d	$a0, $sp, 328
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $sp, 320
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 344
	st.b	$zero, $sp, 360
	addi.d	$a0, $sp, 264
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 280
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 256
.Ltmp38:
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp39:
# %bb.36:                               # %.noexc.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$s2, $a0, 12
	ld.w	$a0, $sp, 268
	add.w	$a1, $a0, $s2
.Ltmp40:
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp41:
# %bb.37:                               # %.noexc3.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB0_41
# %bb.38:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$s0, $zero
	slli.d	$s2, $s2, 2
	.p2align	4, , 16
.LBB0_39:                               #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ldx.w	$s3, $a0, $s0
.Ltmp43:
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.40:                               # %.noexc4.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.w	$a0, $sp, 268
	ld.d	$a1, $sp, 272
	slli.d	$a0, $a0, 2
	stx.w	$s3, $a1, $a0
	ld.w	$a0, $sp, 268
	addi.d	$a0, $a0, 1
	addi.d	$s0, $s0, 4
	st.w	$a0, $sp, 268
	bne	$s2, $s0, .LBB0_39
.LBB0_41:                               # %_ZN13CRecordVectorIiEC2ERKS0_.exit
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 12
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ori	$a4, $zero, 46
	beqz	$a0, .LBB0_49
.LBB0_42:                               # %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.bu	$a3, $s2, 0
.Ltmp73:
	addi.d	$a0, $sp, 288
	addi.d	$a2, $sp, 256
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a4, $zero
	move	$a5, $s7
	move	$a6, $s5
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI)
	jirl	$ra, $ra, 0
.Ltmp74:
# %bb.43:                               #   in Loop: Header=BB0_22 Depth=1
	move	$s0, $a0
	move	$s3, $s1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bne	$s0, $a0, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_22 Depth=1
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	move	$s4, $a0
	move	$s7, $s6
	b	.LBB0_55
.LBB0_45:                               #   in Loop: Header=BB0_22 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 40
.Ltmp76:
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp77:
# %bb.46:                               #   in Loop: Header=BB0_22 Depth=1
	move	$a3, $a0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a4, $a2, 96
.Ltmp79:
	move	$a2, $s0
	jirl	$ra, $a4, 0
.Ltmp80:
# %bb.47:                               #   in Loop: Header=BB0_22 Depth=1
	move	$s7, $s6
	beqz	$a0, .LBB0_53
# %bb.48:                               #   in Loop: Header=BB0_22 Depth=1
	move	$s4, $a0
	b	.LBB0_55
.LBB0_49:                               #   in Loop: Header=BB0_22 Depth=1
	ld.w	$a0, $s7, 8
	beqz	$a0, .LBB0_42
# %bb.50:                               #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a1, $s7, 0
	slli.d	$a2, $a0, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB0_51:                               #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a3, $a1, $a2
	beq	$a3, $a4, .LBB0_58
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=2
	addi.d	$a2, $a2, -4
	addi.w	$a3, $zero, -4
	bne	$a2, $a3, .LBB0_51
	b	.LBB0_42
.LBB0_53:                               #   in Loop: Header=BB0_22 Depth=1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	sltui	$a0, $s4, 1
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $fp, $a0
	or	$s4, $a0, $a1
	beqz	$s0, .LBB0_66
# %bb.54:                               #   in Loop: Header=BB0_22 Depth=1
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_55:                               #   in Loop: Header=BB0_22 Depth=1
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
.LBB0_56:                               #   in Loop: Header=BB0_22 Depth=1
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
.LBB0_57:                               #   in Loop: Header=BB0_22 Depth=1
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(_ZN12CArchiveLinkD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 408
	bnez	$a0, .LBB0_32
	b	.LBB0_33
.LBB0_58:                               # %_ZNK11CStringBaseIwE11ReverseFindEw.exit
                                        #   in Loop: Header=BB0_22 Depth=1
	srli.d	$a1, $a2, 2
	addi.w	$s0, $a1, 0
	bltz	$s0, .LBB0_42
# %bb.59:                               #   in Loop: Header=BB0_22 Depth=1
	addi.w	$a2, $a1, 1
	sub.w	$a3, $a0, $a2
.Ltmp46:
	addi.d	$a0, $sp, 536
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp47:
# %bb.60:                               # %_ZNK11CStringBaseIwE3MidEi.exit
                                        #   in Loop: Header=BB0_22 Depth=1
.Ltmp49:
	addi.d	$a1, $sp, 536
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNK7CCodecs22FindFormatForExtensionERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
.Ltmp50:
# %bb.61:                               #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	bltz	$a0, .LBB0_64
# %bb.62:                               #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 536
.Ltmp51:
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp52:
# %bb.63:                               #   in Loop: Header=BB0_22 Depth=1
	beqz	$a0, .LBB0_95
.LBB0_64:                               # %_ZNK11CStringBaseIwE11ReverseFindEw.exit286.thread
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 536
	beqz	$a0, .LBB0_42
# %bb.65:                               #   in Loop: Header=BB0_22 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_42
.LBB0_66:                               #   in Loop: Header=BB0_22 Depth=1
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	ld.bu	$a1, $s2, 0
	ld.w	$a0, $sp, 332
	bnez	$a1, .LBB0_84
# %bb.67:                               #   in Loop: Header=BB0_22 Depth=1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_84
# %bb.68:                               # %.lr.ph421.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$s0, $zero
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_69:                               #   in Loop: Header=BB0_72 Depth=2
	move	$s7, $s1
.LBB0_70:                               #   in Loop: Header=BB0_72 Depth=2
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
.LBB0_71:                               # %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread
                                        #   in Loop: Header=BB0_72 Depth=2
	ld.w	$a0, $sp, 332
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB0_84
.LBB0_72:                               # %.lr.ph421
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_74 Depth 3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$s4, $a0, 12
	beqz	$s4, .LBB0_71
# %bb.73:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	move	$s1, $s7
	ld.d	$a0, $sp, 336
	slli.d	$a1, $s0, 3
	ldx.d	$s7, $a0, $a1
	move	$s5, $zero
	.p2align	4, , 16
.LBB0_74:                               # %.lr.ph.i
                                        #   Parent Loop BB0_22 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$s2, $s4, $s5
	bstrpick.d	$a0, $s2, 31, 31
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	add.w	$a0, $s2, $a0
	srai.d	$fp, $a0, 1
	slli.d	$s3, $fp, 3
	ldx.d	$s6, $a1, $s3
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
.Ltmp82:
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp83:
# %bb.75:                               # %.noexc298
                                        #   in Loop: Header=BB0_74 Depth=3
	beqz	$a0, .LBB0_78
# %bb.76:                               #   in Loop: Header=BB0_74 Depth=3
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
.Ltmp84:
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp85:
# %bb.77:                               # %.noexc299
                                        #   in Loop: Header=BB0_74 Depth=3
	slti	$a0, $a0, 0
	addi.w	$a1, $fp, 1
	masknez	$a2, $s4, $a0
	maskeqz	$a3, $fp, $a0
	or	$s4, $a3, $a2
	addi.w	$a2, $s4, 0
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
	bne	$s5, $a2, .LBB0_74
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_78:                               # %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit
                                        #   in Loop: Header=BB0_72 Depth=2
	addi.w	$a0, $zero, -1
	blt	$s2, $a0, .LBB0_69
# %bb.79:                               # %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit
                                        #   in Loop: Header=BB0_72 Depth=2
	move	$s7, $s1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bge	$a0, $fp, .LBB0_70
# %bb.80:                               #   in Loop: Header=BB0_72 Depth=2
	ld.d	$a0, $s7, 0
	ld.d	$a3, $a0, 16
.Ltmp87:
	ori	$a2, $zero, 1
	move	$a0, $s7
	move	$a1, $fp
	jirl	$ra, $a3, 0
.Ltmp88:
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
# %bb.81:                               #   in Loop: Header=BB0_72 Depth=2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 16
.Ltmp89:
	ori	$a2, $zero, 1
	move	$a1, $fp
	jirl	$ra, $a3, 0
.Ltmp90:
# %bb.82:                               #   in Loop: Header=BB0_72 Depth=2
	ld.d	$a0, $sp, 440
	ldx.d	$s2, $a0, $s3
.Ltmp91:
	addi.d	$a0, $sp, 424
	ori	$a2, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jirl	$ra, $ra, 0
.Ltmp92:
# %bb.83:                               #   in Loop: Header=BB0_72 Depth=2
	ld.w	$s3, $s7, 12
	sub.d	$s8, $s8, $s2
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_71
.LBB0_84:                               # %.loopexit332
                                        #   in Loop: Header=BB0_22 Depth=1
	beqz	$a0, .LBB0_87
# %bb.85:                               #   in Loop: Header=BB0_22 Depth=1
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.d	$a1, $sp, 352
	ld.d	$a2, $a0, 40
	add.d	$s8, $a1, $s8
.Ltmp94:
	move	$a0, $s0
	move	$a1, $s8
	jirl	$ra, $a2, 0
.Ltmp95:
# %bb.86:                               #   in Loop: Header=BB0_22 Depth=1
	move	$s4, $a0
	bnez	$a0, .LBB0_56
	b	.LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_22 Depth=1
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
.LBB0_88:                               #   in Loop: Header=BB0_22 Depth=1
	st.d	$zero, $sp, 248
.Ltmp97:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp98:
# %bb.89:                               #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a1, $s5, 0
	st.w	$zero, $a0, 0
	ld.d	$a2, $a1, 32
	st.d	$a0, $sp, 240
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 252
.Ltmp100:
	addi.d	$a1, $sp, 240
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp101:
# %bb.90:                               #   in Loop: Header=BB0_22 Depth=1
	move	$fp, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	beqz	$fp, .LBB0_100
.LBB0_91:                               #   in Loop: Header=BB0_22 Depth=1
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
.LBB0_92:                               # %.thread327
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 240
	beqz	$a0, .LBB0_94
# %bb.93:                               #   in Loop: Header=BB0_22 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_94:                               # %_ZN11CStringBaseIwED2Ev.exit308
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$s4, $fp
	b	.LBB0_57
.LBB0_95:                               #   in Loop: Header=BB0_22 Depth=1
.Ltmp54:
	addi.d	$a0, $sp, 504
	move	$a1, $s7
	move	$a2, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp55:
# %bb.96:                               # %_ZNK11CStringBaseIwE4LeftEi.exit
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$s0, $sp, 536
	st.w	$zero, $sp, 544
	st.w	$zero, $s0, 0
	ld.w	$a0, $sp, 512
	ld.w	$s3, $sp, 548
	addi.w	$s2, $a0, 1
	beq	$s2, $s3, .LBB0_121
# %bb.97:                               #   in Loop: Header=BB0_22 Depth=1
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp57:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp58:
# %bb.98:                               # %.noexc
                                        #   in Loop: Header=BB0_22 Depth=1
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB0_119
# %bb.99:                               # %._crit_edge.thread.i.i
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$a0, $s0
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	ld.w	$a0, $sp, 544
	b	.LBB0_120
.LBB0_100:                              #   in Loop: Header=BB0_22 Depth=1
	ld.w	$a0, $sp, 248
	beqz	$a0, .LBB0_104
# %bb.101:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 120
.Ltmp103:
	addi.d	$a1, $sp, 240
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp104:
# %bb.102:                              #   in Loop: Header=BB0_22 Depth=1
	beqz	$a0, .LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_22 Depth=1
	move	$fp, $a0
	b	.LBB0_91
.LBB0_104:                              #   in Loop: Header=BB0_22 Depth=1
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	move	$s7, $s3
	ld.w	$a0, $sp, 300
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_112
# %bb.105:                              # %.lr.ph427.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$s0, $zero
	move	$s3, $zero
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_106:                              # %..thread_crit_edge
                                        #   in Loop: Header=BB0_108 Depth=2
	ld.w	$a0, $sp, 300
.LBB0_107:                              # %.thread
                                        #   in Loop: Header=BB0_108 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	bge	$s3, $a0, .LBB0_112
.LBB0_108:                              # %.lr.ph427
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 304
	ldx.d	$a1, $a1, $s0
	ld.w	$a2, $a1, 72
	beqz	$a2, .LBB0_107
# %bb.109:                              #   in Loop: Header=BB0_108 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a1, 64
	ld.d	$a2, $a2, 72
.Ltmp106:
	jirl	$ra, $a2, 0
.Ltmp107:
# %bb.110:                              #   in Loop: Header=BB0_108 Depth=2
	beqz	$a0, .LBB0_106
# %bb.111:                              #   in Loop: Header=BB0_22 Depth=1
	move	$fp, $a0
	move	$s3, $s7
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_91
.LBB0_112:                              # %._crit_edge428
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a1, $sp, 304
	ld.b	$a2, $s2, 0
	ld.b	$a3, $sp, 404
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a4, $a0, -8
	ld.d	$a0, $sp, 392
	or	$a1, $a2, $a3
	ori	$a2, $zero, 1
	andn	$a1, $a2, $a1
	st.b	$a1, $a4, 56
	st.d	$a0, $a4, 48
	ld.d	$s4, $sp, 368
	ld.d	$s5, $sp, 352
	move	$s6, $a4
	ld.d	$s1, $a4, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	ld.bu	$a1, $s2, 0
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a0, $sp, 536
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 544
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 560
	move	$s3, $s7
	beqz	$a1, .LBB0_115
.LBB0_113:                              #   in Loop: Header=BB0_22 Depth=1
	ld.w	$s0, $s2, 24
	addi.d	$a0, $sp, 512
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 528
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $sp, 504
	bstrpick.d	$a0, $s0, 31, 0
	addi.d	$fp, $a0, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	and	$a0, $fp, $a0
	vst	$vr0, $sp, 488
	beqz	$a0, .LBB0_140
# %bb.114:                              #   in Loop: Header=BB0_22 Depth=1
	move	$a0, $zero
	b	.LBB0_142
.LBB0_115:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 56
.Ltmp109:
	addi.d	$a1, $sp, 488
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp110:
# %bb.116:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_158
.LBB0_117:                              # %.thread159.i
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$fp, $a0
	move	$s4, $zero
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
.LBB0_118:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	b	.LBB0_215
.LBB0_119:                              #   in Loop: Header=BB0_22 Depth=1
	move	$a0, $zero
.LBB0_120:                              #   in Loop: Header=BB0_22 Depth=1
	st.d	$a1, $sp, 536
	slli.d	$a0, $a0, 2
	stx.w	$zero, $a1, $a0
	st.w	$s2, $sp, 548
	move	$s0, $a1
.LBB0_121:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ori	$s3, $zero, 46
	ld.d	$a0, $sp, 504
	move	$a1, $zero
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_122:                              #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_122
# %bb.123:                              #   in Loop: Header=BB0_22 Depth=1
	ld.w	$a1, $sp, 512
	st.w	$a1, $sp, 544
	beqz	$a0, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_22 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 544
.LBB0_125:                              # %_ZN11CStringBaseIwED2Ev.exit
                                        #   in Loop: Header=BB0_22 Depth=1
	beqz	$a1, .LBB0_64
# %bb.126:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 536
	slli.d	$a2, $a1, 2
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB0_127:                              #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a3, $a0, $a2
	beq	$a3, $s3, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_127 Depth=2
	addi.d	$a2, $a2, -4
	addi.w	$a3, $zero, -4
	bne	$a2, $a3, .LBB0_127
	b	.LBB0_64
.LBB0_129:                              # %_ZNK11CStringBaseIwE11ReverseFindEw.exit286
                                        #   in Loop: Header=BB0_22 Depth=1
	srli.d	$a0, $a2, 2
	addi.w	$a2, $a0, 0
	bltz	$a2, .LBB0_64
# %bb.130:                              #   in Loop: Header=BB0_22 Depth=1
	addi.w	$a2, $a0, 1
	sub.w	$a3, $a1, $a2
.Ltmp60:
	addi.d	$a0, $sp, 504
	addi.d	$a1, $sp, 536
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp61:
# %bb.131:                              # %_ZNK11CStringBaseIwE3MidEi.exit288
                                        #   in Loop: Header=BB0_22 Depth=1
.Ltmp63:
	addi.d	$a1, $sp, 504
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNK7CCodecs22FindFormatForExtensionERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp64:
# %bb.132:                              #   in Loop: Header=BB0_22 Depth=1
	move	$s0, $a0
	ld.d	$a0, $sp, 504
	beqz	$a0, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_22 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_134:                              # %_ZN11CStringBaseIwED2Ev.exit289
                                        #   in Loop: Header=BB0_22 Depth=1
	bltz	$s0, .LBB0_64
# %bb.135:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 536
.Ltmp66:
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp67:
# %bb.136:                              # %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit
                                        #   in Loop: Header=BB0_22 Depth=1
	beqz	$a0, .LBB0_64
# %bb.137:                              #   in Loop: Header=BB0_22 Depth=1
.Ltmp68:
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.138:                              #   in Loop: Header=BB0_22 Depth=1
	ld.w	$a0, $sp, 268
	ld.d	$a1, $sp, 272
	slli.d	$a0, $a0, 2
	stx.w	$s0, $a1, $a0
	ld.w	$a0, $sp, 268
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 268
.Ltmp70:
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp71:
# %bb.139:                              # %_ZN13CRecordVectorIiE3AddEi.exit293
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.w	$a0, $sp, 268
	ld.d	$a1, $sp, 272
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	stx.w	$a2, $a1, $a0
	ld.w	$a0, $sp, 268
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 268
	b	.LBB0_64
.LBB0_140:                              #   in Loop: Header=BB0_22 Depth=1
	addi.w	$a0, $fp, 0
	slti	$a1, $s0, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp129:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp130:
# %bb.141:                              # %.noexc.i304
                                        #   in Loop: Header=BB0_22 Depth=1
	st.d	$a0, $sp, 488
	st.w	$zero, $a0, 0
	st.w	$fp, $sp, 500
.LBB0_142:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a1, $s2, 16
	add.d	$fp, $s5, $s4
	.p2align	4, , 16
.LBB0_143:                              #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB0_143
# %bb.144:                              #   in Loop: Header=BB0_22 Depth=1
	st.w	$s0, $sp, 496
.Ltmp132:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp133:
# %bb.145:                              # %.noexc128.i
                                        #   in Loop: Header=BB0_22 Depth=1
	st.d	$a0, $sp, 472
	ori	$a1, $zero, 42
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 1
	lu32i.d	$a0, 2
	st.d	$a0, $sp, 480
	addi.d	$a1, $s6, 24
.Ltmp135:
	addi.d	$a0, $sp, 456
	pcaddu18i	$ra, %call36(_Z16GetCorrectFsPathRK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp136:
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
# %bb.146:                              #   in Loop: Header=BB0_22 Depth=1
.Ltmp138:
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 472
	addi.d	$a2, $sp, 456
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwE7ReplaceERKS0_S2_)
	jirl	$ra, $ra, 0
.Ltmp139:
# %bb.147:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 456
	beqz	$a0, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_22 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_149:                              # %_ZN11CStringBaseIwED2Ev.exit129.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 472
	beqz	$a0, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_22 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_151:                              # %_ZN11CStringBaseIwED2Ev.exit130.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.w	$a0, $sp, 496
	beqz	$a0, .LBB0_154
# %bb.152:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 488
.Ltmp141:
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory22CreateComplexDirectoryEPKw)
	jirl	$ra, $ra, 0
.Ltmp142:
# %bb.153:                              #   in Loop: Header=BB0_22 Depth=1
	beqz	$a0, .LBB0_176
.LBB0_154:                              #   in Loop: Header=BB0_22 Depth=1
	ld.bu	$a0, $s2, 0
	ld.bu	$a4, $s2, 1
	ld.bu	$a5, $s2, 3
	ld.bu	$a6, $s2, 4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a0
.Ltmp155:
	st.d	$fp, $sp, 8
	addi.d	$a7, $sp, 488
	addi.d	$a0, $sp, 504
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN23CArchiveExtractCallback4InitEPKN9NWildcard11CCensorNodeEPK4CArcP29IFolderArchiveExtractCallbackbbbRK11CStringBaseIwERK13CObjectVectorISA_Ey)
	jirl	$ra, $ra, 0
.Ltmp156:
# %bb.155:                              #   in Loop: Header=BB0_22 Depth=1
.Ltmp158:
	move	$s4, $s1
	move	$a0, $s1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z13SetPropertiesP8IUnknownRK13CObjectVectorI9CPropertyE)
	jirl	$ra, $ra, 0
.Ltmp159:
# %bb.156:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_186
# %bb.157:                              #   in Loop: Header=BB0_22 Depth=1
	move	$fp, $a0
	move	$s4, $zero
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_211
.LBB0_158:                              # %.preheader.i
                                        #   in Loop: Header=BB0_22 Depth=1
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $sp, 488
	beqz	$a0, .LBB0_174
# %bb.159:                              # %.lr.ph.i303.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$s0, $zero
	move	$s4, $zero
.LBB0_160:                              # %.lr.ph.i303
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 512
.Ltmp112:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp113:
# %bb.161:                              #   in Loop: Header=BB0_160 Depth=2
	st.d	$a0, $sp, 504
	st.w	$zero, $a0, 0
.Ltmp115:
	addi.d	$a2, $sp, 504
	move	$a0, $s6
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNK4CArc11GetItemPathEjR11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp116:
# %bb.162:                              #   in Loop: Header=BB0_160 Depth=2
	ori	$s3, $zero, 1
	move	$fp, $a0
	bnez	$a0, .LBB0_170
# %bb.163:                              #   in Loop: Header=BB0_160 Depth=2
.Ltmp118:
	addi.d	$a2, $sp, 472
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_Z19IsArchiveItemFolderP10IInArchivejRb)
	jirl	$ra, $ra, 0
.Ltmp119:
# %bb.164:                              #   in Loop: Header=BB0_160 Depth=2
	move	$fp, $a0
	ori	$s3, $zero, 1
	bnez	$a0, .LBB0_169
# %bb.165:                              #   in Loop: Header=BB0_160 Depth=2
	ld.b	$a0, $sp, 472
	ori	$a1, $zero, 1
	andn	$a2, $a1, $a0
.Ltmp121:
	addi.d	$a1, $sp, 504
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEb)
	jirl	$ra, $ra, 0
.Ltmp122:
# %bb.166:                              #   in Loop: Header=BB0_160 Depth=2
	ori	$s3, $zero, 4
	beqz	$a0, .LBB0_169
# %bb.167:                              #   in Loop: Header=BB0_160 Depth=2
.Ltmp123:
	addi.d	$a0, $sp, 536
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp124:
# %bb.168:                              # %_ZN13CRecordVectorIjE3AddEj.exit.i
                                        #   in Loop: Header=BB0_160 Depth=2
	ld.w	$a0, $sp, 548
	ld.d	$a1, $sp, 552
	slli.d	$a0, $a0, 2
	stx.w	$s4, $a1, $a0
	ld.w	$a0, $sp, 548
	move	$s3, $zero
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 548
.LBB0_169:                              #   in Loop: Header=BB0_160 Depth=2
	sltui	$a0, $fp, 1
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s0, $a0
	or	$fp, $a0, $a1
.LBB0_170:                              #   in Loop: Header=BB0_160 Depth=2
	ld.d	$a0, $sp, 504
	beqz	$a0, .LBB0_172
# %bb.171:                              #   in Loop: Header=BB0_160 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_172:                              # %_ZN11CStringBaseIwED2Ev.exit.i
                                        #   in Loop: Header=BB0_160 Depth=2
	andi	$a0, $s3, 3
	bnez	$a0, .LBB0_195
# %bb.173:                              #   in Loop: Header=BB0_160 Depth=2
	ld.w	$a0, $sp, 488
	addi.w	$s4, $s4, 1
	move	$s0, $fp
	move	$s3, $s7
	bltu	$s4, $a0, .LBB0_160
.LBB0_174:                              # %._crit_edge.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.w	$a0, $sp, 548
	beqz	$a0, .LBB0_193
# %bb.175:                              # %.thread163.i
                                        #   in Loop: Header=BB0_22 Depth=1
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_113
.LBB0_176:                              #   in Loop: Header=BB0_22 Depth=1
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$fp, $a0, 0
.Ltmp143:
	ori	$a0, $zero, 132
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp144:
# %bb.177:                              # %.noexc136.i
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 132
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $sp, 472
.Ltmp146:
	ori	$a0, $zero, 132
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp147:
# %bb.178:                              # %.noexc140.i
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$a1, $zero
	sltui	$a2, $fp, 1
	masknez	$a3, $fp, $a2
	lu12i.w	$a4, -524284
	ori	$a4, $a4, 5
	maskeqz	$a2, $a4, $a2
	or	$fp, $a2, $a3
	st.d	$a0, $sp, 472
	st.w	$zero, $a0, 0
	ori	$a2, $zero, 33
	st.w	$a2, $sp, 484
.LBB0_179:                              #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s4, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_179
# %bb.180:                              # %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ori	$a0, $zero, 32
	st.w	$a0, $sp, 480
.Ltmp149:
	addi.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp150:
# %bb.181:                              # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $sp, 472
	beq	$a0, $a3, .LBB0_208
# %bb.182:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$s0, $a3, 0
	st.w	$zero, $a3, 8
	st.w	$zero, $s0, 0
	ld.w	$a0, $sp, 480
	ld.w	$s2, $a3, 12
	addi.w	$s3, $a0, 1
	beq	$s3, $s2, .LBB0_205
# %bb.183:                              #   in Loop: Header=BB0_22 Depth=1
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp152:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp153:
# %bb.184:                              # %.noexc145.i
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$s1, $a0
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB0_203
# %bb.185:                              # %._crit_edge.thread.i.i.i
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 8
	b	.LBB0_204
.LBB0_186:                              #   in Loop: Header=BB0_22 Depth=1
	ld.bu	$a0, $s2, 3
	ld.bu	$a1, $s2, 4
	ld.bu	$a2, $s2, 0
	xori	$a1, $a1, 1
	maskeqz	$a3, $a1, $a0
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	bne	$a2, $a0, .LBB0_191
# %bb.187:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a5, $a0, 72
.Ltmp163:
	addi.w	$a2, $zero, -1
	move	$a0, $s4
	move	$a1, $zero
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a5, 0
.Ltmp164:
# %bb.188:                              #   in Loop: Header=BB0_22 Depth=1
	move	$fp, $a0
	st.w	$zero, $sp, 472
	ld.d	$a0, $s4, 0
	ld.d	$a3, $a0, 80
.Ltmp165:
	ori	$a1, $zero, 44
	addi.d	$a2, $sp, 472
	move	$a0, $s4
	jirl	$ra, $a3, 0
.Ltmp166:
# %bb.189:                              #   in Loop: Header=BB0_22 Depth=1
	beqz	$a0, .LBB0_196
.LBB0_190:                              #   in Loop: Header=BB0_22 Depth=1
	move	$s4, $zero
	b	.LBB0_200
.LBB0_191:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a4, $s4, 0
	ld.d	$a1, $sp, 552
	ld.w	$a2, $sp, 548
	ld.d	$a5, $a4, 72
.Ltmp161:
	move	$a0, $s4
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a5, 0
.Ltmp162:
# %bb.192:                              #   in Loop: Header=BB0_22 Depth=1
	move	$fp, $a0
	move	$s4, $zero
	b	.LBB0_201
.LBB0_193:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 104
.Ltmp126:
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp127:
# %bb.194:                              #   in Loop: Header=BB0_22 Depth=1
	move	$a0, $zero
	b	.LBB0_117
.LBB0_195:                              #   in Loop: Header=BB0_22 Depth=1
	move	$s4, $zero
	move	$s3, $s7
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	b	.LBB0_118
.LBB0_196:                              #   in Loop: Header=BB0_22 Depth=1
	ld.hu	$a0, $sp, 472
	ori	$a1, $zero, 21
	beq	$a0, $a1, .LBB0_198
# %bb.197:                              #   in Loop: Header=BB0_22 Depth=1
	ori	$a1, $zero, 19
	bne	$a0, $a1, .LBB0_190
.LBB0_198:                              #   in Loop: Header=BB0_22 Depth=1
.Ltmp167:
	addi.d	$a0, $sp, 472
	pcaddu18i	$ra, %call36(_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.Ltmp168:
# %bb.199:                              #   in Loop: Header=BB0_22 Depth=1
	move	$s4, $a0
.LBB0_200:                              #   in Loop: Header=BB0_22 Depth=1
.Ltmp173:
	addi.d	$a0, $sp, 472
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp174:
.LBB0_201:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 112
.Ltmp176:
	move	$a0, $s0
	move	$a1, $fp
	jirl	$ra, $a2, 0
.Ltmp177:
# %bb.202:                              #   in Loop: Header=BB0_22 Depth=1
	move	$fp, $a0
	b	.LBB0_211
.LBB0_203:                              #   in Loop: Header=BB0_22 Depth=1
	move	$a0, $zero
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
.LBB0_204:                              #   in Loop: Header=BB0_22 Depth=1
	st.d	$s1, $a3, 0
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $a3, 12
	move	$s0, $s1
.LBB0_205:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i141.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 472
	move	$s3, $s7
.LBB0_206:                              #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s0, 4
	st.w	$a1, $s0, 0
	move	$s0, $a2
	bnez	$a1, .LBB0_206
# %bb.207:                              # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.w	$a0, $sp, 480
	st.w	$a0, $a3, 8
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
.LBB0_208:                              # %_ZN11CStringBaseIwEaSERKS0_.exit.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 472
	beqz	$a0, .LBB0_210
# %bb.209:                              #   in Loop: Header=BB0_22 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_210:                              # %_ZN11CStringBaseIwED2Ev.exit147.i
                                        #   in Loop: Header=BB0_22 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
.LBB0_211:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 488
	beqz	$a0, .LBB0_213
# %bb.212:                              #   in Loop: Header=BB0_22 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_213:                              # %_ZN11CStringBaseIwED2Ev.exit151.i
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $sp, 504
.Ltmp182:
	addi.d	$a0, $sp, 504
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp183:
# %bb.214:                              # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit.i
                                        #   in Loop: Header=BB0_22 Depth=1
	addi.d	$a0, $sp, 504
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB0_215:                              #   in Loop: Header=BB0_22 Depth=1
	addi.d	$a0, $sp, 536
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.w	$a0, $fp, 0
	bnez	$a0, .LBB0_92
# %bb.216:                              #   in Loop: Header=BB0_22 Depth=1
	ld.d	$a0, $sp, 368
	ld.d	$a1, $sp, 352
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a4, 296
	ld.bu	$a3, $s2, 0
	add.d	$a0, $a1, $a0
	ld.d	$a1, $a2, 48
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $s4, $a3
	or	$a0, $a3, $a0
	add.d	$a0, $a1, $a0
	st.d	$a0, $a2, 48
	ld.d	$a0, $a4, 320
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	sltui	$a1, $a3, 1
	st.d	$a0, $a2, 56
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	masknez	$a2, $a3, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	sltu	$a2, $zero, $a0
	masknez	$a0, $a1, $a2
	lu12i.w	$a1, -524284
	ori	$a1, $a1, 5
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	maskeqz	$a1, $a1, $a2
	or	$fp, $a1, $a0
	b	.LBB0_92
.LBB0_217:                              # %._crit_edge438
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	vld	$vr0, $a2, 304
	ld.d	$a0, $a2, 320
	ld.w	$a1, $a2, 328
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	vst	$vr0, $a3, 24
	st.d	$a0, $a3, 8
	st.w	$a1, $a3, 40
	ld.w	$a0, $s7, 12
	ld.d	$a1, $a2, 296
	st.d	$a0, $a3, 0
	ld.d	$a0, $a1, 48
	move	$s4, $zero
	st.d	$a0, $a3, 16
.LBB0_218:                              # %.loopexit338
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp185:
	jirl	$ra, $a1, 0
.Ltmp186:
# %bb.219:                              # %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s4, 0
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
.LBB0_220:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $a0, 0
.Ltmp29:
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp30:
# %bb.221:
.LBB0_222:
	move	$fp, $s4
.LBB0_223:                              # %.invoke
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
.Ltmp6:
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.224:                              # %.cont
.LBB0_225:
.Ltmp128:
	b	.LBB0_266
.LBB0_226:
.Ltmp154:
	b	.LBB0_231
.LBB0_227:
.Ltmp175:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_228:
.Ltmp169:
	move	$s0, $a0
.Ltmp170:
	addi.d	$a0, $sp, 472
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp171:
	b	.LBB0_253
.LBB0_229:
.Ltmp172:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_230:
.Ltmp151:
.LBB0_231:
	ld.d	$a1, $sp, 472
	move	$s0, $a0
	beqz	$a1, .LBB0_234
# %bb.232:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_234
.LBB0_233:
.Ltmp148:
	move	$s0, $a0
.LBB0_234:                              # %.body.i
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_253
.LBB0_235:
.Ltmp145:
	b	.LBB0_252
.LBB0_236:
.Ltmp131:
	move	$s0, $a0
	b	.LBB0_255
.LBB0_237:
.Ltmp178:
	b	.LBB0_252
.LBB0_238:
.Ltmp160:
	b	.LBB0_252
.LBB0_239:
.Ltmp65:
	b	.LBB0_258
.LBB0_240:
.Ltmp62:
	b	.LBB0_276
.LBB0_241:
.Ltmp111:
	b	.LBB0_266
.LBB0_242:
.Ltmp125:
	b	.LBB0_263
.LBB0_243:
.Ltmp184:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_244:
.Ltmp140:
	ld.d	$a1, $sp, 456
	move	$s0, $a0
	beqz	$a1, .LBB0_247
# %bb.245:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_247
.LBB0_246:
.Ltmp137:
	move	$s0, $a0
.LBB0_247:                              # %_ZN11CStringBaseIwED2Ev.exit138.i
	ld.d	$a0, $sp, 472
	beqz	$a0, .LBB0_253
# %bb.248:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_253
.LBB0_249:
.Ltmp134:
	b	.LBB0_252
.LBB0_250:
.Ltmp72:
	b	.LBB0_276
.LBB0_251:
.Ltmp157:
.LBB0_252:
	move	$s0, $a0
.LBB0_253:
	ld.d	$a0, $sp, 488
	beqz	$a0, .LBB0_255
# %bb.254:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_255:                              # %_ZN11CStringBaseIwED2Ev.exit152.i
	addi.d	$a0, $sp, 504
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI11CStringBaseIwEED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB0_267
.LBB0_256:
.Ltmp120:
	b	.LBB0_263
.LBB0_257:
.Ltmp59:
.LBB0_258:
	ld.d	$a1, $sp, 504
	move	$s0, $a0
	beqz	$a1, .LBB0_277
# %bb.259:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_277
.LBB0_260:
.Ltmp105:
	b	.LBB0_273
.LBB0_261:
.Ltmp56:
	b	.LBB0_276
.LBB0_262:
.Ltmp117:
.LBB0_263:
	move	$s0, $a0
	ld.d	$a0, $sp, 504
	beqz	$a0, .LBB0_267
# %bb.264:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_267
.LBB0_265:
.Ltmp114:
.LBB0_266:
	move	$s0, $a0
.LBB0_267:
	addi.d	$a0, $sp, 536
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB0_274
.LBB0_268:
.Ltmp102:
	b	.LBB0_273
.LBB0_269:
.Ltmp99:
	b	.LBB0_304
.LBB0_270:
.Ltmp96:
	b	.LBB0_304
.LBB0_271:
.Ltmp48:
	b	.LBB0_304
.LBB0_272:
.Ltmp108:
.LBB0_273:                              # %.body306
	move	$s0, $a0
.LBB0_274:                              # %.body306
	ld.d	$a0, $sp, 240
	bnez	$a0, .LBB0_278
	b	.LBB0_305
.LBB0_275:
.Ltmp53:
.LBB0_276:
	move	$s0, $a0
.LBB0_277:
	ld.d	$a0, $sp, 536
	beqz	$a0, .LBB0_305
.LBB0_278:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_305
.LBB0_279:
.Ltmp23:
	b	.LBB0_292
.LBB0_280:
.Ltmp187:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_281:
.Ltmp20:
	b	.LBB0_297
.LBB0_282:
.Ltmp17:
	move	$s0, $a0
	ori	$a1, $zero, 336
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_283:
.Ltmp14:
	b	.LBB0_297
.LBB0_284:
.Ltmp81:
	b	.LBB0_304
.LBB0_285:
.Ltmp78:
	b	.LBB0_304
.LBB0_286:                              # %.loopexit.split-lp
.Ltmp93:
	b	.LBB0_304
.LBB0_287:
.Ltmp75:
	b	.LBB0_304
.LBB0_288:                              # %.loopexit.split-lp.i
.Ltmp42:
	b	.LBB0_304
.LBB0_289:                              # %.loopexit339
.Ltmp5:
	b	.LBB0_300
.LBB0_290:
.Ltmp37:
	b	.LBB0_295
.LBB0_291:
.Ltmp26:
.LBB0_292:
	move	$s0, $a0
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_308
.LBB0_293:                              # %.loopexit.split-lp334
.Ltmp31:
	b	.LBB0_295
.LBB0_294:                              # %.loopexit333
.Ltmp34:
.LBB0_295:
	move	$s0, $a0
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_306
.LBB0_296:
.Ltmp2:
.LBB0_297:                              # %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit316
	move	$s0, $a0
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_298:
.Ltmp11:
	b	.LBB0_300
.LBB0_299:                              # %.loopexit.split-lp340
.Ltmp8:
.LBB0_300:
	move	$s0, $a0
	ld.d	$a0, $sp, 328
	beqz	$a0, .LBB0_309
# %bb.301:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_302:                              # %.loopexit.i
.Ltmp45:
	b	.LBB0_304
.LBB0_303:                              # %.loopexit
.Ltmp86:
.LBB0_304:                              # %_ZN11CStringBaseIwED2Ev.exit311
	move	$s0, $a0
.LBB0_305:                              # %_ZN11CStringBaseIwED2Ev.exit311
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(_ZN12CArchiveLinkD2Ev)
	jirl	$ra, $ra, 0
.LBB0_306:
	ld.d	$a0, $sp, 408
	beqz	$a0, .LBB0_308
# %bb.307:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_308:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp179:
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp180:
.LBB0_309:                              # %_ZN9CMyComPtrI23IArchiveExtractCallbackED2Ev.exit316
	addi.d	$a0, $sp, 424
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_310:
.Ltmp181:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat, .Lfunc_end0-_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat
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
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
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
	.uleb128 .Ltmp33-.Ltmp27                #   Call between .Ltmp27 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp38-.Ltmp36                #   Call between .Ltmp36 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp41-.Ltmp38                #   Call between .Ltmp38 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin0          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin0          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin0          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp46-.Ltmp80                #   Call between .Ltmp80 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp52-.Ltmp49                #   Call between .Ltmp49 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp82-.Ltmp52                #   Call between .Ltmp52 and .Ltmp82
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp85-.Ltmp82                #   Call between .Ltmp82 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin0          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp92-.Ltmp87                #   Call between .Ltmp87 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin0          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin0          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin0          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin0         # >> Call Site 26 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin0         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin0         # >> Call Site 27 <<
	.uleb128 .Ltmp54-.Ltmp101               #   Call between .Ltmp101 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin0          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin0          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp103-.Ltmp58               #   Call between .Ltmp58 and .Ltmp103
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin0         # >> Call Site 31 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin0         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin0         # >> Call Site 32 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin0         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin0         # >> Call Site 33 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin0         # >> Call Site 34 <<
	.uleb128 .Ltmp60-.Ltmp110               #   Call between .Ltmp110 and .Ltmp60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 37 <<
	.uleb128 .Ltmp66-.Ltmp64                #   Call between .Ltmp64 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 38 <<
	.uleb128 .Ltmp71-.Ltmp66                #   Call between .Ltmp66 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin0          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin0         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin0         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin0         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin0         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp141-.Ltmp139              #   Call between .Ltmp139 and .Ltmp141
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp156-.Ltmp141              #   Call between .Ltmp141 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin0         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin0         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin0         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin0         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin0         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp124-.Ltmp121              #   Call between .Ltmp121 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin0         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp143-.Ltmp124              #   Call between .Ltmp124 and .Ltmp143
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin0         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp146-.Ltmp144              #   Call between .Ltmp144 and .Ltmp146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin0         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin0         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin0         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp163-.Ltmp153              #   Call between .Ltmp153 and .Ltmp163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp178-.Lfunc_begin0         #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp169-.Lfunc_begin0         #     jumps to .Ltmp169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin0         # >> Call Site 59 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp178-.Lfunc_begin0         #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin0         # >> Call Site 60 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin0         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin0         # >> Call Site 61 <<
	.uleb128 .Ltmp168-.Ltmp167              #   Call between .Ltmp167 and .Ltmp168
	.uleb128 .Ltmp169-.Lfunc_begin0         #     jumps to .Ltmp169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin0         # >> Call Site 62 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin0         #     jumps to .Ltmp175
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp176-.Lfunc_begin0         # >> Call Site 63 <<
	.uleb128 .Ltmp177-.Ltmp176              #   Call between .Ltmp176 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin0         #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin0         # >> Call Site 64 <<
	.uleb128 .Ltmp182-.Ltmp177              #   Call between .Ltmp177 and .Ltmp182
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin0         # >> Call Site 65 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin0         #     jumps to .Ltmp184
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp183-.Lfunc_begin0         # >> Call Site 66 <<
	.uleb128 .Ltmp185-.Ltmp183              #   Call between .Ltmp183 and .Ltmp185
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin0         # >> Call Site 67 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin0         #     jumps to .Ltmp187
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp186-.Lfunc_begin0         # >> Call Site 68 <<
	.uleb128 .Ltmp29-.Ltmp186               #   Call between .Ltmp186 and .Ltmp29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 69 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 70 <<
	.uleb128 .Ltmp6-.Ltmp30                 #   Call between .Ltmp30 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 71 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 72 <<
	.uleb128 .Ltmp170-.Ltmp7                #   Call between .Ltmp7 and .Ltmp170
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin0         # >> Call Site 73 <<
	.uleb128 .Ltmp171-.Ltmp170              #   Call between .Ltmp170 and .Ltmp171
	.uleb128 .Ltmp172-.Lfunc_begin0         #     jumps to .Ltmp172
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp171-.Lfunc_begin0         # >> Call Site 74 <<
	.uleb128 .Ltmp179-.Ltmp171              #   Call between .Ltmp171 and .Ltmp179
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin0         # >> Call Site 75 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin0         #     jumps to .Ltmp181
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp180-.Lfunc_begin0         # >> Call Site 76 <<
	.uleb128 .Lfunc_end0-.Ltmp180           #   Call between .Ltmp180 and .Lfunc_end0
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
	.section	.text._ZN23CArchiveExtractCallbackC2Ev,"axG",@progbits,_ZN23CArchiveExtractCallbackC2Ev,comdat
	.weak	_ZN23CArchiveExtractCallbackC2Ev # -- Begin function _ZN23CArchiveExtractCallbackC2Ev
	.p2align	5
	.type	_ZN23CArchiveExtractCallbackC2Ev,@function
_ZN23CArchiveExtractCallbackC2Ev:       # @_ZN23CArchiveExtractCallbackC2Ev
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	pcalau12i	$a1, %got_pc_hi20(_ZTV23CArchiveExtractCallback)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTV23CArchiveExtractCallback)
	move	$fp, $a0
	st.w	$zero, $a0, 24
	addi.d	$a0, $a1, 16
	st.d	$a0, $fp, 0
	addi.d	$a0, $a1, 128
	st.d	$a0, $fp, 8
	addi.d	$a0, $a1, 192
	st.d	$a0, $fp, 16
	st.d	$zero, $fp, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 56
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $fp, 72
.Ltmp188:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp189:
# %bb.1:
	st.d	$a0, $fp, 72
	st.w	$zero, $a0, 0
	ori	$s0, $zero, 4
	st.w	$s0, $fp, 84
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 96
.Ltmp191:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp192:
# %bb.2:
	st.d	$a0, $fp, 96
	st.w	$zero, $a0, 0
	st.w	$s0, $fp, 108
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 112
.Ltmp194:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp195:
# %bb.3:
	st.d	$a0, $fp, 112
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 124
	ori	$a0, $zero, 257
	st.h	$a0, $fp, 138
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 140
	st.d	$zero, $fp, 208
	st.d	$zero, $fp, 224
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $fp, 240
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 256
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 232
	st.b	$zero, $fp, 267
	st.d	$zero, $fp, 272
.Ltmp197:
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp198:
# %bb.4:
.Ltmp199:
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_ZN14CLocalProgressC1Ev)
	jirl	$ra, $ra, 0
.Ltmp200:
# %bb.5:
	ld.d	$a0, $s1, 0
	st.d	$s1, $fp, 296
	ld.d	$a1, $a0, 8
.Ltmp202:
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp203:
# %bb.6:                                # %.noexc
	ld.d	$a0, $fp, 272
	beqz	$a0, .LBB1_8
# %bb.7:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp204:
	jirl	$ra, $a1, 0
.Ltmp205:
.LBB1_8:
	st.d	$s1, $fp, 272
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_9:
.Ltmp201:
	move	$s0, $a0
	ori	$a1, $zero, 72
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_14
.LBB1_10:
.Ltmp196:
	move	$s0, $a0
	addi.d	$a0, $fp, 96
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_22
	b	.LBB1_25
.LBB1_11:
.Ltmp193:
	move	$s0, $a0
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB1_23
	b	.LBB1_26
.LBB1_12:                               # %_ZN11CStringBaseIwED2Ev.exit19.thread
.Ltmp190:
	move	$s0, $a0
	b	.LBB1_28
.LBB1_13:
.Ltmp206:
	move	$s0, $a0
.LBB1_14:
	ld.d	$a0, $fp, 272
	beqz	$a0, .LBB1_16
# %bb.15:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp207:
	jirl	$ra, $a1, 0
.Ltmp208:
.LBB1_16:                               # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit
	addi.d	$a0, $fp, 232
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI11CStringBaseIwEED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 224
	beqz	$a0, .LBB1_18
# %bb.17:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp210:
	jirl	$ra, $a1, 0
.Ltmp211:
.LBB1_18:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
	ld.d	$a0, $fp, 208
	beqz	$a0, .LBB1_20
# %bb.19:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp213:
	jirl	$ra, $a1, 0
.Ltmp214:
.LBB1_20:                               # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit17
	addi.d	$a0, $fp, 112
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB1_24
# %bb.21:                               # %_ZN11CStringBaseIwED2Ev.exit
	addi.d	$a0, $fp, 96
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB1_25
.LBB1_22:                               # %_ZN11CStringBaseIwED2Ev.exit18
	ld.d	$a0, $fp, 72
	bnez	$a0, .LBB1_26
.LBB1_23:                               # %_ZN11CStringBaseIwED2Ev.exit19
	ld.d	$a0, $fp, 64
	bnez	$a0, .LBB1_27
	b	.LBB1_28
.LBB1_24:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 96
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_22
.LBB1_25:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB1_23
.LBB1_26:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB1_28
.LBB1_27:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp216:
	jirl	$ra, $a1, 0
.Ltmp217:
.LBB1_28:                               # %_ZN9CMyComPtrI22ICryptoGetTextPasswordED2Ev.exit
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB1_30
# %bb.29:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp219:
	jirl	$ra, $a1, 0
.Ltmp220:
.LBB1_30:                               # %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit22
	addi.d	$a0, $fp, 48
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_32
# %bb.31:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp222:
	jirl	$ra, $a1, 0
.Ltmp223:
.LBB1_32:                               # %_ZN9CMyComPtrI29IFolderArchiveExtractCallbackED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_33:
.Ltmp215:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_34:
.Ltmp212:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_35:
.Ltmp224:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_36:
.Ltmp218:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_37:
.Ltmp209:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_38:
.Ltmp221:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN23CArchiveExtractCallbackC2Ev, .Lfunc_end1-_ZN23CArchiveExtractCallbackC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN23CArchiveExtractCallbackC2Ev,"aG",@progbits,_ZN23CArchiveExtractCallbackC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp188-.Lfunc_begin1         # >> Call Site 1 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin1         #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin1         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin1         #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp206-.Lfunc_begin1         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin1         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp205-.Ltmp202              #   Call between .Ltmp202 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin1         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp207-.Ltmp205              #   Call between .Ltmp205 and .Ltmp207
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin1         #     jumps to .Ltmp209
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp208-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp210-.Ltmp208              #   Call between .Ltmp208 and .Ltmp210
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin1         #     jumps to .Ltmp212
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp213-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin1         #     jumps to .Ltmp215
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp214-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp216-.Ltmp214              #   Call between .Ltmp214 and .Ltmp216
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin1         #     jumps to .Ltmp218
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp219-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin1         #     jumps to .Ltmp221
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp222-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin1         #     jumps to .Ltmp224
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp223-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Lfunc_end1-.Ltmp223           #   Call between .Ltmp223 and .Lfunc_end1
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
	.section	.text._ZN12CArchiveLinkD2Ev,"axG",@progbits,_ZN12CArchiveLinkD2Ev,comdat
	.weak	_ZN12CArchiveLinkD2Ev           # -- Begin function _ZN12CArchiveLinkD2Ev
	.p2align	5
	.type	_ZN12CArchiveLinkD2Ev,@function
_ZN12CArchiveLinkD2Ev:                  # @_ZN12CArchiveLinkD2Ev
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
.Ltmp225:
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink7ReleaseEv)
	jirl	$ra, $ra, 0
.Ltmp226:
# %bb.1:
	addi.d	$s0, $fp, 32
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 32
.Ltmp228:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp229:
# %bb.2:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $fp, 0
.Ltmp231:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp232:
# %bb.3:                                # %_ZN13CObjectVectorI4CArcED2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB2_4:
.Ltmp233:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_5:
.Ltmp230:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_6:
.Ltmp227:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN12CArchiveLinkD2Ev, .Lfunc_end2-_ZN12CArchiveLinkD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12CArchiveLinkD2Ev,"aG",@progbits,_ZN12CArchiveLinkD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table2:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp225-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin2         #     jumps to .Ltmp227
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp228-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin2         #     jumps to .Ltmp230
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp229-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp231-.Ltmp229              #   Call between .Ltmp229 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin2         #     jumps to .Ltmp233
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp232-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Lfunc_end2-.Ltmp232           #   Call between .Ltmp232 and .Lfunc_end2
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
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEED2Ev,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED2Ev,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEED2Ev # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI11CStringBaseIwEED2Ev,@function
_ZN13CObjectVectorI11CStringBaseIwEED2Ev: # @_ZN13CObjectVectorI11CStringBaseIwEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp234:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp235:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB3_2:
.Ltmp236:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN13CObjectVectorI11CStringBaseIwEED2Ev, .Lfunc_end3-_ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CStringBaseIwEED2Ev,"aG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table3:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp234-.Lfunc_begin3         # >> Call Site 1 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin3         #     jumps to .Ltmp236
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp235-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Lfunc_end3-.Ltmp235           #   Call between .Ltmp235 and .Lfunc_end3
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
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEED0Ev,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED0Ev,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEED0Ev # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI11CStringBaseIwEED0Ev,@function
_ZN13CObjectVectorI11CStringBaseIwEED0Ev: # @_ZN13CObjectVectorI11CStringBaseIwEED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp237:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp238:
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
.LBB4_2:
.Ltmp239:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN13CObjectVectorI11CStringBaseIwEED0Ev, .Lfunc_end4-_ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CStringBaseIwEED0Ev,"aG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp237-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin4         #     jumps to .Ltmp239
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp238-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp238           #   Call between .Ltmp238 and .Lfunc_end4
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
	blt	$s1, $a0, .LBB5_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                # %_ZN11CStringBaseIwED2Ev.exit
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_3:                                #   in Loop: Header=BB5_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB5_7
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB5_3
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB5_2
# %bb.6:                                #   in Loop: Header=BB5_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB5_2
.LBB5_7:                                # %._crit_edge
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
.Lfunc_end5:
	.size	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii, .Lfunc_end5-_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
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
.Lfunc_end6:
	.size	__clang_call_terminate, .Lfunc_end6-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN13CObjectVectorI4CArcED2Ev,"axG",@progbits,_ZN13CObjectVectorI4CArcED2Ev,comdat
	.weak	_ZN13CObjectVectorI4CArcED2Ev   # -- Begin function _ZN13CObjectVectorI4CArcED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI4CArcED2Ev,@function
_ZN13CObjectVectorI4CArcED2Ev:          # @_ZN13CObjectVectorI4CArcED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $fp, 0
.Ltmp240:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp241:
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB7_2:
.Ltmp242:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN13CObjectVectorI4CArcED2Ev, .Lfunc_end7-_ZN13CObjectVectorI4CArcED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcED2Ev,"aG",@progbits,_ZN13CObjectVectorI4CArcED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp240-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin5         #     jumps to .Ltmp242
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp241-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp241           #   Call between .Ltmp241 and .Lfunc_end7
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
	.section	.text._ZN13CObjectVectorI4CArcED0Ev,"axG",@progbits,_ZN13CObjectVectorI4CArcED0Ev,comdat
	.weak	_ZN13CObjectVectorI4CArcED0Ev   # -- Begin function _ZN13CObjectVectorI4CArcED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI4CArcED0Ev,@function
_ZN13CObjectVectorI4CArcED0Ev:          # @_ZN13CObjectVectorI4CArcED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $fp, 0
.Ltmp243:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp244:
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
.LBB8_2:
.Ltmp245:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN13CObjectVectorI4CArcED0Ev, .Lfunc_end8-_ZN13CObjectVectorI4CArcED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcED0Ev,"aG",@progbits,_ZN13CObjectVectorI4CArcED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp243-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin6         #     jumps to .Ltmp245
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp244-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Lfunc_end8-.Ltmp244           #   Call between .Ltmp244 and .Lfunc_end8
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
	.section	.text._ZN13CObjectVectorI4CArcE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI4CArcE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI4CArcE6DeleteEii # -- Begin function _ZN13CObjectVectorI4CArcE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI4CArcE6DeleteEii,@function
_ZN13CObjectVectorI4CArcE6DeleteEii:    # @_ZN13CObjectVectorI4CArcE6DeleteEii
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	blt	$s1, $a0, .LBB9_13
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_2:                                # %_ZN4CArcD2Ev.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$a1, $zero, 80
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_3:                                #   in Loop: Header=BB9_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB9_13
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB9_3
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $s2, 64
	beqz	$a0, .LBB9_7
# %bb.6:                                #   in Loop: Header=BB9_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB9_7:                                # %_ZN11CStringBaseIwED2Ev.exit.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $s2, 24
	beqz	$a0, .LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB9_9:                                # %_ZN11CStringBaseIwED2Ev.exit1.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $s2, 8
	beqz	$a0, .LBB9_11
# %bb.10:                               #   in Loop: Header=BB9_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB9_11:                               # %_ZN11CStringBaseIwED2Ev.exit2.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB9_2
# %bb.12:                               #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp246:
	jirl	$ra, $a1, 0
.Ltmp247:
	b	.LBB9_2
.LBB9_13:                               # %._crit_edge
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
.LBB9_14:
.Ltmp248:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN13CObjectVectorI4CArcE6DeleteEii, .Lfunc_end9-_ZN13CObjectVectorI4CArcE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI4CArcE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp246-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp246
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin7         #     jumps to .Ltmp248
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp247-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Lfunc_end9-.Ltmp247           #   Call between .Ltmp247 and .Lfunc_end9
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
	.section	.text._ZN11CStringBaseIwE7ReplaceERKS0_S2_,"axG",@progbits,_ZN11CStringBaseIwE7ReplaceERKS0_S2_,comdat
	.weak	_ZN11CStringBaseIwE7ReplaceERKS0_S2_ # -- Begin function _ZN11CStringBaseIwE7ReplaceERKS0_S2_
	.p2align	5
	.type	_ZN11CStringBaseIwE7ReplaceERKS0_S2_,@function
_ZN11CStringBaseIwE7ReplaceERKS0_S2_:   # @_ZN11CStringBaseIwE7ReplaceERKS0_S2_
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
	move	$fp, $a1
	ld.w	$a1, $a1, 8
	beqz	$a1, .LBB10_27
# %bb.1:
	move	$s0, $a2
	move	$s1, $a0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a2, 0
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_27
# %bb.2:
	ld.w	$a2, $s1, 8
	ori	$s4, $zero, 1
	blt	$a2, $s4, .LBB10_27
# %bb.3:                                # %.lr.ph.preheader
	ld.w	$s5, $fp, 8
	ld.w	$s6, $s0, 8
	move	$s7, $zero
	move	$s2, $zero
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_4:                               # %._crit_edge.i
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.w	$a0, $s1, 8
	add.w	$a2, $a0, $s3
	st.w	$a2, $s1, 8
.LBB10_5:                               # %_ZN11CStringBaseIwE6InsertEiRKS0_.exit
                                        #   in Loop: Header=BB10_6 Depth=1
	add.w	$s7, $s7, $s6
	addi.w	$s2, $s2, 1
	bge	$s7, $a2, .LBB10_28
.LBB10_6:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_10 Depth 2
                                        #       Child Loop BB10_11 Depth 3
                                        #     Child Loop BB10_25 Depth 2
                                        #     Child Loop BB10_23 Depth 2
	ld.w	$a0, $fp, 8
	beqz	$a0, .LBB10_14
# %bb.7:                                # %.preheader.lr.ph.i
                                        #   in Loop: Header=BB10_6 Depth=1
	blt	$a0, $s4, .LBB10_28
# %bb.8:                                # %.preheader.us.preheader.i
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a3, $s1, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a3, $s7, $a3, 2
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_9:                               # %.critedge.us.i
                                        #   in Loop: Header=BB10_10 Depth=2
	addi.d	$s7, $s7, 1
	addi.w	$a4, $s7, 0
	addi.d	$a3, $a3, 4
	beq	$a2, $a4, .LBB10_28
.LBB10_10:                              # %.preheader.us.i
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_11 Depth 3
	move	$a4, $zero
	move	$a5, $a3
	move	$a6, $a1
	.p2align	4, , 16
.LBB10_11:                              #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $s7, $a4
	bge	$a7, $a2, .LBB10_9
# %bb.12:                               #   in Loop: Header=BB10_11 Depth=3
	ld.w	$a7, $a5, 0
	ld.w	$t0, $a6, 0
	bne	$a7, $t0, .LBB10_9
# %bb.13:                               #   in Loop: Header=BB10_11 Depth=3
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	bne	$a0, $a4, .LBB10_11
.LBB10_14:                              # %_ZNK11CStringBaseIwE4FindERKS0_i.exit
                                        #   in Loop: Header=BB10_6 Depth=1
	addi.w	$s8, $s7, 0
	bltz	$s8, .LBB10_28
# %bb.15:                               #   in Loop: Header=BB10_6 Depth=1
	add.w	$a0, $s7, $s5
	slt	$a0, $a2, $a0
	sub.w	$a1, $a2, $s7
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s5, $a0
	or	$s3, $a1, $a0
	blt	$s3, $s4, .LBB10_17
# %bb.16:                               #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a1, $s1, 0
	add.w	$a3, $s3, $s7
	alsl.d	$a0, $s8, $a1, 2
	alsl.d	$a1, $a3, $a1, 2
	sub.d	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	slli.d	$a2, $a2, 2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	sub.w	$a2, $a0, $s3
	st.w	$a2, $s1, 8
.LBB10_17:                              # %_ZN11CStringBaseIwE6DeleteEii.exit
                                        #   in Loop: Header=BB10_6 Depth=1
	slt	$a0, $s8, $a2
	ld.w	$s3, $s0, 8
	masknez	$a1, $a2, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 4
	beqz	$s3, .LBB10_5
# %bb.18:                               #   in Loop: Header=BB10_6 Depth=1
	addi.d	$a1, $sp, 4
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwE11InsertSpaceERii)
	jirl	$ra, $ra, 0
	blt	$s3, $s4, .LBB10_4
# %bb.19:                               # %.lr.ph.i
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s1, 0
	ld.w	$a2, $sp, 4
	ori	$a3, $zero, 8
	bltu	$s3, $a3, .LBB10_21
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB10_6 Depth=1
	alsl.d	$a3, $a2, $a1, 2
	sub.d	$a3, $a3, $a0
	ori	$a4, $zero, 32
	bgeu	$a3, $a4, .LBB10_24
.LBB10_21:                              #   in Loop: Header=BB10_6 Depth=1
	move	$a3, $zero
.LBB10_22:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB10_6 Depth=1
	sub.d	$a4, $s3, $a3
	slli.d	$a5, $a3, 2
	alsl.d	$a2, $a2, $a5, 2
	add.d	$a1, $a1, $a2
	alsl.d	$a0, $a3, $a0, 2
	.p2align	4, , 16
.LBB10_23:                              # %scalar.ph
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 0
	st.w	$a2, $a1, 0
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	bnez	$a4, .LBB10_23
	b	.LBB10_4
.LBB10_24:                              # %vector.ph
                                        #   in Loop: Header=BB10_6 Depth=1
	slli.d	$a4, $a2, 2
	bstrpick.d	$a3, $s3, 30, 3
	slli.d	$a3, $a3, 3
	add.d	$a4, $a1, $a4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB10_25:                              # %vector.body
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB10_25
# %bb.26:                               # %middle.block
                                        #   in Loop: Header=BB10_6 Depth=1
	beq	$a3, $s3, .LBB10_4
	b	.LBB10_22
.LBB10_27:
	move	$s2, $zero
.LBB10_28:                              # %_ZNK11CStringBaseIwE4FindERKS0_i.exit.thread
	move	$a0, $s2
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
.Lfunc_end10:
	.size	_ZN11CStringBaseIwE7ReplaceERKS0_S2_, .Lfunc_end10-_ZN11CStringBaseIwE7ReplaceERKS0_S2_
	.cfi_endproc
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
.Lfunc_end11:
	.size	_ZN13CRecordVectorIjED0Ev, .Lfunc_end11-_ZN13CRecordVectorIjED0Ev
                                        # -- End function
	.section	.text._ZN11CStringBaseIwE11InsertSpaceERii,"axG",@progbits,_ZN11CStringBaseIwE11InsertSpaceERii,comdat
	.weak	_ZN11CStringBaseIwE11InsertSpaceERii # -- Begin function _ZN11CStringBaseIwE11InsertSpaceERii
	.p2align	5
	.type	_ZN11CStringBaseIwE11InsertSpaceERii,@function
_ZN11CStringBaseIwE11InsertSpaceERii:   # @_ZN11CStringBaseIwE11InsertSpaceERii
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
	move	$fp, $a0
	ld.w	$a3, $a1, 0
	ld.w	$s3, $a0, 8
	move	$s0, $a2
	bge	$s3, $a3, .LBB12_2
# %bb.1:
	st.w	$s3, $s1, 0
	ld.w	$a0, $fp, 8
	move	$a3, $s3
	move	$s3, $a0
.LBB12_2:                               # %_ZNK11CStringBaseIwE12CorrectIndexERi.exit
	ld.w	$s5, $fp, 12
	nor	$a0, $s3, $zero
	add.w	$a0, $s5, $a0
	bge	$a0, $s0, .LBB12_16
# %bb.3:
	ori	$a1, $zero, 64
	slt	$a1, $a1, $s5
	bstrpick.d	$a2, $s5, 31, 1
	ori	$a4, $zero, 8
	slt	$a4, $a4, $s5
	ori	$a5, $zero, 4
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 16
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a4
	add.w	$a2, $a1, $a0
	slt	$a2, $a2, $s0
	sub.d	$a0, $s0, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	add.w	$a0, $a0, $s5
	addi.w	$s4, $a0, 1
	beq	$s4, $s5, .LBB12_16
# %bb.4:
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
	blt	$s5, $a1, .LBB12_15
# %bb.5:                                # %.preheader.i.i
	ld.d	$a0, $fp, 0
	blt	$s3, $a1, .LBB12_13
# %bb.6:                                # %.lr.ph.i.i
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s3, $a2, .LBB12_11
# %bb.7:                                # %.lr.ph.i.i
	sub.d	$a2, $s2, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB12_11
# %bb.8:                                # %vector.ph
	bstrpick.d	$a1, $s3, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $s2, 16
	addi.d	$a3, $a0, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB12_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB12_9
# %bb.10:                               # %middle.block
	beq	$a1, $s3, .LBB12_14
.LBB12_11:                              # %scalar.ph.preheader
	sub.d	$a2, $s3, $a1
	alsl.d	$a3, $a1, $s2, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB12_12:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_12
	b	.LBB12_14
.LBB12_13:                              # %._crit_edge.i.i
	beqz	$a0, .LBB12_15
.LBB12_14:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 8
.LBB12_15:
	st.w	$s4, $fp, 12
	ld.w	$a3, $s1, 0
	st.d	$s2, $fp, 0
	slli.d	$a0, $s3, 2
	stx.w	$zero, $s2, $a0
.LBB12_16:                              # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a1, $fp, 0
	add.w	$a0, $a3, $s0
	alsl.d	$a0, $a0, $a1, 2
	alsl.d	$a1, $a3, $a1, 2
	sub.d	$a2, $s3, $a3
	addi.w	$a2, $a2, 1
	slli.d	$a2, $a2, 2
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(memmove)
	jr	$t8
.Lfunc_end12:
	.size	_ZN11CStringBaseIwE11InsertSpaceERii, .Lfunc_end12-_ZN11CStringBaseIwE11InsertSpaceERii
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
	bge	$a2, $a1, .LBB13_15
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
	beq	$s2, $s4, .LBB13_15
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
	blt	$s4, $a2, .LBB13_11
# %bb.3:                                # %.preheader.i.i
	ld.d	$a1, $s3, 0
	blt	$s1, $a2, .LBB13_12
# %bb.4:                                # %.lr.ph.i.i
	ori	$a2, $zero, 8
	move	$a0, $zero
	bltu	$s1, $a2, .LBB13_9
# %bb.5:                                # %.lr.ph.i.i
	sub.d	$a2, $s0, $a1
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB13_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a0, $s1, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a2, $s0, 16
	addi.d	$a3, $a1, 16
	move	$a4, $a0
	.p2align	4, , 16
.LBB13_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB13_7
# %bb.8:                                # %middle.block
	beq	$a0, $s1, .LBB13_13
.LBB13_9:                               # %scalar.ph.preheader
	sub.d	$a2, $s1, $a0
	alsl.d	$a3, $a0, $s0, 2
	alsl.d	$a0, $a0, $a1, 2
	.p2align	4, , 16
.LBB13_10:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB13_10
	b	.LBB13_13
.LBB13_11:
	move	$a0, $s3
	b	.LBB13_14
.LBB13_12:                              # %._crit_edge.i.i
	move	$a0, $s3
	beqz	$a1, .LBB13_14
.LBB13_13:                              # %._crit_edge.thread.i.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.w	$s1, $s3, 8
.LBB13_14:
	st.d	$s0, $a0, 0
	slli.d	$a1, $s1, 2
	stx.w	$zero, $s0, $a1
	st.w	$s2, $a0, 12
.LBB13_15:                              # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a2, $s1, $a2, 2
	.p2align	4, , 16
.LBB13_16:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a2, 4
	st.w	$a3, $a2, 0
	move	$a2, $a4
	bnez	$a3, .LBB13_16
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
.Lfunc_end13:
	.size	_ZN11CStringBaseIwEpLERKS0_, .Lfunc_end13-_ZN11CStringBaseIwEpLERKS0_
	.cfi_endproc
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
.Lfunc_end14:
	.size	_ZN13CRecordVectorIyED0Ev, .Lfunc_end14-_ZN13CRecordVectorIyED0Ev
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
.Lfunc_end15:
	.size	_ZN13CRecordVectorIiED0Ev, .Lfunc_end15-_ZN13CRecordVectorIiED0Ev
                                        # -- End function
	.section	.text._ZNK11CStringBaseIwE3MidEii,"axG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.weak	_ZNK11CStringBaseIwE3MidEii     # -- Begin function _ZNK11CStringBaseIwE3MidEii
	.p2align	5
	.type	_ZNK11CStringBaseIwE3MidEii,@function
_ZNK11CStringBaseIwE3MidEii:            # @_ZNK11CStringBaseIwE3MidEii
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	bnez	$a2, .LBB16_4
# %bb.1:
	bne	$s4, $s2, .LBB16_4
# %bb.2:
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s1, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s1, $a0
	vst	$vr0, $fp, 0
	beqz	$a0, .LBB16_13
# %bb.3:
	move	$a0, $zero
	b	.LBB16_14
.LBB16_4:
	st.d	$zero, $fp, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 4
	addi.w	$s5, $s4, 1
	st.w	$a1, $fp, 12
	beq	$s5, $a1, .LBB16_7
# %bb.5:
	move	$s2, $a0
	slti	$a0, $s4, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp249:
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp250:
# %bb.6:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	st.d	$s3, $fp, 0
	st.w	$zero, $s3, 0
	st.w	$s5, $fp, 12
	blez	$s4, .LBB16_12
.LBB16_7:                               # %.lr.ph
	ld.d	$a2, $s0, 0
	ori	$a3, $zero, 8
	alsl.d	$a1, $s1, $a2, 2
	bltu	$s4, $a3, .LBB16_9
# %bb.8:                                # %vector.memcheck
	alsl.d	$a2, $s1, $a2, 2
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB16_18
.LBB16_9:
	move	$a2, $zero
.LBB16_10:                              # %scalar.ph.preheader
	slli.d	$a3, $a2, 2
	.p2align	4, , 16
.LBB16_11:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a1, $a3
	stx.w	$a4, $a0, $a3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bltu	$a2, $s4, .LBB16_11
.LBB16_12:                              # %._crit_edge
	slli.d	$a1, $s4, 2
	stx.w	$zero, $a0, $a1
	b	.LBB16_17
.LBB16_13:
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
.LBB16_14:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a1, $s0, 0
	.p2align	4, , 16
.LBB16_15:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB16_15
# %bb.16:
	move	$s4, $s2
.LBB16_17:                              # %_ZN11CStringBaseIwEC2ERKS0_.exit
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
.LBB16_18:                              # %vector.ph
	bstrpick.d	$a2, $s4, 30, 3
	slli.d	$a2, $a2, 3
	move	$a3, $zero
	move	$a4, $a2
	.p2align	4, , 16
.LBB16_19:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a3
	vldx	$vr0, $a1, $a3
	vld	$vr1, $a5, 16
	add.d	$a5, $a0, $a3
	vstx	$vr0, $a0, $a3
	vst	$vr1, $a5, 16
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB16_19
# %bb.20:                               # %middle.block
	beq	$a2, $s4, .LBB16_12
	b	.LBB16_10
.LBB16_21:                              # %_ZN11CStringBaseIwED2Ev.exit
.Ltmp251:
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZNK11CStringBaseIwE3MidEii, .Lfunc_end16-_ZNK11CStringBaseIwE3MidEii
	.cfi_endproc
	.section	.gcc_except_table._ZNK11CStringBaseIwE3MidEii,"aG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp249-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp249
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin8         #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Lfunc_end16-.Ltmp250          #   Call between .Ltmp250 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"there is no such archive"
	.size	.L.str, 25

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"can't decompress folder"
	.size	.L.str.1, 24

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.2:
	.word	48                              # 0x30
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	0                               # 0x0
	.size	.L.str.2, 16

	.type	.L.str.3,@object                # @.str.3
	.p2align	2, 0x0
.L.str.3:
	.word	114                             # 0x72
	.word	97                              # 0x61
	.word	114                             # 0x72
	.word	0                               # 0x0
	.size	.L.str.3, 16

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

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str4.8,"aMS",@progbits,4
	.p2align	3, 0x0
.L.str.5:
	.word	67                              # 0x43
	.word	97                              # 0x61
	.word	110                             # 0x6e
	.word	32                              # 0x20
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	99                              # 0x63
	.word	114                             # 0x72
	.word	101                             # 0x65
	.word	97                              # 0x61
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	111                             # 0x6f
	.word	117                             # 0x75
	.word	116                             # 0x74
	.word	112                             # 0x70
	.word	117                             # 0x75
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	100                             # 0x64
	.word	105                             # 0x69
	.word	114                             # 0x72
	.word	101                             # 0x65
	.word	99                              # 0x63
	.word	116                             # 0x74
	.word	111                             # 0x6f
	.word	114                             # 0x72
	.word	121                             # 0x79
	.word	32                              # 0x20
	.word	0                               # 0x0
	.size	.L.str.5, 132

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
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTI13CObjectVectorI11CStringBaseIwEE
	.addrsig_sym _ZTS13CObjectVectorI11CStringBaseIwEE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTI13CObjectVectorI4CArcE
	.addrsig_sym _ZTS13CObjectVectorI4CArcE
	.addrsig_sym _ZTI13CRecordVectorIjE
	.addrsig_sym _ZTS13CRecordVectorIjE
	.addrsig_sym _ZTI13CRecordVectorIyE
	.addrsig_sym _ZTS13CRecordVectorIyE
	.addrsig_sym _ZTI13CRecordVectorIiE
	.addrsig_sym _ZTS13CRecordVectorIiE
