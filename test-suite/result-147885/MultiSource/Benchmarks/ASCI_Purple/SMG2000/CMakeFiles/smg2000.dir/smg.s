	.file	"smg.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_SMGCreate
.LCPI0_0:
	.word	200                             # 0xc8
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI0_1:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI0_2:
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.text
	.globl	hypre_SMGCreate
	.p2align	5
	.type	hypre_SMGCreate,@function
hypre_SMGCreate:                        # @hypre_SMGCreate
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 232
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$fp, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(hypre_InitializeTiming)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	st.w	$a0, $s0, 204
	st.w	$zero, $s0, 4
	vst	$vr0, $s0, 16
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_1)
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	st.d	$a0, $s0, 8
	vst	$vr0, $s0, 48
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	lu32i.d	$s1, 1
	st.d	$s1, $s0, 64
	st.w	$zero, $s0, 208
	vst	$vr0, $s0, 32
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	hypre_SMGCreate, .Lfunc_end0-hypre_SMGCreate
                                        # -- End function
	.globl	hypre_SMGDestroy                # -- Begin function hypre_SMGDestroy
	.p2align	5
	.type	hypre_SMGDestroy,@function
hypre_SMGDestroy:                       # @hypre_SMGDestroy
# %bb.0:
	beqz	$a0, .LBB1_16
# %bb.1:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 208
	blez	$a0, .LBB1_3
# %bb.2:
	ld.d	$a0, $fp, 216
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 224
	st.d	$zero, $fp, 216
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 224
.LBB1_3:
	ld.w	$a0, $fp, 32
	bltz	$a0, .LBB1_15
# %bb.4:                                # %.preheader
	move	$s0, $zero
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB1_7
# %bb.5:                                # %.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 168
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_SMGRelaxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 176
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_SMGResidualDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 184
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_SemiRestrictDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_SemiInterpDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 32
	addi.d	$s2, $s2, 1
	addi.w	$a0, $a0, -1
	addi.d	$s1, $s1, 8
	addi.w	$s0, $s0, 1
	blt	$s2, $a0, .LBB1_6
.LBB1_7:                                # %._crit_edge
	ld.d	$a0, $fp, 168
	slli.d	$s1, $s0, 3
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_SMGRelaxDestroy)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB1_9
# %bb.8:
	ld.d	$a0, $fp, 176
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_SMGResidualDestroy)
	jirl	$ra, $ra, 0
.LBB1_9:
	ld.d	$a0, $fp, 168
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 176
	st.d	$zero, $fp, 168
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 184
	st.d	$zero, $fp, 176
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 192
	st.d	$zero, $fp, 184
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 136
	ld.d	$a0, $a0, 0
	st.d	$zero, $fp, 192
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 144
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_StructGridDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 128
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 32
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB1_14
# %bb.10:                               # %.lr.ph93
	move	$s1, $zero
	ori	$s2, $zero, 8
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=1
	ld.d	$a0, $fp, 120
	ldx.d	$a0, $a0, $s2
	addi.d	$s1, $s1, 1
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 128
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 136
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 144
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 32
	addi.w	$a0, $a0, -1
	addi.d	$s2, $s2, 8
	bge	$s1, $a0, .LBB1_14
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 72
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructGridDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructGridDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 104
	ld.d	$a1, $fp, 112
	add.d	$a0, $a0, $s2
	ld.d	$s0, $a0, -8
	add.d	$a0, $a1, $s2
	ld.d	$s3, $a0, -8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	beq	$s0, $s3, .LBB1_11
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=1
	ld.d	$a0, $fp, 112
	add.d	$a0, $a0, $s2
	ld.d	$a0, $a0, -8
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	b	.LBB1_11
.LBB1_14:                               # %._crit_edge94
	ld.d	$a0, $fp, 88
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	st.d	$zero, $fp, 88
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $fp, 72
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	st.d	$zero, $fp, 80
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 104
	st.d	$zero, $fp, 96
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 112
	st.d	$zero, $fp, 104
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	st.d	$zero, $fp, 112
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 128
	st.d	$zero, $fp, 120
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 136
	st.d	$zero, $fp, 128
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 144
	st.d	$zero, $fp, 136
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 144
.LBB1_15:
	ld.w	$a0, $fp, 204
	pcaddu18i	$ra, %call36(hypre_FinalizeTiming)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB1_16:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	hypre_SMGDestroy, .Lfunc_end1-hypre_SMGDestroy
                                        # -- End function
	.globl	hypre_SMGSetMemoryUse           # -- Begin function hypre_SMGSetMemoryUse
	.p2align	5
	.type	hypre_SMGSetMemoryUse,@function
hypre_SMGSetMemoryUse:                  # @hypre_SMGSetMemoryUse
# %bb.0:
	st.w	$a1, $a0, 4
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	hypre_SMGSetMemoryUse, .Lfunc_end2-hypre_SMGSetMemoryUse
                                        # -- End function
	.globl	hypre_SMGSetTol                 # -- Begin function hypre_SMGSetTol
	.p2align	5
	.type	hypre_SMGSetTol,@function
hypre_SMGSetTol:                        # @hypre_SMGSetTol
# %bb.0:
	fst.d	$fa0, $a0, 8
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	hypre_SMGSetTol, .Lfunc_end3-hypre_SMGSetTol
                                        # -- End function
	.globl	hypre_SMGSetMaxIter             # -- Begin function hypre_SMGSetMaxIter
	.p2align	5
	.type	hypre_SMGSetMaxIter,@function
hypre_SMGSetMaxIter:                    # @hypre_SMGSetMaxIter
# %bb.0:
	st.w	$a1, $a0, 16
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	hypre_SMGSetMaxIter, .Lfunc_end4-hypre_SMGSetMaxIter
                                        # -- End function
	.globl	hypre_SMGSetRelChange           # -- Begin function hypre_SMGSetRelChange
	.p2align	5
	.type	hypre_SMGSetRelChange,@function
hypre_SMGSetRelChange:                  # @hypre_SMGSetRelChange
# %bb.0:
	st.w	$a1, $a0, 20
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	hypre_SMGSetRelChange, .Lfunc_end5-hypre_SMGSetRelChange
                                        # -- End function
	.globl	hypre_SMGSetZeroGuess           # -- Begin function hypre_SMGSetZeroGuess
	.p2align	5
	.type	hypre_SMGSetZeroGuess,@function
hypre_SMGSetZeroGuess:                  # @hypre_SMGSetZeroGuess
# %bb.0:
	st.w	$a1, $a0, 24
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	hypre_SMGSetZeroGuess, .Lfunc_end6-hypre_SMGSetZeroGuess
                                        # -- End function
	.globl	hypre_SMGSetNumPreRelax         # -- Begin function hypre_SMGSetNumPreRelax
	.p2align	5
	.type	hypre_SMGSetNumPreRelax,@function
hypre_SMGSetNumPreRelax:                # @hypre_SMGSetNumPreRelax
# %bb.0:
	ori	$a2, $zero, 1
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 36
	move	$a0, $zero
	ret
.Lfunc_end7:
	.size	hypre_SMGSetNumPreRelax, .Lfunc_end7-hypre_SMGSetNumPreRelax
                                        # -- End function
	.globl	hypre_SMGSetNumPostRelax        # -- Begin function hypre_SMGSetNumPostRelax
	.p2align	5
	.type	hypre_SMGSetNumPostRelax,@function
hypre_SMGSetNumPostRelax:               # @hypre_SMGSetNumPostRelax
# %bb.0:
	st.w	$a1, $a0, 40
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	hypre_SMGSetNumPostRelax, .Lfunc_end8-hypre_SMGSetNumPostRelax
                                        # -- End function
	.globl	hypre_SMGSetBase                # -- Begin function hypre_SMGSetBase
	.p2align	5
	.type	hypre_SMGSetBase,@function
hypre_SMGSetBase:                       # @hypre_SMGSetBase
# %bb.0:
	ld.w	$a3, $a1, 0
	st.w	$a3, $a0, 48
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 60
	ld.w	$a3, $a1, 4
	st.w	$a3, $a0, 52
	ld.w	$a3, $a2, 4
	st.w	$a3, $a0, 64
	ld.w	$a1, $a1, 8
	st.w	$a1, $a0, 56
	ld.w	$a1, $a2, 8
	st.w	$a1, $a0, 68
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	hypre_SMGSetBase, .Lfunc_end9-hypre_SMGSetBase
                                        # -- End function
	.globl	hypre_SMGSetLogging             # -- Begin function hypre_SMGSetLogging
	.p2align	5
	.type	hypre_SMGSetLogging,@function
hypre_SMGSetLogging:                    # @hypre_SMGSetLogging
# %bb.0:
	st.w	$a1, $a0, 208
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	hypre_SMGSetLogging, .Lfunc_end10-hypre_SMGSetLogging
                                        # -- End function
	.globl	hypre_SMGGetNumIterations       # -- Begin function hypre_SMGGetNumIterations
	.p2align	5
	.type	hypre_SMGGetNumIterations,@function
hypre_SMGGetNumIterations:              # @hypre_SMGGetNumIterations
# %bb.0:
	ld.w	$a0, $a0, 200
	st.w	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end11:
	.size	hypre_SMGGetNumIterations, .Lfunc_end11-hypre_SMGGetNumIterations
                                        # -- End function
	.globl	hypre_SMGPrintLogging           # -- Begin function hypre_SMGPrintLogging
	.p2align	5
	.type	hypre_SMGPrintLogging,@function
hypre_SMGPrintLogging:                  # @hypre_SMGPrintLogging
# %bb.0:
	bnez	$a1, .LBB12_6
# %bb.1:
	ld.w	$a1, $a0, 208
	blez	$a1, .LBB12_6
# %bb.2:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ld.w	$s2, $a0, 200
	blez	$s2, .LBB12_5
# %bb.3:                                # %.lr.ph.preheader
	move	$fp, $zero
	ld.d	$s3, $a0, 216
	ld.d	$s4, $a0, 224
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s1, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB12_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s3, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s4, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 1
	addi.d	$s4, $s4, 8
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB12_4
.LBB12_5:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB12_6:                               # %.loopexit
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	hypre_SMGPrintLogging, .Lfunc_end12-hypre_SMGPrintLogging
                                        # -- End function
	.globl	hypre_SMGGetFinalRelativeResidualNorm # -- Begin function hypre_SMGGetFinalRelativeResidualNorm
	.p2align	5
	.type	hypre_SMGGetFinalRelativeResidualNorm,@function
hypre_SMGGetFinalRelativeResidualNorm:  # @hypre_SMGGetFinalRelativeResidualNorm
# %bb.0:
	ld.w	$a2, $a0, 208
	blez	$a2, .LBB13_2
# %bb.1:
	ld.w	$a2, $a0, 200
	ld.w	$a3, $a0, 16
	ld.d	$a0, $a0, 224
	xor	$a3, $a2, $a3
	sltui	$a3, $a3, 1
	sub.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 3
	fldx.d	$fa0, $a0, $a2
	move	$a0, $zero
	fst.d	$fa0, $a1, 0
	ret
.LBB13_2:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end13:
	.size	hypre_SMGGetFinalRelativeResidualNorm, .Lfunc_end13-hypre_SMGGetFinalRelativeResidualNorm
                                        # -- End function
	.globl	hypre_SMGSetStructVectorConstantValues # -- Begin function hypre_SMGSetStructVectorConstantValues
	.p2align	5
	.type	hypre_SMGSetStructVectorConstantValues,@function
hypre_SMGSetStructVectorConstantValues: # @hypre_SMGSetStructVectorConstantValues
# %bb.0:                                # %.split
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a1, $a1, 8
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	blez	$a1, .LBB14_18
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	move	$s1, $a0
	move	$s3, $zero
	vreplvei.d	$vr1, $vr0, 0
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               # %._crit_edge
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.w	$a0, $fp, 8
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB14_18
.LBB14_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_9 Depth 2
                                        #       Child Loop BB14_11 Depth 3
                                        #         Child Loop BB14_13 Depth 4
                                        #         Child Loop BB14_17 Depth 4
	ld.d	$a0, $s1, 16
	ld.d	$s8, $fp, 0
	ld.d	$a1, $s1, 40
	ld.d	$s5, $a0, 0
	ld.d	$s6, $s1, 24
	slli.d	$a0, $s3, 2
	ldx.w	$s7, $a1, $a0
	alsl.d	$a0, $s3, $s3, 1
	slli.d	$s4, $a0, 3
	add.d	$s2, $s8, $s4
	addi.d	$a2, $sp, 60
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ld.w	$a0, $sp, 60
	ld.w	$a1, $sp, 64
	ld.w	$a2, $sp, 68
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blez	$a3, .LBB14_2
# %bb.4:                                # %.preheader158.lr.ph
                                        #   in Loop: Header=BB14_3 Depth=1
	blez	$a2, .LBB14_2
# %bb.5:                                # %.preheader158.lr.ph
                                        #   in Loop: Header=BB14_3 Depth=1
	blez	$a1, .LBB14_2
# %bb.6:                                # %.preheader158.lr.ph
                                        #   in Loop: Header=BB14_3 Depth=1
	blez	$a0, .LBB14_2
# %bb.7:                                # %.preheader157.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB14_3 Depth=1
	move	$a3, $zero
	add.d	$a4, $s5, $s4
	ldx.w	$a5, $s8, $s4
	ldx.w	$a6, $s5, $s4
	ld.w	$a7, $s2, 4
	ld.w	$t0, $a4, 4
	ld.w	$t1, $s2, 8
	ld.w	$t2, $a4, 8
	ld.w	$t3, $a4, 16
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.d	$t1, $t1, $t2
	sub.w	$t0, $t3, $t0
	ld.d	$t3, $sp, 8                     # 8-byte Folded Reload
	slt	$t2, $t3, $t0
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $t3, $t2
	or	$t0, $t0, $t2
	ld.w	$a4, $a4, 12
	addi.d	$t0, $t0, 1
	mul.d	$t1, $t0, $t1
	add.d	$a7, $a7, $t1
	sub.w	$a4, $a4, $a6
	slt	$a6, $t3, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $t3, $a6
	or	$a4, $a4, $a6
	addi.d	$a6, $a4, 1
	mul.d	$a4, $a7, $a6
	ld.w	$a7, $s0, 4
	add.w	$t7, $a5, $a4
	ld.w	$a4, $s0, 0
	ld.w	$a5, $s0, 8
	mul.d	$a7, $a6, $a7
	mul.d	$t1, $a1, $a7
	mul.d	$a6, $a6, $t0
	mul.d	$a6, $a6, $a5
	mul.d	$a5, $a0, $a4
	sub.d	$a5, $a7, $a5
	sub.d	$a6, $a6, $t1
	ori	$a7, $zero, 3
	sltu	$a7, $a7, $a0
	addi.d	$t0, $a4, -1
	sltui	$t0, $t0, 1
	and	$a7, $a7, $t0
	bstrpick.d	$t0, $a0, 30, 2
	slli.d	$t0, $t0, 2
	mul.d	$t1, $t0, $a4
	alsl.d	$t2, $s7, $s6, 3
	addi.d	$t3, $t2, 16
	slli.d	$t4, $a4, 5
	slli.d	$t5, $a4, 3
	b	.LBB14_9
	.p2align	4, , 16
.LBB14_8:                               # %._crit_edge163.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB14_9 Depth=2
	addi.w	$a3, $a3, 1
	add.w	$t7, $a6, $t7
	beq	$a3, $a2, .LBB14_2
.LBB14_9:                               # %.preheader157.us.us.us.us.us
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_11 Depth 3
                                        #         Child Loop BB14_13 Depth 4
                                        #         Child Loop BB14_17 Depth 4
	move	$t6, $zero
	b	.LBB14_11
	.p2align	4, , 16
.LBB14_10:                              # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB14_11 Depth=3
	addi.w	$t6, $t6, 1
	add.w	$t7, $a5, $t8
	beq	$t6, $a1, .LBB14_8
.LBB14_11:                              # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB14_13 Depth 4
                                        #         Child Loop BB14_17 Depth 4
	beqz	$a7, .LBB14_15
# %bb.12:                               # %vector.ph
                                        #   in Loop: Header=BB14_11 Depth=3
	add.d	$t8, $t1, $t7
	alsl.d	$t7, $t7, $t3, 3
	move	$s2, $t0
	.p2align	4, , 16
.LBB14_13:                              # %vector.body
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_9 Depth=2
                                        #       Parent Loop BB14_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr1, $t7, -16
	vst	$vr1, $t7, 0
	addi.d	$s2, $s2, -4
	add.d	$t7, $t7, $t4
	bnez	$s2, .LBB14_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB14_11 Depth=3
	move	$s2, $t0
	beq	$t0, $a0, .LBB14_10
	b	.LBB14_16
	.p2align	4, , 16
.LBB14_15:                              #   in Loop: Header=BB14_11 Depth=3
	move	$s2, $zero
	move	$t8, $t7
.LBB14_16:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB14_11 Depth=3
	alsl.d	$t7, $t8, $t2, 3
	sub.d	$s2, $a0, $s2
	.p2align	4, , 16
.LBB14_17:                              # %scalar.ph
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_9 Depth=2
                                        #       Parent Loop BB14_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fst.d	$fa0, $t7, 0
	add.d	$t8, $t8, $a4
	addi.w	$s2, $s2, -1
	add.d	$t7, $t7, $t5
	bnez	$s2, .LBB14_17
	b	.LBB14_10
.LBB14_18:                              # %._crit_edge239
	move	$a0, $zero
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
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
.Lfunc_end14:
	.size	hypre_SMGSetStructVectorConstantValues, .Lfunc_end14-hypre_SMGSetStructVectorConstantValues
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SMG"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Residual norm[%d] = %e   "
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Relative residual norm[%d] = %e\n"
	.size	.L.str.2, 33

	.section	".note.GNU-stack","",@progbits
	.addrsig
