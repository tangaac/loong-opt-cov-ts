	.file	"partition.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN4Mesh17partition_measureEv
.LCPI0_0:
	.dword	0x40b087c3b666fb67              # double 4231.7645019878173
.LCPI0_1:
	.dword	0x4046a09e667f3bcd              # double 45.254833995939045
	.text
	.globl	_ZN4Mesh17partition_measureEv
	.p2align	5
	.type	_ZN4Mesh17partition_measureEv,@function
_ZN4Mesh17partition_measureEv:          # @_ZN4Mesh17partition_measureEv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
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
	pcalau12i	$a1, %pc_hi20(measure_type)
	ld.w	$a1, $a1, %pc_lo12(measure_type)
	beqz	$a1, .LBB0_208
# %bb.1:
	move	$fp, $a0
	ld.d	$a0, $a0, 1160
	addi.d	$a2, $a0, 127
	srli.d	$a2, $a2, 7
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	ori	$a2, $zero, 3
	pcalau12i	$a3, %pc_hi20(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	bltu	$a2, $a1, .LBB0_207
# %bb.2:
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	addi.w	$s6, $a2, 0
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	jr	$a1
.LBB0_3:                                # %.preheader
	beqz	$s6, .LBB0_207
# %bb.4:                                # %.lr.ph565
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa0, $a3, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	ld.d	$a3, $fp, 1368
	ld.d	$a4, $fp, 1352
	ld.d	$a5, $fp, 1392
	ld.d	$a6, $fp, 1376
	ld.d	$a7, $fp, 1384
	ori	$t0, $zero, 128
	lu52i.d	$t1, $zero, 1016
	movgr2fr.d	$fa1, $t1
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	addi.w	$a1, $a1, 128
	movgr2fr.w	$fa2, $s1
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fadd.d	$fa0, $fa2, $fa0
	addi.w	$t0, $t0, 128
	beq	$a2, $s6, .LBB0_206
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	move	$s1, $zero
	slli.w	$t1, $a2, 7
	addi.w	$a2, $a2, 1
	slli.w	$t2, $a2, 7
	alsl.d	$t3, $a1, $a3, 2
	alsl.d	$t4, $a1, $a4, 2
	alsl.d	$t5, $a1, $a6, 2
	alsl.d	$t6, $a1, $a7, 2
	alsl.d	$t7, $a1, $a5, 2
	move	$t8, $a1
	move	$fp, $a1
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=2
	addi.d	$fp, $fp, 1
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, 4
	addi.w	$t8, $t8, 1
	addi.d	$t7, $t7, 4
	beq	$t0, $t8, .LBB0_5
.LBB0_8:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$fp, $a0, .LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	ld.w	$s3, $t3, 0
	slt	$s4, $s3, $t1
	slli.d	$s2, $s3, 2
	ldx.w	$s5, $a4, $s2
	ld.w	$s0, $t4, 0
	slt	$s3, $s3, $t2
	xori	$s3, $s3, 1
	or	$s3, $s4, $s3
	add.d	$s1, $s1, $s3
	bge	$s0, $s5, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=2
	ldx.w	$s2, $a5, $s2
	slt	$s3, $s2, $t1
	slt	$s2, $s2, $t2
	xori	$s2, $s2, 1
	or	$s2, $s3, $s2
	add.d	$s1, $s1, $s2
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=2
	ld.w	$s3, $t5, 0
	slt	$s4, $s3, $t1
	slli.d	$s2, $s3, 2
	ldx.w	$s5, $a4, $s2
	slt	$s3, $s3, $t2
	xori	$s3, $s3, 1
	or	$s3, $s4, $s3
	add.d	$s1, $s1, $s3
	bge	$s0, $s5, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_8 Depth=2
	ldx.w	$s2, $a5, $s2
	slt	$s3, $s2, $t1
	slt	$s2, $s2, $t2
	xori	$s2, $s2, 1
	or	$s2, $s3, $s2
	add.d	$s1, $s1, $s2
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=2
	ld.w	$s3, $t6, 0
	slt	$s4, $s3, $t1
	slli.d	$s2, $s3, 2
	ldx.w	$s5, $a4, $s2
	slt	$s3, $s3, $t2
	xori	$s3, $s3, 1
	or	$s3, $s4, $s3
	add.d	$s1, $s1, $s3
	bge	$s0, $s5, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=2
	ldx.w	$s2, $a6, $s2
	slt	$s3, $s2, $t1
	slt	$s2, $s2, $t2
	xori	$s2, $s2, 1
	or	$s2, $s3, $s2
	add.d	$s1, $s1, $s2
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=2
	ld.w	$s3, $t7, 0
	slt	$s4, $s3, $t1
	slli.d	$s2, $s3, 2
	ldx.w	$s5, $a4, $s2
	slt	$s3, $s3, $t2
	xori	$s3, $s3, 1
	or	$s3, $s4, $s3
	add.w	$s1, $s1, $s3
	bge	$s0, $s5, .LBB0_7
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=2
	ldx.w	$s0, $a6, $s2
	slt	$s2, $s0, $t1
	slt	$s0, $s0, $t2
	xori	$s0, $s0, 1
	or	$s0, $s2, $s0
	add.w	$s1, $s1, $s0
	b	.LBB0_7
.LBB0_17:                               # %.preheader531
	beqz	$s6, .LBB0_207
# %bb.18:                               # %.lr.ph554
	move	$s0, $zero
	move	$s6, $zero
	addi.d	$s1, $sp, 72
	lu12i.w	$a0, 256
	lu52i.d	$a0, $a0, 1107
	movgr2fr.d	$fs0, $a0
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_19:                               # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit443
                                        #   in Loop: Header=BB0_20 Depth=1
	beq	$s0, $s3, .LBB0_207
.LBB0_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_64 Depth 2
                                        #     Child Loop BB0_69 Depth 2
                                        #     Child Loop BB0_72 Depth 2
	slli.d	$s7, $s6, 2
	st.d	$s1, $sp, 80
	st.d	$s1, $sp, 72
	st.d	$zero, $sp, 88
	slli.w	$s8, $s0, 7
	addi.w	$s0, $s0, 1
	slli.w	$s2, $s0, 7
	addi.w	$a0, $s6, 128
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s3, $zero, 128
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               #   in Loop: Header=BB0_22 Depth=2
	addi.d	$s6, $s6, 1
	addi.w	$s3, $s3, -1
	addi.d	$s7, $s7, 4
	beqz	$s3, .LBB0_59
.LBB0_22:                               #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 1160
	bgeu	$s6, $a0, .LBB0_21
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1368
	ldx.w	$s5, $s4, $s7
	blt	$s5, $s8, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=2
	blt	$s5, $s2, .LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_22 Depth=2
.Ltmp46:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.26:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit416
                                        #   in Loop: Header=BB0_22 Depth=2
	ldx.w	$a1, $s4, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s5, $a1, $s7
.LBB0_27:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s5, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_32
# %bb.28:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1392
	ldx.w	$a0, $s4, $a0
	blt	$a0, $s8, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_22 Depth=2
	blt	$a0, $s2, .LBB0_32
.LBB0_30:                               #   in Loop: Header=BB0_22 Depth=2
.Ltmp48:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.31:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit417
                                        #   in Loop: Header=BB0_22 Depth=2
	alsl.d	$a1, $s5, $s4, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
.LBB0_32:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1376
	ldx.w	$s5, $s4, $s7
	blt	$s5, $s8, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_22 Depth=2
	blt	$s5, $s2, .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_22 Depth=2
.Ltmp50:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.35:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit418
                                        #   in Loop: Header=BB0_22 Depth=2
	ldx.w	$a1, $s4, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s5, $a1, $s7
.LBB0_36:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s5, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_41
# %bb.37:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1392
	ldx.w	$a0, $s4, $a0
	blt	$a0, $s8, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_22 Depth=2
	blt	$a0, $s2, .LBB0_41
.LBB0_39:                               #   in Loop: Header=BB0_22 Depth=2
.Ltmp52:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.40:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit419
                                        #   in Loop: Header=BB0_22 Depth=2
	alsl.d	$a1, $s5, $s4, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
.LBB0_41:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1384
	ldx.w	$s5, $s4, $s7
	blt	$s5, $s8, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_22 Depth=2
	blt	$s5, $s2, .LBB0_45
.LBB0_43:                               #   in Loop: Header=BB0_22 Depth=2
.Ltmp54:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.44:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit420
                                        #   in Loop: Header=BB0_22 Depth=2
	ldx.w	$a1, $s4, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s5, $a1, $s7
.LBB0_45:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s5, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_50
# %bb.46:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1376
	ldx.w	$a0, $s4, $a0
	blt	$a0, $s8, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_22 Depth=2
	blt	$a0, $s2, .LBB0_50
.LBB0_48:                               #   in Loop: Header=BB0_22 Depth=2
.Ltmp56:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.49:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit421
                                        #   in Loop: Header=BB0_22 Depth=2
	alsl.d	$a1, $s5, $s4, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
.LBB0_50:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1392
	ldx.w	$s5, $s4, $s7
	blt	$s5, $s8, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_22 Depth=2
	blt	$s5, $s2, .LBB0_54
.LBB0_52:                               #   in Loop: Header=BB0_22 Depth=2
.Ltmp58:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.53:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit422
                                        #   in Loop: Header=BB0_22 Depth=2
	ldx.w	$a1, $s4, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s5, $a1, $s7
.LBB0_54:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s5, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_21
# %bb.55:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1376
	ldx.w	$a0, $s4, $a0
	blt	$a0, $s8, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_22 Depth=2
	blt	$a0, $s2, .LBB0_21
.LBB0_57:                               #   in Loop: Header=BB0_22 Depth=2
.Ltmp60:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.58:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit423
                                        #   in Loop: Header=BB0_22 Depth=2
	alsl.d	$a1, $s5, $s4, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_59:                               #   in Loop: Header=BB0_20 Depth=1
.Ltmp63:                                # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIiSaIiEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.60:                               #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a0, $sp, 72
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s4, $sp, 96
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $s1, .LBB0_71
# %bb.61:                               #   in Loop: Header=BB0_20 Depth=1
	st.d	$s4, $sp, 104
	st.d	$s4, $sp, 96
	st.d	$zero, $sp, 112
	ld.d	$a1, $a0, 0
	bne	$a1, $s1, .LBB0_64
	b	.LBB0_70
	.p2align	4, , 16
.LBB0_62:                               #   in Loop: Header=BB0_64 Depth=2
	move	$a0, $a1
.LBB0_63:                               # %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_S4_.exit.i427
                                        #   in Loop: Header=BB0_64 Depth=2
	ld.d	$a1, $a0, 0
	beq	$a1, $s1, .LBB0_68
.LBB0_64:                               # %.lr.ph.i425
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a1, 16
	bne	$a2, $a3, .LBB0_62
# %bb.65:                               #   in Loop: Header=BB0_64 Depth=2
	ld.d	$a3, $sp, 96
	beq	$a3, $a1, .LBB0_63
# %bb.66:                               #   in Loop: Header=BB0_64 Depth=2
	ld.d	$a2, $a1, 0
	beq	$a2, $a3, .LBB0_63
# %bb.67:                               #   in Loop: Header=BB0_64 Depth=2
	move	$s2, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 88
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 112
	addi.d	$a1, $a2, -1
	st.d	$a1, $sp, 88
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_68:                               # %._crit_edge.i430
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a0, $sp, 96
	beq	$a0, $s4, .LBB0_70
	.p2align	4, , 16
.LBB0_69:                               # %.lr.ph.i.i.i433
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bne	$s2, $s4, .LBB0_69
.LBB0_70:                               # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit.i436
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a0, $sp, 72
.LBB0_71:                               # %_ZNSt7__cxx114listIiSaIiEE6uniqueEv.exit438
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a1, $sp, 88
	srli.d	$a2, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a2, $a2, $a3
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs0
	lu12i.w	$a2, 275200
	bstrins.d	$a1, $a2, 63, 32
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_1)
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa2, $a2, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	movgr2fr.d	$fa3, $a1
	fadd.d	$fa0, $fa3, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $a2, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	beq	$a0, $s1, .LBB0_19
	.p2align	4, , 16
.LBB0_72:                               # %.lr.ph.i.i440
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bne	$s2, $s1, .LBB0_72
	b	.LBB0_19
.LBB0_73:                               # %.preheader533
	beqz	$s6, .LBB0_207
# %bb.74:                               # %.lr.ph
	move	$s3, $zero
	move	$s0, $zero
	addi.d	$s4, $sp, 72
	addi.d	$s5, $sp, 48
	lu12i.w	$a0, 256
	lu52i.d	$a0, $a0, 1107
	movgr2fr.d	$fs0, $a0
	b	.LBB0_76
	.p2align	4, , 16
.LBB0_75:                               # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit503
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	beq	$s3, $s1, .LBB0_207
.LBB0_76:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_78 Depth 2
                                        #     Child Loop BB0_128 Depth 2
                                        #     Child Loop BB0_133 Depth 2
                                        #     Child Loop BB0_139 Depth 2
                                        #     Child Loop BB0_144 Depth 2
                                        #     Child Loop BB0_147 Depth 2
                                        #     Child Loop BB0_149 Depth 2
	slli.d	$s7, $s0, 2
	st.d	$s4, $sp, 80
	st.d	$s4, $sp, 72
	st.d	$zero, $sp, 88
	st.d	$s5, $sp, 56
	st.d	$s5, $sp, 48
	st.d	$zero, $sp, 64
	slli.w	$s2, $s3, 7
	addi.w	$s3, $s3, 1
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	slli.w	$s6, $s3, 7
	addi.w	$a0, $s0, 128
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s1, $zero, 128
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_77:                               #   in Loop: Header=BB0_78 Depth=2
	addi.d	$s0, $s0, 1
	addi.w	$s1, $s1, -1
	addi.d	$s7, $s7, 4
	beqz	$s1, .LBB0_123
.LBB0_78:                               #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 1160
	bgeu	$s0, $a0, .LBB0_77
# %bb.79:                               #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s8, $fp, 1368
	ldx.w	$s3, $s8, $s7
	blt	$s3, $s2, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_78 Depth=2
	blt	$s3, $s6, .LBB0_84
.LBB0_81:                               #   in Loop: Header=BB0_78 Depth=2
.Ltmp0:                                 # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.82:                               #   in Loop: Header=BB0_78 Depth=2
	ldx.w	$a1, $s8, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s3, $a1, $s7
.Ltmp2:                                 # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.83:                               #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s3, 62, 61
	add.w	$a1, $s3, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
	ldx.w	$s3, $a1, $s7
.LBB0_84:                               #   in Loop: Header=BB0_78 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s3, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_90
# %bb.85:                               #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s8, $fp, 1392
	ldx.w	$a0, $s8, $a0
	blt	$a0, $s2, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_78 Depth=2
	blt	$a0, $s6, .LBB0_90
.LBB0_87:                               #   in Loop: Header=BB0_78 Depth=2
.Ltmp5:                                 # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.88:                               #   in Loop: Header=BB0_78 Depth=2
	alsl.d	$a1, $s3, $s8, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$a0, $a1, $s7
	ld.d	$a1, $fp, 1392
	slli.d	$a0, $a0, 2
	ldx.w	$s3, $a1, $a0
.Ltmp7:                                 # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.89:                               #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s3, 62, 61
	add.w	$a1, $s3, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
.LBB0_90:                               #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s8, $fp, 1376
	ldx.w	$s3, $s8, $s7
	blt	$s3, $s2, .LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_78 Depth=2
	blt	$s3, $s6, .LBB0_95
.LBB0_92:                               #   in Loop: Header=BB0_78 Depth=2
.Ltmp10:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.93:                               #   in Loop: Header=BB0_78 Depth=2
	ldx.w	$a1, $s8, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s3, $a1, $s7
.Ltmp12:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.94:                               #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s3, 62, 61
	add.w	$a1, $s3, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
	ldx.w	$s3, $a1, $s7
.LBB0_95:                               #   in Loop: Header=BB0_78 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s3, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_101
# %bb.96:                               #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s8, $fp, 1392
	ldx.w	$a0, $s8, $a0
	blt	$a0, $s2, .LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_78 Depth=2
	blt	$a0, $s6, .LBB0_101
.LBB0_98:                               #   in Loop: Header=BB0_78 Depth=2
.Ltmp15:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.99:                               #   in Loop: Header=BB0_78 Depth=2
	alsl.d	$a1, $s3, $s8, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$a0, $a1, $s7
	ld.d	$a1, $fp, 1392
	slli.d	$a0, $a0, 2
	ldx.w	$s3, $a1, $a0
.Ltmp17:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.100:                              #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s3, 62, 61
	add.w	$a1, $s3, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
.LBB0_101:                              #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s8, $fp, 1384
	ldx.w	$s3, $s8, $s7
	blt	$s3, $s2, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_78 Depth=2
	blt	$s3, $s6, .LBB0_106
.LBB0_103:                              #   in Loop: Header=BB0_78 Depth=2
.Ltmp20:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.104:                              #   in Loop: Header=BB0_78 Depth=2
	ldx.w	$a1, $s8, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s3, $a1, $s7
.Ltmp22:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.105:                              #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s3, 62, 61
	add.w	$a1, $s3, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
	ldx.w	$s3, $a1, $s7
.LBB0_106:                              #   in Loop: Header=BB0_78 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s3, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_112
# %bb.107:                              #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s8, $fp, 1376
	ldx.w	$a0, $s8, $a0
	blt	$a0, $s2, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_78 Depth=2
	blt	$a0, $s6, .LBB0_112
.LBB0_109:                              #   in Loop: Header=BB0_78 Depth=2
.Ltmp25:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.110:                              #   in Loop: Header=BB0_78 Depth=2
	alsl.d	$a1, $s3, $s8, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$a0, $a1, $s7
	ld.d	$a1, $fp, 1376
	slli.d	$a0, $a0, 2
	ldx.w	$s3, $a1, $a0
.Ltmp27:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.111:                              #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s3, 62, 61
	add.w	$a1, $s3, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
.LBB0_112:                              #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s8, $fp, 1392
	ldx.w	$s3, $s8, $s7
	blt	$s3, $s2, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_78 Depth=2
	blt	$s3, $s6, .LBB0_117
.LBB0_114:                              #   in Loop: Header=BB0_78 Depth=2
.Ltmp30:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.115:                              #   in Loop: Header=BB0_78 Depth=2
	ldx.w	$a1, $s8, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s3, $a1, $s7
.Ltmp32:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.116:                              #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s3, 62, 61
	add.w	$a1, $s3, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
	ldx.w	$s3, $a1, $s7
.LBB0_117:                              #   in Loop: Header=BB0_78 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s3, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_77
# %bb.118:                              #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s8, $fp, 1376
	ldx.w	$a0, $s8, $a0
	blt	$a0, $s2, .LBB0_120
# %bb.119:                              #   in Loop: Header=BB0_78 Depth=2
	blt	$a0, $s6, .LBB0_77
.LBB0_120:                              #   in Loop: Header=BB0_78 Depth=2
.Ltmp35:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.121:                              #   in Loop: Header=BB0_78 Depth=2
	alsl.d	$a1, $s3, $s8, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$a0, $a1, $s7
	ld.d	$a1, $fp, 1376
	slli.d	$a0, $a0, 2
	ldx.w	$s3, $a1, $a0
.Ltmp38:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.122:                              #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s3, 62, 61
	add.w	$a1, $s3, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
	b	.LBB0_77
	.p2align	4, , 16
.LBB0_123:                              #   in Loop: Header=BB0_76 Depth=1
.Ltmp41:                                # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIiSaIiEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s2, $sp, 96
# %bb.124:                              #   in Loop: Header=BB0_76 Depth=1
	ld.d	$s0, $sp, 72
	beq	$s0, $s4, .LBB0_134
# %bb.125:                              #   in Loop: Header=BB0_76 Depth=1
	st.d	$s2, $sp, 104
	st.d	$s2, $sp, 96
	st.d	$zero, $sp, 112
	ld.d	$a1, $s0, 0
	bne	$a1, $s4, .LBB0_128
	b	.LBB0_134
	.p2align	4, , 16
.LBB0_126:                              #   in Loop: Header=BB0_128 Depth=2
	move	$s0, $a1
.LBB0_127:                              # %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_S4_.exit.i467
                                        #   in Loop: Header=BB0_128 Depth=2
	ld.d	$a1, $s0, 0
	beq	$a1, $s4, .LBB0_132
.LBB0_128:                              # %.lr.ph.i465
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s0, 16
	ld.w	$a2, $a1, 16
	bne	$a0, $a2, .LBB0_126
# %bb.129:                              #   in Loop: Header=BB0_128 Depth=2
	ld.d	$a0, $sp, 96
	beq	$a0, $a1, .LBB0_127
# %bb.130:                              #   in Loop: Header=BB0_128 Depth=2
	ld.d	$a2, $a1, 0
	beq	$a2, $a0, .LBB0_127
# %bb.131:                              #   in Loop: Header=BB0_128 Depth=2
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112
	ld.d	$a1, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 112
	addi.d	$a0, $a1, -1
	st.d	$a0, $sp, 88
	b	.LBB0_127
	.p2align	4, , 16
.LBB0_132:                              # %._crit_edge.i470
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB0_134
	.p2align	4, , 16
.LBB0_133:                              # %.lr.ph.i.i.i473
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s2, .LBB0_133
.LBB0_134:                              # %_ZNSt7__cxx114listIiSaIiEE6uniqueEv.exit478
                                        #   in Loop: Header=BB0_76 Depth=1
.Ltmp43:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIiSaIiEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.135:                              #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 48
	beq	$a0, $s5, .LBB0_146
# %bb.136:                              #   in Loop: Header=BB0_76 Depth=1
	st.d	$s2, $sp, 104
	st.d	$s2, $sp, 96
	st.d	$zero, $sp, 112
	ld.d	$a1, $a0, 0
	bne	$a1, $s5, .LBB0_139
	b	.LBB0_145
	.p2align	4, , 16
.LBB0_137:                              #   in Loop: Header=BB0_139 Depth=2
	move	$a0, $a1
.LBB0_138:                              # %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_S4_.exit.i482
                                        #   in Loop: Header=BB0_139 Depth=2
	ld.d	$a1, $a0, 0
	beq	$a1, $s5, .LBB0_143
.LBB0_139:                              # %.lr.ph.i480
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a1, 16
	bne	$a2, $a3, .LBB0_137
# %bb.140:                              #   in Loop: Header=BB0_139 Depth=2
	ld.d	$a3, $sp, 96
	beq	$a3, $a1, .LBB0_138
# %bb.141:                              #   in Loop: Header=BB0_139 Depth=2
	ld.d	$a2, $a1, 0
	beq	$a2, $a3, .LBB0_138
# %bb.142:                              #   in Loop: Header=BB0_139 Depth=2
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 64
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 112
	addi.d	$a1, $a2, -1
	st.d	$a1, $sp, 64
	b	.LBB0_138
	.p2align	4, , 16
.LBB0_143:                              # %._crit_edge.i485
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB0_145
	.p2align	4, , 16
.LBB0_144:                              # %.lr.ph.i.i.i488
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s2, .LBB0_144
.LBB0_145:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit.i491
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 48
.LBB0_146:                              # %_ZNSt7__cxx114listIiSaIiEE6uniqueEv.exit493
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a1, $sp, 88
	srli.d	$a2, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a2, $a2, $a3
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs0
	ld.d	$a2, $sp, 64
	lu12i.w	$a4, 275200
	bstrins.d	$a1, $a4, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	srli.d	$a1, $a2, 32
	or	$a1, $a1, $a3
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fs0
	bstrins.d	$a2, $a4, 63, 32
	movgr2fr.d	$fa2, $a2
	fadd.d	$fa1, $fa2, $fa1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI0_0)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa3, $a1, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -1008
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $a1, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	beq	$a0, $s5, .LBB0_148
	.p2align	4, , 16
.LBB0_147:                              # %.lr.ph.i.i495
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s5, .LBB0_147
.LBB0_148:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit498
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 72
	beq	$a0, $s4, .LBB0_75
	.p2align	4, , 16
.LBB0_149:                              # %.lr.ph.i.i500
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s4, .LBB0_149
	b	.LBB0_75
.LBB0_150:                              # %.preheader529
	beqz	$s6, .LBB0_207
# %bb.151:                              # %.lr.ph559
	move	$s6, $zero
	move	$s0, $zero
	addi.d	$s1, $sp, 72
	lu12i.w	$a0, 256
	lu52i.d	$a0, $a0, 1107
	movgr2fr.d	$fs0, $a0
	lu52i.d	$a0, $zero, 1016
	movgr2fr.d	$fs1, $a0
	b	.LBB0_153
	.p2align	4, , 16
.LBB0_152:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit
                                        #   in Loop: Header=BB0_153 Depth=1
	beq	$s0, $s3, .LBB0_207
.LBB0_153:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_157 Depth 2
                                        #     Child Loop BB0_197 Depth 2
                                        #     Child Loop BB0_202 Depth 2
                                        #     Child Loop BB0_205 Depth 2
	slli.d	$s7, $s6, 2
	st.d	$s1, $sp, 80
	st.d	$s1, $sp, 72
	st.d	$zero, $sp, 88
	slli.w	$s8, $s0, 7
	addi.w	$s0, $s0, 1
	slli.w	$s2, $s0, 7
	addi.w	$a0, $s6, 128
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s3, $zero, 128
	b	.LBB0_157
.LBB0_154:                              #   in Loop: Header=BB0_157 Depth=2
.Ltmp80:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.155:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit410
                                        #   in Loop: Header=BB0_157 Depth=2
	alsl.d	$a1, $s4, $s5, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	.p2align	4, , 16
.LBB0_156:                              #   in Loop: Header=BB0_157 Depth=2
	addi.d	$s6, $s6, 1
	addi.w	$s3, $s3, -1
	addi.d	$s7, $s7, 4
	beqz	$s3, .LBB0_192
.LBB0_157:                              #   Parent Loop BB0_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 1160
	bgeu	$s6, $a0, .LBB0_156
# %bb.158:                              #   in Loop: Header=BB0_157 Depth=2
	ld.d	$s5, $fp, 1368
	ldx.w	$s4, $s5, $s7
	blt	$s4, $s8, .LBB0_160
# %bb.159:                              #   in Loop: Header=BB0_157 Depth=2
	blt	$s4, $s2, .LBB0_162
.LBB0_160:                              #   in Loop: Header=BB0_157 Depth=2
.Ltmp66:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.161:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB0_157 Depth=2
	ldx.w	$a1, $s5, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s4, $a1, $s7
.LBB0_162:                              #   in Loop: Header=BB0_157 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s4, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_167
# %bb.163:                              #   in Loop: Header=BB0_157 Depth=2
	ld.d	$s5, $fp, 1392
	ldx.w	$a0, $s5, $a0
	blt	$a0, $s8, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_157 Depth=2
	blt	$a0, $s2, .LBB0_167
.LBB0_165:                              #   in Loop: Header=BB0_157 Depth=2
.Ltmp68:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.166:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit404
                                        #   in Loop: Header=BB0_157 Depth=2
	alsl.d	$a1, $s4, $s5, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
.LBB0_167:                              #   in Loop: Header=BB0_157 Depth=2
	ld.d	$s5, $fp, 1376
	ldx.w	$s4, $s5, $s7
	blt	$s4, $s8, .LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_157 Depth=2
	blt	$s4, $s2, .LBB0_171
.LBB0_169:                              #   in Loop: Header=BB0_157 Depth=2
.Ltmp70:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.170:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit405
                                        #   in Loop: Header=BB0_157 Depth=2
	ldx.w	$a1, $s5, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s4, $a1, $s7
.LBB0_171:                              #   in Loop: Header=BB0_157 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s4, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_176
# %bb.172:                              #   in Loop: Header=BB0_157 Depth=2
	ld.d	$s5, $fp, 1392
	ldx.w	$a0, $s5, $a0
	blt	$a0, $s8, .LBB0_174
# %bb.173:                              #   in Loop: Header=BB0_157 Depth=2
	blt	$a0, $s2, .LBB0_176
.LBB0_174:                              #   in Loop: Header=BB0_157 Depth=2
.Ltmp72:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.175:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit406
                                        #   in Loop: Header=BB0_157 Depth=2
	alsl.d	$a1, $s4, $s5, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
.LBB0_176:                              #   in Loop: Header=BB0_157 Depth=2
	ld.d	$s5, $fp, 1384
	ldx.w	$s4, $s5, $s7
	blt	$s4, $s8, .LBB0_178
# %bb.177:                              #   in Loop: Header=BB0_157 Depth=2
	blt	$s4, $s2, .LBB0_180
.LBB0_178:                              #   in Loop: Header=BB0_157 Depth=2
.Ltmp74:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.179:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit407
                                        #   in Loop: Header=BB0_157 Depth=2
	ldx.w	$a1, $s5, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s4, $a1, $s7
.LBB0_180:                              #   in Loop: Header=BB0_157 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s4, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_185
# %bb.181:                              #   in Loop: Header=BB0_157 Depth=2
	ld.d	$s5, $fp, 1376
	ldx.w	$a0, $s5, $a0
	blt	$a0, $s8, .LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_157 Depth=2
	blt	$a0, $s2, .LBB0_185
.LBB0_183:                              #   in Loop: Header=BB0_157 Depth=2
.Ltmp76:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.184:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit408
                                        #   in Loop: Header=BB0_157 Depth=2
	alsl.d	$a1, $s4, $s5, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
.LBB0_185:                              #   in Loop: Header=BB0_157 Depth=2
	ld.d	$s5, $fp, 1392
	ldx.w	$s4, $s5, $s7
	blt	$s4, $s8, .LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_157 Depth=2
	blt	$s4, $s2, .LBB0_189
.LBB0_187:                              #   in Loop: Header=BB0_157 Depth=2
.Ltmp78:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.188:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit409
                                        #   in Loop: Header=BB0_157 Depth=2
	ldx.w	$a1, $s5, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s4, $a1, $s7
.LBB0_189:                              #   in Loop: Header=BB0_157 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s4, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_156
# %bb.190:                              #   in Loop: Header=BB0_157 Depth=2
	ld.d	$s5, $fp, 1376
	ldx.w	$a0, $s5, $a0
	blt	$a0, $s8, .LBB0_154
# %bb.191:                              #   in Loop: Header=BB0_157 Depth=2
	blt	$a0, $s2, .LBB0_156
	b	.LBB0_154
	.p2align	4, , 16
.LBB0_192:                              #   in Loop: Header=BB0_153 Depth=1
.Ltmp83:                                # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIiSaIiEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.193:                              #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a0, $sp, 72
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s4, $sp, 96
	beq	$a0, $s1, .LBB0_204
# %bb.194:                              #   in Loop: Header=BB0_153 Depth=1
	st.d	$s4, $sp, 104
	st.d	$s4, $sp, 96
	st.d	$zero, $sp, 112
	ld.d	$a1, $a0, 0
	bne	$a1, $s1, .LBB0_197
	b	.LBB0_203
	.p2align	4, , 16
.LBB0_195:                              #   in Loop: Header=BB0_197 Depth=2
	move	$a0, $a1
.LBB0_196:                              # %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_S4_.exit.i
                                        #   in Loop: Header=BB0_197 Depth=2
	ld.d	$a1, $a0, 0
	beq	$a1, $s1, .LBB0_201
.LBB0_197:                              # %.lr.ph.i
                                        #   Parent Loop BB0_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a1, 16
	bne	$a2, $a3, .LBB0_195
# %bb.198:                              #   in Loop: Header=BB0_197 Depth=2
	ld.d	$a3, $sp, 96
	beq	$a3, $a1, .LBB0_196
# %bb.199:                              #   in Loop: Header=BB0_197 Depth=2
	ld.d	$a2, $a1, 0
	beq	$a2, $a3, .LBB0_196
# %bb.200:                              #   in Loop: Header=BB0_197 Depth=2
	move	$s2, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 88
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 112
	addi.d	$a1, $a2, -1
	st.d	$a1, $sp, 88
	b	.LBB0_196
	.p2align	4, , 16
.LBB0_201:                              # %._crit_edge.i
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a0, $sp, 96
	beq	$a0, $s4, .LBB0_203
	.p2align	4, , 16
.LBB0_202:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB0_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bne	$s2, $s4, .LBB0_202
.LBB0_203:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit.i
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a0, $sp, 72
.LBB0_204:                              # %_ZNSt7__cxx114listIiSaIiEE6uniqueEv.exit
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a1, $sp, 88
	srli.d	$a2, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a2, $a2, $a3
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs0
	lu12i.w	$a2, 275200
	bstrins.d	$a1, $a2, 63, 32
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa1, $a2, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a2, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	beq	$a0, $s1, .LBB0_152
	.p2align	4, , 16
.LBB0_205:                              # %.lr.ph.i.i
                                        #   Parent Loop BB0_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bne	$s2, $s1, .LBB0_205
	b	.LBB0_152
.LBB0_206:                              # %..loopexit_crit_edge
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
.LBB0_207:                              # %.loopexit
	pcalau12i	$a0, %pc_hi20(meas_count)
	ld.w	$a1, $a0, %pc_lo12(meas_count)
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(meas_count)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	pcalau12i	$a0, %pc_hi20(meas_sum_average)
	fld.d	$fa1, $a0, %pc_lo12(meas_sum_average)
	movgr2fr.d	$fa2, $a2
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, %pc_lo12(meas_sum_average)
.LBB0_208:
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
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
.LBB0_209:
.Ltmp85:                                # EH_LABEL
	b	.LBB0_226
.LBB0_210:
.Ltmp65:                                # EH_LABEL
	b	.LBB0_229
.LBB0_211:
.Ltmp45:                                # EH_LABEL
	b	.LBB0_221
.LBB0_212:
.Ltmp19:                                # EH_LABEL
	b	.LBB0_221
.LBB0_213:
.Ltmp9:                                 # EH_LABEL
	b	.LBB0_221
.LBB0_214:
.Ltmp40:                                # EH_LABEL
	b	.LBB0_221
.LBB0_215:
.Ltmp29:                                # EH_LABEL
	b	.LBB0_221
.LBB0_216:
.Ltmp34:                                # EH_LABEL
	b	.LBB0_221
.LBB0_217:
.Ltmp24:                                # EH_LABEL
	b	.LBB0_221
.LBB0_218:
.Ltmp14:                                # EH_LABEL
	b	.LBB0_221
.LBB0_219:
.Ltmp4:                                 # EH_LABEL
	b	.LBB0_221
.LBB0_220:
.Ltmp37:                                # EH_LABEL
.LBB0_221:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$s0, $sp, 48
	beq	$a0, $s0, .LBB0_223
	.p2align	4, , 16
.LBB0_222:                              # %.lr.ph.i.i505
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB0_222
.LBB0_223:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit508
	ld.d	$a0, $sp, 72
	addi.d	$s0, $sp, 72
	beq	$a0, $s0, .LBB0_231
	.p2align	4, , 16
.LBB0_224:                              # %.lr.ph.i.i510
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB0_224
	b	.LBB0_231
.LBB0_225:
.Ltmp82:                                # EH_LABEL
.LBB0_226:
	move	$fp, $a0
	ld.d	$a0, $sp, 72
	addi.d	$s0, $sp, 72
	beq	$a0, $s0, .LBB0_231
	.p2align	4, , 16
.LBB0_227:                              # %.lr.ph.i.i412
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB0_227
	b	.LBB0_231
.LBB0_228:
.Ltmp62:                                # EH_LABEL
.LBB0_229:
	move	$fp, $a0
	ld.d	$a0, $sp, 72
	addi.d	$s0, $sp, 72
	beq	$a0, $s0, .LBB0_231
	.p2align	4, , 16
.LBB0_230:                              # %.lr.ph.i.i445
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB0_230
.LBB0_231:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN4Mesh17partition_measureEv, .Lfunc_end0-_ZN4Mesh17partition_measureEv
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_3-.LJTI0_0
	.word	.LBB0_150-.LJTI0_0
	.word	.LBB0_17-.LJTI0_0
	.word	.LBB0_73-.LJTI0_0
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 1 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 2 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp63-.Ltmp61                #   Call between .Ltmp61 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp0-.Ltmp64                 #   Call between .Ltmp64 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 19 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 20 <<
	.uleb128 .Ltmp2-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 21 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 22 <<
	.uleb128 .Ltmp5-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 23 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 24 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 25 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 26 <<
	.uleb128 .Ltmp10-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp20-.Ltmp18                #   Call between .Ltmp18 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 37 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 38 <<
	.uleb128 .Ltmp25-.Ltmp23                #   Call between .Ltmp23 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 39 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 40 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 41 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 42 <<
	.uleb128 .Ltmp30-.Ltmp28                #   Call between .Ltmp28 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 43 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 44 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 45 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 46 <<
	.uleb128 .Ltmp35-.Ltmp33                #   Call between .Ltmp33 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 47 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 48 <<
	.uleb128 .Ltmp38-.Ltmp36                #   Call between .Ltmp36 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 49 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 50 <<
	.uleb128 .Ltmp41-.Ltmp39                #   Call between .Ltmp39 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 51 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 52 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 53 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 54 <<
	.uleb128 .Ltmp80-.Ltmp44                #   Call between .Ltmp44 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 55 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 56 <<
	.uleb128 .Ltmp66-.Ltmp81                #   Call between .Ltmp81 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 57 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 58 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 59 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 60 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin0          # >> Call Site 61 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 62 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin0          # >> Call Site 63 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin0          # >> Call Site 64 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin0          # >> Call Site 65 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin0          # >> Call Site 66 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin0          # >> Call Site 67 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 68 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 69 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin0          # >> Call Site 70 <<
	.uleb128 .Ltmp83-.Ltmp79                #   Call between .Ltmp79 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 71 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin0          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin0          # >> Call Site 72 <<
	.uleb128 .Lfunc_end0-.Ltmp84            #   Call between .Ltmp84 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt7__cxx114listIiSaIiEE4sortEv,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE4sortEv,comdat
	.weak	_ZNSt7__cxx114listIiSaIiEE4sortEv # -- Begin function _ZNSt7__cxx114listIiSaIiEE4sortEv
	.p2align	5
	.type	_ZNSt7__cxx114listIiSaIiEE4sortEv,@function
_ZNSt7__cxx114listIiSaIiEE4sortEv:      # @_ZNSt7__cxx114listIiSaIiEE4sortEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -1136
	.cfi_def_cfa_offset 1136
	st.d	$ra, $sp, 1128                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1048                  # 8-byte Folded Spill
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
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB1_20
# %bb.1:
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB1_20
# %bb.2:                                # %.preheader50.preheader
	move	$s3, $zero
	addi.d	$s4, $sp, 1032
	st.d	$s4, $sp, 1040
	st.d	$s4, $sp, 1032
	addi.d	$a0, $sp, 8
	st.d	$a0, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 40
	st.d	$a0, $sp, 48
	st.d	$a0, $sp, 40
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 64
	st.d	$a0, $sp, 56
	addi.d	$a0, $sp, 72
	st.d	$a0, $sp, 80
	st.d	$a0, $sp, 72
	addi.d	$a0, $sp, 88
	st.d	$a0, $sp, 96
	st.d	$a0, $sp, 88
	addi.d	$a0, $sp, 104
	st.d	$a0, $sp, 112
	st.d	$a0, $sp, 104
	addi.d	$a0, $sp, 120
	st.d	$a0, $sp, 128
	st.d	$a0, $sp, 120
	addi.d	$a0, $sp, 136
	st.d	$a0, $sp, 144
	st.d	$a0, $sp, 136
	addi.d	$a0, $sp, 152
	st.d	$a0, $sp, 160
	st.d	$a0, $sp, 152
	addi.d	$a0, $sp, 168
	st.d	$a0, $sp, 176
	st.d	$a0, $sp, 168
	addi.d	$a0, $sp, 184
	st.d	$a0, $sp, 192
	st.d	$a0, $sp, 184
	addi.d	$a0, $sp, 200
	st.d	$a0, $sp, 208
	st.d	$a0, $sp, 200
	addi.d	$a0, $sp, 216
	st.d	$a0, $sp, 224
	st.d	$a0, $sp, 216
	addi.d	$a0, $sp, 232
	st.d	$a0, $sp, 240
	st.d	$a0, $sp, 232
	addi.d	$a0, $sp, 248
	st.d	$a0, $sp, 256
	st.d	$a0, $sp, 248
	addi.d	$a0, $sp, 264
	st.d	$a0, $sp, 272
	st.d	$a0, $sp, 264
	addi.d	$a0, $sp, 280
	st.d	$a0, $sp, 288
	st.d	$a0, $sp, 280
	addi.d	$a0, $sp, 296
	st.d	$a0, $sp, 304
	st.d	$a0, $sp, 296
	addi.d	$a0, $sp, 312
	st.d	$a0, $sp, 320
	st.d	$a0, $sp, 312
	addi.d	$a0, $sp, 328
	st.d	$a0, $sp, 336
	st.d	$a0, $sp, 328
	addi.d	$a0, $sp, 344
	st.d	$a0, $sp, 352
	st.d	$a0, $sp, 344
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 368
	st.d	$a0, $sp, 360
	addi.d	$a0, $sp, 376
	st.d	$a0, $sp, 384
	st.d	$a0, $sp, 376
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 400
	st.d	$a0, $sp, 392
	addi.d	$a0, $sp, 408
	st.d	$a0, $sp, 416
	st.d	$a0, $sp, 408
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 432
	st.d	$a0, $sp, 424
	addi.d	$a0, $sp, 440
	st.d	$a0, $sp, 448
	st.d	$a0, $sp, 440
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 464
	st.d	$a0, $sp, 456
	addi.d	$a0, $sp, 472
	st.d	$a0, $sp, 480
	st.d	$a0, $sp, 472
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 496
	st.d	$a0, $sp, 488
	addi.d	$a0, $sp, 504
	st.d	$a0, $sp, 512
	st.d	$a0, $sp, 504
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 528
	st.d	$a0, $sp, 520
	addi.d	$a0, $sp, 536
	st.d	$a0, $sp, 544
	st.d	$a0, $sp, 536
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 560
	st.d	$a0, $sp, 552
	addi.d	$a0, $sp, 568
	st.d	$a0, $sp, 576
	st.d	$a0, $sp, 568
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 592
	st.d	$a0, $sp, 584
	addi.d	$a0, $sp, 600
	st.d	$a0, $sp, 608
	st.d	$a0, $sp, 600
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 624
	st.d	$a0, $sp, 616
	addi.d	$a0, $sp, 632
	st.d	$a0, $sp, 640
	st.d	$a0, $sp, 632
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 656
	st.d	$a0, $sp, 648
	addi.d	$a0, $sp, 664
	st.d	$a0, $sp, 672
	st.d	$a0, $sp, 664
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 688
	st.d	$a0, $sp, 680
	addi.d	$a0, $sp, 696
	st.d	$a0, $sp, 704
	st.d	$a0, $sp, 696
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 720
	st.d	$a0, $sp, 712
	addi.d	$a0, $sp, 728
	st.d	$a0, $sp, 736
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 752
	st.d	$a0, $sp, 744
	addi.d	$a0, $sp, 760
	st.d	$a0, $sp, 768
	st.d	$a0, $sp, 760
	addi.d	$a0, $sp, 776
	st.d	$a0, $sp, 784
	st.d	$a0, $sp, 776
	addi.d	$a0, $sp, 792
	st.d	$a0, $sp, 800
	st.d	$a0, $sp, 792
	addi.d	$a0, $sp, 808
	st.d	$a0, $sp, 816
	st.d	$a0, $sp, 808
	addi.d	$a0, $sp, 824
	st.d	$a0, $sp, 832
	st.d	$a0, $sp, 824
	addi.d	$a0, $sp, 840
	st.d	$a0, $sp, 848
	st.d	$a0, $sp, 840
	addi.d	$a0, $sp, 856
	st.d	$a0, $sp, 864
	st.d	$a0, $sp, 856
	addi.d	$a0, $sp, 872
	st.d	$a0, $sp, 880
	st.d	$a0, $sp, 872
	addi.d	$a0, $sp, 888
	st.d	$a0, $sp, 896
	st.d	$a0, $sp, 888
	addi.d	$a0, $sp, 904
	st.d	$a0, $sp, 912
	st.d	$a0, $sp, 904
	addi.d	$a0, $sp, 920
	st.d	$a0, $sp, 928
	st.d	$a0, $sp, 920
	addi.d	$a0, $sp, 936
	st.d	$a0, $sp, 944
	st.d	$a0, $sp, 936
	addi.d	$a0, $sp, 952
	st.d	$a0, $sp, 960
	st.d	$a0, $sp, 952
	addi.d	$a0, $sp, 968
	st.d	$a0, $sp, 976
	st.d	$a0, $sp, 968
	addi.d	$a0, $sp, 984
	st.d	$a0, $sp, 992
	st.d	$a0, $sp, 984
	addi.d	$a0, $sp, 1000
	st.d	$a0, $sp, 1008
	st.d	$a0, $sp, 1000
	addi.d	$a0, $sp, 1016
	st.d	$a0, $sp, 1024
	st.d	$a0, $sp, 1016
	ld.d	$a1, $fp, 0
	addi.d	$s7, $sp, 24
	st.d	$s7, $sp, 32
	st.d	$s7, $sp, 24
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_3:                                #   in Loop: Header=BB1_5 Depth=1
	move	$s8, $zero
	addi.d	$s0, $sp, 8
.LBB1_4:                                # %.critedge2
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a0, $sp, 1032
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base4swapERS0_S1_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	add.d	$s3, $s3, $s5
	beq	$a1, $fp, .LBB1_18
.LBB1_5:                                # %.preheader50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_10 Depth 3
	ld.d	$a2, $a1, 0
	addi.d	$a0, $sp, 8
	add.d	$s6, $a0, $s3
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 16
	beqz	$s3, .LBB1_3
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s0, $sp, 8
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %_ZNSt6__list13_Scratch_listINSt8__detail15_List_node_baseEE5mergeINS3_8_Ptr_cmpISt14_List_iteratorIiEvEEEEvRS2_T_.exit
                                        #   in Loop: Header=BB1_8 Depth=2
	addi.d	$a0, $sp, 1032
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base4swapERS0_S1_)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 16
	beq	$s0, $s6, .LBB1_17
.LBB1_8:                                # %.lr.ph
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_10 Depth 3
	ld.d	$s1, $s0, 0
	beq	$s1, $s0, .LBB1_16
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a1, $sp, 1032
	beq	$a1, $s4, .LBB1_7
	.p2align	4, , 16
.LBB1_10:                               # %.lr.ph.i
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $a1, 16
	ld.w	$a2, $s1, 16
	bge	$a0, $a2, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=3
	ld.d	$s2, $a1, 0
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	bne	$a1, $s4, .LBB1_13
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_10 Depth=3
	ld.d	$s1, $s1, 0
	beq	$a1, $s4, .LBB1_14
.LBB1_13:                               #   in Loop: Header=BB1_10 Depth=3
	bne	$s1, $s0, .LBB1_10
.LBB1_14:                               # %._crit_edge.i
                                        #   in Loop: Header=BB1_8 Depth=2
	beq	$a1, $s4, .LBB1_7
# %bb.15:                               #   in Loop: Header=BB1_8 Depth=2
	addi.d	$a2, $sp, 1032
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_16:                               #   in Loop: Header=BB1_5 Depth=1
	move	$s5, $zero
	addi.w	$s8, $zero, -16
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_17:                               #   in Loop: Header=BB1_5 Depth=1
	move	$s8, $zero
	move	$s0, $s6
	b	.LBB1_4
.LBB1_18:                               # %.preheader
	ori	$a0, $zero, 16
	bne	$s3, $a0, .LBB1_21
.LBB1_19:                               # %._crit_edge
	add.d	$a0, $s6, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base4swapERS0_S1_)
	jirl	$ra, $ra, 0
.LBB1_20:                               # %.critedge
	ld.d	$s8, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1128                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1136
	ret
.LBB1_21:                               # %.lr.ph65.preheader
	addi.d	$s0, $sp, 8
	add.d	$s4, $s0, $s3
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_22:                               # %_ZNSt6__list13_Scratch_listINSt8__detail15_List_node_baseEE5mergeINS3_8_Ptr_cmpISt14_List_iteratorIiEvEEEEvRS2_T_.exit43
                                        #   in Loop: Header=BB1_23 Depth=1
	addi.d	$s7, $s1, 16
	move	$s0, $s1
	beq	$s7, $s4, .LBB1_19
.LBB1_23:                               # %.lr.ph65
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_25 Depth 2
	ld.d	$a1, $s0, 0
	ld.d	$s2, $s0, 16
	move	$s1, $s7
	xor	$a0, $a1, $s0
	sltu	$a0, $zero, $a0
	beq	$s2, $s7, .LBB1_29
# %bb.24:                               # %.lr.ph65
                                        #   in Loop: Header=BB1_23 Depth=1
	beq	$a1, $s0, .LBB1_29
	.p2align	4, , 16
.LBB1_25:                               # %.lr.ph.i38
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $a1, 16
	ld.w	$a2, $s2, 16
	bge	$a0, $a2, .LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_25 Depth=2
	ld.d	$s3, $a1, 0
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	xor	$a0, $a1, $s0
	sltu	$a0, $zero, $a0
	bne	$a1, $s0, .LBB1_28
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_27:                               #   in Loop: Header=BB1_25 Depth=2
	ld.d	$s2, $s2, 0
	xor	$a0, $a1, $s0
	sltu	$a0, $zero, $a0
	beq	$a1, $s0, .LBB1_29
.LBB1_28:                               #   in Loop: Header=BB1_25 Depth=2
	bne	$s2, $s1, .LBB1_25
.LBB1_29:                               # %._crit_edge.i35
                                        #   in Loop: Header=BB1_23 Depth=1
	beqz	$a0, .LBB1_22
# %bb.30:                               #   in Loop: Header=BB1_23 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	b	.LBB1_22
.Lfunc_end1:
	.size	_ZNSt7__cxx114listIiSaIiEE4sortEv, .Lfunc_end1-_ZNSt7__cxx114listIiSaIiEE4sortEv
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN4Mesh23print_partition_measureEv # -- Begin function _ZN4Mesh23print_partition_measureEv
	.p2align	5
	.type	_ZN4Mesh23print_partition_measureEv,@function
_ZN4Mesh23print_partition_measureEv:    # @_ZN4Mesh23print_partition_measureEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a1, %pc_hi20(meas_count)
	ld.w	$a1, $a1, %pc_lo12(meas_count)
	beqz	$a1, .LBB2_4
# %bb.1:
	pcalau12i	$a2, %pc_hi20(measure_type)
	ld.w	$a2, $a2, %pc_lo12(measure_type)
	ori	$a3, $zero, 4
	bltu	$a3, $a2, .LBB2_4
# %bb.2:
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI2_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI2_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB2_3:
	ld.w	$a1, $a0, 620
	beqz	$a1, .LBB2_14
.LBB2_4:
	ld.w	$a1, $a0, 624
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB2_13
.LBB2_5:
	fld.d	$fa0, $a0, 664
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a3, $a2, %pc_lo12(.L.str.3)
	move	$a2, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN4Mesh15parallel_outputEPKcdiS1_)
	jr	$t8
.LBB2_6:
	pcalau12i	$a2, %pc_hi20(meas_sum_average)
	fld.d	$fa0, $a2, %pc_lo12(meas_sum_average)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	b	.LBB2_9
.LBB2_7:
	pcalau12i	$a2, %pc_hi20(meas_sum_average)
	fld.d	$fa0, $a2, %pc_lo12(meas_sum_average)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a3, $a2, %pc_lo12(.L.str.3)
	b	.LBB2_11
.LBB2_8:
	pcalau12i	$a2, %pc_hi20(meas_sum_average)
	fld.d	$fa0, $a2, %pc_lo12(meas_sum_average)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
.LBB2_9:
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a3, $a2, %pc_lo12(.L.str.5)
	b	.LBB2_11
.LBB2_10:
	pcalau12i	$a2, %pc_hi20(meas_sum_average)
	fld.d	$fa0, $a2, %pc_lo12(meas_sum_average)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a3, $a2, %pc_lo12(.L.str.2)
.LBB2_11:
	move	$fp, $a0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh15parallel_outputEPKcdiS1_)
	jirl	$ra, $ra, 0
.LBB2_12:
	move	$a0, $fp
	ld.w	$a1, $a0, 624
	ori	$a2, $zero, 2
	bge	$a1, $a2, .LBB2_5
.LBB2_13:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_14:
	pcalau12i	$a1, %pc_hi20(.Lstr)
	addi.d	$a1, $a1, %pc_lo12(.Lstr)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB2_12
.Lfunc_end2:
	.size	_ZN4Mesh23print_partition_measureEv, .Lfunc_end2-_ZN4Mesh23print_partition_measureEv
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_3-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_7-.LJTI2_0
	.word	.LBB2_8-.LJTI2_0
	.word	.LBB2_6-.LJTI2_0
                                        # -- End function
	.text
	.globl	_ZN4Mesh20print_partition_typeEv # -- Begin function _ZN4Mesh20print_partition_typeEv
	.p2align	5
	.type	_ZN4Mesh20print_partition_typeEv,@function
_ZN4Mesh20print_partition_typeEv:       # @_ZN4Mesh20print_partition_typeEv
# %bb.0:
	ld.w	$a0, $a0, 620
	beqz	$a0, .LBB3_2
# %bb.1:
	ret
.LBB3_2:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(initial_order)
	ld.d	$a0, $a0, %got_pc_lo12(initial_order)
	ld.w	$a0, $a0, 0
	ori	$fp, $zero, 3
	bltu	$fp, $a0, .LBB3_4
# %bb.3:                                # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZN4Mesh20print_partition_typeEv)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZN4Mesh20print_partition_typeEv)
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_4:
	pcalau12i	$a0, %got_pc_hi20(cycle_reorder)
	ld.d	$a0, $a0, %got_pc_lo12(cycle_reorder)
	ld.w	$a0, $a0, 0
	bltu	$fp, $a0, .LBB3_6
# %bb.5:                                # %switch.lookup3
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZN4Mesh20print_partition_typeEv.2)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZN4Mesh20print_partition_typeEv.2)
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_6:
	pcalau12i	$a0, %got_pc_hi20(localStencil)
	ld.d	$a0, $a0, %got_pc_lo12(localStencil)
	ld.bu	$a0, $a0, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	beqz	$a0, .LBB3_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB3_8:
	ori	$a0, $zero, 10
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end3:
	.size	_ZN4Mesh20print_partition_typeEv, .Lfunc_end3-_ZN4Mesh20print_partition_typeEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method
.LCPI4_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method
	.p2align	5
	.type	_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method,@function
_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method: # @_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
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
	move	$s1, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$fp, $a0
	st.d	$zero, $sp, 96
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 80
.Ltmp86:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.1:
	ld.d	$a2, $fp, 1160
	st.w	$zero, $sp, 60
	beqz	$a2, .LBB4_3
# %bb.2:
.Ltmp88:                                # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a3, $sp, 60
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
.LBB4_3:                                # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
	ld.w	$a0, $fp, 628
	beqz	$a0, .LBB4_14
# %bb.4:
	ori	$a0, $zero, 3
	beq	$s1, $a0, .LBB4_43
.LBB4_5:
	ori	$a0, $zero, 1
	beq	$s1, $a0, .LBB4_16
# %bb.6:
	bnez	$s1, .LBB4_44
# %bb.7:                                # %.preheader
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB4_12
# %bb.8:                                # %.lr.ph543
	ld.d	$a1, $s0, 0
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB4_91
# %bb.9:
	move	$a2, $zero
.LBB4_10:                               # %scalar.ph1058.preheader
	move	$a3, $a2
	.p2align	4, , 16
.LBB4_11:                               # %scalar.ph1058
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a2, 2
	stx.w	$a3, $a1, $a2
	addi.w	$a3, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	bltu	$a2, $a0, .LBB4_11
.LBB4_12:                               # %._crit_edge544
	ld.d	$a0, $sp, 64
	ld.d	$a1, $sp, 72
.Ltmp153:                               # EH_LABEL
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.13:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit234.thread
	fld.d	$fa1, $fp, 368
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 368
	b	.LBB4_184
.LBB4_14:
	ld.d	$a0, $fp, 864
	ld.d	$a2, $fp, 856
	ld.d	$a1, $fp, 1160
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB4_28
# %bb.15:
	addi.d	$a0, $fp, 856
	sub.d	$a1, $a1, $a3
.Ltmp91:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
	b	.LBB4_31
.LBB4_16:
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 1424
	ld.d	$a1, $fp, 1416
	ld.d	$a2, $fp, 1160
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 3
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	bgeu	$a0, $a2, .LBB4_18
# %bb.17:
.Ltmp121:                               # EH_LABEL
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh24calc_spatial_coordinatesEi)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
.LBB4_18:
.Ltmp123:                               # EH_LABEL
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh17calc_centerminmaxEv)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.19:
	ld.d	$s6, $fp, 1160
	beqz	$s6, .LBB4_66
# %bb.20:
	srli.d	$a0, $s6, 60
	bnez	$a0, .LBB4_243
# %bb.21:
	slli.d	$s5, $s6, 3
.Ltmp125:                               # EH_LABEL
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.22:                               # %.noexc250
	move	$s4, $a0
	move	$s3, $a0
	ori	$a0, $zero, 1
	st.d	$zero, $s4, 0
	beq	$s6, $a0, .LBB4_24
# %bb.23:                               # %.lr.ph.i.preheader.i.i.i31.i
	addi.d	$a0, $s4, 8
	addi.d	$a2, $s5, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_24:
	alsl.d	$s8, $s6, $s4, 3
.Ltmp127:                               # EH_LABEL
	move	$s0, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.25:                               # %.noexc266
	move	$s4, $a0
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$zero, $s4, 0
	beq	$s6, $a0, .LBB4_27
# %bb.26:                               # %.lr.ph.i.preheader.i.i.i31.i258
	addi.d	$a0, $s4, 8
	addi.d	$a2, $s5, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_27:                               # %.noexc182
	alsl.d	$s5, $s6, $s4, 3
	bnez	$s6, .LBB4_67
	b	.LBB4_71
.LBB4_28:
	bgeu	$a1, $a3, .LBB4_31
# %bb.29:
	alsl.d	$a1, $a1, $a2, 2
	beq	$a0, $a1, .LBB4_31
# %bb.30:
	st.d	$a1, $fp, 864
.LBB4_31:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	blez	$s2, .LBB4_42
# %bb.32:                               # %.lr.ph20.i
	ld.d	$a3, $fp, 864
	ld.d	$a0, $fp, 856
	move	$a1, $zero
	move	$a2, $zero
	sub.d	$a3, $a3, $a0
	srai.d	$a4, $a3, 2
	div.du	$a3, $a4, $s2
	addi.w	$a4, $a4, 0
	mod.w	$a4, $a4, $s2
	addi.d	$a5, $a0, 16
	ori	$a6, $zero, 8
	b	.LBB4_34
	.p2align	4, , 16
.LBB4_33:                               # %._crit_edge.i
                                        #   in Loop: Header=BB4_34 Depth=1
	addi.w	$a1, $a1, 1
	beq	$a1, $s2, .LBB4_42
.LBB4_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_38 Depth 2
                                        #     Child Loop BB4_41 Depth 2
	add.d	$a2, $a2, $a3
	slt	$a7, $a1, $a4
	add.w	$a2, $a2, $a7
	blez	$a2, .LBB4_33
# %bb.35:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB4_34 Depth=1
	bgeu	$a2, $a6, .LBB4_37
# %bb.36:                               #   in Loop: Header=BB4_34 Depth=1
	move	$a7, $zero
	b	.LBB4_40
	.p2align	4, , 16
.LBB4_37:                               # %vector.ph
                                        #   in Loop: Header=BB4_34 Depth=1
	bstrpick.d	$a7, $a2, 30, 3
	slli.d	$a7, $a7, 3
	vreplgr2vr.w	$vr0, $a1
	move	$t0, $a5
	move	$t1, $a7
	.p2align	4, , 16
.LBB4_38:                               # %vector.body
                                        #   Parent Loop BB4_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t0, -16
	vst	$vr0, $t0, 0
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB4_38
# %bb.39:                               # %middle.block
                                        #   in Loop: Header=BB4_34 Depth=1
	beq	$a7, $a2, .LBB4_33
.LBB4_40:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_34 Depth=1
	alsl.d	$t0, $a7, $a0, 2
	.p2align	4, , 16
.LBB4_41:                               # %.lr.ph.i
                                        #   Parent Loop BB4_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $t0, 0
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 4
	bltu	$a7, $a2, .LBB4_41
	b	.LBB4_33
.LBB4_42:                               # %_ZN4Mesh17calc_distributionEi.exit
	st.w	$zero, $fp, 636
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB4_5
.LBB4_43:
	ld.w	$a0, $fp, 628
	beqz	$a0, .LBB4_45
.LBB4_44:
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s4, $zero
	move	$s5, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	b	.LBB4_175
.LBB4_45:
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s4, $fp, 1160
	srli.d	$a0, $s4, 61
	bnez	$a0, .LBB4_243
# %bb.46:
	slli.d	$s6, $s4, 2
.Ltmp94:                                # EH_LABEL
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.47:                               # %.noexc278
	move	$s5, $a0
	move	$s1, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $s5, 0
	beq	$s4, $a0, .LBB4_49
# %bb.48:                               # %.lr.ph.i.preheader.i.i.i31.i274
	addi.d	$a0, $s5, 4
	addi.d	$a2, $s6, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_49:
	alsl.d	$s7, $s4, $s5, 2
.Ltmp96:                                # EH_LABEL
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.50:                               # %.noexc294
	move	$t2, $a0
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $t2, 0
	beq	$s4, $a0, .LBB4_52
# %bb.51:                               # %.lr.ph.i.preheader.i.i.i31.i286
	addi.d	$a0, $t2, 4
	addi.d	$a2, $s6, -4
	move	$a1, $zero
	move	$s0, $t2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$t2, $s0
.LBB4_52:                               # %.lr.ph
	ld.d	$a0, $fp, 1328
	ld.d	$a1, $fp, 1336
	ori	$a2, $zero, 8
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	bgeu	$s4, $a2, .LBB4_110
# %bb.53:
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
.LBB4_54:                               # %scalar.ph829.preheader
	addi.w	$a5, $a2, 1
	.p2align	4, , 16
.LBB4_55:                               # %scalar.ph829
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a2, 2
	ldx.w	$a6, $a0, $a2
	slt	$a7, $a3, $a6
	ldx.w	$a2, $a1, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a3, $a3, $a7
	or	$a3, $a6, $a3
	slt	$a6, $a4, $a2
	maskeqz	$a2, $a2, $a6
	masknez	$a4, $a4, $a6
	or	$a4, $a2, $a4
	bstrpick.d	$a2, $a5, 31, 0
	addi.w	$a5, $a5, 1
	bltu	$a2, $s4, .LBB4_55
.LBB4_56:                               # %.lr.ph497
	bstrpick.d	$a0, $a3, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	bstrpick.d	$a0, $a4, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	vldi	$vr2, -976
	ld.d	$a0, $fp, 1328
	ld.d	$a1, $fp, 1336
	fdiv.d	$fa0, $fa2, $fa0
	ori	$a2, $zero, 12
	fdiv.d	$fa1, $fa2, $fa1
	bgeu	$s4, $a2, .LBB4_115
# %bb.57:
	move	$a2, $zero
.LBB4_58:                               # %scalar.ph857.preheader
	addi.w	$a3, $a2, 1
	.p2align	4, , 16
.LBB4_59:                               # %scalar.ph857
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a0, $a2
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a4, $fa2
	stx.w	$a4, $s1, $a2
	ldx.w	$a4, $a1, $a2
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa1, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a4, $fa2
	stx.w	$a4, $s2, $a2
	bstrpick.d	$a2, $a3, 31, 0
	addi.w	$a3, $a3, 1
	bltu	$a2, $s4, .LBB4_59
.LBB4_60:                               # %._crit_edge498
	ld.d	$a3, $fp, 1352
	ld.w	$a4, $fp, 1120
	ld.w	$a5, $fp, 1128
	ld.d	$a6, $sp, 80
	ld.d	$a7, $t1, 0
	alsl.d	$s0, $s4, $t2, 2
.Ltmp98:                                # EH_LABEL
	addi.w	$a0, $s4, 0
	move	$s3, $zero
	move	$s8, $zero
	move	$a1, $s1
	move	$a2, $s2
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calc_zorder)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.61:
	ld.d	$s4, $fp, 1160
	srli.d	$a0, $s4, 61
	bnez	$a0, .LBB4_245
# %bb.62:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i207
	beqz	$s4, .LBB4_187
# %bb.63:
	slli.d	$s3, $s4, 2
.Ltmp100:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.64:                               # %.noexc213
	move	$s6, $a0
	alsl.d	$s8, $s4, $a0, 2
	ori	$a0, $zero, 1
	st.w	$zero, $s6, 0
	beq	$s4, $a0, .LBB4_188
# %bb.65:                               # %.lr.ph.i.preheader.i.i.i.i.i209
	addi.d	$a0, $s6, 4
	addi.d	$a2, $s3, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB4_188
.LBB4_66:
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$s3, $zero
	move	$s4, $zero
	move	$s5, $zero
	beqz	$s6, .LBB4_71
.LBB4_67:                               # %.lr.ph518
	fld.d	$fa1, $fp, 1240
	fld.d	$fa0, $fp, 1232
	fsub.d	$fa1, $fa1, $fa0
	frecip.d	$fa1, $fa1
	fld.d	$fa3, $fp, 1256
	fld.d	$fa2, $fp, 1248
	ld.d	$a0, $fp, 1416
	ld.d	$a1, $fp, 1440
	ld.d	$a2, $fp, 1464
	ld.d	$a3, $fp, 1488
	fsub.d	$fa3, $fa3, $fa2
	ori	$a4, $zero, 12
	frecip.d	$fa3, $fa3
	bgeu	$s6, $a4, .LBB4_96
# %bb.68:
	move	$a4, $zero
.LBB4_69:                               # %scalar.ph956.preheader
	addi.w	$a5, $a4, 1
	vldi	$vr4, -928
	.p2align	4, , 16
.LBB4_70:                               # %scalar.ph956
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a4, 3
	fldx.d	$fa5, $a1, $a4
	fldx.d	$fa6, $a0, $a4
	fmul.d	$fa5, $fa5, $fa4
	fadd.d	$fa5, $fa6, $fa5
	fsub.d	$fa5, $fa5, $fa0
	fmul.d	$fa5, $fa1, $fa5
	fstx.d	$fa5, $s3, $a4
	fldx.d	$fa5, $a3, $a4
	fldx.d	$fa6, $a2, $a4
	fmul.d	$fa5, $fa5, $fa4
	fadd.d	$fa5, $fa6, $fa5
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa3, $fa5
	fstx.d	$fa5, $s4, $a4
	bstrpick.d	$a4, $a5, 31, 0
	addi.w	$a5, $a5, 1
	bltu	$a4, $s6, .LBB4_70
.LBB4_71:                               # %._crit_edge519
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB4_80
# %bb.72:
	ld.d	$a0, $fp, 1416
	ld.d	$a1, $fp, 1424
	beq	$a1, $a0, .LBB4_74
# %bb.73:
	st.d	$a0, $fp, 1424
.LBB4_74:                               # %_ZNSt6vectorIdSaIdEE5clearEv.exit
	ld.d	$a0, $fp, 1440
	ld.d	$a1, $fp, 1448
	beq	$a1, $a0, .LBB4_76
# %bb.75:
	st.d	$a0, $fp, 1448
.LBB4_76:                               # %_ZNSt6vectorIdSaIdEE5clearEv.exit186
	ld.d	$a0, $fp, 1464
	ld.d	$a1, $fp, 1472
	beq	$a1, $a0, .LBB4_78
# %bb.77:
	st.d	$a0, $fp, 1472
.LBB4_78:                               # %_ZNSt6vectorIdSaIdEE5clearEv.exit188
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1496
	beq	$a1, $a0, .LBB4_80
# %bb.79:
	st.d	$a0, $fp, 1496
.LBB4_80:                               # %_ZNSt6vectorIdSaIdEE5clearEv.exit190
	ld.w	$a0, $fp, 628
	beqz	$a0, .LBB4_82
# %bb.81:
	move	$s0, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	b	.LBB4_175
.LBB4_82:
	slli.d	$a0, $s6, 3
	alsl.d	$a0, $s6, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.Ltmp131:                               # EH_LABEL
	addi.w	$a0, $s6, 0
	ori	$a5, $zero, 1
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $s1
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hsfc2sort)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.83:                               # %.preheader478
	ld.d	$s0, $fp, 1160
	beqz	$s0, .LBB4_125
# %bb.84:                               # %.lr.ph522
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 12
	bgeu	$s0, $a1, .LBB4_236
# %bb.85:
	move	$a1, $zero
.LBB4_86:                               # %scalar.ph983.preheader
	addi.w	$a2, $a1, 1
	.p2align	4, , 16
.LBB4_87:                               # %scalar.ph983
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $s1, $a1
	stx.w	$a3, $a0, $a1
	bstrpick.d	$a1, $a2, 31, 0
	addi.w	$a2, $a2, 1
	bltu	$a1, $s0, .LBB4_87
.LBB4_88:                               # %.loopexit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	slli.d	$s1, $s0, 2
.Ltmp134:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.89:                               # %.noexc192
	move	$s6, $a0
	alsl.d	$a0, $s0, $a0, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.w	$zero, $s6, 0
	beq	$s0, $a0, .LBB4_126
# %bb.90:                               # %.lr.ph.i.preheader.i.i.i.i.i
	addi.d	$a0, $s6, 4
	addi.d	$a2, $s1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB4_126
.LBB4_91:                               # %vector.scevcheck1057
	addi.d	$a3, $a0, -1
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a2, $zero
	beq	$a4, $a5, .LBB4_10
# %bb.92:                               # %vector.scevcheck1057
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB4_10
# %bb.93:                               # %vector.ph1060
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI4_0)
	bstrpick.d	$a2, $a0, 32, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB4_94:                               # %vector.body1063
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB4_94
# %bb.95:                               # %middle.block1066
	bne	$a0, $a2, .LBB4_10
	b	.LBB4_12
.LBB4_96:                               # %vector.scevcheck935
	addi.d	$a5, $s6, -1
	bstrpick.d	$a6, $a5, 31, 0
	addi.w	$a7, $zero, -1
	lu32i.d	$a7, 0
	move	$a4, $zero
	beq	$a6, $a7, .LBB4_69
# %bb.97:                               # %vector.scevcheck935
	srli.d	$a5, $a5, 32
	bnez	$a5, .LBB4_69
# %bb.98:                               # %vector.memcheck936
	sub.d	$a6, $s4, $s3
	ori	$a5, $zero, 16
	move	$a4, $zero
	bltu	$a6, $a5, .LBB4_69
# %bb.99:                               # %vector.memcheck936
	sub.d	$a6, $s3, $a0
	bltu	$a6, $a5, .LBB4_69
# %bb.100:                              # %vector.memcheck936
	sub.d	$a6, $s3, $a1
	ori	$a5, $zero, 16
	bltu	$a6, $a5, .LBB4_69
# %bb.101:                              # %vector.memcheck936
	sub.d	$a6, $a2, $s3
	bltu	$a6, $a5, .LBB4_69
# %bb.102:                              # %vector.memcheck936
	sub.d	$a6, $a3, $s3
	ori	$a5, $zero, 16
	bltu	$a6, $a5, .LBB4_69
# %bb.103:                              # %vector.memcheck936
	sub.d	$a6, $s4, $a0
	bltu	$a6, $a5, .LBB4_69
# %bb.104:                              # %vector.memcheck936
	sub.d	$a6, $s4, $a1
	ori	$a5, $zero, 16
	bltu	$a6, $a5, .LBB4_69
# %bb.105:                              # %vector.memcheck936
	sub.d	$a6, $s4, $a2
	bltu	$a6, $a5, .LBB4_69
# %bb.106:                              # %vector.memcheck936
	sub.d	$a5, $s4, $a3
	ori	$a6, $zero, 16
	bltu	$a5, $a6, .LBB4_69
# %bb.107:                              # %vector.ph958
	bstrpick.d	$a4, $s6, 32, 1
	slli.d	$a4, $a4, 1
	vreplvei.d	$vr4, $vr0, 0
	vreplvei.d	$vr5, $vr1, 0
	vreplvei.d	$vr6, $vr2, 0
	vreplvei.d	$vr7, $vr3, 0
	vldi	$vr8, -928
	move	$a5, $a0
	move	$a6, $a1
	move	$a7, $s3
	move	$t0, $a2
	move	$t1, $a3
	move	$t2, $s4
	move	$t3, $a4
	.p2align	4, , 16
.LBB4_108:                              # %vector.body969
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr9, $a6, 0
	vld	$vr10, $a5, 0
	vfmul.d	$vr9, $vr9, $vr8
	vfadd.d	$vr9, $vr10, $vr9
	vfsub.d	$vr9, $vr9, $vr4
	vfmul.d	$vr9, $vr5, $vr9
	vst	$vr9, $a7, 0
	vld	$vr9, $t1, 0
	vld	$vr10, $t0, 0
	vfmul.d	$vr9, $vr9, $vr8
	vfadd.d	$vr9, $vr10, $vr9
	vfsub.d	$vr9, $vr9, $vr6
	vfmul.d	$vr9, $vr7, $vr9
	vst	$vr9, $t2, 0
	addi.d	$t3, $t3, -2
	addi.d	$t2, $t2, 16
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 16
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 16
	bnez	$t3, .LBB4_108
# %bb.109:                              # %middle.block976
	bne	$s6, $a4, .LBB4_69
	b	.LBB4_71
.LBB4_110:                              # %vector.scevcheck
	addi.d	$a3, $s4, -1
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a2, $zero
	beq	$a4, $a5, .LBB4_242
# %bb.111:                              # %vector.scevcheck
	srli.d	$a5, $a3, 32
	move	$a3, $a2
	move	$a4, $a2
	bnez	$a5, .LBB4_54
# %bb.112:                              # %vector.ph831
	bstrpick.d	$a2, $s4, 32, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
	vld	$vr7, $sp, 32                   # 16-byte Folded Reload
	vori.b	$vr2, $vr7, 0
	vori.b	$vr0, $vr7, 0
	vori.b	$vr1, $vr7, 0
	.p2align	4, , 16
.LBB4_113:                              # %vector.body834
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a4, -16
	vld	$vr4, $a4, 0
	vld	$vr5, $a3, -16
	vld	$vr6, $a3, 0
	vmax.w	$vr7, $vr3, $vr7
	vmax.w	$vr2, $vr4, $vr2
	vmax.w	$vr0, $vr5, $vr0
	vmax.w	$vr1, $vr6, $vr1
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB4_113
# %bb.114:                              # %middle.block843
	vmax.w	$vr2, $vr7, $vr2
	vbsrl.v	$vr3, $vr2, 8
	vmax.w	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 4
	vmax.w	$vr2, $vr3, $vr2
	vpickve2gr.w	$a3, $vr2, 0
	vmax.w	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a4, $vr0, 0
	bne	$s4, $a2, .LBB4_54
	b	.LBB4_56
.LBB4_115:                              # %vector.scevcheck849
	addi.d	$a3, $s4, -1
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a2, $zero
	beq	$a4, $a5, .LBB4_58
# %bb.116:                              # %vector.scevcheck849
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB4_58
# %bb.117:                              # %vector.memcheck
	sub.d	$a4, $t2, $s5
	ori	$a3, $zero, 16
	move	$a2, $zero
	bltu	$a4, $a3, .LBB4_58
# %bb.118:                              # %vector.memcheck
	sub.d	$a4, $s5, $a0
	bltu	$a4, $a3, .LBB4_58
# %bb.119:                              # %vector.memcheck
	sub.d	$a4, $a1, $s5
	ori	$a3, $zero, 16
	bltu	$a4, $a3, .LBB4_58
# %bb.120:                              # %vector.memcheck
	sub.d	$a4, $t2, $a0
	bltu	$a4, $a3, .LBB4_58
# %bb.121:                              # %vector.memcheck
	sub.d	$a3, $t2, $a1
	ori	$a4, $zero, 16
	bltu	$a3, $a4, .LBB4_58
# %bb.122:                              # %vector.ph859
	bstrpick.d	$a2, $s4, 32, 2
	slli.d	$a2, $a2, 2
	vreplvei.d	$vr2, $vr0, 0
	vreplvei.d	$vr3, $vr1, 0
	move	$a3, $a0
	move	$a4, $s1
	move	$a5, $a1
	move	$a6, $s2
	move	$a7, $a2
	.p2align	4, , 16
.LBB4_123:                              # %vector.body866
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a3, 0
	vpickve2gr.w	$t0, $vr4, 1
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$t0, $vr4, 0
	movgr2fr.w	$fa6, $t0
	ffint.d.w	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vpickve2gr.w	$t0, $vr4, 3
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$t0, $vr4, 2
	movgr2fr.w	$fa4, $t0
	ffint.d.w	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfmul.d	$vr4, $vr2, $vr4
	vfmul.d	$vr5, $vr2, $vr6
	vreplvei.d	$vr6, $vr5, 0
	ftintrz.w.d	$fa6, $fa6
	movfr2gr.s	$t0, $fa6
	vinsgr2vr.w	$vr6, $t0, 0
	vreplvei.d	$vr5, $vr5, 1
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$t0, $fa5
	vinsgr2vr.w	$vr6, $t0, 1
	vreplvei.d	$vr5, $vr4, 0
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$t0, $fa5
	vinsgr2vr.w	$vr6, $t0, 2
	vreplvei.d	$vr4, $vr4, 1
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$t0, $fa4
	vinsgr2vr.w	$vr6, $t0, 3
	vst	$vr6, $a4, 0
	vld	$vr4, $a5, 0
	vpickve2gr.w	$t0, $vr4, 1
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$t0, $vr4, 0
	movgr2fr.w	$fa6, $t0
	ffint.d.w	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vpickve2gr.w	$t0, $vr4, 3
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$t0, $vr4, 2
	movgr2fr.w	$fa4, $t0
	ffint.d.w	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfmul.d	$vr4, $vr3, $vr4
	vfmul.d	$vr5, $vr3, $vr6
	vreplvei.d	$vr6, $vr5, 0
	ftintrz.w.d	$fa6, $fa6
	movfr2gr.s	$t0, $fa6
	vinsgr2vr.w	$vr6, $t0, 0
	vreplvei.d	$vr5, $vr5, 1
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$t0, $fa5
	vinsgr2vr.w	$vr6, $t0, 1
	vreplvei.d	$vr5, $vr4, 0
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$t0, $fa5
	vinsgr2vr.w	$vr6, $t0, 2
	vreplvei.d	$vr4, $vr4, 1
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$t0, $fa4
	vinsgr2vr.w	$vr6, $t0, 3
	vst	$vr6, $a6, 0
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	addi.d	$a3, $a3, 16
	bnez	$a7, .LBB4_123
# %bb.124:                              # %middle.block871
	bne	$s4, $a2, .LBB4_58
	b	.LBB4_60
.LBB4_125:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s6, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
.LBB4_126:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
	ld.d	$a1, $fp, 1368
	addi.d	$s1, $fp, 8
.Ltmp137:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.127:
	ld.d	$a1, $fp, 1376
.Ltmp139:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.128:
	ld.d	$a1, $fp, 1384
.Ltmp141:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.129:
	ld.d	$a1, $fp, 1392
.Ltmp143:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.130:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
.Ltmp145:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus18memory_reorder_allEPi)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
# %bb.131:
.Ltmp147:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh17memory_reset_ptrsEv)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.132:
	ld.d	$a0, $fp, 1424
	ld.d	$s2, $fp, 1416
	ld.d	$s0, $fp, 1160
	sub.d	$a0, $a0, $s2
	srai.d	$a0, $a0, 3
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB4_173
# %bb.133:
	slli.d	$s1, $s0, 3
.Ltmp150:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.134:                              # %.noexc197
	ori	$a1, $zero, 1
	st.d	$zero, $a0, 0
	beq	$s0, $a1, .LBB4_136
# %bb.135:                              # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
	addi.d	$a1, $a0, 8
	addi.d	$a2, $s1, -8
	move	$s7, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	addi.w	$a1, $s0, 0
	blez	$a1, .LBB4_172
.LBB4_136:                              # %.lr.ph525.preheader
	bstrpick.d	$a1, $s0, 30, 0
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB4_141
# %bb.137:                              # %.lr.ph525.preheader
	sub.d	$a3, $a0, $s2
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB4_141
# %bb.138:                              # %vector.ph1001
	bstrpick.d	$a2, $s0, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s2, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_139:                              # %vector.body1004
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB4_139
# %bb.140:                              # %middle.block1009
	beq	$a1, $a2, .LBB4_143
.LBB4_141:                              # %.lr.ph525.preheader1084
	alsl.d	$a3, $a2, $s2, 3
	alsl.d	$a4, $a2, $a0, 3
	sub.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB4_142:                              # %.lr.ph525
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	bnez	$a2, .LBB4_142
.LBB4_143:                              # %.lr.ph528
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_144:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a0, $a4
	fst.d	$fa0, $s2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$s2, $s2, 8
	bnez	$a3, .LBB4_144
# %bb.145:                              # %.lr.ph530
	ld.d	$a2, $fp, 1440
	ori	$a4, $zero, 4
	move	$a3, $zero
	bltu	$a1, $a4, .LBB4_150
# %bb.146:                              # %.lr.ph530
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB4_150
# %bb.147:                              # %vector.ph1016
	bstrpick.d	$a3, $s0, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_148:                              # %vector.body1019
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_148
# %bb.149:                              # %middle.block1024
	beq	$a1, $a3, .LBB4_152
.LBB4_150:                              # %scalar.ph1014.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB4_151:                              # %scalar.ph1014
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB4_151
.LBB4_152:                              # %.lr.ph532
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $fp, 1440
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_153:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_153
# %bb.154:                              # %.lr.ph534
	ld.d	$a2, $fp, 1464
	ori	$a4, $zero, 4
	move	$a3, $zero
	bltu	$a1, $a4, .LBB4_159
# %bb.155:                              # %.lr.ph534
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB4_159
# %bb.156:                              # %vector.ph1031
	bstrpick.d	$a3, $s0, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_157:                              # %vector.body1034
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_157
# %bb.158:                              # %middle.block1039
	beq	$a1, $a3, .LBB4_161
.LBB4_159:                              # %scalar.ph1029.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB4_160:                              # %scalar.ph1029
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB4_160
.LBB4_161:                              # %.lr.ph536
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $fp, 1464
	bstrpick.d	$a4, $s0, 30, 0
	.p2align	4, , 16
.LBB4_162:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_162
# %bb.163:                              # %.lr.ph538
	ld.d	$a3, $fp, 1488
	move	$a4, $zero
	ori	$a5, $zero, 4
	bstrpick.d	$a2, $s0, 30, 0
	bltu	$a1, $a5, .LBB4_168
# %bb.164:                              # %.lr.ph538
	sub.d	$a5, $a0, $a3
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB4_168
# %bb.165:                              # %vector.ph1046
	bstrpick.d	$a4, $s0, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a0, 16
	addi.d	$a6, $a3, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_166:                              # %vector.body1049
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_166
# %bb.167:                              # %middle.block1054
	beq	$a1, $a4, .LBB4_170
.LBB4_168:                              # %scalar.ph1044.preheader
	alsl.d	$a1, $a4, $a3, 3
	alsl.d	$a3, $a4, $a0, 3
	sub.d	$a4, $a2, $a4
	.p2align	4, , 16
.LBB4_169:                              # %scalar.ph1044
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_169
.LBB4_170:                              # %.lr.ph540
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a3, $fp, 1488
	.p2align	4, , 16
.LBB4_171:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a0, $a4
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB4_171
.LBB4_172:                              # %.preheader477.thread
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_173:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit
	move	$s0, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	beqz	$s6, .LBB4_175
.LBB4_174:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_175:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $sp, 64
	ld.d	$a1, $sp, 72
.Ltmp156:                               # EH_LABEL
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.176:
	fld.d	$fa1, $fp, 368
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 368
	beqz	$s4, .LBB4_178
# %bb.177:
	sub.d	$a1, $s5, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_178:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit230
	beqz	$s3, .LBB4_180
# %bb.179:
	sub.d	$a1, $s8, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_180:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit232
	beqz	$s2, .LBB4_182
# %bb.181:
	sub.d	$a1, $s0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_182:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit234
	beqz	$s1, .LBB4_184
# %bb.183:
	sub.d	$a1, $s7, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_184:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit236
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB4_186
# %bb.185:
	ld.d	$a1, $sp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_186:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit238
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB4_187:
	move	$s6, $zero
	move	$s8, $zero
.LBB4_188:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit214
	ld.d	$a1, $fp, 1368
	addi.d	$s3, $fp, 8
.Ltmp102:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.189:
	ld.d	$a1, $fp, 1376
.Ltmp104:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.190:
	ld.d	$a1, $fp, 1384
.Ltmp106:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.191:
	ld.d	$a1, $fp, 1392
.Ltmp108:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.192:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
.Ltmp110:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus18memory_reorder_allEPi)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.193:
.Ltmp112:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh17memory_reset_ptrsEv)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.194:
	ld.d	$a0, $fp, 1424
	ld.d	$s5, $fp, 1416
	ld.d	$s4, $fp, 1160
	sub.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 3
	addi.d	$a1, $s4, -1
	bgeu	$a1, $a0, .LBB4_235
# %bb.195:
	slli.d	$s3, $s4, 3
.Ltmp115:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.196:                              # %.noexc221
	ori	$a1, $zero, 1
	st.d	$zero, $a0, 0
	beq	$s4, $a1, .LBB4_198
# %bb.197:                              # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit222
	addi.d	$a1, $a0, 8
	addi.d	$a2, $s3, -8
	move	$s7, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	addi.w	$a1, $s4, 0
	blez	$a1, .LBB4_234
.LBB4_198:                              # %.lr.ph500.preheader
	bstrpick.d	$a1, $s4, 30, 0
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB4_203
# %bb.199:                              # %.lr.ph500.preheader
	sub.d	$a3, $a0, $s5
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB4_203
# %bb.200:                              # %vector.ph879
	bstrpick.d	$a2, $s4, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s5, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_201:                              # %vector.body882
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB4_201
# %bb.202:                              # %middle.block887
	beq	$a1, $a2, .LBB4_205
.LBB4_203:                              # %.lr.ph500.preheader1087
	alsl.d	$a3, $a2, $s5, 3
	alsl.d	$a4, $a2, $a0, 3
	sub.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB4_204:                              # %.lr.ph500
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	bnez	$a2, .LBB4_204
.LBB4_205:                              # %.lr.ph503
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_206:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a0, $a4
	fst.d	$fa0, $s5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$s5, $s5, 8
	bnez	$a3, .LBB4_206
# %bb.207:                              # %.lr.ph505
	ld.d	$a2, $fp, 1440
	ori	$a4, $zero, 4
	move	$a3, $zero
	bltu	$a1, $a4, .LBB4_212
# %bb.208:                              # %.lr.ph505
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB4_212
# %bb.209:                              # %vector.ph894
	bstrpick.d	$a3, $s4, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_210:                              # %vector.body897
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_210
# %bb.211:                              # %middle.block902
	beq	$a1, $a3, .LBB4_214
.LBB4_212:                              # %scalar.ph892.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB4_213:                              # %scalar.ph892
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB4_213
.LBB4_214:                              # %.lr.ph507
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $fp, 1440
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_215:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_215
# %bb.216:                              # %.lr.ph509
	ld.d	$a2, $fp, 1464
	ori	$a4, $zero, 4
	move	$a3, $zero
	bltu	$a1, $a4, .LBB4_221
# %bb.217:                              # %.lr.ph509
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB4_221
# %bb.218:                              # %vector.ph909
	bstrpick.d	$a3, $s4, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_219:                              # %vector.body912
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_219
# %bb.220:                              # %middle.block917
	beq	$a1, $a3, .LBB4_223
.LBB4_221:                              # %scalar.ph907.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB4_222:                              # %scalar.ph907
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB4_222
.LBB4_223:                              # %.lr.ph511
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $fp, 1464
	bstrpick.d	$a4, $s4, 30, 0
	.p2align	4, , 16
.LBB4_224:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_224
# %bb.225:                              # %.lr.ph513
	ld.d	$a3, $fp, 1488
	move	$a4, $zero
	ori	$a5, $zero, 4
	bstrpick.d	$a2, $s4, 30, 0
	bltu	$a1, $a5, .LBB4_230
# %bb.226:                              # %.lr.ph513
	sub.d	$a5, $a0, $a3
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB4_230
# %bb.227:                              # %vector.ph924
	bstrpick.d	$a4, $s4, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a0, 16
	addi.d	$a6, $a3, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_228:                              # %vector.body927
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_228
# %bb.229:                              # %middle.block932
	beq	$a1, $a4, .LBB4_232
.LBB4_230:                              # %scalar.ph922.preheader
	alsl.d	$a1, $a4, $a3, 3
	alsl.d	$a3, $a4, $a0, 3
	sub.d	$a4, $a2, $a4
	.p2align	4, , 16
.LBB4_231:                              # %scalar.ph922
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_231
.LBB4_232:                              # %.lr.ph515
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a3, $fp, 1488
	.p2align	4, , 16
.LBB4_233:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a0, $a4
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB4_233
.LBB4_234:                              # %.preheader485.thread
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_235:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit224
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $zero
	move	$s8, $zero
	move	$s4, $zero
	move	$s5, $zero
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	bnez	$s6, .LBB4_174
	b	.LBB4_175
.LBB4_236:                              # %vector.scevcheck980
	addi.d	$a2, $s0, -1
	bstrpick.d	$a3, $a2, 31, 0
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	move	$a1, $zero
	beq	$a3, $a4, .LBB4_86
# %bb.237:                              # %vector.scevcheck980
	srli.d	$a2, $a2, 32
	bnez	$a2, .LBB4_86
# %bb.238:                              # %vector.scevcheck980
	sub.d	$a2, $a0, $s1
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB4_86
# %bb.239:                              # %vector.ph985
	bstrpick.d	$a1, $s0, 32, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a0, 16
	addi.d	$a3, $s1, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_240:                              # %vector.body988
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB4_240
# %bb.241:                              # %middle.block993
	bne	$s0, $a1, .LBB4_86
	b	.LBB4_88
.LBB4_242:
	move	$a3, $a2
	move	$a4, $a2
	b	.LBB4_54
.LBB4_243:                              # %.invoke
.Ltmp129:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.244:                              # %.cont
.LBB4_245:
.Ltmp118:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.246:                              # %.noexc212
.LBB4_247:
.Ltmp117:                               # EH_LABEL
	b	.LBB4_254
.LBB4_248:
.Ltmp152:                               # EH_LABEL
	b	.LBB4_257
.LBB4_249:
.Ltmp136:                               # EH_LABEL
	b	.LBB4_251
.LBB4_250:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit200.thread813
.Ltmp133:                               # EH_LABEL
.LBB4_251:                              # %.sink.split
	move	$fp, $a0
	b	.LBB4_259
.LBB4_252:
.Ltmp120:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_269
.LBB4_253:
.Ltmp114:                               # EH_LABEL
.LBB4_254:
	move	$fp, $a0
	beqz	$s6, .LBB4_269
# %bb.255:
	sub.d	$a1, $s8, $s6
	move	$a0, $s6
	b	.LBB4_268
.LBB4_256:
.Ltmp149:                               # EH_LABEL
.LBB4_257:
	move	$fp, $a0
	beqz	$s6, .LBB4_259
# %bb.258:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_259:                              # %.sink.split
	move	$s1, $zero
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	move	$s2, $zero
	move	$s0, $zero
	b	.LBB4_262
.LBB4_260:
.Ltmp90:                                # EH_LABEL
	b	.LBB4_264
.LBB4_261:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit200
.Ltmp158:                               # EH_LABEL
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$s4, .LBB4_266
.LBB4_262:
	sub.d	$a1, $s5, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_266
.LBB4_263:
.Ltmp93:                                # EH_LABEL
.LBB4_264:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit240.thread
	move	$fp, $a0
	move	$s0, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	move	$s1, $zero
	b	.LBB4_269
.LBB4_265:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit200.thread802
.Ltmp155:                               # EH_LABEL
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
.LBB4_266:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit240
	beqz	$s3, .LBB4_269
# %bb.267:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
.LBB4_268:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit242
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_269:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit242
	bnez	$s2, .LBB4_273
# %bb.270:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit244
	bnez	$s1, .LBB4_274
.LBB4_271:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit246
	ld.d	$a0, $sp, 80
	bnez	$a0, .LBB4_275
.LBB4_272:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit248
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_273:
	sub.d	$a1, $s0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB4_271
.LBB4_274:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB4_272
.LBB4_275:
	ld.d	$a1, $sp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method, .Lfunc_end4-_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp86-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp93-.Lfunc_begin1          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin1          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin1          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp126-.Ltmp121              #   Call between .Ltmp121 and .Ltmp126
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp94-.Ltmp128               #   Call between .Ltmp128 and .Ltmp94
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp120-.Lfunc_begin1         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp131-.Ltmp101              #   Call between .Ltmp101 and .Ltmp131
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin1         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp134-.Ltmp132              #   Call between .Ltmp132 and .Ltmp134
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin1         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp137-.Ltmp135              #   Call between .Ltmp135 and .Ltmp137
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp148-.Ltmp137              #   Call between .Ltmp137 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin1         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin1         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp156-.Ltmp151              #   Call between .Ltmp151 and .Ltmp156
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp102-.Ltmp157              #   Call between .Ltmp157 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp113-.Ltmp102              #   Call between .Ltmp102 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin1         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin1         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp129-.Ltmp116              #   Call between .Ltmp116 and .Ltmp129
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin1         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Lfunc_end4-.Ltmp119           #   Call between .Ltmp119 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh17calc_distributionEi   # -- Begin function _ZN4Mesh17calc_distributionEi
	.p2align	5
	.type	_ZN4Mesh17calc_distributionEi,@function
_ZN4Mesh17calc_distributionEi:          # @_ZN4Mesh17calc_distributionEi
# %bb.0:
	blez	$a1, .LBB5_11
# %bb.1:                                # %.lr.ph20
	ld.d	$a4, $a0, 864
	ld.d	$a0, $a0, 856
	move	$a2, $zero
	move	$a3, $zero
	sub.d	$a4, $a4, $a0
	srai.d	$a5, $a4, 2
	div.du	$a4, $a5, $a1
	addi.w	$a5, $a5, 0
	mod.w	$a5, $a5, $a1
	addi.d	$a6, $a0, 16
	ori	$a7, $zero, 8
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %._crit_edge
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.w	$a2, $a2, 1
	beq	$a2, $a1, .LBB5_11
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #     Child Loop BB5_10 Depth 2
	add.d	$a3, $a3, $a4
	slt	$t0, $a2, $a5
	add.w	$a3, $a3, $t0
	blez	$a3, .LBB5_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	bgeu	$a3, $a7, .LBB5_6
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	move	$t0, $zero
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_6:                                # %vector.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	bstrpick.d	$t0, $a3, 30, 3
	slli.d	$t0, $t0, 3
	vreplgr2vr.w	$vr0, $a2
	move	$t1, $a6
	move	$t2, $t0
	.p2align	4, , 16
.LBB5_7:                                # %vector.body
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t1, -16
	vst	$vr0, $t1, 0
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB5_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB5_3 Depth=1
	beq	$t0, $a3, .LBB5_2
.LBB5_9:                                # %.lr.ph.preheader23
                                        #   in Loop: Header=BB5_3 Depth=1
	alsl.d	$t1, $t0, $a0, 2
	.p2align	4, , 16
.LBB5_10:                               # %.lr.ph
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $t1, 0
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 4
	bltu	$t0, $a3, .LBB5_10
	b	.LBB5_2
.LBB5_11:                               # %._crit_edge21
	ret
.Lfunc_end5:
	.size	_ZN4Mesh17calc_distributionEi, .Lfunc_end5-_ZN4Mesh17calc_distributionEi
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi,"axG",@progbits,_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi,comdat
	.weak	_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi # -- Begin function _ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi
	.p2align	5
	.type	_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi,@function
_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi: # @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi
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
	beqz	$a2, .LBB6_57
# %bb.1:
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$s5, $a0, 16
	ld.d	$s4, $a0, 8
	sub.d	$a0, $s5, $s4
	srai.d	$a0, $a0, 2
	bgeu	$a0, $a2, .LBB6_5
# %bb.2:
	ld.d	$s2, $s0, 0
	sub.d	$a0, $s4, $s2
	srai.d	$a1, $a0, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	sub.d	$a2, $a0, $a1
	bltu	$a2, $s1, .LBB6_65
# %bb.3:                                # %.lr.ph.preheader.i.i.i83
	move	$s3, $a3
	sltu	$a2, $s1, $a1
	masknez	$a3, $s1, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s6, $a1, $a0
	sub.d	$s7, $fp, $s2
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	move	$s3, $a0
	ori	$a2, $zero, 8
	add.d	$a0, $a0, $s7
	bgeu	$s1, $a2, .LBB6_23
# %bb.4:
	move	$a2, $s1
	b	.LBB6_26
.LBB6_5:
	ld.w	$s2, $a3, 0
	sub.d	$a0, $s4, $fp
	srai.d	$a1, $a0, 2
	bgeu	$s1, $a1, .LBB6_20
# %bb.6:
	slli.d	$s3, $s1, 2
	sub.d	$a3, $zero, $s3
	sub.d	$a0, $s4, $s3
	beqz	$a3, .LBB6_12
# %bb.7:                                # %.lr.ph.i.i.i.i.preheader
	addi.d	$a1, $s1, -1
	bstrpick.d	$a4, $a1, 61, 0
	ori	$a5, $zero, 7
	move	$a1, $a0
	move	$a2, $s4
	bltu	$a4, $a5, .LBB6_11
# %bb.8:                                # %vector.ph172
	addi.d	$a4, $a4, 1
	bstrpick.d	$a1, $a4, 62, 3
	slli.d	$a5, $a1, 3
	slli.d	$a2, $a1, 5
	add.d	$a1, $a0, $a2
	add.d	$a2, $s4, $a2
	move	$a6, $a5
	move	$a7, $s4
	.p2align	4, , 16
.LBB6_9:                                # %vector.body175
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a7, $a3
	vldx	$vr0, $a7, $a3
	vld	$vr1, $t0, 16
	vst	$vr0, $a7, 0
	vst	$vr1, $a7, 16
	addi.d	$a6, $a6, -8
	addi.d	$a7, $a7, 32
	bnez	$a6, .LBB6_9
# %bb.10:                               # %middle.block184
	beq	$a4, $a5, .LBB6_12
	.p2align	4, , 16
.LBB6_11:                               # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bne	$a1, $s4, .LBB6_11
.LBB6_12:                               # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
	alsl.d	$a1, $s1, $s4, 2
	st.d	$a1, $s0, 8
	sub.d	$a2, $a0, $fp
	srai.d	$a1, $a2, 2
	ori	$a3, $zero, 2
	sub.d	$a0, $s4, $a2
	blt	$a1, $a3, .LBB6_66
# %bb.13:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB6_14:                               # %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
	addi.d	$a1, $s3, -4
	ori	$a2, $zero, 28
	move	$a0, $fp
	bltu	$a1, $a2, .LBB6_18
# %bb.15:                               # %vector.ph190
	srli.d	$a0, $a1, 2
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 62, 3
	slli.d	$a2, $a0, 3
	slli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	vreplgr2vr.w	$vr0, $s2
	addi.d	$a3, $fp, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB6_16:                               # %vector.body195
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB6_16
# %bb.17:                               # %middle.block200
	beq	$a1, $a2, .LBB6_57
.LBB6_18:                               # %.lr.ph.i.preheader
	alsl.d	$a1, $s1, $fp, 2
	.p2align	4, , 16
.LBB6_19:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	bne	$a0, $a1, .LBB6_19
	b	.LBB6_57
.LBB6_20:
	sub.d	$a3, $s1, $a1
	move	$a1, $s4
	beqz	$a3, .LBB6_43
# %bb.21:                               # %.lr.ph.i.i.i.preheader
	ori	$a1, $zero, 8
	bgeu	$a3, $a1, .LBB6_39
# %bb.22:
	move	$a2, $a3
	move	$a1, $s4
	b	.LBB6_42
.LBB6_23:                               # %vector.ph205
	move	$a3, $s1
	bstrins.d	$a3, $zero, 2, 0
	andi	$a2, $s1, 7
	alsl.d	$a0, $a3, $a0, 2
	vreplgr2vr.w	$vr0, $a1
	add.d	$a4, $s7, $s3
	addi.d	$a4, $a4, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB6_24:                               # %vector.body210
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB6_24
# %bb.25:                               # %middle.block215
	beq	$s1, $a3, .LBB6_27
	.p2align	4, , 16
.LBB6_26:                               # %.lr.ph.i.i.i85
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, -1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB6_26
.LBB6_27:                               # %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit90
	move	$a0, $s3
	beq	$s2, $fp, .LBB6_34
# %bb.28:                               # %.lr.ph.i.i.i.i92.preheader
	addi.d	$a2, $s7, -4
	ori	$a3, $zero, 28
	move	$a1, $s2
	move	$a0, $s3
	bltu	$a2, $a3, .LBB6_33
# %bb.29:                               # %.lr.ph.i.i.i.i92.preheader
	sub.d	$a3, $s3, $s2
	ori	$a4, $zero, 32
	move	$a1, $s2
	move	$a0, $s3
	bltu	$a3, $a4, .LBB6_33
# %bb.30:                               # %vector.ph223
	srli.d	$a0, $a2, 2
	addi.d	$a2, $a0, 1
	bstrpick.d	$a0, $a2, 62, 3
	slli.d	$a3, $a0, 3
	slli.d	$a0, $a0, 5
	add.d	$a1, $s2, $a0
	add.d	$a0, $s3, $a0
	addi.d	$a4, $s3, 16
	addi.d	$a5, $s2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_31:                               # %vector.body226
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_31
# %bb.32:                               # %middle.block235
	beq	$a2, $a3, .LBB6_34
	.p2align	4, , 16
.LBB6_33:                               # %.lr.ph.i.i.i.i92
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	bne	$a1, $fp, .LBB6_33
.LBB6_34:                               # %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
	alsl.d	$s7, $s1, $a0, 2
	beq	$s4, $fp, .LBB6_54
# %bb.35:                               # %.lr.ph.i.i.i.i98.preheader
	sub.d	$a1, $s4, $fp
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 28
	bgeu	$a1, $a2, .LBB6_37
# %bb.36:
	move	$a1, $fp
	b	.LBB6_53
.LBB6_37:                               # %vector.memcheck239
	alsl.d	$a2, $s1, $a0, 2
	sub.d	$a2, $a2, $fp
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB6_50
# %bb.38:
	move	$a1, $fp
	b	.LBB6_53
.LBB6_39:                               # %vector.ph
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	andi	$a2, $a3, 7
	alsl.d	$a1, $a4, $s4, 2
	vreplgr2vr.w	$vr0, $s2
	addi.d	$a5, $s4, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_40:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, -16
	vst	$vr0, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_40
# %bb.41:                               # %middle.block
	beq	$a3, $a4, .LBB6_43
	.p2align	4, , 16
.LBB6_42:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, -1
	st.w	$s2, $a1, 0
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_42
.LBB6_43:                               # %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
	beq	$s4, $fp, .LBB6_49
# %bb.44:                               # %.lr.ph.i.i.i.i70.preheader
	addi.d	$a3, $a0, -4
	srli.d	$a2, $a3, 2
	ori	$a4, $zero, 28
	addi.d	$a2, $a2, 1
	bltu	$a3, $a4, .LBB6_58
# %bb.45:                               # %.lr.ph.i.i.i.i70.preheader
	sub.d	$a6, $a1, $fp
	ori	$a7, $zero, 32
	move	$a4, $fp
	move	$a5, $a1
	bltu	$a6, $a7, .LBB6_59
# %bb.46:                               # %vector.ph140
	bstrpick.d	$a4, $a2, 62, 3
	slli.d	$a6, $a4, 3
	slli.d	$a5, $a4, 5
	add.d	$a4, $fp, $a5
	add.d	$a5, $a1, $a5
	addi.d	$a7, $a1, 16
	addi.d	$t0, $fp, 16
	move	$t1, $a6
	.p2align	4, , 16
.LBB6_47:                               # %vector.body143
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB6_47
# %bb.48:                               # %middle.block151
	bne	$a2, $a6, .LBB6_59
	b	.LBB6_60
.LBB6_49:                               # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit75.thread
	add.d	$a0, $a1, $a0
	st.d	$a0, $s0, 8
	b	.LBB6_57
.LBB6_50:                               # %vector.ph244
	srli.d	$a1, $a1, 2
	addi.d	$a2, $a1, 1
	slli.d	$a4, $s1, 2
	bstrpick.d	$a1, $a2, 62, 3
	slli.d	$a3, $a1, 3
	slli.d	$a5, $a1, 5
	add.d	$a1, $fp, $a5
	add.d	$s7, $s7, $a5
	add.d	$a0, $a4, $a0
	addi.d	$a0, $a0, 16
	addi.d	$a4, $fp, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB6_51:                               # %vector.body247
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a0, -16
	vst	$vr1, $a0, 0
	addi.d	$a0, $a0, 32
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB6_51
# %bb.52:                               # %middle.block256
	beq	$a2, $a3, .LBB6_54
	.p2align	4, , 16
.LBB6_53:                               # %.lr.ph.i.i.i.i98
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a1, 0
	st.w	$a0, $s7, 0
	addi.d	$a1, $a1, 4
	addi.d	$s7, $s7, 4
	bne	$a1, $s4, .LBB6_53
.LBB6_54:                               # %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit103
	beqz	$s2, .LBB6_56
# %bb.55:
	sub.d	$a1, $s5, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_56:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
	st.d	$s3, $s0, 0
	st.d	$s7, $s0, 8
	alsl.d	$a0, $s6, $s3, 2
	st.d	$a0, $s0, 16
.LBB6_57:                               # %_ZSt4fillIPiiEvT_S1_RKT0_.exit68
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
.LBB6_58:
	move	$a4, $fp
	move	$a5, $a1
	.p2align	4, , 16
.LBB6_59:                               # %.lr.ph.i.i.i.i70
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	st.w	$a6, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	bne	$a4, $s4, .LBB6_59
.LBB6_60:                               # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit75
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 28
	st.d	$a0, $s0, 8
	move	$a0, $fp
	bltu	$a3, $a1, .LBB6_64
# %bb.61:                               # %vector.ph157
	bstrpick.d	$a0, $a2, 62, 3
	slli.d	$a1, $a0, 3
	slli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	vreplgr2vr.w	$vr0, $s2
	addi.d	$a3, $fp, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB6_62:                               # %vector.body162
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB6_62
# %bb.63:                               # %middle.block167
	beq	$a2, $a1, .LBB6_57
	.p2align	4, , 16
.LBB6_64:                               # %.lr.ph.i77
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	bne	$a0, $s4, .LBB6_64
	b	.LBB6_57
.LBB6_65:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB6_66:                               # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.thread.i
	ori	$a1, $zero, 4
	bne	$a2, $a1, .LBB6_14
# %bb.67:
	ld.w	$a1, $fp, 0
	st.w	$a1, $a0, 0
	b	.LBB6_14
.Lfunc_end6:
	.size	_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi, .Lfunc_end6-_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIiSaIiEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIiSaIiEE17_M_default_appendEm,@function
_ZNSt6vectorIiSaIiEE17_M_default_appendEm: # @_ZNSt6vectorIiSaIiEE17_M_default_appendEm
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
	beqz	$a1, .LBB7_13
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a1, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $a1
	srai.d	$a0, $a0, 2
	bgeu	$a0, $s0, .LBB7_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a1, $s1
	srai.d	$a1, $s2, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB7_14
# %bb.3:
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	ori	$a0, $zero, 1
	stx.w	$zero, $s3, $s2
	beq	$s0, $a0, .LBB7_5
# %bb.4:                                # %.lr.ph.i.preheader.i.i.i31
	addi.d	$a0, $s6, 4
	slli.d	$a1, $s0, 2
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
	blez	$s2, .LBB7_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_7:                                # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
	beqz	$s1, .LBB7_9
# %bb.8:                                # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %_ZNSt6vectorIiSaIiEE12_Guard_allocD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 2
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 16
	b	.LBB7_13
.LBB7_10:
	st.w	$zero, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a0, $a1, 4
	beq	$s0, $a2, .LBB7_12
# %bb.11:                               # %.lr.ph.i.preheader.i.i.i
	slli.d	$a2, $s0, 2
	alsl.d	$s0, $s0, $a1, 2
	addi.d	$a2, $a2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB7_12:                               # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit
	st.d	$a0, $fp, 8
.LBB7_13:
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
	ret
.LBB7_14:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt6vectorIiSaIiEE17_M_default_appendEm, .Lfunc_end7-_ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.type	measure_type,@object            # @measure_type
	.bss
	.globl	measure_type
	.p2align	2, 0x0
measure_type:
	.word	0                               # 0x0
	.size	measure_type, 4

	.type	meas_count,@object              # @meas_count
	.globl	meas_count
	.p2align	2, 0x0
meas_count:
	.word	0                               # 0x0
	.size	meas_count, 4

	.type	meas_sum_average,@object        # @meas_sum_average
	.globl	meas_sum_average
	.p2align	3, 0x0
meas_sum_average:
	.dword	0x0000000000000000              # double 0
	.size	meas_sum_average, 8

	.type	_ZZN4Mesh17partition_measureEvE13offtile_ratio,@object # @_ZZN4Mesh17partition_measureEvE13offtile_ratio
	.local	_ZZN4Mesh17partition_measureEvE13offtile_ratio
	.comm	_ZZN4Mesh17partition_measureEvE13offtile_ratio,8,8
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Average surface area to volume ratio  "
	.size	.L.str.1, 39

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"with duplicates"
	.size	.L.str.2, 16

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"without duplicates"
	.size	.L.str.3, 19

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Partition Quality Avg C value     "
	.size	.L.str.4, 35

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.space	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Partition Quality Avg C* value     "
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"The MPI surface area to volume ratio "
	.size	.L.str.7, 38

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Initial order is naive."
	.size	.L.str.8, 24

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Initial order is Hilbert sort."
	.size	.L.str.9, 31

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Initial order is Hilbert partitionr."
	.size	.L.str.10, 37

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Initial order is Z order."
	.size	.L.str.11, 26

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"   No cycle reorder."
	.size	.L.str.12, 21

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"   Cycle reorder is Hilbert sort."
	.size	.L.str.13, 34

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"   Cycle reorder is Hilbert partition."
	.size	.L.str.14, 39

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"   Cycle reorder is Z order."
	.size	.L.str.15, 29

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"vector::_M_fill_insert"
	.size	.L.str.18, 23

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"vector::_M_default_append"
	.size	.L.str.19, 26

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.20, 49

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"No Partition Measure"
	.size	.Lstr, 21

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"   Local Stencil is on."
	.size	.Lstr.1, 24

	.type	.Lswitch.table._ZN4Mesh20print_partition_typeEv,@object # @switch.table._ZN4Mesh20print_partition_typeEv
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table._ZN4Mesh20print_partition_typeEv:
	.dword	.L.str.8
	.dword	.L.str.9
	.dword	.L.str.10
	.dword	.L.str.11
	.size	.Lswitch.table._ZN4Mesh20print_partition_typeEv, 32

	.type	.Lswitch.table._ZN4Mesh20print_partition_typeEv.2,@object # @switch.table._ZN4Mesh20print_partition_typeEv.2
	.p2align	3, 0x0
.Lswitch.table._ZN4Mesh20print_partition_typeEv.2:
	.dword	.L.str.12
	.dword	.L.str.13
	.dword	.L.str.14
	.dword	.L.str.15
	.size	.Lswitch.table._ZN4Mesh20print_partition_typeEv.2, 32

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
