	.file	"mesh.cpp"
	.text
	.globl	_ZN4Mesh10write_gridEi          # -- Begin function _ZN4Mesh10write_gridEi
	.p2align	5
	.type	_ZN4Mesh10write_gridEi,@function
_ZN4Mesh10write_gridEi:                 # @_ZN4Mesh10write_gridEi
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	srai.d	$a0, $a1, 63
	andn	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 4
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a5, $fp, 1208
	ld.d	$a4, $fp, 1192
	ld.d	$a3, $fp, 1200
	ld.d	$a2, $fp, 1184
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB0_3
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ori	$s2, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$s1, $a1, %pc_lo12(.L.str.3)
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 1416
	slli.d	$a0, $a0, 3
	ld.d	$a2, $fp, 1464
	ld.d	$a3, $fp, 1440
	ld.d	$a4, $fp, 1488
	fldx.d	$fa0, $a1, $a0
	fldx.d	$fa1, $a2, $a0
	fldx.d	$fa2, $a3, $a0
	fldx.d	$fa3, $a4, $a0
	fadd.d	$fa2, $fa0, $fa2
	fadd.d	$fa3, $fa1, $fa3
	movfr2gr.d	$a4, $fa2
	movfr2gr.d	$a5, $fa3
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1160
	bstrpick.d	$a0, $s2, 31, 0
	addi.w	$s2, $s2, 1
	bltu	$a0, $a1, .LBB0_2
.LBB0_3:                                # %._crit_edge
	ld.d	$a0, $fp, 1416
	ld.d	$a1, $fp, 1440
	fld.d	$fa0, $a0, 0
	ld.d	$a0, $fp, 1488
	ld.d	$a2, $fp, 1464
	fld.d	$fa1, $a1, 0
	vldi	$vr2, -928
	fld.d	$fa3, $a0, 0
	fld.d	$fa4, $a2, 0
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa3, $fa2
	fadd.d	$fa1, $fa4, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1160
	ori	$s2, $zero, 2
	bltu	$a1, $s2, .LBB0_6
# %bb.4:                                # %.lr.ph37.preheader
	ori	$a0, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s1, $a1, %pc_lo12(.L.str.5)
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph37
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 1416
	ld.d	$a2, $fp, 1440
	slli.d	$a0, $a0, 3
	ld.d	$a3, $fp, 1488
	ld.d	$a4, $fp, 1464
	fldx.d	$fa0, $a2, $a0
	fldx.d	$fa1, $a1, $a0
	fldx.d	$fa2, $a3, $a0
	fldx.d	$fa3, $a4, $a0
	vldi	$vr4, -928
	fmul.d	$fa0, $fa0, $fa4
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa1, $fa2, $fa4
	fadd.d	$fa1, $fa3, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1160
	bstrpick.d	$a0, $s2, 31, 0
	addi.w	$s2, $s2, 1
	bltu	$a0, $a1, .LBB0_5
.LBB0_6:                                # %.preheader
	beqz	$a1, .LBB0_9
# %bb.7:                                # %.lr.ph39.preheader
	move	$a0, $zero
	move	$s1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$s2, $a1, %pc_lo12(.L.str.6)
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph39
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 1416
	ld.d	$a2, $fp, 1440
	slli.d	$a0, $a0, 3
	ld.d	$a3, $fp, 1488
	ld.d	$a4, $fp, 1464
	fldx.d	$fa0, $a2, $a0
	fldx.d	$fa1, $a1, $a0
	fldx.d	$fa2, $a3, $a0
	fldx.d	$fa3, $a4, $a0
	vldi	$vr4, -928
	fmul.d	$fa0, $fa0, $fa4
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa1, $fa2, $fa4
	fadd.d	$fa1, $fa3, $fa1
	movfr2gr.d	$a2, $fa0
	movfr2gr.d	$a3, $fa1
	move	$a0, $s0
	move	$a1, $s2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1160
	addi.w	$s1, $s1, 1
	bstrpick.d	$a0, $s1, 31, 0
	bltu	$a0, $a1, .LBB0_8
.LBB0_9:                                # %._crit_edge40
	move	$a0, $s0
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.Lfunc_end0:
	.size	_ZN4Mesh10write_gridEi, .Lfunc_end0-_ZN4Mesh10write_gridEi
                                        # -- End function
	.globl	_ZN4MeshC2EP8_IO_FILEPi         # -- Begin function _ZN4MeshC2EP8_IO_FILEPi
	.p2align	5
	.type	_ZN4MeshC2EP8_IO_FILEPi,@function
_ZN4MeshC2EP8_IO_FILEPi:                # @_ZN4MeshC2EP8_IO_FILEPi
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$s3, $a2
	move	$s5, $a1
	move	$fp, $a0
	addi.d	$a0, $a0, 16
	st.w	$zero, $fp, 16
	st.d	$zero, $fp, 24
	st.d	$a0, $fp, 32
	st.d	$a0, $fp, 40
	st.d	$zero, $fp, 48
	addi.d	$a0, $fp, 64
	st.w	$zero, $fp, 64
	st.d	$zero, $fp, 72
	st.d	$a0, $fp, 80
	st.d	$a0, $fp, 88
	st.d	$zero, $fp, 96
	addi.d	$a0, $fp, 112
	st.w	$zero, $fp, 112
	st.d	$zero, $fp, 120
	st.d	$a0, $fp, 128
	st.d	$a0, $fp, 136
	st.d	$zero, $fp, 144
	addi.d	$a0, $fp, 160
	st.w	$zero, $fp, 160
	st.d	$zero, $fp, 168
	st.d	$a0, $fp, 176
	st.d	$a0, $fp, 184
	st.d	$zero, $fp, 192
	addi.d	$s0, $fp, 680
	addi.d	$s1, $fp, 856
	st.d	$zero, $fp, 1320
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 1304
	addi.d	$s2, $fp, 1416
	addi.d	$s4, $fp, 1568
	ori	$a2, $zero, 96
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 264
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 144
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 720
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 1128
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(srand48)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 80
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_29
# %bb.1:
	addi.d	$a2, $fp, 1120
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(__isoc23_sscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 80
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_29
# %bb.2:
	addi.d	$s7, $fp, 1160
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(__isoc23_sscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 80
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_29
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	addi.d	$a0, $sp, 8
	move	$a2, $s3
	pcaddu18i	$ra, %call36(__isoc23_sscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 80
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_29
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 8
	move	$a2, $fp
	pcaddu18i	$ra, %call36(__isoc23_sscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 80
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_29
# %bb.5:
	addi.d	$a2, $fp, 1184
	addi.d	$a3, $fp, 1280
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(__isoc23_sscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 80
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_29
# %bb.6:
	addi.d	$a2, $fp, 1200
	addi.d	$a3, $fp, 1288
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(__isoc23_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB1_9
# %bb.7:
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 80
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_29
# %bb.8:
	addi.d	$a2, $fp, 1216
	addi.d	$a3, $fp, 1296
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(__isoc23_sscanf)
	jirl	$ra, $ra, 0
.LBB1_9:
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 80
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_29
# %bb.10:
	ld.d	$a0, $fp, 1312
	ld.d	$a1, $fp, 1304
	ld.d	$s8, $fp, 1160
	addi.d	$s3, $fp, 8
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	addi.d	$s6, $fp, 1304
	bgeu	$a2, $s8, .LBB1_13
# %bb.11:
	sub.d	$a1, $s8, $a2
.Ltmp0:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.12:                               # %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge
	ld.d	$s8, $s7, 0
	b	.LBB1_16
.LBB1_13:
	bgeu	$s8, $a2, .LBB1_16
# %bb.14:
	alsl.d	$a1, $s8, $a1, 2
	beq	$a0, $a1, .LBB1_16
# %bb.15:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a1, $fp, 1312
.LBB1_16:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
.Ltmp2:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a3, $a0, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s3
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
.Ltmp3:
# %bb.17:                               # %.noexc22
	st.d	$a0, $fp, 1328
.Ltmp4:
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a3, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s3
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
.Ltmp5:
# %bb.18:                               # %.noexc23
	st.d	$a0, $fp, 1336
.Ltmp6:
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a3, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s3
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.19:                               # %_ZN4Mesh8allocateEm.exit
	st.d	$a0, $fp, 1352
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 80
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_23
# %bb.20:                               # %.lr.ph.preheader
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s7, $a0, %pc_lo12(.L.str.14)
	.p2align	4, , 16
.LBB1_21:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 1304
	slli.d	$a1, $s8, 2
	bstrpick.d	$a1, $a1, 33, 2
	ld.d	$a3, $fp, 1328
	ld.d	$a4, $fp, 1336
	ld.d	$a5, $fp, 1352
	alsl.d	$a2, $a1, $a0, 2
	alsl.d	$a3, $a1, $a3, 2
	alsl.d	$a4, $a1, $a4, 2
	alsl.d	$a5, $a1, $a5, 2
	addi.d	$a0, $sp, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__isoc23_sscanf)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, 1
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 80
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_21
# %bb.22:                               # %._crit_edge.loopexit
	bstrpick.d	$s5, $s8, 31, 0
	b	.LBB1_24
.LBB1_23:
	move	$s5, $zero
.LBB1_24:                               # %._crit_edge
	st.w	$zero, $fp, 1128
.Ltmp9:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh24calc_spatial_coordinatesEi)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.25:
	addi.d	$a0, $fp, 784
.Ltmp11:
	pcaddu18i	$ra, %call36(KDTree_Initialize)
	jirl	$ra, $ra, 0
.Ltmp12:
# %bb.26:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh5printEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1160
	beq	$a0, $s5, .LBB1_28
# %bb.27:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB1_28:
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
.LBB1_29:
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_30:
.Ltmp13:
	b	.LBB1_32
.LBB1_31:
.Ltmp8:
.LBB1_32:
	move	$s5, $a0
	ldptr.d	$a0, $fp, 2264
	bnez	$a0, .LBB1_86
# %bb.33:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ldptr.d	$a0, $fp, 2240
	bnez	$a0, .LBB1_87
.LBB1_34:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit26
	ldptr.d	$a0, $fp, 2216
	bnez	$a0, .LBB1_88
.LBB1_35:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit28
	ldptr.d	$a0, $fp, 2192
	bnez	$a0, .LBB1_89
.LBB1_36:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit30
	ldptr.d	$a0, $fp, 2168
	bnez	$a0, .LBB1_90
.LBB1_37:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit32
	ldptr.d	$a0, $fp, 2144
	bnez	$a0, .LBB1_91
.LBB1_38:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit34
	ldptr.d	$a0, $fp, 2120
	bnez	$a0, .LBB1_92
.LBB1_39:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit36
	ldptr.d	$a0, $fp, 2096
	bnez	$a0, .LBB1_93
.LBB1_40:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit38
	ldptr.d	$a0, $fp, 2072
	bnez	$a0, .LBB1_94
.LBB1_41:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit40
	ldptr.d	$a0, $fp, 2048
	bnez	$a0, .LBB1_95
.LBB1_42:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit42
	ld.d	$a0, $fp, 2024
	bnez	$a0, .LBB1_96
.LBB1_43:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit44
	ld.d	$a0, $fp, 2000
	bnez	$a0, .LBB1_97
.LBB1_44:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit46
	ld.d	$a0, $fp, 1976
	bnez	$a0, .LBB1_98
.LBB1_45:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit48
	ld.d	$a0, $fp, 1952
	bnez	$a0, .LBB1_99
.LBB1_46:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit50
	ld.d	$a0, $fp, 1928
	bnez	$a0, .LBB1_100
.LBB1_47:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit52
	ld.d	$a0, $fp, 1904
	bnez	$a0, .LBB1_101
.LBB1_48:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit54
	ld.d	$a0, $fp, 1880
	bnez	$a0, .LBB1_102
.LBB1_49:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit56
	ld.d	$a0, $fp, 1856
	bnez	$a0, .LBB1_103
.LBB1_50:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit58
	ld.d	$a0, $fp, 1832
	bnez	$a0, .LBB1_104
.LBB1_51:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit60
	ld.d	$a0, $fp, 1808
	bnez	$a0, .LBB1_105
.LBB1_52:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit62
	ld.d	$a0, $fp, 1784
	bnez	$a0, .LBB1_106
.LBB1_53:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit64
	ld.d	$a0, $fp, 1760
	bnez	$a0, .LBB1_107
.LBB1_54:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit66
	ld.d	$a0, $fp, 1736
	bnez	$a0, .LBB1_108
.LBB1_55:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit68
	ld.d	$a0, $fp, 1712
	bnez	$a0, .LBB1_109
.LBB1_56:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit70
	ld.d	$a0, $fp, 1688
	bnez	$a0, .LBB1_110
.LBB1_57:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit72
	ld.d	$a0, $fp, 1664
	bnez	$a0, .LBB1_111
.LBB1_58:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit74
	ld.d	$a0, $fp, 1640
	bnez	$a0, .LBB1_112
.LBB1_59:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit76
	ld.d	$a0, $fp, 1616
	bnez	$a0, .LBB1_113
.LBB1_60:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit78
	ld.d	$a0, $fp, 1592
	bnez	$a0, .LBB1_114
.LBB1_61:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit80
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB1_115
.LBB1_62:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit82
	ld.d	$a0, $fp, 1536
	bnez	$a0, .LBB1_116
.LBB1_63:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $fp, 1512
	bnez	$a0, .LBB1_117
.LBB1_64:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit85
	ld.d	$a0, $fp, 1488
	bnez	$a0, .LBB1_118
.LBB1_65:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit87
	ld.d	$a0, $fp, 1464
	bnez	$a0, .LBB1_119
.LBB1_66:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit89
	ld.d	$a0, $fp, 1440
	bnez	$a0, .LBB1_120
.LBB1_67:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit91
	ld.d	$a0, $s2, 0
	bnez	$a0, .LBB1_121
.LBB1_68:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit93
	ld.d	$a0, $s6, 0
	bnez	$a0, .LBB1_122
.LBB1_69:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit95
	ld.d	$a0, $fp, 1096
	bnez	$a0, .LBB1_123
.LBB1_70:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit97
	ld.d	$a0, $fp, 1072
	bnez	$a0, .LBB1_124
.LBB1_71:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit99
	ld.d	$a0, $fp, 1048
	bnez	$a0, .LBB1_125
.LBB1_72:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit101
	ld.d	$a0, $fp, 1024
	bnez	$a0, .LBB1_126
.LBB1_73:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit103
	ld.d	$a0, $fp, 1000
	bnez	$a0, .LBB1_127
.LBB1_74:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit105
	ld.d	$a0, $fp, 976
	bnez	$a0, .LBB1_128
.LBB1_75:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit107
	ld.d	$a0, $fp, 952
	bnez	$a0, .LBB1_129
.LBB1_76:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit109
	ld.d	$a0, $fp, 928
	bnez	$a0, .LBB1_130
.LBB1_77:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit111
	ld.d	$a0, $fp, 904
	bnez	$a0, .LBB1_131
.LBB1_78:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit113
	ld.d	$a0, $fp, 880
	bnez	$a0, .LBB1_132
.LBB1_79:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit115
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB1_133
.LBB1_80:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit117
	ld.d	$a0, $fp, 752
	bnez	$a0, .LBB1_134
.LBB1_81:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit119
	ld.d	$a0, $fp, 728
	bnez	$a0, .LBB1_135
.LBB1_82:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit121
	ld.d	$a0, $fp, 704
	bnez	$a0, .LBB1_136
.LBB1_83:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit123
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB1_85
.LBB1_84:
	ld.d	$a1, $fp, 696
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_85:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit125
	addi.d	$a0, $fp, 104
	pcaddu18i	$ra, %call36(_ZN10MallocPlusD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlusD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_86:
	ldptr.d	$a1, $fp, 2280
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2240
	beqz	$a0, .LBB1_34
.LBB1_87:
	ldptr.d	$a1, $fp, 2256
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2216
	beqz	$a0, .LBB1_35
.LBB1_88:
	ldptr.d	$a1, $fp, 2232
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2192
	beqz	$a0, .LBB1_36
.LBB1_89:
	ldptr.d	$a1, $fp, 2208
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2168
	beqz	$a0, .LBB1_37
.LBB1_90:
	ldptr.d	$a1, $fp, 2184
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2144
	beqz	$a0, .LBB1_38
.LBB1_91:
	ldptr.d	$a1, $fp, 2160
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2120
	beqz	$a0, .LBB1_39
.LBB1_92:
	ldptr.d	$a1, $fp, 2136
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2096
	beqz	$a0, .LBB1_40
.LBB1_93:
	ldptr.d	$a1, $fp, 2112
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2072
	beqz	$a0, .LBB1_41
.LBB1_94:
	ldptr.d	$a1, $fp, 2088
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2048
	beqz	$a0, .LBB1_42
.LBB1_95:
	ldptr.d	$a1, $fp, 2064
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 2024
	beqz	$a0, .LBB1_43
.LBB1_96:
	ld.d	$a1, $fp, 2040
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 2000
	beqz	$a0, .LBB1_44
.LBB1_97:
	ld.d	$a1, $fp, 2016
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1976
	beqz	$a0, .LBB1_45
.LBB1_98:
	ld.d	$a1, $fp, 1992
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1952
	beqz	$a0, .LBB1_46
.LBB1_99:
	ld.d	$a1, $fp, 1968
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1928
	beqz	$a0, .LBB1_47
.LBB1_100:
	ld.d	$a1, $fp, 1944
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1904
	beqz	$a0, .LBB1_48
.LBB1_101:
	ld.d	$a1, $fp, 1920
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1880
	beqz	$a0, .LBB1_49
.LBB1_102:
	ld.d	$a1, $fp, 1896
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1856
	beqz	$a0, .LBB1_50
.LBB1_103:
	ld.d	$a1, $fp, 1872
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1832
	beqz	$a0, .LBB1_51
.LBB1_104:
	ld.d	$a1, $fp, 1848
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1808
	beqz	$a0, .LBB1_52
.LBB1_105:
	ld.d	$a1, $fp, 1824
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1784
	beqz	$a0, .LBB1_53
.LBB1_106:
	ld.d	$a1, $fp, 1800
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1760
	beqz	$a0, .LBB1_54
.LBB1_107:
	ld.d	$a1, $fp, 1776
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1736
	beqz	$a0, .LBB1_55
.LBB1_108:
	ld.d	$a1, $fp, 1752
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1712
	beqz	$a0, .LBB1_56
.LBB1_109:
	ld.d	$a1, $fp, 1728
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1688
	beqz	$a0, .LBB1_57
.LBB1_110:
	ld.d	$a1, $fp, 1704
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1664
	beqz	$a0, .LBB1_58
.LBB1_111:
	ld.d	$a1, $fp, 1680
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1640
	beqz	$a0, .LBB1_59
.LBB1_112:
	ld.d	$a1, $fp, 1656
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1616
	beqz	$a0, .LBB1_60
.LBB1_113:
	ld.d	$a1, $fp, 1632
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1592
	beqz	$a0, .LBB1_61
.LBB1_114:
	ld.d	$a1, $fp, 1608
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB1_62
.LBB1_115:
	ld.d	$a1, $fp, 1584
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1536
	beqz	$a0, .LBB1_63
.LBB1_116:
	ld.d	$a1, $fp, 1552
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1512
	beqz	$a0, .LBB1_64
.LBB1_117:
	ld.d	$a1, $fp, 1528
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1488
	beqz	$a0, .LBB1_65
.LBB1_118:
	ld.d	$a1, $fp, 1504
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1464
	beqz	$a0, .LBB1_66
.LBB1_119:
	ld.d	$a1, $fp, 1480
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1440
	beqz	$a0, .LBB1_67
.LBB1_120:
	ld.d	$a1, $fp, 1456
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB1_68
.LBB1_121:
	ld.d	$a1, $fp, 1432
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB1_69
.LBB1_122:
	ld.d	$a1, $fp, 1320
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1096
	beqz	$a0, .LBB1_70
.LBB1_123:
	ld.d	$a1, $fp, 1112
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1072
	beqz	$a0, .LBB1_71
.LBB1_124:
	ld.d	$a1, $fp, 1088
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1048
	beqz	$a0, .LBB1_72
.LBB1_125:
	ld.d	$a1, $fp, 1064
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1024
	beqz	$a0, .LBB1_73
.LBB1_126:
	ld.d	$a1, $fp, 1040
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1000
	beqz	$a0, .LBB1_74
.LBB1_127:
	ld.d	$a1, $fp, 1016
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 976
	beqz	$a0, .LBB1_75
.LBB1_128:
	ld.d	$a1, $fp, 992
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 952
	beqz	$a0, .LBB1_76
.LBB1_129:
	ld.d	$a1, $fp, 968
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 928
	beqz	$a0, .LBB1_77
.LBB1_130:
	ld.d	$a1, $fp, 944
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 904
	beqz	$a0, .LBB1_78
.LBB1_131:
	ld.d	$a1, $fp, 920
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 880
	beqz	$a0, .LBB1_79
.LBB1_132:
	ld.d	$a1, $fp, 896
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB1_80
.LBB1_133:
	ld.d	$a1, $fp, 872
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 752
	beqz	$a0, .LBB1_81
.LBB1_134:
	ld.d	$a1, $fp, 768
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 728
	beqz	$a0, .LBB1_82
.LBB1_135:
	ld.d	$a1, $fp, 744
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 704
	beqz	$a0, .LBB1_83
.LBB1_136:
	ld.d	$a1, $fp, 720
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB1_84
	b	.LBB1_85
.Lfunc_end1:
	.size	_ZN4MeshC2EP8_IO_FILEPi, .Lfunc_end1-_ZN4MeshC2EP8_IO_FILEPi
	.cfi_endproc
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
	.uleb128 .Ltmp7-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp12-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Lfunc_end1-.Ltmp12            #   Call between .Ltmp12 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh8allocateEm             # -- Begin function _ZN4Mesh8allocateEm
	.p2align	5
	.type	_ZN4Mesh8allocateEm,@function
_ZN4Mesh8allocateEm:                    # @_ZN4Mesh8allocateEm
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
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$s1, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a3, $a0, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 1328
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a3, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 1336
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a3, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 1352
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	_ZN4Mesh8allocateEm, .Lfunc_end2-_ZN4Mesh8allocateEm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh24calc_spatial_coordinatesEi # -- Begin function _ZN4Mesh24calc_spatial_coordinatesEi
	.p2align	5
	.type	_ZN4Mesh24calc_spatial_coordinatesEi,@function
_ZN4Mesh24calc_spatial_coordinatesEi:   # @_ZN4Mesh24calc_spatial_coordinatesEi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1424
	ld.d	$a1, $fp, 1416
	ld.d	$s2, $fp, 1160
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 3
	bgeu	$a2, $s2, .LBB3_2
# %bb.1:
	addi.d	$a0, $fp, 1416
	sub.d	$a1, $s2, $a2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 1160
	b	.LBB3_5
.LBB3_2:
	bgeu	$s2, $a2, .LBB3_5
# %bb.3:
	alsl.d	$a1, $s2, $a1, 3
	beq	$a0, $a1, .LBB3_5
# %bb.4:                                # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a1, $fp, 1424
.LBB3_5:                                # %_ZNSt6vectorIdSaIdEE6resizeEm.exit
	ld.d	$a0, $fp, 1448
	ld.d	$a1, $fp, 1440
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 3
	bgeu	$a2, $s2, .LBB3_7
# %bb.6:
	addi.d	$a0, $fp, 1440
	sub.d	$a1, $s2, $a2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 1160
	b	.LBB3_10
.LBB3_7:
	bgeu	$s2, $a2, .LBB3_10
# %bb.8:
	alsl.d	$a1, $s2, $a1, 3
	beq	$a0, $a1, .LBB3_10
# %bb.9:                                # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i32
	st.d	$a1, $fp, 1448
.LBB3_10:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit33
	ld.d	$a0, $fp, 1472
	ld.d	$a1, $fp, 1464
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 3
	bgeu	$a2, $s2, .LBB3_12
# %bb.11:
	addi.d	$a0, $fp, 1464
	sub.d	$a1, $s2, $a2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 1160
	b	.LBB3_15
.LBB3_12:
	bgeu	$s2, $a2, .LBB3_15
# %bb.13:
	alsl.d	$a1, $s2, $a1, 3
	beq	$a0, $a1, .LBB3_15
# %bb.14:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i35
	st.d	$a1, $fp, 1472
.LBB3_15:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit36
	ld.d	$a0, $fp, 1496
	ld.d	$a1, $fp, 1488
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 3
	bgeu	$a2, $s2, .LBB3_17
# %bb.16:
	addi.d	$a0, $fp, 1488
	sub.d	$a1, $s2, $a2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $fp, 1160
	b	.LBB3_20
.LBB3_17:
	bgeu	$s2, $a2, .LBB3_20
# %bb.18:
	alsl.d	$a1, $s2, $a1, 3
	beq	$a0, $a1, .LBB3_20
# %bb.19:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i38
	st.d	$a1, $fp, 1496
.LBB3_20:                               # %_ZNSt6vectorIdSaIdEE6resizeEm.exit39
	ld.d	$s1, $fp, 640
	beqz	$s1, .LBB3_26
# %bb.21:
	ld.d	$a0, $fp, 648
	beqz	$a0, .LBB3_27
.LBB3_22:                               # %_ZN4Mesh10set_boundsEi.exit
	st.w	$zero, $s1, 0
	st.w	$s2, $a0, 0
	ld.w	$a0, $fp, 1124
	beqz	$a0, .LBB3_28
.LBB3_23:                               # %.preheader43
	addi.w	$a0, $s2, 0
	beqz	$a0, .LBB3_31
# %bb.24:                               # %.lr.ph
	ld.d	$a0, $fp, 1352
	ld.d	$a1, $fp, 1048
	ld.d	$a2, $fp, 1328
	ld.d	$a3, $fp, 1416
	ld.d	$a4, $fp, 1440
	ld.d	$a5, $fp, 1072
	ld.d	$a6, $fp, 1336
	ld.d	$a7, $fp, 1464
	ld.d	$t0, $fp, 1488
	bstrpick.d	$t1, $s2, 31, 0
	.p2align	4, , 16
.LBB3_25:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $a0, 0
	ld.w	$t3, $a2, 0
	fld.d	$fa0, $fp, 1184
	slli.d	$t2, $t2, 3
	fldx.d	$fa1, $a1, $t2
	sub.d	$t3, $t3, $s0
	movgr2fr.w	$fa2, $t3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, 0
	fldx.d	$fa0, $a1, $t2
	ld.w	$t3, $a6, 0
	fst.d	$fa0, $a4, 0
	fld.d	$fa0, $fp, 1200
	fldx.d	$fa1, $a5, $t2
	sub.d	$t3, $t3, $s0
	movgr2fr.w	$fa2, $t3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a7, 0
	fldx.d	$fa0, $a5, $t2
	fst.d	$fa0, $t0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 4
	addi.d	$a6, $a6, 4
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a7, $a7, 8
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	bnez	$t1, .LBB3_25
	b	.LBB3_31
.LBB3_26:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $fp, 640
	ld.d	$a0, $fp, 648
	bnez	$a0, .LBB3_22
.LBB3_27:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 648
	st.w	$zero, $s1, 0
	st.w	$s2, $a0, 0
	ld.w	$a0, $fp, 1124
	bnez	$a0, .LBB3_23
.LBB3_28:                               # %.preheader
	addi.w	$a0, $s2, 0
	beqz	$a0, .LBB3_31
# %bb.29:                               # %.lr.ph47
	ld.d	$a0, $fp, 1352
	ld.d	$a1, $fp, 1048
	ld.d	$a2, $fp, 1328
	ld.d	$a3, $fp, 880
	ld.d	$a4, $fp, 1416
	ld.d	$a5, $fp, 1440
	ld.d	$a6, $fp, 1072
	ld.d	$a7, $fp, 1336
	ld.d	$t0, $fp, 928
	ld.d	$t1, $fp, 1464
	ld.d	$t2, $fp, 1488
	bstrpick.d	$t3, $s2, 31, 0
	.p2align	4, , 16
.LBB3_30:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $a0, 0
	ld.w	$t5, $a2, 0
	slli.d	$t6, $t4, 2
	ldx.w	$t7, $a3, $t6
	fld.d	$fa0, $fp, 1184
	slli.d	$t4, $t4, 3
	fldx.d	$fa1, $a1, $t4
	sub.d	$t5, $t5, $t7
	movgr2fr.w	$fa2, $t5
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a4, 0
	fldx.d	$fa0, $a1, $t4
	ld.w	$t5, $a7, 0
	ldx.w	$t6, $t0, $t6
	fst.d	$fa0, $a5, 0
	fld.d	$fa0, $fp, 1200
	fldx.d	$fa1, $a6, $t4
	sub.d	$t5, $t5, $t6
	movgr2fr.w	$fa2, $t5
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $t1, 0
	fldx.d	$fa0, $a6, $t4
	fst.d	$fa0, $t2, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 4
	addi.d	$a7, $a7, 4
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.d	$t1, $t1, 8
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 8
	bnez	$t3, .LBB3_30
.LBB3_31:                               # %.loopexit
	ld.d	$a0, $sp, 8
	ld.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 376
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 376
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end3:
	.size	_ZN4Mesh24calc_spatial_coordinatesEi, .Lfunc_end3-_ZN4Mesh24calc_spatial_coordinatesEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh5printEv                # -- Begin function _ZN4Mesh5printEv
	.p2align	5
	.type	_ZN4Mesh5printEv,@function
_ZN4Mesh5printEv:                       # @_ZN4Mesh5printEv
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB4_3
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$s1, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$s2, $a0, %pc_lo12(.L.str.18)
	.p2align	4, , 16
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 1304
	slli.d	$a1, $s3, 2
	ld.d	$a3, $fp, 1328
	ld.d	$a4, $fp, 1336
	ld.d	$a5, $fp, 1352
	ldx.w	$a2, $a0, $a1
	ldx.w	$a3, $a3, $a1
	ldx.w	$a4, $a4, $a1
	ldx.w	$a5, $a5, $a1
	ld.d	$a0, $fp, 1368
	ld.d	$a7, $fp, 1376
	ld.d	$t0, $fp, 1384
	ld.d	$t1, $fp, 1392
	ldx.w	$a6, $a0, $a1
	ldx.w	$a7, $a7, $a1
	ldx.w	$a0, $t0, $a1
	ldx.w	$a1, $t1, $a1
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1416
	slli.d	$a1, $s3, 3
	ld.d	$a2, $fp, 1440
	ld.d	$a3, $fp, 1464
	ld.d	$a4, $fp, 1488
	fldx.d	$fa0, $a0, $a1
	fldx.d	$fa1, $a2, $a1
	fldx.d	$fa2, $a3, $a1
	fldx.d	$fa3, $a4, $a1
	fadd.d	$fa1, $fa0, $fa1
	fadd.d	$fa3, $fa2, $fa3
	movfr2gr.d	$a2, $fa1
	movfr2gr.d	$a4, $fa3
	movfr2gr.d	$a1, $fa0
	movfr2gr.d	$a3, $fa2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1160
	addi.w	$s0, $s0, 1
	bstrpick.d	$s3, $s0, 31, 0
	bltu	$s3, $a0, .LBB4_2
.LBB4_3:                                # %._crit_edge
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end4:
	.size	_ZN4Mesh5printEv, .Lfunc_end4-_ZN4Mesh5printEv
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED2Ev,comdat
	.weak	_ZNSt6vectorIiSaIiEED2Ev        # -- Begin function _ZNSt6vectorIiSaIiEED2Ev
	.p2align	5
	.type	_ZNSt6vectorIiSaIiEED2Ev,@function
_ZNSt6vectorIiSaIiEED2Ev:               # @_ZNSt6vectorIiSaIiEED2Ev
	.cfi_startproc
# %bb.0:
	move	$a1, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB5_2
# %bb.1:
	ld.d	$a1, $a1, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB5_2:                                # %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit
	ret
.Lfunc_end5:
	.size	_ZNSt6vectorIiSaIiEED2Ev, .Lfunc_end5-_ZNSt6vectorIiSaIiEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN10MallocPlusD2Ev,"axG",@progbits,_ZN10MallocPlusD2Ev,comdat
	.weak	_ZN10MallocPlusD2Ev             # -- Begin function _ZN10MallocPlusD2Ev
	.p2align	5
	.type	_ZN10MallocPlusD2Ev,@function
_ZN10MallocPlusD2Ev:                    # @_ZN10MallocPlusD2Ev
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
	ld.d	$a1, $a0, 64
	addi.d	$a0, $a0, 48
.Ltmp14:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp15:
# %bb.1:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit
	ld.d	$a1, $fp, 16
.Ltmp17:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp18:
# %bb.2:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_3:
.Ltmp19:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_4:
.Ltmp16:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN10MallocPlusD2Ev, .Lfunc_end6-_ZN10MallocPlusD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN10MallocPlusD2Ev,"aG",@progbits,_ZN10MallocPlusD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin1          #     jumps to .Ltmp16
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp18            #   Call between .Ltmp18 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
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
	.globl	_ZN4Mesh11print_localEv         # -- Begin function _ZN4Mesh11print_localEv
	.p2align	5
	.type	_ZN4Mesh11print_localEv,@function
_ZN4Mesh11print_localEv:                # @_ZN4Mesh11print_localEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$a1, $a0, 1368
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1176
	ld.d	$a3, $fp, 776
	ld.w	$a2, $fp, 620
	bgeu	$a0, $a1, .LBB7_4
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1176
	beqz	$a0, .LBB7_11
# %bb.2:                                # %.lr.ph41
	move	$a1, $zero
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s1, $a0, %pc_lo12(.L.str.22)
	.p2align	4, , 16
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 776
	ld.w	$a2, $fp, 620
	ld.d	$a3, $fp, 1328
	ld.d	$a5, $fp, 1336
	ld.d	$a6, $fp, 1352
	slli.d	$a1, $a1, 2
	ldx.w	$a4, $a3, $a1
	ldx.w	$a5, $a5, $a1
	ldx.w	$a6, $a6, $a1
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1176
	addi.w	$s0, $s0, 1
	bstrpick.d	$a1, $s0, 31, 0
	bltu	$a1, $a0, .LBB7_3
	b	.LBB7_11
.LBB7_4:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB7_8
# %bb.5:                                # %.lr.ph
	move	$a3, $zero
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s1, $a0, %pc_lo12(.L.str.20)
	.p2align	4, , 16
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 776
	ld.w	$a2, $fp, 620
	ld.w	$a1, $fp, 636
	ld.d	$a4, $fp, 1328
	ld.d	$a6, $fp, 1336
	ld.d	$a7, $fp, 1352
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a4, $a3
	ldx.w	$a6, $a6, $a3
	ldx.w	$a7, $a7, $a3
	ld.d	$a4, $fp, 1368
	ld.d	$t0, $fp, 1376
	ld.d	$t1, $fp, 1384
	ld.d	$t2, $fp, 1392
	ldx.w	$t3, $a4, $a3
	ldx.w	$t0, $t0, $a3
	ldx.w	$t1, $t1, $a3
	ldx.w	$a3, $t2, $a3
	add.w	$a4, $s0, $a1
	st.d	$a3, $sp, 24
	st.d	$t1, $sp, 16
	st.d	$t0, $sp, 8
	st.d	$t3, $sp, 0
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1160
	addi.w	$s0, $s0, 1
	bstrpick.d	$a3, $s0, 31, 0
	bltu	$a3, $a1, .LBB7_6
# %bb.7:                                # %._crit_edge
	ld.d	$a0, $fp, 1176
	bltu	$a1, $a0, .LBB7_9
	b	.LBB7_11
.LBB7_8:
	move	$a1, $zero
	ld.d	$a0, $fp, 1176
	bgeu	$a1, $a0, .LBB7_11
.LBB7_9:                                # %.lr.ph38
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s0, $a0, %pc_lo12(.L.str.20)
	move	$s1, $a1
	.p2align	4, , 16
.LBB7_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 776
	ld.w	$a2, $fp, 620
	ld.w	$a3, $fp, 636
	ld.d	$a4, $fp, 1328
	ld.d	$a6, $fp, 1336
	ld.d	$a7, $fp, 1352
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $a4, $a1
	ldx.w	$a6, $a6, $a1
	ldx.w	$a7, $a7, $a1
	ld.d	$a4, $fp, 1368
	ld.d	$t0, $fp, 1376
	ld.d	$t1, $fp, 1384
	ld.d	$t2, $fp, 1392
	ldx.w	$t3, $a4, $a1
	ldx.w	$t0, $t0, $a1
	ldx.w	$t1, $t1, $a1
	ldx.w	$a1, $t2, $a1
	add.w	$a4, $s1, $a3
	st.d	$a1, $sp, 24
	st.d	$t1, $sp, 16
	st.d	$t0, $sp, 8
	addi.w	$a3, $s1, 0
	st.d	$t3, $sp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1176
	addi.w	$s1, $s1, 1
	bstrpick.d	$a1, $s1, 31, 0
	bltu	$a1, $a0, .LBB7_10
.LBB7_11:                               # %.loopexit
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end7:
	.size	_ZN4Mesh11print_localEv, .Lfunc_end7-_ZN4Mesh11print_localEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh41compare_neighbors_cpu_local_to_cpu_globalEjjPS_PiS1_ # -- Begin function _ZN4Mesh41compare_neighbors_cpu_local_to_cpu_globalEjjPS_PiS1_
	.p2align	5
	.type	_ZN4Mesh41compare_neighbors_cpu_local_to_cpu_globalEjjPS_PiS1_,@function
_ZN4Mesh41compare_neighbors_cpu_local_to_cpu_globalEjjPS_PiS1_: # @_ZN4Mesh41compare_neighbors_cpu_local_to_cpu_globalEjjPS_PiS1_
# %bb.0:
	ret
.Lfunc_end8:
	.size	_ZN4Mesh41compare_neighbors_cpu_local_to_cpu_globalEjjPS_PiS1_, .Lfunc_end8-_ZN4Mesh41compare_neighbors_cpu_local_to_cpu_globalEjjPS_PiS1_
                                        # -- End function
	.globl	_ZN4Mesh39compare_indices_cpu_local_to_cpu_globalEjPS_PiS1_i # -- Begin function _ZN4Mesh39compare_indices_cpu_local_to_cpu_globalEjPS_PiS1_i
	.p2align	5
	.type	_ZN4Mesh39compare_indices_cpu_local_to_cpu_globalEjPS_PiS1_i,@function
_ZN4Mesh39compare_indices_cpu_local_to_cpu_globalEjPS_PiS1_i: # @_ZN4Mesh39compare_indices_cpu_local_to_cpu_globalEjPS_PiS1_i
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	beqz	$a1, .LBB9_23
# %bb.1:                                # %.noexc
	move	$s1, $a5
	move	$s5, $a1
	ld.d	$a0, $a2, 1360
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 1328
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 1336
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 1352
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$s0, $a1, 31, 0
	slli.d	$s2, $s0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	beq	$s5, $a1, .LBB9_3
# %bb.2:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB9_3:
.Ltmp20:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.4:                                # %.noexc59
	move	$s6, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $s6, 0
	beq	$s5, $a0, .LBB9_6
# %bb.5:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i56
	addi.d	$a0, $s6, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB9_6:
.Ltmp23:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp24:
# %bb.7:                                # %.noexc65
	move	$s3, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $s3, 0
	beq	$s5, $a0, .LBB9_9
# %bb.8:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i62
	addi.d	$a0, $s3, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB9_9:
.Ltmp26:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp27:
# %bb.10:                               # %.noexc71
	move	$s4, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $s4, 0
	beq	$s5, $a0, .LBB9_12
# %bb.11:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i68
	addi.d	$a0, $s4, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB9_12:                               # %.lr.ph.preheader
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	move	$s2, $zero
	move	$s5, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s7, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s8, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$fp, $a0, %pc_lo12(.L.str.23)
	b	.LBB9_14
	.p2align	4, , 16
.LBB9_13:                               #   in Loop: Header=BB9_14 Depth=1
	addi.w	$s5, $s5, 1
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 4
	beqz	$s0, .LBB9_22
.LBB9_14:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $s2
	ldx.w	$a4, $s4, $s2
	beq	$a3, $a4, .LBB9_16
# %bb.15:                               #   in Loop: Header=BB9_14 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB9_16:                               #   in Loop: Header=BB9_14 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $s2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a4, $a0, $s2
	bne	$a3, $a4, .LBB9_19
# %bb.17:                               #   in Loop: Header=BB9_14 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $s2
	ldx.w	$a4, $s6, $s2
	bne	$a3, $a4, .LBB9_20
.LBB9_18:                               #   in Loop: Header=BB9_14 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $s2
	ldx.w	$a4, $s3, $s2
	beq	$a3, $a4, .LBB9_13
	b	.LBB9_21
	.p2align	4, , 16
.LBB9_19:                               #   in Loop: Header=BB9_14 Depth=1
	move	$a0, $s8
	move	$a1, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $s2
	ldx.w	$a4, $s6, $s2
	beq	$a3, $a4, .LBB9_18
.LBB9_20:                               #   in Loop: Header=BB9_14 Depth=1
	move	$a0, $s7
	move	$a1, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $s2
	ldx.w	$a4, $s3, $s2
	beq	$a3, $a4, .LBB9_13
.LBB9_21:                               #   in Loop: Header=BB9_14 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB9_13
.LBB9_22:
	move	$a0, $s4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $fp
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB9_23:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit78
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
.LBB9_24:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit80
.Ltmp28:
	move	$fp, $a0
	move	$a0, $s3
	move	$s0, $s2
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB9_26
.LBB9_25:
.Ltmp25:
	move	$s0, $s2
	move	$fp, $a0
.LBB9_26:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit82
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB9_28
.LBB9_27:
.Ltmp22:
	move	$s0, $s2
	move	$fp, $a0
.LBB9_28:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit84
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN4Mesh39compare_indices_cpu_local_to_cpu_globalEjPS_PiS1_i, .Lfunc_end9-_ZN4Mesh39compare_indices_cpu_local_to_cpu_globalEjPS_PiS1_i
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp20-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin2          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp23-.Ltmp21                #   Call between .Ltmp21 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin2          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp26-.Ltmp24                #   Call between .Ltmp24 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin2          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Lfunc_end9-.Ltmp27            #   Call between .Ltmp27 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN4Mesh50compare_coordinates_cpu_local_to_cpu_global_doubleEjPiS0_PdS1_S1_S1_S1_S1_S1_S1_S1_S1_i
.LCPI10_0:
	.dword	0x3f9999999999999a              # double 0.025000000000000001
	.text
	.globl	_ZN4Mesh50compare_coordinates_cpu_local_to_cpu_global_doubleEjPiS0_PdS1_S1_S1_S1_S1_S1_S1_S1_S1_i
	.p2align	5
	.type	_ZN4Mesh50compare_coordinates_cpu_local_to_cpu_global_doubleEjPiS0_PdS1_S1_S1_S1_S1_S1_S1_S1_S1_i,@function
_ZN4Mesh50compare_coordinates_cpu_local_to_cpu_global_doubleEjPiS0_PdS1_S1_S1_S1_S1_S1_S1_S1_S1_i: # @_ZN4Mesh50compare_coordinates_cpu_local_to_cpu_global_doubleEjPiS0_PdS1_S1_S1_S1_S1_S1_S1_S1_S1_i
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
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
	beqz	$a1, .LBB10_28
# %bb.1:                                # %.noexc
	move	$s6, $a1
	ld.d	$s2, $sp, 224
	ld.d	$a0, $sp, 216
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 208
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 200
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 192
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 184
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$s7, $a1, 31, 0
	slli.d	$s8, $s7, 3
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$zero, $a0, 0
	beq	$s6, $a1, .LBB10_3
# %bb.2:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	addi.d	$a2, $s8, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB10_3:
.Ltmp29:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp30:
# %bb.4:                                # %.noexc63
	move	$s0, $a0
	ori	$a0, $zero, 1
	st.d	$zero, $s0, 0
	beq	$s6, $a0, .LBB10_6
# %bb.5:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i60
	addi.d	$a0, $s0, 8
	addi.d	$a2, $s8, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB10_6:
.Ltmp32:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp33:
# %bb.7:                                # %.noexc69
	move	$s3, $a0
	ori	$a0, $zero, 1
	st.d	$zero, $s3, 0
	beq	$s6, $a0, .LBB10_9
# %bb.8:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66
	addi.d	$a0, $s3, 8
	addi.d	$a2, $s8, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB10_9:
.Ltmp35:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.10:                               # %.noexc75
	move	$s4, $a0
	ori	$a0, $zero, 1
	st.d	$zero, $s4, 0
	beq	$s6, $a0, .LBB10_12
# %bb.11:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i72
	addi.d	$a0, $s4, 8
	addi.d	$a2, $s8, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB10_12:
.Ltmp38:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp39:
# %bb.13:                               # %.noexc81
	move	$s5, $a0
	ori	$a0, $zero, 1
	st.d	$zero, $s5, 0
	beq	$s6, $a0, .LBB10_15
# %bb.14:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i78
	addi.d	$a0, $s5, 8
	addi.d	$a2, $s8, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB10_15:                              # %.lr.ph.preheader
	st.d	$s8, $sp, 0                     # 8-byte Folded Spill
	move	$s8, $zero
	move	$s6, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI10_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$fp, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$s1, $a0, %pc_lo12(.L.str.31)
	b	.LBB10_17
	.p2align	4, , 16
.LBB10_16:                              #   in Loop: Header=BB10_17 Depth=1
	addi.w	$s6, $s6, 1
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	beqz	$s7, .LBB10_27
.LBB10_17:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $s8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $s8
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB10_19
# %bb.18:                               #   in Loop: Header=BB10_17 Depth=1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_19:                              #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $s8
	fldx.d	$fa1, $s0, $s8
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB10_21
# %bb.20:                               #   in Loop: Header=BB10_17 Depth=1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_21:                              #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $s8
	fldx.d	$fa1, $s3, $s8
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB10_23
# %bb.22:                               #   in Loop: Header=BB10_17 Depth=1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_23:                              #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $s8
	fldx.d	$fa1, $s4, $s8
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB10_25
# %bb.24:                               #   in Loop: Header=BB10_17 Depth=1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_25:                              #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $s8
	fldx.d	$fa1, $s5, $s8
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB10_16
# %bb.26:                               #   in Loop: Header=BB10_17 Depth=1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB10_16
.LBB10_27:
	move	$a0, $s5
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $fp
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB10_28:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit90
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
.LBB10_29:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit92
.Ltmp40:
	move	$fp, $a0
	move	$a0, $s4
	move	$s1, $s8
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB10_31
.LBB10_30:
.Ltmp37:
	move	$s1, $s8
	move	$fp, $a0
.LBB10_31:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit94
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB10_33
.LBB10_32:
.Ltmp34:
	move	$s1, $s8
	move	$fp, $a0
.LBB10_33:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit96
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB10_35
.LBB10_34:
.Ltmp31:
	move	$s1, $s8
	move	$fp, $a0
.LBB10_35:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit98
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN4Mesh50compare_coordinates_cpu_local_to_cpu_global_doubleEjPiS0_PdS1_S1_S1_S1_S1_S1_S1_S1_S1_i, .Lfunc_end10-_ZN4Mesh50compare_coordinates_cpu_local_to_cpu_global_doubleEjPiS0_PdS1_S1_S1_S1_S1_S1_S1_S1_S1_i
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
	.uleb128 .Ltmp29-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin3          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp32-.Ltmp30                #   Call between .Ltmp30 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin3          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp35-.Ltmp33                #   Call between .Ltmp33 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin3          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp38-.Ltmp36                #   Call between .Ltmp36 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin3          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Lfunc_end10-.Ltmp39           #   Call between .Ltmp39 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN4Mesh49compare_coordinates_cpu_local_to_cpu_global_floatEjPiS0_PdS1_S1_S1_PfS1_S1_S1_S1_S2_i
.LCPI11_0:
	.dword	0x3f9999999999999a              # double 0.025000000000000001
	.text
	.globl	_ZN4Mesh49compare_coordinates_cpu_local_to_cpu_global_floatEjPiS0_PdS1_S1_S1_PfS1_S1_S1_S1_S2_i
	.p2align	5
	.type	_ZN4Mesh49compare_coordinates_cpu_local_to_cpu_global_floatEjPiS0_PdS1_S1_S1_PfS1_S1_S1_S1_S2_i,@function
_ZN4Mesh49compare_coordinates_cpu_local_to_cpu_global_floatEjPiS0_PdS1_S1_S1_PfS1_S1_S1_S1_S2_i: # @_ZN4Mesh49compare_coordinates_cpu_local_to_cpu_global_floatEjPiS0_PdS1_S1_S1_PfS1_S1_S1_S1_S2_i
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
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
	beqz	$a1, .LBB11_28
# %bb.1:                                # %.noexc
	move	$s7, $a1
	ld.d	$s2, $sp, 240
	ld.d	$a0, $sp, 232
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 224
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 216
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 208
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 200
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$s8, $a1, 31, 0
	slli.d	$s5, $s8, 3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$zero, $a0, 0
	beq	$s7, $a1, .LBB11_3
# %bb.2:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	addi.d	$a2, $s5, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB11_3:
.Ltmp41:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp42:
# %bb.4:                                # %.noexc63
	move	$s0, $a0
	ori	$a0, $zero, 1
	st.d	$zero, $s0, 0
	beq	$s7, $a0, .LBB11_6
# %bb.5:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i60
	addi.d	$a0, $s0, 8
	addi.d	$a2, $s5, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB11_6:
.Ltmp44:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp45:
# %bb.7:                                # %.noexc69
	move	$s3, $a0
	ori	$a0, $zero, 1
	st.d	$zero, $s3, 0
	beq	$s7, $a0, .LBB11_9
# %bb.8:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i66
	addi.d	$a0, $s3, 8
	addi.d	$a2, $s5, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB11_9:
.Ltmp47:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp48:
# %bb.10:                               # %.noexc75
	move	$s4, $a0
	ori	$a0, $zero, 1
	st.d	$zero, $s4, 0
	beq	$s7, $a0, .LBB11_12
# %bb.11:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i72
	addi.d	$a0, $s4, 8
	addi.d	$a2, $s5, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB11_12:
	slli.d	$fp, $s8, 2
.Ltmp50:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp51:
# %bb.13:                               # %.noexc79
	move	$s6, $a0
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.w	$zero, $s6, 0
	beq	$s7, $a0, .LBB11_15
# %bb.14:                               # %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a0, $s6, 4
	addi.d	$a2, $fp, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB11_15:                              # %.lr.ph.preheader
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$s5, $zero
	move	$fp, $zero
	move	$s7, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI11_0)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$s1, $a0, %pc_lo12(.L.str.31)
	b	.LBB11_17
	.p2align	4, , 16
.LBB11_16:                              #   in Loop: Header=BB11_17 Depth=1
	addi.w	$s7, $s7, 1
	addi.d	$fp, $fp, 8
	addi.d	$s8, $s8, -1
	addi.d	$s5, $s5, 4
	beqz	$s8, .LBB11_27
.LBB11_17:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $fp
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $fp
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB11_19
# %bb.18:                               #   in Loop: Header=BB11_17 Depth=1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB11_19:                              #   in Loop: Header=BB11_17 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $fp
	fldx.d	$fa1, $s0, $fp
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB11_21
# %bb.20:                               #   in Loop: Header=BB11_17 Depth=1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB11_21:                              #   in Loop: Header=BB11_17 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $fp
	fldx.d	$fa1, $s3, $fp
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB11_23
# %bb.22:                               #   in Loop: Header=BB11_17 Depth=1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB11_23:                              #   in Loop: Header=BB11_17 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fldx.d	$fa0, $a0, $fp
	fldx.d	$fa1, $s4, $fp
	fsub.d	$fa2, $fa0, $fa1
	fabs.d	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB11_25
# %bb.24:                               #   in Loop: Header=BB11_17 Depth=1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB11_25:                              #   in Loop: Header=BB11_17 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s5
	fldx.s	$fa1, $s6, $s5
	fsub.s	$fa2, $fa0, $fa1
	fabs.s	$fa2, $fa2
	fcvt.d.s	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fs0
	bcnez	$fcc0, .LBB11_16
# %bb.26:                               #   in Loop: Header=BB11_17 Depth=1
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	movfr2gr.d	$a3, $fa0
	movfr2gr.d	$a4, $fa1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB11_16
.LBB11_27:
	move	$a0, $s6
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $fp
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB11_28:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit86
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.LBB11_29:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit88
.Ltmp52:
	move	$fp, $a0
	move	$a0, $s4
	move	$s1, $s5
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB11_31
.LBB11_30:
.Ltmp49:
	move	$s1, $s5
	move	$fp, $a0
.LBB11_31:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit90
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB11_33
.LBB11_32:
.Ltmp46:
	move	$s1, $s5
	move	$fp, $a0
.LBB11_33:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit92
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB11_35
.LBB11_34:
.Ltmp43:
	move	$s1, $s5
	move	$fp, $a0
.LBB11_35:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit94
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN4Mesh49compare_coordinates_cpu_local_to_cpu_global_floatEjPiS0_PdS1_S1_S1_PfS1_S1_S1_S1_S2_i, .Lfunc_end11-_ZN4Mesh49compare_coordinates_cpu_local_to_cpu_global_floatEjPiS0_PdS1_S1_S1_PfS1_S1_S1_S1_S2_i
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp41-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin4          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp44-.Ltmp42                #   Call between .Ltmp42 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin4          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp47-.Ltmp45                #   Call between .Ltmp45 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin4          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp50-.Ltmp48                #   Call between .Ltmp48 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin4          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Lfunc_end11-.Ltmp51           #   Call between .Ltmp51 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh36compare_mpot_cpu_local_to_cpu_globalEjPiS0_S0_S0_i # -- Begin function _ZN4Mesh36compare_mpot_cpu_local_to_cpu_globalEjPiS0_S0_S0_i
	.p2align	5
	.type	_ZN4Mesh36compare_mpot_cpu_local_to_cpu_globalEjPiS0_S0_S0_i,@function
_ZN4Mesh36compare_mpot_cpu_local_to_cpu_globalEjPiS0_S0_S0_i: # @_ZN4Mesh36compare_mpot_cpu_local_to_cpu_globalEjPiS0_S0_S0_i
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB12_9
# %bb.1:                                # %.noexc
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
	move	$fp, $a6
	move	$s0, $a5
	move	$s1, $a0
	bstrpick.d	$s6, $a1, 31, 0
	slli.d	$s2, $s6, 2
	move	$a0, $s2
	move	$s4, $a1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $s3, 0
	beq	$s4, $a0, .LBB12_3
# %bb.2:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a0, $s3, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB12_3:                               # %.lr.ph
	move	$s7, $zero
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$s5, $a0, %pc_lo12(.L.str.32)
	b	.LBB12_5
	.p2align	4, , 16
.LBB12_4:                               #   in Loop: Header=BB12_5 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, 4
	beqz	$s6, .LBB12_8
.LBB12_5:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $s0, $s7
	ldx.w	$a5, $s3, $s7
	beq	$a4, $a5, .LBB12_4
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=1
	ld.w	$a0, $s1, 620
	bnez	$a0, .LBB12_4
# %bb.7:                                #   in Loop: Header=BB12_5 Depth=1
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB12_4
.LBB12_8:                               # %._crit_edge
	move	$a0, $s3
	move	$a1, $s2
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB12_9:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ret
.Lfunc_end12:
	.size	_ZN4Mesh36compare_mpot_cpu_local_to_cpu_globalEjPiS0_S0_S0_i, .Lfunc_end12-_ZN4Mesh36compare_mpot_cpu_local_to_cpu_globalEjPiS0_S0_S0_i
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN4MeshC2Eiiiiddiii
.LCPI13_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	_ZN4MeshC2Eiiiiddiii
	.p2align	5
	.type	_ZN4MeshC2Eiiiiddiii,@function
_ZN4MeshC2Eiiiiddiii:                   # @_ZN4MeshC2Eiiiiddiii
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:                                # %.preheader215
	addi.d	$sp, $sp, -272
	.cfi_def_cfa_offset 272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 168                  # 8-byte Folded Spill
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
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	move	$s2, $a5
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$s1, $a4
	move	$s4, $a3
	move	$s5, $a2
	move	$s8, $a1
	move	$fp, $a0
	addi.d	$a0, $a0, 16
	st.w	$zero, $fp, 16
	st.d	$zero, $fp, 24
	st.d	$a0, $fp, 32
	st.d	$a0, $fp, 40
	st.d	$zero, $fp, 48
	addi.d	$a0, $fp, 64
	st.w	$zero, $fp, 64
	st.d	$zero, $fp, 72
	st.d	$a0, $fp, 80
	st.d	$a0, $fp, 88
	st.d	$zero, $fp, 96
	addi.d	$a0, $fp, 112
	st.w	$zero, $fp, 112
	st.d	$zero, $fp, 120
	st.d	$a0, $fp, 128
	st.d	$a0, $fp, 136
	st.d	$zero, $fp, 144
	addi.d	$a0, $fp, 160
	st.w	$zero, $fp, 160
	st.d	$zero, $fp, 168
	st.d	$a0, $fp, 176
	st.d	$a0, $fp, 184
	addi.d	$a0, $fp, 192
	addi.d	$s0, $fp, 680
	addi.d	$s7, $fp, 856
	st.d	$zero, $fp, 1320
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $fp, 1304
	addi.d	$s6, $fp, 1416
	addi.d	$s3, $fp, 1568
	ori	$a2, $zero, 424
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $fp, 640
	ori	$a2, $zero, 96
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 264
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 144
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 720
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$s1, $fp, 0
	st.w	$s4, $fp, 1120
	st.d	$zero, $fp, 664
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 672
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 620
	st.d	$zero, $fp, 1160
	st.d	$zero, $fp, 1176
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.w	$a0, $fp, 628
	st.d	$zero, $fp, 632
	lu12i.w	$a0, 260096
	st.w	$a0, $fp, 656
	fst.d	$fs1, $fp, 1280
	fst.d	$fs0, $fp, 1288
	st.w	$s2, $fp, 1124
	st.w	$zero, $fp, 1132
	st.w	$zero, $fp, 1140
	addi.d	$a0, $s8, 1
	st.w	$a0, $fp, 1136
	addi.d	$a1, $s5, 1
	st.w	$a1, $fp, 1144
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	beqz	$s2, .LBB13_2
# %bb.1:
	addi.w	$s8, $s8, 2
	addi.w	$s5, $s5, 2
	st.w	$zero, $fp, 1132
	st.w	$zero, $fp, 1140
	st.w	$a0, $fp, 1136
	st.w	$a1, $fp, 1144
.LBB13_2:
	addi.d	$s2, $fp, 880
	addi.d	$s6, $fp, 904
	addi.d	$s7, $fp, 928
	addi.d	$s0, $fp, 952
	addi.d	$a0, $fp, 1024
	addi.d	$a1, $fp, 1048
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a1, $fp, 1072
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	vldi	$vr0, -800
	fmul.d	$fa1, $fs1, $fa0
	movgr2fr.w	$fa2, $s8
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $fp, 1184
	fmul.d	$fa0, $fs0, $fa0
	movgr2fr.w	$fa1, $s5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 1200
	vldi	$vr0, -928
	fmul.d	$fa3, $fs1, $fa0
	fmul.d	$fa2, $fa3, $fa2
	fst.d	$fa2, $fp, 1192
	ld.d	$a3, $fp, 1032
	ld.d	$a1, $fp, 1024
	fmul.d	$fa0, $fs0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	addi.w	$s1, $s4, 1
	sub.d	$a2, $a3, $a1
	srai.d	$a2, $a2, 2
	fst.d	$fa0, $fp, 1208
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	bgeu	$a2, $s1, .LBB13_4
# %bb.3:
	sub.d	$a1, $s1, $a2
.Ltmp53:
	move	$s4, $a0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp54:
	b	.LBB13_7
.LBB13_4:
	move	$s4, $a0
	bgeu	$s1, $a2, .LBB13_7
# %bb.5:
	alsl.d	$a1, $s1, $a1, 2
	beq	$a3, $a1, .LBB13_7
# %bb.6:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a1, $fp, 1032
.LBB13_7:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $fp, 888
	ld.d	$a1, $fp, 880
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	bgeu	$a2, $s1, .LBB13_9
# %bb.8:
	sub.d	$a1, $s1, $a2
.Ltmp55:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp56:
	b	.LBB13_12
.LBB13_9:
	bgeu	$s1, $a2, .LBB13_12
# %bb.10:
	alsl.d	$a1, $s1, $a1, 2
	beq	$a0, $a1, .LBB13_12
# %bb.11:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i75
	st.d	$a1, $fp, 888
.LBB13_12:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit77
	ld.d	$a0, $fp, 936
	ld.d	$a1, $fp, 928
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	bgeu	$a2, $s1, .LBB13_14
# %bb.13:
	sub.d	$a1, $s1, $a2
.Ltmp57:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp58:
	b	.LBB13_17
.LBB13_14:
	bgeu	$s1, $a2, .LBB13_17
# %bb.15:
	alsl.d	$a1, $s1, $a1, 2
	beq	$a0, $a1, .LBB13_17
# %bb.16:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79
	st.d	$a1, $fp, 936
.LBB13_17:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit81
	ld.d	$a0, $fp, 912
	ld.d	$a1, $fp, 904
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	bgeu	$a2, $s1, .LBB13_19
# %bb.18:
	sub.d	$a1, $s1, $a2
.Ltmp59:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp60:
	b	.LBB13_22
.LBB13_19:
	bgeu	$s1, $a2, .LBB13_22
# %bb.20:
	alsl.d	$a1, $s1, $a1, 2
	beq	$a0, $a1, .LBB13_22
# %bb.21:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i83
	st.d	$a1, $fp, 912
.LBB13_22:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit85
	ld.d	$a0, $fp, 960
	ld.d	$a1, $fp, 952
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	bgeu	$a2, $s1, .LBB13_24
# %bb.23:
	sub.d	$a1, $s1, $a2
.Ltmp61:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp62:
	b	.LBB13_27
.LBB13_24:
	bgeu	$s1, $a2, .LBB13_27
# %bb.25:
	alsl.d	$a1, $s1, $a1, 2
	beq	$a0, $a1, .LBB13_27
# %bb.26:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i87
	st.d	$a1, $fp, 960
.LBB13_27:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit89
	ld.d	$a0, $fp, 1056
	ld.d	$a1, $fp, 1048
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 3
	bgeu	$a2, $s1, .LBB13_29
# %bb.28:
	sub.d	$a1, $s1, $a2
.Ltmp63:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp64:
	b	.LBB13_32
.LBB13_29:
	bgeu	$s1, $a2, .LBB13_32
# %bb.30:
	alsl.d	$a1, $s1, $a1, 3
	beq	$a0, $a1, .LBB13_32
# %bb.31:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a1, $fp, 1056
.LBB13_32:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit
	ld.d	$a0, $fp, 1080
	ld.d	$a1, $fp, 1072
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 3
	bgeu	$a2, $s1, .LBB13_35
# %bb.33:
	sub.d	$a1, $s1, $a2
.Ltmp65:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp66:
# %bb.34:                               # %._ZNSt6vectorIdSaIdEE6resizeEm.exit95_crit_edge
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	b	.LBB13_38
.LBB13_35:
	bgeu	$s1, $a2, .LBB13_38
# %bb.36:
	alsl.d	$a2, $s1, $a1, 3
	beq	$a0, $a2, .LBB13_38
# %bb.37:                               # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i93
	st.d	$a2, $fp, 1080
.LBB13_38:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit95
	ld.w	$a0, $fp, 1132
	ld.d	$a3, $fp, 880
	addi.d	$a0, $a0, 1
	st.w	$a0, $a3, 0
	ld.w	$a0, $fp, 1136
	ld.d	$a4, $fp, 904
	addi.d	$a0, $a0, -1
	st.w	$a0, $a4, 0
	ld.w	$a0, $fp, 1140
	ld.d	$a5, $fp, 928
	addi.d	$a0, $a0, 1
	st.w	$a0, $a5, 0
	ld.w	$a0, $fp, 1144
	ld.d	$a6, $fp, 952
	fld.d	$fa0, $fp, 1280
	ld.d	$a7, $fp, 1048
	addi.d	$a0, $a0, -1
	st.w	$a0, $a6, 0
	fst.d	$fa0, $a7, 0
	fld.d	$fa0, $fp, 1288
	ld.w	$a0, $fp, 1120
	ori	$a2, $zero, 1
	fst.d	$fa0, $a1, 0
	blt	$a0, $a2, .LBB13_41
# %bb.39:                               # %.lr.ph.preheader
	move	$a2, $zero
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 8
	addi.d	$a1, $a1, 8
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB13_40:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a3, -4
	slli.d	$a0, $a0, 1
	st.w	$a0, $a3, 0
	ld.w	$a0, $a4, -4
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	st.w	$a0, $a4, 0
	ld.w	$a0, $a5, -4
	fld.d	$fa1, $a7, -8
	slli.d	$a0, $a0, 1
	st.w	$a0, $a5, 0
	ld.w	$a0, $a6, -4
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a7, 0
	fld.d	$fa1, $a1, -8
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	st.w	$a0, $a6, 0
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a1, 0
	ld.w	$a0, $fp, 1120
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 8
	addi.d	$a1, $a1, 8
	blt	$a2, $a0, .LBB13_40
.LBB13_41:                              # %.preheader
	beqz	$s1, .LBB13_47
# %bb.42:                               # %.lr.ph221
	ld.d	$a0, $s4, 0
	ori	$a1, $zero, 8
	bgeu	$s1, $a1, .LBB13_73
# %bb.43:
	move	$a1, $zero
.LBB13_44:                              # %scalar.ph.preheader
	ori	$a2, $zero, 2
	move	$a3, $a1
	.p2align	4, , 16
.LBB13_45:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	sll.w	$a4, $a2, $a3
	slli.d	$a5, $a1, 2
	addi.w	$a3, $a3, 1
	bstrpick.d	$a1, $a3, 31, 0
	stx.w	$a4, $a0, $a5
	bltu	$a1, $s1, .LBB13_45
.LBB13_46:                              # %._crit_edge.loopexit
	ld.w	$a0, $fp, 1120
.LBB13_47:                              # %._crit_edge
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$a3, $zero
	ld.w	$a1, $fp, 1136
	st.w	$zero, $fp, 1128
	st.d	$zero, $sp, 152
	ld.w	$a2, $fp, 1144
	st.w	$a1, $sp, 160
	st.w	$a1, $sp, 164
	st.w	$zero, $sp, 136
	st.w	$a2, $sp, 140
	st.w	$zero, $sp, 144
	st.w	$a2, $sp, 148
	ori	$s3, $zero, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a1, $zero, -1
	lu52i.d	$s7, $a1, 511
	b	.LBB13_49
	.p2align	4, , 16
.LBB13_48:                              # %._crit_edge229
                                        #   in Loop: Header=BB13_49 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ori	$a1, $zero, 4
	beq	$a3, $a1, .LBB13_72
.LBB13_49:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_52 Depth 2
                                        #       Child Loop BB13_56 Depth 3
	ori	$a1, $zero, 2
	sll.w	$a1, $a1, $a0
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	blt	$a1, $s3, .LBB13_48
# %bb.50:                               # %.lr.ph228
                                        #   in Loop: Header=BB13_49 Depth=1
	slli.d	$a2, $a3, 2
	addi.d	$a3, $sp, 136
	ldx.w	$a3, $a2, $a3
	addi.d	$a4, $sp, 152
	ldx.w	$a2, $a2, $a4
	addi.d	$a4, $a3, 1
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	mul.d	$s0, $a1, $a3
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	addi.d	$s8, $a2, 1
	b	.LBB13_52
	.p2align	4, , 16
.LBB13_51:                              # %._crit_edge225
                                        #   in Loop: Header=BB13_52 Depth=2
	addi.w	$s0, $s0, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	mul.w	$a2, $a1, $a2
	bge	$s0, $a2, .LBB13_48
.LBB13_52:                              #   Parent Loop BB13_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_56 Depth 3
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	mul.w	$s2, $a2, $a1
	ori	$a1, $zero, 2
	sll.w	$a1, $a1, $a0
	mul.w	$a1, $a1, $s8
	blt	$s2, $a1, .LBB13_56
# %bb.53:                               # %.._crit_edge225_crit_edge
                                        #   in Loop: Header=BB13_52 Depth=2
	ori	$a1, $zero, 2
	sll.w	$a1, $a1, $a0
	b	.LBB13_51
	.p2align	4, , 16
.LBB13_54:                              #   in Loop: Header=BB13_56 Depth=3
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 712
.LBB13_55:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit106
                                        #   in Loop: Header=BB13_56 Depth=3
	ld.wu	$a0, $fp, 1120
	addi.w	$s2, $s2, 1
	ori	$a1, $zero, 2
	sll.w	$a1, $a1, $a0
	mul.w	$a2, $a1, $s8
	bge	$s2, $a2, .LBB13_51
.LBB13_56:                              # %.lr.ph224
                                        #   Parent Loop BB13_49 Depth=1
                                        #     Parent Loop BB13_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $fp, 688
	ld.d	$a1, $fp, 696
	beq	$a0, $a1, .LBB13_58
# %bb.57:                               #   in Loop: Header=BB13_56 Depth=3
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 688
	ld.d	$a0, $fp, 712
	ld.d	$a1, $fp, 720
	bne	$a0, $a1, .LBB13_54
	b	.LBB13_65
	.p2align	4, , 16
.LBB13_58:                              #   in Loop: Header=BB13_56 Depth=3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $a1, 0
	sub.d	$s1, $a0, $s4
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB13_78
# %bb.59:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB13_56 Depth=3
	srai.d	$a0, $s1, 2
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s7
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s7, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
.Ltmp68:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.60:                               # %.noexc97
                                        #   in Loop: Header=BB13_56 Depth=3
	move	$s5, $a0
	stx.w	$s2, $a0, $s1
	blt	$s1, $s3, .LBB13_62
# %bb.61:                               #   in Loop: Header=BB13_56 Depth=3
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB13_62:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB13_56 Depth=3
	beqz	$s4, .LBB13_64
# %bb.63:                               #   in Loop: Header=BB13_56 Depth=3
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_64:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB13_56 Depth=3
	add.d	$a0, $s5, $s1
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 680
	st.d	$a0, $fp, 688
	alsl.d	$a0, $s6, $s5, 2
	st.d	$a0, $fp, 696
	ld.d	$a0, $fp, 712
	ld.d	$a1, $fp, 720
	bne	$a0, $a1, .LBB13_54
.LBB13_65:                              #   in Loop: Header=BB13_56 Depth=3
	ld.d	$s4, $fp, 704
	sub.d	$s1, $a0, $s4
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB13_78
# %bb.66:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i99
                                        #   in Loop: Header=BB13_56 Depth=3
	srai.d	$a0, $s1, 2
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s7
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s7, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
.Ltmp70:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp71:
# %bb.67:                               # %.noexc105
                                        #   in Loop: Header=BB13_56 Depth=3
	move	$s5, $a0
	stx.w	$s0, $a0, $s1
	blt	$s1, $s3, .LBB13_69
# %bb.68:                               #   in Loop: Header=BB13_56 Depth=3
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB13_69:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i101
                                        #   in Loop: Header=BB13_56 Depth=3
	beqz	$s4, .LBB13_71
# %bb.70:                               #   in Loop: Header=BB13_56 Depth=3
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_71:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i103
                                        #   in Loop: Header=BB13_56 Depth=3
	add.d	$a0, $s5, $s1
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 704
	st.d	$a0, $fp, 712
	alsl.d	$a0, $s6, $s5, 2
	st.d	$a0, $fp, 720
	b	.LBB13_55
.LBB13_72:
	ori	$a0, $zero, 257
	st.h	$a0, $fp, 616
	st.d	$zero, $fp, 1360
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $fp, 1368
	vst	$vr0, $fp, 1384
	fld.d	$fs1, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB13_73:                              # %vector.scevcheck
	addi.d	$a2, $s1, -1
	bstrpick.d	$a3, $a2, 31, 0
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	move	$a1, $zero
	beq	$a3, $a4, .LBB13_44
# %bb.74:                               # %vector.scevcheck
	srli.d	$a2, $a2, 32
	bnez	$a2, .LBB13_44
# %bb.75:                               # %vector.ph
	bstrpick.d	$a1, $s1, 32, 3
	pcalau12i	$a2, %pc_hi20(.LCPI13_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI13_0)
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a0, 16
	vrepli.w	$vr1, 2
	move	$a3, $a1
	.p2align	4, , 16
.LBB13_76:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr2, $vr0, 4
	vsll.w	$vr3, $vr1, $vr0
	vsll.w	$vr2, $vr1, $vr2
	vst	$vr3, $a2, -16
	vst	$vr2, $a2, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB13_76
# %bb.77:                               # %middle.block
	bne	$a1, $s1, .LBB13_44
	b	.LBB13_46
.LBB13_78:                              # %.invoke
.Ltmp73:
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp74:
# %bb.79:                               # %.cont
.LBB13_80:
.Ltmp67:
	move	$s3, $a0
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB13_83
.LBB13_81:                              # %.loopexit.split-lp
.Ltmp75:
	move	$s3, $a0
	b	.LBB13_83
.LBB13_82:                              # %.loopexit
.Ltmp72:
	move	$s3, $a0
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
.LBB13_83:
	ldptr.d	$a0, $fp, 2264
	bnez	$a0, .LBB13_141
# %bb.84:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ldptr.d	$a0, $fp, 2240
	bnez	$a0, .LBB13_142
.LBB13_85:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit108
	ldptr.d	$a0, $fp, 2216
	bnez	$a0, .LBB13_143
.LBB13_86:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit110
	ldptr.d	$a0, $fp, 2192
	bnez	$a0, .LBB13_144
.LBB13_87:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit112
	ldptr.d	$a0, $fp, 2168
	bnez	$a0, .LBB13_145
.LBB13_88:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit114
	ldptr.d	$a0, $fp, 2144
	bnez	$a0, .LBB13_146
.LBB13_89:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit116
	ldptr.d	$a0, $fp, 2120
	bnez	$a0, .LBB13_147
.LBB13_90:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit118
	ldptr.d	$a0, $fp, 2096
	bnez	$a0, .LBB13_148
.LBB13_91:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit120
	ldptr.d	$a0, $fp, 2072
	bnez	$a0, .LBB13_149
.LBB13_92:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit122
	ldptr.d	$a0, $fp, 2048
	bnez	$a0, .LBB13_150
.LBB13_93:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit124
	ld.d	$a0, $fp, 2024
	bnez	$a0, .LBB13_151
.LBB13_94:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit126
	ld.d	$a0, $fp, 2000
	bnez	$a0, .LBB13_152
.LBB13_95:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit128
	ld.d	$a0, $fp, 1976
	bnez	$a0, .LBB13_153
.LBB13_96:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit130
	ld.d	$a0, $fp, 1952
	bnez	$a0, .LBB13_154
.LBB13_97:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit132
	ld.d	$a0, $fp, 1928
	bnez	$a0, .LBB13_155
.LBB13_98:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit134
	ld.d	$a0, $fp, 1904
	bnez	$a0, .LBB13_156
.LBB13_99:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit136
	ld.d	$a0, $fp, 1880
	bnez	$a0, .LBB13_157
.LBB13_100:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit138
	ld.d	$a0, $fp, 1856
	bnez	$a0, .LBB13_158
.LBB13_101:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit140
	ld.d	$a0, $fp, 1832
	bnez	$a0, .LBB13_159
.LBB13_102:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit142
	ld.d	$a0, $fp, 1808
	bnez	$a0, .LBB13_160
.LBB13_103:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit144
	ld.d	$a0, $fp, 1784
	bnez	$a0, .LBB13_161
.LBB13_104:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit146
	ld.d	$a0, $fp, 1760
	bnez	$a0, .LBB13_162
.LBB13_105:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit148
	ld.d	$a0, $fp, 1736
	bnez	$a0, .LBB13_163
.LBB13_106:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit150
	ld.d	$a0, $fp, 1712
	bnez	$a0, .LBB13_164
.LBB13_107:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit152
	ld.d	$a0, $fp, 1688
	bnez	$a0, .LBB13_165
.LBB13_108:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit154
	ld.d	$a0, $fp, 1664
	bnez	$a0, .LBB13_166
.LBB13_109:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit156
	ld.d	$a0, $fp, 1640
	bnez	$a0, .LBB13_167
.LBB13_110:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit158
	ld.d	$a0, $fp, 1616
	bnez	$a0, .LBB13_168
.LBB13_111:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit160
	ld.d	$a0, $fp, 1592
	bnez	$a0, .LBB13_169
.LBB13_112:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit162
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB13_170
.LBB13_113:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit164
	ld.d	$a0, $fp, 1536
	bnez	$a0, .LBB13_171
.LBB13_114:                             # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $fp, 1512
	bnez	$a0, .LBB13_172
.LBB13_115:                             # %_ZNSt6vectorIdSaIdEED2Ev.exit167
	ld.d	$a0, $fp, 1488
	bnez	$a0, .LBB13_173
.LBB13_116:                             # %_ZNSt6vectorIdSaIdEED2Ev.exit169
	ld.d	$a0, $fp, 1464
	bnez	$a0, .LBB13_174
.LBB13_117:                             # %_ZNSt6vectorIdSaIdEED2Ev.exit171
	ld.d	$a0, $fp, 1440
	bnez	$a0, .LBB13_175
.LBB13_118:                             # %_ZNSt6vectorIdSaIdEED2Ev.exit173
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$s0, $fp, 1304
	bnez	$a0, .LBB13_176
.LBB13_119:                             # %_ZNSt6vectorIdSaIdEED2Ev.exit175
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB13_177
.LBB13_120:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit177
	ld.d	$a0, $fp, 1096
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB13_178
.LBB13_121:                             # %_ZNSt6vectorIdSaIdEED2Ev.exit179
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB13_179
.LBB13_122:                             # %_ZNSt6vectorIdSaIdEED2Ev.exit181
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB13_180
.LBB13_123:                             # %_ZNSt6vectorIdSaIdEED2Ev.exit183
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB13_181
.LBB13_124:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit185
	ld.d	$a0, $fp, 1000
	bnez	$a0, .LBB13_182
.LBB13_125:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit187
	ld.d	$a0, $fp, 976
	bnez	$a0, .LBB13_183
.LBB13_126:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit189
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB13_184
.LBB13_127:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit191
	ld.d	$a0, $s7, 0
	bnez	$a0, .LBB13_185
.LBB13_128:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit193
	ld.d	$a0, $s6, 0
	bnez	$a0, .LBB13_186
.LBB13_129:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit195
	ld.d	$a0, $s2, 0
	bnez	$a0, .LBB13_187
.LBB13_130:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit197
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB13_188
.LBB13_131:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit199
	ld.d	$a0, $fp, 752
	bnez	$a0, .LBB13_189
.LBB13_132:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit201
	ld.d	$a0, $fp, 728
	bnez	$a0, .LBB13_190
.LBB13_133:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit203
	ld.d	$a0, $fp, 704
	bnez	$a0, .LBB13_191
.LBB13_134:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit205
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB13_136
.LBB13_135:
	ld.d	$a1, $fp, 696
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_136:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit207
	ld.d	$a1, $fp, 168
	addi.d	$a0, $fp, 152
.Ltmp76:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp77:
# %bb.137:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i
	ld.d	$a1, $fp, 120
	addi.d	$a0, $fp, 104
.Ltmp79:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp80:
# %bb.138:                              # %_ZN10MallocPlusD2Ev.exit
	ld.d	$a1, $fp, 72
	addi.d	$a0, $fp, 56
.Ltmp82:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp83:
# %bb.139:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i208
	ld.d	$a1, $fp, 24
	addi.d	$a0, $fp, 8
.Ltmp85:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp86:
# %bb.140:                              # %_ZN10MallocPlusD2Ev.exit209
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_141:
	ldptr.d	$a1, $fp, 2280
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2240
	beqz	$a0, .LBB13_85
.LBB13_142:
	ldptr.d	$a1, $fp, 2256
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2216
	beqz	$a0, .LBB13_86
.LBB13_143:
	ldptr.d	$a1, $fp, 2232
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2192
	beqz	$a0, .LBB13_87
.LBB13_144:
	ldptr.d	$a1, $fp, 2208
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2168
	beqz	$a0, .LBB13_88
.LBB13_145:
	ldptr.d	$a1, $fp, 2184
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2144
	beqz	$a0, .LBB13_89
.LBB13_146:
	ldptr.d	$a1, $fp, 2160
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2120
	beqz	$a0, .LBB13_90
.LBB13_147:
	ldptr.d	$a1, $fp, 2136
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2096
	beqz	$a0, .LBB13_91
.LBB13_148:
	ldptr.d	$a1, $fp, 2112
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2072
	beqz	$a0, .LBB13_92
.LBB13_149:
	ldptr.d	$a1, $fp, 2088
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2048
	beqz	$a0, .LBB13_93
.LBB13_150:
	ldptr.d	$a1, $fp, 2064
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 2024
	beqz	$a0, .LBB13_94
.LBB13_151:
	ld.d	$a1, $fp, 2040
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 2000
	beqz	$a0, .LBB13_95
.LBB13_152:
	ld.d	$a1, $fp, 2016
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1976
	beqz	$a0, .LBB13_96
.LBB13_153:
	ld.d	$a1, $fp, 1992
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1952
	beqz	$a0, .LBB13_97
.LBB13_154:
	ld.d	$a1, $fp, 1968
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1928
	beqz	$a0, .LBB13_98
.LBB13_155:
	ld.d	$a1, $fp, 1944
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1904
	beqz	$a0, .LBB13_99
.LBB13_156:
	ld.d	$a1, $fp, 1920
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1880
	beqz	$a0, .LBB13_100
.LBB13_157:
	ld.d	$a1, $fp, 1896
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1856
	beqz	$a0, .LBB13_101
.LBB13_158:
	ld.d	$a1, $fp, 1872
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1832
	beqz	$a0, .LBB13_102
.LBB13_159:
	ld.d	$a1, $fp, 1848
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1808
	beqz	$a0, .LBB13_103
.LBB13_160:
	ld.d	$a1, $fp, 1824
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1784
	beqz	$a0, .LBB13_104
.LBB13_161:
	ld.d	$a1, $fp, 1800
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1760
	beqz	$a0, .LBB13_105
.LBB13_162:
	ld.d	$a1, $fp, 1776
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1736
	beqz	$a0, .LBB13_106
.LBB13_163:
	ld.d	$a1, $fp, 1752
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1712
	beqz	$a0, .LBB13_107
.LBB13_164:
	ld.d	$a1, $fp, 1728
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1688
	beqz	$a0, .LBB13_108
.LBB13_165:
	ld.d	$a1, $fp, 1704
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1664
	beqz	$a0, .LBB13_109
.LBB13_166:
	ld.d	$a1, $fp, 1680
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1640
	beqz	$a0, .LBB13_110
.LBB13_167:
	ld.d	$a1, $fp, 1656
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1616
	beqz	$a0, .LBB13_111
.LBB13_168:
	ld.d	$a1, $fp, 1632
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1592
	beqz	$a0, .LBB13_112
.LBB13_169:
	ld.d	$a1, $fp, 1608
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB13_113
.LBB13_170:
	ld.d	$a1, $fp, 1584
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1536
	beqz	$a0, .LBB13_114
.LBB13_171:
	ld.d	$a1, $fp, 1552
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1512
	beqz	$a0, .LBB13_115
.LBB13_172:
	ld.d	$a1, $fp, 1528
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1488
	beqz	$a0, .LBB13_116
.LBB13_173:
	ld.d	$a1, $fp, 1504
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1464
	beqz	$a0, .LBB13_117
.LBB13_174:
	ld.d	$a1, $fp, 1480
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1440
	beqz	$a0, .LBB13_118
.LBB13_175:
	ld.d	$a1, $fp, 1456
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$s0, $fp, 1304
	beqz	$a0, .LBB13_119
.LBB13_176:
	ld.d	$a1, $fp, 1432
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB13_120
.LBB13_177:
	ld.d	$a1, $fp, 1320
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1096
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB13_121
.LBB13_178:
	ld.d	$a1, $fp, 1112
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB13_122
.LBB13_179:
	ld.d	$a1, $fp, 1088
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB13_123
.LBB13_180:
	ld.d	$a1, $fp, 1064
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB13_124
.LBB13_181:
	ld.d	$a1, $fp, 1040
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1000
	beqz	$a0, .LBB13_125
.LBB13_182:
	ld.d	$a1, $fp, 1016
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 976
	beqz	$a0, .LBB13_126
.LBB13_183:
	ld.d	$a1, $fp, 992
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB13_127
.LBB13_184:
	ld.d	$a1, $fp, 968
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB13_128
.LBB13_185:
	ld.d	$a1, $fp, 944
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB13_129
.LBB13_186:
	ld.d	$a1, $fp, 920
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB13_130
.LBB13_187:
	ld.d	$a1, $fp, 896
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB13_131
.LBB13_188:
	ld.d	$a1, $fp, 872
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 752
	beqz	$a0, .LBB13_132
.LBB13_189:
	ld.d	$a1, $fp, 768
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 728
	beqz	$a0, .LBB13_133
.LBB13_190:
	ld.d	$a1, $fp, 744
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 704
	beqz	$a0, .LBB13_134
.LBB13_191:
	ld.d	$a1, $fp, 720
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB13_135
	b	.LBB13_136
.LBB13_192:
.Ltmp87:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_193:
.Ltmp84:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_194:
.Ltmp81:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_195:
.Ltmp78:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN4MeshC2Eiiiiddiii, .Lfunc_end13-_ZN4MeshC2Eiiiiddiii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp53-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp66-.Ltmp53                #   Call between .Ltmp53 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin5          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp72-.Lfunc_begin5          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin5          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin5          # >> Call Site 6 <<
	.uleb128 .Ltmp73-.Ltmp71                #   Call between .Ltmp71 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin5          # >> Call Site 7 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin5          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin5          # >> Call Site 8 <<
	.uleb128 .Ltmp76-.Ltmp74                #   Call between .Ltmp74 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin5          # >> Call Site 9 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin5          #     jumps to .Ltmp78
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp79-.Lfunc_begin5          # >> Call Site 10 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin5          #     jumps to .Ltmp81
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp82-.Lfunc_begin5          # >> Call Site 11 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin5          #     jumps to .Ltmp84
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp85-.Lfunc_begin5          # >> Call Site 12 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin5          #     jumps to .Ltmp87
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp86-.Lfunc_begin5          # >> Call Site 13 <<
	.uleb128 .Lfunc_end13-.Ltmp86           #   Call between .Ltmp86 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
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
	.globl	_ZN4Mesh4initEiid16partition_methodi # -- Begin function _ZN4Mesh4initEiid16partition_methodi
	.p2align	5
	.type	_ZN4Mesh4initEiid16partition_methodi,@function
_ZN4Mesh4initEiid16partition_methodi:   # @_ZN4Mesh4initEiid16partition_methodi
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	fst.d	$fs0, $sp, 208                  # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.d	$a0, $a0, 1160
	beqz	$a0, .LBB14_3
# %bb.1:
	ld.d	$a0, $fp, 736
	ld.d	$a2, $fp, 728
	ld.w	$a1, $fp, 624
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB14_5
# %bb.2:
	addi.d	$a0, $fp, 728
	sub.d	$a1, $a1, $a3
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 624
	b	.LBB14_8
.LBB14_3:
	fmov.d	$fs0, $fa0
	ld.w	$a0, $fp, 1124
	beqz	$a0, .LBB14_22
# %bb.4:
	move	$s2, $zero
	addi.w	$s3, $a1, 1
	addi.d	$a4, $a2, 2
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 2
	b	.LBB14_23
.LBB14_5:
	bgeu	$a1, $a3, .LBB14_8
# %bb.6:
	alsl.d	$a2, $a1, $a2, 2
	beq	$a0, $a2, .LBB14_8
# %bb.7:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a2, $fp, 736
.LBB14_8:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $fp, 760
	ld.d	$a2, $fp, 752
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB14_10
# %bb.9:
	addi.d	$a0, $fp, 752
	sub.d	$a1, $a1, $a3
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 624
	b	.LBB14_13
.LBB14_10:
	bgeu	$a1, $a3, .LBB14_13
# %bb.11:
	alsl.d	$a2, $a1, $a2, 2
	beq	$a0, $a2, .LBB14_13
# %bb.12:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i128
	st.d	$a2, $fp, 760
.LBB14_13:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit129
	ld.w	$a0, $fp, 628
	ld.d	$a2, $fp, 1160
	beqz	$a0, .LBB14_15
# %bb.14:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit129
	ori	$a0, $zero, 1
	blt	$a0, $a1, .LBB14_21
.LBB14_15:
	ld.d	$a0, $fp, 864
	ld.d	$a3, $fp, 856
	st.w	$zero, $fp, 636
	sub.d	$a4, $a0, $a3
	srai.d	$a4, $a4, 2
	st.d	$a2, $fp, 1168
	bgeu	$a4, $a2, .LBB14_17
# %bb.16:
	addi.d	$a0, $fp, 856
	sub.d	$a1, $a2, $a4
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 624
	b	.LBB14_20
.LBB14_17:
	bgeu	$a2, $a4, .LBB14_20
# %bb.18:
	alsl.d	$a2, $a2, $a3, 2
	beq	$a0, $a2, .LBB14_20
# %bb.19:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i131
	st.d	$a2, $fp, 864
.LBB14_20:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit132
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh17calc_distributionEi)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 1160
.LBB14_21:
	move	$a0, $fp
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZN4Mesh13calc_celltypeEm)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	b	.LBB14_112
.LBB14_22:
	ori	$s2, $zero, 1
	move	$a4, $a2
	move	$s3, $a1
.LBB14_23:
	ld.w	$a5, $fp, 0
	addi.d	$a5, $a5, -2
	sltui	$a5, $a5, 1
	mul.d	$a1, $a4, $a1
	slli.d	$a0, $a0, 2
	ld.w	$a4, $fp, 628
	maskeqz	$a0, $a0, $a5
	sub.w	$s0, $a1, $a0
	st.d	$s0, $fp, 1160
	st.w	$zero, $fp, 636
	beqz	$a4, .LBB14_26
# %bb.24:
	ld.d	$a0, $fp, 736
	ld.d	$a4, $fp, 728
	ld.w	$a1, $fp, 624
	st.d	$s0, $fp, 1168
	sub.d	$a5, $a0, $a4
	srai.d	$a5, $a5, 2
	addi.d	$s0, $fp, 728
	bgeu	$a5, $a1, .LBB14_27
# %bb.25:
	move	$s4, $a2
	move	$s5, $a3
	sub.d	$a1, $a1, $a5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 624
	b	.LBB14_31
.LBB14_26:
	move	$s4, $a2
	move	$s5, $a3
	b	.LBB14_45
.LBB14_27:
	bgeu	$a1, $a5, .LBB14_30
# %bb.28:
	alsl.d	$a4, $a1, $a4, 2
	beq	$a0, $a4, .LBB14_30
# %bb.29:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i134
	move	$s4, $a2
	move	$s5, $a3
	st.d	$a4, $fp, 736
	b	.LBB14_31
.LBB14_30:
	move	$s4, $a2
	move	$s5, $a3
.LBB14_31:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit135
	ld.d	$a0, $fp, 760
	ld.d	$a2, $fp, 752
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB14_33
# %bb.32:
	addi.d	$a0, $fp, 752
	sub.d	$a1, $a1, $a3
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 624
	b	.LBB14_36
.LBB14_33:
	bgeu	$a1, $a3, .LBB14_36
# %bb.34:
	alsl.d	$a2, $a1, $a2, 2
	beq	$a0, $a2, .LBB14_36
# %bb.35:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i137
	st.d	$a2, $fp, 760
.LBB14_36:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit138
	ld.d	$a0, $s0, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB14_41
# %bb.37:                               # %.lr.ph
	ld.d	$a2, $fp, 1168
	move	$a3, $zero
	move	$a4, $a0
	b	.LBB14_39
	.p2align	4, , 16
.LBB14_38:                              #   in Loop: Header=BB14_39 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 4
	bge	$a3, $a1, .LBB14_41
.LBB14_39:                              # =>This Inner Loop Header: Depth=1
	div.du	$a5, $a2, $a1
	st.w	$a5, $a4, 0
	ld.w	$a1, $fp, 624
	mod.du	$a6, $a2, $a1
	addi.w	$a6, $a6, 0
	bge	$a3, $a6, .LBB14_38
# %bb.40:                               #   in Loop: Header=BB14_39 Depth=1
	addi.d	$a1, $a5, 1
	st.w	$a1, $a4, 0
	ld.w	$a1, $fp, 624
	b	.LBB14_38
.LBB14_41:                              # %._crit_edge
	ld.d	$a1, $fp, 752
	st.w	$zero, $a1, 0
	ld.w	$a2, $fp, 624
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB14_44
# %bb.42:                               # %.lr.ph236
	move	$a2, $zero
	addi.d	$a3, $a1, 4
	ori	$a4, $zero, 1
	move	$a5, $a0
	.p2align	4, , 16
.LBB14_43:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	add.d	$a2, $a6, $a2
	st.w	$a2, $a3, 0
	ld.w	$a6, $fp, 624
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, 4
	blt	$a4, $a6, .LBB14_43
.LBB14_44:                              # %._crit_edge237
	ld.w	$a2, $fp, 620
	slli.d	$a2, $a2, 2
	ldx.w	$s0, $a0, $a2
	st.d	$s0, $fp, 1160
	ldx.w	$a0, $a1, $a2
	st.w	$a0, $fp, 636
.LBB14_45:
	addi.d	$s1, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a3, $a0, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1328
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a3, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1336
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a3, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1312
	ld.d	$a2, $fp, 1304
	ld.d	$a4, $fp, 1160
	st.d	$a0, $fp, 1352
	sub.d	$a0, $a1, $a2
	srai.d	$a0, $a0, 2
	addi.d	$s0, $fp, 1304
	bgeu	$a0, $a4, .LBB14_47
# %bb.46:
	sub.d	$a1, $a4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	move	$a3, $s5
	b	.LBB14_50
.LBB14_47:
	move	$a3, $s5
	bgeu	$a4, $a0, .LBB14_50
# %bb.48:
	alsl.d	$a0, $a4, $a2, 2
	beq	$a1, $a0, .LBB14_50
# %bb.49:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i140
	st.d	$a0, $fp, 1312
.LBB14_50:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit141
	blt	$s4, $s2, .LBB14_71
# %bb.51:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit141
	blt	$s3, $s2, .LBB14_71
# %bb.52:                               # %.preheader.preheader
	move	$a0, $zero
	addi.w	$a1, $s3, 1
	move	$a4, $s2
	b	.LBB14_54
	.p2align	4, , 16
.LBB14_53:                              # %._crit_edge242
                                        #   in Loop: Header=BB14_54 Depth=1
	addi.w	$a4, $a2, 1
	beq	$a2, $s4, .LBB14_71
.LBB14_54:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_57 Depth 2
                                        #     Child Loop BB14_64 Depth 2
	move	$a2, $a4
	sltui	$a4, $a4, 1
	xor	$t2, $a2, $s4
	ld.d	$a5, $fp, 1160
	ld.d	$a6, $fp, 1304
	ld.d	$a7, $fp, 1328
	ld.d	$t0, $fp, 1336
	ld.d	$t1, $fp, 1352
	sltui	$t2, $t2, 1
	or	$t5, $a4, $t2
	move	$t4, $s2
	move	$t3, $s2
	bnez	$t5, .LBB14_64
	b	.LBB14_57
	.p2align	4, , 16
.LBB14_55:                              #   in Loop: Header=BB14_57 Depth=2
	addi.w	$a0, $a0, 1
.LBB14_56:                              #   in Loop: Header=BB14_57 Depth=2
	addi.w	$t4, $t4, 1
	beq	$a1, $t4, .LBB14_53
.LBB14_57:                              # %.lr.ph241.split.us
                                        #   Parent Loop BB14_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $fp, 1124
	sltu	$t3, $zero, $t3
	xor	$t5, $s3, $t4
	sltui	$t5, $t5, 1
	and	$t6, $a4, $t5
	and	$t6, $t3, $t6
	bnez	$t6, .LBB14_56
# %bb.58:                               # %.lr.ph241.split.us
                                        #   in Loop: Header=BB14_57 Depth=2
	and	$t5, $t5, $t2
	and	$t3, $t5, $t3
	bnez	$t3, .LBB14_56
# %bb.59:                               #   in Loop: Header=BB14_57 Depth=2
	ld.w	$t3, $fp, 636
	blt	$a0, $t3, .LBB14_55
# %bb.60:                               #   in Loop: Header=BB14_57 Depth=2
	add.w	$t5, $t3, $a5
	bge	$a0, $t5, .LBB14_55
# %bb.61:                               #   in Loop: Header=BB14_57 Depth=2
	sub.w	$t3, $a0, $t3
	slli.d	$t3, $t3, 2
	stx.w	$a0, $a6, $t3
	stx.w	$t4, $a7, $t3
	stx.w	$a2, $t0, $t3
	stx.w	$zero, $t1, $t3
	b	.LBB14_55
	.p2align	4, , 16
.LBB14_62:                              #   in Loop: Header=BB14_64 Depth=2
	addi.w	$a0, $a0, 1
.LBB14_63:                              #   in Loop: Header=BB14_64 Depth=2
	addi.w	$t3, $t3, 1
	beq	$a1, $t3, .LBB14_53
.LBB14_64:                              # %.lr.ph241.split
                                        #   Parent Loop BB14_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $fp, 1124
	bnez	$t3, .LBB14_66
# %bb.65:                               # %.lr.ph241.split
                                        #   in Loop: Header=BB14_64 Depth=2
	bnez	$t4, .LBB14_63
.LBB14_66:                              #   in Loop: Header=BB14_64 Depth=2
	sltu	$t4, $zero, $t4
	xor	$t5, $s3, $t3
	sltui	$t5, $t5, 1
	and	$t6, $a4, $t5
	and	$t6, $t4, $t6
	bnez	$t6, .LBB14_63
# %bb.67:                               #   in Loop: Header=BB14_64 Depth=2
	and	$t5, $t5, $t2
	and	$t4, $t5, $t4
	bnez	$t4, .LBB14_63
# %bb.68:                               #   in Loop: Header=BB14_64 Depth=2
	ld.w	$t4, $fp, 636
	blt	$a0, $t4, .LBB14_62
# %bb.69:                               #   in Loop: Header=BB14_64 Depth=2
	add.w	$t5, $t4, $a5
	bge	$a0, $t5, .LBB14_62
# %bb.70:                               #   in Loop: Header=BB14_64 Depth=2
	sub.w	$t4, $a0, $t4
	slli.d	$t4, $t4, 2
	stx.w	$a0, $a6, $t4
	stx.w	$t3, $a7, $t4
	stx.w	$a2, $t0, $t4
	stx.w	$zero, $t1, $t4
	b	.LBB14_62
.LBB14_71:                              # %._crit_edge247
	ld.w	$a1, $fp, 624
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh13calc_celltypeEm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh24calc_spatial_coordinatesEi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB14_109
# %bb.72:                               # %.lr.ph255
	addi.d	$s1, $fp, 784
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$a1, $zero, 1
	b	.LBB14_74
	.p2align	4, , 16
.LBB14_73:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit156
                                        #   in Loop: Header=BB14_74 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a1, $a2, 1
	bge	$a2, $a0, .LBB14_109
.LBB14_74:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_76 Depth 2
                                        #     Child Loop BB14_89 Depth 2
	ld.d	$a0, $fp, 1160
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $fp, 1176
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh20calc_neighbors_localEv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(KDTree_Initialize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB14_80
# %bb.75:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB14_74 Depth=1
	move	$a0, $zero
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB14_76:                              # %.lr.ph.i
                                        #   Parent Loop BB14_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 1416
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $a1, $a0
	ld.d	$a1, $fp, 1440
	fst.d	$fa0, $sp, 72
	fldx.d	$fa1, $a1, $a0
	ld.d	$a1, $fp, 1464
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 88
	fldx.d	$fa0, $a1, $a0
	ld.d	$a1, $fp, 1488
	fst.d	$fa0, $sp, 80
	fldx.d	$fa1, $a1, $a0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 96
	addi.d	$a1, $sp, 72
	move	$a0, $s1
	pcaddu18i	$ra, %call36(KDTree_AddElement)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 1160
	bstrpick.d	$a0, $s0, 31, 0
	addi.w	$s0, $s0, 1
	bltu	$a0, $s2, .LBB14_76
# %bb.77:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
                                        #   in Loop: Header=BB14_74 Depth=1
	beqz	$s2, .LBB14_80
# %bb.78:                               # %.noexc144
                                        #   in Loop: Header=BB14_74 Depth=1
	slli.d	$s3, $s2, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	alsl.d	$a0, $s2, $a0, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.w	$zero, $s0, 0
	beq	$s2, $a0, .LBB14_81
# %bb.79:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
                                        #   in Loop: Header=BB14_74 Depth=1
	addi.d	$a0, $s0, 4
	addi.d	$a2, $s3, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	b	.LBB14_81
	.p2align	4, , 16
.LBB14_80:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
                                        #   in Loop: Header=BB14_74 Depth=1
	move	$a0, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	move	$s0, $zero
.LBB14_81:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
                                        #   in Loop: Header=BB14_74 Depth=1
	ld.d	$a4, $fp, 1416
	ld.d	$a5, $fp, 1440
	ld.d	$a6, $fp, 1464
	ld.d	$a7, $fp, 1488
.Ltmp88:
	addi.w	$a3, $a0, 0
	addi.d	$a1, $sp, 204
	move	$a0, $s1
	move	$a2, $s0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(KDTree_QueryCircleIntersect_Double)
	jirl	$ra, $ra, 0
.Ltmp89:
# %bb.82:                               #   in Loop: Header=BB14_74 Depth=1
	ld.d	$s2, $fp, 1176
	srli.d	$a0, $s2, 61
	bnez	$a0, .LBB14_139
# %bb.83:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i145
                                        #   in Loop: Header=BB14_74 Depth=1
	beqz	$s2, .LBB14_86
# %bb.84:                               #   in Loop: Header=BB14_74 Depth=1
	slli.d	$s4, $s2, 2
.Ltmp91:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp92:
# %bb.85:                               # %.noexc149
                                        #   in Loop: Header=BB14_74 Depth=1
	move	$s3, $a0
	st.d	$a0, $sp, 176
	alsl.d	$s2, $s2, $a0, 2
	st.d	$s2, $sp, 192
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 204
	st.d	$s2, $sp, 184
	ori	$a7, $zero, 1
	bge	$a0, $a7, .LBB14_87
	b	.LBB14_91
	.p2align	4, , 16
.LBB14_86:                              # %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i147
                                        #   in Loop: Header=BB14_74 Depth=1
	move	$s3, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 192
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 176
	ld.w	$a0, $sp, 204
	st.d	$s2, $sp, 184
	ori	$a7, $zero, 1
	blt	$a0, $a7, .LBB14_91
.LBB14_87:                              # %.lr.ph250
                                        #   in Loop: Header=BB14_74 Depth=1
	ld.d	$a1, $fp, 1352
	ld.w	$a2, $fp, 1120
	move	$a3, $zero
	move	$a4, $s0
	b	.LBB14_89
	.p2align	4, , 16
.LBB14_88:                              #   in Loop: Header=BB14_89 Depth=2
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 4
	bgeu	$a3, $a0, .LBB14_91
.LBB14_89:                              #   Parent Loop BB14_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a6, $a1, $a5
	bge	$a6, $a2, .LBB14_88
# %bb.90:                               #   in Loop: Header=BB14_89 Depth=2
	stx.w	$a7, $s3, $a5
	b	.LBB14_88
	.p2align	4, , 16
.LBB14_91:                              # %._crit_edge251
                                        #   in Loop: Header=BB14_74 Depth=1
.Ltmp94:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(KDTree_Destroy)
	jirl	$ra, $ra, 0
.Ltmp95:
# %bb.92:                               #   in Loop: Header=BB14_74 Depth=1
	st.w	$zero, $sp, 172
	st.w	$zero, $sp, 168
.Ltmp97:
	addi.d	$a1, $sp, 176
	addi.d	$a2, $sp, 172
	addi.d	$a3, $sp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_)
	jirl	$ra, $ra, 0
.Ltmp98:
# %bb.93:                               #   in Loop: Header=BB14_74 Depth=1
	move	$s4, $a0
	st.w	$zero, $sp, 80
	st.d	$zero, $sp, 88
	addi.d	$a0, $sp, 80
	st.d	$a0, $sp, 96
	st.d	$a0, $sp, 104
	st.d	$zero, $sp, 112
	st.w	$zero, $sp, 128
	st.d	$zero, $sp, 136
	addi.d	$a0, $sp, 128
	st.d	$a0, $sp, 144
	st.d	$a0, $sp, 152
	ld.d	$a0, $sp, 184
	ld.d	$s3, $sp, 176
	st.d	$zero, $sp, 160
	ld.w	$s5, $sp, 172
	ld.w	$s6, $sp, 168
	sub.d	$s8, $a0, $s3
	st.d	$zero, $sp, 48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 56
	beq	$a0, $s3, .LBB14_98
# %bb.94:                               #   in Loop: Header=BB14_74 Depth=1
	addi.w	$a0, $zero, -3
	lu52i.d	$a0, $a0, 2047
	bgeu	$s8, $a0, .LBB14_137
# %bb.95:                               # %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
                                        #   in Loop: Header=BB14_74 Depth=1
.Ltmp100:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp101:
# %bb.96:                               # %.noexc152
                                        #   in Loop: Header=BB14_74 Depth=1
	move	$s7, $a0
	st.d	$a0, $sp, 48
	add.d	$s2, $a0, $s8
	st.d	$s2, $sp, 64
	ori	$a0, $zero, 5
	bltu	$s8, $a0, .LBB14_107
# %bb.97:                               #   in Loop: Header=BB14_74 Depth=1
	move	$a0, $s7
	move	$a1, $s3
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB14_99
	.p2align	4, , 16
.LBB14_98:                              # %.thread
                                        #   in Loop: Header=BB14_74 Depth=1
	move	$s7, $zero
	st.d	$zero, $sp, 48
	st.d	$s8, $sp, 64
	move	$s2, $s8
.LBB14_99:                              #   in Loop: Header=BB14_74 Depth=1
	st.d	$s2, $sp, 56
.Ltmp105:
	addi.d	$a3, $sp, 48
	addi.d	$a5, $sp, 72
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s6
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus)
	jirl	$ra, $ra, 0
.Ltmp106:
# %bb.100:                              #   in Loop: Header=BB14_74 Depth=1
	beqz	$s7, .LBB14_102
# %bb.101:                              #   in Loop: Header=BB14_74 Depth=1
	sub.d	$a1, $s2, $s7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_102:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit
                                        #   in Loop: Header=BB14_74 Depth=1
	st.d	$s4, $fp, 1160
.Ltmp108:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh24calc_spatial_coordinatesEi)
	jirl	$ra, $ra, 0
.Ltmp109:
# %bb.103:                              #   in Loop: Header=BB14_74 Depth=1
	ld.d	$a1, $sp, 136
.Ltmp111:
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp112:
# %bb.104:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i
                                        #   in Loop: Header=BB14_74 Depth=1
	ld.d	$a1, $sp, 88
.Ltmp114:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp115:
# %bb.105:                              # %_ZN10MallocPlusD2Ev.exit
                                        #   in Loop: Header=BB14_74 Depth=1
	beqz	$s3, .LBB14_73
# %bb.106:                              #   in Loop: Header=BB14_74 Depth=1
	ld.d	$a0, $sp, 192
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB14_73
.LBB14_107:                             #   in Loop: Header=BB14_74 Depth=1
	ori	$a0, $zero, 4
	bne	$s8, $a0, .LBB14_99
# %bb.108:                              #   in Loop: Header=BB14_74 Depth=1
	ld.w	$a0, $s3, 0
	st.w	$a0, $s7, 0
	b	.LBB14_99
.LBB14_109:                             # %._crit_edge256
	ld.d	$a1, $fp, 1304
	ld.d	$a2, $fp, 1312
	beq	$a2, $a1, .LBB14_111
# %bb.110:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i143
	st.d	$a1, $fp, 1312
.LBB14_111:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit
	ld.d	$a1, $fp, 1160
	st.d	$a1, $fp, 1176
.LBB14_112:
	ld.w	$a1, $fp, 1136
	move	$a3, $zero
	st.d	$zero, $sp, 72
	ld.w	$a2, $fp, 1144
	st.w	$a1, $sp, 80
	st.w	$a1, $sp, 84
	st.w	$zero, $sp, 176
	st.w	$a2, $sp, 180
	st.w	$zero, $sp, 184
	st.w	$a2, $sp, 188
	ori	$s6, $zero, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a1, $zero, -1
	lu52i.d	$s4, $a1, 511
	b	.LBB14_114
	.p2align	4, , 16
.LBB14_113:                             # %._crit_edge264
                                        #   in Loop: Header=BB14_114 Depth=1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ori	$a1, $zero, 4
	beq	$a3, $a1, .LBB14_135
.LBB14_114:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_117 Depth 2
                                        #       Child Loop BB14_121 Depth 3
	ori	$a1, $zero, 2
	sll.w	$a1, $a1, $a0
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	blt	$a1, $s6, .LBB14_113
# %bb.115:                              # %.lr.ph263
                                        #   in Loop: Header=BB14_114 Depth=1
	slli.d	$a2, $a3, 2
	addi.d	$a3, $sp, 176
	ldx.w	$a3, $a2, $a3
	addi.d	$a4, $sp, 72
	ldx.w	$a2, $a2, $a4
	addi.d	$a4, $a3, 1
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	mul.d	$s3, $a1, $a3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$s7, $a2, 1
	b	.LBB14_117
	.p2align	4, , 16
.LBB14_116:                             # %._crit_edge260
                                        #   in Loop: Header=BB14_117 Depth=2
	addi.w	$s3, $s3, 1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	mul.w	$a2, $a1, $a2
	bge	$s3, $a2, .LBB14_113
.LBB14_117:                             #   Parent Loop BB14_114 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_121 Depth 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	mul.w	$s5, $a2, $a1
	ori	$a1, $zero, 2
	sll.w	$a1, $a1, $a0
	mul.w	$a1, $a1, $s7
	blt	$s5, $a1, .LBB14_121
# %bb.118:                              # %.._crit_edge260_crit_edge
                                        #   in Loop: Header=BB14_117 Depth=2
	ori	$a1, $zero, 2
	sll.w	$a1, $a1, $a0
	b	.LBB14_116
	.p2align	4, , 16
.LBB14_119:                             #   in Loop: Header=BB14_121 Depth=3
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 712
.LBB14_120:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit170
                                        #   in Loop: Header=BB14_121 Depth=3
	ld.wu	$a0, $fp, 1120
	addi.w	$s5, $s5, 1
	ori	$a1, $zero, 2
	sll.w	$a1, $a1, $a0
	mul.w	$a2, $a1, $s7
	bge	$s5, $a2, .LBB14_116
.LBB14_121:                             # %.lr.ph259
                                        #   Parent Loop BB14_114 Depth=1
                                        #     Parent Loop BB14_117 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $fp, 688
	ld.d	$a1, $fp, 696
	beq	$a0, $a1, .LBB14_123
# %bb.122:                              #   in Loop: Header=BB14_121 Depth=3
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 688
	ld.d	$a0, $fp, 712
	ld.d	$a1, $fp, 720
	bne	$a0, $a1, .LBB14_119
	b	.LBB14_129
	.p2align	4, , 16
.LBB14_123:                             #   in Loop: Header=BB14_121 Depth=3
	ld.d	$s1, $fp, 680
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB14_136
# %bb.124:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB14_121 Depth=3
	srai.d	$a0, $s0, 2
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s4
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s4, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s8, $a1, $a0
	slli.d	$a0, $s8, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s6, .LBB14_126
# %bb.125:                              #   in Loop: Header=BB14_121 Depth=3
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB14_126:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB14_121 Depth=3
	beqz	$s1, .LBB14_128
# %bb.127:                              #   in Loop: Header=BB14_121 Depth=3
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_128:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB14_121 Depth=3
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 680
	st.d	$a0, $fp, 688
	alsl.d	$a0, $s8, $s2, 2
	st.d	$a0, $fp, 696
	ld.d	$a0, $fp, 712
	ld.d	$a1, $fp, 720
	bne	$a0, $a1, .LBB14_119
.LBB14_129:                             #   in Loop: Header=BB14_121 Depth=3
	ld.d	$s1, $fp, 704
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB14_136
# %bb.130:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i165
                                        #   in Loop: Header=BB14_121 Depth=3
	srai.d	$a0, $s0, 2
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s4
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s4, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s8, $a1, $a0
	slli.d	$a0, $s8, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s6, .LBB14_132
# %bb.131:                              #   in Loop: Header=BB14_121 Depth=3
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB14_132:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i167
                                        #   in Loop: Header=BB14_121 Depth=3
	beqz	$s1, .LBB14_134
# %bb.133:                              #   in Loop: Header=BB14_121 Depth=3
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_134:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i169
                                        #   in Loop: Header=BB14_121 Depth=3
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 704
	st.d	$a0, $fp, 712
	alsl.d	$a0, $s8, $s2, 2
	st.d	$a0, $fp, 720
	b	.LBB14_120
.LBB14_135:
	fld.d	$fs0, $sp, 208                  # 8-byte Folded Reload
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
.LBB14_136:
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB14_137:                             # %.noexc.i.i
.Ltmp102:
	pcaddu18i	$ra, %call36(_ZSt28__throw_bad_array_new_lengthv)
	jirl	$ra, $ra, 0
.Ltmp103:
# %bb.138:                              # %.noexc151
.LBB14_139:
.Ltmp117:
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp118:
# %bb.140:                              # %.noexc148
.LBB14_141:                             # %.loopexit189
.Ltmp93:
	move	$fp, $a0
	b	.LBB14_156
.LBB14_142:
.Ltmp116:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB14_143:
.Ltmp113:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB14_144:
.Ltmp107:
	move	$fp, $a0
	beqz	$s7, .LBB14_153
# %bb.145:
	sub.d	$a1, $s2, $s7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB14_153
.LBB14_146:
.Ltmp96:
	move	$fp, $a0
	b	.LBB14_154
.LBB14_147:
.Ltmp99:
	ld.d	$s3, $sp, 176
	move	$fp, $a0
	b	.LBB14_154
.LBB14_148:                             # %.loopexit.split-lp
.Ltmp119:
	move	$fp, $a0
	b	.LBB14_156
.LBB14_149:
.Ltmp90:
	move	$fp, $a0
	b	.LBB14_156
.LBB14_150:                             # %.loopexit190
.Ltmp110:
	b	.LBB14_152
.LBB14_151:                             # %.loopexit.split-lp191
.Ltmp104:
.LBB14_152:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit158
	move	$fp, $a0
.LBB14_153:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit158
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN10MallocPlusD2Ev)
	jirl	$ra, $ra, 0
.LBB14_154:
	beqz	$s3, .LBB14_156
# %bb.155:
	ld.d	$a0, $sp, 192
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_156:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit160
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN4Mesh4initEiid16partition_methodi, .Lfunc_end14-_ZN4Mesh4initEiid16partition_methodi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp88-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp88
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin6          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin6          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin6          # >> Call Site 4 <<
	.uleb128 .Ltmp94-.Ltmp92                #   Call between .Ltmp92 and .Ltmp94
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin6          # >> Call Site 5 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin6          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin6          # >> Call Site 6 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin6          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp110-.Lfunc_begin6         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp105-.Ltmp101              #   Call between .Ltmp101 and .Ltmp105
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin6         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp108-.Ltmp106              #   Call between .Ltmp106 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin6         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin6         #     jumps to .Ltmp113
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp114-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin6         #     jumps to .Ltmp116
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp115-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp102-.Ltmp115              #   Call between .Ltmp115 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin6         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin6         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Lfunc_end14-.Ltmp118          #   Call between .Ltmp118 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
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
	.globl	_ZN4Mesh13calc_celltypeEm       # -- Begin function _ZN4Mesh13calc_celltypeEm
	.p2align	5
	.type	_ZN4Mesh13calc_celltypeEm,@function
_ZN4Mesh13calc_celltypeEm:              # @_ZN4Mesh13calc_celltypeEm
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
	move	$s0, $a0
	ld.d	$a2, $a0, 1360
	move	$fp, $a1
	addi.d	$s1, $a0, 8
	beqz	$a2, .LBB15_4
# %bb.1:
	move	$a0, $s1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	bgeu	$a0, $fp, .LBB15_5
# %bb.2:
	ld.d	$a1, $s0, 1360
	beqz	$a1, .LBB15_4
# %bb.3:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 1360
.LBB15_4:                               # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a3, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 4
	move	$a0, $s1
	move	$a1, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 1360
.LBB15_5:
	beqz	$fp, .LBB15_16
# %bb.6:                                # %.lr.ph
	ld.d	$a0, $s0, 1360
	ld.d	$a1, $s0, 1328
	ld.d	$a2, $s0, 1352
	ld.d	$a3, $s0, 880
	ld.d	$a4, $s0, 904
	ld.d	$a5, $s0, 1336
	ld.d	$a6, $s0, 928
	ld.d	$a7, $s0, 952
	ori	$t0, $zero, 1
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	addi.w	$t2, $zero, -2
	lu32i.d	$t2, 0
	addi.w	$t3, $zero, -3
	lu32i.d	$t3, 0
	addi.w	$t4, $zero, -4
	lu32i.d	$t4, 0
	ori	$t5, $zero, 1
	b	.LBB15_8
	.p2align	4, , 16
.LBB15_7:                               #   in Loop: Header=BB15_8 Depth=1
	bstrpick.d	$t6, $t5, 31, 0
	addi.d	$a0, $a0, 4
	addi.w	$t5, $t5, 1
	bgeu	$t6, $fp, .LBB15_16
.LBB15_8:                               # =>This Inner Loop Header: Depth=1
	addi.w	$t6, $t5, -1
	st.w	$t0, $a0, 0
	slli.d	$s0, $t6, 2
	ldx.w	$t8, $a2, $s0
	ldx.w	$s1, $a1, $s0
	slli.d	$t7, $t8, 2
	ldx.w	$s2, $a3, $t7
	alsl.d	$t7, $t6, $a2, 2
	blt	$s1, $s2, .LBB15_12
# %bb.9:                                #   in Loop: Header=BB15_8 Depth=1
	slli.d	$s2, $t8, 2
	ldx.w	$s2, $a4, $s2
	blt	$s2, $s1, .LBB15_13
.LBB15_10:                              #   in Loop: Header=BB15_8 Depth=1
	ldx.w	$s0, $a5, $s0
	slli.d	$s1, $t8, 2
	ldx.w	$s1, $a6, $s1
	blt	$s0, $s1, .LBB15_14
.LBB15_11:                              #   in Loop: Header=BB15_8 Depth=1
	slli.d	$t6, $t8, 2
	ldx.w	$t6, $a7, $t6
	bge	$t6, $s0, .LBB15_7
	b	.LBB15_15
	.p2align	4, , 16
.LBB15_12:                              #   in Loop: Header=BB15_8 Depth=1
	alsl.d	$t8, $t6, $a1, 2
	st.w	$t1, $a0, 0
	ld.w	$s1, $t8, 0
	ld.w	$t8, $t7, 0
	slli.d	$s2, $t8, 2
	ldx.w	$s2, $a4, $s2
	bge	$s2, $s1, .LBB15_10
.LBB15_13:                              #   in Loop: Header=BB15_8 Depth=1
	st.w	$t2, $a0, 0
	ld.w	$t8, $t7, 0
	ldx.w	$s0, $a5, $s0
	slli.d	$s1, $t8, 2
	ldx.w	$s1, $a6, $s1
	bge	$s0, $s1, .LBB15_11
.LBB15_14:                              #   in Loop: Header=BB15_8 Depth=1
	alsl.d	$t6, $t6, $a5, 2
	st.w	$t3, $a0, 0
	ld.w	$s0, $t6, 0
	ld.w	$t8, $t7, 0
	slli.d	$t6, $t8, 2
	ldx.w	$t6, $a7, $t6
	bge	$t6, $s0, .LBB15_7
.LBB15_15:                              #   in Loop: Header=BB15_8 Depth=1
	st.w	$t4, $a0, 0
	b	.LBB15_7
.LBB15_16:                              # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end15:
	.size	_ZN4Mesh13calc_celltypeEm, .Lfunc_end15-_ZN4Mesh13calc_celltypeEm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh20calc_neighbors_localEv # -- Begin function _ZN4Mesh20calc_neighbors_localEv
	.p2align	5
	.type	_ZN4Mesh20calc_neighbors_localEv,@function
_ZN4Mesh20calc_neighbors_localEv:       # @_ZN4Mesh20calc_neighbors_localEv
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
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
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 616
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_128
# %bb.1:
	ld.w	$a0, $fp, 592
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 592
	addi.d	$s0, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 1160
	bltu	$a0, $s1, .LBB16_14
# %bb.2:
	ld.d	$s0, $fp, 640
	beqz	$s0, .LBB16_23
.LBB16_3:
	ld.d	$a0, $fp, 648
	beqz	$a0, .LBB16_24
.LBB16_4:                               # %_ZN4Mesh10set_boundsEi.exit
	addi.w	$a1, $s1, 0
	st.w	$zero, $s0, 0
	ori	$a2, $zero, 1
	st.w	$s1, $a0, 0
	blt	$a1, $a2, .LBB16_9
# %bb.5:                                # %.lr.ph
	ld.d	$a0, $fp, 1368
	ld.d	$a1, $fp, 1376
	ld.d	$a3, $fp, 1384
	ld.d	$a4, $fp, 1392
	bstrpick.d	$a2, $s1, 30, 0
	ori	$a5, $zero, 24
	bgeu	$a2, $a5, .LBB16_31
# %bb.6:
	move	$a5, $zero
.LBB16_7:                               # %scalar.ph.preheader
	alsl.d	$a4, $a5, $a4, 2
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a1, $a5, $a1, 2
	alsl.d	$a0, $a5, $a0, 2
	sub.d	$a2, $a2, $a5
	addi.w	$a5, $zero, -98
	lu32i.d	$a5, 0
	.p2align	4, , 16
.LBB16_8:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a0, 0
	st.w	$a5, $a1, 0
	st.w	$a5, $a3, 0
	st.w	$a5, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB16_8
.LBB16_9:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(calc_neighbor_type)
	ld.w	$a0, $a0, %pc_lo12(calc_neighbor_type)
	beqz	$a0, .LBB16_25
# %bb.10:                               # %._crit_edge
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_128
# %bb.11:
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	mul.w	$a0, $a0, $a0
	ori	$a1, $zero, 2
	sll.w	$s2, $a1, $a0
	addi.w	$a1, $zero, -1
	bge	$a1, $s2, .LBB16_135
# %bb.12:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	ori	$a1, $zero, 30
	bgeu	$a1, $a0, .LBB16_40
# %bb.13:
	move	$s2, $zero
	move	$s0, $zero
	b	.LBB16_41
.LBB16_14:
	ld.d	$a1, $fp, 1368
	beqz	$a1, .LBB16_16
# %bb.15:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1368
.LBB16_16:
	ld.d	$a1, $fp, 1376
	beqz	$a1, .LBB16_18
# %bb.17:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1376
.LBB16_18:
	ld.d	$a1, $fp, 1384
	beqz	$a1, .LBB16_20
# %bb.19:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1384
.LBB16_20:
	ld.d	$a1, $fp, 1392
	beqz	$a1, .LBB16_22
# %bb.21:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1392
.LBB16_22:
	ld.d	$a1, $fp, 1160
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a3, $a0, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1160
	st.d	$a0, $fp, 1368
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a3, $a0, %pc_lo12(.L.str.43)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1160
	st.d	$a0, $fp, 1376
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a3, $a0, %pc_lo12(.L.str.44)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1160
	st.d	$a0, $fp, 1384
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a3, $a0, %pc_lo12(.L.str.45)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 1160
	st.d	$a0, $fp, 1392
	ld.d	$s0, $fp, 640
	bnez	$s0, .LBB16_3
.LBB16_23:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 640
	ld.d	$a0, $fp, 648
	bnez	$a0, .LBB16_4
.LBB16_24:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 648
	b	.LBB16_4
.LBB16_25:
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1160
	ld.w	$a1, $fp, 1144
	st.d	$a0, $fp, 1176
	ld.wu	$a2, $fp, 1120
	addi.d	$a1, $a1, 1
	ld.w	$a4, $fp, 1136
	ori	$a3, $zero, 2
	sll.w	$a5, $a3, $a2
	mul.w	$a3, $a5, $a1
	addi.d	$a1, $a4, 1
	mul.w	$a1, $a1, $a5
	beqz	$a0, .LBB16_68
# %bb.26:                               # %.lr.ph548
	ld.d	$a4, $fp, 1352
	ld.d	$a5, $fp, 1336
	ld.d	$a6, $fp, 1328
	ori	$a7, $zero, 8
	bgeu	$a0, $a7, .LBB16_129
# %bb.27:
	move	$a7, $zero
	move	$t2, $zero
	move	$t3, $zero
	move	$t0, $a3
	move	$t1, $a1
.LBB16_28:                              # %scalar.ph593.preheader
	addi.w	$t4, $a7, 1
	ori	$t5, $zero, 2
	.p2align	4, , 16
.LBB16_29:                              # %scalar.ph593
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a7, $a7, 2
	ldx.w	$t6, $a4, $a7
	ldx.w	$t7, $a5, $a7
	sub.d	$t6, $a2, $t6
	sll.w	$t6, $t5, $t6
	mul.w	$t8, $t7, $t6
	slt	$s0, $t8, $t0
	maskeqz	$t8, $t8, $s0
	masknez	$t0, $t0, $s0
	or	$t0, $t8, $t0
	addi.d	$t7, $t7, 1
	mul.d	$t7, $t7, $t6
	addi.w	$t7, $t7, -1
	slt	$t8, $t2, $t7
	ldx.w	$a7, $a6, $a7
	maskeqz	$t7, $t7, $t8
	masknez	$t2, $t2, $t8
	or	$t2, $t7, $t2
	mul.w	$t7, $a7, $t6
	slt	$t8, $t7, $t1
	maskeqz	$t7, $t7, $t8
	masknez	$t1, $t1, $t8
	or	$t1, $t7, $t1
	addi.d	$a7, $a7, 1
	mul.d	$a7, $a7, $t6
	addi.w	$a7, $a7, -1
	slt	$t6, $t3, $a7
	maskeqz	$a7, $a7, $t6
	masknez	$t3, $t3, $t6
	or	$t3, $a7, $t3
	bstrpick.d	$a7, $t4, 31, 0
	addi.w	$t4, $t4, 1
	bltu	$a7, $a0, .LBB16_29
.LBB16_30:                              # %._crit_edge549
	slt	$a4, $t0, $a3
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $t0, $a4
	or	$a7, $a4, $a5
	slt	$a4, $t1, $a1
	masknez	$a5, $a1, $a4
	maskeqz	$a4, $t1, $a4
	or	$a5, $a4, $a5
	srai.d	$a4, $t2, 63
	andn	$a6, $t2, $a4
	srai.d	$a4, $t3, 63
	andn	$a4, $t3, $a4
	b	.LBB16_69
.LBB16_31:                              # %vector.memcheck
	sub.d	$a7, $a1, $a0
	ori	$a6, $zero, 32
	move	$a5, $zero
	bltu	$a7, $a6, .LBB16_7
# %bb.32:                               # %vector.memcheck
	sub.d	$a7, $a3, $a0
	bltu	$a7, $a6, .LBB16_7
# %bb.33:                               # %vector.memcheck
	sub.d	$a7, $a4, $a0
	ori	$a6, $zero, 32
	bltu	$a7, $a6, .LBB16_7
# %bb.34:                               # %vector.memcheck
	sub.d	$a7, $a3, $a1
	bltu	$a7, $a6, .LBB16_7
# %bb.35:                               # %vector.memcheck
	sub.d	$a7, $a4, $a1
	ori	$a6, $zero, 32
	bltu	$a7, $a6, .LBB16_7
# %bb.36:                               # %vector.memcheck
	sub.d	$a7, $a4, $a3
	bltu	$a7, $a6, .LBB16_7
# %bb.37:                               # %vector.ph
	bstrpick.d	$a5, $s1, 30, 3
	slli.d	$a5, $a5, 3
	addi.d	$a6, $a4, 16
	addi.d	$a7, $a3, 16
	addi.d	$t0, $a1, 16
	addi.d	$t1, $a0, 16
	vrepli.w	$vr0, -98
	move	$t2, $a5
	.p2align	4, , 16
.LBB16_38:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $t1, -16
	vst	$vr0, $t1, 0
	vst	$vr0, $t0, -16
	vst	$vr0, $t0, 0
	vst	$vr0, $a7, -16
	vst	$vr0, $a7, 0
	vst	$vr0, $a6, -16
	vst	$vr0, $a6, 0
	addi.d	$t2, $t2, -8
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB16_38
# %bb.39:                               # %middle.block
	bne	$a2, $a5, .LBB16_7
	b	.LBB16_9
.LBB16_40:                              # %.noexc459
	slli.d	$s1, $s2, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	alsl.d	$s2, $s2, $a0, 2
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB16_41:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
	st.w	$zero, $fp, 1128
.Ltmp120:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh24calc_spatial_coordinatesEi)
	jirl	$ra, $ra, 0
.Ltmp121:
# %bb.42:
	addi.d	$s1, $fp, 784
.Ltmp122:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(KDTree_Initialize)
	jirl	$ra, $ra, 0
.Ltmp123:
# %bb.43:                               # %.noexc460
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB16_47
# %bb.44:                               # %.lr.ph.i
	move	$a0, $zero
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB16_45:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 1416
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $a1, $a0
	ld.d	$a1, $fp, 1440
	fst.d	$fa0, $sp, 248
	fldx.d	$fa1, $a1, $a0
	ld.d	$a1, $fp, 1464
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 264
	fldx.d	$fa0, $a1, $a0
	ld.d	$a1, $fp, 1488
	fst.d	$fa0, $sp, 256
	fldx.d	$fa1, $a1, $a0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 272
.Ltmp124:
	addi.d	$a1, $sp, 248
	move	$a0, $s1
	pcaddu18i	$ra, %call36(KDTree_AddElement)
	jirl	$ra, $ra, 0
.Ltmp125:
# %bb.46:                               # %.noexc461
                                        #   in Loop: Header=BB16_45 Depth=1
	ld.d	$a1, $fp, 1160
	bstrpick.d	$a0, $s3, 31, 0
	addi.w	$s3, $s3, 1
	bltu	$a0, $a1, .LBB16_45
.LBB16_47:                              # %.loopexit537
	ld.d	$a0, $sp, 216
	ld.d	$a1, $sp, 224
.Ltmp127:
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp128:
# %bb.48:
	fld.d	$fa1, $fp, 336
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 336
.Ltmp129:
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
.Ltmp130:
# %bb.49:                               # %.preheader
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB16_64
# %bb.50:                               # %.lr.ph540
	move	$a0, $zero
	move	$s3, $zero
	ori	$s4, $zero, 1
	b	.LBB16_52
	.p2align	4, , 16
.LBB16_51:                              #   in Loop: Header=BB16_52 Depth=1
	ld.d	$a1, $fp, 1160
	addi.w	$s3, $s3, 1
	bstrpick.d	$a0, $s3, 31, 0
	bgeu	$a0, $a1, .LBB16_64
.LBB16_52:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 1368
	slli.d	$s5, $a0, 2
	stx.w	$s3, $a1, $s5
	ld.d	$a1, $fp, 1440
	ld.d	$a2, $fp, 1416
	slli.d	$s6, $a0, 3
	fldx.d	$fa0, $a1, $s6
	fldx.d	$fa1, $a2, $s6
	vldi	$vr2, -944
	fmul.d	$fa0, $fa0, $fa2
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 184
	fldx.d	$fa0, $a1, $s6
	fldx.d	$fa1, $a2, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1464
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 200
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 192
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 208
.Ltmp131:
	addi.d	$a1, $sp, 180
	addi.d	$a3, $sp, 184
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
.Ltmp132:
# %bb.53:                               #   in Loop: Header=BB16_52 Depth=1
	ld.w	$a0, $sp, 180
	bne	$a0, $s4, .LBB16_55
# %bb.54:                               #   in Loop: Header=BB16_52 Depth=1
	ld.w	$a0, $s0, 0
	ld.d	$a1, $fp, 1368
	stx.w	$a0, $a1, $s5
.LBB16_55:                              #   in Loop: Header=BB16_52 Depth=1
	ld.d	$a0, $fp, 1376
	stx.w	$s3, $a0, $s5
	ld.d	$a0, $fp, 1440
	ld.d	$a1, $fp, 1416
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -908
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 184
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1464
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 200
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -944
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 192
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 208
.Ltmp133:
	addi.d	$a1, $sp, 180
	addi.d	$a3, $sp, 184
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
.Ltmp134:
# %bb.56:                               #   in Loop: Header=BB16_52 Depth=1
	ld.w	$a0, $sp, 180
	bne	$a0, $s4, .LBB16_58
# %bb.57:                               #   in Loop: Header=BB16_52 Depth=1
	ld.w	$a0, $s0, 0
	ld.d	$a1, $fp, 1376
	stx.w	$a0, $a1, $s5
.LBB16_58:                              #   in Loop: Header=BB16_52 Depth=1
	ld.d	$a0, $fp, 1384
	stx.w	$s3, $a0, $s5
	ld.d	$a0, $fp, 1440
	ld.d	$a1, $fp, 1416
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -944
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 184
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1464
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 200
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 192
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 208
.Ltmp135:
	addi.d	$a1, $sp, 180
	addi.d	$a3, $sp, 184
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
.Ltmp136:
# %bb.59:                               #   in Loop: Header=BB16_52 Depth=1
	ld.w	$a0, $sp, 180
	bne	$a0, $s4, .LBB16_61
# %bb.60:                               #   in Loop: Header=BB16_52 Depth=1
	ld.w	$a0, $s0, 0
	ld.d	$a1, $fp, 1384
	stx.w	$a0, $a1, $s5
.LBB16_61:                              #   in Loop: Header=BB16_52 Depth=1
	ld.d	$a0, $fp, 1392
	stx.w	$s3, $a0, $s5
	ld.d	$a0, $fp, 1440
	ld.d	$a1, $fp, 1416
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -944
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 184
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1464
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 200
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -908
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 192
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 208
.Ltmp137:
	addi.d	$a1, $sp, 180
	addi.d	$a3, $sp, 184
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
.Ltmp138:
# %bb.62:                               #   in Loop: Header=BB16_52 Depth=1
	ld.w	$a0, $sp, 180
	bne	$a0, $s4, .LBB16_51
# %bb.63:                               #   in Loop: Header=BB16_52 Depth=1
	ld.w	$a0, $s0, 0
	ld.d	$a1, $fp, 1392
	stx.w	$a0, $a1, $s5
	b	.LBB16_51
.LBB16_64:                              # %._crit_edge541
.Ltmp140:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(KDTree_Destroy)
	jirl	$ra, $ra, 0
.Ltmp141:
# %bb.65:
	ld.d	$a0, $sp, 216
	ld.d	$a1, $sp, 224
.Ltmp142:
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp143:
# %bb.66:
	fld.d	$fa1, $fp, 344
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 344
	beqz	$s0, .LBB16_128
# %bb.67:
	sub.d	$a1, $s2, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_128
.LBB16_68:
	move	$a6, $zero
	move	$a4, $zero
	move	$a7, $a3
	move	$a5, $a1
.LBB16_69:                              # %.thread582
	addi.d	$t0, $zero, -4
	sll.w	$t0, $t0, $a2
	add.w	$a7, $a7, $t0
	srai.d	$t1, $a7, 63
	andn	$s3, $a7, $t1
	ori	$a7, $zero, 4
	sll.w	$a2, $a7, $a2
	add.w	$a6, $a6, $a2
	slt	$a7, $a3, $a6
	masknez	$a6, $a6, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $a6
	add.w	$a5, $a5, $t0
	srai.d	$a6, $a5, 63
	andn	$s4, $a5, $a6
	add.w	$a2, $a4, $a2
	slt	$a4, $a1, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	sub.w	$s5, $a1, $s4
	sub.w	$a2, $a3, $s3
	addi.w	$a0, $a0, 0
	move	$a1, $s5
	move	$a3, $zero
	pcaddu18i	$ra, %call36(compact_hash_init)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1160
	pcalau12i	$s7, %pc_hi20(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	st.d	$a0, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	beqz	$a1, .LBB16_72
# %bb.70:                               # %.lr.ph555
	pcalau12i	$a0, %got_pc_hi20(write_hash)
	ld.d	$s0, $a0, %got_pc_lo12(write_hash)
	move	$a0, $zero
	move	$s1, $zero
	ori	$s2, $zero, 2
	.p2align	4, , 16
.LBB16_71:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 1352
	slli.d	$a2, $a0, 2
	ldx.w	$a0, $a1, $a2
	ld.w	$a1, $fp, 1120
	ld.d	$a3, $fp, 1328
	ld.w	$a4, $fp, 636
	ld.d	$a5, $fp, 1336
	sub.d	$a1, $a1, $a0
	ldx.w	$a3, $a3, $a2
	add.w	$a0, $s1, $a4
	ldx.w	$a2, $a5, $a2
	sll.w	$a1, $s2, $a1
	mul.d	$a3, $a3, $a1
	sub.d	$a3, $a3, $s4
	mul.d	$a1, $a2, $a1
	ld.d	$a4, $s0, 0
	ld.d	$a2, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	sub.d	$a1, $a1, $s3
	mul.d	$a1, $a1, $s5
	add.w	$a1, $a3, $a1
	jirl	$ra, $a4, 0
	ld.d	$a1, $fp, 1160
	addi.w	$s1, $s1, 1
	bstrpick.d	$a0, $s1, 31, 0
	bltu	$a0, $a1, .LBB16_71
.LBB16_72:                              # %._crit_edge556
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248
	ld.d	$a1, $sp, 256
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 216
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 216
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1144
	ld.wu	$a1, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 2
	sll.w	$a1, $a2, $a1
	mul.d	$a0, $a1, $a0
	ld.w	$a2, $fp, 1136
	pcalau12i	$a3, %pc_hi20(_ZZN4Mesh20calc_neighbors_localEvE8jmaxcalc)
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.w	$a0, $a3, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE8jmaxcalc)
	ld.d	$a0, $fp, 1160
	addi.d	$a2, $a2, 1
	mul.d	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(_ZZN4Mesh20calc_neighbors_localEvE8imaxcalc)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.w	$a1, $a2, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE8imaxcalc)
	beqz	$a0, .LBB16_127
# %bb.73:                               # %.lr.ph559
	move	$a0, $zero
	move	$s1, $zero
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	nor	$a1, $a1, $zero
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	nor	$a1, $s3, $zero
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	addi.w	$s6, $zero, -1
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	b	.LBB16_76
.LBB16_74:                              #   in Loop: Header=BB16_76 Depth=1
	move	$t0, $s8
	.p2align	4, , 16
.LBB16_75:                              #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a0, $fp, 1368
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	stx.w	$t0, $a0, $a1
	ld.d	$a0, $fp, 1376
	stx.w	$s0, $a0, $a1
	ld.d	$a0, $fp, 1384
	stx.w	$s3, $a0, $a1
	ld.d	$a0, $fp, 1392
	stx.w	$s4, $a0, $a1
	ld.d	$a1, $fp, 1160
	addi.w	$s1, $s1, 1
	bstrpick.d	$a0, $s1, 31, 0
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB16_127
.LBB16_76:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 1352
	ld.d	$a2, $fp, 1328
	slli.d	$a4, $a0, 2
	ld.d	$a3, $fp, 1336
	ldx.w	$t5, $a1, $a4
	ld.w	$a0, $fp, 1120
	ldx.w	$a2, $a2, $a4
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	ldx.w	$a4, $a3, $a4
	sub.d	$a1, $a0, $t5
	ori	$a6, $zero, 2
	sll.w	$a5, $a6, $a1
	mul.w	$a3, $a5, $a2
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a1, $a2, -1
	mul.d	$a1, $a5, $a1
	slli.d	$a2, $a1, 32
	srai.d	$a2, $a2, 63
	andn	$a1, $a1, $a2
	mul.w	$a2, $a5, $a4
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a4, $a4, -1
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	mul.d	$a4, $a5, $a4
	slli.d	$a5, $a4, 32
	srai.d	$a5, $a5, 63
	andn	$a4, $a4, $a5
	ld.w	$a5, $fp, 636
	sll.w	$a6, $a6, $a0
	slt	$a7, $a3, $a6
	xori	$a7, $a7, 1
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	add.w	$s4, $s1, $a5
	masknez	$a5, $s4, $a7
	maskeqz	$t0, $s6, $a7
	or	$a5, $t0, $a5
	slt	$t0, $a2, $a6
	xori	$t0, $t0, 1
	masknez	$t1, $s4, $t0
	ld.w	$t2, $fp, 1144
	maskeqz	$t3, $s6, $t0
	or	$t1, $t3, $t1
	ld.w	$t3, $fp, 1136
	mul.w	$s2, $t2, $a6
	xor	$t2, $a3, $a6
	sltui	$t2, $t2, 1
	slt	$t4, $a2, $s2
	and	$s1, $t0, $t4
	maskeqz	$t0, $a5, $s1
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	masknez	$s8, $s4, $s1
	or	$t0, $t0, $s8
	maskeqz	$t0, $t0, $t2
	masknez	$a5, $a5, $t2
	sub.w	$t2, $a3, $t4
	st.d	$t2, $sp, 160                   # 8-byte Folded Spill
	mul.w	$s0, $t3, $a6
	or	$t0, $t0, $a5
	xor	$a5, $a2, $a6
	sltui	$a5, $a5, 1
	slt	$a3, $a3, $s0
	and	$s5, $a7, $a3
	maskeqz	$a3, $t1, $s5
	move	$a6, $s3
	masknez	$a7, $s4, $s5
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	or	$a3, $a3, $a7
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $t1, $a5
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	ld.w	$s7, $a7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE8imaxcalc)
	or	$s3, $a3, $a5
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE8jmaxcalc)
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	sub.w	$a1, $a1, $t4
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	sub.w	$a1, $a2, $a6
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	sub.w	$a1, $a4, $a6
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$t5, $sp, 104                   # 8-byte Folded Spill
	beq	$a0, $t5, .LBB16_79
# %bb.77:                               #   in Loop: Header=BB16_76 Depth=1
	bge	$s6, $t0, .LBB16_83
# %bb.78:                               #   in Loop: Header=BB16_76 Depth=1
	bge	$s6, $s3, .LBB16_84
.LBB16_79:                              #   in Loop: Header=BB16_76 Depth=1
	blt	$s6, $t0, .LBB16_87
.LBB16_80:                              #   in Loop: Header=BB16_76 Depth=1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	move	$s3, $t0
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	mul.d	$a0, $a3, $a0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a3
	jirl	$ra, $a2, 0
	bltz	$a0, .LBB16_85
# %bb.81:                               #   in Loop: Header=BB16_76 Depth=1
	ld.w	$a1, $fp, 1160
	move	$t0, $s3
	bge	$a0, $a1, .LBB16_86
# %bb.82:                               #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a1, $fp, 1352
	slli.d	$a2, $a0, 2
	ldx.w	$a1, $a1, $a2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	masknez	$a2, $t0, $a1
	maskeqz	$a0, $a0, $a1
	or	$t0, $a0, $a2
	b	.LBB16_86
.LBB16_83:                              #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a5, $a0
	pcalau12i	$a1, %got_pc_hi20(read_hash)
	ld.d	$a1, $a1, %got_pc_lo12(read_hash)
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 1
	ld.d	$a2, $a1, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	mul.d	$a3, $a4, $a3
	add.d	$a3, $a3, $a5
	sub.w	$a0, $a3, $a0
	jirl	$ra, $a2, 0
	move	$t0, $a0
	blt	$s6, $s3, .LBB16_79
.LBB16_84:                              #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a0, $a3, $a0
	pcalau12i	$a1, %got_pc_hi20(read_hash)
	ld.d	$a1, $a1, %got_pc_lo12(read_hash)
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 1
	ld.d	$a2, $a1, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	sub.d	$a0, $a3, $a0
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a3
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a3
	move	$s3, $t0
	jirl	$ra, $a2, 0
	move	$t0, $s3
	move	$s3, $a0
	blt	$s6, $t0, .LBB16_87
	b	.LBB16_80
.LBB16_85:                              #   in Loop: Header=BB16_76 Depth=1
	move	$t0, $s3
.LBB16_86:                              #   in Loop: Header=BB16_76 Depth=1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
.LBB16_87:                              #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	mul.w	$a0, $a1, $a0
	addi.w	$a1, $s7, -1
	slt	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.w	$a1, $s0, $a1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	slt	$a1, $a1, $a2
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	xor	$a2, $a0, $s0
	sltui	$a2, $a2, 1
	maskeqz	$a3, $a1, $s1
	or	$a3, $a3, $s8
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	sub.w	$s1, $a0, $a1
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	move	$s8, $t0
	move	$s0, $a2
	bge	$s6, $a2, .LBB16_89
# %bb.88:                               #   in Loop: Header=BB16_76 Depth=1
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	blt	$s6, $s3, .LBB16_94
	b	.LBB16_90
	.p2align	4, , 16
.LBB16_89:                              #   in Loop: Header=BB16_76 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	mul.d	$a0, $a3, $a0
	add.w	$a0, $a0, $s1
	jirl	$ra, $a2, 0
	move	$t0, $s8
	move	$s0, $a0
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	blt	$s6, $s3, .LBB16_94
.LBB16_90:                              #   in Loop: Header=BB16_76 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a0, $a3, $a0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a3
	jirl	$ra, $a2, 0
	bltz	$a0, .LBB16_93
# %bb.91:                               #   in Loop: Header=BB16_76 Depth=1
	ld.w	$a1, $fp, 1160
	bge	$a0, $a1, .LBB16_93
# %bb.92:                               #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a1, $fp, 1352
	slli.d	$a2, $a0, 2
	ldx.w	$a1, $a1, $a2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	maskeqz	$a0, $a0, $a1
	or	$s3, $a0, $a2
.LBB16_93:                              #   in Loop: Header=BB16_76 Depth=1
	move	$t0, $s8
.LBB16_94:                              #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	mul.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	slt	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.w	$a1, $s2, $a1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	slt	$a1, $a1, $a2
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	xor	$a2, $a0, $s2
	sltui	$a2, $a2, 1
	maskeqz	$a3, $a1, $s5
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	or	$a3, $a3, $a4
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$s4, $a2, $a1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	sub.w	$s2, $a0, $a1
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	bge	$s6, $s4, .LBB16_96
# %bb.95:                               #   in Loop: Header=BB16_76 Depth=1
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 1120
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	bne	$s2, $a0, .LBB16_97
	b	.LBB16_103
	.p2align	4, , 16
.LBB16_96:                              #   in Loop: Header=BB16_76 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	mul.d	$a0, $s2, $s5
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a3
	jirl	$ra, $a2, 0
	move	$t0, $s8
	move	$s4, $a0
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 1120
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	beq	$s2, $a0, .LBB16_103
.LBB16_97:                              #   in Loop: Header=BB16_76 Depth=1
	ori	$a1, $zero, 2
	sll.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB16_100
# %bb.98:                               #   in Loop: Header=BB16_76 Depth=1
	bge	$s6, $s0, .LBB16_110
# %bb.99:                               #   in Loop: Header=BB16_76 Depth=1
	bge	$s6, $t0, .LBB16_111
.LBB16_100:                             #   in Loop: Header=BB16_76 Depth=1
	ld.wu	$a0, $fp, 1120
	ori	$a1, $zero, 2
	sll.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB16_103
# %bb.101:                              #   in Loop: Header=BB16_76 Depth=1
	bge	$s6, $s4, .LBB16_112
# %bb.102:                              #   in Loop: Header=BB16_76 Depth=1
	bge	$s6, $s3, .LBB16_113
	.p2align	4, , 16
.LBB16_103:                             #   in Loop: Header=BB16_76 Depth=1
	beqz	$s2, .LBB16_75
.LBB16_104:                             #   in Loop: Header=BB16_76 Depth=1
	blt	$s6, $t0, .LBB16_108
# %bb.105:                              #   in Loop: Header=BB16_76 Depth=1
	move	$s8, $t0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	srli.d	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(read_hash)
	ld.d	$a1, $a1, %got_pc_lo12(read_hash)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	slli.d	$a0, $a0, 1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	ld.d	$a2, $a1, 0
	ld.d	$a1, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	mul.d	$a0, $a0, $s5
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	alsl.w	$a0, $a3, $a0, 1
	jirl	$ra, $a2, 0
	bltz	$a0, .LBB16_114
# %bb.106:                              #   in Loop: Header=BB16_76 Depth=1
	ld.w	$a1, $fp, 1160
	move	$t0, $s8
	bge	$a0, $a1, .LBB16_108
# %bb.107:                              #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a1, $fp, 1352
	slli.d	$a2, $a0, 2
	ldx.w	$a1, $a1, $a2
	addi.w	$a2, $s2, -1
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	masknez	$a2, $t0, $a1
	maskeqz	$a0, $a0, $a1
	or	$t0, $a0, $a2
	.p2align	4, , 16
.LBB16_108:                             #   in Loop: Header=BB16_76 Depth=1
	bge	$s6, $s0, .LBB16_115
.LBB16_109:                             #   in Loop: Header=BB16_76 Depth=1
	blt	$s6, $s3, .LBB16_122
	b	.LBB16_119
.LBB16_110:                             #   in Loop: Header=BB16_76 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a2, $a1, $a2
	ld.d	$a3, $a0, 0
	ld.d	$a1, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	srli.d	$a0, $a2, 1
	mul.d	$a0, $a0, $s5
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a2
	jirl	$ra, $a3, 0
	move	$t0, $s8
	move	$s0, $a0
	blt	$s6, $t0, .LBB16_100
.LBB16_111:                             #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a2, $a0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 1
	sub.d	$a0, $a2, $a0
	pcalau12i	$a1, %got_pc_hi20(read_hash)
	ld.d	$a1, $a1, %got_pc_lo12(read_hash)
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	bstrpick.d	$a3, $a2, 31, 31
	add.w	$a2, $a2, $a3
	ld.d	$a3, $a1, 0
	ld.d	$a1, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	srli.d	$a2, $a2, 1
	mul.d	$a2, $a2, $s5
	add.w	$a0, $a0, $a2
	jirl	$ra, $a3, 0
	move	$t0, $a0
	b	.LBB16_100
.LBB16_112:                             #   in Loop: Header=BB16_76 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a2, $a1, $a2
	ld.d	$a3, $a0, 0
	ld.d	$a1, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	srli.d	$a0, $a2, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	mul.d	$a2, $a2, $s5
	add.w	$a0, $a0, $a2
	move	$s4, $t0
	jirl	$ra, $a3, 0
	move	$t0, $s4
	move	$s4, $a0
	blt	$s6, $s3, .LBB16_103
.LBB16_113:                             #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srli.d	$a0, $a0, 1
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a1, $a4, $a1
	pcalau12i	$a2, %got_pc_hi20(read_hash)
	ld.d	$a2, $a2, %got_pc_lo12(read_hash)
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$a1, $a1, $a3
	srli.d	$a3, $a1, 1
	ld.d	$a2, $a2, 0
	ld.d	$a1, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	sub.d	$a3, $a4, $a3
	mul.d	$a3, $a3, $s5
	add.w	$a0, $a3, $a0
	move	$s8, $t0
	jirl	$ra, $a2, 0
	move	$t0, $s8
	move	$s3, $a0
	bnez	$s2, .LBB16_104
	b	.LBB16_75
.LBB16_114:                             #   in Loop: Header=BB16_76 Depth=1
	move	$t0, $s8
	blt	$s6, $s0, .LBB16_109
	.p2align	4, , 16
.LBB16_115:                             #   in Loop: Header=BB16_76 Depth=1
	move	$s8, $t0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	pcalau12i	$a1, %got_pc_hi20(read_hash)
	ld.d	$a1, $a1, %got_pc_lo12(read_hash)
	srli.d	$a0, $a0, 1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	slli.d	$a0, $a0, 1
	ld.d	$a2, $a1, 0
	ld.d	$a1, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	mul.d	$a0, $a0, $s5
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a3
	jirl	$ra, $a2, 0
	bltz	$a0, .LBB16_118
# %bb.116:                              #   in Loop: Header=BB16_76 Depth=1
	ld.w	$a1, $fp, 1160
	bge	$a0, $a1, .LBB16_118
# %bb.117:                              #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a1, $fp, 1352
	slli.d	$a2, $a0, 2
	ldx.w	$a1, $a1, $a2
	addi.w	$a2, $s2, -1
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	masknez	$a2, $s0, $a1
	maskeqz	$a0, $a0, $a1
	or	$s0, $a0, $a2
.LBB16_118:                             #   in Loop: Header=BB16_76 Depth=1
	move	$t0, $s8
	blt	$s6, $s3, .LBB16_122
.LBB16_119:                             #   in Loop: Header=BB16_76 Depth=1
	move	$s8, $t0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a2, 31, 31
	add.w	$a1, $a2, $a1
	pcalau12i	$a2, %got_pc_hi20(read_hash)
	ld.d	$a2, $a2, %got_pc_lo12(read_hash)
	srli.d	$a1, $a1, 1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a3
	slli.d	$a3, $a1, 1
	ld.d	$a2, $a2, 0
	ld.d	$a1, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a4
	mul.d	$a0, $a0, $s5
	add.w	$a0, $a3, $a0
	jirl	$ra, $a2, 0
	bltz	$a0, .LBB16_126
# %bb.120:                              #   in Loop: Header=BB16_76 Depth=1
	ld.w	$a1, $fp, 1160
	move	$t0, $s8
	bge	$a0, $a1, .LBB16_122
# %bb.121:                              #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a1, $fp, 1352
	slli.d	$a2, $a0, 2
	ldx.w	$a1, $a1, $a2
	addi.w	$a2, $s2, -1
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	masknez	$a2, $s3, $a1
	maskeqz	$a0, $a0, $a1
	or	$s3, $a0, $a2
	.p2align	4, , 16
.LBB16_122:                             #   in Loop: Header=BB16_76 Depth=1
	blt	$s6, $s4, .LBB16_75
.LBB16_123:                             #   in Loop: Header=BB16_76 Depth=1
	move	$s8, $t0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	pcalau12i	$a1, %got_pc_hi20(read_hash)
	ld.d	$a1, $a1, %got_pc_lo12(read_hash)
	srli.d	$a0, $a0, 1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	slli.d	$a0, $a0, 1
	ld.d	$a2, $a1, 0
	ld.d	$a1, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	mul.d	$a3, $a3, $s5
	add.w	$a0, $a0, $a3
	jirl	$ra, $a2, 0
	bltz	$a0, .LBB16_74
# %bb.124:                              #   in Loop: Header=BB16_76 Depth=1
	ld.w	$a1, $fp, 1160
	move	$t0, $s8
	bge	$a0, $a1, .LBB16_75
# %bb.125:                              #   in Loop: Header=BB16_76 Depth=1
	ld.d	$a1, $fp, 1352
	slli.d	$a2, $a0, 2
	ldx.w	$a1, $a1, $a2
	addi.w	$a2, $s2, -1
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	masknez	$a2, $s4, $a1
	maskeqz	$a0, $a0, $a1
	or	$s4, $a0, $a2
	b	.LBB16_75
.LBB16_126:                             #   in Loop: Header=BB16_76 Depth=1
	move	$t0, $s8
	blt	$s6, $s4, .LBB16_75
	b	.LBB16_123
.LBB16_127:                             # %._crit_edge560
	ld.d	$a0, $sp, 248
	ld.d	$a1, $sp, 256
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 224
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 224
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(write_hash_collision_report)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(read_hash_collision_report)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(_ZZN4Mesh20calc_neighbors_localEvE4hash)
	pcaddu18i	$ra, %call36(compact_hash_delete)
	jirl	$ra, $ra, 0
.LBB16_128:
	ld.d	$a0, $sp, 232
	ld.d	$a1, $sp, 240
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 208
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 208
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB16_129:                             # %vector.scevcheck
	addi.d	$t0, $a0, -1
	bstrpick.d	$t1, $t0, 31, 0
	addi.w	$t2, $zero, -1
	lu32i.d	$t2, 0
	move	$a7, $zero
	beq	$t1, $t2, .LBB16_134
# %bb.130:                              # %vector.scevcheck
	srli.d	$t4, $t0, 32
	move	$t0, $a3
	move	$t1, $a1
	move	$t2, $a7
	move	$t3, $a7
	bnez	$t4, .LBB16_28
# %bb.131:                              # %vector.ph595
	bstrpick.d	$a7, $a0, 32, 3
	slli.d	$a7, $a7, 3
	vreplgr2vr.w	$vr5, $a2
	vreplgr2vr.w	$vr2, $a3
	vreplgr2vr.w	$vr1, $a1
	addi.d	$t0, $a6, 16
	addi.d	$t1, $a5, 16
	addi.d	$t2, $a4, 16
	vrepli.b	$vr0, 0
	vrepli.w	$vr7, 2
	vrepli.b	$vr9, -1
	move	$t3, $a7
	vori.b	$vr10, $vr2, 0
	vori.b	$vr8, $vr1, 0
	vori.b	$vr6, $vr0, 0
	vori.b	$vr3, $vr0, 0
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB16_132:                             # %vector.body602
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr11, $t2, -16
	vld	$vr12, $t2, 0
	vld	$vr13, $t1, -16
	vld	$vr14, $t1, 0
	vsub.w	$vr11, $vr5, $vr11
	vsub.w	$vr12, $vr5, $vr12
	vsll.w	$vr11, $vr7, $vr11
	vsll.w	$vr12, $vr7, $vr12
	vmul.w	$vr15, $vr13, $vr11
	vmul.w	$vr16, $vr14, $vr12
	vmin.w	$vr2, $vr15, $vr2
	vmin.w	$vr10, $vr16, $vr10
	vaddi.wu	$vr13, $vr13, 1
	vaddi.wu	$vr14, $vr14, 1
	vori.b	$vr15, $vr9, 0
	vmadd.w	$vr15, $vr13, $vr11
	vori.b	$vr13, $vr9, 0
	vmadd.w	$vr13, $vr14, $vr12
	vld	$vr14, $t0, -16
	vld	$vr16, $t0, 0
	vmax.w	$vr0, $vr15, $vr0
	vmax.w	$vr6, $vr13, $vr6
	vmul.w	$vr13, $vr14, $vr11
	vmul.w	$vr15, $vr16, $vr12
	vmin.w	$vr1, $vr13, $vr1
	vmin.w	$vr8, $vr15, $vr8
	vaddi.wu	$vr13, $vr14, 1
	vaddi.wu	$vr14, $vr16, 1
	vori.b	$vr15, $vr9, 0
	vmadd.w	$vr15, $vr13, $vr11
	vori.b	$vr11, $vr9, 0
	vmadd.w	$vr11, $vr14, $vr12
	vmax.w	$vr3, $vr15, $vr3
	vmax.w	$vr4, $vr11, $vr4
	addi.d	$t3, $t3, -8
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	addi.d	$t2, $t2, 32
	bnez	$t3, .LBB16_132
# %bb.133:                              # %middle.block617
	vmin.w	$vr2, $vr2, $vr10
	vshuf4i.w	$vr5, $vr2, 14
	vmin.w	$vr2, $vr2, $vr5
	vreplvei.w	$vr5, $vr2, 1
	vmin.w	$vr2, $vr2, $vr5
	vpickve2gr.w	$t0, $vr2, 0
	vmin.w	$vr1, $vr1, $vr8
	vshuf4i.w	$vr2, $vr1, 14
	vmin.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vmin.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$t1, $vr1, 0
	vmax.w	$vr0, $vr0, $vr6
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t2, $vr0, 0
	vmax.w	$vr0, $vr3, $vr4
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t3, $vr0, 0
	bne	$a0, $a7, .LBB16_28
	b	.LBB16_30
.LBB16_134:
	move	$t0, $a3
	move	$t1, $a1
	move	$t2, $a7
	move	$t3, $a7
	b	.LBB16_28
.LBB16_135:                             # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB16_136:                             # %.loopexit.split-lp
.Ltmp144:
	b	.LBB16_138
.LBB16_137:                             # %.loopexit
.Ltmp126:
.LBB16_138:
	move	$fp, $a0
	bnez	$s0, .LBB16_140
	b	.LBB16_141
.LBB16_139:                             # %.thread
.Ltmp139:
	move	$fp, $a0
.LBB16_140:
	sub.d	$a1, $s2, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_141:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit463
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN4Mesh20calc_neighbors_localEv, .Lfunc_end16-_ZN4Mesh20calc_neighbors_localEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp120-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp123-.Ltmp120              #   Call between .Ltmp120 and .Ltmp123
	.uleb128 .Ltmp144-.Lfunc_begin7         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin7         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp130-.Ltmp127              #   Call between .Ltmp127 and .Ltmp130
	.uleb128 .Ltmp144-.Lfunc_begin7         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp138-.Ltmp131              #   Call between .Ltmp131 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin7         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp143-.Ltmp140              #   Call between .Ltmp140 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin7         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Lfunc_end16-.Ltmp143          #   Call between .Ltmp143 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh12kdtree_setupEv        # -- Begin function _ZN4Mesh12kdtree_setupEv
	.p2align	5
	.type	_ZN4Mesh12kdtree_setupEv,@function
_ZN4Mesh12kdtree_setupEv:               # @_ZN4Mesh12kdtree_setupEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	addi.d	$s0, $a0, 784
	move	$a0, $s0
	pcaddu18i	$ra, %call36(KDTree_Initialize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB17_3
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 1416
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $a1, $a0
	ld.d	$a1, $fp, 1440
	fst.d	$fa0, $sp, 0
	fldx.d	$fa1, $a1, $a0
	ld.d	$a1, $fp, 1464
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 16
	fldx.d	$fa0, $a1, $a0
	ld.d	$a1, $fp, 1488
	fst.d	$fa0, $sp, 8
	fldx.d	$fa1, $a1, $a0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 24
	addi.d	$a1, $sp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(KDTree_AddElement)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1160
	bstrpick.d	$a0, $s1, 31, 0
	addi.w	$s1, $s1, 1
	bltu	$a0, $a1, .LBB17_2
.LBB17_3:                               # %._crit_edge
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end17:
	.size	_ZN4Mesh12kdtree_setupEv, .Lfunc_end17-_ZN4Mesh12kdtree_setupEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_ # -- Begin function _ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_
	.p2align	5
	.type	_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_,@function
_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_: # @_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	move	$s1, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$fp, $a0
	ld.d	$a0, $a1, 8
	ld.d	$s5, $a1, 0
	st.d	$zero, $sp, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32
	sub.d	$s3, $a0, $s5
	beq	$a0, $s5, .LBB18_15
# %bb.1:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	bltu	$a0, $s3, .LBB18_155
# %bb.2:                                # %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
.Ltmp145:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp146:
# %bb.3:                                # %.noexc418
	move	$s4, $a0
	ori	$a0, $zero, 5
	bltu	$s3, $a0, .LBB18_157
# %bb.4:
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB18_5:                               # %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
	ld.d	$a0, $fp, 1160
	add.d	$s3, $s4, $s3
	addi.d	$s5, $fp, 1160
	bnez	$a0, .LBB18_17
# %bb.6:
	move	$a2, $zero
	move	$a1, $zero
.LBB18_7:                               # %.thread471
	st.w	$a2, $s0, 0
	st.w	$a1, $s1, 0
	sub.d	$a1, $s3, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_8:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.w	$s3, $s0, 0
.Ltmp147:
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
.Ltmp148:
# %bb.9:
	blez	$s3, .LBB18_30
# %bb.10:
	ld.w	$a1, $fp, 1120
	ld.d	$a0, $sp, 32
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB18_31
# %bb.11:
	ld.w	$a1, $fp, 628
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 1176
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 1160
	maskeqz	$a3, $a3, $a1
	ld.w	$a4, $fp, 588
	ld.d	$a1, $sp, 40
	or	$a2, $a3, $a2
	ldx.d	$a2, $fp, $a2
	addi.d	$a4, $a4, 1
	sub.d	$a3, $a1, $a0
	srai.d	$a3, $a3, 2
	st.w	$a4, $fp, 588
	bgeu	$a3, $a2, .LBB18_114
# %bb.12:
	sub.d	$a1, $a2, $a3
.Ltmp149:
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp150:
# %bb.13:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.w	$a1, $fp, 1120
	ld.d	$a0, $sp, 32
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB18_31
# %bb.14:
	ld.d	$a1, $sp, 40
	b	.LBB18_115
.LBB18_15:                              # %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread
	ld.d	$a0, $fp, 1160
	addi.d	$s5, $fp, 1160
	beqz	$a0, .LBB18_151
# %bb.16:
	move	$s4, $zero
.LBB18_17:                              # %.lr.ph.i
	move	$a3, $zero
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a4, $fp, 1360
	ld.d	$a5, $fp, 1328
	ld.d	$a6, $fp, 1336
	ori	$a7, $zero, 1
	addi.w	$t0, $zero, -1
	ori	$t1, $zero, 1
	bstrins.d	$t1, $t1, 32, 31
	ori	$t2, $zero, 1
	b	.LBB18_20
.LBB18_18:                              #   in Loop: Header=BB18_20 Depth=1
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB18_19:                              # %.thread.i
                                        #   in Loop: Header=BB18_20 Depth=1
	bstrpick.d	$t3, $t2, 31, 0
	addi.d	$a3, $a3, 4
	addi.w	$t2, $t2, 1
	bgeu	$t3, $a0, .LBB18_7
.LBB18_20:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$t3, $s4, $a3
	bge	$t0, $t3, .LBB18_24
# %bb.21:                               #   in Loop: Header=BB18_20 Depth=1
	beqz	$t3, .LBB18_19
# %bb.22:                               #   in Loop: Header=BB18_20 Depth=1
	ldx.w	$t3, $a4, $a3
	bne	$t3, $a7, .LBB18_18
# %bb.23:                               #   in Loop: Header=BB18_20 Depth=1
	addi.d	$a2, $a2, 3
	b	.LBB18_19
	.p2align	4, , 16
.LBB18_24:                              #   in Loop: Header=BB18_20 Depth=1
	ldx.w	$t5, $a4, $a3
	ldx.w	$t3, $a5, $a3
	ldx.w	$t4, $a6, $a3
	bne	$t5, $a7, .LBB18_26
# %bb.25:                               #   in Loop: Header=BB18_20 Depth=1
	or	$t3, $t3, $t4
	b	.LBB18_29
.LBB18_26:                              #   in Loop: Header=BB18_20 Depth=1
	and	$t5, $t3, $t1
	addi.w	$t5, $t5, 0
	bne	$t5, $a7, .LBB18_28
# %bb.27:                               #   in Loop: Header=BB18_20 Depth=1
	move	$t5, $t4
	bstrins.d	$t5, $zero, 30, 1
	addi.w	$t5, $t5, 0
	beq	$t5, $a7, .LBB18_19
.LBB18_28:                              #   in Loop: Header=BB18_20 Depth=1
	or	$t3, $t4, $t3
.LBB18_29:                              # %.thread.i
                                        #   in Loop: Header=BB18_20 Depth=1
	andi	$t3, $t3, 1
	sub.d	$a1, $a1, $t3
	b	.LBB18_19
.LBB18_30:                              # %..critedge_crit_edge
	ld.d	$a0, $sp, 32
.LBB18_31:                              # %.critedge
	ld.d	$a1, $sp, 40
	beq	$a1, $a0, .LBB18_33
.LBB18_32:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i423
	st.d	$a0, $sp, 40
	move	$a1, $a0
.LBB18_33:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit
	ld.d	$a2, $fp, 1176
	sub.d	$a3, $a1, $a0
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a2, .LBB18_36
# %bb.34:
	sub.d	$a1, $a2, $a3
.Ltmp152:
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp153:
# %bb.35:                               # %._ZNSt6vectorIiSaIiEE6resizeEm.exit427_crit_edge
	ld.d	$a0, $sp, 32
	ld.d	$a5, $sp, 40
	b	.LBB18_37
.LBB18_36:
	sltu	$a3, $a2, $a3
	alsl.d	$a2, $a2, $a0, 2
	maskeqz	$a2, $a2, $a3
	masknez	$a1, $a1, $a3
	or	$a5, $a2, $a1
.LBB18_37:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit427
	ld.d	$a4, $sp, 48
	ld.d	$s3, $s2, 0
	ld.d	$a1, $s2, 8
	ld.d	$a6, $s2, 16
	ld.d	$s5, $s5, 0
	st.d	$a0, $s2, 0
	st.d	$a5, $s2, 8
	st.d	$a4, $s2, 16
	sub.d	$s4, $a1, $s3
	beqz	$s5, .LBB18_88
# %bb.38:                               # %.lr.ph
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	move	$a7, $zero
	ld.d	$t0, $fp, 1328
	ld.d	$t1, $fp, 1336
	ld.d	$t2, $fp, 1368
	ld.d	$t3, $fp, 1352
	ld.d	$t4, $fp, 1384
	ld.d	$t5, $fp, 1376
	ld.d	$t6, $fp, 1392
	ori	$t7, $zero, 1
	lu12i.w	$a2, -245
	ori	$a2, $a2, 3521
	lu12i.w	$a3, -524288
	ori	$a3, $a3, 1
	ori	$t8, $zero, 1
	b	.LBB18_41
	.p2align	4, , 16
.LBB18_39:                              # %.sink.split610
                                        #   in Loop: Header=BB18_41 Depth=1
	stx.w	$zero, $a0, $a7
.LBB18_40:                              #   in Loop: Header=BB18_41 Depth=1
	bstrpick.d	$s1, $t8, 31, 0
	addi.d	$a7, $a7, 4
	addi.w	$t8, $t8, 1
	bgeu	$s1, $s5, .LBB18_58
.LBB18_41:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$s6, $s3, $a7
	stx.w	$s6, $a0, $a7
	bltu	$s6, $a2, .LBB18_40
# %bb.42:                               #   in Loop: Header=BB18_41 Depth=1
	ldx.w	$s6, $t0, $a7
	ldx.w	$s7, $t1, $a7
	and	$s8, $s6, $a3
	and	$ra, $s7, $a3
	bne	$s8, $t7, .LBB18_46
# %bb.43:                               #   in Loop: Header=BB18_41 Depth=1
	bne	$ra, $t7, .LBB18_46
# %bb.44:                               #   in Loop: Header=BB18_41 Depth=1
	ldx.w	$s6, $t5, $a7
	slli.d	$s6, $s6, 2
	ldx.w	$s7, $s3, $s6
	ldx.w	$s8, $t3, $s6
	ldx.w	$s6, $t3, $a7
	slt	$s7, $zero, $s7
	add.w	$s7, $s8, $s7
	blt	$s6, $s7, .LBB18_39
# %bb.45:                               #   in Loop: Header=BB18_41 Depth=1
	ldx.w	$s7, $t6, $a7
	slli.d	$s7, $s7, 2
	ldx.w	$s8, $s3, $s7
	ldx.w	$s7, $t3, $s7
	slt	$s8, $zero, $s8
	add.w	$s7, $s7, $s8
	bge	$s6, $s7, .LBB18_40
	b	.LBB18_39
	.p2align	4, , 16
.LBB18_46:                              #   in Loop: Header=BB18_41 Depth=1
	andi	$s1, $s6, 1
	bnez	$s1, .LBB18_50
# %bb.47:                               #   in Loop: Header=BB18_41 Depth=1
	bne	$ra, $t7, .LBB18_50
# %bb.48:                               #   in Loop: Header=BB18_41 Depth=1
	ldx.w	$s1, $t2, $a7
	slli.d	$s1, $s1, 2
	ldx.w	$s7, $s3, $s1
	ldx.w	$s1, $t3, $s1
	ldx.w	$s6, $t3, $a7
	slt	$s7, $zero, $s7
	add.w	$s1, $s1, $s7
	blt	$s6, $s1, .LBB18_39
# %bb.49:                               #   in Loop: Header=BB18_41 Depth=1
	ldx.w	$s1, $t6, $a7
	b	.LBB18_57
.LBB18_50:                              #   in Loop: Header=BB18_41 Depth=1
	bne	$s8, $t7, .LBB18_53
# %bb.51:                               #   in Loop: Header=BB18_41 Depth=1
	andi	$s1, $s7, 1
	bnez	$s1, .LBB18_53
# %bb.52:                               #   in Loop: Header=BB18_41 Depth=1
	ldx.w	$s1, $t5, $a7
	b	.LBB18_55
.LBB18_53:                              #   in Loop: Header=BB18_41 Depth=1
	or	$s1, $s7, $s6
	andi	$s1, $s1, 1
	bnez	$s1, .LBB18_40
# %bb.54:                               #   in Loop: Header=BB18_41 Depth=1
	ldx.w	$s1, $t2, $a7
.LBB18_55:                              #   in Loop: Header=BB18_41 Depth=1
	slli.d	$s1, $s1, 2
	ldx.w	$s7, $s3, $s1
	ldx.w	$s1, $t3, $s1
	ldx.w	$s6, $t3, $a7
	slt	$s7, $zero, $s7
	add.w	$s1, $s1, $s7
	blt	$s6, $s1, .LBB18_39
# %bb.56:                               #   in Loop: Header=BB18_41 Depth=1
	ldx.w	$s1, $t4, $a7
.LBB18_57:                              #   in Loop: Header=BB18_41 Depth=1
	slli.d	$s1, $s1, 2
	ldx.w	$s7, $s3, $s1
	ldx.w	$s1, $t3, $s1
	slt	$s7, $zero, $s7
	add.w	$s1, $s1, $s7
	bge	$s6, $s1, .LBB18_40
	b	.LBB18_39
.LBB18_58:                              # %.lr.ph577
	move	$a7, $zero
	st.d	$a0, $sp, 32
	st.d	$a5, $sp, 40
	st.d	$s3, $s2, 0
	st.d	$a1, $s2, 8
	st.d	$a6, $s2, 16
	ld.d	$a5, $fp, 1328
	ld.d	$a6, $fp, 1336
	ld.d	$t0, $fp, 1392
	ld.d	$t1, $fp, 1376
	ld.d	$t2, $fp, 1368
	ld.d	$t3, $fp, 1384
	ld.d	$t4, $fp, 1352
	st.d	$a4, $sp, 48
	ori	$a4, $zero, 1
	ori	$t5, $zero, 1
	b	.LBB18_61
	.p2align	4, , 16
.LBB18_59:                              # %.sink.split616
                                        #   in Loop: Header=BB18_61 Depth=1
	stx.w	$zero, $s3, $a7
.LBB18_60:                              #   in Loop: Header=BB18_61 Depth=1
	bstrpick.d	$t6, $t5, 31, 0
	addi.d	$a7, $a7, 4
	addi.w	$t5, $t5, 1
	bgeu	$t6, $s5, .LBB18_77
.LBB18_61:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$t6, $a0, $a7
	stx.w	$t6, $s3, $a7
	bltu	$t6, $a2, .LBB18_60
# %bb.62:                               #   in Loop: Header=BB18_61 Depth=1
	ldx.w	$t6, $a5, $a7
	ldx.w	$t7, $a6, $a7
	and	$s2, $t6, $a3
	and	$s7, $t7, $a3
	bne	$s2, $a4, .LBB18_64
# %bb.63:                               #   in Loop: Header=BB18_61 Depth=1
	move	$s6, $t3
	move	$t8, $t2
	beq	$s7, $a4, .LBB18_69
.LBB18_64:                              #   in Loop: Header=BB18_61 Depth=1
	andi	$t8, $t6, 1
	bnez	$t8, .LBB18_66
# %bb.65:                               #   in Loop: Header=BB18_61 Depth=1
	move	$s6, $t3
	move	$t8, $t1
	beq	$s7, $a4, .LBB18_69
.LBB18_66:                              #   in Loop: Header=BB18_61 Depth=1
	bne	$s2, $a4, .LBB18_68
# %bb.67:                               #   in Loop: Header=BB18_61 Depth=1
	andi	$s1, $t7, 1
	move	$s6, $t0
	move	$t8, $t2
	beqz	$s1, .LBB18_69
.LBB18_68:                              #   in Loop: Header=BB18_61 Depth=1
	or	$t6, $t7, $t6
	andi	$t6, $t6, 1
	move	$s6, $t0
	move	$t8, $t1
	bnez	$t6, .LBB18_76
	.p2align	4, , 16
.LBB18_69:                              #   in Loop: Header=BB18_61 Depth=1
	ldx.w	$s2, $s6, $a7
	slli.d	$t6, $s2, 2
	ldx.w	$t6, $t8, $t6
	bltz	$t6, .LBB18_59
# %bb.70:                               #   in Loop: Header=BB18_61 Depth=1
	ldx.w	$t7, $t8, $a7
	bstrpick.d	$t6, $t6, 31, 0
	slli.d	$s2, $s2, 2
	ldx.w	$s1, $a0, $s2
	addi.w	$t8, $zero, -1
	bne	$s1, $t8, .LBB18_59
.LBB18_71:                              #   in Loop: Header=BB18_61 Depth=1
	ldx.w	$s1, $t4, $s2
	ldx.w	$s2, $t4, $a7
	bne	$s1, $s2, .LBB18_59
# %bb.72:                               #   in Loop: Header=BB18_61 Depth=1
	slli.d	$t7, $t7, 2
	ldx.w	$s1, $a0, $t7
	bne	$s1, $t8, .LBB18_59
# %bb.73:                               #   in Loop: Header=BB18_61 Depth=1
	ldx.w	$t7, $t4, $t7
	bne	$t7, $s2, .LBB18_59
# %bb.74:                               #   in Loop: Header=BB18_61 Depth=1
	slli.d	$t6, $t6, 2
	ldx.w	$t7, $a0, $t6
	bne	$t7, $t8, .LBB18_59
# %bb.75:                               #   in Loop: Header=BB18_61 Depth=1
	ldx.w	$t6, $t4, $t6
	beq	$t6, $s2, .LBB18_60
	b	.LBB18_59
.LBB18_76:                              #   in Loop: Header=BB18_61 Depth=1
	move	$t6, $zero
	move	$t7, $zero
	move	$s2, $zero
	slli.d	$s2, $s2, 2
	ldx.w	$s1, $a0, $s2
	addi.w	$t8, $zero, -1
	bne	$s1, $t8, .LBB18_59
	b	.LBB18_71
.LBB18_77:                              # %.lr.ph579
	move	$a0, $zero
	ld.d	$a2, $fp, 1360
	ld.d	$a3, $fp, 1384
	ld.d	$a4, $fp, 1392
	ld.d	$a5, $fp, 1368
	ld.d	$a6, $fp, 1376
	ori	$a7, $zero, 1
	addi.w	$t0, $zero, -1
	ori	$t1, $zero, 3
	pcalau12i	$t2, %pc_hi20(.LJTI18_0)
	addi.d	$t2, $t2, %pc_lo12(.LJTI18_0)
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	b	.LBB18_81
.LBB18_78:                              #   in Loop: Header=BB18_81 Depth=1
	move	$t3, $a4
.LBB18_79:                              # %.sink.split617
                                        #   in Loop: Header=BB18_81 Depth=1
	ldx.w	$t3, $t3, $a0
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $s3, $t3
	stx.w	$t3, $s3, $a0
.LBB18_80:                              #   in Loop: Header=BB18_81 Depth=1
	bstrpick.d	$t3, $a7, 31, 0
	addi.d	$a0, $a0, 4
	addi.w	$a7, $a7, 1
	bgeu	$t3, $s5, .LBB18_86
.LBB18_81:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$t3, $a2, $a0
	blt	$t0, $t3, .LBB18_80
# %bb.82:                               #   in Loop: Header=BB18_81 Depth=1
	addi.d	$t3, $t3, 4
	bltu	$t1, $t3, .LBB18_80
# %bb.83:                               #   in Loop: Header=BB18_81 Depth=1
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $t2, $t3
	add.d	$t4, $t2, $t3
	move	$t3, $a6
	jr	$t4
.LBB18_84:                              #   in Loop: Header=BB18_81 Depth=1
	move	$t3, $a3
	b	.LBB18_79
.LBB18_85:                              #   in Loop: Header=BB18_81 Depth=1
	move	$t3, $a5
	b	.LBB18_79
.LBB18_86:                              # %._crit_edge580
	bne	$a1, $s3, .LBB18_89
# %bb.87:
	move	$s2, $zero
	move	$a0, $zero
	b	.LBB18_94
.LBB18_88:                              # %._crit_edge580.thread
	st.d	$a0, $sp, 32
	st.d	$a5, $sp, 40
	st.d	$a4, $sp, 48
	st.d	$s3, $s2, 0
	st.d	$a1, $s2, 8
	st.d	$a6, $s2, 16
	beq	$a1, $s3, .LBB18_152
.LBB18_89:
	addi.w	$a0, $zero, -3
	lu52i.d	$a0, $a0, 2047
	bgeu	$s4, $a0, .LBB18_155
# %bb.90:                               # %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i432
.Ltmp154:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp155:
# %bb.91:                               # %.noexc435
	move	$s2, $a0
	ori	$a0, $zero, 5
	bltu	$s4, $a0, .LBB18_159
# %bb.92:
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB18_93:                              # %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit436
	add.d	$a0, $s2, $s4
	beqz	$s5, .LBB18_108
.LBB18_94:                              # %.lr.ph.i438
	move	$a2, $zero
	move	$a1, $zero
	move	$a3, $zero
	ld.d	$a4, $fp, 1360
	ld.d	$a5, $fp, 1328
	ld.d	$a6, $fp, 1336
	ori	$a7, $zero, 1
	addi.w	$t0, $zero, -1
	ori	$t1, $zero, 1
	bstrins.d	$t1, $t1, 32, 31
	ori	$t2, $zero, 1
	b	.LBB18_97
.LBB18_95:                              #   in Loop: Header=BB18_97 Depth=1
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB18_96:                              # %.thread.i443
                                        #   in Loop: Header=BB18_97 Depth=1
	bstrpick.d	$t3, $t2, 31, 0
	addi.d	$a2, $a2, 4
	addi.w	$t2, $t2, 1
	bgeu	$t3, $s5, .LBB18_107
.LBB18_97:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$t3, $s2, $a2
	bge	$t0, $t3, .LBB18_101
# %bb.98:                               #   in Loop: Header=BB18_97 Depth=1
	beqz	$t3, .LBB18_96
# %bb.99:                               #   in Loop: Header=BB18_97 Depth=1
	ldx.w	$t3, $a4, $a2
	bne	$t3, $a7, .LBB18_95
# %bb.100:                              #   in Loop: Header=BB18_97 Depth=1
	addi.d	$a3, $a3, 3
	b	.LBB18_96
	.p2align	4, , 16
.LBB18_101:                             #   in Loop: Header=BB18_97 Depth=1
	ldx.w	$t5, $a4, $a2
	ldx.w	$t3, $a5, $a2
	ldx.w	$t4, $a6, $a2
	bne	$t5, $a7, .LBB18_103
# %bb.102:                              #   in Loop: Header=BB18_97 Depth=1
	or	$t3, $t3, $t4
	b	.LBB18_106
.LBB18_103:                             #   in Loop: Header=BB18_97 Depth=1
	and	$t5, $t3, $t1
	addi.w	$t5, $t5, 0
	bne	$t5, $a7, .LBB18_105
# %bb.104:                              #   in Loop: Header=BB18_97 Depth=1
	move	$t5, $t4
	bstrins.d	$t5, $zero, 30, 1
	addi.w	$t5, $t5, 0
	beq	$t5, $a7, .LBB18_96
.LBB18_105:                             #   in Loop: Header=BB18_97 Depth=1
	or	$t3, $t4, $t3
.LBB18_106:                             # %.thread.i443
                                        #   in Loop: Header=BB18_97 Depth=1
	andi	$t3, $t3, 1
	sub.d	$a1, $a1, $t3
	b	.LBB18_96
.LBB18_107:                             # %.thread522
	st.w	$a3, $s0, 0
	st.w	$a1, $s1, 0
	ld.w	$a2, $s0, 0
	add.d	$s3, $a2, $a1
	b	.LBB18_109
.LBB18_108:
	st.w	$zero, $s0, 0
	st.w	$zero, $s1, 0
	ld.w	$s3, $s0, 0
.LBB18_109:
	sub.d	$a1, $a0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	ld.w	$a0, $s0, 0
	sltu	$a2, $zero, $a1
.LBB18_110:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit455
	sltu	$a3, $zero, $a0
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 24
	or	$a2, $a3, $a2
	andi	$a2, $a2, 1
	st.b	$a2, $fp, 616
.Ltmp158:
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp159:
# %bb.111:
	fld.d	$fa1, $fp, 352
	ld.d	$a0, $sp, 32
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 352
	beqz	$a0, .LBB18_113
# %bb.112:
	ld.d	$a1, $sp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_113:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit457
	add.w	$a0, $s3, $s5
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
.LBB18_114:
	sltu	$a3, $a2, $a3
	alsl.d	$a2, $a2, $a0, 2
	maskeqz	$a2, $a2, $a3
	masknez	$a1, $a1, $a3
	or	$a1, $a2, $a1
.LBB18_115:                             # %.lr.ph559
	ld.d	$a2, $fp, 1160
	ld.d	$a3, $sp, 48
	ld.d	$s7, $s2, 0
	ld.d	$s6, $s2, 8
	ld.d	$s4, $s2, 16
	beqz	$a2, .LBB18_153
# %bb.116:                              # %.lr.ph.us.preheader
	ld.d	$a4, $fp, 1352
	ori	$a5, $zero, 1
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB18_117:                             # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_120 Depth 2
	st.d	$a0, $s2, 0
	st.d	$a1, $s2, 8
	st.d	$a3, $s2, 16
	ld.d	$t3, $fp, 1368
	ld.w	$t4, $fp, 1176
	ld.d	$t5, $fp, 1392
	ld.d	$t6, $fp, 1376
	ld.d	$t7, $fp, 1384
	move	$s3, $zero
	move	$t8, $zero
	move	$t0, $s7
	move	$t1, $s6
	move	$t2, $s4
	ori	$s4, $zero, 1
	b	.LBB18_120
	.p2align	4, , 16
.LBB18_118:                             # %.sink.split
                                        #   in Loop: Header=BB18_120 Depth=2
	stx.w	$a5, $a0, $s3
	addi.w	$t8, $t8, 1
.LBB18_119:                             #   in Loop: Header=BB18_120 Depth=2
	bstrpick.d	$a6, $s4, 31, 0
	addi.d	$s3, $s3, 4
	addi.w	$s4, $s4, 1
	bgeu	$a6, $a2, .LBB18_149
.LBB18_120:                             #   Parent Loop BB18_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$s7, $t0, $s3
	ldx.w	$s6, $a4, $s3
	stx.w	$s7, $a0, $s3
	bgtz	$s7, .LBB18_119
# %bb.121:                              #   in Loop: Header=BB18_120 Depth=2
	ldx.w	$s7, $t3, $s3
	bltz	$s7, .LBB18_128
# %bb.122:                              #   in Loop: Header=BB18_120 Depth=2
	bge	$s7, $t4, .LBB18_128
# %bb.123:                              #   in Loop: Header=BB18_120 Depth=2
	slli.d	$s7, $s7, 2
	ldx.w	$ra, $t0, $s7
	ldx.w	$s8, $a4, $s7
	slt	$ra, $zero, $ra
	sub.d	$a6, $s8, $s6
	add.w	$a6, $a6, $ra
	blt	$a5, $a6, .LBB18_118
# %bb.124:                              #   in Loop: Header=BB18_120 Depth=2
	bge	$s6, $s8, .LBB18_128
# %bb.125:                              #   in Loop: Header=BB18_120 Depth=2
	ldx.w	$s7, $t5, $s7
	bltz	$s7, .LBB18_128
# %bb.126:                              #   in Loop: Header=BB18_120 Depth=2
	bge	$s7, $t4, .LBB18_128
# %bb.127:                              #   in Loop: Header=BB18_120 Depth=2
	slli.d	$a6, $s7, 2
	ldx.w	$s7, $t0, $a6
	ldx.w	$a6, $a4, $a6
	slt	$s7, $zero, $s7
	sub.d	$a6, $a6, $s6
	add.w	$a6, $a6, $s7
	blt	$a5, $a6, .LBB18_118
	.p2align	4, , 16
.LBB18_128:                             # %.thread480.us
                                        #   in Loop: Header=BB18_120 Depth=2
	ldx.w	$s7, $t6, $s3
	bltz	$s7, .LBB18_135
# %bb.129:                              # %.thread480.us
                                        #   in Loop: Header=BB18_120 Depth=2
	bge	$s7, $t4, .LBB18_135
# %bb.130:                              #   in Loop: Header=BB18_120 Depth=2
	slli.d	$s7, $s7, 2
	ldx.w	$a6, $t0, $s7
	ldx.w	$s8, $a4, $s7
	slt	$a6, $zero, $a6
	sub.d	$ra, $s8, $s6
	add.w	$a6, $ra, $a6
	blt	$a5, $a6, .LBB18_118
# %bb.131:                              #   in Loop: Header=BB18_120 Depth=2
	bge	$s6, $s8, .LBB18_135
# %bb.132:                              #   in Loop: Header=BB18_120 Depth=2
	ldx.w	$s7, $t5, $s7
	bltz	$s7, .LBB18_135
# %bb.133:                              #   in Loop: Header=BB18_120 Depth=2
	bge	$s7, $t4, .LBB18_135
# %bb.134:                              #   in Loop: Header=BB18_120 Depth=2
	slli.d	$a6, $s7, 2
	ldx.w	$s7, $t0, $a6
	ldx.w	$a6, $a4, $a6
	slt	$s7, $zero, $s7
	sub.d	$a6, $a6, $s6
	add.w	$a6, $a6, $s7
	blt	$a5, $a6, .LBB18_118
.LBB18_135:                             # %.thread490.us
                                        #   in Loop: Header=BB18_120 Depth=2
	ldx.w	$s7, $t5, $s3
	bltz	$s7, .LBB18_142
# %bb.136:                              # %.thread490.us
                                        #   in Loop: Header=BB18_120 Depth=2
	bge	$s7, $t4, .LBB18_142
# %bb.137:                              #   in Loop: Header=BB18_120 Depth=2
	slli.d	$s7, $s7, 2
	ldx.w	$a6, $t0, $s7
	ldx.w	$s8, $a4, $s7
	slt	$a6, $zero, $a6
	sub.d	$ra, $s8, $s6
	add.w	$a6, $ra, $a6
	blt	$a5, $a6, .LBB18_118
# %bb.138:                              #   in Loop: Header=BB18_120 Depth=2
	bge	$s6, $s8, .LBB18_142
# %bb.139:                              #   in Loop: Header=BB18_120 Depth=2
	ldx.w	$s7, $t6, $s7
	bltz	$s7, .LBB18_142
# %bb.140:                              #   in Loop: Header=BB18_120 Depth=2
	bge	$s7, $t4, .LBB18_142
# %bb.141:                              #   in Loop: Header=BB18_120 Depth=2
	slli.d	$a6, $s7, 2
	ldx.w	$s7, $t0, $a6
	ldx.w	$a6, $a4, $a6
	slt	$s7, $zero, $s7
	sub.d	$a6, $a6, $s6
	add.w	$a6, $a6, $s7
	blt	$a5, $a6, .LBB18_118
.LBB18_142:                             # %.thread502.us
                                        #   in Loop: Header=BB18_120 Depth=2
	ldx.w	$s7, $t7, $s3
	bltz	$s7, .LBB18_119
# %bb.143:                              # %.thread502.us
                                        #   in Loop: Header=BB18_120 Depth=2
	bge	$s7, $t4, .LBB18_119
# %bb.144:                              #   in Loop: Header=BB18_120 Depth=2
	slli.d	$s7, $s7, 2
	ldx.w	$a6, $t0, $s7
	ldx.w	$s8, $a4, $s7
	slt	$a6, $zero, $a6
	sub.d	$ra, $s8, $s6
	add.w	$a6, $ra, $a6
	blt	$a5, $a6, .LBB18_118
# %bb.145:                              #   in Loop: Header=BB18_120 Depth=2
	bge	$s6, $s8, .LBB18_119
# %bb.146:                              #   in Loop: Header=BB18_120 Depth=2
	ldx.w	$s7, $t6, $s7
	bltz	$s7, .LBB18_119
# %bb.147:                              #   in Loop: Header=BB18_120 Depth=2
	bge	$s7, $t4, .LBB18_119
# %bb.148:                              #   in Loop: Header=BB18_120 Depth=2
	slli.d	$a6, $s7, 2
	ldx.w	$s7, $t0, $a6
	ldx.w	$a6, $a4, $a6
	slt	$s7, $zero, $s7
	sub.d	$a6, $a6, $s6
	add.w	$a6, $a6, $s7
	ori	$s6, $zero, 2
	bge	$a6, $s6, .LBB18_118
	b	.LBB18_119
	.p2align	4, , 16
.LBB18_149:                             # %._crit_edge.us
                                        #   in Loop: Header=BB18_117 Depth=1
	ld.w	$a6, $s0, 0
	add.d	$a6, $a6, $t8
	st.w	$a6, $s0, 0
	blt	$t8, $a5, .LBB18_154
# %bb.150:                              # %._crit_edge.us
                                        #   in Loop: Header=BB18_117 Depth=1
	ld.w	$a6, $fp, 1120
	addi.w	$a7, $a7, 1
	move	$s4, $a3
	move	$s6, $a1
	move	$s7, $a0
	move	$a3, $t2
	move	$a0, $t0
	move	$a1, $t1
	blt	$a7, $a6, .LBB18_117
	b	.LBB18_154
.LBB18_151:                             # %.thread476
	st.w	$zero, $s0, 0
	st.w	$zero, $s1, 0
	b	.LBB18_8
.LBB18_152:                             # %.thread527
	st.w	$zero, $s0, 0
	st.w	$zero, $s1, 0
	ld.w	$a0, $s0, 0
	move	$a2, $zero
	move	$s3, $a0
	b	.LBB18_110
.LBB18_153:                             # %.lr.ph559.split
	st.d	$a0, $s2, 0
	st.d	$a1, $s2, 8
	st.d	$a3, $s2, 16
	move	$t1, $s6
	move	$t0, $s7
	move	$t2, $s4
.LBB18_154:                             # %..critedge.loopexit_crit_edge
	st.d	$t2, $sp, 48
	st.d	$t0, $sp, 32
	st.d	$t1, $sp, 40
	move	$a0, $t0
	ld.d	$a1, $sp, 40
	bne	$a1, $a0, .LBB18_32
	b	.LBB18_33
.LBB18_155:                             # %.noexc.i.i433.invoke
.Ltmp156:
	pcaddu18i	$ra, %call36(_ZSt28__throw_bad_array_new_lengthv)
	jirl	$ra, $ra, 0
.Ltmp157:
# %bb.156:                              # %.noexc.i.i433.cont
.LBB18_157:
	ori	$a0, $zero, 4
	bne	$s3, $a0, .LBB18_5
# %bb.158:
	ld.w	$a0, $s5, 0
	st.w	$a0, $s4, 0
	b	.LBB18_5
.LBB18_159:
	ori	$a0, $zero, 4
	bne	$s4, $a0, .LBB18_93
# %bb.160:
	ld.w	$a0, $s3, 0
	st.w	$a0, $s2, 0
	b	.LBB18_93
.LBB18_161:
.Ltmp151:
	b	.LBB18_163
.LBB18_162:
.Ltmp160:
.LBB18_163:
	ld.d	$a2, $sp, 32
	beqz	$a2, .LBB18_165
# %bb.164:
	ld.d	$a1, $sp, 48
	sub.d	$a1, $a1, $a2
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB18_165:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit461
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_, .Lfunc_end18-_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI18_0:
	.word	.LBB18_84-.LJTI18_0
	.word	.LBB18_78-.LJTI18_0
	.word	.LBB18_85-.LJTI18_0
	.word	.LBB18_79-.LJTI18_0
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp145-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp160-.Lfunc_begin8         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp160-.Lfunc_begin8         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin8         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp155-.Ltmp152              #   Call between .Ltmp152 and .Ltmp155
	.uleb128 .Ltmp160-.Lfunc_begin8         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp158-.Ltmp155              #   Call between .Ltmp155 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin8         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp156-.Ltmp159              #   Call between .Ltmp159 and .Ltmp156
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp160-.Lfunc_begin8         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Lfunc_end18-.Ltmp157          #   Call between .Ltmp157 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus
.LCPI19_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus
	.p2align	5
	.type	_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus,@function
_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus: # @_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
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
	move	$s3, $a5
	move	$s5, $a4
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 616
	beqz	$a0, .LBB19_5
# %bb.1:
	ld.w	$a0, $fp, 584
	srai.d	$s2, $s1, 31
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 584
	pcalau12i	$a0, %pc_hi20(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save)
	xor	$s1, $s1, $s2
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save)
	addi.d	$s4, $a1, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save)
	beqz	$a0, .LBB19_219
.LBB19_2:
	pcalau12i	$a0, %pc_hi20(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic)
	sub.d	$s1, $s2, $s1
	dbar	20
	beqz	$a0, .LBB19_221
.LBB19_3:
	ld.d	$a0, $s4, 8
	ld.d	$a2, $s4, 0
	ld.d	$a1, $fp, 1160
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	add.d	$s0, $s0, $s1
	bgeu	$a3, $a1, .LBB19_13
# %bb.4:
	sub.d	$a1, $a1, $a3
	pcalau12i	$a0, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save)
	addi.d	$a0, $a0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save)
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB19_16
.LBB19_5:
	ld.d	$a0, $fp, 1304
	ld.d	$a1, $fp, 1312
	beq	$a1, $a0, .LBB19_7
# %bb.6:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a0, $fp, 1312
.LBB19_7:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit
	ld.d	$a1, $fp, 1160
	beqz	$a1, .LBB19_194
# %bb.8:                                # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	addi.d	$s0, $fp, 1304
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB19_194
# %bb.9:                                # %.lr.ph
	ld.d	$a1, $s0, 0
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB19_205
# %bb.10:
	move	$a2, $zero
.LBB19_11:                              # %scalar.ph.preheader
	move	$a3, $a2
	.p2align	4, , 16
.LBB19_12:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a2, 2
	stx.w	$a3, $a1, $a2
	addi.w	$a3, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	bltu	$a2, $a0, .LBB19_12
	b	.LBB19_194
.LBB19_13:
	bgeu	$a1, $a3, .LBB19_16
# %bb.14:
	alsl.d	$a1, $a1, $a2, 2
	beq	$a0, $a1, .LBB19_16
# %bb.15:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i413
	st.d	$a1, $s4, 8
.LBB19_16:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit414
	ld.d	$a0, $fp, 1160
	pcalau12i	$s2, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
	beqz	$s5, .LBB19_26
# %bb.17:                               # %.preheader443
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB19_195
# %bb.18:                               # %.lr.ph447
	ld.d	$a1, $fp, 1360
	ld.d	$a2, $s4, 0
	bstrpick.d	$a3, $a0, 30, 0
	ori	$a5, $zero, 8
	move	$a4, $zero
	bltu	$a3, $a5, .LBB19_23
# %bb.19:                               # %.lr.ph447
	sub.d	$a5, $a2, $a1
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB19_23
# %bb.20:                               # %vector.ph536
	bstrpick.d	$a4, $a0, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a2, 16
	addi.d	$a6, $a1, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB19_21:                              # %vector.body539
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB19_21
# %bb.22:                               # %middle.block543
	beq	$a3, $a4, .LBB19_25
.LBB19_23:                              # %scalar.ph534.preheader
	alsl.d	$a1, $a4, $a1, 2
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB19_24:                              # %scalar.ph534
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB19_24
.LBB19_25:                              # %._crit_edge448.thread
	add.w	$a1, $s0, $a0
	st.w	$a1, $s2, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
	b	.LBB19_196
.LBB19_26:                              # %.critedge
	add.w	$a1, $s0, $a0
	st.w	$a1, $s2, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
.LBB19_27:                              # %.loopexit442
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s0, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a3, $a0, %pc_lo12(.L.str.33)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
	pcalau12i	$a2, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5i_old)
	addi.d	$s5, $a2, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5i_old)
	st.d	$a0, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a3, $a0, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
	pcalau12i	$a2, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5j_old)
	addi.d	$s6, $a2, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5j_old)
	st.d	$a0, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a3, $a0, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE9level_old)
	addi.d	$s7, $a1, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE9level_old)
	st.d	$a0, $s7, 0
	addi.d	$a1, $fp, 1328
	move	$a0, $s0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZN10MallocPlus11memory_swapEPPiS1_)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 1336
	move	$a0, $s0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZN10MallocPlus11memory_swapEPPiS1_)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 1352
	move	$a0, $s0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZN10MallocPlus11memory_swapEPPiS1_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1304
	ld.d	$a1, $fp, 1312
	beq	$a1, $a0, .LBB19_29
# %bb.28:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i416
	st.d	$a0, $fp, 1312
.LBB19_29:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit417
	ld.w	$a1, $s2, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
	addi.d	$s1, $fp, 1304
	beqz	$a1, .LBB19_31
# %bb.30:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB19_31:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit420
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order)
	addi.d	$s3, $a1, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order)
	beqz	$a0, .LBB19_223
.LBB19_32:
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 0
	addi.w	$s2, $zero, -1
	move	$a5, $s2
	lu32i.d	$a5, 0
	sub.d	$a2, $a1, $a0
	srai.d	$a3, $a2, 2
	ori	$a4, $zero, 3
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	st.w	$a5, $sp, 160
	bltu	$a4, $a3, .LBB19_34
# %bb.33:
	ori	$a0, $zero, 4
	sub.d	$a2, $a0, $a3
	pcalau12i	$a0, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order)
	addi.d	$a0, $a0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order)
	addi.d	$a3, $sp, 160
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	b	.LBB19_37
.LBB19_34:
	ori	$a3, $zero, 16
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB19_37
# %bb.35:
	addi.d	$a0, $a0, 16
	beq	$a1, $a0, .LBB19_37
# %bb.36:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i422
	st.d	$a0, $s3, 8
.LBB19_37:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 1160
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB19_95
# %bb.38:                               # %.lr.ph457
	move	$s0, $zero
	move	$s8, $zero
	move	$s4, $zero
	move	$s3, $zero
	lu12i.w	$a1, -245
	ori	$t6, $a1, 3520
	addi.w	$t7, $zero, -1
	addi.w	$t8, $zero, -2
	ori	$ra, $zero, 5
	pcalau12i	$a1, %pc_hi20(.LJTI19_0)
	addi.d	$t1, $a1, %pc_lo12(.LJTI19_0)
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$t6, $sp, 48                    # 8-byte Folded Spill
	st.d	$t7, $sp, 40                    # 8-byte Folded Spill
	st.d	$t8, $sp, 32                    # 8-byte Folded Spill
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	b	.LBB19_42
	.p2align	4, , 16
.LBB19_39:                              #   in Loop: Header=BB19_42 Depth=1
	ld.d	$a1, $s1, 0
	stx.w	$s3, $a1, $s8
	ld.d	$a1, $s5, 0
	ldx.w	$a1, $a1, $s8
	ld.d	$a2, $t3, 0
	slli.d	$a3, $s3, 2
	stx.w	$a1, $a2, $a3
	ld.d	$a1, $s6, 0
	ldx.w	$a1, $a1, $s8
	ld.d	$a2, $t4, 0
	stx.w	$a1, $a2, $a3
	ld.d	$a1, $s7, 0
	ldx.w	$a1, $a1, $s8
	ld.d	$a2, $t5, 0
	stx.w	$a1, $a2, $a3
.LBB19_40:                              # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
                                        #   in Loop: Header=BB19_42 Depth=1
	addi.w	$s3, $s3, 1
.LBB19_41:                              # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
                                        #   in Loop: Header=BB19_42 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s8, $s8, 4
	addi.w	$s0, $s0, 1
	bge	$s4, $a0, .LBB19_95
.LBB19_42:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $t2, 0
	ldx.w	$a2, $a1, $s8
	beqz	$a2, .LBB19_39
# %bb.43:                               #   in Loop: Header=BB19_42 Depth=1
	beq	$a2, $t6, .LBB19_39
# %bb.44:                               #   in Loop: Header=BB19_42 Depth=1
	ld.d	$a3, $s1, 0
	stx.w	$s3, $a3, $s8
	bge	$t7, $a2, .LBB19_48
# %bb.45:                               #   in Loop: Header=BB19_42 Depth=1
	ld.d	$a1, $fp, 1360
	ldx.w	$a1, $a1, $s8
	addi.d	$a1, $a1, 4
	bltu	$ra, $a1, .LBB19_41
# %bb.46:                               #   in Loop: Header=BB19_42 Depth=1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $t1, $a1
	add.d	$a1, $t1, $a1
	jr	$a1
.LBB19_47:                              #   in Loop: Header=BB19_42 Depth=1
	ld.d	$a1, $s5, 0
	ldx.w	$a2, $a1, $s8
	ld.d	$a3, $t3, 0
	slli.d	$a2, $a2, 1
	addi.d	$a2, $a2, 1
	slli.d	$a4, $s3, 2
	stx.w	$a2, $a3, $a4
	ld.d	$a2, $s6, 0
	ldx.w	$a5, $a2, $s8
	ld.d	$a6, $t4, 0
	slli.d	$a5, $a5, 1
	stx.w	$a5, $a6, $a4
	ld.d	$a5, $s7, 0
	ldx.w	$a7, $a5, $s8
	ld.d	$t0, $t5, 0
	addi.d	$a7, $a7, 1
	stx.w	$a7, $t0, $a4
	ldx.w	$a1, $a1, $s8
	slli.d	$a1, $a1, 1
	addi.d	$a4, $a4, 4
	stx.w	$a1, $a3, $a4
	ldx.w	$a1, $a2, $s8
	slli.d	$a1, $a1, 1
	b	.LBB19_55
.LBB19_48:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$a1, $a1, $s8
	blt	$t8, $a1, .LBB19_41
# %bb.49:                               #   in Loop: Header=BB19_42 Depth=1
	ld.d	$a1, $s5, 0
	ldx.wu	$a1, $a1, $s8
	srli.d	$a2, $a1, 31
	ld.d	$a3, $t3, 0
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 1
	slli.d	$a2, $s3, 2
	stx.w	$a1, $a3, $a2
	ld.d	$a1, $s6, 0
	ldx.wu	$a1, $a1, $s8
	ld.d	$a3, $t4, 0
	srli.d	$a4, $a1, 31
	add.w	$a1, $a1, $a4
	srli.d	$a1, $a1, 1
	stx.w	$a1, $a3, $a2
	ld.d	$a1, $s7, 0
	ldx.w	$a1, $a1, $s8
	ld.d	$a3, $t5, 0
	addi.d	$a1, $a1, -1
	stx.w	$a1, $a3, $a2
	b	.LBB19_40
.LBB19_50:                              #   in Loop: Header=BB19_42 Depth=1
	ld.d	$a1, $s5, 0
	ldx.w	$a2, $a1, $s8
	ld.d	$a3, $t3, 0
	slli.d	$a2, $a2, 1
	slli.d	$a4, $s3, 2
	stx.w	$a2, $a3, $a4
	ld.d	$a2, $s6, 0
	ldx.w	$a5, $a2, $s8
	ld.d	$a6, $t4, 0
	slli.d	$a5, $a5, 1
	stx.w	$a5, $a6, $a4
	ld.d	$a5, $s7, 0
	ldx.w	$a7, $a5, $s8
	ld.d	$t0, $t5, 0
	addi.d	$a7, $a7, 1
	stx.w	$a7, $t0, $a4
	ldx.w	$a1, $a1, $s8
	slli.d	$a1, $a1, 1
	b	.LBB19_54
.LBB19_51:                              #   in Loop: Header=BB19_42 Depth=1
	ld.d	$a1, $s5, 0
	ldx.w	$a2, $a1, $s8
	ld.d	$a3, $t3, 0
	slli.d	$a2, $a2, 1
	slli.d	$a4, $s3, 2
	stx.w	$a2, $a3, $a4
	ld.d	$a2, $s6, 0
	ldx.w	$a5, $a2, $s8
	ld.d	$a6, $t4, 0
	slli.d	$a5, $a5, 1
	addi.d	$a5, $a5, 1
	b	.LBB19_53
.LBB19_52:                              #   in Loop: Header=BB19_42 Depth=1
	ld.d	$a1, $s5, 0
	ldx.w	$a2, $a1, $s8
	ld.d	$a3, $t3, 0
	slli.d	$a2, $a2, 1
	addi.d	$a2, $a2, 1
	slli.d	$a4, $s3, 2
	stx.w	$a2, $a3, $a4
	ld.d	$a2, $s6, 0
	ldx.w	$a5, $a2, $s8
	ld.d	$a6, $t4, 0
	slli.d	$a5, $a5, 1
.LBB19_53:                              # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
                                        #   in Loop: Header=BB19_42 Depth=1
	stx.w	$a5, $a6, $a4
	ld.d	$a5, $s7, 0
	ldx.w	$a7, $a5, $s8
	ld.d	$t0, $t5, 0
	addi.d	$a7, $a7, 1
	stx.w	$a7, $t0, $a4
	ldx.w	$a1, $a1, $s8
	slli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
.LBB19_54:                              # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
                                        #   in Loop: Header=BB19_42 Depth=1
	addi.d	$a4, $a4, 4
	stx.w	$a1, $a3, $a4
	ldx.w	$a1, $a2, $s8
	slli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
.LBB19_55:                              # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
                                        #   in Loop: Header=BB19_42 Depth=1
	stx.w	$a1, $a6, $a4
	ldx.w	$a1, $a5, $s8
	addi.d	$a1, $a1, 1
	stx.w	$a1, $t0, $a4
	addi.w	$s3, $s3, 2
	b	.LBB19_41
.LBB19_56:                              #   in Loop: Header=BB19_42 Depth=1
	move	$s1, $s6
	move	$s6, $s5
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $s1, 0
	ld.d	$a3, $s7, 0
	st.d	$a3, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh20set_refinement_orderEPiiiiiiiiS0_S0_S0_)
	jirl	$ra, $ra, 0
	move	$t6, $s7
	ld.d	$a6, $s7, 0
	ld.d	$a4, $fp, 1352
	ld.d	$a5, $s5, 0
	move	$s5, $s6
	move	$s6, $s1
	ld.d	$a3, $s5, 0
	ldx.w	$a7, $a6, $s8
	ld.d	$a2, $fp, 1328
	ld.d	$a1, $s1, 0
	ld.d	$a0, $fp, 1336
	addi.d	$t0, $a7, 1
	slli.d	$a7, $s3, 2
	stx.w	$t0, $a4, $a7
	ld.w	$t0, $a5, 0
	ori	$t1, $zero, 3
	bltu	$t1, $t0, .LBB19_93
# %bb.57:                               #   in Loop: Header=BB19_42 Depth=1
	slli.d	$t0, $t0, 2
	pcalau12i	$t1, %pc_hi20(.LJTI19_1)
	addi.d	$t1, $t1, %pc_lo12(.LJTI19_1)
	ldx.w	$t0, $t1, $t0
	add.d	$t0, $t1, $t0
	jr	$t0
.LBB19_58:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$t0, $a3, $s8
	slli.d	$t0, $t0, 1
	b	.LBB19_61
.LBB19_59:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$t0, $a3, $s8
	slli.d	$t0, $t0, 1
	addi.d	$t0, $t0, 1
	b	.LBB19_63
.LBB19_60:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$t0, $a3, $s8
	slli.d	$t0, $t0, 1
	addi.d	$t0, $t0, 1
.LBB19_61:                              # %.sink.split
                                        #   in Loop: Header=BB19_42 Depth=1
	stx.w	$t0, $a2, $a7
	ldx.w	$t0, $a1, $s8
	slli.d	$t0, $t0, 1
	b	.LBB19_64
.LBB19_62:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$t0, $a3, $s8
	slli.d	$t0, $t0, 1
.LBB19_63:                              # %.sink.split
                                        #   in Loop: Header=BB19_42 Depth=1
	stx.w	$t0, $a2, $a7
	ldx.w	$t0, $a1, $s8
	slli.d	$t0, $t0, 1
	addi.d	$t0, $t0, 1
.LBB19_64:                              # %.sink.split
                                        #   in Loop: Header=BB19_42 Depth=1
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	move	$s7, $t6
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 40                    # 8-byte Folded Reload
	ori	$ra, $zero, 5
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	stx.w	$t0, $a0, $a7
	addi.w	$s3, $s3, 1
.LBB19_65:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$a7, $a6, $s8
	addi.d	$t0, $a7, 1
	slli.d	$a7, $s3, 2
	stx.w	$t0, $a4, $a7
	ld.w	$t0, $a5, 4
	ori	$t8, $zero, 3
	bltu	$t8, $t0, .LBB19_74
# %bb.66:                               #   in Loop: Header=BB19_42 Depth=1
	slli.d	$t0, $t0, 2
	pcalau12i	$t1, %pc_hi20(.LJTI19_2)
	addi.d	$t1, $t1, %pc_lo12(.LJTI19_2)
	ldx.w	$t0, $t1, $t0
	add.d	$t0, $t1, $t0
	jr	$t0
.LBB19_67:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$t0, $a3, $s8
	slli.d	$t0, $t0, 1
	b	.LBB19_70
.LBB19_68:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$t0, $a3, $s8
	slli.d	$t0, $t0, 1
	addi.d	$t0, $t0, 1
	b	.LBB19_72
.LBB19_69:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$t0, $a3, $s8
	slli.d	$t0, $t0, 1
	addi.d	$t0, $t0, 1
.LBB19_70:                              # %.sink.split513
                                        #   in Loop: Header=BB19_42 Depth=1
	stx.w	$t0, $a2, $a7
	ldx.w	$t0, $a1, $s8
	slli.d	$t0, $t0, 1
	b	.LBB19_73
.LBB19_71:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$t0, $a3, $s8
	slli.d	$t0, $t0, 1
.LBB19_72:                              # %.sink.split513
                                        #   in Loop: Header=BB19_42 Depth=1
	stx.w	$t0, $a2, $a7
	ldx.w	$t0, $a1, $s8
	slli.d	$t0, $t0, 1
	addi.d	$t0, $t0, 1
.LBB19_73:                              # %.sink.split513
                                        #   in Loop: Header=BB19_42 Depth=1
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	stx.w	$t0, $a0, $a7
	addi.w	$s3, $s3, 1
.LBB19_74:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$a7, $a6, $s8
	addi.d	$t0, $a7, 1
	slli.d	$a7, $s3, 2
	stx.w	$t0, $a4, $a7
	ld.w	$t0, $a5, 8
	ori	$t8, $zero, 3
	bltu	$t8, $t0, .LBB19_94
# %bb.75:                               #   in Loop: Header=BB19_42 Depth=1
	slli.d	$t0, $t0, 2
	pcalau12i	$t1, %pc_hi20(.LJTI19_3)
	addi.d	$t1, $t1, %pc_lo12(.LJTI19_3)
	ldx.w	$t0, $t1, $t0
	add.d	$t0, $t1, $t0
	jr	$t0
.LBB19_76:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$t0, $a3, $s8
	slli.d	$t0, $t0, 1
	b	.LBB19_79
.LBB19_77:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$t0, $a3, $s8
	slli.d	$t0, $t0, 1
	addi.d	$t0, $t0, 1
	b	.LBB19_81
.LBB19_78:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$t0, $a3, $s8
	slli.d	$t0, $t0, 1
	addi.d	$t0, $t0, 1
.LBB19_79:                              # %.sink.split516
                                        #   in Loop: Header=BB19_42 Depth=1
	stx.w	$t0, $a2, $a7
	ldx.w	$t0, $a1, $s8
	slli.d	$t0, $t0, 1
	b	.LBB19_82
.LBB19_80:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$t0, $a3, $s8
	slli.d	$t0, $t0, 1
.LBB19_81:                              # %.sink.split516
                                        #   in Loop: Header=BB19_42 Depth=1
	stx.w	$t0, $a2, $a7
	ldx.w	$t0, $a1, $s8
	slli.d	$t0, $t0, 1
	addi.d	$t0, $t0, 1
.LBB19_82:                              # %.sink.split516
                                        #   in Loop: Header=BB19_42 Depth=1
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	stx.w	$t0, $a0, $a7
	addi.w	$s3, $s3, 1
.LBB19_83:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$a6, $a6, $s8
	addi.d	$a7, $a6, 1
	slli.d	$a6, $s3, 2
	stx.w	$a7, $a4, $a6
	ld.w	$a4, $a5, 12
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB19_92
# %bb.84:                               #   in Loop: Header=BB19_42 Depth=1
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI19_4)
	addi.d	$a5, $a5, %pc_lo12(.LJTI19_4)
	ldx.w	$a4, $a5, $a4
	add.d	$a4, $a5, $a4
	jr	$a4
.LBB19_85:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$a3, $a3, $s8
	slli.d	$a3, $a3, 1
	b	.LBB19_88
.LBB19_86:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$a3, $a3, $s8
	slli.d	$a3, $a3, 1
	addi.d	$a3, $a3, 1
	b	.LBB19_90
.LBB19_87:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$a3, $a3, $s8
	slli.d	$a3, $a3, 1
	addi.d	$a3, $a3, 1
.LBB19_88:                              # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit.sink.split
                                        #   in Loop: Header=BB19_42 Depth=1
	stx.w	$a3, $a2, $a6
	ldx.w	$a1, $a1, $s8
	slli.d	$a1, $a1, 1
	b	.LBB19_91
.LBB19_89:                              #   in Loop: Header=BB19_42 Depth=1
	ldx.w	$a3, $a3, $s8
	slli.d	$a3, $a3, 1
.LBB19_90:                              # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit.sink.split
                                        #   in Loop: Header=BB19_42 Depth=1
	stx.w	$a3, $a2, $a6
	ldx.w	$a1, $a1, $s8
	slli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
.LBB19_91:                              # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit.sink.split
                                        #   in Loop: Header=BB19_42 Depth=1
	stx.w	$a1, $a0, $a6
	addi.w	$s3, $s3, 1
.LBB19_92:                              # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.loopexit
                                        #   in Loop: Header=BB19_42 Depth=1
	ld.w	$a0, $fp, 1160
	b	.LBB19_41
.LBB19_93:                              #   in Loop: Header=BB19_42 Depth=1
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	move	$s7, $t6
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 40                    # 8-byte Folded Reload
	ori	$ra, $zero, 5
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB19_65
.LBB19_94:                              #   in Loop: Header=BB19_42 Depth=1
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	b	.LBB19_83
.LBB19_95:                              # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit._crit_edge
	ld.d	$a1, $s5, 0
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh13calc_celltypeEm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB19_152
# %bb.96:
	addi.d	$a2, $sp, 168
	st.w	$zero, $sp, 168
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $s6, 16
	st.d	$zero, $sp, 176
	st.d	$a2, $sp, 184
	st.d	$a2, $sp, 192
	st.d	$zero, $sp, 200
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	beqz	$a1, .LBB19_102
# %bb.97:
	addi.d	$a0, $sp, 160
	st.d	$a0, $sp, 272
	addi.d	$a3, $sp, 272
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB19_98:                              # %.noexc.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB19_98
# %bb.99:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
	st.d	$a1, $sp, 184
	move	$a2, $a0
	.p2align	4, , 16
.LBB19_100:                             # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB19_100
# %bb.101:
	ld.d	$a2, $s6, 40
	st.d	$a1, $sp, 192
	st.d	$a2, $sp, 200
	st.d	$a0, $sp, 176
.LBB19_102:                             # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit.i
	addi.d	$a2, $sp, 216
	st.w	$zero, $sp, 216
	ld.d	$a1, $s6, 64
	st.d	$zero, $sp, 224
	st.d	$a2, $sp, 232
	st.d	$a2, $sp, 240
	st.d	$zero, $sp, 248
	beqz	$a1, .LBB19_109
# %bb.103:
	addi.d	$a0, $sp, 208
	st.d	$a0, $sp, 272
.Ltmp161:
	addi.d	$a3, $sp, 272
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp162:
# %bb.104:                              # %.noexc.i.i5.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB19_105:                             # %.noexc.i.i5.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB19_105
# %bb.106:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
	st.d	$a1, $sp, 232
	move	$a2, $a0
	.p2align	4, , 16
.LBB19_107:                             # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB19_107
# %bb.108:
	ld.d	$a2, $s6, 88
	st.d	$a1, $sp, 240
	st.d	$a2, $sp, 248
	st.d	$a0, $sp, 224
.LBB19_109:                             # %_ZN10MallocPlusC2ERKS_.exit
.Ltmp164:
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN10MallocPlus26memory_entry_by_name_beginEv)
	jirl	$ra, $ra, 0
.Ltmp165:
# %bb.110:                              # %.preheader
	move	$s1, $a0
	ori	$s3, $zero, 4
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$s0, $a0, %pc_lo12(.L.str.37)
	ori	$s4, $zero, 1
	ori	$s5, $zero, 8
	b	.LBB19_113
	.p2align	4, , 16
.LBB19_111:                             # %._crit_edge473
                                        #   in Loop: Header=BB19_113 Depth=1
.Ltmp178:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_replaceEPvS0_)
	jirl	$ra, $ra, 0
.Ltmp179:
.LBB19_112:                             #   in Loop: Header=BB19_113 Depth=1
.Ltmp181:
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN10MallocPlus25memory_entry_by_name_nextEv)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.Ltmp182:
.LBB19_113:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_123 Depth 2
                                        #     Child Loop BB19_139 Depth 2
.Ltmp167:
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN10MallocPlus24memory_entry_by_name_endEv)
	jirl	$ra, $ra, 0
.Ltmp168:
# %bb.114:                              #   in Loop: Header=BB19_113 Depth=1
	beq	$s1, $a0, .LBB19_150
# %bb.115:                              #   in Loop: Header=BB19_113 Depth=1
	ld.d	$a0, $s1, 32
	beq	$a0, $s3, .LBB19_133
# %bb.116:                              #   in Loop: Header=BB19_113 Depth=1
	bne	$a0, $s5, .LBB19_112
# %bb.117:                              #   in Loop: Header=BB19_113 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
.Ltmp175:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a3, $a0, %pc_lo12(.L.str.36)
	ori	$a2, $zero, 8
	ori	$a4, $zero, 16
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
.Ltmp176:
# %bb.118:                              #   in Loop: Header=BB19_113 Depth=1
	move	$a2, $a0
	ld.d	$t2, $fp, 1160
	ld.d	$a1, $s1, 0
	addi.w	$a0, $t2, 0
	blt	$a0, $s4, .LBB19_111
# %bb.119:                              # %.lr.ph472
                                        #   in Loop: Header=BB19_113 Depth=1
	move	$t6, $zero
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a3, $s7, 0
	ld.d	$a4, $fp, 1368
	ld.d	$a5, $fp, 1384
	ld.d	$a6, $fp, 1376
	ld.d	$a7, $fp, 1392
	addi.d	$t0, $a2, 8
	addi.d	$t1, $a2, 24
	bstrpick.d	$t2, $t2, 30, 0
	move	$t3, $a6
	move	$t4, $a4
	move	$t5, $a1
	b	.LBB19_123
	.p2align	4, , 16
.LBB19_120:                             #   in Loop: Header=BB19_123 Depth=2
	fld.d	$fa0, $t5, 0
.LBB19_121:                             #   in Loop: Header=BB19_123 Depth=2
	slli.d	$t7, $t6, 3
	fstx.d	$fa0, $a2, $t7
	addi.w	$t7, $t6, 1
.LBB19_122:                             #   in Loop: Header=BB19_123 Depth=2
	addi.d	$t5, $t5, 8
	addi.d	$a5, $a5, 4
	addi.d	$t4, $t4, 4
	addi.d	$a7, $a7, 4
	addi.d	$t3, $t3, 4
	addi.d	$a0, $a0, 4
	addi.d	$t2, $t2, -1
	addi.d	$a3, $a3, 4
	move	$t6, $t7
	beqz	$t2, .LBB19_111
.LBB19_123:                             #   Parent Loop BB19_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $a0, 0
	beqz	$t7, .LBB19_120
# %bb.124:                              #   in Loop: Header=BB19_123 Depth=2
	bge	$s2, $t7, .LBB19_127
# %bb.125:                              #   in Loop: Header=BB19_123 Depth=2
	fld.d	$fa0, $t5, 0
	slli.d	$t8, $t6, 3
	fstx.d	$fa0, $a2, $t8
	fstx.d	$fa0, $t0, $t8
	ld.w	$s1, $a3, 0
	addi.w	$t7, $t6, 2
	bne	$s1, $s4, .LBB19_122
# %bb.126:                              #   in Loop: Header=BB19_123 Depth=2
	fld.d	$fa0, $t5, 0
	slli.d	$t7, $t7, 3
	fstx.d	$fa0, $a2, $t7
	fstx.d	$fa0, $t1, $t8
	addi.w	$t7, $t6, 4
	b	.LBB19_122
	.p2align	4, , 16
.LBB19_127:                             #   in Loop: Header=BB19_123 Depth=2
	addi.w	$t8, $zero, -3
	beq	$t7, $t8, .LBB19_130
# %bb.128:                              #   in Loop: Header=BB19_123 Depth=2
	addi.w	$t8, $zero, -2
	bne	$t7, $t8, .LBB19_132
# %bb.129:                              # %.thread
                                        #   in Loop: Header=BB19_123 Depth=2
	ld.w	$t7, $a7, 0
	ld.w	$t8, $t3, 0
	slli.d	$s1, $t7, 2
	ldx.w	$s1, $a6, $s1
	b	.LBB19_131
.LBB19_130:                             #   in Loop: Header=BB19_123 Depth=2
	ld.w	$t7, $a5, 0
	ld.w	$t8, $t4, 0
	slli.d	$s1, $t7, 2
	ldx.w	$s1, $a4, $s1
.LBB19_131:                             #   in Loop: Header=BB19_123 Depth=2
	fld.d	$fa0, $t5, 0
	slli.d	$t8, $t8, 3
	fldx.d	$fa1, $a1, $t8
	slli.d	$t7, $t7, 3
	fldx.d	$fa2, $a1, $t7
	slli.d	$t7, $s1, 3
	fldx.d	$fa3, $a1, $t7
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa3
	vldi	$vr1, -944
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB19_121
.LBB19_132:                             #   in Loop: Header=BB19_123 Depth=2
	move	$t7, $t6
	b	.LBB19_122
	.p2align	4, , 16
.LBB19_133:                             #   in Loop: Header=BB19_113 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
.Ltmp169:
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
.Ltmp170:
# %bb.134:                              #   in Loop: Header=BB19_113 Depth=1
	move	$a2, $a0
	ld.d	$t2, $fp, 1160
	ld.d	$a1, $s1, 0
	addi.w	$a0, $t2, 0
	blt	$a0, $s4, .LBB19_149
# %bb.135:                              # %.lr.ph463
                                        #   in Loop: Header=BB19_113 Depth=1
	move	$t6, $zero
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a3, $s7, 0
	ld.d	$a4, $fp, 1368
	ld.d	$a5, $fp, 1384
	ld.d	$a6, $fp, 1376
	ld.d	$a7, $fp, 1392
	addi.d	$t0, $a2, 4
	addi.d	$t1, $a2, 12
	bstrpick.d	$t2, $t2, 30, 0
	move	$t3, $a6
	move	$t4, $a4
	move	$t5, $a1
	b	.LBB19_139
	.p2align	4, , 16
.LBB19_136:                             #   in Loop: Header=BB19_139 Depth=2
	fld.s	$fa0, $t5, 0
.LBB19_137:                             #   in Loop: Header=BB19_139 Depth=2
	slli.d	$t7, $t6, 2
	fstx.s	$fa0, $a2, $t7
	addi.w	$t7, $t6, 1
.LBB19_138:                             #   in Loop: Header=BB19_139 Depth=2
	addi.d	$t5, $t5, 4
	addi.d	$a5, $a5, 4
	addi.d	$t4, $t4, 4
	addi.d	$a7, $a7, 4
	addi.d	$t3, $t3, 4
	addi.d	$a0, $a0, 4
	addi.d	$t2, $t2, -1
	addi.d	$a3, $a3, 4
	move	$t6, $t7
	beqz	$t2, .LBB19_149
.LBB19_139:                             #   Parent Loop BB19_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $a0, 0
	beqz	$t7, .LBB19_136
# %bb.140:                              #   in Loop: Header=BB19_139 Depth=2
	bge	$s2, $t7, .LBB19_143
# %bb.141:                              #   in Loop: Header=BB19_139 Depth=2
	fld.s	$fa0, $t5, 0
	slli.d	$t8, $t6, 2
	fstx.s	$fa0, $a2, $t8
	fstx.s	$fa0, $t0, $t8
	ld.w	$s1, $a3, 0
	addi.w	$t7, $t6, 2
	bne	$s1, $s4, .LBB19_138
# %bb.142:                              #   in Loop: Header=BB19_139 Depth=2
	fld.s	$fa0, $t5, 0
	slli.d	$t7, $t7, 2
	fstx.s	$fa0, $a2, $t7
	fstx.s	$fa0, $t1, $t8
	addi.w	$t7, $t6, 4
	b	.LBB19_138
	.p2align	4, , 16
.LBB19_143:                             #   in Loop: Header=BB19_139 Depth=2
	addi.w	$t8, $zero, -3
	beq	$t7, $t8, .LBB19_146
# %bb.144:                              #   in Loop: Header=BB19_139 Depth=2
	addi.w	$t8, $zero, -2
	bne	$t7, $t8, .LBB19_148
# %bb.145:                              # %.thread435
                                        #   in Loop: Header=BB19_139 Depth=2
	ld.w	$t7, $a7, 0
	ld.w	$t8, $t3, 0
	slli.d	$t7, $t7, 2
	ldx.w	$s1, $a6, $t7
	b	.LBB19_147
.LBB19_146:                             #   in Loop: Header=BB19_139 Depth=2
	ld.w	$t7, $a5, 0
	ld.w	$t8, $t4, 0
	slli.d	$t7, $t7, 2
	ldx.w	$s1, $a4, $t7
.LBB19_147:                             #   in Loop: Header=BB19_139 Depth=2
	fld.s	$fa0, $t5, 0
	slli.d	$t8, $t8, 2
	fldx.s	$fa1, $a1, $t8
	fldx.s	$fa2, $a1, $t7
	slli.d	$t7, $s1, 2
	fldx.s	$fa3, $a1, $t7
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	vldi	$vr1, -1200
	fmul.s	$fa0, $fa0, $fa1
	b	.LBB19_137
.LBB19_148:                             #   in Loop: Header=BB19_139 Depth=2
	move	$t7, $t6
	b	.LBB19_138
	.p2align	4, , 16
.LBB19_149:                             # %._crit_edge464
                                        #   in Loop: Header=BB19_113 Depth=1
.Ltmp172:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_replaceEPvS0_)
	jirl	$ra, $ra, 0
.Ltmp173:
	b	.LBB19_112
.LBB19_150:
	ld.d	$a1, $sp, 224
	addi.d	$a0, $sp, 208
.Ltmp184:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp185:
# %bb.151:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i
	ld.d	$a1, $sp, 176
.Ltmp187:
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp188:
.LBB19_152:
	pcalau12i	$a0, %pc_hi20(neighbor_remap)
	ld.bu	$a0, $a0, %pc_lo12(neighbor_remap)
	ori	$s1, $zero, 1
	bne	$a0, $s1, .LBB19_192
# %bb.153:
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $s0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a3, $a0, %pc_lo12(.L.str.38)
	ori	$a2, $zero, 4
	move	$a0, $s8
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
	pcalau12i	$a2, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nlft_old)
	addi.d	$s5, $a2, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nlft_old)
	st.d	$a0, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a3, $a0, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 4
	move	$a0, $s8
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
	pcalau12i	$s3, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nrht_old)
	st.d	$a0, $s3, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nrht_old)
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a3, $a0, %pc_lo12(.L.str.40)
	ori	$a2, $zero, 4
	move	$a0, $s8
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
	pcalau12i	$s4, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nbot_old)
	st.d	$a0, $s4, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nbot_old)
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a3, $a0, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 4
	move	$a0, $s8
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
	pcalau12i	$a2, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8ntop_old)
	st.d	$a0, $a2, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8ntop_old)
	blt	$a1, $s1, .LBB19_158
# %bb.154:                              # %.lr.ph476
	ld.d	$a2, $s5, 0
	ld.d	$a3, $s3, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nrht_old)
	ld.d	$a4, $s4, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nbot_old)
	ori	$a5, $zero, 24
	bgeu	$a1, $a5, .LBB19_210
# %bb.155:
	move	$a5, $zero
.LBB19_156:                             # %scalar.ph557.preheader
	alsl.d	$a0, $a5, $a0, 2
	alsl.d	$a4, $a5, $a4, 2
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a2, $a5, $a2, 2
	sub.d	$a1, $a1, $a5
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	.p2align	4, , 16
.LBB19_157:                             # %scalar.ph557
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	st.w	$a5, $a3, 0
	st.w	$a5, $a4, 0
	st.w	$a5, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB19_157
.LBB19_158:                             # %._crit_edge477
	addi.d	$a1, $fp, 1368
	move	$a0, $s8
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZN10MallocPlus11memory_swapEPPiS1_)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 1376
	pcalau12i	$a0, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nrht_old)
	addi.d	$s4, $a0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nrht_old)
	move	$a0, $s8
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZN10MallocPlus11memory_swapEPPiS1_)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 1384
	pcalau12i	$a0, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nbot_old)
	addi.d	$s1, $a0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nbot_old)
	move	$a0, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus11memory_swapEPPiS1_)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 1392
	pcalau12i	$a0, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8ntop_old)
	addi.d	$s3, $a0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8ntop_old)
	move	$a0, $s8
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus11memory_swapEPPiS1_)
	jirl	$ra, $ra, 0
	ld.d	$t5, $fp, 1160
	st.d	$s5, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $s5, 0
	addi.w	$a0, $t5, 0
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB19_193
# %bb.159:                              # %.lr.ph480
	ld.d	$a3, $fp, 1304
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ld.d	$a5, $fp, 1368
	ld.d	$a6, $fp, 1376
	ld.d	$a7, $fp, 1384
	ld.d	$t0, $fp, 1392
	ld.d	$t1, $fp, 1360
	ld.d	$t2, $s4, 0
	ld.d	$t3, $s1, 0
	ld.d	$t4, $s3, 0
	bstrpick.d	$t5, $t5, 30, 0
	ori	$t6, $zero, 3
	move	$t7, $a4
	move	$t8, $a3
	move	$s5, $a1
	b	.LBB19_163
.LBB19_160:                             #   in Loop: Header=BB19_163 Depth=1
	move	$s8, $a7
.LBB19_161:                             # %.sink.split525
                                        #   in Loop: Header=BB19_163 Depth=1
	stx.w	$s6, $s8, $s7
.LBB19_162:                             #   in Loop: Header=BB19_163 Depth=1
	addi.d	$t4, $t4, 4
	addi.d	$t3, $t3, 4
	addi.d	$t2, $t2, 4
	addi.d	$s5, $s5, 4
	addi.d	$t8, $t8, 4
	addi.d	$t5, $t5, -1
	addi.d	$t7, $t7, 4
	beqz	$t5, .LBB19_193
.LBB19_163:                             # =>This Inner Loop Header: Depth=1
	ld.w	$s7, $t7, 0
	ld.w	$s6, $t8, 0
	beqz	$s7, .LBB19_166
# %bb.164:                              #   in Loop: Header=BB19_163 Depth=1
	addi.w	$s8, $zero, -2
	blt	$s8, $s7, .LBB19_175
# %bb.165:                              #   in Loop: Header=BB19_163 Depth=1
	addi.w	$s7, $zero, -1
	slli.d	$s8, $s6, 2
	move	$ra, $s7
	lu32i.d	$ra, 0
	stx.w	$ra, $a5, $s8
	stx.w	$ra, $a6, $s8
	stx.w	$ra, $a7, $s8
	b	.LBB19_185
	.p2align	4, , 16
.LBB19_166:                             #   in Loop: Header=BB19_163 Depth=1
	ld.w	$s7, $s5, 0
	bgeu	$s7, $a0, .LBB19_172
# %bb.167:                              #   in Loop: Header=BB19_163 Depth=1
	slli.d	$s7, $s7, 2
	ldx.w	$s8, $a4, $s7
	beqz	$s8, .LBB19_178
# %bb.168:                              #   in Loop: Header=BB19_163 Depth=1
	addi.d	$s7, $zero, -1
	slli.d	$s8, $s6, 2
	stx.w	$s7, $a5, $s8
	ld.w	$s7, $t2, 0
	bltu	$s7, $a0, .LBB19_173
	.p2align	4, , 16
.LBB19_169:                             #   in Loop: Header=BB19_163 Depth=1
	ld.w	$s7, $t3, 0
	bgeu	$s7, $a0, .LBB19_181
.LBB19_170:                             #   in Loop: Header=BB19_163 Depth=1
	slli.d	$s7, $s7, 2
	ldx.w	$s8, $a4, $s7
	beqz	$s8, .LBB19_179
# %bb.171:                              #   in Loop: Header=BB19_163 Depth=1
	addi.d	$s7, $zero, -1
	slli.d	$s8, $s6, 2
	stx.w	$s7, $a7, $s8
	ld.w	$s7, $t4, 0
	bgeu	$s7, $a0, .LBB19_187
	b	.LBB19_182
	.p2align	4, , 16
.LBB19_172:                             #   in Loop: Header=BB19_163 Depth=1
	ld.w	$s7, $t2, 0
	bgeu	$s7, $a0, .LBB19_169
.LBB19_173:                             #   in Loop: Header=BB19_163 Depth=1
	slli.d	$s7, $s7, 2
	ldx.w	$s8, $a4, $s7
	beqz	$s8, .LBB19_180
# %bb.174:                              #   in Loop: Header=BB19_163 Depth=1
	addi.d	$s7, $zero, -1
	slli.d	$s8, $s6, 2
	stx.w	$s7, $a6, $s8
	ld.w	$s7, $t3, 0
	bgeu	$s7, $a0, .LBB19_181
	b	.LBB19_170
	.p2align	4, , 16
.LBB19_175:                             #   in Loop: Header=BB19_163 Depth=1
	blt	$s7, $a2, .LBB19_187
# %bb.176:                              #   in Loop: Header=BB19_163 Depth=1
	slli.d	$s7, $s6, 2
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	stx.w	$s0, $a5, $s7
	addi.d	$s8, $s7, 4
	stx.w	$s0, $a5, $s8
	stx.w	$s0, $a6, $s7
	stx.w	$s0, $a6, $s8
	stx.w	$s0, $a7, $s7
	stx.w	$s0, $a7, $s8
	stx.w	$s0, $t0, $s7
	stx.w	$s0, $t0, $s8
	ldx.w	$s8, $t1, $s7
	bne	$s8, $a2, .LBB19_187
# %bb.177:                              #   in Loop: Header=BB19_163 Depth=1
	addi.d	$s7, $s7, 8
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	stx.w	$s0, $a5, $s7
	addi.w	$s8, $s6, 3
	slli.d	$ra, $s8, 2
	stx.w	$s0, $a5, $ra
	stx.w	$s0, $a6, $s7
	stx.w	$s0, $a6, $ra
	stx.w	$s0, $a7, $s7
	stx.w	$s0, $a7, $ra
	stx.w	$s0, $t0, $s7
	move	$s7, $s2
	b	.LBB19_186
.LBB19_178:                             #   in Loop: Header=BB19_163 Depth=1
	ldx.w	$s7, $a3, $s7
	slli.d	$s8, $s6, 2
	stx.w	$s7, $a5, $s8
	ld.w	$s7, $t2, 0
	bgeu	$s7, $a0, .LBB19_169
	b	.LBB19_173
.LBB19_179:                             #   in Loop: Header=BB19_163 Depth=1
	ldx.w	$s7, $a3, $s7
	slli.d	$s8, $s6, 2
	stx.w	$s7, $a7, $s8
	ld.w	$s7, $t4, 0
	bgeu	$s7, $a0, .LBB19_187
	b	.LBB19_182
.LBB19_180:                             #   in Loop: Header=BB19_163 Depth=1
	ldx.w	$s7, $a3, $s7
	slli.d	$s8, $s6, 2
	stx.w	$s7, $a6, $s8
	ld.w	$s7, $t3, 0
	bltu	$s7, $a0, .LBB19_170
	.p2align	4, , 16
.LBB19_181:                             #   in Loop: Header=BB19_163 Depth=1
	ld.w	$s7, $t4, 0
	bgeu	$s7, $a0, .LBB19_187
.LBB19_182:                             #   in Loop: Header=BB19_163 Depth=1
	slli.d	$s7, $s7, 2
	ldx.w	$s8, $a4, $s7
	beqz	$s8, .LBB19_184
# %bb.183:                              #   in Loop: Header=BB19_163 Depth=1
	addi.d	$s7, $zero, -1
	b	.LBB19_185
.LBB19_184:                             #   in Loop: Header=BB19_163 Depth=1
	ldx.w	$s7, $a3, $s7
	.p2align	4, , 16
.LBB19_185:                             # %.sink.split521
                                        #   in Loop: Header=BB19_163 Depth=1
	move	$s8, $s6
.LBB19_186:                             # %.sink.split521
                                        #   in Loop: Header=BB19_163 Depth=1
	slli.d	$s8, $s8, 2
	stx.w	$s7, $t0, $s8
.LBB19_187:                             #   in Loop: Header=BB19_163 Depth=1
	ld.w	$s7, $t7, 0
	blt	$s7, $a2, .LBB19_162
# %bb.188:                              #   in Loop: Header=BB19_163 Depth=1
	addi.w	$s6, $s6, 1
	slli.d	$s7, $s6, 2
	ldx.w	$s8, $t1, $s7
	addi.d	$s8, $s8, 4
	bltu	$t6, $s8, .LBB19_162
# %bb.189:                              #   in Loop: Header=BB19_163 Depth=1
	slli.d	$s8, $s8, 2
	pcalau12i	$ra, %pc_hi20(.LJTI19_5)
	addi.d	$ra, $ra, %pc_lo12(.LJTI19_5)
	ldx.w	$s8, $ra, $s8
	add.d	$s0, $ra, $s8
	move	$s8, $a5
	jr	$s0
.LBB19_190:                             #   in Loop: Header=BB19_163 Depth=1
	move	$s8, $t0
	b	.LBB19_161
.LBB19_191:                             #   in Loop: Header=BB19_163 Depth=1
	move	$s8, $a6
	b	.LBB19_161
.LBB19_192:
	ld.d	$a1, $fp, 1368
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1376
	st.d	$a0, $fp, 1368
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1384
	st.d	$a0, $fp, 1376
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1392
	st.d	$a0, $fp, 1384
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1392
	b	.LBB19_194
.LBB19_193:                             # %._crit_edge481
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $s4, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	st.d	$a0, $s1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
.LBB19_194:                             # %._crit_edge
	ld.d	$a0, $sp, 256
	ld.d	$a1, $sp, 264
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 360
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 360
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB19_195:                             # %._crit_edge448
	add.w	$a1, $s0, $a0
	st.w	$a1, $s2, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells)
	beqz	$a0, .LBB19_27
.LBB19_196:                             # %.lr.ph452
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $fp, 1328
	ld.d	$a4, $fp, 1336
	ld.d	$a5, $fp, 1360
	ori	$a6, $zero, 1
	addi.w	$a7, $zero, -1
	ori	$t0, $zero, 1
	bstrins.d	$t0, $t0, 32, 31
	addi.w	$t1, $zero, -3
	lu32i.d	$t1, 0
	addi.w	$t2, $zero, -2
	lu32i.d	$t2, 0
	ori	$t3, $zero, 1
	b	.LBB19_198
	.p2align	4, , 16
.LBB19_197:                             #   in Loop: Header=BB19_198 Depth=1
	bstrpick.d	$t4, $t3, 31, 0
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.w	$t3, $t3, 1
	bgeu	$t4, $a0, .LBB19_27
.LBB19_198:                             # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $a2, 0
	blt	$a7, $t4, .LBB19_197
# %bb.199:                              #   in Loop: Header=BB19_198 Depth=1
	ld.w	$t4, $a3, 0
	ld.w	$t5, $a4, 0
	or	$t4, $t4, $t5
	andi	$t4, $t4, 1
	bnez	$t4, .LBB19_201
# %bb.200:                              #   in Loop: Header=BB19_198 Depth=1
	st.w	$t2, $a2, 0
.LBB19_201:                             #   in Loop: Header=BB19_198 Depth=1
	ld.w	$t4, $a5, 0
	beq	$t4, $a6, .LBB19_197
# %bb.202:                              #   in Loop: Header=BB19_198 Depth=1
	ld.wu	$t4, $a3, 0
	and	$t4, $t4, $t0
	addi.w	$t4, $t4, 0
	bne	$t4, $a6, .LBB19_197
# %bb.203:                              #   in Loop: Header=BB19_198 Depth=1
	ld.w	$t4, $a4, 0
	bstrins.d	$t4, $zero, 30, 1
	addi.w	$t4, $t4, 0
	bne	$t4, $a6, .LBB19_197
# %bb.204:                              #   in Loop: Header=BB19_198 Depth=1
	st.w	$t1, $a2, 0
	b	.LBB19_197
.LBB19_205:                             # %vector.scevcheck
	addi.d	$a3, $a0, -1
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a2, $zero
	beq	$a4, $a5, .LBB19_11
# %bb.206:                              # %vector.scevcheck
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB19_11
# %bb.207:                              # %vector.ph
	pcalau12i	$a2, %pc_hi20(.LCPI19_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI19_0)
	bstrpick.d	$a2, $a0, 32, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB19_208:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB19_208
# %bb.209:                              # %middle.block
	bne	$a0, $a2, .LBB19_11
	b	.LBB19_194
.LBB19_210:                             # %vector.memcheck546
	sub.d	$a7, $a3, $a2
	ori	$a6, $zero, 32
	move	$a5, $zero
	bltu	$a7, $a6, .LBB19_156
# %bb.211:                              # %vector.memcheck546
	sub.d	$a7, $a4, $a2
	bltu	$a7, $a6, .LBB19_156
# %bb.212:                              # %vector.memcheck546
	sub.d	$a7, $a0, $a2
	ori	$a6, $zero, 32
	bltu	$a7, $a6, .LBB19_156
# %bb.213:                              # %vector.memcheck546
	sub.d	$a7, $a4, $a3
	bltu	$a7, $a6, .LBB19_156
# %bb.214:                              # %vector.memcheck546
	sub.d	$a7, $a0, $a3
	ori	$a6, $zero, 32
	bltu	$a7, $a6, .LBB19_156
# %bb.215:                              # %vector.memcheck546
	sub.d	$a7, $a0, $a4
	bltu	$a7, $a6, .LBB19_156
# %bb.216:                              # %vector.ph559
	bstrpick.d	$a5, $a1, 30, 3
	slli.d	$a5, $a5, 3
	addi.d	$a6, $a2, 16
	addi.d	$a7, $a0, 16
	addi.d	$t0, $a3, 16
	addi.d	$t1, $a4, 16
	vrepli.b	$vr0, -1
	move	$t2, $a5
	.p2align	4, , 16
.LBB19_217:                             # %vector.body562
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a6, -16
	vst	$vr0, $a6, 0
	vst	$vr0, $t0, -16
	vst	$vr0, $t0, 0
	vst	$vr0, $t1, -16
	vst	$vr0, $t1, 0
	vst	$vr0, $a7, -16
	vst	$vr0, $a7, 0
	addi.d	$t2, $t2, -8
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB19_217
# %bb.218:                              # %middle.block565
	bne	$a5, $a1, .LBB19_156
	b	.LBB19_158
.LBB19_219:
	pcalau12i	$a0, %pc_hi20(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB19_2
# %bb.220:
	st.d	$zero, $s4, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $s4, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt6vectorIiSaIiEED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt6vectorIiSaIiEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB19_2
.LBB19_221:
	pcalau12i	$a0, %pc_hi20(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB19_3
# %bb.222:
	pcalau12i	$a0, %pc_hi20(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic)
	addi.d	$a1, $a0, %pc_lo12(_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic)
	st.d	$zero, $a1, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt6vectorIiSaIiEED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt6vectorIiSaIiEED2Ev)
	pcalau12i	$a2, %pc_hi20(__dso_handle)
	addi.d	$a2, $a2, %pc_lo12(__dso_handle)
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB19_3
.LBB19_223:
	pcalau12i	$a0, %pc_hi20(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB19_32
# %bb.224:
	st.d	$zero, $s3, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $s3, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt6vectorIiSaIiEED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt6vectorIiSaIiEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB19_32
.LBB19_225:
.Ltmp163:
	move	$fp, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB19_226:
.Ltmp189:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_227:
.Ltmp186:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_228:                             # %.loopexit.split-lp
.Ltmp166:
	b	.LBB19_234
.LBB19_229:
.Ltmp171:
	b	.LBB19_234
.LBB19_230:
.Ltmp180:
	b	.LBB19_234
.LBB19_231:
.Ltmp177:
	b	.LBB19_234
.LBB19_232:
.Ltmp174:
	b	.LBB19_234
.LBB19_233:                             # %.loopexit
.Ltmp183:
.LBB19_234:
	move	$fp, $a0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN10MallocPlusD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus, .Lfunc_end19-_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI19_0:
	.word	.LBB19_47-.LJTI19_0
	.word	.LBB19_51-.LJTI19_0
	.word	.LBB19_50-.LJTI19_0
	.word	.LBB19_52-.LJTI19_0
	.word	.LBB19_41-.LJTI19_0
	.word	.LBB19_56-.LJTI19_0
.LJTI19_1:
	.word	.LBB19_58-.LJTI19_1
	.word	.LBB19_62-.LJTI19_1
	.word	.LBB19_59-.LJTI19_1
	.word	.LBB19_60-.LJTI19_1
.LJTI19_2:
	.word	.LBB19_67-.LJTI19_2
	.word	.LBB19_71-.LJTI19_2
	.word	.LBB19_68-.LJTI19_2
	.word	.LBB19_69-.LJTI19_2
.LJTI19_3:
	.word	.LBB19_76-.LJTI19_3
	.word	.LBB19_80-.LJTI19_3
	.word	.LBB19_77-.LJTI19_3
	.word	.LBB19_78-.LJTI19_3
.LJTI19_4:
	.word	.LBB19_85-.LJTI19_4
	.word	.LBB19_89-.LJTI19_4
	.word	.LBB19_86-.LJTI19_4
	.word	.LBB19_87-.LJTI19_4
.LJTI19_5:
	.word	.LBB19_190-.LJTI19_5
	.word	.LBB19_160-.LJTI19_5
	.word	.LBB19_191-.LJTI19_5
	.word	.LBB19_161-.LJTI19_5
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp161-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp161
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin9         #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp165-.Ltmp164              #   Call between .Ltmp164 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin9         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin9         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp168-.Ltmp181              #   Call between .Ltmp181 and .Ltmp168
	.uleb128 .Ltmp183-.Lfunc_begin9         #     jumps to .Ltmp183
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin9         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin9         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin9         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin9         # >> Call Site 9 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin9         #     jumps to .Ltmp186
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp187-.Lfunc_begin9         # >> Call Site 10 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin9         #     jumps to .Ltmp189
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp188-.Lfunc_begin9         # >> Call Site 11 <<
	.uleb128 .Lfunc_end19-.Ltmp188          #   Call between .Ltmp188 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh12rezone_countESt6vectorIiSaIiEERiS3_ # -- Begin function _ZN4Mesh12rezone_countESt6vectorIiSaIiEERiS3_
	.p2align	5
	.type	_ZN4Mesh12rezone_countESt6vectorIiSaIiEERiS3_,@function
_ZN4Mesh12rezone_countESt6vectorIiSaIiEERiS3_: # @_ZN4Mesh12rezone_countESt6vectorIiSaIiEERiS3_
# %bb.0:
	ld.d	$a4, $a0, 1160
	beqz	$a4, .LBB20_14
# %bb.1:                                # %.lr.ph
	move	$a5, $zero
	move	$a6, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a7, $a0, 1360
	ld.d	$t0, $a0, 1328
	ld.d	$a0, $a0, 1336
	ori	$t1, $zero, 1
	addi.w	$t2, $zero, -1
	ori	$t3, $zero, 1
	bstrins.d	$t3, $t3, 32, 31
	ori	$t4, $zero, 1
	b	.LBB20_4
.LBB20_2:                               #   in Loop: Header=BB20_4 Depth=1
	addi.d	$a6, $a6, 1
	.p2align	4, , 16
.LBB20_3:                               # %.thread
                                        #   in Loop: Header=BB20_4 Depth=1
	bstrpick.d	$t5, $t4, 31, 0
	addi.d	$a7, $a7, 4
	addi.d	$a0, $a0, 4
	addi.d	$t0, $t0, 4
	addi.d	$a1, $a1, 4
	addi.w	$t4, $t4, 1
	bgeu	$t5, $a4, .LBB20_15
.LBB20_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t5, $a1, 0
	bge	$t2, $t5, .LBB20_8
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=1
	beqz	$t5, .LBB20_3
# %bb.6:                                #   in Loop: Header=BB20_4 Depth=1
	ld.w	$t5, $a7, 0
	bne	$t5, $t1, .LBB20_2
# %bb.7:                                #   in Loop: Header=BB20_4 Depth=1
	addi.d	$a6, $a6, 3
	b	.LBB20_3
	.p2align	4, , 16
.LBB20_8:                               #   in Loop: Header=BB20_4 Depth=1
	ld.w	$t7, $a7, 0
	ld.w	$t5, $t0, 0
	ld.w	$t6, $a0, 0
	bne	$t7, $t1, .LBB20_10
# %bb.9:                                #   in Loop: Header=BB20_4 Depth=1
	or	$t5, $t5, $t6
	b	.LBB20_13
.LBB20_10:                              #   in Loop: Header=BB20_4 Depth=1
	and	$t7, $t5, $t3
	addi.w	$t7, $t7, 0
	bne	$t7, $t1, .LBB20_12
# %bb.11:                               #   in Loop: Header=BB20_4 Depth=1
	move	$t7, $t6
	bstrins.d	$t7, $zero, 30, 1
	addi.w	$t7, $t7, 0
	beq	$t7, $t1, .LBB20_3
.LBB20_12:                              #   in Loop: Header=BB20_4 Depth=1
	or	$t5, $t6, $t5
.LBB20_13:                              # %.thread
                                        #   in Loop: Header=BB20_4 Depth=1
	andi	$t5, $t5, 1
	sub.d	$a5, $a5, $t5
	b	.LBB20_3
.LBB20_14:
	move	$a6, $zero
	move	$a5, $zero
.LBB20_15:                              # %._crit_edge
	st.w	$a6, $a2, 0
	st.w	$a5, $a3, 0
	ld.w	$a0, $a2, 0
	add.w	$a0, $a0, $a5
	ret
.Lfunc_end20:
	.size	_ZN4Mesh12rezone_countESt6vectorIiSaIiEERiS3_, .Lfunc_end20-_ZN4Mesh12rezone_countESt6vectorIiSaIiEERiS3_
                                        # -- End function
	.globl	_ZN4Mesh10get_boundsERiS0_      # -- Begin function _ZN4Mesh10get_boundsERiS0_
	.p2align	5
	.type	_ZN4Mesh10get_boundsERiS0_,@function
_ZN4Mesh10get_boundsERiS0_:             # @_ZN4Mesh10get_boundsERiS0_
# %bb.0:
	ld.d	$a0, $a0, 1160
	st.w	$zero, $a1, 0
	st.w	$a0, $a2, 0
	ret
.Lfunc_end21:
	.size	_ZN4Mesh10get_boundsERiS0_, .Lfunc_end21-_ZN4Mesh10get_boundsERiS0_
                                        # -- End function
	.globl	_ZN4Mesh9terminateEv            # -- Begin function _ZN4Mesh9terminateEv
	.p2align	5
	.type	_ZN4Mesh9terminateEv,@function
_ZN4Mesh9terminateEv:                   # @_ZN4Mesh9terminateEv
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
	ld.d	$a1, $a0, 1328
	addi.d	$s0, $a0, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1336
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1352
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1360
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(neighbor_remap)
	ld.bu	$a0, $a0, %pc_lo12(neighbor_remap)
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB22_2
# %bb.1:
	ld.d	$a1, $fp, 1368
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1376
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1384
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1392
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jr	$t8
.LBB22_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	_ZN4Mesh9terminateEv, .Lfunc_end22-_ZN4Mesh9terminateEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh10set_boundsEi          # -- Begin function _ZN4Mesh10set_boundsEi
	.p2align	5
	.type	_ZN4Mesh10set_boundsEi,@function
_ZN4Mesh10set_boundsEi:                 # @_ZN4Mesh10set_boundsEi
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 640
	beqz	$s0, .LBB23_3
# %bb.1:
	ld.d	$a0, $fp, 648
	beqz	$a0, .LBB23_4
.LBB23_2:
	ld.d	$a1, $fp, 1160
	st.w	$zero, $s0, 0
	st.w	$a1, $a0, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB23_3:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 640
	ld.d	$a0, $fp, 648
	bnez	$a0, .LBB23_2
.LBB23_4:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 648
	b	.LBB23_2
.Lfunc_end23:
	.size	_ZN4Mesh10set_boundsEi, .Lfunc_end23-_ZN4Mesh10set_boundsEi
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN4Mesh11calc_minmaxEv
.LCPI24_0:
	.dword	0x46293e5939a08cea              # double 1.0E+30
.LCPI24_1:
	.dword	0xc6293e5939a08cea              # double -1.0E+30
	.text
	.globl	_ZN4Mesh11calc_minmaxEv
	.p2align	5
	.type	_ZN4Mesh11calc_minmaxEv,@function
_ZN4Mesh11calc_minmaxEv:                # @_ZN4Mesh11calc_minmaxEv
# %bb.0:
	lu12i.w	$a1, 236040
	ori	$a3, $a1, 3306
	lu32i.d	$a3, -442791
	ld.d	$a1, $a0, 1160
	lu52i.d	$a2, $a3, 1122
	st.d	$a2, $a0, 1184
	st.d	$a2, $a0, 1200
	st.d	$a2, $a0, 1216
	beqz	$a1, .LBB24_27
# %bb.1:                                # %.lr.ph
	ld.d	$a2, $a0, 1416
	pcalau12i	$a4, %pc_hi20(.LCPI24_0)
	fld.d	$fa0, $a4, %pc_lo12(.LCPI24_0)
	ori	$a5, $zero, 1
	b	.LBB24_3
	.p2align	4, , 16
.LBB24_2:                               #   in Loop: Header=BB24_3 Depth=1
	bstrpick.d	$a6, $a5, 31, 0
	addi.d	$a2, $a2, 8
	addi.w	$a5, $a5, 1
	bgeu	$a6, $a1, .LBB24_5
.LBB24_3:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_2
# %bb.4:                                #   in Loop: Header=BB24_3 Depth=1
	fst.d	$fa1, $a0, 1184
	fmov.d	$fa0, $fa1
	b	.LBB24_2
.LBB24_5:                               # %.lr.ph51
	ld.d	$a2, $a0, 1464
	fld.d	$fa0, $a4, %pc_lo12(.LCPI24_0)
	ori	$a5, $zero, 1
	b	.LBB24_7
	.p2align	4, , 16
.LBB24_6:                               #   in Loop: Header=BB24_7 Depth=1
	bstrpick.d	$a6, $a5, 31, 0
	addi.d	$a2, $a2, 8
	addi.w	$a5, $a5, 1
	bgeu	$a6, $a1, .LBB24_9
.LBB24_7:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_6
# %bb.8:                                #   in Loop: Header=BB24_7 Depth=1
	fst.d	$fa1, $a0, 1200
	fmov.d	$fa0, $fa1
	b	.LBB24_6
.LBB24_9:                               # %._crit_edge
	ld.w	$a2, $a0, 0
	ori	$a5, $zero, 3
	blt	$a2, $a5, .LBB24_14
# %bb.10:                               # %.lr.ph54
	ld.d	$a5, $a0, 1512
	fld.d	$fa0, $a4, %pc_lo12(.LCPI24_0)
	ori	$a4, $zero, 1
	b	.LBB24_12
	.p2align	4, , 16
.LBB24_11:                              #   in Loop: Header=BB24_12 Depth=1
	bstrpick.d	$a6, $a4, 31, 0
	addi.d	$a5, $a5, 8
	addi.w	$a4, $a4, 1
	bgeu	$a6, $a1, .LBB24_14
.LBB24_12:                              # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a5, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_11
# %bb.13:                               #   in Loop: Header=BB24_12 Depth=1
	fst.d	$fa1, $a0, 1216
	fmov.d	$fa0, $fa1
	b	.LBB24_11
.LBB24_14:                              # %.lr.ph58
	lu52i.d	$a6, $a3, -926
	st.d	$a6, $a0, 1192
	ld.d	$a4, $a0, 1416
	ld.d	$a5, $a0, 1440
	pcalau12i	$a3, %pc_hi20(.LCPI24_1)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI24_1)
	st.d	$a6, $a0, 1208
	st.d	$a6, $a0, 1224
	ori	$a6, $zero, 1
	b	.LBB24_16
	.p2align	4, , 16
.LBB24_15:                              #   in Loop: Header=BB24_16 Depth=1
	bstrpick.d	$a7, $a6, 31, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.w	$a6, $a6, 1
	bgeu	$a7, $a1, .LBB24_18
.LBB24_16:                              # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a4, 0
	fld.d	$fa2, $a5, 0
	fadd.d	$fa1, $fa1, $fa2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB24_15
# %bb.17:                               #   in Loop: Header=BB24_16 Depth=1
	fst.d	$fa1, $a0, 1192
	fmov.d	$fa0, $fa1
	b	.LBB24_15
.LBB24_18:                              # %.lr.ph61
	ld.d	$a4, $a0, 1464
	ld.d	$a5, $a0, 1488
	fld.d	$fa0, $a3, %pc_lo12(.LCPI24_1)
	ori	$a6, $zero, 1
	b	.LBB24_20
	.p2align	4, , 16
.LBB24_19:                              #   in Loop: Header=BB24_20 Depth=1
	bstrpick.d	$a7, $a6, 31, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.w	$a6, $a6, 1
	bgeu	$a7, $a1, .LBB24_22
.LBB24_20:                              # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a4, 0
	fld.d	$fa2, $a5, 0
	fadd.d	$fa1, $fa1, $fa2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB24_19
# %bb.21:                               #   in Loop: Header=BB24_20 Depth=1
	fst.d	$fa1, $a0, 1208
	fmov.d	$fa0, $fa1
	b	.LBB24_19
.LBB24_22:                              # %._crit_edge62
	ori	$a4, $zero, 3
	blt	$a2, $a4, .LBB24_28
# %bb.23:                               # %.lr.ph65
	ld.d	$a2, $a0, 1512
	ld.d	$a4, $a0, 1536
	fld.d	$fa0, $a3, %pc_lo12(.LCPI24_1)
	ori	$a3, $zero, 1
	b	.LBB24_25
	.p2align	4, , 16
.LBB24_24:                              #   in Loop: Header=BB24_25 Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, 8
	addi.w	$a3, $a3, 1
	bgeu	$a5, $a1, .LBB24_28
.LBB24_25:                              # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a4, 0
	fadd.d	$fa1, $fa1, $fa2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB24_24
# %bb.26:                               #   in Loop: Header=BB24_25 Depth=1
	fst.d	$fa1, $a0, 1224
	fmov.d	$fa0, $fa1
	b	.LBB24_24
.LBB24_27:                              # %.loopexit.sink.split
	lu52i.d	$a1, $a3, -926
	st.d	$a1, $a0, 1192
	st.d	$a1, $a0, 1208
	st.d	$a1, $a0, 1224
.LBB24_28:                              # %.loopexit
	ret
.Lfunc_end24:
	.size	_ZN4Mesh11calc_minmaxEv, .Lfunc_end24-_ZN4Mesh11calc_minmaxEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN4Mesh17calc_centerminmaxEv
.LCPI25_0:
	.dword	0x46293e5939a08cea              # double 1.0E+30
	.dword	0xc6293e5939a08cea              # double -1.0E+30
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI25_1:
	.dword	0xc6293e5939a08cea              # double -1.0E+30
.LCPI25_2:
	.dword	0x46293e5939a08cea              # double 1.0E+30
	.text
	.globl	_ZN4Mesh17calc_centerminmaxEv
	.p2align	5
	.type	_ZN4Mesh17calc_centerminmaxEv,@function
_ZN4Mesh17calc_centerminmaxEv:          # @_ZN4Mesh17calc_centerminmaxEv
# %bb.0:
	pcalau12i	$a1, %pc_hi20(.LCPI25_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI25_0)
	ld.d	$a1, $a0, 1160
	vst	$vr0, $a0, 1232
	vst	$vr0, $a0, 1248
	vst	$vr0, $a0, 1264
	beqz	$a1, .LBB25_14
# %bb.1:                                # %.lr.ph
	ld.d	$a4, $a0, 1416
	ld.d	$a5, $a0, 1440
	pcalau12i	$a2, %pc_hi20(.LCPI25_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI25_1)
	pcalau12i	$a3, %pc_hi20(.LCPI25_2)
	fld.d	$fa2, $a3, %pc_lo12(.LCPI25_2)
	ori	$a6, $zero, 1
	vldi	$vr1, -928
	b	.LBB25_3
	.p2align	4, , 16
.LBB25_2:                               #   in Loop: Header=BB25_3 Depth=1
	bstrpick.d	$a7, $a6, 31, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.w	$a6, $a6, 1
	bgeu	$a7, $a1, .LBB25_7
.LBB25_3:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a5, 0
	fld.d	$fa4, $a4, 0
	fmul.d	$fa3, $fa3, $fa1
	fadd.d	$fa3, $fa4, $fa3
	fcmp.cule.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB25_5
# %bb.4:                                #   in Loop: Header=BB25_3 Depth=1
	fst.d	$fa3, $a0, 1232
	fmov.d	$fa2, $fa3
.LBB25_5:                               #   in Loop: Header=BB25_3 Depth=1
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB25_2
# %bb.6:                                #   in Loop: Header=BB25_3 Depth=1
	fst.d	$fa3, $a0, 1240
	fmov.d	$fa0, $fa3
	b	.LBB25_2
.LBB25_7:                               # %.lr.ph40
	ld.d	$a4, $a0, 1464
	ld.d	$a5, $a0, 1488
	fld.d	$fa0, $a2, %pc_lo12(.LCPI25_1)
	fld.d	$fa2, $a3, %pc_lo12(.LCPI25_2)
	ori	$a6, $zero, 1
	vldi	$vr1, -928
	b	.LBB25_9
	.p2align	4, , 16
.LBB25_8:                               #   in Loop: Header=BB25_9 Depth=1
	bstrpick.d	$a7, $a6, 31, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.w	$a6, $a6, 1
	bgeu	$a7, $a1, .LBB25_13
.LBB25_9:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a5, 0
	fld.d	$fa4, $a4, 0
	fmul.d	$fa3, $fa3, $fa1
	fadd.d	$fa3, $fa4, $fa3
	fcmp.cule.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB25_11
# %bb.10:                               #   in Loop: Header=BB25_9 Depth=1
	fst.d	$fa3, $a0, 1248
	fmov.d	$fa2, $fa3
.LBB25_11:                              #   in Loop: Header=BB25_9 Depth=1
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB25_8
# %bb.12:                               #   in Loop: Header=BB25_9 Depth=1
	fst.d	$fa3, $a0, 1256
	fmov.d	$fa0, $fa3
	b	.LBB25_8
.LBB25_13:                              # %._crit_edge
	ld.w	$a4, $a0, 0
	ori	$a5, $zero, 3
	bge	$a4, $a5, .LBB25_15
.LBB25_14:                              # %.loopexit
	ret
.LBB25_15:                              # %.lr.ph44
	ld.d	$a4, $a0, 1512
	ld.d	$a5, $a0, 1536
	fld.d	$fa0, $a2, %pc_lo12(.LCPI25_1)
	fld.d	$fa2, $a3, %pc_lo12(.LCPI25_2)
	ori	$a2, $zero, 1
	vldi	$vr1, -928
	b	.LBB25_17
	.p2align	4, , 16
.LBB25_16:                              #   in Loop: Header=BB25_17 Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.w	$a2, $a2, 1
	bgeu	$a3, $a1, .LBB25_14
.LBB25_17:                              # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a5, 0
	fld.d	$fa4, $a4, 0
	fmul.d	$fa3, $fa3, $fa1
	fadd.d	$fa3, $fa4, $fa3
	fcmp.cule.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB25_19
# %bb.18:                               #   in Loop: Header=BB25_17 Depth=1
	fst.d	$fa3, $a0, 1264
	fmov.d	$fa2, $fa3
.LBB25_19:                              #   in Loop: Header=BB25_17 Depth=1
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB25_16
# %bb.20:                               #   in Loop: Header=BB25_17 Depth=1
	fst.d	$fa3, $a0, 1272
	fmov.d	$fa0, $fa3
	b	.LBB25_16
.Lfunc_end25:
	.size	_ZN4Mesh17calc_centerminmaxEv, .Lfunc_end25-_ZN4Mesh17calc_centerminmaxEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN4Mesh20set_refinement_orderEPiiiiiiiiS0_S0_S0_
.LCPI26_0:
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	2                               # 0x2
.LCPI26_1:
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	2                               # 0x2
.LCPI26_2:
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI26_3:
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	3                               # 0x3
.LCPI26_4:
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI26_5:
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI26_6:
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
.LCPI26_7:
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI26_8:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	3                               # 0x3
.LCPI26_9:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	2                               # 0x2
.LCPI26_10:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
.LCPI26_11:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI26_12:
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
.LCPI26_13:
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	0                               # 0x0
.LCPI26_14:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	2                               # 0x2
	.text
	.globl	_ZN4Mesh20set_refinement_orderEPiiiiiiiiS0_S0_S0_
	.p2align	5
	.type	_ZN4Mesh20set_refinement_orderEPiiiiiiiiS0_S0_S0_,@function
_ZN4Mesh20set_refinement_orderEPiiiiiiiiS0_S0_S0_: # @_ZN4Mesh20set_refinement_orderEPiiiiiiiiS0_S0_S0_
# %bb.0:
	addi.d	$sp, $sp, -96
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
	pcalau12i	$t0, %got_pc_hi20(localStencil)
	ld.d	$t0, $t0, %got_pc_lo12(localStencil)
	ld.bu	$t0, $t0, 0
	ori	$t1, $zero, 1
	bne	$t0, $t1, .LBB26_49
# %bb.1:
	ld.d	$t2, $sp, 120
	ld.w	$t3, $a0, 1120
	slli.d	$t7, $a2, 2
	ldx.w	$t0, $t2, $t7
	ld.d	$t4, $sp, 112
	ld.d	$t6, $sp, 104
	sub.d	$fp, $t3, $t0
	ori	$t5, $zero, 2
	sll.w	$t1, $t5, $fp
	beqz	$a2, .LBB26_3
# %bb.2:
	addi.d	$a3, $t7, -4
	ldx.w	$a5, $t2, $a3
	ldx.w	$a7, $t6, $a3
	ldx.w	$a3, $t4, $a3
	sub.d	$a5, $t3, $a5
	sll.w	$a5, $t5, $a5
	mul.w	$s0, $a5, $a7
	mul.w	$s1, $a5, $a3
	b	.LBB26_4
.LBB26_3:
	sub.d	$a7, $t3, $a7
	sll.w	$a7, $t5, $a7
	mul.w	$s0, $a7, $a3
	mul.w	$s1, $a7, $a5
.LBB26_4:
	slli.d	$a3, $a2, 2
	ldx.w	$a5, $t6, $a3
	ld.w	$a0, $a0, 1160
	ldx.w	$t5, $t4, $a3
	mul.w	$a7, $a5, $t1
	addi.w	$a0, $a0, -1
	mul.w	$t5, $t5, $t1
	bne	$a2, $a0, .LBB26_6
# %bb.5:
	ld.d	$a0, $sp, 96
	sub.d	$a0, $t3, $a0
	ori	$a3, $zero, 2
	sll.w	$a0, $a3, $a0
	mul.w	$t6, $a0, $a4
	mul.w	$t7, $a0, $a6
	alsl.d	$t8, $a2, $t2, 2
	sub.w	$s2, $a7, $s0
	sub.w	$t2, $a7, $t6
	beq	$t5, $s1, .LBB26_7
	b	.LBB26_10
.LBB26_6:
	addi.d	$a0, $a3, 4
	ldx.w	$a3, $t2, $a0
	ldx.w	$a4, $t6, $a0
	sub.d	$a3, $t3, $a3
	ldx.w	$a0, $t4, $a0
	ori	$a5, $zero, 2
	sll.w	$a3, $a5, $a3
	mul.w	$t6, $a3, $a4
	mul.w	$t7, $a3, $a0
	alsl.d	$t8, $a2, $t2, 2
	sub.w	$s2, $a7, $s0
	sub.w	$t2, $a7, $t6
	bne	$t5, $s1, .LBB26_10
.LBB26_7:
	move	$a2, $zero
	movgr2fr.w	$fa0, $s2
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $t1
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -928
	fmul.d	$fa1, $fa1, $fa2
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	ori	$a0, $zero, 1
	bcnez	$fcc0, .LBB26_52
# %bb.8:
	beq	$s2, $t1, .LBB26_52
# %bb.9:
	ori	$a3, $zero, 4
	sll.w	$s3, $a3, $fp
	move	$a3, $a2
	move	$a4, $a2
	move	$a5, $a2
	move	$a6, $a2
	move	$t3, $a2
	move	$t4, $a2
	beq	$s2, $s3, .LBB26_15
.LBB26_10:
	sub.w	$s3, $t5, $s1
	movgr2fr.w	$fa0, $s3
	ffint.d.w	$fa1, $fa0
	sub.d	$s4, $zero, $t1
	movgr2fr.w	$fa0, $s4
	ffint.d.w	$fa0, $fa0
	vldi	$vr2, -928
	fmul.d	$fa0, $fa0, $fa2
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB26_12
# %bb.11:
	movgr2fr.w	$fa2, $s2
	ffint.d.w	$fa2, $fa2
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	vldi	$vr4, -928
	fmul.d	$fa3, $fa3, $fa4
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB26_14
.LBB26_12:
	ori	$a0, $zero, 4
	sll.w	$s5, $a0, $fp
	bne	$s3, $t1, .LBB26_30
# %bb.13:
	bne	$s2, $s5, .LBB26_30
.LBB26_14:
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$t3, $zero
	move	$t4, $zero
	ori	$a0, $zero, 1
.LBB26_15:
	bne	$t5, $t7, .LBB26_19
# %bb.16:
	move	$s0, $zero
	movgr2fr.w	$fa0, $t2
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $t1
	ffint.d.w	$fa1, $fa1
	vldi	$vr2, -928
	fmul.d	$fa1, $fa1, $fa2
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	ori	$s6, $zero, 1
	bcnez	$fcc0, .LBB26_53
# %bb.17:
	beq	$t2, $t1, .LBB26_53
# %bb.18:
	ori	$s1, $zero, 4
	sll.w	$s8, $s1, $fp
	move	$s1, $s0
	move	$s2, $s0
	move	$s3, $s0
	move	$s5, $s0
	move	$s4, $s0
	move	$s7, $s0
	beq	$t2, $s8, .LBB26_24
.LBB26_19:
	sub.w	$s8, $t5, $t7
	movgr2fr.w	$fa0, $s8
	ffint.d.w	$fa1, $fa0
	sub.d	$ra, $zero, $t1
	movgr2fr.w	$fa0, $ra
	ffint.d.w	$fa0, $fa0
	vldi	$vr2, -928
	fmul.d	$fa0, $fa0, $fa2
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB26_21
# %bb.20:
	movgr2fr.w	$fa2, $t2
	ffint.d.w	$fa2, $fa2
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	vldi	$vr4, -928
	fmul.d	$fa3, $fa3, $fa4
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB26_23
.LBB26_21:
	ori	$s0, $zero, 4
	sll.w	$fp, $s0, $fp
	bne	$s8, $t1, .LBB26_39
# %bb.22:
	bne	$t2, $fp, .LBB26_39
.LBB26_23:
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	move	$s5, $zero
	move	$s4, $zero
	move	$s7, $zero
	ori	$s6, $zero, 1
.LBB26_24:
	or	$a7, $s0, $s1
	or	$a7, $a7, $s2
	and	$t1, $a0, $a7
	ori	$t0, $zero, 1
	bne	$t1, $t0, .LBB26_26
.LBB26_25:
	pcalau12i	$a0, %pc_hi20(.LCPI26_11)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_11)
	b	.LBB26_50
.LBB26_26:
	or	$t1, $s3, $s5
	and	$t1, $a0, $t1
	bne	$t1, $t0, .LBB26_28
.LBB26_27:
	pcalau12i	$a0, %pc_hi20(.LCPI26_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_12)
	b	.LBB26_50
.LBB26_28:
	and	$t1, $a0, $s4
	ori	$t0, $zero, 1
	bne	$t1, $t0, .LBB26_48
.LBB26_29:
	pcalau12i	$a0, %pc_hi20(.LCPI26_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_10)
	b	.LBB26_50
.LBB26_30:
	bne	$a7, $s0, .LBB26_34
# %bb.31:
	move	$a0, $zero
	ori	$a2, $zero, 1
	beq	$s3, $t1, .LBB26_82
# %bb.32:
	movgr2fr.w	$fa2, $t1
	ffint.d.w	$fa2, $fa2
	vldi	$vr3, -928
	fmul.d	$fa2, $fa2, $fa3
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB26_82
# %bb.33:
	move	$a3, $a0
	move	$a4, $a0
	move	$a5, $a0
	move	$a6, $a0
	move	$t3, $a0
	move	$t4, $a0
	beq	$s3, $s5, .LBB26_15
.LBB26_34:
	movgr2fr.w	$fa2, $s2
	ffint.d.w	$fa2, $fa2
	fcmp.cune.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB26_36
# %bb.35:
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	vldi	$vr4, -928
	fmul.d	$fa3, $fa3, $fa4
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	bcnez	$fcc0, .LBB26_38
.LBB26_36:
	bne	$s2, $t1, .LBB26_58
# %bb.37:
	bne	$s3, $s5, .LBB26_58
.LBB26_38:
	move	$a0, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$t3, $zero
	move	$t4, $zero
	ori	$a2, $zero, 1
	b	.LBB26_15
.LBB26_39:
	bne	$a7, $t6, .LBB26_43
# %bb.40:
	move	$s1, $zero
	ori	$s0, $zero, 1
	beq	$s8, $t1, .LBB26_83
# %bb.41:
	movgr2fr.w	$fa2, $t1
	ffint.d.w	$fa2, $fa2
	vldi	$vr3, -928
	fmul.d	$fa2, $fa2, $fa3
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB26_83
# %bb.42:
	move	$s2, $s1
	move	$s3, $s1
	move	$s5, $s1
	move	$s4, $s1
	move	$s7, $s1
	move	$s6, $s1
	beq	$s8, $fp, .LBB26_24
.LBB26_43:
	movgr2fr.w	$fa2, $t2
	ffint.d.w	$fa2, $fa2
	fcmp.cune.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB26_45
# %bb.44:
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	vldi	$vr4, -928
	fmul.d	$fa3, $fa3, $fa4
	fcmp.ceq.d	$fcc0, $fa3, $fa1
	bcnez	$fcc0, .LBB26_47
.LBB26_45:
	bne	$t2, $t1, .LBB26_64
# %bb.46:
	bne	$s8, $fp, .LBB26_64
.LBB26_47:
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	move	$s5, $zero
	move	$s4, $zero
	move	$s7, $zero
	move	$s6, $zero
	ori	$s0, $zero, 1
	b	.LBB26_24
.LBB26_48:
	and	$a0, $a0, $s7
	bne	$a0, $t0, .LBB26_54
.LBB26_49:
	pcalau12i	$a0, %pc_hi20(.LCPI26_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_0)
.LBB26_50:
	vst	$vr0, $a1, 0
.LBB26_51:
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
.LBB26_52:
	move	$a3, $a2
	move	$a4, $a2
	move	$a5, $a2
	move	$a6, $a2
	move	$t3, $a2
	move	$t4, $a2
	b	.LBB26_15
.LBB26_53:
	move	$s1, $s0
	move	$s2, $s0
	move	$s3, $s0
	move	$s5, $s0
	move	$s4, $s0
	move	$s7, $s0
	b	.LBB26_24
.LBB26_54:
	or	$a0, $s1, $s2
	and	$t0, $a2, $a0
	ori	$t1, $zero, 1
	beq	$t0, $t1, .LBB26_25
# %bb.55:
	or	$t0, $s3, $s6
	or	$t0, $s5, $t0
	and	$t2, $a2, $t0
	beq	$t2, $t1, .LBB26_27
# %bb.56:
	and	$t2, $a2, $s4
	ori	$t1, $zero, 1
	bne	$t2, $t1, .LBB26_106
.LBB26_57:
	pcalau12i	$a0, %pc_hi20(.LCPI26_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_7)
	b	.LBB26_50
.LBB26_58:
	addi.w	$a2, $s4, 0
	bne	$s2, $a2, .LBB26_70
# %bb.59:
	move	$a0, $zero
	ori	$a3, $zero, 1
	beq	$t5, $s1, .LBB26_96
# %bb.60:
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB26_96
# %bb.61:
	bne	$s3, $t1, .LBB26_70
# %bb.62:
	ld.w	$a0, $t8, -4
	bge	$a0, $t0, .LBB26_70
# %bb.63:
	move	$a0, $zero
	move	$a2, $zero
	b	.LBB26_87
.LBB26_64:
	addi.w	$fp, $ra, 0
	bne	$t2, $fp, .LBB26_76
# %bb.65:
	move	$s0, $zero
	ori	$s1, $zero, 1
	beq	$t5, $t7, .LBB26_99
# %bb.66:
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB26_99
# %bb.67:
	bne	$s8, $t1, .LBB26_76
# %bb.68:
	ld.w	$s0, $t8, 4
	bge	$s0, $t0, .LBB26_76
# %bb.69:
	move	$s0, $zero
	b	.LBB26_111
.LBB26_70:
	bne	$s3, $a2, .LBB26_84
# %bb.71:
	move	$a0, $zero
	ori	$a4, $zero, 1
	beq	$a7, $s0, .LBB26_103
# %bb.72:
	fcmp.ceq.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB26_103
# %bb.73:
	bne	$s2, $t1, .LBB26_84
# %bb.74:
	ld.w	$a0, $t8, -4
	bge	$a0, $t0, .LBB26_84
# %bb.75:
	move	$a0, $zero
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB26_88
.LBB26_76:
	bne	$s8, $fp, .LBB26_91
# %bb.77:
	move	$s0, $zero
	ori	$s3, $zero, 1
	beq	$a7, $t6, .LBB26_104
# %bb.78:
	fcmp.ceq.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB26_104
# %bb.79:
	bne	$t2, $t1, .LBB26_91
# %bb.80:
	ld.w	$t1, $t8, 4
	bge	$t1, $t0, .LBB26_91
# %bb.81:
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB26_113
.LBB26_82:
	move	$a3, $a0
	b	.LBB26_97
.LBB26_83:
	move	$s2, $s1
	move	$s3, $s1
	move	$s5, $s1
	move	$s4, $s1
	move	$s7, $s1
	move	$s6, $s1
	b	.LBB26_24
.LBB26_84:
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB26_100
# %bb.85:
	bne	$t5, $s1, .LBB26_100
# %bb.86:
	move	$a2, $zero
	move	$a3, $zero
.LBB26_87:
	move	$a4, $zero
.LBB26_88:
	move	$a5, $zero
.LBB26_89:
	move	$a6, $zero
.LBB26_90:
	move	$t3, $zero
	move	$t4, $zero
	b	.LBB26_15
.LBB26_91:
	bne	$t5, $t7, .LBB26_93
# %bb.92:
	bgtz	$t2, .LBB26_23
.LBB26_93:
	bne	$t5, $t7, .LBB26_108
# %bb.94:
	bgez	$t2, .LBB26_108
# %bb.95:
	move	$s0, $zero
	move	$s2, $zero
	move	$s3, $zero
	move	$s5, $zero
	move	$s4, $zero
	move	$s7, $zero
	move	$s6, $zero
	ori	$s1, $zero, 1
	b	.LBB26_24
.LBB26_96:
	move	$a2, $a0
.LBB26_97:
	move	$a4, $a0
.LBB26_98:
	move	$a5, $a0
	move	$a6, $a0
	move	$t3, $a0
	move	$t4, $a0
	b	.LBB26_15
.LBB26_99:
	move	$s2, $s0
	move	$s3, $s0
	b	.LBB26_105
.LBB26_100:
	addi.w	$a0, $zero, -1
	blt	$a0, $s2, .LBB26_115
# %bb.101:
	bne	$t5, $s1, .LBB26_115
# %bb.102:
	move	$a0, $zero
	move	$a2, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$t3, $zero
	move	$t4, $zero
	ori	$a3, $zero, 1
	b	.LBB26_15
.LBB26_103:
	move	$a2, $a0
	move	$a3, $a0
	b	.LBB26_98
.LBB26_104:
	move	$s1, $s0
	move	$s2, $s0
.LBB26_105:
	move	$s5, $s0
	move	$s4, $s0
	move	$s7, $s0
	move	$s6, $s0
	b	.LBB26_24
.LBB26_106:
	and	$a2, $a2, $s7
	bne	$a2, $t1, .LBB26_120
# %bb.107:
	pcalau12i	$a0, %pc_hi20(.LCPI26_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_14)
	b	.LBB26_50
.LBB26_108:
	ori	$s0, $zero, 1
	blt	$s8, $s0, .LBB26_122
# %bb.109:
	bne	$a7, $t6, .LBB26_122
# %bb.110:
	move	$s1, $zero
.LBB26_111:
	move	$s2, $zero
.LBB26_112:
	move	$s3, $zero
.LBB26_113:
	move	$s5, $zero
	move	$s4, $zero
.LBB26_114:
	move	$s7, $zero
	move	$s6, $zero
	b	.LBB26_24
.LBB26_115:
	bne	$a7, $s0, .LBB26_117
# %bb.116:
	bgtz	$s3, .LBB26_38
.LBB26_117:
	bne	$a7, $s0, .LBB26_127
# %bb.118:
	bgez	$s3, .LBB26_127
# %bb.119:
	move	$a0, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$t3, $zero
	move	$t4, $zero
	ori	$a4, $zero, 1
	b	.LBB26_15
.LBB26_120:
	and	$t0, $a3, $t0
	ori	$a2, $zero, 1
	bne	$t0, $a2, .LBB26_125
.LBB26_121:
	pcalau12i	$a0, %pc_hi20(.LCPI26_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_4)
	b	.LBB26_50
.LBB26_122:
	addi.w	$t0, $zero, -1
	blt	$t0, $s8, .LBB26_130
# %bb.123:
	bne	$a7, $t6, .LBB26_130
# %bb.124:
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
	move	$s5, $zero
	move	$s4, $zero
	move	$s7, $zero
	move	$s6, $zero
	ori	$s3, $zero, 1
	b	.LBB26_24
.LBB26_125:
	or	$t0, $s0, $s2
	and	$t0, $a3, $t0
	bne	$t0, $a2, .LBB26_133
.LBB26_126:
	pcalau12i	$a0, %pc_hi20(.LCPI26_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_3)
	b	.LBB26_50
.LBB26_127:
	ori	$a5, $zero, 1
	blt	$s2, $a5, .LBB26_135
# %bb.128:
	blez	$s3, .LBB26_135
# %bb.129:
	move	$a0, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB26_89
.LBB26_130:
	ori	$s4, $zero, 1
	blt	$s8, $s4, .LBB26_138
# %bb.131:
	blez	$t2, .LBB26_138
# %bb.132:
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	move	$s5, $zero
	b	.LBB26_114
.LBB26_133:
	and	$t0, $a3, $s4
	ori	$a2, $zero, 1
	bne	$t0, $a2, .LBB26_141
# %bb.134:
	pcalau12i	$a0, %pc_hi20(.LCPI26_13)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_13)
	b	.LBB26_50
.LBB26_135:
	ori	$a6, $zero, 1
	blt	$s2, $a6, .LBB26_143
# %bb.136:
	bgez	$s3, .LBB26_143
# %bb.137:
	move	$a0, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB26_90
.LBB26_138:
	blt	$t0, $s8, .LBB26_146
# %bb.139:
	blez	$t2, .LBB26_146
# %bb.140:
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	move	$s4, $zero
	move	$s7, $zero
	move	$s6, $zero
	ori	$s5, $zero, 1
	b	.LBB26_24
.LBB26_141:
	and	$a3, $a3, $s7
	bne	$a3, $a2, .LBB26_149
.LBB26_142:
	pcalau12i	$a0, %pc_hi20(.LCPI26_6)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_6)
	b	.LBB26_50
.LBB26_143:
	blt	$a0, $s2, .LBB26_153
# %bb.144:
	blez	$s3, .LBB26_153
# %bb.145:
	move	$a0, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$t4, $zero
	ori	$t3, $zero, 1
	b	.LBB26_15
.LBB26_146:
	ori	$s2, $zero, 1
	blt	$s8, $s2, .LBB26_154
# %bb.147:
	bgez	$t2, .LBB26_154
# %bb.148:
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB26_112
.LBB26_149:
	or	$a2, $s5, $s6
	and	$t0, $a4, $a2
	ori	$a3, $zero, 1
	beq	$t0, $a3, .LBB26_121
# %bb.150:
	and	$a7, $a4, $a7
	beq	$a7, $a3, .LBB26_126
# %bb.151:
	and	$a7, $a4, $s4
	ori	$a3, $zero, 1
	bne	$a7, $a3, .LBB26_155
.LBB26_152:
	pcalau12i	$a0, %pc_hi20(.LCPI26_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_2)
	b	.LBB26_50
.LBB26_153:
	move	$a0, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$t3, $zero
	and	$t4, $s3, $s2
	slti	$t4, $t4, 0
	b	.LBB26_15
.LBB26_154:
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	move	$s5, $zero
	move	$s4, $zero
	move	$s6, $zero
	and	$a7, $t2, $s8
	slti	$s7, $a7, 0
	b	.LBB26_24
.LBB26_155:
	and	$a4, $a4, $s7
	bne	$a4, $a3, .LBB26_157
.LBB26_156:
	pcalau12i	$a0, %pc_hi20(.LCPI26_9)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_9)
	b	.LBB26_50
.LBB26_157:
	or	$a2, $s3, $a2
	and	$a4, $a5, $a2
	ori	$a3, $zero, 1
	beq	$a4, $a3, .LBB26_27
# %bb.158:
	or	$a0, $s0, $a0
	and	$a4, $a5, $a0
	beq	$a4, $a3, .LBB26_25
# %bb.159:
	and	$a3, $a5, $s7
	ori	$a4, $zero, 1
	beq	$a3, $a4, .LBB26_49
# %bb.160:
	or	$a3, $s4, $s6
	or	$a3, $s0, $a3
	and	$a5, $a6, $a3
	beq	$a5, $a4, .LBB26_29
# %bb.161:
	or	$a4, $s1, $s7
	or	$a4, $s3, $a4
	and	$a7, $a6, $a4
	ori	$a5, $zero, 1
	beq	$a7, $a5, .LBB26_156
# %bb.162:
	and	$a6, $a6, $s2
	bne	$a6, $a5, .LBB26_164
# %bb.163:
	pcalau12i	$a0, %pc_hi20(.LCPI26_8)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_8)
	b	.LBB26_50
.LBB26_164:
	and	$a5, $t3, $a3
	ori	$a3, $zero, 1
	beq	$a5, $a3, .LBB26_57
# %bb.165:
	and	$a4, $t3, $a4
	beq	$a4, $a3, .LBB26_142
# %bb.166:
	and	$a4, $t3, $s5
	ori	$a3, $zero, 1
	bne	$a4, $a3, .LBB26_168
# %bb.167:
	pcalau12i	$a0, %pc_hi20(.LCPI26_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_5)
	b	.LBB26_50
.LBB26_168:
	and	$a2, $t4, $a2
	beq	$a2, $a3, .LBB26_121
# %bb.169:
	and	$a2, $t4, $a0
	ori	$a0, $zero, 1
	beq	$a2, $a0, .LBB26_126
# %bb.170:
	and	$a2, $t4, $s4
	beq	$a2, $a0, .LBB26_152
# %bb.171:
	pcalau12i	$a0, %pc_hi20(.LCPI26_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI26_1)
	pcalau12i	$a0, %pc_hi20(do_stencil_warning)
	ld.w	$a0, $a0, %pc_lo12(do_stencil_warning)
	vst	$vr0, $a1, 0
	beqz	$a0, .LBB26_51
# %bb.172:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
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
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end26:
	.size	_ZN4Mesh20set_refinement_orderEPiiiiiiiiS0_S0_S0_, .Lfunc_end26-_ZN4Mesh20set_refinement_orderEPiiiiiiiiS0_S0_S0_
                                        # -- End function
	.globl	_ZN4Mesh14calc_neighborsEi      # -- Begin function _ZN4Mesh14calc_neighborsEi
	.p2align	5
	.type	_ZN4Mesh14calc_neighborsEi,@function
_ZN4Mesh14calc_neighborsEi:             # @_ZN4Mesh14calc_neighborsEi
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
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
	move	$s7, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 232
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 616
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB27_101
# %bb.1:
	ld.w	$a0, $fp, 592
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 592
	addi.d	$s1, $fp, 8
	pcalau12i	$s0, %pc_hi20(_ZZN4Mesh14calc_neighborsEiE9nlft_size)
	beqz	$a1, .LBB27_4
# %bb.2:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.w	$a0, $s0, %pc_lo12(_ZZN4Mesh14calc_neighborsEiE9nlft_size)
	addi.w	$a0, $a1, 0
	blt	$a0, $s7, .LBB27_5
.LBB27_3:
	addi.w	$a0, $a1, 0
	blt	$a0, $s7, .LBB27_8
	b	.LBB27_13
.LBB27_4:                               # %._crit_edge445
	ld.w	$a1, $s0, %pc_lo12(_ZZN4Mesh14calc_neighborsEiE9nlft_size)
	addi.w	$a0, $a1, 0
	bge	$a0, $s7, .LBB27_3
.LBB27_5:
	ld.d	$a1, $fp, 1368
	beqz	$a1, .LBB27_7
# %bb.6:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1376
	st.d	$a0, $fp, 1368
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1384
	st.d	$a0, $fp, 1376
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1392
	st.d	$a0, $fp, 1384
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1392
.LBB27_7:
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a3, $a0, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 4
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1368
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a3, $a0, %pc_lo12(.L.str.43)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 4
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1376
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a3, $a0, %pc_lo12(.L.str.44)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 4
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1384
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a3, $a0, %pc_lo12(.L.str.45)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 4
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(_ZZN4Mesh14calc_neighborsEiE9nlft_size)
	st.d	$a0, $fp, 1392
	addi.w	$a0, $a1, 0
	bge	$a0, $s7, .LBB27_13
.LBB27_8:
	ld.d	$a6, $fp, 1160
	addi.w	$a0, $a6, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB27_13
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $fp, 1368
	ld.d	$a1, $fp, 1376
	ld.d	$a3, $fp, 1384
	ld.d	$a4, $fp, 1392
	bstrpick.d	$a2, $a6, 30, 0
	ori	$a5, $zero, 24
	bgeu	$a2, $a5, .LBB27_102
# %bb.10:
	move	$a5, $zero
.LBB27_11:                              # %scalar.ph.preheader
	alsl.d	$a4, $a5, $a4, 2
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a1, $a5, $a1, 2
	alsl.d	$a0, $a5, $a0, 2
	sub.d	$a2, $a2, $a5
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	.p2align	4, , 16
.LBB27_12:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a0, 0
	st.w	$a5, $a1, 0
	st.w	$a5, $a3, 0
	st.w	$a5, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB27_12
.LBB27_13:                              # %.loopexit421
	pcalau12i	$a0, %pc_hi20(calc_neighbor_type)
	ld.w	$a0, $a0, %pc_lo12(calc_neighbor_type)
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB27_69
# %bb.14:                               # %.loopexit421
	bnez	$a0, .LBB27_100
# %bb.15:
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1144
	ld.wu	$a1, $fp, 1120
	addi.d	$a0, $a0, 1
	ld.w	$a2, $fp, 1136
	ori	$s1, $zero, 2
	sll.w	$a1, $s1, $a1
	mul.w	$s3, $a1, $a0
	addi.d	$a0, $a2, 1
	mul.w	$s8, $a0, $a1
	move	$a0, $s7
	move	$a1, $s8
	move	$a2, $s3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(compact_hash_init)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$s0, $zero, 1
	slli.d	$a0, $s7, 2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	blt	$s7, $s0, .LBB27_31
# %bb.16:                               # %.lr.ph427
	pcalau12i	$a0, %got_pc_hi20(write_hash)
	ld.d	$s2, $a0, %got_pc_lo12(write_hash)
	move	$s5, $zero
	move	$s4, $zero
	addi.w	$s6, $zero, -1
	.p2align	4, , 16
.LBB27_17:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 1368
	ld.d	$a1, $fp, 1352
	ldx.w	$a6, $a0, $s5
	ldx.w	$a0, $a1, $s5
	beq	$a6, $s6, .LBB27_30
# %bb.18:                               #   in Loop: Header=BB27_17 Depth=1
	ld.d	$a2, $fp, 1376
	ldx.w	$a5, $a2, $s5
	beq	$a5, $s6, .LBB27_30
# %bb.19:                               #   in Loop: Header=BB27_17 Depth=1
	ld.d	$a3, $fp, 1384
	ldx.w	$a4, $a3, $s5
	beq	$a4, $s6, .LBB27_30
# %bb.20:                               #   in Loop: Header=BB27_17 Depth=1
	ld.d	$a7, $fp, 1392
	ldx.w	$a3, $a7, $s5
	beq	$a3, $s6, .LBB27_30
# %bb.21:                               #   in Loop: Header=BB27_17 Depth=1
	slli.d	$a6, $a6, 2
	ldx.w	$t0, $a1, $a6
	bge	$a0, $t0, .LBB27_23
# %bb.22:                               #   in Loop: Header=BB27_17 Depth=1
	ldx.w	$a6, $a7, $a6
	beq	$a6, $s6, .LBB27_30
.LBB27_23:                              #   in Loop: Header=BB27_17 Depth=1
	slli.d	$a5, $a5, 2
	ldx.w	$a6, $a1, $a5
	bge	$a0, $a6, .LBB27_25
# %bb.24:                               #   in Loop: Header=BB27_17 Depth=1
	ldx.w	$a5, $a7, $a5
	beq	$a5, $s6, .LBB27_30
.LBB27_25:                              #   in Loop: Header=BB27_17 Depth=1
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a1, $a4
	bge	$a0, $a5, .LBB27_27
# %bb.26:                               #   in Loop: Header=BB27_17 Depth=1
	ldx.w	$a4, $a2, $a4
	beq	$a4, $s6, .LBB27_30
.LBB27_27:                              #   in Loop: Header=BB27_17 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a1, $a1, $a3
	bge	$a0, $a1, .LBB27_29
# %bb.28:                               #   in Loop: Header=BB27_17 Depth=1
	ldx.w	$a1, $a2, $a3
	beq	$a1, $s6, .LBB27_30
	.p2align	4, , 16
.LBB27_29:                              #   in Loop: Header=BB27_17 Depth=1
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bne	$a0, $s5, .LBB27_17
	b	.LBB27_31
	.p2align	4, , 16
.LBB27_30:                              # %.critedge
                                        #   in Loop: Header=BB27_17 Depth=1
	ld.w	$a1, $fp, 1120
	ld.d	$a2, $fp, 1336
	ld.d	$a3, $fp, 1328
	sub.d	$a0, $a1, $a0
	ldx.w	$a1, $a2, $s5
	ldx.w	$a2, $a3, $s5
	sll.w	$a0, $s1, $a0
	ld.d	$a3, $s2, 0
	mul.d	$a1, $a1, $s8
	add.d	$a1, $a1, $a2
	mul.w	$a1, $a1, $a0
	move	$a0, $s4
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bne	$a0, $s5, .LBB27_17
.LBB27_31:                              # %._crit_edge428
	ld.d	$a0, $sp, 248
	ld.d	$a1, $sp, 256
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 216
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 216
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	blt	$s7, $s0, .LBB27_68
# %bb.32:                               # %.lr.ph431
	move	$s6, $zero
	move	$s0, $zero
	addi.w	$a0, $s8, -1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $fp, 1368
	ld.d	$a2, $fp, 1376
	ld.d	$a3, $fp, 1384
	ld.d	$a4, $fp, 1392
	addi.w	$a0, $s3, -1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a0, $s8, 1
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	ori	$s2, $zero, 2
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	b	.LBB27_34
	.p2align	4, , 16
.LBB27_33:                              #   in Loop: Header=BB27_34 Depth=1
	ld.d	$a1, $fp, 1368
	stx.w	$s3, $a1, $s0
	ld.d	$a2, $fp, 1376
	stx.w	$s5, $a2, $s0
	ld.d	$a3, $fp, 1384
	stx.w	$a5, $a3, $s0
	ld.d	$a4, $fp, 1392
	stx.w	$s6, $a4, $s0
	addi.d	$s0, $s0, 4
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s6, $s6, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $s0, .LBB27_68
.LBB27_34:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 1352
	ld.d	$a5, $fp, 1328
	ld.d	$a6, $fp, 1336
	ldx.w	$t3, $a0, $s0
	ld.w	$t4, $fp, 1120
	ldx.w	$a7, $a5, $s0
	ldx.w	$t1, $a6, $s0
	sub.d	$a5, $t4, $t3
	sll.w	$t0, $s2, $a5
	mul.w	$t2, $t0, $a7
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a5, $a7, -1
	mul.w	$a5, $t0, $a5
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	mul.w	$a7, $t0, $t1
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a5, $t1, -1
	st.d	$t0, $sp, 144                   # 8-byte Folded Spill
	mul.w	$a5, $t0, $a5
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	ldx.w	$a1, $a1, $s0
	ldx.w	$s1, $a2, $s0
	ldx.w	$a2, $a3, $s0
	ldx.w	$a0, $a4, $s0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slti	$a3, $a1, 0
	sll.w	$s5, $s2, $t4
	slt	$a5, $t2, $s5
	masknez	$a4, $a1, $a5
	maskeqz	$a6, $s6, $a5
	or	$a4, $a6, $a4
	maskeqz	$a4, $a4, $a3
	masknez	$a1, $a1, $a3
	or	$a1, $a4, $a1
	slti	$a3, $a2, 0
	slt	$s4, $a7, $s5
	masknez	$a4, $a2, $s4
	maskeqz	$s2, $s6, $s4
	or	$a4, $s2, $a4
	maskeqz	$a4, $a4, $a3
	ld.w	$t0, $fp, 1144
	masknez	$a2, $a2, $a3
	or	$a2, $a4, $a2
	ld.w	$s7, $fp, 1136
	mul.w	$a3, $t0, $t2
	slt	$a3, $a7, $a3
	xori	$a3, $a3, 1
	masknez	$a4, $a1, $a3
	maskeqz	$a3, $s6, $a3
	or	$a3, $a3, $a4
	xor	$a4, $t2, $s5
	sltui	$a4, $a4, 1
	masknez	$a3, $a3, $s4
	or	$a3, $s2, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a1, $a4
	or	$a3, $a3, $a4
	slti	$a4, $a1, 0
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a0, $a3, $a1
	mul.w	$a1, $s7, $a7
	st.d	$t2, $sp, 152                   # 8-byte Folded Spill
	slt	$a1, $t2, $a1
	xori	$a1, $a1, 1
	masknez	$a3, $a2, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a3
	st.d	$a7, $sp, 160                   # 8-byte Folded Spill
	xor	$a3, $a7, $s5
	sltui	$a3, $a3, 1
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	masknez	$a1, $a1, $a5
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	or	$a1, $a6, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	slti	$a3, $a2, 0
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a5, $a1, $a2
	st.d	$t3, $sp, 96                    # 8-byte Folded Spill
	beq	$t4, $t3, .LBB27_38
# %bb.35:                               #   in Loop: Header=BB27_34 Depth=1
	addi.w	$s3, $zero, -1
	move	$s8, $a0
	bge	$s3, $a0, .LBB27_53
# %bb.36:                               #   in Loop: Header=BB27_34 Depth=1
	bge	$s3, $a5, .LBB27_54
.LBB27_37:                              #   in Loop: Header=BB27_34 Depth=1
	move	$a0, $s8
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
.LBB27_38:                              #   in Loop: Header=BB27_34 Depth=1
	addi.w	$a6, $zero, -1
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	blt	$a6, $a0, .LBB27_40
.LBB27_39:                              #   in Loop: Header=BB27_34 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $s8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$s3, $a5
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	move	$s2, $s1
	move	$s1, $s7
	move	$s7, $s8
	move	$s8, $t0
	jirl	$ra, $a2, 0
	move	$t0, $s8
	move	$s8, $s7
	move	$s7, $s1
	move	$s1, $s2
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $s3
.LBB27_40:                              #   in Loop: Header=BB27_34 Depth=1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$s3, $s8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	mul.w	$a0, $a1, $a0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a3, $a1, $a0
	slti	$a0, $s1, 0
	mul.w	$a1, $s7, $s5
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	slt	$a2, $a2, $a1
	xori	$s7, $a2, 1
	masknez	$a2, $s1, $s7
	maskeqz	$s8, $s6, $s7
	or	$a2, $s8, $a2
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $s1, $a0
	or	$a0, $a2, $a0
	mul.w	$s1, $t0, $s5
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	slt	$a2, $a2, $s1
	xori	$s5, $a2, 1
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	maskeqz	$s6, $s6, $s5
	slti	$a2, $a0, 0
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	xor	$a1, $a3, $a1
	sltui	$a1, $a1, 1
	masknez	$a3, $a0, $a1
	masknez	$a4, $a0, $s5
	or	$a4, $s6, $a4
	masknez	$a4, $a4, $s4
	or	$a4, $s2, $a4
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	move	$s2, $a0
	bge	$a6, $a0, .LBB27_51
# %bb.41:                               #   in Loop: Header=BB27_34 Depth=1
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	bge	$a6, $a5, .LBB27_52
.LBB27_42:                              #   in Loop: Header=BB27_34 Depth=1
	addi.d	$a0, $s4, 1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	mul.w	$a0, $a1, $a0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	slti	$a0, $a3, 0
	masknez	$a1, $a3, $s5
	or	$a1, $s6, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$a0, $a1, $a0
	slti	$a1, $a0, 0
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	xor	$a2, $a2, $s1
	sltui	$a2, $a2, 1
	masknez	$a3, $a0, $a2
	masknez	$a4, $a0, $s7
	or	$a4, $s8, $a4
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	masknez	$a4, $a4, $a7
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	or	$a4, $a7, $a4
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$s6, $a2, $a0
	move	$s8, $s3
	blt	$a6, $s6, .LBB27_44
# %bb.43:                               #   in Loop: Header=BB27_34 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $s8
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$s1, $a5
	jirl	$ra, $a2, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$s6, $a0
.LBB27_44:                              #   in Loop: Header=BB27_34 Depth=1
	ld.w	$a0, $fp, 1120
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	move	$s5, $s2
	ori	$s2, $zero, 2
	beq	$s1, $a0, .LBB27_59
# %bb.45:                               #   in Loop: Header=BB27_34 Depth=1
	sll.w	$a0, $s2, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB27_48
# %bb.46:                               #   in Loop: Header=BB27_34 Depth=1
	bge	$a6, $s5, .LBB27_55
# %bb.47:                               #   in Loop: Header=BB27_34 Depth=1
	bge	$a6, $s3, .LBB27_56
.LBB27_48:                              #   in Loop: Header=BB27_34 Depth=1
	ld.wu	$a0, $fp, 1120
	sll.w	$a0, $s2, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB27_59
.LBB27_49:                              #   in Loop: Header=BB27_34 Depth=1
	bge	$a6, $s6, .LBB27_57
# %bb.50:                               #   in Loop: Header=BB27_34 Depth=1
	blt	$a6, $a5, .LBB27_59
	b	.LBB27_58
	.p2align	4, , 16
.LBB27_51:                              #   in Loop: Header=BB27_34 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $s3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$s2, $a5
	jirl	$ra, $a2, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $s2
	move	$s2, $a0
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	blt	$a6, $a5, .LBB27_42
.LBB27_52:                              #   in Loop: Header=BB27_34 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $s3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	jirl	$ra, $a2, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $a0
	b	.LBB27_42
.LBB27_53:                              #   in Loop: Header=BB27_34 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a1, $a3, $a1
	srli.d	$a1, $a1, 1
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	mul.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a3
	sub.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	move	$s8, $t0
	jirl	$ra, $a2, 0
	move	$t0, $s8
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	move	$s8, $a0
	blt	$s3, $a5, .LBB27_37
.LBB27_54:                              #   in Loop: Header=BB27_34 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.w	$a1, $a3, $a1
	srli.d	$a1, $a1, 1
	ld.d	$a2, $a0, 0
	sub.d	$a0, $a3, $a1
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	mul.d	$a0, $a0, $s3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$t0, $sp, 136                   # 8-byte Folded Spill
	jirl	$ra, $a2, 0
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $a0
	move	$a0, $s8
	move	$s8, $s3
	addi.w	$a6, $zero, -1
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	blt	$a6, $a0, .LBB27_40
	b	.LBB27_39
.LBB27_55:                              #   in Loop: Header=BB27_34 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	ld.d	$a2, $a0, 0
	srli.d	$a0, $a1, 1
	mul.d	$a0, $a0, $s8
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$s5, $a5
	jirl	$ra, $a2, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$s5, $a0
	blt	$a6, $s3, .LBB27_48
.LBB27_56:                              #   in Loop: Header=BB27_34 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	srli.d	$a0, $a0, 1
	sub.d	$a0, $a1, $a0
	pcalau12i	$a1, %got_pc_hi20(read_hash)
	ld.d	$a1, $a1, %got_pc_lo12(read_hash)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	bstrpick.d	$a3, $a2, 31, 31
	add.w	$a2, $a2, $a3
	ld.d	$a3, $a1, 0
	srli.d	$a1, $a2, 1
	mul.d	$a1, $a1, $s8
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$s3, $a5
	jirl	$ra, $a3, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $s3
	move	$s3, $a0
	ld.wu	$a0, $fp, 1120
	sll.w	$a0, $s2, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB27_49
	b	.LBB27_59
.LBB27_57:                              #   in Loop: Header=BB27_34 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	ld.d	$a2, $a0, 0
	srli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $s8
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$s2, $s5
	move	$s5, $a5
	jirl	$ra, $a2, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$s5, $s2
	ori	$s2, $zero, 2
	move	$s6, $a0
	blt	$a6, $a5, .LBB27_59
.LBB27_58:                              #   in Loop: Header=BB27_34 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(read_hash)
	ld.d	$a1, $a1, %got_pc_lo12(read_hash)
	srli.d	$a0, $a0, 1
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	sub.w	$a2, $a4, $a2
	srli.d	$a2, $a2, 1
	ld.d	$a3, $a1, 0
	sub.d	$a1, $a4, $a2
	mul.d	$a1, $a1, $s8
	add.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $a0
	.p2align	4, , 16
.LBB27_59:                              #   in Loop: Header=BB27_34 Depth=1
	beqz	$s1, .LBB27_33
# %bb.60:                               #   in Loop: Header=BB27_34 Depth=1
	bge	$a6, $s3, .LBB27_64
# %bb.61:                               #   in Loop: Header=BB27_34 Depth=1
	bge	$a6, $s5, .LBB27_65
.LBB27_62:                              #   in Loop: Header=BB27_34 Depth=1
	bge	$a6, $a5, .LBB27_66
.LBB27_63:                              #   in Loop: Header=BB27_34 Depth=1
	blt	$a6, $s6, .LBB27_33
	b	.LBB27_67
	.p2align	4, , 16
.LBB27_64:                              #   in Loop: Header=BB27_34 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	bstrpick.d	$a1, $s4, 31, 31
	add.w	$a1, $s4, $a1
	srli.d	$a1, $a1, 1
	ld.d	$a2, $a0, 0
	mul.d	$a0, $a1, $s8
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$s1, $a5
	jirl	$ra, $a2, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$s3, $a0
	blt	$a6, $s5, .LBB27_62
.LBB27_65:                              #   in Loop: Header=BB27_34 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	bstrpick.d	$a1, $s4, 31, 31
	add.w	$a1, $s4, $a1
	srli.d	$a1, $a1, 1
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$s1, $a5
	jirl	$ra, $a2, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$s5, $a0
	blt	$a6, $a5, .LBB27_63
.LBB27_66:                              #   in Loop: Header=BB27_34 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(read_hash)
	ld.d	$a1, $a1, %got_pc_lo12(read_hash)
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a3, 31, 31
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 1
	ld.d	$a3, $a1, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	mul.d	$a0, $a0, $s8
	alsl.w	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $a0
	blt	$a6, $s6, .LBB27_33
.LBB27_67:                              #   in Loop: Header=BB27_34 Depth=1
	pcalau12i	$a0, %got_pc_hi20(read_hash)
	ld.d	$a0, $a0, %got_pc_lo12(read_hash)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a2, 31, 31
	add.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 1
	ld.d	$a2, $a0, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $s8
	alsl.w	$a0, $a0, $a1, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$s1, $a5
	jirl	$ra, $a2, 0
	move	$a5, $s1
	move	$s6, $a0
	b	.LBB27_33
.LBB27_68:                              # %._crit_edge432
	pcaddu18i	$ra, %call36(write_hash_collision_report)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(read_hash_collision_report)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(compact_hash_delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	ld.d	$a1, $sp, 256
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 224
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 224
	b	.LBB27_100
.LBB27_69:
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	mul.w	$a0, $a0, $a0
	ori	$a1, $zero, 2
	sll.w	$s0, $a1, $a0
	addi.w	$a1, $zero, -1
	bge	$a1, $s0, .LBB27_111
# %bb.70:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	ori	$a1, $zero, 30
	bgeu	$a1, $a0, .LBB27_72
# %bb.71:
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB27_73
.LBB27_72:                              # %.noexc372
	slli.d	$s2, $s0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	alsl.d	$s0, $s0, $a0, 2
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB27_73:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
	st.w	$zero, $fp, 1128
.Ltmp190:
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh24calc_spatial_coordinatesEi)
	jirl	$ra, $ra, 0
.Ltmp191:
# %bb.74:
	addi.d	$s2, $fp, 784
.Ltmp192:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(KDTree_Initialize)
	jirl	$ra, $ra, 0
.Ltmp193:
# %bb.75:                               # %.noexc373
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB27_79
# %bb.76:                               # %.lr.ph.i
	move	$a0, $zero
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB27_77:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 1416
	slli.d	$a0, $a0, 3
	fldx.d	$fa0, $a1, $a0
	ld.d	$a1, $fp, 1440
	fst.d	$fa0, $sp, 248
	fldx.d	$fa1, $a1, $a0
	ld.d	$a1, $fp, 1464
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 264
	fldx.d	$fa0, $a1, $a0
	ld.d	$a1, $fp, 1488
	fst.d	$fa0, $sp, 256
	fldx.d	$fa1, $a1, $a0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 272
.Ltmp194:
	addi.d	$a1, $sp, 248
	move	$a0, $s2
	pcaddu18i	$ra, %call36(KDTree_AddElement)
	jirl	$ra, $ra, 0
.Ltmp195:
# %bb.78:                               # %.noexc374
                                        #   in Loop: Header=BB27_77 Depth=1
	ld.d	$a1, $fp, 1160
	bstrpick.d	$a0, $s3, 31, 0
	addi.w	$s3, $s3, 1
	bltu	$a0, $a1, .LBB27_77
.LBB27_79:                              # %.loopexit420
	ld.d	$a0, $sp, 216
	ld.d	$a1, $sp, 224
.Ltmp197:
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp198:
# %bb.80:
	fld.d	$fa1, $fp, 336
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 336
.Ltmp199:
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
.Ltmp200:
# %bb.81:                               # %.preheader
	ori	$s3, $zero, 1
	blt	$s7, $s3, .LBB27_96
# %bb.82:                               # %.lr.ph424
	move	$s4, $zero
	b	.LBB27_84
	.p2align	4, , 16
.LBB27_83:                              #   in Loop: Header=BB27_84 Depth=1
	addi.d	$s4, $s4, 1
	beq	$s4, $s7, .LBB27_96
.LBB27_84:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 1368
	slli.d	$s5, $s4, 2
	stx.w	$s4, $a0, $s5
	ld.d	$a0, $fp, 1440
	ld.d	$a1, $fp, 1416
	slli.d	$s6, $s4, 3
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -944
	fmul.d	$fa0, $fa0, $fa2
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 184
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1464
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 200
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 192
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 208
.Ltmp201:
	addi.d	$a1, $sp, 180
	addi.d	$a3, $sp, 184
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
.Ltmp202:
# %bb.85:                               #   in Loop: Header=BB27_84 Depth=1
	ld.w	$a0, $sp, 180
	bne	$a0, $s3, .LBB27_87
# %bb.86:                               #   in Loop: Header=BB27_84 Depth=1
	ld.w	$a0, $s1, 0
	ld.d	$a1, $fp, 1368
	stx.w	$a0, $a1, $s5
.LBB27_87:                              #   in Loop: Header=BB27_84 Depth=1
	ld.d	$a0, $fp, 1376
	stx.w	$s4, $a0, $s5
	ld.d	$a0, $fp, 1440
	ld.d	$a1, $fp, 1416
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -908
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 184
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1464
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 200
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -944
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 192
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 208
.Ltmp203:
	addi.d	$a1, $sp, 180
	addi.d	$a3, $sp, 184
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
.Ltmp204:
# %bb.88:                               #   in Loop: Header=BB27_84 Depth=1
	ld.w	$a0, $sp, 180
	bne	$a0, $s3, .LBB27_90
# %bb.89:                               #   in Loop: Header=BB27_84 Depth=1
	ld.w	$a0, $s1, 0
	ld.d	$a1, $fp, 1376
	stx.w	$a0, $a1, $s5
.LBB27_90:                              #   in Loop: Header=BB27_84 Depth=1
	ld.d	$a0, $fp, 1384
	stx.w	$s4, $a0, $s5
	ld.d	$a0, $fp, 1440
	ld.d	$a1, $fp, 1416
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -944
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 184
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1464
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 200
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 192
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fsub.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 208
.Ltmp205:
	addi.d	$a1, $sp, 180
	addi.d	$a3, $sp, 184
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
.Ltmp206:
# %bb.91:                               #   in Loop: Header=BB27_84 Depth=1
	ld.w	$a0, $sp, 180
	bne	$a0, $s3, .LBB27_93
# %bb.92:                               #   in Loop: Header=BB27_84 Depth=1
	ld.w	$a0, $s1, 0
	ld.d	$a1, $fp, 1384
	stx.w	$a0, $a1, $s5
.LBB27_93:                              #   in Loop: Header=BB27_84 Depth=1
	ld.d	$a0, $fp, 1392
	stx.w	$s4, $a0, $s5
	ld.d	$a0, $fp, 1440
	ld.d	$a1, $fp, 1416
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -944
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 184
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1464
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 200
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -908
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 192
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 208
.Ltmp207:
	addi.d	$a1, $sp, 180
	addi.d	$a3, $sp, 184
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
.Ltmp208:
# %bb.94:                               #   in Loop: Header=BB27_84 Depth=1
	ld.w	$a0, $sp, 180
	bne	$a0, $s3, .LBB27_83
# %bb.95:                               #   in Loop: Header=BB27_84 Depth=1
	ld.w	$a0, $s1, 0
	ld.d	$a1, $fp, 1392
	stx.w	$a0, $a1, $s5
	b	.LBB27_83
.LBB27_96:                              # %._crit_edge
.Ltmp210:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(KDTree_Destroy)
	jirl	$ra, $ra, 0
.Ltmp211:
# %bb.97:
	ld.d	$a0, $sp, 216
	ld.d	$a1, $sp, 224
.Ltmp212:
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp213:
# %bb.98:
	fld.d	$fa1, $fp, 344
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 344
	beqz	$s1, .LBB27_100
# %bb.99:
	sub.d	$a1, $s0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB27_100:
	st.d	$s7, $fp, 1176
.LBB27_101:
	ld.d	$a0, $sp, 232
	ld.d	$a1, $sp, 240
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, 208
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 208
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB27_102:                             # %vector.memcheck
	sub.d	$t0, $a1, $a0
	ori	$a7, $zero, 32
	move	$a5, $zero
	bltu	$t0, $a7, .LBB27_11
# %bb.103:                              # %vector.memcheck
	sub.d	$t0, $a3, $a0
	bltu	$t0, $a7, .LBB27_11
# %bb.104:                              # %vector.memcheck
	sub.d	$t0, $a4, $a0
	ori	$a7, $zero, 32
	bltu	$t0, $a7, .LBB27_11
# %bb.105:                              # %vector.memcheck
	sub.d	$t0, $a3, $a1
	bltu	$t0, $a7, .LBB27_11
# %bb.106:                              # %vector.memcheck
	sub.d	$t0, $a4, $a1
	ori	$a7, $zero, 32
	bltu	$t0, $a7, .LBB27_11
# %bb.107:                              # %vector.memcheck
	sub.d	$t0, $a4, $a3
	bltu	$t0, $a7, .LBB27_11
# %bb.108:                              # %vector.ph
	bstrpick.d	$a5, $a6, 30, 3
	slli.d	$a5, $a5, 3
	addi.d	$a6, $a4, 16
	addi.d	$a7, $a3, 16
	addi.d	$t0, $a1, 16
	addi.d	$t1, $a0, 16
	vrepli.b	$vr0, -1
	move	$t2, $a5
	.p2align	4, , 16
.LBB27_109:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $t1, -16
	vst	$vr0, $t1, 0
	vst	$vr0, $t0, -16
	vst	$vr0, $t0, 0
	vst	$vr0, $a7, -16
	vst	$vr0, $a7, 0
	vst	$vr0, $a6, -16
	vst	$vr0, $a6, 0
	addi.d	$t2, $t2, -8
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB27_109
# %bb.110:                              # %middle.block
	bne	$a2, $a5, .LBB27_11
	b	.LBB27_13
.LBB27_111:                             # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB27_112:                             # %.loopexit.split-lp
.Ltmp214:
	b	.LBB27_114
.LBB27_113:                             # %.loopexit
.Ltmp196:
.LBB27_114:
	move	$fp, $a0
	bnez	$s1, .LBB27_116
	b	.LBB27_117
.LBB27_115:                             # %.thread411
.Ltmp209:
	move	$fp, $a0
.LBB27_116:
	sub.d	$a1, $s0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB27_117:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit376
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZN4Mesh14calc_neighborsEi, .Lfunc_end27-_ZN4Mesh14calc_neighborsEi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table27:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp190-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp190
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp193-.Ltmp190              #   Call between .Ltmp190 and .Ltmp193
	.uleb128 .Ltmp214-.Lfunc_begin10        #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin10        #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp200-.Ltmp197              #   Call between .Ltmp197 and .Ltmp200
	.uleb128 .Ltmp214-.Lfunc_begin10        #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp208-.Ltmp201              #   Call between .Ltmp201 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin10        #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp213-.Ltmp210              #   Call between .Ltmp210 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin10        #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Lfunc_end27-.Ltmp213          #   Call between .Ltmp213 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN4Mesh24print_calc_neighbor_typeEv
.LCPI28_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	_ZN4Mesh24print_calc_neighbor_typeEv
	.p2align	5
	.type	_ZN4Mesh24print_calc_neighbor_typeEv,@function
_ZN4Mesh24print_calc_neighbor_typeEv:   # @_ZN4Mesh24print_calc_neighbor_typeEv
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
	pcalau12i	$a1, %pc_hi20(calc_neighbor_type)
	ld.w	$a1, $a1, %pc_lo12(calc_neighbor_type)
	move	$fp, $a0
	beqz	$a1, .LBB28_3
# %bb.1:
	ld.d	$s0, $fp, 1160
	srli.d	$a0, $s0, 32
	pcalau12i	$a1, %pc_hi20(.LCPI28_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI28_0)
	lu52i.d	$a1, $zero, 1107
	or	$a0, $a0, $a1
	movgr2fr.d	$fa1, $a0
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a0, 275200
	move	$a1, $s0
	bstrins.d	$a1, $a0, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	mul.d	$a0, $s0, $a0
	slli.d	$a1, $a0, 2
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 620
	bnez	$a0, .LBB28_4
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB28_3:
	ld.w	$a0, $fp, 620
	beqz	$a0, .LBB28_5
.LBB28_4:                               # %.thread
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB28_5:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 620
	bnez	$a0, .LBB28_4
# %bb.6:
	ld.w	$a0, $fp, 624
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB28_4
# %bb.7:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(final_hash_collision_report)
	jr	$t8
.Lfunc_end28:
	.size	_ZN4Mesh24print_calc_neighbor_typeEv, .Lfunc_end28-_ZN4Mesh24print_calc_neighbor_typeEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh22get_calc_neighbor_typeEv # -- Begin function _ZN4Mesh22get_calc_neighbor_typeEv
	.p2align	5
	.type	_ZN4Mesh22get_calc_neighbor_typeEv,@function
_ZN4Mesh22get_calc_neighbor_typeEv:     # @_ZN4Mesh22get_calc_neighbor_typeEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(calc_neighbor_type)
	ld.w	$a0, $a0, %pc_lo12(calc_neighbor_type)
	ret
.Lfunc_end29:
	.size	_ZN4Mesh22get_calc_neighbor_typeEv, .Lfunc_end29-_ZN4Mesh22get_calc_neighbor_typeEv
                                        # -- End function
	.globl	_ZN4Mesh22calc_celltype_threadedEm # -- Begin function _ZN4Mesh22calc_celltype_threadedEm
	.p2align	5
	.type	_ZN4Mesh22calc_celltype_threadedEm,@function
_ZN4Mesh22calc_celltype_threadedEm:     # @_ZN4Mesh22calc_celltype_threadedEm
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
	move	$s0, $a0
	ld.d	$a2, $a0, 1360
	move	$fp, $a1
	addi.d	$s1, $a0, 8
	beqz	$a2, .LBB30_4
# %bb.1:
	move	$a0, $s1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	bgeu	$a0, $fp, .LBB30_5
# %bb.2:
	ld.d	$a1, $s0, 1360
	beqz	$a1, .LBB30_4
# %bb.3:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 1360
.LBB30_4:                               # %.thread
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a3, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 4
	move	$a0, $s1
	move	$a1, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 1360
.LBB30_5:
	beqz	$fp, .LBB30_16
# %bb.6:                                # %.lr.ph
	ld.d	$a0, $s0, 1360
	ld.d	$a1, $s0, 1328
	ld.d	$a2, $s0, 1352
	ld.d	$a3, $s0, 880
	ld.d	$a4, $s0, 904
	ld.d	$a5, $s0, 1336
	ld.d	$a6, $s0, 928
	ld.d	$a7, $s0, 952
	ori	$t0, $zero, 1
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	addi.w	$t2, $zero, -2
	lu32i.d	$t2, 0
	addi.w	$t3, $zero, -3
	lu32i.d	$t3, 0
	addi.w	$t4, $zero, -4
	lu32i.d	$t4, 0
	ori	$t5, $zero, 1
	b	.LBB30_8
	.p2align	4, , 16
.LBB30_7:                               #   in Loop: Header=BB30_8 Depth=1
	bstrpick.d	$t6, $t5, 31, 0
	addi.d	$a0, $a0, 4
	addi.w	$t5, $t5, 1
	bgeu	$t6, $fp, .LBB30_16
.LBB30_8:                               # =>This Inner Loop Header: Depth=1
	addi.w	$t6, $t5, -1
	st.w	$t0, $a0, 0
	slli.d	$s0, $t6, 2
	ldx.w	$t8, $a2, $s0
	ldx.w	$s1, $a1, $s0
	slli.d	$t7, $t8, 2
	ldx.w	$s2, $a3, $t7
	alsl.d	$t7, $t6, $a2, 2
	blt	$s1, $s2, .LBB30_12
# %bb.9:                                #   in Loop: Header=BB30_8 Depth=1
	slli.d	$s2, $t8, 2
	ldx.w	$s2, $a4, $s2
	blt	$s2, $s1, .LBB30_13
.LBB30_10:                              #   in Loop: Header=BB30_8 Depth=1
	ldx.w	$s0, $a5, $s0
	slli.d	$s1, $t8, 2
	ldx.w	$s1, $a6, $s1
	blt	$s0, $s1, .LBB30_14
.LBB30_11:                              #   in Loop: Header=BB30_8 Depth=1
	slli.d	$t6, $t8, 2
	ldx.w	$t6, $a7, $t6
	bge	$t6, $s0, .LBB30_7
	b	.LBB30_15
	.p2align	4, , 16
.LBB30_12:                              #   in Loop: Header=BB30_8 Depth=1
	alsl.d	$t8, $t6, $a1, 2
	st.w	$t1, $a0, 0
	ld.w	$s1, $t8, 0
	ld.w	$t8, $t7, 0
	slli.d	$s2, $t8, 2
	ldx.w	$s2, $a4, $s2
	bge	$s2, $s1, .LBB30_10
.LBB30_13:                              #   in Loop: Header=BB30_8 Depth=1
	st.w	$t2, $a0, 0
	ld.w	$t8, $t7, 0
	ldx.w	$s0, $a5, $s0
	slli.d	$s1, $t8, 2
	ldx.w	$s1, $a6, $s1
	bge	$s0, $s1, .LBB30_11
.LBB30_14:                              #   in Loop: Header=BB30_8 Depth=1
	alsl.d	$t6, $t6, $a5, 2
	st.w	$t3, $a0, 0
	ld.w	$s0, $t6, 0
	ld.w	$t8, $t7, 0
	slli.d	$t6, $t8, 2
	ldx.w	$t6, $a7, $t6
	bge	$t6, $s0, .LBB30_7
.LBB30_15:                              #   in Loop: Header=BB30_8 Depth=1
	st.w	$t4, $a0, 0
	b	.LBB30_7
.LBB30_16:                              # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end30:
	.size	_ZN4Mesh22calc_celltype_threadedEm, .Lfunc_end30-_ZN4Mesh22calc_celltype_threadedEm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh13calc_symmetryERSt6vectorIiSaIiEES3_S3_ # -- Begin function _ZN4Mesh13calc_symmetryERSt6vectorIiSaIiEES3_S3_
	.p2align	5
	.type	_ZN4Mesh13calc_symmetryERSt6vectorIiSaIiEES3_S3_,@function
_ZN4Mesh13calc_symmetryERSt6vectorIiSaIiEES3_S3_: # @_ZN4Mesh13calc_symmetryERSt6vectorIiSaIiEES3_S3_
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
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
	move	$fp, $a0
	ld.w	$a0, $a0, 1120
	mul.w	$a0, $a0, $a0
	ori	$a4, $zero, 2
	sll.w	$s5, $a4, $a0
	addi.w	$a4, $zero, -1
	bge	$a4, $s5, .LBB31_20
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	ori	$a1, $zero, 30
	bgeu	$a1, $a0, .LBB31_4
# %bb.2:                                # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.thread
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB31_19
# %bb.3:
	move	$s3, $zero
	st.d	$zero, $sp, 0                   # 8-byte Folded Spill
	b	.LBB31_6
.LBB31_4:                               # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
	slli.d	$s4, $s5, 2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	alsl.d	$s5, $s5, $a0, 2
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s4, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB31_18
# %bb.5:
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
.LBB31_6:                               # %.lr.ph
	addi.d	$a0, $fp, 1160
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	move	$s7, $zero
	addi.d	$s4, $fp, 784
	ori	$s8, $zero, 1
	b	.LBB31_8
	.p2align	4, , 16
.LBB31_7:                               #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.w	$s7, $s7, 1
	bstrpick.d	$a0, $s7, 31, 0
	bgeu	$a0, $a1, .LBB31_17
.LBB31_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 1440
	ld.d	$a2, $fp, 1416
	slli.d	$s6, $a0, 3
	fldx.d	$fa0, $a1, $s6
	fldx.d	$fa1, $a2, $s6
	ld.d	$a3, $s2, 0
	vldi	$vr2, -928
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 24
	fldx.d	$fa0, $a1, $s6
	fldx.d	$fa1, $a2, $s6
	slli.d	$s5, $a0, 2
	stx.w	$s7, $a3, $s5
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1464
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 40
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	ld.d	$a2, $s1, 0
	ld.d	$a3, $s0, 0
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 32
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	stx.w	$s7, $a2, $s5
	stx.w	$s7, $a3, $s5
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 48
.Ltmp215:
	addi.d	$a1, $sp, 20
	addi.d	$a3, $sp, 24
	move	$a0, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
.Ltmp216:
# %bb.9:                                #   in Loop: Header=BB31_8 Depth=1
	ld.w	$a0, $sp, 20
	bne	$a0, $s8, .LBB31_11
# %bb.10:                               #   in Loop: Header=BB31_8 Depth=1
	ld.w	$a0, $s3, 0
	ld.d	$a1, $s2, 0
	stx.w	$a0, $a1, $s5
.LBB31_11:                              #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a0, $fp, 1440
	ld.d	$a1, $fp, 1416
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -928
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 24
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1464
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 40
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 32
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 48
.Ltmp217:
	addi.d	$a1, $sp, 20
	addi.d	$a3, $sp, 24
	move	$a0, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
.Ltmp218:
# %bb.12:                               #   in Loop: Header=BB31_8 Depth=1
	ld.w	$a0, $sp, 20
	bne	$a0, $s8, .LBB31_14
# %bb.13:                               #   in Loop: Header=BB31_8 Depth=1
	ld.w	$a0, $s3, 0
	ld.d	$a1, $s1, 0
	stx.w	$a0, $a1, $s5
.LBB31_14:                              #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a0, $fp, 1440
	ld.d	$a1, $fp, 1416
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	vldi	$vr2, -928
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 24
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1464
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 40
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 32
	fldx.d	$fa0, $a0, $s6
	fldx.d	$fa1, $a1, $s6
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $sp, 48
.Ltmp219:
	addi.d	$a1, $sp, 20
	addi.d	$a3, $sp, 24
	move	$a0, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(KDTree_QueryBoxIntersect)
	jirl	$ra, $ra, 0
.Ltmp220:
# %bb.15:                               #   in Loop: Header=BB31_8 Depth=1
	ld.w	$a0, $sp, 20
	bne	$a0, $s8, .LBB31_7
# %bb.16:                               #   in Loop: Header=BB31_8 Depth=1
	ld.w	$a0, $s3, 0
	ld.d	$a1, $s0, 0
	stx.w	$a0, $a1, $s5
	b	.LBB31_7
.LBB31_17:
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
.LBB31_18:                              # %._crit_edge.thread
	sub.d	$a1, $s5, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB31_19:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
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
.LBB31_20:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB31_21:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit49
.Ltmp221:
	move	$fp, $a0
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZN4Mesh13calc_symmetryERSt6vectorIiSaIiEES3_S3_, .Lfunc_end31-_ZN4Mesh13calc_symmetryERSt6vectorIiSaIiEES3_S3_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table31:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp215-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp215
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp220-.Ltmp215              #   Call between .Ltmp215 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin11        #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Lfunc_end31-.Ltmp220          #   Call between .Ltmp220 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh6resizeEm               # -- Begin function _ZN4Mesh6resizeEm
	.p2align	5
	.type	_ZN4Mesh6resizeEm,@function
_ZN4Mesh6resizeEm:                      # @_ZN4Mesh6resizeEm
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
	ld.d	$a2, $a0, 1328
	move	$s0, $a1
	addi.d	$fp, $a0, 8
	move	$a0, $fp
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	bgeu	$a0, $s0, .LBB32_2
# %bb.1:
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN10MallocPlus18memory_realloc_allEm)
	jr	$t8
.LBB32_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end32:
	.size	_ZN4Mesh6resizeEm, .Lfunc_end32-_ZN4Mesh6resizeEm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh17memory_reset_ptrsEv   # -- Begin function _ZN4Mesh17memory_reset_ptrsEv
	.p2align	5
	.type	_ZN4Mesh17memory_reset_ptrsEv,@function
_ZN4Mesh17memory_reset_ptrsEv:          # @_ZN4Mesh17memory_reset_ptrsEv
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
	addi.d	$s0, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1328
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1336
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1352
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1360
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1368
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1376
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1384
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14get_memory_ptrEPKc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1392
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end33:
	.size	_ZN4Mesh17memory_reset_ptrsEv, .Lfunc_end33-_ZN4Mesh17memory_reset_ptrsEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh24resize_old_device_memoryEm # -- Begin function _ZN4Mesh24resize_old_device_memoryEm
	.p2align	5
	.type	_ZN4Mesh24resize_old_device_memoryEm,@function
_ZN4Mesh24resize_old_device_memoryEm:   # @_ZN4Mesh24resize_old_device_memoryEm
# %bb.0:
	ret
.Lfunc_end34:
	.size	_ZN4Mesh24resize_old_device_memoryEm, .Lfunc_end34-_ZN4Mesh24resize_old_device_memoryEm
                                        # -- End function
	.globl	_ZN4Mesh17print_object_infoEv   # -- Begin function _ZN4Mesh17print_object_infoEv
	.p2align	5
	.type	_ZN4Mesh17print_object_infoEv,@function
_ZN4Mesh17print_object_infoEv:          # @_ZN4Mesh17print_object_infoEv
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
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 620
	ld.w	$a2, $fp, 624
	ld.w	$a3, $fp, 636
	ld.w	$a4, $fp, 628
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1160
	ld.d	$a2, $fp, 1176
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 1360
	addi.d	$s0, $fp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a3, $zero, 4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 1352
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	ori	$a3, $zero, 4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 1328
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	ori	$a3, $zero, 4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 1336
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	ori	$a3, $zero, 4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 1368
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	ori	$a3, $zero, 4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 1376
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ori	$a3, $zero, 4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 1384
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	ori	$a3, $zero, 4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 1392
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus15get_memory_sizeEPv)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	ori	$a3, $zero, 4
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end35:
	.size	_ZN4Mesh17print_object_infoEv, .Lfunc_end35-_ZN4Mesh17print_object_infoEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh14calc_face_listEv      # -- Begin function _ZN4Mesh14calc_face_listEv
	.p2align	5
	.type	_ZN4Mesh14calc_face_listEv,@function
_ZN4Mesh14calc_face_listEv:             # @_ZN4Mesh14calc_face_listEv
	.cfi_startproc
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
	move	$fp, $a0
	ld.d	$a0, $a0, 1568
	ld.d	$a1, $fp, 1576
	beq	$a1, $a0, .LBB36_2
# %bb.1:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a0, $fp, 1576
.LBB36_2:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit
	ld.d	$a0, $fp, 1592
	ld.d	$a1, $fp, 1600
	beq	$a1, $a0, .LBB36_4
# %bb.3:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i190
	st.d	$a0, $fp, 1600
.LBB36_4:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit191
	ld.d	$a0, $fp, 1616
	ld.d	$a1, $fp, 1624
	beq	$a1, $a0, .LBB36_6
# %bb.5:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i193
	st.d	$a0, $fp, 1624
.LBB36_6:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit194
	ld.d	$a1, $fp, 1784
	ld.d	$a0, $fp, 1792
	beq	$a0, $a1, .LBB36_8
# %bb.7:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i196
	st.d	$a1, $fp, 1792
.LBB36_8:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit197
	ld.d	$a2, $fp, 1808
	ld.d	$a0, $fp, 1816
	beq	$a0, $a2, .LBB36_10
# %bb.9:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i199
	st.d	$a2, $fp, 1816
.LBB36_10:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit200
	ld.d	$a0, $fp, 1832
	ld.d	$a3, $fp, 1840
	beq	$a3, $a0, .LBB36_12
# %bb.11:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i202
	st.d	$a0, $fp, 1840
.LBB36_12:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit203
	ld.d	$a0, $fp, 1856
	ld.d	$a3, $fp, 1864
	beq	$a3, $a0, .LBB36_14
# %bb.13:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i205
	st.d	$a0, $fp, 1864
.LBB36_14:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit206
	ld.wu	$a3, $fp, 1120
	addi.d	$a0, $fp, 1784
	addi.d	$a5, $a3, 1
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
	and	$a3, $a5, $a3
	lu12i.w	$a4, 2441
	ori	$s3, $a4, 1663
	st.w	$s3, $sp, 148
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	beqz	$a3, .LBB36_16
# %bb.15:
	move	$a4, $zero
	move	$a1, $a2
	b	.LBB36_17
.LBB36_16:
	addi.w	$a2, $a5, 0
	addi.d	$a3, $sp, 148
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	ld.d	$a1, $fp, 1816
	ld.d	$a2, $fp, 1808
	addi.w	$a4, $a0, 1
.LBB36_17:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
	addi.d	$a0, $fp, 1808
	lu12i.w	$a3, -2442
	ori	$s2, $a3, 2433
	lu32i.d	$s2, 0
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 148
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB36_19
# %bb.18:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 148
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	addi.w	$a4, $a0, 1
	b	.LBB36_22
.LBB36_19:
	bgeu	$a4, $a3, .LBB36_22
# %bb.20:
	alsl.d	$a2, $a4, $a2, 2
	beq	$a1, $a2, .LBB36_22
# %bb.21:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i210
	st.d	$a2, $fp, 1816
.LBB36_22:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit211
	ld.d	$a1, $fp, 1840
	ld.d	$a2, $fp, 1832
	addi.d	$a0, $fp, 1832
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s3, $sp, 148
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB36_24
# %bb.23:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 148
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	addi.w	$a4, $a0, 1
	b	.LBB36_27
.LBB36_24:
	bgeu	$a4, $a3, .LBB36_27
# %bb.25:
	alsl.d	$a2, $a4, $a2, 2
	beq	$a1, $a2, .LBB36_27
# %bb.26:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i213
	st.d	$a2, $fp, 1840
.LBB36_27:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit214
	ld.d	$a1, $fp, 1864
	ld.d	$a2, $fp, 1856
	addi.d	$a0, $fp, 1856
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 148
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB36_29
# %bb.28:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 148
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	b	.LBB36_32
.LBB36_29:
	bgeu	$a4, $a3, .LBB36_32
# %bb.30:
	alsl.d	$a0, $a4, $a2, 2
	beq	$a1, $a0, .LBB36_32
# %bb.31:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i216
	st.d	$a0, $fp, 1864
.LBB36_32:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit217
	ld.d	$a0, $fp, 1880
	ld.d	$a1, $fp, 1888
	beq	$a1, $a0, .LBB36_34
# %bb.33:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i219
	st.d	$a0, $fp, 1888
.LBB36_34:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit220
	ld.wu	$a0, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	addi.d	$s0, $fp, 1880
	bnez	$a1, .LBB36_36
# %bb.35:
	addi.w	$a1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB36_36:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $fp, 1904
	ld.d	$a1, $fp, 1912
	beq	$a1, $a0, .LBB36_38
# %bb.37:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i224
	st.d	$a0, $fp, 1912
.LBB36_38:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit225
	ld.wu	$a0, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	addi.d	$s1, $fp, 1904
	bnez	$a1, .LBB36_40
# %bb.39:
	addi.w	$a1, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB36_40:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit228
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 1160
	ori	$a2, $zero, 1
	addi.w	$a1, $zero, -4
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	blt	$a0, $a2, .LBB36_102
# %bb.41:                               # %.lr.ph
	move	$s7, $zero
	move	$s8, $zero
	move	$s3, $zero
	lu52i.d	$a0, $a1, 2047
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB36_44
	.p2align	4, , 16
.LBB36_42:                              #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s3
.LBB36_43:                              #   in Loop: Header=BB36_44 Depth=1
	ld.w	$a1, $fp, 1160
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 4
	move	$s3, $a0
	bge	$s8, $a1, .LBB36_103
.LBB36_44:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 1376
	ldx.wu	$a0, $a0, $s7
	beq	$s8, $a0, .LBB36_42
# %bb.45:                               #   in Loop: Header=BB36_44 Depth=1
	ld.d	$s2, $fp, 1352
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$s4, $a0, 2
	ldx.w	$a1, $s2, $s4
	ldx.w	$a2, $s2, $s7
	ld.d	$a0, $fp, 1624
	ld.d	$a3, $fp, 1632
	slt	$a7, $a1, $a2
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
	beq	$a0, $a3, .LBB36_47
# %bb.46:                               #   in Loop: Header=BB36_44 Depth=1
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1624
	b	.LBB36_53
.LBB36_47:                              #   in Loop: Header=BB36_44 Depth=1
	ld.d	$s1, $fp, 1616
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB36_245
# %bb.48:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB36_44 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$s5, $a0, $s2, 2
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	add.d	$a1, $s2, $s7
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s5, $a2
	or	$a1, $a1, $a2
	ld.w	$a1, $a1, 0
	move	$s2, $a0
	stx.w	$a1, $a0, $s0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB36_50
# %bb.49:                               #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB36_50:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB36_44 Depth=1
	beqz	$s1, .LBB36_52
# %bb.51:                               #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_52:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB36_44 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1616
	st.d	$a0, $fp, 1624
	alsl.d	$a0, $s6, $s2, 2
	st.d	$a0, $fp, 1632
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
.LBB36_53:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB36_44 Depth=1
	ld.d	$a0, $fp, 1328
	ldx.w	$a1, $a0, $s4
	ld.d	$a0, $fp, 1576
	ld.d	$a2, $fp, 1584
	sll.w	$s5, $a1, $a7
	beq	$a0, $a2, .LBB36_55
# %bb.54:                               #   in Loop: Header=BB36_44 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1576
	b	.LBB36_61
.LBB36_55:                              #   in Loop: Header=BB36_44 Depth=1
	ld.d	$s1, $fp, 1568
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB36_245
# %bb.56:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB36_44 Depth=1
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s5, $a0, $s0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB36_58
# %bb.57:                               #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB36_58:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB36_44 Depth=1
	beqz	$s1, .LBB36_60
# %bb.59:                               #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_60:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB36_44 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1568
	st.d	$a0, $fp, 1576
	alsl.d	$a0, $s6, $s2, 2
	st.d	$a0, $fp, 1584
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
.LBB36_61:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
                                        #   in Loop: Header=BB36_44 Depth=1
	ld.d	$a0, $fp, 1352
	ldx.w	$a2, $a0, $s4
	ldx.w	$a0, $a0, $s7
	ld.d	$a1, $fp, 1336
	bge	$a2, $a0, .LBB36_65
# %bb.62:                               #   in Loop: Header=BB36_44 Depth=1
	ldx.wu	$a3, $a1, $s7
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a4, 32, 31
	ld.d	$a0, $fp, 1600
	ld.d	$a2, $fp, 1608
	and	$a3, $a3, $a4
	addi.w	$a3, $a3, 0
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB36_66
# %bb.63:                               #   in Loop: Header=BB36_44 Depth=1
	ldx.w	$a1, $a1, $s4
	sll.w	$a1, $a1, $a7
	addi.d	$s5, $a1, 1
	bne	$a0, $a2, .LBB36_67
# %bb.64:                               #   in Loop: Header=BB36_44 Depth=1
	ld.d	$s1, $fp, 1592
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bne	$s0, $a0, .LBB36_69
	b	.LBB36_245
	.p2align	4, , 16
.LBB36_65:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge
                                        #   in Loop: Header=BB36_44 Depth=1
	ld.d	$a0, $fp, 1600
	ld.d	$a2, $fp, 1608
.LBB36_66:                              #   in Loop: Header=BB36_44 Depth=1
	ldx.w	$a1, $a1, $s4
	sll.w	$s5, $a1, $a7
	beq	$a0, $a2, .LBB36_68
.LBB36_67:                              #   in Loop: Header=BB36_44 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1600
	b	.LBB36_74
.LBB36_68:                              #   in Loop: Header=BB36_44 Depth=1
	ld.d	$s1, $fp, 1592
	sub.d	$s0, $a2, $s1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB36_245
.LBB36_69:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i283
                                        #   in Loop: Header=BB36_44 Depth=1
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s5, $a0, $s0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB36_71
# %bb.70:                               #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB36_71:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i285
                                        #   in Loop: Header=BB36_44 Depth=1
	beqz	$s1, .LBB36_73
# %bb.72:                               #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_73:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i287
                                        #   in Loop: Header=BB36_44 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1592
	st.d	$a0, $fp, 1600
	alsl.d	$a0, $s6, $s2, 2
	st.d	$a0, $fp, 1608
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
.LBB36_74:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit281
                                        #   in Loop: Header=BB36_44 Depth=1
	ld.d	$a1, $fp, 1352
	ldx.w	$a3, $a1, $s4
	ldx.w	$a2, $a1, $s7
	addi.d	$a0, $s3, 1
	bge	$a2, $a3, .LBB36_43
# %bb.75:                               #   in Loop: Header=BB36_44 Depth=1
	ld.d	$a3, $fp, 1336
	ldx.bu	$a3, $a3, $s4
	andi	$a3, $a3, 1
	bnez	$a3, .LBB36_43
# %bb.76:                               #   in Loop: Header=BB36_44 Depth=1
	ld.d	$a3, $fp, 1392
	ldx.w	$a3, $a3, $s4
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	beq	$a3, $a4, .LBB36_43
# %bb.77:                               #   in Loop: Header=BB36_44 Depth=1
	slli.d	$s4, $a3, 2
	ldx.w	$a5, $a1, $s4
	ld.d	$a4, $fp, 1624
	ld.d	$a6, $fp, 1632
	slt	$a0, $a5, $a2
	beq	$a4, $a6, .LBB36_79
# %bb.78:                               #   in Loop: Header=BB36_44 Depth=1
	masknez	$a1, $a5, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.w	$a0, $a4, 0
	addi.d	$a0, $a4, 4
	st.d	$a0, $fp, 1624
	b	.LBB36_85
.LBB36_79:                              #   in Loop: Header=BB36_44 Depth=1
	ld.d	$s1, $fp, 1616
	sub.d	$s0, $a4, $s1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a2, .LBB36_245
# %bb.80:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i290
                                        #   in Loop: Header=BB36_44 Depth=1
	move	$s5, $s3
	add.d	$a2, $a1, $s7
	alsl.d	$a1, $a3, $a1, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s2, $a0, $a1
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	move	$s2, $a0
	stx.w	$a1, $a0, $s0
	blt	$s0, $s3, .LBB36_82
# %bb.81:                               #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB36_82:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i292
                                        #   in Loop: Header=BB36_44 Depth=1
	beqz	$s1, .LBB36_84
# %bb.83:                               #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_84:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i294
                                        #   in Loop: Header=BB36_44 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1616
	st.d	$a0, $fp, 1624
	alsl.d	$a0, $s6, $s2, 2
	st.d	$a0, $fp, 1632
	move	$s3, $s5
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
.LBB36_85:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit295
                                        #   in Loop: Header=BB36_44 Depth=1
	ld.d	$a0, $fp, 1328
	ldx.w	$a1, $a0, $s4
	ld.d	$a0, $fp, 1576
	ld.d	$a2, $fp, 1584
	sll.w	$s5, $a1, $a7
	beq	$a0, $a2, .LBB36_87
# %bb.86:                               #   in Loop: Header=BB36_44 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1576
	b	.LBB36_93
.LBB36_87:                              #   in Loop: Header=BB36_44 Depth=1
	ld.d	$s1, $fp, 1568
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB36_245
# %bb.88:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i297
                                        #   in Loop: Header=BB36_44 Depth=1
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s5, $a0, $s0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB36_90
# %bb.89:                               #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB36_90:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i299
                                        #   in Loop: Header=BB36_44 Depth=1
	beqz	$s1, .LBB36_92
# %bb.91:                               #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_92:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i301
                                        #   in Loop: Header=BB36_44 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1568
	st.d	$a0, $fp, 1576
	alsl.d	$a0, $s6, $s2, 2
	st.d	$a0, $fp, 1584
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
.LBB36_93:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit302
                                        #   in Loop: Header=BB36_44 Depth=1
	ld.d	$a0, $fp, 1336
	ldx.w	$a1, $a0, $s4
	ld.d	$a0, $fp, 1600
	ld.d	$a2, $fp, 1608
	sll.w	$s5, $a1, $a7
	beq	$a0, $a2, .LBB36_95
# %bb.94:                               #   in Loop: Header=BB36_44 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1600
	b	.LBB36_101
.LBB36_95:                              #   in Loop: Header=BB36_44 Depth=1
	ld.d	$s1, $fp, 1592
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB36_245
# %bb.96:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i304
                                        #   in Loop: Header=BB36_44 Depth=1
	move	$s6, $s3
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s3, .LBB36_98
# %bb.97:                               #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB36_98:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i306
                                        #   in Loop: Header=BB36_44 Depth=1
	beqz	$s1, .LBB36_100
# %bb.99:                               #   in Loop: Header=BB36_44 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_100:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i308
                                        #   in Loop: Header=BB36_44 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1592
	st.d	$a0, $fp, 1600
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $fp, 1608
	move	$s3, $s6
.LBB36_101:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit309
                                        #   in Loop: Header=BB36_44 Depth=1
	addi.d	$a0, $s3, 2
	b	.LBB36_43
.LBB36_102:
	move	$a0, $zero
.LBB36_103:                             # %._crit_edge
	ld.d	$a1, $fp, 1928
	ld.d	$a2, $fp, 1936
	st.w	$a0, $fp, 1560
	beq	$a2, $a1, .LBB36_105
# %bb.104:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i230
	st.d	$a1, $fp, 1936
.LBB36_105:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit231
	ld.d	$a0, $fp, 1952
	ld.d	$a1, $fp, 1960
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB36_107
# %bb.106:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i233
	st.d	$a0, $fp, 1960
.LBB36_107:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit234
	ld.d	$a0, $fp, 1976
	ld.d	$a1, $fp, 1984
	beq	$a1, $a0, .LBB36_109
# %bb.108:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i236
	st.d	$a0, $fp, 1984
.LBB36_109:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit237
	ldptr.d	$a1, $fp, 2144
	ldptr.d	$a0, $fp, 2152
	beq	$a0, $a1, .LBB36_111
# %bb.110:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i239
	stptr.d	$a1, $fp, 2152
.LBB36_111:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit240
	ldptr.d	$a2, $fp, 2168
	ldptr.d	$a0, $fp, 2176
	beq	$a0, $a2, .LBB36_113
# %bb.112:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i242
	stptr.d	$a2, $fp, 2176
.LBB36_113:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit243
	ldptr.d	$a0, $fp, 2192
	ldptr.d	$a3, $fp, 2200
	beq	$a3, $a0, .LBB36_115
# %bb.114:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i245
	stptr.d	$a0, $fp, 2200
.LBB36_115:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit246
	ldptr.d	$a0, $fp, 2216
	ldptr.d	$a3, $fp, 2224
	addi.d	$s0, $fp, 2047
	beq	$a3, $a0, .LBB36_117
# %bb.116:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i248
	stptr.d	$a0, $fp, 2224
.LBB36_117:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit249
	ld.wu	$a3, $fp, 1120
	addi.d	$a0, $s0, 97
	addi.d	$a4, $a3, 1
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
	and	$a3, $a4, $a3
	st.w	$s2, $sp, 148
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$a3, .LBB36_119
# %bb.118:
	move	$a4, $zero
	move	$a1, $a2
	b	.LBB36_120
.LBB36_119:
	addi.w	$a2, $a4, 0
	addi.d	$a3, $sp, 148
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	ldptr.d	$a1, $fp, 2176
	ldptr.d	$a2, $fp, 2168
	addi.w	$a4, $a0, 1
.LBB36_120:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit252
	addi.d	$a0, $s0, 121
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s1, $sp, 148
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB36_122
# %bb.121:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 148
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	addi.w	$a4, $a0, 1
	b	.LBB36_125
.LBB36_122:
	bgeu	$a4, $a3, .LBB36_125
# %bb.123:
	alsl.d	$a2, $a4, $a2, 2
	beq	$a1, $a2, .LBB36_125
# %bb.124:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i254
	stptr.d	$a2, $fp, 2176
.LBB36_125:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit255
	ldptr.d	$a1, $fp, 2200
	ldptr.d	$a2, $fp, 2192
	addi.d	$a0, $s0, 145
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 148
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB36_127
# %bb.126:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 148
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	addi.w	$a4, $a0, 1
	b	.LBB36_130
.LBB36_127:
	bgeu	$a4, $a3, .LBB36_130
# %bb.128:
	alsl.d	$a2, $a4, $a2, 2
	beq	$a1, $a2, .LBB36_130
# %bb.129:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i257
	stptr.d	$a2, $fp, 2200
.LBB36_130:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit258
	ldptr.d	$a1, $fp, 2224
	ldptr.d	$a2, $fp, 2216
	addi.d	$a0, $s0, 169
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s1, $sp, 148
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB36_132
# %bb.131:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 148
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	b	.LBB36_135
.LBB36_132:
	bgeu	$a4, $a3, .LBB36_135
# %bb.133:
	alsl.d	$a0, $a4, $a2, 2
	beq	$a1, $a0, .LBB36_135
# %bb.134:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i260
	stptr.d	$a0, $fp, 2224
.LBB36_135:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit261
	ldptr.d	$a0, $fp, 2240
	ldptr.d	$a1, $fp, 2248
	beq	$a1, $a0, .LBB36_137
# %bb.136:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i263
	stptr.d	$a0, $fp, 2248
.LBB36_137:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit264
	ld.wu	$a0, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	addi.d	$s1, $s0, 193
	bnez	$a1, .LBB36_139
# %bb.138:
	addi.w	$a1, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB36_139:                             # %_ZNSt6vectorIiSaIiEE6resizeEm.exit267
	ldptr.d	$a0, $fp, 2264
	ldptr.d	$a1, $fp, 2272
	beq	$a1, $a0, .LBB36_141
# %bb.140:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i269
	stptr.d	$a0, $fp, 2272
.LBB36_141:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit270
	ld.wu	$a0, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	addi.d	$s0, $s0, 217
	bnez	$a1, .LBB36_143
# %bb.142:
	addi.w	$a1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB36_143:                             # %_ZNSt6vectorIiSaIiEE6resizeEm.exit273
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 1160
	ori	$a1, $zero, 1
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB36_205
# %bb.144:                              # %.lr.ph409
	move	$s7, $zero
	move	$s8, $zero
	move	$s2, $zero
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB36_147
	.p2align	4, , 16
.LBB36_145:                             #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s2
.LBB36_146:                             #   in Loop: Header=BB36_147 Depth=1
	ld.w	$a1, $fp, 1160
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 4
	move	$s2, $a0
	bge	$s8, $a1, .LBB36_206
.LBB36_147:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 1392
	ldx.wu	$a0, $a0, $s7
	beq	$s8, $a0, .LBB36_145
# %bb.148:                              #   in Loop: Header=BB36_147 Depth=1
	ld.d	$s5, $fp, 1352
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$s1, $a0, 2
	ldx.w	$a1, $s5, $s1
	ldx.w	$a2, $s5, $s7
	ld.d	$a0, $fp, 1984
	ld.d	$a3, $fp, 1992
	slt	$a7, $a1, $a2
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
	beq	$a0, $a3, .LBB36_150
# %bb.149:                              #   in Loop: Header=BB36_147 Depth=1
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1984
	b	.LBB36_156
.LBB36_150:                             #   in Loop: Header=BB36_147 Depth=1
	ld.d	$s4, $fp, 1976
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB36_245
# %bb.151:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i311
                                        #   in Loop: Header=BB36_147 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$s0, $a0, $s5, 2
	srai.d	$a0, $s3, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	add.d	$a1, $s5, $s7
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s0, $a2
	or	$a1, $a1, $a2
	ld.w	$a1, $a1, 0
	move	$s5, $a0
	stx.w	$a1, $a0, $s3
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB36_153
# %bb.152:                              #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB36_153:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i313
                                        #   in Loop: Header=BB36_147 Depth=1
	beqz	$s4, .LBB36_155
# %bb.154:                              #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_155:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i315
                                        #   in Loop: Header=BB36_147 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 1976
	st.d	$a0, $fp, 1984
	alsl.d	$a0, $s6, $s5, 2
	st.d	$a0, $fp, 1992
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
.LBB36_156:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit316
                                        #   in Loop: Header=BB36_147 Depth=1
	ld.d	$a0, $fp, 1336
	ldx.w	$a1, $a0, $s1
	ld.d	$a0, $fp, 1960
	ld.d	$a2, $fp, 1968
	sll.w	$s0, $a1, $a7
	beq	$a0, $a2, .LBB36_158
# %bb.157:                              #   in Loop: Header=BB36_147 Depth=1
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1960
	b	.LBB36_164
.LBB36_158:                             #   in Loop: Header=BB36_147 Depth=1
	ld.d	$s4, $fp, 1952
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB36_245
# %bb.159:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i318
                                        #   in Loop: Header=BB36_147 Depth=1
	srai.d	$a0, $s3, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s0, $a0, $s3
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB36_161
# %bb.160:                              #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB36_161:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i320
                                        #   in Loop: Header=BB36_147 Depth=1
	beqz	$s4, .LBB36_163
# %bb.162:                              #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_163:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i322
                                        #   in Loop: Header=BB36_147 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 1952
	st.d	$a0, $fp, 1960
	alsl.d	$a0, $s6, $s5, 2
	st.d	$a0, $fp, 1968
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
.LBB36_164:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit323
                                        #   in Loop: Header=BB36_147 Depth=1
	ld.d	$a0, $fp, 1352
	ldx.w	$a2, $a0, $s1
	ldx.w	$a0, $a0, $s7
	ld.d	$a1, $fp, 1328
	bge	$a2, $a0, .LBB36_168
# %bb.165:                              #   in Loop: Header=BB36_147 Depth=1
	ldx.wu	$a3, $a1, $s7
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a4, 32, 31
	ld.d	$a0, $fp, 1936
	ld.d	$a2, $fp, 1944
	and	$a3, $a3, $a4
	addi.w	$a3, $a3, 0
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB36_169
# %bb.166:                              #   in Loop: Header=BB36_147 Depth=1
	ldx.w	$a1, $a1, $s1
	sll.w	$a1, $a1, $a7
	addi.d	$s0, $a1, 1
	bne	$a0, $a2, .LBB36_170
# %bb.167:                              #   in Loop: Header=BB36_147 Depth=1
	ld.d	$s4, $fp, 1928
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bne	$s3, $a0, .LBB36_172
	b	.LBB36_245
	.p2align	4, , 16
.LBB36_168:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit323._crit_edge
                                        #   in Loop: Header=BB36_147 Depth=1
	ld.d	$a0, $fp, 1936
	ld.d	$a2, $fp, 1944
.LBB36_169:                             #   in Loop: Header=BB36_147 Depth=1
	ldx.w	$a1, $a1, $s1
	sll.w	$s0, $a1, $a7
	beq	$a0, $a2, .LBB36_171
.LBB36_170:                             #   in Loop: Header=BB36_147 Depth=1
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1936
	b	.LBB36_177
.LBB36_171:                             #   in Loop: Header=BB36_147 Depth=1
	ld.d	$s4, $fp, 1928
	sub.d	$s3, $a2, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB36_245
.LBB36_172:                             # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i332
                                        #   in Loop: Header=BB36_147 Depth=1
	srai.d	$a0, $s3, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s0, $a0, $s3
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB36_174
# %bb.173:                              #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB36_174:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i334
                                        #   in Loop: Header=BB36_147 Depth=1
	beqz	$s4, .LBB36_176
# %bb.175:                              #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_176:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i336
                                        #   in Loop: Header=BB36_147 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 1928
	st.d	$a0, $fp, 1936
	alsl.d	$a0, $s6, $s5, 2
	st.d	$a0, $fp, 1944
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
.LBB36_177:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit330
                                        #   in Loop: Header=BB36_147 Depth=1
	ld.d	$a1, $fp, 1352
	ldx.w	$a3, $a1, $s1
	ldx.w	$a2, $a1, $s7
	addi.d	$a0, $s2, 1
	bge	$a2, $a3, .LBB36_146
# %bb.178:                              #   in Loop: Header=BB36_147 Depth=1
	ld.d	$a3, $fp, 1328
	ldx.bu	$a3, $a3, $s1
	andi	$a3, $a3, 1
	bnez	$a3, .LBB36_146
# %bb.179:                              #   in Loop: Header=BB36_147 Depth=1
	ld.d	$a3, $fp, 1376
	ldx.w	$a3, $a3, $s1
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	beq	$a3, $a4, .LBB36_146
# %bb.180:                              #   in Loop: Header=BB36_147 Depth=1
	slli.d	$s1, $a3, 2
	ldx.w	$a5, $a1, $s1
	ld.d	$a4, $fp, 1984
	ld.d	$a6, $fp, 1992
	slt	$a0, $a5, $a2
	beq	$a4, $a6, .LBB36_182
# %bb.181:                              #   in Loop: Header=BB36_147 Depth=1
	masknez	$a1, $a5, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.w	$a0, $a4, 0
	addi.d	$a0, $a4, 4
	st.d	$a0, $fp, 1984
	b	.LBB36_188
.LBB36_182:                             #   in Loop: Header=BB36_147 Depth=1
	ld.d	$s4, $fp, 1976
	sub.d	$s3, $a4, $s4
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$s3, $a2, .LBB36_245
# %bb.183:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i339
                                        #   in Loop: Header=BB36_147 Depth=1
	add.d	$a2, $a1, $s7
	alsl.d	$a1, $a3, $a1, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	srai.d	$a0, $s3, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	move	$s5, $a0
	stx.w	$a1, $a0, $s3
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB36_185
# %bb.184:                              #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB36_185:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i341
                                        #   in Loop: Header=BB36_147 Depth=1
	beqz	$s4, .LBB36_187
# %bb.186:                              #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_187:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i343
                                        #   in Loop: Header=BB36_147 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 1976
	st.d	$a0, $fp, 1984
	alsl.d	$a0, $s6, $s5, 2
	st.d	$a0, $fp, 1992
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
.LBB36_188:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit344
                                        #   in Loop: Header=BB36_147 Depth=1
	ld.d	$a0, $fp, 1336
	ldx.w	$a1, $a0, $s1
	ld.d	$a0, $fp, 1960
	ld.d	$a2, $fp, 1968
	sll.w	$s0, $a1, $a7
	beq	$a0, $a2, .LBB36_190
# %bb.189:                              #   in Loop: Header=BB36_147 Depth=1
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1960
	b	.LBB36_196
.LBB36_190:                             #   in Loop: Header=BB36_147 Depth=1
	ld.d	$s4, $fp, 1952
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB36_245
# %bb.191:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i346
                                        #   in Loop: Header=BB36_147 Depth=1
	srai.d	$a0, $s3, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s0, $a0, $s3
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB36_193
# %bb.192:                              #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB36_193:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i348
                                        #   in Loop: Header=BB36_147 Depth=1
	beqz	$s4, .LBB36_195
# %bb.194:                              #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_195:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i350
                                        #   in Loop: Header=BB36_147 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 1952
	st.d	$a0, $fp, 1960
	alsl.d	$a0, $s6, $s5, 2
	st.d	$a0, $fp, 1968
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
.LBB36_196:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit351
                                        #   in Loop: Header=BB36_147 Depth=1
	ld.d	$a0, $fp, 1328
	ldx.w	$a1, $a0, $s1
	ld.d	$a0, $fp, 1936
	ld.d	$a2, $fp, 1944
	sll.w	$s1, $a1, $a7
	beq	$a0, $a2, .LBB36_198
# %bb.197:                              #   in Loop: Header=BB36_147 Depth=1
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1936
	b	.LBB36_204
.LBB36_198:                             #   in Loop: Header=BB36_147 Depth=1
	ld.d	$s4, $fp, 1928
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB36_245
# %bb.199:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i353
                                        #   in Loop: Header=BB36_147 Depth=1
	move	$s6, $s2
	srai.d	$a0, $s3, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s2, .LBB36_201
# %bb.200:                              #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB36_201:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i355
                                        #   in Loop: Header=BB36_147 Depth=1
	beqz	$s4, .LBB36_203
# %bb.202:                              #   in Loop: Header=BB36_147 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_203:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i357
                                        #   in Loop: Header=BB36_147 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 1928
	st.d	$a0, $fp, 1936
	alsl.d	$a0, $s0, $s5, 2
	st.d	$a0, $fp, 1944
	move	$s2, $s6
.LBB36_204:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit358
                                        #   in Loop: Header=BB36_147 Depth=1
	addi.d	$a0, $s2, 2
	b	.LBB36_146
.LBB36_205:
	move	$a0, $zero
.LBB36_206:                             # %._crit_edge410
	ld.w	$a1, $fp, 1560
	st.w	$a0, $fp, 1564
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 96                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB36_222
# %bb.207:                              # %.lr.ph414
	ld.d	$a0, $fp, 1616
	ld.d	$a1, $fp, 1568
	ld.d	$a2, $fp, 1784
	ld.d	$a3, $fp, 1808
	ld.d	$a4, $fp, 1592
	ld.d	$a5, $fp, 1832
	ld.d	$a7, $fp, 1856
	move	$t0, $zero
	b	.LBB36_209
	.p2align	4, , 16
.LBB36_208:                             #   in Loop: Header=BB36_209 Depth=1
	ld.w	$a6, $fp, 1560
	addi.d	$t0, $t0, 1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 4
	bge	$t0, $a6, .LBB36_217
.LBB36_209:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 0
	ld.w	$t2, $a1, 0
	slli.d	$t1, $a6, 2
	ldx.w	$t3, $a2, $t1
	bge	$t2, $t3, .LBB36_213
# %bb.210:                              #   in Loop: Header=BB36_209 Depth=1
	alsl.d	$t3, $a6, $a2, 2
	st.w	$t2, $t3, 0
	ldx.w	$t3, $a3, $t1
	blt	$t3, $t2, .LBB36_214
.LBB36_211:                             #   in Loop: Header=BB36_209 Depth=1
	ld.w	$t2, $a4, 0
	ldx.w	$t3, $a5, $t1
	bge	$t2, $t3, .LBB36_215
.LBB36_212:                             #   in Loop: Header=BB36_209 Depth=1
	alsl.d	$t3, $a6, $a5, 2
	st.w	$t2, $t3, 0
	ldx.w	$t1, $a7, $t1
	bge	$t1, $t2, .LBB36_208
	b	.LBB36_216
	.p2align	4, , 16
.LBB36_213:                             #   in Loop: Header=BB36_209 Depth=1
	ldx.w	$t3, $a3, $t1
	bge	$t3, $t2, .LBB36_211
.LBB36_214:                             #   in Loop: Header=BB36_209 Depth=1
	alsl.d	$t3, $a6, $a3, 2
	st.w	$t2, $t3, 0
	ld.w	$t2, $a4, 0
	ldx.w	$t3, $a5, $t1
	blt	$t2, $t3, .LBB36_212
.LBB36_215:                             #   in Loop: Header=BB36_209 Depth=1
	ldx.w	$t1, $a7, $t1
	bge	$t1, $t2, .LBB36_208
.LBB36_216:                             #   in Loop: Header=BB36_209 Depth=1
	alsl.d	$a6, $a6, $a7, 2
	st.w	$t2, $a6, 0
	b	.LBB36_208
.LBB36_217:                             # %.preheader383
	ori	$a0, $zero, 1
	blt	$a6, $a0, .LBB36_222
# %bb.218:                              # %.lr.ph416
	ld.d	$a0, $fp, 1616
	ld.d	$a1, $fp, 1808
	ld.d	$a2, $fp, 1784
	ld.d	$a3, $fp, 1568
	ld.d	$a4, $fp, 1832
	ld.d	$a5, $fp, 1592
	move	$a7, $zero
	b	.LBB36_220
	.p2align	4, , 16
.LBB36_219:                             #   in Loop: Header=BB36_220 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 4
	bge	$a7, $a6, .LBB36_222
.LBB36_220:                             # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a0, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t2, $a1, $t0
	ldx.w	$t1, $a2, $t0
	blt	$t2, $t1, .LBB36_219
# %bb.221:                              #   in Loop: Header=BB36_220 Depth=1
	ld.w	$a6, $a3, 0
	sub.d	$a6, $a6, $t1
	st.w	$a6, $a3, 0
	ldx.w	$a6, $a4, $t0
	ld.w	$t0, $a5, 0
	sub.d	$a6, $t0, $a6
	st.w	$a6, $a5, 0
	ld.w	$a6, $fp, 1560
	b	.LBB36_219
.LBB36_222:                             # %.preheader382
	ld.w	$a0, $fp, 1120
	bltz	$a0, .LBB36_225
# %bb.223:                              # %.lr.ph419
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $t4, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $t5, 0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB36_224:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, 0
	st.w	$a7, $a1, 0
	ld.w	$a7, $a2, 0
	st.w	$a7, $a3, 0
	ld.w	$a7, $a0, 0
	ld.w	$t0, $a4, 0
	sub.d	$a7, $t0, $a7
	st.w	$a7, $a4, 0
	ld.w	$a7, $a2, 0
	ld.w	$t0, $a5, 0
	sub.d	$a7, $t0, $a7
	st.w	$a7, $a5, 0
	st.w	$zero, $a0, 0
	st.w	$zero, $a2, 0
	ld.w	$a7, $fp, 1120
	addi.d	$a6, $a6, 1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	blt	$a6, $a7, .LBB36_224
.LBB36_225:                             # %.preheader381
	ld.w	$a0, $fp, 1564
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB36_241
# %bb.226:                              # %.lr.ph421
	ld.d	$a0, $fp, 1976
	ld.d	$a1, $fp, 1928
	ldptr.d	$a2, $fp, 2144
	ldptr.d	$a3, $fp, 2168
	ld.d	$a4, $fp, 1952
	ldptr.d	$a5, $fp, 2192
	ldptr.d	$a7, $fp, 2216
	move	$t0, $zero
	b	.LBB36_228
	.p2align	4, , 16
.LBB36_227:                             #   in Loop: Header=BB36_228 Depth=1
	ld.w	$a6, $fp, 1564
	addi.d	$t0, $t0, 1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 4
	bge	$t0, $a6, .LBB36_236
.LBB36_228:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 0
	ld.w	$t2, $a1, 0
	slli.d	$t1, $a6, 2
	ldx.w	$t3, $a2, $t1
	bge	$t2, $t3, .LBB36_232
# %bb.229:                              #   in Loop: Header=BB36_228 Depth=1
	alsl.d	$t3, $a6, $a2, 2
	st.w	$t2, $t3, 0
	ldx.w	$t3, $a3, $t1
	blt	$t3, $t2, .LBB36_233
.LBB36_230:                             #   in Loop: Header=BB36_228 Depth=1
	ld.w	$t2, $a4, 0
	ldx.w	$t3, $a5, $t1
	bge	$t2, $t3, .LBB36_234
.LBB36_231:                             #   in Loop: Header=BB36_228 Depth=1
	alsl.d	$t3, $a6, $a5, 2
	st.w	$t2, $t3, 0
	ldx.w	$t1, $a7, $t1
	bge	$t1, $t2, .LBB36_227
	b	.LBB36_235
	.p2align	4, , 16
.LBB36_232:                             #   in Loop: Header=BB36_228 Depth=1
	ldx.w	$t3, $a3, $t1
	bge	$t3, $t2, .LBB36_230
.LBB36_233:                             #   in Loop: Header=BB36_228 Depth=1
	alsl.d	$t3, $a6, $a3, 2
	st.w	$t2, $t3, 0
	ld.w	$t2, $a4, 0
	ldx.w	$t3, $a5, $t1
	blt	$t2, $t3, .LBB36_231
.LBB36_234:                             #   in Loop: Header=BB36_228 Depth=1
	ldx.w	$t1, $a7, $t1
	bge	$t1, $t2, .LBB36_227
.LBB36_235:                             #   in Loop: Header=BB36_228 Depth=1
	alsl.d	$a6, $a6, $a7, 2
	st.w	$t2, $a6, 0
	b	.LBB36_227
.LBB36_236:                             # %.preheader380
	ori	$a0, $zero, 1
	blt	$a6, $a0, .LBB36_241
# %bb.237:                              # %.lr.ph423
	ld.d	$a0, $fp, 1976
	ldptr.d	$a1, $fp, 2168
	ldptr.d	$a2, $fp, 2144
	ld.d	$a3, $fp, 1928
	ldptr.d	$a4, $fp, 2192
	ld.d	$a5, $fp, 1952
	move	$a7, $zero
	b	.LBB36_239
	.p2align	4, , 16
.LBB36_238:                             #   in Loop: Header=BB36_239 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 4
	bge	$a7, $a6, .LBB36_241
.LBB36_239:                             # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a0, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t2, $a1, $t0
	ldx.w	$t1, $a2, $t0
	blt	$t2, $t1, .LBB36_238
# %bb.240:                              #   in Loop: Header=BB36_239 Depth=1
	ld.w	$a6, $a3, 0
	sub.d	$a6, $a6, $t1
	st.w	$a6, $a3, 0
	ldx.w	$a6, $a4, $t0
	ld.w	$t0, $a5, 0
	sub.d	$a6, $t0, $a6
	st.w	$a6, $a5, 0
	ld.w	$a6, $fp, 1564
	b	.LBB36_238
.LBB36_241:                             # %.preheader
	ld.w	$a0, $fp, 1120
	bltz	$a0, .LBB36_244
# %bb.242:                              # %.lr.ph426
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $t6, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $t7, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB36_243:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, 0
	st.w	$a7, $a1, 0
	ld.w	$a7, $a2, 0
	st.w	$a7, $a3, 0
	ld.w	$a7, $a0, 0
	ld.w	$t0, $a4, 0
	sub.d	$a7, $t0, $a7
	st.w	$a7, $a4, 0
	ld.w	$a7, $a2, 0
	ld.w	$t0, $a5, 0
	sub.d	$a7, $t0, $a7
	st.w	$a7, $a5, 0
	st.w	$zero, $a0, 0
	st.w	$zero, $a2, 0
	ld.w	$a7, $fp, 1120
	addi.d	$a6, $a6, 1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	blt	$a6, $a7, .LBB36_243
.LBB36_244:                             # %._crit_edge427
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
.LBB36_245:
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	_ZN4Mesh14calc_face_listEv, .Lfunc_end36-_ZN4Mesh14calc_face_listEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh19calc_face_list_wmapEv # -- Begin function _ZN4Mesh19calc_face_list_wmapEv
	.p2align	5
	.type	_ZN4Mesh19calc_face_list_wmapEv,@function
_ZN4Mesh19calc_face_list_wmapEv:        # @_ZN4Mesh19calc_face_list_wmapEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -272
	.cfi_def_cfa_offset 272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
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
	ld.d	$a0, $a0, 1640
	ld.d	$a1, $fp, 1648
	beq	$a1, $a0, .LBB37_2
# %bb.1:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a0, $fp, 1648
.LBB37_2:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit
	ld.d	$a0, $fp, 1664
	ld.d	$a1, $fp, 1672
	beq	$a1, $a0, .LBB37_4
# %bb.3:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i131
	st.d	$a0, $fp, 1672
.LBB37_4:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit132
	ld.d	$a0, $fp, 1568
	ld.d	$a1, $fp, 1576
	beq	$a1, $a0, .LBB37_6
# %bb.5:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i134
	st.d	$a0, $fp, 1576
.LBB37_6:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit135
	ld.d	$a0, $fp, 1592
	ld.d	$a1, $fp, 1600
	beq	$a1, $a0, .LBB37_8
# %bb.7:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i137
	st.d	$a0, $fp, 1600
.LBB37_8:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit138
	ld.d	$a0, $fp, 1616
	ld.d	$a1, $fp, 1624
	beq	$a1, $a0, .LBB37_10
# %bb.9:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i140
	st.d	$a0, $fp, 1624
.LBB37_10:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit141
	ld.d	$a1, $fp, 1784
	ld.d	$a0, $fp, 1792
	beq	$a0, $a1, .LBB37_12
# %bb.11:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i143
	st.d	$a1, $fp, 1792
.LBB37_12:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit144
	ld.d	$a2, $fp, 1808
	ld.d	$a0, $fp, 1816
	beq	$a0, $a2, .LBB37_14
# %bb.13:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i146
	st.d	$a2, $fp, 1816
.LBB37_14:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit147
	ld.d	$a0, $fp, 1832
	ld.d	$a3, $fp, 1840
	beq	$a3, $a0, .LBB37_16
# %bb.15:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i149
	st.d	$a0, $fp, 1840
.LBB37_16:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit150
	ld.d	$a0, $fp, 1856
	ld.d	$a3, $fp, 1864
	beq	$a3, $a0, .LBB37_18
# %bb.17:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i152
	st.d	$a0, $fp, 1864
.LBB37_18:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit153
	ld.wu	$a3, $fp, 1120
	addi.d	$a0, $fp, 1784
	addi.d	$a5, $a3, 1
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
	and	$a3, $a5, $a3
	lu12i.w	$a4, 2441
	ori	$s3, $a4, 1663
	st.w	$s3, $sp, 180
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	beqz	$a3, .LBB37_20
# %bb.19:
	move	$a4, $zero
	move	$a1, $a2
	b	.LBB37_21
.LBB37_20:
	addi.w	$a2, $a5, 0
	addi.d	$a3, $sp, 180
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	ld.d	$a1, $fp, 1816
	ld.d	$a2, $fp, 1808
	addi.w	$a4, $a0, 1
.LBB37_21:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
	addi.d	$a0, $fp, 1808
	lu12i.w	$a3, -2442
	ori	$s2, $a3, 2433
	lu32i.d	$s2, 0
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 180
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB37_23
# %bb.22:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 180
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	addi.w	$a4, $a0, 1
	b	.LBB37_26
.LBB37_23:
	bgeu	$a4, $a3, .LBB37_26
# %bb.24:
	alsl.d	$a2, $a4, $a2, 2
	beq	$a1, $a2, .LBB37_26
# %bb.25:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i157
	st.d	$a2, $fp, 1816
.LBB37_26:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit158
	ld.d	$a1, $fp, 1840
	ld.d	$a2, $fp, 1832
	addi.d	$a0, $fp, 1832
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s3, $sp, 180
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB37_28
# %bb.27:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 180
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	addi.w	$a4, $a0, 1
	b	.LBB37_31
.LBB37_28:
	bgeu	$a4, $a3, .LBB37_31
# %bb.29:
	alsl.d	$a2, $a4, $a2, 2
	beq	$a1, $a2, .LBB37_31
# %bb.30:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i160
	st.d	$a2, $fp, 1840
.LBB37_31:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit161
	ld.d	$a1, $fp, 1864
	ld.d	$a2, $fp, 1856
	addi.d	$a0, $fp, 1856
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 180
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB37_33
# %bb.32:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 180
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	b	.LBB37_36
.LBB37_33:
	bgeu	$a4, $a3, .LBB37_36
# %bb.34:
	alsl.d	$a0, $a4, $a2, 2
	beq	$a1, $a0, .LBB37_36
# %bb.35:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i163
	st.d	$a0, $fp, 1864
.LBB37_36:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit164
	ld.d	$a0, $fp, 1880
	ld.d	$a1, $fp, 1888
	beq	$a1, $a0, .LBB37_38
# %bb.37:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i166
	st.d	$a0, $fp, 1888
.LBB37_38:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit167
	ld.wu	$a0, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	addi.d	$s0, $fp, 1880
	bnez	$a1, .LBB37_40
# %bb.39:
	addi.w	$a1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB37_40:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $fp, 1904
	ld.d	$a1, $fp, 1912
	beq	$a1, $a0, .LBB37_42
# %bb.41:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i171
	st.d	$a0, $fp, 1912
.LBB37_42:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit172
	ld.wu	$a0, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	addi.d	$s1, $fp, 1904
	bnez	$a1, .LBB37_44
# %bb.43:
	addi.w	$a1, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB37_44:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit175
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 1160
	ori	$a2, $zero, 1
	addi.w	$a1, $zero, -4
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	blt	$a0, $a2, .LBB37_137
# %bb.45:                               # %.lr.ph
	move	$s7, $zero
	move	$a2, $zero
	move	$s5, $zero
	move	$a3, $zero
	lu52i.d	$a0, $a1, 2047
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB37_48
	.p2align	4, , 16
.LBB37_46:                              #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $a3
.LBB37_47:                              #   in Loop: Header=BB37_48 Depth=1
	ld.w	$a1, $fp, 1160
	addi.d	$s5, $s5, 1
	addi.d	$a2, $a2, 1
	addi.d	$s7, $s7, 4
	move	$a3, $a0
	bge	$s5, $a1, .LBB37_138
.LBB37_48:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 1376
	ldx.wu	$s3, $a0, $s7
	beq	$s5, $s3, .LBB37_46
# %bb.49:                               #   in Loop: Header=BB37_48 Depth=1
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 1352
	addi.w	$a0, $s3, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	slli.d	$s6, $a0, 2
	ldx.w	$a0, $a1, $s6
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 1648
	ld.d	$a2, $fp, 1656
	ldx.w	$a1, $a1, $s7
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	beq	$a0, $a2, .LBB37_52
# %bb.50:                               #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1648
	ld.d	$a0, $fp, 1672
	ld.d	$a1, $fp, 1680
	beq	$a0, $a1, .LBB37_58
.LBB37_51:                              #   in Loop: Header=BB37_48 Depth=1
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1672
	b	.LBB37_64
.LBB37_52:                              #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s1, $fp, 1640
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB37_315
# %bb.53:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB37_48 Depth=1
	srai.d	$a0, $s0, 2
	ori	$s8, $zero, 1
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	stx.w	$a0, $s2, $s0
	blt	$s0, $s8, .LBB37_55
# %bb.54:                               #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_55:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB37_48 Depth=1
	beqz	$s1, .LBB37_57
# %bb.56:                               #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_57:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB37_48 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1640
	st.d	$a0, $fp, 1648
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $fp, 1656
	ld.d	$a0, $fp, 1672
	ld.d	$a1, $fp, 1680
	bne	$a0, $a1, .LBB37_51
.LBB37_58:                              #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s1, $fp, 1664
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB37_315
# %bb.59:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i228
                                        #   in Loop: Header=BB37_48 Depth=1
	srai.d	$a0, $s0, 2
	ori	$s8, $zero, 1
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s8, .LBB37_61
# %bb.60:                               #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_61:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i230
                                        #   in Loop: Header=BB37_48 Depth=1
	beqz	$s1, .LBB37_63
# %bb.62:                               #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_63:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i232
                                        #   in Loop: Header=BB37_48 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1664
	st.d	$a0, $fp, 1672
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $fp, 1680
.LBB37_64:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit233
                                        #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s2, $fp, 1352
	ldx.w	$a0, $s2, $s7
	ld.d	$a1, $fp, 1624
	ld.d	$a3, $fp, 1632
	ldx.w	$a2, $s2, $s6
	beq	$a1, $a3, .LBB37_66
# %bb.65:                               #   in Loop: Header=BB37_48 Depth=1
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $fp, 1624
	b	.LBB37_72
.LBB37_66:                              #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s1, $fp, 1616
	sub.d	$s0, $a1, $s1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a1, .LBB37_315
# %bb.67:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i235
                                        #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s2, 2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	slt	$s4, $a2, $a0
	srai.d	$a0, $s0, 2
	ori	$s8, $zero, 1
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	add.d	$a1, $s2, $s7
	maskeqz	$a1, $a1, $s4
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	masknez	$a2, $a2, $s4
	or	$a1, $a1, $a2
	ld.w	$a1, $a1, 0
	move	$s2, $a0
	stx.w	$a1, $a0, $s0
	blt	$s0, $s8, .LBB37_69
# %bb.68:                               #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_69:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i237
                                        #   in Loop: Header=BB37_48 Depth=1
	beqz	$s1, .LBB37_71
# %bb.70:                               #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_71:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i239
                                        #   in Loop: Header=BB37_48 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1616
	st.d	$a0, $fp, 1624
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $fp, 1632
.LBB37_72:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit240
                                        #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a0, $fp, 1328
	ldx.w	$a1, $a0, $s6
	ld.d	$a0, $fp, 1576
	ld.d	$a2, $fp, 1584
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	slt	$s8, $a3, $a4
	sll.w	$s4, $a1, $s8
	beq	$a0, $a2, .LBB37_74
# %bb.73:                               #   in Loop: Header=BB37_48 Depth=1
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1576
	b	.LBB37_80
.LBB37_74:                              #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s1, $fp, 1568
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB37_315
# %bb.75:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB37_48 Depth=1
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s4, $a0, $s0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB37_77
# %bb.76:                               #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_77:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB37_48 Depth=1
	beqz	$s1, .LBB37_79
# %bb.78:                               #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_79:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB37_48 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1568
	st.d	$a0, $fp, 1576
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $fp, 1584
.LBB37_80:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
                                        #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a0, $fp, 1352
	ldx.w	$a2, $a0, $s6
	ldx.w	$a0, $a0, $s7
	ld.d	$a1, $fp, 1336
	bge	$a2, $a0, .LBB37_84
# %bb.81:                               #   in Loop: Header=BB37_48 Depth=1
	ldx.wu	$a3, $a1, $s7
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a4, 32, 31
	ld.d	$a0, $fp, 1600
	ld.d	$a2, $fp, 1608
	and	$a3, $a3, $a4
	addi.w	$a3, $a3, 0
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB37_85
# %bb.82:                               #   in Loop: Header=BB37_48 Depth=1
	ldx.w	$a1, $a1, $s6
	sll.w	$a1, $a1, $s8
	addi.d	$s4, $a1, 1
	bne	$a0, $a2, .LBB37_86
# %bb.83:                               #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s1, $fp, 1592
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bne	$s0, $a0, .LBB37_88
	b	.LBB37_315
	.p2align	4, , 16
.LBB37_84:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge
                                        #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a0, $fp, 1600
	ld.d	$a2, $fp, 1608
.LBB37_85:                              #   in Loop: Header=BB37_48 Depth=1
	ldx.w	$a1, $a1, $s6
	sll.w	$s4, $a1, $s8
	beq	$a0, $a2, .LBB37_87
.LBB37_86:                              #   in Loop: Header=BB37_48 Depth=1
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1600
	b	.LBB37_93
.LBB37_87:                              #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s1, $fp, 1592
	sub.d	$s0, $a2, $s1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB37_315
.LBB37_88:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i250
                                        #   in Loop: Header=BB37_48 Depth=1
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s4, $a0, $s0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB37_90
# %bb.89:                               #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_90:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i252
                                        #   in Loop: Header=BB37_48 Depth=1
	beqz	$s1, .LBB37_92
# %bb.91:                               #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_92:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i254
                                        #   in Loop: Header=BB37_48 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1592
	st.d	$a0, $fp, 1600
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $fp, 1608
.LBB37_93:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit248
                                        #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a0, $fp, 1352
	ldx.w	$a1, $a0, $s6
	ldx.w	$a2, $a0, $s7
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bge	$a2, $a1, .LBB37_99
# %bb.94:                               #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a1, $fp, 1336
	ldx.bu	$a1, $a1, $s6
	andi	$a1, $a1, 1
	bnez	$a1, .LBB37_99
# %bb.95:                               #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a1, $fp, 1392
	ldx.w	$s3, $a1, $s6
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beq	$s3, $a1, .LBB37_47
# %bb.96:                               #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a0, $fp, 1648
	ld.d	$a1, $fp, 1656
	beq	$a0, $a1, .LBB37_100
# %bb.97:                               #   in Loop: Header=BB37_48 Depth=1
	st.w	$a2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1648
	ld.d	$a0, $fp, 1672
	ld.d	$a1, $fp, 1680
	beq	$a0, $a1, .LBB37_106
.LBB37_98:                              #   in Loop: Header=BB37_48 Depth=1
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1672
	b	.LBB37_112
	.p2align	4, , 16
.LBB37_99:                              #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	b	.LBB37_47
.LBB37_100:                             #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s1, $fp, 1640
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB37_315
# %bb.101:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i257
                                        #   in Loop: Header=BB37_48 Depth=1
	srai.d	$a0, $s0, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	stx.w	$a0, $s2, $s0
	blt	$s0, $s6, .LBB37_103
# %bb.102:                              #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_103:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i259
                                        #   in Loop: Header=BB37_48 Depth=1
	beqz	$s1, .LBB37_105
# %bb.104:                              #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_105:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i261
                                        #   in Loop: Header=BB37_48 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1640
	st.d	$a0, $fp, 1648
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $fp, 1656
	ld.d	$a0, $fp, 1672
	ld.d	$a1, $fp, 1680
	bne	$a0, $a1, .LBB37_98
.LBB37_106:                             #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s1, $fp, 1664
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB37_315
# %bb.107:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i264
                                        #   in Loop: Header=BB37_48 Depth=1
	srai.d	$a0, $s0, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s6, .LBB37_109
# %bb.108:                              #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_109:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i266
                                        #   in Loop: Header=BB37_48 Depth=1
	beqz	$s1, .LBB37_111
# %bb.110:                              #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_111:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i268
                                        #   in Loop: Header=BB37_48 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1664
	st.d	$a0, $fp, 1672
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $fp, 1680
.LBB37_112:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit269
                                        #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s2, $fp, 1352
	ldx.w	$a0, $s2, $s7
	slli.d	$s6, $s3, 2
	ld.d	$a1, $fp, 1624
	ld.d	$a3, $fp, 1632
	ldx.w	$a2, $s2, $s6
	beq	$a1, $a3, .LBB37_114
# %bb.113:                              #   in Loop: Header=BB37_48 Depth=1
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $fp, 1624
	b	.LBB37_120
.LBB37_114:                             #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s1, $fp, 1616
	sub.d	$s0, $a1, $s1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a1, .LBB37_315
# %bb.115:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i271
                                        #   in Loop: Header=BB37_48 Depth=1
	alsl.d	$a1, $s3, $s2, 2
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	slt	$s4, $a2, $a0
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	add.d	$a1, $s2, $s7
	maskeqz	$a1, $a1, $s4
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	masknez	$a2, $a2, $s4
	or	$a1, $a1, $a2
	ld.w	$a1, $a1, 0
	move	$s2, $a0
	stx.w	$a1, $a0, $s0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB37_117
# %bb.116:                              #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_117:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i273
                                        #   in Loop: Header=BB37_48 Depth=1
	beqz	$s1, .LBB37_119
# %bb.118:                              #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_119:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i275
                                        #   in Loop: Header=BB37_48 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1616
	st.d	$a0, $fp, 1624
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $fp, 1632
.LBB37_120:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit276
                                        #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a0, $fp, 1328
	ldx.w	$a1, $a0, $s6
	ld.d	$a0, $fp, 1576
	ld.d	$a2, $fp, 1584
	sll.w	$s4, $a1, $s8
	beq	$a0, $a2, .LBB37_122
# %bb.121:                              #   in Loop: Header=BB37_48 Depth=1
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1576
	b	.LBB37_128
.LBB37_122:                             #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s1, $fp, 1568
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB37_315
# %bb.123:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i278
                                        #   in Loop: Header=BB37_48 Depth=1
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s4, $a0, $s0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB37_125
# %bb.124:                              #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_125:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i280
                                        #   in Loop: Header=BB37_48 Depth=1
	beqz	$s1, .LBB37_127
# %bb.126:                              #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_127:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i282
                                        #   in Loop: Header=BB37_48 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1568
	st.d	$a0, $fp, 1576
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $fp, 1584
.LBB37_128:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit283
                                        #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a0, $fp, 1336
	ldx.w	$a1, $a0, $s6
	ld.d	$a0, $fp, 1600
	ld.d	$a2, $fp, 1608
	sll.w	$s4, $a1, $s8
	beq	$a0, $a2, .LBB37_130
# %bb.129:                              #   in Loop: Header=BB37_48 Depth=1
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1600
	b	.LBB37_136
.LBB37_130:                             #   in Loop: Header=BB37_48 Depth=1
	ld.d	$s1, $fp, 1592
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB37_315
# %bb.131:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i285
                                        #   in Loop: Header=BB37_48 Depth=1
	srai.d	$a0, $s0, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s4, $a0, $s0
	blt	$s0, $s6, .LBB37_133
# %bb.132:                              #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_133:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i287
                                        #   in Loop: Header=BB37_48 Depth=1
	beqz	$s1, .LBB37_135
# %bb.134:                              #   in Loop: Header=BB37_48 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_135:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i289
                                        #   in Loop: Header=BB37_48 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 1592
	st.d	$a0, $fp, 1600
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $fp, 1608
.LBB37_136:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit290
                                        #   in Loop: Header=BB37_48 Depth=1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	b	.LBB37_47
.LBB37_137:
	move	$a0, $zero
.LBB37_138:                             # %._crit_edge
	ld.d	$a1, $fp, 2000
	ld.d	$a2, $fp, 2008
	st.w	$a0, $fp, 1560
	beq	$a2, $a1, .LBB37_140
# %bb.139:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i177
	st.d	$a1, $fp, 2008
.LBB37_140:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit178
	ld.d	$a0, $fp, 2024
	ld.d	$a1, $fp, 2032
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB37_142
# %bb.141:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i180
	st.d	$a0, $fp, 2032
.LBB37_142:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit181
	ld.d	$a0, $fp, 1928
	ld.d	$a1, $fp, 1936
	beq	$a1, $a0, .LBB37_144
# %bb.143:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i183
	st.d	$a0, $fp, 1936
.LBB37_144:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit184
	ld.d	$a0, $fp, 1952
	ld.d	$a1, $fp, 1960
	beq	$a1, $a0, .LBB37_146
# %bb.145:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i186
	st.d	$a0, $fp, 1960
.LBB37_146:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit187
	ld.d	$a0, $fp, 1976
	ld.d	$a1, $fp, 1984
	beq	$a1, $a0, .LBB37_148
# %bb.147:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i189
	st.d	$a0, $fp, 1984
.LBB37_148:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit190
	ldptr.d	$a1, $fp, 2144
	ldptr.d	$a0, $fp, 2152
	beq	$a0, $a1, .LBB37_150
# %bb.149:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i192
	stptr.d	$a1, $fp, 2152
.LBB37_150:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit193
	ldptr.d	$a2, $fp, 2168
	ldptr.d	$a0, $fp, 2176
	beq	$a0, $a2, .LBB37_152
# %bb.151:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i195
	stptr.d	$a2, $fp, 2176
.LBB37_152:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit196
	ldptr.d	$a0, $fp, 2192
	ldptr.d	$a3, $fp, 2200
	beq	$a3, $a0, .LBB37_154
# %bb.153:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i198
	stptr.d	$a0, $fp, 2200
.LBB37_154:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit199
	ldptr.d	$a0, $fp, 2216
	ldptr.d	$a3, $fp, 2224
	addi.d	$s0, $fp, 2047
	beq	$a3, $a0, .LBB37_156
# %bb.155:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i201
	stptr.d	$a0, $fp, 2224
.LBB37_156:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit202
	ld.wu	$a3, $fp, 1120
	addi.d	$a0, $s0, 97
	addi.d	$a4, $a3, 1
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
	and	$a3, $a4, $a3
	st.w	$s2, $sp, 180
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$a3, .LBB37_158
# %bb.157:
	move	$a4, $zero
	move	$a1, $a2
	b	.LBB37_159
.LBB37_158:
	addi.w	$a2, $a4, 0
	addi.d	$a3, $sp, 180
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	ldptr.d	$a1, $fp, 2176
	ldptr.d	$a2, $fp, 2168
	addi.w	$a4, $a0, 1
.LBB37_159:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit205
	addi.d	$a0, $s0, 121
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s1, $sp, 180
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB37_161
# %bb.160:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 180
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	addi.w	$a4, $a0, 1
	b	.LBB37_164
.LBB37_161:
	bgeu	$a4, $a3, .LBB37_164
# %bb.162:
	alsl.d	$a2, $a4, $a2, 2
	beq	$a1, $a2, .LBB37_164
# %bb.163:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i207
	stptr.d	$a2, $fp, 2176
.LBB37_164:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit208
	ldptr.d	$a1, $fp, 2200
	ldptr.d	$a2, $fp, 2192
	addi.d	$a0, $s0, 145
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 180
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB37_166
# %bb.165:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 180
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	addi.w	$a4, $a0, 1
	b	.LBB37_169
.LBB37_166:
	bgeu	$a4, $a3, .LBB37_169
# %bb.167:
	alsl.d	$a2, $a4, $a2, 2
	beq	$a1, $a2, .LBB37_169
# %bb.168:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i210
	stptr.d	$a2, $fp, 2200
.LBB37_169:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit211
	ldptr.d	$a1, $fp, 2224
	ldptr.d	$a2, $fp, 2216
	addi.d	$a0, $s0, 169
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s1, $sp, 180
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB37_171
# %bb.170:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 180
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	b	.LBB37_174
.LBB37_171:
	bgeu	$a4, $a3, .LBB37_174
# %bb.172:
	alsl.d	$a0, $a4, $a2, 2
	beq	$a1, $a0, .LBB37_174
# %bb.173:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i213
	stptr.d	$a0, $fp, 2224
.LBB37_174:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit214
	ldptr.d	$a0, $fp, 2240
	ldptr.d	$a1, $fp, 2248
	beq	$a1, $a0, .LBB37_176
# %bb.175:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i216
	stptr.d	$a0, $fp, 2248
.LBB37_176:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit217
	ld.wu	$a0, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	addi.d	$s1, $s0, 193
	bnez	$a1, .LBB37_178
# %bb.177:
	addi.w	$a1, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB37_178:                             # %_ZNSt6vectorIiSaIiEE6resizeEm.exit220
	ldptr.d	$a0, $fp, 2264
	ldptr.d	$a1, $fp, 2272
	beq	$a1, $a0, .LBB37_180
# %bb.179:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i222
	stptr.d	$a0, $fp, 2272
.LBB37_180:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit223
	ld.wu	$a0, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	addi.d	$s0, $s0, 217
	bnez	$a1, .LBB37_182
# %bb.181:
	addi.w	$a1, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB37_182:                             # %_ZNSt6vectorIiSaIiEE6resizeEm.exit226
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a0, $fp, 1160
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB37_275
# %bb.183:                              # %.lr.ph478
	move	$s7, $zero
	move	$a2, $zero
	move	$s0, $zero
	move	$a3, $zero
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB37_186
	.p2align	4, , 16
.LBB37_184:                             #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $a3
.LBB37_185:                             #   in Loop: Header=BB37_186 Depth=1
	ld.w	$a1, $fp, 1160
	addi.d	$s0, $s0, 1
	addi.d	$a2, $a2, 1
	addi.d	$s7, $s7, 4
	move	$a3, $a0
	bge	$s0, $a1, .LBB37_276
.LBB37_186:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 1392
	ldx.wu	$s2, $a0, $s7
	beq	$s0, $s2, .LBB37_184
# %bb.187:                              #   in Loop: Header=BB37_186 Depth=1
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 1352
	addi.w	$a0, $s2, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	slli.d	$s6, $a0, 2
	ldx.w	$a0, $a1, $s6
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 2008
	ld.d	$a2, $fp, 2016
	ldx.w	$a1, $a1, $s7
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	beq	$a0, $a2, .LBB37_190
# %bb.188:                              #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 2008
	ld.d	$a0, $fp, 2032
	ld.d	$a1, $fp, 2040
	beq	$a0, $a1, .LBB37_196
.LBB37_189:                             #   in Loop: Header=BB37_186 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 2032
	b	.LBB37_202
.LBB37_190:                             #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s4, $fp, 2000
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB37_315
# %bb.191:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i292
                                        #   in Loop: Header=BB37_186 Depth=1
	srai.d	$a0, $s3, 2
	ori	$s8, $zero, 1
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	stx.w	$a0, $s5, $s3
	blt	$s3, $s8, .LBB37_193
# %bb.192:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_193:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i294
                                        #   in Loop: Header=BB37_186 Depth=1
	beqz	$s4, .LBB37_195
# %bb.194:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_195:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i296
                                        #   in Loop: Header=BB37_186 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 2000
	st.d	$a0, $fp, 2008
	alsl.d	$a0, $s1, $s5, 2
	st.d	$a0, $fp, 2016
	ld.d	$a0, $fp, 2032
	ld.d	$a1, $fp, 2040
	bne	$a0, $a1, .LBB37_189
.LBB37_196:                             #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s4, $fp, 2024
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB37_315
# %bb.197:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i299
                                        #   in Loop: Header=BB37_186 Depth=1
	srai.d	$a0, $s3, 2
	ori	$s8, $zero, 1
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s2, $a0, $s3
	blt	$s3, $s8, .LBB37_199
# %bb.198:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_199:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i301
                                        #   in Loop: Header=BB37_186 Depth=1
	beqz	$s4, .LBB37_201
# %bb.200:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_201:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i303
                                        #   in Loop: Header=BB37_186 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 2024
	st.d	$a0, $fp, 2032
	alsl.d	$a0, $s1, $s5, 2
	st.d	$a0, $fp, 2040
.LBB37_202:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit304
                                        #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s5, $fp, 1352
	ldx.w	$a0, $s5, $s7
	ld.d	$a1, $fp, 1984
	ld.d	$a3, $fp, 1992
	ldx.w	$a2, $s5, $s6
	beq	$a1, $a3, .LBB37_204
# %bb.203:                              #   in Loop: Header=BB37_186 Depth=1
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $fp, 1984
	b	.LBB37_210
.LBB37_204:                             #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s4, $fp, 1976
	sub.d	$s3, $a1, $s4
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	beq	$s3, $a1, .LBB37_315
# %bb.205:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i306
                                        #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s5, 2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	slt	$s1, $a2, $a0
	srai.d	$a0, $s3, 2
	ori	$s8, $zero, 1
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	add.d	$a1, $s5, $s7
	maskeqz	$a1, $a1, $s1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	masknez	$a2, $a2, $s1
	or	$a1, $a1, $a2
	ld.w	$a1, $a1, 0
	move	$s5, $a0
	stx.w	$a1, $a0, $s3
	blt	$s3, $s8, .LBB37_207
# %bb.206:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_207:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i308
                                        #   in Loop: Header=BB37_186 Depth=1
	beqz	$s4, .LBB37_209
# %bb.208:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_209:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i310
                                        #   in Loop: Header=BB37_186 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 1976
	st.d	$a0, $fp, 1984
	alsl.d	$a0, $s2, $s5, 2
	st.d	$a0, $fp, 1992
.LBB37_210:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit311
                                        #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a0, $fp, 1336
	ldx.w	$a1, $a0, $s6
	ld.d	$a0, $fp, 1960
	ld.d	$a2, $fp, 1968
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	slt	$s8, $a3, $a4
	sll.w	$s2, $a1, $s8
	beq	$a0, $a2, .LBB37_212
# %bb.211:                              #   in Loop: Header=BB37_186 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1960
	b	.LBB37_218
.LBB37_212:                             #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s4, $fp, 1952
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB37_315
# %bb.213:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i313
                                        #   in Loop: Header=BB37_186 Depth=1
	srai.d	$a0, $s3, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s2, $a0, $s3
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB37_215
# %bb.214:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_215:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i315
                                        #   in Loop: Header=BB37_186 Depth=1
	beqz	$s4, .LBB37_217
# %bb.216:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_217:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i317
                                        #   in Loop: Header=BB37_186 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 1952
	st.d	$a0, $fp, 1960
	alsl.d	$a0, $s1, $s5, 2
	st.d	$a0, $fp, 1968
.LBB37_218:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit318
                                        #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a0, $fp, 1352
	ldx.w	$a2, $a0, $s6
	ldx.w	$a0, $a0, $s7
	ld.d	$a1, $fp, 1328
	bge	$a2, $a0, .LBB37_222
# %bb.219:                              #   in Loop: Header=BB37_186 Depth=1
	ldx.wu	$a3, $a1, $s7
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a4, 32, 31
	ld.d	$a0, $fp, 1936
	ld.d	$a2, $fp, 1944
	and	$a3, $a3, $a4
	addi.w	$a3, $a3, 0
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB37_223
# %bb.220:                              #   in Loop: Header=BB37_186 Depth=1
	ldx.w	$a1, $a1, $s6
	sll.w	$a1, $a1, $s8
	addi.d	$s2, $a1, 1
	bne	$a0, $a2, .LBB37_224
# %bb.221:                              #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s4, $fp, 1928
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bne	$s3, $a0, .LBB37_226
	b	.LBB37_315
	.p2align	4, , 16
.LBB37_222:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit318._crit_edge
                                        #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a0, $fp, 1936
	ld.d	$a2, $fp, 1944
.LBB37_223:                             #   in Loop: Header=BB37_186 Depth=1
	ldx.w	$a1, $a1, $s6
	sll.w	$s2, $a1, $s8
	beq	$a0, $a2, .LBB37_225
.LBB37_224:                             #   in Loop: Header=BB37_186 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1936
	b	.LBB37_231
.LBB37_225:                             #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s4, $fp, 1928
	sub.d	$s3, $a2, $s4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB37_315
.LBB37_226:                             # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i327
                                        #   in Loop: Header=BB37_186 Depth=1
	srai.d	$a0, $s3, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s2, $a0, $s3
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB37_228
# %bb.227:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_228:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i329
                                        #   in Loop: Header=BB37_186 Depth=1
	beqz	$s4, .LBB37_230
# %bb.229:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_230:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i331
                                        #   in Loop: Header=BB37_186 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 1928
	st.d	$a0, $fp, 1936
	alsl.d	$a0, $s1, $s5, 2
	st.d	$a0, $fp, 1944
.LBB37_231:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit325
                                        #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a0, $fp, 1352
	ldx.w	$a1, $a0, $s6
	ldx.w	$a2, $a0, $s7
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bge	$a2, $a1, .LBB37_237
# %bb.232:                              #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a1, $fp, 1328
	ldx.bu	$a1, $a1, $s6
	andi	$a1, $a1, 1
	bnez	$a1, .LBB37_237
# %bb.233:                              #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a1, $fp, 1376
	ldx.w	$s2, $a1, $s6
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beq	$s2, $a1, .LBB37_185
# %bb.234:                              #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a0, $fp, 2008
	ld.d	$a1, $fp, 2016
	beq	$a0, $a1, .LBB37_238
# %bb.235:                              #   in Loop: Header=BB37_186 Depth=1
	st.w	$a2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 2008
	ld.d	$a0, $fp, 2032
	ld.d	$a1, $fp, 2040
	beq	$a0, $a1, .LBB37_244
.LBB37_236:                             #   in Loop: Header=BB37_186 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 2032
	b	.LBB37_250
	.p2align	4, , 16
.LBB37_237:                             #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	b	.LBB37_185
.LBB37_238:                             #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s4, $fp, 2000
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB37_315
# %bb.239:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i334
                                        #   in Loop: Header=BB37_186 Depth=1
	srai.d	$a0, $s3, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	stx.w	$a0, $s5, $s3
	blt	$s3, $s6, .LBB37_241
# %bb.240:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_241:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i336
                                        #   in Loop: Header=BB37_186 Depth=1
	beqz	$s4, .LBB37_243
# %bb.242:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_243:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i338
                                        #   in Loop: Header=BB37_186 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 2000
	st.d	$a0, $fp, 2008
	alsl.d	$a0, $s1, $s5, 2
	st.d	$a0, $fp, 2016
	ld.d	$a0, $fp, 2032
	ld.d	$a1, $fp, 2040
	bne	$a0, $a1, .LBB37_236
.LBB37_244:                             #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s4, $fp, 2024
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB37_315
# %bb.245:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i341
                                        #   in Loop: Header=BB37_186 Depth=1
	srai.d	$a0, $s3, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s2, $a0, $s3
	blt	$s3, $s6, .LBB37_247
# %bb.246:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_247:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i343
                                        #   in Loop: Header=BB37_186 Depth=1
	beqz	$s4, .LBB37_249
# %bb.248:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_249:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i345
                                        #   in Loop: Header=BB37_186 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 2024
	st.d	$a0, $fp, 2032
	alsl.d	$a0, $s1, $s5, 2
	st.d	$a0, $fp, 2040
.LBB37_250:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit346
                                        #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s5, $fp, 1352
	ldx.w	$a0, $s5, $s7
	slli.d	$s6, $s2, 2
	ld.d	$a1, $fp, 1984
	ld.d	$a3, $fp, 1992
	ldx.w	$a2, $s5, $s6
	beq	$a1, $a3, .LBB37_252
# %bb.251:                              #   in Loop: Header=BB37_186 Depth=1
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $fp, 1984
	b	.LBB37_258
.LBB37_252:                             #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s4, $fp, 1976
	sub.d	$s3, $a1, $s4
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	beq	$s3, $a1, .LBB37_315
# %bb.253:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i348
                                        #   in Loop: Header=BB37_186 Depth=1
	alsl.d	$a1, $s2, $s5, 2
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	slt	$s1, $a2, $a0
	srai.d	$a0, $s3, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	add.d	$a1, $s5, $s7
	maskeqz	$a1, $a1, $s1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	masknez	$a2, $a2, $s1
	or	$a1, $a1, $a2
	ld.w	$a1, $a1, 0
	move	$s5, $a0
	stx.w	$a1, $a0, $s3
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB37_255
# %bb.254:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_255:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i350
                                        #   in Loop: Header=BB37_186 Depth=1
	beqz	$s4, .LBB37_257
# %bb.256:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_257:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i352
                                        #   in Loop: Header=BB37_186 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 1976
	st.d	$a0, $fp, 1984
	alsl.d	$a0, $s2, $s5, 2
	st.d	$a0, $fp, 1992
.LBB37_258:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit353
                                        #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a0, $fp, 1336
	ldx.w	$a1, $a0, $s6
	ld.d	$a0, $fp, 1960
	ld.d	$a2, $fp, 1968
	sll.w	$s2, $a1, $s8
	beq	$a0, $a2, .LBB37_260
# %bb.259:                              #   in Loop: Header=BB37_186 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1960
	b	.LBB37_266
.LBB37_260:                             #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s4, $fp, 1952
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB37_315
# %bb.261:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i355
                                        #   in Loop: Header=BB37_186 Depth=1
	srai.d	$a0, $s3, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s2, $a0, $s3
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB37_263
# %bb.262:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_263:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i357
                                        #   in Loop: Header=BB37_186 Depth=1
	beqz	$s4, .LBB37_265
# %bb.264:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_265:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i359
                                        #   in Loop: Header=BB37_186 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 1952
	st.d	$a0, $fp, 1960
	alsl.d	$a0, $s1, $s5, 2
	st.d	$a0, $fp, 1968
.LBB37_266:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit360
                                        #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a0, $fp, 1328
	ldx.w	$a1, $a0, $s6
	ld.d	$a0, $fp, 1936
	ld.d	$a2, $fp, 1944
	sll.w	$s2, $a1, $s8
	beq	$a0, $a2, .LBB37_268
# %bb.267:                              #   in Loop: Header=BB37_186 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1936
	b	.LBB37_274
.LBB37_268:                             #   in Loop: Header=BB37_186 Depth=1
	ld.d	$s4, $fp, 1928
	sub.d	$s3, $a0, $s4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB37_315
# %bb.269:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i362
                                        #   in Loop: Header=BB37_186 Depth=1
	srai.d	$a0, $s3, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s2, $a0, $s3
	blt	$s3, $s6, .LBB37_271
# %bb.270:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB37_271:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i364
                                        #   in Loop: Header=BB37_186 Depth=1
	beqz	$s4, .LBB37_273
# %bb.272:                              #   in Loop: Header=BB37_186 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_273:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i366
                                        #   in Loop: Header=BB37_186 Depth=1
	add.d	$a0, $s5, $s3
	addi.d	$a0, $a0, 4
	st.d	$s5, $fp, 1928
	st.d	$a0, $fp, 1936
	alsl.d	$a0, $s1, $s5, 2
	st.d	$a0, $fp, 1944
.LBB37_274:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit367
                                        #   in Loop: Header=BB37_186 Depth=1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	b	.LBB37_185
.LBB37_275:
	move	$a0, $zero
.LBB37_276:                             # %._crit_edge479
	ld.w	$a1, $fp, 1560
	st.w	$a0, $fp, 1564
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 96                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB37_292
# %bb.277:                              # %.lr.ph483
	ld.d	$a0, $fp, 1616
	ld.d	$a1, $fp, 1568
	ld.d	$a2, $fp, 1784
	ld.d	$a3, $fp, 1808
	ld.d	$a4, $fp, 1592
	ld.d	$a5, $fp, 1832
	ld.d	$a7, $fp, 1856
	move	$t0, $zero
	b	.LBB37_279
	.p2align	4, , 16
.LBB37_278:                             #   in Loop: Header=BB37_279 Depth=1
	ld.w	$a6, $fp, 1560
	addi.d	$t0, $t0, 1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 4
	bge	$t0, $a6, .LBB37_287
.LBB37_279:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 0
	ld.w	$t2, $a1, 0
	slli.d	$t1, $a6, 2
	ldx.w	$t3, $a2, $t1
	bge	$t2, $t3, .LBB37_283
# %bb.280:                              #   in Loop: Header=BB37_279 Depth=1
	alsl.d	$t3, $a6, $a2, 2
	st.w	$t2, $t3, 0
	ldx.w	$t3, $a3, $t1
	blt	$t3, $t2, .LBB37_284
.LBB37_281:                             #   in Loop: Header=BB37_279 Depth=1
	ld.w	$t2, $a4, 0
	ldx.w	$t3, $a5, $t1
	bge	$t2, $t3, .LBB37_285
.LBB37_282:                             #   in Loop: Header=BB37_279 Depth=1
	alsl.d	$t3, $a6, $a5, 2
	st.w	$t2, $t3, 0
	ldx.w	$t1, $a7, $t1
	bge	$t1, $t2, .LBB37_278
	b	.LBB37_286
	.p2align	4, , 16
.LBB37_283:                             #   in Loop: Header=BB37_279 Depth=1
	ldx.w	$t3, $a3, $t1
	bge	$t3, $t2, .LBB37_281
.LBB37_284:                             #   in Loop: Header=BB37_279 Depth=1
	alsl.d	$t3, $a6, $a3, 2
	st.w	$t2, $t3, 0
	ld.w	$t2, $a4, 0
	ldx.w	$t3, $a5, $t1
	blt	$t2, $t3, .LBB37_282
.LBB37_285:                             #   in Loop: Header=BB37_279 Depth=1
	ldx.w	$t1, $a7, $t1
	bge	$t1, $t2, .LBB37_278
.LBB37_286:                             #   in Loop: Header=BB37_279 Depth=1
	alsl.d	$a6, $a6, $a7, 2
	st.w	$t2, $a6, 0
	b	.LBB37_278
.LBB37_287:                             # %.preheader440
	ori	$a0, $zero, 1
	blt	$a6, $a0, .LBB37_292
# %bb.288:                              # %.lr.ph485
	ld.d	$a0, $fp, 1616
	ld.d	$a1, $fp, 1808
	ld.d	$a2, $fp, 1784
	ld.d	$a3, $fp, 1568
	ld.d	$a4, $fp, 1832
	ld.d	$a5, $fp, 1592
	move	$a7, $zero
	b	.LBB37_290
	.p2align	4, , 16
.LBB37_289:                             #   in Loop: Header=BB37_290 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 4
	bge	$a7, $a6, .LBB37_292
.LBB37_290:                             # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a0, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t2, $a1, $t0
	ldx.w	$t1, $a2, $t0
	blt	$t2, $t1, .LBB37_289
# %bb.291:                              #   in Loop: Header=BB37_290 Depth=1
	ld.w	$a6, $a3, 0
	sub.d	$a6, $a6, $t1
	st.w	$a6, $a3, 0
	ldx.w	$a6, $a4, $t0
	ld.w	$t0, $a5, 0
	sub.d	$a6, $t0, $a6
	st.w	$a6, $a5, 0
	ld.w	$a6, $fp, 1560
	b	.LBB37_289
.LBB37_292:                             # %.preheader439
	ld.w	$a0, $fp, 1120
	bltz	$a0, .LBB37_295
# %bb.293:                              # %.lr.ph488
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $t4, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $t5, 0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB37_294:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, 0
	st.w	$a7, $a1, 0
	ld.w	$a7, $a2, 0
	st.w	$a7, $a3, 0
	ld.w	$a7, $a0, 0
	ld.w	$t0, $a4, 0
	sub.d	$a7, $t0, $a7
	st.w	$a7, $a4, 0
	ld.w	$a7, $a2, 0
	ld.w	$t0, $a5, 0
	sub.d	$a7, $t0, $a7
	st.w	$a7, $a5, 0
	st.w	$zero, $a0, 0
	st.w	$zero, $a2, 0
	ld.w	$a7, $fp, 1120
	addi.d	$a6, $a6, 1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	blt	$a6, $a7, .LBB37_294
.LBB37_295:                             # %.preheader438
	ld.w	$a0, $fp, 1564
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB37_311
# %bb.296:                              # %.lr.ph490
	ld.d	$a0, $fp, 1976
	ld.d	$a1, $fp, 1928
	ldptr.d	$a2, $fp, 2144
	ldptr.d	$a3, $fp, 2168
	ld.d	$a4, $fp, 1952
	ldptr.d	$a5, $fp, 2192
	ldptr.d	$a7, $fp, 2216
	move	$t0, $zero
	b	.LBB37_298
	.p2align	4, , 16
.LBB37_297:                             #   in Loop: Header=BB37_298 Depth=1
	ld.w	$a6, $fp, 1564
	addi.d	$t0, $t0, 1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 4
	bge	$t0, $a6, .LBB37_306
.LBB37_298:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 0
	ld.w	$t2, $a1, 0
	slli.d	$t1, $a6, 2
	ldx.w	$t3, $a2, $t1
	bge	$t2, $t3, .LBB37_302
# %bb.299:                              #   in Loop: Header=BB37_298 Depth=1
	alsl.d	$t3, $a6, $a2, 2
	st.w	$t2, $t3, 0
	ldx.w	$t3, $a3, $t1
	blt	$t3, $t2, .LBB37_303
.LBB37_300:                             #   in Loop: Header=BB37_298 Depth=1
	ld.w	$t2, $a4, 0
	ldx.w	$t3, $a5, $t1
	bge	$t2, $t3, .LBB37_304
.LBB37_301:                             #   in Loop: Header=BB37_298 Depth=1
	alsl.d	$t3, $a6, $a5, 2
	st.w	$t2, $t3, 0
	ldx.w	$t1, $a7, $t1
	bge	$t1, $t2, .LBB37_297
	b	.LBB37_305
	.p2align	4, , 16
.LBB37_302:                             #   in Loop: Header=BB37_298 Depth=1
	ldx.w	$t3, $a3, $t1
	bge	$t3, $t2, .LBB37_300
.LBB37_303:                             #   in Loop: Header=BB37_298 Depth=1
	alsl.d	$t3, $a6, $a3, 2
	st.w	$t2, $t3, 0
	ld.w	$t2, $a4, 0
	ldx.w	$t3, $a5, $t1
	blt	$t2, $t3, .LBB37_301
.LBB37_304:                             #   in Loop: Header=BB37_298 Depth=1
	ldx.w	$t1, $a7, $t1
	bge	$t1, $t2, .LBB37_297
.LBB37_305:                             #   in Loop: Header=BB37_298 Depth=1
	alsl.d	$a6, $a6, $a7, 2
	st.w	$t2, $a6, 0
	b	.LBB37_297
.LBB37_306:                             # %.preheader437
	ori	$a0, $zero, 1
	blt	$a6, $a0, .LBB37_311
# %bb.307:                              # %.lr.ph492
	ld.d	$a0, $fp, 1976
	ldptr.d	$a1, $fp, 2168
	ldptr.d	$a2, $fp, 2144
	ld.d	$a3, $fp, 1928
	ldptr.d	$a4, $fp, 2192
	ld.d	$a5, $fp, 1952
	move	$a7, $zero
	b	.LBB37_309
	.p2align	4, , 16
.LBB37_308:                             #   in Loop: Header=BB37_309 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 4
	bge	$a7, $a6, .LBB37_311
.LBB37_309:                             # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a0, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t2, $a1, $t0
	ldx.w	$t1, $a2, $t0
	blt	$t2, $t1, .LBB37_308
# %bb.310:                              #   in Loop: Header=BB37_309 Depth=1
	ld.w	$a6, $a3, 0
	sub.d	$a6, $a6, $t1
	st.w	$a6, $a3, 0
	ldx.w	$a6, $a4, $t0
	ld.w	$t0, $a5, 0
	sub.d	$a6, $t0, $a6
	st.w	$a6, $a5, 0
	ld.w	$a6, $fp, 1564
	b	.LBB37_308
.LBB37_311:                             # %.preheader
	ld.w	$a0, $fp, 1120
	bltz	$a0, .LBB37_314
# %bb.312:                              # %.lr.ph495
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $t6, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $t7, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB37_313:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, 0
	st.w	$a7, $a1, 0
	ld.w	$a7, $a2, 0
	st.w	$a7, $a3, 0
	ld.w	$a7, $a0, 0
	ld.w	$t0, $a4, 0
	sub.d	$a7, $t0, $a7
	st.w	$a7, $a4, 0
	ld.w	$a7, $a2, 0
	ld.w	$t0, $a5, 0
	sub.d	$a7, $t0, $a7
	st.w	$a7, $a5, 0
	st.w	$zero, $a0, 0
	st.w	$zero, $a2, 0
	ld.w	$a7, $fp, 1120
	addi.d	$a6, $a6, 1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	blt	$a6, $a7, .LBB37_313
.LBB37_314:                             # %._crit_edge496
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB37_315:
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end37:
	.size	_ZN4Mesh19calc_face_list_wmapEv, .Lfunc_end37-_ZN4Mesh19calc_face_list_wmapEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh24calc_face_list_wbidirmapEv # -- Begin function _ZN4Mesh24calc_face_list_wbidirmapEv
	.p2align	5
	.type	_ZN4Mesh24calc_face_list_wbidirmapEv,@function
_ZN4Mesh24calc_face_list_wbidirmapEv:   # @_ZN4Mesh24calc_face_list_wbidirmapEv
	.cfi_startproc
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
	move	$fp, $a0
	ld.d	$a0, $a0, 1640
	ld.d	$a1, $fp, 1648
	beq	$a1, $a0, .LBB38_2
# %bb.1:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a0, $fp, 1648
.LBB38_2:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit
	ld.d	$a0, $fp, 1664
	ld.d	$a1, $fp, 1672
	beq	$a1, $a0, .LBB38_4
# %bb.3:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i173
	st.d	$a0, $fp, 1672
.LBB38_4:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit174
	ld.d	$a1, $fp, 1688
	ld.d	$a0, $fp, 1696
	beq	$a0, $a1, .LBB38_6
# %bb.5:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i176
	st.d	$a1, $fp, 1696
.LBB38_6:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit177
	ld.d	$a0, $fp, 1712
	ld.d	$a2, $fp, 1720
	beq	$a2, $a0, .LBB38_8
# %bb.7:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i179
	st.d	$a0, $fp, 1720
.LBB38_8:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit180
	ld.d	$a2, $fp, 1736
	ld.d	$a3, $fp, 1744
	beq	$a3, $a2, .LBB38_10
# %bb.9:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i182
	st.d	$a2, $fp, 1744
.LBB38_10:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit183
	ld.d	$a2, $fp, 1760
	ld.d	$a3, $fp, 1768
	beq	$a3, $a2, .LBB38_12
# %bb.11:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i185
	st.d	$a2, $fp, 1768
.LBB38_12:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit186
	ld.d	$a2, $fp, 1160
	addi.w	$s2, $zero, -1
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	lu32i.d	$s2, 0
	st.w	$s2, $sp, 196
	beqz	$a2, .LBB38_15
# %bb.13:
	addi.d	$a0, $fp, 1688
	addi.d	$a3, $sp, 196
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 1160
	ld.d	$a1, $fp, 1720
	ld.d	$a0, $fp, 1712
	sub.d	$a3, $a1, $a0
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 196
	bgeu	$a3, $a2, .LBB38_16
.LBB38_14:
	addi.d	$a0, $fp, 1712
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $sp, 196
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 1160
	b	.LBB38_19
.LBB38_15:
	move	$a2, $zero
	move	$a1, $a0
	sub.d	$a3, $a1, $a0
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 196
	bltu	$a3, $a2, .LBB38_14
.LBB38_16:
	bgeu	$a2, $a3, .LBB38_19
# %bb.17:
	alsl.d	$a0, $a2, $a0, 2
	beq	$a1, $a0, .LBB38_19
# %bb.18:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i190
	st.d	$a0, $fp, 1720
.LBB38_19:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit191
	ld.d	$a1, $fp, 1744
	ld.d	$a0, $fp, 1736
	sub.d	$a3, $a1, $a0
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 196
	bgeu	$a3, $a2, .LBB38_21
# %bb.20:
	addi.d	$a0, $fp, 1736
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $sp, 196
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 1160
	b	.LBB38_24
.LBB38_21:
	bgeu	$a2, $a3, .LBB38_24
# %bb.22:
	alsl.d	$a0, $a2, $a0, 2
	beq	$a1, $a0, .LBB38_24
# %bb.23:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i193
	st.d	$a0, $fp, 1744
.LBB38_24:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit194
	ld.d	$a1, $fp, 1768
	ld.d	$a0, $fp, 1760
	addi.d	$s0, $fp, 1760
	sub.d	$a3, $a1, $a0
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 196
	bgeu	$a3, $a2, .LBB38_26
# %bb.25:
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $sp, 196
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	b	.LBB38_29
.LBB38_26:
	bgeu	$a2, $a3, .LBB38_29
# %bb.27:
	alsl.d	$a0, $a2, $a0, 2
	beq	$a1, $a0, .LBB38_29
# %bb.28:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i196
	st.d	$a0, $fp, 1768
.LBB38_29:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit197
	ld.d	$a0, $fp, 1568
	ld.d	$a1, $fp, 1576
	beq	$a1, $a0, .LBB38_31
# %bb.30:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i199
	st.d	$a0, $fp, 1576
.LBB38_31:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit200
	ld.d	$a0, $fp, 1592
	ld.d	$a1, $fp, 1600
	beq	$a1, $a0, .LBB38_33
# %bb.32:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i202
	st.d	$a0, $fp, 1600
.LBB38_33:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit203
	ld.d	$a0, $fp, 1616
	ld.d	$a1, $fp, 1624
	beq	$a1, $a0, .LBB38_35
# %bb.34:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i205
	st.d	$a0, $fp, 1624
.LBB38_35:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit206
	ld.d	$a1, $fp, 1784
	ld.d	$a0, $fp, 1792
	beq	$a0, $a1, .LBB38_37
# %bb.36:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i208
	st.d	$a1, $fp, 1792
.LBB38_37:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit209
	ld.d	$a2, $fp, 1808
	ld.d	$a0, $fp, 1816
	beq	$a0, $a2, .LBB38_39
# %bb.38:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i211
	st.d	$a2, $fp, 1816
.LBB38_39:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit212
	ld.d	$a0, $fp, 1832
	ld.d	$a3, $fp, 1840
	beq	$a3, $a0, .LBB38_41
# %bb.40:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i214
	st.d	$a0, $fp, 1840
.LBB38_41:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit215
	ld.d	$a0, $fp, 1856
	ld.d	$a3, $fp, 1864
	beq	$a3, $a0, .LBB38_43
# %bb.42:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i217
	st.d	$a0, $fp, 1864
.LBB38_43:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit218
	ld.wu	$a3, $fp, 1120
	addi.d	$a0, $fp, 1784
	addi.d	$a5, $a3, 1
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
	and	$a3, $a5, $a3
	lu12i.w	$a4, 2441
	ori	$s4, $a4, 1663
	st.w	$s4, $sp, 196
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	beqz	$a3, .LBB38_45
# %bb.44:
	move	$a4, $zero
	move	$a1, $a2
	b	.LBB38_46
.LBB38_45:
	addi.w	$a2, $a5, 0
	addi.d	$a3, $sp, 196
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	ld.d	$a1, $fp, 1816
	ld.d	$a2, $fp, 1808
	addi.w	$a4, $a0, 1
.LBB38_46:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit221
	addi.d	$a0, $fp, 1808
	lu12i.w	$a3, -2442
	ori	$s3, $a3, 2433
	lu32i.d	$s3, 0
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s3, $sp, 196
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB38_48
# %bb.47:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 196
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	addi.w	$a4, $a0, 1
	b	.LBB38_51
.LBB38_48:
	bgeu	$a4, $a3, .LBB38_51
# %bb.49:
	alsl.d	$a2, $a4, $a2, 2
	beq	$a1, $a2, .LBB38_51
# %bb.50:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i223
	st.d	$a2, $fp, 1816
.LBB38_51:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit224
	ld.d	$a1, $fp, 1840
	ld.d	$a2, $fp, 1832
	addi.d	$a0, $fp, 1832
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s4, $sp, 196
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB38_53
# %bb.52:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 196
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	addi.w	$a4, $a0, 1
	b	.LBB38_56
.LBB38_53:
	bgeu	$a4, $a3, .LBB38_56
# %bb.54:
	alsl.d	$a2, $a4, $a2, 2
	beq	$a1, $a2, .LBB38_56
# %bb.55:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i226
	st.d	$a2, $fp, 1840
.LBB38_56:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit227
	ld.d	$a1, $fp, 1864
	ld.d	$a2, $fp, 1856
	addi.d	$a0, $fp, 1856
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s3, $sp, 196
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bgeu	$a3, $a4, .LBB38_58
# %bb.57:
	sub.d	$a2, $a4, $a3
	addi.d	$a3, $sp, 196
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	b	.LBB38_61
.LBB38_58:
	bgeu	$a4, $a3, .LBB38_61
# %bb.59:
	alsl.d	$a0, $a4, $a2, 2
	beq	$a1, $a0, .LBB38_61
# %bb.60:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i229
	st.d	$a0, $fp, 1864
.LBB38_61:                              # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit230
	ld.d	$a0, $fp, 1880
	ld.d	$a1, $fp, 1888
	beq	$a1, $a0, .LBB38_63
# %bb.62:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i232
	st.d	$a0, $fp, 1888
.LBB38_63:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit233
	ld.wu	$a0, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	addi.d	$a2, $fp, 1880
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	bnez	$a1, .LBB38_65
# %bb.64:
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB38_65:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $fp, 1904
	ld.d	$a1, $fp, 1912
	beq	$a1, $a0, .LBB38_67
# %bb.66:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i237
	st.d	$a0, $fp, 1912
.LBB38_67:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit238
	ld.wu	$a0, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	addi.d	$a2, $fp, 1904
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	bnez	$a1, .LBB38_69
# %bb.68:
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB38_69:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit241
	ld.d	$a2, $fp, 1160
	addi.w	$a0, $a2, 0
	addi.w	$a1, $zero, -4
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	blez	$a0, .LBB38_171
# %bb.70:                               # %.lr.ph
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s0, $zero
	move	$s6, $zero
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	lu52i.d	$a0, $a1, 2047
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB38_73
	.p2align	4, , 16
.LBB38_71:                              #   in Loop: Header=BB38_73 Depth=1
	st.d	$s2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
.LBB38_72:                              #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a2, $fp, 1160
	addi.d	$s6, $s6, 1
	addi.w	$a1, $a2, 0
	addi.d	$s0, $s0, 1
	addi.d	$s8, $s8, 4
	bge	$s6, $a1, .LBB38_161
.LBB38_73:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 1376
	ldx.wu	$s4, $a0, $s8
	beq	$s6, $s4, .LBB38_72
# %bb.74:                               #   in Loop: Header=BB38_73 Depth=1
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 1352
	addi.w	$a0, $s4, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	slli.d	$s7, $a0, 2
	ldx.w	$a0, $a1, $s7
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 1648
	ld.d	$a2, $fp, 1656
	ldx.w	$a1, $a1, $s8
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	beq	$a0, $a2, .LBB38_77
# %bb.75:                               #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1648
	ld.d	$a0, $fp, 1672
	ld.d	$a1, $fp, 1680
	beq	$a0, $a1, .LBB38_83
.LBB38_76:                              #   in Loop: Header=BB38_73 Depth=1
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1672
	b	.LBB38_89
.LBB38_77:                              #   in Loop: Header=BB38_73 Depth=1
	ld.d	$s2, $fp, 1640
	sub.d	$s1, $a0, $s2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB38_385
# %bb.78:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB38_73 Depth=1
	srai.d	$a0, $s1, 2
	ori	$s0, $zero, 1
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	stx.w	$a0, $s3, $s1
	blt	$s1, $s0, .LBB38_80
# %bb.79:                               #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_80:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB38_73 Depth=1
	beqz	$s2, .LBB38_82
# %bb.81:                               #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_82:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB38_73 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 1640
	st.d	$a0, $fp, 1648
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 1656
	ld.d	$a0, $fp, 1672
	ld.d	$a1, $fp, 1680
	bne	$a0, $a1, .LBB38_76
.LBB38_83:                              #   in Loop: Header=BB38_73 Depth=1
	ld.d	$s2, $fp, 1664
	sub.d	$s1, $a0, $s2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB38_385
# %bb.84:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i243
                                        #   in Loop: Header=BB38_73 Depth=1
	srai.d	$a0, $s1, 2
	ori	$s0, $zero, 1
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s4, $a0, $s1
	blt	$s1, $s0, .LBB38_86
# %bb.85:                               #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_86:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i245
                                        #   in Loop: Header=BB38_73 Depth=1
	beqz	$s2, .LBB38_88
# %bb.87:                               #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_88:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i247
                                        #   in Loop: Header=BB38_73 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 1664
	st.d	$a0, $fp, 1672
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 1680
.LBB38_89:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit248
                                        #   in Loop: Header=BB38_73 Depth=1
	ld.d	$s3, $fp, 1352
	ldx.w	$a0, $s3, $s8
	ld.d	$a1, $fp, 1624
	ld.d	$a3, $fp, 1632
	ldx.w	$a2, $s3, $s7
	beq	$a1, $a3, .LBB38_91
# %bb.90:                               #   in Loop: Header=BB38_73 Depth=1
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $fp, 1624
	b	.LBB38_97
.LBB38_91:                              #   in Loop: Header=BB38_73 Depth=1
	ld.d	$s2, $fp, 1616
	sub.d	$s1, $a1, $s2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB38_385
# %bb.92:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i250
                                        #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s3, 2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	slt	$s5, $a2, $a0
	srai.d	$a0, $s1, 2
	ori	$s0, $zero, 1
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	add.d	$a1, $s3, $s8
	maskeqz	$a1, $a1, $s5
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	masknez	$a2, $a2, $s5
	or	$a1, $a1, $a2
	ld.w	$a1, $a1, 0
	move	$s3, $a0
	stx.w	$a1, $a0, $s1
	blt	$s1, $s0, .LBB38_94
# %bb.93:                               #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_94:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i252
                                        #   in Loop: Header=BB38_73 Depth=1
	beqz	$s2, .LBB38_96
# %bb.95:                               #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_96:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i254
                                        #   in Loop: Header=BB38_73 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 1616
	st.d	$a0, $fp, 1624
	alsl.d	$a0, $s4, $s3, 2
	st.d	$a0, $fp, 1632
.LBB38_97:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit255
                                        #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a0, $fp, 1328
	ldx.w	$a1, $a0, $s7
	ld.d	$a0, $fp, 1576
	ld.d	$a2, $fp, 1584
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	slt	$s0, $a3, $a4
	sll.w	$s4, $a1, $s0
	beq	$a0, $a2, .LBB38_99
# %bb.98:                               #   in Loop: Header=BB38_73 Depth=1
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1576
	b	.LBB38_105
.LBB38_99:                              #   in Loop: Header=BB38_73 Depth=1
	ld.d	$s2, $fp, 1568
	sub.d	$s1, $a0, $s2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB38_385
# %bb.100:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB38_73 Depth=1
	srai.d	$a0, $s1, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s4, $a0, $s1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB38_102
# %bb.101:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_102:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB38_73 Depth=1
	beqz	$s2, .LBB38_104
# %bb.103:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_104:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB38_73 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 1568
	st.d	$a0, $fp, 1576
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 1584
.LBB38_105:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
                                        #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a0, $fp, 1352
	ldx.w	$a2, $a0, $s7
	ldx.w	$a0, $a0, $s8
	ld.d	$a1, $fp, 1336
	bge	$a2, $a0, .LBB38_109
# %bb.106:                              #   in Loop: Header=BB38_73 Depth=1
	ldx.wu	$a3, $a1, $s8
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a4, 32, 31
	ld.d	$a0, $fp, 1600
	ld.d	$a2, $fp, 1608
	and	$a3, $a3, $a4
	addi.w	$a3, $a3, 0
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB38_110
# %bb.107:                              #   in Loop: Header=BB38_73 Depth=1
	ldx.w	$a1, $a1, $s7
	sll.w	$a1, $a1, $s0
	addi.d	$s4, $a1, 1
	bne	$a0, $a2, .LBB38_111
# %bb.108:                              #   in Loop: Header=BB38_73 Depth=1
	ld.d	$s2, $fp, 1592
	sub.d	$s1, $a0, $s2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bne	$s1, $a0, .LBB38_113
	b	.LBB38_385
	.p2align	4, , 16
.LBB38_109:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge
                                        #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a0, $fp, 1600
	ld.d	$a2, $fp, 1608
.LBB38_110:                             #   in Loop: Header=BB38_73 Depth=1
	ldx.w	$a1, $a1, $s7
	sll.w	$s4, $a1, $s0
	beq	$a0, $a2, .LBB38_112
.LBB38_111:                             #   in Loop: Header=BB38_73 Depth=1
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1600
	b	.LBB38_118
.LBB38_112:                             #   in Loop: Header=BB38_73 Depth=1
	ld.d	$s2, $fp, 1592
	sub.d	$s1, $a2, $s2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB38_385
.LBB38_113:                             # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i265
                                        #   in Loop: Header=BB38_73 Depth=1
	srai.d	$a0, $s1, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s4, $a0, $s1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB38_115
# %bb.114:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_115:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i267
                                        #   in Loop: Header=BB38_73 Depth=1
	beqz	$s2, .LBB38_117
# %bb.116:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_117:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i269
                                        #   in Loop: Header=BB38_73 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 1592
	st.d	$a0, $fp, 1600
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 1608
.LBB38_118:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit263
                                        #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a0, $fp, 1736
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	stx.w	$a2, $a0, $s8
	ld.d	$a0, $fp, 1352
	ldx.w	$a1, $a0, $s7
	ldx.w	$a0, $a0, $s8
	addi.d	$s2, $a2, 1
	bge	$a0, $a1, .LBB38_71
# %bb.119:                              #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a0, $fp, 1336
	ldx.bu	$a0, $a0, $s7
	andi	$a0, $a0, 1
	bnez	$a0, .LBB38_71
# %bb.120:                              #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a0, $fp, 1392
	ldx.w	$s5, $a0, $s7
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB38_71
# %bb.121:                              #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a0, $fp, 1648
	ld.d	$a1, $fp, 1656
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB38_124
# %bb.122:                              #   in Loop: Header=BB38_73 Depth=1
	st.w	$a2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1648
	ld.d	$a0, $fp, 1672
	ld.d	$a1, $fp, 1680
	beq	$a0, $a1, .LBB38_130
.LBB38_123:                             #   in Loop: Header=BB38_73 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1672
	b	.LBB38_136
.LBB38_124:                             #   in Loop: Header=BB38_73 Depth=1
	ld.d	$s7, $fp, 1640
	sub.d	$s1, $a0, $s7
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB38_385
# %bb.125:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i272
                                        #   in Loop: Header=BB38_73 Depth=1
	move	$s4, $s0
	srai.d	$a0, $s1, 2
	ori	$s0, $zero, 1
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	stx.w	$a0, $s3, $s1
	blt	$s1, $s0, .LBB38_127
# %bb.126:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s3
	move	$a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_127:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i274
                                        #   in Loop: Header=BB38_73 Depth=1
	beqz	$s7, .LBB38_129
# %bb.128:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s7
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_129:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i276
                                        #   in Loop: Header=BB38_73 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 1640
	st.d	$a0, $fp, 1648
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s3, 2
	st.d	$a0, $fp, 1656
	move	$s0, $s4
	ld.d	$a0, $fp, 1672
	ld.d	$a1, $fp, 1680
	bne	$a0, $a1, .LBB38_123
.LBB38_130:                             #   in Loop: Header=BB38_73 Depth=1
	ld.d	$s7, $fp, 1664
	sub.d	$s1, $a0, $s7
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB38_385
# %bb.131:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i279
                                        #   in Loop: Header=BB38_73 Depth=1
	move	$s4, $s0
	srai.d	$a0, $s1, 2
	ori	$s0, $zero, 1
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s5, $a0, $s1
	blt	$s1, $s0, .LBB38_133
# %bb.132:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s3
	move	$a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_133:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i281
                                        #   in Loop: Header=BB38_73 Depth=1
	beqz	$s7, .LBB38_135
# %bb.134:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s7
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_135:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i283
                                        #   in Loop: Header=BB38_73 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 1664
	st.d	$a0, $fp, 1672
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s3, 2
	st.d	$a0, $fp, 1680
	move	$s0, $s4
.LBB38_136:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit284
                                        #   in Loop: Header=BB38_73 Depth=1
	ld.d	$s3, $fp, 1352
	ldx.w	$a0, $s3, $s8
	slli.d	$a4, $s5, 2
	ld.d	$a1, $fp, 1624
	ld.d	$a3, $fp, 1632
	ldx.w	$a2, $s3, $a4
	beq	$a1, $a3, .LBB38_138
# %bb.137:                              #   in Loop: Header=BB38_73 Depth=1
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $fp, 1624
	b	.LBB38_144
.LBB38_138:                             #   in Loop: Header=BB38_73 Depth=1
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s7, $fp, 1616
	sub.d	$s1, $a1, $s7
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB38_385
# %bb.139:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i286
                                        #   in Loop: Header=BB38_73 Depth=1
	alsl.d	$a1, $s5, $s3, 2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	slt	$s4, $a2, $a0
	srai.d	$a0, $s1, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	add.d	$a1, $s3, $s8
	maskeqz	$a1, $a1, $s4
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	masknez	$a2, $a2, $s4
	or	$a1, $a1, $a2
	ld.w	$a1, $a1, 0
	move	$s3, $a0
	stx.w	$a1, $a0, $s1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB38_141
# %bb.140:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s3
	move	$a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_141:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i288
                                        #   in Loop: Header=BB38_73 Depth=1
	beqz	$s7, .LBB38_143
# %bb.142:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s7
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_143:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i290
                                        #   in Loop: Header=BB38_73 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 1616
	st.d	$a0, $fp, 1624
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 1632
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
.LBB38_144:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit291
                                        #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a0, $fp, 1328
	ldx.w	$a1, $a0, $a4
	ld.d	$a0, $fp, 1576
	ld.d	$a2, $fp, 1584
	sll.w	$s4, $a1, $s0
	beq	$a0, $a2, .LBB38_146
# %bb.145:                              #   in Loop: Header=BB38_73 Depth=1
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1576
	b	.LBB38_152
.LBB38_146:                             #   in Loop: Header=BB38_73 Depth=1
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s7, $fp, 1568
	sub.d	$s1, $a0, $s7
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB38_385
# %bb.147:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i293
                                        #   in Loop: Header=BB38_73 Depth=1
	srai.d	$a0, $s1, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s4, $a0, $s1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB38_149
# %bb.148:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s3
	move	$a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_149:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i295
                                        #   in Loop: Header=BB38_73 Depth=1
	beqz	$s7, .LBB38_151
# %bb.150:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s7
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_151:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i297
                                        #   in Loop: Header=BB38_73 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 1568
	st.d	$a0, $fp, 1576
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 1584
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
.LBB38_152:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit298
                                        #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a0, $fp, 1336
	ldx.w	$a1, $a0, $a4
	ld.d	$a0, $fp, 1600
	ld.d	$a2, $fp, 1608
	sll.w	$s7, $a1, $s0
	beq	$a0, $a2, .LBB38_154
# %bb.153:                              #   in Loop: Header=BB38_73 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1600
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	b	.LBB38_160
.LBB38_154:                             #   in Loop: Header=BB38_73 Depth=1
	ld.d	$s4, $fp, 1592
	sub.d	$s1, $a0, $s4
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB38_385
# %bb.155:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i300
                                        #   in Loop: Header=BB38_73 Depth=1
	srai.d	$a0, $s1, 2
	ori	$s0, $zero, 1
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s7, $a0, $s1
	blt	$s1, $s0, .LBB38_157
# %bb.156:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_157:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i302
                                        #   in Loop: Header=BB38_73 Depth=1
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	beqz	$s4, .LBB38_159
# %bb.158:                              #   in Loop: Header=BB38_73 Depth=1
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_159:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i304
                                        #   in Loop: Header=BB38_73 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 1592
	st.d	$a0, $fp, 1600
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 1608
.LBB38_160:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit305
                                        #   in Loop: Header=BB38_73 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	stx.w	$s2, $a0, $s8
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	b	.LBB38_72
.LBB38_161:                             # %._crit_edge
	addi.d	$s1, $fp, 1560
	ori	$a0, $zero, 1
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.w	$a3, $fp, 1560
	blt	$a1, $a0, .LBB38_360
# %bb.162:                              # %.lr.ph601
	move	$a1, $zero
	move	$a3, $zero
	ld.d	$a4, $fp, 1368
	ld.d	$a5, $fp, 1352
	ld.d	$a6, $fp, 1336
	ld.d	$a7, $fp, 1736
	ld.d	$t0, $fp, 1688
	ld.d	$t1, $fp, 1392
	ld.d	$t2, $fp, 1712
	ld.d	$t3, $fp, 1760
	bstrpick.d	$t4, $a2, 30, 0
	ori	$t5, $zero, 1
	bstrins.d	$t5, $t5, 32, 31
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	b	.LBB38_166
.LBB38_163:                             #   in Loop: Header=BB38_166 Depth=1
	alsl.d	$t6, $t7, $t3, 2
	move	$t7, $t0
.LBB38_164:                             # %.sink.split
                                        #   in Loop: Header=BB38_166 Depth=1
	ld.w	$t6, $t6, 0
	stx.w	$t6, $t7, $a1
.LBB38_165:                             #   in Loop: Header=BB38_166 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 4
	beq	$t4, $a3, .LBB38_172
.LBB38_166:                             # =>This Inner Loop Header: Depth=1
	ldx.wu	$t6, $a4, $a1
	beq	$a3, $t6, .LBB38_165
# %bb.167:                              #   in Loop: Header=BB38_166 Depth=1
	addi.w	$t7, $t6, 0
	slli.d	$t6, $t7, 2
	ldx.w	$t8, $a5, $t6
	ldx.w	$s0, $a5, $a1
	bge	$t8, $s0, .LBB38_169
# %bb.168:                              #   in Loop: Header=BB38_166 Depth=1
	ldx.wu	$t8, $a6, $a1
	and	$t8, $t8, $t5
	addi.w	$t8, $t8, 0
	beq	$t8, $a0, .LBB38_163
.LBB38_169:                             #   in Loop: Header=BB38_166 Depth=1
	ldx.w	$t8, $a7, $t6
	alsl.d	$t7, $t7, $a5, 2
	stx.w	$t8, $t0, $a1
	ld.w	$t7, $t7, 0
	ldx.w	$t8, $a5, $a1
	bge	$t8, $t7, .LBB38_165
# %bb.170:                              #   in Loop: Header=BB38_166 Depth=1
	ldx.w	$t6, $t1, $t6
	alsl.d	$t6, $t6, $a7, 2
	move	$t7, $t2
	b	.LBB38_164
.LBB38_171:                             # %._crit_edge.thread
	addi.d	$s1, $fp, 1560
	st.w	$zero, $fp, 1560
.LBB38_172:                             # %._crit_edge602
	ld.d	$a0, $fp, 2000
	ld.d	$a1, $fp, 2008
	beq	$a1, $a0, .LBB38_174
.LBB38_173:                             # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i307
	st.d	$a0, $fp, 2008
.LBB38_174:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit308
	ld.d	$a0, $fp, 2024
	ld.d	$a1, $fp, 2032
	beq	$a1, $a0, .LBB38_176
# %bb.175:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i310
	st.d	$a0, $fp, 2032
.LBB38_176:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit311
	ldptr.d	$a1, $fp, 2048
	ldptr.d	$a0, $fp, 2056
	beq	$a0, $a1, .LBB38_178
# %bb.177:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i313
	stptr.d	$a1, $fp, 2056
.LBB38_178:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit314
	ldptr.d	$a0, $fp, 2072
	ldptr.d	$a3, $fp, 2080
	beq	$a3, $a0, .LBB38_180
# %bb.179:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i316
	stptr.d	$a0, $fp, 2080
.LBB38_180:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit317
	ldptr.d	$a3, $fp, 2096
	ldptr.d	$a4, $fp, 2104
	beq	$a4, $a3, .LBB38_182
# %bb.181:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i319
	stptr.d	$a3, $fp, 2104
.LBB38_182:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit320
	ldptr.d	$a3, $fp, 2120
	ldptr.d	$a4, $fp, 2128
	beq	$a4, $a3, .LBB38_184
# %bb.183:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i322
	stptr.d	$a3, $fp, 2128
.LBB38_184:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit323
	addi.d	$s0, $fp, 2047
	st.w	$s2, $sp, 196
	beqz	$a2, .LBB38_187
# %bb.185:
	addi.d	$a0, $s0, 1
	addi.d	$a3, $sp, 196
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 1160
	ldptr.d	$a1, $fp, 2080
	ldptr.d	$a0, $fp, 2072
	sub.d	$a3, $a1, $a0
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 196
	bgeu	$a3, $a2, .LBB38_188
.LBB38_186:
	addi.d	$a0, $s0, 25
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $sp, 196
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 1160
	b	.LBB38_191
.LBB38_187:
	move	$a2, $zero
	move	$a1, $a0
	sub.d	$a3, $a1, $a0
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 196
	bltu	$a3, $a2, .LBB38_186
.LBB38_188:
	bgeu	$a2, $a3, .LBB38_191
# %bb.189:
	alsl.d	$a0, $a2, $a0, 2
	beq	$a1, $a0, .LBB38_191
# %bb.190:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i328
	stptr.d	$a0, $fp, 2080
.LBB38_191:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit329
	ldptr.d	$a1, $fp, 2104
	ldptr.d	$a0, $fp, 2096
	sub.d	$a3, $a1, $a0
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 196
	bgeu	$a3, $a2, .LBB38_193
# %bb.192:
	addi.d	$a0, $s0, 49
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $sp, 196
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 1160
	b	.LBB38_196
.LBB38_193:
	bgeu	$a2, $a3, .LBB38_196
# %bb.194:
	alsl.d	$a0, $a2, $a0, 2
	beq	$a1, $a0, .LBB38_196
# %bb.195:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i331
	stptr.d	$a0, $fp, 2104
.LBB38_196:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit332
	ldptr.d	$a1, $fp, 2128
	ldptr.d	$a0, $fp, 2120
	addi.d	$s5, $s0, 73
	sub.d	$a3, $a1, $a0
	srai.d	$a3, $a3, 2
	st.w	$s2, $sp, 196
	bgeu	$a3, $a2, .LBB38_198
# %bb.197:
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $sp, 196
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	b	.LBB38_201
.LBB38_198:
	bgeu	$a2, $a3, .LBB38_201
# %bb.199:
	alsl.d	$a0, $a2, $a0, 2
	beq	$a1, $a0, .LBB38_201
# %bb.200:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i334
	stptr.d	$a0, $fp, 2128
.LBB38_201:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit335
	ld.d	$a0, $fp, 1928
	ld.d	$a1, $fp, 1936
	beq	$a1, $a0, .LBB38_203
# %bb.202:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i337
	st.d	$a0, $fp, 1936
.LBB38_203:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit338
	ld.d	$a0, $fp, 1952
	ld.d	$a1, $fp, 1960
	beq	$a1, $a0, .LBB38_205
# %bb.204:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i340
	st.d	$a0, $fp, 1960
.LBB38_205:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit341
	ld.d	$a0, $fp, 1976
	ld.d	$a1, $fp, 1984
	beq	$a1, $a0, .LBB38_207
# %bb.206:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i343
	st.d	$a0, $fp, 1984
.LBB38_207:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit344
	ldptr.d	$a1, $fp, 2144
	ldptr.d	$a0, $fp, 2152
	beq	$a0, $a1, .LBB38_209
# %bb.208:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i346
	stptr.d	$a1, $fp, 2152
.LBB38_209:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit347
	ldptr.d	$a2, $fp, 2168
	ldptr.d	$a0, $fp, 2176
	beq	$a0, $a2, .LBB38_211
# %bb.210:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i349
	stptr.d	$a2, $fp, 2176
.LBB38_211:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit350
	ldptr.d	$a0, $fp, 2192
	ldptr.d	$a3, $fp, 2200
	beq	$a3, $a0, .LBB38_213
# %bb.212:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i352
	stptr.d	$a0, $fp, 2200
.LBB38_213:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit353
	ldptr.d	$a0, $fp, 2216
	ldptr.d	$a3, $fp, 2224
	beq	$a3, $a0, .LBB38_215
# %bb.214:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i355
	stptr.d	$a0, $fp, 2224
.LBB38_215:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit356
	ld.wu	$a3, $fp, 1120
	addi.d	$a0, $s0, 97
	addi.d	$a4, $a3, 1
	ori	$a3, $zero, 0
	lu32i.d	$a3, 1
	and	$a3, $a4, $a3
	st.w	$s4, $sp, 196
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$a3, .LBB38_217
# %bb.216:
	move	$a0, $zero
	move	$a1, $a2
	b	.LBB38_218
.LBB38_217:
	addi.w	$a2, $a4, 0
	addi.d	$a3, $sp, 196
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	ldptr.d	$a1, $fp, 2176
	ldptr.d	$a2, $fp, 2168
	addi.w	$a0, $a0, 1
.LBB38_218:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit359
	addi.d	$s2, $s0, 121
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s3, $sp, 196
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	bgeu	$a3, $a0, .LBB38_220
# %bb.219:
	sub.d	$a2, $a0, $a3
	addi.d	$a3, $sp, 196
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	addi.w	$a0, $a0, 1
	b	.LBB38_223
.LBB38_220:
	bgeu	$a0, $a3, .LBB38_223
# %bb.221:
	alsl.d	$a2, $a0, $a2, 2
	beq	$a1, $a2, .LBB38_223
# %bb.222:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i361
	stptr.d	$a2, $fp, 2176
.LBB38_223:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit362
	ldptr.d	$a1, $fp, 2200
	ldptr.d	$a2, $fp, 2192
	addi.d	$s5, $s0, 145
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s4, $sp, 196
	bgeu	$a3, $a0, .LBB38_225
# %bb.224:
	sub.d	$a2, $a0, $a3
	addi.d	$a3, $sp, 196
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1120
	addi.w	$a0, $a0, 1
	b	.LBB38_228
.LBB38_225:
	bgeu	$a0, $a3, .LBB38_228
# %bb.226:
	alsl.d	$a2, $a0, $a2, 2
	beq	$a1, $a2, .LBB38_228
# %bb.227:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i364
	stptr.d	$a2, $fp, 2200
.LBB38_228:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit365
	ldptr.d	$a1, $fp, 2224
	ldptr.d	$a2, $fp, 2216
	addi.d	$s4, $s0, 169
	sub.d	$a3, $a1, $a2
	srai.d	$a3, $a3, 2
	st.w	$s3, $sp, 196
	bgeu	$a3, $a0, .LBB38_230
# %bb.229:
	sub.d	$a2, $a0, $a3
	addi.d	$a3, $sp, 196
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
	b	.LBB38_233
.LBB38_230:
	bgeu	$a0, $a3, .LBB38_233
# %bb.231:
	alsl.d	$a0, $a0, $a2, 2
	beq	$a1, $a0, .LBB38_233
# %bb.232:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i367
	stptr.d	$a0, $fp, 2224
.LBB38_233:                             # %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit368
	ldptr.d	$a0, $fp, 2240
	ldptr.d	$a1, $fp, 2248
	beq	$a1, $a0, .LBB38_235
# %bb.234:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i370
	stptr.d	$a0, $fp, 2248
.LBB38_235:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit371
	ld.wu	$a0, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	addi.d	$a2, $s0, 193
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	bnez	$a1, .LBB38_237
# %bb.236:
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB38_237:                             # %_ZNSt6vectorIiSaIiEE6resizeEm.exit374
	ldptr.d	$a0, $fp, 2264
	ldptr.d	$a1, $fp, 2272
	beq	$a1, $a0, .LBB38_239
# %bb.238:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i376
	stptr.d	$a0, $fp, 2272
.LBB38_239:                             # %_ZNSt6vectorIiSaIiEE5clearEv.exit377
	ld.wu	$a0, $fp, 1120
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	addi.d	$a2, $s0, 217
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bnez	$a1, .LBB38_241
# %bb.240:
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.LBB38_241:                             # %_ZNSt6vectorIiSaIiEE6resizeEm.exit380
	ld.w	$a0, $fp, 1160
	blez	$a0, .LBB38_343
# %bb.242:                              # %.lr.ph605
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $zero
	move	$a1, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB38_245
	.p2align	4, , 16
.LBB38_243:                             #   in Loop: Header=BB38_245 Depth=1
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
.LBB38_244:                             #   in Loop: Header=BB38_245 Depth=1
	ld.d	$t4, $fp, 1160
	addi.d	$s2, $s2, 1
	addi.w	$a2, $t4, 0
	addi.d	$a1, $a1, 1
	addi.d	$s0, $s0, 4
	bge	$s2, $a2, .LBB38_333
.LBB38_245:                             # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 1392
	ldx.wu	$s8, $a0, $s0
	beq	$s2, $s8, .LBB38_244
# %bb.246:                              #   in Loop: Header=BB38_245 Depth=1
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 1352
	addi.w	$a0, $s8, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	slli.d	$s7, $a0, 2
	ldx.w	$a0, $a1, $s7
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 2008
	ld.d	$a2, $fp, 2016
	ldx.w	$a1, $a1, $s0
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	beq	$a0, $a2, .LBB38_249
# %bb.247:                              #   in Loop: Header=BB38_245 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 2008
	ld.d	$a0, $fp, 2032
	ld.d	$a1, $fp, 2040
	beq	$a0, $a1, .LBB38_255
.LBB38_248:                             #   in Loop: Header=BB38_245 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 2032
	b	.LBB38_261
.LBB38_249:                             #   in Loop: Header=BB38_245 Depth=1
	ld.d	$s5, $fp, 2000
	sub.d	$s4, $a0, $s5
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB38_385
# %bb.250:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i382
                                        #   in Loop: Header=BB38_245 Depth=1
	srai.d	$a0, $s4, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	stx.w	$a0, $s6, $s4
	blt	$s4, $s1, .LBB38_252
# %bb.251:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_252:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i384
                                        #   in Loop: Header=BB38_245 Depth=1
	beqz	$s5, .LBB38_254
# %bb.253:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_254:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i386
                                        #   in Loop: Header=BB38_245 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, 4
	st.d	$s6, $fp, 2000
	st.d	$a0, $fp, 2008
	alsl.d	$a0, $s3, $s6, 2
	st.d	$a0, $fp, 2016
	ld.d	$a0, $fp, 2032
	ld.d	$a1, $fp, 2040
	bne	$a0, $a1, .LBB38_248
.LBB38_255:                             #   in Loop: Header=BB38_245 Depth=1
	ld.d	$s5, $fp, 2024
	sub.d	$s4, $a0, $s5
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB38_385
# %bb.256:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i389
                                        #   in Loop: Header=BB38_245 Depth=1
	srai.d	$a0, $s4, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	stx.w	$s8, $a0, $s4
	blt	$s4, $s1, .LBB38_258
# %bb.257:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_258:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i391
                                        #   in Loop: Header=BB38_245 Depth=1
	beqz	$s5, .LBB38_260
# %bb.259:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_260:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i393
                                        #   in Loop: Header=BB38_245 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, 4
	st.d	$s6, $fp, 2024
	st.d	$a0, $fp, 2032
	alsl.d	$a0, $s3, $s6, 2
	st.d	$a0, $fp, 2040
.LBB38_261:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit394
                                        #   in Loop: Header=BB38_245 Depth=1
	ld.d	$s6, $fp, 1352
	ldx.w	$a0, $s6, $s0
	ld.d	$a1, $fp, 1984
	ld.d	$a3, $fp, 1992
	ldx.w	$a2, $s6, $s7
	beq	$a1, $a3, .LBB38_263
# %bb.262:                              #   in Loop: Header=BB38_245 Depth=1
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $fp, 1984
	b	.LBB38_269
.LBB38_263:                             #   in Loop: Header=BB38_245 Depth=1
	ld.d	$s5, $fp, 1976
	sub.d	$s4, $a1, $s5
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a1, .LBB38_385
# %bb.264:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i396
                                        #   in Loop: Header=BB38_245 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s6, 2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	slt	$s3, $a2, $a0
	srai.d	$a0, $s4, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s8, $a1, $a0
	slli.d	$a0, $s8, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	add.d	$a1, $s6, $s0
	maskeqz	$a1, $a1, $s3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	masknez	$a2, $a2, $s3
	or	$a1, $a1, $a2
	ld.w	$a1, $a1, 0
	move	$s6, $a0
	stx.w	$a1, $a0, $s4
	blt	$s4, $s1, .LBB38_266
# %bb.265:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_266:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i398
                                        #   in Loop: Header=BB38_245 Depth=1
	beqz	$s5, .LBB38_268
# %bb.267:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_268:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i400
                                        #   in Loop: Header=BB38_245 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, 4
	st.d	$s6, $fp, 1976
	st.d	$a0, $fp, 1984
	alsl.d	$a0, $s8, $s6, 2
	st.d	$a0, $fp, 1992
.LBB38_269:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit401
                                        #   in Loop: Header=BB38_245 Depth=1
	ld.d	$a0, $fp, 1336
	ldx.w	$a1, $a0, $s7
	ld.d	$a0, $fp, 1960
	ld.d	$a2, $fp, 1968
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	slt	$s1, $a3, $a4
	sll.w	$s8, $a1, $s1
	beq	$a0, $a2, .LBB38_271
# %bb.270:                              #   in Loop: Header=BB38_245 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1960
	b	.LBB38_277
.LBB38_271:                             #   in Loop: Header=BB38_245 Depth=1
	ld.d	$s5, $fp, 1952
	sub.d	$s4, $a0, $s5
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB38_385
# %bb.272:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i403
                                        #   in Loop: Header=BB38_245 Depth=1
	srai.d	$a0, $s4, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	stx.w	$s8, $a0, $s4
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB38_274
# %bb.273:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_274:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i405
                                        #   in Loop: Header=BB38_245 Depth=1
	beqz	$s5, .LBB38_276
# %bb.275:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_276:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i407
                                        #   in Loop: Header=BB38_245 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, 4
	st.d	$s6, $fp, 1952
	st.d	$a0, $fp, 1960
	alsl.d	$a0, $s3, $s6, 2
	st.d	$a0, $fp, 1968
.LBB38_277:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit408
                                        #   in Loop: Header=BB38_245 Depth=1
	ld.d	$a0, $fp, 1352
	ldx.w	$a2, $a0, $s7
	ldx.w	$a0, $a0, $s0
	ld.d	$a1, $fp, 1328
	bge	$a2, $a0, .LBB38_281
# %bb.278:                              #   in Loop: Header=BB38_245 Depth=1
	ldx.wu	$a3, $a1, $s0
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a4, 32, 31
	ld.d	$a0, $fp, 1936
	ld.d	$a2, $fp, 1944
	and	$a3, $a3, $a4
	addi.w	$a3, $a3, 0
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB38_282
# %bb.279:                              #   in Loop: Header=BB38_245 Depth=1
	ldx.w	$a1, $a1, $s7
	sll.w	$a1, $a1, $s1
	addi.d	$s8, $a1, 1
	bne	$a0, $a2, .LBB38_283
# %bb.280:                              #   in Loop: Header=BB38_245 Depth=1
	ld.d	$s5, $fp, 1928
	sub.d	$s4, $a0, $s5
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bne	$s4, $a0, .LBB38_285
	b	.LBB38_385
	.p2align	4, , 16
.LBB38_281:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit408._crit_edge
                                        #   in Loop: Header=BB38_245 Depth=1
	ld.d	$a0, $fp, 1936
	ld.d	$a2, $fp, 1944
.LBB38_282:                             #   in Loop: Header=BB38_245 Depth=1
	ldx.w	$a1, $a1, $s7
	sll.w	$s8, $a1, $s1
	beq	$a0, $a2, .LBB38_284
.LBB38_283:                             #   in Loop: Header=BB38_245 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1936
	b	.LBB38_290
.LBB38_284:                             #   in Loop: Header=BB38_245 Depth=1
	ld.d	$s5, $fp, 1928
	sub.d	$s4, $a2, $s5
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB38_385
.LBB38_285:                             # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i417
                                        #   in Loop: Header=BB38_245 Depth=1
	srai.d	$a0, $s4, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	stx.w	$s8, $a0, $s4
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB38_287
# %bb.286:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_287:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i419
                                        #   in Loop: Header=BB38_245 Depth=1
	beqz	$s5, .LBB38_289
# %bb.288:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_289:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i421
                                        #   in Loop: Header=BB38_245 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, 4
	st.d	$s6, $fp, 1928
	st.d	$a0, $fp, 1936
	alsl.d	$a0, $s3, $s6, 2
	st.d	$a0, $fp, 1944
.LBB38_290:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit415
                                        #   in Loop: Header=BB38_245 Depth=1
	ldptr.d	$a0, $fp, 2096
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	stx.w	$a2, $a0, $s0
	ld.d	$a0, $fp, 1352
	ldx.w	$a1, $a0, $s7
	ldx.w	$a0, $a0, $s0
	addi.d	$s5, $a2, 1
	bge	$a0, $a1, .LBB38_243
# %bb.291:                              #   in Loop: Header=BB38_245 Depth=1
	ld.d	$a0, $fp, 1328
	ldx.bu	$a0, $a0, $s7
	andi	$a0, $a0, 1
	bnez	$a0, .LBB38_243
# %bb.292:                              #   in Loop: Header=BB38_245 Depth=1
	ld.d	$a0, $fp, 1376
	ldx.w	$s3, $a0, $s7
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB38_243
# %bb.293:                              #   in Loop: Header=BB38_245 Depth=1
	ld.d	$a0, $fp, 2008
	ld.d	$a1, $fp, 2016
	beq	$a0, $a1, .LBB38_296
# %bb.294:                              #   in Loop: Header=BB38_245 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 2008
	ld.d	$a0, $fp, 2032
	ld.d	$a1, $fp, 2040
	beq	$a0, $a1, .LBB38_302
.LBB38_295:                             #   in Loop: Header=BB38_245 Depth=1
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 2032
	b	.LBB38_308
.LBB38_296:                             #   in Loop: Header=BB38_245 Depth=1
	ld.d	$s7, $fp, 2000
	sub.d	$s4, $a0, $s7
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB38_385
# %bb.297:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i424
                                        #   in Loop: Header=BB38_245 Depth=1
	move	$s8, $s1
	srai.d	$a0, $s4, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	stx.w	$a0, $s6, $s4
	blt	$s4, $s1, .LBB38_299
# %bb.298:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_299:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i426
                                        #   in Loop: Header=BB38_245 Depth=1
	beqz	$s7, .LBB38_301
# %bb.300:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s7
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_301:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i428
                                        #   in Loop: Header=BB38_245 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, 4
	st.d	$s6, $fp, 2000
	st.d	$a0, $fp, 2008
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s6, 2
	st.d	$a0, $fp, 2016
	move	$s1, $s8
	ld.d	$a0, $fp, 2032
	ld.d	$a1, $fp, 2040
	bne	$a0, $a1, .LBB38_295
.LBB38_302:                             #   in Loop: Header=BB38_245 Depth=1
	ld.d	$s7, $fp, 2024
	sub.d	$s4, $a0, $s7
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB38_385
# %bb.303:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i431
                                        #   in Loop: Header=BB38_245 Depth=1
	move	$s8, $s1
	srai.d	$a0, $s4, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	stx.w	$s3, $a0, $s4
	blt	$s4, $s1, .LBB38_305
# %bb.304:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_305:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i433
                                        #   in Loop: Header=BB38_245 Depth=1
	beqz	$s7, .LBB38_307
# %bb.306:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s7
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_307:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i435
                                        #   in Loop: Header=BB38_245 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, 4
	st.d	$s6, $fp, 2024
	st.d	$a0, $fp, 2032
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s6, 2
	st.d	$a0, $fp, 2040
	move	$s1, $s8
.LBB38_308:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit436
                                        #   in Loop: Header=BB38_245 Depth=1
	ld.d	$s6, $fp, 1352
	ldx.w	$a0, $s6, $s0
	slli.d	$a4, $s3, 2
	ld.d	$a1, $fp, 1984
	ld.d	$a3, $fp, 1992
	ldx.w	$a2, $s6, $a4
	beq	$a1, $a3, .LBB38_310
# %bb.309:                              #   in Loop: Header=BB38_245 Depth=1
	slt	$a3, $a2, $a0
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a2
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $fp, 1984
	b	.LBB38_316
.LBB38_310:                             #   in Loop: Header=BB38_245 Depth=1
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s7, $fp, 1976
	sub.d	$s4, $a1, $s7
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a1, .LBB38_385
# %bb.311:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i438
                                        #   in Loop: Header=BB38_245 Depth=1
	alsl.d	$a1, $s3, $s6, 2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	slt	$s8, $a2, $a0
	srai.d	$a0, $s4, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	add.d	$a1, $s6, $s0
	maskeqz	$a1, $a1, $s8
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	masknez	$a2, $a2, $s8
	or	$a1, $a1, $a2
	ld.w	$a1, $a1, 0
	move	$s6, $a0
	stx.w	$a1, $a0, $s4
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB38_313
# %bb.312:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_313:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i440
                                        #   in Loop: Header=BB38_245 Depth=1
	beqz	$s7, .LBB38_315
# %bb.314:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s7
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_315:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i442
                                        #   in Loop: Header=BB38_245 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, 4
	st.d	$s6, $fp, 1976
	st.d	$a0, $fp, 1984
	alsl.d	$a0, $s3, $s6, 2
	st.d	$a0, $fp, 1992
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
.LBB38_316:                             # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit443
                                        #   in Loop: Header=BB38_245 Depth=1
	ld.d	$a0, $fp, 1336
	ldx.w	$a1, $a0, $a4
	ld.d	$a0, $fp, 1960
	ld.d	$a2, $fp, 1968
	sll.w	$s8, $a1, $s1
	beq	$a0, $a2, .LBB38_318
# %bb.317:                              #   in Loop: Header=BB38_245 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1960
	b	.LBB38_324
.LBB38_318:                             #   in Loop: Header=BB38_245 Depth=1
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s7, $fp, 1952
	sub.d	$s4, $a0, $s7
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB38_385
# %bb.319:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i445
                                        #   in Loop: Header=BB38_245 Depth=1
	srai.d	$a0, $s4, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	stx.w	$s8, $a0, $s4
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB38_321
# %bb.320:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_321:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i447
                                        #   in Loop: Header=BB38_245 Depth=1
	beqz	$s7, .LBB38_323
# %bb.322:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s7
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_323:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i449
                                        #   in Loop: Header=BB38_245 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, 4
	st.d	$s6, $fp, 1952
	st.d	$a0, $fp, 1960
	alsl.d	$a0, $s3, $s6, 2
	st.d	$a0, $fp, 1968
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
.LBB38_324:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit450
                                        #   in Loop: Header=BB38_245 Depth=1
	ld.d	$a0, $fp, 1328
	ldx.w	$a1, $a0, $a4
	ld.d	$a0, $fp, 1936
	ld.d	$a2, $fp, 1944
	sll.w	$s8, $a1, $s1
	beq	$a0, $a2, .LBB38_326
# %bb.325:                              #   in Loop: Header=BB38_245 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 1936
	b	.LBB38_332
.LBB38_326:                             #   in Loop: Header=BB38_245 Depth=1
	ld.d	$s7, $fp, 1928
	sub.d	$s4, $a0, $s7
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB38_385
# %bb.327:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i452
                                        #   in Loop: Header=BB38_245 Depth=1
	srai.d	$a0, $s4, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	stx.w	$s8, $a0, $s4
	blt	$s4, $s1, .LBB38_329
# %bb.328:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_329:                             # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i454
                                        #   in Loop: Header=BB38_245 Depth=1
	beqz	$s7, .LBB38_331
# %bb.330:                              #   in Loop: Header=BB38_245 Depth=1
	move	$a0, $s7
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_331:                             # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i456
                                        #   in Loop: Header=BB38_245 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, 4
	st.d	$s6, $fp, 1928
	st.d	$a0, $fp, 1936
	alsl.d	$a0, $s3, $s6, 2
	st.d	$a0, $fp, 1944
.LBB38_332:                             # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit457
                                        #   in Loop: Header=BB38_245 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	stx.w	$s5, $a0, $s0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	b	.LBB38_244
.LBB38_333:                             # %._crit_edge606
	addi.d	$a0, $fp, 1564
	ori	$a1, $zero, 1
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	st.w	$a3, $fp, 1564
	blt	$a2, $a1, .LBB38_361
# %bb.334:                              # %.lr.ph611
	move	$a2, $zero
	move	$a3, $zero
	ld.d	$a4, $fp, 1384
	ld.d	$a5, $fp, 1352
	ld.d	$a6, $fp, 1328
	ldptr.d	$a7, $fp, 2096
	ldptr.d	$t0, $fp, 2048
	ld.d	$t1, $fp, 1376
	ldptr.d	$t2, $fp, 2072
	ldptr.d	$t3, $fp, 2120
	bstrpick.d	$t4, $t4, 30, 0
	ori	$t5, $zero, 1
	bstrins.d	$t5, $t5, 32, 31
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	b	.LBB38_338
.LBB38_335:                             #   in Loop: Header=BB38_338 Depth=1
	alsl.d	$t6, $t7, $t3, 2
	move	$t7, $t0
.LBB38_336:                             # %.sink.split722
                                        #   in Loop: Header=BB38_338 Depth=1
	ld.w	$t6, $t6, 0
	stx.w	$t6, $t7, $a2
.LBB38_337:                             #   in Loop: Header=BB38_338 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	beq	$t4, $a3, .LBB38_344
.LBB38_338:                             # =>This Inner Loop Header: Depth=1
	ldx.wu	$t6, $a4, $a2
	beq	$a3, $t6, .LBB38_337
# %bb.339:                              #   in Loop: Header=BB38_338 Depth=1
	addi.w	$t7, $t6, 0
	slli.d	$t6, $t7, 2
	ldx.w	$t8, $a5, $t6
	ldx.w	$s0, $a5, $a2
	bge	$t8, $s0, .LBB38_341
# %bb.340:                              #   in Loop: Header=BB38_338 Depth=1
	ldx.wu	$t8, $a6, $a2
	and	$t8, $t8, $t5
	addi.w	$t8, $t8, 0
	beq	$t8, $a1, .LBB38_335
.LBB38_341:                             #   in Loop: Header=BB38_338 Depth=1
	ldx.w	$t8, $a7, $t6
	alsl.d	$t7, $t7, $a5, 2
	stx.w	$t8, $t0, $a2
	ld.w	$t7, $t7, 0
	ldx.w	$t8, $a5, $a2
	bge	$t8, $t7, .LBB38_337
# %bb.342:                              #   in Loop: Header=BB38_338 Depth=1
	ldx.w	$t6, $t1, $t6
	alsl.d	$t6, $t6, $a7, 2
	move	$t7, $t2
	b	.LBB38_336
.LBB38_343:                             # %._crit_edge606.thread
	addi.d	$a0, $fp, 1564
	st.w	$zero, $fp, 1564
.LBB38_344:                             # %.preheader537
	ld.w	$a1, $s1, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB38_362
.LBB38_345:                             # %.lr.ph613
	ld.d	$a1, $fp, 1616
	ld.d	$a2, $fp, 1568
	ld.d	$a3, $fp, 1784
	ld.d	$a4, $fp, 1808
	ld.d	$a5, $fp, 1592
	ld.d	$a6, $fp, 1832
	ld.d	$t0, $fp, 1856
	move	$t1, $zero
	b	.LBB38_347
	.p2align	4, , 16
.LBB38_346:                             #   in Loop: Header=BB38_347 Depth=1
	ld.w	$a7, $s1, 0
	addi.d	$t1, $t1, 1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	bge	$t1, $a7, .LBB38_355
.LBB38_347:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a1, 0
	ld.w	$t3, $a2, 0
	slli.d	$t2, $a7, 2
	ldx.w	$t4, $a3, $t2
	bge	$t3, $t4, .LBB38_351
# %bb.348:                              #   in Loop: Header=BB38_347 Depth=1
	alsl.d	$t4, $a7, $a3, 2
	st.w	$t3, $t4, 0
	ldx.w	$t4, $a4, $t2
	blt	$t4, $t3, .LBB38_352
.LBB38_349:                             #   in Loop: Header=BB38_347 Depth=1
	ld.w	$t3, $a5, 0
	ldx.w	$t4, $a6, $t2
	bge	$t3, $t4, .LBB38_353
.LBB38_350:                             #   in Loop: Header=BB38_347 Depth=1
	alsl.d	$t4, $a7, $a6, 2
	st.w	$t3, $t4, 0
	ldx.w	$t2, $t0, $t2
	bge	$t2, $t3, .LBB38_346
	b	.LBB38_354
	.p2align	4, , 16
.LBB38_351:                             #   in Loop: Header=BB38_347 Depth=1
	ldx.w	$t4, $a4, $t2
	bge	$t4, $t3, .LBB38_349
.LBB38_352:                             #   in Loop: Header=BB38_347 Depth=1
	alsl.d	$t4, $a7, $a4, 2
	st.w	$t3, $t4, 0
	ld.w	$t3, $a5, 0
	ldx.w	$t4, $a6, $t2
	blt	$t3, $t4, .LBB38_350
.LBB38_353:                             #   in Loop: Header=BB38_347 Depth=1
	ldx.w	$t2, $t0, $t2
	bge	$t2, $t3, .LBB38_346
.LBB38_354:                             #   in Loop: Header=BB38_347 Depth=1
	alsl.d	$a7, $a7, $t0, 2
	st.w	$t3, $a7, 0
	b	.LBB38_346
.LBB38_355:                             # %.preheader536
	ori	$a1, $zero, 1
	blt	$a7, $a1, .LBB38_362
# %bb.356:                              # %.lr.ph615
	ld.d	$a1, $fp, 1616
	ld.d	$a2, $fp, 1808
	ld.d	$a3, $fp, 1784
	ld.d	$a4, $fp, 1568
	ld.d	$a5, $fp, 1832
	ld.d	$a6, $fp, 1592
	move	$t0, $zero
	b	.LBB38_358
	.p2align	4, , 16
.LBB38_357:                             #   in Loop: Header=BB38_358 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 4
	addi.d	$a6, $a6, 4
	bge	$t0, $a7, .LBB38_362
.LBB38_358:                             # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a1, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t3, $a2, $t1
	ldx.w	$t2, $a3, $t1
	blt	$t3, $t2, .LBB38_357
# %bb.359:                              #   in Loop: Header=BB38_358 Depth=1
	ld.w	$a7, $a4, 0
	sub.d	$a7, $a7, $t2
	st.w	$a7, $a4, 0
	ldx.w	$a7, $a5, $t1
	ld.w	$t1, $a6, 0
	sub.d	$a7, $t1, $a7
	st.w	$a7, $a6, 0
	ld.w	$a7, $s1, 0
	b	.LBB38_357
.LBB38_360:
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 2000
	ld.d	$a1, $fp, 2008
	bne	$a1, $a0, .LBB38_173
	b	.LBB38_174
.LBB38_361:
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.w	$a1, $s1, 0
	ori	$a2, $zero, 1
	bge	$a1, $a2, .LBB38_345
.LBB38_362:                             # %.preheader535
	ld.w	$a1, $fp, 1120
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	bltz	$a1, .LBB38_365
# %bb.363:                              # %.lr.ph618
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	.p2align	4, , 16
.LBB38_364:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a1, 0
	st.w	$a7, $a2, 0
	ld.w	$a7, $a3, 0
	st.w	$a7, $a4, 0
	ld.w	$a7, $a1, 0
	ld.w	$t0, $a5, 0
	sub.d	$a7, $t0, $a7
	st.w	$a7, $a5, 0
	ld.w	$a7, $a3, 0
	ld.w	$t0, $a6, 0
	sub.d	$a7, $t0, $a7
	st.w	$a7, $a6, 0
	st.w	$zero, $a1, 0
	st.w	$zero, $a3, 0
	ld.w	$a7, $fp, 1120
	addi.d	$t1, $t1, 1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	blt	$t1, $a7, .LBB38_364
.LBB38_365:                             # %.preheader534
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB38_381
# %bb.366:                              # %.lr.ph620
	ld.d	$a1, $fp, 1976
	ld.d	$a2, $fp, 1928
	ldptr.d	$a3, $fp, 2144
	ldptr.d	$a4, $fp, 2168
	ld.d	$a5, $fp, 1952
	ldptr.d	$a6, $fp, 2192
	ldptr.d	$t0, $fp, 2216
	move	$t1, $zero
	b	.LBB38_368
	.p2align	4, , 16
.LBB38_367:                             #   in Loop: Header=BB38_368 Depth=1
	ld.w	$a7, $a0, 0
	addi.d	$t1, $t1, 1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	bge	$t1, $a7, .LBB38_376
.LBB38_368:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a1, 0
	ld.w	$t3, $a2, 0
	slli.d	$t2, $a7, 2
	ldx.w	$t4, $a3, $t2
	bge	$t3, $t4, .LBB38_372
# %bb.369:                              #   in Loop: Header=BB38_368 Depth=1
	alsl.d	$t4, $a7, $a3, 2
	st.w	$t3, $t4, 0
	ldx.w	$t4, $a4, $t2
	blt	$t4, $t3, .LBB38_373
.LBB38_370:                             #   in Loop: Header=BB38_368 Depth=1
	ld.w	$t3, $a5, 0
	ldx.w	$t4, $a6, $t2
	bge	$t3, $t4, .LBB38_374
.LBB38_371:                             #   in Loop: Header=BB38_368 Depth=1
	alsl.d	$t4, $a7, $a6, 2
	st.w	$t3, $t4, 0
	ldx.w	$t2, $t0, $t2
	bge	$t2, $t3, .LBB38_367
	b	.LBB38_375
	.p2align	4, , 16
.LBB38_372:                             #   in Loop: Header=BB38_368 Depth=1
	ldx.w	$t4, $a4, $t2
	bge	$t4, $t3, .LBB38_370
.LBB38_373:                             #   in Loop: Header=BB38_368 Depth=1
	alsl.d	$t4, $a7, $a4, 2
	st.w	$t3, $t4, 0
	ld.w	$t3, $a5, 0
	ldx.w	$t4, $a6, $t2
	blt	$t3, $t4, .LBB38_371
.LBB38_374:                             #   in Loop: Header=BB38_368 Depth=1
	ldx.w	$t2, $t0, $t2
	bge	$t2, $t3, .LBB38_367
.LBB38_375:                             #   in Loop: Header=BB38_368 Depth=1
	alsl.d	$a7, $a7, $t0, 2
	st.w	$t3, $a7, 0
	b	.LBB38_367
.LBB38_376:                             # %.preheader533
	ori	$a1, $zero, 1
	blt	$a7, $a1, .LBB38_381
# %bb.377:                              # %.lr.ph622
	ld.d	$a1, $fp, 1976
	ldptr.d	$a2, $fp, 2168
	ldptr.d	$a3, $fp, 2144
	ld.d	$a4, $fp, 1928
	ldptr.d	$a5, $fp, 2192
	ld.d	$a6, $fp, 1952
	move	$t0, $zero
	b	.LBB38_379
	.p2align	4, , 16
.LBB38_378:                             #   in Loop: Header=BB38_379 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 4
	addi.d	$a6, $a6, 4
	bge	$t0, $a7, .LBB38_381
.LBB38_379:                             # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a1, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t3, $a2, $t1
	ldx.w	$t2, $a3, $t1
	blt	$t3, $t2, .LBB38_378
# %bb.380:                              #   in Loop: Header=BB38_379 Depth=1
	ld.w	$a7, $a4, 0
	sub.d	$a7, $a7, $t2
	st.w	$a7, $a4, 0
	ldx.w	$a7, $a5, $t1
	ld.w	$t1, $a6, 0
	sub.d	$a7, $t1, $a7
	st.w	$a7, $a6, 0
	ld.w	$a7, $a0, 0
	b	.LBB38_378
.LBB38_381:                             # %.preheader
	ld.w	$a0, $fp, 1120
	bltz	$a0, .LBB38_384
# %bb.382:                              # %.lr.ph625
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $s5, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ld.d	$a4, $s2, 0
	ld.d	$a5, $s4, 0
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB38_383:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, 0
	st.w	$a7, $a1, 0
	ld.w	$a7, $a2, 0
	st.w	$a7, $a3, 0
	ld.w	$a7, $a0, 0
	ld.w	$t0, $a4, 0
	sub.d	$a7, $t0, $a7
	st.w	$a7, $a4, 0
	ld.w	$a7, $a2, 0
	ld.w	$t0, $a5, 0
	sub.d	$a7, $t0, $a7
	st.w	$a7, $a5, 0
	st.w	$zero, $a0, 0
	st.w	$zero, $a2, 0
	ld.w	$a7, $fp, 1120
	addi.d	$a6, $a6, 1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	blt	$a6, $a7, .LBB38_383
.LBB38_384:                             # %._crit_edge626
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
.LBB38_385:
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	_ZN4Mesh24calc_face_list_wbidirmapEv, .Lfunc_end38-_ZN4Mesh24calc_face_list_wbidirmapEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh14get_xface_flagEib     # -- Begin function _ZN4Mesh14get_xface_flagEib
	.p2align	5
	.type	_ZN4Mesh14get_xface_flagEib,@function
_ZN4Mesh14get_xface_flagEib:            # @_ZN4Mesh14get_xface_flagEib
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
	ld.d	$a0, $a0, 1856
	ld.d	$a3, $fp, 1808
	move	$s1, $a1
	slli.d	$s5, $a1, 2
	ldx.w	$a0, $a0, $s5
	ldx.w	$a1, $a3, $s5
	move	$s2, $a2
	addi.w	$a0, $a0, 1
	addi.w	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(.L.str.66)
	addi.d	$a3, $a2, %pc_lo12(.L.str.66)
	lu12i.w	$a2, 2
	ori	$a4, $a2, 1516
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(genmatrix_p)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 1856
	ldx.w	$a1, $a2, $s5
	move	$s0, $a0
	bltz	$a1, .LBB39_8
# %bb.1:                                # %.preheader52.lr.ph
	ld.d	$a4, $fp, 1808
	ldx.w	$a0, $a4, $s5
	bltz	$a0, .LBB39_8
# %bb.2:                                # %.preheader52.preheader
	move	$a7, $zero
	alsl.d	$a2, $s1, $a2, 2
	addi.w	$a3, $zero, -1
	alsl.d	$a4, $s1, $a4, 2
	move	$a5, $a3
	lu32i.d	$a5, 0
	b	.LBB39_4
	.p2align	4, , 16
.LBB39_3:                               # %._crit_edge
                                        #   in Loop: Header=BB39_4 Depth=1
	addi.d	$a7, $a6, 1
	bge	$a6, $a1, .LBB39_8
.LBB39_4:                               # %.preheader52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_6 Depth 2
	move	$a6, $a7
	bltz	$a0, .LBB39_3
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB39_4 Depth=1
	slli.d	$a0, $a6, 3
	ldx.d	$a1, $s0, $a0
	move	$a7, $a3
	.p2align	4, , 16
.LBB39_6:                               #   Parent Loop BB39_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a5, $a1, 0
	ld.w	$a0, $a4, 0
	addi.d	$a7, $a7, 1
	addi.d	$a1, $a1, 4
	blt	$a7, $a0, .LBB39_6
# %bb.7:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB39_4 Depth=1
	ld.w	$a1, $a2, 0
	b	.LBB39_3
.LBB39_8:                               # %.preheader
	ld.w	$a4, $fp, 1560
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB39_13
# %bb.9:                                # %.lr.ph58
	ld.d	$a1, $fp, 1616
	ld.d	$a2, $fp, 1568
	ld.d	$a3, $fp, 1592
	move	$a5, $zero
	b	.LBB39_11
	.p2align	4, , 16
.LBB39_10:                              #   in Loop: Header=BB39_11 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bge	$a5, $a4, .LBB39_13
.LBB39_11:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	bne	$a6, $s1, .LBB39_10
# %bb.12:                               #   in Loop: Header=BB39_11 Depth=1
	ld.w	$a4, $a3, 0
	ld.w	$a6, $a2, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s0, $a4
	slli.d	$a6, $a6, 2
	stx.w	$a0, $a4, $a6
	ld.w	$a4, $fp, 1560
	b	.LBB39_10
.LBB39_13:                              # %._crit_edge59
	beqz	$s2, .LBB39_26
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1808
	ld.d	$a1, $fp, 1856
	ldx.w	$a0, $a0, $s5
	ldx.w	$a2, $a1, $s5
	addi.w	$a1, $a0, 1
	addi.w	$a2, $a2, 1
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1808
	ldx.w	$a0, $a0, $s5
	bltz	$a0, .LBB39_17
# %bb.15:                               # %.lr.ph63.preheader
	addi.d	$s1, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$s2, $a0, %pc_lo12(.L.str.70)
	.p2align	4, , 16
.LBB39_16:                              # %.lr.ph63
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s1, $s1, 1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1808
	ldx.w	$a0, $a0, $s5
	blt	$s1, $a0, .LBB39_16
.LBB39_17:                              # %._crit_edge64
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1856
	ldx.w	$a0, $a0, $s5
	bltz	$a0, .LBB39_26
# %bb.18:
	pcalau12i	$a1, %pc_hi20(.L.str.72)
	addi.d	$s1, $a1, %pc_lo12(.L.str.72)
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$s2, $a1, %pc_lo12(.L.str.70)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$s3, $a1, %pc_lo12(.L.str.73)
	b	.LBB39_20
	.p2align	4, , 16
.LBB39_19:                              # %._crit_edge69
                                        #   in Loop: Header=BB39_20 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, -1
	blez	$s4, .LBB39_26
.LBB39_20:                              # %.lr.ph72
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_24 Depth 2
	move	$s4, $a0
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1808
	ldx.w	$a0, $a0, $s5
	bltz	$a0, .LBB39_19
# %bb.21:                               # %.lr.ph68
                                        #   in Loop: Header=BB39_20 Depth=1
	move	$s7, $zero
	alsl.d	$s8, $s4, $s0, 3
	ld.d	$s6, $sp, 0                     # 8-byte Folded Reload
	b	.LBB39_24
	.p2align	4, , 16
.LBB39_22:                              #   in Loop: Header=BB39_24 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB39_23:                              #   in Loop: Header=BB39_24 Depth=2
	ld.d	$a0, $fp, 1808
	ldx.w	$a0, $a0, $s5
	addi.d	$s6, $s6, 1
	addi.d	$s7, $s7, 4
	bge	$s6, $a0, .LBB39_19
.LBB39_24:                              #   Parent Loop BB39_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 0
	ldx.w	$a1, $a0, $s7
	bgez	$a1, .LBB39_22
# %bb.25:                               #   in Loop: Header=BB39_24 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB39_23
.LBB39_26:                              # %.loopexit
	move	$a0, $s0
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
.Lfunc_end39:
	.size	_ZN4Mesh14get_xface_flagEib, .Lfunc_end39-_ZN4Mesh14get_xface_flagEib
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh14get_yface_flagEib     # -- Begin function _ZN4Mesh14get_yface_flagEib
	.p2align	5
	.type	_ZN4Mesh14get_yface_flagEib,@function
_ZN4Mesh14get_yface_flagEib:            # @_ZN4Mesh14get_yface_flagEib
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
	ldptr.d	$a0, $a0, 2216
	ldptr.d	$a3, $fp, 2168
	move	$s1, $a1
	slli.d	$s5, $a1, 2
	ldx.w	$a0, $a0, $s5
	ldx.w	$a1, $a3, $s5
	move	$s2, $a2
	addi.w	$a0, $a0, 1
	addi.w	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(.L.str.66)
	addi.d	$a3, $a2, %pc_lo12(.L.str.66)
	lu12i.w	$a2, 2
	ori	$a4, $a2, 1563
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(genmatrix_p)
	jirl	$ra, $ra, 0
	ldptr.d	$a2, $fp, 2216
	ldx.w	$a1, $a2, $s5
	move	$s0, $a0
	bltz	$a1, .LBB40_8
# %bb.1:                                # %.preheader52.lr.ph
	ldptr.d	$a4, $fp, 2168
	ldx.w	$a0, $a4, $s5
	bltz	$a0, .LBB40_8
# %bb.2:                                # %.preheader52.preheader
	move	$a7, $zero
	alsl.d	$a2, $s1, $a2, 2
	addi.w	$a3, $zero, -1
	alsl.d	$a4, $s1, $a4, 2
	move	$a5, $a3
	lu32i.d	$a5, 0
	b	.LBB40_4
	.p2align	4, , 16
.LBB40_3:                               # %._crit_edge
                                        #   in Loop: Header=BB40_4 Depth=1
	addi.d	$a7, $a6, 1
	bge	$a6, $a1, .LBB40_8
.LBB40_4:                               # %.preheader52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_6 Depth 2
	move	$a6, $a7
	bltz	$a0, .LBB40_3
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB40_4 Depth=1
	slli.d	$a0, $a6, 3
	ldx.d	$a1, $s0, $a0
	move	$a7, $a3
	.p2align	4, , 16
.LBB40_6:                               #   Parent Loop BB40_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a5, $a1, 0
	ld.w	$a0, $a4, 0
	addi.d	$a7, $a7, 1
	addi.d	$a1, $a1, 4
	blt	$a7, $a0, .LBB40_6
# %bb.7:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB40_4 Depth=1
	ld.w	$a1, $a2, 0
	b	.LBB40_3
.LBB40_8:                               # %.preheader
	ld.w	$a4, $fp, 1564
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB40_13
# %bb.9:                                # %.lr.ph58
	ld.d	$a1, $fp, 1976
	ld.d	$a2, $fp, 1928
	ld.d	$a3, $fp, 1952
	move	$a5, $zero
	b	.LBB40_11
	.p2align	4, , 16
.LBB40_10:                              #   in Loop: Header=BB40_11 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bge	$a5, $a4, .LBB40_13
.LBB40_11:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	bne	$a6, $s1, .LBB40_10
# %bb.12:                               #   in Loop: Header=BB40_11 Depth=1
	ld.w	$a4, $a3, 0
	ld.w	$a6, $a2, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s0, $a4
	slli.d	$a6, $a6, 2
	stx.w	$a0, $a4, $a6
	ld.w	$a4, $fp, 1564
	b	.LBB40_10
.LBB40_13:                              # %._crit_edge59
	beqz	$s2, .LBB40_26
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2168
	ldptr.d	$a1, $fp, 2216
	ldx.w	$a0, $a0, $s5
	ldx.w	$a2, $a1, $s5
	addi.w	$a1, $a0, 1
	addi.w	$a2, $a2, 1
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2168
	ldx.w	$a0, $a0, $s5
	bltz	$a0, .LBB40_17
# %bb.15:                               # %.lr.ph63.preheader
	addi.d	$s1, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$s2, $a0, %pc_lo12(.L.str.70)
	.p2align	4, , 16
.LBB40_16:                              # %.lr.ph63
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s1, $s1, 1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2168
	ldx.w	$a0, $a0, $s5
	blt	$s1, $a0, .LBB40_16
.LBB40_17:                              # %._crit_edge64
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2216
	ldx.w	$a0, $a0, $s5
	bltz	$a0, .LBB40_26
# %bb.18:
	pcalau12i	$a1, %pc_hi20(.L.str.72)
	addi.d	$s1, $a1, %pc_lo12(.L.str.72)
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$s2, $a1, %pc_lo12(.L.str.70)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$s3, $a1, %pc_lo12(.L.str.73)
	b	.LBB40_20
	.p2align	4, , 16
.LBB40_19:                              # %._crit_edge69
                                        #   in Loop: Header=BB40_20 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, -1
	blez	$s4, .LBB40_26
.LBB40_20:                              # %.lr.ph72
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_24 Depth 2
	move	$s4, $a0
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 2168
	ldx.w	$a0, $a0, $s5
	bltz	$a0, .LBB40_19
# %bb.21:                               # %.lr.ph68
                                        #   in Loop: Header=BB40_20 Depth=1
	move	$s7, $zero
	alsl.d	$s8, $s4, $s0, 3
	ld.d	$s6, $sp, 0                     # 8-byte Folded Reload
	b	.LBB40_24
	.p2align	4, , 16
.LBB40_22:                              #   in Loop: Header=BB40_24 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB40_23:                              #   in Loop: Header=BB40_24 Depth=2
	ldptr.d	$a0, $fp, 2168
	ldx.w	$a0, $a0, $s5
	addi.d	$s6, $s6, 1
	addi.d	$s7, $s7, 4
	bge	$s6, $a0, .LBB40_19
.LBB40_24:                              #   Parent Loop BB40_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 0
	ldx.w	$a1, $a0, $s7
	bgez	$a1, .LBB40_22
# %bb.25:                               #   in Loop: Header=BB40_24 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB40_23
.LBB40_26:                              # %.loopexit
	move	$a0, $s0
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
.Lfunc_end40:
	.size	_ZN4Mesh14get_yface_flagEib, .Lfunc_end40-_ZN4Mesh14get_yface_flagEib
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh13get_flat_gridEiPPPiS2_ # -- Begin function _ZN4Mesh13get_flat_gridEiPPPiS2_
	.p2align	5
	.type	_ZN4Mesh13get_flat_gridEiPPPiS2_,@function
_ZN4Mesh13get_flat_gridEiPPPiS2_:       # @_ZN4Mesh13get_flat_gridEiPPPiS2_
	.cfi_startproc
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
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $a2
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $a0, 1808
	slli.d	$a1, $a1, 2
	ldptr.d	$a2, $s0, 2216
	ld.d	$a3, $s0, 1880
	ldptr.d	$a4, $s0, 2264
	ldx.w	$s8, $a0, $a1
	ldx.w	$s1, $a2, $a1
	ldx.w	$a0, $a3, $a1
	ldx.w	$a1, $a4, $a1
	addi.w	$s2, $s8, 4
	addi.w	$s4, $s1, 4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s6, $a0, -2
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	addi.d	$s7, $a1, -2
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a3, $a0, %pc_lo12(.L.str.66)
	lu12i.w	$a0, 2
	ori	$a4, $a0, 1618
	ori	$a2, $zero, 4
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(genmatrix_p)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$a0, $zero, -3
	st.d	$s3, $s5, 0
	blt	$s1, $a0, .LBB41_7
# %bb.1:
	blt	$s8, $a0, .LBB41_7
# %bb.2:                                # %.preheader213.us.preheader
	slli.d	$s5, $s2, 2
	move	$s8, $s4
	move	$s1, $s3
	.p2align	4, , 16
.LBB41_3:                               # %.preheader213.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ori	$a1, $zero, 255
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, -1
	addi.d	$s1, $s1, 8
	bnez	$s8, .LBB41_3
# %bb.4:                                # %.preheader212.us.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a3, $a0, %pc_lo12(.L.str.66)
	lu12i.w	$a0, 2
	ori	$a4, $a0, 1627
	ori	$a2, $zero, 4
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(genmatrix_p)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$s2, $a0, 0
	slli.d	$s4, $s4, 3
	.p2align	4, , 16
.LBB41_5:                               # %.preheader212.us
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s2, $s1
	ori	$a1, $zero, 255
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	bne	$s4, $s1, .LBB41_5
# %bb.6:                                # %.preheader211
	ld.w	$a2, $s0, 1560
	ori	$a1, $zero, 1
	ori	$a0, $zero, 2
	bge	$a2, $a1, .LBB41_8
	b	.LBB41_20
.LBB41_7:                               # %.preheader211.sink.split
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a3, $a0, %pc_lo12(.L.str.66)
	lu12i.w	$a0, 2
	ori	$a4, $a0, 1627
	ori	$a2, $zero, 4
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(genmatrix_p)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$s2, $a0, 0
	ld.w	$a2, $s0, 1560
	ori	$a1, $zero, 1
	ori	$a0, $zero, 2
	blt	$a2, $a1, .LBB41_20
.LBB41_8:                               # %.lr.ph
	ld.d	$a2, $s0, 1616
	ld.d	$a3, $s0, 1640
	ld.d	$a4, $s0, 1664
	ld.d	$a5, $s0, 1352
	ld.d	$a6, $s0, 1328
	ld.d	$a7, $s0, 1336
	ld.d	$t0, $s0, 1368
	ld.d	$t1, $s0, 1376
	move	$t2, $zero
	ld.d	$t3, $sp, 0                     # 8-byte Folded Reload
	sub.w	$t3, $a0, $t3
	b	.LBB41_12
	.p2align	4, , 16
.LBB41_9:                               #   in Loop: Header=BB41_12 Depth=1
	ldx.w	$t6, $a7, $t6
	slli.d	$t7, $t7, 1
	ldx.wu	$t5, $a7, $t5
	alsl.d	$t6, $t6, $t3, 1
	ori	$t8, $zero, 1
	bstrins.d	$t8, $t8, 32, 31
	and	$t5, $t5, $t8
	addi.w	$t5, $t5, 0
	addi.d	$t5, $t5, -1
	sltui	$t5, $t5, 1
	add.w	$t5, $t6, $t5
	slli.d	$t5, $t5, 3
	ldx.d	$t6, $s3, $t5
	ldx.d	$t8, $s2, $t5
	sub.w	$t5, $t7, $s6
	slli.d	$t7, $t5, 2
	stx.w	$a1, $t6, $t7
	alsl.d	$t5, $t5, $t8, 2
	stx.w	$t4, $t8, $t7
.LBB41_10:                              # %.sink.split
                                        #   in Loop: Header=BB41_12 Depth=1
	st.w	$t4, $t5, 4
.LBB41_11:                              #   in Loop: Header=BB41_12 Depth=1
	ld.w	$t4, $s0, 1560
	addi.d	$t2, $t2, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	bge	$t2, $t4, .LBB41_20
.LBB41_12:                              # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $a2, 0
	bne	$t4, $fp, .LBB41_11
# %bb.13:                               #   in Loop: Header=BB41_12 Depth=1
	ld.w	$t6, $a3, 0
	ld.w	$t4, $a4, 0
	slli.d	$t5, $t6, 2
	ldx.w	$t8, $a5, $t5
	ldx.w	$t7, $a6, $t5
	bne	$fp, $t8, .LBB41_16
# %bb.14:                               #   in Loop: Header=BB41_12 Depth=1
	ldx.w	$t8, $a7, $t5
	sub.w	$t8, $t8, $s7
	slli.d	$t8, $t8, 3
	ldx.d	$s1, $s3, $t8
	ldx.d	$t8, $s2, $t8
	sub.w	$t7, $t7, $s6
	slli.d	$s4, $t7, 2
	stx.w	$a1, $s1, $s4
	stx.w	$t6, $t8, $s4
	ldx.w	$t6, $t0, $t5
	beq	$t6, $a1, .LBB41_17
# %bb.15:                               #   in Loop: Header=BB41_12 Depth=1
	alsl.d	$t7, $t7, $t8, 2
	st.w	$t6, $t7, -4
	b	.LBB41_17
	.p2align	4, , 16
.LBB41_16:                              #   in Loop: Header=BB41_12 Depth=1
	slli.d	$t7, $t7, 1
	ldx.w	$t8, $a7, $t5
	sub.w	$t7, $t7, $s6
	slli.d	$s1, $t4, 2
	ldx.wu	$s1, $a7, $s1
	alsl.d	$t8, $t8, $t3, 1
	ori	$s4, $zero, 1
	bstrins.d	$s4, $s4, 32, 31
	and	$s1, $s1, $s4
	addi.w	$s1, $s1, 0
	addi.d	$s1, $s1, -1
	sltui	$s1, $s1, 1
	add.w	$t8, $t8, $s1
	slli.d	$t8, $t8, 3
	ldx.d	$s1, $s3, $t8
	ldx.d	$t8, $s2, $t8
	slli.d	$t7, $t7, 2
	addi.d	$s4, $t7, 4
	stx.w	$a1, $s1, $s4
	stx.w	$t6, $t8, $s4
	stx.w	$t6, $t8, $t7
.LBB41_17:                              #   in Loop: Header=BB41_12 Depth=1
	slli.d	$t6, $t4, 2
	ldx.w	$t8, $a5, $t6
	ldx.w	$t7, $a6, $t6
	bne	$fp, $t8, .LBB41_9
# %bb.18:                               #   in Loop: Header=BB41_12 Depth=1
	ldx.w	$t5, $a7, $t6
	sub.w	$t5, $t5, $s7
	slli.d	$t5, $t5, 3
	ldx.d	$t8, $s3, $t5
	ldx.d	$t5, $s2, $t5
	sub.w	$t7, $t7, $s6
	slli.d	$s1, $t7, 2
	stx.w	$a1, $t8, $s1
	stx.w	$t4, $t5, $s1
	ldx.w	$t4, $t1, $t6
	beq	$t4, $a1, .LBB41_11
# %bb.19:                               #   in Loop: Header=BB41_12 Depth=1
	alsl.d	$t5, $t7, $t5, 2
	b	.LBB41_10
.LBB41_20:                              # %.preheader
	ld.w	$a2, $s0, 1564
	blt	$a2, $a1, .LBB41_33
# %bb.21:                               # %.lr.ph222
	move	$a1, $zero
	ld.d	$a2, $s0, 1976
	ld.d	$a3, $s0, 2000
	ld.d	$a4, $s0, 2024
	ld.d	$a5, $s0, 1352
	ld.d	$a6, $s0, 1328
	ld.d	$a7, $s0, 1336
	ld.d	$t0, $s0, 1384
	ld.d	$t1, $s0, 1392
	ld.d	$t2, $sp, 8                     # 8-byte Folded Reload
	sub.w	$a0, $a0, $t2
	addi.d	$t2, $s2, 8
	ori	$t3, $zero, 1
	b	.LBB41_25
	.p2align	4, , 16
.LBB41_22:                              #   in Loop: Header=BB41_25 Depth=1
	ldx.w	$t7, $a7, $t7
	alsl.d	$t6, $t6, $a0, 1
	slli.d	$t7, $t7, 1
	ldx.wu	$t8, $a6, $t5
	sub.w	$t5, $t7, $s7
	ori	$t7, $zero, 1
	bstrins.d	$t7, $t7, 32, 31
	and	$t7, $t8, $t7
	addi.w	$t7, $t7, 0
	addi.d	$t7, $t7, -1
	sltui	$t7, $t7, 1
	slli.d	$t8, $t5, 3
	ldx.d	$s1, $s3, $t8
	ldx.d	$t8, $s2, $t8
	add.w	$t6, $t6, $t7
	slli.d	$t7, $t6, 2
	stx.w	$t3, $s1, $t7
	stx.w	$t4, $t8, $t7
.LBB41_23:                              # %.sink.split237
                                        #   in Loop: Header=BB41_25 Depth=1
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $t2, $t5
	slli.d	$t6, $t6, 2
	stx.w	$t4, $t5, $t6
.LBB41_24:                              #   in Loop: Header=BB41_25 Depth=1
	ld.w	$t4, $s0, 1564
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	bge	$a1, $t4, .LBB41_33
.LBB41_25:                              # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $a2, 0
	bne	$t4, $fp, .LBB41_24
# %bb.26:                               #   in Loop: Header=BB41_25 Depth=1
	ld.w	$t6, $a3, 0
	ld.w	$t4, $a4, 0
	slli.d	$t5, $t6, 2
	ldx.w	$t8, $a5, $t5
	ldx.w	$t7, $a6, $t5
	bne	$fp, $t8, .LBB41_29
# %bb.27:                               #   in Loop: Header=BB41_25 Depth=1
	ldx.w	$t8, $a7, $t5
	sub.w	$t8, $t8, $s7
	slli.d	$s1, $t8, 3
	ldx.d	$s4, $s3, $s1
	ldx.d	$s1, $s2, $s1
	sub.w	$t7, $t7, $s6
	slli.d	$t7, $t7, 2
	stx.w	$t3, $s4, $t7
	stx.w	$t6, $s1, $t7
	ldx.w	$t6, $t0, $t5
	beq	$t6, $t3, .LBB41_31
# %bb.28:                               #   in Loop: Header=BB41_25 Depth=1
	alsl.d	$t8, $t8, $s2, 3
	ld.d	$t8, $t8, -8
	b	.LBB41_30
	.p2align	4, , 16
.LBB41_29:                              #   in Loop: Header=BB41_25 Depth=1
	ldx.w	$t8, $a7, $t5
	alsl.d	$t7, $t7, $a0, 1
	slli.d	$t8, $t8, 1
	slli.d	$s1, $t4, 2
	ldx.wu	$s1, $a6, $s1
	sub.w	$t8, $t8, $s7
	ori	$s4, $zero, 1
	bstrins.d	$s4, $s4, 32, 31
	and	$s1, $s1, $s4
	addi.w	$s1, $s1, 0
	addi.d	$s1, $s1, -1
	sltui	$s1, $s1, 1
	add.w	$t7, $t7, $s1
	slli.d	$t8, $t8, 3
	addi.d	$s1, $t8, 8
	ldx.d	$s4, $s3, $s1
	ldx.d	$s1, $s2, $s1
	ldx.d	$t8, $s2, $t8
	slli.d	$t7, $t7, 2
	stx.w	$t3, $s4, $t7
	stx.w	$t6, $s1, $t7
.LBB41_30:                              #   in Loop: Header=BB41_25 Depth=1
	stx.w	$t6, $t8, $t7
.LBB41_31:                              #   in Loop: Header=BB41_25 Depth=1
	slli.d	$t7, $t4, 2
	ldx.w	$t8, $a5, $t7
	ldx.w	$t6, $a6, $t7
	bne	$fp, $t8, .LBB41_22
# %bb.32:                               #   in Loop: Header=BB41_25 Depth=1
	ldx.w	$t5, $a7, $t7
	sub.w	$t5, $t5, $s7
	slli.d	$t8, $t5, 3
	ldx.d	$s1, $s3, $t8
	ldx.d	$t8, $s2, $t8
	sub.w	$t6, $t6, $s6
	slli.d	$s4, $t6, 2
	stx.w	$t3, $s1, $s4
	stx.w	$t4, $t8, $s4
	ldx.w	$t4, $t1, $t7
	bne	$t4, $t3, .LBB41_23
	b	.LBB41_24
.LBB41_33:                              # %._crit_edge
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
.Lfunc_end41:
	.size	_ZN4Mesh13get_flat_gridEiPPPiS2_, .Lfunc_end41-_ZN4Mesh13get_flat_gridEiPPPiS2_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh24calc_face_list_clearmapsEv # -- Begin function _ZN4Mesh24calc_face_list_clearmapsEv
	.p2align	5
	.type	_ZN4Mesh24calc_face_list_clearmapsEv,@function
_ZN4Mesh24calc_face_list_clearmapsEv:   # @_ZN4Mesh24calc_face_list_clearmapsEv
	.cfi_startproc
# %bb.0:
	ld.d	$a1, $a0, 1640
	ld.d	$a2, $a0, 1648
	beq	$a2, $a1, .LBB42_2
# %bb.1:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a1, $a0, 1648
.LBB42_2:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit
	ld.d	$a1, $a0, 1664
	ld.d	$a2, $a0, 1672
	beq	$a2, $a1, .LBB42_4
# %bb.3:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i2
	st.d	$a1, $a0, 1672
.LBB42_4:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit3
	ld.d	$a1, $a0, 1688
	ld.d	$a2, $a0, 1696
	beq	$a2, $a1, .LBB42_6
# %bb.5:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i5
	st.d	$a1, $a0, 1696
.LBB42_6:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit6
	ld.d	$a1, $a0, 1712
	ld.d	$a2, $a0, 1720
	beq	$a2, $a1, .LBB42_8
# %bb.7:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i8
	st.d	$a1, $a0, 1720
.LBB42_8:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit9
	ld.d	$a1, $a0, 1736
	ld.d	$a2, $a0, 1744
	beq	$a2, $a1, .LBB42_10
# %bb.9:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i11
	st.d	$a1, $a0, 1744
.LBB42_10:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit12
	ld.d	$a1, $a0, 1760
	ld.d	$a2, $a0, 1768
	beq	$a2, $a1, .LBB42_12
# %bb.11:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i14
	st.d	$a1, $a0, 1768
.LBB42_12:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit15
	ld.d	$a1, $a0, 2000
	ld.d	$a2, $a0, 2008
	beq	$a2, $a1, .LBB42_14
# %bb.13:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i17
	st.d	$a1, $a0, 2008
.LBB42_14:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit18
	ld.d	$a1, $a0, 2024
	ld.d	$a2, $a0, 2032
	beq	$a2, $a1, .LBB42_16
# %bb.15:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i20
	st.d	$a1, $a0, 2032
.LBB42_16:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit21
	ldptr.d	$a1, $a0, 2048
	ldptr.d	$a2, $a0, 2056
	beq	$a2, $a1, .LBB42_18
# %bb.17:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i23
	stptr.d	$a1, $a0, 2056
.LBB42_18:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit24
	ldptr.d	$a1, $a0, 2072
	ldptr.d	$a2, $a0, 2080
	beq	$a2, $a1, .LBB42_20
# %bb.19:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i26
	stptr.d	$a1, $a0, 2080
.LBB42_20:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit27
	ldptr.d	$a1, $a0, 2096
	ldptr.d	$a2, $a0, 2104
	beq	$a2, $a1, .LBB42_22
# %bb.21:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i29
	stptr.d	$a1, $a0, 2104
.LBB42_22:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit30
	ldptr.d	$a1, $a0, 2120
	ldptr.d	$a2, $a0, 2128
	beq	$a2, $a1, .LBB42_24
# %bb.23:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i32
	stptr.d	$a1, $a0, 2128
.LBB42_24:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit33
	ret
.Lfunc_end42:
	.size	_ZN4Mesh24calc_face_list_clearmapsEv, .Lfunc_end42-_ZN4Mesh24calc_face_list_clearmapsEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN4Mesh12timer_outputE11mesh_timers17mesh_device_typesi
.LCPI43_0:
	.dword	0x3e112e0be826d695              # double 1.0000000000000001E-9
	.text
	.globl	_ZN4Mesh12timer_outputE11mesh_timers17mesh_device_typesi
	.p2align	5
	.type	_ZN4Mesh12timer_outputE11mesh_timers17mesh_device_typesi,@function
_ZN4Mesh12timer_outputE11mesh_timers17mesh_device_typesi: # @_ZN4Mesh12timer_outputE11mesh_timers17mesh_device_typesi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 88                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	move	$fp, $a3
	move	$s0, $a0
	bstrpick.d	$s1, $a1, 31, 0
	alsl.d	$a0, $s1, $a0, 3
	beqz	$a2, .LBB43_3
# %bb.1:                                # %.thread
	ld.d	$a0, $a0, 392
	pcalau12i	$a1, %pc_hi20(.LCPI43_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI43_0)
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fs0, $fa1, $fa0
	addi.d	$a0, $sp, 10
	ori	$a2, $zero, 78
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 620
	lu12i.w	$a1, 3
	ori	$a1, $a1, 47
	st.h	$a1, $sp, 8
	bnez	$a0, .LBB43_6
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a1, $a0, %pc_lo12(.L.str.77)
	b	.LBB43_5
.LBB43_3:
	fld.d	$fs0, $a0, 200
	addi.d	$a0, $sp, 10
	ori	$a2, $zero, 78
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 620
	lu12i.w	$a1, 3
	ori	$a1, $a1, 47
	st.h	$a1, $sp, 8
	bnez	$a0, .LBB43_6
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
.LBB43_5:                               # %.sink.split
	slli.d	$a0, $s1, 3
	pcalau12i	$a2, %pc_hi20(_ZL21mesh_timer_descriptor)
	addi.d	$a2, $a2, %pc_lo12(_ZL21mesh_timer_descriptor)
	ldx.d	$a4, $a2, $a0
	slli.w	$a2, $fp, 1
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a3, $a0, %pc_lo12(.L.str.75)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB43_6:
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a3, $a0, %pc_lo12(.L.str.78)
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	fmov.d	$fa0, $fs0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh15parallel_outputEPKcdiS1_)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 88                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end43:
	.size	_ZN4Mesh12timer_outputE11mesh_timers17mesh_device_typesi, .Lfunc_end43-_ZN4Mesh12timer_outputE11mesh_timers17mesh_device_typesi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh15parallel_outputEPKcdiS1_ # -- Begin function _ZN4Mesh15parallel_outputEPKcdiS1_
	.p2align	5
	.type	_ZN4Mesh15parallel_outputEPKcdiS1_,@function
_ZN4Mesh15parallel_outputEPKcdiS1_:     # @_ZN4Mesh15parallel_outputEPKcdiS1_
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
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
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
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
	.cfi_offset 56, -88
	move	$s2, $a0
	ld.w	$s7, $a0, 624
	addi.w	$a0, $zero, -1
	bge	$a0, $s7, .LBB44_20
# %bb.1:                                # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s0, $a3
	move	$s1, $a2
	fmov.d	$fs0, $fa0
	move	$s4, $a1
	beqz	$s7, .LBB44_5
# %bb.2:                                # %.noexc26
	slli.d	$s5, $s7, 3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	alsl.d	$s6, $s7, $a0, 3
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 1
	addi.d	$s3, $fp, 8
	beq	$s7, $a0, .LBB44_4
# %bb.3:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a2, $s5, -8
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s3, $s6
.LBB44_4:                               # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
	ld.w	$a0, $s2, 620
	fst.d	$fs0, $fp, 0
	bnez	$a0, .LBB44_19
	b	.LBB44_6
.LBB44_5:
	move	$s6, $zero
	move	$fp, $zero
	move	$s3, $zero
	ld.w	$a0, $s2, 620
	fst.d	$fs0, $fp, 0
	bnez	$a0, .LBB44_19
.LBB44_6:
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 624
	ori	$a1, $zero, 4
	blt	$a1, $a0, .LBB44_11
# %bb.7:                                # %.preheader
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB44_10
# %bb.8:                                # %.lr.ph
	move	$s5, $zero
	slli.w	$s1, $s1, 1
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$s3, $a0, %pc_lo12(.L.str.80)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s4, $a0, %pc_lo12(.L.str.75)
	move	$s7, $fp
	.p2align	4, , 16
.LBB44_9:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s7, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 624
	addi.d	$s5, $s5, 1
	addi.d	$s7, $s7, 8
	blt	$s5, $a0, .LBB44_9
.LBB44_10:                              # %._crit_edge
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB44_19
.LBB44_11:
	beq	$fp, $s3, .LBB44_15
# %bb.12:
	sub.d	$a0, $s3, $fp
	srai.d	$a0, $a0, 3
	clz.d	$a0, $a0
	slli.d	$a0, $a0, 1
	xori	$a2, $a0, 126
.Ltmp222:
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp223:
# %bb.13:                               # %.noexc27
.Ltmp224:
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_)
	jirl	$ra, $ra, 0
.Ltmp225:
# %bb.14:                               # %.noexc27._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit_crit_edge
	ld.w	$a0, $s2, 624
.LBB44_15:                              # %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a1, $a0, $a1
	andi	$a2, $a0, 1
	slli.d	$a1, $a1, 2
	bstrins.d	$a1, $zero, 2, 0
	add.d	$a1, $fp, $a1
	bnez	$a2, .LBB44_17
# %bb.16:
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a1, 0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB44_18
.LBB44_17:
	fld.d	$fa0, $a1, 8
.LBB44_18:
	alsl.d	$a0, $a0, $fp, 3
	fld.d	$fa1, $a0, -8
	ld.d	$a3, $fp, 0
	slli.w	$a1, $s1, 1
	st.d	$s0, $sp, 16
	fst.d	$fa1, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	movfr2gr.d	$a6, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	st.d	$a2, $sp, 0
	move	$a4, $a1
	move	$a5, $a2
	move	$a7, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB44_19:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit30
	sub.d	$a1, $s6, $fp
	move	$a0, $fp
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB44_20:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB44_21:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit
.Ltmp226:
	move	$s0, $a0
	sub.d	$a1, $s6, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end44:
	.size	_ZN4Mesh15parallel_outputEPKcdiS1_, .Lfunc_end44-_ZN4Mesh15parallel_outputEPKcdiS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table44:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp222-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp222
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp225-.Ltmp222              #   Call between .Ltmp222 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin12        #     jumps to .Ltmp226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Lfunc_end44-.Ltmp225          #   Call between .Ltmp225 and .Lfunc_end44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh15parallel_outputEPKcxiS1_ # -- Begin function _ZN4Mesh15parallel_outputEPKcxiS1_
	.p2align	5
	.type	_ZN4Mesh15parallel_outputEPKcxiS1_,@function
_ZN4Mesh15parallel_outputEPKcxiS1_:     # @_ZN4Mesh15parallel_outputEPKcxiS1_
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
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
	move	$s2, $a0
	ld.w	$s8, $a0, 624
	addi.w	$a0, $zero, -1
	bge	$a0, $s8, .LBB45_20
# %bb.1:                                # %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s0, $a4
	move	$s1, $a3
	move	$s5, $a2
	move	$s4, $a1
	beqz	$s8, .LBB45_5
# %bb.2:                                # %.noexc26
	slli.d	$s6, $s8, 3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	alsl.d	$s7, $s8, $a0, 3
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 1
	addi.d	$s3, $fp, 8
	beq	$s8, $a0, .LBB45_4
# %bb.3:                                # %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a2, $s6, -8
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s3, $s7
.LBB45_4:                               # %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
	ld.w	$a0, $s2, 620
	st.d	$s5, $fp, 0
	bnez	$a0, .LBB45_19
	b	.LBB45_6
.LBB45_5:
	move	$s7, $zero
	move	$fp, $zero
	move	$s3, $zero
	ld.w	$a0, $s2, 620
	st.d	$s5, $fp, 0
	bnez	$a0, .LBB45_19
.LBB45_6:
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 624
	ori	$a1, $zero, 4
	blt	$a1, $a0, .LBB45_11
# %bb.7:                                # %.preheader
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB45_10
# %bb.8:                                # %.lr.ph
	move	$s5, $zero
	slli.w	$s1, $s1, 1
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$s3, $a0, %pc_lo12(.L.str.83)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s4, $a0, %pc_lo12(.L.str.75)
	move	$s6, $fp
	.p2align	4, , 16
.LBB45_9:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s6, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 624
	addi.d	$s5, $s5, 1
	addi.d	$s6, $s6, 8
	blt	$s5, $a0, .LBB45_9
.LBB45_10:                              # %._crit_edge
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB45_19
.LBB45_11:
	beq	$fp, $s3, .LBB45_15
# %bb.12:
	sub.d	$a0, $s3, $fp
	srai.d	$a0, $a0, 3
	clz.d	$a0, $a0
	slli.d	$a0, $a0, 1
	xori	$a2, $a0, 126
.Ltmp227:
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp228:
# %bb.13:                               # %.noexc27
.Ltmp229:
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_)
	jirl	$ra, $ra, 0
.Ltmp230:
# %bb.14:                               # %.noexc27._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit_crit_edge
	ld.w	$a0, $s2, 624
.LBB45_15:                              # %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a1, $a0, $a1
	andi	$a2, $a0, 1
	slli.d	$a1, $a1, 2
	bstrins.d	$a1, $zero, 2, 0
	add.d	$a1, $fp, $a1
	bnez	$a2, .LBB45_17
# %bb.16:
	ld.d	$a2, $a1, -8
	ld.d	$a1, $a1, 0
	add.d	$a1, $a1, $a2
	srli.d	$a2, $a1, 63
	add.d	$a1, $a1, $a2
	srai.d	$a6, $a1, 1
	b	.LBB45_18
.LBB45_17:
	ld.d	$a6, $a1, 8
.LBB45_18:
	ld.d	$a3, $fp, 0
	alsl.d	$a0, $a0, $fp, 3
	ld.d	$a0, $a0, -8
	slli.w	$a1, $s1, 1
	st.d	$s0, $sp, 16
	st.d	$a0, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	st.d	$a2, $sp, 0
	move	$a4, $a1
	move	$a5, $a2
	move	$a7, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB45_19:                              # %_ZNSt6vectorIxSaIxEED2Ev.exit30
	sub.d	$a1, $s7, $fp
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB45_20:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB45_21:                              # %_ZNSt6vectorIxSaIxEED2Ev.exit
.Ltmp231:
	move	$s0, $a0
	sub.d	$a1, $s7, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end45:
	.size	_ZN4Mesh15parallel_outputEPKcxiS1_, .Lfunc_end45-_ZN4Mesh15parallel_outputEPKcxiS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table45:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp227-.Lfunc_begin13        #   Call between .Lfunc_begin13 and .Ltmp227
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp230-.Ltmp227              #   Call between .Ltmp227 and .Ltmp230
	.uleb128 .Ltmp231-.Lfunc_begin13        #     jumps to .Ltmp231
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Lfunc_end45-.Ltmp230          #   Call between .Ltmp230 and .Lfunc_end45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh15parallel_outputEPKciiS1_ # -- Begin function _ZN4Mesh15parallel_outputEPKciiS1_
	.p2align	5
	.type	_ZN4Mesh15parallel_outputEPKciiS1_,@function
_ZN4Mesh15parallel_outputEPKciiS1_:     # @_ZN4Mesh15parallel_outputEPKciiS1_
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
	move	$s2, $a0
	ld.w	$s8, $a0, 624
	addi.w	$a0, $zero, -1
	bge	$a0, $s8, .LBB46_20
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s0, $a4
	move	$s1, $a3
	move	$s5, $a2
	move	$s4, $a1
	beqz	$s8, .LBB46_5
# %bb.2:                                # %.noexc26
	slli.d	$s6, $s8, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	alsl.d	$s7, $s8, $a0, 2
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 1
	addi.d	$s3, $fp, 4
	beq	$s8, $a0, .LBB46_4
# %bb.3:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a2, $s6, -4
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s3, $s7
.LBB46_4:                               # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
	ld.w	$a0, $s2, 620
	st.w	$s5, $fp, 0
	bnez	$a0, .LBB46_19
	b	.LBB46_6
.LBB46_5:
	move	$s7, $zero
	move	$fp, $zero
	move	$s3, $zero
	ld.w	$a0, $s2, 620
	st.w	$s5, $fp, 0
	bnez	$a0, .LBB46_19
.LBB46_6:
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 624
	ori	$a1, $zero, 4
	blt	$a1, $a0, .LBB46_11
# %bb.7:                                # %.preheader
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB46_10
# %bb.8:                                # %.lr.ph
	move	$s5, $zero
	slli.w	$s1, $s1, 1
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$s3, $a0, %pc_lo12(.L.str.85)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s4, $a0, %pc_lo12(.L.str.75)
	move	$s6, $fp
	.p2align	4, , 16
.LBB46_9:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s6, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 624
	addi.d	$s5, $s5, 1
	addi.d	$s6, $s6, 4
	blt	$s5, $a0, .LBB46_9
.LBB46_10:                              # %._crit_edge
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB46_19
.LBB46_11:
	beq	$fp, $s3, .LBB46_15
# %bb.12:
	sub.d	$a0, $s3, $fp
	srai.d	$a0, $a0, 2
	clz.d	$a0, $a0
	slli.d	$a0, $a0, 1
	xori	$a2, $a0, 126
.Ltmp232:
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp233:
# %bb.13:                               # %.noexc27
.Ltmp234:
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_)
	jirl	$ra, $ra, 0
.Ltmp235:
# %bb.14:                               # %.noexc27._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge
	ld.w	$a0, $s2, 624
.LBB46_15:                              # %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a1, $a0, $a1
	andi	$a2, $a0, 1
	slli.d	$a1, $a1, 1
	bstrins.d	$a1, $zero, 1, 0
	add.d	$a1, $fp, $a1
	bnez	$a2, .LBB46_17
# %bb.16:
	ld.w	$a2, $a1, -4
	ld.w	$a1, $a1, 0
	add.d	$a1, $a1, $a2
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	srai.d	$a4, $a1, 1
	b	.LBB46_18
.LBB46_17:
	ld.w	$a4, $a1, 4
.LBB46_18:
	ld.w	$a3, $fp, 0
	alsl.d	$a0, $a0, $fp, 2
	ld.w	$a0, $a0, -4
	slli.w	$a1, $s1, 1
	st.d	$s0, $sp, 16
	st.d	$a0, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a2, $a0, %pc_lo12(.L.str.75)
	addi.w	$a6, $a4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	st.d	$a2, $sp, 0
	move	$a4, $a1
	move	$a5, $a2
	move	$a7, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB46_19:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit30
	sub.d	$a1, $s7, $fp
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB46_20:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB46_21:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
.Ltmp236:
	move	$s0, $a0
	sub.d	$a1, $s7, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end46:
	.size	_ZN4Mesh15parallel_outputEPKciiS1_, .Lfunc_end46-_ZN4Mesh15parallel_outputEPKciiS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table46:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp232-.Lfunc_begin14        #   Call between .Lfunc_begin14 and .Ltmp232
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp235-.Ltmp232              #   Call between .Ltmp232 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin14        #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Lfunc_end46-.Ltmp235          #   Call between .Ltmp235 and .Lfunc_end46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh19get_checkpoint_sizeEv # -- Begin function _ZN4Mesh19get_checkpoint_sizeEv
	.p2align	5
	.type	_ZN4Mesh19get_checkpoint_sizeEv,@function
_ZN4Mesh19get_checkpoint_sizeEv:        # @_ZN4Mesh19get_checkpoint_sizeEv
# %bb.0:
	ld.d	$a0, $a0, 1160
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	addi.d	$a0, $a0, 448
	ret
.Lfunc_end47:
	.size	_ZN4Mesh19get_checkpoint_sizeEv, .Lfunc_end47-_ZN4Mesh19get_checkpoint_sizeEv
                                        # -- End function
	.globl	_ZN4Mesh16store_checkpointEP4Crux # -- Begin function _ZN4Mesh16store_checkpointEP4Crux
	.p2align	5
	.type	_ZN4Mesh16store_checkpointEP4Crux,@function
_ZN4Mesh16store_checkpointEP4Crux:      # @_ZN4Mesh16store_checkpointEP4Crux
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
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
	move	$s1, $a0
	ld.d	$a2, $a0, 1352
	move	$s0, $a1
	addi.d	$fp, $a0, 8
	move	$a0, $fp
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus19get_memory_capacityEPv)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 132
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	ori	$a2, $zero, 7
	addi.d	$a3, $sp, 132
	ori	$a4, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN4Crux16store_named_intsEPKciPim)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s1, 1120
	ori	$a2, $zero, 103
	st.w	$a2, $sp, 120
	st.w	$a0, $sp, 124
	st.w	$a1, $sp, 128
	ld.d	$a0, $s1, 1160
	ld.d	$a1, $s1, 1176
	ld.w	$a2, $s1, 672
	fld.d	$fa0, $s1, 664
	st.w	$a0, $sp, 108
	st.w	$a1, $sp, 112
	st.w	$a2, $sp, 116
	fst.d	$fa0, $sp, 96
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a4, $a0, %pc_lo12(.L.str.88)
	addi.d	$a1, $sp, 108
	ori	$a2, $zero, 3
	ori	$a3, $zero, 4
	ori	$a5, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a4, $a0, %pc_lo12(.L.str.89)
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 3
	ori	$a3, $zero, 4
	ori	$a5, $zero, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a4, $a0, %pc_lo12(.L.str.90)
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 1
	ori	$a3, $zero, 8
	ori	$a5, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s1, 584
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a4, $a0, %pc_lo12(.L.str.91)
	ori	$a2, $zero, 4
	ori	$a3, $zero, 4
	ori	$a5, $zero, 16
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s1, 600
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a4, $a0, %pc_lo12(.L.str.92)
	ori	$a2, $zero, 4
	ori	$a3, $zero, 4
	ori	$a5, $zero, 16
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s1, 200
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a4, $a0, %pc_lo12(.L.str.93)
	ori	$a2, $zero, 24
	ori	$a3, $zero, 8
	ori	$a5, $zero, 16
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s1, 392
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a4, $a0, %pc_lo12(.L.str.94)
	ori	$a2, $zero, 24
	ori	$a3, $zero, 8
	ori	$a5, $zero, 16
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 8
	st.w	$zero, $sp, 8
	ld.d	$a1, $s1, 24
	st.d	$zero, $sp, 16
	st.d	$a2, $sp, 24
	st.d	$a2, $sp, 32
	st.d	$zero, $sp, 40
	beqz	$a1, .LBB48_6
# %bb.1:
	addi.d	$a0, $sp, 0
	st.d	$a0, $sp, 136
	addi.d	$a3, $sp, 136
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB48_2:                               # %.noexc.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB48_2
# %bb.3:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
	st.d	$a1, $sp, 24
	move	$a2, $a0
	.p2align	4, , 16
.LBB48_4:                               # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB48_4
# %bb.5:
	ld.d	$a2, $s1, 48
	st.d	$a1, $sp, 32
	st.d	$a2, $sp, 40
	st.d	$a0, $sp, 16
.LBB48_6:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit.i
	addi.d	$a2, $sp, 56
	st.w	$zero, $sp, 56
	ld.d	$a1, $s1, 72
	st.d	$zero, $sp, 64
	st.d	$a2, $sp, 72
	st.d	$a2, $sp, 80
	st.d	$zero, $sp, 88
	beqz	$a1, .LBB48_13
# %bb.7:
	addi.d	$a0, $sp, 48
	st.d	$a0, $sp, 136
.Ltmp237:
	addi.d	$a3, $sp, 136
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp238:
# %bb.8:                                # %.noexc.i.i5.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB48_9:                               # %.noexc.i.i5.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB48_9
# %bb.10:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
	st.d	$a1, $sp, 72
	move	$a2, $a0
	.p2align	4, , 16
.LBB48_11:                              # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB48_11
# %bb.12:
	ld.d	$a2, $s1, 96
	st.d	$a1, $sp, 80
	st.d	$a2, $sp, 88
	st.d	$a0, $sp, 64
.LBB48_13:                              # %_ZN10MallocPlusC2ERKS_.exit
.Ltmp240:
	addi.d	$a1, $sp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN4Crux16store_MallocPlusE10MallocPlus)
	jirl	$ra, $ra, 0
.Ltmp241:
# %bb.14:
	ld.d	$a1, $sp, 64
	addi.d	$a0, $sp, 48
.Ltmp243:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp244:
# %bb.15:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i
	ld.d	$a1, $sp, 16
.Ltmp246:
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp247:
# %bb.16:                               # %_ZN10MallocPlusD2Ev.exit
	addi.d	$a1, $sp, 108
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
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
.LBB48_17:
.Ltmp239:
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB48_18:
.Ltmp248:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB48_19:
.Ltmp245:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB48_20:
.Ltmp242:
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN10MallocPlusD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end48:
	.size	_ZN4Mesh16store_checkpointEP4Crux, .Lfunc_end48-_ZN4Mesh16store_checkpointEP4Crux
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table48:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp237-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp237
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin15        #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin15        #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin15        # >> Call Site 4 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin15        #     jumps to .Ltmp245
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp246-.Lfunc_begin15        # >> Call Site 5 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin15        #     jumps to .Ltmp248
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp247-.Lfunc_begin15        # >> Call Site 6 <<
	.uleb128 .Lfunc_end48-.Ltmp247          #   Call between .Ltmp247 and .Lfunc_end48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh18restore_checkpointEP4Crux # -- Begin function _ZN4Mesh18restore_checkpointEP4Crux
	.p2align	5
	.type	_ZN4Mesh18restore_checkpointEP4Crux,@function
_ZN4Mesh18restore_checkpointEP4Crux:    # @_ZN4Mesh18restore_checkpointEP4Crux
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
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
	move	$s1, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	ori	$a2, $zero, 7
	addi.d	$a3, $sp, 132
	ori	$a4, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN4Crux18restore_named_intsEPKciPim)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1368
	addi.d	$s0, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1376
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1384
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1392
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1360
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_deleteEPv)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 1360
	ld.w	$s2, $sp, 132
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 1368
	vst	$vr0, $fp, 1384
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a3, $a0, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1328
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a3, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1336
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a3, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 4
	ori	$a4, $zero, 16
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 1352
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a4, $a0, %pc_lo12(.L.str.88)
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 3
	ori	$a3, $zero, 4
	ori	$a5, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a4, $a0, %pc_lo12(.L.str.89)
	addi.d	$a1, $sp, 108
	ori	$a2, $zero, 3
	ori	$a3, $zero, 4
	ori	$a5, $zero, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a4, $a0, %pc_lo12(.L.str.90)
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 1
	ori	$a3, $zero, 8
	ori	$a5, $zero, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$s2, $fp, 584
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a4, $a0, %pc_lo12(.L.str.91)
	ori	$a2, $zero, 4
	ori	$a3, $zero, 4
	ori	$a5, $zero, 16
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$s3, $fp, 600
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a4, $a0, %pc_lo12(.L.str.92)
	ori	$a2, $zero, 4
	ori	$a3, $zero, 4
	ori	$a5, $zero, 16
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$s4, $fp, 200
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a4, $a0, %pc_lo12(.L.str.93)
	ori	$a2, $zero, 24
	ori	$a3, $zero, 8
	ori	$a5, $zero, 16
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$s5, $fp, 392
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a4, $a0, %pc_lo12(.L.str.94)
	ori	$a2, $zero, 24
	ori	$a3, $zero, 8
	ori	$a5, $zero, 16
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 8
	st.w	$zero, $sp, 8
	ld.d	$a1, $fp, 24
	st.d	$zero, $sp, 16
	st.d	$a2, $sp, 24
	st.d	$a2, $sp, 32
	st.d	$zero, $sp, 40
	beqz	$a1, .LBB49_6
# %bb.1:
	addi.d	$a0, $sp, 0
	st.d	$a0, $sp, 136
	addi.d	$a3, $sp, 136
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB49_2:                               # %.noexc.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB49_2
# %bb.3:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
	st.d	$a1, $sp, 24
	move	$a2, $a0
	.p2align	4, , 16
.LBB49_4:                               # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB49_4
# %bb.5:
	ld.d	$a2, $fp, 48
	st.d	$a1, $sp, 32
	st.d	$a2, $sp, 40
	st.d	$a0, $sp, 16
.LBB49_6:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit.i
	addi.d	$a2, $sp, 56
	st.w	$zero, $sp, 56
	ld.d	$a1, $fp, 72
	st.d	$zero, $sp, 64
	st.d	$a2, $sp, 72
	st.d	$a2, $sp, 80
	st.d	$zero, $sp, 88
	beqz	$a1, .LBB49_13
# %bb.7:
	addi.d	$a0, $sp, 48
	st.d	$a0, $sp, 136
.Ltmp249:
	addi.d	$a3, $sp, 136
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp250:
# %bb.8:                                # %.noexc.i.i5.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB49_9:                               # %.noexc.i.i5.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB49_9
# %bb.10:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
	st.d	$a1, $sp, 72
	move	$a2, $a0
	.p2align	4, , 16
.LBB49_11:                              # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB49_11
# %bb.12:
	ld.d	$a2, $fp, 96
	st.d	$a1, $sp, 80
	st.d	$a2, $sp, 88
	st.d	$a0, $sp, 64
.LBB49_13:                              # %_ZN10MallocPlusC2ERKS_.exit
.Ltmp252:
	addi.d	$a1, $sp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN4Crux18restore_MallocPlusE10MallocPlus)
	jirl	$ra, $ra, 0
.Ltmp253:
# %bb.14:
	ld.d	$a1, $sp, 64
	addi.d	$a0, $sp, 48
.Ltmp255:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp256:
# %bb.15:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i
	ld.d	$a1, $sp, 16
.Ltmp258:
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp259:
# %bb.16:                               # %_ZN10MallocPlusD2Ev.exit
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 108
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 96
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 108
	ori	$a0, $zero, 103
	bne	$a1, $a0, .LBB49_25
# %bb.17:
	ld.w	$a0, $sp, 120
	st.d	$a0, $fp, 1160
	ld.w	$a0, $sp, 124
	ld.w	$a1, $sp, 128
	ld.w	$a2, $sp, 112
	ld.w	$a3, $sp, 116
	ld.w	$a4, $fp, 620
	st.d	$a0, $fp, 1176
	st.w	$a1, $fp, 672
	st.w	$a2, $fp, 0
	st.w	$a3, $fp, 1120
	beqz	$a4, .LBB49_19
# %bb.18:                               # %.thread80
	fld.d	$fa0, $sp, 96
	fst.d	$fa0, $fp, 664
	b	.LBB49_24
.LBB49_19:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 120
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$s0, $a0, %pc_lo12(.L.str.103)
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a1, $a0, %pc_lo12(.L.str.96)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 124
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a1, $a0, %pc_lo12(.L.str.97)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 128
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a1, $a0, %pc_lo12(.L.str.98)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.8)
	addi.d	$s1, $a0, %pc_lo12(.Lstr.8)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 108
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a1, $a0, %pc_lo12(.L.str.99)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 112
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a1, $a0, %pc_lo12(.L.str.100)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 116
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a1, $a0, %pc_lo12(.L.str.101)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 620
	fld.d	$fa0, $sp, 96
	fst.d	$fa0, $fp, 664
	bnez	$a0, .LBB49_24
# %bb.20:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.10)
	addi.d	$s0, $a0, %pc_lo12(.Lstr.10)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	pcalau12i	$a1, %pc_hi20(.L.str.105)
	addi.d	$a1, $a1, %pc_lo12(.L.str.105)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 620
	bnez	$a0, .LBB49_24
# %bb.21:                               # %.thread66
	pcalau12i	$a0, %pc_hi20(.Lstr.12)
	addi.d	$s1, $a0, %pc_lo12(.Lstr.12)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 584
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$s0, $a0, %pc_lo12(.L.str.103)
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$s2, $a0, %pc_lo12(.L.str.137)
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 588
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$s3, $a0, %pc_lo12(.L.str.138)
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 592
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$s4, $a0, %pc_lo12(.L.str.139)
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 596
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$s5, $a0, %pc_lo12(.L.str.140)
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.14)
	addi.d	$s1, $a0, %pc_lo12(.Lstr.14)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 600
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 604
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 608
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 612
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 620
	bnez	$a0, .LBB49_24
# %bb.22:
	pcalau12i	$a0, %pc_hi20(.Lstr.16)
	addi.d	$s0, $a0, %pc_lo12(.Lstr.16)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 200
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$s1, $a0, %pc_lo12(.L.str.107)
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 208
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 216
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a1, $a0, %pc_lo12(.L.str.115)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 224
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 232
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a1, $a0, %pc_lo12(.L.str.117)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 240
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a1, $a0, %pc_lo12(.L.str.118)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 248
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 256
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a1, $a0, %pc_lo12(.L.str.120)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 264
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a1, $a0, %pc_lo12(.L.str.121)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 272
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a1, $a0, %pc_lo12(.L.str.122)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 280
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a1, $a0, %pc_lo12(.L.str.123)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 288
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a1, $a0, %pc_lo12(.L.str.124)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 296
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a1, $a0, %pc_lo12(.L.str.125)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 304
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a1, $a0, %pc_lo12(.L.str.126)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 312
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a1, $a0, %pc_lo12(.L.str.127)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 320
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a1, $a0, %pc_lo12(.L.str.128)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 328
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a1, $a0, %pc_lo12(.L.str.129)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 336
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a1, $a0, %pc_lo12(.L.str.130)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 344
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a1, $a0, %pc_lo12(.L.str.131)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 352
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a1, $a0, %pc_lo12(.L.str.132)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 360
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a1, $a0, %pc_lo12(.L.str.133)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 368
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a1, $a0, %pc_lo12(.L.str.134)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 376
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a1, $a0, %pc_lo12(.L.str.135)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 384
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a1, $a0, %pc_lo12(.L.str.136)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 620
	bnez	$a0, .LBB49_24
# %bb.23:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.18)
	addi.d	$s0, $a0, %pc_lo12(.Lstr.18)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 392
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$s1, $a0, %pc_lo12(.L.str.112)
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 400
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 408
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a1, $a0, %pc_lo12(.L.str.115)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 416
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 424
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a1, $a0, %pc_lo12(.L.str.117)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 432
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a1, $a0, %pc_lo12(.L.str.118)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 440
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 448
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a1, $a0, %pc_lo12(.L.str.120)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 456
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a1, $a0, %pc_lo12(.L.str.121)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 464
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a1, $a0, %pc_lo12(.L.str.122)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 472
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a1, $a0, %pc_lo12(.L.str.123)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 480
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a1, $a0, %pc_lo12(.L.str.124)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 488
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a1, $a0, %pc_lo12(.L.str.125)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 496
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a1, $a0, %pc_lo12(.L.str.126)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 504
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a1, $a0, %pc_lo12(.L.str.127)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 512
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a1, $a0, %pc_lo12(.L.str.128)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 520
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a1, $a0, %pc_lo12(.L.str.129)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 528
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a1, $a0, %pc_lo12(.L.str.130)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 536
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a1, $a0, %pc_lo12(.L.str.131)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 544
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a1, $a0, %pc_lo12(.L.str.132)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 552
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a1, $a0, %pc_lo12(.L.str.133)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 560
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a1, $a0, %pc_lo12(.L.str.134)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 568
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a1, $a0, %pc_lo12(.L.str.135)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 576
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a1, $a0, %pc_lo12(.L.str.136)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB49_24:                              # %.thread71
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
.LBB49_25:
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	ori	$a2, $zero, 103
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB49_26:
.Ltmp251:
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB49_27:
.Ltmp260:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB49_28:
.Ltmp257:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB49_29:
.Ltmp254:
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN10MallocPlusD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end49:
	.size	_ZN4Mesh18restore_checkpointEP4Crux, .Lfunc_end49-_ZN4Mesh18restore_checkpointEP4Crux
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table49:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp249-.Lfunc_begin16        #   Call between .Lfunc_begin16 and .Ltmp249
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin16        #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin16        #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin16        # >> Call Site 4 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin16        #     jumps to .Ltmp257
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp258-.Lfunc_begin16        # >> Call Site 5 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin16        #     jumps to .Ltmp260
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp259-.Lfunc_begin16        # >> Call Site 6 <<
	.uleb128 .Lfunc_end49-.Ltmp259          #   Call between .Ltmp259 and .Lfunc_end49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
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
	.globl	_Z4scanPiS_i                    # -- Begin function _Z4scanPiS_i
	.p2align	5
	.type	_Z4scanPiS_i,@function
_Z4scanPiS_i:                           # @_Z4scanPiS_i
# %bb.0:
	ori	$a3, $zero, 1
	st.w	$zero, $a1, 0
	blt	$a2, $a3, .LBB50_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a3, $zero
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB50_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	add.d	$a3, $a4, $a3
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB50_2
.LBB50_3:                               # %._crit_edge
	ret
.Lfunc_end50:
	.size	_Z4scanPiS_i, .Lfunc_end50-_Z4scanPiS_i
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
.Lfunc_end51:
	.size	__clang_call_terminate, .Lfunc_end51-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.p2align	5
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp261:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp262:
# %bb.1:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB52_2:
.Ltmp263:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end52:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev, .Lfunc_end52-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,"aG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table52:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp261-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin17        #     jumps to .Ltmp263
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp262-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Lfunc_end52-.Ltmp262          #   Call between .Ltmp262 and .Lfunc_end52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,"axG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E # -- Begin function _ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.p2align	5
	.type	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,@function
_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E: # @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB53_4
# %bb.1:                                # %.lr.ph.preheader
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
	move	$s0, $a1
	move	$fp, $a0
	.p2align	4, , 16
.LBB53_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB53_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB53_4:                               # %._crit_edge
	ret
.Lfunc_end53:
	.size	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, .Lfunc_end53-_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB54_6
# %bb.1:                                # %.lr.ph.preheader
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
	move	$s0, $a1
	move	$fp, $a0
	b	.LBB54_3
	.p2align	4, , 16
.LBB54_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
                                        #   in Loop: Header=BB54_3 Depth=1
	ori	$a1, $zero, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB54_5
.LBB54_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB54_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB54_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB54_2
.LBB54_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB54_6:                               # %._crit_edge
	ret
.Lfunc_end54:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, .Lfunc_end54-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
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
	move	$s1, $a3
	ld.d	$s3, $a3, 0
	move	$s4, $a2
	move	$s2, $a1
	move	$fp, $a0
	addi.d	$s5, $a1, 32
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s2, 24
	st.w	$a0, $s0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $s0, 16
	st.d	$s4, $s0, 8
	beqz	$a1, .LBB55_3
# %bb.1:
.Ltmp264:
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp265:
# %bb.2:
	st.d	$a0, $s0, 24
.LBB55_3:
	ld.d	$s4, $s2, 16
	beqz	$s4, .LBB55_11
# %bb.4:                                # %.lr.ph.preheader
	move	$s5, $s0
	b	.LBB55_6
	.p2align	4, , 16
.LBB55_5:                               #   in Loop: Header=BB55_6 Depth=1
	ld.d	$s4, $s4, 16
	move	$s5, $s2
	beqz	$s4, .LBB55_11
.LBB55_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s1, 0
.Ltmp267:
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp268:
# %bb.7:                                # %.noexc
                                        #   in Loop: Header=BB55_6 Depth=1
	move	$s2, $a0
	addi.d	$a2, $s4, 32
.Ltmp269:
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
.Ltmp270:
# %bb.8:                                #   in Loop: Header=BB55_6 Depth=1
	ld.w	$a0, $s4, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s4, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s5, 16
	st.d	$s5, $s2, 8
	beqz	$a1, .LBB55_5
# %bb.9:                                #   in Loop: Header=BB55_6 Depth=1
.Ltmp271:
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp272:
# %bb.10:                               #   in Loop: Header=BB55_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB55_5
.LBB55_11:                              # %._crit_edge
	move	$a0, $s0
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
.LBB55_12:
.Ltmp266:
	b	.LBB55_14
.LBB55_13:
.Ltmp273:
.LBB55_14:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp274:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp275:
# %bb.15:
.Ltmp276:
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp277:
# %bb.16:
.LBB55_17:
.Ltmp278:
	move	$fp, $a0
.Ltmp279:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp280:
# %bb.18:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB55_19:
.Ltmp281:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end55:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_, .Lfunc_end55-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,comdat
	.p2align	2, 0x0
GCC_except_table55:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp264-.Lfunc_begin18        #   Call between .Lfunc_begin18 and .Ltmp264
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin18        #     jumps to .Ltmp266
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp267-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Ltmp272-.Ltmp267              #   Call between .Ltmp267 and .Ltmp272
	.uleb128 .Ltmp273-.Lfunc_begin18        #     jumps to .Ltmp273
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp272-.Lfunc_begin18        # >> Call Site 4 <<
	.uleb128 .Ltmp274-.Ltmp272              #   Call between .Ltmp272 and .Ltmp274
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin18        # >> Call Site 5 <<
	.uleb128 .Ltmp277-.Ltmp274              #   Call between .Ltmp274 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin18        #     jumps to .Ltmp278
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin18        # >> Call Site 6 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin18        #     jumps to .Ltmp281
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp280-.Lfunc_begin18        # >> Call Site 7 <<
	.uleb128 .Lfunc_end55-.Ltmp280          #   Call between .Ltmp280 and .Lfunc_end55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
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
	move	$s0, $a2
	move	$fp, $a1
	addi.d	$s1, $a1, 48
	st.d	$s1, $a1, 32
	ld.d	$s2, $a2, 8
	ld.d	$s3, $a2, 0
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 0
	bltu	$s2, $a0, .LBB56_3
# %bb.1:                                # %.noexc.i.i
.Ltmp282:
	addi.d	$s4, $fp, 32
	addi.d	$a1, $sp, 0
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp283:
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 0
	st.d	$a0, $s4, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB56_3:                               # %._crit_edge.i.i.i
	beqz	$s2, .LBB56_7
# %bb.4:                                # %._crit_edge.i.i.i
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB56_6
# %bb.5:
	ld.b	$a0, $s3, 0
	st.b	$a0, $s1, 0
	b	.LBB56_7
.LBB56_6:
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB56_7:
	ld.d	$a0, $sp, 0
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 32
	st.d	$a0, $fp, 64
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB56_8:
.Ltmp284:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp285:
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp286:
# %bb.9:
.LBB56_10:
.Ltmp287:
	move	$fp, $a0
.Ltmp288:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp289:
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB56_12:
.Ltmp290:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end56:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end56-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table56:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp282-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp284-.Lfunc_begin19        #     jumps to .Ltmp284
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp283-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Ltmp285-.Ltmp283              #   Call between .Ltmp283 and .Ltmp285
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin19        # >> Call Site 3 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp287-.Lfunc_begin19        #     jumps to .Ltmp287
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin19        # >> Call Site 4 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp290-.Lfunc_begin19        #     jumps to .Ltmp290
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp289-.Lfunc_begin19        # >> Call Site 5 <<
	.uleb128 .Lfunc_end56-.Ltmp289          #   Call between .Ltmp289 and .Lfunc_end56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,"axG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,comdat
	.weak	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_ # -- Begin function _ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,@function
_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_: # @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
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
	move	$s1, $a3
	move	$s3, $a2
	move	$s2, $a1
	move	$fp, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	vld	$vr0, $s2, 32
	ld.w	$a2, $s2, 0
	move	$s0, $a0
	vst	$vr0, $a0, 32
	ld.d	$a1, $s2, 24
	st.w	$a2, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $a0, 16
	st.d	$s3, $a0, 8
	beqz	$a1, .LBB57_3
# %bb.1:
.Ltmp291:
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp292:
# %bb.2:
	st.d	$a0, $s0, 24
.LBB57_3:
	ld.d	$s3, $s2, 16
	beqz	$s3, .LBB57_10
# %bb.4:                                # %.lr.ph.preheader
	move	$s4, $s0
	b	.LBB57_6
	.p2align	4, , 16
.LBB57_5:                               #   in Loop: Header=BB57_6 Depth=1
	ld.d	$s3, $s3, 16
	move	$s4, $s2
	beqz	$s3, .LBB57_10
.LBB57_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
.Ltmp294:
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp295:
# %bb.7:                                #   in Loop: Header=BB57_6 Depth=1
	move	$s2, $a0
	vld	$vr0, $s3, 32
	vst	$vr0, $a0, 32
	ld.w	$a0, $s3, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s3, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s4, 16
	st.d	$s4, $s2, 8
	beqz	$a1, .LBB57_5
# %bb.8:                                #   in Loop: Header=BB57_6 Depth=1
.Ltmp296:
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp297:
# %bb.9:                                #   in Loop: Header=BB57_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB57_5
.LBB57_10:                              # %._crit_edge
	move	$a0, $s0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB57_11:
.Ltmp293:
	b	.LBB57_13
.LBB57_12:
.Ltmp298:
.LBB57_13:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp299:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp300:
# %bb.14:
.Ltmp301:
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp302:
# %bb.15:
.LBB57_16:
.Ltmp303:
	move	$fp, $a0
.Ltmp304:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp305:
# %bb.17:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB57_18:
.Ltmp306:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end57:
	.size	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_, .Lfunc_end57-_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,"aG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,comdat
	.p2align	2, 0x0
GCC_except_table57:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp291-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp291
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp292-.Ltmp291              #   Call between .Ltmp291 and .Ltmp292
	.uleb128 .Ltmp293-.Lfunc_begin20        #     jumps to .Ltmp293
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp294-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Ltmp297-.Ltmp294              #   Call between .Ltmp294 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin20        #     jumps to .Ltmp298
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp297-.Lfunc_begin20        # >> Call Site 4 <<
	.uleb128 .Ltmp299-.Ltmp297              #   Call between .Ltmp297 and .Ltmp299
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin20        # >> Call Site 5 <<
	.uleb128 .Ltmp302-.Ltmp299              #   Call between .Ltmp299 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin20        #     jumps to .Ltmp303
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin20        # >> Call Site 6 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp306-.Lfunc_begin20        #     jumps to .Ltmp306
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp305-.Lfunc_begin20        # >> Call Site 7 <<
	.uleb128 .Lfunc_end57-.Ltmp305          #   Call between .Ltmp305 and .Lfunc_end57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
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
	beqz	$a1, .LBB58_13
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$s2, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $s2
	srai.d	$a0, $a0, 2
	bgeu	$a0, $a1, .LBB58_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $s2, $s1
	srai.d	$a1, $s2, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB58_14
# %bb.3:                                # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
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
	ori	$s7, $zero, 1
	stx.w	$zero, $a0, $s2
	beq	$s0, $s7, .LBB58_5
# %bb.4:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i29
	addi.d	$a0, $s6, 4
	slli.d	$a1, $s0, 2
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB58_5:                               # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit31
	blt	$s2, $s7, .LBB58_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB58_7:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
	beqz	$s1, .LBB58_9
# %bb.8:
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB58_9:                               # %_ZZNSt6vectorIiSaIiEE17_M_default_appendEmEN6_GuardD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 2
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 16
	b	.LBB58_13
.LBB58_10:
	st.w	$zero, $s2, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $s2, 4
	beq	$s0, $a1, .LBB58_12
# %bb.11:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
	slli.d	$a1, $s0, 2
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s2, 2
.LBB58_12:                              # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit
	st.d	$a0, $fp, 8
.LBB58_13:
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
.LBB58_14:
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end58:
	.size	_ZNSt6vectorIiSaIiEE17_M_default_appendEm, .Lfunc_end58-_ZNSt6vectorIiSaIiEE17_M_default_appendEm
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
	beqz	$a1, .LBB59_13
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$s2, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $s2
	srai.d	$a0, $a0, 3
	bgeu	$a0, $a1, .LBB59_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $s2, $s1
	srai.d	$a1, $s2, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB59_14
# %bb.3:                                # %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
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
	ori	$s7, $zero, 1
	stx.d	$zero, $a0, $s2
	beq	$s0, $s7, .LBB59_5
# %bb.4:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i29
	addi.d	$a0, $s6, 8
	slli.d	$a1, $s0, 3
	addi.d	$a2, $a1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB59_5:                               # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit31
	blt	$s2, $s7, .LBB59_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB59_7:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
	beqz	$s1, .LBB59_9
# %bb.8:
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB59_9:                               # %_ZZNSt6vectorIdSaIdEE17_M_default_appendEmEN6_GuardD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 3
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 3
	st.d	$a0, $fp, 16
	b	.LBB59_13
.LBB59_10:
	st.d	$zero, $s2, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $s2, 8
	beq	$s0, $a1, .LBB59_12
# %bb.11:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
	slli.d	$a1, $s0, 3
	addi.d	$a2, $a1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s2, 3
.LBB59_12:                              # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit
	st.d	$a0, $fp, 8
.LBB59_13:
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
.LBB59_14:
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end59:
	.size	_ZNSt6vectorIdSaIdEE17_M_default_appendEm, .Lfunc_end59-_ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.cfi_endproc
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
	beqz	$a2, .LBB60_43
# %bb.1:
	move	$s2, $a2
	move	$fp, $a1
	move	$s1, $a0
	ld.d	$s6, $a0, 16
	ld.d	$s0, $a0, 8
	sub.d	$a0, $s6, $s0
	srai.d	$a0, $a0, 2
	bgeu	$a0, $a2, .LBB60_5
# %bb.2:
	ld.d	$s3, $s1, 0
	sub.d	$a0, $s0, $s3
	srai.d	$a1, $a0, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	sub.d	$a2, $a0, $a1
	bltu	$a2, $s2, .LBB60_54
# %bb.3:                                # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
	sltu	$a2, $s2, $a1
	masknez	$a4, $s2, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a4
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a2
	sltu	$a4, $a1, $a0
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $a0, $a4
	or	$a1, $a1, $a4
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s7, $a0, $a1
	sub.d	$s5, $fp, $s3
	beqz	$s7, .LBB60_30
# %bb.4:
	slli.d	$a0, $s7, 2
	move	$s4, $a3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a3, $s4
	move	$s4, $a0
	b	.LBB60_31
.LBB60_5:
	ld.w	$s4, $a3, 0
	sub.d	$s3, $s0, $fp
	srai.d	$a1, $s3, 2
	bgeu	$s2, $a1, .LBB60_16
# %bb.6:
	slli.d	$a2, $s2, 2
	ori	$a0, $zero, 5
	sub.d	$s3, $s0, $a2
	blt	$a2, $a0, .LBB60_48
# %bb.7:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
.LBB60_8:                               # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
	alsl.d	$a1, $s2, $a0, 2
	sub.d	$a2, $s3, $fp
	srai.d	$a0, $a2, 2
	ori	$a3, $zero, 2
	st.d	$a1, $s1, 8
	blt	$a0, $a3, .LBB60_50
# %bb.9:
	slli.d	$a0, $a0, 2
	sub.d	$a0, $s0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB60_10:
	addi.d	$a0, $s2, -1
	bstrpick.d	$a1, $a0, 61, 0
	ori	$a2, $zero, 7
	move	$a0, $fp
	bltu	$a1, $a2, .LBB60_14
# %bb.11:                               # %vector.ph116
	addi.d	$a1, $a1, 1
	bstrpick.d	$a0, $a1, 62, 3
	slli.d	$a2, $a0, 3
	slli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	vreplgr2vr.w	$vr0, $s4
	addi.d	$a3, $fp, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB60_12:                              # %vector.body121
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB60_12
# %bb.13:                               # %middle.block126
	beq	$a1, $a2, .LBB60_43
.LBB60_14:                              # %.lr.ph.i.i.i.preheader
	alsl.d	$a1, $s2, $fp, 2
	.p2align	4, , 16
.LBB60_15:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	bne	$a0, $a1, .LBB60_15
	b	.LBB60_43
.LBB60_16:
	move	$a0, $s0
	beq	$s2, $a1, .LBB60_22
# %bb.17:
	sub.d	$a0, $s2, $a1
	slli.d	$a1, $s2, 2
	sub.d	$a1, $a1, $s3
	addi.d	$a2, $a1, -4
	ori	$a3, $zero, 28
	alsl.d	$a0, $a0, $s0, 2
	move	$a1, $s0
	bltu	$a2, $a3, .LBB60_21
# %bb.18:                               # %vector.ph
	srli.d	$a1, $a2, 2
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 62, 3
	slli.d	$a3, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a1, $s0, $a1
	vreplgr2vr.w	$vr0, $s4
	addi.d	$a4, $s0, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB60_19:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB60_19
# %bb.20:                               # %middle.block
	beq	$a2, $a3, .LBB60_22
	.p2align	4, , 16
.LBB60_21:                              # %.lr.ph.i.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s4, $a1, 0
	addi.d	$a1, $a1, 4
	bne	$a1, $a0, .LBB60_21
.LBB60_22:                              # %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
	ori	$a1, $zero, 5
	st.d	$a0, $s1, 8
	blt	$s3, $a1, .LBB60_52
# %bb.23:
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
.LBB60_24:                              # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
	add.d	$a0, $a0, $s3
	st.d	$a0, $s1, 8
	beq	$s0, $fp, .LBB60_43
# %bb.25:                               # %.lr.ph.i.i.i71.preheader
	addi.d	$a1, $s3, -4
	ori	$a2, $zero, 28
	move	$a0, $fp
	bltu	$a1, $a2, .LBB60_29
# %bb.26:                               # %vector.ph101
	srli.d	$a0, $a1, 2
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 62, 3
	slli.d	$a2, $a0, 3
	slli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	vreplgr2vr.w	$vr0, $s4
	addi.d	$a3, $fp, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB60_27:                              # %vector.body106
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB60_27
# %bb.28:                               # %middle.block111
	beq	$a1, $a2, .LBB60_43
	.p2align	4, , 16
.LBB60_29:                              # %.lr.ph.i.i.i71
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	bne	$a0, $s0, .LBB60_29
	b	.LBB60_43
.LBB60_30:
	move	$s4, $zero
.LBB60_31:
	add.d	$a0, $s4, $s5
	ld.w	$a1, $a3, 0
	addi.d	$a2, $s2, -1
	bstrpick.d	$a2, $a2, 61, 0
	ori	$a3, $zero, 7
	alsl.d	$s2, $s2, $a0, 2
	bltu	$a2, $a3, .LBB60_35
# %bb.32:                               # %vector.ph131
	addi.d	$a2, $a2, 1
	bstrpick.d	$a4, $a2, 62, 3
	slli.d	$a3, $a4, 3
	slli.d	$a4, $a4, 5
	add.d	$a0, $a0, $a4
	vreplgr2vr.w	$vr0, $a1
	add.d	$a4, $s5, $s4
	addi.d	$a4, $a4, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB60_33:                              # %vector.body136
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB60_33
# %bb.34:                               # %middle.block141
	beq	$a2, $a3, .LBB60_36
	.p2align	4, , 16
.LBB60_35:                              # %.lr.ph.i.i.i.i.i.i.i75
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	bne	$a0, $s2, .LBB60_35
.LBB60_36:                              # %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit79
	ori	$a0, $zero, 5
	blt	$s5, $a0, .LBB60_44
# %bb.37:
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB60_38:                              # %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
	sub.d	$s0, $s0, $fp
	ori	$a0, $zero, 5
	blt	$s0, $a0, .LBB60_46
# %bb.39:
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB60_40:
	add.d	$fp, $s2, $s0
	beqz	$s3, .LBB60_42
# %bb.41:
	sub.d	$a1, $s6, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB60_42:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
	st.d	$s4, $s1, 0
	st.d	$fp, $s1, 8
	alsl.d	$a0, $s7, $s4, 2
	st.d	$a0, $s1, 16
.LBB60_43:                              # %_ZSt4fillIPiiEvT_S1_RKT0_.exit
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
.LBB60_44:
	ori	$a0, $zero, 4
	bne	$s5, $a0, .LBB60_38
# %bb.45:
	ld.w	$a0, $s3, 0
	st.w	$a0, $s4, 0
	b	.LBB60_38
.LBB60_46:
	ori	$a0, $zero, 4
	bne	$s0, $a0, .LBB60_40
# %bb.47:
	ld.w	$a0, $fp, 0
	st.w	$a0, $s2, 0
	b	.LBB60_40
.LBB60_48:
	ori	$a1, $zero, 4
	move	$a0, $s0
	bne	$a2, $a1, .LBB60_8
# %bb.49:
	ld.w	$a0, $s3, 0
	st.w	$a0, $s0, 0
	move	$a0, $s0
	b	.LBB60_8
.LBB60_50:
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB60_10
# %bb.51:
	ld.w	$a0, $fp, 0
	st.w	$a0, $s0, -4
	b	.LBB60_10
.LBB60_52:
	ori	$a1, $zero, 4
	bne	$s3, $a1, .LBB60_24
# %bb.53:
	ld.w	$a1, $fp, 0
	st.w	$a1, $a0, 0
	b	.LBB60_24
.LBB60_54:
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$a0, $a0, %pc_lo12(.L.str.144)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end60:
	.size	_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi, .Lfunc_end60-_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ # -- Begin function _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,@function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_: # @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
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
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 3
	ori	$a3, $zero, 17
	blt	$a0, $a3, .LBB61_35
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	addi.d	$s2, $fp, 8
	sub.d	$s3, $zero, $fp
	addi.w	$s4, $zero, -8
	ori	$s5, $zero, 16
	b	.LBB61_3
	.p2align	4, , 16
.LBB61_2:                               # %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
                                        #   in Loop: Header=BB61_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $s1
	srai.d	$a0, $a0, 3
	move	$a1, $s1
	bge	$s5, $a0, .LBB61_35
.LBB61_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_16 Depth 2
                                        #       Child Loop BB61_17 Depth 3
                                        #       Child Loop BB61_19 Depth 3
	beqz	$s0, .LBB61_22
# %bb.4:                                #   in Loop: Header=BB61_3 Depth=1
	slli.d	$a0, $a0, 2
	and	$a0, $a0, $s4
	fld.d	$fa1, $fp, 8
	fldx.d	$fa2, $fp, $a0
	fld.d	$fa0, $a1, -8
	fcmp.cule.d	$fcc0, $fa2, $fa1
	add.d	$a0, $fp, $a0
	bcnez	$fcc0, .LBB61_7
# %bb.5:                                #   in Loop: Header=BB61_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB61_9
# %bb.6:                                #   in Loop: Header=BB61_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa2, $fp, 0
	fst.d	$fa0, $a0, 0
	b	.LBB61_15
	.p2align	4, , 16
.LBB61_7:                               #   in Loop: Header=BB61_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB61_11
# %bb.8:                                #   in Loop: Header=BB61_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 8
	b	.LBB61_15
	.p2align	4, , 16
.LBB61_9:                               #   in Loop: Header=BB61_3 Depth=1
	fld.d	$fa2, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB61_13
# %bb.10:                               #   in Loop: Header=BB61_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa2, $a1, -8
	b	.LBB61_15
	.p2align	4, , 16
.LBB61_11:                              #   in Loop: Header=BB61_3 Depth=1
	fld.d	$fa1, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB61_14
# %bb.12:                               #   in Loop: Header=BB61_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $a1, -8
	b	.LBB61_15
.LBB61_13:                              #   in Loop: Header=BB61_3 Depth=1
	fst.d	$fa1, $fp, 0
	fst.d	$fa2, $fp, 8
	b	.LBB61_15
.LBB61_14:                              #   in Loop: Header=BB61_3 Depth=1
	fst.d	$fa2, $fp, 0
	fst.d	$fa1, $a0, 0
	.p2align	4, , 16
.LBB61_15:                              # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader
                                        #   in Loop: Header=BB61_3 Depth=1
	addi.d	$s0, $s0, -1
	move	$a2, $a1
	move	$a0, $s2
	.p2align	4, , 16
.LBB61_16:                              # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
                                        #   Parent Loop BB61_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB61_17 Depth 3
                                        #       Child Loop BB61_19 Depth 3
	fld.d	$fa0, $fp, 0
	addi.d	$s1, $a0, -8
	.p2align	4, , 16
.LBB61_17:                              #   Parent Loop BB61_3 Depth=1
                                        #     Parent Loop BB61_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	fcmp.clt.d	$fcc0, $fa1, $fa0
	addi.d	$s1, $s1, 8
	bcnez	$fcc0, .LBB61_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB61_16 Depth=2
	addi.d	$a3, $a0, -8
	.p2align	4, , 16
.LBB61_19:                              # %.preheader.i.i
                                        #   Parent Loop BB61_3 Depth=1
                                        #     Parent Loop BB61_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa2
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB61_19
# %bb.20:                               #   in Loop: Header=BB61_16 Depth=2
	bgeu	$a3, $a2, .LBB61_2
# %bb.21:                               #   in Loop: Header=BB61_16 Depth=2
	fst.d	$fa2, $a3, 0
	fst.d	$fa1, $a2, 0
	b	.LBB61_16
.LBB61_22:                              # %.lr.ph.preheader.i.i
	move	$a0, $fp
	move	$s0, $a1
	move	$a2, $a1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	b	.LBB61_25
	.p2align	4, , 16
.LBB61_23:                              #   in Loop: Header=BB61_25 Depth=1
	move	$a4, $zero
.LBB61_24:                              # %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
                                        #   in Loop: Header=BB61_25 Depth=1
	slli.d	$a4, $a4, 3
	fstx.d	$fa0, $fp, $a4
	bge	$a2, $a3, .LBB61_35
.LBB61_25:                              # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_27 Depth 2
                                        #     Child Loop BB61_33 Depth 2
	move	$a4, $s0
	fld.d	$fa0, $s0, -8
	fld.d	$fa1, $fp, 0
	addi.d	$s0, $s0, -8
	sub.d	$a3, $s0, $fp
	srai.d	$a5, $a3, 3
	fst.d	$fa1, $a4, -8
	blt	$a5, $a0, .LBB61_29
# %bb.26:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB61_25 Depth=1
	move	$a6, $zero
	addi.d	$a4, $a5, -1
	srli.d	$a7, $a4, 63
	add.d	$a4, $a4, $a7
	srai.d	$a7, $a4, 1
	.p2align	4, , 16
.LBB61_27:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB61_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a6, 1
	addi.d	$t0, $a4, 2
	slli.d	$t1, $t0, 3
	addi.d	$a4, $a4, 1
	slli.d	$t2, $a4, 3
	fldx.d	$fa1, $fp, $t1
	fldx.d	$fa2, $fp, $t2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t1, $fcc0
	masknez	$t0, $t0, $t1
	maskeqz	$a4, $a4, $t1
	or	$a4, $a4, $t0
	slli.d	$t0, $a4, 3
	fldx.d	$fa1, $fp, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $fp, $a6
	move	$a6, $a4
	blt	$a4, $a7, .LBB61_27
# %bb.28:                               # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB61_25 Depth=1
	andi	$a6, $a3, 8
	beqz	$a6, .LBB61_30
	b	.LBB61_32
	.p2align	4, , 16
.LBB61_29:                              #   in Loop: Header=BB61_25 Depth=1
	move	$a4, $zero
	andi	$a6, $a3, 8
	bnez	$a6, .LBB61_32
.LBB61_30:                              #   in Loop: Header=BB61_25 Depth=1
	addi.d	$a5, $a5, -2
	srai.d	$a5, $a5, 1
	bne	$a4, $a5, .LBB61_32
# %bb.31:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB61_25 Depth=1
	slli.d	$a5, $a4, 1
	addi.d	$a5, $a5, 1
	slli.d	$a6, $a5, 3
	fldx.d	$fa1, $fp, $a6
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a5
	b	.LBB61_33
	.p2align	4, , 16
.LBB61_32:                              #   in Loop: Header=BB61_25 Depth=1
	beqz	$a4, .LBB61_23
	.p2align	4, , 16
.LBB61_33:                              # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB61_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 1
	slli.d	$a7, $a6, 3
	fldx.d	$fa1, $fp, $a7
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB61_24
# %bb.34:                               #   in Loop: Header=BB61_33 Depth=2
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a6
	bltu	$a1, $a5, .LBB61_33
	b	.LBB61_23
.LBB61_35:                              # %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit
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
.Lfunc_end61:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_, .Lfunc_end61-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ # -- Begin function _ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,@function
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_: # @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
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
	.cfi_offset 56, -88
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 129
	blt	$a0, $a1, .LBB62_7
# %bb.1:
	addi.d	$s1, $s0, 128
	beqz	$zero, .LBB62_21
.LBB62_2:                               # %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
	bne	$fp, $s1, .LBB62_4
	b	.LBB62_20
	.p2align	4, , 16
.LBB62_3:                               # %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB62_4 Depth=1
	addi.d	$s1, $s1, 8
	fst.d	$fa0, $a0, 0
	beq	$s1, $fp, .LBB62_20
.LBB62_4:                               # %.lr.ph.i10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_6 Depth 2
	fld.d	$fa0, $s1, 0
	fld.d	$fa1, $s1, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	move	$a0, $s1
	bcnez	$fcc0, .LBB62_3
# %bb.5:                                # %.lr.ph.i.i12.preheader
                                        #   in Loop: Header=BB62_4 Depth=1
	move	$a0, $s1
	.p2align	4, , 16
.LBB62_6:                               # %.lr.ph.i.i12
                                        #   Parent Loop BB62_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa1, $a0, 0
	fld.d	$fa1, $a0, -16
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB62_6
	b	.LBB62_3
.LBB62_7:
	beq	$fp, $s0, .LBB62_20
# %bb.8:
	addi.d	$a2, $s0, 8
	beq	$a2, $fp, .LBB62_20
# %bb.9:                                # %.lr.ph.i19.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 8
	move	$s3, $s0
	b	.LBB62_14
	.p2align	4, , 16
.LBB62_10:                              #   in Loop: Header=BB62_14 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 3
	blt	$a0, $s1, .LBB62_18
# %bb.11:                               #   in Loop: Header=BB62_14 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB62_12:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i22
                                        #   in Loop: Header=BB62_14 Depth=1
	move	$a0, $s0
.LBB62_13:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i22
                                        #   in Loop: Header=BB62_14 Depth=1
	addi.d	$a2, $s3, 8
	fst.d	$fs0, $a0, 0
	beq	$a2, $fp, .LBB62_20
.LBB62_14:                              # %.lr.ph.i19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_17 Depth 2
	move	$a1, $s3
	move	$s3, $a2
	fld.d	$fs0, $a2, 0
	fld.d	$fa0, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB62_10
# %bb.15:                               #   in Loop: Header=BB62_14 Depth=1
	fld.d	$fa0, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s3
	bcnez	$fcc0, .LBB62_13
# %bb.16:                               # %.lr.ph.i.i26.preheader
                                        #   in Loop: Header=BB62_14 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB62_17:                              # %.lr.ph.i.i26
                                        #   Parent Loop BB62_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB62_17
	b	.LBB62_13
.LBB62_18:                              #   in Loop: Header=BB62_14 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB62_13
# %bb.19:                               #   in Loop: Header=BB62_14 Depth=1
	fst.d	$fa0, $a1, 8
	b	.LBB62_12
.LBB62_20:                              # %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.LBB62_21:                              # %.lr.ph.i.preheader
	addi.d	$s2, $s0, 8
	ori	$s3, $zero, 8
	ori	$s4, $zero, 2
	ori	$s5, $zero, 128
	ori	$s6, $zero, 8
	move	$s7, $s0
	b	.LBB62_26
	.p2align	4, , 16
.LBB62_22:                              #   in Loop: Header=BB62_26 Depth=1
	sub.d	$a2, $s7, $s0
	srai.d	$a0, $a2, 3
	blt	$a0, $s4, .LBB62_30
# %bb.23:                               #   in Loop: Header=BB62_26 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB62_24:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
                                        #   in Loop: Header=BB62_26 Depth=1
	move	$a0, $s0
.LBB62_25:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
                                        #   in Loop: Header=BB62_26 Depth=1
	fst.d	$fs0, $a0, 0
	addi.d	$s6, $s6, 8
	addi.d	$s2, $s2, 8
	beq	$s6, $s5, .LBB62_2
.LBB62_26:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_29 Depth 2
	fldx.d	$fs0, $s0, $s6
	fld.d	$fa0, $s0, 0
	move	$a1, $s7
	fcmp.cule.d	$fcc0, $fa0, $fs0
	add.d	$s7, $s0, $s6
	bceqz	$fcc0, .LBB62_22
# %bb.27:                               #   in Loop: Header=BB62_26 Depth=1
	fld.d	$fa0, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s7
	bcnez	$fcc0, .LBB62_25
# %bb.28:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB62_26 Depth=1
	move	$a0, $s2
	.p2align	4, , 16
.LBB62_29:                              # %.lr.ph.i.i
                                        #   Parent Loop BB62_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB62_29
	b	.LBB62_25
.LBB62_30:                              #   in Loop: Header=BB62_26 Depth=1
	move	$a0, $s0
	bne	$a2, $s3, .LBB62_25
# %bb.31:                               #   in Loop: Header=BB62_26 Depth=1
	fst.d	$fa0, $a1, 8
	b	.LBB62_24
.Lfunc_end62:
	.size	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_, .Lfunc_end62-_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,"axG",@progbits,_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,comdat
	.weak	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ # -- Begin function _ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.p2align	5
	.type	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,@function
_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_: # @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_startproc
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	st.b	$a3, $sp, 15
	addi.d	$a2, $sp, 15
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_)
	jirl	$ra, $ra, 0
	bgeu	$s0, $fp, .LBB63_28
# %bb.1:                                # %.lr.ph
	sub.d	$a0, $s0, $s1
	srai.d	$a1, $a0, 3
	andi	$a0, $a0, 8
	ori	$a2, $zero, 3
	addi.d	$a3, $a1, -2
	blt	$a1, $a2, .LBB63_15
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.d	$a1, $a1, -1
	srli.d	$a2, $a1, 63
	add.d	$a1, $a1, $a2
	srai.d	$a1, $a1, 1
	srai.d	$a2, $a3, 1
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $s1, 3
	alsl.d	$a5, $a2, $s1, 3
	ori	$a6, $zero, 1
	b	.LBB63_6
	.p2align	4, , 16
.LBB63_3:                               #   in Loop: Header=BB63_6 Depth=1
	move	$a7, $zero
.LBB63_4:                               # %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.us
                                        #   in Loop: Header=BB63_6 Depth=1
	slli.d	$a7, $a7, 3
	fstx.d	$fa0, $s1, $a7
.LBB63_5:                               #   in Loop: Header=BB63_6 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB63_28
.LBB63_6:                               # %.lr.ph.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_8 Depth 2
                                        #     Child Loop BB63_13 Depth 2
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB63_5
# %bb.7:                                # %.lr.ph.i.i.preheader.us
                                        #   in Loop: Header=BB63_6 Depth=1
	move	$a7, $zero
	fst.d	$fa1, $s0, 0
	.p2align	4, , 16
.LBB63_8:                               # %.lr.ph.i.i.us
                                        #   Parent Loop BB63_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t0, $a7
	slli.d	$a7, $a7, 1
	addi.d	$t1, $a7, 2
	slli.d	$t2, $t1, 3
	addi.d	$a7, $a7, 1
	slli.d	$t3, $a7, 3
	fldx.d	$fa1, $s1, $t2
	fldx.d	$fa2, $s1, $t3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t2, $fcc0
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	slli.d	$t1, $a7, 3
	fldx.d	$fa1, $s1, $t1
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $s1, $t0
	blt	$a7, $a1, .LBB63_8
# %bb.9:                                # %._crit_edge.i.i.loopexit.us
                                        #   in Loop: Header=BB63_6 Depth=1
	bnez	$a0, .LBB63_12
# %bb.10:                               # %._crit_edge.i.i.loopexit.us
                                        #   in Loop: Header=BB63_6 Depth=1
	bne	$a7, $a2, .LBB63_12
# %bb.11:                               # %.thread.i.us
                                        #   in Loop: Header=BB63_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
	b	.LBB63_13
	.p2align	4, , 16
.LBB63_12:                              #   in Loop: Header=BB63_6 Depth=1
	beqz	$a7, .LBB63_3
	.p2align	4, , 16
.LBB63_13:                              # %.lr.ph.i.i.i.us
                                        #   Parent Loop BB63_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $s1, $t2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB63_4
# %bb.14:                               #   in Loop: Header=BB63_13 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $s1, $a7
	move	$a7, $t1
	bltu	$a6, $t0, .LBB63_13
	b	.LBB63_3
.LBB63_15:                              # %.lr.ph.split
	bnez	$a0, .LBB63_24
# %bb.16:                               # %.lr.ph.split.split.us
	beqz	$a3, .LBB63_22
# %bb.17:                               # %.lr.ph.split.split.us.split.preheader
	fld.d	$fa0, $s1, 0
	b	.LBB63_19
	.p2align	4, , 16
.LBB63_18:                              #   in Loop: Header=BB63_19 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB63_28
.LBB63_19:                              # %.lr.ph.split.split.us.split
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB63_18
# %bb.20:                               # %._crit_edge.i.i.us13
                                        #   in Loop: Header=BB63_19 Depth=1
	fst.d	$fa0, $s0, 0
	fst.d	$fa1, $s1, 0
	fmov.d	$fa0, $fa1
	b	.LBB63_18
	.p2align	4, , 16
.LBB63_21:                              #   in Loop: Header=BB63_22 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB63_28
.LBB63_22:                              # %.lr.ph.split.split.us.split.us
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB63_21
# %bb.23:                               # %._crit_edge.i.i.us13.us
                                        #   in Loop: Header=BB63_22 Depth=1
	fst.d	$fa1, $s0, 0
	fld.d	$fa1, $s1, 8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	fst.d	$fa1, $s1, 0
	movcf2gr	$a0, $fcc0
	slli.d	$a0, $a0, 3
	fstx.d	$fa0, $s1, $a0
	b	.LBB63_21
.LBB63_24:                              # %.lr.ph.split.split.preheader
	fld.d	$fa0, $s1, 0
	b	.LBB63_26
	.p2align	4, , 16
.LBB63_25:                              #   in Loop: Header=BB63_26 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB63_28
.LBB63_26:                              # %.lr.ph.split.split
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB63_25
# %bb.27:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB63_26 Depth=1
	fst.d	$fa0, $s0, 0
	fst.d	$fa1, $s1, 0
	fmov.d	$fa0, $fa1
	b	.LBB63_25
.LBB63_28:                              # %._crit_edge
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end63:
	.size	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_, .Lfunc_end63-_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,"axG",@progbits,_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,comdat
	.weak	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ # -- Begin function _ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,@function
_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_: # @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a4, $a1, 3
	ori	$a2, $zero, 2
	bge	$a4, $a2, .LBB64_2
.LBB64_1:                               # %.loopexit
	ret
.LBB64_2:
	addi.d	$a3, $a4, -2
	srli.d	$a2, $a3, 1
	addi.d	$a4, $a4, -1
	andi	$a5, $a1, 8
	srli.d	$a1, $a4, 1
	bnez	$a5, .LBB64_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $a0, 3
	alsl.d	$a5, $a2, $a0, 3
	move	$a7, $a2
	b	.LBB64_6
	.p2align	4, , 16
.LBB64_4:                               #   in Loop: Header=BB64_6 Depth=1
	move	$t0, $a7
.LBB64_5:                               # %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
                                        #   in Loop: Header=BB64_6 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB64_1
.LBB64_6:                               # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_8 Depth 2
                                        #     Child Loop BB64_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $a0, $a7
	move	$a7, $a6
	bge	$a6, $a1, .LBB64_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB64_6 Depth=1
	move	$t0, $a6
	.p2align	4, , 16
.LBB64_8:                               # %.lr.ph.i
                                        #   Parent Loop BB64_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t0, 1
	addi.d	$t1, $a7, 2
	slli.d	$t2, $t1, 3
	addi.d	$a7, $a7, 1
	slli.d	$t3, $a7, 3
	fldx.d	$fa1, $a0, $t2
	fldx.d	$fa2, $a0, $t3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t2, $fcc0
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	slli.d	$t1, $a7, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a7
	blt	$a7, $a1, .LBB64_8
.LBB64_9:                               # %._crit_edge.i
                                        #   in Loop: Header=BB64_6 Depth=1
	bne	$a7, $a2, .LBB64_11
# %bb.10:                               #   in Loop: Header=BB64_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
.LBB64_11:                              #   in Loop: Header=BB64_6 Depth=1
	bge	$a6, $a7, .LBB64_4
	.p2align	4, , 16
.LBB64_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB64_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB64_4
# %bb.13:                               #   in Loop: Header=BB64_12 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	blt	$a6, $t0, .LBB64_12
	b	.LBB64_5
	.p2align	4, , 16
.LBB64_14:                              #   in Loop: Header=BB64_16 Depth=1
	move	$a4, $a2
.LBB64_15:                              # %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
                                        #   in Loop: Header=BB64_16 Depth=1
	slli.d	$a2, $a4, 3
	fstx.d	$fa0, $a0, $a2
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB64_1
.LBB64_16:                              # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_18 Depth 2
                                        #     Child Loop BB64_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 3
	fldx.d	$fa0, $a0, $a2
	move	$a4, $a3
	bge	$a3, $a1, .LBB64_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB64_16 Depth=1
	move	$a2, $a3
	.p2align	4, , 16
.LBB64_18:                              # %.lr.ph.i.us
                                        #   Parent Loop BB64_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a2
	slli.d	$a2, $a2, 1
	addi.d	$a5, $a2, 2
	slli.d	$a6, $a5, 3
	addi.d	$a2, $a2, 1
	slli.d	$a7, $a2, 3
	fldx.d	$fa1, $a0, $a6
	fldx.d	$fa2, $a0, $a7
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 3
	fldx.d	$fa1, $a0, $a5
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $a0, $a4
	blt	$a2, $a1, .LBB64_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB64_16 Depth=1
	bge	$a3, $a2, .LBB64_14
	.p2align	4, , 16
.LBB64_20:                              # %.lr.ph.i.i.us
                                        #   Parent Loop BB64_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a2, -1
	srli.d	$a5, $a4, 63
	add.d	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $a0, $a5
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB64_14
# %bb.21:                               #   in Loop: Header=BB64_20 Depth=2
	slli.d	$a2, $a2, 3
	fstx.d	$fa1, $a0, $a2
	move	$a2, $a4
	blt	$a3, $a4, .LBB64_20
	b	.LBB64_15
.Lfunc_end64:
	.size	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_, .Lfunc_end64-_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ # -- Begin function _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,@function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_: # @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
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
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 3
	ori	$a3, $zero, 17
	blt	$a0, $a3, .LBB65_35
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	addi.d	$s2, $fp, 8
	sub.d	$s3, $zero, $fp
	addi.w	$s4, $zero, -8
	ori	$s5, $zero, 16
	b	.LBB65_3
	.p2align	4, , 16
.LBB65_2:                               # %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
                                        #   in Loop: Header=BB65_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $s1
	srai.d	$a0, $a0, 3
	move	$a1, $s1
	bge	$s5, $a0, .LBB65_35
.LBB65_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_16 Depth 2
                                        #       Child Loop BB65_17 Depth 3
                                        #       Child Loop BB65_19 Depth 3
	beqz	$s0, .LBB65_22
# %bb.4:                                #   in Loop: Header=BB65_3 Depth=1
	slli.d	$a0, $a0, 2
	and	$a3, $a0, $s4
	ld.d	$a2, $fp, 8
	ldx.d	$a4, $fp, $a3
	ld.d	$a0, $a1, -8
	add.d	$a3, $fp, $a3
	bge	$a2, $a4, .LBB65_7
# %bb.5:                                #   in Loop: Header=BB65_3 Depth=1
	bge	$a4, $a0, .LBB65_9
# %bb.6:                                #   in Loop: Header=BB65_3 Depth=1
	ld.d	$a0, $fp, 0
	st.d	$a4, $fp, 0
	st.d	$a0, $a3, 0
	b	.LBB65_15
	.p2align	4, , 16
.LBB65_7:                               #   in Loop: Header=BB65_3 Depth=1
	bge	$a2, $a0, .LBB65_11
# %bb.8:                                #   in Loop: Header=BB65_3 Depth=1
	ld.d	$a0, $fp, 0
	st.d	$a2, $fp, 0
	st.d	$a0, $fp, 8
	b	.LBB65_15
	.p2align	4, , 16
.LBB65_9:                               #   in Loop: Header=BB65_3 Depth=1
	ld.d	$a3, $fp, 0
	bge	$a2, $a0, .LBB65_13
# %bb.10:                               #   in Loop: Header=BB65_3 Depth=1
	st.d	$a0, $fp, 0
	st.d	$a3, $a1, -8
	b	.LBB65_15
	.p2align	4, , 16
.LBB65_11:                              #   in Loop: Header=BB65_3 Depth=1
	ld.d	$a2, $fp, 0
	bge	$a4, $a0, .LBB65_14
# %bb.12:                               #   in Loop: Header=BB65_3 Depth=1
	st.d	$a0, $fp, 0
	st.d	$a2, $a1, -8
	b	.LBB65_15
.LBB65_13:                              #   in Loop: Header=BB65_3 Depth=1
	st.d	$a2, $fp, 0
	st.d	$a3, $fp, 8
	b	.LBB65_15
.LBB65_14:                              #   in Loop: Header=BB65_3 Depth=1
	st.d	$a4, $fp, 0
	st.d	$a2, $a3, 0
	.p2align	4, , 16
.LBB65_15:                              # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader
                                        #   in Loop: Header=BB65_3 Depth=1
	addi.d	$s0, $s0, -1
	move	$a2, $a1
	move	$a0, $s2
	.p2align	4, , 16
.LBB65_16:                              # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
                                        #   Parent Loop BB65_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB65_17 Depth 3
                                        #       Child Loop BB65_19 Depth 3
	ld.d	$a3, $fp, 0
	addi.d	$s1, $a0, -8
	.p2align	4, , 16
.LBB65_17:                              #   Parent Loop BB65_3 Depth=1
                                        #     Parent Loop BB65_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$s1, $s1, 8
	blt	$a4, $a3, .LBB65_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB65_16 Depth=2
	addi.d	$a5, $a0, -8
	.p2align	4, , 16
.LBB65_19:                              # %.preheader.i.i
                                        #   Parent Loop BB65_3 Depth=1
                                        #     Parent Loop BB65_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $a2, -8
	addi.d	$a2, $a2, -8
	blt	$a3, $a6, .LBB65_19
# %bb.20:                               #   in Loop: Header=BB65_16 Depth=2
	bgeu	$a5, $a2, .LBB65_2
# %bb.21:                               #   in Loop: Header=BB65_16 Depth=2
	st.d	$a6, $a5, 0
	st.d	$a4, $a2, 0
	b	.LBB65_16
.LBB65_22:                              # %.lr.ph.preheader.i.i
	move	$a0, $fp
	move	$s0, $a1
	move	$a2, $a1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	b	.LBB65_25
	.p2align	4, , 16
.LBB65_23:                              #   in Loop: Header=BB65_25 Depth=1
	move	$a5, $zero
.LBB65_24:                              # %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
                                        #   in Loop: Header=BB65_25 Depth=1
	slli.d	$a5, $a5, 3
	stx.d	$a3, $fp, $a5
	bge	$a2, $a4, .LBB65_35
.LBB65_25:                              # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_27 Depth 2
                                        #     Child Loop BB65_33 Depth 2
	move	$a5, $s0
	ld.d	$a3, $s0, -8
	ld.d	$a7, $fp, 0
	addi.d	$s0, $s0, -8
	sub.d	$a4, $s0, $fp
	srai.d	$a6, $a4, 3
	st.d	$a7, $a5, -8
	blt	$a6, $a0, .LBB65_29
# %bb.26:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB65_25 Depth=1
	move	$a7, $zero
	addi.d	$a5, $a6, -1
	srli.d	$t0, $a5, 63
	add.d	$a5, $a5, $t0
	srai.d	$t0, $a5, 1
	.p2align	4, , 16
.LBB65_27:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB65_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a5, $a7, 1
	addi.d	$t1, $a5, 2
	slli.d	$t2, $t1, 3
	addi.d	$a5, $a5, 1
	slli.d	$t3, $a5, 3
	ldx.d	$t2, $fp, $t2
	ldx.d	$t3, $fp, $t3
	slt	$t2, $t2, $t3
	masknez	$t1, $t1, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t1
	slli.d	$t1, $a5, 3
	ldx.d	$t1, $fp, $t1
	slli.d	$a7, $a7, 3
	stx.d	$t1, $fp, $a7
	move	$a7, $a5
	blt	$a5, $t0, .LBB65_27
# %bb.28:                               # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB65_25 Depth=1
	andi	$a7, $a4, 8
	beqz	$a7, .LBB65_30
	b	.LBB65_32
	.p2align	4, , 16
.LBB65_29:                              #   in Loop: Header=BB65_25 Depth=1
	move	$a5, $zero
	andi	$a7, $a4, 8
	bnez	$a7, .LBB65_32
.LBB65_30:                              #   in Loop: Header=BB65_25 Depth=1
	addi.d	$a6, $a6, -2
	srai.d	$a6, $a6, 1
	bne	$a5, $a6, .LBB65_32
# %bb.31:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB65_25 Depth=1
	slli.d	$a6, $a5, 1
	addi.d	$a6, $a6, 1
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $fp, $a7
	slli.d	$a5, $a5, 3
	stx.d	$a7, $fp, $a5
	move	$a5, $a6
	b	.LBB65_33
	.p2align	4, , 16
.LBB65_32:                              #   in Loop: Header=BB65_25 Depth=1
	beqz	$a5, .LBB65_23
	.p2align	4, , 16
.LBB65_33:                              # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB65_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a6, $a5, -1
	srli.d	$a7, $a6, 1
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $fp, $t0
	bge	$t0, $a3, .LBB65_24
# %bb.34:                               #   in Loop: Header=BB65_33 Depth=2
	slli.d	$a5, $a5, 3
	stx.d	$t0, $fp, $a5
	move	$a5, $a7
	bltu	$a1, $a6, .LBB65_33
	b	.LBB65_23
.LBB65_35:                              # %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit
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
.Lfunc_end65:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_, .Lfunc_end65-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ # -- Begin function _ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,@function
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_: # @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
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
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 129
	blt	$a0, $a1, .LBB66_7
# %bb.1:
	addi.d	$s1, $s0, 128
	beqz	$zero, .LBB66_21
.LBB66_2:                               # %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
	bne	$fp, $s1, .LBB66_4
	b	.LBB66_20
	.p2align	4, , 16
.LBB66_3:                               # %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB66_4 Depth=1
	addi.d	$s1, $s1, 8
	st.d	$a0, $a1, 0
	beq	$s1, $fp, .LBB66_20
.LBB66_4:                               # %.lr.ph.i10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_6 Depth 2
	ld.d	$a0, $s1, 0
	ld.d	$a2, $s1, -8
	move	$a1, $s1
	bge	$a0, $a2, .LBB66_3
# %bb.5:                                # %.lr.ph.i.i12.preheader
                                        #   in Loop: Header=BB66_4 Depth=1
	move	$a1, $s1
	.p2align	4, , 16
.LBB66_6:                               # %.lr.ph.i.i12
                                        #   Parent Loop BB66_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a2, $a1, 0
	ld.d	$a2, $a1, -16
	addi.d	$a1, $a1, -8
	blt	$a0, $a2, .LBB66_6
	b	.LBB66_3
.LBB66_7:
	beq	$fp, $s0, .LBB66_20
# %bb.8:
	addi.d	$a2, $s0, 8
	beq	$a2, $fp, .LBB66_20
# %bb.9:                                # %.lr.ph.i19.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 8
	move	$s3, $s0
	b	.LBB66_14
	.p2align	4, , 16
.LBB66_10:                              #   in Loop: Header=BB66_14 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 3
	blt	$a0, $s1, .LBB66_18
# %bb.11:                               #   in Loop: Header=BB66_14 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB66_12:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEES6_ET0_T_S8_S7_.exit.i22
                                        #   in Loop: Header=BB66_14 Depth=1
	move	$a0, $s0
.LBB66_13:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEES6_ET0_T_S8_S7_.exit.i22
                                        #   in Loop: Header=BB66_14 Depth=1
	addi.d	$a2, $s3, 8
	st.d	$s4, $a0, 0
	beq	$a2, $fp, .LBB66_20
.LBB66_14:                              # %.lr.ph.i19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_17 Depth 2
	move	$a1, $s3
	move	$s3, $a2
	ld.d	$s4, $a2, 0
	ld.d	$a3, $s0, 0
	blt	$s4, $a3, .LBB66_10
# %bb.15:                               #   in Loop: Header=BB66_14 Depth=1
	ld.d	$a1, $a1, 0
	move	$a0, $s3
	bge	$s4, $a1, .LBB66_13
# %bb.16:                               # %.lr.ph.i.i26.preheader
                                        #   in Loop: Header=BB66_14 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB66_17:                              # %.lr.ph.i.i26
                                        #   Parent Loop BB66_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a1, $a0, 0
	ld.d	$a1, $a0, -16
	addi.d	$a0, $a0, -8
	blt	$s4, $a1, .LBB66_17
	b	.LBB66_13
.LBB66_18:                              #   in Loop: Header=BB66_14 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB66_13
# %bb.19:                               #   in Loop: Header=BB66_14 Depth=1
	st.d	$a3, $a1, 8
	b	.LBB66_12
.LBB66_20:                              # %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
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
.LBB66_21:                              # %.lr.ph.i.preheader
	addi.d	$s2, $s0, 8
	ori	$s3, $zero, 8
	ori	$s4, $zero, 2
	ori	$s5, $zero, 128
	ori	$s6, $zero, 8
	move	$s7, $s0
	b	.LBB66_26
	.p2align	4, , 16
.LBB66_22:                              #   in Loop: Header=BB66_26 Depth=1
	sub.d	$a2, $s7, $s0
	srai.d	$a0, $a2, 3
	blt	$a0, $s4, .LBB66_30
# %bb.23:                               #   in Loop: Header=BB66_26 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB66_24:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEES6_ET0_T_S8_S7_.exit.i
                                        #   in Loop: Header=BB66_26 Depth=1
	move	$a0, $s0
.LBB66_25:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEES6_ET0_T_S8_S7_.exit.i
                                        #   in Loop: Header=BB66_26 Depth=1
	st.d	$s8, $a0, 0
	addi.d	$s6, $s6, 8
	addi.d	$s2, $s2, 8
	beq	$s6, $s5, .LBB66_2
.LBB66_26:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_29 Depth 2
	ldx.d	$s8, $s0, $s6
	ld.d	$a3, $s0, 0
	move	$a1, $s7
	add.d	$s7, $s0, $s6
	blt	$s8, $a3, .LBB66_22
# %bb.27:                               #   in Loop: Header=BB66_26 Depth=1
	ld.d	$a1, $a1, 0
	move	$a0, $s7
	bge	$s8, $a1, .LBB66_25
# %bb.28:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB66_26 Depth=1
	move	$a0, $s2
	.p2align	4, , 16
.LBB66_29:                              # %.lr.ph.i.i
                                        #   Parent Loop BB66_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a1, $a0, 0
	ld.d	$a1, $a0, -16
	addi.d	$a0, $a0, -8
	blt	$s8, $a1, .LBB66_29
	b	.LBB66_25
.LBB66_30:                              #   in Loop: Header=BB66_26 Depth=1
	move	$a0, $s0
	bne	$a2, $s3, .LBB66_25
# %bb.31:                               #   in Loop: Header=BB66_26 Depth=1
	st.d	$a3, $a1, 8
	b	.LBB66_24
.Lfunc_end66:
	.size	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_, .Lfunc_end66-_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,"axG",@progbits,_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,comdat
	.weak	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ # -- Begin function _ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.p2align	5
	.type	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,@function
_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_: # @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_startproc
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	st.b	$a3, $sp, 15
	addi.d	$a2, $sp, 15
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_)
	jirl	$ra, $ra, 0
	bgeu	$s0, $fp, .LBB67_28
# %bb.1:                                # %.lr.ph
	sub.d	$a0, $s0, $s1
	srai.d	$a1, $a0, 3
	andi	$a0, $a0, 8
	ori	$a2, $zero, 3
	addi.d	$a3, $a1, -2
	blt	$a1, $a2, .LBB67_15
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.d	$a1, $a1, -1
	srli.d	$a2, $a1, 63
	add.d	$a1, $a1, $a2
	srai.d	$a1, $a1, 1
	srai.d	$a2, $a3, 1
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $s1, 3
	alsl.d	$a5, $a2, $s1, 3
	ori	$a6, $zero, 1
	b	.LBB67_6
	.p2align	4, , 16
.LBB67_3:                               #   in Loop: Header=BB67_6 Depth=1
	move	$t0, $zero
.LBB67_4:                               # %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.us
                                        #   in Loop: Header=BB67_6 Depth=1
	slli.d	$t0, $t0, 3
	stx.d	$a7, $s1, $t0
.LBB67_5:                               #   in Loop: Header=BB67_6 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB67_28
.LBB67_6:                               # %.lr.ph.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB67_8 Depth 2
                                        #     Child Loop BB67_13 Depth 2
	ld.d	$a7, $s0, 0
	ld.d	$t1, $s1, 0
	bge	$a7, $t1, .LBB67_5
# %bb.7:                                # %.lr.ph.i.i.preheader.us
                                        #   in Loop: Header=BB67_6 Depth=1
	move	$t0, $zero
	st.d	$t1, $s0, 0
	.p2align	4, , 16
.LBB67_8:                               # %.lr.ph.i.i.us
                                        #   Parent Loop BB67_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t1, $t0
	slli.d	$t0, $t0, 1
	addi.d	$t2, $t0, 2
	slli.d	$t3, $t2, 3
	addi.d	$t0, $t0, 1
	slli.d	$t4, $t0, 3
	ldx.d	$t3, $s1, $t3
	ldx.d	$t4, $s1, $t4
	slt	$t3, $t3, $t4
	masknez	$t2, $t2, $t3
	maskeqz	$t0, $t0, $t3
	or	$t0, $t0, $t2
	slli.d	$t2, $t0, 3
	ldx.d	$t2, $s1, $t2
	slli.d	$t1, $t1, 3
	stx.d	$t2, $s1, $t1
	blt	$t0, $a1, .LBB67_8
# %bb.9:                                # %._crit_edge.i.i.loopexit.us
                                        #   in Loop: Header=BB67_6 Depth=1
	bnez	$a0, .LBB67_12
# %bb.10:                               # %._crit_edge.i.i.loopexit.us
                                        #   in Loop: Header=BB67_6 Depth=1
	bne	$t0, $a2, .LBB67_12
# %bb.11:                               # %.thread.i.us
                                        #   in Loop: Header=BB67_6 Depth=1
	ld.d	$t0, $a4, 0
	st.d	$t0, $a5, 0
	move	$t0, $a3
	b	.LBB67_13
	.p2align	4, , 16
.LBB67_12:                              #   in Loop: Header=BB67_6 Depth=1
	beqz	$t0, .LBB67_3
	.p2align	4, , 16
.LBB67_13:                              # %.lr.ph.i.i.i.us
                                        #   Parent Loop BB67_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 1
	slli.d	$t3, $t2, 3
	ldx.d	$t3, $s1, $t3
	bge	$t3, $a7, .LBB67_4
# %bb.14:                               #   in Loop: Header=BB67_13 Depth=2
	slli.d	$t0, $t0, 3
	stx.d	$t3, $s1, $t0
	move	$t0, $t2
	bltu	$a6, $t1, .LBB67_13
	b	.LBB67_3
.LBB67_15:                              # %.lr.ph.split
	bnez	$a0, .LBB67_24
# %bb.16:                               # %.lr.ph.split.split.us
	beqz	$a3, .LBB67_22
# %bb.17:                               # %.lr.ph.split.split.us.split.preheader
	ld.d	$a0, $s1, 0
	b	.LBB67_19
	.p2align	4, , 16
.LBB67_18:                              #   in Loop: Header=BB67_19 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB67_28
.LBB67_19:                              # %.lr.ph.split.split.us.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	bge	$a1, $a0, .LBB67_18
# %bb.20:                               # %._crit_edge.i.i.us13
                                        #   in Loop: Header=BB67_19 Depth=1
	st.d	$a0, $s0, 0
	st.d	$a1, $s1, 0
	move	$a0, $a1
	b	.LBB67_18
	.p2align	4, , 16
.LBB67_21:                              #   in Loop: Header=BB67_22 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB67_28
.LBB67_22:                              # %.lr.ph.split.split.us.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s1, 0
	bge	$a0, $a1, .LBB67_21
# %bb.23:                               # %._crit_edge.i.i.us13.us
                                        #   in Loop: Header=BB67_22 Depth=1
	st.d	$a1, $s0, 0
	ld.d	$a1, $s1, 8
	st.d	$a1, $s1, 0
	slt	$a1, $a1, $a0
	xori	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s1, $a1
	b	.LBB67_21
.LBB67_24:                              # %.lr.ph.split.split.preheader
	ld.d	$a0, $s1, 0
	b	.LBB67_26
	.p2align	4, , 16
.LBB67_25:                              #   in Loop: Header=BB67_26 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB67_28
.LBB67_26:                              # %.lr.ph.split.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	bge	$a1, $a0, .LBB67_25
# %bb.27:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB67_26 Depth=1
	st.d	$a0, $s0, 0
	st.d	$a1, $s1, 0
	move	$a0, $a1
	b	.LBB67_25
.LBB67_28:                              # %._crit_edge
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end67:
	.size	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_, .Lfunc_end67-_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,"axG",@progbits,_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,comdat
	.weak	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ # -- Begin function _ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,@function
_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_: # @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a4, $a1, 3
	ori	$a2, $zero, 2
	bge	$a4, $a2, .LBB68_2
.LBB68_1:                               # %.loopexit
	ret
.LBB68_2:
	addi.d	$a3, $a4, -2
	srli.d	$a2, $a3, 1
	addi.d	$a4, $a4, -1
	andi	$a5, $a1, 8
	srli.d	$a1, $a4, 1
	bnez	$a5, .LBB68_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $a0, 3
	alsl.d	$a5, $a2, $a0, 3
	move	$a7, $a2
	b	.LBB68_6
	.p2align	4, , 16
.LBB68_4:                               #   in Loop: Header=BB68_6 Depth=1
	move	$t1, $t0
.LBB68_5:                               # %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElxNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
                                        #   in Loop: Header=BB68_6 Depth=1
	slli.d	$t0, $t1, 3
	stx.d	$a7, $a0, $t0
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB68_1
.LBB68_6:                               # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_8 Depth 2
                                        #     Child Loop BB68_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a0, $a7
	move	$t0, $a6
	bge	$a6, $a1, .LBB68_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB68_6 Depth=1
	move	$t1, $a6
	.p2align	4, , 16
.LBB68_8:                               # %.lr.ph.i
                                        #   Parent Loop BB68_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $t1, 1
	addi.d	$t2, $t0, 2
	slli.d	$t3, $t2, 3
	addi.d	$t0, $t0, 1
	slli.d	$t4, $t0, 3
	ldx.d	$t3, $a0, $t3
	ldx.d	$t4, $a0, $t4
	slt	$t3, $t3, $t4
	masknez	$t2, $t2, $t3
	maskeqz	$t0, $t0, $t3
	or	$t0, $t0, $t2
	slli.d	$t2, $t0, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t1, $t1, 3
	stx.d	$t2, $a0, $t1
	move	$t1, $t0
	blt	$t0, $a1, .LBB68_8
.LBB68_9:                               # %._crit_edge.i
                                        #   in Loop: Header=BB68_6 Depth=1
	bne	$t0, $a2, .LBB68_11
# %bb.10:                               #   in Loop: Header=BB68_6 Depth=1
	ld.d	$t0, $a4, 0
	st.d	$t0, $a5, 0
	move	$t0, $a3
.LBB68_11:                              #   in Loop: Header=BB68_6 Depth=1
	bge	$a6, $t0, .LBB68_4
	.p2align	4, , 16
.LBB68_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB68_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 63
	add.d	$t1, $t1, $t2
	srai.d	$t1, $t1, 1
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a0, $t2
	bge	$t2, $a7, .LBB68_4
# %bb.13:                               #   in Loop: Header=BB68_12 Depth=2
	slli.d	$t0, $t0, 3
	stx.d	$t2, $a0, $t0
	move	$t0, $t1
	blt	$a6, $t1, .LBB68_12
	b	.LBB68_5
	.p2align	4, , 16
.LBB68_14:                              #   in Loop: Header=BB68_16 Depth=1
	move	$a5, $a4
.LBB68_15:                              # %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElxNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
                                        #   in Loop: Header=BB68_16 Depth=1
	slli.d	$a4, $a5, 3
	stx.d	$a2, $a0, $a4
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB68_1
.LBB68_16:                              # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_18 Depth 2
                                        #     Child Loop BB68_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a0, $a2
	move	$a5, $a3
	bge	$a3, $a1, .LBB68_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB68_16 Depth=1
	move	$a4, $a3
	.p2align	4, , 16
.LBB68_18:                              # %.lr.ph.i.us
                                        #   Parent Loop BB68_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a5, $a4
	slli.d	$a4, $a4, 1
	addi.d	$a6, $a4, 2
	slli.d	$a7, $a6, 3
	addi.d	$a4, $a4, 1
	slli.d	$t0, $a4, 3
	ldx.d	$a7, $a0, $a7
	ldx.d	$t0, $a0, $t0
	slt	$a7, $a7, $t0
	masknez	$a6, $a6, $a7
	maskeqz	$a4, $a4, $a7
	or	$a4, $a4, $a6
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$a5, $a5, 3
	stx.d	$a6, $a0, $a5
	blt	$a4, $a1, .LBB68_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB68_16 Depth=1
	bge	$a3, $a4, .LBB68_14
	.p2align	4, , 16
.LBB68_20:                              # %.lr.ph.i.i.us
                                        #   Parent Loop BB68_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 63
	add.d	$a5, $a5, $a6
	srai.d	$a5, $a5, 1
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	bge	$a6, $a2, .LBB68_14
# %bb.21:                               #   in Loop: Header=BB68_20 Depth=2
	slli.d	$a4, $a4, 3
	stx.d	$a6, $a0, $a4
	move	$a4, $a5
	blt	$a3, $a5, .LBB68_20
	b	.LBB68_15
.Lfunc_end68:
	.size	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_, .Lfunc_end68-_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ # -- Begin function _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,@function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_: # @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
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
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 2
	ori	$a3, $zero, 17
	blt	$a0, $a3, .LBB69_35
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	addi.d	$s2, $fp, 4
	sub.d	$s3, $zero, $fp
	addi.w	$s4, $zero, -4
	ori	$s5, $zero, 16
	b	.LBB69_3
	.p2align	4, , 16
.LBB69_2:                               # %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
                                        #   in Loop: Header=BB69_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $s1
	srai.d	$a0, $a0, 2
	move	$a1, $s1
	bge	$s5, $a0, .LBB69_35
.LBB69_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_16 Depth 2
                                        #       Child Loop BB69_17 Depth 3
                                        #       Child Loop BB69_19 Depth 3
	beqz	$s0, .LBB69_22
# %bb.4:                                #   in Loop: Header=BB69_3 Depth=1
	slli.d	$a0, $a0, 1
	and	$a3, $a0, $s4
	ld.w	$a2, $fp, 4
	ldx.w	$a4, $fp, $a3
	ld.w	$a0, $a1, -4
	add.d	$a3, $fp, $a3
	bge	$a2, $a4, .LBB69_7
# %bb.5:                                #   in Loop: Header=BB69_3 Depth=1
	bge	$a4, $a0, .LBB69_9
# %bb.6:                                #   in Loop: Header=BB69_3 Depth=1
	ld.w	$a0, $fp, 0
	st.w	$a4, $fp, 0
	st.w	$a0, $a3, 0
	b	.LBB69_15
	.p2align	4, , 16
.LBB69_7:                               #   in Loop: Header=BB69_3 Depth=1
	bge	$a2, $a0, .LBB69_11
# %bb.8:                                #   in Loop: Header=BB69_3 Depth=1
	ld.w	$a0, $fp, 0
	st.w	$a2, $fp, 0
	st.w	$a0, $fp, 4
	b	.LBB69_15
	.p2align	4, , 16
.LBB69_9:                               #   in Loop: Header=BB69_3 Depth=1
	ld.w	$a3, $fp, 0
	bge	$a2, $a0, .LBB69_13
# %bb.10:                               #   in Loop: Header=BB69_3 Depth=1
	st.w	$a0, $fp, 0
	st.w	$a3, $a1, -4
	b	.LBB69_15
	.p2align	4, , 16
.LBB69_11:                              #   in Loop: Header=BB69_3 Depth=1
	ld.w	$a2, $fp, 0
	bge	$a4, $a0, .LBB69_14
# %bb.12:                               #   in Loop: Header=BB69_3 Depth=1
	st.w	$a0, $fp, 0
	st.w	$a2, $a1, -4
	b	.LBB69_15
.LBB69_13:                              #   in Loop: Header=BB69_3 Depth=1
	st.w	$a2, $fp, 0
	st.w	$a3, $fp, 4
	b	.LBB69_15
.LBB69_14:                              #   in Loop: Header=BB69_3 Depth=1
	st.w	$a4, $fp, 0
	st.w	$a2, $a3, 0
	.p2align	4, , 16
.LBB69_15:                              # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader
                                        #   in Loop: Header=BB69_3 Depth=1
	addi.d	$s0, $s0, -1
	move	$a2, $a1
	move	$a0, $s2
	.p2align	4, , 16
.LBB69_16:                              # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
                                        #   Parent Loop BB69_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB69_17 Depth 3
                                        #       Child Loop BB69_19 Depth 3
	ld.w	$a3, $fp, 0
	addi.d	$s1, $a0, -4
	.p2align	4, , 16
.LBB69_17:                              #   Parent Loop BB69_3 Depth=1
                                        #     Parent Loop BB69_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$s1, $s1, 4
	blt	$a4, $a3, .LBB69_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB69_16 Depth=2
	addi.d	$a5, $a0, -4
	.p2align	4, , 16
.LBB69_19:                              # %.preheader.i.i
                                        #   Parent Loop BB69_3 Depth=1
                                        #     Parent Loop BB69_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a2, -4
	addi.d	$a2, $a2, -4
	blt	$a3, $a6, .LBB69_19
# %bb.20:                               #   in Loop: Header=BB69_16 Depth=2
	bgeu	$a5, $a2, .LBB69_2
# %bb.21:                               #   in Loop: Header=BB69_16 Depth=2
	st.w	$a6, $a5, 0
	st.w	$a4, $a2, 0
	b	.LBB69_16
.LBB69_22:                              # %.lr.ph.preheader.i.i
	move	$a0, $fp
	move	$s0, $a1
	move	$a2, $a1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	b	.LBB69_25
	.p2align	4, , 16
.LBB69_23:                              #   in Loop: Header=BB69_25 Depth=1
	move	$a5, $zero
.LBB69_24:                              # %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
                                        #   in Loop: Header=BB69_25 Depth=1
	slli.d	$a5, $a5, 2
	stx.w	$a3, $fp, $a5
	bge	$a2, $a4, .LBB69_35
.LBB69_25:                              # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_27 Depth 2
                                        #     Child Loop BB69_33 Depth 2
	move	$a5, $s0
	ld.w	$a3, $s0, -4
	ld.w	$a7, $fp, 0
	addi.d	$s0, $s0, -4
	sub.d	$a4, $s0, $fp
	srai.d	$a6, $a4, 2
	st.w	$a7, $a5, -4
	blt	$a6, $a0, .LBB69_29
# %bb.26:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB69_25 Depth=1
	move	$a7, $zero
	addi.d	$a5, $a6, -1
	srli.d	$t0, $a5, 63
	add.d	$a5, $a5, $t0
	srai.d	$t0, $a5, 1
	.p2align	4, , 16
.LBB69_27:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB69_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a5, $a7, 1
	addi.d	$t1, $a5, 2
	slli.d	$t2, $t1, 2
	addi.d	$a5, $a5, 1
	slli.d	$t3, $a5, 2
	ldx.w	$t2, $fp, $t2
	ldx.w	$t3, $fp, $t3
	slt	$t2, $t2, $t3
	masknez	$t1, $t1, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t1
	slli.d	$t1, $a5, 2
	ldx.w	$t1, $fp, $t1
	slli.d	$a7, $a7, 2
	stx.w	$t1, $fp, $a7
	move	$a7, $a5
	blt	$a5, $t0, .LBB69_27
# %bb.28:                               # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB69_25 Depth=1
	andi	$a7, $a4, 4
	beqz	$a7, .LBB69_30
	b	.LBB69_32
	.p2align	4, , 16
.LBB69_29:                              #   in Loop: Header=BB69_25 Depth=1
	move	$a5, $zero
	andi	$a7, $a4, 4
	bnez	$a7, .LBB69_32
.LBB69_30:                              #   in Loop: Header=BB69_25 Depth=1
	addi.d	$a6, $a6, -2
	srai.d	$a6, $a6, 1
	bne	$a5, $a6, .LBB69_32
# %bb.31:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB69_25 Depth=1
	slli.d	$a6, $a5, 1
	addi.d	$a6, $a6, 1
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $fp, $a7
	slli.d	$a5, $a5, 2
	stx.w	$a7, $fp, $a5
	move	$a5, $a6
	b	.LBB69_33
	.p2align	4, , 16
.LBB69_32:                              #   in Loop: Header=BB69_25 Depth=1
	beqz	$a5, .LBB69_23
	.p2align	4, , 16
.LBB69_33:                              # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB69_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a6, $a5, -1
	srli.d	$a7, $a6, 1
	slli.d	$t0, $a7, 2
	ldx.w	$t0, $fp, $t0
	bge	$t0, $a3, .LBB69_24
# %bb.34:                               #   in Loop: Header=BB69_33 Depth=2
	slli.d	$a5, $a5, 2
	stx.w	$t0, $fp, $a5
	move	$a5, $a7
	bltu	$a1, $a6, .LBB69_33
	b	.LBB69_23
.LBB69_35:                              # %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit
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
.Lfunc_end69:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_, .Lfunc_end69-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ # -- Begin function _ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,@function
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_: # @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
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
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 65
	blt	$a0, $a1, .LBB70_7
# %bb.1:
	addi.d	$s1, $s0, 64
	beqz	$zero, .LBB70_21
.LBB70_2:                               # %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
	bne	$fp, $s1, .LBB70_4
	b	.LBB70_20
	.p2align	4, , 16
.LBB70_3:                               # %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB70_4 Depth=1
	addi.d	$s1, $s1, 4
	st.w	$a0, $a1, 0
	beq	$s1, $fp, .LBB70_20
.LBB70_4:                               # %.lr.ph.i10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_6 Depth 2
	ld.w	$a0, $s1, 0
	ld.w	$a2, $s1, -4
	move	$a1, $s1
	bge	$a0, $a2, .LBB70_3
# %bb.5:                                # %.lr.ph.i.i12.preheader
                                        #   in Loop: Header=BB70_4 Depth=1
	move	$a1, $s1
	.p2align	4, , 16
.LBB70_6:                               # %.lr.ph.i.i12
                                        #   Parent Loop BB70_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $a1, 0
	ld.w	$a2, $a1, -8
	addi.d	$a1, $a1, -4
	blt	$a0, $a2, .LBB70_6
	b	.LBB70_3
.LBB70_7:
	beq	$fp, $s0, .LBB70_20
# %bb.8:
	addi.d	$a2, $s0, 4
	beq	$a2, $fp, .LBB70_20
# %bb.9:                                # %.lr.ph.i19.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 4
	move	$s3, $s0
	b	.LBB70_14
	.p2align	4, , 16
.LBB70_10:                              #   in Loop: Header=BB70_14 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 2
	blt	$a0, $s1, .LBB70_18
# %bb.11:                               #   in Loop: Header=BB70_14 Depth=1
	slli.d	$a0, $a0, 2
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB70_12:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22
                                        #   in Loop: Header=BB70_14 Depth=1
	move	$a0, $s0
.LBB70_13:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22
                                        #   in Loop: Header=BB70_14 Depth=1
	addi.d	$a2, $s3, 4
	st.w	$s4, $a0, 0
	beq	$a2, $fp, .LBB70_20
.LBB70_14:                              # %.lr.ph.i19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_17 Depth 2
	move	$a1, $s3
	move	$s3, $a2
	ld.w	$s4, $a2, 0
	ld.w	$a3, $s0, 0
	blt	$s4, $a3, .LBB70_10
# %bb.15:                               #   in Loop: Header=BB70_14 Depth=1
	ld.w	$a1, $a1, 0
	move	$a0, $s3
	bge	$s4, $a1, .LBB70_13
# %bb.16:                               # %.lr.ph.i.i26.preheader
                                        #   in Loop: Header=BB70_14 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB70_17:                              # %.lr.ph.i.i26
                                        #   Parent Loop BB70_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $a0, 0
	ld.w	$a1, $a0, -8
	addi.d	$a0, $a0, -4
	blt	$s4, $a1, .LBB70_17
	b	.LBB70_13
.LBB70_18:                              #   in Loop: Header=BB70_14 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB70_13
# %bb.19:                               #   in Loop: Header=BB70_14 Depth=1
	st.w	$a3, $a1, 4
	b	.LBB70_12
.LBB70_20:                              # %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
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
.LBB70_21:                              # %.lr.ph.i.preheader
	addi.d	$s2, $s0, 4
	ori	$s3, $zero, 4
	ori	$s4, $zero, 2
	ori	$s5, $zero, 64
	ori	$s6, $zero, 4
	move	$s7, $s0
	b	.LBB70_26
	.p2align	4, , 16
.LBB70_22:                              #   in Loop: Header=BB70_26 Depth=1
	sub.d	$a2, $s7, $s0
	srai.d	$a0, $a2, 2
	blt	$a0, $s4, .LBB70_30
# %bb.23:                               #   in Loop: Header=BB70_26 Depth=1
	slli.d	$a0, $a0, 2
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB70_24:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
                                        #   in Loop: Header=BB70_26 Depth=1
	move	$a0, $s0
.LBB70_25:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
                                        #   in Loop: Header=BB70_26 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$s6, $s6, 4
	addi.d	$s2, $s2, 4
	beq	$s6, $s5, .LBB70_2
.LBB70_26:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_29 Depth 2
	ldx.w	$s8, $s0, $s6
	ld.w	$a3, $s0, 0
	move	$a1, $s7
	add.d	$s7, $s0, $s6
	blt	$s8, $a3, .LBB70_22
# %bb.27:                               #   in Loop: Header=BB70_26 Depth=1
	ld.w	$a1, $a1, 0
	move	$a0, $s7
	bge	$s8, $a1, .LBB70_25
# %bb.28:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB70_26 Depth=1
	move	$a0, $s2
	.p2align	4, , 16
.LBB70_29:                              # %.lr.ph.i.i
                                        #   Parent Loop BB70_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $a0, 0
	ld.w	$a1, $a0, -8
	addi.d	$a0, $a0, -4
	blt	$s8, $a1, .LBB70_29
	b	.LBB70_25
.LBB70_30:                              #   in Loop: Header=BB70_26 Depth=1
	move	$a0, $s0
	bne	$a2, $s3, .LBB70_25
# %bb.31:                               #   in Loop: Header=BB70_26 Depth=1
	st.w	$a3, $a1, 4
	b	.LBB70_24
.Lfunc_end70:
	.size	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_, .Lfunc_end70-_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,"axG",@progbits,_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,comdat
	.weak	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ # -- Begin function _ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.p2align	5
	.type	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,@function
_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_: # @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_startproc
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	st.b	$a3, $sp, 15
	addi.d	$a2, $sp, 15
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_)
	jirl	$ra, $ra, 0
	bgeu	$s0, $fp, .LBB71_28
# %bb.1:                                # %.lr.ph
	sub.d	$a0, $s0, $s1
	srai.d	$a1, $a0, 2
	andi	$a0, $a0, 4
	ori	$a2, $zero, 3
	addi.d	$a3, $a1, -2
	blt	$a1, $a2, .LBB71_15
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.d	$a1, $a1, -1
	srli.d	$a2, $a1, 63
	add.d	$a1, $a1, $a2
	srai.d	$a1, $a1, 1
	srai.d	$a2, $a3, 1
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $s1, 2
	alsl.d	$a5, $a2, $s1, 2
	ori	$a6, $zero, 1
	b	.LBB71_6
	.p2align	4, , 16
.LBB71_3:                               #   in Loop: Header=BB71_6 Depth=1
	move	$t0, $zero
.LBB71_4:                               # %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.us
                                        #   in Loop: Header=BB71_6 Depth=1
	slli.d	$t0, $t0, 2
	stx.w	$a7, $s1, $t0
.LBB71_5:                               #   in Loop: Header=BB71_6 Depth=1
	addi.d	$s0, $s0, 4
	bgeu	$s0, $fp, .LBB71_28
.LBB71_6:                               # %.lr.ph.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB71_8 Depth 2
                                        #     Child Loop BB71_13 Depth 2
	ld.w	$a7, $s0, 0
	ld.w	$t1, $s1, 0
	bge	$a7, $t1, .LBB71_5
# %bb.7:                                # %.lr.ph.i.i.preheader.us
                                        #   in Loop: Header=BB71_6 Depth=1
	move	$t0, $zero
	st.w	$t1, $s0, 0
	.p2align	4, , 16
.LBB71_8:                               # %.lr.ph.i.i.us
                                        #   Parent Loop BB71_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t1, $t0
	slli.d	$t0, $t0, 1
	addi.d	$t2, $t0, 2
	slli.d	$t3, $t2, 2
	addi.d	$t0, $t0, 1
	slli.d	$t4, $t0, 2
	ldx.w	$t3, $s1, $t3
	ldx.w	$t4, $s1, $t4
	slt	$t3, $t3, $t4
	masknez	$t2, $t2, $t3
	maskeqz	$t0, $t0, $t3
	or	$t0, $t0, $t2
	slli.d	$t2, $t0, 2
	ldx.w	$t2, $s1, $t2
	slli.d	$t1, $t1, 2
	stx.w	$t2, $s1, $t1
	blt	$t0, $a1, .LBB71_8
# %bb.9:                                # %._crit_edge.i.i.loopexit.us
                                        #   in Loop: Header=BB71_6 Depth=1
	bnez	$a0, .LBB71_12
# %bb.10:                               # %._crit_edge.i.i.loopexit.us
                                        #   in Loop: Header=BB71_6 Depth=1
	bne	$t0, $a2, .LBB71_12
# %bb.11:                               # %.thread.i.us
                                        #   in Loop: Header=BB71_6 Depth=1
	ld.w	$t0, $a4, 0
	st.w	$t0, $a5, 0
	move	$t0, $a3
	b	.LBB71_13
	.p2align	4, , 16
.LBB71_12:                              #   in Loop: Header=BB71_6 Depth=1
	beqz	$t0, .LBB71_3
	.p2align	4, , 16
.LBB71_13:                              # %.lr.ph.i.i.i.us
                                        #   Parent Loop BB71_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 1
	slli.d	$t3, $t2, 2
	ldx.w	$t3, $s1, $t3
	bge	$t3, $a7, .LBB71_4
# %bb.14:                               #   in Loop: Header=BB71_13 Depth=2
	slli.d	$t0, $t0, 2
	stx.w	$t3, $s1, $t0
	move	$t0, $t2
	bltu	$a6, $t1, .LBB71_13
	b	.LBB71_3
.LBB71_15:                              # %.lr.ph.split
	bnez	$a0, .LBB71_24
# %bb.16:                               # %.lr.ph.split.split.us
	beqz	$a3, .LBB71_22
# %bb.17:                               # %.lr.ph.split.split.us.split.preheader
	ld.w	$a0, $s1, 0
	b	.LBB71_19
	.p2align	4, , 16
.LBB71_18:                              #   in Loop: Header=BB71_19 Depth=1
	addi.d	$s0, $s0, 4
	bgeu	$s0, $fp, .LBB71_28
.LBB71_19:                              # %.lr.ph.split.split.us.split
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	bge	$a1, $a0, .LBB71_18
# %bb.20:                               # %._crit_edge.i.i.us13
                                        #   in Loop: Header=BB71_19 Depth=1
	st.w	$a0, $s0, 0
	st.w	$a1, $s1, 0
	move	$a0, $a1
	b	.LBB71_18
	.p2align	4, , 16
.LBB71_21:                              #   in Loop: Header=BB71_22 Depth=1
	addi.d	$s0, $s0, 4
	bgeu	$s0, $fp, .LBB71_28
.LBB71_22:                              # %.lr.ph.split.split.us.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s1, 0
	bge	$a0, $a1, .LBB71_21
# %bb.23:                               # %._crit_edge.i.i.us13.us
                                        #   in Loop: Header=BB71_22 Depth=1
	st.w	$a1, $s0, 0
	ld.w	$a1, $s1, 4
	st.w	$a1, $s1, 0
	slt	$a1, $a1, $a0
	xori	$a1, $a1, 1
	slli.d	$a1, $a1, 2
	stx.w	$a0, $s1, $a1
	b	.LBB71_21
.LBB71_24:                              # %.lr.ph.split.split.preheader
	ld.w	$a0, $s1, 0
	b	.LBB71_26
	.p2align	4, , 16
.LBB71_25:                              #   in Loop: Header=BB71_26 Depth=1
	addi.d	$s0, $s0, 4
	bgeu	$s0, $fp, .LBB71_28
.LBB71_26:                              # %.lr.ph.split.split
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	bge	$a1, $a0, .LBB71_25
# %bb.27:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB71_26 Depth=1
	st.w	$a0, $s0, 0
	st.w	$a1, $s1, 0
	move	$a0, $a1
	b	.LBB71_25
.LBB71_28:                              # %._crit_edge
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end71:
	.size	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_, .Lfunc_end71-_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,"axG",@progbits,_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,comdat
	.weak	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ # -- Begin function _ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,@function
_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_: # @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a4, $a1, 2
	ori	$a2, $zero, 2
	bge	$a4, $a2, .LBB72_2
.LBB72_1:                               # %.loopexit
	ret
.LBB72_2:
	addi.d	$a3, $a4, -2
	srli.d	$a2, $a3, 1
	addi.d	$a4, $a4, -1
	andi	$a5, $a1, 4
	srli.d	$a1, $a4, 1
	bnez	$a5, .LBB72_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $a0, 2
	alsl.d	$a5, $a2, $a0, 2
	move	$a7, $a2
	b	.LBB72_6
	.p2align	4, , 16
.LBB72_4:                               #   in Loop: Header=BB72_6 Depth=1
	move	$t1, $t0
.LBB72_5:                               # %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
                                        #   in Loop: Header=BB72_6 Depth=1
	slli.d	$t0, $t1, 2
	stx.w	$a7, $a0, $t0
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB72_1
.LBB72_6:                               # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_8 Depth 2
                                        #     Child Loop BB72_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a0, $a7
	move	$t0, $a6
	bge	$a6, $a1, .LBB72_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB72_6 Depth=1
	move	$t1, $a6
	.p2align	4, , 16
.LBB72_8:                               # %.lr.ph.i
                                        #   Parent Loop BB72_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $t1, 1
	addi.d	$t2, $t0, 2
	slli.d	$t3, $t2, 2
	addi.d	$t0, $t0, 1
	slli.d	$t4, $t0, 2
	ldx.w	$t3, $a0, $t3
	ldx.w	$t4, $a0, $t4
	slt	$t3, $t3, $t4
	masknez	$t2, $t2, $t3
	maskeqz	$t0, $t0, $t3
	or	$t0, $t0, $t2
	slli.d	$t2, $t0, 2
	ldx.w	$t2, $a0, $t2
	slli.d	$t1, $t1, 2
	stx.w	$t2, $a0, $t1
	move	$t1, $t0
	blt	$t0, $a1, .LBB72_8
.LBB72_9:                               # %._crit_edge.i
                                        #   in Loop: Header=BB72_6 Depth=1
	bne	$t0, $a2, .LBB72_11
# %bb.10:                               #   in Loop: Header=BB72_6 Depth=1
	ld.w	$t0, $a4, 0
	st.w	$t0, $a5, 0
	move	$t0, $a3
.LBB72_11:                              #   in Loop: Header=BB72_6 Depth=1
	bge	$a6, $t0, .LBB72_4
	.p2align	4, , 16
.LBB72_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB72_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 63
	add.d	$t1, $t1, $t2
	srai.d	$t1, $t1, 1
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a0, $t2
	bge	$t2, $a7, .LBB72_4
# %bb.13:                               #   in Loop: Header=BB72_12 Depth=2
	slli.d	$t0, $t0, 2
	stx.w	$t2, $a0, $t0
	move	$t0, $t1
	blt	$a6, $t1, .LBB72_12
	b	.LBB72_5
	.p2align	4, , 16
.LBB72_14:                              #   in Loop: Header=BB72_16 Depth=1
	move	$a5, $a4
.LBB72_15:                              # %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
                                        #   in Loop: Header=BB72_16 Depth=1
	slli.d	$a4, $a5, 2
	stx.w	$a2, $a0, $a4
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB72_1
.LBB72_16:                              # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_18 Depth 2
                                        #     Child Loop BB72_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a0, $a2
	move	$a5, $a3
	bge	$a3, $a1, .LBB72_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB72_16 Depth=1
	move	$a4, $a3
	.p2align	4, , 16
.LBB72_18:                              # %.lr.ph.i.us
                                        #   Parent Loop BB72_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a5, $a4
	slli.d	$a4, $a4, 1
	addi.d	$a6, $a4, 2
	slli.d	$a7, $a6, 2
	addi.d	$a4, $a4, 1
	slli.d	$t0, $a4, 2
	ldx.w	$a7, $a0, $a7
	ldx.w	$t0, $a0, $t0
	slt	$a7, $a7, $t0
	masknez	$a6, $a6, $a7
	maskeqz	$a4, $a4, $a7
	or	$a4, $a4, $a6
	slli.d	$a6, $a4, 2
	ldx.w	$a6, $a0, $a6
	slli.d	$a5, $a5, 2
	stx.w	$a6, $a0, $a5
	blt	$a4, $a1, .LBB72_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB72_16 Depth=1
	bge	$a3, $a4, .LBB72_14
	.p2align	4, , 16
.LBB72_20:                              # %.lr.ph.i.i.us
                                        #   Parent Loop BB72_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 63
	add.d	$a5, $a5, $a6
	srai.d	$a5, $a5, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	bge	$a6, $a2, .LBB72_14
# %bb.21:                               #   in Loop: Header=BB72_20 Depth=2
	slli.d	$a4, $a4, 2
	stx.w	$a6, $a0, $a4
	move	$a4, $a5
	blt	$a3, $a5, .LBB72_20
	b	.LBB72_15
.Lfunc_end72:
	.size	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_, .Lfunc_end72-_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_endproc
                                        # -- End function
	.type	do_stencil_warning,@object      # @do_stencil_warning
	.bss
	.globl	do_stencil_warning
	.p2align	2, 0x0
do_stencil_warning:
	.word	0                               # 0x0
	.size	do_stencil_warning, 4

	.type	calc_neighbor_type,@object      # @calc_neighbor_type
	.globl	calc_neighbor_type
	.p2align	2, 0x0
calc_neighbor_type:
	.word	0                               # 0x0
	.size	calc_neighbor_type, 4

	.type	dynamic_load_balance_on,@object # @dynamic_load_balance_on
	.globl	dynamic_load_balance_on
dynamic_load_balance_on:
	.byte	0                               # 0x0
	.size	dynamic_load_balance_on, 1

	.type	neighbor_remap,@object          # @neighbor_remap
	.globl	neighbor_remap
neighbor_remap:
	.byte	0                               # 0x0
	.size	neighbor_remap, 1

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"grid%02d.gph"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"viewport %lf %lf %lf %lf\n"
	.size	.L.str.2, 26

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"rect  %lf   %lf   %lf   %lf\n"
	.size	.L.str.3, 29

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"line_init %lf %lf\n"
	.size	.L.str.4, 19

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"line %lf %lf\n"
	.size	.L.str.5, 14

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"text %lf %lf %d\n"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"levmax %d"
	.size	.L.str.7, 10

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"cells %ld"
	.size	.L.str.8, 10

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"numpe %d"
	.size	.L.str.9, 9

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"ndim %d"
	.size	.L.str.10, 8

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"xaxis %lf %lf"
	.size	.L.str.11, 14

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"yaxis %lf %lf"
	.size	.L.str.12, 14

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"zaxis %lf %lf"
	.size	.L.str.13, 14

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%d %d %d %d"
	.size	.L.str.14, 12

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%6d %6d   %4d  %4d   %4d  %4d  %4d  %4d  %4d "
	.size	.L.str.17, 46

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"%8.2lf %8.2lf %8.2lf %8.2lf\n"
	.size	.L.str.18, 29

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%d:   index global  i     j     lev   nlft  nrht  nbot  ntop \n"
	.size	.L.str.19, 63

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"%d: %6d  %6d %4d  %4d   %4d  %4d  %4d  %4d  %4d \n"
	.size	.L.str.20, 50

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%d:    index   i     j     lev\n"
	.size	.L.str.21, 32

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%d: %6d  %4d  %4d   %4d  \n"
	.size	.L.str.22, 27

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"DEBUG rezone 3 at cycle %d celltype_global & celltype_check_global %d %d  %d  \n"
	.size	.L.str.23, 80

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"DEBUG rezone 3 at cycle %d i_global & i_check_global %d %d  %d  \n"
	.size	.L.str.24, 66

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"DEBUG rezone 3 at cycle %d j_global & j_check_global %d %d  %d  \n"
	.size	.L.str.25, 66

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"DEBUG rezone 3 at cycle %d level_global & level_check_global %d %d  %d  \n"
	.size	.L.str.26, 74

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"DEBUG graphics at cycle %d x_global & x_check_global  %d %lf %lf \n"
	.size	.L.str.27, 67

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"DEBUG graphics at cycle %d dx_global & dx_check_global %d %lf %lf \n"
	.size	.L.str.28, 68

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"DEBUG graphics at cycle %d y_global & y_check_global  %d %lf %lf \n"
	.size	.L.str.29, 67

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"DEBUG graphics at cycle %d dy_global & dy_check_global %d %lf %lf \n"
	.size	.L.str.30, 68

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"DEBUG graphics at cycle %d H_global & H_check_global  %d %lf %lf \n"
	.size	.L.str.31, 67

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"%d: DEBUG refine_potential 3 at cycle %d cell %d mpot_global & mpot_save_global %d %d \n"
	.size	.L.str.32, 88

	.type	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save,@object # @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save
	.local	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save
	.comm	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save,24,8
	.type	_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save,@object # @_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save
	.local	_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save
	.comm	_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save,8,8
	.hidden	__dso_handle
	.type	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells,@object # @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells
	.local	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells
	.comm	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE10new_ncells,4,4
	.type	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5i_old,@object # @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5i_old
	.local	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5i_old
	.comm	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5i_old,8,8
	.type	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5j_old,@object # @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5j_old
	.local	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5j_old
	.comm	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5j_old,8,8
	.type	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE9level_old,@object # @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE9level_old
	.local	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE9level_old
	.comm	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE9level_old,8,8
	.type	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic,@object # @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic
	.local	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic
	.comm	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic,24,8
	.type	_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic,@object # @_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic
	.local	_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic
	.comm	_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic,8,8
	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"i_old"
	.size	.L.str.33, 6

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"j_old"
	.size	.L.str.34, 6

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"level_old"
	.size	.L.str.35, 10

	.type	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order,@object # @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order
	.local	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order
	.comm	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order,24,8
	.type	_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order,@object # @_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order
	.local	_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order
	.comm	_ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order,8,8
	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"state_temp_double"
	.size	.L.str.36, 18

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"state_temp_float"
	.size	.L.str.37, 17

	.type	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nlft_old,@object # @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nlft_old
	.local	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nlft_old
	.comm	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nlft_old,8,8
	.type	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nrht_old,@object # @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nrht_old
	.local	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nrht_old
	.comm	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nrht_old,8,8
	.type	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nbot_old,@object # @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nbot_old
	.local	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nbot_old
	.comm	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nbot_old,8,8
	.type	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8ntop_old,@object # @_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8ntop_old
	.local	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8ntop_old
	.comm	_ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8ntop_old,8,8
	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"nlft_old"
	.size	.L.str.38, 9

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"nrht_old"
	.size	.L.str.39, 9

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"nbot_old"
	.size	.L.str.40, 9

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"ntop_old"
	.size	.L.str.41, 9

	.type	_ZZN4Mesh14calc_neighborsEiE9nlft_size,@object # @_ZZN4Mesh14calc_neighborsEiE9nlft_size
	.local	_ZZN4Mesh14calc_neighborsEiE9nlft_size
	.comm	_ZZN4Mesh14calc_neighborsEiE9nlft_size,4,4
	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"nlft"
	.size	.L.str.42, 5

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"nrht"
	.size	.L.str.43, 5

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"nbot"
	.size	.L.str.44, 5

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"ntop"
	.size	.L.str.45, 5

	.type	_ZZN4Mesh20calc_neighbors_localEvE4hash,@object # @_ZZN4Mesh20calc_neighbors_localEvE4hash
	.local	_ZZN4Mesh20calc_neighbors_localEvE4hash
	.comm	_ZZN4Mesh20calc_neighbors_localEvE4hash,8,8
	.type	_ZZN4Mesh20calc_neighbors_localEvE8imaxcalc,@object # @_ZZN4Mesh20calc_neighbors_localEvE8imaxcalc
	.local	_ZZN4Mesh20calc_neighbors_localEvE8imaxcalc
	.comm	_ZZN4Mesh20calc_neighbors_localEvE8imaxcalc,4,4
	.type	_ZZN4Mesh20calc_neighbors_localEvE8jmaxcalc,@object # @_ZZN4Mesh20calc_neighbors_localEvE8jmaxcalc
	.local	_ZZN4Mesh20calc_neighbors_localEvE8jmaxcalc
	.comm	_ZZN4Mesh20calc_neighbors_localEvE8jmaxcalc,4,4
	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"hash table size %ld\n"
	.size	.L.str.47, 21

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"celltype"
	.size	.L.str.49, 9

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"i"
	.size	.L.str.50, 2

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"j"
	.size	.L.str.51, 2

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"level"
	.size	.L.str.52, 6

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"Dimensionality : %d\n"
	.size	.L.str.54, 21

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"Parallel info  : mype %d numpe %d noffset %d parallel %d\n"
	.size	.L.str.55, 58

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Sizes          : ncells %ld ncells_ghost %ld\n\n"
	.size	.L.str.56, 47

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"vector celltype  ptr : %p nelements %ld elsize %ld\n"
	.size	.L.str.57, 52

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"vector level     ptr : %p nelements %ld elsize %ld\n"
	.size	.L.str.58, 52

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"vector i         ptr : %p nelements %ld elsize %ld\n"
	.size	.L.str.59, 52

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"vector j         ptr : %p nelements %ld elsize %ld\n"
	.size	.L.str.60, 52

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"vector nlft      ptr : %p nelements %ld elsize %ld\n"
	.size	.L.str.61, 52

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"vector nrht      ptr : %p nelements %ld elsize %ld\n"
	.size	.L.str.62, 52

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"vector nbot      ptr : %p nelements %ld elsize %ld\n"
	.size	.L.str.63, 52

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"vector ntop      ptr : %p nelements %ld elsize %ld\n"
	.size	.L.str.64, 52

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/mesh.cpp"
	.size	.L.str.66, 130

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"DEBUG -- x face_flag for level %d\n"
	.size	.L.str.67, 35

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"DEBUG -- sizes isize+1 %d jsize+1 %d\n"
	.size	.L.str.68, 38

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"                           "
	.size	.L.str.69, 28

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	" %4d "
	.size	.L.str.70, 6

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"DEBUG -- j  %4d:          "
	.size	.L.str.72, 27

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"      "
	.size	.L.str.73, 7

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"DEBUG -- y face_flag for level %d\n"
	.size	.L.str.74, 35

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"          "
	.size	.L.str.75, 11

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"CPU: %.*s%-30.30s\t"
	.size	.L.str.76, 19

	.type	_ZL21mesh_timer_descriptor,@object # @_ZL21mesh_timer_descriptor
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZL21mesh_timer_descriptor:
	.dword	.L.str.113
	.dword	.L.str.114
	.dword	.L.str.115
	.dword	.L.str.116
	.dword	.L.str.117
	.dword	.L.str.118
	.dword	.L.str.119
	.dword	.L.str.120
	.dword	.L.str.121
	.dword	.L.str.122
	.dword	.L.str.123
	.dword	.L.str.124
	.dword	.L.str.125
	.dword	.L.str.126
	.dword	.L.str.127
	.dword	.L.str.128
	.dword	.L.str.129
	.dword	.L.str.130
	.dword	.L.str.131
	.dword	.L.str.132
	.dword	.L.str.133
	.dword	.L.str.134
	.dword	.L.str.135
	.dword	.L.str.136
	.size	_ZL21mesh_timer_descriptor, 192

	.type	.L.str.77,@object               # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"GPU: %.*s%-30.30s\t"
	.size	.L.str.77, 19

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"s"
	.size	.L.str.78, 2

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"%s\t"
	.size	.L.str.79, 4

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"%.*s%8.4f\t"
	.size	.L.str.80, 11

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"%.*s%8.4f\t%.*s%8.4f\t%.*s%8.4f   %s min/median/max\n"
	.size	.L.str.82, 51

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"%.*s%10lld\t"
	.size	.L.str.83, 12

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"%.*s%10lld\t%.*s%10lld\t%.*s%10lld   %s min/median/max\n"
	.size	.L.str.84, 54

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"%.*s%10d\t"
	.size	.L.str.85, 10

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"%.*s%10d\t%.*s%10d\t%.*s%10d   %s min/median/max\n"
	.size	.L.str.86, 48

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"storage"
	.size	.L.str.87, 8

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"mesh_int_dist_vals"
	.size	.L.str.88, 19

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"mesh_int_vals"
	.size	.L.str.89, 14

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"mesh_double_vals"
	.size	.L.str.90, 17

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"mesh_cpu_counters"
	.size	.L.str.91, 18

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"mesh_gpu_counters"
	.size	.L.str.92, 18

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"mesh_cpu_timers"
	.size	.L.str.93, 16

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"mesh_gpu_timers"
	.size	.L.str.94, 16

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"CRUX version mismatch for mesh data, version on file is %d, version in code is %d\n"
	.size	.L.str.95, 83

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"ncells"
	.size	.L.str.96, 7

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"ncells_ghost"
	.size	.L.str.97, 13

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"offtile_local_count"
	.size	.L.str.98, 20

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"CRUX_MESH_VERSION"
	.size	.L.str.99, 18

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"ndim"
	.size	.L.str.100, 5

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"levmx"
	.size	.L.str.101, 6

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"       %-30s %d\n"
	.size	.L.str.103, 17

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"offtile_ratio_local"
	.size	.L.str.105, 20

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"       %-30s %lf\n"
	.size	.L.str.107, 18

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"       %-30s %lld\n"
	.size	.L.str.112, 19

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"mesh_timer_count_BCs"
	.size	.L.str.113, 21

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"mesh_timer_calc_neighbors"
	.size	.L.str.114, 26

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"mesh_timer_hash_setup"
	.size	.L.str.115, 22

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"mesh_timer_hash_query"
	.size	.L.str.116, 22

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"mesh_timer_find_boundary"
	.size	.L.str.117, 25

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"mesh_timer_push_setup"
	.size	.L.str.118, 22

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"mesh_timer_push_boundary"
	.size	.L.str.119, 25

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"mesh_timer_local_list"
	.size	.L.str.120, 22

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"mesh_timer_layer1"
	.size	.L.str.121, 18

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"mesh_timer_layer2"
	.size	.L.str.122, 18

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"mesh_timer_layer_list"
	.size	.L.str.123, 22

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"mesh_timer_copy_mesh_data"
	.size	.L.str.124, 26

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"mesh_timer_fill_mesh_ghost"
	.size	.L.str.125, 27

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"mesh_timer_fill_neigh_ghost"
	.size	.L.str.126, 28

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"mesh_timer_set_corner_neigh"
	.size	.L.str.127, 28

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"mesh_timer_neigh_adjust"
	.size	.L.str.128, 24

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"mesh_timer_setup_comm"
	.size	.L.str.129, 22

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"mesh_timer_kdtree_setup"
	.size	.L.str.130, 24

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"mesh_timer_kdtree_query"
	.size	.L.str.131, 24

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"mesh_timer_refine_smooth"
	.size	.L.str.132, 25

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"mesh_timer_rezone_all"
	.size	.L.str.133, 22

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"mesh_timer_partition"
	.size	.L.str.134, 21

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"mesh_timer_calc_spatial_coordinates"
	.size	.L.str.135, 36

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"mesh_timer_load_balance"
	.size	.L.str.136, 24

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"mesh_counter_rezone"
	.size	.L.str.137, 20

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"mesh_counter_refine_smooth"
	.size	.L.str.138, 27

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"mesh_counter_calc_neigh"
	.size	.L.str.139, 24

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"mesh_counter_load_balance"
	.size	.L.str.140, 26

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"vector::_M_default_append"
	.size	.L.str.141, 26

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.142, 49

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.143, 26

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"vector::_M_fill_insert"
	.size	.L.str.144, 23

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Error -- cells read does not match number specified"
	.size	.Lstr, 52

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"index orig index   i     j     lev   nlft  nrht  nbot  ntop   xlow    xhigh     ylow    yhigh"
	.size	.Lstr.1, 94

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Nonlocal case for the stencil."
	.size	.Lstr.2, 31

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Using k-D tree to calculate neighbors"
	.size	.Lstr.3, 38

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"Using hash tables to calculate neighbors"
	.size	.Lstr.4, 41

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	" ---- Mesh object info -----"
	.size	.Lstr.5, 29

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"       === Restored mesh int_dist_vals ==="
	.size	.Lstr.6, 43

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"       === Restored mesh int_vals ==="
	.size	.Lstr.8, 38

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"       === Restored mesh double_vals ==="
	.size	.Lstr.10, 41

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"       === Restored mesh cpu counters ==="
	.size	.Lstr.12, 42

	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	"       === Restored mesh gpu counters ==="
	.size	.Lstr.14, 42

	.type	.Lstr.16,@object                # @str.16
.Lstr.16:
	.asciz	"       === Restored mesh cpu timers ==="
	.size	.Lstr.16, 40

	.type	.Lstr.18,@object                # @str.18
.Lstr.18:
	.asciz	"       === Restored mesh gpu timers ==="
	.size	.Lstr.18, 40

	.globl	_ZN4MeshC1EP8_IO_FILEPi
	.type	_ZN4MeshC1EP8_IO_FILEPi,@function
.set _ZN4MeshC1EP8_IO_FILEPi, _ZN4MeshC2EP8_IO_FILEPi
	.globl	_ZN4MeshC1Eiiiiddiii
	.type	_ZN4MeshC1Eiiiiddiii,@function
.set _ZN4MeshC1Eiiiiddiii, _ZN4MeshC2Eiiiiddiii
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
	.addrsig_sym _ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save
	.addrsig_sym _ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE13celltype_save
	.addrsig_sym __dso_handle
	.addrsig_sym _ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5i_old
	.addrsig_sym _ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5j_old
	.addrsig_sym _ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE9level_old
	.addrsig_sym _ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic
	.addrsig_sym _ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE6new_ic
	.addrsig_sym _ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order
	.addrsig_sym _ZGVZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE5order
	.addrsig_sym _ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nlft_old
	.addrsig_sym _ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nrht_old
	.addrsig_sym _ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8nbot_old
	.addrsig_sym _ZZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlusE8ntop_old
