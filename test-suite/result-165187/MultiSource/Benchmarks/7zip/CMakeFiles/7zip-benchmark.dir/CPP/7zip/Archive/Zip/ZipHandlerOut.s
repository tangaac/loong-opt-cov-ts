	.file	"ZipHandlerOut.cpp"
	.text
	.globl	_ZN8NArchive4NZip8CHandler15GetFileTimeTypeEPj # -- Begin function _ZN8NArchive4NZip8CHandler15GetFileTimeTypeEPj
	.p2align	5
	.type	_ZN8NArchive4NZip8CHandler15GetFileTimeTypeEPj,@function
_ZN8NArchive4NZip8CHandler15GetFileTimeTypeEPj: # @_ZN8NArchive4NZip8CHandler15GetFileTimeTypeEPj
# %bb.0:
	ori	$a0, $zero, 2
	st.w	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	_ZN8NArchive4NZip8CHandler15GetFileTimeTypeEPj, .Lfunc_end0-_ZN8NArchive4NZip8CHandler15GetFileTimeTypeEPj
                                        # -- End function
	.globl	_ZThn8_N8NArchive4NZip8CHandler15GetFileTimeTypeEPj # -- Begin function _ZThn8_N8NArchive4NZip8CHandler15GetFileTimeTypeEPj
	.p2align	5
	.type	_ZThn8_N8NArchive4NZip8CHandler15GetFileTimeTypeEPj,@function
_ZThn8_N8NArchive4NZip8CHandler15GetFileTimeTypeEPj: # @_ZThn8_N8NArchive4NZip8CHandler15GetFileTimeTypeEPj
# %bb.0:
	ori	$a0, $zero, 2
	st.w	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	_ZThn8_N8NArchive4NZip8CHandler15GetFileTimeTypeEPj, .Lfunc_end1-_ZThn8_N8NArchive4NZip8CHandler15GetFileTimeTypeEPj
                                        # -- End function
	.globl	_ZN8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback # -- Begin function _ZN8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.p2align	5
	.type	_ZN8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback,@function
_ZN8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback: # @_ZN8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -400
	.cfi_def_cfa_offset 400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
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
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vst	$vr0, $sp, 272
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 288
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE+16)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 264
	beqz	$a2, .LBB2_139
# %bb.1:                                # %.lr.ph506
	move	$s2, $a2
	move	$s0, $zero
	move	$s3, $zero
	addi.d	$s5, $sp, 144
	ori	$s7, $zero, 4
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
                                        # implicit-def: $r27
                                        # implicit-def: $r4
                                        # kill: killed $r4
	.p2align	4, , 16
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_40 Depth 2
                                        #     Child Loop BB2_129 Depth 2
                                        #     Child Loop BB2_97 Depth 2
	st.h	$zero, $sp, 123
	st.d	$zero, $s5, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $s5, 8
.Ltmp0:                                 # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	st.d	$a0, $sp, 152
	st.b	$zero, $a0, 0
	st.w	$s7, $sp, 164
	beqz	$fp, .LBB2_7
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a5, $a0, 56
.Ltmp3:                                 # EH_LABEL
	addi.d	$a2, $sp, 232
	addi.d	$a3, $sp, 112
	addi.d	$a4, $sp, 260
	move	$a0, $fp
	move	$a1, $s3
	jirl	$ra, $a5, 0
.Ltmp4:                                 # EH_LABEL
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=1
	beqz	$a0, .LBB2_8
# %bb.6:                                #   in Loop: Header=BB2_2 Depth=1
	move	$s6, $zero
	move	$s4, $a0
	b	.LBB2_102
	.p2align	4, , 16
.LBB2_7:                                #   in Loop: Header=BB2_2 Depth=1
	move	$s6, $zero
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	b	.LBB2_102
	.p2align	4, , 16
.LBB2_8:                                #   in Loop: Header=BB2_2 Depth=1
	ld.w	$a1, $sp, 112
	ld.w	$a0, $sp, 232
	sltu	$a3, $zero, $a1
	ld.w	$a2, $sp, 260
	st.b	$a3, $sp, 121
	sltu	$a3, $zero, $a0
	st.b	$a3, $sp, 120
	st.w	$a2, $sp, 128
	st.w	$s3, $sp, 132
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	beq	$a2, $a3, .LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_2 Depth=1
	beqz	$a0, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 48
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	ld.hu	$a3, $a2, 2
	andi	$a4, $a3, 1
	bnez	$a4, .LBB2_17
.LBB2_11:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s1, $s0
.LBB2_12:                               # %_ZNK8NArchive4NZip10CLocalItem14IsAesEncryptedEv.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	beqz	$a1, .LBB2_79
# %bb.13:                               #   in Loop: Header=BB2_2 Depth=1
	st.d	$zero, $sp, 248
.Ltmp6:                                 # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.14:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a1, $fp, 0
	st.w	$zero, $a0, 0
	ld.d	$a4, $a1, 64
	st.d	$a0, $sp, 240
	st.w	$s7, $sp, 252
	st.w	$zero, $sp, 296
.Ltmp9:                                 # EH_LABEL
	ori	$a2, $zero, 9
	addi.d	$a3, $sp, 296
	move	$a0, $fp
	move	$a1, $s3
	jirl	$ra, $a4, 0
.Ltmp10:                                # EH_LABEL
# %bb.15:                               #   in Loop: Header=BB2_2 Depth=1
	beqz	$a0, .LBB2_19
# %bb.16:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $zero
	move	$s4, $a0
	b	.LBB2_25
.LBB2_17:                               #   in Loop: Header=BB2_2 Depth=1
	andi	$a3, $a3, 65
	ori	$s1, $zero, 1
	ori	$a4, $zero, 65
	beq	$a3, $a4, .LBB2_12
# %bb.18:                               #   in Loop: Header=BB2_2 Depth=1
	ld.hu	$a2, $a2, 4
	addi.d	$a2, $a2, -99
	sltui	$a2, $a2, 1
	or	$s1, $a2, $s0
	b	.LBB2_12
.LBB2_19:                               #   in Loop: Header=BB2_2 Depth=1
	ld.hu	$a0, $sp, 296
	beqz	$a0, .LBB2_22
# %bb.20:                               #   in Loop: Header=BB2_2 Depth=1
	ori	$a1, $zero, 19
	bne	$a0, $a1, .LBB2_24
# %bb.21:                               #   in Loop: Header=BB2_2 Depth=1
	ld.w	$a0, $sp, 304
	b	.LBB2_23
.LBB2_22:                               #   in Loop: Header=BB2_2 Depth=1
	move	$a0, $zero
.LBB2_23:                               # %.sink.split
                                        #   in Loop: Header=BB2_2 Depth=1
	st.w	$a0, $sp, 136
	ori	$s0, $zero, 1
	b	.LBB2_25
.LBB2_24:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $zero
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
.LBB2_25:                               #   in Loop: Header=BB2_2 Depth=1
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.26:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit313
                                        #   in Loop: Header=BB2_2 Depth=1
	beqz	$s0, .LBB2_74
# %bb.27:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 64
	st.w	$zero, $sp, 296
.Ltmp18:                                # EH_LABEL
	ori	$a2, $zero, 3
	addi.d	$a3, $sp, 296
	move	$a0, $fp
	move	$a1, $s3
	jirl	$ra, $a4, 0
.Ltmp19:                                # EH_LABEL
# %bb.28:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s8, $a0
	beqz	$a0, .LBB2_30
# %bb.29:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $zero
	b	.LBB2_43
.LBB2_30:                               #   in Loop: Header=BB2_2 Depth=1
	ld.hu	$a0, $sp, 296
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB2_33
# %bb.31:                               #   in Loop: Header=BB2_2 Depth=1
	bnez	$a0, .LBB2_37
# %bb.32:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 240
	st.w	$zero, $sp, 248
	st.w	$zero, $a0, 0
	b	.LBB2_42
.LBB2_33:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$s6, $sp, 240
	ld.d	$s8, $sp, 304
	st.w	$zero, $sp, 248
	st.w	$zero, $s6, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 252
	addi.w	$a1, $a0, 1
	beq	$a1, $a2, .LBB2_40
# %bb.34:                               #   in Loop: Header=BB2_2 Depth=1
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, -1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.35:                               # %.noexc
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	blez	$a0, .LBB2_38
# %bb.36:                               # %._crit_edge.thread.i.i
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 248
	b	.LBB2_39
.LBB2_37:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $zero
	lu12i.w	$a0, -524176
	ori	$s8, $a0, 87
	b	.LBB2_43
.LBB2_38:                               #   in Loop: Header=BB2_2 Depth=1
	move	$a1, $zero
.LBB2_39:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $sp, 240
	slli.d	$a1, $a1, 2
	stx.w	$zero, $s0, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $sp, 252
	move	$s6, $s0
	.p2align	4, , 16
.LBB2_40:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $s8, 0
	addi.d	$s8, $s8, 4
	addi.d	$a1, $s6, 4
	st.w	$a2, $s6, 0
	move	$s6, $a1
	bnez	$a2, .LBB2_40
# %bb.41:                               # %_ZN11CStringBaseIwEaSEPKw.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	st.w	$a0, $sp, 248
.LBB2_42:                               #   in Loop: Header=BB2_2 Depth=1
	ori	$s0, $zero, 1
	move	$s8, $s4
.LBB2_43:                               #   in Loop: Header=BB2_2 Depth=1
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.44:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit314
                                        #   in Loop: Header=BB2_2 Depth=1
	beqz	$s0, .LBB2_59
# %bb.45:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 64
	st.w	$zero, $sp, 296
.Ltmp30:                                # EH_LABEL
	ori	$a2, $zero, 6
	addi.d	$a3, $sp, 296
	move	$a0, $fp
	move	$a1, $s3
	jirl	$ra, $a4, 0
.Ltmp31:                                # EH_LABEL
# %bb.46:                               #   in Loop: Header=BB2_2 Depth=1
	beqz	$a0, .LBB2_48
# %bb.47:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $zero
	move	$s8, $a0
	b	.LBB2_54
.LBB2_48:                               #   in Loop: Header=BB2_2 Depth=1
	ld.hu	$a0, $sp, 296
	beqz	$a0, .LBB2_51
# %bb.49:                               #   in Loop: Header=BB2_2 Depth=1
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_53
# %bb.50:                               #   in Loop: Header=BB2_2 Depth=1
	ld.hu	$a0, $sp, 304
	sltu	$a0, $zero, $a0
	b	.LBB2_52
.LBB2_51:                               #   in Loop: Header=BB2_2 Depth=1
	move	$a0, $zero
.LBB2_52:                               # %.sink.split561
                                        #   in Loop: Header=BB2_2 Depth=1
	st.b	$a0, $sp, 122
	ori	$s0, $zero, 1
	b	.LBB2_54
.LBB2_53:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $zero
	lu12i.w	$a0, -524176
	ori	$s8, $a0, 87
.LBB2_54:                               #   in Loop: Header=BB2_2 Depth=1
.Ltmp36:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.55:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit317
                                        #   in Loop: Header=BB2_2 Depth=1
	beqz	$s0, .LBB2_59
# %bb.56:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 64
	st.w	$zero, $sp, 296
.Ltmp39:                                # EH_LABEL
	ori	$a2, $zero, 40
	addi.d	$a3, $sp, 296
	move	$a0, $fp
	move	$a1, $s3
	jirl	$ra, $a4, 0
.Ltmp40:                                # EH_LABEL
# %bb.57:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s4, $a0
	beqz	$a0, .LBB2_60
# %bb.58:                               # %.critedge301
                                        #   in Loop: Header=BB2_2 Depth=1
.Ltmp45:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
	b	.LBB2_74
.LBB2_59:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $zero
	move	$s4, $s8
	b	.LBB2_75
.LBB2_60:                               #   in Loop: Header=BB2_2 Depth=1
	ld.hu	$a0, $sp, 296
	ld.w	$a1, $sp, 304
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.b	$a2, $a2, 248
	addi.d	$a0, $a0, -19
	sltui	$a0, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	st.b	$a0, $sp, 123
.Ltmp48:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.61:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 64
	st.d	$zero, $sp, 168
	st.w	$zero, $sp, 296
.Ltmp51:                                # EH_LABEL
	ori	$a2, $zero, 12
	addi.d	$a3, $sp, 296
	move	$a0, $fp
	move	$a1, $s3
	jirl	$ra, $a4, 0
.Ltmp52:                                # EH_LABEL
# %bb.62:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s4, $a0
	bnez	$a0, .LBB2_68
# %bb.63:                               #   in Loop: Header=BB2_2 Depth=1
	ld.hu	$a0, $sp, 296
	beqz	$a0, .LBB2_66
# %bb.64:                               #   in Loop: Header=BB2_2 Depth=1
	ori	$a1, $zero, 64
	bne	$a0, $a1, .LBB2_67
# %bb.65:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 304
	st.d	$a0, $sp, 168
.LBB2_66:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s4, $zero
	b	.LBB2_68
.LBB2_67:                               #   in Loop: Header=BB2_2 Depth=1
	lu12i.w	$a0, -524176
	ori	$s4, $a0, 87
.LBB2_68:                               #   in Loop: Header=BB2_2 Depth=1
.Ltmp57:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.69:                               #   in Loop: Header=BB2_2 Depth=1
	bnez	$s4, .LBB2_74
# %bb.70:                               #   in Loop: Header=BB2_2 Depth=1
.Ltmp60:                                # EH_LABEL
	ori	$a2, $zero, 11
	move	$a0, $fp
	move	$a1, $s3
	addi.d	$a3, $sp, 176
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL7GetTimeEP22IArchiveUpdateCallbackijR9_FILETIME)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.71:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s4, $a0
	bnez	$a0, .LBB2_74
# %bb.72:                               #   in Loop: Header=BB2_2 Depth=1
.Ltmp63:                                # EH_LABEL
	ori	$a2, $zero, 10
	move	$a0, $fp
	move	$a1, $s3
	addi.d	$a3, $sp, 184
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZipL7GetTimeEP22IArchiveUpdateCallbackijR9_FILETIME)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.73:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s4, $a0
	beqz	$a0, .LBB2_106
.LBB2_74:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit323
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $zero
.LBB2_75:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 240
	beqz	$a0, .LBB2_77
# %bb.76:                               #   in Loop: Header=BB2_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_77:                               # %_ZN11CStringBaseIwED2Ev.exit324
                                        #   in Loop: Header=BB2_2 Depth=1
	beqz	$s0, .LBB2_83
# %bb.78:                               # %_ZN11CStringBaseIwED2Ev.exit324._crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.w	$a0, $sp, 232
.LBB2_79:                               #   in Loop: Header=BB2_2 Depth=1
	beqz	$a0, .LBB2_84
# %bb.80:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 64
	st.w	$zero, $sp, 296
.Ltmp89:                                # EH_LABEL
	ori	$a2, $zero, 7
	addi.d	$a3, $sp, 296
	move	$a0, $fp
	move	$a1, $s3
	jirl	$ra, $a4, 0
.Ltmp90:                                # EH_LABEL
# %bb.81:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s8, $a0
	beqz	$a0, .LBB2_85
# %bb.82:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $zero
	b	.LBB2_88
.LBB2_83:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s6, $zero
	move	$s0, $s1
	b	.LBB2_102
.LBB2_84:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s8, $s4
	b	.LBB2_91
.LBB2_85:                               #   in Loop: Header=BB2_2 Depth=1
	ld.hu	$a0, $sp, 296
	ori	$a1, $zero, 21
	bne	$a0, $a1, .LBB2_87
# %bb.86:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 304
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s0, $zero, 1
	move	$s8, $s4
	b	.LBB2_88
.LBB2_87:                               #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $zero
	lu12i.w	$a0, -524176
	ori	$s8, $a0, 87
.LBB2_88:                               #   in Loop: Header=BB2_2 Depth=1
.Ltmp95:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.89:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit327
                                        #   in Loop: Header=BB2_2 Depth=1
	beqz	$s0, .LBB2_100
# %bb.90:                               #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 144
.LBB2_91:                               #   in Loop: Header=BB2_2 Depth=1
.Ltmp98:                                # EH_LABEL
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.92:                               # %.noexc328
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$s4, $a0
	vld	$vr0, $sp, 136
	vld	$vr1, $sp, 120
	ld.wu	$s0, $sp, 160
	vst	$vr0, $a0, 16
	vst	$vr1, $a0, 0
	addi.d	$s6, $s0, 1
	slli.d	$a0, $s6, 31
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $s4, 32
	bgez	$a0, .LBB2_94
# %bb.93:                               #   in Loop: Header=BB2_2 Depth=1
	move	$a0, $zero
	b	.LBB2_96
.LBB2_94:                               #   in Loop: Header=BB2_2 Depth=1
	addi.w	$a0, $s6, 0
.Ltmp100:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.95:                               # %.noexc.i
                                        #   in Loop: Header=BB2_2 Depth=1
	st.d	$a0, $s4, 32
	st.b	$zero, $a0, 0
	st.w	$s6, $s4, 44
.LBB2_96:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i.i
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a1, $sp, 152
	.p2align	4, , 16
.LBB2_97:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB2_97
# %bb.98:                               #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a1, $sp, 168
	ld.d	$a0, $a1, 0
	vld	$vr0, $a1, 8
	st.w	$s0, $s4, 40
	st.d	$a0, $s4, 48
	vst	$vr0, $s4, 56
.Ltmp103:                               # EH_LABEL
	addi.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.99:                               # %_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE3AddERKS2_.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.w	$a0, $sp, 276
	ld.d	$a1, $sp, 280
	slli.d	$a2, $a0, 3
	stx.d	$s4, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 276
	ori	$s6, $zero, 1
	b	.LBB2_101
.LBB2_100:                              #   in Loop: Header=BB2_2 Depth=1
	move	$s6, $zero
.LBB2_101:                              # %.critedge311
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $s1
	move	$s4, $s8
	.p2align	4, , 16
.LBB2_102:                              # %.critedge311
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB2_104
# %bb.103:                              #   in Loop: Header=BB2_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_104:                              # %_ZN8NArchive4NZip11CUpdateItemD2Ev.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	beqz	$s6, .LBB2_158
# %bb.105:                              #   in Loop: Header=BB2_2 Depth=1
	addi.w	$s3, $s3, 1
	bne	$s3, $s2, .LBB2_2
	b	.LBB2_140
.LBB2_106:                              #   in Loop: Header=BB2_2 Depth=1
	ld.w	$a0, $sp, 172
	ld.w	$a1, $sp, 168
	or	$a0, $a0, $a1
	st.d	$zero, $sp, 296
	beqz	$a0, .LBB2_109
# %bb.107:                              #   in Loop: Header=BB2_2 Depth=1
.Ltmp66:                                # EH_LABEL
	addi.d	$a1, $sp, 296
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(FileTimeToLocalFileTime)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.108:                              #   in Loop: Header=BB2_2 Depth=1
	beqz	$a0, .LBB2_137
.LBB2_109:                              #   in Loop: Header=BB2_2 Depth=1
.Ltmp68:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 140
	pcaddu18i	$ra, %call36(_ZN8NWindows5NTime17FileTimeToDosTimeERK9_FILETIMERj)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.110:                              #   in Loop: Header=BB2_2 Depth=1
.Ltmp71:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 240
	pcaddu18i	$ra, %call36(_ZN8NArchive9NItemName13MakeLegalNameERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.111:                              #   in Loop: Header=BB2_2 Depth=1
.Ltmp74:                                # EH_LABEL
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 296
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.112:                              #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 296
	beqz	$a0, .LBB2_114
# %bb.113:                              #   in Loop: Header=BB2_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_114:                              # %_ZN11CStringBaseIwED2Ev.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.w	$a1, $sp, 248
	ld.bu	$a0, $sp, 122
	beqz	$a1, .LBB2_117
# %bb.115:                              #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a2, $sp, 240
	alsl.d	$a1, $a1, $a2, 2
	ld.w	$a1, $a1, -4
	ori	$a2, $zero, 47
	bne	$a1, $a2, .LBB2_117
# %bb.116:                              #   in Loop: Header=BB2_2 Depth=1
	bnez	$a0, .LBB2_119
	b	.LBB2_137
.LBB2_117:                              #   in Loop: Header=BB2_2 Depth=1
	beqz	$a0, .LBB2_119
# %bb.118:                              #   in Loop: Header=BB2_2 Depth=1
.Ltmp77:                                # EH_LABEL
	addi.d	$a0, $sp, 240
	ori	$a1, $zero, 47
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEw)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
.LBB2_119:                              # %.critedge303
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 249
	bnez	$a0, .LBB2_121
# %bb.120:                              # %.critedge303
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.b	$a0, $a0, 250
	andi	$a0, $a0, 1
	bnez	$a0, .LBB2_127
.LBB2_121:                              #   in Loop: Header=BB2_2 Depth=1
.Ltmp80:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 240
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.122:                              #   in Loop: Header=BB2_2 Depth=1
.Ltmp83:                                # EH_LABEL
	addi.d	$a1, $sp, 296
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIcEaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.123:                              #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 296
	beqz	$a0, .LBB2_125
# %bb.124:                              #   in Loop: Header=BB2_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_125:                              # %_ZN11CStringBaseIcED2Ev.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 249
	beqz	$a0, .LBB2_127
# %bb.126:                              #   in Loop: Header=BB2_2 Depth=1
	move	$s4, $s8
	b	.LBB2_136
.LBB2_127:                              # %.critedge309
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.w	$a0, $sp, 248
	blez	$a0, .LBB2_132
# %bb.128:                              # %.lr.ph
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$a2, $sp, 240
	move	$a1, $zero
	move	$a3, $a0
.LBB2_129:                              #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, 0
	ori	$a5, $zero, 127
	bltu	$a5, $a4, .LBB2_133
# %bb.130:                              #   in Loop: Header=BB2_129 Depth=2
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB2_129
# %bb.131:                              #   in Loop: Header=BB2_2 Depth=1
	move	$a1, $a0
	b	.LBB2_133
.LBB2_132:                              #   in Loop: Header=BB2_2 Depth=1
	move	$a1, $zero
.LBB2_133:                              # %.critedge
                                        #   in Loop: Header=BB2_2 Depth=1
	xor	$a0, $a1, $a0
	sltu	$a0, $zero, $a0
	st.b	$a0, $sp, 124
.Ltmp86:                                # EH_LABEL
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 152
	pcaddu18i	$ra, %call36(_Z20ConvertUnicodeToUTF8RK11CStringBaseIwERS_IcE)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.134:                              #   in Loop: Header=BB2_2 Depth=1
	beqz	$a0, .LBB2_137
# %bb.135:                              #   in Loop: Header=BB2_2 Depth=1
	sltui	$a0, $s4, 1
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s8, $a0
	or	$s4, $a0, $a1
.LBB2_136:                              #   in Loop: Header=BB2_2 Depth=1
	ld.w	$a0, $sp, 160
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB2_138
.LBB2_137:                              #   in Loop: Header=BB2_2 Depth=1
	move	$s0, $zero
	lu12i.w	$a0, -524176
	ori	$s4, $a0, 87
	b	.LBB2_75
.LBB2_138:                              #   in Loop: Header=BB2_2 Depth=1
	st.w	$s3, $sp, 132
	ori	$s0, $zero, 1
	b	.LBB2_75
.LBB2_139:
	move	$s0, $zero
                                        # implicit-def: $r27
.LBB2_140:                              # %.thread390
	st.d	$zero, $sp, 232
	beqz	$fp, .LBB2_142
# %bb.141:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
.Ltmp106:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp107:                               # EH_LABEL
.LBB2_142:                              # %_ZN9CMyComPtrI22IArchiveUpdateCallbackEC2EPS0_.exit
	ld.d	$a0, $fp, 0
	ld.d	$a3, $a0, 0
.Ltmp109:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(IID_ICryptoGetTextPassword2)
	ld.d	$a1, $a0, %got_pc_lo12(IID_ICryptoGetTextPassword2)
	addi.d	$a2, $sp, 232
	move	$a0, $fp
	jirl	$ra, $a3, 0
.Ltmp110:                               # EH_LABEL
# %bb.143:                              # %_ZNK9CMyComPtrI22IArchiveUpdateCallbackE14QueryInterfaceI23ICryptoGetTextPassword2EEiRK4GUIDPPT_.exit
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
.Ltmp115:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp116:                               # EH_LABEL
# %bb.144:                              # %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 128
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 144
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIhE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIhE+16)
	st.d	$a0, $sp, 120
	vst	$vr0, $sp, 152
.Ltmp118:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.145:
	move	$s2, $a0
	st.d	$a0, $sp, 152
	st.w	$zero, $a0, 0
	ori	$s1, $zero, 4
	st.w	$s1, $sp, 164
	st.b	$zero, $sp, 180
	st.b	$zero, $sp, 204
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 208
.Ltmp121:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp122:                               # EH_LABEL
# %bb.146:
	st.d	$a1, $sp, 208
	ld.d	$a0, $sp, 232
	st.b	$zero, $a1, 0
	st.w	$s1, $sp, 220
	ori	$a1, $zero, 768
	st.h	$a1, $sp, 224
	beqz	$a0, .LBB2_162
# %bb.147:
	st.d	$zero, $sp, 112
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
.Ltmp124:                               # EH_LABEL
	addi.d	$a1, $sp, 260
	addi.d	$a2, $sp, 112
	jirl	$ra, $a3, 0
.Ltmp125:                               # EH_LABEL
# %bb.148:
	move	$s2, $a0
	beqz	$a0, .LBB2_179
# %bb.149:
	move	$s0, $zero
.LBB2_150:
	ld.d	$a0, $sp, 112
.Ltmp142:                               # EH_LABEL
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.151:                              # %_ZN10CMyComBSTRD2Ev.exit
	bnez	$s0, .LBB2_163
# %bb.152:
	ld.d	$a0, $sp, 208
	beqz	$a0, .LBB2_154
.LBB2_153:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_154:                              # %_ZN11CStringBaseIcED2Ev.exit.i
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB2_156
# %bb.155:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_156:                              # %_ZN8NArchive4NZip22CCompressionMethodModeD2Ev.exit
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	beqz	$a0, .LBB2_159
# %bb.157:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp158:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp159:                               # EH_LABEL
	b	.LBB2_159
.LBB2_158:
	move	$s2, $s4
.LBB2_159:                              # %.loopexit
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 264
.Ltmp161:                               # EH_LABEL
	addi.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp162:                               # EH_LABEL
# %bb.160:                              # %_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev.exit
	addi.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB2_161:
	addi.w	$a0, $s2, 0
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.LBB2_162:
	st.b	$zero, $sp, 204
.LBB2_163:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$s1, $a0, 208
	ld.w	$s0, $a0, 212
.Ltmp145:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
# %bb.164:
	slti	$a0, $s1, 0
	masknez	$a1, $s1, $a0
	ori	$a2, $zero, 5
	maskeqz	$a0, $a2, $a0
	or	$s1, $a0, $a1
	sltu	$a0, $zero, $s1
	slti	$a1, $s0, 0
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 136
	ld.w	$a3, $sp, 132
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$s0, $a0, $a1
	stx.b	$s0, $a2, $a3
	ld.w	$a0, $sp, 132
	andi	$s3, $s0, 255
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	beqz	$s3, .LBB2_167
# %bb.165:
.Ltmp147:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.166:                              # %_ZN13CRecordVectorIhE3AddEh.exit369
	ld.d	$a0, $sp, 136
	ld.w	$a1, $sp, 132
	stx.b	$zero, $a0, $a1
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
.LBB2_167:
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a2, $a7, 224
	ld.w	$a3, $a7, 216
	st.w	$a2, $sp, 172
	ld.w	$a1, $a7, 228
	ld.w	$a0, $a7, 232
	st.w	$a3, $sp, 188
	ld.b	$a4, $a7, 244
	st.w	$a1, $sp, 176
	st.w	$a0, $sp, 184
	ld.w	$a0, $a7, 220
	st.b	$a4, $sp, 180
	ld.w	$a5, $a7, 236
	ld.w	$a6, $a7, 252
	st.w	$a0, $sp, 168
	ld.w	$a4, $a7, 240
	st.w	$a5, $sp, 192
	st.w	$a6, $sp, 200
	ori	$a6, $zero, 13
	st.w	$a4, $sp, 196
	blt	$a6, $s3, .LBB2_172
# %bb.168:
	addi.d	$a4, $s3, -8
	ori	$a5, $zero, 2
	bltu	$a4, $a5, .LBB2_174
# %bb.169:
	ori	$a0, $zero, 12
	bne	$s3, $a0, .LBB2_248
# %bb.170:
	addi.w	$a0, $zero, -1
	beq	$a2, $a0, .LBB2_246
.LBB2_171:
	ld.w	$a1, $sp, 188
	bne	$a1, $a0, .LBB2_248
	b	.LBB2_247
.LBB2_172:
	ori	$a6, $zero, 98
	beq	$s3, $a6, .LBB2_186
# %bb.173:
	ori	$a4, $zero, 14
	bne	$s3, $a4, .LBB2_248
.LBB2_174:
	andi	$a4, $s0, 254
	ori	$a5, $zero, 8
	bne	$a4, $a5, .LBB2_182
# %bb.175:
	addi.w	$a3, $zero, -1
	bne	$a2, $a3, .LBB2_177
# %bb.176:
	ori	$a2, $zero, 8
	slt	$a2, $a2, $s1
	ori	$a4, $zero, 6
	slt	$a4, $a4, $s1
	ori	$a5, $zero, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 3
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 10
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	st.w	$a2, $sp, 172
.LBB2_177:
	bne	$a1, $a3, .LBB2_242
# %bb.178:
	ori	$a1, $zero, 8
	slt	$a1, $a1, $s1
	ori	$a2, $zero, 6
	slt	$a2, $a2, $s1
	ori	$a3, $zero, 32
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 64
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 128
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $sp, 176
	b	.LBB2_242
.LBB2_179:
	ld.w	$a0, $sp, 260
	sltu	$a1, $zero, $a0
	st.b	$a1, $sp, 204
	beqz	$a0, .LBB2_189
# %bb.180:
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a0, $a3, 245
	ld.b	$a1, $a3, 246
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $a1, $a0
	or	$s0, $a0, $a2
	ld.b	$a0, $a3, 247
	ld.d	$s3, $sp, 112
	andi	$a1, $s0, 1
	st.b	$a1, $sp, 224
	st.b	$a0, $sp, 225
	move	$a0, $s3
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 31
	addi.w	$s1, $s5, 0
	bgez	$a1, .LBB2_190
# %bb.181:
	move	$a0, $zero
	b	.LBB2_192
.LBB2_182:
	ori	$a2, $zero, 14
	bne	$s3, $a2, .LBB2_242
# %bb.183:
	addi.w	$a0, $zero, -1
	bne	$a3, $a0, .LBB2_230
# %bb.184:
	ori	$a2, $zero, 8
	bge	$a2, $s1, .LBB2_223
# %bb.185:
	lu12i.w	$a2, 16384
	b	.LBB2_229
.LBB2_186:
	ori	$a1, $zero, 1
	slt	$a2, $a1, $s1
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $s1, $a2
	addi.w	$a1, $zero, -1
	or	$a2, $a2, $a3
	beq	$a5, $a1, .LBB2_210
# %bb.187:
	beq	$a4, $a1, .LBB2_211
.LBB2_188:
	bne	$a0, $a1, .LBB2_248
	b	.LBB2_212
.LBB2_189:
	ori	$s0, $zero, 1
	move	$s2, $s4
	b	.LBB2_150
.LBB2_190:
	addi.w	$a0, $a0, 0
	slti	$a1, $s1, -1
	slli.d	$a0, $a0, 2
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
.Ltmp127:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.191:                              # %.noexc346
	st.w	$zero, $a0, 0
.LBB2_192:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i342
	move	$a1, $zero
	sltui	$a2, $s2, 1
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s4, $a2
	or	$s2, $a2, $a3
	.p2align	4, , 16
.LBB2_193:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $s3, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB2_193
# %bb.194:                              # %_ZN11CStringBaseIwEC2EPKw.exit
	blez	$s1, .LBB2_198
# %bb.195:                              # %.lr.ph.preheader.i
	bstrpick.d	$a1, $s5, 30, 0
	ori	$a2, $zero, 96
	move	$a3, $a0
	.p2align	4, , 16
.LBB2_196:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, -32
	bgeu	$a4, $a2, .LBB2_208
# %bb.197:                              #   in Loop: Header=BB2_196 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB2_196
	b	.LBB2_199
.LBB2_198:                              # %_ZN8NArchive4NZipL13IsAsciiStringERK11CStringBaseIwE.exit
	beqz	$a0, .LBB2_200
.LBB2_199:                              # %_ZN11CStringBaseIwED2Ev.exit347.thread399
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.b	$s0, $sp, 224
.LBB2_200:                              # %_ZN11CStringBaseIwED2Ev.exit347.thread
	andi	$a0, $s0, 1
	beqz	$a0, .LBB2_202
# %bb.201:                              # %_ZN11CStringBaseIwED2Ev.exit347.thread
	ld.w	$a0, $sp, 216
	ori	$a1, $zero, 99
	bltu	$a1, $a0, .LBB2_209
.LBB2_202:
	ld.d	$s3, $sp, 112
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $sp, 240
	move	$a0, $s3
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.w	$a0, $a0, 0
	addi.w	$s0, $s4, 1
	slti	$a0, $a0, -1
	slli.d	$a1, $s0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
.Ltmp130:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.203:                              # %.noexc354
	st.d	$a0, $sp, 240
	st.w	$zero, $a0, 0
	st.w	$s0, $sp, 252
	.p2align	4, , 16
.LBB2_204:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i350
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s3, 0
	addi.d	$s3, $s3, 4
	addi.d	$a2, $a0, 4
	st.w	$a1, $a0, 0
	move	$a0, $a2
	bnez	$a1, .LBB2_204
# %bb.205:
	st.w	$s4, $sp, 248
.Ltmp133:                               # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 240
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
# %bb.206:
	ld.d	$a0, $sp, 208
	st.w	$zero, $sp, 216
	st.b	$zero, $a0, 0
	ld.w	$a0, $sp, 304
	ld.w	$s0, $sp, 220
	addi.w	$s4, $a0, 1
	bne	$s4, $s0, .LBB2_213
# %bb.207:                              # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
	ld.d	$s3, $sp, 208
	b	.LBB2_258
.LBB2_208:                              # %_ZN11CStringBaseIwED2Ev.exit347
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_209:
	move	$s0, $zero
	lu12i.w	$a0, -524176
	ori	$s2, $a0, 87
	b	.LBB2_150
.LBB2_210:
	sltui	$a3, $a2, 8
	ori	$a5, $zero, 8
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a2, $a3
	or	$a3, $a3, $a5
	lu12i.w	$a5, 128
	sll.w	$a3, $a5, $a3
	st.w	$a3, $sp, 192
	bne	$a4, $a1, .LBB2_188
.LBB2_211:
	slti	$a3, $a2, 9
	ori	$a4, $zero, 9
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	addi.d	$a2, $a2, 3
	st.w	$a2, $sp, 196
	bne	$a0, $a1, .LBB2_248
.LBB2_212:
	ori	$a0, $zero, 6
	slt	$a0, $a0, $s1
	st.w	$a0, $sp, 168
	b	.LBB2_248
.LBB2_213:
.Ltmp136:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.214:                              # %.noexc361
	move	$s3, $a0
	ld.w	$a1, $sp, 216
	blez	$s0, .LBB2_257
# %bb.215:                              # %.preheader.i.i
	ld.d	$a0, $sp, 208
	blez	$a1, .LBB2_227
# %bb.216:                              # %iter.check
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB2_254
# %bb.217:                              # %iter.check
	sub.d	$a4, $s3, $a0
	ori	$a3, $zero, 32
	bltu	$a4, $a3, .LBB2_254
# %bb.218:                              # %vector.main.loop.iter.check
	bgeu	$a1, $a3, .LBB2_250
# %bb.219:
	move	$a2, $zero
.LBB2_220:                              # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s3, $a5
	add.d	$a5, $a0, $a5
.LBB2_221:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB2_221
# %bb.222:                              # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB2_254
	b	.LBB2_256
.LBB2_223:
	ori	$a2, $zero, 6
	bge	$a2, $s1, .LBB2_225
# %bb.224:
	lu12i.w	$a2, 8192
	b	.LBB2_229
.LBB2_225:
	ori	$a2, $zero, 4
	bge	$a2, $s1, .LBB2_228
# %bb.226:
	lu12i.w	$a2, 4096
	b	.LBB2_229
.LBB2_227:                              # %._crit_edge.i.i
	bnez	$a0, .LBB2_256
	b	.LBB2_257
.LBB2_228:
	ori	$a2, $zero, 2
	slt	$a2, $a2, $s1
	lu12i.w	$a3, 16
	masknez	$a3, $a3, $a2
	lu12i.w	$a4, 256
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
.LBB2_229:
	st.w	$a2, $sp, 188
.LBB2_230:
	bne	$a1, $a0, .LBB2_232
# %bb.231:
	ori	$a0, $zero, 6
	slt	$a0, $a0, $s1
	ori	$a1, $zero, 32
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 64
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 176
.LBB2_232:
	ld.d	$s0, $sp, 152
	st.w	$zero, $sp, 160
	st.w	$zero, $s0, 0
	ld.w	$s5, $sp, 164
	ori	$s4, $zero, 4
	bne	$s5, $s4, .LBB2_234
# %bb.233:
	move	$s2, $s0
	b	.LBB2_239
.LBB2_234:
.Ltmp150:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.235:                              # %.noexc377
	move	$s2, $a0
	blez	$s5, .LBB2_237
# %bb.236:                              # %._crit_edge.thread.i.i375
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 160
	b	.LBB2_238
.LBB2_237:
	move	$a0, $zero
.LBB2_238:
	st.d	$s2, $sp, 152
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 164
.LBB2_239:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i371.preheader
	slt	$a0, $s4, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.22)
	addi.d	$a2, $a2, %pc_lo12(.L.str.22)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	.p2align	4, , 16
.LBB2_240:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i371
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s2, 4
	st.w	$a1, $s2, 0
	move	$s2, $a2
	bnez	$a1, .LBB2_240
# %bb.241:                              # %_ZN11CStringBaseIwEaSEPKw.exit378
	ld.w	$a0, $sp, 168
	ori	$a1, $zero, 3
	st.w	$a1, $sp, 160
.LBB2_242:
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB2_244
# %bb.243:
	ori	$a0, $zero, 4
	slt	$a0, $a0, $s1
	st.w	$a0, $sp, 168
.LBB2_244:
	ori	$a0, $zero, 12
	bne	$s3, $a0, .LBB2_248
# %bb.245:                              # %._crit_edge
	ld.w	$a2, $sp, 172
	addi.w	$a0, $zero, -1
	bne	$a2, $a0, .LBB2_171
.LBB2_246:
	ori	$a1, $zero, 8
	slt	$a1, $a1, $s1
	ori	$a2, $zero, 6
	slt	$a2, $a2, $s1
	addi.d	$a2, $a2, 1
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $sp, 172
	ld.w	$a1, $sp, 188
	bne	$a1, $a0, .LBB2_248
.LBB2_247:
	ori	$a0, $zero, 4
	slt	$a0, $a0, $s1
	ori	$a1, $zero, 2
	slt	$a1, $a1, $s1
	lu12i.w	$a2, 24
	ori	$a2, $a2, 1696
	masknez	$a2, $a2, $a1
	lu12i.w	$a3, 122
	ori	$a3, $a3, 288
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	lu12i.w	$a2, 219
	ori	$a2, $a2, 2976
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.w	$a0, $sp, 188
.LBB2_248:
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 64
	addi.d	$a1, $a3, 64
	sltui	$a2, $a0, 1
	addi.d	$a0, $a3, 32
	masknez	$a3, $a1, $a2
.Ltmp152:                               # EH_LABEL
	addi.d	$a1, $sp, 264
	addi.d	$a4, $sp, 120
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.249:
	move	$s2, $a0
	ld.d	$a0, $sp, 208
	bnez	$a0, .LBB2_153
	b	.LBB2_154
.LBB2_250:                              # %vector.ph
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s3, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
.LBB2_251:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_251
# %bb.252:                              # %middle.block
	beq	$a2, $a1, .LBB2_256
# %bb.253:                              # %vec.epilog.iter.check
	bnez	$a3, .LBB2_220
.LBB2_254:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s3, $a2
	add.d	$a2, $a0, $a2
.LBB2_255:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB2_255
.LBB2_256:                              # %._crit_edge.thread.i.i359
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 216
.LBB2_257:
	st.d	$s3, $sp, 208
	stx.b	$zero, $s3, $a1
	st.w	$s4, $sp, 220
.LBB2_258:                              # %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
	ld.d	$a0, $sp, 296
	.p2align	4, , 16
.LBB2_259:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s3, 1
	st.b	$a1, $s3, 0
	move	$s3, $a2
	bnez	$a1, .LBB2_259
# %bb.260:
	ld.w	$a1, $sp, 304
	ld.d	$a0, $sp, 296
	st.w	$a1, $sp, 216
	beqz	$a0, .LBB2_262
# %bb.261:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_262:                              # %_ZN11CStringBaseIcED2Ev.exit362
	ld.d	$a0, $sp, 240
	beqz	$a0, .LBB2_264
# %bb.263:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_264:                              # %_ZN11CStringBaseIwED2Ev.exit363
	ori	$s0, $zero, 1
	b	.LBB2_150
.LBB2_265:
.Ltmp79:                                # EH_LABEL
	b	.LBB2_278
.LBB2_266:
.Ltmp85:                                # EH_LABEL
	b	.LBB2_270
.LBB2_267:
.Ltmp82:                                # EH_LABEL
	b	.LBB2_278
.LBB2_268:
.Ltmp88:                                # EH_LABEL
	b	.LBB2_278
.LBB2_269:
.Ltmp76:                                # EH_LABEL
.LBB2_270:
	ld.d	$a2, $sp, 296
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a2, .LBB2_326
# %bb.271:
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB2_326
.LBB2_272:
.Ltmp73:                                # EH_LABEL
	b	.LBB2_278
.LBB2_273:
.Ltmp70:                                # EH_LABEL
	b	.LBB2_278
.LBB2_274:
.Ltmp65:                                # EH_LABEL
	b	.LBB2_278
.LBB2_275:
.Ltmp138:                               # EH_LABEL
	ld.d	$a2, $sp, 296
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a2, .LBB2_280
# %bb.276:
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB2_280
.LBB2_277:
.Ltmp62:                                # EH_LABEL
.LBB2_278:                              # %.body
	move	$s0, $a1
	move	$s1, $a0
	b	.LBB2_326
.LBB2_279:
.Ltmp135:                               # EH_LABEL
	move	$s0, $a1
	move	$s1, $a0
.LBB2_280:                              # %_ZN11CStringBaseIcED2Ev.exit364
	ld.d	$a0, $sp, 240
	beqz	$a0, .LBB2_299
# %bb.281:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB2_299
.LBB2_282:
.Ltmp132:                               # EH_LABEL
	b	.LBB2_298
.LBB2_283:
.Ltmp23:                                # EH_LABEL
	b	.LBB2_312
.LBB2_284:
.Ltmp129:                               # EH_LABEL
	b	.LBB2_298
.LBB2_285:
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_286:
.Ltmp53:                                # EH_LABEL
	move	$s0, $a1
	move	$s1, $a0
.Ltmp54:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
	b	.LBB2_326
.LBB2_287:
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_288:
.Ltmp50:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_289:
.Ltmp47:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_290:
.Ltmp41:                                # EH_LABEL
	move	$s0, $a1
	move	$s1, $a0
.Ltmp42:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
	b	.LBB2_326
.LBB2_291:
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_292:
.Ltmp38:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_293:
.Ltmp32:                                # EH_LABEL
	move	$s0, $a1
	move	$s1, $a0
.Ltmp33:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
	b	.LBB2_326
.LBB2_294:
.Ltmp35:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_295:
.Ltmp160:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_296:
.Ltmp144:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_297:
.Ltmp126:                               # EH_LABEL
.LBB2_298:
	move	$s0, $a1
	move	$s1, $a0
.LBB2_299:
	ld.d	$a0, $sp, 112
.Ltmp139:                               # EH_LABEL
	pcaddu18i	$ra, %call36(SysFreeString)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
	b	.LBB2_316
.LBB2_300:
.Ltmp141:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_301:
.Ltmp108:                               # EH_LABEL
	move	$s0, $a1
	move	$s1, $a0
	b	.LBB2_317
.LBB2_302:
.Ltmp154:                               # EH_LABEL
	b	.LBB2_315
.LBB2_303:
.Ltmp102:                               # EH_LABEL
	move	$s0, $a1
	move	$s1, $a0
	ori	$a1, $zero, 72
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_333
.LBB2_304:                              # %_ZN11CStringBaseIwED2Ev.exit.i
.Ltmp123:                               # EH_LABEL
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB2_306
.LBB2_305:
.Ltmp120:                               # EH_LABEL
	move	$s0, $a1
	move	$s1, $a0
.LBB2_306:
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB2_317
.LBB2_307:
.Ltmp117:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_308:
.Ltmp111:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	ld.d	$a2, $a2, 16
	move	$s0, $a1
	move	$s1, $a0
.Ltmp112:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp113:                               # EH_LABEL
	b	.LBB2_317
.LBB2_309:
.Ltmp114:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_310:
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_311:
.Ltmp20:                                # EH_LABEL
.LBB2_312:
	move	$s0, $a1
	move	$s1, $a0
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
	b	.LBB2_326
.LBB2_313:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_314:
.Ltmp149:                               # EH_LABEL
.LBB2_315:
	move	$s0, $a1
	move	$s1, $a0
.LBB2_316:
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN8NArchive4NZip22CCompressionMethodModeD2Ev)
	jirl	$ra, $ra, 0
.LBB2_317:                              # %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit340
	ld.d	$a0, $sp, 232
	beqz	$a0, .LBB2_336
# %bb.318:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp155:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp156:                               # EH_LABEL
	b	.LBB2_336
.LBB2_319:
.Ltmp157:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_320:
.Ltmp163:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_321:
.Ltmp97:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_322:
.Ltmp91:                                # EH_LABEL
	move	$s0, $a1
	move	$s1, $a0
.Ltmp92:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
	b	.LBB2_333
.LBB2_323:
.Ltmp94:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_324:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_325:
.Ltmp11:                                # EH_LABEL
	move	$s0, $a1
	move	$s1, $a0
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
.LBB2_326:                              # %.body
	ld.d	$a0, $sp, 240
	beqz	$a0, .LBB2_333
# %bb.327:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB2_333
.LBB2_328:
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_329:
.Ltmp8:                                 # EH_LABEL
	b	.LBB2_332
.LBB2_330:
.Ltmp105:                               # EH_LABEL
	b	.LBB2_332
.LBB2_331:
.Ltmp5:                                 # EH_LABEL
.LBB2_332:                              # %.body330
	move	$s0, $a1
	move	$s1, $a0
.LBB2_333:                              # %.body330
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB2_336
# %bb.334:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB2_336
.LBB2_335:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a1
	move	$s1, $a0
.LBB2_336:
	addi.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev)
	jirl	$ra, $ra, 0
	addi.w	$fp, $s0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$fp, $a1, .LBB2_338
# %bb.337:
	ld.w	$s2, $a0, 0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	b	.LBB2_161
.LBB2_338:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524176
	ori	$s2, $a0, 14
	b	.LBB2_161
.Lfunc_end2:
	.size	_ZN8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback, .Lfunc_end2-_ZN8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
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
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp21-.Ltmp19                #   Call between .Ltmp19 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp27-.Ltmp22                #   Call between .Ltmp22 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin0          #     jumps to .Ltmp59
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp89-.Ltmp64                #   Call between .Ltmp64 and .Ltmp89
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin0          #     jumps to .Ltmp91
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp95-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin0          #     jumps to .Ltmp97
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp98-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp105-.Lfunc_begin0         #     jumps to .Ltmp105
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp100-.Lfunc_begin0         # >> Call Site 24 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin0         #     jumps to .Ltmp102
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp103-.Lfunc_begin0         # >> Call Site 25 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin0         #     jumps to .Ltmp105
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp104-.Lfunc_begin0         # >> Call Site 26 <<
	.uleb128 .Ltmp66-.Ltmp104               #   Call between .Ltmp104 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp69-.Ltmp66                #   Call between .Ltmp66 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp74-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin0          #     jumps to .Ltmp76
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp75-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp77-.Ltmp75                #   Call between .Ltmp75 and .Ltmp77
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin0          #     jumps to .Ltmp79
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin0          #     jumps to .Ltmp85
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp84-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp86-.Ltmp84                #   Call between .Ltmp84 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin0          #     jumps to .Ltmp88
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp106-.Lfunc_begin0         # >> Call Site 36 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin0         #     jumps to .Ltmp108
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp109-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp115-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin0         #     jumps to .Ltmp117
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp118-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin0         #     jumps to .Ltmp120
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp121-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin0         #     jumps to .Ltmp123
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp124-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin0         #     jumps to .Ltmp126
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin0         #     jumps to .Ltmp144
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp143-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp158-.Ltmp143              #   Call between .Ltmp143 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin0         #     jumps to .Ltmp160
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp161-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin0         #     jumps to .Ltmp163
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp162-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp145-.Ltmp162              #   Call between .Ltmp162 and .Ltmp145
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp148-.Ltmp145              #   Call between .Ltmp145 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin0         #     jumps to .Ltmp149
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp148-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp127-.Ltmp148              #   Call between .Ltmp148 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin0         #     jumps to .Ltmp129
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp128-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp130-.Ltmp128              #   Call between .Ltmp128 and .Ltmp130
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin0         #     jumps to .Ltmp132
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp133-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin0         #     jumps to .Ltmp135
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp134-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp136-.Ltmp134              #   Call between .Ltmp134 and .Ltmp136
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin0         #     jumps to .Ltmp138
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp150-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp154-.Lfunc_begin0         #     jumps to .Ltmp154
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp151-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin0         #     jumps to .Ltmp154
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp153-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp54-.Ltmp153               #   Call between .Ltmp153 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 59 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin0          #     jumps to .Ltmp56
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 60 <<
	.uleb128 .Ltmp42-.Ltmp55                #   Call between .Ltmp55 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 61 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 62 <<
	.uleb128 .Ltmp33-.Ltmp43                #   Call between .Ltmp43 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 63 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 64 <<
	.uleb128 .Ltmp139-.Ltmp34               #   Call between .Ltmp34 and .Ltmp139
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin0         # >> Call Site 65 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin0         #     jumps to .Ltmp141
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp140-.Lfunc_begin0         # >> Call Site 66 <<
	.uleb128 .Ltmp112-.Ltmp140              #   Call between .Ltmp140 and .Ltmp112
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 67 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin0         #     jumps to .Ltmp114
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp113-.Lfunc_begin0         # >> Call Site 68 <<
	.uleb128 .Ltmp24-.Ltmp113               #   Call between .Ltmp113 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 69 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 70 <<
	.uleb128 .Ltmp155-.Ltmp25               #   Call between .Ltmp25 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin0         # >> Call Site 71 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin0         #     jumps to .Ltmp157
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp156-.Lfunc_begin0         # >> Call Site 72 <<
	.uleb128 .Ltmp92-.Ltmp156               #   Call between .Ltmp156 and .Ltmp92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin0          # >> Call Site 73 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin0          #     jumps to .Ltmp94
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp93-.Lfunc_begin0          # >> Call Site 74 <<
	.uleb128 .Ltmp12-.Ltmp93                #   Call between .Ltmp93 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 75 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 76 <<
	.uleb128 .Lfunc_end2-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp164:                               # TypeInfo 2
	.word	.L_ZTI16CSystemException.DW.stub-.Ltmp164
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN8NArchive4NZipL7GetTimeEP22IArchiveUpdateCallbackijR9_FILETIME
	.type	_ZN8NArchive4NZipL7GetTimeEP22IArchiveUpdateCallbackijR9_FILETIME,@function
_ZN8NArchive4NZipL7GetTimeEP22IArchiveUpdateCallbackijR9_FILETIME: # @_ZN8NArchive4NZipL7GetTimeEP22IArchiveUpdateCallbackijR9_FILETIME
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a3
	st.d	$zero, $a3, 0
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a3, 64
	st.w	$zero, $sp, 8
.Ltmp165:                               # EH_LABEL
	addi.d	$a3, $sp, 8
	jirl	$ra, $a4, 0
.Ltmp166:                               # EH_LABEL
# %bb.1:
	move	$s0, $a0
	bnez	$a0, .LBB3_7
# %bb.2:
	ld.hu	$a0, $sp, 8
	beqz	$a0, .LBB3_5
# %bb.3:
	ori	$a1, $zero, 64
	bne	$a0, $a1, .LBB3_6
# %bb.4:
	ld.d	$a0, $sp, 16
	st.d	$a0, $fp, 0
.LBB3_5:
	move	$s0, $zero
	b	.LBB3_7
.LBB3_6:
	lu12i.w	$a0, -524176
	ori	$s0, $a0, 87
.LBB3_7:
.Ltmp171:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.8:                                # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit14
	move	$a0, $s0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_9:
.Ltmp173:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_10:
.Ltmp167:                               # EH_LABEL
	move	$fp, $a0
.Ltmp168:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.11:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_12:
.Ltmp170:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN8NArchive4NZipL7GetTimeEP22IArchiveUpdateCallbackijR9_FILETIME, .Lfunc_end3-_ZN8NArchive4NZipL7GetTimeEP22IArchiveUpdateCallbackijR9_FILETIME
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
	.uleb128 .Ltmp165-.Lfunc_begin1         # >> Call Site 1 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin1         #     jumps to .Ltmp173
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp172-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp168-.Ltmp172              #   Call between .Ltmp172 and .Ltmp168
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp169-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Lfunc_end3-.Ltmp169           #   Call between .Ltmp169 and .Lfunc_end3
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
	.section	.text._ZN11CStringBaseIwEaSERKS0_,"axG",@progbits,_ZN11CStringBaseIwEaSERKS0_,comdat
	.weak	_ZN11CStringBaseIwEaSERKS0_     # -- Begin function _ZN11CStringBaseIwEaSERKS0_
	.p2align	5
	.type	_ZN11CStringBaseIwEaSERKS0_,@function
_ZN11CStringBaseIwEaSERKS0_:            # @_ZN11CStringBaseIwEaSERKS0_
	.cfi_startproc
# %bb.0:
	beq	$a1, $a0, .LBB4_10
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
	bne	$s1, $s4, .LBB4_3
# %bb.2:
	move	$fp, $s0
	b	.LBB4_7
.LBB4_3:
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
	blez	$s4, .LBB4_5
# %bb.4:                                # %._crit_edge.thread.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.w	$a1, $s3, 8
	b	.LBB4_6
.LBB4_5:
	move	$a1, $zero
	move	$a0, $s3
.LBB4_6:
	st.d	$fp, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$zero, $fp, $a1
	st.w	$s1, $a0, 12
	move	$a1, $s2
.LBB4_7:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
	ld.d	$a2, $a1, 0
	.p2align	4, , 16
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $fp, 4
	st.w	$a3, $fp, 0
	move	$fp, $a4
	bnez	$a3, .LBB4_8
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
.LBB4_10:
	ret
.Lfunc_end4:
	.size	_ZN11CStringBaseIwEaSERKS0_, .Lfunc_end4-_ZN11CStringBaseIwEaSERKS0_
	.cfi_endproc
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	ld.w	$s0, $a0, 8
	ld.w	$s4, $a0, 12
	nor	$a2, $s0, $zero
	add.w	$a2, $s4, $a2
	bgtz	$a2, .LBB5_15
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
	ori	$a5, $zero, 1
	sub.d	$a2, $a5, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	add.w	$a2, $a2, $s4
	addi.w	$s1, $a2, 1
	beq	$s1, $s4, .LBB5_15
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
	blez	$s4, .LBB5_11
# %bb.3:                                # %.preheader.i.i
	ld.d	$a0, $s3, 0
	blez	$s0, .LBB5_12
# %bb.4:                                # %.lr.ph.i.i
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s0, $a2, .LBB5_9
# %bb.5:                                # %.lr.ph.i.i
	sub.d	$a2, $fp, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB5_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a1, $s0, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $fp, 16
	addi.d	$a3, $a0, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB5_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_7
# %bb.8:                                # %middle.block
	beq	$a1, $s0, .LBB5_13
.LBB5_9:                                # %scalar.ph.preheader
	sub.d	$a2, $s0, $a1
	alsl.d	$a3, $a1, $fp, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB5_10:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB5_10
	b	.LBB5_13
.LBB5_11:
	move	$a2, $s3
	move	$a1, $s2
	b	.LBB5_14
.LBB5_12:                               # %._crit_edge.i.i
	move	$a2, $s3
	move	$a1, $s2
	beqz	$a0, .LBB5_14
.LBB5_13:                               # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a2, $s3
	ld.w	$s0, $s3, 8
.LBB5_14:
	move	$a0, $a2
	st.d	$fp, $a2, 0
	slli.d	$a2, $s0, 2
	stx.w	$zero, $fp, $a2
	st.w	$s1, $a0, 12
.LBB5_15:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	slli.d	$a3, $s0, 2
	stx.w	$a1, $a2, $a3
	addi.w	$a1, $s0, 1
	st.w	$a1, $a0, 8
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a2, $a1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end5:
	.size	_ZN11CStringBaseIwEpLEw, .Lfunc_end5-_ZN11CStringBaseIwEpLEw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11CStringBaseIcEaSERKS0_,"axG",@progbits,_ZN11CStringBaseIcEaSERKS0_,comdat
	.weak	_ZN11CStringBaseIcEaSERKS0_     # -- Begin function _ZN11CStringBaseIcEaSERKS0_
	.p2align	5
	.type	_ZN11CStringBaseIcEaSERKS0_,@function
_ZN11CStringBaseIcEaSERKS0_:            # @_ZN11CStringBaseIcEaSERKS0_
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
	beq	$a1, $a0, .LBB6_24
# %bb.1:
	move	$s0, $a1
	ld.d	$a0, $fp, 0
	st.w	$zero, $fp, 8
	st.b	$zero, $a0, 0
	ld.w	$a0, $a1, 8
	ld.w	$s3, $fp, 12
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB6_3
# %bb.2:                                # %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge
	ld.d	$s1, $fp, 0
	b	.LBB6_21
.LBB6_3:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
	move	$s1, $a0
	blez	$s3, .LBB6_20
# %bb.4:                                # %.preheader.i
	ld.d	$a0, $fp, 0
	blez	$a1, .LBB6_12
# %bb.5:                                # %iter.check
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a1, $a3, .LBB6_17
# %bb.6:                                # %iter.check
	sub.d	$a4, $s1, $a0
	ori	$a3, $zero, 32
	bltu	$a4, $a3, .LBB6_17
# %bb.7:                                # %vector.main.loop.iter.check
	bgeu	$a1, $a3, .LBB6_13
# %bb.8:
	move	$a2, $zero
.LBB6_9:                                # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	sub.d	$a3, $a5, $a2
	add.d	$a4, $s1, $a5
	add.d	$a5, $a0, $a5
	.p2align	4, , 16
.LBB6_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB6_10
# %bb.11:                               # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB6_17
	b	.LBB6_19
.LBB6_12:                               # %._crit_edge.i
	bnez	$a0, .LBB6_19
	b	.LBB6_20
.LBB6_13:                               # %vector.ph
	andi	$a3, $a1, 16
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $s1, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB6_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_14
# %bb.15:                               # %middle.block
	beq	$a2, $a1, .LBB6_19
# %bb.16:                               # %vec.epilog.iter.check
	bnez	$a3, .LBB6_9
.LBB6_17:                               # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a3, $s1, $a2
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB6_18:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB6_18
.LBB6_19:                               # %._crit_edge.thread.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 8
.LBB6_20:
	st.d	$s1, $fp, 0
	stx.b	$zero, $s1, $a1
	st.w	$s2, $fp, 12
.LBB6_21:                               # %_ZN11CStringBaseIcE11SetCapacityEi.exit
	ld.d	$a0, $s0, 0
	.p2align	4, , 16
.LBB6_22:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s1, 1
	st.b	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB6_22
# %bb.23:                               # %_Z12MyStringCopyIcEPT_S1_PKS0_.exit
	ld.w	$a0, $s0, 8
	st.w	$a0, $fp, 8
.LBB6_24:
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	_ZN11CStringBaseIcEaSERKS0_, .Lfunc_end6-_ZN11CStringBaseIcEaSERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NZip22CCompressionMethodModeD2Ev,"axG",@progbits,_ZN8NArchive4NZip22CCompressionMethodModeD2Ev,comdat
	.weak	_ZN8NArchive4NZip22CCompressionMethodModeD2Ev # -- Begin function _ZN8NArchive4NZip22CCompressionMethodModeD2Ev
	.p2align	5
	.type	_ZN8NArchive4NZip22CCompressionMethodModeD2Ev,@function
_ZN8NArchive4NZip22CCompressionMethodModeD2Ev: # @_ZN8NArchive4NZip22CCompressionMethodModeD2Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 88
	beqz	$a0, .LBB7_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB7_2:                                # %_ZN11CStringBaseIcED2Ev.exit
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB7_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB7_4:                                # %_ZN11CStringBaseIwED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.Lfunc_end7:
	.size	_ZN8NArchive4NZip22CCompressionMethodModeD2Ev, .Lfunc_end7-_ZN8NArchive4NZip22CCompressionMethodModeD2Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev,@function
_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev: # @_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE+16)
	st.d	$a0, $fp, 0
.Ltmp174:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB8_2:
.Ltmp176:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev, .Lfunc_end8-_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp174-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin2         #     jumps to .Ltmp176
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp175-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Lfunc_end8-.Ltmp175           #   Call between .Ltmp175 and .Lfunc_end8
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
	.globl	_ZThn8_N8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback # -- Begin function _ZThn8_N8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.p2align	5
	.type	_ZThn8_N8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback,@function
_ZThn8_N8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback: # @_ZThn8_N8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback)
	jr	$t8
.Lfunc_end9:
	.size	_ZThn8_N8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback, .Lfunc_end9-_ZThn8_N8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi # -- Begin function _ZN8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
	.p2align	5
	.type	_ZN8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi,@function
_ZN8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi: # @_ZN8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -288
	.cfi_def_cfa_offset 288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
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
	move	$s2, $a3
	move	$s4, $a2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN8NWindows7NSystem21GetNumberOfProcessorsEv)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$a0, $fp, 252
	addi.w	$s1, $zero, -1
	st.d	$s1, $fp, 208
	st.d	$s1, $fp, 216
	st.d	$s1, $fp, 224
	st.d	$s1, $fp, 232
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	lu32i.d	$s1, 0
	lu52i.d	$a0, $s1, 48
	st.d	$a0, $fp, 240
	st.h	$zero, $fp, 248
	st.b	$zero, $fp, 250
	pcaddu18i	$ra, %call36(_ZN8NWindows7NSystem21GetNumberOfProcessorsEv)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 252
	blez	$s2, .LBB10_304
# %bb.1:                                # %.lr.ph
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	move	$s3, $zero
	addi.d	$a0, $fp, 252
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 208
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 248
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 249
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 250
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a0, 5
	ori	$a0, $a0, 769
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 219
	ori	$a0, $a0, 2976
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
                                        # implicit-def: $r23
	.p2align	4, , 16
.LBB10_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_6 Depth 2
                                        #     Child Loop BB10_288 Depth 2
                                        #     Child Loop BB10_225 Depth 2
                                        #     Child Loop BB10_277 Depth 2
                                        #     Child Loop BB10_193 Depth 2
                                        #     Child Loop BB10_262 Depth 2
                                        #     Child Loop BB10_180 Depth 2
                                        #     Child Loop BB10_203 Depth 2
                                        #     Child Loop BB10_168 Depth 2
                                        #     Child Loop BB10_195 Depth 2
                                        #     Child Loop BB10_161 Depth 2
                                        #     Child Loop BB10_147 Depth 2
                                        #     Child Loop BB10_66 Depth 2
                                        #     Child Loop BB10_123 Depth 2
                                        #     Child Loop BB10_227 Depth 2
                                        #     Child Loop BB10_144 Depth 2
                                        #     Child Loop BB10_232 Depth 2
                                        #     Child Loop BB10_73 Depth 2
                                        #     Child Loop BB10_49 Depth 2
                                        #     Child Loop BB10_30 Depth 2
	slli.d	$a0, $s3, 3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$s6, $a1, $a0
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $sp, 184
	move	$a0, $s6
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$fp, $a0, 1
	slli.d	$a0, $fp, 31
	bgez	$a0, .LBB10_4
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $zero
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_4:                               #   in Loop: Header=BB10_2 Depth=1
	addi.w	$a0, $s7, 0
	addi.w	$a1, $fp, 0
	slti	$a0, $a0, -1
	slli.d	$a1, $a1, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184
	st.w	$zero, $a0, 0
	st.w	$fp, $sp, 196
.LBB10_5:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB10_6:                               #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s6, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB10_6
# %bb.7:                                # %_ZN11CStringBaseIwEC2EPKw.exit
                                        #   in Loop: Header=BB10_2 Depth=1
	st.w	$s7, $sp, 192
.Ltmp177:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z13MyStringUpperPw)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.8:                                # %_ZN11CStringBaseIwE9MakeUpperEv.exit
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.w	$fp, $sp, 192
	ori	$s1, $zero, 1
	beqz	$fp, .LBB10_119
# %bb.9:                                #   in Loop: Header=BB10_2 Depth=1
	ld.d	$s6, $sp, 184
	ld.w	$a0, $s6, 0
	alsl.d	$s8, $s3, $s4, 4
	ori	$a1, $zero, 88
	bne	$a0, $a1, .LBB10_13
# %bb.10:                               #   in Loop: Header=BB10_2 Depth=1
	ori	$a0, $zero, 9
	st.w	$a0, $sp, 152
.Ltmp353:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp354:                               # EH_LABEL
# %bb.11:                               # %.noexc395
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	addi.w	$s1, $fp, -1
	st.d	$a0, $sp, 168
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 180
	bne	$fp, $a0, .LBB10_24
# %bb.12:                               #   in Loop: Header=BB10_2 Depth=1
	move	$s7, $s5
	bstrpick.d	$a0, $s1, 31, 0
	ori	$a1, $zero, 9
	bgeu	$fp, $a1, .LBB10_27
	b	.LBB10_28
	.p2align	4, , 16
.LBB10_13:                              #   in Loop: Header=BB10_2 Depth=1
.Ltmp180:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.14:                               #   in Loop: Header=BB10_2 Depth=1
	beqz	$a0, .LBB10_31
# %bb.15:                               #   in Loop: Header=BB10_2 Depth=1
.Ltmp182:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	ori	$a3, $zero, 2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
# %bb.16:                               # %_ZNK11CStringBaseIwE4LeftEi.exit
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 168
.Ltmp185:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp186:                               # EH_LABEL
# %bb.17:                               #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_19
# %bb.18:                               #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_19:                              # %_ZN11CStringBaseIwED2Ev.exit282
                                        #   in Loop: Header=BB10_2 Depth=1
	beqz	$s5, .LBB10_36
# %bb.20:                               #   in Loop: Header=BB10_2 Depth=1
	ld.d	$s5, $sp, 184
	ld.w	$a0, $s5, 0
	ori	$a1, $zero, 68
	bne	$a0, $a1, .LBB10_39
# %bb.21:                               #   in Loop: Header=BB10_2 Depth=1
	ld.w	$fp, $sp, 192
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $sp, 152
.Ltmp297:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp298:                               # EH_LABEL
# %bb.22:                               # %.noexc422
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.w	$s6, $fp, -1
	st.d	$a0, $sp, 168
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 180
	bne	$fp, $a1, .LBB10_60
# %bb.23:                               #   in Loop: Header=BB10_2 Depth=1
	move	$s7, $a0
	bstrpick.d	$a0, $s6, 31, 0
	ori	$a1, $zero, 8
	bgeu	$s6, $a1, .LBB10_63
	b	.LBB10_64
.LBB10_24:                              #   in Loop: Header=BB10_2 Depth=1
	slti	$a0, $fp, 0
	slli.d	$a1, $fp, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp356:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp357:                               # EH_LABEL
# %bb.25:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i393
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s7, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 168
	st.w	$zero, $s7, 0
	st.w	$fp, $sp, 180
	ori	$a0, $zero, 2
	blt	$fp, $a0, .LBB10_35
# %bb.26:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i393..lr.ph.i_crit_edge
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$s6, $sp, 184
	bstrpick.d	$a0, $s1, 31, 0
	ori	$a1, $zero, 9
	bltu	$fp, $a1, .LBB10_28
.LBB10_27:                              # %vector.memcheck
                                        #   in Loop: Header=BB10_2 Depth=1
	sub.d	$a1, $s7, $s6
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB10_48
.LBB10_28:                              #   in Loop: Header=BB10_2 Depth=1
	move	$a1, $zero
.LBB10_29:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.d	$a2, $s6, 4
	sub.d	$a3, $a0, $a1
	slli.d	$a1, $a1, 2
	.p2align	4, , 16
.LBB10_30:                              # %scalar.ph
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a4, $a2, $a1
	stx.w	$a4, $s7, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB10_30
	b	.LBB10_51
.LBB10_31:                              #   in Loop: Header=BB10_2 Depth=1
	ld.hu	$a0, $s8, 0
	ori	$a1, $zero, 19
	beq	$a0, $a1, .LBB10_57
# %bb.32:                               #   in Loop: Header=BB10_2 Depth=1
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB10_119
# %bb.33:                               #   in Loop: Header=BB10_2 Depth=1
	ld.d	$s6, $s8, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a1, $a1, 1
	slli.d	$a2, $a1, 31
	bgez	$a2, .LBB10_70
# %bb.34:                               #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $zero
	b	.LBB10_72
.LBB10_35:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $s1
	b	.LBB10_51
.LBB10_36:                              #   in Loop: Header=BB10_2 Depth=1
	ld.hu	$a0, $s8, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB10_119
# %bb.37:                               #   in Loop: Header=BB10_2 Depth=1
	ld.d	$s6, $s8, 8
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $sp, 168
	move	$a0, $s6
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$fp, $a0, 1
	slli.d	$a0, $fp, 31
	bgez	$a0, .LBB10_120
# %bb.38:                               #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $zero
	b	.LBB10_122
.LBB10_39:                              #   in Loop: Header=BB10_2 Depth=1
.Ltmp188:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	ori	$a3, $zero, 3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.40:                               # %_ZNK11CStringBaseIwE4LeftEi.exit323
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 168
.Ltmp191:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp192:                               # EH_LABEL
# %bb.41:                               #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_43
# %bb.42:                               #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_43:                              # %_ZN11CStringBaseIwED2Ev.exit326
                                        #   in Loop: Header=BB10_2 Depth=1
	beqz	$s5, .LBB10_67
# %bb.44:                               #   in Loop: Header=BB10_2 Depth=1
	ld.d	$s5, $sp, 184
	ld.w	$a0, $s5, 0
	ori	$a1, $zero, 79
	bne	$a0, $a1, .LBB10_88
# %bb.45:                               #   in Loop: Header=BB10_2 Depth=1
	ld.w	$fp, $sp, 192
	ori	$a0, $zero, 8
	st.w	$a0, $sp, 152
.Ltmp279:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp280:                               # EH_LABEL
# %bb.46:                               # %.noexc452
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.w	$s6, $fp, -1
	st.d	$a0, $sp, 168
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 180
	bne	$fp, $a1, .LBB10_162
# %bb.47:                               #   in Loop: Header=BB10_2 Depth=1
	move	$s7, $a0
	bstrpick.d	$a0, $s6, 31, 0
	ori	$a1, $zero, 8
	bgeu	$s6, $a1, .LBB10_165
	b	.LBB10_166
.LBB10_48:                              # %vector.ph
                                        #   in Loop: Header=BB10_2 Depth=1
	bstrpick.d	$a1, $a0, 30, 3
	slli.d	$a1, $a1, 3
	move	$a2, $zero
	move	$a3, $a1
	.p2align	4, , 16
.LBB10_49:                              # %vector.body
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a4, $s6, $a2
	vld	$vr0, $a4, 4
	vld	$vr1, $a4, 20
	add.d	$a4, $s7, $a2
	vstx	$vr0, $s7, $a2
	vst	$vr1, $a4, 16
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB10_49
# %bb.50:                               # %middle.block
                                        #   in Loop: Header=BB10_2 Depth=1
	bne	$a1, $a0, .LBB10_29
	.p2align	4, , 16
.LBB10_51:                              # %.loopexit
                                        #   in Loop: Header=BB10_2 Depth=1
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s7, $a0
	st.w	$s1, $sp, 176
.Ltmp359:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a2, $sp, 152
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.52:                               #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_54
# %bb.53:                               #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_54:                              # %_ZN11CStringBaseIwED2Ev.exit
                                        #   in Loop: Header=BB10_2 Depth=1
	ori	$s1, $zero, 1
	bnez	$s5, .LBB10_56
# %bb.55:                               #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a0, $sp, 152
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ori	$s1, $zero, 4
.LBB10_56:                              #   in Loop: Header=BB10_2 Depth=1
	sltui	$a0, $s5, 1
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s0, $a0
	or	$s8, $a0, $a1
	b	.LBB10_257
.LBB10_57:                              #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a0, $s8, 8
	ori	$a1, $zero, 14
	bltu	$a1, $a0, .LBB10_119
# %bb.58:                               #   in Loop: Header=BB10_2 Depth=1
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	beqz	$a1, .LBB10_257
# %bb.59:                               #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 212
	b	.LBB10_256
.LBB10_60:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	slti	$a0, $fp, 0
	slli.d	$a1, $fp, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp300:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
# %bb.61:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i413
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s7, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 168
	st.w	$zero, $s7, 0
	st.w	$fp, $sp, 180
	ori	$a0, $zero, 2
	blt	$fp, $a0, .LBB10_133
# %bb.62:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i413..lr.ph.i417_crit_edge
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$s5, $sp, 184
	bstrpick.d	$a0, $s6, 31, 0
	ori	$a1, $zero, 8
	bltu	$s6, $a1, .LBB10_64
.LBB10_63:                              # %vector.memcheck688
                                        #   in Loop: Header=BB10_2 Depth=1
	sub.d	$a1, $s7, $s5
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB10_146
.LBB10_64:                              #   in Loop: Header=BB10_2 Depth=1
	move	$a1, $zero
.LBB10_65:                              # %scalar.ph690.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.d	$a2, $s5, 4
	sub.d	$a3, $a0, $a1
	slli.d	$a1, $a1, 2
	.p2align	4, , 16
.LBB10_66:                              # %scalar.ph690
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a4, $a2, $a1
	stx.w	$a4, $s7, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB10_66
	b	.LBB10_149
.LBB10_67:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s7, $s4
	move	$s4, $s2
	ld.w	$fp, $sp, 192
	lu12i.w	$a0, 4096
	st.w	$a0, $sp, 152
.Ltmp288:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp289:                               # EH_LABEL
# %bb.68:                               # %.noexc437
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.w	$a7, $fp, -3
	st.d	$a0, $sp, 168
	st.w	$zero, $a0, 0
	addi.w	$s2, $fp, -2
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 180
	bne	$s2, $a1, .LBB10_154
# %bb.69:                               #   in Loop: Header=BB10_2 Depth=1
	move	$s2, $s4
	b	.LBB10_157
.LBB10_70:                              #   in Loop: Header=BB10_2 Depth=1
	addi.w	$a0, $a0, 0
	addi.w	$a1, $a1, 0
	slti	$a0, $a0, -1
	slli.d	$a1, $a1, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp335:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp336:                               # EH_LABEL
# %bb.71:                               # %.noexc
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $a0
	st.w	$zero, $a0, 0
.LBB10_72:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i258
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_73:                              #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a1, $s6, $a0
	stx.w	$a1, $s8, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB10_73
# %bb.74:                               # %_ZN11CStringBaseIwEC2EPKw.exit262
                                        #   in Loop: Header=BB10_2 Depth=1
.Ltmp338:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Z13MyStringUpperPw)
	jirl	$ra, $ra, 0
.Ltmp339:                               # EH_LABEL
# %bb.75:                               # %_ZN11CStringBaseIwE9MakeUpperEv.exit264
                                        #   in Loop: Header=BB10_2 Depth=1
.Ltmp340:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp341:                               # EH_LABEL
# %bb.76:                               #   in Loop: Header=BB10_2 Depth=1
	beqz	$a0, .LBB10_134
# %bb.77:                               #   in Loop: Header=BB10_2 Depth=1
.Ltmp342:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp343:                               # EH_LABEL
# %bb.78:                               #   in Loop: Header=BB10_2 Depth=1
	beqz	$a0, .LBB10_169
# %bb.79:                               #   in Loop: Header=BB10_2 Depth=1
.Ltmp344:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp345:                               # EH_LABEL
# %bb.80:                               #   in Loop: Header=BB10_2 Depth=1
	beqz	$a0, .LBB10_181
# %bb.81:                               #   in Loop: Header=BB10_2 Depth=1
.Ltmp346:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp347:                               # EH_LABEL
# %bb.82:                               #   in Loop: Header=BB10_2 Depth=1
	beqz	$a0, .LBB10_210
# %bb.83:                               #   in Loop: Header=BB10_2 Depth=1
.Ltmp348:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp349:                               # EH_LABEL
# %bb.84:                               #   in Loop: Header=BB10_2 Depth=1
	beqz	$a0, .LBB10_243
# %bb.85:                               #   in Loop: Header=BB10_2 Depth=1
.Ltmp350:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp351:                               # EH_LABEL
# %bb.86:                               #   in Loop: Header=BB10_2 Depth=1
	beqz	$a0, .LBB10_250
# %bb.87:                               #   in Loop: Header=BB10_2 Depth=1
	move	$fp, $zero
	lu12i.w	$a0, -524176
	ori	$s0, $a0, 87
	b	.LBB10_252
.LBB10_88:                              #   in Loop: Header=BB10_2 Depth=1
.Ltmp194:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	ori	$a3, $zero, 4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.89:                               # %_ZNK11CStringBaseIwE4LeftEi.exit337
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 168
.Ltmp197:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp198:                               # EH_LABEL
# %bb.90:                               #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_92
# %bb.91:                               #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_92:                              # %_ZN11CStringBaseIwED2Ev.exit340
                                        #   in Loop: Header=BB10_2 Depth=1
	beqz	$s5, .LBB10_171
# %bb.93:                               #   in Loop: Header=BB10_2 Depth=1
.Ltmp200:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	ori	$a3, $zero, 2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.94:                               # %_ZNK11CStringBaseIwE4LeftEi.exit347
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 168
.Ltmp203:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp204:                               # EH_LABEL
# %bb.95:                               #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_97
# %bb.96:                               #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_97:                              # %_ZN11CStringBaseIwED2Ev.exit350
                                        #   in Loop: Header=BB10_2 Depth=1
	beqz	$s5, .LBB10_184
# %bb.98:                               #   in Loop: Header=BB10_2 Depth=1
.Ltmp206:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	ori	$a3, $zero, 2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.99:                               # %_ZNK11CStringBaseIwE4LeftEi.exit357
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 168
.Ltmp209:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp210:                               # EH_LABEL
# %bb.100:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_102
# %bb.101:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_102:                             # %_ZN11CStringBaseIwED2Ev.exit360
                                        #   in Loop: Header=BB10_2 Depth=1
	beqz	$s5, .LBB10_216
# %bb.103:                              #   in Loop: Header=BB10_2 Depth=1
.Ltmp212:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	ori	$a3, $zero, 2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.104:                              # %_ZNK11CStringBaseIwE4LeftEi.exit367
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 168
.Ltmp215:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.105:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_107
# %bb.106:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_107:                             # %_ZN11CStringBaseIwED2Ev.exit370
                                        #   in Loop: Header=BB10_2 Depth=1
	beqz	$s5, .LBB10_245
# %bb.108:                              #   in Loop: Header=BB10_2 Depth=1
.Ltmp218:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	ori	$a3, $zero, 1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp219:                               # EH_LABEL
# %bb.109:                              # %_ZNK11CStringBaseIwE4LeftEi.exit377
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 168
.Ltmp221:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp222:                               # EH_LABEL
# %bb.110:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_112
# %bb.111:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_112:                             # %_ZN11CStringBaseIwED2Ev.exit380
                                        #   in Loop: Header=BB10_2 Depth=1
	beqz	$s5, .LBB10_270
# %bb.113:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 184
.Ltmp224:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.114:                              # %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit
                                        #   in Loop: Header=BB10_2 Depth=1
	beqz	$a0, .LBB10_285
# %bb.115:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 184
.Ltmp226:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.116:                              # %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit388
                                        #   in Loop: Header=BB10_2 Depth=1
	beqz	$a0, .LBB10_295
# %bb.117:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 184
.Ltmp228:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
# %bb.118:                              # %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit390
                                        #   in Loop: Header=BB10_2 Depth=1
	beqz	$a0, .LBB10_299
	.p2align	4, , 16
.LBB10_119:                             #   in Loop: Header=BB10_2 Depth=1
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	b	.LBB10_257
.LBB10_120:                             #   in Loop: Header=BB10_2 Depth=1
	addi.w	$a0, $s7, 0
	addi.w	$a1, $fp, 0
	slti	$a0, $a0, -1
	slli.d	$a1, $a1, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp306:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp307:                               # EH_LABEL
# %bb.121:                              # %.noexc288
                                        #   in Loop: Header=BB10_2 Depth=1
	st.d	$a0, $sp, 168
	st.w	$zero, $a0, 0
	st.w	$fp, $sp, 180
.LBB10_122:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i284
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB10_123:                             #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s6, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB10_123
# %bb.124:                              #   in Loop: Header=BB10_2 Depth=1
	st.w	$s7, $sp, 176
.Ltmp309:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z13MyStringUpperPw)
	jirl	$ra, $ra, 0
.Ltmp310:                               # EH_LABEL
# %bb.125:                              # %_ZN11CStringBaseIwE9MakeUpperEv.exit291
                                        #   in Loop: Header=BB10_2 Depth=1
.Ltmp311:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	ori	$a3, $zero, 3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp312:                               # EH_LABEL
# %bb.126:                              # %_ZNK11CStringBaseIwE4LeftEi.exit293
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 152
.Ltmp314:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp315:                               # EH_LABEL
# %bb.127:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB10_129
# %bb.128:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_129:                             # %_ZN11CStringBaseIwED2Ev.exit296
                                        #   in Loop: Header=BB10_2 Depth=1
	beqz	$s5, .LBB10_135
# %bb.130:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 168
.Ltmp317:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp318:                               # EH_LABEL
# %bb.131:                              #   in Loop: Header=BB10_2 Depth=1
	beqz	$a0, .LBB10_170
.LBB10_132:                             #   in Loop: Header=BB10_2 Depth=1
	move	$fp, $zero
	lu12i.w	$a0, -524176
	ori	$s0, $a0, 87
	ld.d	$a0, $sp, 168
	bnez	$a0, .LBB10_254
	b	.LBB10_255
.LBB10_133:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i414
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $s6
	b	.LBB10_149
.LBB10_134:                             #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $zero
	b	.LBB10_251
.LBB10_135:                             #   in Loop: Header=BB10_2 Depth=1
	ld.w	$s5, $sp, 176
.Ltmp319:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp320:                               # EH_LABEL
# %bb.136:                              # %.noexc407
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s6, $a0
	addi.w	$a5, $s5, -3
	addi.w	$a6, $s5, -2
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	beq	$a6, $a0, .LBB10_140
# %bb.137:                              #   in Loop: Header=BB10_2 Depth=1
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $s4
	move	$fp, $a5
	move	$s4, $a6
	bstrpick.d	$a0, $a6, 31, 0
	slti	$a1, $s5, 2
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp322:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp323:                               # EH_LABEL
# %bb.138:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i398
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s7, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.w	$zero, $s7, 0
	ori	$a0, $zero, 3
	bge	$a0, $s5, .LBB10_211
# %bb.139:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s6, $s7
	move	$a5, $fp
	move	$a6, $s4
	move	$s4, $s2
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
.LBB10_140:                             # %.lr.ph.i402
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$s8, $sp, 168
	bstrpick.d	$a0, $a5, 31, 0
	ori	$a1, $zero, 8
	bltu	$a5, $a1, .LBB10_142
# %bb.141:                              # %vector.memcheck672
                                        #   in Loop: Header=BB10_2 Depth=1
	sub.d	$a1, $s6, $s8
	addi.d	$a1, $a1, -12
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB10_226
.LBB10_142:                             #   in Loop: Header=BB10_2 Depth=1
	move	$a1, $zero
.LBB10_143:                             # %scalar.ph675.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	sub.d	$a2, $a0, $a1
	slli.d	$a1, $a1, 2
	.p2align	4, , 16
.LBB10_144:                             # %scalar.ph675
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $s8, $a1
	ld.w	$a3, $a3, 12
	stx.w	$a3, $s6, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB10_144
.LBB10_145:                             #   in Loop: Header=BB10_2 Depth=1
	move	$s7, $s6
	b	.LBB10_212
.LBB10_146:                             # %vector.ph692
                                        #   in Loop: Header=BB10_2 Depth=1
	bstrpick.d	$a1, $a0, 30, 3
	slli.d	$a1, $a1, 3
	move	$a2, $zero
	move	$a3, $a1
	.p2align	4, , 16
.LBB10_147:                             # %vector.body695
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a4, $s5, $a2
	vld	$vr0, $a4, 4
	vld	$vr1, $a4, 20
	add.d	$a4, $s7, $a2
	vstx	$vr0, $s7, $a2
	vst	$vr1, $a4, 16
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB10_147
# %bb.148:                              # %middle.block700
                                        #   in Loop: Header=BB10_2 Depth=1
	bne	$a1, $a0, .LBB10_65
.LBB10_149:                             # %.loopexit519
                                        #   in Loop: Header=BB10_2 Depth=1
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s7, $a0
	st.w	$s6, $sp, 176
.Ltmp303:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a2, $sp, 152
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_Z24ParsePropDictionaryValueRK11CStringBaseIwERK14tagPROPVARIANTRj)
	jirl	$ra, $ra, 0
.Ltmp304:                               # EH_LABEL
# %bb.150:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_152
# %bb.151:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_152:                             # %_ZN11CStringBaseIwED2Ev.exit320
                                        #   in Loop: Header=BB10_2 Depth=1
	bnez	$s8, .LBB10_257
# %bb.153:                              #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a0, $sp, 152
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 216
	b	.LBB10_256
.LBB10_154:                             #   in Loop: Header=BB10_2 Depth=1
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $a0
	slti	$a0, $fp, 2
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp291:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp292:                               # EH_LABEL
# %bb.155:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i428
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s6, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	st.d	$s6, $sp, 168
	st.w	$zero, $s6, 0
	st.w	$s2, $sp, 180
	ori	$a1, $zero, 3
	bge	$a1, $fp, .LBB10_182
# %bb.156:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s2, $s4
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
.LBB10_157:                             # %.lr.ph.i432
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a2, $sp, 184
	bstrpick.d	$a1, $a7, 31, 0
	move	$s4, $s7
	ori	$a3, $zero, 8
	bltu	$a7, $a3, .LBB10_159
# %bb.158:                              # %vector.memcheck703
                                        #   in Loop: Header=BB10_2 Depth=1
	sub.d	$a3, $a0, $a2
	addi.d	$a3, $a3, -12
	ori	$a4, $zero, 32
	bgeu	$a3, $a4, .LBB10_194
.LBB10_159:                             #   in Loop: Header=BB10_2 Depth=1
	move	$a3, $zero
.LBB10_160:                             # %scalar.ph705.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.d	$a2, $a2, 12
	sub.d	$a4, $a1, $a3
	slli.d	$a3, $a3, 2
	.p2align	4, , 16
.LBB10_161:                             # %scalar.ph705
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a5, $a2, $a3
	stx.w	$a5, $a0, $a3
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB10_161
	b	.LBB10_197
.LBB10_162:                             #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	slti	$a0, $fp, 0
	slli.d	$a1, $fp, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp282:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
# %bb.163:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i443
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s7, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 168
	st.w	$zero, $s7, 0
	st.w	$fp, $sp, 180
	ori	$a0, $zero, 2
	blt	$fp, $a0, .LBB10_183
# %bb.164:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i443..lr.ph.i447_crit_edge
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$s5, $sp, 184
	bstrpick.d	$a0, $s6, 31, 0
	ori	$a1, $zero, 8
	bltu	$s6, $a1, .LBB10_166
.LBB10_165:                             # %vector.memcheck718
                                        #   in Loop: Header=BB10_2 Depth=1
	sub.d	$a1, $s7, $s5
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 32
	bgeu	$a1, $a2, .LBB10_202
.LBB10_166:                             #   in Loop: Header=BB10_2 Depth=1
	move	$a1, $zero
.LBB10_167:                             # %scalar.ph720.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.d	$a2, $s5, 4
	sub.d	$a3, $a0, $a1
	slli.d	$a1, $a1, 2
	.p2align	4, , 16
.LBB10_168:                             # %scalar.ph720
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a4, $a2, $a1
	stx.w	$a4, $s7, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB10_168
	b	.LBB10_205
.LBB10_169:                             #   in Loop: Header=BB10_2 Depth=1
	ori	$a0, $zero, 8
	b	.LBB10_251
.LBB10_170:                             #   in Loop: Header=BB10_2 Depth=1
	move	$fp, $zero
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB10_242
.LBB10_171:                             #   in Loop: Header=BB10_2 Depth=1
	ld.w	$fp, $sp, 192
	ori	$a0, $zero, 10
	st.w	$a0, $sp, 152
.Ltmp270:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.172:                              # %.noexc467
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.w	$a7, $fp, -4
	st.d	$a0, $sp, 168
	st.w	$zero, $a0, 0
	addi.w	$s7, $fp, -3
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 180
	beq	$s7, $a1, .LBB10_176
# %bb.173:                              #   in Loop: Header=BB10_2 Depth=1
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $a0
	slti	$a0, $fp, 3
	slli.d	$a1, $s7, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp273:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
# %bb.174:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i458
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s6, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	st.d	$s6, $sp, 168
	st.w	$zero, $s6, 0
	st.w	$s7, $sp, 180
	ori	$a1, $zero, 4
	bge	$a1, $fp, .LBB10_244
# %bb.175:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
.LBB10_176:                             # %.lr.ph.i462
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a2, $sp, 184
	bstrpick.d	$a1, $a7, 31, 0
	ori	$a3, $zero, 8
	bltu	$a7, $a3, .LBB10_178
# %bb.177:                              # %vector.memcheck733
                                        #   in Loop: Header=BB10_2 Depth=1
	sub.d	$a3, $a0, $a2
	addi.d	$a3, $a3, -16
	ori	$a4, $zero, 32
	bgeu	$a3, $a4, .LBB10_261
.LBB10_178:                             #   in Loop: Header=BB10_2 Depth=1
	move	$a3, $zero
.LBB10_179:                             # %scalar.ph735.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.d	$a2, $a2, 16
	sub.d	$a4, $a1, $a3
	slli.d	$a3, $a3, 2
	.p2align	4, , 16
.LBB10_180:                             # %scalar.ph735
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a5, $a2, $a3
	stx.w	$a5, $a0, $a3
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB10_180
	b	.LBB10_264
.LBB10_181:                             #   in Loop: Header=BB10_2 Depth=1
	ori	$a0, $zero, 9
	b	.LBB10_251
.LBB10_182:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i429
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $a7
	move	$s2, $s4
	move	$s4, $s7
	b	.LBB10_197
.LBB10_183:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i444
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $s6
	b	.LBB10_205
.LBB10_184:                             #   in Loop: Header=BB10_2 Depth=1
	ld.w	$fp, $sp, 192
	ori	$a0, $zero, 128
	st.w	$a0, $sp, 152
.Ltmp261:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.185:                              # %.noexc482
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.w	$a7, $fp, -2
	st.d	$a0, $sp, 168
	st.w	$zero, $a0, 0
	addi.w	$s7, $fp, -1
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 180
	beq	$s7, $a1, .LBB10_189
# %bb.186:                              #   in Loop: Header=BB10_2 Depth=1
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $a0
	slti	$a0, $fp, 1
	slli.d	$a1, $s7, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp264:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.187:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i473
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s6, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	st.d	$s6, $sp, 168
	st.w	$zero, $s6, 0
	st.w	$s7, $sp, 180
	ori	$a1, $zero, 2
	bge	$a1, $fp, .LBB10_269
# %bb.188:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
.LBB10_189:                             # %.lr.ph.i477
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a2, $sp, 184
	bstrpick.d	$a1, $a7, 31, 0
	ori	$a3, $zero, 8
	bltu	$a7, $a3, .LBB10_191
# %bb.190:                              # %vector.memcheck748
                                        #   in Loop: Header=BB10_2 Depth=1
	sub.d	$a3, $a0, $a2
	addi.d	$a3, $a3, -8
	ori	$a4, $zero, 32
	bgeu	$a3, $a4, .LBB10_276
.LBB10_191:                             #   in Loop: Header=BB10_2 Depth=1
	move	$a3, $zero
.LBB10_192:                             # %scalar.ph750.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.d	$a2, $a2, 8
	sub.d	$a4, $a1, $a3
	slli.d	$a3, $a3, 2
	.p2align	4, , 16
.LBB10_193:                             # %scalar.ph750
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a5, $a2, $a3
	stx.w	$a5, $a0, $a3
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB10_193
	b	.LBB10_279
.LBB10_194:                             # %vector.ph707
                                        #   in Loop: Header=BB10_2 Depth=1
	bstrpick.d	$a3, $a1, 30, 3
	slli.d	$a3, $a3, 3
	move	$a4, $zero
	move	$a5, $a3
	.p2align	4, , 16
.LBB10_195:                             # %vector.body710
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $a2, $a4
	vld	$vr0, $a6, 12
	vld	$vr1, $a6, 28
	add.d	$a6, $a0, $a4
	vstx	$vr0, $a0, $a4
	vst	$vr1, $a6, 16
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB10_195
# %bb.196:                              # %middle.block715
                                        #   in Loop: Header=BB10_2 Depth=1
	bne	$a3, $a1, .LBB10_160
.LBB10_197:                             # %.loopexit520
                                        #   in Loop: Header=BB10_2 Depth=1
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a0, $a1
	st.w	$a7, $sp, 176
.Ltmp294:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a2, $sp, 152
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_Z24ParsePropDictionaryValueRK11CStringBaseIwERK14tagPROPVARIANTRj)
	jirl	$ra, $ra, 0
.Ltmp295:                               # EH_LABEL
# %bb.198:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_200
# %bb.199:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_200:                             # %_ZN11CStringBaseIwED2Ev.exit329
                                        #   in Loop: Header=BB10_2 Depth=1
	bnez	$s8, .LBB10_257
# %bb.201:                              #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a0, $sp, 152
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 236
	b	.LBB10_256
.LBB10_202:                             # %vector.ph722
                                        #   in Loop: Header=BB10_2 Depth=1
	bstrpick.d	$a1, $a0, 30, 3
	slli.d	$a1, $a1, 3
	move	$a2, $zero
	move	$a3, $a1
	.p2align	4, , 16
.LBB10_203:                             # %vector.body725
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a4, $s5, $a2
	vld	$vr0, $a4, 4
	vld	$vr1, $a4, 20
	add.d	$a4, $s7, $a2
	vstx	$vr0, $s7, $a2
	vst	$vr1, $a4, 16
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB10_203
# %bb.204:                              # %middle.block730
                                        #   in Loop: Header=BB10_2 Depth=1
	bne	$a1, $a0, .LBB10_167
.LBB10_205:                             # %.loopexit521
                                        #   in Loop: Header=BB10_2 Depth=1
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s7, $a0
	st.w	$s6, $sp, 176
.Ltmp285:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a2, $sp, 152
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj)
	jirl	$ra, $ra, 0
.Ltmp286:                               # EH_LABEL
# %bb.206:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_208
# %bb.207:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_208:                             # %_ZN11CStringBaseIwED2Ev.exit334
                                        #   in Loop: Header=BB10_2 Depth=1
	bnez	$s8, .LBB10_257
# %bb.209:                              #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a0, $sp, 152
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 240
	b	.LBB10_256
.LBB10_210:                             #   in Loop: Header=BB10_2 Depth=1
	ori	$a0, $zero, 12
	b	.LBB10_251
.LBB10_211:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i399
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$s8, $sp, 168
	move	$a5, $fp
	move	$a0, $fp
	move	$a6, $s4
	move	$s4, $s2
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
.LBB10_212:                             # %.loopexit518
                                        #   in Loop: Header=BB10_2 Depth=1
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s7, $a0
	st.w	$zero, $sp, 176
	st.w	$zero, $s8, 0
	ld.w	$fp, $sp, 180
	beq	$a6, $fp, .LBB10_231
# %bb.213:                              #   in Loop: Header=BB10_2 Depth=1
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $a5
	slti	$a0, $s5, 2
	move	$s4, $a6
	slli.d	$a1, $a6, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp325:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
# %bb.214:                              # %.noexc303
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s5, $a0
	blez	$fp, .LBB10_229
# %bb.215:                              # %._crit_edge.thread.i.i
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 176
	b	.LBB10_230
.LBB10_216:                             #   in Loop: Header=BB10_2 Depth=1
	ld.w	$fp, $sp, 192
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $sp, 152
.Ltmp252:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.217:                              # %.noexc497
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.w	$a7, $fp, -2
	st.d	$a0, $sp, 168
	st.w	$zero, $a0, 0
	addi.w	$s7, $fp, -1
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 180
	beq	$s7, $a1, .LBB10_221
# %bb.218:                              #   in Loop: Header=BB10_2 Depth=1
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $a0
	slti	$a0, $fp, 1
	slli.d	$a1, $s7, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp255:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.219:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i488
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s6, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	st.d	$s6, $sp, 168
	st.w	$zero, $s6, 0
	st.w	$s7, $sp, 180
	ori	$a1, $zero, 2
	bge	$a1, $fp, .LBB10_284
# %bb.220:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
.LBB10_221:                             # %.lr.ph.i492
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a2, $sp, 184
	bstrpick.d	$a1, $a7, 31, 0
	ori	$a3, $zero, 8
	bltu	$a7, $a3, .LBB10_223
# %bb.222:                              # %vector.memcheck763
                                        #   in Loop: Header=BB10_2 Depth=1
	sub.d	$a3, $a0, $a2
	addi.d	$a3, $a3, -8
	ori	$a4, $zero, 32
	bgeu	$a3, $a4, .LBB10_287
.LBB10_223:                             #   in Loop: Header=BB10_2 Depth=1
	move	$a3, $zero
.LBB10_224:                             # %scalar.ph765.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.d	$a2, $a2, 8
	sub.d	$a4, $a1, $a3
	slli.d	$a3, $a3, 2
	.p2align	4, , 16
.LBB10_225:                             # %scalar.ph765
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a5, $a2, $a3
	stx.w	$a5, $a0, $a3
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB10_225
	b	.LBB10_290
.LBB10_226:                             # %vector.ph677
                                        #   in Loop: Header=BB10_2 Depth=1
	bstrpick.d	$a1, $a0, 30, 3
	slli.d	$a1, $a1, 3
	move	$a2, $zero
	move	$a3, $a1
	.p2align	4, , 16
.LBB10_227:                             # %vector.body680
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a4, $s8, $a2
	vld	$vr0, $a4, 12
	vld	$vr1, $a4, 28
	add.d	$a4, $s6, $a2
	vstx	$vr0, $s6, $a2
	vst	$vr1, $a4, 16
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB10_227
# %bb.228:                              # %middle.block685
                                        #   in Loop: Header=BB10_2 Depth=1
	beq	$a1, $a0, .LBB10_145
	b	.LBB10_143
.LBB10_229:                             #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $zero
.LBB10_230:                             #   in Loop: Header=BB10_2 Depth=1
	move	$a5, $s6
	st.d	$s5, $sp, 168
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s5, $a0
	st.w	$s4, $sp, 180
	move	$s8, $s5
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
.LBB10_231:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_232:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a1, $s7, $a0
	stx.w	$a1, $s8, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB10_232
# %bb.233:                              # %_ZN11CStringBaseIwED2Ev.exit304
                                        #   in Loop: Header=BB10_2 Depth=1
	st.w	$a5, $sp, 176
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168
.Ltmp328:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.234:                              #   in Loop: Header=BB10_2 Depth=1
	ori	$fp, $zero, 1
	ori	$a1, $zero, 1
	beqz	$a0, .LBB10_241
# %bb.235:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 168
.Ltmp330:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp331:                               # EH_LABEL
# %bb.236:                              #   in Loop: Header=BB10_2 Depth=1
	beqz	$a0, .LBB10_240
# %bb.237:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 168
.Ltmp332:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(_Z15MyStringComparePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp333:                               # EH_LABEL
# %bb.238:                              #   in Loop: Header=BB10_2 Depth=1
	ori	$a1, $zero, 3
	beqz	$a0, .LBB10_241
# %bb.239:                              #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a0, $sp, 176
	bnez	$a0, .LBB10_132
	b	.LBB10_241
.LBB10_240:                             #   in Loop: Header=BB10_2 Depth=1
	ori	$a1, $zero, 2
.LBB10_241:                             #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.b	$a1, $a0, 247
.LBB10_242:                             # %.sink.split654
                                        #   in Loop: Header=BB10_2 Depth=1
	st.b	$fp, $a0, 246
	ori	$fp, $zero, 1
	st.b	$fp, $a0, 245
	ld.d	$a0, $sp, 168
	bnez	$a0, .LBB10_254
	b	.LBB10_255
.LBB10_243:                             #   in Loop: Header=BB10_2 Depth=1
	ori	$a0, $zero, 14
	b	.LBB10_251
.LBB10_244:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i459
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $a7
	b	.LBB10_264
.LBB10_245:                             #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a0, $sp, 192
	addi.w	$a3, $a0, -2
.Ltmp246:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
# %bb.246:                              # %_ZNK11CStringBaseIwE3MidEi.exit372
                                        #   in Loop: Header=BB10_2 Depth=1
.Ltmp249:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	move	$a1, $s8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z11ParseMtPropRK11CStringBaseIwERK14tagPROPVARIANTjRj)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.247:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_249
# %bb.248:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_249:                             # %_ZN11CStringBaseIwED2Ev.exit373
                                        #   in Loop: Header=BB10_2 Depth=1
	bnez	$s8, .LBB10_257
	b	.LBB10_256
.LBB10_250:                             #   in Loop: Header=BB10_2 Depth=1
	ori	$a0, $zero, 98
.LBB10_251:                             # %.sink.split
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 212
	ori	$fp, $zero, 1
.LBB10_252:                             #   in Loop: Header=BB10_2 Depth=1
	beqz	$s8, .LBB10_255
# %bb.253:                              #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $s8
.LBB10_254:                             # %_ZN11CStringBaseIwED2Ev.exit278
                                        #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_255:                             # %_ZN11CStringBaseIwED2Ev.exit278
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $s0
	beqz	$fp, .LBB10_257
.LBB10_256:                             #   in Loop: Header=BB10_2 Depth=1
	move	$s1, $zero
	move	$s8, $s0
	.p2align	4, , 16
.LBB10_257:                             #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 184
	beqz	$a0, .LBB10_259
# %bb.258:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_259:                             # %_ZN11CStringBaseIwED2Ev.exit391
                                        #   in Loop: Header=BB10_2 Depth=1
	andi	$a0, $s1, 3
	bnez	$a0, .LBB10_305
# %bb.260:                              #   in Loop: Header=BB10_2 Depth=1
	addi.d	$s3, $s3, 1
	move	$s0, $s8
	bne	$s3, $s2, .LBB10_2
	b	.LBB10_304
.LBB10_261:                             # %vector.ph737
                                        #   in Loop: Header=BB10_2 Depth=1
	bstrpick.d	$a3, $a1, 30, 3
	slli.d	$a3, $a3, 3
	move	$a4, $zero
	move	$a5, $a3
	.p2align	4, , 16
.LBB10_262:                             # %vector.body740
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $a2, $a4
	vld	$vr0, $a6, 16
	vld	$vr1, $a6, 32
	add.d	$a6, $a0, $a4
	vstx	$vr0, $a0, $a4
	vst	$vr1, $a6, 16
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB10_262
# %bb.263:                              # %middle.block745
                                        #   in Loop: Header=BB10_2 Depth=1
	bne	$a3, $a1, .LBB10_179
.LBB10_264:                             # %.loopexit522
                                        #   in Loop: Header=BB10_2 Depth=1
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a0, $a1
	st.w	$a7, $sp, 176
.Ltmp276:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a2, $sp, 152
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
# %bb.265:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_267
# %bb.266:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_267:                             # %_ZN11CStringBaseIwED2Ev.exit343
                                        #   in Loop: Header=BB10_2 Depth=1
	bnez	$s8, .LBB10_257
# %bb.268:                              #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a0, $sp, 152
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 224
	b	.LBB10_256
.LBB10_269:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i474
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $a7
	b	.LBB10_279
.LBB10_270:                             #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a0, $sp, 192
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 152
	addi.w	$a3, $a0, -1
.Ltmp240:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp241:                               # EH_LABEL
# %bb.271:                              # %_ZNK11CStringBaseIwE3MidEi.exit382
                                        #   in Loop: Header=BB10_2 Depth=1
.Ltmp243:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a2, $sp, 152
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.272:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_274
# %bb.273:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_274:                             # %_ZN11CStringBaseIwED2Ev.exit383
                                        #   in Loop: Header=BB10_2 Depth=1
	bnez	$s8, .LBB10_257
# %bb.275:                              #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a0, $sp, 152
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 220
	b	.LBB10_256
.LBB10_276:                             # %vector.ph752
                                        #   in Loop: Header=BB10_2 Depth=1
	bstrpick.d	$a3, $a1, 30, 3
	slli.d	$a3, $a3, 3
	move	$a4, $zero
	move	$a5, $a3
	.p2align	4, , 16
.LBB10_277:                             # %vector.body755
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $a2, $a4
	vld	$vr0, $a6, 8
	vld	$vr1, $a6, 24
	add.d	$a6, $a0, $a4
	vstx	$vr0, $a0, $a4
	vst	$vr1, $a6, 16
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB10_277
# %bb.278:                              # %middle.block760
                                        #   in Loop: Header=BB10_2 Depth=1
	bne	$a3, $a1, .LBB10_192
.LBB10_279:                             # %.loopexit523
                                        #   in Loop: Header=BB10_2 Depth=1
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a0, $a1
	st.w	$a7, $sp, 176
.Ltmp267:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a2, $sp, 152
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj)
	jirl	$ra, $ra, 0
.Ltmp268:                               # EH_LABEL
# %bb.280:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_282
# %bb.281:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_282:                             # %_ZN11CStringBaseIwED2Ev.exit353
                                        #   in Loop: Header=BB10_2 Depth=1
	bnez	$s8, .LBB10_257
# %bb.283:                              #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a0, $sp, 152
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 228
	b	.LBB10_256
.LBB10_284:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i489
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $a7
	b	.LBB10_290
.LBB10_285:                             #   in Loop: Header=BB10_2 Depth=1
.Ltmp237:                               # EH_LABEL
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_Z15SetBoolPropertyRbRK14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.286:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $a0
	bnez	$a0, .LBB10_257
	b	.LBB10_256
.LBB10_287:                             # %vector.ph767
                                        #   in Loop: Header=BB10_2 Depth=1
	bstrpick.d	$a3, $a1, 30, 3
	slli.d	$a3, $a3, 3
	move	$a4, $zero
	move	$a5, $a3
	.p2align	4, , 16
.LBB10_288:                             # %vector.body770
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $a2, $a4
	vld	$vr0, $a6, 8
	vld	$vr1, $a6, 24
	add.d	$a6, $a0, $a4
	vstx	$vr0, $a0, $a4
	vst	$vr1, $a6, 16
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB10_288
# %bb.289:                              # %middle.block775
                                        #   in Loop: Header=BB10_2 Depth=1
	bne	$a3, $a1, .LBB10_224
.LBB10_290:                             # %.loopexit524
                                        #   in Loop: Header=BB10_2 Depth=1
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a0, $a1
	st.w	$a7, $sp, 176
.Ltmp258:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a2, $sp, 152
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj)
	jirl	$ra, $ra, 0
.Ltmp259:                               # EH_LABEL
# %bb.291:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_293
# %bb.292:                              #   in Loop: Header=BB10_2 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_293:                             # %_ZN11CStringBaseIwED2Ev.exit363
                                        #   in Loop: Header=BB10_2 Depth=1
	bnez	$s8, .LBB10_257
# %bb.294:                              #   in Loop: Header=BB10_2 Depth=1
	ld.w	$a0, $sp, 152
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $a1, 232
	ori	$a0, $zero, 1
	st.b	$a0, $a1, 244
	b	.LBB10_256
.LBB10_295:                             #   in Loop: Header=BB10_2 Depth=1
.Ltmp234:                               # EH_LABEL
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_Z15SetBoolPropertyRbRK14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.Ltmp235:                               # EH_LABEL
# %bb.296:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $a0
	bnez	$a0, .LBB10_257
# %bb.297:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB10_256
# %bb.298:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB10_303
.LBB10_299:                             #   in Loop: Header=BB10_2 Depth=1
.Ltmp231:                               # EH_LABEL
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_Z15SetBoolPropertyRbRK14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.300:                              #   in Loop: Header=BB10_2 Depth=1
	move	$s8, $a0
	bnez	$a0, .LBB10_257
# %bb.301:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB10_256
# %bb.302:                              #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
.LBB10_303:                             #   in Loop: Header=BB10_2 Depth=1
	st.b	$zero, $a0, 0
	b	.LBB10_256
.LBB10_304:
	move	$s8, $zero
.LBB10_305:                             # %._crit_edge
	addi.w	$a0, $s8, 0
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB10_306:
.Ltmp233:                               # EH_LABEL
	b	.LBB10_367
.LBB10_307:
.Ltmp236:                               # EH_LABEL
	b	.LBB10_367
.LBB10_308:
.Ltmp239:                               # EH_LABEL
	b	.LBB10_367
.LBB10_309:
.Ltmp245:                               # EH_LABEL
	b	.LBB10_360
.LBB10_310:
.Ltmp242:                               # EH_LABEL
	b	.LBB10_367
.LBB10_311:                             # %_ZN11CStringBaseIwED2Ev.exit.i487
.Ltmp257:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_368
.LBB10_312:
.Ltmp251:                               # EH_LABEL
	b	.LBB10_360
.LBB10_313:
.Ltmp248:                               # EH_LABEL
	b	.LBB10_367
.LBB10_314:                             # %_ZN11CStringBaseIwED2Ev.exit.i472
.Ltmp266:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_368
.LBB10_315:
.Ltmp260:                               # EH_LABEL
	ld.d	$a1, $sp, 168
	move	$fp, $a0
	bnez	$a1, .LBB10_363
	b	.LBB10_368
.LBB10_316:
.Ltmp254:                               # EH_LABEL
	b	.LBB10_367
.LBB10_317:
.Ltmp223:                               # EH_LABEL
	b	.LBB10_360
.LBB10_318:
.Ltmp220:                               # EH_LABEL
	b	.LBB10_367
.LBB10_319:                             # %_ZN11CStringBaseIwED2Ev.exit.i457
.Ltmp275:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_368
.LBB10_320:
.Ltmp269:                               # EH_LABEL
	ld.d	$a1, $sp, 168
	move	$fp, $a0
	bnez	$a1, .LBB10_363
	b	.LBB10_368
.LBB10_321:
.Ltmp263:                               # EH_LABEL
	b	.LBB10_367
.LBB10_322:
.Ltmp217:                               # EH_LABEL
	b	.LBB10_360
.LBB10_323:
.Ltmp214:                               # EH_LABEL
	b	.LBB10_367
.LBB10_324:                             # %_ZN11CStringBaseIwED2Ev.exit309
.Ltmp327:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s7
	b	.LBB10_346
.LBB10_325:                             # %_ZN11CStringBaseIwED2Ev.exit.i397
.Ltmp324:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s6
	b	.LBB10_346
.LBB10_326:
.Ltmp278:                               # EH_LABEL
	ld.d	$a1, $sp, 168
	move	$fp, $a0
	bnez	$a1, .LBB10_363
	b	.LBB10_368
.LBB10_327:
.Ltmp272:                               # EH_LABEL
	b	.LBB10_367
.LBB10_328:
.Ltmp211:                               # EH_LABEL
	b	.LBB10_360
.LBB10_329:
.Ltmp208:                               # EH_LABEL
	b	.LBB10_367
.LBB10_330:                             # %_ZN11CStringBaseIwED2Ev.exit.i442
.Ltmp284:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_368
.LBB10_331:                             # %_ZN11CStringBaseIwED2Ev.exit.i427
.Ltmp293:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_368
.LBB10_332:
.Ltmp205:                               # EH_LABEL
	b	.LBB10_360
.LBB10_333:
.Ltmp202:                               # EH_LABEL
	b	.LBB10_367
.LBB10_334:
.Ltmp321:                               # EH_LABEL
	b	.LBB10_353
.LBB10_335:
.Ltmp308:                               # EH_LABEL
	b	.LBB10_367
.LBB10_336:
.Ltmp287:                               # EH_LABEL
	ld.d	$a1, $sp, 168
	move	$fp, $a0
	bnez	$a1, .LBB10_363
	b	.LBB10_368
.LBB10_337:
.Ltmp281:                               # EH_LABEL
	b	.LBB10_367
.LBB10_338:
.Ltmp199:                               # EH_LABEL
	b	.LBB10_360
.LBB10_339:
.Ltmp196:                               # EH_LABEL
	b	.LBB10_367
.LBB10_340:
.Ltmp337:                               # EH_LABEL
	b	.LBB10_367
.LBB10_341:
.Ltmp296:                               # EH_LABEL
	ld.d	$a1, $sp, 168
	move	$fp, $a0
	bnez	$a1, .LBB10_363
	b	.LBB10_368
.LBB10_342:
.Ltmp290:                               # EH_LABEL
	b	.LBB10_367
.LBB10_343:                             # %_ZN11CStringBaseIwED2Ev.exit.i412
.Ltmp302:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_368
.LBB10_344:
.Ltmp316:                               # EH_LABEL
	ld.d	$a1, $sp, 152
	move	$fp, $a0
	beqz	$a1, .LBB10_354
# %bb.345:
	move	$a0, $a1
.LBB10_346:                             # %.body408
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_354
.LBB10_347:
.Ltmp313:                               # EH_LABEL
	b	.LBB10_353
.LBB10_348:
.Ltmp305:                               # EH_LABEL
	ld.d	$a1, $sp, 168
	move	$fp, $a0
	bnez	$a1, .LBB10_363
	b	.LBB10_368
.LBB10_349:
.Ltmp299:                               # EH_LABEL
	b	.LBB10_367
.LBB10_350:
.Ltmp193:                               # EH_LABEL
	b	.LBB10_360
.LBB10_351:
.Ltmp190:                               # EH_LABEL
	b	.LBB10_367
.LBB10_352:
.Ltmp334:                               # EH_LABEL
.LBB10_353:                             # %.body408
	move	$fp, $a0
.LBB10_354:                             # %.body408
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB10_368
# %bb.355:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_368
.LBB10_356:
.Ltmp352:                               # EH_LABEL
	move	$fp, $a0
	beqz	$s8, .LBB10_368
# %bb.357:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_368
.LBB10_358:                             # %_ZN11CStringBaseIwED2Ev.exit.i
.Ltmp358:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_368
.LBB10_359:
.Ltmp187:                               # EH_LABEL
.LBB10_360:
	ld.d	$a1, $sp, 168
	move	$fp, $a0
	bnez	$a1, .LBB10_363
	b	.LBB10_368
.LBB10_361:
.Ltmp184:                               # EH_LABEL
	b	.LBB10_367
.LBB10_362:
.Ltmp361:                               # EH_LABEL
	ld.d	$a1, $sp, 168
	move	$fp, $a0
	beqz	$a1, .LBB10_368
.LBB10_363:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_368
.LBB10_364:
.Ltmp355:                               # EH_LABEL
	b	.LBB10_367
.LBB10_365:
.Ltmp230:                               # EH_LABEL
	b	.LBB10_367
.LBB10_366:
.Ltmp179:                               # EH_LABEL
.LBB10_367:                             # %_ZN11CStringBaseIwED2Ev.exit267
	move	$fp, $a0
.LBB10_368:                             # %_ZN11CStringBaseIwED2Ev.exit267
	ld.d	$a0, $sp, 184
	beqz	$a0, .LBB10_370
# %bb.369:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_370:                             # %_ZN11CStringBaseIwED2Ev.exit392
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi, .Lfunc_end10-_ZN8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp177-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp177
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin3         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp354-.Ltmp353              #   Call between .Ltmp353 and .Ltmp354
	.uleb128 .Ltmp355-.Lfunc_begin3         #     jumps to .Ltmp355
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp230-.Lfunc_begin3         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin3         #     jumps to .Ltmp184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin3         #     jumps to .Ltmp187
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp297-.Ltmp186              #   Call between .Ltmp186 and .Ltmp297
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp297-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp298-.Ltmp297              #   Call between .Ltmp297 and .Ltmp298
	.uleb128 .Ltmp299-.Lfunc_begin3         #     jumps to .Ltmp299
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp356-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp357-.Ltmp356              #   Call between .Ltmp356 and .Ltmp357
	.uleb128 .Ltmp358-.Lfunc_begin3         #     jumps to .Ltmp358
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp188-.Ltmp357              #   Call between .Ltmp357 and .Ltmp188
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin3         #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin3         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp279-.Ltmp192              #   Call between .Ltmp192 and .Ltmp279
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin3         #     jumps to .Ltmp281
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp359-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp360-.Ltmp359              #   Call between .Ltmp359 and .Ltmp360
	.uleb128 .Ltmp361-.Lfunc_begin3         #     jumps to .Ltmp361
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp360-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp300-.Ltmp360              #   Call between .Ltmp360 and .Ltmp300
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp301-.Ltmp300              #   Call between .Ltmp300 and .Ltmp301
	.uleb128 .Ltmp302-.Lfunc_begin3         #     jumps to .Ltmp302
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp288-.Ltmp301              #   Call between .Ltmp301 and .Ltmp288
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp290-.Lfunc_begin3         #     jumps to .Ltmp290
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp335-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp336-.Ltmp335              #   Call between .Ltmp335 and .Ltmp336
	.uleb128 .Ltmp337-.Lfunc_begin3         #     jumps to .Ltmp337
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp351-.Ltmp338              #   Call between .Ltmp338 and .Ltmp351
	.uleb128 .Ltmp352-.Lfunc_begin3         #     jumps to .Ltmp352
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin3         #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin3         #     jumps to .Ltmp199
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin3         # >> Call Site 24 <<
	.uleb128 .Ltmp200-.Ltmp198              #   Call between .Ltmp198 and .Ltmp200
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin3         # >> Call Site 25 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin3         #     jumps to .Ltmp202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin3         # >> Call Site 26 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin3         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin3         # >> Call Site 27 <<
	.uleb128 .Ltmp206-.Ltmp204              #   Call between .Ltmp204 and .Ltmp206
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin3         # >> Call Site 28 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin3         #     jumps to .Ltmp208
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin3         # >> Call Site 29 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin3         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin3         # >> Call Site 30 <<
	.uleb128 .Ltmp212-.Ltmp210              #   Call between .Ltmp210 and .Ltmp212
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin3         # >> Call Site 31 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin3         #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin3         # >> Call Site 32 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin3         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin3         # >> Call Site 33 <<
	.uleb128 .Ltmp218-.Ltmp216              #   Call between .Ltmp216 and .Ltmp218
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin3         # >> Call Site 34 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin3         #     jumps to .Ltmp220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin3         # >> Call Site 35 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin3         #     jumps to .Ltmp223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin3         # >> Call Site 36 <<
	.uleb128 .Ltmp224-.Ltmp222              #   Call between .Ltmp222 and .Ltmp224
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin3         # >> Call Site 37 <<
	.uleb128 .Ltmp229-.Ltmp224              #   Call between .Ltmp224 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin3         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin3         # >> Call Site 38 <<
	.uleb128 .Ltmp307-.Ltmp306              #   Call between .Ltmp306 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin3         #     jumps to .Ltmp308
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin3         # >> Call Site 39 <<
	.uleb128 .Ltmp310-.Ltmp309              #   Call between .Ltmp309 and .Ltmp310
	.uleb128 .Ltmp334-.Lfunc_begin3         #     jumps to .Ltmp334
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin3         # >> Call Site 40 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin3         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin3         # >> Call Site 41 <<
	.uleb128 .Ltmp315-.Ltmp314              #   Call between .Ltmp314 and .Ltmp315
	.uleb128 .Ltmp316-.Lfunc_begin3         #     jumps to .Ltmp316
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin3         # >> Call Site 42 <<
	.uleb128 .Ltmp317-.Ltmp315              #   Call between .Ltmp315 and .Ltmp317
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin3         # >> Call Site 43 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp334-.Lfunc_begin3         #     jumps to .Ltmp334
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin3         # >> Call Site 44 <<
	.uleb128 .Ltmp320-.Ltmp319              #   Call between .Ltmp319 and .Ltmp320
	.uleb128 .Ltmp321-.Lfunc_begin3         #     jumps to .Ltmp321
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp322-.Lfunc_begin3         # >> Call Site 45 <<
	.uleb128 .Ltmp323-.Ltmp322              #   Call between .Ltmp322 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin3         #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin3         # >> Call Site 46 <<
	.uleb128 .Ltmp303-.Ltmp323              #   Call between .Ltmp323 and .Ltmp303
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin3         # >> Call Site 47 <<
	.uleb128 .Ltmp304-.Ltmp303              #   Call between .Ltmp303 and .Ltmp304
	.uleb128 .Ltmp305-.Lfunc_begin3         #     jumps to .Ltmp305
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin3         # >> Call Site 48 <<
	.uleb128 .Ltmp291-.Ltmp304              #   Call between .Ltmp304 and .Ltmp291
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin3         # >> Call Site 49 <<
	.uleb128 .Ltmp292-.Ltmp291              #   Call between .Ltmp291 and .Ltmp292
	.uleb128 .Ltmp293-.Lfunc_begin3         #     jumps to .Ltmp293
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin3         # >> Call Site 50 <<
	.uleb128 .Ltmp282-.Ltmp292              #   Call between .Ltmp292 and .Ltmp282
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin3         # >> Call Site 51 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp284-.Lfunc_begin3         #     jumps to .Ltmp284
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin3         # >> Call Site 52 <<
	.uleb128 .Ltmp270-.Ltmp283              #   Call between .Ltmp283 and .Ltmp270
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin3         # >> Call Site 53 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin3         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin3         # >> Call Site 54 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin3         #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin3         # >> Call Site 55 <<
	.uleb128 .Ltmp261-.Ltmp274              #   Call between .Ltmp274 and .Ltmp261
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin3         # >> Call Site 56 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin3         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin3         # >> Call Site 57 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin3         #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin3         # >> Call Site 58 <<
	.uleb128 .Ltmp294-.Ltmp265              #   Call between .Ltmp265 and .Ltmp294
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin3         # >> Call Site 59 <<
	.uleb128 .Ltmp295-.Ltmp294              #   Call between .Ltmp294 and .Ltmp295
	.uleb128 .Ltmp296-.Lfunc_begin3         #     jumps to .Ltmp296
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin3         # >> Call Site 60 <<
	.uleb128 .Ltmp285-.Ltmp295              #   Call between .Ltmp295 and .Ltmp285
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin3         # >> Call Site 61 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp287-.Lfunc_begin3         #     jumps to .Ltmp287
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin3         # >> Call Site 62 <<
	.uleb128 .Ltmp325-.Ltmp286              #   Call between .Ltmp286 and .Ltmp325
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin3         # >> Call Site 63 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin3         #     jumps to .Ltmp327
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin3         # >> Call Site 64 <<
	.uleb128 .Ltmp252-.Ltmp326              #   Call between .Ltmp326 and .Ltmp252
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin3         # >> Call Site 65 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin3         #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin3         # >> Call Site 66 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin3         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin3         # >> Call Site 67 <<
	.uleb128 .Ltmp328-.Ltmp256              #   Call between .Ltmp256 and .Ltmp328
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin3         # >> Call Site 68 <<
	.uleb128 .Ltmp333-.Ltmp328              #   Call between .Ltmp328 and .Ltmp333
	.uleb128 .Ltmp334-.Lfunc_begin3         #     jumps to .Ltmp334
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin3         # >> Call Site 69 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin3         #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin3         # >> Call Site 70 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin3         #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin3         # >> Call Site 71 <<
	.uleb128 .Ltmp276-.Ltmp250              #   Call between .Ltmp250 and .Ltmp276
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin3         # >> Call Site 72 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin3         #     jumps to .Ltmp278
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin3         # >> Call Site 73 <<
	.uleb128 .Ltmp240-.Ltmp277              #   Call between .Ltmp277 and .Ltmp240
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin3         # >> Call Site 74 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin3         #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin3         # >> Call Site 75 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin3         #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin3         # >> Call Site 76 <<
	.uleb128 .Ltmp267-.Ltmp244              #   Call between .Ltmp244 and .Ltmp267
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin3         # >> Call Site 77 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin3         #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin3         # >> Call Site 78 <<
	.uleb128 .Ltmp237-.Ltmp268              #   Call between .Ltmp268 and .Ltmp237
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin3         # >> Call Site 79 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin3         #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin3         # >> Call Site 80 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin3         #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin3         # >> Call Site 81 <<
	.uleb128 .Ltmp234-.Ltmp259              #   Call between .Ltmp259 and .Ltmp234
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin3         # >> Call Site 82 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin3         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin3         # >> Call Site 83 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin3         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin3         # >> Call Site 84 <<
	.uleb128 .Lfunc_end10-.Ltmp232          #   Call between .Ltmp232 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZThn16_N8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi # -- Begin function _ZThn16_N8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
	.p2align	5
	.type	_ZThn16_N8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi,@function
_ZThn16_N8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi: # @_ZThn16_N8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -16
	pcaddu18i	$t8, %call36(_ZN8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi)
	jr	$t8
.Lfunc_end11:
	.size	_ZThn16_N8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi, .Lfunc_end11-_ZThn16_N8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi
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
.Lfunc_end12:
	.size	__clang_call_terminate, .Lfunc_end12-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN13CRecordVectorIhED0Ev,"axG",@progbits,_ZN13CRecordVectorIhED0Ev,comdat
	.weak	_ZN13CRecordVectorIhED0Ev       # -- Begin function _ZN13CRecordVectorIhED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIhED0Ev,@function
_ZN13CRecordVectorIhED0Ev:              # @_ZN13CRecordVectorIhED0Ev
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
.Lfunc_end13:
	.size	_ZN13CRecordVectorIhED0Ev, .Lfunc_end13-_ZN13CRecordVectorIhED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev,@function
_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev: # @_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE+16)
	st.d	$a0, $fp, 0
.Ltmp362:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp363:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev.exit
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
.LBB14_2:
.Ltmp364:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev, .Lfunc_end14-_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp362-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp363-.Ltmp362              #   Call between .Ltmp362 and .Ltmp363
	.uleb128 .Ltmp364-.Lfunc_begin4         #     jumps to .Ltmp364
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp363-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Lfunc_end14-.Ltmp363          #   Call between .Ltmp363 and .Lfunc_end14
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
	.section	.text._ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE6DeleteEii,@function
_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE6DeleteEii: # @_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE6DeleteEii
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
	blez	$s1, .LBB15_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_2:                               # %_ZN8NArchive4NZip11CUpdateItemD2Ev.exit
                                        #   in Loop: Header=BB15_4 Depth=1
	ori	$a1, $zero, 72
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_3:                               #   in Loop: Header=BB15_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB15_7
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB15_3
# %bb.5:                                #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a0, $s2, 32
	beqz	$a0, .LBB15_2
# %bb.6:                                #   in Loop: Header=BB15_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB15_2
.LBB15_7:                               # %._crit_edge
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
.Lfunc_end15:
	.size	_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE6DeleteEii, .Lfunc_end15-_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK11CStringBaseIwE3MidEii,"axG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.weak	_ZNK11CStringBaseIwE3MidEii     # -- Begin function _ZNK11CStringBaseIwE3MidEii
	.p2align	5
	.type	_ZNK11CStringBaseIwE3MidEii,@function
_ZNK11CStringBaseIwE3MidEii:            # @_ZNK11CStringBaseIwE3MidEii
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	slli.d	$a0, $s1, 31
	vst	$vr0, $fp, 0
	bgez	$a0, .LBB16_13
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
.Ltmp365:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
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
.Ltmp367:                               # EH_LABEL
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
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp365-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp365
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp365-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp366-.Ltmp365              #   Call between .Ltmp365 and .Ltmp366
	.uleb128 .Ltmp367-.Lfunc_begin5         #     jumps to .Ltmp367
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp366-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Lfunc_end16-.Ltmp366          #   Call between .Ltmp366 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZTI16CSystemException,@object  # @_ZTI16CSystemException
	.section	.data.rel.ro._ZTI16CSystemException,"awG",@progbits,_ZTI16CSystemException,comdat
	.weak	_ZTI16CSystemException
	.p2align	3, 0x0
_ZTI16CSystemException:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS16CSystemException
	.size	_ZTI16CSystemException, 16

	.type	_ZTS16CSystemException,@object  # @_ZTS16CSystemException
	.section	.rodata._ZTS16CSystemException,"aG",@progbits,_ZTS16CSystemException,comdat
	.weak	_ZTS16CSystemException
_ZTS16CSystemException:
	.asciz	"16CSystemException"
	.size	_ZTS16CSystemException, 19

	.type	.L.str,@object                  # @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str:
	.word	77                              # 0x4d
	.word	0                               # 0x0
	.size	.L.str, 8

	.type	.L.str.1,@object                # @.str.1
	.p2align	2, 0x0
.L.str.1:
	.word	67                              # 0x43
	.word	79                              # 0x4f
	.word	80                              # 0x50
	.word	89                              # 0x59
	.word	0                               # 0x0
	.size	.L.str.1, 20

	.type	.L.str.2,@object                # @.str.2
	.p2align	2, 0x0
.L.str.2:
	.word	68                              # 0x44
	.word	69                              # 0x45
	.word	70                              # 0x46
	.word	76                              # 0x4c
	.word	65                              # 0x41
	.word	84                              # 0x54
	.word	69                              # 0x45
	.word	0                               # 0x0
	.size	.L.str.2, 32

	.type	.L.str.3,@object                # @.str.3
	.p2align	2, 0x0
.L.str.3:
	.word	68                              # 0x44
	.word	69                              # 0x45
	.word	70                              # 0x46
	.word	76                              # 0x4c
	.word	65                              # 0x41
	.word	84                              # 0x54
	.word	69                              # 0x45
	.word	54                              # 0x36
	.word	52                              # 0x34
	.word	0                               # 0x0
	.size	.L.str.3, 40

	.type	.L.str.4,@object                # @.str.4
	.p2align	2, 0x0
.L.str.4:
	.word	66                              # 0x42
	.word	90                              # 0x5a
	.word	73                              # 0x49
	.word	80                              # 0x50
	.word	50                              # 0x32
	.word	0                               # 0x0
	.size	.L.str.4, 24

	.type	.L.str.5,@object                # @.str.5
	.p2align	2, 0x0
.L.str.5:
	.word	76                              # 0x4c
	.word	90                              # 0x5a
	.word	77                              # 0x4d
	.word	65                              # 0x41
	.word	0                               # 0x0
	.size	.L.str.5, 20

	.type	.L.str.6,@object                # @.str.6
	.p2align	2, 0x0
.L.str.6:
	.word	80                              # 0x50
	.word	80                              # 0x50
	.word	77                              # 0x4d
	.word	68                              # 0x44
	.word	0                               # 0x0
	.size	.L.str.6, 20

	.type	.L.str.7,@object                # @.str.7
	.p2align	2, 0x0
.L.str.7:
	.word	69                              # 0x45
	.word	77                              # 0x4d
	.word	0                               # 0x0
	.size	.L.str.7, 12

	.type	.L.str.8,@object                # @.str.8
	.p2align	2, 0x0
.L.str.8:
	.word	65                              # 0x41
	.word	69                              # 0x45
	.word	83                              # 0x53
	.word	0                               # 0x0
	.size	.L.str.8, 16

	.type	.L.str.9,@object                # @.str.9
	.p2align	2, 0x0
.L.str.9:
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	56                              # 0x38
	.word	0                               # 0x0
	.size	.L.str.9, 16

	.type	.L.str.10,@object               # @.str.10
	.p2align	2, 0x0
.L.str.10:
	.word	49                              # 0x31
	.word	57                              # 0x39
	.word	50                              # 0x32
	.word	0                               # 0x0
	.size	.L.str.10, 16

	.type	.L.str.11,@object               # @.str.11
	.p2align	2, 0x0
.L.str.11:
	.word	50                              # 0x32
	.word	53                              # 0x35
	.word	54                              # 0x36
	.word	0                               # 0x0
	.size	.L.str.11, 16

	.type	.L.str.12,@object               # @.str.12
	.p2align	2, 0x0
.L.str.12:
	.word	90                              # 0x5a
	.word	73                              # 0x49
	.word	80                              # 0x50
	.word	67                              # 0x43
	.word	82                              # 0x52
	.word	89                              # 0x59
	.word	80                              # 0x50
	.word	84                              # 0x54
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.size	.L.str.12, 40

	.type	.L.str.13,@object               # @.str.13
	.p2align	2, 0x0
.L.str.13:
	.word	77                              # 0x4d
	.word	69                              # 0x45
	.word	77                              # 0x4d
	.word	0                               # 0x0
	.size	.L.str.13, 16

	.type	.L.str.14,@object               # @.str.14
	.p2align	2, 0x0
.L.str.14:
	.word	80                              # 0x50
	.word	65                              # 0x41
	.word	83                              # 0x53
	.word	83                              # 0x53
	.word	0                               # 0x0
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
	.p2align	2, 0x0
.L.str.15:
	.word	70                              # 0x46
	.word	66                              # 0x42
	.word	0                               # 0x0
	.size	.L.str.15, 12

	.type	.L.str.16,@object               # @.str.16
	.p2align	2, 0x0
.L.str.16:
	.word	77                              # 0x4d
	.word	67                              # 0x43
	.word	0                               # 0x0
	.size	.L.str.16, 12

	.type	.L.str.17,@object               # @.str.17
	.p2align	2, 0x0
.L.str.17:
	.word	77                              # 0x4d
	.word	84                              # 0x54
	.word	0                               # 0x0
	.size	.L.str.17, 12

	.type	.L.str.18,@object               # @.str.18
	.p2align	2, 0x0
.L.str.18:
	.word	65                              # 0x41
	.word	0                               # 0x0
	.size	.L.str.18, 8

	.type	.L.str.19,@object               # @.str.19
	.p2align	2, 0x0
.L.str.19:
	.word	84                              # 0x54
	.word	67                              # 0x43
	.word	0                               # 0x0
	.size	.L.str.19, 12

	.type	.L.str.20,@object               # @.str.20
	.p2align	2, 0x0
.L.str.20:
	.word	67                              # 0x43
	.word	76                              # 0x4c
	.word	0                               # 0x0
	.size	.L.str.20, 12

	.type	.L.str.21,@object               # @.str.21
	.p2align	2, 0x0
.L.str.21:
	.word	67                              # 0x43
	.word	85                              # 0x55
	.word	0                               # 0x0
	.size	.L.str.21, 12

	.type	_ZTV13CRecordVectorIhE,@object  # @_ZTV13CRecordVectorIhE
	.section	.data.rel.ro._ZTV13CRecordVectorIhE,"awG",@progbits,_ZTV13CRecordVectorIhE,comdat
	.weak	_ZTV13CRecordVectorIhE
	.p2align	3, 0x0
_ZTV13CRecordVectorIhE:
	.dword	0
	.dword	_ZTI13CRecordVectorIhE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIhED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIhE, 40

	.type	_ZTI13CRecordVectorIhE,@object  # @_ZTI13CRecordVectorIhE
	.section	.data.rel.ro._ZTI13CRecordVectorIhE,"awG",@progbits,_ZTI13CRecordVectorIhE,comdat
	.weak	_ZTI13CRecordVectorIhE
	.p2align	3, 0x0
_ZTI13CRecordVectorIhE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIhE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIhE, 24

	.type	_ZTS13CRecordVectorIhE,@object  # @_ZTS13CRecordVectorIhE
	.section	.rodata._ZTS13CRecordVectorIhE,"aG",@progbits,_ZTS13CRecordVectorIhE,comdat
	.weak	_ZTS13CRecordVectorIhE
_ZTS13CRecordVectorIhE:
	.asciz	"13CRecordVectorIhE"
	.size	_ZTS13CRecordVectorIhE, 19

	.type	.L.str.22,@object               # @.str.22
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.22:
	.word	66                              # 0x42
	.word	84                              # 0x54
	.word	52                              # 0x34
	.word	0                               # 0x0
	.size	.L.str.22, 16

	.type	.L.str.23,@object               # @.str.23
	.p2align	2, 0x0
.L.str.23:
	.word	72                              # 0x48
	.word	67                              # 0x43
	.word	52                              # 0x34
	.word	0                               # 0x0
	.size	.L.str.23, 16

	.type	_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE,@object # @_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE,"awG",@progbits,_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE,comdat
	.weak	_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN8NArchive4NZip11CUpdateItemEE
	.dword	_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev
	.dword	_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE6DeleteEii
	.size	_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE, 40

	.type	_ZTI13CObjectVectorIN8NArchive4NZip11CUpdateItemEE,@object # @_ZTI13CObjectVectorIN8NArchive4NZip11CUpdateItemEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN8NArchive4NZip11CUpdateItemEE,"awG",@progbits,_ZTI13CObjectVectorIN8NArchive4NZip11CUpdateItemEE,comdat
	.weak	_ZTI13CObjectVectorIN8NArchive4NZip11CUpdateItemEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN8NArchive4NZip11CUpdateItemEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN8NArchive4NZip11CUpdateItemEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN8NArchive4NZip11CUpdateItemEE, 24

	.type	_ZTS13CObjectVectorIN8NArchive4NZip11CUpdateItemEE,@object # @_ZTS13CObjectVectorIN8NArchive4NZip11CUpdateItemEE
	.section	.rodata._ZTS13CObjectVectorIN8NArchive4NZip11CUpdateItemEE,"aG",@progbits,_ZTS13CObjectVectorIN8NArchive4NZip11CUpdateItemEE,comdat
	.weak	_ZTS13CObjectVectorIN8NArchive4NZip11CUpdateItemEE
_ZTS13CObjectVectorIN8NArchive4NZip11CUpdateItemEE:
	.asciz	"13CObjectVectorIN8NArchive4NZip11CUpdateItemEE"
	.size	_ZTS13CObjectVectorIN8NArchive4NZip11CUpdateItemEE, 47

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

	.data
	.p2align	3, 0x0
.L_ZTI16CSystemException.DW.stub:
	.dword	_ZTI16CSystemException
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
	.addrsig_sym _ZTI16CSystemException
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS16CSystemException
	.addrsig_sym IID_ICryptoGetTextPassword2
	.addrsig_sym _ZTI13CRecordVectorIhE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS13CRecordVectorIhE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTI13CObjectVectorIN8NArchive4NZip11CUpdateItemEE
	.addrsig_sym _ZTS13CObjectVectorIN8NArchive4NZip11CUpdateItemEE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
