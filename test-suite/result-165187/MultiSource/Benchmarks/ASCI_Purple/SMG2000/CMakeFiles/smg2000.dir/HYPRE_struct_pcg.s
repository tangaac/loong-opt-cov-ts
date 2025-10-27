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
	addi.d	$sp, $sp, -176
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
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a0, 8
	ld.w	$a0, $a1, 8
	blez	$a0, .LBB13_13
# %bb.1:                                # %.lr.ph
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %._crit_edge
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB13_13
.LBB13_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_8 Depth 2
                                        #       Child Loop BB13_9 Depth 3
                                        #         Child Loop BB13_10 Depth 4
	ld.d	$a5, $a1, 0
	alsl.d	$a1, $s2, $s2, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 40
	ld.d	$a3, $s0, 16
	ld.d	$a4, $s1, 16
	slli.d	$a1, $a1, 3
	ld.d	$s7, $a2, 0
	ld.d	$s5, $a3, 0
	ld.d	$s8, $a4, 0
	add.d	$s4, $a5, $a1
	st.d	$zero, $sp, 76
	st.w	$zero, $sp, 84
	addi.d	$a2, $sp, 76
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 40
	ld.d	$fp, $s0, 24
	ld.d	$a2, $s1, 40
	slli.d	$a3, $s2, 2
	ldx.w	$s6, $a1, $a3
	ld.d	$a1, $s1, 24
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ldx.w	$a1, $a2, $a3
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$s3, $a0
	addi.d	$a1, $sp, 64
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 64
	ld.w	$a0, $sp, 68
	ld.w	$a1, $sp, 72
	slt	$a3, $a2, $a0
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $a0, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a1, $a4
	or	$a3, $a4, $a3
	blez	$a3, .LBB13_2
# %bb.4:                                # %.preheader281.lr.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	blez	$a1, .LBB13_2
# %bb.5:                                # %.preheader281.lr.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	blez	$a0, .LBB13_2
# %bb.6:                                # %.preheader281.lr.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	blez	$a2, .LBB13_2
# %bb.7:                                # %.preheader280.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	slli.d	$a3, $s2, 4
	alsl.d	$a6, $s2, $a3, 3
	add.d	$a5, $s8, $a6
	ld.w	$a4, $a5, 4
	ld.w	$a7, $a5, 16
	move	$a3, $zero
	ldx.w	$t0, $s8, $a6
	sub.w	$a7, $a7, $a4
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	slt	$t1, $s6, $a7
	ld.w	$t2, $a5, 12
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $s6, $t1
	or	$a7, $a7, $t1
	sub.w	$t1, $t2, $t0
	slt	$t2, $s6, $t1
	maskeqz	$t1, $t1, $t2
	add.d	$t3, $s5, $a6
	ld.w	$t5, $t3, 4
	ld.w	$t4, $t3, 16
	masknez	$t2, $s6, $t2
	or	$t1, $t1, $t2
	ldx.w	$t6, $s5, $a6
	sub.w	$t2, $t4, $t5
	slt	$t4, $s6, $t2
	ld.w	$t7, $t3, 12
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $s6, $t4
	or	$t8, $t2, $t4
	sub.w	$t2, $t7, $t6
	slt	$t4, $s6, $t2
	maskeqz	$t2, $t2, $t4
	add.d	$t7, $s7, $a6
	ld.w	$s5, $t7, 4
	ld.w	$s8, $t7, 16
	masknez	$t4, $s6, $t4
	or	$t2, $t2, $t4
	ldx.w	$a6, $s7, $a6
	sub.w	$t4, $s8, $s5
	slt	$s7, $s6, $t4
	ld.w	$s8, $t7, 12
	maskeqz	$t4, $t4, $s7
	masknez	$s7, $s6, $s7
	or	$t4, $t4, $s7
	sub.w	$s7, $s8, $a6
	slt	$s8, $s6, $s7
	maskeqz	$s7, $s7, $s8
	masknez	$s8, $s6, $s8
	ld.w	$ra, $s4, 4
	move	$s6, $s1
	move	$s1, $s0
	move	$s0, $fp
	ld.w	$fp, $s4, 8
	ld.w	$t7, $t7, 8
	or	$s7, $s7, $s8
	addi.d	$t4, $t4, 1
	sub.d	$s5, $ra, $s5
	sub.d	$t7, $fp, $t7
	mul.d	$t7, $t4, $t7
	add.d	$t7, $s5, $t7
	addi.d	$s5, $s7, 1
	ld.w	$s4, $s4, 0
	sub.d	$t4, $t4, $a0
	mulw.d.w	$s8, $t4, $s5
	mul.d	$t4, $t7, $s5
	sub.d	$a6, $s4, $a6
	ld.w	$t3, $t3, 8
	add.w	$t4, $a6, $t4
	addi.d	$a6, $t8, 1
	sub.d	$t5, $ra, $t5
	sub.d	$t3, $fp, $t3
	mul.d	$t3, $a6, $t3
	add.d	$t3, $t5, $t3
	addi.d	$t5, $t2, 1
	sub.d	$a6, $a6, $a0
	mulw.d.w	$a6, $a6, $t5
	mul.d	$t3, $t3, $t5
	sub.d	$t5, $s4, $t6
	ld.w	$a5, $a5, 8
	add.w	$t6, $t5, $t3
	sub.d	$t0, $s4, $t0
	sub.d	$a4, $ra, $a4
	sub.d	$a5, $fp, $a5
	addi.d	$a7, $a7, 1
	mul.d	$a5, $a7, $a5
	add.d	$a4, $a4, $a5
	addi.d	$a5, $t1, 1
	sub.d	$a7, $a7, $a0
	mulw.d.w	$t3, $a5, $a7
	mul.d	$a4, $a4, $a5
	add.w	$s4, $t0, $a4
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a4, $a4, $s0, 3
	move	$s0, $s1
	move	$s1, $s6
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a5, $a7, $a5, 3
	sub.w	$a2, $zero, $a2
	add.d	$a6, $a6, $t2
	nor	$a6, $a6, $zero
	nor	$a7, $t2, $zero
	add.d	$t0, $t3, $t1
	nor	$t0, $t0, $zero
	nor	$t1, $t1, $zero
	add.d	$t2, $s8, $s7
	nor	$t2, $t2, $zero
	nor	$t3, $s7, $zero
	.p2align	4, , 16
.LBB13_8:                               # %.preheader280.us.us.us.us.us
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_9 Depth 3
                                        #         Child Loop BB13_10 Depth 4
	move	$t5, $zero
	.p2align	4, , 16
.LBB13_9:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_10 Depth 4
	move	$s5, $zero
	alsl.d	$s7, $t6, $a4, 3
	sub.d	$t8, $a6, $t6
	sub.d	$t6, $a7, $t6
	alsl.d	$s8, $s4, $a5, 3
	sub.d	$t7, $t0, $s4
	sub.d	$s4, $t1, $s4
	alsl.d	$ra, $t4, $s3, 3
	sub.d	$fp, $t2, $t4
	sub.d	$t4, $t3, $t4
	.p2align	4, , 16
.LBB13_10:                              #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_8 Depth=2
                                        #       Parent Loop BB13_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $s8, 0
	fld.d	$fa1, $ra, 0
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s7, 0
	addi.d	$s7, $s7, 8
	addi.d	$t8, $t8, -1
	addi.d	$t6, $t6, -1
	addi.d	$s8, $s8, 8
	addi.d	$t7, $t7, -1
	addi.d	$s4, $s4, -1
	addi.d	$ra, $ra, 8
	addi.d	$fp, $fp, -1
	addi.w	$s5, $s5, -1
	addi.d	$t4, $t4, -1
	bne	$a2, $s5, .LBB13_10
# %bb.11:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB13_9 Depth=3
	sub.w	$t4, $a2, $t4
	sub.w	$t6, $a2, $t6
	addi.w	$t5, $t5, 1
	sub.w	$s4, $a2, $s4
	bne	$t5, $a0, .LBB13_9
# %bb.12:                               # %._crit_edge292.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB13_8 Depth=2
	sub.w	$t4, $a2, $fp
	sub.w	$t6, $a2, $t8
	addi.w	$a3, $a3, 1
	sub.w	$s4, $a2, $t7
	bne	$a3, $a1, .LBB13_8
	b	.LBB13_2
.LBB13_13:                              # %._crit_edge328
	move	$a0, $zero
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
