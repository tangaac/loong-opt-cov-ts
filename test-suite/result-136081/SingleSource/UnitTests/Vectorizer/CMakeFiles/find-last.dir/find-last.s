	.file	"find-last.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	lu12i.w	$a0, 1
	ori	$a0, $a0, 656
	sub.d	$sp, $sp, $a0
	.cfi_def_cfa_offset 6784
	ori	$a2, $zero, 15
	st.d	$a2, $sp, 1768
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 1768
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a2, $a1, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a5, .LBB0_1
# %bb.2:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
	ori	$a0, $zero, 624
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2664
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$a0, $a0, %pc_lo12(_ZL3rng)
	lu12i.w	$a1, 1
	ori	$a2, $a1, 904
	addi.d	$a1, $sp, 1768
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 1736
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1760
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1752
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 1704
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1728
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1720
.Ltmp0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 1736
	addi.d	$a1, $sp, 1704
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.3:
	ld.d	$a3, $sp, 1720
	beqz	$a3, .LBB0_5
# %bb.4:
.Ltmp9:
	addi.d	$a0, $sp, 1704
	addi.d	$a1, $sp, 1704
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp10:
.LBB0_5:                                # %_ZNSt14_Function_baseD2Ev.exit
	ld.d	$a3, $sp, 1752
	beqz	$a3, .LBB0_7
# %bb.6:
.Ltmp12:
	addi.d	$a0, $sp, 1736
	addi.d	$a1, $sp, 1736
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp13:
.LBB0_7:                                # %_ZNSt14_Function_baseD2Ev.exit31
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1672
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1696
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1688
	vst	$vr0, $sp, 1640
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1664
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1656
.Ltmp15:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 1672
	addi.d	$a1, $sp, 1640
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.8:
	ld.d	$a3, $sp, 1656
	beqz	$a3, .LBB0_10
# %bb.9:
.Ltmp24:
	addi.d	$a0, $sp, 1640
	addi.d	$a1, $sp, 1640
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp25:
.LBB0_10:                               # %_ZNSt14_Function_baseD2Ev.exit33
	ld.d	$a3, $sp, 1688
	beqz	$a3, .LBB0_12
# %bb.11:
.Ltmp27:
	addi.d	$a0, $sp, 1672
	addi.d	$a1, $sp, 1672
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp28:
.LBB0_12:                               # %_ZNSt14_Function_baseD2Ev.exit35
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1608
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1632
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1624
	vst	$vr0, $sp, 1576
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1600
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1592
.Ltmp30:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 1608
	addi.d	$a1, $sp, 1576
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp31:
# %bb.13:
	ld.d	$a3, $sp, 1592
	beqz	$a3, .LBB0_15
# %bb.14:
.Ltmp39:
	addi.d	$a0, $sp, 1576
	addi.d	$a1, $sp, 1576
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp40:
.LBB0_15:                               # %_ZNSt14_Function_baseD2Ev.exit37
	ld.d	$a3, $sp, 1624
	beqz	$a3, .LBB0_17
# %bb.16:
.Ltmp42:
	addi.d	$a0, $sp, 1608
	addi.d	$a1, $sp, 1608
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp43:
.LBB0_17:                               # %_ZNSt14_Function_baseD2Ev.exit39
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1544
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1568
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1560
	vst	$vr0, $sp, 1512
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1536
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1528
.Ltmp45:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 1512
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp46:
# %bb.18:
	ld.d	$a3, $sp, 1528
	beqz	$a3, .LBB0_20
# %bb.19:
.Ltmp54:
	addi.d	$a0, $sp, 1512
	addi.d	$a1, $sp, 1512
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp55:
.LBB0_20:                               # %_ZNSt14_Function_baseD2Ev.exit41
	ld.d	$a3, $sp, 1560
	beqz	$a3, .LBB0_22
# %bb.21:
.Ltmp57:
	addi.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 1544
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp58:
.LBB0_22:                               # %_ZNSt14_Function_baseD2Ev.exit43
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1480
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1504
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1496
	vst	$vr0, $sp, 1448
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1472
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1464
.Ltmp60:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 1480
	addi.d	$a1, $sp, 1448
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp61:
# %bb.23:
	ld.d	$a3, $sp, 1464
	beqz	$a3, .LBB0_25
# %bb.24:
.Ltmp69:
	addi.d	$a0, $sp, 1448
	addi.d	$a1, $sp, 1448
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp70:
.LBB0_25:                               # %_ZNSt14_Function_baseD2Ev.exit45
	ld.d	$a3, $sp, 1496
	beqz	$a3, .LBB0_27
# %bb.26:
.Ltmp72:
	addi.d	$a0, $sp, 1480
	addi.d	$a1, $sp, 1480
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp73:
.LBB0_27:                               # %_ZNSt14_Function_baseD2Ev.exit47
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1416
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1440
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1432
	vst	$vr0, $sp, 1384
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1408
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1400
.Ltmp75:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 1416
	addi.d	$a1, $sp, 1384
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp76:
# %bb.28:
	ld.d	$a3, $sp, 1400
	beqz	$a3, .LBB0_30
# %bb.29:
.Ltmp84:
	addi.d	$a0, $sp, 1384
	addi.d	$a1, $sp, 1384
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp85:
.LBB0_30:                               # %_ZNSt14_Function_baseD2Ev.exit49
	ld.d	$a3, $sp, 1432
	beqz	$a3, .LBB0_32
# %bb.31:
.Ltmp87:
	addi.d	$a0, $sp, 1416
	addi.d	$a1, $sp, 1416
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp88:
.LBB0_32:                               # %_ZNSt14_Function_baseD2Ev.exit51
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1352
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1376
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1368
	vst	$vr0, $sp, 1320
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1344
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1336
.Ltmp90:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 1352
	addi.d	$a1, $sp, 1320
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp91:
# %bb.33:
	ld.d	$a3, $sp, 1336
	beqz	$a3, .LBB0_35
# %bb.34:
.Ltmp99:
	addi.d	$a0, $sp, 1320
	addi.d	$a1, $sp, 1320
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp100:
.LBB0_35:                               # %_ZNSt14_Function_baseD2Ev.exit53
	ld.d	$a3, $sp, 1368
	beqz	$a3, .LBB0_37
# %bb.36:
.Ltmp102:
	addi.d	$a0, $sp, 1352
	addi.d	$a1, $sp, 1352
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp103:
.LBB0_37:                               # %_ZNSt14_Function_baseD2Ev.exit55
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1288
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1312
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1304
	vst	$vr0, $sp, 1256
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1280
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1272
.Ltmp105:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1256
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp106:
# %bb.38:
	ld.d	$a3, $sp, 1272
	beqz	$a3, .LBB0_40
# %bb.39:
.Ltmp114:
	addi.d	$a0, $sp, 1256
	addi.d	$a1, $sp, 1256
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp115:
.LBB0_40:                               # %_ZNSt14_Function_baseD2Ev.exit57
	ld.d	$a3, $sp, 1304
	beqz	$a3, .LBB0_42
# %bb.41:
.Ltmp117:
	addi.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1288
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp118:
.LBB0_42:                               # %_ZNSt14_Function_baseD2Ev.exit59
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1224
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1248
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1240
	vst	$vr0, $sp, 1192
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1216
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1208
.Ltmp120:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 1224
	addi.d	$a1, $sp, 1192
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp121:
# %bb.43:
	ld.d	$a3, $sp, 1208
	beqz	$a3, .LBB0_45
# %bb.44:
.Ltmp129:
	addi.d	$a0, $sp, 1192
	addi.d	$a1, $sp, 1192
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp130:
.LBB0_45:                               # %_ZNSt14_Function_baseD2Ev.exit61
	ld.d	$a3, $sp, 1240
	beqz	$a3, .LBB0_47
# %bb.46:
.Ltmp132:
	addi.d	$a0, $sp, 1224
	addi.d	$a1, $sp, 1224
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp133:
.LBB0_47:                               # %_ZNSt14_Function_baseD2Ev.exit63
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1160
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1184
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1176
	vst	$vr0, $sp, 1128
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1152
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1144
.Ltmp135:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	addi.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1128
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp136:
# %bb.48:
	ld.d	$a3, $sp, 1144
	beqz	$a3, .LBB0_50
# %bb.49:
.Ltmp144:
	addi.d	$a0, $sp, 1128
	addi.d	$a1, $sp, 1128
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp145:
.LBB0_50:                               # %_ZNSt14_Function_baseD2Ev.exit65
	ld.d	$a3, $sp, 1176
	beqz	$a3, .LBB0_52
# %bb.51:
.Ltmp147:
	addi.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1160
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp148:
.LBB0_52:                               # %_ZNSt14_Function_baseD2Ev.exit67
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1096
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1120
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1112
	vst	$vr0, $sp, 1064
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1088
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1080
.Ltmp150:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 1096
	addi.d	$a1, $sp, 1064
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp151:
# %bb.53:
	ld.d	$a3, $sp, 1080
	beqz	$a3, .LBB0_55
# %bb.54:
.Ltmp159:
	addi.d	$a0, $sp, 1064
	addi.d	$a1, $sp, 1064
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp160:
.LBB0_55:                               # %_ZNSt14_Function_baseD2Ev.exit69
	ld.d	$a3, $sp, 1112
	beqz	$a3, .LBB0_57
# %bb.56:
.Ltmp162:
	addi.d	$a0, $sp, 1096
	addi.d	$a1, $sp, 1096
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp163:
.LBB0_57:                               # %_ZNSt14_Function_baseD2Ev.exit71
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1032
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1056
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1048
	vst	$vr0, $sp, 1000
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1024
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1016
.Ltmp165:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 1032
	addi.d	$a1, $sp, 1000
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp166:
# %bb.58:
	ld.d	$a3, $sp, 1016
	beqz	$a3, .LBB0_60
# %bb.59:
.Ltmp174:
	addi.d	$a0, $sp, 1000
	addi.d	$a1, $sp, 1000
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp175:
.LBB0_60:                               # %_ZNSt14_Function_baseD2Ev.exit73
	ld.d	$a3, $sp, 1048
	beqz	$a3, .LBB0_62
# %bb.61:
.Ltmp177:
	addi.d	$a0, $sp, 1032
	addi.d	$a1, $sp, 1032
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp178:
.LBB0_62:                               # %_ZNSt14_Function_baseD2Ev.exit75
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 968
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 992
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 984
	vst	$vr0, $sp, 936
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 960
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 952
.Ltmp180:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	addi.d	$a0, $sp, 968
	addi.d	$a1, $sp, 936
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp181:
# %bb.63:
	ld.d	$a3, $sp, 952
	beqz	$a3, .LBB0_65
# %bb.64:
.Ltmp189:
	addi.d	$a0, $sp, 936
	addi.d	$a1, $sp, 936
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp190:
.LBB0_65:                               # %_ZNSt14_Function_baseD2Ev.exit77
	ld.d	$a3, $sp, 984
	beqz	$a3, .LBB0_67
# %bb.66:
.Ltmp192:
	addi.d	$a0, $sp, 968
	addi.d	$a1, $sp, 968
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp193:
.LBB0_67:                               # %_ZNSt14_Function_baseD2Ev.exit79
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 904
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 928
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 920
	vst	$vr0, $sp, 872
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 896
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 888
.Ltmp195:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a2, $a0, %pc_lo12(.L.str.13)
	addi.d	$a0, $sp, 904
	addi.d	$a1, $sp, 872
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp196:
# %bb.68:
	ld.d	$a3, $sp, 888
	beqz	$a3, .LBB0_70
# %bb.69:
.Ltmp204:
	addi.d	$a0, $sp, 872
	addi.d	$a1, $sp, 872
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp205:
.LBB0_70:                               # %_ZNSt14_Function_baseD2Ev.exit81
	ld.d	$a3, $sp, 920
	beqz	$a3, .LBB0_72
# %bb.71:
.Ltmp207:
	addi.d	$a0, $sp, 904
	addi.d	$a1, $sp, 904
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp208:
.LBB0_72:                               # %_ZNSt14_Function_baseD2Ev.exit83
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 840
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 864
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 856
	vst	$vr0, $sp, 808
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 832
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 824
.Ltmp210:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a2, $a0, %pc_lo12(.L.str.14)
	addi.d	$a0, $sp, 840
	addi.d	$a1, $sp, 808
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp211:
# %bb.73:
	ld.d	$a3, $sp, 824
	beqz	$a3, .LBB0_75
# %bb.74:
.Ltmp219:
	addi.d	$a0, $sp, 808
	addi.d	$a1, $sp, 808
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp220:
.LBB0_75:                               # %_ZNSt14_Function_baseD2Ev.exit85
	ld.d	$a3, $sp, 856
	beqz	$a3, .LBB0_77
# %bb.76:
.Ltmp222:
	addi.d	$a0, $sp, 840
	addi.d	$a1, $sp, 840
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp223:
.LBB0_77:                               # %_ZNSt14_Function_baseD2Ev.exit87
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 776
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 800
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 792
	vst	$vr0, $sp, 744
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 768
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 760
.Ltmp225:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 744
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp226:
# %bb.78:
	ld.d	$a3, $sp, 760
	beqz	$a3, .LBB0_80
# %bb.79:
.Ltmp234:
	addi.d	$a0, $sp, 744
	addi.d	$a1, $sp, 744
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp235:
.LBB0_80:                               # %_ZNSt14_Function_baseD2Ev.exit89
	ld.d	$a3, $sp, 792
	beqz	$a3, .LBB0_82
# %bb.81:
.Ltmp237:
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 776
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp238:
.LBB0_82:                               # %_ZNSt14_Function_baseD2Ev.exit91
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 712
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 736
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 728
	vst	$vr0, $sp, 680
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 704
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 696
.Ltmp240:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 680
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp241:
# %bb.83:
	ld.d	$a3, $sp, 696
	beqz	$a3, .LBB0_85
# %bb.84:
.Ltmp249:
	addi.d	$a0, $sp, 680
	addi.d	$a1, $sp, 680
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp250:
.LBB0_85:                               # %_ZNSt14_Function_baseD2Ev.exit93
	ld.d	$a3, $sp, 728
	beqz	$a3, .LBB0_87
# %bb.86:
.Ltmp252:
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 712
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp253:
.LBB0_87:                               # %_ZNSt14_Function_baseD2Ev.exit95
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 648
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 672
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 664
	vst	$vr0, $sp, 616
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 640
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 632
.Ltmp255:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 616
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp256:
# %bb.88:
	ld.d	$a3, $sp, 632
	beqz	$a3, .LBB0_90
# %bb.89:
.Ltmp264:
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 616
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp265:
.LBB0_90:                               # %_ZNSt14_Function_baseD2Ev.exit97
	ld.d	$a3, $sp, 664
	beqz	$a3, .LBB0_92
# %bb.91:
.Ltmp267:
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 648
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp268:
.LBB0_92:                               # %_ZNSt14_Function_baseD2Ev.exit99
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 584
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 608
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 600
	vst	$vr0, $sp, 552
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 576
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 568
.Ltmp270:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 552
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp271:
# %bb.93:
	ld.d	$a3, $sp, 568
	beqz	$a3, .LBB0_95
# %bb.94:
.Ltmp279:
	addi.d	$a0, $sp, 552
	addi.d	$a1, $sp, 552
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp280:
.LBB0_95:                               # %_ZNSt14_Function_baseD2Ev.exit101
	ld.d	$a3, $sp, 600
	beqz	$a3, .LBB0_97
# %bb.96:
.Ltmp282:
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 584
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp283:
.LBB0_97:                               # %_ZNSt14_Function_baseD2Ev.exit103
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 520
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 544
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 536
	vst	$vr0, $sp, 488
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 512
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 504
.Ltmp285:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 488
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp286:
# %bb.98:
	ld.d	$a3, $sp, 504
	beqz	$a3, .LBB0_100
# %bb.99:
.Ltmp294:
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp295:
.LBB0_100:                              # %_ZNSt14_Function_baseD2Ev.exit105
	ld.d	$a3, $sp, 536
	beqz	$a3, .LBB0_102
# %bb.101:
.Ltmp297:
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 520
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp298:
.LBB0_102:                              # %_ZNSt14_Function_baseD2Ev.exit107
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 456
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 480
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 472
	vst	$vr0, $sp, 424
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 448
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 440
.Ltmp300:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 424
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp301:
# %bb.103:
	ld.d	$a3, $sp, 440
	beqz	$a3, .LBB0_105
# %bb.104:
.Ltmp309:
	addi.d	$a0, $sp, 424
	addi.d	$a1, $sp, 424
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp310:
.LBB0_105:                              # %_ZNSt14_Function_baseD2Ev.exit109
	ld.d	$a3, $sp, 472
	beqz	$a3, .LBB0_107
# %bb.106:
.Ltmp312:
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 456
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp313:
.LBB0_107:                              # %_ZNSt14_Function_baseD2Ev.exit111
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 392
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 416
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 408
	vst	$vr0, $sp, 360
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 384
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 376
.Ltmp315:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a2, $a0, %pc_lo12(.L.str.21)
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 360
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp316:
# %bb.108:
	ld.d	$a3, $sp, 376
	beqz	$a3, .LBB0_110
# %bb.109:
.Ltmp324:
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 360
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp325:
.LBB0_110:                              # %_ZNSt14_Function_baseD2Ev.exit113
	ld.d	$a3, $sp, 408
	beqz	$a3, .LBB0_112
# %bb.111:
.Ltmp327:
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 392
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp328:
.LBB0_112:                              # %_ZNSt14_Function_baseD2Ev.exit115
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 328
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 352
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 344
	vst	$vr0, $sp, 296
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 320
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 312
.Ltmp330:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 296
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp331:
# %bb.113:
	ld.d	$a3, $sp, 312
	beqz	$a3, .LBB0_115
# %bb.114:
.Ltmp339:
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 296
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp340:
.LBB0_115:                              # %_ZNSt14_Function_baseD2Ev.exit117
	ld.d	$a3, $sp, 344
	beqz	$a3, .LBB0_117
# %bb.116:
.Ltmp342:
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 328
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp343:
.LBB0_117:                              # %_ZNSt14_Function_baseD2Ev.exit119
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 264
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 288
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 280
	vst	$vr0, $sp, 232
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 256
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 248
.Ltmp345:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a2, $a0, %pc_lo12(.L.str.23)
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp346:
# %bb.118:
	ld.d	$a3, $sp, 248
	beqz	$a3, .LBB0_120
# %bb.119:
.Ltmp354:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 232
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp355:
.LBB0_120:                              # %_ZNSt14_Function_baseD2Ev.exit121
	ld.d	$a3, $sp, 280
	beqz	$a3, .LBB0_122
# %bb.121:
.Ltmp357:
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 264
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp358:
.LBB0_122:                              # %_ZNSt14_Function_baseD2Ev.exit123
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 200
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 224
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 216
	vst	$vr0, $sp, 168
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 192
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 184
.Ltmp360:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 168
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp361:
# %bb.123:
	ld.d	$a3, $sp, 184
	beqz	$a3, .LBB0_125
# %bb.124:
.Ltmp369:
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 168
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp370:
.LBB0_125:                              # %_ZNSt14_Function_baseD2Ev.exit125
	ld.d	$a3, $sp, 216
	beqz	$a3, .LBB0_127
# %bb.126:
.Ltmp372:
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 200
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp373:
.LBB0_127:                              # %_ZNSt14_Function_baseD2Ev.exit127
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 136
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 160
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 152
	vst	$vr0, $sp, 104
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 128
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 120
.Ltmp375:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a2, $a0, %pc_lo12(.L.str.25)
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 104
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp376:
# %bb.128:
	ld.d	$a3, $sp, 120
	beqz	$a3, .LBB0_130
# %bb.129:
.Ltmp384:
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp385:
.LBB0_130:                              # %_ZNSt14_Function_baseD2Ev.exit129
	ld.d	$a3, $sp, 152
	beqz	$a3, .LBB0_132
# %bb.131:
.Ltmp387:
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp388:
.LBB0_132:                              # %_ZNSt14_Function_baseD2Ev.exit131
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 96
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 88
	vst	$vr0, $sp, 40
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 64
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 56
.Ltmp390:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp391:
# %bb.133:
	ld.d	$a3, $sp, 56
	beqz	$a3, .LBB0_135
# %bb.134:
.Ltmp399:
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp400:
.LBB0_135:                              # %_ZNSt14_Function_baseD2Ev.exit133
	ld.d	$a3, $sp, 88
	beqz	$a3, .LBB0_137
# %bb.136:
.Ltmp402:
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp403:
.LBB0_137:                              # %_ZNSt14_Function_baseD2Ev.exit135
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 656
	add.d	$sp, $sp, $a1
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_138:
.Ltmp404:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_139:
.Ltmp401:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_140:
.Ltmp389:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_141:
.Ltmp386:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_142:
.Ltmp374:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_143:
.Ltmp371:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_144:
.Ltmp359:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_145:
.Ltmp356:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_146:
.Ltmp344:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_147:
.Ltmp341:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_148:
.Ltmp329:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_149:
.Ltmp326:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_150:
.Ltmp314:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_151:
.Ltmp311:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_152:
.Ltmp299:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_153:
.Ltmp296:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_154:
.Ltmp284:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_155:
.Ltmp281:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_156:
.Ltmp269:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_157:
.Ltmp266:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_158:
.Ltmp254:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_159:
.Ltmp251:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_160:
.Ltmp239:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_161:
.Ltmp236:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_162:
.Ltmp224:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_163:
.Ltmp221:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_164:
.Ltmp209:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_165:
.Ltmp206:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_166:
.Ltmp194:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_167:
.Ltmp191:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_168:
.Ltmp179:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_169:
.Ltmp176:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_170:
.Ltmp164:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_171:
.Ltmp161:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_172:
.Ltmp149:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_173:
.Ltmp146:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_174:
.Ltmp134:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_175:
.Ltmp131:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_176:
.Ltmp119:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_177:
.Ltmp116:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_178:
.Ltmp104:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_179:
.Ltmp101:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_180:
.Ltmp89:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_181:
.Ltmp86:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_182:
.Ltmp74:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_183:
.Ltmp71:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_184:
.Ltmp59:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_185:
.Ltmp56:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_186:
.Ltmp44:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_187:
.Ltmp41:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_188:
.Ltmp29:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_189:
.Ltmp26:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_190:
.Ltmp14:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_191:
.Ltmp11:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_192:
.Ltmp392:
	ld.d	$a3, $sp, 56
	move	$fp, $a0
	beqz	$a3, .LBB0_194
# %bb.193:
.Ltmp393:
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp394:
.LBB0_194:                              # %_ZNSt14_Function_baseD2Ev.exit241
	ld.d	$a3, $sp, 88
	beqz	$a3, .LBB0_352
# %bb.195:
.Ltmp396:
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp397:
	b	.LBB0_352
.LBB0_196:
.Ltmp398:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_197:
.Ltmp395:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_198:
.Ltmp377:
	ld.d	$a3, $sp, 120
	move	$fp, $a0
	beqz	$a3, .LBB0_200
# %bb.199:
.Ltmp378:
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp379:
.LBB0_200:                              # %_ZNSt14_Function_baseD2Ev.exit237
	ld.d	$a3, $sp, 152
	beqz	$a3, .LBB0_352
# %bb.201:
.Ltmp381:
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp382:
	b	.LBB0_352
.LBB0_202:
.Ltmp383:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_203:
.Ltmp380:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_204:
.Ltmp362:
	ld.d	$a3, $sp, 184
	move	$fp, $a0
	beqz	$a3, .LBB0_206
# %bb.205:
.Ltmp363:
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 168
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp364:
.LBB0_206:                              # %_ZNSt14_Function_baseD2Ev.exit233
	ld.d	$a3, $sp, 216
	beqz	$a3, .LBB0_352
# %bb.207:
.Ltmp366:
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 200
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp367:
	b	.LBB0_352
.LBB0_208:
.Ltmp368:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_209:
.Ltmp365:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_210:
.Ltmp347:
	ld.d	$a3, $sp, 248
	move	$fp, $a0
	beqz	$a3, .LBB0_212
# %bb.211:
.Ltmp348:
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 232
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp349:
.LBB0_212:                              # %_ZNSt14_Function_baseD2Ev.exit229
	ld.d	$a3, $sp, 280
	beqz	$a3, .LBB0_352
# %bb.213:
.Ltmp351:
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 264
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp352:
	b	.LBB0_352
.LBB0_214:
.Ltmp353:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_215:
.Ltmp350:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_216:
.Ltmp332:
	ld.d	$a3, $sp, 312
	move	$fp, $a0
	beqz	$a3, .LBB0_218
# %bb.217:
.Ltmp333:
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 296
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp334:
.LBB0_218:                              # %_ZNSt14_Function_baseD2Ev.exit225
	ld.d	$a3, $sp, 344
	beqz	$a3, .LBB0_352
# %bb.219:
.Ltmp336:
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 328
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp337:
	b	.LBB0_352
.LBB0_220:
.Ltmp338:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_221:
.Ltmp335:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_222:
.Ltmp317:
	ld.d	$a3, $sp, 376
	move	$fp, $a0
	beqz	$a3, .LBB0_224
# %bb.223:
.Ltmp318:
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 360
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp319:
.LBB0_224:                              # %_ZNSt14_Function_baseD2Ev.exit221
	ld.d	$a3, $sp, 408
	beqz	$a3, .LBB0_352
# %bb.225:
.Ltmp321:
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 392
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp322:
	b	.LBB0_352
.LBB0_226:
.Ltmp323:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_227:
.Ltmp320:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_228:
.Ltmp302:
	ld.d	$a3, $sp, 440
	move	$fp, $a0
	beqz	$a3, .LBB0_230
# %bb.229:
.Ltmp303:
	addi.d	$a0, $sp, 424
	addi.d	$a1, $sp, 424
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp304:
.LBB0_230:                              # %_ZNSt14_Function_baseD2Ev.exit217
	ld.d	$a3, $sp, 472
	beqz	$a3, .LBB0_352
# %bb.231:
.Ltmp306:
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 456
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp307:
	b	.LBB0_352
.LBB0_232:
.Ltmp308:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_233:
.Ltmp305:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_234:
.Ltmp287:
	ld.d	$a3, $sp, 504
	move	$fp, $a0
	beqz	$a3, .LBB0_236
# %bb.235:
.Ltmp288:
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp289:
.LBB0_236:                              # %_ZNSt14_Function_baseD2Ev.exit213
	ld.d	$a3, $sp, 536
	beqz	$a3, .LBB0_352
# %bb.237:
.Ltmp291:
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 520
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp292:
	b	.LBB0_352
.LBB0_238:
.Ltmp293:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_239:
.Ltmp290:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_240:
.Ltmp272:
	ld.d	$a3, $sp, 568
	move	$fp, $a0
	beqz	$a3, .LBB0_242
# %bb.241:
.Ltmp273:
	addi.d	$a0, $sp, 552
	addi.d	$a1, $sp, 552
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp274:
.LBB0_242:                              # %_ZNSt14_Function_baseD2Ev.exit209
	ld.d	$a3, $sp, 600
	beqz	$a3, .LBB0_352
# %bb.243:
.Ltmp276:
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 584
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp277:
	b	.LBB0_352
.LBB0_244:
.Ltmp278:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_245:
.Ltmp275:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_246:
.Ltmp257:
	ld.d	$a3, $sp, 632
	move	$fp, $a0
	beqz	$a3, .LBB0_248
# %bb.247:
.Ltmp258:
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 616
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp259:
.LBB0_248:                              # %_ZNSt14_Function_baseD2Ev.exit205
	ld.d	$a3, $sp, 664
	beqz	$a3, .LBB0_352
# %bb.249:
.Ltmp261:
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 648
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp262:
	b	.LBB0_352
.LBB0_250:
.Ltmp263:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_251:
.Ltmp260:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_252:
.Ltmp242:
	ld.d	$a3, $sp, 696
	move	$fp, $a0
	beqz	$a3, .LBB0_254
# %bb.253:
.Ltmp243:
	addi.d	$a0, $sp, 680
	addi.d	$a1, $sp, 680
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp244:
.LBB0_254:                              # %_ZNSt14_Function_baseD2Ev.exit201
	ld.d	$a3, $sp, 728
	beqz	$a3, .LBB0_352
# %bb.255:
.Ltmp246:
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 712
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp247:
	b	.LBB0_352
.LBB0_256:
.Ltmp248:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_257:
.Ltmp245:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_258:
.Ltmp227:
	ld.d	$a3, $sp, 760
	move	$fp, $a0
	beqz	$a3, .LBB0_260
# %bb.259:
.Ltmp228:
	addi.d	$a0, $sp, 744
	addi.d	$a1, $sp, 744
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp229:
.LBB0_260:                              # %_ZNSt14_Function_baseD2Ev.exit197
	ld.d	$a3, $sp, 792
	beqz	$a3, .LBB0_352
# %bb.261:
.Ltmp231:
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 776
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp232:
	b	.LBB0_352
.LBB0_262:
.Ltmp233:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_263:
.Ltmp230:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_264:
.Ltmp212:
	ld.d	$a3, $sp, 824
	move	$fp, $a0
	beqz	$a3, .LBB0_266
# %bb.265:
.Ltmp213:
	addi.d	$a0, $sp, 808
	addi.d	$a1, $sp, 808
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp214:
.LBB0_266:                              # %_ZNSt14_Function_baseD2Ev.exit193
	ld.d	$a3, $sp, 856
	beqz	$a3, .LBB0_352
# %bb.267:
.Ltmp216:
	addi.d	$a0, $sp, 840
	addi.d	$a1, $sp, 840
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp217:
	b	.LBB0_352
.LBB0_268:
.Ltmp218:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_269:
.Ltmp215:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_270:
.Ltmp197:
	ld.d	$a3, $sp, 888
	move	$fp, $a0
	beqz	$a3, .LBB0_272
# %bb.271:
.Ltmp198:
	addi.d	$a0, $sp, 872
	addi.d	$a1, $sp, 872
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp199:
.LBB0_272:                              # %_ZNSt14_Function_baseD2Ev.exit189
	ld.d	$a3, $sp, 920
	beqz	$a3, .LBB0_352
# %bb.273:
.Ltmp201:
	addi.d	$a0, $sp, 904
	addi.d	$a1, $sp, 904
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp202:
	b	.LBB0_352
.LBB0_274:
.Ltmp203:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_275:
.Ltmp200:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_276:
.Ltmp182:
	ld.d	$a3, $sp, 952
	move	$fp, $a0
	beqz	$a3, .LBB0_278
# %bb.277:
.Ltmp183:
	addi.d	$a0, $sp, 936
	addi.d	$a1, $sp, 936
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp184:
.LBB0_278:                              # %_ZNSt14_Function_baseD2Ev.exit185
	ld.d	$a3, $sp, 984
	beqz	$a3, .LBB0_352
# %bb.279:
.Ltmp186:
	addi.d	$a0, $sp, 968
	addi.d	$a1, $sp, 968
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp187:
	b	.LBB0_352
.LBB0_280:
.Ltmp188:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_281:
.Ltmp185:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_282:
.Ltmp167:
	ld.d	$a3, $sp, 1016
	move	$fp, $a0
	beqz	$a3, .LBB0_284
# %bb.283:
.Ltmp168:
	addi.d	$a0, $sp, 1000
	addi.d	$a1, $sp, 1000
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp169:
.LBB0_284:                              # %_ZNSt14_Function_baseD2Ev.exit181
	ld.d	$a3, $sp, 1048
	beqz	$a3, .LBB0_352
# %bb.285:
.Ltmp171:
	addi.d	$a0, $sp, 1032
	addi.d	$a1, $sp, 1032
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp172:
	b	.LBB0_352
.LBB0_286:
.Ltmp173:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_287:
.Ltmp170:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_288:
.Ltmp152:
	ld.d	$a3, $sp, 1080
	move	$fp, $a0
	beqz	$a3, .LBB0_290
# %bb.289:
.Ltmp153:
	addi.d	$a0, $sp, 1064
	addi.d	$a1, $sp, 1064
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp154:
.LBB0_290:                              # %_ZNSt14_Function_baseD2Ev.exit177
	ld.d	$a3, $sp, 1112
	beqz	$a3, .LBB0_352
# %bb.291:
.Ltmp156:
	addi.d	$a0, $sp, 1096
	addi.d	$a1, $sp, 1096
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp157:
	b	.LBB0_352
.LBB0_292:
.Ltmp158:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_293:
.Ltmp155:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_294:
.Ltmp137:
	ld.d	$a3, $sp, 1144
	move	$fp, $a0
	beqz	$a3, .LBB0_296
# %bb.295:
.Ltmp138:
	addi.d	$a0, $sp, 1128
	addi.d	$a1, $sp, 1128
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp139:
.LBB0_296:                              # %_ZNSt14_Function_baseD2Ev.exit173
	ld.d	$a3, $sp, 1176
	beqz	$a3, .LBB0_352
# %bb.297:
.Ltmp141:
	addi.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1160
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp142:
	b	.LBB0_352
.LBB0_298:
.Ltmp143:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_299:
.Ltmp140:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_300:
.Ltmp122:
	ld.d	$a3, $sp, 1208
	move	$fp, $a0
	beqz	$a3, .LBB0_302
# %bb.301:
.Ltmp123:
	addi.d	$a0, $sp, 1192
	addi.d	$a1, $sp, 1192
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp124:
.LBB0_302:                              # %_ZNSt14_Function_baseD2Ev.exit169
	ld.d	$a3, $sp, 1240
	beqz	$a3, .LBB0_352
# %bb.303:
.Ltmp126:
	addi.d	$a0, $sp, 1224
	addi.d	$a1, $sp, 1224
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp127:
	b	.LBB0_352
.LBB0_304:
.Ltmp128:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_305:
.Ltmp125:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_306:
.Ltmp107:
	ld.d	$a3, $sp, 1272
	move	$fp, $a0
	beqz	$a3, .LBB0_308
# %bb.307:
.Ltmp108:
	addi.d	$a0, $sp, 1256
	addi.d	$a1, $sp, 1256
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp109:
.LBB0_308:                              # %_ZNSt14_Function_baseD2Ev.exit165
	ld.d	$a3, $sp, 1304
	beqz	$a3, .LBB0_352
# %bb.309:
.Ltmp111:
	addi.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1288
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp112:
	b	.LBB0_352
.LBB0_310:
.Ltmp113:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_311:
.Ltmp110:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_312:
.Ltmp92:
	ld.d	$a3, $sp, 1336
	move	$fp, $a0
	beqz	$a3, .LBB0_314
# %bb.313:
.Ltmp93:
	addi.d	$a0, $sp, 1320
	addi.d	$a1, $sp, 1320
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp94:
.LBB0_314:                              # %_ZNSt14_Function_baseD2Ev.exit161
	ld.d	$a3, $sp, 1368
	beqz	$a3, .LBB0_352
# %bb.315:
.Ltmp96:
	addi.d	$a0, $sp, 1352
	addi.d	$a1, $sp, 1352
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp97:
	b	.LBB0_352
.LBB0_316:
.Ltmp98:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_317:
.Ltmp95:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_318:
.Ltmp77:
	ld.d	$a3, $sp, 1400
	move	$fp, $a0
	beqz	$a3, .LBB0_320
# %bb.319:
.Ltmp78:
	addi.d	$a0, $sp, 1384
	addi.d	$a1, $sp, 1384
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp79:
.LBB0_320:                              # %_ZNSt14_Function_baseD2Ev.exit157
	ld.d	$a3, $sp, 1432
	beqz	$a3, .LBB0_352
# %bb.321:
.Ltmp81:
	addi.d	$a0, $sp, 1416
	addi.d	$a1, $sp, 1416
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp82:
	b	.LBB0_352
.LBB0_322:
.Ltmp83:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_323:
.Ltmp80:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_324:
.Ltmp62:
	ld.d	$a3, $sp, 1464
	move	$fp, $a0
	beqz	$a3, .LBB0_326
# %bb.325:
.Ltmp63:
	addi.d	$a0, $sp, 1448
	addi.d	$a1, $sp, 1448
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp64:
.LBB0_326:                              # %_ZNSt14_Function_baseD2Ev.exit153
	ld.d	$a3, $sp, 1496
	beqz	$a3, .LBB0_352
# %bb.327:
.Ltmp66:
	addi.d	$a0, $sp, 1480
	addi.d	$a1, $sp, 1480
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp67:
	b	.LBB0_352
.LBB0_328:
.Ltmp68:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_329:
.Ltmp65:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_330:
.Ltmp47:
	ld.d	$a3, $sp, 1528
	move	$fp, $a0
	beqz	$a3, .LBB0_332
# %bb.331:
.Ltmp48:
	addi.d	$a0, $sp, 1512
	addi.d	$a1, $sp, 1512
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp49:
.LBB0_332:                              # %_ZNSt14_Function_baseD2Ev.exit149
	ld.d	$a3, $sp, 1560
	beqz	$a3, .LBB0_352
# %bb.333:
.Ltmp51:
	addi.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 1544
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp52:
	b	.LBB0_352
.LBB0_334:
.Ltmp53:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_335:
.Ltmp50:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_336:
.Ltmp32:
	ld.d	$a3, $sp, 1592
	move	$fp, $a0
	beqz	$a3, .LBB0_338
# %bb.337:
.Ltmp33:
	addi.d	$a0, $sp, 1576
	addi.d	$a1, $sp, 1576
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp34:
.LBB0_338:                              # %_ZNSt14_Function_baseD2Ev.exit145
	ld.d	$a3, $sp, 1624
	beqz	$a3, .LBB0_352
# %bb.339:
.Ltmp36:
	addi.d	$a0, $sp, 1608
	addi.d	$a1, $sp, 1608
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp37:
	b	.LBB0_352
.LBB0_340:
.Ltmp38:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_341:
.Ltmp35:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_342:
.Ltmp17:
	ld.d	$a3, $sp, 1656
	move	$fp, $a0
	beqz	$a3, .LBB0_344
# %bb.343:
.Ltmp18:
	addi.d	$a0, $sp, 1640
	addi.d	$a1, $sp, 1640
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp19:
.LBB0_344:                              # %_ZNSt14_Function_baseD2Ev.exit141
	ld.d	$a3, $sp, 1688
	beqz	$a3, .LBB0_352
# %bb.345:
.Ltmp21:
	addi.d	$a0, $sp, 1672
	addi.d	$a1, $sp, 1672
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp22:
	b	.LBB0_352
.LBB0_346:
.Ltmp23:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_347:
.Ltmp20:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_348:
.Ltmp2:
	ld.d	$a3, $sp, 1720
	move	$fp, $a0
	beqz	$a3, .LBB0_350
# %bb.349:
.Ltmp3:
	addi.d	$a0, $sp, 1704
	addi.d	$a1, $sp, 1704
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp4:
.LBB0_350:                              # %_ZNSt14_Function_baseD2Ev.exit137
	ld.d	$a3, $sp, 1752
	beqz	$a3, .LBB0_352
# %bb.351:
.Ltmp6:
	addi.d	$a0, $sp, 1736
	addi.d	$a1, $sp, 1736
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp7:
.LBB0_352:                              # %_ZNSt14_Function_baseD2Ev.exit139
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_353:
.Ltmp8:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_354:
.Ltmp5:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin0          #     jumps to .Ltmp56
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin0          #     jumps to .Ltmp59
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin0          #     jumps to .Ltmp71
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp72-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin0          #     jumps to .Ltmp74
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp75-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin0          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin0          #     jumps to .Ltmp86
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp87-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin0          #     jumps to .Ltmp89
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp90-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin0          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin0         #     jumps to .Ltmp101
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp102-.Lfunc_begin0         # >> Call Site 22 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin0         #     jumps to .Ltmp104
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp105-.Lfunc_begin0         # >> Call Site 23 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin0         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin0         # >> Call Site 24 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin0         #     jumps to .Ltmp116
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp117-.Lfunc_begin0         # >> Call Site 25 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin0         #     jumps to .Ltmp119
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp120-.Lfunc_begin0         # >> Call Site 26 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin0         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin0         # >> Call Site 27 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin0         #     jumps to .Ltmp131
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp132-.Lfunc_begin0         # >> Call Site 28 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin0         #     jumps to .Ltmp134
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp135-.Lfunc_begin0         # >> Call Site 29 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin0         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin0         # >> Call Site 30 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin0         #     jumps to .Ltmp146
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp147-.Lfunc_begin0         # >> Call Site 31 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin0         #     jumps to .Ltmp149
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp150-.Lfunc_begin0         # >> Call Site 32 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin0         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin0         # >> Call Site 33 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin0         #     jumps to .Ltmp161
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp162-.Lfunc_begin0         # >> Call Site 34 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin0         #     jumps to .Ltmp164
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp165-.Lfunc_begin0         # >> Call Site 35 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin0         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin0         # >> Call Site 36 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin0         #     jumps to .Ltmp176
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp177-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin0         #     jumps to .Ltmp179
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp180-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin0         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin0         #     jumps to .Ltmp191
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp192-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin0         #     jumps to .Ltmp194
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp195-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin0         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin0         #     jumps to .Ltmp206
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp207-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin0         #     jumps to .Ltmp209
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp210-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin0         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin0         #     jumps to .Ltmp221
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp222-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin0         #     jumps to .Ltmp224
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp225-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin0         #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin0         #     jumps to .Ltmp236
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp237-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin0         #     jumps to .Ltmp239
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp240-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin0         #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin0         #     jumps to .Ltmp251
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp252-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin0         #     jumps to .Ltmp254
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp255-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin0         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin0         #     jumps to .Ltmp266
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp267-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin0         #     jumps to .Ltmp269
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp270-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin0         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin0         #     jumps to .Ltmp281
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp282-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp284-.Lfunc_begin0         #     jumps to .Ltmp284
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp285-.Lfunc_begin0         # >> Call Site 59 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp287-.Lfunc_begin0         #     jumps to .Ltmp287
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin0         # >> Call Site 60 <<
	.uleb128 .Ltmp295-.Ltmp294              #   Call between .Ltmp294 and .Ltmp295
	.uleb128 .Ltmp296-.Lfunc_begin0         #     jumps to .Ltmp296
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp297-.Lfunc_begin0         # >> Call Site 61 <<
	.uleb128 .Ltmp298-.Ltmp297              #   Call between .Ltmp297 and .Ltmp298
	.uleb128 .Ltmp299-.Lfunc_begin0         #     jumps to .Ltmp299
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp300-.Lfunc_begin0         # >> Call Site 62 <<
	.uleb128 .Ltmp301-.Ltmp300              #   Call between .Ltmp300 and .Ltmp301
	.uleb128 .Ltmp302-.Lfunc_begin0         #     jumps to .Ltmp302
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin0         # >> Call Site 63 <<
	.uleb128 .Ltmp310-.Ltmp309              #   Call between .Ltmp309 and .Ltmp310
	.uleb128 .Ltmp311-.Lfunc_begin0         #     jumps to .Ltmp311
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp312-.Lfunc_begin0         # >> Call Site 64 <<
	.uleb128 .Ltmp313-.Ltmp312              #   Call between .Ltmp312 and .Ltmp313
	.uleb128 .Ltmp314-.Lfunc_begin0         #     jumps to .Ltmp314
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp315-.Lfunc_begin0         # >> Call Site 65 <<
	.uleb128 .Ltmp316-.Ltmp315              #   Call between .Ltmp315 and .Ltmp316
	.uleb128 .Ltmp317-.Lfunc_begin0         #     jumps to .Ltmp317
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin0         # >> Call Site 66 <<
	.uleb128 .Ltmp325-.Ltmp324              #   Call between .Ltmp324 and .Ltmp325
	.uleb128 .Ltmp326-.Lfunc_begin0         #     jumps to .Ltmp326
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp327-.Lfunc_begin0         # >> Call Site 67 <<
	.uleb128 .Ltmp328-.Ltmp327              #   Call between .Ltmp327 and .Ltmp328
	.uleb128 .Ltmp329-.Lfunc_begin0         #     jumps to .Ltmp329
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp330-.Lfunc_begin0         # >> Call Site 68 <<
	.uleb128 .Ltmp331-.Ltmp330              #   Call between .Ltmp330 and .Ltmp331
	.uleb128 .Ltmp332-.Lfunc_begin0         #     jumps to .Ltmp332
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp339-.Lfunc_begin0         # >> Call Site 69 <<
	.uleb128 .Ltmp340-.Ltmp339              #   Call between .Ltmp339 and .Ltmp340
	.uleb128 .Ltmp341-.Lfunc_begin0         #     jumps to .Ltmp341
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp342-.Lfunc_begin0         # >> Call Site 70 <<
	.uleb128 .Ltmp343-.Ltmp342              #   Call between .Ltmp342 and .Ltmp343
	.uleb128 .Ltmp344-.Lfunc_begin0         #     jumps to .Ltmp344
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp345-.Lfunc_begin0         # >> Call Site 71 <<
	.uleb128 .Ltmp346-.Ltmp345              #   Call between .Ltmp345 and .Ltmp346
	.uleb128 .Ltmp347-.Lfunc_begin0         #     jumps to .Ltmp347
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin0         # >> Call Site 72 <<
	.uleb128 .Ltmp355-.Ltmp354              #   Call between .Ltmp354 and .Ltmp355
	.uleb128 .Ltmp356-.Lfunc_begin0         #     jumps to .Ltmp356
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp357-.Lfunc_begin0         # >> Call Site 73 <<
	.uleb128 .Ltmp358-.Ltmp357              #   Call between .Ltmp357 and .Ltmp358
	.uleb128 .Ltmp359-.Lfunc_begin0         #     jumps to .Ltmp359
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp360-.Lfunc_begin0         # >> Call Site 74 <<
	.uleb128 .Ltmp361-.Ltmp360              #   Call between .Ltmp360 and .Ltmp361
	.uleb128 .Ltmp362-.Lfunc_begin0         #     jumps to .Ltmp362
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp369-.Lfunc_begin0         # >> Call Site 75 <<
	.uleb128 .Ltmp370-.Ltmp369              #   Call between .Ltmp369 and .Ltmp370
	.uleb128 .Ltmp371-.Lfunc_begin0         #     jumps to .Ltmp371
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp372-.Lfunc_begin0         # >> Call Site 76 <<
	.uleb128 .Ltmp373-.Ltmp372              #   Call between .Ltmp372 and .Ltmp373
	.uleb128 .Ltmp374-.Lfunc_begin0         #     jumps to .Ltmp374
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp375-.Lfunc_begin0         # >> Call Site 77 <<
	.uleb128 .Ltmp376-.Ltmp375              #   Call between .Ltmp375 and .Ltmp376
	.uleb128 .Ltmp377-.Lfunc_begin0         #     jumps to .Ltmp377
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp384-.Lfunc_begin0         # >> Call Site 78 <<
	.uleb128 .Ltmp385-.Ltmp384              #   Call between .Ltmp384 and .Ltmp385
	.uleb128 .Ltmp386-.Lfunc_begin0         #     jumps to .Ltmp386
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp387-.Lfunc_begin0         # >> Call Site 79 <<
	.uleb128 .Ltmp388-.Ltmp387              #   Call between .Ltmp387 and .Ltmp388
	.uleb128 .Ltmp389-.Lfunc_begin0         #     jumps to .Ltmp389
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp390-.Lfunc_begin0         # >> Call Site 80 <<
	.uleb128 .Ltmp391-.Ltmp390              #   Call between .Ltmp390 and .Ltmp391
	.uleb128 .Ltmp392-.Lfunc_begin0         #     jumps to .Ltmp392
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp399-.Lfunc_begin0         # >> Call Site 81 <<
	.uleb128 .Ltmp400-.Ltmp399              #   Call between .Ltmp399 and .Ltmp400
	.uleb128 .Ltmp401-.Lfunc_begin0         #     jumps to .Ltmp401
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp402-.Lfunc_begin0         # >> Call Site 82 <<
	.uleb128 .Ltmp403-.Ltmp402              #   Call between .Ltmp402 and .Ltmp403
	.uleb128 .Ltmp404-.Lfunc_begin0         #     jumps to .Ltmp404
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp403-.Lfunc_begin0         # >> Call Site 83 <<
	.uleb128 .Ltmp393-.Ltmp403              #   Call between .Ltmp403 and .Ltmp393
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin0         # >> Call Site 84 <<
	.uleb128 .Ltmp394-.Ltmp393              #   Call between .Ltmp393 and .Ltmp394
	.uleb128 .Ltmp395-.Lfunc_begin0         #     jumps to .Ltmp395
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp396-.Lfunc_begin0         # >> Call Site 85 <<
	.uleb128 .Ltmp397-.Ltmp396              #   Call between .Ltmp396 and .Ltmp397
	.uleb128 .Ltmp398-.Lfunc_begin0         #     jumps to .Ltmp398
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp397-.Lfunc_begin0         # >> Call Site 86 <<
	.uleb128 .Ltmp378-.Ltmp397              #   Call between .Ltmp397 and .Ltmp378
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp378-.Lfunc_begin0         # >> Call Site 87 <<
	.uleb128 .Ltmp379-.Ltmp378              #   Call between .Ltmp378 and .Ltmp379
	.uleb128 .Ltmp380-.Lfunc_begin0         #     jumps to .Ltmp380
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp381-.Lfunc_begin0         # >> Call Site 88 <<
	.uleb128 .Ltmp382-.Ltmp381              #   Call between .Ltmp381 and .Ltmp382
	.uleb128 .Ltmp383-.Lfunc_begin0         #     jumps to .Ltmp383
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp382-.Lfunc_begin0         # >> Call Site 89 <<
	.uleb128 .Ltmp363-.Ltmp382              #   Call between .Ltmp382 and .Ltmp363
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp363-.Lfunc_begin0         # >> Call Site 90 <<
	.uleb128 .Ltmp364-.Ltmp363              #   Call between .Ltmp363 and .Ltmp364
	.uleb128 .Ltmp365-.Lfunc_begin0         #     jumps to .Ltmp365
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp366-.Lfunc_begin0         # >> Call Site 91 <<
	.uleb128 .Ltmp367-.Ltmp366              #   Call between .Ltmp366 and .Ltmp367
	.uleb128 .Ltmp368-.Lfunc_begin0         #     jumps to .Ltmp368
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp367-.Lfunc_begin0         # >> Call Site 92 <<
	.uleb128 .Ltmp348-.Ltmp367              #   Call between .Ltmp367 and .Ltmp348
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin0         # >> Call Site 93 <<
	.uleb128 .Ltmp349-.Ltmp348              #   Call between .Ltmp348 and .Ltmp349
	.uleb128 .Ltmp350-.Lfunc_begin0         #     jumps to .Ltmp350
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp351-.Lfunc_begin0         # >> Call Site 94 <<
	.uleb128 .Ltmp352-.Ltmp351              #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin0         #     jumps to .Ltmp353
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp352-.Lfunc_begin0         # >> Call Site 95 <<
	.uleb128 .Ltmp333-.Ltmp352              #   Call between .Ltmp352 and .Ltmp333
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp333-.Lfunc_begin0         # >> Call Site 96 <<
	.uleb128 .Ltmp334-.Ltmp333              #   Call between .Ltmp333 and .Ltmp334
	.uleb128 .Ltmp335-.Lfunc_begin0         #     jumps to .Ltmp335
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp336-.Lfunc_begin0         # >> Call Site 97 <<
	.uleb128 .Ltmp337-.Ltmp336              #   Call between .Ltmp336 and .Ltmp337
	.uleb128 .Ltmp338-.Lfunc_begin0         #     jumps to .Ltmp338
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp337-.Lfunc_begin0         # >> Call Site 98 <<
	.uleb128 .Ltmp318-.Ltmp337              #   Call between .Ltmp337 and .Ltmp318
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin0         # >> Call Site 99 <<
	.uleb128 .Ltmp319-.Ltmp318              #   Call between .Ltmp318 and .Ltmp319
	.uleb128 .Ltmp320-.Lfunc_begin0         #     jumps to .Ltmp320
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp321-.Lfunc_begin0         # >> Call Site 100 <<
	.uleb128 .Ltmp322-.Ltmp321              #   Call between .Ltmp321 and .Ltmp322
	.uleb128 .Ltmp323-.Lfunc_begin0         #     jumps to .Ltmp323
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp322-.Lfunc_begin0         # >> Call Site 101 <<
	.uleb128 .Ltmp303-.Ltmp322              #   Call between .Ltmp322 and .Ltmp303
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin0         # >> Call Site 102 <<
	.uleb128 .Ltmp304-.Ltmp303              #   Call between .Ltmp303 and .Ltmp304
	.uleb128 .Ltmp305-.Lfunc_begin0         #     jumps to .Ltmp305
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp306-.Lfunc_begin0         # >> Call Site 103 <<
	.uleb128 .Ltmp307-.Ltmp306              #   Call between .Ltmp306 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin0         #     jumps to .Ltmp308
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp307-.Lfunc_begin0         # >> Call Site 104 <<
	.uleb128 .Ltmp288-.Ltmp307              #   Call between .Ltmp307 and .Ltmp288
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin0         # >> Call Site 105 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp290-.Lfunc_begin0         #     jumps to .Ltmp290
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp291-.Lfunc_begin0         # >> Call Site 106 <<
	.uleb128 .Ltmp292-.Ltmp291              #   Call between .Ltmp291 and .Ltmp292
	.uleb128 .Ltmp293-.Lfunc_begin0         #     jumps to .Ltmp293
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp292-.Lfunc_begin0         # >> Call Site 107 <<
	.uleb128 .Ltmp273-.Ltmp292              #   Call between .Ltmp292 and .Ltmp273
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin0         # >> Call Site 108 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin0         #     jumps to .Ltmp275
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp276-.Lfunc_begin0         # >> Call Site 109 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin0         #     jumps to .Ltmp278
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp277-.Lfunc_begin0         # >> Call Site 110 <<
	.uleb128 .Ltmp258-.Ltmp277              #   Call between .Ltmp277 and .Ltmp258
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin0         # >> Call Site 111 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin0         #     jumps to .Ltmp260
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp261-.Lfunc_begin0         # >> Call Site 112 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin0         #     jumps to .Ltmp263
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp262-.Lfunc_begin0         # >> Call Site 113 <<
	.uleb128 .Ltmp243-.Ltmp262              #   Call between .Ltmp262 and .Ltmp243
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin0         # >> Call Site 114 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin0         #     jumps to .Ltmp245
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp246-.Lfunc_begin0         # >> Call Site 115 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin0         #     jumps to .Ltmp248
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp247-.Lfunc_begin0         # >> Call Site 116 <<
	.uleb128 .Ltmp228-.Ltmp247              #   Call between .Ltmp247 and .Ltmp228
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin0         # >> Call Site 117 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin0         #     jumps to .Ltmp230
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp231-.Lfunc_begin0         # >> Call Site 118 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin0         #     jumps to .Ltmp233
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp232-.Lfunc_begin0         # >> Call Site 119 <<
	.uleb128 .Ltmp213-.Ltmp232              #   Call between .Ltmp232 and .Ltmp213
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin0         # >> Call Site 120 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin0         #     jumps to .Ltmp215
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp216-.Lfunc_begin0         # >> Call Site 121 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin0         #     jumps to .Ltmp218
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp217-.Lfunc_begin0         # >> Call Site 122 <<
	.uleb128 .Ltmp198-.Ltmp217              #   Call between .Ltmp217 and .Ltmp198
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin0         # >> Call Site 123 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin0         #     jumps to .Ltmp200
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp201-.Lfunc_begin0         # >> Call Site 124 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin0         #     jumps to .Ltmp203
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp202-.Lfunc_begin0         # >> Call Site 125 <<
	.uleb128 .Ltmp183-.Ltmp202              #   Call between .Ltmp202 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin0         # >> Call Site 126 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin0         #     jumps to .Ltmp185
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp186-.Lfunc_begin0         # >> Call Site 127 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin0         #     jumps to .Ltmp188
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp187-.Lfunc_begin0         # >> Call Site 128 <<
	.uleb128 .Ltmp168-.Ltmp187              #   Call between .Ltmp187 and .Ltmp168
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin0         # >> Call Site 129 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin0         #     jumps to .Ltmp170
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp171-.Lfunc_begin0         # >> Call Site 130 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin0         #     jumps to .Ltmp173
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp172-.Lfunc_begin0         # >> Call Site 131 <<
	.uleb128 .Ltmp153-.Ltmp172              #   Call between .Ltmp172 and .Ltmp153
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin0         # >> Call Site 132 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin0         #     jumps to .Ltmp155
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp156-.Lfunc_begin0         # >> Call Site 133 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin0         #     jumps to .Ltmp158
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp157-.Lfunc_begin0         # >> Call Site 134 <<
	.uleb128 .Ltmp138-.Ltmp157              #   Call between .Ltmp157 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin0         # >> Call Site 135 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin0         #     jumps to .Ltmp140
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp141-.Lfunc_begin0         # >> Call Site 136 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin0         #     jumps to .Ltmp143
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 137 <<
	.uleb128 .Ltmp123-.Ltmp142              #   Call between .Ltmp142 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin0         # >> Call Site 138 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin0         #     jumps to .Ltmp125
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp126-.Lfunc_begin0         # >> Call Site 139 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin0         #     jumps to .Ltmp128
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp127-.Lfunc_begin0         # >> Call Site 140 <<
	.uleb128 .Ltmp108-.Ltmp127              #   Call between .Ltmp127 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin0         # >> Call Site 141 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin0         #     jumps to .Ltmp110
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp111-.Lfunc_begin0         # >> Call Site 142 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin0         #     jumps to .Ltmp113
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 143 <<
	.uleb128 .Ltmp93-.Ltmp112               #   Call between .Ltmp112 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin0          # >> Call Site 144 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin0          #     jumps to .Ltmp95
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp96-.Lfunc_begin0          # >> Call Site 145 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin0          #     jumps to .Ltmp98
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp97-.Lfunc_begin0          # >> Call Site 146 <<
	.uleb128 .Ltmp78-.Ltmp97                #   Call between .Ltmp97 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 147 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin0          #     jumps to .Ltmp80
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 148 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 149 <<
	.uleb128 .Ltmp63-.Ltmp82                #   Call between .Ltmp82 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 150 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 151 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 152 <<
	.uleb128 .Ltmp48-.Ltmp67                #   Call between .Ltmp67 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 153 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 154 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 155 <<
	.uleb128 .Ltmp33-.Ltmp52                #   Call between .Ltmp52 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 156 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 157 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 158 <<
	.uleb128 .Ltmp18-.Ltmp37                #   Call between .Ltmp37 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 159 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 160 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 161 <<
	.uleb128 .Ltmp3-.Ltmp22                 #   Call between .Ltmp22 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 162 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 163 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 164 <<
	.uleb128 .Lfunc_end0-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end0
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc
.LCPI1_0:
	.dword	-2147483648                     # 0xffffffff80000000
	.dword	2147483647                      # 0x7fffffff
	.text
	.p2align	5
	.type	_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc,@function
_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc: # @_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB1_3
.LBB1_2:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp405:
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp406:
# %bb.4:
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $sp, 64
	lu12i.w	$s4, -1
	ori	$s5, $s4, 96
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
.Ltmp408:
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp409:
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$a1, $fp, $s5
	addi.d	$s5, $s5, 4
	stptr.w	$a0, $a1, 4000
	bnez	$s5, .LBB1_5
# %bb.7:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	ori	$s5, $s4, 96
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
.Ltmp411:
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp412:
# %bb.9:                                # %.noexc111
                                        #   in Loop: Header=BB1_8 Depth=1
	add.d	$a1, $s0, $s5
	addi.d	$s5, $s5, 4
	stptr.w	$a0, $a1, 4000
	bnez	$s5, .LBB1_8
# %bb.10:
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_58
# %bb.11:
	ld.d	$a4, $s2, 24
.Ltmp414:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp415:
# %bb.12:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_60
# %bb.13:
	ld.d	$a4, $s1, 24
.Ltmp416:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp417:
# %bb.14:
	bne	$s3, $a0, .LBB1_62
# %bb.15:                               # %vector.body.preheader
	ori	$a0, $s4, 128
	lu12i.w	$a1, 524287
	ori	$s5, $a1, 4095
	xvreplgr2vr.w	$xr1, $s5
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	lu12i.w	$a3, -524288
	xvreplgr2vr.w	$xr0, $a3
	.p2align	4, , 16
.LBB1_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $fp, $a0
	xvstx	$xr1, $a3, $a1
	xvstx	$xr1, $a3, $a2
	add.d	$a3, $s0, $a0
	xvstx	$xr0, $a3, $a1
	addi.d	$a0, $a0, 64
	xvstx	$xr0, $a3, $a2
	bnez	$a0, .LBB1_16
# %bb.17:                               # %vec.epilog.vector.body
	ori	$a0, $zero, 3968
	xvst	$xr1, $sp, 0                    # 32-byte Folded Spill
	xvstx	$xr1, $fp, $a0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvstx	$xr0, $s0, $a0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_63
# %bb.18:
	ld.d	$a4, $s2, 24
.Ltmp420:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp421:
# %bb.19:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_65
# %bb.20:
	ld.d	$a4, $s1, 24
.Ltmp422:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp423:
# %bb.21:
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvld	$xr1, $sp, 0                    # 32-byte Folded Reload
	bne	$s3, $a0, .LBB1_67
# %bb.22:                               # %vector.body254.preheader
	ori	$a0, $s4, 128
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	.p2align	4, , 16
.LBB1_23:                               # %vector.body254
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $fp, $a0
	xvstx	$xr0, $a3, $a1
	xvstx	$xr0, $a3, $a2
	add.d	$a3, $s0, $a0
	xvstx	$xr1, $a3, $a1
	addi.d	$a0, $a0, 64
	xvstx	$xr1, $a3, $a2
	bnez	$a0, .LBB1_23
# %bb.24:                               # %vec.epilog.vector.body262
	ori	$a0, $zero, 3968
	xvstx	$xr0, $fp, $a0
	xvstx	$xr1, $s0, $a0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_68
# %bb.25:
	ld.d	$a4, $s2, 24
.Ltmp426:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp427:
# %bb.26:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_70
# %bb.27:
	ld.d	$a4, $s1, 24
.Ltmp428:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp429:
# %bb.28:
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	bne	$s3, $a0, .LBB1_72
# %bb.29:                               # %vector.body271.preheader
	ori	$a0, $s4, 128
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	.p2align	4, , 16
.LBB1_30:                               # %vector.body271
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	xvstx	$xr0, $a3, $a1
	xvstx	$xr0, $a3, $a2
	add.d	$a3, $fp, $a0
	xvstx	$xr0, $a3, $a1
	addi.d	$a0, $a0, 64
	xvstx	$xr0, $a3, $a2
	bnez	$a0, .LBB1_30
# %bb.31:                               # %vec.epilog.vector.body279
	ori	$a0, $zero, 3968
	xvstx	$xr0, $s0, $a0
	xvstx	$xr0, $fp, $a0
	stptr.w	$s5, $fp, 3992
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_73
# %bb.32:
	ld.d	$a4, $s2, 24
.Ltmp432:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp433:
# %bb.33:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_75
# %bb.34:
	ld.d	$a4, $s1, 24
.Ltmp434:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp435:
# %bb.35:
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	bne	$s3, $a0, .LBB1_77
# %bb.36:                               # %vector.body288.preheader
	ori	$a0, $s4, 128
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	.p2align	4, , 16
.LBB1_37:                               # %vector.body288
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	xvstx	$xr0, $a3, $a1
	xvstx	$xr0, $a3, $a2
	add.d	$a3, $fp, $a0
	xvstx	$xr0, $a3, $a1
	addi.d	$a0, $a0, 64
	xvstx	$xr0, $a3, $a2
	bnez	$a0, .LBB1_37
# %bb.38:                               # %vec.epilog.vector.body296
	ori	$a0, $zero, 3968
	xvstx	$xr0, $s0, $a0
	xvstx	$xr0, $fp, $a0
	st.w	$s5, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_78
# %bb.39:
	ld.d	$a4, $s2, 24
.Ltmp438:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp439:
# %bb.40:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_80
# %bb.41:
	ld.d	$a4, $s1, 24
.Ltmp440:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp441:
# %bb.42:
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	bne	$s3, $a0, .LBB1_82
# %bb.43:                               # %vector.body305.preheader
	ori	$a0, $s4, 128
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	.p2align	4, , 16
.LBB1_44:                               # %vector.body305
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	xvstx	$xr0, $a3, $a1
	xvstx	$xr0, $a3, $a2
	add.d	$a3, $fp, $a0
	xvstx	$xr0, $a3, $a1
	addi.d	$a0, $a0, 64
	xvstx	$xr0, $a3, $a2
	bnez	$a0, .LBB1_44
# %bb.45:                               # %vec.epilog.vector.body313
	ori	$a0, $zero, 3968
	xvstx	$xr0, $s0, $a0
	xvstx	$xr0, $fp, $a0
	stptr.w	$s5, $fp, 3996
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_83
# %bb.46:
	ld.d	$a4, $s2, 24
.Ltmp444:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp445:
# %bb.47:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_85
# %bb.48:
	ld.d	$a4, $s1, 24
.Ltmp446:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp447:
# %bb.49:
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	bne	$s3, $a0, .LBB1_87
# %bb.50:                               # %vector.body322.preheader
	ori	$a0, $s4, 128
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	.p2align	4, , 16
.LBB1_51:                               # %vector.body322
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	xvstx	$xr0, $a3, $a1
	xvstx	$xr0, $a3, $a2
	add.d	$a3, $fp, $a0
	xvstx	$xr0, $a3, $a1
	addi.d	$a0, $a0, 64
	xvstx	$xr0, $a3, $a2
	bnez	$a0, .LBB1_51
# %bb.52:                               # %vec.epilog.vector.body330
	ori	$a0, $zero, 3968
	xvstx	$xr0, $s0, $a0
	xvstx	$xr0, $fp, $a0
	stptr.w	$s5, $fp, 3996
	st.w	$s5, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_88
# %bb.53:
	ld.d	$a4, $s2, 24
.Ltmp450:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp451:
# %bb.54:
	move	$s2, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 88
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 84
	beqz	$a0, .LBB1_90
# %bb.55:
	ld.d	$a4, $s1, 24
.Ltmp452:
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 84
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp453:
# %bb.56:
	bne	$s2, $a0, .LBB1_92
# %bb.57:                               # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit170
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB1_58:
.Ltmp495:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp496:
# %bb.59:                               # %.noexc113
.LBB1_60:
.Ltmp492:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp493:
# %bb.61:                               # %.noexc116
.LBB1_62:
.Ltmp418:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp419:
	b	.LBB1_93
.LBB1_63:
.Ltmp489:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp490:
# %bb.64:                               # %.noexc120
.LBB1_65:
.Ltmp486:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp487:
# %bb.66:                               # %.noexc124
.LBB1_67:
.Ltmp424:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp425:
	b	.LBB1_93
.LBB1_68:
.Ltmp483:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp484:
# %bb.69:                               # %.noexc128
.LBB1_70:
.Ltmp480:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp481:
# %bb.71:                               # %.noexc132
.LBB1_72:
.Ltmp430:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp431:
	b	.LBB1_93
.LBB1_73:
.Ltmp477:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp478:
# %bb.74:                               # %.noexc136
.LBB1_75:
.Ltmp474:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp475:
# %bb.76:                               # %.noexc140
.LBB1_77:
.Ltmp436:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp437:
	b	.LBB1_93
.LBB1_78:
.Ltmp471:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp472:
# %bb.79:                               # %.noexc144
.LBB1_80:
.Ltmp468:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp469:
# %bb.81:                               # %.noexc148
.LBB1_82:
.Ltmp442:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp443:
	b	.LBB1_93
.LBB1_83:
.Ltmp465:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp466:
# %bb.84:                               # %.noexc152
.LBB1_85:
.Ltmp462:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp463:
# %bb.86:                               # %.noexc156
.LBB1_87:
.Ltmp448:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp449:
	b	.LBB1_93
.LBB1_88:
.Ltmp459:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp460:
# %bb.89:                               # %.noexc160
.LBB1_90:
.Ltmp456:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp457:
# %bb.91:                               # %.noexc164
.LBB1_92:
.Ltmp454:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp455:
.LBB1_93:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_94:
.Ltmp407:
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_95:
.Ltmp461:
	b	.LBB1_111
.LBB1_96:
.Ltmp467:
	b	.LBB1_111
.LBB1_97:
.Ltmp473:
	b	.LBB1_111
.LBB1_98:
.Ltmp479:
	b	.LBB1_111
.LBB1_99:
.Ltmp485:
	b	.LBB1_111
.LBB1_100:
.Ltmp491:
	b	.LBB1_111
.LBB1_101:
.Ltmp497:
	b	.LBB1_111
.LBB1_102:
.Ltmp458:
	b	.LBB1_111
.LBB1_103:
.Ltmp464:
	b	.LBB1_111
.LBB1_104:
.Ltmp470:
	b	.LBB1_111
.LBB1_105:
.Ltmp476:
	b	.LBB1_111
.LBB1_106:
.Ltmp482:
	b	.LBB1_111
.LBB1_107:
.Ltmp488:
	b	.LBB1_111
.LBB1_108:
.Ltmp494:
	b	.LBB1_111
.LBB1_109:                              # %.loopexit
.Ltmp413:
	b	.LBB1_111
.LBB1_110:                              # %.loopexit.split-lp
.Ltmp410:
.LBB1_111:                              # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit173
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc, .Lfunc_end1-_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp405-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp405
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp405-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp406-.Ltmp405              #   Call between .Ltmp405 and .Ltmp406
	.uleb128 .Ltmp407-.Lfunc_begin1         #     jumps to .Ltmp407
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp408-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp409-.Ltmp408              #   Call between .Ltmp408 and .Ltmp409
	.uleb128 .Ltmp410-.Lfunc_begin1         #     jumps to .Ltmp410
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp411-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp412-.Ltmp411              #   Call between .Ltmp411 and .Ltmp412
	.uleb128 .Ltmp413-.Lfunc_begin1         #     jumps to .Ltmp413
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp497-.Lfunc_begin1         #     jumps to .Ltmp497
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp416-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp417-.Ltmp416              #   Call between .Ltmp416 and .Ltmp417
	.uleb128 .Ltmp494-.Lfunc_begin1         #     jumps to .Ltmp494
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp421-.Ltmp420              #   Call between .Ltmp420 and .Ltmp421
	.uleb128 .Ltmp491-.Lfunc_begin1         #     jumps to .Ltmp491
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp423-.Ltmp422              #   Call between .Ltmp422 and .Ltmp423
	.uleb128 .Ltmp488-.Lfunc_begin1         #     jumps to .Ltmp488
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp426-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.uleb128 .Ltmp485-.Lfunc_begin1         #     jumps to .Ltmp485
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp429-.Ltmp428              #   Call between .Ltmp428 and .Ltmp429
	.uleb128 .Ltmp482-.Lfunc_begin1         #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp432-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.uleb128 .Ltmp479-.Lfunc_begin1         #     jumps to .Ltmp479
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp434-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp435-.Ltmp434              #   Call between .Ltmp434 and .Ltmp435
	.uleb128 .Ltmp476-.Lfunc_begin1         #     jumps to .Ltmp476
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp439-.Ltmp438              #   Call between .Ltmp438 and .Ltmp439
	.uleb128 .Ltmp473-.Lfunc_begin1         #     jumps to .Ltmp473
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp441-.Ltmp440              #   Call between .Ltmp440 and .Ltmp441
	.uleb128 .Ltmp470-.Lfunc_begin1         #     jumps to .Ltmp470
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp444-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.uleb128 .Ltmp467-.Lfunc_begin1         #     jumps to .Ltmp467
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp446-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp447-.Ltmp446              #   Call between .Ltmp446 and .Ltmp447
	.uleb128 .Ltmp464-.Lfunc_begin1         #     jumps to .Ltmp464
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp450-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp451-.Ltmp450              #   Call between .Ltmp450 and .Ltmp451
	.uleb128 .Ltmp461-.Lfunc_begin1         #     jumps to .Ltmp461
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp452-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp453-.Ltmp452              #   Call between .Ltmp452 and .Ltmp453
	.uleb128 .Ltmp458-.Lfunc_begin1         #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp453-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp495-.Ltmp453              #   Call between .Ltmp453 and .Ltmp495
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp495-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp496-.Ltmp495              #   Call between .Ltmp495 and .Ltmp496
	.uleb128 .Ltmp497-.Lfunc_begin1         #     jumps to .Ltmp497
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp492-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp419-.Ltmp492              #   Call between .Ltmp492 and .Ltmp419
	.uleb128 .Ltmp494-.Lfunc_begin1         #     jumps to .Ltmp494
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp490-.Ltmp489              #   Call between .Ltmp489 and .Ltmp490
	.uleb128 .Ltmp491-.Lfunc_begin1         #     jumps to .Ltmp491
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp425-.Ltmp486              #   Call between .Ltmp486 and .Ltmp425
	.uleb128 .Ltmp488-.Lfunc_begin1         #     jumps to .Ltmp488
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp484-.Ltmp483              #   Call between .Ltmp483 and .Ltmp484
	.uleb128 .Ltmp485-.Lfunc_begin1         #     jumps to .Ltmp485
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp431-.Ltmp480              #   Call between .Ltmp480 and .Ltmp431
	.uleb128 .Ltmp482-.Lfunc_begin1         #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp477-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp478-.Ltmp477              #   Call between .Ltmp477 and .Ltmp478
	.uleb128 .Ltmp479-.Lfunc_begin1         #     jumps to .Ltmp479
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp474-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp437-.Ltmp474              #   Call between .Ltmp474 and .Ltmp437
	.uleb128 .Ltmp476-.Lfunc_begin1         #     jumps to .Ltmp476
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp472-.Ltmp471              #   Call between .Ltmp471 and .Ltmp472
	.uleb128 .Ltmp473-.Lfunc_begin1         #     jumps to .Ltmp473
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp468-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp443-.Ltmp468              #   Call between .Ltmp468 and .Ltmp443
	.uleb128 .Ltmp470-.Lfunc_begin1         #     jumps to .Ltmp470
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp467-.Lfunc_begin1         #     jumps to .Ltmp467
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp449-.Ltmp462              #   Call between .Ltmp462 and .Ltmp449
	.uleb128 .Ltmp464-.Lfunc_begin1         #     jumps to .Ltmp464
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp461-.Lfunc_begin1         #     jumps to .Ltmp461
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp455-.Ltmp456              #   Call between .Ltmp456 and .Ltmp455
	.uleb128 .Ltmp458-.Lfunc_begin1         #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp455-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Lfunc_end1-.Ltmp455           #   Call between .Ltmp455 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc
	.type	_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc,@function
_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc: # @_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB2_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB2_3
.LBB2_2:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4000
	ori	$s5, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp498:
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp499:
# %bb.4:
	move	$s0, $a0
	st.d	$zero, $sp, 72
	lu12i.w	$s4, -1
	ori	$s6, $s4, 96
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
.Ltmp501:
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 72
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp502:
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB2_5 Depth=1
	srli.d	$a1, $a0, 1
	andi	$a2, $a0, 1
	or	$a1, $a2, $a1
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a1, $a0, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
	add.d	$a0, $fp, $s6
	addi.d	$s6, $s6, 4
	fstx.s	$fa0, $a0, $s5
	bnez	$s6, .LBB2_5
# %bb.7:
	st.d	$zero, $sp, 72
	ori	$s5, $s4, 96
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	ori	$s6, $zero, 4000
	.p2align	4, , 16
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
.Ltmp504:
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 72
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp505:
# %bb.9:                                # %.noexc111
                                        #   in Loop: Header=BB2_8 Depth=1
	srli.d	$a1, $a0, 1
	andi	$a2, $a0, 1
	or	$a1, $a2, $a1
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a1, $a0, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
	add.d	$a0, $s0, $s5
	addi.d	$s5, $s5, 4
	fstx.s	$fa0, $a0, $s6
	bnez	$s5, .LBB2_8
# %bb.10:
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_58
# %bb.11:
	ld.d	$a4, $s2, 24
.Ltmp507:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp508:
# %bb.12:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_60
# %bb.13:
	ld.d	$a4, $s1, 24
.Ltmp509:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp510:
# %bb.14:
	bne	$s3, $a0, .LBB2_62
# %bb.15:                               # %vector.body.preheader
	ori	$a0, $s4, 128
	lu12i.w	$a1, 522239
	ori	$s5, $a1, 4095
	xvreplgr2vr.w	$xr1, $s5
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	lu12i.w	$a3, 2048
	xvreplgr2vr.w	$xr0, $a3
	.p2align	4, , 16
.LBB2_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $fp, $a0
	xvstx	$xr1, $a3, $a1
	xvstx	$xr1, $a3, $a2
	add.d	$a3, $s0, $a0
	xvstx	$xr0, $a3, $a1
	addi.d	$a0, $a0, 64
	xvstx	$xr0, $a3, $a2
	bnez	$a0, .LBB2_16
# %bb.17:                               # %vec.epilog.vector.body
	ori	$a0, $zero, 3968
	xvst	$xr1, $sp, 0                    # 32-byte Folded Spill
	xvstx	$xr1, $fp, $a0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvstx	$xr0, $s0, $a0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_63
# %bb.18:
	ld.d	$a4, $s2, 24
.Ltmp513:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp514:
# %bb.19:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_65
# %bb.20:
	ld.d	$a4, $s1, 24
.Ltmp515:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp516:
# %bb.21:
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvld	$xr1, $sp, 0                    # 32-byte Folded Reload
	bne	$s3, $a0, .LBB2_67
# %bb.22:                               # %vector.body254.preheader
	ori	$a0, $s4, 128
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	.p2align	4, , 16
.LBB2_23:                               # %vector.body254
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $fp, $a0
	xvstx	$xr0, $a3, $a1
	xvstx	$xr0, $a3, $a2
	add.d	$a3, $s0, $a0
	xvstx	$xr1, $a3, $a1
	addi.d	$a0, $a0, 64
	xvstx	$xr1, $a3, $a2
	bnez	$a0, .LBB2_23
# %bb.24:                               # %vec.epilog.vector.body262
	ori	$a0, $zero, 3968
	xvstx	$xr0, $fp, $a0
	xvstx	$xr1, $s0, $a0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_68
# %bb.25:
	ld.d	$a4, $s2, 24
.Ltmp519:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp520:
# %bb.26:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_70
# %bb.27:
	ld.d	$a4, $s1, 24
.Ltmp521:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp522:
# %bb.28:
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	bne	$s3, $a0, .LBB2_72
# %bb.29:                               # %vector.body271.preheader
	ori	$a0, $s4, 128
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	.p2align	4, , 16
.LBB2_30:                               # %vector.body271
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	xvstx	$xr0, $a3, $a1
	xvstx	$xr0, $a3, $a2
	add.d	$a3, $fp, $a0
	xvstx	$xr0, $a3, $a1
	addi.d	$a0, $a0, 64
	xvstx	$xr0, $a3, $a2
	bnez	$a0, .LBB2_30
# %bb.31:                               # %vec.epilog.vector.body279
	ori	$a0, $zero, 3968
	xvstx	$xr0, $s0, $a0
	xvstx	$xr0, $fp, $a0
	stptr.w	$s5, $fp, 3992
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_73
# %bb.32:
	ld.d	$a4, $s2, 24
.Ltmp525:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp526:
# %bb.33:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_75
# %bb.34:
	ld.d	$a4, $s1, 24
.Ltmp527:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp528:
# %bb.35:
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	bne	$s3, $a0, .LBB2_77
# %bb.36:                               # %vector.body288.preheader
	ori	$a0, $s4, 128
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	.p2align	4, , 16
.LBB2_37:                               # %vector.body288
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	xvstx	$xr0, $a3, $a1
	xvstx	$xr0, $a3, $a2
	add.d	$a3, $fp, $a0
	xvstx	$xr0, $a3, $a1
	addi.d	$a0, $a0, 64
	xvstx	$xr0, $a3, $a2
	bnez	$a0, .LBB2_37
# %bb.38:                               # %vec.epilog.vector.body296
	ori	$a0, $zero, 3968
	xvstx	$xr0, $s0, $a0
	xvstx	$xr0, $fp, $a0
	st.w	$s5, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_78
# %bb.39:
	ld.d	$a4, $s2, 24
.Ltmp531:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp532:
# %bb.40:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_80
# %bb.41:
	ld.d	$a4, $s1, 24
.Ltmp533:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp534:
# %bb.42:
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	bne	$s3, $a0, .LBB2_82
# %bb.43:                               # %vector.body305.preheader
	ori	$a0, $s4, 128
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	.p2align	4, , 16
.LBB2_44:                               # %vector.body305
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	xvstx	$xr0, $a3, $a1
	xvstx	$xr0, $a3, $a2
	add.d	$a3, $fp, $a0
	xvstx	$xr0, $a3, $a1
	addi.d	$a0, $a0, 64
	xvstx	$xr0, $a3, $a2
	bnez	$a0, .LBB2_44
# %bb.45:                               # %vec.epilog.vector.body313
	ori	$a0, $zero, 3968
	xvstx	$xr0, $s0, $a0
	xvstx	$xr0, $fp, $a0
	stptr.w	$s5, $fp, 3996
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_83
# %bb.46:
	ld.d	$a4, $s2, 24
.Ltmp537:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp538:
# %bb.47:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_85
# %bb.48:
	ld.d	$a4, $s1, 24
.Ltmp539:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp540:
# %bb.49:
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	bne	$s3, $a0, .LBB2_87
# %bb.50:                               # %vector.body322.preheader
	ori	$a0, $s4, 128
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	.p2align	4, , 16
.LBB2_51:                               # %vector.body322
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	xvstx	$xr0, $a3, $a1
	xvstx	$xr0, $a3, $a2
	add.d	$a3, $fp, $a0
	xvstx	$xr0, $a3, $a1
	addi.d	$a0, $a0, 64
	xvstx	$xr0, $a3, $a2
	bnez	$a0, .LBB2_51
# %bb.52:                               # %vec.epilog.vector.body330
	ori	$a0, $zero, 3968
	xvstx	$xr0, $s0, $a0
	xvstx	$xr0, $fp, $a0
	stptr.w	$s5, $fp, 3996
	st.w	$s5, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_88
# %bb.53:
	ld.d	$a4, $s2, 24
.Ltmp543:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp544:
# %bb.54:
	move	$s2, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 96
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 92
	beqz	$a0, .LBB2_90
# %bb.55:
	ld.d	$a4, $s1, 24
.Ltmp545:
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp546:
# %bb.56:
	bne	$s2, $a0, .LBB2_92
# %bb.57:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit170
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB2_58:
.Ltmp588:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp589:
# %bb.59:                               # %.noexc113
.LBB2_60:
.Ltmp585:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp586:
# %bb.61:                               # %.noexc116
.LBB2_62:
.Ltmp511:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp512:
	b	.LBB2_93
.LBB2_63:
.Ltmp582:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp583:
# %bb.64:                               # %.noexc120
.LBB2_65:
.Ltmp579:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp580:
# %bb.66:                               # %.noexc124
.LBB2_67:
.Ltmp517:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp518:
	b	.LBB2_93
.LBB2_68:
.Ltmp576:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp577:
# %bb.69:                               # %.noexc128
.LBB2_70:
.Ltmp573:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp574:
# %bb.71:                               # %.noexc132
.LBB2_72:
.Ltmp523:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp524:
	b	.LBB2_93
.LBB2_73:
.Ltmp570:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp571:
# %bb.74:                               # %.noexc136
.LBB2_75:
.Ltmp567:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp568:
# %bb.76:                               # %.noexc140
.LBB2_77:
.Ltmp529:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp530:
	b	.LBB2_93
.LBB2_78:
.Ltmp564:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp565:
# %bb.79:                               # %.noexc144
.LBB2_80:
.Ltmp561:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp562:
# %bb.81:                               # %.noexc148
.LBB2_82:
.Ltmp535:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp536:
	b	.LBB2_93
.LBB2_83:
.Ltmp558:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp559:
# %bb.84:                               # %.noexc152
.LBB2_85:
.Ltmp555:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp556:
# %bb.86:                               # %.noexc156
.LBB2_87:
.Ltmp541:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp542:
	b	.LBB2_93
.LBB2_88:
.Ltmp552:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp553:
# %bb.89:                               # %.noexc160
.LBB2_90:
.Ltmp549:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp550:
# %bb.91:                               # %.noexc164
.LBB2_92:
.Ltmp547:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp548:
.LBB2_93:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_94:
.Ltmp500:
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_95:
.Ltmp554:
	b	.LBB2_111
.LBB2_96:
.Ltmp560:
	b	.LBB2_111
.LBB2_97:
.Ltmp566:
	b	.LBB2_111
.LBB2_98:
.Ltmp572:
	b	.LBB2_111
.LBB2_99:
.Ltmp578:
	b	.LBB2_111
.LBB2_100:
.Ltmp584:
	b	.LBB2_111
.LBB2_101:
.Ltmp590:
	b	.LBB2_111
.LBB2_102:
.Ltmp551:
	b	.LBB2_111
.LBB2_103:
.Ltmp557:
	b	.LBB2_111
.LBB2_104:
.Ltmp563:
	b	.LBB2_111
.LBB2_105:
.Ltmp569:
	b	.LBB2_111
.LBB2_106:
.Ltmp575:
	b	.LBB2_111
.LBB2_107:
.Ltmp581:
	b	.LBB2_111
.LBB2_108:
.Ltmp587:
	b	.LBB2_111
.LBB2_109:                              # %.loopexit
.Ltmp506:
	b	.LBB2_111
.LBB2_110:                              # %.loopexit.split-lp
.Ltmp503:
.LBB2_111:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit173
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc, .Lfunc_end2-_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp498-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp498
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp498-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp499-.Ltmp498              #   Call between .Ltmp498 and .Ltmp499
	.uleb128 .Ltmp500-.Lfunc_begin2         #     jumps to .Ltmp500
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp501-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp502-.Ltmp501              #   Call between .Ltmp501 and .Ltmp502
	.uleb128 .Ltmp503-.Lfunc_begin2         #     jumps to .Ltmp503
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp504-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp505-.Ltmp504              #   Call between .Ltmp504 and .Ltmp505
	.uleb128 .Ltmp506-.Lfunc_begin2         #     jumps to .Ltmp506
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp508-.Ltmp507              #   Call between .Ltmp507 and .Ltmp508
	.uleb128 .Ltmp590-.Lfunc_begin2         #     jumps to .Ltmp590
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp509-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp510-.Ltmp509              #   Call between .Ltmp509 and .Ltmp510
	.uleb128 .Ltmp587-.Lfunc_begin2         #     jumps to .Ltmp587
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp513-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp514-.Ltmp513              #   Call between .Ltmp513 and .Ltmp514
	.uleb128 .Ltmp584-.Lfunc_begin2         #     jumps to .Ltmp584
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp515-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp516-.Ltmp515              #   Call between .Ltmp515 and .Ltmp516
	.uleb128 .Ltmp581-.Lfunc_begin2         #     jumps to .Ltmp581
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp519-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp520-.Ltmp519              #   Call between .Ltmp519 and .Ltmp520
	.uleb128 .Ltmp578-.Lfunc_begin2         #     jumps to .Ltmp578
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp521-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp522-.Ltmp521              #   Call between .Ltmp521 and .Ltmp522
	.uleb128 .Ltmp575-.Lfunc_begin2         #     jumps to .Ltmp575
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp525-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp526-.Ltmp525              #   Call between .Ltmp525 and .Ltmp526
	.uleb128 .Ltmp572-.Lfunc_begin2         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp527-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp528-.Ltmp527              #   Call between .Ltmp527 and .Ltmp528
	.uleb128 .Ltmp569-.Lfunc_begin2         #     jumps to .Ltmp569
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp531-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp532-.Ltmp531              #   Call between .Ltmp531 and .Ltmp532
	.uleb128 .Ltmp566-.Lfunc_begin2         #     jumps to .Ltmp566
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp533-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp534-.Ltmp533              #   Call between .Ltmp533 and .Ltmp534
	.uleb128 .Ltmp563-.Lfunc_begin2         #     jumps to .Ltmp563
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp537-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Ltmp538-.Ltmp537              #   Call between .Ltmp537 and .Ltmp538
	.uleb128 .Ltmp560-.Lfunc_begin2         #     jumps to .Ltmp560
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp539-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp540-.Ltmp539              #   Call between .Ltmp539 and .Ltmp540
	.uleb128 .Ltmp557-.Lfunc_begin2         #     jumps to .Ltmp557
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp544-.Ltmp543              #   Call between .Ltmp543 and .Ltmp544
	.uleb128 .Ltmp554-.Lfunc_begin2         #     jumps to .Ltmp554
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp545-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp546-.Ltmp545              #   Call between .Ltmp545 and .Ltmp546
	.uleb128 .Ltmp551-.Lfunc_begin2         #     jumps to .Ltmp551
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp546-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp588-.Ltmp546              #   Call between .Ltmp546 and .Ltmp588
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp589-.Ltmp588              #   Call between .Ltmp588 and .Ltmp589
	.uleb128 .Ltmp590-.Lfunc_begin2         #     jumps to .Ltmp590
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp512-.Ltmp585              #   Call between .Ltmp585 and .Ltmp512
	.uleb128 .Ltmp587-.Lfunc_begin2         #     jumps to .Ltmp587
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp582-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp583-.Ltmp582              #   Call between .Ltmp582 and .Ltmp583
	.uleb128 .Ltmp584-.Lfunc_begin2         #     jumps to .Ltmp584
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp579-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp518-.Ltmp579              #   Call between .Ltmp579 and .Ltmp518
	.uleb128 .Ltmp581-.Lfunc_begin2         #     jumps to .Ltmp581
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp576-.Lfunc_begin2         # >> Call Site 24 <<
	.uleb128 .Ltmp577-.Ltmp576              #   Call between .Ltmp576 and .Ltmp577
	.uleb128 .Ltmp578-.Lfunc_begin2         #     jumps to .Ltmp578
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp573-.Lfunc_begin2         # >> Call Site 25 <<
	.uleb128 .Ltmp524-.Ltmp573              #   Call between .Ltmp573 and .Ltmp524
	.uleb128 .Ltmp575-.Lfunc_begin2         #     jumps to .Ltmp575
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp570-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp571-.Ltmp570              #   Call between .Ltmp570 and .Ltmp571
	.uleb128 .Ltmp572-.Lfunc_begin2         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp567-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp530-.Ltmp567              #   Call between .Ltmp567 and .Ltmp530
	.uleb128 .Ltmp569-.Lfunc_begin2         #     jumps to .Ltmp569
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp564-.Lfunc_begin2         # >> Call Site 28 <<
	.uleb128 .Ltmp565-.Ltmp564              #   Call between .Ltmp564 and .Ltmp565
	.uleb128 .Ltmp566-.Lfunc_begin2         #     jumps to .Ltmp566
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp561-.Lfunc_begin2         # >> Call Site 29 <<
	.uleb128 .Ltmp536-.Ltmp561              #   Call between .Ltmp561 and .Ltmp536
	.uleb128 .Ltmp563-.Lfunc_begin2         #     jumps to .Ltmp563
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp558-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Ltmp559-.Ltmp558              #   Call between .Ltmp558 and .Ltmp559
	.uleb128 .Ltmp560-.Lfunc_begin2         #     jumps to .Ltmp560
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp555-.Lfunc_begin2         # >> Call Site 31 <<
	.uleb128 .Ltmp542-.Ltmp555              #   Call between .Ltmp555 and .Ltmp542
	.uleb128 .Ltmp557-.Lfunc_begin2         #     jumps to .Ltmp557
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp552-.Lfunc_begin2         # >> Call Site 32 <<
	.uleb128 .Ltmp553-.Ltmp552              #   Call between .Ltmp552 and .Ltmp553
	.uleb128 .Ltmp554-.Lfunc_begin2         #     jumps to .Ltmp554
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin2         # >> Call Site 33 <<
	.uleb128 .Ltmp548-.Ltmp549              #   Call between .Ltmp549 and .Ltmp548
	.uleb128 .Ltmp551-.Lfunc_begin2         #     jumps to .Ltmp551
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp548-.Lfunc_begin2         # >> Call Site 34 <<
	.uleb128 .Lfunc_end2-.Ltmp548           #   Call between .Ltmp548 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc
.LCPI3_0:
	.dword	-32768                          # 0xffffffffffff8000
	.dword	32767                           # 0x7fff
	.text
	.p2align	5
	.type	_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc,@function
_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc: # @_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB3_3
.LBB3_2:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB3_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2000
	ori	$s4, $zero, 2000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp591:
	ori	$a0, $zero, 2000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp592:
# %bb.4:
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_0)
	move	$s5, $zero
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
.Ltmp594:
	addi.d	$a0, $sp, 96
	addi.d	$a2, $sp, 96
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp595:
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB3_5 Depth=1
	stx.h	$a0, $fp, $s5
	addi.d	$s5, $s5, 2
	bne	$s5, $s4, .LBB3_5
# %bb.7:
	move	$s4, $zero
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	ori	$s5, $zero, 2000
	.p2align	4, , 16
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
.Ltmp597:
	addi.d	$a0, $sp, 96
	addi.d	$a2, $sp, 96
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp598:
# %bb.9:                                # %.noexc111
                                        #   in Loop: Header=BB3_8 Depth=1
	stx.h	$a0, $s0, $s4
	addi.d	$s4, $s4, 2
	bne	$s4, $s5, .LBB3_8
# %bb.10:
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 118
	beqz	$a0, .LBB3_46
# %bb.11:
	ld.d	$a4, $s2, 24
.Ltmp600:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp601:
# %bb.12:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 118
	beqz	$a0, .LBB3_48
# %bb.13:
	ld.d	$a4, $s1, 24
.Ltmp602:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp603:
# %bb.14:
	bne	$s3, $a0, .LBB3_50
# %bb.15:                               # %vector.body
	lu12i.w	$a0, 7
	ori	$s4, $a0, 4095
	xvreplgr2vr.h	$xr1, $s4
	xvst	$xr1, $fp, 0
	xvst	$xr1, $fp, 32
	lu12i.w	$a0, 8
	xvreplgr2vr.h	$xr0, $a0
	xvst	$xr0, $s0, 0
	xvst	$xr0, $s0, 32
	xvst	$xr1, $fp, 64
	xvst	$xr1, $fp, 96
	xvst	$xr0, $s0, 64
	xvst	$xr0, $s0, 96
	xvst	$xr1, $fp, 128
	xvst	$xr1, $fp, 160
	xvst	$xr0, $s0, 128
	xvst	$xr0, $s0, 160
	xvst	$xr1, $fp, 192
	xvst	$xr1, $fp, 224
	xvst	$xr0, $s0, 192
	xvst	$xr0, $s0, 224
	xvst	$xr1, $fp, 256
	xvst	$xr1, $fp, 288
	xvst	$xr0, $s0, 256
	xvst	$xr0, $s0, 288
	xvst	$xr1, $fp, 320
	xvst	$xr1, $fp, 352
	xvst	$xr0, $s0, 320
	xvst	$xr0, $s0, 352
	xvst	$xr1, $fp, 384
	xvst	$xr1, $fp, 416
	xvst	$xr0, $s0, 384
	xvst	$xr0, $s0, 416
	xvst	$xr1, $fp, 448
	xvst	$xr1, $fp, 480
	xvst	$xr0, $s0, 448
	xvst	$xr0, $s0, 480
	xvst	$xr1, $fp, 512
	xvst	$xr1, $fp, 544
	xvst	$xr0, $s0, 512
	xvst	$xr0, $s0, 544
	xvst	$xr1, $fp, 576
	xvst	$xr1, $fp, 608
	xvst	$xr0, $s0, 576
	xvst	$xr0, $s0, 608
	xvst	$xr1, $fp, 640
	xvst	$xr1, $fp, 672
	xvst	$xr0, $s0, 640
	xvst	$xr0, $s0, 672
	xvst	$xr1, $fp, 704
	xvst	$xr1, $fp, 736
	xvst	$xr0, $s0, 704
	xvst	$xr0, $s0, 736
	xvst	$xr1, $fp, 768
	xvst	$xr1, $fp, 800
	xvst	$xr0, $s0, 768
	xvst	$xr0, $s0, 800
	xvst	$xr1, $fp, 832
	xvst	$xr1, $fp, 864
	xvst	$xr0, $s0, 832
	xvst	$xr0, $s0, 864
	xvst	$xr1, $fp, 896
	xvst	$xr1, $fp, 928
	xvst	$xr0, $s0, 896
	xvst	$xr0, $s0, 928
	xvst	$xr1, $fp, 960
	xvst	$xr1, $fp, 992
	xvst	$xr0, $s0, 960
	xvst	$xr0, $s0, 992
	xvst	$xr1, $fp, 1024
	xvst	$xr1, $fp, 1056
	xvst	$xr0, $s0, 1024
	xvst	$xr0, $s0, 1056
	xvst	$xr1, $fp, 1088
	xvst	$xr1, $fp, 1120
	xvst	$xr0, $s0, 1088
	xvst	$xr0, $s0, 1120
	xvst	$xr1, $fp, 1152
	xvst	$xr1, $fp, 1184
	xvst	$xr0, $s0, 1152
	xvst	$xr0, $s0, 1184
	xvst	$xr1, $fp, 1216
	xvst	$xr1, $fp, 1248
	xvst	$xr0, $s0, 1216
	xvst	$xr0, $s0, 1248
	xvst	$xr1, $fp, 1280
	xvst	$xr1, $fp, 1312
	xvst	$xr0, $s0, 1280
	xvst	$xr0, $s0, 1312
	xvst	$xr1, $fp, 1344
	xvst	$xr1, $fp, 1376
	xvst	$xr0, $s0, 1344
	xvst	$xr0, $s0, 1376
	xvst	$xr1, $fp, 1408
	xvst	$xr1, $fp, 1440
	xvst	$xr0, $s0, 1408
	xvst	$xr0, $s0, 1440
	xvst	$xr1, $fp, 1472
	xvst	$xr1, $fp, 1504
	xvst	$xr0, $s0, 1472
	xvst	$xr0, $s0, 1504
	xvst	$xr1, $fp, 1536
	xvst	$xr1, $fp, 1568
	xvst	$xr0, $s0, 1536
	xvst	$xr0, $s0, 1568
	xvst	$xr1, $fp, 1600
	xvst	$xr1, $fp, 1632
	xvst	$xr0, $s0, 1600
	xvst	$xr0, $s0, 1632
	xvst	$xr1, $fp, 1664
	xvst	$xr1, $fp, 1696
	xvst	$xr0, $s0, 1664
	xvst	$xr0, $s0, 1696
	xvst	$xr1, $fp, 1728
	xvst	$xr1, $fp, 1760
	xvst	$xr0, $s0, 1728
	xvst	$xr0, $s0, 1760
	xvst	$xr1, $fp, 1792
	xvst	$xr1, $fp, 1824
	xvst	$xr0, $s0, 1792
	xvst	$xr0, $s0, 1824
	xvst	$xr1, $fp, 1856
	xvst	$xr1, $fp, 1888
	xvst	$xr0, $s0, 1856
	xvst	$xr0, $s0, 1888
	xvst	$xr1, $fp, 1920
	xvst	$xr1, $sp, 16                   # 32-byte Folded Spill
	xvst	$xr1, $fp, 1952
	xvst	$xr0, $s0, 1920
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr0, $s0, 1952
	vreplgr2vr.h	$vr1, $s4
	vreplgr2vr.h	$vr0, $a0
	ori	$a0, $zero, 1000
	st.h	$a0, $sp, 118
	ld.d	$a0, $s2, 16
	vst	$vr1, $sp, 0                    # 16-byte Folded Spill
	vst	$vr1, $fp, 1984
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vst	$vr0, $s0, 1984
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	beqz	$a0, .LBB3_51
# %bb.16:
	ld.d	$a4, $s2, 24
.Ltmp606:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp607:
# %bb.17:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 118
	beqz	$a0, .LBB3_53
# %bb.18:
	ld.d	$a4, $s1, 24
.Ltmp608:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp609:
# %bb.19:
	bne	$s3, $a0, .LBB3_55
# %bb.20:                               # %vector.body254
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $fp, 0
	xvst	$xr0, $fp, 32
	xvld	$xr1, $sp, 16                   # 32-byte Folded Reload
	xvst	$xr1, $s0, 0
	xvst	$xr1, $s0, 32
	xvst	$xr0, $fp, 64
	xvst	$xr0, $fp, 96
	xvst	$xr1, $s0, 64
	xvst	$xr1, $s0, 96
	xvst	$xr0, $fp, 128
	xvst	$xr0, $fp, 160
	xvst	$xr1, $s0, 128
	xvst	$xr1, $s0, 160
	xvst	$xr0, $fp, 192
	xvst	$xr0, $fp, 224
	xvst	$xr1, $s0, 192
	xvst	$xr1, $s0, 224
	xvst	$xr0, $fp, 256
	xvst	$xr0, $fp, 288
	xvst	$xr1, $s0, 256
	xvst	$xr1, $s0, 288
	xvst	$xr0, $fp, 320
	xvst	$xr0, $fp, 352
	xvst	$xr1, $s0, 320
	xvst	$xr1, $s0, 352
	xvst	$xr0, $fp, 384
	xvst	$xr0, $fp, 416
	xvst	$xr1, $s0, 384
	xvst	$xr1, $s0, 416
	xvst	$xr0, $fp, 448
	xvst	$xr0, $fp, 480
	xvst	$xr1, $s0, 448
	xvst	$xr1, $s0, 480
	xvst	$xr0, $fp, 512
	xvst	$xr0, $fp, 544
	xvst	$xr1, $s0, 512
	xvst	$xr1, $s0, 544
	xvst	$xr0, $fp, 576
	xvst	$xr0, $fp, 608
	xvst	$xr1, $s0, 576
	xvst	$xr1, $s0, 608
	xvst	$xr0, $fp, 640
	xvst	$xr0, $fp, 672
	xvst	$xr1, $s0, 640
	xvst	$xr1, $s0, 672
	xvst	$xr0, $fp, 704
	xvst	$xr0, $fp, 736
	xvst	$xr1, $s0, 704
	xvst	$xr1, $s0, 736
	xvst	$xr0, $fp, 768
	xvst	$xr0, $fp, 800
	xvst	$xr1, $s0, 768
	xvst	$xr1, $s0, 800
	xvst	$xr0, $fp, 832
	xvst	$xr0, $fp, 864
	xvst	$xr1, $s0, 832
	xvst	$xr1, $s0, 864
	xvst	$xr0, $fp, 896
	xvst	$xr0, $fp, 928
	xvst	$xr1, $s0, 896
	xvst	$xr1, $s0, 928
	xvst	$xr0, $fp, 960
	xvst	$xr0, $fp, 992
	xvst	$xr1, $s0, 960
	xvst	$xr1, $s0, 992
	xvst	$xr0, $fp, 1024
	xvst	$xr0, $fp, 1056
	xvst	$xr1, $s0, 1024
	xvst	$xr1, $s0, 1056
	xvst	$xr0, $fp, 1088
	xvst	$xr0, $fp, 1120
	xvst	$xr1, $s0, 1088
	xvst	$xr1, $s0, 1120
	xvst	$xr0, $fp, 1152
	xvst	$xr0, $fp, 1184
	xvst	$xr1, $s0, 1152
	xvst	$xr1, $s0, 1184
	xvst	$xr0, $fp, 1216
	xvst	$xr0, $fp, 1248
	xvst	$xr1, $s0, 1216
	xvst	$xr1, $s0, 1248
	xvst	$xr0, $fp, 1280
	xvst	$xr0, $fp, 1312
	xvst	$xr1, $s0, 1280
	xvst	$xr1, $s0, 1312
	xvst	$xr0, $fp, 1344
	xvst	$xr0, $fp, 1376
	xvst	$xr1, $s0, 1344
	xvst	$xr1, $s0, 1376
	xvst	$xr0, $fp, 1408
	xvst	$xr0, $fp, 1440
	xvst	$xr1, $s0, 1408
	xvst	$xr1, $s0, 1440
	xvst	$xr0, $fp, 1472
	xvst	$xr0, $fp, 1504
	xvst	$xr1, $s0, 1472
	xvst	$xr1, $s0, 1504
	xvst	$xr0, $fp, 1536
	xvst	$xr0, $fp, 1568
	xvst	$xr1, $s0, 1536
	xvst	$xr1, $s0, 1568
	xvst	$xr0, $fp, 1600
	xvst	$xr0, $fp, 1632
	xvst	$xr1, $s0, 1600
	xvst	$xr1, $s0, 1632
	xvst	$xr0, $fp, 1664
	xvst	$xr0, $fp, 1696
	xvst	$xr1, $s0, 1664
	xvst	$xr1, $s0, 1696
	xvst	$xr0, $fp, 1728
	xvst	$xr0, $fp, 1760
	xvst	$xr1, $s0, 1728
	xvst	$xr1, $s0, 1760
	xvst	$xr0, $fp, 1792
	xvst	$xr0, $fp, 1824
	xvst	$xr1, $s0, 1792
	xvst	$xr1, $s0, 1824
	xvst	$xr0, $fp, 1856
	xvst	$xr0, $fp, 1888
	xvst	$xr1, $s0, 1856
	xvst	$xr1, $s0, 1888
	xvst	$xr0, $fp, 1920
	xvst	$xr0, $fp, 1952
	xvst	$xr1, $s0, 1920
	xvst	$xr1, $s0, 1952
	ori	$a0, $zero, 1000
	st.h	$a0, $sp, 118
	ld.d	$a0, $s2, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $fp, 1984
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $s0, 1984
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	beqz	$a0, .LBB3_56
# %bb.21:
	ld.d	$a4, $s2, 24
.Ltmp612:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp613:
# %bb.22:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 118
	beqz	$a0, .LBB3_58
# %bb.23:
	ld.d	$a4, $s1, 24
.Ltmp614:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp615:
# %bb.24:
	bne	$s3, $a0, .LBB3_60
# %bb.25:                               # %vector.body271
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $s0, 0
	xvst	$xr0, $s0, 32
	xvst	$xr0, $fp, 0
	xvst	$xr0, $fp, 32
	xvst	$xr0, $s0, 64
	xvst	$xr0, $s0, 96
	xvst	$xr0, $fp, 64
	xvst	$xr0, $fp, 96
	xvst	$xr0, $s0, 128
	xvst	$xr0, $s0, 160
	xvst	$xr0, $fp, 128
	xvst	$xr0, $fp, 160
	xvst	$xr0, $s0, 192
	xvst	$xr0, $s0, 224
	xvst	$xr0, $fp, 192
	xvst	$xr0, $fp, 224
	xvst	$xr0, $s0, 256
	xvst	$xr0, $s0, 288
	xvst	$xr0, $fp, 256
	xvst	$xr0, $fp, 288
	xvst	$xr0, $s0, 320
	xvst	$xr0, $s0, 352
	xvst	$xr0, $fp, 320
	xvst	$xr0, $fp, 352
	xvst	$xr0, $s0, 384
	xvst	$xr0, $s0, 416
	xvst	$xr0, $fp, 384
	xvst	$xr0, $fp, 416
	xvst	$xr0, $s0, 448
	xvst	$xr0, $s0, 480
	xvst	$xr0, $fp, 448
	xvst	$xr0, $fp, 480
	xvst	$xr0, $s0, 512
	xvst	$xr0, $s0, 544
	xvst	$xr0, $fp, 512
	xvst	$xr0, $fp, 544
	xvst	$xr0, $s0, 576
	xvst	$xr0, $s0, 608
	xvst	$xr0, $fp, 576
	xvst	$xr0, $fp, 608
	xvst	$xr0, $s0, 640
	xvst	$xr0, $s0, 672
	xvst	$xr0, $fp, 640
	xvst	$xr0, $fp, 672
	xvst	$xr0, $s0, 704
	xvst	$xr0, $s0, 736
	xvst	$xr0, $fp, 704
	xvst	$xr0, $fp, 736
	xvst	$xr0, $s0, 768
	xvst	$xr0, $s0, 800
	xvst	$xr0, $fp, 768
	xvst	$xr0, $fp, 800
	xvst	$xr0, $s0, 832
	xvst	$xr0, $s0, 864
	xvst	$xr0, $fp, 832
	xvst	$xr0, $fp, 864
	xvst	$xr0, $s0, 896
	xvst	$xr0, $s0, 928
	xvst	$xr0, $fp, 896
	xvst	$xr0, $fp, 928
	xvst	$xr0, $s0, 960
	xvst	$xr0, $s0, 992
	xvst	$xr0, $fp, 960
	xvst	$xr0, $fp, 992
	xvst	$xr0, $s0, 1024
	xvst	$xr0, $s0, 1056
	xvst	$xr0, $fp, 1024
	xvst	$xr0, $fp, 1056
	xvst	$xr0, $s0, 1088
	xvst	$xr0, $s0, 1120
	xvst	$xr0, $fp, 1088
	xvst	$xr0, $fp, 1120
	xvst	$xr0, $s0, 1152
	xvst	$xr0, $s0, 1184
	xvst	$xr0, $fp, 1152
	xvst	$xr0, $fp, 1184
	xvst	$xr0, $s0, 1216
	xvst	$xr0, $s0, 1248
	xvst	$xr0, $fp, 1216
	xvst	$xr0, $fp, 1248
	xvst	$xr0, $s0, 1280
	xvst	$xr0, $s0, 1312
	xvst	$xr0, $fp, 1280
	xvst	$xr0, $fp, 1312
	xvst	$xr0, $s0, 1344
	xvst	$xr0, $s0, 1376
	xvst	$xr0, $fp, 1344
	xvst	$xr0, $fp, 1376
	xvst	$xr0, $s0, 1408
	xvst	$xr0, $s0, 1440
	xvst	$xr0, $fp, 1408
	xvst	$xr0, $fp, 1440
	xvst	$xr0, $s0, 1472
	xvst	$xr0, $s0, 1504
	xvst	$xr0, $fp, 1472
	xvst	$xr0, $fp, 1504
	xvst	$xr0, $s0, 1536
	xvst	$xr0, $s0, 1568
	xvst	$xr0, $fp, 1536
	xvst	$xr0, $fp, 1568
	xvst	$xr0, $s0, 1600
	xvst	$xr0, $s0, 1632
	xvst	$xr0, $fp, 1600
	xvst	$xr0, $fp, 1632
	xvst	$xr0, $s0, 1664
	xvst	$xr0, $s0, 1696
	xvst	$xr0, $fp, 1664
	xvst	$xr0, $fp, 1696
	xvst	$xr0, $s0, 1728
	xvst	$xr0, $s0, 1760
	xvst	$xr0, $fp, 1728
	xvst	$xr0, $fp, 1760
	xvst	$xr0, $s0, 1792
	xvst	$xr0, $s0, 1824
	xvst	$xr0, $fp, 1792
	xvst	$xr0, $fp, 1824
	xvst	$xr0, $s0, 1856
	xvst	$xr0, $s0, 1888
	xvst	$xr0, $fp, 1856
	xvst	$xr0, $fp, 1888
	xvst	$xr0, $s0, 1920
	xvst	$xr0, $s0, 1952
	xvst	$xr0, $fp, 1920
	xvst	$xr0, $fp, 1952
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s0, 1984
	ori	$a0, $zero, 1000
	st.h	$a0, $sp, 118
	ld.d	$a0, $s2, 16
	vst	$vr0, $fp, 1984
	st.h	$s4, $fp, 1996
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	beqz	$a0, .LBB3_61
# %bb.26:
	ld.d	$a4, $s2, 24
.Ltmp618:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp619:
# %bb.27:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 118
	beqz	$a0, .LBB3_63
# %bb.28:
	ld.d	$a4, $s1, 24
.Ltmp620:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp621:
# %bb.29:
	bne	$s3, $a0, .LBB3_65
# %bb.30:                               # %vector.body288
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $s0, 0
	xvst	$xr0, $s0, 32
	xvst	$xr0, $fp, 0
	xvst	$xr0, $fp, 32
	xvst	$xr0, $s0, 64
	xvst	$xr0, $s0, 96
	xvst	$xr0, $fp, 64
	xvst	$xr0, $fp, 96
	xvst	$xr0, $s0, 128
	xvst	$xr0, $s0, 160
	xvst	$xr0, $fp, 128
	xvst	$xr0, $fp, 160
	xvst	$xr0, $s0, 192
	xvst	$xr0, $s0, 224
	xvst	$xr0, $fp, 192
	xvst	$xr0, $fp, 224
	xvst	$xr0, $s0, 256
	xvst	$xr0, $s0, 288
	xvst	$xr0, $fp, 256
	xvst	$xr0, $fp, 288
	xvst	$xr0, $s0, 320
	xvst	$xr0, $s0, 352
	xvst	$xr0, $fp, 320
	xvst	$xr0, $fp, 352
	xvst	$xr0, $s0, 384
	xvst	$xr0, $s0, 416
	xvst	$xr0, $fp, 384
	xvst	$xr0, $fp, 416
	xvst	$xr0, $s0, 448
	xvst	$xr0, $s0, 480
	xvst	$xr0, $fp, 448
	xvst	$xr0, $fp, 480
	xvst	$xr0, $s0, 512
	xvst	$xr0, $s0, 544
	xvst	$xr0, $fp, 512
	xvst	$xr0, $fp, 544
	xvst	$xr0, $s0, 576
	xvst	$xr0, $s0, 608
	xvst	$xr0, $fp, 576
	xvst	$xr0, $fp, 608
	xvst	$xr0, $s0, 640
	xvst	$xr0, $s0, 672
	xvst	$xr0, $fp, 640
	xvst	$xr0, $fp, 672
	xvst	$xr0, $s0, 704
	xvst	$xr0, $s0, 736
	xvst	$xr0, $fp, 704
	xvst	$xr0, $fp, 736
	xvst	$xr0, $s0, 768
	xvst	$xr0, $s0, 800
	xvst	$xr0, $fp, 768
	xvst	$xr0, $fp, 800
	xvst	$xr0, $s0, 832
	xvst	$xr0, $s0, 864
	xvst	$xr0, $fp, 832
	xvst	$xr0, $fp, 864
	xvst	$xr0, $s0, 896
	xvst	$xr0, $s0, 928
	xvst	$xr0, $fp, 896
	xvst	$xr0, $fp, 928
	xvst	$xr0, $s0, 960
	xvst	$xr0, $s0, 992
	xvst	$xr0, $fp, 960
	xvst	$xr0, $fp, 992
	xvst	$xr0, $s0, 1024
	xvst	$xr0, $s0, 1056
	xvst	$xr0, $fp, 1024
	xvst	$xr0, $fp, 1056
	xvst	$xr0, $s0, 1088
	xvst	$xr0, $s0, 1120
	xvst	$xr0, $fp, 1088
	xvst	$xr0, $fp, 1120
	xvst	$xr0, $s0, 1152
	xvst	$xr0, $s0, 1184
	xvst	$xr0, $fp, 1152
	xvst	$xr0, $fp, 1184
	xvst	$xr0, $s0, 1216
	xvst	$xr0, $s0, 1248
	xvst	$xr0, $fp, 1216
	xvst	$xr0, $fp, 1248
	xvst	$xr0, $s0, 1280
	xvst	$xr0, $s0, 1312
	xvst	$xr0, $fp, 1280
	xvst	$xr0, $fp, 1312
	xvst	$xr0, $s0, 1344
	xvst	$xr0, $s0, 1376
	xvst	$xr0, $fp, 1344
	xvst	$xr0, $fp, 1376
	xvst	$xr0, $s0, 1408
	xvst	$xr0, $s0, 1440
	xvst	$xr0, $fp, 1408
	xvst	$xr0, $fp, 1440
	xvst	$xr0, $s0, 1472
	xvst	$xr0, $s0, 1504
	xvst	$xr0, $fp, 1472
	xvst	$xr0, $fp, 1504
	xvst	$xr0, $s0, 1536
	xvst	$xr0, $s0, 1568
	xvst	$xr0, $fp, 1536
	xvst	$xr0, $fp, 1568
	xvst	$xr0, $s0, 1600
	xvst	$xr0, $s0, 1632
	xvst	$xr0, $fp, 1600
	xvst	$xr0, $fp, 1632
	xvst	$xr0, $s0, 1664
	xvst	$xr0, $s0, 1696
	xvst	$xr0, $fp, 1664
	xvst	$xr0, $fp, 1696
	xvst	$xr0, $s0, 1728
	xvst	$xr0, $s0, 1760
	xvst	$xr0, $fp, 1728
	xvst	$xr0, $fp, 1760
	xvst	$xr0, $s0, 1792
	xvst	$xr0, $s0, 1824
	xvst	$xr0, $fp, 1792
	xvst	$xr0, $fp, 1824
	xvst	$xr0, $s0, 1856
	xvst	$xr0, $s0, 1888
	xvst	$xr0, $fp, 1856
	xvst	$xr0, $fp, 1888
	xvst	$xr0, $s0, 1920
	xvst	$xr0, $s0, 1952
	xvst	$xr0, $fp, 1920
	xvst	$xr0, $fp, 1952
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s0, 1984
	ori	$a0, $zero, 1000
	st.h	$a0, $sp, 118
	ld.d	$a0, $s2, 16
	vst	$vr0, $fp, 1984
	st.h	$s4, $fp, 0
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	beqz	$a0, .LBB3_66
# %bb.31:
	ld.d	$a4, $s2, 24
.Ltmp624:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp625:
# %bb.32:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 118
	beqz	$a0, .LBB3_68
# %bb.33:
	ld.d	$a4, $s1, 24
.Ltmp626:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp627:
# %bb.34:
	bne	$s3, $a0, .LBB3_70
# %bb.35:                               # %vector.body305
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $s0, 0
	xvst	$xr0, $s0, 32
	xvst	$xr0, $fp, 0
	xvst	$xr0, $fp, 32
	xvst	$xr0, $s0, 64
	xvst	$xr0, $s0, 96
	xvst	$xr0, $fp, 64
	xvst	$xr0, $fp, 96
	xvst	$xr0, $s0, 128
	xvst	$xr0, $s0, 160
	xvst	$xr0, $fp, 128
	xvst	$xr0, $fp, 160
	xvst	$xr0, $s0, 192
	xvst	$xr0, $s0, 224
	xvst	$xr0, $fp, 192
	xvst	$xr0, $fp, 224
	xvst	$xr0, $s0, 256
	xvst	$xr0, $s0, 288
	xvst	$xr0, $fp, 256
	xvst	$xr0, $fp, 288
	xvst	$xr0, $s0, 320
	xvst	$xr0, $s0, 352
	xvst	$xr0, $fp, 320
	xvst	$xr0, $fp, 352
	xvst	$xr0, $s0, 384
	xvst	$xr0, $s0, 416
	xvst	$xr0, $fp, 384
	xvst	$xr0, $fp, 416
	xvst	$xr0, $s0, 448
	xvst	$xr0, $s0, 480
	xvst	$xr0, $fp, 448
	xvst	$xr0, $fp, 480
	xvst	$xr0, $s0, 512
	xvst	$xr0, $s0, 544
	xvst	$xr0, $fp, 512
	xvst	$xr0, $fp, 544
	xvst	$xr0, $s0, 576
	xvst	$xr0, $s0, 608
	xvst	$xr0, $fp, 576
	xvst	$xr0, $fp, 608
	xvst	$xr0, $s0, 640
	xvst	$xr0, $s0, 672
	xvst	$xr0, $fp, 640
	xvst	$xr0, $fp, 672
	xvst	$xr0, $s0, 704
	xvst	$xr0, $s0, 736
	xvst	$xr0, $fp, 704
	xvst	$xr0, $fp, 736
	xvst	$xr0, $s0, 768
	xvst	$xr0, $s0, 800
	xvst	$xr0, $fp, 768
	xvst	$xr0, $fp, 800
	xvst	$xr0, $s0, 832
	xvst	$xr0, $s0, 864
	xvst	$xr0, $fp, 832
	xvst	$xr0, $fp, 864
	xvst	$xr0, $s0, 896
	xvst	$xr0, $s0, 928
	xvst	$xr0, $fp, 896
	xvst	$xr0, $fp, 928
	xvst	$xr0, $s0, 960
	xvst	$xr0, $s0, 992
	xvst	$xr0, $fp, 960
	xvst	$xr0, $fp, 992
	xvst	$xr0, $s0, 1024
	xvst	$xr0, $s0, 1056
	xvst	$xr0, $fp, 1024
	xvst	$xr0, $fp, 1056
	xvst	$xr0, $s0, 1088
	xvst	$xr0, $s0, 1120
	xvst	$xr0, $fp, 1088
	xvst	$xr0, $fp, 1120
	xvst	$xr0, $s0, 1152
	xvst	$xr0, $s0, 1184
	xvst	$xr0, $fp, 1152
	xvst	$xr0, $fp, 1184
	xvst	$xr0, $s0, 1216
	xvst	$xr0, $s0, 1248
	xvst	$xr0, $fp, 1216
	xvst	$xr0, $fp, 1248
	xvst	$xr0, $s0, 1280
	xvst	$xr0, $s0, 1312
	xvst	$xr0, $fp, 1280
	xvst	$xr0, $fp, 1312
	xvst	$xr0, $s0, 1344
	xvst	$xr0, $s0, 1376
	xvst	$xr0, $fp, 1344
	xvst	$xr0, $fp, 1376
	xvst	$xr0, $s0, 1408
	xvst	$xr0, $s0, 1440
	xvst	$xr0, $fp, 1408
	xvst	$xr0, $fp, 1440
	xvst	$xr0, $s0, 1472
	xvst	$xr0, $s0, 1504
	xvst	$xr0, $fp, 1472
	xvst	$xr0, $fp, 1504
	xvst	$xr0, $s0, 1536
	xvst	$xr0, $s0, 1568
	xvst	$xr0, $fp, 1536
	xvst	$xr0, $fp, 1568
	xvst	$xr0, $s0, 1600
	xvst	$xr0, $s0, 1632
	xvst	$xr0, $fp, 1600
	xvst	$xr0, $fp, 1632
	xvst	$xr0, $s0, 1664
	xvst	$xr0, $s0, 1696
	xvst	$xr0, $fp, 1664
	xvst	$xr0, $fp, 1696
	xvst	$xr0, $s0, 1728
	xvst	$xr0, $s0, 1760
	xvst	$xr0, $fp, 1728
	xvst	$xr0, $fp, 1760
	xvst	$xr0, $s0, 1792
	xvst	$xr0, $s0, 1824
	xvst	$xr0, $fp, 1792
	xvst	$xr0, $fp, 1824
	xvst	$xr0, $s0, 1856
	xvst	$xr0, $s0, 1888
	xvst	$xr0, $fp, 1856
	xvst	$xr0, $fp, 1888
	xvst	$xr0, $s0, 1920
	xvst	$xr0, $s0, 1952
	xvst	$xr0, $fp, 1920
	xvst	$xr0, $fp, 1952
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s0, 1984
	ori	$a0, $zero, 1000
	st.h	$a0, $sp, 118
	ld.d	$a0, $s2, 16
	vst	$vr0, $fp, 1984
	st.h	$s4, $fp, 1998
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	beqz	$a0, .LBB3_71
# %bb.36:
	ld.d	$a4, $s2, 24
.Ltmp630:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp631:
# %bb.37:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 118
	beqz	$a0, .LBB3_73
# %bb.38:
	ld.d	$a4, $s1, 24
.Ltmp632:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp633:
# %bb.39:
	bne	$s3, $a0, .LBB3_75
# %bb.40:                               # %vector.body322
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $s0, 0
	xvst	$xr0, $s0, 32
	xvst	$xr0, $fp, 0
	xvst	$xr0, $fp, 32
	xvst	$xr0, $s0, 64
	xvst	$xr0, $s0, 96
	xvst	$xr0, $fp, 64
	xvst	$xr0, $fp, 96
	xvst	$xr0, $s0, 128
	xvst	$xr0, $s0, 160
	xvst	$xr0, $fp, 128
	xvst	$xr0, $fp, 160
	xvst	$xr0, $s0, 192
	xvst	$xr0, $s0, 224
	xvst	$xr0, $fp, 192
	xvst	$xr0, $fp, 224
	xvst	$xr0, $s0, 256
	xvst	$xr0, $s0, 288
	xvst	$xr0, $fp, 256
	xvst	$xr0, $fp, 288
	xvst	$xr0, $s0, 320
	xvst	$xr0, $s0, 352
	xvst	$xr0, $fp, 320
	xvst	$xr0, $fp, 352
	xvst	$xr0, $s0, 384
	xvst	$xr0, $s0, 416
	xvst	$xr0, $fp, 384
	xvst	$xr0, $fp, 416
	xvst	$xr0, $s0, 448
	xvst	$xr0, $s0, 480
	xvst	$xr0, $fp, 448
	xvst	$xr0, $fp, 480
	xvst	$xr0, $s0, 512
	xvst	$xr0, $s0, 544
	xvst	$xr0, $fp, 512
	xvst	$xr0, $fp, 544
	xvst	$xr0, $s0, 576
	xvst	$xr0, $s0, 608
	xvst	$xr0, $fp, 576
	xvst	$xr0, $fp, 608
	xvst	$xr0, $s0, 640
	xvst	$xr0, $s0, 672
	xvst	$xr0, $fp, 640
	xvst	$xr0, $fp, 672
	xvst	$xr0, $s0, 704
	xvst	$xr0, $s0, 736
	xvst	$xr0, $fp, 704
	xvst	$xr0, $fp, 736
	xvst	$xr0, $s0, 768
	xvst	$xr0, $s0, 800
	xvst	$xr0, $fp, 768
	xvst	$xr0, $fp, 800
	xvst	$xr0, $s0, 832
	xvst	$xr0, $s0, 864
	xvst	$xr0, $fp, 832
	xvst	$xr0, $fp, 864
	xvst	$xr0, $s0, 896
	xvst	$xr0, $s0, 928
	xvst	$xr0, $fp, 896
	xvst	$xr0, $fp, 928
	xvst	$xr0, $s0, 960
	xvst	$xr0, $s0, 992
	xvst	$xr0, $fp, 960
	xvst	$xr0, $fp, 992
	xvst	$xr0, $s0, 1024
	xvst	$xr0, $s0, 1056
	xvst	$xr0, $fp, 1024
	xvst	$xr0, $fp, 1056
	xvst	$xr0, $s0, 1088
	xvst	$xr0, $s0, 1120
	xvst	$xr0, $fp, 1088
	xvst	$xr0, $fp, 1120
	xvst	$xr0, $s0, 1152
	xvst	$xr0, $s0, 1184
	xvst	$xr0, $fp, 1152
	xvst	$xr0, $fp, 1184
	xvst	$xr0, $s0, 1216
	xvst	$xr0, $s0, 1248
	xvst	$xr0, $fp, 1216
	xvst	$xr0, $fp, 1248
	xvst	$xr0, $s0, 1280
	xvst	$xr0, $s0, 1312
	xvst	$xr0, $fp, 1280
	xvst	$xr0, $fp, 1312
	xvst	$xr0, $s0, 1344
	xvst	$xr0, $s0, 1376
	xvst	$xr0, $fp, 1344
	xvst	$xr0, $fp, 1376
	xvst	$xr0, $s0, 1408
	xvst	$xr0, $s0, 1440
	xvst	$xr0, $fp, 1408
	xvst	$xr0, $fp, 1440
	xvst	$xr0, $s0, 1472
	xvst	$xr0, $s0, 1504
	xvst	$xr0, $fp, 1472
	xvst	$xr0, $fp, 1504
	xvst	$xr0, $s0, 1536
	xvst	$xr0, $s0, 1568
	xvst	$xr0, $fp, 1536
	xvst	$xr0, $fp, 1568
	xvst	$xr0, $s0, 1600
	xvst	$xr0, $s0, 1632
	xvst	$xr0, $fp, 1600
	xvst	$xr0, $fp, 1632
	xvst	$xr0, $s0, 1664
	xvst	$xr0, $s0, 1696
	xvst	$xr0, $fp, 1664
	xvst	$xr0, $fp, 1696
	xvst	$xr0, $s0, 1728
	xvst	$xr0, $s0, 1760
	xvst	$xr0, $fp, 1728
	xvst	$xr0, $fp, 1760
	xvst	$xr0, $s0, 1792
	xvst	$xr0, $s0, 1824
	xvst	$xr0, $fp, 1792
	xvst	$xr0, $fp, 1824
	xvst	$xr0, $s0, 1856
	xvst	$xr0, $s0, 1888
	xvst	$xr0, $fp, 1856
	xvst	$xr0, $fp, 1888
	xvst	$xr0, $s0, 1920
	xvst	$xr0, $s0, 1952
	xvst	$xr0, $fp, 1920
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vst	$vr1, $fp, 1984
	st.h	$s4, $fp, 1998
	st.h	$s4, $fp, 0
	ori	$a0, $zero, 1000
	st.h	$a0, $sp, 118
	ld.d	$a0, $s2, 16
	xvst	$xr0, $fp, 1952
	vst	$vr1, $s0, 1984
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	beqz	$a0, .LBB3_76
# %bb.41:
	ld.d	$a4, $s2, 24
.Ltmp636:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp637:
# %bb.42:
	move	$s2, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 96
	st.d	$s0, $sp, 120
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 118
	beqz	$a0, .LBB3_78
# %bb.43:
	ld.d	$a4, $s1, 24
.Ltmp638:
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 118
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp639:
# %bb.44:
	bne	$s2, $a0, .LBB3_80
# %bb.45:                               # %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit170
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB3_46:
.Ltmp681:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp682:
# %bb.47:                               # %.noexc113
.LBB3_48:
.Ltmp678:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp679:
# %bb.49:                               # %.noexc116
.LBB3_50:
.Ltmp604:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp605:
	b	.LBB3_81
.LBB3_51:
.Ltmp675:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp676:
# %bb.52:                               # %.noexc120
.LBB3_53:
.Ltmp672:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp673:
# %bb.54:                               # %.noexc124
.LBB3_55:
.Ltmp610:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp611:
	b	.LBB3_81
.LBB3_56:
.Ltmp669:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp670:
# %bb.57:                               # %.noexc128
.LBB3_58:
.Ltmp666:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp667:
# %bb.59:                               # %.noexc132
.LBB3_60:
.Ltmp616:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp617:
	b	.LBB3_81
.LBB3_61:
.Ltmp663:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp664:
# %bb.62:                               # %.noexc136
.LBB3_63:
.Ltmp660:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp661:
# %bb.64:                               # %.noexc140
.LBB3_65:
.Ltmp622:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp623:
	b	.LBB3_81
.LBB3_66:
.Ltmp657:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp658:
# %bb.67:                               # %.noexc144
.LBB3_68:
.Ltmp654:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp655:
# %bb.69:                               # %.noexc148
.LBB3_70:
.Ltmp628:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp629:
	b	.LBB3_81
.LBB3_71:
.Ltmp651:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp652:
# %bb.72:                               # %.noexc152
.LBB3_73:
.Ltmp648:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp649:
# %bb.74:                               # %.noexc156
.LBB3_75:
.Ltmp634:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp635:
	b	.LBB3_81
.LBB3_76:
.Ltmp645:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp646:
# %bb.77:                               # %.noexc160
.LBB3_78:
.Ltmp642:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp643:
# %bb.79:                               # %.noexc164
.LBB3_80:
.Ltmp640:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp641:
.LBB3_81:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_82:
.Ltmp593:
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_83:
.Ltmp647:
	b	.LBB3_99
.LBB3_84:
.Ltmp653:
	b	.LBB3_99
.LBB3_85:
.Ltmp659:
	b	.LBB3_99
.LBB3_86:
.Ltmp665:
	b	.LBB3_99
.LBB3_87:
.Ltmp671:
	b	.LBB3_99
.LBB3_88:
.Ltmp677:
	b	.LBB3_99
.LBB3_89:
.Ltmp683:
	b	.LBB3_99
.LBB3_90:
.Ltmp644:
	b	.LBB3_99
.LBB3_91:
.Ltmp650:
	b	.LBB3_99
.LBB3_92:
.Ltmp656:
	b	.LBB3_99
.LBB3_93:
.Ltmp662:
	b	.LBB3_99
.LBB3_94:
.Ltmp668:
	b	.LBB3_99
.LBB3_95:
.Ltmp674:
	b	.LBB3_99
.LBB3_96:
.Ltmp680:
	b	.LBB3_99
.LBB3_97:                               # %.loopexit
.Ltmp599:
	b	.LBB3_99
.LBB3_98:                               # %.loopexit.split-lp
.Ltmp596:
.LBB3_99:                               # %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit173
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc, .Lfunc_end3-_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp591-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp591
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp591-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp592-.Ltmp591              #   Call between .Ltmp591 and .Ltmp592
	.uleb128 .Ltmp593-.Lfunc_begin3         #     jumps to .Ltmp593
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp594-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp595-.Ltmp594              #   Call between .Ltmp594 and .Ltmp595
	.uleb128 .Ltmp596-.Lfunc_begin3         #     jumps to .Ltmp596
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp597-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp598-.Ltmp597              #   Call between .Ltmp597 and .Ltmp598
	.uleb128 .Ltmp599-.Lfunc_begin3         #     jumps to .Ltmp599
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp600-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp601-.Ltmp600              #   Call between .Ltmp600 and .Ltmp601
	.uleb128 .Ltmp683-.Lfunc_begin3         #     jumps to .Ltmp683
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp602-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp603-.Ltmp602              #   Call between .Ltmp602 and .Ltmp603
	.uleb128 .Ltmp680-.Lfunc_begin3         #     jumps to .Ltmp680
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp606-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp607-.Ltmp606              #   Call between .Ltmp606 and .Ltmp607
	.uleb128 .Ltmp677-.Lfunc_begin3         #     jumps to .Ltmp677
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp608-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp609-.Ltmp608              #   Call between .Ltmp608 and .Ltmp609
	.uleb128 .Ltmp674-.Lfunc_begin3         #     jumps to .Ltmp674
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp612-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp613-.Ltmp612              #   Call between .Ltmp612 and .Ltmp613
	.uleb128 .Ltmp671-.Lfunc_begin3         #     jumps to .Ltmp671
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp614-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp615-.Ltmp614              #   Call between .Ltmp614 and .Ltmp615
	.uleb128 .Ltmp668-.Lfunc_begin3         #     jumps to .Ltmp668
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp618-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp619-.Ltmp618              #   Call between .Ltmp618 and .Ltmp619
	.uleb128 .Ltmp665-.Lfunc_begin3         #     jumps to .Ltmp665
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp620-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp621-.Ltmp620              #   Call between .Ltmp620 and .Ltmp621
	.uleb128 .Ltmp662-.Lfunc_begin3         #     jumps to .Ltmp662
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp624-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp625-.Ltmp624              #   Call between .Ltmp624 and .Ltmp625
	.uleb128 .Ltmp659-.Lfunc_begin3         #     jumps to .Ltmp659
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp626-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp627-.Ltmp626              #   Call between .Ltmp626 and .Ltmp627
	.uleb128 .Ltmp656-.Lfunc_begin3         #     jumps to .Ltmp656
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp630-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp631-.Ltmp630              #   Call between .Ltmp630 and .Ltmp631
	.uleb128 .Ltmp653-.Lfunc_begin3         #     jumps to .Ltmp653
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp632-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp633-.Ltmp632              #   Call between .Ltmp632 and .Ltmp633
	.uleb128 .Ltmp650-.Lfunc_begin3         #     jumps to .Ltmp650
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp637-.Ltmp636              #   Call between .Ltmp636 and .Ltmp637
	.uleb128 .Ltmp647-.Lfunc_begin3         #     jumps to .Ltmp647
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp638-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp639-.Ltmp638              #   Call between .Ltmp638 and .Ltmp639
	.uleb128 .Ltmp644-.Lfunc_begin3         #     jumps to .Ltmp644
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp639-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp681-.Ltmp639              #   Call between .Ltmp639 and .Ltmp681
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp681-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp682-.Ltmp681              #   Call between .Ltmp681 and .Ltmp682
	.uleb128 .Ltmp683-.Lfunc_begin3         #     jumps to .Ltmp683
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp678-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp605-.Ltmp678              #   Call between .Ltmp678 and .Ltmp605
	.uleb128 .Ltmp680-.Lfunc_begin3         #     jumps to .Ltmp680
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp675-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp676-.Ltmp675              #   Call between .Ltmp675 and .Ltmp676
	.uleb128 .Ltmp677-.Lfunc_begin3         #     jumps to .Ltmp677
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp672-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Ltmp611-.Ltmp672              #   Call between .Ltmp672 and .Ltmp611
	.uleb128 .Ltmp674-.Lfunc_begin3         #     jumps to .Ltmp674
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp669-.Lfunc_begin3         # >> Call Site 24 <<
	.uleb128 .Ltmp670-.Ltmp669              #   Call between .Ltmp669 and .Ltmp670
	.uleb128 .Ltmp671-.Lfunc_begin3         #     jumps to .Ltmp671
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp666-.Lfunc_begin3         # >> Call Site 25 <<
	.uleb128 .Ltmp617-.Ltmp666              #   Call between .Ltmp666 and .Ltmp617
	.uleb128 .Ltmp668-.Lfunc_begin3         #     jumps to .Ltmp668
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp663-.Lfunc_begin3         # >> Call Site 26 <<
	.uleb128 .Ltmp664-.Ltmp663              #   Call between .Ltmp663 and .Ltmp664
	.uleb128 .Ltmp665-.Lfunc_begin3         #     jumps to .Ltmp665
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp660-.Lfunc_begin3         # >> Call Site 27 <<
	.uleb128 .Ltmp623-.Ltmp660              #   Call between .Ltmp660 and .Ltmp623
	.uleb128 .Ltmp662-.Lfunc_begin3         #     jumps to .Ltmp662
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp657-.Lfunc_begin3         # >> Call Site 28 <<
	.uleb128 .Ltmp658-.Ltmp657              #   Call between .Ltmp657 and .Ltmp658
	.uleb128 .Ltmp659-.Lfunc_begin3         #     jumps to .Ltmp659
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp654-.Lfunc_begin3         # >> Call Site 29 <<
	.uleb128 .Ltmp629-.Ltmp654              #   Call between .Ltmp654 and .Ltmp629
	.uleb128 .Ltmp656-.Lfunc_begin3         #     jumps to .Ltmp656
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp651-.Lfunc_begin3         # >> Call Site 30 <<
	.uleb128 .Ltmp652-.Ltmp651              #   Call between .Ltmp651 and .Ltmp652
	.uleb128 .Ltmp653-.Lfunc_begin3         #     jumps to .Ltmp653
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp648-.Lfunc_begin3         # >> Call Site 31 <<
	.uleb128 .Ltmp635-.Ltmp648              #   Call between .Ltmp648 and .Ltmp635
	.uleb128 .Ltmp650-.Lfunc_begin3         #     jumps to .Ltmp650
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp645-.Lfunc_begin3         # >> Call Site 32 <<
	.uleb128 .Ltmp646-.Ltmp645              #   Call between .Ltmp645 and .Ltmp646
	.uleb128 .Ltmp647-.Lfunc_begin3         #     jumps to .Ltmp647
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp642-.Lfunc_begin3         # >> Call Site 33 <<
	.uleb128 .Ltmp641-.Ltmp642              #   Call between .Ltmp642 and .Ltmp641
	.uleb128 .Ltmp644-.Lfunc_begin3         #     jumps to .Ltmp644
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp641-.Lfunc_begin3         # >> Call Site 34 <<
	.uleb128 .Lfunc_end3-.Ltmp641           #   Call between .Ltmp641 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
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
.Lfunc_end4:
	.size	__clang_call_terminate, .Lfunc_end4-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
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
	move	$fp, $a2
	ld.d	$a2, $a2, 8
	ld.d	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	move	$s0, $a1
	bltu	$a2, $s2, .LBB5_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB5_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB5_4
	.p2align	4, , 16
.LBB5_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB5_3
.LBB5_4:                                # %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB5_10
.LBB5_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB5_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB5_10
.LBB5_7:                                # %.preheader
	srli.d	$s3, $s2, 32
	.p2align	4, , 16
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	st.d	$zero, $sp, 8
	st.d	$s3, $sp, 16
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	add.d	$a0, $a0, $s4
	bltu	$s2, $a0, .LBB5_8
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=1
	sltu	$a1, $a0, $a1
	bnez	$a1, .LBB5_8
.LBB5_10:                               # %.loopexit
	ld.d	$a1, $fp, 0
	add.d	$a0, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end5:
	.size	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE, .Lfunc_end5-_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
.LCPI6_0:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.p2align	5
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,@function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv: # @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_startproc
# %bb.0:
	ldptr.d	$a2, $a0, 4992
	ori	$a1, $zero, 624
	bltu	$a2, $a1, .LBB6_6
# %bb.1:                                # %vector.ph
	ld.d	$a1, $a0, 0
	move	$a4, $zero
	xvinsgr2vr.d	$xr0, $a1, 0
	xvpermi.d	$xr0, $xr0, 68
	xvpackev.d	$xr0, $xr0, $xr0
	lu12i.w	$a2, -524288
	xvreplgr2vr.d	$xr1, $a2
	lu12i.w	$a1, 524287
	ori	$a3, $a1, 4094
	xvreplgr2vr.d	$xr2, $a3
	ori	$a5, $zero, 3176
	xvrepli.d	$xr3, 1
	xvrepli.b	$xr4, 0
	lu12i.w	$a1, -421749
	ori	$a1, $a1, 223
	lu32i.d	$a1, 0
	xvreplgr2vr.d	$xr5, $a1
	ori	$a6, $zero, 1792
	.p2align	4, , 16
.LBB6_2:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvori.b	$xr6, $xr0, 0
	add.d	$a7, $a0, $a4
	xvld	$xr0, $a7, 8
	xvpickve2gr.d	$t0, $xr6, 3
	xvinsgr2vr.d	$xr6, $t0, 0
	xvpickve2gr.d	$t0, $xr0, 0
	xvinsgr2vr.d	$xr6, $t0, 1
	xvpickve2gr.d	$t0, $xr0, 1
	xvinsgr2vr.d	$xr6, $t0, 2
	xvpickve2gr.d	$t0, $xr0, 2
	xvinsgr2vr.d	$xr6, $t0, 3
	xvand.v	$xr6, $xr6, $xr1
	xvldx	$xr7, $a7, $a5
	xvand.v	$xr8, $xr0, $xr2
	xvor.v	$xr6, $xr8, $xr6
	xvsrli.d	$xr6, $xr6, 1
	xvxor.v	$xr6, $xr6, $xr7
	xvand.v	$xr7, $xr0, $xr3
	xvseqi.d	$xr7, $xr7, 0
	xvbitsel.v	$xr7, $xr5, $xr4, $xr7
	xvxor.v	$xr6, $xr6, $xr7
	xvstx	$xr6, $a0, $a4
	addi.d	$a4, $a4, 32
	bne	$a4, $a6, .LBB6_2
# %bb.3:                                # %vector.ph11
	ld.d	$a4, $a0, 1800
	xvpickve2gr.d	$a5, $xr0, 3
	ldptr.d	$a6, $a0, 4968
	and	$a7, $a4, $a3
	bstrins.d	$a5, $a7, 30, 0
	srli.d	$a5, $a5, 1
	xor	$a5, $a5, $a6
	andi	$a6, $a4, 1
	sub.d	$a6, $zero, $a6
	and	$a6, $a6, $a1
	ld.d	$a7, $a0, 1808
	xor	$a5, $a5, $a6
	st.d	$a5, $a0, 1792
	ldptr.d	$a5, $a0, 4976
	and	$a6, $a7, $a3
	bstrins.d	$a4, $a6, 30, 0
	srli.d	$a4, $a4, 1
	xor	$a4, $a4, $a5
	andi	$a5, $a7, 1
	sub.d	$a5, $zero, $a5
	and	$a5, $a5, $a1
	ld.d	$a6, $a0, 1816
	xor	$a4, $a4, $a5
	st.d	$a4, $a0, 1800
	ldptr.d	$a4, $a0, 4984
	and	$a5, $a6, $a3
	bstrins.d	$a7, $a5, 30, 0
	srli.d	$a5, $a7, 1
	xor	$a4, $a5, $a4
	andi	$a5, $a6, 1
	sub.d	$a5, $zero, $a5
	and	$a5, $a5, $a1
	xor	$a4, $a4, $a5
	st.d	$a4, $a0, 1808
	vinsgr2vr.d	$vr0, $a6, 0
	vreplvei.d	$vr6, $vr0, 0
	lu12i.w	$a4, -1
	ori	$a4, $a4, 928
	lu12i.w	$a6, 1
	ori	$a5, $a6, 896
	pcalau12i	$a7, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI6_0)
	vreplgr2vr.d	$vr1, $a2
	vreplgr2vr.d	$vr2, $a3
	ori	$a2, $zero, 3168
	vrepli.d	$vr3, 1
	vrepli.b	$vr4, 0
	vreplgr2vr.d	$vr5, $a1
	ori	$a3, $a6, 888
	.p2align	4, , 16
.LBB6_4:                                # %vector.body12
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a0, $a4
	vldx	$vr7, $a6, $a5
	vori.b	$vr8, $vr0, 0
	vshuf.d	$vr8, $vr7, $vr6
	vand.v	$vr6, $vr8, $vr1
	vldx	$vr8, $a6, $a2
	vand.v	$vr9, $vr7, $vr2
	vor.v	$vr6, $vr9, $vr6
	vsrli.d	$vr6, $vr6, 1
	vxor.v	$vr6, $vr6, $vr8
	vand.v	$vr8, $vr7, $vr3
	vseqi.d	$vr8, $vr8, 0
	vbitsel.v	$vr8, $vr5, $vr4, $vr8
	vxor.v	$vr6, $vr6, $vr8
	addi.d	$a4, $a4, 16
	vstx	$vr6, $a6, $a3
	vori.b	$vr6, $vr7, 0
	bnez	$a4, .LBB6_4
# %bb.5:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit
	ld.d	$a3, $a0, 0
	move	$a2, $zero
	ldptr.d	$a4, $a0, 4984
	bstrpick.d	$a5, $a3, 30, 1
	ldptr.d	$a6, $a0, 3168
	slli.d	$a5, $a5, 1
	bstrins.d	$a4, $a5, 30, 0
	srli.d	$a4, $a4, 1
	xor	$a4, $a4, $a6
	andi	$a3, $a3, 1
	sub.d	$a3, $zero, $a3
	and	$a1, $a3, $a1
	xor	$a1, $a4, $a1
	stptr.d	$a1, $a0, 4984
.LBB6_6:
	addi.d	$a1, $a2, 1
	stptr.d	$a1, $a0, 4992
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 42, 11
	xor	$a0, $a1, $a0
	slli.d	$a1, $a0, 7
	lu12i.w	$a2, -404795
	ori	$a2, $a2, 1664
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	xor	$a0, $a1, $a0
	slli.d	$a1, $a0, 15
	lu12i.w	$a2, -66464
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	xor	$a0, $a1, $a0
	srli.d	$a1, $a0, 18
	xor	$a0, $a1, $a0
	ret
.Lfunc_end6:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end6-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB7_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB7_2:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB7_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_0JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB7_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end7:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end7-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB8_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB8_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB8_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_0)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_0)
.LBB8_4:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end8-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI9_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI9_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI9_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB9_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB9_4
# %bb.2:
	move	$a2, $zero
	addi.d	$a5, $zero, -1
	b	.LBB9_13
.LBB9_3:
	addi.d	$a5, $zero, -1
	addi.w	$a0, $a5, 0
	ret
.LBB9_4:                                # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a0, $a2, .LBB9_6
# %bb.5:
	move	$a2, $zero
	addi.w	$a5, $zero, -1
	b	.LBB9_10
.LBB9_6:                                # %vector.ph
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a2, $a2, 4
	pcalau12i	$a5, %pc_hi20(.LCPI9_0)
	xvld	$xr1, $a5, %pc_lo12(.LCPI9_0)
	addi.d	$a5, $a3, 32
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$a6, $a1, 32
	move	$a7, $a2
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB9_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvld	$xr5, $a5, -32
	xvld	$xr6, $a5, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvslt.w	$xr3, $xr5, $xr3
	xvslt.w	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr0, $xr1, $xr3
	xvbitsel.v	$xr2, $xr2, $xr7, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB9_7
# %bb.8:                                # %middle.block
	pcalau12i	$a5, %pc_hi20(.LCPI9_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI9_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a5, $xr0, 0
	xor	$a6, $a5, $a4
	sltui	$a6, $a6, 1
	masknez	$a5, $a5, $a6
	addi.w	$a7, $zero, -1
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	beq	$a2, $a0, .LBB9_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a6, $a0, 12
	beqz	$a6, .LBB9_13
.LBB9_10:                               # %vec.epilog.ph
	move	$a7, $a2
	addi.d	$a2, $a5, 1
	sltui	$a2, $a2, 1
	masknez	$a5, $a5, $a2
	maskeqz	$a2, $a4, $a2
	or	$a5, $a2, $a5
	bstrpick.d	$a2, $a0, 30, 2
	pcalau12i	$a6, %pc_hi20(.LCPI9_2)
	vld	$vr1, $a6, %pc_lo12(.LCPI9_2)
	slli.d	$a2, $a2, 2
	vreplgr2vr.w	$vr0, $a5
	vreplgr2vr.w	$vr2, $a7
	vor.v	$vr1, $vr2, $vr1
	sub.d	$a5, $a7, $a2
	alsl.d	$a6, $a7, $a3, 2
	alsl.d	$a7, $a7, $a1, 2
	.p2align	4, , 16
.LBB9_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, 0
	vslt.w	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB9_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a5, $a4, $a5
	beq	$a2, $a0, .LBB9_15
.LBB9_13:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a3, $a2, $a3, 2
	alsl.d	$a1, $a2, $a1, 2
	.p2align	4, , 16
.LBB9_14:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	ld.w	$a6, $a3, 0
	slt	$a4, $a6, $a4
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a2, $a4
	or	$a5, $a4, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB9_14
.LBB9_15:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_1JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a5, 0
	ret
.Lfunc_end9:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end9-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB10_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB10_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB10_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_1)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_1)
.LBB10_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end10-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB11_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB11_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB11_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_0JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB11_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end11:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end11-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB12_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB12_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB12_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_0)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_0)
.LBB12_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end12-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI13_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI13_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI13_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB13_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB13_4
# %bb.2:
	move	$a2, $zero
	addi.d	$a5, $zero, -1
	b	.LBB13_13
.LBB13_3:
	addi.d	$a5, $zero, -1
	addi.w	$a0, $a5, 0
	ret
.LBB13_4:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a0, $a2, .LBB13_6
# %bb.5:
	move	$a2, $zero
	addi.w	$a5, $zero, -1
	b	.LBB13_10
.LBB13_6:                               # %vector.ph
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a2, $a2, 4
	pcalau12i	$a5, %pc_hi20(.LCPI13_0)
	xvld	$xr1, $a5, %pc_lo12(.LCPI13_0)
	addi.d	$a5, $a3, 32
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$a6, $a1, 32
	move	$a7, $a2
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB13_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvld	$xr5, $a5, -32
	xvld	$xr6, $a5, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvfcmp.clt.s	$xr3, $xr5, $xr3
	xvfcmp.clt.s	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr0, $xr1, $xr3
	xvbitsel.v	$xr2, $xr2, $xr7, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB13_7
# %bb.8:                                # %middle.block
	pcalau12i	$a5, %pc_hi20(.LCPI13_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI13_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a5, $xr0, 0
	xor	$a6, $a5, $a4
	sltui	$a6, $a6, 1
	masknez	$a5, $a5, $a6
	addi.w	$a7, $zero, -1
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	beq	$a2, $a0, .LBB13_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a6, $a0, 12
	beqz	$a6, .LBB13_13
.LBB13_10:                              # %vec.epilog.ph
	move	$a7, $a2
	addi.d	$a2, $a5, 1
	sltui	$a2, $a2, 1
	masknez	$a5, $a5, $a2
	maskeqz	$a2, $a4, $a2
	or	$a5, $a2, $a5
	bstrpick.d	$a2, $a0, 30, 2
	pcalau12i	$a6, %pc_hi20(.LCPI13_2)
	vld	$vr1, $a6, %pc_lo12(.LCPI13_2)
	slli.d	$a2, $a2, 2
	vreplgr2vr.w	$vr0, $a5
	vreplgr2vr.w	$vr2, $a7
	vor.v	$vr1, $vr2, $vr1
	sub.d	$a5, $a7, $a2
	alsl.d	$a6, $a7, $a3, 2
	alsl.d	$a7, $a7, $a1, 2
	.p2align	4, , 16
.LBB13_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, 0
	vfcmp.clt.s	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB13_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a5, $a4, $a5
	beq	$a2, $a0, .LBB13_15
.LBB13_13:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a3, $a2, $a3, 2
	alsl.d	$a1, $a2, $a1, 2
	.p2align	4, , 16
.LBB13_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a3, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a4, $fcc0
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a2, $a4
	or	$a5, $a4, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB13_14
.LBB13_15:                              # %"_ZSt10__invoke_rIiRZ4mainE3$_1JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a5, 0
	ret
.Lfunc_end13:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end13-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB14_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB14_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB14_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_1)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_1)
.LBB14_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end14:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end14-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a4, $zero, 1
	lu12i.w	$a3, 15
	blt	$a0, $a4, .LBB15_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	ori	$a3, $a3, 4095
	.p2align	4, , 16
.LBB15_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a1, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a4, .LBB15_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE3$_2JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.LBB15_4:
	ori	$a3, $a3, 4095
	ext.w.h	$a0, $a3
	ret
.Lfunc_end15:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end15-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB16_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB16_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB16_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_2)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_2)
.LBB16_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end16:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end16-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI17_0:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
.LCPI17_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI17_2:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 1
	lu12i.w	$a4, 15
	blt	$a0, $a3, .LBB17_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a0, $a0, 15, 0
	ori	$a3, $zero, 8
	bgeu	$a0, $a3, .LBB17_4
# %bb.2:
	move	$a3, $zero
	ori	$a6, $a4, 4095
	b	.LBB17_13
.LBB17_3:
	ori	$a6, $a4, 4095
	ext.w.h	$a0, $a6
	ret
.LBB17_4:                               # %vector.main.loop.iter.check
	ori	$a5, $a4, 4095
	ori	$a3, $zero, 32
	lu12i.w	$a4, 8
	bgeu	$a0, $a3, .LBB17_6
# %bb.5:
	move	$a3, $zero
	move	$a6, $a5
	b	.LBB17_10
.LBB17_6:                               # %vector.ph
	bstrpick.d	$a3, $a0, 14, 5
	slli.d	$a3, $a3, 5
	addi.d	$a6, $a2, 32
	pcalau12i	$a7, %pc_hi20(.LCPI17_0)
	xvld	$xr1, $a7, %pc_lo12(.LCPI17_0)
	xvreplgr2vr.h	$xr0, $a4
	addi.d	$a7, $a1, 32
	xvrepli.h	$xr3, 32
	move	$t0, $a3
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB17_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a7, -32
	xvld	$xr5, $a7, 0
	xvld	$xr6, $a6, -32
	xvld	$xr7, $a6, 0
	xvaddi.hu	$xr8, $xr1, 16
	xvslt.h	$xr4, $xr6, $xr4
	xvslt.h	$xr5, $xr7, $xr5
	xvbitsel.v	$xr0, $xr0, $xr1, $xr4
	xvbitsel.v	$xr2, $xr2, $xr8, $xr5
	xvadd.h	$xr1, $xr1, $xr3
	addi.d	$t0, $t0, -32
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB17_7
# %bb.8:                                # %middle.block
	pcalau12i	$a6, %pc_hi20(.LCPI17_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI17_1)
	xvmax.h	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.h	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	vpickve2gr.h	$a6, $vr0, 0
	bstrpick.d	$a7, $a6, 15, 0
	xor	$a7, $a7, $a4
	sltui	$a7, $a7, 1
	masknez	$a6, $a6, $a7
	addi.w	$t0, $zero, -1
	maskeqz	$a7, $t0, $a7
	or	$a6, $a7, $a6
	beq	$a3, $a0, .LBB17_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a7, $a0, 24
	beqz	$a7, .LBB17_13
.LBB17_10:                              # %vec.epilog.ph
	move	$a7, $a3
	bstrpick.d	$a3, $a6, 15, 0
	xor	$a3, $a3, $a5
	sltui	$a3, $a3, 1
	masknez	$a5, $a6, $a3
	lu12i.w	$a6, -8
	maskeqz	$a3, $a6, $a3
	or	$a5, $a3, $a5
	bstrpick.d	$a3, $a0, 14, 3
	pcalau12i	$a6, %pc_hi20(.LCPI17_2)
	vld	$vr1, $a6, %pc_lo12(.LCPI17_2)
	slli.d	$a3, $a3, 3
	vreplgr2vr.h	$vr0, $a5
	vreplgr2vr.h	$vr2, $a7
	vor.v	$vr1, $vr2, $vr1
	sub.d	$a5, $a7, $a3
	alsl.d	$a6, $a7, $a2, 1
	alsl.d	$a7, $a7, $a1, 1
	.p2align	4, , 16
.LBB17_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB17_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.h	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a6, $a5, 15, 0
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a6, $a4, $a5
	beq	$a3, $a0, .LBB17_15
.LBB17_13:                              # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $a3, $a2, 1
	alsl.d	$a1, $a3, $a1, 1
	.p2align	4, , 16
.LBB17_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a1, 0
	ld.h	$a5, $a2, 0
	slt	$a4, $a5, $a4
	masknez	$a5, $a6, $a4
	maskeqz	$a4, $a3, $a4
	or	$a6, $a4, $a5
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a3, .LBB17_14
.LBB17_15:                              # %"_ZSt10__invoke_rIsRZ4mainE3$_3JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a6
	ret
.Lfunc_end17:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end17-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB18_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB18_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB18_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_3)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_3)
.LBB18_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end18:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end18-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB19_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB19_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a6, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB19_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_4JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB19_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end19:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end19-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB20_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB20_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB20_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_4)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_4)
.LBB20_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end20:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end20-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI21_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI21_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI21_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB21_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB21_4
# %bb.2:
	move	$a2, $zero
	addi.d	$a5, $zero, -1
	b	.LBB21_13
.LBB21_3:
	addi.d	$a5, $zero, -1
	addi.w	$a0, $a5, 0
	ret
.LBB21_4:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a0, $a2, .LBB21_6
# %bb.5:
	move	$a2, $zero
	addi.w	$a5, $zero, -1
	b	.LBB21_10
.LBB21_6:                               # %vector.ph
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a2, $a2, 4
	pcalau12i	$a5, %pc_hi20(.LCPI21_0)
	xvld	$xr1, $a5, %pc_lo12(.LCPI21_0)
	addi.d	$a5, $a3, 32
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$a6, $a1, 32
	move	$a7, $a2
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB21_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvld	$xr5, $a5, -32
	xvld	$xr6, $a5, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvslt.w	$xr3, $xr5, $xr3
	xvslt.w	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr1, $xr0, $xr3
	xvbitsel.v	$xr2, $xr7, $xr2, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB21_7
# %bb.8:                                # %middle.block
	pcalau12i	$a5, %pc_hi20(.LCPI21_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI21_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a5, $xr0, 0
	xor	$a6, $a5, $a4
	sltui	$a6, $a6, 1
	masknez	$a5, $a5, $a6
	addi.w	$a7, $zero, -1
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	beq	$a2, $a0, .LBB21_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a6, $a0, 12
	beqz	$a6, .LBB21_13
.LBB21_10:                              # %vec.epilog.ph
	move	$a7, $a2
	addi.d	$a2, $a5, 1
	sltui	$a2, $a2, 1
	masknez	$a5, $a5, $a2
	maskeqz	$a2, $a4, $a2
	or	$a5, $a2, $a5
	bstrpick.d	$a2, $a0, 30, 2
	pcalau12i	$a6, %pc_hi20(.LCPI21_2)
	vld	$vr1, $a6, %pc_lo12(.LCPI21_2)
	slli.d	$a2, $a2, 2
	vreplgr2vr.w	$vr0, $a5
	vreplgr2vr.w	$vr2, $a7
	vor.v	$vr1, $vr2, $vr1
	sub.d	$a5, $a7, $a2
	alsl.d	$a6, $a7, $a3, 2
	alsl.d	$a7, $a7, $a1, 2
	.p2align	4, , 16
.LBB21_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, 0
	vslt.w	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr1, $vr0, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB21_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a5, $a4, $a5
	beq	$a2, $a0, .LBB21_15
.LBB21_13:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a3, $a2, $a3, 2
	alsl.d	$a1, $a2, $a1, 2
	.p2align	4, , 16
.LBB21_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	ld.w	$a6, $a3, 0
	slt	$a4, $a6, $a4
	masknez	$a6, $a2, $a4
	maskeqz	$a4, $a5, $a4
	or	$a5, $a4, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB21_14
.LBB21_15:                              # %"_ZSt10__invoke_rIiRZ4mainE3$_5JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a5, 0
	ret
.Lfunc_end21:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end21-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB22_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB22_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB22_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_5)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_5)
.LBB22_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end22:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end22-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB23_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB23_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a6, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB23_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_4JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB23_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end23:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end23-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB24_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB24_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB24_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_4)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_4)
.LBB24_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end24:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end24-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI25_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI25_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI25_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB25_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB25_4
# %bb.2:
	move	$a2, $zero
	addi.d	$a5, $zero, -1
	b	.LBB25_13
.LBB25_3:
	addi.d	$a5, $zero, -1
	addi.w	$a0, $a5, 0
	ret
.LBB25_4:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a0, $a2, .LBB25_6
# %bb.5:
	move	$a2, $zero
	addi.w	$a5, $zero, -1
	b	.LBB25_10
.LBB25_6:                               # %vector.ph
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a2, $a2, 4
	pcalau12i	$a5, %pc_hi20(.LCPI25_0)
	xvld	$xr1, $a5, %pc_lo12(.LCPI25_0)
	addi.d	$a5, $a3, 32
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$a6, $a1, 32
	move	$a7, $a2
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB25_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvld	$xr5, $a5, -32
	xvld	$xr6, $a5, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvfcmp.clt.s	$xr3, $xr5, $xr3
	xvfcmp.clt.s	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr1, $xr0, $xr3
	xvbitsel.v	$xr2, $xr7, $xr2, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB25_7
# %bb.8:                                # %middle.block
	pcalau12i	$a5, %pc_hi20(.LCPI25_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI25_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a5, $xr0, 0
	xor	$a6, $a5, $a4
	sltui	$a6, $a6, 1
	masknez	$a5, $a5, $a6
	addi.w	$a7, $zero, -1
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	beq	$a2, $a0, .LBB25_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a6, $a0, 12
	beqz	$a6, .LBB25_13
.LBB25_10:                              # %vec.epilog.ph
	move	$a7, $a2
	addi.d	$a2, $a5, 1
	sltui	$a2, $a2, 1
	masknez	$a5, $a5, $a2
	maskeqz	$a2, $a4, $a2
	or	$a5, $a2, $a5
	bstrpick.d	$a2, $a0, 30, 2
	pcalau12i	$a6, %pc_hi20(.LCPI25_2)
	vld	$vr1, $a6, %pc_lo12(.LCPI25_2)
	slli.d	$a2, $a2, 2
	vreplgr2vr.w	$vr0, $a5
	vreplgr2vr.w	$vr2, $a7
	vor.v	$vr1, $vr2, $vr1
	sub.d	$a5, $a7, $a2
	alsl.d	$a6, $a7, $a3, 2
	alsl.d	$a7, $a7, $a1, 2
	.p2align	4, , 16
.LBB25_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, 0
	vfcmp.clt.s	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr1, $vr0, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB25_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a5, $a4, $a5
	beq	$a2, $a0, .LBB25_15
.LBB25_13:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a3, $a2, $a3, 2
	alsl.d	$a1, $a2, $a1, 2
	.p2align	4, , 16
.LBB25_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a3, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a4, $fcc0
	masknez	$a6, $a2, $a4
	maskeqz	$a4, $a5, $a4
	or	$a5, $a4, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB25_14
.LBB25_15:                              # %"_ZSt10__invoke_rIiRZ4mainE3$_5JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a5, 0
	ret
.Lfunc_end25:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end25-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB26_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB26_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB26_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_5)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_5)
.LBB26_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end26:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end26-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a4, $zero, 1
	lu12i.w	$a3, 15
	blt	$a0, $a4, .LBB27_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	ori	$a3, $a3, 4095
	.p2align	4, , 16
.LBB27_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a1, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a6, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a4, .LBB27_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE3$_6JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.LBB27_4:
	ori	$a3, $a3, 4095
	ext.w.h	$a0, $a3
	ret
.Lfunc_end27:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end27-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB28_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB28_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB28_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_6)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_6)
.LBB28_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end28:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end28-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI29_0:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
.LCPI29_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI29_2:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 1
	lu12i.w	$a4, 15
	blt	$a0, $a3, .LBB29_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a0, $a0, 15, 0
	ori	$a3, $zero, 8
	bgeu	$a0, $a3, .LBB29_4
# %bb.2:
	move	$a3, $zero
	ori	$a6, $a4, 4095
	b	.LBB29_13
.LBB29_3:
	ori	$a6, $a4, 4095
	ext.w.h	$a0, $a6
	ret
.LBB29_4:                               # %vector.main.loop.iter.check
	ori	$a5, $a4, 4095
	ori	$a3, $zero, 32
	lu12i.w	$a4, 8
	bgeu	$a0, $a3, .LBB29_6
# %bb.5:
	move	$a3, $zero
	move	$a6, $a5
	b	.LBB29_10
.LBB29_6:                               # %vector.ph
	bstrpick.d	$a3, $a0, 14, 5
	slli.d	$a3, $a3, 5
	addi.d	$a6, $a2, 32
	pcalau12i	$a7, %pc_hi20(.LCPI29_0)
	xvld	$xr1, $a7, %pc_lo12(.LCPI29_0)
	xvreplgr2vr.h	$xr0, $a4
	addi.d	$a7, $a1, 32
	xvrepli.h	$xr3, 32
	move	$t0, $a3
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB29_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a7, -32
	xvld	$xr5, $a7, 0
	xvld	$xr6, $a6, -32
	xvld	$xr7, $a6, 0
	xvaddi.hu	$xr8, $xr1, 16
	xvslt.h	$xr4, $xr6, $xr4
	xvslt.h	$xr5, $xr7, $xr5
	xvbitsel.v	$xr0, $xr1, $xr0, $xr4
	xvbitsel.v	$xr2, $xr8, $xr2, $xr5
	xvadd.h	$xr1, $xr1, $xr3
	addi.d	$t0, $t0, -32
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB29_7
# %bb.8:                                # %middle.block
	pcalau12i	$a6, %pc_hi20(.LCPI29_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI29_1)
	xvmax.h	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.h	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	vpickve2gr.h	$a6, $vr0, 0
	bstrpick.d	$a7, $a6, 15, 0
	xor	$a7, $a7, $a4
	sltui	$a7, $a7, 1
	masknez	$a6, $a6, $a7
	addi.w	$t0, $zero, -1
	maskeqz	$a7, $t0, $a7
	or	$a6, $a7, $a6
	beq	$a3, $a0, .LBB29_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a7, $a0, 24
	beqz	$a7, .LBB29_13
.LBB29_10:                              # %vec.epilog.ph
	move	$a7, $a3
	bstrpick.d	$a3, $a6, 15, 0
	xor	$a3, $a3, $a5
	sltui	$a3, $a3, 1
	masknez	$a5, $a6, $a3
	lu12i.w	$a6, -8
	maskeqz	$a3, $a6, $a3
	or	$a5, $a3, $a5
	bstrpick.d	$a3, $a0, 14, 3
	pcalau12i	$a6, %pc_hi20(.LCPI29_2)
	vld	$vr1, $a6, %pc_lo12(.LCPI29_2)
	slli.d	$a3, $a3, 3
	vreplgr2vr.h	$vr0, $a5
	vreplgr2vr.h	$vr2, $a7
	vor.v	$vr1, $vr2, $vr1
	sub.d	$a5, $a7, $a3
	alsl.d	$a6, $a7, $a2, 1
	alsl.d	$a7, $a7, $a1, 1
	.p2align	4, , 16
.LBB29_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr1, $vr0, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB29_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.h	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a6, $a5, 15, 0
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a6, $a4, $a5
	beq	$a3, $a0, .LBB29_15
.LBB29_13:                              # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $a3, $a2, 1
	alsl.d	$a1, $a3, $a1, 1
	.p2align	4, , 16
.LBB29_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a1, 0
	ld.h	$a5, $a2, 0
	slt	$a4, $a5, $a4
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $a6, $a4
	or	$a6, $a4, $a5
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a3, .LBB29_14
.LBB29_15:                              # %"_ZSt10__invoke_rIsRZ4mainE3$_7JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a6
	ret
.Lfunc_end29:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end29-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB30_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB30_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB30_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_7)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_7)
.LBB30_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end30:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end30-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB31_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	move	$a4, $a0
	.p2align	4, , 16
.LBB31_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a3, $a5
	or	$a0, $a5, $a0
	addi.d	$a4, $a4, -1
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB31_2
.LBB31_3:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_8JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end31:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end31-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB32_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB32_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB32_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_8)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_8)
.LBB32_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end32:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end32-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI33_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI33_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI33_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB33_3
# %bb.1:                                # %iter.check
	ld.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB33_4
# %bb.2:
	move	$a1, $zero
	move	$a5, $a0
	b	.LBB33_13
.LBB33_3:
	move	$a5, $a0
	addi.w	$a0, $a5, 0
	ret
.LBB33_4:                               # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a0, $a1, .LBB33_6
# %bb.5:
	move	$a1, $zero
	move	$a5, $a0
	b	.LBB33_10
.LBB33_6:                               # %vector.ph
	bstrpick.d	$a1, $a0, 30, 4
	slli.d	$a1, $a1, 4
	pcalau12i	$a5, %pc_hi20(.LCPI33_0)
	xvld	$xr1, $a5, %pc_lo12(.LCPI33_0)
	addi.d	$a5, $a2, 32
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$a6, $a3, 32
	move	$a7, $a1
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB33_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvld	$xr5, $a5, -32
	xvld	$xr6, $a5, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvslt.w	$xr3, $xr5, $xr3
	xvslt.w	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr0, $xr1, $xr3
	xvbitsel.v	$xr2, $xr2, $xr7, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB33_7
# %bb.8:                                # %middle.block
	pcalau12i	$a5, %pc_hi20(.LCPI33_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI33_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a5, $xr0, 0
	xor	$a6, $a5, $a4
	sltui	$a6, $a6, 1
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a0, $a6
	or	$a5, $a6, $a5
	beq	$a1, $a0, .LBB33_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a6, $a0, 12
	beqz	$a6, .LBB33_13
.LBB33_10:                              # %vec.epilog.ph
	move	$a7, $a1
	xor	$a1, $a5, $a0
	sltui	$a1, $a1, 1
	masknez	$a5, $a5, $a1
	maskeqz	$a1, $a4, $a1
	or	$a5, $a1, $a5
	bstrpick.d	$a1, $a0, 30, 2
	pcalau12i	$a6, %pc_hi20(.LCPI33_2)
	vld	$vr1, $a6, %pc_lo12(.LCPI33_2)
	slli.d	$a1, $a1, 2
	vreplgr2vr.w	$vr0, $a5
	vreplgr2vr.w	$vr2, $a7
	vor.v	$vr1, $vr2, $vr1
	sub.d	$a5, $a7, $a1
	alsl.d	$a6, $a7, $a2, 2
	alsl.d	$a7, $a7, $a3, 2
	.p2align	4, , 16
.LBB33_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, 0
	vslt.w	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB33_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a0, $a4
	or	$a5, $a4, $a5
	beq	$a1, $a0, .LBB33_15
.LBB33_13:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a1
	alsl.d	$a2, $a1, $a2, 2
	alsl.d	$a3, $a1, $a3, 2
	.p2align	4, , 16
.LBB33_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	ld.w	$a6, $a2, 0
	slt	$a4, $a6, $a4
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a1, $a4
	or	$a5, $a4, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB33_14
.LBB33_15:                              # %"_ZSt10__invoke_rIiRZ4mainE3$_9JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a5, 0
	ret
.Lfunc_end33:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end33-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB34_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB34_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB34_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_9)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_9)
.LBB34_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end34:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end34-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB35_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	move	$a4, $a0
	.p2align	4, , 16
.LBB35_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a3, $a5
	or	$a0, $a5, $a0
	addi.d	$a4, $a4, -1
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB35_2
.LBB35_3:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_8JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end35:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end35-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB36_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB36_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB36_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_8)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_8)
.LBB36_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end36:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end36-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI37_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI37_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI37_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB37_3
# %bb.1:                                # %iter.check
	ld.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB37_4
# %bb.2:
	move	$a1, $zero
	move	$a5, $a0
	b	.LBB37_13
.LBB37_3:
	move	$a5, $a0
	addi.w	$a0, $a5, 0
	ret
.LBB37_4:                               # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a0, $a1, .LBB37_6
# %bb.5:
	move	$a1, $zero
	move	$a5, $a0
	b	.LBB37_10
.LBB37_6:                               # %vector.ph
	bstrpick.d	$a1, $a0, 30, 4
	slli.d	$a1, $a1, 4
	pcalau12i	$a5, %pc_hi20(.LCPI37_0)
	xvld	$xr1, $a5, %pc_lo12(.LCPI37_0)
	addi.d	$a5, $a2, 32
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$a6, $a3, 32
	move	$a7, $a1
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB37_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvld	$xr5, $a5, -32
	xvld	$xr6, $a5, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvfcmp.clt.s	$xr3, $xr5, $xr3
	xvfcmp.clt.s	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr0, $xr1, $xr3
	xvbitsel.v	$xr2, $xr2, $xr7, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB37_7
# %bb.8:                                # %middle.block
	pcalau12i	$a5, %pc_hi20(.LCPI37_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI37_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a5, $xr0, 0
	xor	$a6, $a5, $a4
	sltui	$a6, $a6, 1
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a0, $a6
	or	$a5, $a6, $a5
	beq	$a1, $a0, .LBB37_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a6, $a0, 12
	beqz	$a6, .LBB37_13
.LBB37_10:                              # %vec.epilog.ph
	move	$a7, $a1
	xor	$a1, $a5, $a0
	sltui	$a1, $a1, 1
	masknez	$a5, $a5, $a1
	maskeqz	$a1, $a4, $a1
	or	$a5, $a1, $a5
	bstrpick.d	$a1, $a0, 30, 2
	pcalau12i	$a6, %pc_hi20(.LCPI37_2)
	vld	$vr1, $a6, %pc_lo12(.LCPI37_2)
	slli.d	$a1, $a1, 2
	vreplgr2vr.w	$vr0, $a5
	vreplgr2vr.w	$vr2, $a7
	vor.v	$vr1, $vr2, $vr1
	sub.d	$a5, $a7, $a1
	alsl.d	$a6, $a7, $a2, 2
	alsl.d	$a7, $a7, $a3, 2
	.p2align	4, , 16
.LBB37_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, 0
	vfcmp.clt.s	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB37_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a0, $a4
	or	$a5, $a4, $a5
	beq	$a1, $a0, .LBB37_15
.LBB37_13:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a1
	alsl.d	$a2, $a1, $a2, 2
	alsl.d	$a3, $a1, $a3, 2
	.p2align	4, , 16
.LBB37_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a4, $fcc0
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a1, $a4
	or	$a5, $a4, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB37_14
.LBB37_15:                              # %"_ZSt10__invoke_rIiRZ4mainE3$_9JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a5, 0
	ret
.Lfunc_end37:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end37-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB38_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB38_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB38_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_9)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_9)
.LBB38_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end38:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end38-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB39_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a3, $a0
	.p2align	4, , 16
.LBB39_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a1, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a4, .LBB39_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE4$_10JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.LBB39_4:
	move	$a3, $a0
	ext.w.h	$a0, $a3
	ret
.Lfunc_end39:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end39-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB40_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB40_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB40_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_10)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_10)
.LBB40_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end40:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end40-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI41_0:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
.LCPI41_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI41_2:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ext.w.h	$a3, $a0
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB41_15
# %bb.1:                                # %iter.check
	ld.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a1, $a0, 15, 0
	ori	$a4, $zero, 8
	bgeu	$a1, $a4, .LBB41_3
# %bb.2:
	move	$a4, $zero
	move	$a6, $a0
	b	.LBB41_13
.LBB41_3:                               # %vector.main.loop.iter.check
	ori	$a4, $zero, 32
	lu12i.w	$a5, 8
	bgeu	$a1, $a4, .LBB41_5
# %bb.4:
	move	$a4, $zero
	move	$a6, $a0
	b	.LBB41_10
.LBB41_5:                               # %vector.ph
	bstrpick.d	$a4, $a1, 14, 5
	slli.d	$a4, $a4, 5
	addi.d	$a6, $a2, 32
	pcalau12i	$a7, %pc_hi20(.LCPI41_0)
	xvld	$xr1, $a7, %pc_lo12(.LCPI41_0)
	xvreplgr2vr.h	$xr0, $a5
	addi.d	$a7, $a3, 32
	xvrepli.h	$xr3, 32
	move	$t0, $a4
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB41_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a7, -32
	xvld	$xr5, $a7, 0
	xvld	$xr6, $a6, -32
	xvld	$xr7, $a6, 0
	xvaddi.hu	$xr8, $xr1, 16
	xvslt.h	$xr4, $xr6, $xr4
	xvslt.h	$xr5, $xr7, $xr5
	xvbitsel.v	$xr0, $xr0, $xr1, $xr4
	xvbitsel.v	$xr2, $xr2, $xr8, $xr5
	xvadd.h	$xr1, $xr1, $xr3
	addi.d	$t0, $t0, -32
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB41_6
# %bb.7:                                # %middle.block
	pcalau12i	$a6, %pc_hi20(.LCPI41_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI41_1)
	xvmax.h	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.h	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	vpickve2gr.h	$a6, $vr0, 0
	bstrpick.d	$a7, $a6, 15, 0
	xor	$a7, $a7, $a5
	sltui	$a7, $a7, 1
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $a0, $a7
	or	$a6, $a7, $a6
	bne	$a4, $a1, .LBB41_9
# %bb.8:
	ext.w.h	$a0, $a6
	ret
.LBB41_9:                               # %vec.epilog.iter.check
	andi	$a7, $a1, 24
	beqz	$a7, .LBB41_13
.LBB41_10:                              # %vec.epilog.ph
	move	$t0, $a4
	bstrpick.d	$a4, $a6, 15, 0
	xor	$a4, $a4, $a1
	sltui	$a4, $a4, 1
	masknez	$a6, $a6, $a4
	lu12i.w	$a7, -8
	maskeqz	$a4, $a7, $a4
	or	$a6, $a4, $a6
	bstrpick.d	$a4, $a1, 14, 3
	pcalau12i	$a7, %pc_hi20(.LCPI41_2)
	vld	$vr1, $a7, %pc_lo12(.LCPI41_2)
	slli.d	$a4, $a4, 3
	vreplgr2vr.h	$vr0, $a6
	vreplgr2vr.h	$vr2, $t0
	vor.v	$vr1, $vr2, $vr1
	sub.d	$a6, $t0, $a4
	alsl.d	$a7, $t0, $a2, 1
	alsl.d	$t0, $t0, $a3, 1
	.p2align	4, , 16
.LBB41_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, 0
	vld	$vr3, $a7, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	bnez	$a6, .LBB41_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.h	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vpickve2gr.h	$a6, $vr0, 0
	bstrpick.d	$a7, $a6, 15, 0
	xor	$a5, $a7, $a5
	sltui	$a5, $a5, 1
	masknez	$a6, $a6, $a5
	maskeqz	$a0, $a0, $a5
	or	$a6, $a0, $a6
	move	$a0, $a6
	beq	$a4, $a1, .LBB41_15
.LBB41_13:                              # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $a4, $a2, 1
	alsl.d	$a3, $a4, $a3, 1
	move	$a0, $a6
	.p2align	4, , 16
.LBB41_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a3, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, 2
	bne	$a1, $a4, .LBB41_14
.LBB41_15:                              # %"_ZSt10__invoke_rIsRZ4mainE4$_11JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a0
	ret
.Lfunc_end41:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end41-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB42_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB42_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB42_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_11)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_11)
.LBB42_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end42:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end42-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB43_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB43_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	slt	$a6, $a7, $a6
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a4, $a6
	or	$a0, $a6, $a0
	addi.d	$a5, $a5, 2
	addi.w	$a4, $a4, 2
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bltu	$a5, $a3, .LBB43_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_12JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB43_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end43:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end43-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB44_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB44_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB44_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_12)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_12)
.LBB44_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end44:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end44-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB45_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB45_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	slt	$a6, $a7, $a6
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a4, $a6
	or	$a0, $a6, $a0
	addi.d	$a5, $a5, 2
	addi.w	$a4, $a4, 2
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bltu	$a5, $a3, .LBB45_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_13JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB45_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end45:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end45-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB46_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB46_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB46_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_13)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_13)
.LBB46_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end46:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end46-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB47_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB47_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a6, $fcc0
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a4, $a6
	or	$a0, $a6, $a0
	addi.d	$a5, $a5, 2
	addi.w	$a4, $a4, 2
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bltu	$a5, $a3, .LBB47_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_12JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB47_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end47:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end47-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB48_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB48_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB48_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_12)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_12)
.LBB48_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end48:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end48-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB49_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB49_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a6, $fcc0
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a4, $a6
	or	$a0, $a6, $a0
	addi.d	$a5, $a5, 2
	addi.w	$a4, $a4, 2
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bltu	$a5, $a3, .LBB49_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_13JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB49_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end49:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end49-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB50_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB50_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB50_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_13)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_13)
.LBB50_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end50:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end50-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a4, $zero, 1
	lu12i.w	$a3, 15
	blt	$a0, $a4, .LBB51_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	ori	$a3, $a3, 4095
	.p2align	4, , 16
.LBB51_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a1, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.d	$a4, $a4, 2
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bltu	$a4, $a0, .LBB51_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE4$_14JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.LBB51_4:
	ori	$a3, $a3, 4095
	ext.w.h	$a0, $a3
	ret
.Lfunc_end51:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end51-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB52_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB52_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB52_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_14)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_14)
.LBB52_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end52:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end52-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a4, $zero, 1
	lu12i.w	$a3, 15
	blt	$a0, $a4, .LBB53_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	ori	$a3, $a3, 4095
	.p2align	4, , 16
.LBB53_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a1, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.d	$a4, $a4, 2
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bltu	$a4, $a0, .LBB53_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE4$_15JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.LBB53_4:
	ori	$a3, $a3, 4095
	ext.w.h	$a0, $a3
	ret
.Lfunc_end53:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end53-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB54_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB54_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB54_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_15)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_15)
.LBB54_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end54:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end54-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB55_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a5, $a1, 0
	addi.d	$a1, $a3, 1
	alsl.d	$a2, $a3, $a0, 2
	alsl.d	$a5, $a3, $a5, 2
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB55_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$a7, $a2, 0
	slt	$a6, $a7, $a6
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a3, $a6
	or	$a0, $a6, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -4
	addi.d	$a5, $a5, -4
	bltu	$a4, $a1, .LBB55_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_16JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB55_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end55:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end55-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB56_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB56_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB56_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_16)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_16)
.LBB56_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end56:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end56-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB57_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a5, $a1, 0
	addi.d	$a1, $a3, 1
	alsl.d	$a2, $a3, $a0, 2
	alsl.d	$a5, $a3, $a5, 2
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB57_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$a7, $a2, 0
	slt	$a6, $a7, $a6
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a3, $a6
	or	$a0, $a6, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -4
	addi.d	$a5, $a5, -4
	bltu	$a4, $a1, .LBB57_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_17JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB57_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end57:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end57-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB58_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB58_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB58_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_17)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_17)
.LBB58_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end58:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end58-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB59_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a5, $a1, 0
	addi.d	$a1, $a3, 1
	alsl.d	$a2, $a3, $a0, 2
	alsl.d	$a5, $a3, $a5, 2
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB59_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a6, $fcc0
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a3, $a6
	or	$a0, $a6, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -4
	addi.d	$a5, $a5, -4
	bltu	$a4, $a1, .LBB59_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_16JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB59_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end59:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end59-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB60_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB60_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB60_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_16)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_16)
.LBB60_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end60:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end60-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB61_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a5, $a1, 0
	addi.d	$a1, $a3, 1
	alsl.d	$a2, $a3, $a0, 2
	alsl.d	$a5, $a3, $a5, 2
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB61_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a6, $fcc0
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a3, $a6
	or	$a0, $a6, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -4
	addi.d	$a5, $a5, -4
	bltu	$a4, $a1, .LBB61_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_17JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB61_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end61:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end61-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB62_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB62_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB62_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_17)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_17)
.LBB62_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end62:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end62-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a3, $a3, 0
	ori	$a0, $zero, 1
	lu12i.w	$a5, 15
	blt	$a3, $a0, .LBB63_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a1, 0
	alsl.d	$a2, $a3, $a2, 1
	alsl.d	$a4, $a3, $a1, 1
	ori	$a1, $a5, 4095
	.p2align	4, , 16
.LBB63_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a4, 0
	ld.h	$a6, $a2, 0
	move	$a7, $a3
	slt	$a3, $a6, $a5
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a7, $a3
	or	$a1, $a3, $a1
	addi.d	$a3, $a7, -1
	addi.d	$a2, $a2, -2
	addi.d	$a4, $a4, -2
	bltu	$a0, $a7, .LBB63_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE4$_18JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a1
	ret
.LBB63_4:
	ori	$a1, $a5, 4095
	ext.w.h	$a0, $a1
	ret
.Lfunc_end63:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end63-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB64_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB64_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB64_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_18)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_18)
.LBB64_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end64:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end64-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a3, $a3, 0
	ori	$a0, $zero, 1
	lu12i.w	$a5, 15
	blt	$a3, $a0, .LBB65_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a1, 0
	alsl.d	$a2, $a3, $a2, 1
	alsl.d	$a4, $a3, $a1, 1
	ori	$a1, $a5, 4095
	.p2align	4, , 16
.LBB65_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a4, 0
	ld.h	$a6, $a2, 0
	move	$a7, $a3
	slt	$a3, $a6, $a5
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a7, $a3
	or	$a1, $a3, $a1
	addi.d	$a3, $a7, -1
	addi.d	$a2, $a2, -2
	addi.d	$a4, $a4, -2
	bltu	$a0, $a7, .LBB65_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE4$_19JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a1
	ret
.LBB65_4:
	ori	$a1, $a5, 4095
	ext.w.h	$a0, $a1
	ret
.Lfunc_end65:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end65-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB66_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB66_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB66_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_19)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_19)
.LBB66_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end66:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end66-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 4
	blt	$a0, $a3, .LBB67_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a0, -3
	addi.d	$a2, $a2, 12
	addi.d	$a3, $a3, 12
	addi.w	$a0, $zero, -1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB67_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB67_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_20JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB67_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end67:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end67-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB68_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB68_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB68_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_20)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_20)
.LBB68_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end68:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end68-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI69_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
.LCPI69_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI69_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a4, $zero, 4
	blt	$a0, $a4, .LBB69_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	bgeu	$a3, $a4, .LBB69_4
# %bb.2:
	addi.d	$t0, $zero, -1
	ori	$a7, $zero, 3
	b	.LBB69_15
.LBB69_3:
	addi.d	$t0, $zero, -1
	addi.w	$a0, $t0, 0
	ret
.LBB69_4:                               # %vector.main.loop.iter.check
	ori	$a5, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a3, $a5, .LBB69_6
# %bb.5:
	move	$a5, $zero
	addi.w	$t0, $zero, -1
	ori	$a6, $zero, 3
	b	.LBB69_10
.LBB69_6:                               # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	ori	$a7, $zero, 3
	move	$a6, $a3
	bstrins.d	$a6, $a7, 3, 0
	pcalau12i	$a7, %pc_hi20(.LCPI69_0)
	xvld	$xr1, $a7, %pc_lo12(.LCPI69_0)
	addi.d	$a7, $a1, 44
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$t0, $a2, 44
	move	$t1, $a5
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB69_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a7, -32
	xvld	$xr4, $a7, 0
	xvld	$xr5, $t0, -32
	xvld	$xr6, $t0, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvslt.w	$xr3, $xr5, $xr3
	xvslt.w	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr0, $xr1, $xr3
	xvbitsel.v	$xr2, $xr2, $xr7, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a7, $a7, 64
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB69_7
# %bb.8:                                # %middle.block
	pcalau12i	$a7, %pc_hi20(.LCPI69_1)
	xvld	$xr1, $a7, %pc_lo12(.LCPI69_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a7, $xr0, 0
	xor	$t0, $a7, $a4
	sltui	$t0, $t0, 1
	masknez	$a7, $a7, $t0
	addi.w	$t1, $zero, -1
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $a7
	beq	$a3, $a5, .LBB69_13
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a7, $a3, 12
	beqz	$a7, .LBB69_14
.LBB69_10:                              # %vec.epilog.ph
	addi.d	$a7, $t0, 1
	sltui	$a7, $a7, 1
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $a4, $a7
	or	$t0, $a7, $t0
	move	$t1, $a3
	bstrins.d	$t1, $zero, 1, 0
	pcalau12i	$a7, %pc_hi20(.LCPI69_2)
	vld	$vr1, $a7, %pc_lo12(.LCPI69_2)
	ori	$a7, $a3, 3
	vreplgr2vr.w	$vr0, $t0
	vreplgr2vr.w	$vr2, $a6
	vadd.w	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 2
	addi.d	$t0, $a6, 12
	add.d	$a6, $a1, $t0
	add.d	$t0, $a2, $t0
	sub.d	$a5, $a5, $t1
	.p2align	4, , 16
.LBB69_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $t0, 0
	vslt.w	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB69_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$t0, $a4, $a5
	bne	$a3, $t1, .LBB69_15
.LBB69_13:                              # %"_ZSt10__invoke_rIiRZ4mainE4$_21JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $t0, 0
	ret
.LBB69_14:
	addi.d	$a7, $a5, 3
.LBB69_15:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a7
	alsl.d	$a2, $a7, $a2, 2
	alsl.d	$a1, $a7, $a1, 2
	.p2align	4, , 16
.LBB69_16:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	slt	$a3, $a4, $a3
	masknez	$a4, $t0, $a3
	maskeqz	$a3, $a7, $a3
	or	$t0, $a3, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB69_16
	b	.LBB69_13
.Lfunc_end69:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end69-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB70_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB70_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB70_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_21)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_21)
.LBB70_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end70:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end70-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 4
	blt	$a0, $a3, .LBB71_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a0, -3
	addi.d	$a2, $a2, 12
	addi.d	$a3, $a3, 12
	addi.w	$a0, $zero, -1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB71_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB71_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_20JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB71_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end71:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end71-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB72_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB72_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB72_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_20)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_20)
.LBB72_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end72:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end72-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI73_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
.LCPI73_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI73_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a4, $zero, 4
	blt	$a0, $a4, .LBB73_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	bgeu	$a3, $a4, .LBB73_4
# %bb.2:
	addi.d	$t0, $zero, -1
	ori	$a7, $zero, 3
	b	.LBB73_15
.LBB73_3:
	addi.d	$t0, $zero, -1
	addi.w	$a0, $t0, 0
	ret
.LBB73_4:                               # %vector.main.loop.iter.check
	ori	$a5, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a3, $a5, .LBB73_6
# %bb.5:
	move	$a5, $zero
	addi.w	$t0, $zero, -1
	ori	$a6, $zero, 3
	b	.LBB73_10
.LBB73_6:                               # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	ori	$a7, $zero, 3
	move	$a6, $a3
	bstrins.d	$a6, $a7, 3, 0
	pcalau12i	$a7, %pc_hi20(.LCPI73_0)
	xvld	$xr1, $a7, %pc_lo12(.LCPI73_0)
	addi.d	$a7, $a1, 44
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$t0, $a2, 44
	move	$t1, $a5
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB73_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a7, -32
	xvld	$xr4, $a7, 0
	xvld	$xr5, $t0, -32
	xvld	$xr6, $t0, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvfcmp.clt.s	$xr3, $xr5, $xr3
	xvfcmp.clt.s	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr0, $xr1, $xr3
	xvbitsel.v	$xr2, $xr2, $xr7, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a7, $a7, 64
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB73_7
# %bb.8:                                # %middle.block
	pcalau12i	$a7, %pc_hi20(.LCPI73_1)
	xvld	$xr1, $a7, %pc_lo12(.LCPI73_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a7, $xr0, 0
	xor	$t0, $a7, $a4
	sltui	$t0, $t0, 1
	masknez	$a7, $a7, $t0
	addi.w	$t1, $zero, -1
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $a7
	beq	$a3, $a5, .LBB73_13
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a7, $a3, 12
	beqz	$a7, .LBB73_14
.LBB73_10:                              # %vec.epilog.ph
	addi.d	$a7, $t0, 1
	sltui	$a7, $a7, 1
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $a4, $a7
	or	$t0, $a7, $t0
	move	$t1, $a3
	bstrins.d	$t1, $zero, 1, 0
	pcalau12i	$a7, %pc_hi20(.LCPI73_2)
	vld	$vr1, $a7, %pc_lo12(.LCPI73_2)
	ori	$a7, $a3, 3
	vreplgr2vr.w	$vr0, $t0
	vreplgr2vr.w	$vr2, $a6
	vadd.w	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 2
	addi.d	$t0, $a6, 12
	add.d	$a6, $a1, $t0
	add.d	$t0, $a2, $t0
	sub.d	$a5, $a5, $t1
	.p2align	4, , 16
.LBB73_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $t0, 0
	vfcmp.clt.s	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB73_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$t0, $a4, $a5
	bne	$a3, $t1, .LBB73_15
.LBB73_13:                              # %"_ZSt10__invoke_rIiRZ4mainE4$_21JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $t0, 0
	ret
.LBB73_14:
	addi.d	$a7, $a5, 3
.LBB73_15:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a7
	alsl.d	$a2, $a7, $a2, 2
	alsl.d	$a1, $a7, $a1, 2
	.p2align	4, , 16
.LBB73_16:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a3, $fcc0
	masknez	$a4, $t0, $a3
	maskeqz	$a3, $a7, $a3
	or	$t0, $a3, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB73_16
	b	.LBB73_13
.Lfunc_end73:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end73-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB74_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB74_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB74_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_21)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_21)
.LBB74_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end74:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end74-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 4
	lu12i.w	$a5, 15
	blt	$a0, $a3, .LBB75_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a2, 6
	addi.d	$a3, $a3, 6
	ori	$a4, $zero, 3
	ori	$a2, $a5, 4095
	.p2align	4, , 16
.LBB75_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a3, 0
	ld.h	$a6, $a1, 0
	slt	$a5, $a6, $a5
	masknez	$a2, $a2, $a5
	maskeqz	$a5, $a4, $a5
	or	$a2, $a5, $a2
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 2
	addi.d	$a3, $a3, 2
	bne	$a0, $a4, .LBB75_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE4$_22JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a2
	ret
.LBB75_4:
	ori	$a2, $a5, 4095
	ext.w.h	$a0, $a2
	ret
.Lfunc_end75:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end75-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB76_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB76_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB76_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_22)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_22)
.LBB76_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end76:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end76-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI77_0:
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
	.half	16                              # 0x10
	.half	17                              # 0x11
	.half	18                              # 0x12
.LCPI77_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI77_2:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 4
	lu12i.w	$a4, 15
	blt	$a0, $a3, .LBB77_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$a5, $zero, 8
	bgeu	$a3, $a5, .LBB77_4
# %bb.2:
	ori	$t0, $zero, 3
	ori	$t1, $a4, 4095
	b	.LBB77_15
.LBB77_3:
	ori	$t1, $a4, 4095
	ext.w.h	$a0, $t1
	ret
.LBB77_4:                               # %vector.main.loop.iter.check
	ori	$a6, $zero, 3
	ori	$t0, $a4, 4095
	ori	$a5, $zero, 32
	lu12i.w	$a4, 8
	bgeu	$a3, $a5, .LBB77_6
# %bb.5:
	move	$a5, $zero
	ori	$a7, $zero, 3
	move	$t1, $t0
	b	.LBB77_10
.LBB77_6:                               # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 4, 0
	ori	$t1, $zero, 3
	move	$a7, $a3
	bstrins.d	$a7, $t1, 4, 0
	addi.d	$t1, $a1, 38
	pcalau12i	$t2, %pc_hi20(.LCPI77_0)
	xvld	$xr1, $t2, %pc_lo12(.LCPI77_0)
	xvreplgr2vr.h	$xr0, $a4
	addi.d	$t2, $a2, 38
	xvrepli.h	$xr3, 32
	move	$t3, $a5
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB77_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $t1, -32
	xvld	$xr5, $t1, 0
	xvld	$xr6, $t2, -32
	xvld	$xr7, $t2, 0
	xvaddi.hu	$xr8, $xr1, 16
	xvslt.h	$xr4, $xr6, $xr4
	xvslt.h	$xr5, $xr7, $xr5
	xvbitsel.v	$xr0, $xr0, $xr1, $xr4
	xvbitsel.v	$xr2, $xr2, $xr8, $xr5
	xvadd.h	$xr1, $xr1, $xr3
	addi.d	$t1, $t1, 64
	addi.d	$t3, $t3, -32
	addi.d	$t2, $t2, 64
	bnez	$t3, .LBB77_7
# %bb.8:                                # %middle.block
	pcalau12i	$t1, %pc_hi20(.LCPI77_1)
	xvld	$xr1, $t1, %pc_lo12(.LCPI77_1)
	xvmax.h	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.h	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	vpickve2gr.h	$t1, $vr0, 0
	bstrpick.d	$t2, $t1, 15, 0
	xor	$t2, $t2, $a4
	sltui	$t2, $t2, 1
	masknez	$t1, $t1, $t2
	addi.w	$t3, $zero, -1
	maskeqz	$t2, $t3, $t2
	or	$t1, $t2, $t1
	beq	$a3, $a5, .LBB77_13
# %bb.9:                                # %vec.epilog.iter.check
	andi	$t2, $a3, 24
	beqz	$t2, .LBB77_14
.LBB77_10:                              # %vec.epilog.ph
	bstrpick.d	$t2, $t1, 15, 0
	xor	$t0, $t2, $t0
	sltui	$t0, $t0, 1
	masknez	$t1, $t1, $t0
	lu12i.w	$t2, -8
	maskeqz	$t0, $t2, $t0
	or	$t1, $t0, $t1
	move	$t2, $a3
	bstrins.d	$t2, $zero, 2, 0
	pcalau12i	$t0, %pc_hi20(.LCPI77_2)
	vld	$vr1, $t0, %pc_lo12(.LCPI77_2)
	move	$t0, $a3
	bstrins.d	$t0, $a6, 2, 0
	vreplgr2vr.h	$vr0, $t1
	vreplgr2vr.h	$vr2, $a7
	vadd.h	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 1
	addi.d	$a7, $a6, 6
	add.d	$a6, $a1, $a7
	add.d	$a7, $a2, $a7
	sub.d	$a5, $a5, $t2
	.p2align	4, , 16
.LBB77_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB77_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.h	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a6, $a5, 15, 0
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$t1, $a4, $a5
	bne	$a3, $t2, .LBB77_15
.LBB77_13:                              # %"_ZSt10__invoke_rIsRZ4mainE4$_23JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $t1
	ret
.LBB77_14:
	addi.d	$t0, $a5, 3
.LBB77_15:                              # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $t0, $a2, 1
	alsl.d	$a1, $t0, $a1, 1
	.p2align	4, , 16
.LBB77_16:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a1, 0
	ld.h	$a4, $a2, 0
	slt	$a3, $a4, $a3
	masknez	$a4, $t1, $a3
	maskeqz	$a3, $t0, $a3
	or	$t1, $a3, $a4
	addi.d	$t0, $t0, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $t0, .LBB77_16
	b	.LBB77_13
.Lfunc_end77:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end77-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB78_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB78_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB78_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_23)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_23)
.LBB78_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end78:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end78-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 4
	ori	$a0, $zero, 3
	blt	$a3, $a4, .LBB79_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a4, $zero, 3
	ori	$a0, $zero, 3
	.p2align	4, , 16
.LBB79_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB79_2
.LBB79_3:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_24JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end79:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end79-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB80_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB80_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB80_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_24)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_24)
.LBB80_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end80:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end80-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI81_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
.LCPI81_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI81_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a4, $zero, 4
	ori	$t0, $zero, 3
	blt	$a0, $a4, .LBB81_14
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$a6, $zero, 3
	ori	$t0, $zero, 3
	bltu	$a3, $a4, .LBB81_12
# %bb.2:                                # %vector.main.loop.iter.check
	ori	$a5, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a3, $a5, .LBB81_4
# %bb.3:
	move	$a5, $zero
	ori	$a7, $zero, 3
	ori	$t0, $zero, 3
	b	.LBB81_8
.LBB81_4:                               # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	ori	$a6, $zero, 3
	move	$a7, $a3
	bstrins.d	$a7, $a6, 3, 0
	pcalau12i	$a6, %pc_hi20(.LCPI81_0)
	xvld	$xr1, $a6, %pc_lo12(.LCPI81_0)
	addi.d	$a6, $a1, 44
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$t0, $a2, 44
	move	$t1, $a5
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB81_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvld	$xr5, $t0, -32
	xvld	$xr6, $t0, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvslt.w	$xr3, $xr5, $xr3
	xvslt.w	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr0, $xr1, $xr3
	xvbitsel.v	$xr2, $xr2, $xr7, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a6, $a6, 64
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB81_5
# %bb.6:                                # %middle.block
	pcalau12i	$a6, %pc_hi20(.LCPI81_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI81_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a6, $xr0, 0
	xor	$t0, $a6, $a4
	sltui	$t0, $t0, 1
	masknez	$a6, $a6, $t0
	ori	$t1, $zero, 3
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $a6
	beq	$a3, $a5, .LBB81_14
# %bb.7:                                # %vec.epilog.iter.check
	andi	$a6, $a3, 12
	beqz	$a6, .LBB81_11
.LBB81_8:                               # %vec.epilog.ph
	addi.d	$a6, $t0, -3
	sltui	$a6, $a6, 1
	masknez	$t0, $t0, $a6
	maskeqz	$a6, $a4, $a6
	or	$t0, $a6, $t0
	move	$t1, $a3
	bstrins.d	$t1, $zero, 1, 0
	pcalau12i	$a6, %pc_hi20(.LCPI81_2)
	vld	$vr1, $a6, %pc_lo12(.LCPI81_2)
	ori	$a6, $a3, 3
	vreplgr2vr.w	$vr0, $t0
	vreplgr2vr.w	$vr2, $a7
	vadd.w	$vr1, $vr2, $vr1
	slli.d	$a7, $a5, 2
	addi.d	$t0, $a7, 12
	add.d	$a7, $a1, $t0
	add.d	$t0, $a2, $t0
	sub.d	$a5, $a5, $t1
	.p2align	4, , 16
.LBB81_9:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $t0, 0
	vslt.w	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB81_9
# %bb.10:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	ori	$a7, $zero, 3
	maskeqz	$a4, $a7, $a4
	or	$t0, $a4, $a5
	bne	$a3, $t1, .LBB81_12
	b	.LBB81_14
.LBB81_11:
	addi.d	$a6, $a5, 3
.LBB81_12:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a6
	alsl.d	$a2, $a6, $a2, 2
	alsl.d	$a1, $a6, $a1, 2
	.p2align	4, , 16
.LBB81_13:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	slt	$a3, $a4, $a3
	masknez	$a4, $t0, $a3
	maskeqz	$a3, $a6, $a3
	or	$t0, $a3, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a6, $a6, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB81_13
.LBB81_14:                              # %"_ZSt10__invoke_rIiRZ4mainE4$_25JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $t0, 0
	ret
.Lfunc_end81:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end81-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB82_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB82_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB82_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_25)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_25)
.LBB82_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end82:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end82-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 4
	ori	$a0, $zero, 3
	blt	$a3, $a4, .LBB83_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a4, $zero, 3
	ori	$a0, $zero, 3
	.p2align	4, , 16
.LBB83_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB83_2
.LBB83_3:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_24JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end83:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end83-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB84_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB84_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB84_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_24)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_24)
.LBB84_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end84:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end84-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI85_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
.LCPI85_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI85_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a4, $zero, 4
	ori	$t0, $zero, 3
	blt	$a0, $a4, .LBB85_14
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$a6, $zero, 3
	ori	$t0, $zero, 3
	bltu	$a3, $a4, .LBB85_12
# %bb.2:                                # %vector.main.loop.iter.check
	ori	$a5, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a3, $a5, .LBB85_4
# %bb.3:
	move	$a5, $zero
	ori	$a7, $zero, 3
	ori	$t0, $zero, 3
	b	.LBB85_8
.LBB85_4:                               # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	ori	$a6, $zero, 3
	move	$a7, $a3
	bstrins.d	$a7, $a6, 3, 0
	pcalau12i	$a6, %pc_hi20(.LCPI85_0)
	xvld	$xr1, $a6, %pc_lo12(.LCPI85_0)
	addi.d	$a6, $a1, 44
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$t0, $a2, 44
	move	$t1, $a5
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB85_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvld	$xr5, $t0, -32
	xvld	$xr6, $t0, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvfcmp.clt.s	$xr3, $xr5, $xr3
	xvfcmp.clt.s	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr0, $xr1, $xr3
	xvbitsel.v	$xr2, $xr2, $xr7, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a6, $a6, 64
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB85_5
# %bb.6:                                # %middle.block
	pcalau12i	$a6, %pc_hi20(.LCPI85_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI85_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a6, $xr0, 0
	xor	$t0, $a6, $a4
	sltui	$t0, $t0, 1
	masknez	$a6, $a6, $t0
	ori	$t1, $zero, 3
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $a6
	beq	$a3, $a5, .LBB85_14
# %bb.7:                                # %vec.epilog.iter.check
	andi	$a6, $a3, 12
	beqz	$a6, .LBB85_11
.LBB85_8:                               # %vec.epilog.ph
	addi.d	$a6, $t0, -3
	sltui	$a6, $a6, 1
	masknez	$t0, $t0, $a6
	maskeqz	$a6, $a4, $a6
	or	$t0, $a6, $t0
	move	$t1, $a3
	bstrins.d	$t1, $zero, 1, 0
	pcalau12i	$a6, %pc_hi20(.LCPI85_2)
	vld	$vr1, $a6, %pc_lo12(.LCPI85_2)
	ori	$a6, $a3, 3
	vreplgr2vr.w	$vr0, $t0
	vreplgr2vr.w	$vr2, $a7
	vadd.w	$vr1, $vr2, $vr1
	slli.d	$a7, $a5, 2
	addi.d	$t0, $a7, 12
	add.d	$a7, $a1, $t0
	add.d	$t0, $a2, $t0
	sub.d	$a5, $a5, $t1
	.p2align	4, , 16
.LBB85_9:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $t0, 0
	vfcmp.clt.s	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB85_9
# %bb.10:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	ori	$a7, $zero, 3
	maskeqz	$a4, $a7, $a4
	or	$t0, $a4, $a5
	bne	$a3, $t1, .LBB85_12
	b	.LBB85_14
.LBB85_11:
	addi.d	$a6, $a5, 3
.LBB85_12:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a6
	alsl.d	$a2, $a6, $a2, 2
	alsl.d	$a1, $a6, $a1, 2
	.p2align	4, , 16
.LBB85_13:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a3, $fcc0
	masknez	$a4, $t0, $a3
	maskeqz	$a3, $a6, $a3
	or	$t0, $a3, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a6, $a6, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB85_13
.LBB85_14:                              # %"_ZSt10__invoke_rIiRZ4mainE4$_25JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $t0, 0
	ret
.Lfunc_end85:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end85-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB86_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB86_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB86_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_25)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_25)
.LBB86_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end86:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end86-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 4
	ori	$a4, $zero, 3
	blt	$a0, $a3, .LBB87_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a2, 6
	addi.d	$a2, $a3, 6
	ori	$a3, $zero, 3
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB87_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a2, 0
	ld.h	$a6, $a1, 0
	slt	$a5, $a6, $a5
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a3, $a5
	or	$a4, $a5, $a4
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 2
	bne	$a0, $a3, .LBB87_2
.LBB87_3:                               # %"_ZSt10__invoke_rIsRZ4mainE4$_26JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a4
	ret
.Lfunc_end87:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end87-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB88_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB88_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB88_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_26)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_26)
.LBB88_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end88:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end88-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI89_0:
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
	.half	16                              # 0x10
	.half	17                              # 0x11
	.half	18                              # 0x12
.LCPI89_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI89_2:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 4
	ori	$t1, $zero, 3
	blt	$a0, $a3, .LBB89_14
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$t0, $zero, 3
	ori	$a4, $zero, 8
	ori	$t1, $zero, 3
	bltu	$a3, $a4, .LBB89_12
# %bb.2:                                # %vector.main.loop.iter.check
	ori	$a6, $zero, 3
	ori	$a5, $zero, 32
	lu12i.w	$a4, 8
	bgeu	$a3, $a5, .LBB89_4
# %bb.3:
	move	$a5, $zero
	ori	$a7, $zero, 3
	ori	$t1, $zero, 3
	b	.LBB89_8
.LBB89_4:                               # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 4, 0
	ori	$t0, $zero, 3
	move	$a7, $a3
	bstrins.d	$a7, $t0, 4, 0
	addi.d	$t0, $a1, 38
	pcalau12i	$t1, %pc_hi20(.LCPI89_0)
	xvld	$xr1, $t1, %pc_lo12(.LCPI89_0)
	xvreplgr2vr.h	$xr0, $a4
	addi.d	$t1, $a2, 38
	xvrepli.h	$xr3, 32
	move	$t2, $a5
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB89_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $t0, -32
	xvld	$xr5, $t0, 0
	xvld	$xr6, $t1, -32
	xvld	$xr7, $t1, 0
	xvaddi.hu	$xr8, $xr1, 16
	xvslt.h	$xr4, $xr6, $xr4
	xvslt.h	$xr5, $xr7, $xr5
	xvbitsel.v	$xr0, $xr0, $xr1, $xr4
	xvbitsel.v	$xr2, $xr2, $xr8, $xr5
	xvadd.h	$xr1, $xr1, $xr3
	addi.d	$t0, $t0, 64
	addi.d	$t2, $t2, -32
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB89_5
# %bb.6:                                # %middle.block
	pcalau12i	$t0, %pc_hi20(.LCPI89_1)
	xvld	$xr1, $t0, %pc_lo12(.LCPI89_1)
	xvmax.h	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.h	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	vpickve2gr.h	$t0, $vr0, 0
	bstrpick.d	$t1, $t0, 15, 0
	xor	$t1, $t1, $a4
	sltui	$t1, $t1, 1
	masknez	$t0, $t0, $t1
	ori	$t2, $zero, 3
	maskeqz	$t1, $t2, $t1
	or	$t1, $t1, $t0
	beq	$a3, $a5, .LBB89_14
# %bb.7:                                # %vec.epilog.iter.check
	andi	$t0, $a3, 24
	beqz	$t0, .LBB89_11
.LBB89_8:                               # %vec.epilog.ph
	bstrpick.d	$t0, $t1, 15, 0
	addi.d	$t0, $t0, -3
	sltui	$t0, $t0, 1
	masknez	$t1, $t1, $t0
	lu12i.w	$t2, -8
	maskeqz	$t0, $t2, $t0
	or	$t1, $t0, $t1
	move	$t2, $a3
	bstrins.d	$t2, $zero, 2, 0
	pcalau12i	$t0, %pc_hi20(.LCPI89_2)
	vld	$vr1, $t0, %pc_lo12(.LCPI89_2)
	move	$t0, $a3
	bstrins.d	$t0, $a6, 2, 0
	vreplgr2vr.h	$vr0, $t1
	vreplgr2vr.h	$vr2, $a7
	vadd.h	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 1
	addi.d	$a7, $a6, 6
	add.d	$a6, $a1, $a7
	add.d	$a7, $a2, $a7
	sub.d	$a5, $a5, $t2
	.p2align	4, , 16
.LBB89_9:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB89_9
# %bb.10:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.h	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a6, $a5, 15, 0
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 3
	maskeqz	$a4, $a6, $a4
	or	$t1, $a4, $a5
	bne	$a3, $t2, .LBB89_12
	b	.LBB89_14
.LBB89_11:
	addi.d	$t0, $a5, 3
.LBB89_12:                              # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $t0, $a2, 1
	alsl.d	$a1, $t0, $a1, 1
	.p2align	4, , 16
.LBB89_13:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a1, 0
	ld.h	$a4, $a2, 0
	slt	$a3, $a4, $a3
	masknez	$a4, $t1, $a3
	maskeqz	$a3, $t0, $a3
	or	$t1, $a3, $a4
	addi.d	$t0, $t0, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $t0, .LBB89_13
.LBB89_14:                              # %"_ZSt10__invoke_rIsRZ4mainE4$_27JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $t1
	ret
.Lfunc_end89:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end89-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB90_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB90_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB90_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_27)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_27)
.LBB90_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end90:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end90-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 4
	ori	$a0, $zero, 2
	blt	$a3, $a4, .LBB91_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a0, $zero, 2
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB91_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB91_2
.LBB91_3:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_28JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end91:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end91-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB92_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB92_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB92_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_28)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_28)
.LBB92_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end92:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end92-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI93_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
.LCPI93_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI93_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a4, $zero, 4
	ori	$t0, $zero, 2
	blt	$a0, $a4, .LBB93_15
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	bgeu	$a3, $a4, .LBB93_3
# %bb.2:
	ori	$t0, $zero, 2
	ori	$a7, $zero, 3
	b	.LBB93_13
.LBB93_3:                               # %vector.main.loop.iter.check
	ori	$a5, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a3, $a5, .LBB93_5
# %bb.4:
	move	$a5, $zero
	ori	$t0, $zero, 2
	ori	$a6, $zero, 3
	b	.LBB93_9
.LBB93_5:                               # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	ori	$a7, $zero, 3
	move	$a6, $a3
	bstrins.d	$a6, $a7, 3, 0
	pcalau12i	$a7, %pc_hi20(.LCPI93_0)
	xvld	$xr1, $a7, %pc_lo12(.LCPI93_0)
	addi.d	$a7, $a1, 44
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$t0, $a2, 44
	move	$t1, $a5
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB93_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a7, -32
	xvld	$xr4, $a7, 0
	xvld	$xr5, $t0, -32
	xvld	$xr6, $t0, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvslt.w	$xr3, $xr5, $xr3
	xvslt.w	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr0, $xr1, $xr3
	xvbitsel.v	$xr2, $xr2, $xr7, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a7, $a7, 64
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB93_6
# %bb.7:                                # %middle.block
	pcalau12i	$a7, %pc_hi20(.LCPI93_1)
	xvld	$xr1, $a7, %pc_lo12(.LCPI93_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a7, $xr0, 0
	xor	$t0, $a7, $a4
	sltui	$t0, $t0, 1
	masknez	$a7, $a7, $t0
	ori	$t1, $zero, 2
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $a7
	beq	$a3, $a5, .LBB93_15
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a7, $a3, 12
	beqz	$a7, .LBB93_12
.LBB93_9:                               # %vec.epilog.ph
	addi.d	$a7, $t0, -2
	sltui	$a7, $a7, 1
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $a4, $a7
	or	$t0, $a7, $t0
	move	$t1, $a3
	bstrins.d	$t1, $zero, 1, 0
	pcalau12i	$a7, %pc_hi20(.LCPI93_2)
	vld	$vr1, $a7, %pc_lo12(.LCPI93_2)
	ori	$a7, $a3, 3
	vreplgr2vr.w	$vr0, $t0
	vreplgr2vr.w	$vr2, $a6
	vadd.w	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 2
	addi.d	$t0, $a6, 12
	add.d	$a6, $a1, $t0
	add.d	$t0, $a2, $t0
	sub.d	$a5, $a5, $t1
	.p2align	4, , 16
.LBB93_10:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $t0, 0
	vslt.w	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB93_10
# %bb.11:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 2
	maskeqz	$a4, $a6, $a4
	or	$t0, $a4, $a5
	bne	$a3, $t1, .LBB93_13
	b	.LBB93_15
.LBB93_12:
	addi.d	$a7, $a5, 3
.LBB93_13:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a7
	alsl.d	$a2, $a7, $a2, 2
	alsl.d	$a1, $a7, $a1, 2
	.p2align	4, , 16
.LBB93_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	slt	$a3, $a4, $a3
	masknez	$a4, $t0, $a3
	maskeqz	$a3, $a7, $a3
	or	$t0, $a3, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB93_14
.LBB93_15:                              # %"_ZSt10__invoke_rIiRZ4mainE4$_29JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $t0, 0
	ret
.Lfunc_end93:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end93-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB94_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB94_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB94_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_29)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_29)
.LBB94_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end94:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end94-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 4
	ori	$a0, $zero, 2
	blt	$a3, $a4, .LBB95_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a0, $zero, 2
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB95_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB95_2
.LBB95_3:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_28JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end95:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end95-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB96_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB96_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB96_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_28)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_28)
.LBB96_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end96:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end96-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI97_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
.LCPI97_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI97_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a4, $zero, 4
	ori	$t0, $zero, 2
	blt	$a0, $a4, .LBB97_15
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	bgeu	$a3, $a4, .LBB97_3
# %bb.2:
	ori	$t0, $zero, 2
	ori	$a7, $zero, 3
	b	.LBB97_13
.LBB97_3:                               # %vector.main.loop.iter.check
	ori	$a5, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a3, $a5, .LBB97_5
# %bb.4:
	move	$a5, $zero
	ori	$t0, $zero, 2
	ori	$a6, $zero, 3
	b	.LBB97_9
.LBB97_5:                               # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	ori	$a7, $zero, 3
	move	$a6, $a3
	bstrins.d	$a6, $a7, 3, 0
	pcalau12i	$a7, %pc_hi20(.LCPI97_0)
	xvld	$xr1, $a7, %pc_lo12(.LCPI97_0)
	addi.d	$a7, $a1, 44
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$t0, $a2, 44
	move	$t1, $a5
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB97_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a7, -32
	xvld	$xr4, $a7, 0
	xvld	$xr5, $t0, -32
	xvld	$xr6, $t0, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvfcmp.clt.s	$xr3, $xr5, $xr3
	xvfcmp.clt.s	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr0, $xr1, $xr3
	xvbitsel.v	$xr2, $xr2, $xr7, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a7, $a7, 64
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB97_6
# %bb.7:                                # %middle.block
	pcalau12i	$a7, %pc_hi20(.LCPI97_1)
	xvld	$xr1, $a7, %pc_lo12(.LCPI97_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a7, $xr0, 0
	xor	$t0, $a7, $a4
	sltui	$t0, $t0, 1
	masknez	$a7, $a7, $t0
	ori	$t1, $zero, 2
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $a7
	beq	$a3, $a5, .LBB97_15
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a7, $a3, 12
	beqz	$a7, .LBB97_12
.LBB97_9:                               # %vec.epilog.ph
	addi.d	$a7, $t0, -2
	sltui	$a7, $a7, 1
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $a4, $a7
	or	$t0, $a7, $t0
	move	$t1, $a3
	bstrins.d	$t1, $zero, 1, 0
	pcalau12i	$a7, %pc_hi20(.LCPI97_2)
	vld	$vr1, $a7, %pc_lo12(.LCPI97_2)
	ori	$a7, $a3, 3
	vreplgr2vr.w	$vr0, $t0
	vreplgr2vr.w	$vr2, $a6
	vadd.w	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 2
	addi.d	$t0, $a6, 12
	add.d	$a6, $a1, $t0
	add.d	$t0, $a2, $t0
	sub.d	$a5, $a5, $t1
	.p2align	4, , 16
.LBB97_10:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $t0, 0
	vfcmp.clt.s	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB97_10
# %bb.11:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 2
	maskeqz	$a4, $a6, $a4
	or	$t0, $a4, $a5
	bne	$a3, $t1, .LBB97_13
	b	.LBB97_15
.LBB97_12:
	addi.d	$a7, $a5, 3
.LBB97_13:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a7
	alsl.d	$a2, $a7, $a2, 2
	alsl.d	$a1, $a7, $a1, 2
	.p2align	4, , 16
.LBB97_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a3, $fcc0
	masknez	$a4, $t0, $a3
	maskeqz	$a3, $a7, $a3
	or	$t0, $a3, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB97_14
.LBB97_15:                              # %"_ZSt10__invoke_rIiRZ4mainE4$_29JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $t0, 0
	ret
.Lfunc_end97:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end97-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB98_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB98_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB98_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_29)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_29)
.LBB98_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end98:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end98-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a4, $zero, 4
	ori	$a3, $zero, 2
	blt	$a0, $a4, .LBB99_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a2, 6
	addi.d	$a2, $a3, 6
	ori	$a3, $zero, 2
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB99_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a2, 0
	ld.h	$a6, $a1, 0
	slt	$a5, $a6, $a5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 2
	bne	$a0, $a4, .LBB99_2
.LBB99_3:                               # %"_ZSt10__invoke_rIsRZ4mainE4$_30JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.Lfunc_end99:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end99-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB100_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB100_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB100_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_30)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_30)
.LBB100_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end100:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end100-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI101_0:
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
	.half	16                              # 0x10
	.half	17                              # 0x11
	.half	18                              # 0x12
.LCPI101_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI101_2:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 4
	ori	$t1, $zero, 2
	blt	$a0, $a3, .LBB101_15
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$a4, $zero, 8
	bgeu	$a3, $a4, .LBB101_3
# %bb.2:
	ori	$t1, $zero, 2
	ori	$t0, $zero, 3
	b	.LBB101_13
.LBB101_3:                              # %vector.main.loop.iter.check
	ori	$a6, $zero, 3
	ori	$a5, $zero, 32
	lu12i.w	$a4, 8
	bgeu	$a3, $a5, .LBB101_5
# %bb.4:
	move	$a5, $zero
	ori	$t1, $zero, 2
	ori	$a7, $zero, 3
	b	.LBB101_9
.LBB101_5:                              # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 4, 0
	ori	$t0, $zero, 3
	move	$a7, $a3
	bstrins.d	$a7, $t0, 4, 0
	addi.d	$t0, $a1, 38
	pcalau12i	$t1, %pc_hi20(.LCPI101_0)
	xvld	$xr1, $t1, %pc_lo12(.LCPI101_0)
	xvreplgr2vr.h	$xr0, $a4
	addi.d	$t1, $a2, 38
	xvrepli.h	$xr3, 32
	move	$t2, $a5
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB101_6:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $t0, -32
	xvld	$xr5, $t0, 0
	xvld	$xr6, $t1, -32
	xvld	$xr7, $t1, 0
	xvaddi.hu	$xr8, $xr1, 16
	xvslt.h	$xr4, $xr6, $xr4
	xvslt.h	$xr5, $xr7, $xr5
	xvbitsel.v	$xr0, $xr0, $xr1, $xr4
	xvbitsel.v	$xr2, $xr2, $xr8, $xr5
	xvadd.h	$xr1, $xr1, $xr3
	addi.d	$t0, $t0, 64
	addi.d	$t2, $t2, -32
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB101_6
# %bb.7:                                # %middle.block
	pcalau12i	$t0, %pc_hi20(.LCPI101_1)
	xvld	$xr1, $t0, %pc_lo12(.LCPI101_1)
	xvmax.h	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.h	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	vpickve2gr.h	$t0, $vr0, 0
	bstrpick.d	$t1, $t0, 15, 0
	xor	$t1, $t1, $a4
	sltui	$t1, $t1, 1
	masknez	$t0, $t0, $t1
	ori	$t2, $zero, 2
	maskeqz	$t1, $t2, $t1
	or	$t1, $t1, $t0
	beq	$a3, $a5, .LBB101_15
# %bb.8:                                # %vec.epilog.iter.check
	andi	$t0, $a3, 24
	beqz	$t0, .LBB101_12
.LBB101_9:                              # %vec.epilog.ph
	bstrpick.d	$t0, $t1, 15, 0
	addi.d	$t0, $t0, -2
	sltui	$t0, $t0, 1
	masknez	$t1, $t1, $t0
	lu12i.w	$t2, -8
	maskeqz	$t0, $t2, $t0
	or	$t1, $t0, $t1
	move	$t2, $a3
	bstrins.d	$t2, $zero, 2, 0
	pcalau12i	$t0, %pc_hi20(.LCPI101_2)
	vld	$vr1, $t0, %pc_lo12(.LCPI101_2)
	move	$t0, $a3
	bstrins.d	$t0, $a6, 2, 0
	vreplgr2vr.h	$vr0, $t1
	vreplgr2vr.h	$vr2, $a7
	vadd.h	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 1
	addi.d	$a7, $a6, 6
	add.d	$a6, $a1, $a7
	add.d	$a7, $a2, $a7
	sub.d	$a5, $a5, $t2
	.p2align	4, , 16
.LBB101_10:                             # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB101_10
# %bb.11:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.h	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a6, $a5, 15, 0
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 2
	maskeqz	$a4, $a6, $a4
	or	$t1, $a4, $a5
	bne	$a3, $t2, .LBB101_13
	b	.LBB101_15
.LBB101_12:
	addi.d	$t0, $a5, 3
.LBB101_13:                             # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $t0, $a2, 1
	alsl.d	$a1, $t0, $a1, 1
	.p2align	4, , 16
.LBB101_14:                             # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a1, 0
	ld.h	$a4, $a2, 0
	slt	$a3, $a4, $a3
	masknez	$a4, $t1, $a3
	maskeqz	$a3, $t0, $a3
	or	$t1, $a3, $a4
	addi.d	$t0, $t0, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $t0, .LBB101_14
.LBB101_15:                             # %"_ZSt10__invoke_rIsRZ4mainE4$_31JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $t1
	ret
.Lfunc_end101:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end101-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB102_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB102_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB102_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_31)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_31)
.LBB102_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end102:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end102-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 4
	blt	$a3, $a0, .LBB103_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a0, $zero, 4
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB103_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB103_2
.LBB103_3:                              # %"_ZSt10__invoke_rIiRZ4mainE4$_32JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end103:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end103-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB104_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB104_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB104_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_32)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_32)
.LBB104_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end104:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end104-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI105_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
.LCPI105_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI105_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$t0, $zero, 4
	blt	$a0, $t0, .LBB105_14
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$t0, $zero, 4
	ori	$a7, $zero, 3
	bltu	$a3, $t0, .LBB105_12
# %bb.2:                                # %vector.main.loop.iter.check
	ori	$a5, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a3, $a5, .LBB105_4
# %bb.3:
	move	$a5, $zero
	ori	$t0, $zero, 4
	ori	$a6, $zero, 3
	b	.LBB105_8
.LBB105_4:                              # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	ori	$a7, $zero, 3
	move	$a6, $a3
	bstrins.d	$a6, $a7, 3, 0
	pcalau12i	$a7, %pc_hi20(.LCPI105_0)
	xvld	$xr1, $a7, %pc_lo12(.LCPI105_0)
	addi.d	$a7, $a1, 44
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$t0, $a2, 44
	move	$t1, $a5
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB105_5:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a7, -32
	xvld	$xr4, $a7, 0
	xvld	$xr5, $t0, -32
	xvld	$xr6, $t0, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvslt.w	$xr3, $xr5, $xr3
	xvslt.w	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr0, $xr1, $xr3
	xvbitsel.v	$xr2, $xr2, $xr7, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a7, $a7, 64
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB105_5
# %bb.6:                                # %middle.block
	pcalau12i	$a7, %pc_hi20(.LCPI105_1)
	xvld	$xr1, $a7, %pc_lo12(.LCPI105_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a7, $xr0, 0
	xor	$t0, $a7, $a4
	sltui	$t0, $t0, 1
	masknez	$a7, $a7, $t0
	ori	$t1, $zero, 4
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $a7
	beq	$a3, $a5, .LBB105_14
# %bb.7:                                # %vec.epilog.iter.check
	andi	$a7, $a3, 12
	beqz	$a7, .LBB105_11
.LBB105_8:                              # %vec.epilog.ph
	addi.d	$a7, $t0, -4
	sltui	$a7, $a7, 1
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $a4, $a7
	or	$t0, $a7, $t0
	move	$t1, $a3
	bstrins.d	$t1, $zero, 1, 0
	pcalau12i	$a7, %pc_hi20(.LCPI105_2)
	vld	$vr1, $a7, %pc_lo12(.LCPI105_2)
	ori	$a7, $a3, 3
	vreplgr2vr.w	$vr0, $t0
	vreplgr2vr.w	$vr2, $a6
	vadd.w	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 2
	addi.d	$t0, $a6, 12
	add.d	$a6, $a1, $t0
	add.d	$t0, $a2, $t0
	sub.d	$a5, $a5, $t1
	.p2align	4, , 16
.LBB105_9:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $t0, 0
	vslt.w	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB105_9
# %bb.10:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 4
	maskeqz	$a4, $a6, $a4
	or	$t0, $a4, $a5
	bne	$a3, $t1, .LBB105_12
	b	.LBB105_14
.LBB105_11:
	addi.d	$a7, $a5, 3
.LBB105_12:                             # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a7
	alsl.d	$a2, $a7, $a2, 2
	alsl.d	$a1, $a7, $a1, 2
	.p2align	4, , 16
.LBB105_13:                             # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	slt	$a3, $a4, $a3
	masknez	$a4, $t0, $a3
	maskeqz	$a3, $a7, $a3
	or	$t0, $a3, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB105_13
.LBB105_14:                             # %"_ZSt10__invoke_rIiRZ4mainE4$_33JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $t0, 0
	ret
.Lfunc_end105:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end105-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB106_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB106_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB106_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_33)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_33)
.LBB106_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end106:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end106-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 4
	blt	$a3, $a0, .LBB107_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a0, $zero, 4
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB107_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB107_2
.LBB107_3:                              # %"_ZSt10__invoke_rIiRZ4mainE4$_32JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end107:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end107-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB108_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB108_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB108_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_32)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_32)
.LBB108_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end108:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end108-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI109_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
.LCPI109_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI109_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$t0, $zero, 4
	blt	$a0, $t0, .LBB109_14
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$t0, $zero, 4
	ori	$a6, $zero, 3
	bltu	$a3, $t0, .LBB109_12
# %bb.2:                                # %vector.main.loop.iter.check
	ori	$a5, $zero, 16
	lu12i.w	$a4, -524288
	bgeu	$a3, $a5, .LBB109_4
# %bb.3:
	move	$a5, $zero
	ori	$t0, $zero, 4
	ori	$a7, $zero, 3
	b	.LBB109_8
.LBB109_4:                              # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	ori	$a6, $zero, 3
	move	$a7, $a3
	bstrins.d	$a7, $a6, 3, 0
	pcalau12i	$a6, %pc_hi20(.LCPI109_0)
	xvld	$xr1, $a6, %pc_lo12(.LCPI109_0)
	addi.d	$a6, $a1, 44
	xvreplgr2vr.w	$xr0, $a4
	addi.d	$t0, $a2, 44
	move	$t1, $a5
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB109_5:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a6, 0
	xvld	$xr5, $t0, -32
	xvld	$xr6, $t0, 0
	xvaddi.wu	$xr7, $xr1, 8
	xvfcmp.clt.s	$xr3, $xr5, $xr3
	xvfcmp.clt.s	$xr4, $xr6, $xr4
	xvbitsel.v	$xr0, $xr0, $xr1, $xr3
	xvbitsel.v	$xr2, $xr2, $xr7, $xr4
	xvaddi.wu	$xr1, $xr1, 16
	addi.d	$a6, $a6, 64
	addi.d	$t1, $t1, -16
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB109_5
# %bb.6:                                # %middle.block
	pcalau12i	$a6, %pc_hi20(.LCPI109_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI109_1)
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a6, $xr0, 0
	xor	$t0, $a6, $a4
	sltui	$t0, $t0, 1
	masknez	$a6, $a6, $t0
	ori	$t1, $zero, 4
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $a6
	beq	$a3, $a5, .LBB109_14
# %bb.7:                                # %vec.epilog.iter.check
	andi	$a6, $a3, 12
	beqz	$a6, .LBB109_11
.LBB109_8:                              # %vec.epilog.ph
	addi.d	$a6, $t0, -4
	sltui	$a6, $a6, 1
	masknez	$t0, $t0, $a6
	maskeqz	$a6, $a4, $a6
	or	$t0, $a6, $t0
	move	$t1, $a3
	bstrins.d	$t1, $zero, 1, 0
	pcalau12i	$a6, %pc_hi20(.LCPI109_2)
	vld	$vr1, $a6, %pc_lo12(.LCPI109_2)
	ori	$a6, $a3, 3
	vreplgr2vr.w	$vr0, $t0
	vreplgr2vr.w	$vr2, $a7
	vadd.w	$vr1, $vr2, $vr1
	slli.d	$a7, $a5, 2
	addi.d	$t0, $a7, 12
	add.d	$a7, $a1, $t0
	add.d	$t0, $a2, $t0
	sub.d	$a5, $a5, $t1
	.p2align	4, , 16
.LBB109_9:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $t0, 0
	vfcmp.clt.s	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB109_9
# %bb.10:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	ori	$a7, $zero, 4
	maskeqz	$a4, $a7, $a4
	or	$t0, $a4, $a5
	bne	$a3, $t1, .LBB109_12
	b	.LBB109_14
.LBB109_11:
	addi.d	$a6, $a5, 3
.LBB109_12:                             # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a6
	alsl.d	$a2, $a6, $a2, 2
	alsl.d	$a1, $a6, $a1, 2
	.p2align	4, , 16
.LBB109_13:                             # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a3, $fcc0
	masknez	$a4, $t0, $a3
	maskeqz	$a3, $a6, $a3
	or	$t0, $a3, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a6, $a6, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB109_13
.LBB109_14:                             # %"_ZSt10__invoke_rIiRZ4mainE4$_33JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $t0, 0
	ret
.Lfunc_end109:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end109-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB110_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB110_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB110_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_33)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_33)
.LBB110_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end110:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end110-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 4
	blt	$a0, $a3, .LBB111_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a2, 6
	addi.d	$a2, $a3, 6
	ori	$a3, $zero, 4
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB111_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a2, 0
	ld.h	$a6, $a1, 0
	slt	$a5, $a6, $a5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 2
	bne	$a0, $a4, .LBB111_2
.LBB111_3:                              # %"_ZSt10__invoke_rIsRZ4mainE4$_34JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.Lfunc_end111:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end111-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB112_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB112_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB112_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_34)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_34)
.LBB112_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end112:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end112-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI113_0:
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
	.half	16                              # 0x10
	.half	17                              # 0x11
	.half	18                              # 0x12
.LCPI113_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI113_2:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$t1, $zero, 4
	blt	$a0, $t1, .LBB113_15
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$a4, $zero, 8
	bgeu	$a3, $a4, .LBB113_3
# %bb.2:
	ori	$t1, $zero, 4
	ori	$t0, $zero, 3
	b	.LBB113_13
.LBB113_3:                              # %vector.main.loop.iter.check
	ori	$a6, $zero, 3
	ori	$a5, $zero, 32
	lu12i.w	$a4, 8
	bgeu	$a3, $a5, .LBB113_5
# %bb.4:
	move	$a5, $zero
	ori	$t1, $zero, 4
	ori	$a7, $zero, 3
	b	.LBB113_9
.LBB113_5:                              # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 4, 0
	ori	$t0, $zero, 3
	move	$a7, $a3
	bstrins.d	$a7, $t0, 4, 0
	addi.d	$t0, $a1, 38
	pcalau12i	$t1, %pc_hi20(.LCPI113_0)
	xvld	$xr1, $t1, %pc_lo12(.LCPI113_0)
	xvreplgr2vr.h	$xr0, $a4
	addi.d	$t1, $a2, 38
	xvrepli.h	$xr3, 32
	move	$t2, $a5
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB113_6:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $t0, -32
	xvld	$xr5, $t0, 0
	xvld	$xr6, $t1, -32
	xvld	$xr7, $t1, 0
	xvaddi.hu	$xr8, $xr1, 16
	xvslt.h	$xr4, $xr6, $xr4
	xvslt.h	$xr5, $xr7, $xr5
	xvbitsel.v	$xr0, $xr0, $xr1, $xr4
	xvbitsel.v	$xr2, $xr2, $xr8, $xr5
	xvadd.h	$xr1, $xr1, $xr3
	addi.d	$t0, $t0, 64
	addi.d	$t2, $t2, -32
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB113_6
# %bb.7:                                # %middle.block
	pcalau12i	$t0, %pc_hi20(.LCPI113_1)
	xvld	$xr1, $t0, %pc_lo12(.LCPI113_1)
	xvmax.h	$xr0, $xr0, $xr2
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.h	$xr1, $xr1, 1
	xvmax.h	$xr0, $xr0, $xr1
	vpickve2gr.h	$t0, $vr0, 0
	bstrpick.d	$t1, $t0, 15, 0
	xor	$t1, $t1, $a4
	sltui	$t1, $t1, 1
	masknez	$t0, $t0, $t1
	ori	$t2, $zero, 4
	maskeqz	$t1, $t2, $t1
	or	$t1, $t1, $t0
	beq	$a3, $a5, .LBB113_15
# %bb.8:                                # %vec.epilog.iter.check
	andi	$t0, $a3, 24
	beqz	$t0, .LBB113_12
.LBB113_9:                              # %vec.epilog.ph
	bstrpick.d	$t0, $t1, 15, 0
	addi.d	$t0, $t0, -4
	sltui	$t0, $t0, 1
	masknez	$t1, $t1, $t0
	lu12i.w	$t2, -8
	maskeqz	$t0, $t2, $t0
	or	$t1, $t0, $t1
	move	$t2, $a3
	bstrins.d	$t2, $zero, 2, 0
	pcalau12i	$t0, %pc_hi20(.LCPI113_2)
	vld	$vr1, $t0, %pc_lo12(.LCPI113_2)
	move	$t0, $a3
	bstrins.d	$t0, $a6, 2, 0
	vreplgr2vr.h	$vr0, $t1
	vreplgr2vr.h	$vr2, $a7
	vadd.h	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 1
	addi.d	$a7, $a6, 6
	add.d	$a6, $a1, $a7
	add.d	$a7, $a2, $a7
	sub.d	$a5, $a5, $t2
	.p2align	4, , 16
.LBB113_10:                             # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB113_10
# %bb.11:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vreplvei.h	$vr1, $vr0, 1
	vmax.h	$vr0, $vr0, $vr1
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a6, $a5, 15, 0
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 4
	maskeqz	$a4, $a6, $a4
	or	$t1, $a4, $a5
	bne	$a3, $t2, .LBB113_13
	b	.LBB113_15
.LBB113_12:
	addi.d	$t0, $a5, 3
.LBB113_13:                             # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $t0, $a2, 1
	alsl.d	$a1, $t0, $a1, 1
	.p2align	4, , 16
.LBB113_14:                             # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a1, 0
	ld.h	$a4, $a2, 0
	slt	$a3, $a4, $a3
	masknez	$a4, $t1, $a3
	maskeqz	$a3, $t0, $a3
	or	$t1, $a3, $a4
	addi.d	$t0, $t0, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $t0, .LBB113_14
.LBB113_15:                             # %"_ZSt10__invoke_rIsRZ4mainE4$_35JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $t1
	ret
.Lfunc_end113:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end113-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB114_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB114_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB114_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_35)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_35)
.LBB114_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end114:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end114-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_find_last.cpp
	.type	_GLOBAL__sub_I_find_last.cpp,@function
_GLOBAL__sub_I_find_last.cpp:           # @_GLOBAL__sub_I_find_last.cpp
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$a0, $a0, %pc_lo12(_ZL3rng)
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1393
	st.d	$a2, $a0, 0
	addi.d	$a1, $a0, 8
	ori	$a3, $zero, 1
	lu12i.w	$a4, 442488
	ori	$a4, $a4, 2405
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB115_1:                              # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $a1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a5, .LBB115_1
# %bb.2:                                # %__cxx_global_var_init.exit
	ori	$a1, $zero, 624
	stptr.d	$a1, $a0, 4992
	ret
.Lfunc_end115:
	.size	_GLOBAL__sub_I_find_last.cpp, .Lfunc_end115-_GLOBAL__sub_I_find_last.cpp
                                        # -- End function
	.type	_ZL3rng,@object                 # @_ZL3rng
	.local	_ZL3rng
	.comm	_ZL3rng,5000,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"findlast_icmp_s32_true_update"
	.size	.L.str, 30

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"findlast_fcmp_s32_true_update"
	.size	.L.str.1, 30

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"findlast_icmp_s16_true_update"
	.size	.L.str.2, 30

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"findlast_icmp_s32_false_update"
	.size	.L.str.3, 31

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"findlast_fcmp_s32_false_update"
	.size	.L.str.4, 31

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"findlast_icmp_s16_false_update"
	.size	.L.str.5, 31

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"findlast_icmp_s32_start_TC"
	.size	.L.str.6, 27

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"findlast_fcmp_s32_start_TC"
	.size	.L.str.7, 27

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"findlast_icmp_s16_start_TC"
	.size	.L.str.8, 27

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"findlast_icmp_s32_inc_2"
	.size	.L.str.9, 24

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"findlast_fcmp_s32_inc_2"
	.size	.L.str.10, 24

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"findlast_icmp_s16_inc_2"
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"findlast_icmp_s32_start_decreasing_induction"
	.size	.L.str.12, 45

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"findlast_fcmp_s32_start_decreasing_induction"
	.size	.L.str.13, 45

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"findlast_icmp_s16_start_decreasing_induction"
	.size	.L.str.14, 45

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"findlast_icmp_s32_iv_start_3"
	.size	.L.str.15, 29

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"findlast_fcmp_s32_iv_start_3"
	.size	.L.str.16, 29

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"findlast_icmp_s16_iv_start_3"
	.size	.L.str.17, 29

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"findlast_icmp_s32_start_3_iv_start_3"
	.size	.L.str.18, 37

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"findlast_fcmp_s32_start_3_iv_start_3"
	.size	.L.str.19, 37

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"findlast_icmp_s16_start_3_iv_start_3"
	.size	.L.str.20, 37

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"findlast_icmp_s32_start_2_iv_start_3"
	.size	.L.str.21, 37

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"findlast_fcmp_s32_start_2_iv_start_3"
	.size	.L.str.22, 37

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"findlast_icmp_s16_start_2_iv_start_3"
	.size	.L.str.23, 37

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"findlast_icmp_s32_start_4_iv_start_3"
	.size	.L.str.24, 37

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"findlast_fcmp_s32_start_4_iv_start_3"
	.size	.L.str.25, 37

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"findlast_icmp_s16_start_4_iv_start_3"
	.size	.L.str.26, 37

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Checking "
	.size	.L.str.27, 10

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"\n"
	.size	.L.str.28, 2

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Miscompare\n"
	.size	.L.str.29, 12

	.type	_ZTIZ4mainE3$_0,@object         # @"_ZTIZ4mainE3$_0"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_0:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_0
	.size	_ZTIZ4mainE3$_0, 16

	.type	_ZTSZ4mainE3$_0,@object         # @"_ZTSZ4mainE3$_0"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_0:
	.asciz	"Z4mainE3$_0"
	.size	_ZTSZ4mainE3$_0, 12

	.type	_ZTIZ4mainE3$_1,@object         # @"_ZTIZ4mainE3$_1"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_1:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_1
	.size	_ZTIZ4mainE3$_1, 16

	.type	_ZTSZ4mainE3$_1,@object         # @"_ZTSZ4mainE3$_1"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_1:
	.asciz	"Z4mainE3$_1"
	.size	_ZTSZ4mainE3$_1, 12

	.type	_ZTIZ4mainE3$_2,@object         # @"_ZTIZ4mainE3$_2"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_2:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_2
	.size	_ZTIZ4mainE3$_2, 16

	.type	_ZTSZ4mainE3$_2,@object         # @"_ZTSZ4mainE3$_2"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_2:
	.asciz	"Z4mainE3$_2"
	.size	_ZTSZ4mainE3$_2, 12

	.type	_ZTIZ4mainE3$_3,@object         # @"_ZTIZ4mainE3$_3"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_3:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_3
	.size	_ZTIZ4mainE3$_3, 16

	.type	_ZTSZ4mainE3$_3,@object         # @"_ZTSZ4mainE3$_3"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_3:
	.asciz	"Z4mainE3$_3"
	.size	_ZTSZ4mainE3$_3, 12

	.type	_ZTIZ4mainE3$_4,@object         # @"_ZTIZ4mainE3$_4"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_4:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_4
	.size	_ZTIZ4mainE3$_4, 16

	.type	_ZTSZ4mainE3$_4,@object         # @"_ZTSZ4mainE3$_4"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_4:
	.asciz	"Z4mainE3$_4"
	.size	_ZTSZ4mainE3$_4, 12

	.type	_ZTIZ4mainE3$_5,@object         # @"_ZTIZ4mainE3$_5"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_5:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_5
	.size	_ZTIZ4mainE3$_5, 16

	.type	_ZTSZ4mainE3$_5,@object         # @"_ZTSZ4mainE3$_5"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_5:
	.asciz	"Z4mainE3$_5"
	.size	_ZTSZ4mainE3$_5, 12

	.type	_ZTIZ4mainE3$_6,@object         # @"_ZTIZ4mainE3$_6"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_6:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_6
	.size	_ZTIZ4mainE3$_6, 16

	.type	_ZTSZ4mainE3$_6,@object         # @"_ZTSZ4mainE3$_6"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_6:
	.asciz	"Z4mainE3$_6"
	.size	_ZTSZ4mainE3$_6, 12

	.type	_ZTIZ4mainE3$_7,@object         # @"_ZTIZ4mainE3$_7"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_7:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_7
	.size	_ZTIZ4mainE3$_7, 16

	.type	_ZTSZ4mainE3$_7,@object         # @"_ZTSZ4mainE3$_7"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_7:
	.asciz	"Z4mainE3$_7"
	.size	_ZTSZ4mainE3$_7, 12

	.type	_ZTIZ4mainE3$_8,@object         # @"_ZTIZ4mainE3$_8"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_8:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_8
	.size	_ZTIZ4mainE3$_8, 16

	.type	_ZTSZ4mainE3$_8,@object         # @"_ZTSZ4mainE3$_8"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_8:
	.asciz	"Z4mainE3$_8"
	.size	_ZTSZ4mainE3$_8, 12

	.type	_ZTIZ4mainE3$_9,@object         # @"_ZTIZ4mainE3$_9"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_9:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_9
	.size	_ZTIZ4mainE3$_9, 16

	.type	_ZTSZ4mainE3$_9,@object         # @"_ZTSZ4mainE3$_9"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_9:
	.asciz	"Z4mainE3$_9"
	.size	_ZTSZ4mainE3$_9, 12

	.type	_ZTIZ4mainE4$_10,@object        # @"_ZTIZ4mainE4$_10"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_10:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_10
	.size	_ZTIZ4mainE4$_10, 16

	.type	_ZTSZ4mainE4$_10,@object        # @"_ZTSZ4mainE4$_10"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_10:
	.asciz	"Z4mainE4$_10"
	.size	_ZTSZ4mainE4$_10, 13

	.type	_ZTIZ4mainE4$_11,@object        # @"_ZTIZ4mainE4$_11"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_11:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_11
	.size	_ZTIZ4mainE4$_11, 16

	.type	_ZTSZ4mainE4$_11,@object        # @"_ZTSZ4mainE4$_11"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_11:
	.asciz	"Z4mainE4$_11"
	.size	_ZTSZ4mainE4$_11, 13

	.type	_ZTIZ4mainE4$_12,@object        # @"_ZTIZ4mainE4$_12"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_12:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_12
	.size	_ZTIZ4mainE4$_12, 16

	.type	_ZTSZ4mainE4$_12,@object        # @"_ZTSZ4mainE4$_12"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_12:
	.asciz	"Z4mainE4$_12"
	.size	_ZTSZ4mainE4$_12, 13

	.type	_ZTIZ4mainE4$_13,@object        # @"_ZTIZ4mainE4$_13"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_13:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_13
	.size	_ZTIZ4mainE4$_13, 16

	.type	_ZTSZ4mainE4$_13,@object        # @"_ZTSZ4mainE4$_13"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_13:
	.asciz	"Z4mainE4$_13"
	.size	_ZTSZ4mainE4$_13, 13

	.type	_ZTIZ4mainE4$_14,@object        # @"_ZTIZ4mainE4$_14"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_14:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_14
	.size	_ZTIZ4mainE4$_14, 16

	.type	_ZTSZ4mainE4$_14,@object        # @"_ZTSZ4mainE4$_14"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_14:
	.asciz	"Z4mainE4$_14"
	.size	_ZTSZ4mainE4$_14, 13

	.type	_ZTIZ4mainE4$_15,@object        # @"_ZTIZ4mainE4$_15"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_15:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_15
	.size	_ZTIZ4mainE4$_15, 16

	.type	_ZTSZ4mainE4$_15,@object        # @"_ZTSZ4mainE4$_15"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_15:
	.asciz	"Z4mainE4$_15"
	.size	_ZTSZ4mainE4$_15, 13

	.type	_ZTIZ4mainE4$_16,@object        # @"_ZTIZ4mainE4$_16"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_16:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_16
	.size	_ZTIZ4mainE4$_16, 16

	.type	_ZTSZ4mainE4$_16,@object        # @"_ZTSZ4mainE4$_16"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_16:
	.asciz	"Z4mainE4$_16"
	.size	_ZTSZ4mainE4$_16, 13

	.type	_ZTIZ4mainE4$_17,@object        # @"_ZTIZ4mainE4$_17"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_17:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_17
	.size	_ZTIZ4mainE4$_17, 16

	.type	_ZTSZ4mainE4$_17,@object        # @"_ZTSZ4mainE4$_17"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_17:
	.asciz	"Z4mainE4$_17"
	.size	_ZTSZ4mainE4$_17, 13

	.type	_ZTIZ4mainE4$_18,@object        # @"_ZTIZ4mainE4$_18"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_18:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_18
	.size	_ZTIZ4mainE4$_18, 16

	.type	_ZTSZ4mainE4$_18,@object        # @"_ZTSZ4mainE4$_18"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_18:
	.asciz	"Z4mainE4$_18"
	.size	_ZTSZ4mainE4$_18, 13

	.type	_ZTIZ4mainE4$_19,@object        # @"_ZTIZ4mainE4$_19"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_19:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_19
	.size	_ZTIZ4mainE4$_19, 16

	.type	_ZTSZ4mainE4$_19,@object        # @"_ZTSZ4mainE4$_19"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_19:
	.asciz	"Z4mainE4$_19"
	.size	_ZTSZ4mainE4$_19, 13

	.type	_ZTIZ4mainE4$_20,@object        # @"_ZTIZ4mainE4$_20"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_20:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_20
	.size	_ZTIZ4mainE4$_20, 16

	.type	_ZTSZ4mainE4$_20,@object        # @"_ZTSZ4mainE4$_20"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_20:
	.asciz	"Z4mainE4$_20"
	.size	_ZTSZ4mainE4$_20, 13

	.type	_ZTIZ4mainE4$_21,@object        # @"_ZTIZ4mainE4$_21"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_21:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_21
	.size	_ZTIZ4mainE4$_21, 16

	.type	_ZTSZ4mainE4$_21,@object        # @"_ZTSZ4mainE4$_21"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_21:
	.asciz	"Z4mainE4$_21"
	.size	_ZTSZ4mainE4$_21, 13

	.type	_ZTIZ4mainE4$_22,@object        # @"_ZTIZ4mainE4$_22"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_22:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_22
	.size	_ZTIZ4mainE4$_22, 16

	.type	_ZTSZ4mainE4$_22,@object        # @"_ZTSZ4mainE4$_22"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_22:
	.asciz	"Z4mainE4$_22"
	.size	_ZTSZ4mainE4$_22, 13

	.type	_ZTIZ4mainE4$_23,@object        # @"_ZTIZ4mainE4$_23"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_23:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_23
	.size	_ZTIZ4mainE4$_23, 16

	.type	_ZTSZ4mainE4$_23,@object        # @"_ZTSZ4mainE4$_23"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_23:
	.asciz	"Z4mainE4$_23"
	.size	_ZTSZ4mainE4$_23, 13

	.type	_ZTIZ4mainE4$_24,@object        # @"_ZTIZ4mainE4$_24"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_24:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_24
	.size	_ZTIZ4mainE4$_24, 16

	.type	_ZTSZ4mainE4$_24,@object        # @"_ZTSZ4mainE4$_24"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_24:
	.asciz	"Z4mainE4$_24"
	.size	_ZTSZ4mainE4$_24, 13

	.type	_ZTIZ4mainE4$_25,@object        # @"_ZTIZ4mainE4$_25"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_25:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_25
	.size	_ZTIZ4mainE4$_25, 16

	.type	_ZTSZ4mainE4$_25,@object        # @"_ZTSZ4mainE4$_25"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_25:
	.asciz	"Z4mainE4$_25"
	.size	_ZTSZ4mainE4$_25, 13

	.type	_ZTIZ4mainE4$_26,@object        # @"_ZTIZ4mainE4$_26"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_26:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_26
	.size	_ZTIZ4mainE4$_26, 16

	.type	_ZTSZ4mainE4$_26,@object        # @"_ZTSZ4mainE4$_26"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_26:
	.asciz	"Z4mainE4$_26"
	.size	_ZTSZ4mainE4$_26, 13

	.type	_ZTIZ4mainE4$_27,@object        # @"_ZTIZ4mainE4$_27"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_27:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_27
	.size	_ZTIZ4mainE4$_27, 16

	.type	_ZTSZ4mainE4$_27,@object        # @"_ZTSZ4mainE4$_27"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_27:
	.asciz	"Z4mainE4$_27"
	.size	_ZTSZ4mainE4$_27, 13

	.type	_ZTIZ4mainE4$_28,@object        # @"_ZTIZ4mainE4$_28"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_28:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_28
	.size	_ZTIZ4mainE4$_28, 16

	.type	_ZTSZ4mainE4$_28,@object        # @"_ZTSZ4mainE4$_28"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_28:
	.asciz	"Z4mainE4$_28"
	.size	_ZTSZ4mainE4$_28, 13

	.type	_ZTIZ4mainE4$_29,@object        # @"_ZTIZ4mainE4$_29"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_29:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_29
	.size	_ZTIZ4mainE4$_29, 16

	.type	_ZTSZ4mainE4$_29,@object        # @"_ZTSZ4mainE4$_29"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_29:
	.asciz	"Z4mainE4$_29"
	.size	_ZTSZ4mainE4$_29, 13

	.type	_ZTIZ4mainE4$_30,@object        # @"_ZTIZ4mainE4$_30"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_30:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_30
	.size	_ZTIZ4mainE4$_30, 16

	.type	_ZTSZ4mainE4$_30,@object        # @"_ZTSZ4mainE4$_30"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_30:
	.asciz	"Z4mainE4$_30"
	.size	_ZTSZ4mainE4$_30, 13

	.type	_ZTIZ4mainE4$_31,@object        # @"_ZTIZ4mainE4$_31"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_31:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_31
	.size	_ZTIZ4mainE4$_31, 16

	.type	_ZTSZ4mainE4$_31,@object        # @"_ZTSZ4mainE4$_31"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_31:
	.asciz	"Z4mainE4$_31"
	.size	_ZTSZ4mainE4$_31, 13

	.type	_ZTIZ4mainE4$_32,@object        # @"_ZTIZ4mainE4$_32"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_32:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_32
	.size	_ZTIZ4mainE4$_32, 16

	.type	_ZTSZ4mainE4$_32,@object        # @"_ZTSZ4mainE4$_32"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_32:
	.asciz	"Z4mainE4$_32"
	.size	_ZTSZ4mainE4$_32, 13

	.type	_ZTIZ4mainE4$_33,@object        # @"_ZTIZ4mainE4$_33"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_33:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_33
	.size	_ZTIZ4mainE4$_33, 16

	.type	_ZTSZ4mainE4$_33,@object        # @"_ZTSZ4mainE4$_33"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_33:
	.asciz	"Z4mainE4$_33"
	.size	_ZTSZ4mainE4$_33, 13

	.type	_ZTIZ4mainE4$_34,@object        # @"_ZTIZ4mainE4$_34"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_34:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_34
	.size	_ZTIZ4mainE4$_34, 16

	.type	_ZTSZ4mainE4$_34,@object        # @"_ZTSZ4mainE4$_34"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_34:
	.asciz	"Z4mainE4$_34"
	.size	_ZTSZ4mainE4$_34, 13

	.type	_ZTIZ4mainE4$_35,@object        # @"_ZTIZ4mainE4$_35"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_35:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_35
	.size	_ZTIZ4mainE4$_35, 16

	.type	_ZTSZ4mainE4$_35,@object        # @"_ZTSZ4mainE4$_35"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_35:
	.asciz	"Z4mainE4$_35"
	.size	_ZTSZ4mainE4$_35, 13

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_find_last.cpp
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
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _GLOBAL__sub_I_find_last.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZL3rng
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt4cerr
	.addrsig_sym _ZTIZ4mainE3$_0
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSZ4mainE3$_0
	.addrsig_sym _ZTIZ4mainE3$_1
	.addrsig_sym _ZTSZ4mainE3$_1
	.addrsig_sym _ZTIZ4mainE3$_2
	.addrsig_sym _ZTSZ4mainE3$_2
	.addrsig_sym _ZTIZ4mainE3$_3
	.addrsig_sym _ZTSZ4mainE3$_3
	.addrsig_sym _ZTIZ4mainE3$_4
	.addrsig_sym _ZTSZ4mainE3$_4
	.addrsig_sym _ZTIZ4mainE3$_5
	.addrsig_sym _ZTSZ4mainE3$_5
	.addrsig_sym _ZTIZ4mainE3$_6
	.addrsig_sym _ZTSZ4mainE3$_6
	.addrsig_sym _ZTIZ4mainE3$_7
	.addrsig_sym _ZTSZ4mainE3$_7
	.addrsig_sym _ZTIZ4mainE3$_8
	.addrsig_sym _ZTSZ4mainE3$_8
	.addrsig_sym _ZTIZ4mainE3$_9
	.addrsig_sym _ZTSZ4mainE3$_9
	.addrsig_sym _ZTIZ4mainE4$_10
	.addrsig_sym _ZTSZ4mainE4$_10
	.addrsig_sym _ZTIZ4mainE4$_11
	.addrsig_sym _ZTSZ4mainE4$_11
	.addrsig_sym _ZTIZ4mainE4$_12
	.addrsig_sym _ZTSZ4mainE4$_12
	.addrsig_sym _ZTIZ4mainE4$_13
	.addrsig_sym _ZTSZ4mainE4$_13
	.addrsig_sym _ZTIZ4mainE4$_14
	.addrsig_sym _ZTSZ4mainE4$_14
	.addrsig_sym _ZTIZ4mainE4$_15
	.addrsig_sym _ZTSZ4mainE4$_15
	.addrsig_sym _ZTIZ4mainE4$_16
	.addrsig_sym _ZTSZ4mainE4$_16
	.addrsig_sym _ZTIZ4mainE4$_17
	.addrsig_sym _ZTSZ4mainE4$_17
	.addrsig_sym _ZTIZ4mainE4$_18
	.addrsig_sym _ZTSZ4mainE4$_18
	.addrsig_sym _ZTIZ4mainE4$_19
	.addrsig_sym _ZTSZ4mainE4$_19
	.addrsig_sym _ZTIZ4mainE4$_20
	.addrsig_sym _ZTSZ4mainE4$_20
	.addrsig_sym _ZTIZ4mainE4$_21
	.addrsig_sym _ZTSZ4mainE4$_21
	.addrsig_sym _ZTIZ4mainE4$_22
	.addrsig_sym _ZTSZ4mainE4$_22
	.addrsig_sym _ZTIZ4mainE4$_23
	.addrsig_sym _ZTSZ4mainE4$_23
	.addrsig_sym _ZTIZ4mainE4$_24
	.addrsig_sym _ZTSZ4mainE4$_24
	.addrsig_sym _ZTIZ4mainE4$_25
	.addrsig_sym _ZTSZ4mainE4$_25
	.addrsig_sym _ZTIZ4mainE4$_26
	.addrsig_sym _ZTSZ4mainE4$_26
	.addrsig_sym _ZTIZ4mainE4$_27
	.addrsig_sym _ZTSZ4mainE4$_27
	.addrsig_sym _ZTIZ4mainE4$_28
	.addrsig_sym _ZTSZ4mainE4$_28
	.addrsig_sym _ZTIZ4mainE4$_29
	.addrsig_sym _ZTSZ4mainE4$_29
	.addrsig_sym _ZTIZ4mainE4$_30
	.addrsig_sym _ZTSZ4mainE4$_30
	.addrsig_sym _ZTIZ4mainE4$_31
	.addrsig_sym _ZTSZ4mainE4$_31
	.addrsig_sym _ZTIZ4mainE4$_32
	.addrsig_sym _ZTSZ4mainE4$_32
	.addrsig_sym _ZTIZ4mainE4$_33
	.addrsig_sym _ZTSZ4mainE4$_33
	.addrsig_sym _ZTIZ4mainE4$_34
	.addrsig_sym _ZTSZ4mainE4$_34
	.addrsig_sym _ZTIZ4mainE4$_35
	.addrsig_sym _ZTSZ4mainE4$_35
