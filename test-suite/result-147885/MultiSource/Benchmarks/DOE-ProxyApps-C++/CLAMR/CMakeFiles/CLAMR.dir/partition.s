	.file	"partition.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN4Mesh17partition_measureEv
.LCPI0_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI0_1:
	.dword	0x40b087c3b666fb67              # double 4231.7645019878173
.LCPI0_2:
	.dword	0x4046a09e667f3bcd              # double 45.254833995939045
.LCPI0_3:
	.dword	0x3f80000000000000              # double 0.0078125
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
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
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
	pcalau12i	$a1, %pc_hi20(measure_type)
	ld.w	$a1, $a1, %pc_lo12(measure_type)
	beqz	$a1, .LBB0_209
# %bb.1:
	move	$fp, $a0
	ld.d	$a0, $a0, 1160
	addi.d	$a2, $a0, 127
	srli.d	$a2, $a2, 7
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	ori	$a2, $zero, 3
	pcalau12i	$a3, %pc_hi20(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	bltu	$a2, $a1, .LBB0_208
# %bb.2:
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	addi.w	$s6, $a2, 0
	pcalau12i	$s7, %pc_hi20(.LCPI0_3)
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	jr	$a1
.LBB0_3:                                # %.preheader
	beqz	$s6, .LBB0_208
# %bb.4:                                # %.lr.ph565
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	ld.d	$a1, $fp, 1368
	ld.d	$a2, $fp, 1352
	ld.d	$a3, $fp, 1392
	ld.d	$a4, $fp, 1376
	ld.d	$a5, $fp, 1384
	move	$a6, $zero
	move	$a7, $zero
	ori	$t0, $zero, 128
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	fld.d	$fa1, $s7, %pc_lo12(.LCPI0_3)
	addi.w	$a6, $a6, 128
	movgr2fr.w	$fa2, $s1
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa2, $fa1
	fadd.d	$fa0, $fa1, $fa0
	addi.w	$t0, $t0, 128
	beq	$a7, $s6, .LBB0_207
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	move	$s1, $zero
	slli.w	$t1, $a7, 7
	addi.w	$a7, $a7, 1
	slli.w	$t2, $a7, 7
	alsl.d	$t3, $a6, $a3, 2
	alsl.d	$t4, $a6, $a5, 2
	alsl.d	$t5, $a6, $a4, 2
	alsl.d	$t6, $a6, $a2, 2
	alsl.d	$t7, $a6, $a1, 2
	move	$t8, $a6
	move	$fp, $a6
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
	ld.w	$s3, $t7, 0
	slt	$s4, $s3, $t1
	slli.d	$s2, $s3, 2
	ldx.w	$s5, $a2, $s2
	ld.w	$s0, $t6, 0
	slt	$s3, $s3, $t2
	xori	$s3, $s3, 1
	or	$s3, $s4, $s3
	add.d	$s1, $s1, $s3
	bge	$s0, $s5, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=2
	ldx.w	$s2, $a3, $s2
	slt	$s3, $s2, $t1
	slt	$s2, $s2, $t2
	xori	$s2, $s2, 1
	or	$s2, $s3, $s2
	add.d	$s1, $s1, $s2
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=2
	ld.w	$s3, $t5, 0
	slt	$s4, $s3, $t1
	slli.d	$s2, $s3, 2
	ldx.w	$s5, $a2, $s2
	slt	$s3, $s3, $t2
	xori	$s3, $s3, 1
	or	$s3, $s4, $s3
	add.d	$s1, $s1, $s3
	bge	$s0, $s5, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_8 Depth=2
	ldx.w	$s2, $a3, $s2
	slt	$s3, $s2, $t1
	slt	$s2, $s2, $t2
	xori	$s2, $s2, 1
	or	$s2, $s3, $s2
	add.d	$s1, $s1, $s2
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=2
	ld.w	$s3, $t4, 0
	slt	$s4, $s3, $t1
	slli.d	$s2, $s3, 2
	ldx.w	$s5, $a2, $s2
	slt	$s3, $s3, $t2
	xori	$s3, $s3, 1
	or	$s3, $s4, $s3
	add.d	$s1, $s1, $s3
	bge	$s0, $s5, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=2
	ldx.w	$s2, $a4, $s2
	slt	$s3, $s2, $t1
	slt	$s2, $s2, $t2
	xori	$s2, $s2, 1
	or	$s2, $s3, $s2
	add.d	$s1, $s1, $s2
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=2
	ld.w	$s3, $t3, 0
	slt	$s4, $s3, $t1
	slli.d	$s2, $s3, 2
	ldx.w	$s5, $a2, $s2
	slt	$s3, $s3, $t2
	xori	$s3, $s3, 1
	or	$s3, $s4, $s3
	add.w	$s1, $s1, $s3
	bge	$s0, $s5, .LBB0_7
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=2
	ldx.w	$s0, $a4, $s2
	slt	$s2, $s0, $t1
	slt	$s0, $s0, $t2
	xori	$s0, $s0, 1
	or	$s0, $s2, $s0
	add.w	$s1, $s1, $s0
	b	.LBB0_7
.LBB0_17:                               # %.preheader531
	beqz	$s6, .LBB0_208
# %bb.18:                               # %.lr.ph554
	move	$s0, $zero
	move	$s6, $zero
	addi.d	$s1, $sp, 72
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_19:                               # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit443
                                        #   in Loop: Header=BB0_20 Depth=1
	beq	$s0, $s3, .LBB0_208
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
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
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
.Ltmp46:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp47:
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
.Ltmp48:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp49:
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
.Ltmp50:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp51:
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
.Ltmp52:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp53:
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
.Ltmp54:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp55:
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
.Ltmp56:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp57:
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
.Ltmp58:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp59:
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
.Ltmp60:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp61:
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
.Ltmp63:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIiSaIiEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp64:
# %bb.60:                               #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a0, $sp, 72
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s4, $sp, 96
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
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
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	srli.d	$a2, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a2, $a2, $a3
	movgr2fr.d	$fa1, $a2
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a2, 275200
	bstrins.d	$a1, $a2, 63, 32
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_2)
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
	beqz	$s6, .LBB0_208
# %bb.74:                               # %.lr.ph
	move	$s1, $zero
	move	$s7, $zero
	addi.d	$s5, $sp, 72
	addi.d	$s6, $sp, 48
	b	.LBB0_76
	.p2align	4, , 16
.LBB0_75:                               # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit503
                                        #   in Loop: Header=BB0_76 Depth=1
	beq	$s1, $s2, .LBB0_208
.LBB0_76:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_78 Depth 2
                                        #     Child Loop BB0_128 Depth 2
                                        #     Child Loop BB0_133 Depth 2
                                        #     Child Loop BB0_139 Depth 2
                                        #     Child Loop BB0_144 Depth 2
                                        #     Child Loop BB0_148 Depth 2
                                        #     Child Loop BB0_150 Depth 2
	slli.d	$s3, $s7, 2
	st.d	$s5, $sp, 80
	st.d	$s5, $sp, 72
	st.d	$zero, $sp, 88
	st.d	$s6, $sp, 56
	st.d	$s6, $sp, 48
	st.d	$zero, $sp, 64
	slli.w	$s2, $s1, 7
	addi.w	$s1, $s1, 1
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	slli.w	$s8, $s1, 7
	addi.w	$a0, $s7, 128
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s1, $zero, 128
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_77:                               #   in Loop: Header=BB0_78 Depth=2
	addi.d	$s7, $s7, 1
	addi.w	$s1, $s1, -1
	addi.d	$s3, $s3, 4
	beqz	$s1, .LBB0_123
.LBB0_78:                               #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 1160
	bgeu	$s7, $a0, .LBB0_77
# %bb.79:                               #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1368
	ldx.w	$s4, $s0, $s3
	blt	$s4, $s2, .LBB0_81
# %bb.80:                               #   in Loop: Header=BB0_78 Depth=2
	blt	$s4, $s8, .LBB0_84
.LBB0_81:                               #   in Loop: Header=BB0_78 Depth=2
.Ltmp0:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.82:                               #   in Loop: Header=BB0_78 Depth=2
	ldx.w	$a1, $s0, $s3
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s0, $a1, $s3
.Ltmp2:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp3:
# %bb.83:                               #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
	ldx.w	$s4, $a1, $s3
.LBB0_84:                               #   in Loop: Header=BB0_78 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s4, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s3
	bge	$a1, $a2, .LBB0_90
# %bb.85:                               #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1392
	ldx.w	$a0, $s0, $a0
	blt	$a0, $s2, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_78 Depth=2
	blt	$a0, $s8, .LBB0_90
.LBB0_87:                               #   in Loop: Header=BB0_78 Depth=2
.Ltmp5:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp6:
# %bb.88:                               #   in Loop: Header=BB0_78 Depth=2
	alsl.d	$a1, $s4, $s0, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$a0, $a1, $s3
	ld.d	$a1, $fp, 1392
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
.Ltmp7:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp8:
# %bb.89:                               #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
.LBB0_90:                               #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1376
	ldx.w	$s4, $s0, $s3
	blt	$s4, $s2, .LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_78 Depth=2
	blt	$s4, $s8, .LBB0_95
.LBB0_92:                               #   in Loop: Header=BB0_78 Depth=2
.Ltmp10:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp11:
# %bb.93:                               #   in Loop: Header=BB0_78 Depth=2
	ldx.w	$a1, $s0, $s3
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s0, $a1, $s3
.Ltmp12:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.94:                               #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
	ldx.w	$s4, $a1, $s3
.LBB0_95:                               #   in Loop: Header=BB0_78 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s4, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s3
	bge	$a1, $a2, .LBB0_101
# %bb.96:                               #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1392
	ldx.w	$a0, $s0, $a0
	blt	$a0, $s2, .LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_78 Depth=2
	blt	$a0, $s8, .LBB0_101
.LBB0_98:                               #   in Loop: Header=BB0_78 Depth=2
.Ltmp15:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.99:                               #   in Loop: Header=BB0_78 Depth=2
	alsl.d	$a1, $s4, $s0, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$a0, $a1, $s3
	ld.d	$a1, $fp, 1392
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
.Ltmp17:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp18:
# %bb.100:                              #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
.LBB0_101:                              #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1384
	ldx.w	$s4, $s0, $s3
	blt	$s4, $s2, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_78 Depth=2
	blt	$s4, $s8, .LBB0_106
.LBB0_103:                              #   in Loop: Header=BB0_78 Depth=2
.Ltmp20:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.104:                              #   in Loop: Header=BB0_78 Depth=2
	ldx.w	$a1, $s0, $s3
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s0, $a1, $s3
.Ltmp22:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp23:
# %bb.105:                              #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
	ldx.w	$s4, $a1, $s3
.LBB0_106:                              #   in Loop: Header=BB0_78 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s4, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s3
	bge	$a1, $a2, .LBB0_112
# %bb.107:                              #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1376
	ldx.w	$a0, $s0, $a0
	blt	$a0, $s2, .LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_78 Depth=2
	blt	$a0, $s8, .LBB0_112
.LBB0_109:                              #   in Loop: Header=BB0_78 Depth=2
.Ltmp25:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp26:
# %bb.110:                              #   in Loop: Header=BB0_78 Depth=2
	alsl.d	$a1, $s4, $s0, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$a0, $a1, $s3
	ld.d	$a1, $fp, 1376
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
.Ltmp27:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp28:
# %bb.111:                              #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
.LBB0_112:                              #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1392
	ldx.w	$s4, $s0, $s3
	blt	$s4, $s2, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_78 Depth=2
	blt	$s4, $s8, .LBB0_117
.LBB0_114:                              #   in Loop: Header=BB0_78 Depth=2
.Ltmp30:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp31:
# %bb.115:                              #   in Loop: Header=BB0_78 Depth=2
	ldx.w	$a1, $s0, $s3
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s0, $a1, $s3
.Ltmp32:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp33:
# %bb.116:                              #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64
	ldx.w	$s4, $a1, $s3
.LBB0_117:                              #   in Loop: Header=BB0_78 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s4, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s3
	bge	$a1, $a2, .LBB0_77
# %bb.118:                              #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1376
	ldx.w	$a0, $s0, $a0
	blt	$a0, $s2, .LBB0_120
# %bb.119:                              #   in Loop: Header=BB0_78 Depth=2
	blt	$a0, $s8, .LBB0_77
.LBB0_120:                              #   in Loop: Header=BB0_78 Depth=2
.Ltmp35:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.121:                              #   in Loop: Header=BB0_78 Depth=2
	alsl.d	$a1, $s4, $s0, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$a0, $a1, $s3
	ld.d	$a1, $fp, 1376
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
.Ltmp38:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp39:
# %bb.122:                              #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
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
.Ltmp41:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIiSaIiEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp42:
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s3, $sp, 96
# %bb.124:                              #   in Loop: Header=BB0_76 Depth=1
	ld.d	$s1, $sp, 72
	beq	$s1, $s5, .LBB0_134
# %bb.125:                              #   in Loop: Header=BB0_76 Depth=1
	st.d	$s3, $sp, 104
	st.d	$s3, $sp, 96
	st.d	$zero, $sp, 112
	ld.d	$a1, $s1, 0
	bne	$a1, $s5, .LBB0_128
	b	.LBB0_134
	.p2align	4, , 16
.LBB0_126:                              #   in Loop: Header=BB0_128 Depth=2
	move	$s1, $a1
.LBB0_127:                              # %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_S4_.exit.i467
                                        #   in Loop: Header=BB0_128 Depth=2
	ld.d	$a1, $s1, 0
	beq	$a1, $s5, .LBB0_132
.LBB0_128:                              # %.lr.ph.i465
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s1, 16
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
	beq	$a0, $s3, .LBB0_134
	.p2align	4, , 16
.LBB0_133:                              # %.lr.ph.i.i.i473
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s3, .LBB0_133
.LBB0_134:                              # %_ZNSt7__cxx114listIiSaIiEE6uniqueEv.exit478
                                        #   in Loop: Header=BB0_76 Depth=1
.Ltmp43:
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIiSaIiEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.135:                              #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB0_146
# %bb.136:                              #   in Loop: Header=BB0_76 Depth=1
	st.d	$s3, $sp, 104
	st.d	$s3, $sp, 96
	st.d	$zero, $sp, 112
	ld.d	$a1, $a0, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	bne	$a1, $s6, .LBB0_139
	b	.LBB0_145
	.p2align	4, , 16
.LBB0_137:                              #   in Loop: Header=BB0_139 Depth=2
	move	$a0, $a1
.LBB0_138:                              # %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_S4_.exit.i482
                                        #   in Loop: Header=BB0_139 Depth=2
	ld.d	$a1, $a0, 0
	beq	$a1, $s6, .LBB0_143
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
	beq	$a0, $s3, .LBB0_145
	.p2align	4, , 16
.LBB0_144:                              # %.lr.ph.i.i.i488
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s3, .LBB0_144
.LBB0_145:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit.i491
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 48
	b	.LBB0_147
	.p2align	4, , 16
.LBB0_146:                              #   in Loop: Header=BB0_76 Depth=1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
.LBB0_147:                              # %_ZNSt7__cxx114listIiSaIiEE6uniqueEv.exit493
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a1, $sp, 88
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	srli.d	$a2, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a2, $a2, $a3
	movgr2fr.d	$fa1, $a2
	fsub.d	$fa1, $fa1, $fa0
	ld.d	$a2, $sp, 64
	lu12i.w	$a4, 275200
	bstrins.d	$a1, $a4, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	srli.d	$a1, $a2, 32
	or	$a1, $a1, $a3
	movgr2fr.d	$fa2, $a1
	fsub.d	$fa0, $fa2, $fa0
	bstrins.d	$a2, $a4, 63, 32
	movgr2fr.d	$fa2, $a2
	fadd.d	$fa0, $fa2, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI0_1)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa3, $a1, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	fmul.d	$fa0, $fa1, $fa0
	vldi	$vr1, -1008
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $a1, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $s6, .LBB0_149
	.p2align	4, , 16
.LBB0_148:                              # %.lr.ph.i.i495
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s6, .LBB0_148
.LBB0_149:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit498
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 72
	beq	$a0, $s5, .LBB0_75
	.p2align	4, , 16
.LBB0_150:                              # %.lr.ph.i.i500
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s5, .LBB0_150
	b	.LBB0_75
.LBB0_151:                              # %.preheader529
	beqz	$s6, .LBB0_208
# %bb.152:                              # %.lr.ph559
	move	$a0, $zero
	move	$s1, $zero
	addi.d	$s2, $sp, 72
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	b	.LBB0_154
	.p2align	4, , 16
.LBB0_153:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$s1, $s3, .LBB0_208
.LBB0_154:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_158 Depth 2
                                        #     Child Loop BB0_198 Depth 2
                                        #     Child Loop BB0_203 Depth 2
                                        #     Child Loop BB0_206 Depth 2
	move	$s7, $a0
	slli.d	$s8, $a0, 2
	st.d	$s2, $sp, 80
	st.d	$s2, $sp, 72
	st.d	$zero, $sp, 88
	slli.w	$s3, $s1, 7
	addi.w	$s1, $s1, 1
	slli.w	$s4, $s1, 7
	addi.w	$a0, $a0, 128
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s0, $zero, 128
	b	.LBB0_158
.LBB0_155:                              #   in Loop: Header=BB0_158 Depth=2
.Ltmp80:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp81:
# %bb.156:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit410
                                        #   in Loop: Header=BB0_158 Depth=2
	alsl.d	$a1, $s6, $s5, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	.p2align	4, , 16
.LBB0_157:                              #   in Loop: Header=BB0_158 Depth=2
	addi.d	$s7, $s7, 1
	addi.w	$s0, $s0, -1
	addi.d	$s8, $s8, 4
	beqz	$s0, .LBB0_193
.LBB0_158:                              #   Parent Loop BB0_154 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 1160
	bgeu	$s7, $a0, .LBB0_157
# %bb.159:                              #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1368
	ldx.w	$s6, $s5, $s8
	blt	$s6, $s3, .LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_158 Depth=2
	blt	$s6, $s4, .LBB0_163
.LBB0_161:                              #   in Loop: Header=BB0_158 Depth=2
.Ltmp66:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp67:
# %bb.162:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB0_158 Depth=2
	ldx.w	$a1, $s5, $s8
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s6, $a1, $s8
.LBB0_163:                              #   in Loop: Header=BB0_158 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s6, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s8
	bge	$a1, $a2, .LBB0_168
# %bb.164:                              #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1392
	ldx.w	$a0, $s5, $a0
	blt	$a0, $s3, .LBB0_166
# %bb.165:                              #   in Loop: Header=BB0_158 Depth=2
	blt	$a0, $s4, .LBB0_168
.LBB0_166:                              #   in Loop: Header=BB0_158 Depth=2
.Ltmp68:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.167:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit404
                                        #   in Loop: Header=BB0_158 Depth=2
	alsl.d	$a1, $s6, $s5, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
.LBB0_168:                              #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1376
	ldx.w	$s6, $s5, $s8
	blt	$s6, $s3, .LBB0_170
# %bb.169:                              #   in Loop: Header=BB0_158 Depth=2
	blt	$s6, $s4, .LBB0_172
.LBB0_170:                              #   in Loop: Header=BB0_158 Depth=2
.Ltmp70:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp71:
# %bb.171:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit405
                                        #   in Loop: Header=BB0_158 Depth=2
	ldx.w	$a1, $s5, $s8
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s6, $a1, $s8
.LBB0_172:                              #   in Loop: Header=BB0_158 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s6, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s8
	bge	$a1, $a2, .LBB0_177
# %bb.173:                              #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1392
	ldx.w	$a0, $s5, $a0
	blt	$a0, $s3, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_158 Depth=2
	blt	$a0, $s4, .LBB0_177
.LBB0_175:                              #   in Loop: Header=BB0_158 Depth=2
.Ltmp72:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp73:
# %bb.176:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit406
                                        #   in Loop: Header=BB0_158 Depth=2
	alsl.d	$a1, $s6, $s5, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
.LBB0_177:                              #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1384
	ldx.w	$s6, $s5, $s8
	blt	$s6, $s3, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_158 Depth=2
	blt	$s6, $s4, .LBB0_181
.LBB0_179:                              #   in Loop: Header=BB0_158 Depth=2
.Ltmp74:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp75:
# %bb.180:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit407
                                        #   in Loop: Header=BB0_158 Depth=2
	ldx.w	$a1, $s5, $s8
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s6, $a1, $s8
.LBB0_181:                              #   in Loop: Header=BB0_158 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s6, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s8
	bge	$a1, $a2, .LBB0_186
# %bb.182:                              #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1376
	ldx.w	$a0, $s5, $a0
	blt	$a0, $s3, .LBB0_184
# %bb.183:                              #   in Loop: Header=BB0_158 Depth=2
	blt	$a0, $s4, .LBB0_186
.LBB0_184:                              #   in Loop: Header=BB0_158 Depth=2
.Ltmp76:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp77:
# %bb.185:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit408
                                        #   in Loop: Header=BB0_158 Depth=2
	alsl.d	$a1, $s6, $s5, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
.LBB0_186:                              #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1392
	ldx.w	$s6, $s5, $s8
	blt	$s6, $s3, .LBB0_188
# %bb.187:                              #   in Loop: Header=BB0_158 Depth=2
	blt	$s6, $s4, .LBB0_190
.LBB0_188:                              #   in Loop: Header=BB0_158 Depth=2
.Ltmp78:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp79:
# %bb.189:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit409
                                        #   in Loop: Header=BB0_158 Depth=2
	ldx.w	$a1, $s5, $s8
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88
	ldx.w	$s6, $a1, $s8
.LBB0_190:                              #   in Loop: Header=BB0_158 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s6, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s8
	bge	$a1, $a2, .LBB0_157
# %bb.191:                              #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1376
	ldx.w	$a0, $s5, $a0
	blt	$a0, $s3, .LBB0_155
# %bb.192:                              #   in Loop: Header=BB0_158 Depth=2
	blt	$a0, $s4, .LBB0_157
	b	.LBB0_155
	.p2align	4, , 16
.LBB0_193:                              #   in Loop: Header=BB0_154 Depth=1
.Ltmp83:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIiSaIiEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp84:
# %bb.194:                              #   in Loop: Header=BB0_154 Depth=1
	ld.d	$a0, $sp, 72
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s4, $sp, 96
	beq	$a0, $s2, .LBB0_205
# %bb.195:                              #   in Loop: Header=BB0_154 Depth=1
	st.d	$s4, $sp, 104
	st.d	$s4, $sp, 96
	st.d	$zero, $sp, 112
	ld.d	$a1, $a0, 0
	bne	$a1, $s2, .LBB0_198
	b	.LBB0_204
	.p2align	4, , 16
.LBB0_196:                              #   in Loop: Header=BB0_198 Depth=2
	move	$a0, $a1
.LBB0_197:                              # %_ZNSt7__cxx114listIiSaIiEE6spliceESt20_List_const_iteratorIiERS2_S4_.exit.i
                                        #   in Loop: Header=BB0_198 Depth=2
	ld.d	$a1, $a0, 0
	beq	$a1, $s2, .LBB0_202
.LBB0_198:                              # %.lr.ph.i
                                        #   Parent Loop BB0_154 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a1, 16
	bne	$a2, $a3, .LBB0_196
# %bb.199:                              #   in Loop: Header=BB0_198 Depth=2
	ld.d	$a3, $sp, 96
	beq	$a3, $a1, .LBB0_197
# %bb.200:                              #   in Loop: Header=BB0_198 Depth=2
	ld.d	$a2, $a1, 0
	beq	$a2, $a3, .LBB0_197
# %bb.201:                              #   in Loop: Header=BB0_198 Depth=2
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 112
	ld.d	$a2, $sp, 88
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 112
	addi.d	$a1, $a2, -1
	st.d	$a1, $sp, 88
	b	.LBB0_197
	.p2align	4, , 16
.LBB0_202:                              # %._crit_edge.i
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.d	$a0, $sp, 96
	beq	$a0, $s4, .LBB0_204
	.p2align	4, , 16
.LBB0_203:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB0_154 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s4, .LBB0_203
.LBB0_204:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit.i
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.d	$a0, $sp, 72
.LBB0_205:                              # %_ZNSt7__cxx114listIiSaIiEE6uniqueEv.exit
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.d	$a1, $sp, 88
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	srli.d	$a2, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a2, $a2, $a3
	movgr2fr.d	$fa1, $a2
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a2, 275200
	bstrins.d	$a1, $a2, 63, 32
	fld.d	$fa1, $s7, %pc_lo12(.LCPI0_3)
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa2, $a2, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	movgr2fr.d	$fa3, $a1
	fadd.d	$fa0, $fa3, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $a2, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	beq	$a0, $s2, .LBB0_153
	.p2align	4, , 16
.LBB0_206:                              # %.lr.ph.i.i
                                        #   Parent Loop BB0_154 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s2, .LBB0_206
	b	.LBB0_153
.LBB0_207:                              # %..loopexit_crit_edge
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
.LBB0_208:                              # %.loopexit
	pcalau12i	$a0, %pc_hi20(meas_count)
	ld.w	$a1, $a0, %pc_lo12(meas_count)
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
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
.LBB0_209:
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
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
.LBB0_210:
.Ltmp85:
	b	.LBB0_227
.LBB0_211:
.Ltmp65:
	b	.LBB0_230
.LBB0_212:
.Ltmp45:
	b	.LBB0_222
.LBB0_213:
.Ltmp19:
	b	.LBB0_222
.LBB0_214:
.Ltmp9:
	b	.LBB0_222
.LBB0_215:
.Ltmp40:
	b	.LBB0_222
.LBB0_216:
.Ltmp29:
	b	.LBB0_222
.LBB0_217:
.Ltmp34:
	b	.LBB0_222
.LBB0_218:
.Ltmp24:
	b	.LBB0_222
.LBB0_219:
.Ltmp14:
	b	.LBB0_222
.LBB0_220:
.Ltmp4:
	b	.LBB0_222
.LBB0_221:
.Ltmp37:
.LBB0_222:
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$s0, $sp, 48
	beq	$a0, $s0, .LBB0_224
	.p2align	4, , 16
.LBB0_223:                              # %.lr.ph.i.i505
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB0_223
.LBB0_224:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit508
	ld.d	$a0, $sp, 72
	addi.d	$s0, $sp, 72
	beq	$a0, $s0, .LBB0_232
	.p2align	4, , 16
.LBB0_225:                              # %.lr.ph.i.i510
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB0_225
	b	.LBB0_232
.LBB0_226:
.Ltmp82:
.LBB0_227:
	move	$fp, $a0
	ld.d	$a0, $sp, 72
	addi.d	$s0, $sp, 72
	beq	$a0, $s0, .LBB0_232
	.p2align	4, , 16
.LBB0_228:                              # %.lr.ph.i.i412
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB0_228
	b	.LBB0_232
.LBB0_229:
.Ltmp62:
.LBB0_230:
	move	$fp, $a0
	ld.d	$a0, $sp, 72
	addi.d	$s0, $sp, 72
	beq	$a0, $s0, .LBB0_232
	.p2align	4, , 16
.LBB0_231:                              # %.lr.ph.i.i445
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB0_231
.LBB0_232:
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
	.word	.LBB0_151-.LJTI0_0
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s1, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$fp, $a0
	st.d	$zero, $sp, 160
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 144
	st.d	$zero, $sp, 136
	vst	$vr0, $sp, 120
	st.d	$zero, $sp, 112
	vst	$vr0, $sp, 96
	st.d	$zero, $sp, 88
	vst	$vr0, $sp, 72
	st.d	$zero, $sp, 64
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $sp, 48
.Ltmp86:
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
.Ltmp87:
# %bb.1:
	ld.d	$a2, $fp, 1160
	st.w	$zero, $sp, 28
	beqz	$a2, .LBB4_3
# %bb.2:
.Ltmp88:
	addi.d	$a0, $sp, 144
	addi.d	$a3, $sp, 28
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
.Ltmp89:
.LBB4_3:                                # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
	ld.w	$a0, $fp, 628
	beqz	$a0, .LBB4_12
# %bb.4:
	ori	$a0, $zero, 3
	beq	$s1, $a0, .LBB4_35
.LBB4_5:
	ori	$a0, $zero, 1
	beq	$s1, $a0, .LBB4_14
# %bb.6:
	bnez	$s1, .LBB4_215
# %bb.7:                                # %.preheader
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB4_215
# %bb.8:                                # %.lr.ph364
	ld.d	$a1, $s0, 0
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB4_72
# %bb.9:
	move	$a2, $zero
.LBB4_10:                               # %scalar.ph810.preheader
	move	$a3, $a2
	.p2align	4, , 16
.LBB4_11:                               # %scalar.ph810
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a2, 2
	stx.w	$a3, $a1, $a2
	addi.w	$a3, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	bltu	$a2, $a0, .LBB4_11
	b	.LBB4_215
.LBB4_12:
	ld.d	$a0, $fp, 864
	ld.d	$a2, $fp, 856
	ld.d	$a1, $fp, 1160
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB4_20
# %bb.13:
	addi.d	$a0, $fp, 856
	sub.d	$a1, $a1, $a3
.Ltmp91:
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp92:
	b	.LBB4_23
.LBB4_14:
	ld.d	$a0, $fp, 1424
	ld.d	$a1, $fp, 1416
	ld.d	$s1, $fp, 1160
	sub.d	$a0, $a0, $a1
	srai.d	$s2, $a0, 3
	bgeu	$s2, $s1, .LBB4_16
# %bb.15:
.Ltmp121:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh24calc_spatial_coordinatesEi)
	jirl	$ra, $ra, 0
.Ltmp122:
.LBB4_16:
.Ltmp123:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh17calc_centerminmaxEv)
	jirl	$ra, $ra, 0
.Ltmp124:
# %bb.17:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $sp, 72
	ld.d	$s3, $fp, 1160
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 3
	bgeu	$a2, $s3, .LBB4_39
# %bb.18:
	sub.d	$a1, $s3, $a2
.Ltmp125:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp126:
# %bb.19:                               # %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge
	ld.d	$s3, $fp, 1160
	b	.LBB4_42
.LBB4_20:
	bgeu	$a1, $a3, .LBB4_23
# %bb.21:
	alsl.d	$a1, $a1, $a2, 2
	beq	$a0, $a1, .LBB4_23
# %bb.22:
	st.d	$a1, $fp, 864
.LBB4_23:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	blez	$s2, .LBB4_34
# %bb.24:                               # %.lr.ph20.i
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
	b	.LBB4_26
	.p2align	4, , 16
.LBB4_25:                               # %._crit_edge.i
                                        #   in Loop: Header=BB4_26 Depth=1
	addi.w	$a1, $a1, 1
	beq	$a1, $s2, .LBB4_34
.LBB4_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_30 Depth 2
                                        #     Child Loop BB4_33 Depth 2
	add.d	$a2, $a2, $a3
	slt	$a7, $a1, $a4
	add.w	$a2, $a2, $a7
	blez	$a2, .LBB4_25
# %bb.27:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB4_26 Depth=1
	bgeu	$a2, $a6, .LBB4_29
# %bb.28:                               #   in Loop: Header=BB4_26 Depth=1
	move	$a7, $zero
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_29:                               # %vector.ph
                                        #   in Loop: Header=BB4_26 Depth=1
	bstrpick.d	$a7, $a2, 30, 3
	slli.d	$a7, $a7, 3
	vreplgr2vr.w	$vr0, $a1
	move	$t0, $a5
	move	$t1, $a7
	.p2align	4, , 16
.LBB4_30:                               # %vector.body
                                        #   Parent Loop BB4_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t0, -16
	vst	$vr0, $t0, 0
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB4_30
# %bb.31:                               # %middle.block
                                        #   in Loop: Header=BB4_26 Depth=1
	beq	$a7, $a2, .LBB4_25
.LBB4_32:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_26 Depth=1
	alsl.d	$t0, $a7, $a0, 2
	.p2align	4, , 16
.LBB4_33:                               # %.lr.ph.i
                                        #   Parent Loop BB4_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $t0, 0
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 4
	bltu	$a7, $a2, .LBB4_33
	b	.LBB4_25
.LBB4_34:                               # %_ZN4Mesh17calc_distributionEi.exit
	st.w	$zero, $fp, 636
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB4_5
.LBB4_35:
	ld.w	$a0, $fp, 628
	bnez	$a0, .LBB4_215
# %bb.36:
	ld.d	$a1, $sp, 128
	ld.d	$a2, $sp, 120
	ld.d	$a0, $fp, 1160
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a0, .LBB4_93
# %bb.37:
	sub.d	$a1, $a0, $a3
.Ltmp94:
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp95:
# %bb.38:                               # %._ZNSt6vectorIiSaIiEE6resizeEm.exit203_crit_edge
	ld.d	$a0, $fp, 1160
	b	.LBB4_96
.LBB4_39:
	bgeu	$s3, $a2, .LBB4_42
# %bb.40:
	alsl.d	$a1, $s3, $a1, 3
	beq	$a0, $a1, .LBB4_42
# %bb.41:
	st.d	$a1, $sp, 80
.LBB4_42:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 48
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 3
	bgeu	$a2, $s3, .LBB4_45
# %bb.43:
	sub.d	$a1, $s3, $a2
.Ltmp127:
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp128:
# %bb.44:                               # %._ZNSt6vectorIdSaIdEE6resizeEm.exit183_crit_edge
	ld.d	$s3, $fp, 1160
	b	.LBB4_48
.LBB4_45:
	bgeu	$s3, $a2, .LBB4_48
# %bb.46:
	alsl.d	$a1, $s3, $a1, 3
	beq	$a0, $a1, .LBB4_48
# %bb.47:
	st.d	$a1, $sp, 56
.LBB4_48:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit183
	beqz	$s3, .LBB4_53
# %bb.49:                               # %.lr.ph339
	fld.d	$fa0, $fp, 1240
	fld.d	$fa1, $fp, 1232
	fsub.d	$fa0, $fa0, $fa1
	frecip.d	$fa0, $fa0
	fld.d	$fa1, $fp, 1256
	fld.d	$fa2, $fp, 1248
	ld.d	$a0, $fp, 1416
	ld.d	$a1, $fp, 1440
	ld.d	$a2, $sp, 72
	ld.d	$a3, $fp, 1464
	ld.d	$a4, $fp, 1488
	ld.d	$a5, $sp, 48
	fsub.d	$fa1, $fa1, $fa2
	ori	$a6, $zero, 18
	frecip.d	$fa1, $fa1
	bgeu	$s3, $a6, .LBB4_77
# %bb.50:
	move	$a6, $zero
.LBB4_51:                               # %scalar.ph708.preheader
	addi.w	$a7, $a6, 1
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB4_52:                               # %scalar.ph708
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a6, $a6, 3
	fldx.d	$fa3, $a1, $a6
	fldx.d	$fa4, $a0, $a6
	fld.d	$fa5, $fp, 1232
	fmul.d	$fa3, $fa3, $fa2
	fadd.d	$fa3, $fa4, $fa3
	fsub.d	$fa3, $fa3, $fa5
	fmul.d	$fa3, $fa0, $fa3
	fstx.d	$fa3, $a2, $a6
	fldx.d	$fa3, $a4, $a6
	fldx.d	$fa4, $a3, $a6
	fld.d	$fa5, $fp, 1248
	fmul.d	$fa3, $fa3, $fa2
	fadd.d	$fa3, $fa4, $fa3
	fsub.d	$fa3, $fa3, $fa5
	fmul.d	$fa3, $fa1, $fa3
	fstx.d	$fa3, $a5, $a6
	bstrpick.d	$a6, $a7, 31, 0
	addi.w	$a7, $a7, 1
	bltu	$a6, $s3, .LBB4_52
.LBB4_53:                               # %._crit_edge340
	bgeu	$s2, $s1, .LBB4_62
# %bb.54:
	ld.d	$a0, $fp, 1416
	ld.d	$a1, $fp, 1424
	beq	$a1, $a0, .LBB4_56
# %bb.55:
	st.d	$a0, $fp, 1424
.LBB4_56:                               # %_ZNSt6vectorIdSaIdEE5clearEv.exit
	ld.d	$a0, $fp, 1440
	ld.d	$a1, $fp, 1448
	beq	$a1, $a0, .LBB4_58
# %bb.57:
	st.d	$a0, $fp, 1448
.LBB4_58:                               # %_ZNSt6vectorIdSaIdEE5clearEv.exit186
	ld.d	$a0, $fp, 1464
	ld.d	$a1, $fp, 1472
	beq	$a1, $a0, .LBB4_60
# %bb.59:
	st.d	$a0, $fp, 1472
.LBB4_60:                               # %_ZNSt6vectorIdSaIdEE5clearEv.exit188
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1496
	beq	$a1, $a0, .LBB4_62
# %bb.61:
	st.d	$a0, $fp, 1496
.LBB4_62:                               # %_ZNSt6vectorIdSaIdEE5clearEv.exit190
	ld.w	$a0, $fp, 628
	bnez	$a0, .LBB4_215
# %bb.63:
	slli.d	$a0, $s3, 3
	alsl.d	$a0, $s3, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72
	ld.d	$a2, $sp, 48
	move	$s1, $a0
.Ltmp129:
	addi.w	$a0, $s3, 0
	ori	$a5, $zero, 1
	move	$a3, $zero
	move	$a4, $s1
	pcaddu18i	$ra, %call36(hsfc2sort)
	jirl	$ra, $ra, 0
.Ltmp130:
# %bb.64:                               # %.preheader299
	ld.d	$s4, $fp, 1160
	beqz	$s4, .LBB4_165
# %bb.65:                               # %.lr.ph343
	ld.d	$a0, $s0, 0
	ori	$a1, $zero, 12
	bgeu	$s4, $a1, .LBB4_242
# %bb.66:
	move	$a1, $zero
.LBB4_67:                               # %scalar.ph735.preheader
	addi.w	$a2, $a1, 1
	.p2align	4, , 16
.LBB4_68:                               # %scalar.ph735
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $s1, $a1
	stx.w	$a3, $a0, $a1
	bstrpick.d	$a1, $a2, 31, 0
	addi.w	$a2, $a2, 1
	bltu	$a1, $s4, .LBB4_68
.LBB4_69:                               # %.loopexit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	slli.d	$s2, $s4, 2
.Ltmp131:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp132:
# %bb.70:                               # %.noexc192
	move	$s1, $a0
	alsl.d	$s3, $s4, $a0, 2
	ori	$a0, $zero, 1
	st.w	$zero, $s1, 0
	beq	$s4, $a0, .LBB4_166
# %bb.71:                               # %.lr.ph.i.preheader.i.i.i.i.i
	addi.d	$a0, $s1, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB4_166
.LBB4_72:                               # %vector.scevcheck809
	addi.d	$a3, $a0, -1
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a2, $zero
	beq	$a4, $a5, .LBB4_10
# %bb.73:                               # %vector.scevcheck809
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB4_10
# %bb.74:                               # %vector.ph812
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI4_0)
	bstrpick.d	$a2, $a0, 32, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB4_75:                               # %vector.body815
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB4_75
# %bb.76:                               # %middle.block818
	bne	$a0, $a2, .LBB4_10
	b	.LBB4_215
.LBB4_77:                               # %vector.scevcheck660
	addi.d	$a7, $s3, -1
	bstrpick.d	$t0, $a7, 31, 0
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	move	$a6, $zero
	beq	$t0, $t1, .LBB4_51
# %bb.78:                               # %vector.scevcheck660
	srli.d	$a7, $a7, 32
	bnez	$a7, .LBB4_51
# %bb.79:                               # %vector.memcheck661
	alsl.d	$t0, $s3, $a2, 3
	alsl.d	$a7, $s3, $a5, 3
	sltu	$a6, $a2, $a7
	sltu	$t1, $a5, $t0
	and	$t1, $a6, $t1
	move	$a6, $zero
	bnez	$t1, .LBB4_51
# %bb.80:                               # %vector.memcheck661
	alsl.d	$t1, $s3, $a0, 3
	sltu	$t2, $a2, $t1
	sltu	$t3, $a0, $t0
	and	$t2, $t2, $t3
	bnez	$t2, .LBB4_51
# %bb.81:                               # %vector.memcheck661
	alsl.d	$t3, $s3, $a1, 3
	sltu	$t2, $a2, $t3
	sltu	$t4, $a1, $t0
	and	$t2, $t2, $t4
	bnez	$t2, .LBB4_51
# %bb.82:                               # %vector.memcheck661
	addi.d	$t2, $fp, 1232
	addi.d	$t4, $fp, 1256
	sltu	$t5, $a2, $t4
	sltu	$t6, $t2, $t0
	and	$t5, $t5, $t6
	bnez	$t5, .LBB4_51
# %bb.83:                               # %vector.memcheck661
	alsl.d	$t5, $s3, $a3, 3
	sltu	$t6, $a2, $t5
	sltu	$t7, $a3, $t0
	and	$t6, $t6, $t7
	bnez	$t6, .LBB4_51
# %bb.84:                               # %vector.memcheck661
	alsl.d	$t6, $s3, $a4, 3
	sltu	$t7, $a2, $t6
	sltu	$t0, $a4, $t0
	and	$t0, $t7, $t0
	bnez	$t0, .LBB4_51
# %bb.85:                               # %vector.memcheck661
	sltu	$t0, $a5, $t1
	sltu	$t1, $a0, $a7
	and	$t0, $t0, $t1
	bnez	$t0, .LBB4_51
# %bb.86:                               # %vector.memcheck661
	sltu	$t0, $a5, $t3
	sltu	$t1, $a1, $a7
	and	$t0, $t0, $t1
	bnez	$t0, .LBB4_51
# %bb.87:                               # %vector.memcheck661
	sltu	$t0, $a5, $t4
	sltu	$t1, $t2, $a7
	and	$t0, $t0, $t1
	bnez	$t0, .LBB4_51
# %bb.88:                               # %vector.memcheck661
	sltu	$t0, $a5, $t5
	sltu	$t1, $a3, $a7
	and	$t0, $t0, $t1
	bnez	$t0, .LBB4_51
# %bb.89:                               # %vector.memcheck661
	sltu	$t0, $a5, $t6
	sltu	$a7, $a4, $a7
	and	$a7, $t0, $a7
	bnez	$a7, .LBB4_51
# %bb.90:                               # %vector.ph710
	bstrpick.d	$a6, $s3, 32, 1
	slli.d	$a6, $a6, 1
	vreplvei.d	$vr2, $vr0, 0
	vreplvei.d	$vr3, $vr1, 0
	lu52i.d	$a7, $zero, 1022
	vreplgr2vr.d	$vr4, $a7
	move	$a7, $a0
	move	$t0, $a1
	move	$t1, $a2
	move	$t2, $a3
	move	$t3, $a4
	move	$t4, $a5
	move	$t5, $a6
	.p2align	4, , 16
.LBB4_91:                               # %vector.body717
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr5, $t0, 0
	vld	$vr6, $a7, 0
	vld	$vr7, $fp, 1232
	vfmul.d	$vr5, $vr5, $vr4
	vfadd.d	$vr5, $vr6, $vr5
	vreplvei.d	$vr6, $vr7, 0
	vfsub.d	$vr5, $vr5, $vr6
	vfmul.d	$vr5, $vr2, $vr5
	vst	$vr5, $t1, 0
	vld	$vr5, $t3, 0
	vld	$vr6, $t2, 0
	vld	$vr7, $fp, 1248
	vfmul.d	$vr5, $vr5, $vr4
	vfadd.d	$vr5, $vr6, $vr5
	vreplvei.d	$vr6, $vr7, 0
	vfsub.d	$vr5, $vr5, $vr6
	vfmul.d	$vr5, $vr3, $vr5
	vst	$vr5, $t4, 0
	addi.d	$t5, $t5, -2
	addi.d	$t4, $t4, 16
	addi.d	$t3, $t3, 16
	addi.d	$t2, $t2, 16
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 16
	bnez	$t5, .LBB4_91
# %bb.92:                               # %middle.block728
	bne	$s3, $a6, .LBB4_51
	b	.LBB4_53
.LBB4_93:
	bgeu	$a0, $a3, .LBB4_96
# %bb.94:
	alsl.d	$a2, $a0, $a2, 2
	beq	$a1, $a2, .LBB4_96
# %bb.95:
	st.d	$a2, $sp, 128
.LBB4_96:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit203
	ld.d	$a1, $sp, 104
	ld.d	$a2, $sp, 96
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a0, .LBB4_99
# %bb.97:
	sub.d	$a1, $a0, $a3
.Ltmp96:
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp97:
# %bb.98:                               # %._ZNSt6vectorIiSaIiEE6resizeEm.exit206_crit_edge
	ld.d	$a0, $fp, 1160
	vld	$vr7, $sp, 0                    # 16-byte Folded Reload
	b	.LBB4_102
.LBB4_99:
	vld	$vr7, $sp, 0                    # 16-byte Folded Reload
	bgeu	$a0, $a3, .LBB4_102
# %bb.100:
	alsl.d	$a2, $a0, $a2, 2
	beq	$a1, $a2, .LBB4_102
# %bb.101:
	st.d	$a2, $sp, 104
.LBB4_102:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit206
	beqz	$a0, .LBB4_111
# %bb.103:                              # %.lr.ph
	ld.d	$a1, $fp, 1328
	ld.d	$a2, $fp, 1336
	ori	$a3, $zero, 8
	bgeu	$a0, $a3, .LBB4_227
# %bb.104:
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
.LBB4_105:                              # %scalar.ph551.preheader
	addi.w	$a6, $a3, 1
	.p2align	4, , 16
.LBB4_106:                              # %scalar.ph551
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a7, $a1, $a3
	slt	$t0, $a4, $a7
	ldx.w	$a3, $a2, $a3
	maskeqz	$a7, $a7, $t0
	masknez	$a4, $a4, $t0
	or	$a4, $a7, $a4
	slt	$a7, $a5, $a3
	maskeqz	$a3, $a3, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a3, $a5
	bstrpick.d	$a3, $a6, 31, 0
	addi.w	$a6, $a6, 1
	bltu	$a3, $a0, .LBB4_106
.LBB4_107:                              # %.lr.ph318
	bstrpick.d	$a1, $a4, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	bstrpick.d	$a1, $a5, 31, 0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	vldi	$vr2, -976
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 96
	ld.d	$a3, $fp, 1328
	ld.d	$a4, $fp, 1336
	fdiv.d	$fa0, $fa2, $fa0
	ori	$a5, $zero, 12
	fdiv.d	$fa1, $fa2, $fa1
	bgeu	$a0, $a5, .LBB4_232
# %bb.108:
	move	$a5, $zero
.LBB4_109:                              # %scalar.ph582.preheader
	addi.w	$a6, $a5, 1
	.p2align	4, , 16
.LBB4_110:                              # %scalar.ph582
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a5, 2
	ldx.w	$a7, $a3, $a5
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a7, $fa2
	stx.w	$a7, $a1, $a5
	ldx.w	$a7, $a4, $a5
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa1, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a7, $fa2
	stx.w	$a7, $a2, $a5
	bstrpick.d	$a5, $a6, 31, 0
	addi.w	$a6, $a6, 1
	bltu	$a5, $a0, .LBB4_110
	b	.LBB4_112
.LBB4_111:                              # %._crit_edge.thread
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 96
.LBB4_112:                              # %._crit_edge319
	ld.d	$a3, $fp, 1352
	ld.w	$a4, $fp, 1120
	ld.w	$a5, $fp, 1128
	ld.d	$a6, $sp, 144
	ld.d	$a7, $s0, 0
.Ltmp98:
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(calc_zorder)
	jirl	$ra, $ra, 0
.Ltmp99:
# %bb.113:
	ld.d	$s4, $fp, 1160
	srli.d	$a0, $s4, 61
	bnez	$a0, .LBB4_249
# %bb.114:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i207
	beqz	$s4, .LBB4_118
# %bb.115:
	slli.d	$s2, $s4, 2
.Ltmp100:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp101:
# %bb.116:                              # %.noexc213
	move	$s1, $a0
	alsl.d	$s3, $s4, $a0, 2
	ori	$a0, $zero, 1
	st.w	$zero, $s1, 0
	beq	$s4, $a0, .LBB4_119
# %bb.117:                              # %.lr.ph.i.preheader.i.i.i.i.i209
	addi.d	$a0, $s1, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB4_119
.LBB4_118:
	move	$s1, $zero
	move	$s3, $zero
.LBB4_119:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit214
	ld.d	$a1, $fp, 1368
	addi.d	$s2, $fp, 8
.Ltmp102:
	ori	$a2, $zero, 256
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp103:
# %bb.120:
	ld.d	$a1, $fp, 1376
.Ltmp104:
	ori	$a2, $zero, 256
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp105:
# %bb.121:
	ld.d	$a1, $fp, 1384
.Ltmp106:
	ori	$a2, $zero, 256
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp107:
# %bb.122:
	ld.d	$a1, $fp, 1392
.Ltmp108:
	ori	$a2, $zero, 256
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp109:
# %bb.123:
	ld.d	$a1, $s0, 0
.Ltmp110:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus18memory_reorder_allEPi)
	jirl	$ra, $ra, 0
.Ltmp111:
# %bb.124:
.Ltmp112:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh17memory_reset_ptrsEv)
	jirl	$ra, $ra, 0
.Ltmp113:
# %bb.125:
	ld.d	$a0, $fp, 1424
	ld.d	$s5, $fp, 1416
	ld.d	$s4, $fp, 1160
	sub.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 3
	addi.d	$a1, $s4, -1
	bgeu	$a1, $a0, .LBB4_213
# %bb.126:
	slli.d	$s2, $s4, 3
.Ltmp115:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp116:
# %bb.127:                              # %.noexc221
	ori	$a1, $zero, 1
	st.d	$zero, $a0, 0
	beq	$s4, $a1, .LBB4_129
# %bb.128:                              # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit222
	addi.d	$a1, $a0, 8
	addi.d	$a2, $s2, -8
	move	$s6, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	addi.w	$a1, $s4, 0
	blez	$a1, .LBB4_212
.LBB4_129:                              # %.lr.ph321.preheader
	bstrpick.d	$a1, $s4, 30, 0
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB4_134
# %bb.130:                              # %.lr.ph321.preheader
	sub.d	$a3, $a0, $s5
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB4_134
# %bb.131:                              # %vector.ph604
	bstrpick.d	$a2, $s4, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s5, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_132:                              # %vector.body607
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB4_132
# %bb.133:                              # %middle.block612
	beq	$a1, $a2, .LBB4_136
.LBB4_134:                              # %.lr.ph321.preheader839
	alsl.d	$a3, $a2, $s5, 3
	alsl.d	$a4, $a2, $a0, 3
	sub.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB4_135:                              # %.lr.ph321
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	bnez	$a2, .LBB4_135
.LBB4_136:                              # %.lr.ph324
	ld.d	$a2, $s0, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_137:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a0, $a4
	fst.d	$fa0, $s5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$s5, $s5, 8
	bnez	$a3, .LBB4_137
# %bb.138:                              # %.lr.ph326
	ld.d	$a2, $fp, 1440
	ori	$a4, $zero, 4
	move	$a3, $zero
	bltu	$a1, $a4, .LBB4_143
# %bb.139:                              # %.lr.ph326
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB4_143
# %bb.140:                              # %vector.ph619
	bstrpick.d	$a3, $s4, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_141:                              # %vector.body622
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_141
# %bb.142:                              # %middle.block627
	beq	$a1, $a3, .LBB4_145
.LBB4_143:                              # %scalar.ph617.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB4_144:                              # %scalar.ph617
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB4_144
.LBB4_145:                              # %.lr.ph328
	ld.d	$a2, $s0, 0
	ld.d	$a3, $fp, 1440
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_146:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_146
# %bb.147:                              # %.lr.ph330
	ld.d	$a2, $fp, 1464
	ori	$a4, $zero, 4
	move	$a3, $zero
	bltu	$a1, $a4, .LBB4_152
# %bb.148:                              # %.lr.ph330
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB4_152
# %bb.149:                              # %vector.ph634
	bstrpick.d	$a3, $s4, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_150:                              # %vector.body637
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_150
# %bb.151:                              # %middle.block642
	beq	$a1, $a3, .LBB4_154
.LBB4_152:                              # %scalar.ph632.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB4_153:                              # %scalar.ph632
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB4_153
.LBB4_154:                              # %.lr.ph332
	ld.d	$a2, $s0, 0
	ld.d	$a3, $fp, 1464
	bstrpick.d	$a4, $s4, 30, 0
	.p2align	4, , 16
.LBB4_155:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_155
# %bb.156:                              # %.lr.ph334
	ld.d	$a3, $fp, 1488
	move	$a4, $zero
	ori	$a5, $zero, 4
	bstrpick.d	$a2, $s4, 30, 0
	bltu	$a1, $a5, .LBB4_161
# %bb.157:                              # %.lr.ph334
	sub.d	$a5, $a0, $a3
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB4_161
# %bb.158:                              # %vector.ph649
	bstrpick.d	$a4, $s4, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a0, 16
	addi.d	$a6, $a3, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_159:                              # %vector.body652
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_159
# %bb.160:                              # %middle.block657
	beq	$a1, $a4, .LBB4_163
.LBB4_161:                              # %scalar.ph647.preheader
	alsl.d	$a1, $a4, $a3, 3
	alsl.d	$a3, $a4, $a0, 3
	sub.d	$a4, $a2, $a4
	.p2align	4, , 16
.LBB4_162:                              # %scalar.ph647
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_162
.LBB4_163:                              # %.lr.ph336
	ld.d	$a1, $s0, 0
	ld.d	$a3, $fp, 1488
	.p2align	4, , 16
.LBB4_164:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a0, $a4
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB4_164
	b	.LBB4_212
.LBB4_165:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$s1, $zero
.LBB4_166:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
	ld.d	$a1, $fp, 1368
	addi.d	$s2, $fp, 8
.Ltmp134:
	ori	$a2, $zero, 256
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp135:
# %bb.167:
	ld.d	$a1, $fp, 1376
.Ltmp136:
	ori	$a2, $zero, 256
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp137:
# %bb.168:
	ld.d	$a1, $fp, 1384
.Ltmp138:
	ori	$a2, $zero, 256
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp139:
# %bb.169:
	ld.d	$a1, $fp, 1392
.Ltmp140:
	ori	$a2, $zero, 256
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp141:
# %bb.170:
	ld.d	$a1, $s0, 0
.Ltmp142:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus18memory_reorder_allEPi)
	jirl	$ra, $ra, 0
.Ltmp143:
# %bb.171:
.Ltmp144:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh17memory_reset_ptrsEv)
	jirl	$ra, $ra, 0
.Ltmp145:
# %bb.172:
	ld.d	$a0, $fp, 1424
	ld.d	$s5, $fp, 1416
	ld.d	$s4, $fp, 1160
	sub.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 3
	addi.d	$a1, $s4, -1
	bgeu	$a1, $a0, .LBB4_213
# %bb.173:
	slli.d	$s2, $s4, 3
.Ltmp147:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp148:
# %bb.174:                              # %.noexc197
	ori	$a1, $zero, 1
	st.d	$zero, $a0, 0
	beq	$s4, $a1, .LBB4_176
# %bb.175:                              # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
	addi.d	$a1, $a0, 8
	addi.d	$a2, $s2, -8
	move	$s6, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	addi.w	$a1, $s4, 0
	blez	$a1, .LBB4_212
.LBB4_176:                              # %.lr.ph346.preheader
	bstrpick.d	$a1, $s4, 30, 0
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB4_181
# %bb.177:                              # %.lr.ph346.preheader
	sub.d	$a3, $a0, $s5
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB4_181
# %bb.178:                              # %vector.ph753
	bstrpick.d	$a2, $s4, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s5, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_179:                              # %vector.body756
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB4_179
# %bb.180:                              # %middle.block761
	beq	$a1, $a2, .LBB4_183
.LBB4_181:                              # %.lr.ph346.preheader836
	alsl.d	$a3, $a2, $s5, 3
	alsl.d	$a4, $a2, $a0, 3
	sub.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB4_182:                              # %.lr.ph346
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	bnez	$a2, .LBB4_182
.LBB4_183:                              # %.lr.ph349
	ld.d	$a2, $s0, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_184:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a0, $a4
	fst.d	$fa0, $s5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$s5, $s5, 8
	bnez	$a3, .LBB4_184
# %bb.185:                              # %.lr.ph351
	ld.d	$a2, $fp, 1440
	ori	$a4, $zero, 4
	move	$a3, $zero
	bltu	$a1, $a4, .LBB4_190
# %bb.186:                              # %.lr.ph351
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB4_190
# %bb.187:                              # %vector.ph768
	bstrpick.d	$a3, $s4, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_188:                              # %vector.body771
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_188
# %bb.189:                              # %middle.block776
	beq	$a1, $a3, .LBB4_192
.LBB4_190:                              # %scalar.ph766.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB4_191:                              # %scalar.ph766
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB4_191
.LBB4_192:                              # %.lr.ph353
	ld.d	$a2, $s0, 0
	ld.d	$a3, $fp, 1440
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_193:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_193
# %bb.194:                              # %.lr.ph355
	ld.d	$a2, $fp, 1464
	ori	$a4, $zero, 4
	move	$a3, $zero
	bltu	$a1, $a4, .LBB4_199
# %bb.195:                              # %.lr.ph355
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB4_199
# %bb.196:                              # %vector.ph783
	bstrpick.d	$a3, $s4, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $a2, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_197:                              # %vector.body786
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_197
# %bb.198:                              # %middle.block791
	beq	$a1, $a3, .LBB4_201
.LBB4_199:                              # %scalar.ph781.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB4_200:                              # %scalar.ph781
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB4_200
.LBB4_201:                              # %.lr.ph357
	ld.d	$a2, $s0, 0
	ld.d	$a3, $fp, 1464
	bstrpick.d	$a4, $s4, 30, 0
	.p2align	4, , 16
.LBB4_202:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_202
# %bb.203:                              # %.lr.ph359
	ld.d	$a3, $fp, 1488
	move	$a4, $zero
	ori	$a5, $zero, 4
	bstrpick.d	$a2, $s4, 30, 0
	bltu	$a1, $a5, .LBB4_208
# %bb.204:                              # %.lr.ph359
	sub.d	$a5, $a0, $a3
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB4_208
# %bb.205:                              # %vector.ph798
	bstrpick.d	$a4, $s4, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a0, 16
	addi.d	$a6, $a3, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_206:                              # %vector.body801
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB4_206
# %bb.207:                              # %middle.block806
	beq	$a1, $a4, .LBB4_210
.LBB4_208:                              # %scalar.ph796.preheader
	alsl.d	$a1, $a4, $a3, 3
	alsl.d	$a3, $a4, $a0, 3
	sub.d	$a4, $a2, $a4
	.p2align	4, , 16
.LBB4_209:                              # %scalar.ph796
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_209
.LBB4_210:                              # %.lr.ph361
	ld.d	$a1, $s0, 0
	ld.d	$a3, $fp, 1488
	.p2align	4, , 16
.LBB4_211:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a0, $a4
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB4_211
.LBB4_212:                              # %.preheader306.thread
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_213:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit224
	beqz	$s1, .LBB4_215
# %bb.214:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split
	sub.d	$a1, $s3, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_215:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit.invoke
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 40
.Ltmp150:
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp151:
# %bb.216:
	fld.d	$fa1, $fp, 368
	ld.d	$a0, $sp, 48
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 368
	beqz	$a0, .LBB4_218
# %bb.217:
	ld.d	$a1, $sp, 64
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_218:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit230
	ld.d	$a0, $sp, 72
	beqz	$a0, .LBB4_220
# %bb.219:
	ld.d	$a1, $sp, 88
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_220:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit232
	ld.d	$a0, $sp, 96
	beqz	$a0, .LBB4_222
# %bb.221:
	ld.d	$a1, $sp, 112
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_222:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit234
	ld.d	$a0, $sp, 120
	beqz	$a0, .LBB4_224
# %bb.223:
	ld.d	$a1, $sp, 136
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_224:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit236
	ld.d	$a0, $sp, 144
	beqz	$a0, .LBB4_226
# %bb.225:
	ld.d	$a1, $sp, 160
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_226:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit238
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
.LBB4_227:                              # %vector.scevcheck
	addi.d	$a4, $a0, -1
	bstrpick.d	$a5, $a4, 31, 0
	addi.w	$a6, $zero, -1
	lu32i.d	$a6, 0
	move	$a3, $zero
	beq	$a5, $a6, .LBB4_248
# %bb.228:                              # %vector.scevcheck
	srli.d	$a6, $a4, 32
	move	$a4, $a3
	move	$a5, $a3
	bnez	$a6, .LBB4_105
# %bb.229:                              # %vector.ph553
	bstrpick.d	$a3, $a0, 32, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a2, 16
	addi.d	$a5, $a1, 16
	move	$a6, $a3
	vori.b	$vr2, $vr7, 0
	vori.b	$vr0, $vr7, 0
	vori.b	$vr1, $vr7, 0
	.p2align	4, , 16
.LBB4_230:                              # %vector.body556
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vld	$vr5, $a4, -16
	vld	$vr6, $a4, 0
	vmax.w	$vr7, $vr3, $vr7
	vmax.w	$vr2, $vr4, $vr2
	vmax.w	$vr0, $vr5, $vr0
	vmax.w	$vr1, $vr6, $vr1
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB4_230
# %bb.231:                              # %middle.block565
	vmax.w	$vr2, $vr7, $vr2
	vshuf4i.w	$vr3, $vr2, 14
	vmax.w	$vr2, $vr2, $vr3
	vreplvei.w	$vr3, $vr2, 1
	vmax.w	$vr2, $vr2, $vr3
	vpickve2gr.w	$a4, $vr2, 0
	vmax.w	$vr0, $vr0, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	bne	$a0, $a3, .LBB4_105
	b	.LBB4_107
.LBB4_232:                              # %vector.scevcheck571
	addi.d	$a6, $a0, -1
	bstrpick.d	$a7, $a6, 31, 0
	addi.w	$t0, $zero, -1
	lu32i.d	$t0, 0
	move	$a5, $zero
	beq	$a7, $t0, .LBB4_109
# %bb.233:                              # %vector.scevcheck571
	srli.d	$a6, $a6, 32
	bnez	$a6, .LBB4_109
# %bb.234:                              # %vector.memcheck
	sub.d	$a7, $a2, $a1
	ori	$a6, $zero, 16
	move	$a5, $zero
	bltu	$a7, $a6, .LBB4_109
# %bb.235:                              # %vector.memcheck
	sub.d	$a7, $a1, $a3
	bltu	$a7, $a6, .LBB4_109
# %bb.236:                              # %vector.memcheck
	sub.d	$a7, $a4, $a1
	ori	$a6, $zero, 16
	bltu	$a7, $a6, .LBB4_109
# %bb.237:                              # %vector.memcheck
	sub.d	$a7, $a2, $a3
	bltu	$a7, $a6, .LBB4_109
# %bb.238:                              # %vector.memcheck
	sub.d	$a6, $a2, $a4
	ori	$a7, $zero, 16
	bltu	$a6, $a7, .LBB4_109
# %bb.239:                              # %vector.ph584
	move	$a6, $zero
	bstrpick.d	$a5, $a0, 32, 2
	slli.d	$a5, $a5, 2
	vreplvei.d	$vr2, $vr0, 0
	vreplvei.d	$vr3, $vr1, 0
	slli.d	$a7, $a0, 2
	bstrpick.d	$a7, $a7, 34, 4
	slli.d	$a7, $a7, 4
	.p2align	4, , 16
.LBB4_240:                              # %vector.body591
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr4, $a3, $a6
	vpickve2gr.w	$t0, $vr4, 0
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$t0, $vr4, 1
	movgr2fr.w	$fa6, $t0
	movfr2gr.d	$t0, $fa5
	ffint.d.w	$fa5, $fa6
	vinsgr2vr.d	$vr6, $t0, 0
	movfr2gr.d	$t0, $fa5
	vinsgr2vr.d	$vr6, $t0, 1
	vpickve2gr.w	$t0, $vr4, 2
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$t0, $vr4, 3
	movgr2fr.w	$fa4, $t0
	movfr2gr.d	$t0, $fa5
	ffint.d.w	$fa4, $fa4
	vinsgr2vr.d	$vr5, $t0, 0
	movfr2gr.d	$t0, $fa4
	vinsgr2vr.d	$vr5, $t0, 1
	vfmul.d	$vr4, $vr2, $vr5
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
	vstx	$vr6, $a1, $a6
	vldx	$vr4, $a4, $a6
	vpickve2gr.w	$t0, $vr4, 0
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$t0, $vr4, 1
	movgr2fr.w	$fa6, $t0
	movfr2gr.d	$t0, $fa5
	ffint.d.w	$fa5, $fa6
	vinsgr2vr.d	$vr6, $t0, 0
	movfr2gr.d	$t0, $fa5
	vinsgr2vr.d	$vr6, $t0, 1
	vpickve2gr.w	$t0, $vr4, 2
	movgr2fr.w	$fa5, $t0
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$t0, $vr4, 3
	movgr2fr.w	$fa4, $t0
	movfr2gr.d	$t0, $fa5
	ffint.d.w	$fa4, $fa4
	vinsgr2vr.d	$vr5, $t0, 0
	movfr2gr.d	$t0, $fa4
	vinsgr2vr.d	$vr5, $t0, 1
	vfmul.d	$vr4, $vr3, $vr5
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
	vstx	$vr6, $a2, $a6
	addi.d	$a6, $a6, 16
	bne	$a7, $a6, .LBB4_240
# %bb.241:                              # %middle.block596
	bne	$a0, $a5, .LBB4_109
	b	.LBB4_112
.LBB4_242:                              # %vector.scevcheck732
	addi.d	$a2, $s4, -1
	bstrpick.d	$a3, $a2, 31, 0
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	move	$a1, $zero
	beq	$a3, $a4, .LBB4_67
# %bb.243:                              # %vector.scevcheck732
	srli.d	$a2, $a2, 32
	bnez	$a2, .LBB4_67
# %bb.244:                              # %vector.scevcheck732
	sub.d	$a2, $a0, $s1
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB4_67
# %bb.245:                              # %vector.ph737
	bstrpick.d	$a1, $s4, 32, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a0, 16
	addi.d	$a3, $s1, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_246:                              # %vector.body740
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB4_246
# %bb.247:                              # %middle.block745
	bne	$s4, $a1, .LBB4_67
	b	.LBB4_69
.LBB4_248:
	move	$a4, $a3
	move	$a5, $a3
	b	.LBB4_105
.LBB4_249:
.Ltmp118:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp119:
# %bb.250:                              # %.noexc212
.LBB4_251:
.Ltmp149:
	b	.LBB4_257
.LBB4_252:
.Ltmp117:
	b	.LBB4_257
.LBB4_253:
.Ltmp133:
	b	.LBB4_268
.LBB4_254:
.Ltmp120:
	b	.LBB4_268
.LBB4_255:
.Ltmp146:
	b	.LBB4_257
.LBB4_256:
.Ltmp114:
.LBB4_257:
	move	$fp, $a0
	bnez	$s1, .LBB4_264
# %bb.258:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit200
	ld.d	$a0, $sp, 48
	bnez	$a0, .LBB4_269
.LBB4_259:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit240
	ld.d	$a0, $sp, 72
	bnez	$a0, .LBB4_270
.LBB4_260:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit242
	ld.d	$a0, $sp, 96
	bnez	$a0, .LBB4_271
.LBB4_261:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit244
	ld.d	$a0, $sp, 120
	bnez	$a0, .LBB4_272
.LBB4_262:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit246
	ld.d	$a0, $sp, 144
	bnez	$a0, .LBB4_273
.LBB4_263:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit248
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_264:
	sub.d	$a1, $s3, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB4_259
	b	.LBB4_269
.LBB4_265:
.Ltmp90:
	b	.LBB4_268
.LBB4_266:
.Ltmp93:
	b	.LBB4_268
.LBB4_267:
.Ltmp152:
.LBB4_268:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit200
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB4_259
.LBB4_269:
	ld.d	$a1, $sp, 64
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	beqz	$a0, .LBB4_260
.LBB4_270:
	ld.d	$a1, $sp, 88
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beqz	$a0, .LBB4_261
.LBB4_271:
	ld.d	$a1, $sp, 112
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	beqz	$a0, .LBB4_262
.LBB4_272:
	ld.d	$a1, $sp, 136
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	beqz	$a0, .LBB4_263
.LBB4_273:
	ld.d	$a1, $sp, 160
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
	.uleb128 .Ltmp91-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin1          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp128-.Ltmp121              #   Call between .Ltmp121 and .Ltmp128
	.uleb128 .Ltmp152-.Lfunc_begin1         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp152-.Lfunc_begin1         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin1         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp96-.Ltmp132               #   Call between .Ltmp132 and .Ltmp96
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp99-.Ltmp96                #   Call between .Ltmp96 and .Ltmp99
	.uleb128 .Ltmp152-.Lfunc_begin1         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp120-.Lfunc_begin1         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp113-.Ltmp102              #   Call between .Ltmp102 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin1         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin1         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp134-.Ltmp116              #   Call between .Ltmp116 and .Ltmp134
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp145-.Ltmp134              #   Call between .Ltmp134 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin1         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin1         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp150-.Ltmp148              #   Call between .Ltmp148 and .Ltmp150
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin1         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp118-.Ltmp151              #   Call between .Ltmp151 and .Ltmp118
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin1         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin1         # >> Call Site 22 <<
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
.LBB5_9:                                # %.lr.ph.preheader22
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
	st.d	$s7, $sp, 0                     # 8-byte Folded Spill
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
	beqz	$a2, .LBB6_58
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
	bltu	$a2, $s1, .LBB6_66
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
	bgeu	$s1, $a2, .LBB6_24
# %bb.4:
	move	$a2, $s1
	b	.LBB6_27
.LBB6_5:
	ld.w	$s2, $a3, 0
	sub.d	$a0, $s4, $fp
	srai.d	$a1, $a0, 2
	bgeu	$s1, $a1, .LBB6_21
# %bb.6:
	slli.d	$s3, $s1, 2
	sub.d	$a3, $zero, $s3
	sub.d	$a0, $s4, $s3
	beqz	$a3, .LBB6_13
# %bb.7:                                # %.lr.ph.i.i.i.i.preheader
	addi.d	$a1, $s1, -1
	bstrpick.d	$a4, $a1, 61, 0
	ori	$a5, $zero, 7
	move	$a1, $a0
	move	$a2, $s4
	bltu	$a4, $a5, .LBB6_12
# %bb.8:                                # %.lr.ph.i.i.i.i.preheader
	bstrpick.d	$a1, $s1, 61, 3
	slli.d	$a5, $a1, 3
	move	$a1, $a0
	move	$a2, $s4
	beqz	$a5, .LBB6_12
# %bb.9:                                # %vector.ph167
	addi.d	$a4, $a4, 1
	bstrpick.d	$a1, $a4, 62, 3
	slli.d	$a5, $a1, 3
	slli.d	$a2, $a1, 5
	add.d	$a1, $a0, $a2
	add.d	$a2, $s4, $a2
	move	$a6, $a5
	move	$a7, $s4
	.p2align	4, , 16
.LBB6_10:                               # %vector.body170
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a7, $a3
	vldx	$vr0, $a7, $a3
	vld	$vr1, $t0, 16
	vst	$vr0, $a7, 0
	vst	$vr1, $a7, 16
	addi.d	$a6, $a6, -8
	addi.d	$a7, $a7, 32
	bnez	$a6, .LBB6_10
# %bb.11:                               # %middle.block179
	beq	$a4, $a5, .LBB6_13
	.p2align	4, , 16
.LBB6_12:                               # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bne	$a1, $s4, .LBB6_12
.LBB6_13:                               # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
	alsl.d	$a1, $s1, $s4, 2
	st.d	$a1, $s0, 8
	sub.d	$a2, $a0, $fp
	srai.d	$a1, $a2, 2
	ori	$a3, $zero, 2
	sub.d	$a0, $s4, $a2
	blt	$a1, $a3, .LBB6_67
# %bb.14:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB6_15:                               # %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
	addi.d	$a1, $s3, -4
	ori	$a2, $zero, 28
	move	$a0, $fp
	bltu	$a1, $a2, .LBB6_19
# %bb.16:                               # %vector.ph185
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
.LBB6_17:                               # %vector.body190
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB6_17
# %bb.18:                               # %middle.block195
	beq	$a1, $a2, .LBB6_58
.LBB6_19:                               # %.lr.ph.i.preheader
	alsl.d	$a1, $s1, $fp, 2
	.p2align	4, , 16
.LBB6_20:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	bne	$a0, $a1, .LBB6_20
	b	.LBB6_58
.LBB6_21:
	sub.d	$a3, $s1, $a1
	move	$a1, $s4
	beqz	$a3, .LBB6_44
# %bb.22:                               # %.lr.ph.i.i.i.preheader
	ori	$a1, $zero, 8
	bgeu	$a3, $a1, .LBB6_40
# %bb.23:
	move	$a2, $a3
	move	$a1, $s4
	b	.LBB6_43
.LBB6_24:                               # %vector.ph200
	move	$a3, $s1
	bstrins.d	$a3, $zero, 2, 0
	andi	$a2, $s1, 7
	alsl.d	$a0, $a3, $a0, 2
	vreplgr2vr.w	$vr0, $a1
	add.d	$a4, $s7, $s3
	addi.d	$a4, $a4, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB6_25:                               # %vector.body205
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB6_25
# %bb.26:                               # %middle.block210
	beq	$s1, $a3, .LBB6_28
	.p2align	4, , 16
.LBB6_27:                               # %.lr.ph.i.i.i85
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, -1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB6_27
.LBB6_28:                               # %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit90
	move	$a0, $s3
	beq	$s2, $fp, .LBB6_35
# %bb.29:                               # %.lr.ph.i.i.i.i92.preheader
	addi.d	$a2, $s7, -4
	ori	$a3, $zero, 28
	move	$a1, $s2
	move	$a0, $s3
	bltu	$a2, $a3, .LBB6_34
# %bb.30:                               # %.lr.ph.i.i.i.i92.preheader
	sub.d	$a3, $s3, $s2
	ori	$a4, $zero, 32
	move	$a1, $s2
	move	$a0, $s3
	bltu	$a3, $a4, .LBB6_34
# %bb.31:                               # %vector.ph218
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
.LBB6_32:                               # %vector.body221
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_32
# %bb.33:                               # %middle.block230
	beq	$a2, $a3, .LBB6_35
	.p2align	4, , 16
.LBB6_34:                               # %.lr.ph.i.i.i.i92
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	bne	$a1, $fp, .LBB6_34
.LBB6_35:                               # %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
	alsl.d	$s7, $s1, $a0, 2
	beq	$s4, $fp, .LBB6_55
# %bb.36:                               # %.lr.ph.i.i.i.i98.preheader
	sub.d	$a1, $s4, $fp
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 28
	bgeu	$a1, $a2, .LBB6_38
# %bb.37:
	move	$a1, $fp
	b	.LBB6_54
.LBB6_38:                               # %vector.memcheck234
	alsl.d	$a2, $s1, $a0, 2
	sub.d	$a2, $a2, $fp
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB6_51
# %bb.39:
	move	$a1, $fp
	b	.LBB6_54
.LBB6_40:                               # %vector.ph
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	andi	$a2, $a3, 7
	alsl.d	$a1, $a4, $s4, 2
	vreplgr2vr.w	$vr0, $s2
	addi.d	$a5, $s4, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_41:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, -16
	vst	$vr0, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_41
# %bb.42:                               # %middle.block
	beq	$a3, $a4, .LBB6_44
	.p2align	4, , 16
.LBB6_43:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, -1
	st.w	$s2, $a1, 0
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_43
.LBB6_44:                               # %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
	beq	$s4, $fp, .LBB6_50
# %bb.45:                               # %.lr.ph.i.i.i.i70.preheader
	addi.d	$a3, $a0, -4
	srli.d	$a2, $a3, 2
	ori	$a4, $zero, 28
	addi.d	$a2, $a2, 1
	bltu	$a3, $a4, .LBB6_59
# %bb.46:                               # %.lr.ph.i.i.i.i70.preheader
	sub.d	$a6, $a1, $fp
	ori	$a7, $zero, 32
	move	$a4, $fp
	move	$a5, $a1
	bltu	$a6, $a7, .LBB6_60
# %bb.47:                               # %vector.ph133
	bstrpick.d	$a4, $a2, 62, 3
	slli.d	$a6, $a4, 3
	slli.d	$a5, $a4, 5
	add.d	$a4, $fp, $a5
	add.d	$a5, $a1, $a5
	addi.d	$a7, $a1, 16
	addi.d	$t0, $fp, 16
	move	$t1, $a6
	.p2align	4, , 16
.LBB6_48:                               # %vector.body136
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB6_48
# %bb.49:                               # %middle.block144
	bne	$a2, $a6, .LBB6_60
	b	.LBB6_61
.LBB6_50:                               # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit75.thread
	add.d	$a0, $a1, $a0
	st.d	$a0, $s0, 8
	b	.LBB6_58
.LBB6_51:                               # %vector.ph239
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
.LBB6_52:                               # %vector.body242
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a0, -16
	vst	$vr1, $a0, 0
	addi.d	$a0, $a0, 32
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB6_52
# %bb.53:                               # %middle.block251
	beq	$a2, $a3, .LBB6_55
	.p2align	4, , 16
.LBB6_54:                               # %.lr.ph.i.i.i.i98
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a1, 0
	st.w	$a0, $s7, 0
	addi.d	$a1, $a1, 4
	addi.d	$s7, $s7, 4
	bne	$a1, $s4, .LBB6_54
.LBB6_55:                               # %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit103
	beqz	$s2, .LBB6_57
# %bb.56:
	sub.d	$a1, $s5, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_57:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
	st.d	$s3, $s0, 0
	st.d	$s7, $s0, 8
	alsl.d	$a0, $s6, $s3, 2
	st.d	$a0, $s0, 16
.LBB6_58:                               # %_ZSt4fillIPiiEvT_S1_RKT0_.exit68
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
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
.LBB6_59:
	move	$a4, $fp
	move	$a5, $a1
	.p2align	4, , 16
.LBB6_60:                               # %.lr.ph.i.i.i.i70
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	st.w	$a6, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	bne	$a4, $s4, .LBB6_60
.LBB6_61:                               # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit75
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 28
	st.d	$a0, $s0, 8
	move	$a0, $fp
	bltu	$a3, $a1, .LBB6_65
# %bb.62:                               # %vector.ph150
	bstrpick.d	$a0, $a2, 62, 3
	slli.d	$a1, $a0, 3
	slli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	vreplgr2vr.w	$vr0, $s2
	addi.d	$a3, $fp, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB6_63:                               # %vector.body155
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB6_63
# %bb.64:                               # %middle.block160
	beq	$a2, $a1, .LBB6_58
	.p2align	4, , 16
.LBB6_65:                               # %.lr.ph.i77
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	bne	$a0, $s4, .LBB6_65
	b	.LBB6_58
.LBB6_66:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB6_67:                               # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.thread.i
	ori	$a1, $zero, 4
	bne	$a2, $a1, .LBB6_15
# %bb.68:
	ld.w	$a1, $fp, 0
	st.w	$a1, $a0, 0
	b	.LBB6_15
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
	beqz	$a1, .LBB7_15
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
	bltu	$a2, $s0, .LBB7_16
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
	b	.LBB7_15
.LBB7_10:
	st.w	$zero, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a0, $a1, 4
	bne	$s0, $a2, .LBB7_12
# %bb.11:
	st.d	$a0, $fp, 8
	b	.LBB7_15
.LBB7_12:
	slli.d	$a2, $s0, 2
	ori	$a3, $zero, 4
	alsl.d	$s0, $s0, $a1, 2
	beq	$a2, $a3, .LBB7_14
# %bb.13:                               # %.lr.ph.i.preheader.i.i.i
	addi.d	$a2, $a2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB7_14:                               # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit
	st.d	$s0, $fp, 8
.LBB7_15:
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
.LBB7_16:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt6vectorIiSaIiEE17_M_default_appendEm, .Lfunc_end7-_ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIdSaIdEE17_M_default_appendEm,@function
_ZNSt6vectorIdSaIdEE17_M_default_appendEm: # @_ZNSt6vectorIdSaIdEE17_M_default_appendEm
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
	beqz	$a1, .LBB8_15
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a1, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $a1
	srai.d	$a0, $a0, 3
	bgeu	$a0, $s0, .LBB8_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a1, $s1
	srai.d	$a1, $s2, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB8_16
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
	slli.d	$a0, $s5, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	ori	$a0, $zero, 1
	stx.d	$zero, $s3, $s2
	beq	$s0, $a0, .LBB8_5
# %bb.4:                                # %.lr.ph.i.preheader.i.i.i31
	addi.d	$a0, $s6, 8
	slli.d	$a1, $s0, 3
	addi.d	$a2, $a1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB8_5:                                # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
	blez	$s2, .LBB8_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB8_7:                                # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
	beqz	$s1, .LBB8_9
# %bb.8:                                # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_9:                                # %_ZNSt6vectorIdSaIdEE12_Guard_allocD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 3
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 3
	st.d	$a0, $fp, 16
	b	.LBB8_15
.LBB8_10:
	st.d	$zero, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a0, $a1, 8
	bne	$s0, $a2, .LBB8_12
# %bb.11:
	st.d	$a0, $fp, 8
	b	.LBB8_15
.LBB8_12:
	slli.d	$a2, $s0, 3
	ori	$a3, $zero, 8
	alsl.d	$s0, $s0, $a1, 3
	beq	$a2, $a3, .LBB8_14
# %bb.13:                               # %.lr.ph.i.preheader.i.i.i
	addi.d	$a2, $a2, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB8_14:                               # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit
	st.d	$s0, $fp, 8
.LBB8_15:
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
.LBB8_16:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZNSt6vectorIdSaIdEE17_M_default_appendEm, .Lfunc_end8-_ZNSt6vectorIdSaIdEE17_M_default_appendEm
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
