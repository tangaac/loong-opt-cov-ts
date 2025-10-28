	.file	"HYPRE_struct_pcg.c"
	.text
	.globl	HYPRE_StructPCGCreate           # -- Begin function HYPRE_StructPCGCreate
	.p2align	5
	.type	HYPRE_StructPCGCreate,@function
HYPRE_StructPCGCreate:                  # @HYPRE_StructPCGCreate
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$a0, %got_pc_hi20(hypre_StructKrylovIdentity)
	ld.d	$a0, $a0, %got_pc_lo12(hypre_StructKrylovIdentity)
	st.d	$a0, $sp, 40
	pcalau12i	$a0, %got_pc_hi20(hypre_StructKrylovIdentitySetup)
	ld.d	$a0, $a0, %got_pc_lo12(hypre_StructKrylovIdentitySetup)
	st.d	$a0, $sp, 32
	pcalau12i	$a0, %got_pc_hi20(hypre_StructKrylovAxpy)
	ld.d	$a0, $a0, %got_pc_lo12(hypre_StructKrylovAxpy)
	st.d	$a0, $sp, 24
	pcalau12i	$a0, %got_pc_hi20(hypre_StructKrylovScaleVector)
	ld.d	$a0, $a0, %got_pc_lo12(hypre_StructKrylovScaleVector)
	st.d	$a0, $sp, 16
	pcalau12i	$a0, %got_pc_hi20(hypre_StructKrylovClearVector)
	ld.d	$a0, $a0, %got_pc_lo12(hypre_StructKrylovClearVector)
	st.d	$a0, $sp, 8
	pcalau12i	$a0, %got_pc_hi20(hypre_StructKrylovCopyVector)
	ld.d	$a0, $a0, %got_pc_lo12(hypre_StructKrylovCopyVector)
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %got_pc_hi20(hypre_CAlloc)
	ld.d	$a0, $a0, %got_pc_lo12(hypre_CAlloc)
	pcalau12i	$a1, %got_pc_hi20(hypre_StructKrylovFree)
	ld.d	$a1, $a1, %got_pc_lo12(hypre_StructKrylovFree)
	pcalau12i	$a2, %got_pc_hi20(hypre_StructKrylovCreateVector)
	ld.d	$a2, $a2, %got_pc_lo12(hypre_StructKrylovCreateVector)
	pcalau12i	$a3, %got_pc_hi20(hypre_StructKrylovDestroyVector)
	ld.d	$a3, $a3, %got_pc_lo12(hypre_StructKrylovDestroyVector)
	pcalau12i	$a4, %got_pc_hi20(hypre_StructKrylovMatvecCreate)
	ld.d	$a4, $a4, %got_pc_lo12(hypre_StructKrylovMatvecCreate)
	pcalau12i	$a5, %got_pc_hi20(hypre_StructKrylovMatvec)
	ld.d	$a5, $a5, %got_pc_lo12(hypre_StructKrylovMatvec)
	pcalau12i	$a6, %got_pc_hi20(hypre_StructKrylovMatvecDestroy)
	ld.d	$a6, $a6, %got_pc_lo12(hypre_StructKrylovMatvecDestroy)
	pcalau12i	$a7, %got_pc_hi20(hypre_StructKrylovInnerProd)
	ld.d	$a7, $a7, %got_pc_lo12(hypre_StructKrylovInnerProd)
	pcaddu18i	$ra, %call36(hypre_PCGFunctionsCreate)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_PCGCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end0:
	.size	HYPRE_StructPCGCreate, .Lfunc_end0-HYPRE_StructPCGCreate
                                        # -- End function
	.globl	HYPRE_StructPCGDestroy          # -- Begin function HYPRE_StructPCGDestroy
	.p2align	5
	.type	HYPRE_StructPCGDestroy,@function
HYPRE_StructPCGDestroy:                 # @HYPRE_StructPCGDestroy
# %bb.0:
	pcaddu18i	$t8, %call36(hypre_PCGDestroy)
	jr	$t8
.Lfunc_end1:
	.size	HYPRE_StructPCGDestroy, .Lfunc_end1-HYPRE_StructPCGDestroy
                                        # -- End function
	.globl	HYPRE_StructPCGSetup            # -- Begin function HYPRE_StructPCGSetup
	.p2align	5
	.type	HYPRE_StructPCGSetup,@function
HYPRE_StructPCGSetup:                   # @HYPRE_StructPCGSetup
# %bb.0:
	pcaddu18i	$t8, %call36(HYPRE_PCGSetup)
	jr	$t8
.Lfunc_end2:
	.size	HYPRE_StructPCGSetup, .Lfunc_end2-HYPRE_StructPCGSetup
                                        # -- End function
	.globl	HYPRE_StructPCGSolve            # -- Begin function HYPRE_StructPCGSolve
	.p2align	5
	.type	HYPRE_StructPCGSolve,@function
HYPRE_StructPCGSolve:                   # @HYPRE_StructPCGSolve
# %bb.0:
	pcaddu18i	$t8, %call36(HYPRE_PCGSolve)
	jr	$t8
.Lfunc_end3:
	.size	HYPRE_StructPCGSolve, .Lfunc_end3-HYPRE_StructPCGSolve
                                        # -- End function
	.globl	HYPRE_StructPCGSetTol           # -- Begin function HYPRE_StructPCGSetTol
	.p2align	5
	.type	HYPRE_StructPCGSetTol,@function
HYPRE_StructPCGSetTol:                  # @HYPRE_StructPCGSetTol
# %bb.0:
	pcaddu18i	$t8, %call36(HYPRE_PCGSetTol)
	jr	$t8
.Lfunc_end4:
	.size	HYPRE_StructPCGSetTol, .Lfunc_end4-HYPRE_StructPCGSetTol
                                        # -- End function
	.globl	HYPRE_StructPCGSetMaxIter       # -- Begin function HYPRE_StructPCGSetMaxIter
	.p2align	5
	.type	HYPRE_StructPCGSetMaxIter,@function
HYPRE_StructPCGSetMaxIter:              # @HYPRE_StructPCGSetMaxIter
# %bb.0:
	pcaddu18i	$t8, %call36(HYPRE_PCGSetMaxIter)
	jr	$t8
.Lfunc_end5:
	.size	HYPRE_StructPCGSetMaxIter, .Lfunc_end5-HYPRE_StructPCGSetMaxIter
                                        # -- End function
	.globl	HYPRE_StructPCGSetTwoNorm       # -- Begin function HYPRE_StructPCGSetTwoNorm
	.p2align	5
	.type	HYPRE_StructPCGSetTwoNorm,@function
HYPRE_StructPCGSetTwoNorm:              # @HYPRE_StructPCGSetTwoNorm
# %bb.0:
	pcaddu18i	$t8, %call36(HYPRE_PCGSetTwoNorm)
	jr	$t8
.Lfunc_end6:
	.size	HYPRE_StructPCGSetTwoNorm, .Lfunc_end6-HYPRE_StructPCGSetTwoNorm
                                        # -- End function
	.globl	HYPRE_StructPCGSetRelChange     # -- Begin function HYPRE_StructPCGSetRelChange
	.p2align	5
	.type	HYPRE_StructPCGSetRelChange,@function
HYPRE_StructPCGSetRelChange:            # @HYPRE_StructPCGSetRelChange
# %bb.0:
	pcaddu18i	$t8, %call36(HYPRE_PCGSetRelChange)
	jr	$t8
.Lfunc_end7:
	.size	HYPRE_StructPCGSetRelChange, .Lfunc_end7-HYPRE_StructPCGSetRelChange
                                        # -- End function
	.globl	HYPRE_StructPCGSetPrecond       # -- Begin function HYPRE_StructPCGSetPrecond
	.p2align	5
	.type	HYPRE_StructPCGSetPrecond,@function
HYPRE_StructPCGSetPrecond:              # @HYPRE_StructPCGSetPrecond
# %bb.0:
	pcaddu18i	$t8, %call36(HYPRE_PCGSetPrecond)
	jr	$t8
.Lfunc_end8:
	.size	HYPRE_StructPCGSetPrecond, .Lfunc_end8-HYPRE_StructPCGSetPrecond
                                        # -- End function
	.globl	HYPRE_StructPCGSetLogging       # -- Begin function HYPRE_StructPCGSetLogging
	.p2align	5
	.type	HYPRE_StructPCGSetLogging,@function
HYPRE_StructPCGSetLogging:              # @HYPRE_StructPCGSetLogging
# %bb.0:
	pcaddu18i	$t8, %call36(HYPRE_PCGSetLogging)
	jr	$t8
.Lfunc_end9:
	.size	HYPRE_StructPCGSetLogging, .Lfunc_end9-HYPRE_StructPCGSetLogging
                                        # -- End function
	.globl	HYPRE_StructPCGGetNumIterations # -- Begin function HYPRE_StructPCGGetNumIterations
	.p2align	5
	.type	HYPRE_StructPCGGetNumIterations,@function
HYPRE_StructPCGGetNumIterations:        # @HYPRE_StructPCGGetNumIterations
# %bb.0:
	pcaddu18i	$t8, %call36(HYPRE_PCGGetNumIterations)
	jr	$t8
.Lfunc_end10:
	.size	HYPRE_StructPCGGetNumIterations, .Lfunc_end10-HYPRE_StructPCGGetNumIterations
                                        # -- End function
	.globl	HYPRE_StructPCGGetFinalRelativeResidualNorm # -- Begin function HYPRE_StructPCGGetFinalRelativeResidualNorm
	.p2align	5
	.type	HYPRE_StructPCGGetFinalRelativeResidualNorm,@function
HYPRE_StructPCGGetFinalRelativeResidualNorm: # @HYPRE_StructPCGGetFinalRelativeResidualNorm
# %bb.0:
	pcaddu18i	$t8, %call36(HYPRE_PCGGetFinalRelativeResidualNorm)
	jr	$t8
.Lfunc_end11:
	.size	HYPRE_StructPCGGetFinalRelativeResidualNorm, .Lfunc_end11-HYPRE_StructPCGGetFinalRelativeResidualNorm
                                        # -- End function
	.globl	HYPRE_StructDiagScaleSetup      # -- Begin function HYPRE_StructDiagScaleSetup
	.p2align	5
	.type	HYPRE_StructDiagScaleSetup,@function
HYPRE_StructDiagScaleSetup:             # @HYPRE_StructDiagScaleSetup
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	HYPRE_StructDiagScaleSetup, .Lfunc_end12-HYPRE_StructDiagScaleSetup
                                        # -- End function
	.globl	HYPRE_StructDiagScale           # -- Begin function HYPRE_StructDiagScale
	.p2align	5
	.type	HYPRE_StructDiagScale,@function
HYPRE_StructDiagScale:                  # @HYPRE_StructDiagScale
# %bb.0:
	addi.d	$sp, $sp, -192
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
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a0, 8
	ld.w	$a0, $a1, 8
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	blez	$a0, .LBB13_21
# %bb.1:                                # %.lr.ph
	move	$s2, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s7, $zero, 4
	ori	$s8, $zero, 16
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %._crit_edge
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB13_21
.LBB13_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_9 Depth 2
                                        #       Child Loop BB13_11 Depth 3
                                        #         Child Loop BB13_19 Depth 4
                                        #         Child Loop BB13_15 Depth 4
	ld.d	$a5, $a1, 0
	alsl.d	$a1, $s2, $s2, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 40
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $fp, 16
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $s3, 16
	slli.d	$a1, $a1, 3
	ld.d	$s6, $a2, 0
	ld.d	$s1, $a3, 0
	ld.d	$s0, $a4, 0
	add.d	$s4, $a5, $a1
	st.d	$zero, $sp, 92
	st.w	$zero, $sp, 100
	addi.d	$a2, $sp, 92
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.d	$a2, $fp, 24
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a2, $s3, 40
	slli.d	$a3, $s2, 2
	ldx.w	$a1, $a1, $a3
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s5, $s3, 24
	ldx.w	$fp, $a2, $a3
	move	$s3, $a0
	addi.d	$a1, $sp, 80
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 80
	ld.w	$a1, $sp, 84
	ld.w	$a2, $sp, 88
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blez	$a3, .LBB13_2
# %bb.4:                                # %.preheader281.lr.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	blez	$a2, .LBB13_2
# %bb.5:                                # %.preheader281.lr.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	blez	$a1, .LBB13_2
# %bb.6:                                # %.preheader281.lr.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	blez	$a0, .LBB13_2
# %bb.7:                                # %.preheader280.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	slli.d	$a3, $s2, 4
	alsl.d	$a5, $s2, $a3, 3
	add.d	$t3, $s0, $a5
	ld.w	$a6, $t3, 4
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	ld.w	$t0, $t3, 16
	move	$a3, $zero
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a4, 3
	ldx.w	$t1, $s0, $a5
	sub.w	$t0, $t0, $a6
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	slt	$t2, $a7, $t0
	move	$a6, $t3
	ld.w	$t3, $t3, 12
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $a7, $t2
	or	$t0, $t0, $t2
	sub.w	$t2, $t3, $t1
	slt	$t3, $a7, $t2
	maskeqz	$t2, $t2, $t3
	add.d	$t4, $s1, $a5
	ld.w	$t5, $t4, 4
	ld.w	$t6, $t4, 16
	masknez	$t3, $a7, $t3
	or	$t2, $t2, $t3
	ldx.w	$t3, $s1, $a5
	sub.w	$t6, $t6, $t5
	slt	$t7, $a7, $t6
	ld.w	$t8, $t4, 12
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $a7, $t7
	or	$t6, $t6, $t7
	sub.w	$t7, $t8, $t3
	slt	$t8, $a7, $t7
	maskeqz	$t7, $t7, $t8
	add.d	$s0, $s6, $a5
	ld.w	$s1, $s0, 4
	ld.w	$ra, $s0, 16
	masknez	$t8, $a7, $t8
	or	$t7, $t7, $t8
	ldx.w	$a5, $s6, $a5
	sub.w	$t8, $ra, $s1
	slt	$ra, $a7, $t8
	ld.w	$s6, $s0, 12
	maskeqz	$t8, $t8, $ra
	masknez	$ra, $a7, $ra
	or	$t8, $t8, $ra
	sub.w	$s6, $s6, $a5
	slt	$ra, $a7, $s6
	maskeqz	$s6, $s6, $ra
	masknez	$ra, $a7, $ra
	or	$s6, $s6, $ra
	ld.w	$ra, $s4, 4
	ld.w	$a7, $s4, 8
	ld.w	$s0, $s0, 8
	addi.d	$t8, $t8, 1
	ld.w	$s4, $s4, 0
	sub.d	$s1, $ra, $s1
	sub.d	$s0, $a7, $s0
	mul.d	$s0, $t8, $s0
	add.d	$s0, $s1, $s0
	addi.d	$s1, $s6, 1
	sub.d	$a5, $s4, $a5
	mul.d	$s0, $s0, $s1
	ld.w	$t4, $t4, 8
	add.w	$a5, $a5, $s0
	addi.d	$t6, $t6, 1
	sub.d	$t5, $ra, $t5
	sub.d	$t4, $a7, $t4
	mul.d	$t4, $t6, $t4
	add.d	$t4, $t5, $t4
	addi.d	$t5, $t7, 1
	sub.d	$t3, $s4, $t3
	mul.d	$t4, $t4, $t5
	ld.w	$t7, $a6, 8
	add.w	$a6, $t3, $t4
	sub.d	$s0, $s4, $t1
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$t1, $ra, $t1
	sub.d	$a7, $a7, $t7
	addi.d	$t4, $t0, 1
	mul.d	$a7, $t4, $a7
	add.d	$t7, $t1, $a7
	alsl.d	$a7, $fp, $s5, 3
	addi.d	$s4, $t2, 1
	sub.d	$t0, $t8, $a1
	mulw.d.w	$t0, $t0, $s1
	sub.d	$t1, $s1, $a0
	sub.d	$t2, $t6, $a1
	mulw.d.w	$t2, $t2, $t5
	sub.d	$t3, $t5, $a0
	sub.d	$t4, $t4, $a1
	mulw.d.w	$t4, $s4, $t4
	mul.d	$t6, $t7, $s4
	sub.d	$t5, $s4, $a0
	add.w	$s0, $s0, $t6
	bstrpick.d	$t6, $a0, 30, 1
	slli.d	$t6, $t6, 1
	b	.LBB13_9
	.p2align	4, , 16
.LBB13_8:                               # %._crit_edge292.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB13_9 Depth=2
	add.w	$a5, $a5, $t0
	add.w	$a6, $a6, $t2
	addi.w	$a3, $a3, 1
	add.w	$s0, $s0, $t4
	beq	$a3, $a2, .LBB13_2
.LBB13_9:                               # %.preheader280.us.us.us.us.us
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_11 Depth 3
                                        #         Child Loop BB13_19 Depth 4
                                        #         Child Loop BB13_15 Depth 4
	move	$t7, $zero
	b	.LBB13_11
	.p2align	4, , 16
.LBB13_10:                              # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB13_11 Depth=3
	add.w	$a5, $t1, $a5
	add.w	$a6, $t3, $a6
	addi.w	$t7, $t7, 1
	add.w	$s0, $t5, $t8
	beq	$t7, $a1, .LBB13_8
.LBB13_11:                              # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_19 Depth 4
                                        #         Child Loop BB13_15 Depth 4
	bgeu	$a0, $s7, .LBB13_16
# %bb.12:                               #   in Loop: Header=BB13_11 Depth=3
	move	$ra, $zero
.LBB13_13:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB13_11 Depth=3
	move	$t8, $s0
.LBB13_14:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB13_11 Depth=3
	alsl.d	$s0, $a6, $a4, 3
	alsl.d	$s1, $t8, $a7, 3
	alsl.d	$s4, $a5, $s3, 3
	sub.d	$ra, $a0, $ra
	.p2align	4, , 16
.LBB13_15:                              # %scalar.ph
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_9 Depth=2
                                        #       Parent Loop BB13_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $s1, 0
	fld.d	$fa1, $s4, 0
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 0
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 1
	addi.d	$t8, $t8, 1
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 8
	addi.w	$ra, $ra, -1
	addi.d	$s4, $s4, 8
	bnez	$ra, .LBB13_15
	b	.LBB13_10
	.p2align	4, , 16
.LBB13_16:                              # %vector.memcheck
                                        #   in Loop: Header=BB13_11 Depth=3
	alsl.d	$s1, $a6, $a4, 3
	add.d	$t8, $fp, $s0
	alsl.d	$t8, $t8, $s5, 3
	sub.d	$t8, $s1, $t8
	move	$ra, $zero
	bltu	$t8, $s8, .LBB13_13
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB13_11 Depth=3
	alsl.d	$s4, $a5, $s3, 3
	sub.d	$t8, $s1, $s4
	bltu	$t8, $s8, .LBB13_13
# %bb.18:                               # %vector.ph
                                        #   in Loop: Header=BB13_11 Depth=3
	add.d	$a6, $t6, $a6
	add.d	$t8, $t6, $s0
	add.d	$a5, $t6, $a5
	alsl.d	$s0, $s0, $a7, 3
	move	$ra, $t6
	.p2align	4, , 16
.LBB13_19:                              # %vector.body
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_9 Depth=2
                                        #       Parent Loop BB13_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $s0, 0
	vld	$vr1, $s4, 0
	vfdiv.d	$vr0, $vr0, $vr1
	vst	$vr0, $s1, 0
	addi.d	$s1, $s1, 16
	addi.d	$s4, $s4, 16
	addi.d	$ra, $ra, -2
	addi.d	$s0, $s0, 16
	bnez	$ra, .LBB13_19
# %bb.20:                               # %middle.block
                                        #   in Loop: Header=BB13_11 Depth=3
	move	$ra, $t6
	beq	$t6, $a0, .LBB13_10
	b	.LBB13_14
.LBB13_21:                              # %._crit_edge328
	move	$a0, $zero
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
.Lfunc_end13:
	.size	HYPRE_StructDiagScale, .Lfunc_end13-HYPRE_StructDiagScale
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hypre_CAlloc
	.addrsig_sym hypre_StructKrylovFree
	.addrsig_sym hypre_StructKrylovCreateVector
	.addrsig_sym hypre_StructKrylovDestroyVector
	.addrsig_sym hypre_StructKrylovMatvecCreate
	.addrsig_sym hypre_StructKrylovMatvec
	.addrsig_sym hypre_StructKrylovMatvecDestroy
	.addrsig_sym hypre_StructKrylovInnerProd
	.addrsig_sym hypre_StructKrylovCopyVector
	.addrsig_sym hypre_StructKrylovClearVector
	.addrsig_sym hypre_StructKrylovScaleVector
	.addrsig_sym hypre_StructKrylovAxpy
	.addrsig_sym hypre_StructKrylovIdentitySetup
	.addrsig_sym hypre_StructKrylovIdentity
