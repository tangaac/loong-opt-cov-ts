	.file	"cyclic_reduction.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_CyclicReductionCreate
.LCPI0_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.text
	.globl	hypre_CyclicReductionCreate
	.p2align	5
	.type	hypre_CyclicReductionCreate,@function
hypre_CyclicReductionCreate:            # @hypre_CyclicReductionCreate
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 112
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$fp, $a0, 0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(hypre_InitializeTiming)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	st.w	$a0, $s0, 104
	vst	$vr0, $s0, 12
	lu32i.d	$s1, 1
	st.d	$s1, $s0, 28
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	hypre_CyclicReductionCreate, .Lfunc_end0-hypre_CyclicReductionCreate
                                        # -- End function
	.globl	hypre_CycRedCreateCoarseOp      # -- Begin function hypre_CycRedCreateCoarseOp
	.p2align	5
	.type	hypre_CycRedCreateCoarseOp,@function
hypre_CycRedCreateCoarseOp:             # @hypre_CycRedCreateCoarseOp
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 72
	move	$s0, $a2
	move	$s1, $a1
	st.d	$zero, $sp, 56
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 40
	beqz	$a0, .LBB1_2
# %bb.1:                                # %.loopexit.loopexit47
	ori	$a0, $zero, 2
	ori	$a1, $zero, 12
	ori	$s2, $zero, 2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $a2, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a2, 4
	st.w	$zero, $a2, 20
	b	.LBB1_3
.LBB1_2:                                # %.loopexit.loopexit
	ori	$a0, $zero, 3
	ori	$a1, $zero, 12
	ori	$s2, $zero, 3
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $a2, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a2, 4
	st.w	$zero, $a2, 20
	ori	$a0, $zero, 1
	st.d	$a0, $a2, 24
	st.w	$zero, $a2, 32
.LBB1_3:                                # %.loopexit
	ori	$a0, $zero, 1
	ori	$s3, $zero, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructStencilCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixCreate)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructStencilDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 72
	st.w	$a2, $s1, 72
	slli.w	$a0, $s0, 1
	addi.d	$a1, $sp, 40
	slli.d	$a3, $a0, 2
	stx.w	$s3, $a3, $a1
	bnez	$a2, .LBB1_5
# %bb.4:
	alsl.d	$a0, $a0, $a1, 2
	st.w	$s3, $a0, 4
.LBB1_5:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixSetNumGhost)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixInitializeShell)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end1:
	.size	hypre_CycRedCreateCoarseOp, .Lfunc_end1-hypre_CycRedCreateCoarseOp
                                        # -- End function
	.globl	hypre_CycRedSetupCoarseOp       # -- Begin function hypre_CycRedSetupCoarseOp
	.p2align	5
	.type	hypre_CycRedSetupCoarseOp,@function
hypre_CycRedSetupCoarseOp:              # @hypre_CycRedSetupCoarseOp
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	move	$s4, $a1
	ld.d	$a1, $a1, 8
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$fp, $a1, 8
	ld.w	$a1, $fp, 8
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	blez	$a1, .LBB2_28
# %bb.1:                                # %.preheader866.lr.ph
	move	$s5, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	move	$s8, $zero
	move	$a3, $zero
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %.loopexit864
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 8
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s8, $s8, 1
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	bge	$s8, $a0, .LBB2_28
.LBB2_3:                                # %.preheader866
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_13 Depth 2
                                        #       Child Loop BB2_14 Depth 3
                                        #         Child Loop BB2_15 Depth 4
                                        #     Child Loop BB2_23 Depth 2
                                        #       Child Loop BB2_24 Depth 3
                                        #         Child Loop BB2_25 Depth 4
	slli.d	$a0, $s8, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s1, $a3, -1
	slli.d	$a1, $a3, 4
	alsl.d	$a2, $a3, $a1, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 2
	addi.d	$a3, $a3, -1
	addi.d	$s6, $a2, -12
	.p2align	4, , 16
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s1, $s1, 1
	addi.d	$s6, $s6, 24
	addi.d	$a1, $a1, 4
	bne	$a2, $a0, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s8, 4
	alsl.d	$s3, $s8, $a1, 3
	add.d	$s2, $a0, $s3
	addi.d	$a3, $sp, 208
	move	$a0, $s2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 40
	ld.d	$a1, $s4, 40
	ld.d	$fp, $a0, 0
	ld.d	$a0, $a1, 0
	add.d	$s0, $fp, $s6
	add.d	$a0, $a0, $s3
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$zero, $sp, 220
	st.w	$zero, $sp, 228
	addi.d	$a2, $sp, 220
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	st.d	$s7, $sp, 220
	st.w	$zero, $sp, 228
	addi.d	$a2, $sp, 220
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 220
	st.w	$zero, $sp, 228
	addi.d	$a2, $sp, 220
	move	$a0, $s5
	move	$a1, $s1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$zero, $sp, 220
	st.w	$zero, $sp, 228
	addi.d	$a2, $sp, 220
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$s7, $sp, 220
	st.w	$zero, $sp, 228
	addi.d	$a2, $sp, 220
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 72
	move	$s7, $a0
	st.d	$s1, $sp, 220
	st.w	$zero, $sp, 228
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	beqz	$a1, .LBB2_7
# %bb.6:                                # %.thread1078
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$s4, $zero, 1
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_7:                                #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a2, $sp, 220
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 72
	ori	$s4, $zero, 1
	st.d	$s1, $sp, 220
	st.w	$zero, $sp, 228
	beqz	$a1, .LBB2_18
.LBB2_8:                                #   in Loop: Header=BB2_3 Depth=1
	addi.d	$s1, $s0, 4
	addi.d	$s8, $s0, -8
	addi.d	$a1, $sp, 196
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a3, $sp, 196
	ld.w	$a0, $sp, 200
	ld.w	$a1, $sp, 204
	slt	$a2, $a3, $a0
	masknez	$a4, $a3, $a2
	maskeqz	$a2, $a0, $a2
	or	$a2, $a2, $a4
	slt	$a4, $a2, $a1
	masknez	$a2, $a2, $a4
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	maskeqz	$a4, $a1, $a4
	or	$a2, $a4, $a2
	blez	$a2, .LBB2_2
# %bb.9:                                # %.preheader862.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	blez	$a1, .LBB2_2
# %bb.10:                               # %.preheader862.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	blez	$a0, .LBB2_2
# %bb.11:                               # %.preheader862.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	blez	$a3, .LBB2_2
# %bb.12:                               # %.preheader859.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t6, $zero
	ld.w	$a4, $sp, 208
	ld.w	$a5, $s0, -12
	ld.w	$a6, $sp, 212
	ld.w	$a7, $s8, 0
	ld.w	$t0, $sp, 216
	ld.w	$t1, $s0, -4
	ld.w	$t2, $s1, 0
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.d	$t0, $t0, $t1
	sub.w	$a7, $t2, $a7
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	slt	$t1, $a1, $a7
	maskeqz	$a7, $a7, $t1
	masknez	$t1, $a1, $t1
	or	$a7, $a7, $t1
	ldx.w	$t1, $fp, $s6
	addi.d	$t2, $a7, 1
	mul.d	$a7, $t2, $t0
	add.d	$a6, $a6, $a7
	sub.w	$a5, $t1, $a5
	slt	$a7, $a1, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $a1, $a7
	or	$a5, $a5, $a7
	addi.d	$t1, $a5, 1
	mul.d	$a5, $a6, $t1
	add.w	$t7, $a4, $a5
	ld.w	$a4, $s2, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a5, $a2, 0
	ld.w	$a6, $s2, 4
	ld.w	$a7, $a2, 4
	ld.w	$t0, $s2, 8
	ld.w	$t3, $a2, 8
	ld.w	$t4, $a2, 16
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.d	$t0, $t0, $t3
	sub.w	$a7, $t4, $a7
	slt	$t3, $a1, $a7
	maskeqz	$a7, $a7, $t3
	masknez	$t3, $a1, $t3
	or	$a7, $a7, $t3
	ld.w	$t3, $a2, 12
	addi.d	$a7, $a7, 1
	mul.d	$t0, $a7, $t0
	add.d	$a6, $a6, $t0
	sub.w	$a5, $t3, $a5
	slt	$t0, $a1, $a5
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $a1, $t0
	or	$t0, $a5, $t0
	addi.d	$t3, $t0, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$t4, $a1, 4
	mul.d	$a5, $a6, $t3
	add.w	$s1, $a4, $a5
	ld.w	$a4, $a1, 0
	mul.d	$a5, $t4, $t1
	ld.w	$t5, $a1, 8
	sub.d	$a6, $a7, $a0
	mul.d	$a7, $a6, $t3
	mul.d	$a6, $a3, $a4
	sub.w	$a3, $zero, $a3
	add.d	$a7, $a7, $t0
	nor	$a7, $a7, $zero
	nor	$t0, $t0, $zero
	mul.d	$t2, $t5, $t2
	sub.d	$t3, $s4, $a0
	mul.d	$t3, $t4, $t3
	add.d	$t2, $t2, $t3
	mul.d	$a1, $t2, $t1
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$t2, $a1, -8
	slli.d	$t3, $a4, 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$t4, $a1, -8
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	addi.d	$t5, $a1, -8
	.p2align	4, , 16
.LBB2_13:                               # %.preheader859.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_14 Depth 3
                                        #         Child Loop BB2_15 Depth 4
	st.d	$t6, $sp, 184                   # 8-byte Folded Spill
	move	$t6, $zero
	.p2align	4, , 16
.LBB2_14:                               # %.preheader857.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_15 Depth 4
	move	$s2, $zero
	move	$fp, $t7
	alsl.d	$t7, $s1, $s7, 3
	alsl.d	$s4, $s1, $s3, 3
	sub.d	$t8, $a7, $s1
	sub.d	$s1, $t0, $s1
	slli.d	$s5, $fp, 3
	move	$s6, $t5
	move	$s8, $t4
	move	$ra, $t2
	move	$s0, $a6
	.p2align	4, , 16
.LBB2_15:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        #       Parent Loop BB2_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a1, $s8, $s5
	fld.d	$fa0, $a1, 8
	fldx.d	$fa1, $s8, $s5
	fldx.d	$fa2, $s6, $s5
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fdiv.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $t7, 0
	fld.d	$fa0, $a1, 8
	fldx.d	$fa1, $ra, $s5
	add.d	$t1, $s6, $s5
	fld.d	$fa2, $t1, 8
	add.d	$a2, $ra, $s5
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $s6, $s5
	fld.d	$fa3, $a2, 8
	fld.d	$fa4, $a1, 16
	fld.d	$fa5, $t1, 16
	fdiv.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $fa2, $fa0
	fmul.d	$fa1, $fa3, $fa4
	fdiv.d	$fa1, $fa1, $fa5
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s4, 0
	addi.d	$t7, $t7, 8
	addi.d	$s4, $s4, 8
	addi.d	$t8, $t8, -1
	addi.d	$s1, $s1, -1
	addi.w	$s2, $s2, -1
	sub.d	$s0, $s0, $a4
	add.d	$ra, $ra, $t3
	add.d	$s8, $s8, $t3
	add.d	$s6, $s6, $t3
	bne	$a3, $s2, .LBB2_15
# %bb.16:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_14 Depth=3
	add.d	$a1, $a5, $fp
	sub.w	$t7, $a1, $s0
	addi.w	$t6, $t6, 1
	sub.w	$s1, $a3, $s1
	bne	$t6, $a0, .LBB2_14
# %bb.17:                               # %._crit_edge876.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_13 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a1, $a1, $fp
	sub.w	$t7, $a1, $s0
	ld.d	$t6, $sp, 184                   # 8-byte Folded Reload
	addi.w	$t6, $t6, 1
	sub.w	$s1, $a3, $t8
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bne	$t6, $a1, .LBB2_13
	b	.LBB2_2
.LBB2_18:                               #   in Loop: Header=BB2_3 Depth=1
	move	$s5, $a0
	addi.d	$a1, $sp, 196
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a3, $sp, 196
	ld.w	$a0, $sp, 200
	ld.w	$a4, $sp, 204
	slt	$a1, $a3, $a0
	masknez	$a2, $a3, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a4
	masknez	$a1, $a1, $a2
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	blez	$a1, .LBB2_2
# %bb.19:                               # %.preheader860.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.20:                               # %.preheader860.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	blez	$a0, .LBB2_2
# %bb.21:                               # %.preheader860.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	blez	$a3, .LBB2_2
# %bb.22:                               # %.preheader858.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t6, $zero
	ld.w	$a1, $sp, 208
	ld.w	$a4, $s0, -12
	ld.w	$a5, $sp, 212
	ld.w	$a6, $s0, -8
	ld.w	$a7, $sp, 216
	ld.w	$t0, $s0, -4
	ld.w	$t1, $s0, 4
	sub.d	$a1, $a1, $a4
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.w	$a6, $t1, $a6
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	slt	$t0, $a0, $a6
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $a0, $t0
	or	$a6, $a6, $t0
	ldx.w	$t0, $fp, $s6
	addi.d	$t1, $a6, 1
	mul.d	$a6, $t1, $a7
	add.d	$a5, $a5, $a6
	sub.w	$a4, $t0, $a4
	slt	$a6, $a0, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $a0, $a6
	or	$a4, $a4, $a6
	addi.d	$t3, $a4, 1
	mul.d	$a4, $a5, $t3
	add.w	$s0, $a1, $a4
	ld.w	$a1, $s2, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a4, $a2, 0
	ld.w	$a5, $s2, 4
	ld.w	$a6, $a2, 4
	ld.w	$a7, $s2, 8
	ld.w	$t0, $a2, 8
	ld.w	$t2, $a2, 16
	sub.d	$a1, $a1, $a4
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.w	$a6, $t2, $a6
	slt	$t0, $a0, $a6
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $a0, $t0
	or	$a6, $a6, $t0
	ld.w	$t0, $a2, 12
	addi.d	$a6, $a6, 1
	mul.d	$a7, $a6, $a7
	add.d	$a5, $a5, $a7
	sub.w	$a4, $t0, $a4
	slt	$a7, $a0, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $a0, $a7
	or	$t0, $a4, $a7
	addi.d	$a7, $t0, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$t4, $a0, 4
	mul.d	$a4, $a5, $a7
	add.w	$t2, $a1, $a4
	ld.w	$a4, $a0, 0
	mul.d	$a1, $t4, $t3
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	sub.d	$a6, $a6, $a0
	mul.d	$a7, $a6, $a7
	mul.d	$a2, $a3, $a4
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	sub.w	$a3, $zero, $a3
	add.d	$a7, $a7, $t0
	nor	$a7, $a7, $zero
	nor	$t0, $t0, $zero
	mul.d	$a1, $a1, $t1
	sub.d	$t1, $s4, $a0
	mul.d	$t1, $t4, $t1
	add.d	$a1, $a1, $t1
	mul.d	$a0, $a1, $t3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$t1, $a0, -8
	slli.d	$t3, $a4, 3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a0, 8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$t5, $a0, -8
	.p2align	4, , 16
.LBB2_23:                               # %.preheader858.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_24 Depth 3
                                        #         Child Loop BB2_25 Depth 4
	st.d	$t6, $sp, 144                   # 8-byte Folded Spill
	move	$t6, $zero
	.p2align	4, , 16
.LBB2_24:                               # %.preheader856.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_23 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_25 Depth 4
	move	$s6, $zero
	move	$t8, $s0
	slli.d	$s0, $t2, 3
	sub.d	$t7, $a7, $t2
	sub.d	$s2, $t0, $t2
	slli.d	$s8, $t8, 3
	move	$ra, $t5
	move	$t4, $a1
	move	$t2, $t1
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	move	$a6, $s5
	move	$s1, $s5
	move	$s4, $s3
	move	$s5, $s7
	.p2align	4, , 16
.LBB2_25:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_23 Depth=2
                                        #       Parent Loop BB2_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a2, $ra, $s8
	fld.d	$fa0, $a2, 8
	fldx.d	$fa1, $ra, $s8
	fldx.d	$fa2, $t2, $s8
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fdiv.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $s5, $s0
	fld.d	$fa0, $a2, 8
	add.d	$a0, $t4, $s8
	fld.d	$fa1, $a0, -16
	add.d	$a5, $t2, $s8
	fld.d	$fa2, $a5, 8
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $t2, $s8
	fld.d	$fa3, $a0, -8
	fld.d	$fa4, $a2, 16
	fld.d	$fa5, $a5, 16
	fdiv.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $fa2, $fa0
	fmul.d	$fa1, $fa3, $fa4
	fdiv.d	$fa1, $fa1, $fa5
	fsub.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s4, $s0
	fld.d	$fa0, $a0, -8
	fldx.d	$fa1, $t4, $s8
	fld.d	$fa2, $a5, 16
	fneg.d	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fdiv.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $s1, $s0
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, 8
	addi.d	$s1, $s1, 8
	addi.d	$t7, $t7, -1
	addi.d	$s2, $s2, -1
	addi.w	$s6, $s6, -1
	sub.d	$fp, $fp, $a4
	add.d	$t2, $t2, $t3
	add.d	$t4, $t4, $t3
	add.d	$ra, $ra, $t3
	bne	$a3, $s6, .LBB2_25
# %bb.26:                               # %._crit_edge.us.us.us.us.us.us945
                                        #   in Loop: Header=BB2_24 Depth=3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t8
	sub.w	$s0, $a0, $fp
	addi.w	$t6, $t6, 1
	sub.w	$t2, $a3, $s2
	move	$s5, $a6
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bne	$t6, $a0, .LBB2_24
# %bb.27:                               # %._crit_edge913.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_23 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $t8
	sub.w	$s0, $a0, $fp
	ld.d	$t6, $sp, 144                   # 8-byte Folded Reload
	addi.w	$t6, $t6, 1
	sub.w	$t2, $a3, $t7
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bne	$t6, $a0, .LBB2_23
	b	.LBB2_2
.LBB2_28:                               # %._crit_edge
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 56
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_69
# %bb.29:                               # %.preheader854
	ld.w	$a0, $fp, 8
	blez	$a0, .LBB2_69
# %bb.30:                               # %.lr.ph
	addi.w	$s6, $zero, -1
	move	$s1, $zero
	move	$a0, $s6
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$s8, $zero, 4
	vrepli.b	$vr3, 0
	ori	$s7, $zero, 2
	vst	$vr3, $sp, 160                  # 16-byte Folded Spill
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_31:                               # %.loopexit852
                                        #   in Loop: Header=BB2_32 Depth=1
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 8
	addi.d	$s1, $s1, 1
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	bge	$s1, $a0, .LBB2_69
.LBB2_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_40 Depth 2
                                        #       Child Loop BB2_42 Depth 3
                                        #         Child Loop BB2_49 Depth 4
                                        #         Child Loop BB2_47 Depth 4
                                        #     Child Loop BB2_57 Depth 2
                                        #       Child Loop BB2_59 Depth 3
                                        #         Child Loop BB2_67 Depth 4
                                        #         Child Loop BB2_62 Depth 4
	ld.d	$a0, $s4, 40
	ld.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	slli.d	$a2, $s1, 4
	alsl.d	$a2, $s1, $a2, 3
	add.d	$s5, $a1, $a2
	add.d	$fp, $a0, $a2
	st.d	$zero, $sp, 220
	st.w	$zero, $sp, 228
	addi.d	$a2, $sp, 220
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 220
	st.w	$zero, $sp, 228
	addi.d	$a2, $sp, 220
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 72
	move	$s3, $a0
	bnez	$a1, .LBB2_34
# %bb.33:                               #   in Loop: Header=BB2_32 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 220
	st.w	$zero, $sp, 228
	addi.d	$a2, $sp, 220
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 72
	beqz	$a1, .LBB2_51
.LBB2_34:                               # %.thread
                                        #   in Loop: Header=BB2_32 Depth=1
	addi.d	$a1, $sp, 196
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 196
	ld.w	$a1, $sp, 200
	ld.w	$a2, $sp, 204
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	vld	$vr3, $sp, 160                  # 16-byte Folded Reload
	vldi	$vr2, -1024
	blez	$a3, .LBB2_31
# %bb.35:                               # %.preheader850.lr.ph
                                        #   in Loop: Header=BB2_32 Depth=1
	blez	$a2, .LBB2_31
# %bb.36:                               # %.preheader850.lr.ph
                                        #   in Loop: Header=BB2_32 Depth=1
	blez	$a1, .LBB2_31
# %bb.37:                               # %.preheader850.lr.ph
                                        #   in Loop: Header=BB2_32 Depth=1
	blez	$a0, .LBB2_31
# %bb.38:                               # %.preheader848.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_32 Depth=1
	ld.w	$a5, $fp, 4
	ld.w	$a4, $fp, 16
	move	$a3, $zero
	ld.w	$a6, $fp, 0
	sub.w	$a4, $a4, $a5
	slt	$a7, $s6, $a4
	maskeqz	$a4, $a4, $a7
	ld.w	$t0, $fp, 12
	masknez	$a7, $s6, $a7
	or	$a4, $a4, $a7
	addi.d	$a7, $a4, 1
	sub.w	$a4, $t0, $a6
	slt	$t0, $s6, $a4
	maskeqz	$a4, $a4, $t0
	ld.w	$t1, $s5, 0
	masknez	$t0, $s6, $t0
	or	$a4, $a4, $t0
	addi.d	$t0, $a4, 1
	sub.d	$a6, $t1, $a6
	ld.w	$t1, $s5, 4
	sub.d	$a4, $t0, $a0
	ld.w	$t2, $s5, 8
	ld.w	$t3, $fp, 8
	sub.d	$t1, $t1, $a5
	sub.d	$a5, $a7, $a1
	mulw.d.w	$a5, $t0, $a5
	sub.d	$t2, $t2, $t3
	mul.d	$a7, $a7, $t2
	add.d	$a7, $t1, $a7
	mul.d	$a7, $a7, $t0
	add.w	$a6, $a6, $a7
	addi.d	$a7, $a0, -1
	bstrpick.d	$t0, $a7, 31, 0
	alsl.d	$a7, $t0, $s2, 3
	addi.d	$a7, $a7, 8
	alsl.d	$t0, $t0, $s3, 3
	addi.d	$t0, $t0, 8
	bstrpick.d	$t1, $a0, 30, 1
	slli.d	$t1, $t1, 1
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_39:                               # %._crit_edge955.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_40 Depth=2
	addi.w	$a3, $a3, 1
	add.w	$a6, $a6, $a5
	beq	$a3, $a2, .LBB2_31
.LBB2_40:                               # %.preheader848.us.us.us.us.us
                                        #   Parent Loop BB2_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_42 Depth 3
                                        #         Child Loop BB2_49 Depth 4
                                        #         Child Loop BB2_47 Depth 4
	move	$t2, $zero
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_41:                               # %._crit_edge952.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_42 Depth=3
	addi.w	$t2, $t2, 1
	add.w	$a6, $a4, $a6
	beq	$t2, $a1, .LBB2_39
.LBB2_42:                               # %.preheader846.us.us.us.us.us.us
                                        #   Parent Loop BB2_32 Depth=1
                                        #     Parent Loop BB2_40 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_49 Depth 4
                                        #         Child Loop BB2_47 Depth 4
	bltu	$a0, $s7, .LBB2_45
# %bb.43:                               # %vector.memcheck1140
                                        #   in Loop: Header=BB2_42 Depth=3
	alsl.d	$t3, $a6, $s2, 3
	alsl.d	$t5, $a6, $t0, 3
	alsl.d	$t4, $a6, $s3, 3
	bgeu	$t3, $t5, .LBB2_48
# %bb.44:                               # %vector.memcheck1140
                                        #   in Loop: Header=BB2_42 Depth=3
	alsl.d	$t5, $a6, $a7, 3
	bgeu	$t4, $t5, .LBB2_48
.LBB2_45:                               #   in Loop: Header=BB2_42 Depth=3
	move	$t5, $zero
.LBB2_46:                               # %scalar.ph1152.preheader
                                        #   in Loop: Header=BB2_42 Depth=3
	alsl.d	$t3, $a6, $s3, 3
	alsl.d	$t4, $a6, $s2, 3
	sub.d	$t5, $a0, $t5
	.p2align	4, , 16
.LBB2_47:                               # %scalar.ph1152
                                        #   Parent Loop BB2_32 Depth=1
                                        #     Parent Loop BB2_40 Depth=2
                                        #       Parent Loop BB2_42 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $t3, 0
	fld.d	$fa1, $t4, 0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fst.d	$fa0, $t4, 0
	st.d	$zero, $t3, 0
	addi.d	$a6, $a6, 1
	addi.d	$t3, $t3, 8
	addi.w	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB2_47
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_48:                               # %vector.ph1154
                                        #   in Loop: Header=BB2_42 Depth=3
	add.d	$a6, $t1, $a6
	move	$t5, $t1
	.p2align	4, , 16
.LBB2_49:                               # %vector.body1157
                                        #   Parent Loop BB2_32 Depth=1
                                        #     Parent Loop BB2_40 Depth=2
                                        #       Parent Loop BB2_42 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t4, 0
	vld	$vr1, $t3, 0
	vfmadd.d	$vr0, $vr0, $vr2, $vr1
	vst	$vr0, $t3, 0
	vst	$vr3, $t4, 0
	addi.d	$t5, $t5, -2
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	bnez	$t5, .LBB2_49
# %bb.50:                               # %middle.block1163
                                        #   in Loop: Header=BB2_42 Depth=3
	move	$t5, $t1
	beq	$t1, $a0, .LBB2_41
	b	.LBB2_46
.LBB2_51:                               #   in Loop: Header=BB2_32 Depth=1
	move	$s4, $a0
	addi.d	$a1, $sp, 196
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 196
	ld.w	$a1, $sp, 200
	ld.w	$a2, $sp, 204
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	vld	$vr3, $sp, 160                  # 16-byte Folded Reload
	blez	$a3, .LBB2_31
# %bb.52:                               # %.preheader849.lr.ph
                                        #   in Loop: Header=BB2_32 Depth=1
	blez	$a2, .LBB2_31
# %bb.53:                               # %.preheader849.lr.ph
                                        #   in Loop: Header=BB2_32 Depth=1
	blez	$a1, .LBB2_31
# %bb.54:                               # %.preheader849.lr.ph
                                        #   in Loop: Header=BB2_32 Depth=1
	blez	$a0, .LBB2_31
# %bb.55:                               # %.preheader847.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_32 Depth=1
	ld.w	$a5, $fp, 4
	ld.w	$a4, $fp, 16
	move	$a3, $zero
	ld.w	$a6, $fp, 0
	sub.w	$a4, $a4, $a5
	slt	$a7, $s6, $a4
	maskeqz	$a4, $a4, $a7
	ld.w	$t0, $fp, 12
	masknez	$a7, $s6, $a7
	or	$a4, $a4, $a7
	addi.d	$a7, $a4, 1
	sub.w	$a4, $t0, $a6
	slt	$t0, $s6, $a4
	maskeqz	$a4, $a4, $t0
	ld.w	$t1, $s5, 0
	masknez	$t0, $s6, $t0
	or	$a4, $a4, $t0
	addi.d	$t0, $a4, 1
	sub.d	$a6, $t1, $a6
	ld.w	$t1, $s5, 4
	sub.d	$a4, $t0, $a0
	ld.w	$t2, $s5, 8
	ld.w	$t3, $fp, 8
	sub.d	$t1, $t1, $a5
	sub.d	$a5, $a7, $a1
	mulw.d.w	$a5, $t0, $a5
	sub.d	$t2, $t2, $t3
	mul.d	$a7, $a7, $t2
	add.d	$a7, $t1, $a7
	mul.d	$a7, $a7, $t0
	add.w	$a6, $a6, $a7
	addi.d	$a7, $a0, -1
	bstrpick.d	$t1, $a7, 31, 0
	alsl.d	$a7, $t1, $s2, 3
	addi.d	$a7, $a7, 8
	alsl.d	$t0, $t1, $s3, 3
	addi.d	$t0, $t0, 8
	alsl.d	$t1, $t1, $s4, 3
	addi.d	$t1, $t1, 8
	bstrpick.d	$t2, $a0, 30, 1
	slli.d	$t2, $t2, 1
	b	.LBB2_57
	.p2align	4, , 16
.LBB2_56:                               # %._crit_edge981.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_57 Depth=2
	addi.w	$a3, $a3, 1
	add.w	$a6, $a6, $a5
	beq	$a3, $a2, .LBB2_31
.LBB2_57:                               # %.preheader847.us.us.us.us.us
                                        #   Parent Loop BB2_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_59 Depth 3
                                        #         Child Loop BB2_67 Depth 4
                                        #         Child Loop BB2_62 Depth 4
	move	$t3, $zero
	b	.LBB2_59
	.p2align	4, , 16
.LBB2_58:                               # %._crit_edge978.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_59 Depth=3
	addi.w	$t3, $t3, 1
	add.w	$a6, $a4, $a6
	beq	$t3, $a1, .LBB2_56
.LBB2_59:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB2_32 Depth=1
                                        #     Parent Loop BB2_57 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_67 Depth 4
                                        #         Child Loop BB2_62 Depth 4
	bgeu	$a0, $s8, .LBB2_63
# %bb.60:                               #   in Loop: Header=BB2_59 Depth=3
	move	$t7, $zero
.LBB2_61:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_59 Depth=3
	alsl.d	$t4, $a6, $s3, 3
	alsl.d	$t5, $a6, $s4, 3
	alsl.d	$t6, $a6, $s2, 3
	sub.d	$t7, $a0, $t7
	.p2align	4, , 16
.LBB2_62:                               # %scalar.ph
                                        #   Parent Loop BB2_32 Depth=1
                                        #     Parent Loop BB2_57 Depth=2
                                        #       Parent Loop BB2_59 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $t4, 0
	fld.d	$fa1, $t5, 0
	fld.d	$fa2, $t6, 0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $t6, 0
	st.d	$zero, $t4, 0
	st.d	$zero, $t5, 0
	addi.d	$a6, $a6, 1
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 8
	addi.w	$t7, $t7, -1
	addi.d	$t6, $t6, 8
	bnez	$t7, .LBB2_62
	b	.LBB2_58
	.p2align	4, , 16
.LBB2_63:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_59 Depth=3
	alsl.d	$t4, $a6, $s2, 3
	alsl.d	$fp, $a6, $a7, 3
	alsl.d	$t5, $a6, $s3, 3
	alsl.d	$t8, $a6, $t0, 3
	sltu	$t6, $t4, $t8
	sltu	$t7, $t5, $fp
	and	$t6, $t6, $t7
	move	$t7, $zero
	bnez	$t6, .LBB2_61
# %bb.64:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_59 Depth=3
	alsl.d	$t6, $a6, $s4, 3
	alsl.d	$s0, $a6, $t1, 3
	sltu	$s5, $t4, $s0
	sltu	$fp, $t6, $fp
	and	$fp, $s5, $fp
	bnez	$fp, .LBB2_61
# %bb.65:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_59 Depth=3
	sltu	$fp, $t5, $s0
	sltu	$t8, $t6, $t8
	and	$t8, $fp, $t8
	bnez	$t8, .LBB2_61
# %bb.66:                               # %vector.ph
                                        #   in Loop: Header=BB2_59 Depth=3
	add.d	$a6, $t2, $a6
	move	$t7, $t2
	.p2align	4, , 16
.LBB2_67:                               # %vector.body
                                        #   Parent Loop BB2_32 Depth=1
                                        #     Parent Loop BB2_57 Depth=2
                                        #       Parent Loop BB2_59 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t5, 0
	vld	$vr1, $t6, 0
	vld	$vr2, $t4, 0
	vfadd.d	$vr0, $vr0, $vr1
	vfadd.d	$vr0, $vr2, $vr0
	vst	$vr0, $t4, 0
	vst	$vr3, $t5, 0
	vst	$vr3, $t6, 0
	addi.d	$t7, $t7, -2
	addi.d	$t4, $t4, 16
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	bnez	$t7, .LBB2_67
# %bb.68:                               # %middle.block
                                        #   in Loop: Header=BB2_59 Depth=3
	move	$t7, $t2
	beq	$t2, $a0, .LBB2_58
	b	.LBB2_61
.LBB2_69:                               # %.loopexit855
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.Lfunc_end2:
	.size	hypre_CycRedSetupCoarseOp, .Lfunc_end2-hypre_CycRedSetupCoarseOp
                                        # -- End function
	.globl	hypre_CyclicReductionSetup      # -- Begin function hypre_CyclicReductionSetup
	.p2align	5
	.type	hypre_CyclicReductionSetup,@function
hypre_CyclicReductionSetup:             # @hypre_CyclicReductionSetup
# %bb.0:
	addi.d	$sp, $sp, -368
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
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s3, $a1, 8
	ld.w	$s1, $fp, 8
	addi.d	$a0, $fp, 12
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 24
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $s3, 40
	st.d	$zero, $sp, 184
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 168
	pcaddu18i	$ra, %call36(hypre_BoxDuplicate)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	addi.d	$s2, $a0, 12
	slli.d	$s4, $s1, 2
	ldx.w	$a0, $s2, $s4
	ldx.w	$a1, $s8, $s4
	sub.w	$a0, $a0, $a1
	addi.w	$a1, $zero, -1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(hypre_Log2)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 16
	alsl.w	$a0, $a0, $a1, 3
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructGridRef)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 244
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 28
	ld.w	$a3, $fp, 12
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a4, $fp, 16
	st.w	$a1, $sp, 244
	st.d	$a2, $sp, 248
	ldx.w	$a1, $s4, $a0
	st.w	$a3, $sp, 268
	st.d	$a4, $sp, 272
	ldx.w	$a2, $s2, $s4
	slli.d	$a1, $a1, 1
	stx.w	$a1, $s4, $a0
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	ldx.w	$a1, $s8, $s4
	move	$s5, $zero
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$s1, $s1, $a0, 2
	addi.d	$s7, $s0, 8
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	beq	$a1, $a2, .LBB3_4
# %bb.1:                                # %.peel.next
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$fp, $a0, $s2, 2
	alsl.d	$s6, $a0, $s8, 2
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	move	$a0, $s8
	move	$a3, $s8
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	move	$a0, $s2
	move	$a3, $s2
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	ori	$a3, $zero, 1
	ori	$s5, $zero, 1
	move	$a4, $s7
	pcaddu18i	$ra, %call36(hypre_StructCoarsen)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 244
	st.w	$s5, $sp, 252
	ld.w	$a0, $s1, 0
	st.d	$zero, $sp, 268
	st.w	$zero, $sp, 276
	ld.w	$a1, $fp, 0
	slli.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	ld.w	$a0, $s6, 0
	beq	$a0, $a1, .LBB3_4
# %bb.2:                                # %.lr.ph.preheader
	addi.d	$s3, $s0, 16
	ori	$s4, $zero, 1
	lu32i.d	$s4, 1
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB3_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	move	$a0, $s8
	move	$a3, $s8
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	move	$a0, $s2
	move	$a3, $s2
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, -8
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	ori	$a3, $zero, 1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(hypre_StructCoarsen)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 244
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 252
	ld.w	$a0, $s1, 0
	st.d	$zero, $sp, 268
	st.w	$zero, $sp, 276
	ld.w	$a1, $fp, 0
	slli.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	ld.w	$a0, $s6, 0
	addi.w	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	bne	$a0, $a1, .LBB3_3
.LBB3_4:                                # %.loopexit
	addi.d	$fp, $s5, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 8
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	st.w	$fp, $s4, 4
	st.d	$s0, $s4, 40
	pcaddu18i	$ra, %call36(hypre_BoxArrayDuplicate)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArray)
	jirl	$ra, $ra, 0
	st.d	$s2, $s4, 48
	slli.w	$s2, $fp, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	bstrpick.d	$a0, $s5, 31, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	beqz	$s5, .LBB3_9
# %bb.5:
	ld.w	$a0, $s4, 12
	ld.w	$a1, $s4, 16
	ld.w	$a2, $s4, 20
	addi.d	$fp, $sp, 256
	st.w	$a0, $sp, 268
	st.w	$a1, $sp, 272
	st.w	$a2, $sp, 276
	st.w	$a0, $sp, 256
	st.w	$a1, $sp, 260
	ld.d	$a0, $s4, 28
	st.w	$a2, $sp, 264
	ld.w	$a1, $s4, 24
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $fp
	st.d	$a0, $sp, 248
	ld.d	$a0, $s0, 0
	st.w	$a1, $sp, 244
	ld.w	$a1, $s1, 0
	addi.d	$a2, $a2, 1
	ld.d	$a0, $a0, 8
	stx.w	$a2, $a3, $fp
	slli.d	$a1, $a1, 1
	st.w	$a1, $s1, 0
	pcaddu18i	$ra, %call36(hypre_BoxArrayDuplicate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 0
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArray)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	beq	$s5, $a0, .LBB3_10
# %bb.6:                                # %.peel.next277.preheader
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$fp, $a0, $fp, 2
	addi.d	$s3, $s8, 8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$s4, $a0, -1
	ori	$s5, $zero, 1
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	.p2align	4, , 16
.LBB3_7:                                # %.peel.next277
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $sp, 268
	st.w	$zero, $sp, 276
	st.d	$zero, $sp, 256
	st.w	$zero, $sp, 264
	ld.w	$a0, $fp, 0
	st.d	$s6, $sp, 244
	ld.d	$a1, $s7, 0
	st.w	$s5, $sp, 252
	ld.w	$a2, $s1, 0
	addi.d	$a3, $a0, 1
	ld.d	$a0, $a1, 8
	st.w	$a3, $fp, 0
	slli.d	$a1, $a2, 1
	st.w	$a1, $s1, 0
	pcaddu18i	$ra, %call36(hypre_BoxArrayDuplicate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArray)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, -1
	addi.d	$s7, $s7, 8
	bnez	$s4, .LBB3_7
# %bb.8:                                # %._crit_edge.loopexit.loopexit
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s5
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	b	.LBB3_10
.LBB3_9:
	move	$a0, $zero
.LBB3_10:                               # %._crit_edge
	slli.d	$fp, $a0, 3
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	ldx.d	$a0, $s0, $fp
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(hypre_BoxArrayDuplicate)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s8, $fp
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB3_12
# %bb.11:
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArray)
	jirl	$ra, $ra, 0
.LBB3_12:
	st.d	$s8, $s4, 56
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	slli.w	$a0, $s0, 1
	slli.d	$a0, $a0, 2
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	addi.d	$a2, $sp, 168
	stx.d	$a1, $a0, $a2
	beqz	$s5, .LBB3_20
# %bb.13:                               # %.lr.ph243.preheader
	move	$s4, $zero
	move	$s5, $zero
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slli.d	$fp, $a0, 3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s6, $a0, 8
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_14:                               # %.lr.ph243
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s3, $s4
	ldx.d	$a1, $s6, $s4
	add.d	$s7, $s3, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(hypre_CycRedCreateCoarseOp)
	jirl	$ra, $ra, 0
	ld.w	$a2, $a0, 60
	ldx.d	$a1, $s6, $s4
	st.d	$a0, $s7, 8
	add.d	$s5, $a2, $s5
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_StructVectorCreate)
	jirl	$ra, $ra, 0
	add.d	$s7, $s2, $s4
	st.d	$a0, $s7, 8
	addi.d	$a1, $sp, 168
	pcaddu18i	$ra, %call36(hypre_StructVectorSetNumGhost)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeShell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 8
	ld.w	$a0, $a0, 36
	addi.d	$s4, $s4, 8
	add.w	$s5, $s5, $a0
	bne	$fp, $s4, .LBB3_14
# %bb.15:                               # %.lr.ph249.preheader
	ori	$a1, $zero, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$s5, $zero
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$s4, $a0, 64
	.p2align	4, , 16
.LBB3_16:                               # %.lr.ph249
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s5
	ld.d	$a0, $s6, 8
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.w	$a1, $a0, 60
	add.d	$s6, $s2, $s5
	ld.d	$a0, $s6, 8
	alsl.d	$s4, $a1, $s4, 3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.w	$a0, $a0, 36
	addi.d	$s5, $s5, 8
	alsl.d	$s4, $a0, $s4, 3
	bne	$fp, $s5, .LBB3_16
# %bb.17:
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 24
	ld.d	$a1, $a3, 28
	ld.w	$a2, $a3, 12
	st.w	$a0, $sp, 244
	ld.d	$a0, $a3, 16
	st.d	$a1, $sp, 248
	ld.w	$a1, $s1, 0
	st.w	$a2, $sp, 268
	st.d	$a0, $sp, 272
	slli.d	$a2, $a1, 1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s3, 8
	st.w	$a2, $s1, 0
	st.d	$s3, $a3, 72
	st.d	$s2, $a3, 80
	addi.d	$a2, $sp, 268
	addi.d	$a3, $sp, 244
	pcaddu18i	$ra, %call36(hypre_CycRedSetupCoarseOp)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$a0, $fp, .LBB3_21
# %bb.18:                               # %.peel.next292.preheader
	addi.d	$s4, $s3, 16
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$s5, $a0, -1
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	.p2align	4, , 16
.LBB3_19:                               # %.peel.next292
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $sp, 268
	st.d	$s6, $sp, 244
	st.w	$fp, $sp, 252
	ld.w	$a2, $s1, 0
	ld.d	$a0, $s4, -8
	ld.d	$a1, $s4, 0
	st.w	$zero, $sp, 276
	slli.d	$a2, $a2, 1
	st.w	$a2, $s1, 0
	addi.d	$a2, $sp, 268
	addi.d	$a3, $sp, 244
	pcaddu18i	$ra, %call36(hypre_CycRedSetupCoarseOp)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	bnez	$s5, .LBB3_19
	b	.LBB3_21
.LBB3_20:                               # %._crit_edge250.thread
	ori	$a1, $zero, 8
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 64
	st.d	$s3, $s4, 72
	st.d	$s2, $s4, 80
.LBB3_21:                               # %._crit_edge254
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	slli.w	$s4, $fp, 3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	beqz	$fp, .LBB3_27
# %bb.22:                               # %.lr.ph257
	move	$s7, $zero
	addi.d	$a0, $sp, 256
	alsl.d	$s8, $s0, $a0, 2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slli.d	$fp, $a0, 3
	addi.d	$s6, $sp, 244
	ori	$s4, $zero, 1
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_23:                               #   in Loop: Header=BB3_25 Depth=1
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 12
	ld.w	$a1, $a3, 16
	st.w	$a0, $sp, 268
	ld.w	$a2, $a3, 20
	st.w	$a1, $sp, 272
	st.w	$a0, $sp, 256
	st.w	$a1, $sp, 260
	st.w	$a2, $sp, 264
	ld.w	$a1, $s8, 0
	st.w	$a2, $sp, 276
	ld.d	$a2, $a3, 24
	ld.w	$a0, $a3, 32
	addi.d	$a1, $a1, 1
	st.w	$a1, $s8, 0
	st.d	$a2, $sp, 244
.LBB3_24:                               #   in Loop: Header=BB3_25 Depth=1
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a1, $s3, $s7
	st.w	$a0, $sp, 252
	ld.w	$a2, $s1, 0
	ldx.d	$a0, $s0, $s7
	ld.d	$a1, $a1, 24
	slli.d	$a2, $a2, 1
	st.w	$a2, $s1, 0
	addi.d	$a2, $sp, 232
	addi.d	$a3, $sp, 224
	addi.d	$a4, $sp, 216
	addi.d	$a5, $sp, 208
	addi.d	$a6, $sp, 200
	addi.d	$a7, $sp, 192
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	ld.d	$a1, $sp, 224
	ld.d	$a4, $sp, 216
	ld.d	$a5, $sp, 208
	ldx.d	$a2, $s2, $s7
	ld.d	$a6, $sp, 200
	ld.d	$a7, $sp, 192
	ldx.d	$a3, $s0, $s7
	ld.d	$a2, $a2, 16
	add.d	$t0, $s5, $s7
	st.d	$t0, $sp, 32
	st.d	$s4, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	addi.d	$a2, $sp, 244
	addi.d	$a3, $sp, 244
	st.d	$s6, $sp, 0
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s3, $s7
	ldx.d	$a0, $s0, $s7
	ld.d	$a1, $a1, 24
	addi.d	$a2, $sp, 232
	addi.d	$a3, $sp, 224
	addi.d	$a4, $sp, 216
	addi.d	$a5, $sp, 208
	addi.d	$a6, $sp, 200
	addi.d	$a7, $sp, 192
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224
	addi.d	$a1, $sp, 268
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 244
	pcaddu18i	$ra, %call36(hypre_ProjectBoxArrayArray)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	ld.d	$a1, $sp, 224
	ld.d	$a4, $sp, 216
	ld.d	$a5, $sp, 208
	ldx.d	$a2, $s2, $s7
	ld.d	$a6, $sp, 200
	ld.d	$a7, $sp, 192
	ldx.d	$a3, $s0, $s7
	ld.d	$a2, $a2, 16
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	add.d	$t0, $t0, $s7
	st.d	$t0, $sp, 32
	st.d	$s4, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	addi.d	$a2, $sp, 244
	addi.d	$a3, $sp, 244
	st.d	$s6, $sp, 0
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 8
	beq	$fp, $s7, .LBB3_27
.LBB3_25:                               # =>This Inner Loop Header: Depth=1
	beqz	$s7, .LBB3_23
# %bb.26:                               #   in Loop: Header=BB3_25 Depth=1
	st.d	$zero, $sp, 256
	st.w	$zero, $sp, 264
	ld.w	$a0, $s8, 0
	st.d	$zero, $sp, 268
	st.w	$zero, $sp, 276
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 244
	b	.LBB3_24
.LBB3_27:                               # %._crit_edge258
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	st.d	$s5, $t1, 88
	ld.d	$a0, $s2, 0
	ld.w	$a1, $t1, 24
	ld.w	$a2, $t1, 28
	ld.w	$a3, $t1, 32
	ld.wu	$a0, $a0, 72
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	st.d	$a4, $t1, 96
	mul.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $a3
	srli.d	$a2, $a0, 31
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 1
	div.w	$a2, $a2, $a1
	alsl.d	$a0, $a0, $a0, 2
	bstrpick.d	$a3, $a0, 31, 31
	add.w	$a0, $a0, $a3
	srai.d	$a0, $a0, 1
	div.w	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	st.w	$a0, $t1, 108
	ori	$a2, $zero, 2
	ori	$a1, $zero, 1
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	bltu	$t2, $a2, .LBB3_35
# %bb.28:                               # %.lr.ph261
	ori	$a2, $zero, 5
	ori	$a1, $zero, 1
	bltu	$t2, $a2, .LBB3_32
# %bb.29:                               # %vector.ph
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a2, $a1, -1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	move	$a1, $a2
	bstrins.d	$a1, $a4, 1, 0
	vori.b	$vr0, $vr4, 0
	vinsgr2vr.w	$vr0, $a0, 0
	addi.d	$a0, $s2, 32
	vrepli.w	$vr1, 5
	move	$a4, $a3
	.p2align	4, , 16
.LBB3_30:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a0, -24
	ld.d	$a6, $a0, -16
	ld.d	$a7, $a0, -8
	ld.d	$t0, $a0, 0
	ld.w	$a5, $a5, 72
	ld.w	$a6, $a6, 72
	ld.w	$a7, $a7, 72
	ld.w	$t0, $t0, 72
	vinsgr2vr.w	$vr2, $a5, 0
	vinsgr2vr.w	$vr2, $a6, 1
	vinsgr2vr.w	$vr3, $a7, 0
	vinsgr2vr.w	$vr3, $t0, 1
	vmadd.w	$vr0, $vr2, $vr1
	vmadd.w	$vr4, $vr3, $vr1
	addi.d	$a4, $a4, -4
	addi.d	$a0, $a0, 32
	bnez	$a4, .LBB3_30
# %bb.31:                               # %middle.block
	vadd.w	$vr0, $vr4, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	beq	$a2, $a3, .LBB3_34
.LBB3_32:                               # %scalar.ph.preheader
	alsl.d	$a2, $a1, $s2, 3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	.p2align	4, , 16
.LBB3_33:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ld.w	$a3, $a3, 72
	alsl.d	$a3, $a3, $a3, 2
	add.d	$a0, $a0, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB3_33
.LBB3_34:                               # %._crit_edge262
	st.w	$a0, $t1, 108
	move	$a1, $t2
.LBB3_35:
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	beq	$a3, $a2, .LBB3_37
# %bb.36:
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s2, $a1
	ld.wu	$a1, $a1, 72
	srli.d	$a2, $a1, 31
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 1
	add.d	$a0, $a0, $a1
	st.w	$a0, $t1, 108
.LBB3_37:
	move	$a0, $zero
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
.Lfunc_end3:
	.size	hypre_CyclicReductionSetup, .Lfunc_end3-hypre_CyclicReductionSetup
                                        # -- End function
	.globl	hypre_CyclicReduction           # -- Begin function hypre_CyclicReduction
	.p2align	5
	.type	hypre_CyclicReduction,@function
hypre_CyclicReduction:                  # @hypre_CyclicReduction
# %bb.0:
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	ld.w	$a4, $a0, 4
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a4, $a0, 8
	st.d	$a4, $sp, 272                   # 8-byte Folded Spill
	ld.d	$s1, $a0, 48
	ld.d	$a4, $a0, 56
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.d	$fp, $a0, 72
	ld.d	$s0, $a0, 80
	ld.d	$a4, $a0, 88
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a4, $a0, 96
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 104
	move	$s3, $a3
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	move	$s2, $a1
	pcaddu18i	$ra, %call36(hypre_BeginTiming)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	st.d	$s3, $sp, 296                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $s0, 0
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	blez	$a1, .LBB4_20
# %bb.1:                                # %.lr.ph
	move	$a6, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 24
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ori	$s6, $zero, 32
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %._crit_edge
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 8
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	bge	$a6, $a0, .LBB4_20
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #       Child Loop BB4_11 Depth 3
                                        #         Child Loop BB4_18 Depth 4
                                        #         Child Loop BB4_15 Depth 4
	ld.d	$a1, $s1, 0
	alsl.d	$a0, $a6, $a6, 1
	slli.d	$s2, $a0, 3
	add.d	$a0, $a1, $s2
	ld.d	$a7, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a7, 16
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $t0, 16
	ld.d	$a4, $a7, 40
	ld.d	$a5, $t0, 40
	ldx.w	$a1, $a1, $s2
	st.d	$a6, $sp, 312                   # 8-byte Folded Spill
	slli.d	$a6, $a6, 2
	ldx.w	$s7, $a4, $a6
	ldx.w	$s8, $a5, $a6
	st.w	$a1, $sp, 340
	ld.w	$a1, $a0, 4
	ld.d	$s1, $a2, 0
	ld.d	$s3, $a3, 0
	ld.d	$fp, $a7, 24
	st.w	$a1, $sp, 344
	ld.w	$a1, $a0, 8
	ld.d	$s5, $t0, 24
	st.w	$a1, $sp, 348
	addi.d	$a2, $sp, 352
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 352
	ld.w	$a1, $sp, 356
	ld.w	$a4, $sp, 360
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	blez	$a2, .LBB4_2
# %bb.4:                                # %.preheader1392.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	blez	$a2, .LBB4_2
# %bb.5:                                # %.preheader1392.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	blez	$a1, .LBB4_2
# %bb.6:                                # %.preheader1392.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	blez	$a0, .LBB4_2
# %bb.7:                                # %.preheader1391.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a3, $zero
	add.d	$a2, $s1, $s2
	add.d	$a4, $s3, $s2
	ld.w	$a5, $sp, 340
	ldx.w	$a6, $s1, $s2
	ld.w	$a7, $sp, 344
	ld.w	$t0, $a2, 4
	ld.w	$t1, $sp, 348
	ld.w	$t2, $a2, 8
	ld.w	$t3, $a2, 16
	sub.d	$t4, $a5, $a6
	sub.d	$t5, $a7, $t0
	sub.d	$t2, $t1, $t2
	sub.w	$t0, $t3, $t0
	ld.d	$t6, $sp, 232                   # 8-byte Folded Reload
	slt	$t3, $t6, $t0
	maskeqz	$t0, $t0, $t3
	masknez	$t3, $t6, $t3
	or	$t0, $t0, $t3
	ld.w	$a2, $a2, 12
	addi.d	$t0, $t0, 1
	mul.d	$t2, $t0, $t2
	add.d	$t2, $t5, $t2
	sub.w	$a2, $a2, $a6
	slt	$a6, $t6, $a2
	maskeqz	$a2, $a2, $a6
	masknez	$a6, $t6, $a6
	or	$a2, $a2, $a6
	addi.d	$a2, $a2, 1
	mul.d	$a6, $t2, $a2
	add.w	$s1, $t4, $a6
	ldx.w	$a6, $s3, $s2
	ld.w	$t2, $a4, 4
	ld.w	$t3, $a4, 8
	ld.w	$t4, $a4, 16
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t2
	sub.d	$t1, $t1, $t3
	sub.w	$t2, $t4, $t2
	slt	$t3, $t6, $t2
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $t6, $t3
	or	$t2, $t2, $t3
	ld.w	$a4, $a4, 12
	addi.d	$t2, $t2, 1
	mul.d	$t1, $t2, $t1
	add.d	$a7, $a7, $t1
	sub.w	$a4, $a4, $a6
	slt	$a6, $t6, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $t6, $a6
	or	$a4, $a4, $a6
	addi.d	$a6, $a4, 1
	ld.d	$t4, $sp, 24                    # 8-byte Folded Reload
	ld.w	$t1, $t4, 28
	mul.d	$a4, $a7, $a6
	add.w	$s2, $a5, $a4
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	mul.d	$a7, $a6, $t1
	mul.d	$t3, $a1, $a7
	mul.d	$a5, $t1, $a2
	ld.w	$t1, $t4, 32
	mul.d	$t4, $a1, $a5
	mul.d	$t5, $a4, $a0
	mul.d	$a6, $a6, $t2
	mul.d	$t2, $a6, $t1
	mul.d	$a2, $a2, $t0
	mul.d	$a2, $a2, $t1
	sub.d	$a5, $a5, $t5
	sub.d	$a6, $a7, $t5
	sub.d	$a7, $a2, $t4
	sub.d	$t0, $t2, $t3
	ori	$a2, $zero, 3
	sltu	$a2, $a2, $a0
	addi.d	$t1, $a4, -1
	sltui	$t1, $t1, 1
	and	$t1, $a2, $t1
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$s0, $a2, 2
	alsl.d	$t3, $s7, $fp, 3
	addi.d	$t4, $t3, 16
	alsl.d	$t5, $s8, $s5, 3
	addi.d	$t6, $t5, 16
	slli.d	$t7, $a4, 3
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_8:                                # %._crit_edge1405.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_9 Depth=2
	add.w	$s1, $a7, $s1
	addi.w	$a3, $a3, 1
	add.w	$s2, $t0, $s2
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	beq	$a3, $a2, .LBB4_2
.LBB4_9:                                # %.preheader1391.us.us.us.us.us
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_11 Depth 3
                                        #         Child Loop BB4_18 Depth 4
                                        #         Child Loop BB4_15 Depth 4
	move	$t8, $zero
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_10:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_11 Depth=3
	add.w	$s1, $a5, $ra
	addi.w	$t8, $t8, 1
	add.w	$s2, $a6, $s3
	beq	$t8, $a1, .LBB4_8
.LBB4_11:                               # %.preheader1390.us.us.us.us.us.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_18 Depth 4
                                        #         Child Loop BB4_15 Depth 4
	beqz	$t1, .LBB4_13
# %bb.12:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_11 Depth=3
	add.d	$a2, $s7, $s1
	alsl.d	$a2, $a2, $fp, 3
	add.d	$t2, $s8, $s2
	alsl.d	$t2, $t2, $s5, 3
	sub.d	$a2, $a2, $t2
	bgeu	$a2, $s6, .LBB4_17
.LBB4_13:                               #   in Loop: Header=BB4_11 Depth=3
	move	$t2, $zero
	move	$s3, $s2
	move	$ra, $s1
.LBB4_14:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_11 Depth=3
	move	$s1, $zero
	move	$s2, $zero
	alsl.d	$s4, $s3, $t5, 3
	alsl.d	$a2, $ra, $t3, 3
	sub.d	$t2, $a0, $t2
	.p2align	4, , 16
.LBB4_15:                               # %scalar.ph
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        #       Parent Loop BB4_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $s4, $s2
	fstx.d	$fa0, $a2, $s2
	add.d	$s2, $s2, $t7
	addi.w	$t2, $t2, -1
	sub.d	$s1, $s1, $a4
	bnez	$t2, .LBB4_15
# %bb.16:                               # %._crit_edge.us.us.us.us.us.us.loopexit
                                        #   in Loop: Header=BB4_11 Depth=3
	sub.d	$s3, $s3, $s1
	sub.d	$ra, $ra, $s1
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_17:                               # %vector.ph
                                        #   in Loop: Header=BB4_11 Depth=3
	add.d	$s3, $s0, $s2
	add.d	$ra, $s0, $s1
	alsl.d	$t2, $s1, $t4, 3
	alsl.d	$s1, $s2, $t6, 3
	move	$a2, $s0
	.p2align	4, , 16
.LBB4_18:                               # %vector.body
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        #       Parent Loop BB4_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $s1, -16
	vld	$vr1, $s1, 0
	vst	$vr0, $t2, -16
	vst	$vr1, $t2, 0
	addi.d	$a2, $a2, -4
	addi.d	$t2, $t2, 32
	addi.d	$s1, $s1, 32
	bnez	$a2, .LBB4_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB4_11 Depth=3
	move	$t2, $s0
	beq	$s0, $a0, .LBB4_10
	b	.LBB4_14
.LBB4_20:                               # %.preheader1389
	move	$a4, $zero
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	addi.d	$a1, $sp, 376
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_21:                               #   in Loop: Header=BB4_22 Depth=1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
.LBB4_22:                               # %.loopexit1388
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_28 Depth 2
                                        #       Child Loop BB4_33 Depth 3
                                        #         Child Loop BB4_34 Depth 4
                                        #           Child Loop BB4_35 Depth 5
                                        #     Child Loop BB4_41 Depth 2
                                        #       Child Loop BB4_46 Depth 3
                                        #         Child Loop BB4_47 Depth 4
                                        #         Child Loop BB4_51 Depth 4
                                        #           Child Loop BB4_57 Depth 5
                                        #             Child Loop BB4_59 Depth 6
                                        #               Child Loop BB4_66 Depth 7
                                        #               Child Loop BB4_70 Depth 7
	beqz	$a4, .LBB4_24
# %bb.23:                               #   in Loop: Header=BB4_22 Depth=1
	st.d	$zero, $sp, 388
	st.w	$zero, $sp, 396
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 376
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_24:                               #   in Loop: Header=BB4_22 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a0, 24
	ld.w	$a0, $a0, 32
	st.w	$a1, $sp, 388
	st.d	$a2, $sp, 392
	st.d	$a3, $sp, 376
.LBB4_25:                               #   in Loop: Header=BB4_22 Depth=1
	st.w	$a0, $sp, 384
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	slli.d	$a3, $a4, 3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	ldx.d	$s5, $a2, $a3
	slli.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	ld.w	$a0, $s5, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	blez	$a0, .LBB4_38
# %bb.26:                               # %.lr.ph1487
                                        #   in Loop: Header=BB4_22 Depth=1
	move	$s0, $zero
	b	.LBB4_28
	.p2align	4, , 16
.LBB4_27:                               # %._crit_edge1471
                                        #   in Loop: Header=BB4_28 Depth=2
	ld.w	$a0, $s5, 8
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB4_38
.LBB4_28:                               #   Parent Loop BB4_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_33 Depth 3
                                        #         Child Loop BB4_34 Depth 4
                                        #           Child Loop BB4_35 Depth 5
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $s4, 0
	ld.d	$s1, $s5, 0
	ld.d	$a2, $a0, 40
	ld.d	$a1, $a1, 16
	alsl.d	$a3, $s0, $s0, 1
	slli.d	$s8, $a3, 3
	ld.d	$s3, $a2, 0
	ld.d	$fp, $a1, 0
	add.d	$s2, $s1, $s8
	st.d	$zero, $sp, 364
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a1, 40
	ldx.w	$a3, $s1, $s8
	slli.d	$a4, $s0, 2
	ldx.w	$s6, $a2, $a4
	st.w	$a3, $sp, 340
	ld.w	$a2, $s2, 4
	st.w	$a2, $sp, 344
	ld.w	$a2, $s2, 8
	ld.d	$s7, $a1, 24
	move	$s1, $a0
	st.w	$a2, $sp, 348
	addi.d	$a1, $sp, 376
	addi.d	$a2, $sp, 352
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 352
	ld.w	$a1, $sp, 356
	ld.w	$a2, $sp, 360
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blez	$a3, .LBB4_27
# %bb.29:                               # %.preheader1386.lr.ph
                                        #   in Loop: Header=BB4_28 Depth=2
	blez	$a2, .LBB4_27
# %bb.30:                               # %.preheader1386.lr.ph
                                        #   in Loop: Header=BB4_28 Depth=2
	blez	$a1, .LBB4_27
# %bb.31:                               # %.preheader1386.lr.ph
                                        #   in Loop: Header=BB4_28 Depth=2
	blez	$a0, .LBB4_27
# %bb.32:                               # %.preheader1384.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_28 Depth=2
	move	$a3, $zero
	add.d	$a4, $s3, $s8
	add.d	$a5, $fp, $s8
	ld.w	$a6, $sp, 340
	ldx.w	$a7, $s3, $s8
	ld.w	$t0, $a4, 4
	ld.w	$t1, $a4, 16
	ld.w	$t2, $sp, 344
	ld.w	$t3, $sp, 348
	ld.w	$t4, $a4, 8
	sub.w	$t1, $t1, $t0
	ld.d	$t6, $sp, 232                   # 8-byte Folded Reload
	slt	$t5, $t6, $t1
	maskeqz	$t1, $t1, $t5
	masknez	$t5, $t6, $t5
	or	$t1, $t1, $t5
	sub.d	$t5, $a6, $a7
	sub.d	$t0, $t2, $t0
	sub.d	$t4, $t3, $t4
	ld.w	$a4, $a4, 12
	addi.d	$t7, $t1, 1
	mul.d	$t1, $t7, $t4
	add.d	$t0, $t0, $t1
	sub.w	$a4, $a4, $a7
	slt	$a7, $t6, $a4
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $t6, $a7
	or	$a4, $a4, $a7
	addi.d	$t4, $a4, 1
	mul.d	$a4, $t0, $t4
	add.w	$a7, $t5, $a4
	ldx.w	$a4, $fp, $s8
	ld.w	$t0, $a5, 4
	ld.w	$t1, $a5, 8
	ld.w	$t5, $a5, 16
	sub.d	$a6, $a6, $a4
	sub.d	$t2, $t2, $t0
	sub.d	$t1, $t3, $t1
	sub.w	$t0, $t5, $t0
	slt	$t3, $t6, $t0
	maskeqz	$t0, $t0, $t3
	masknez	$t3, $t6, $t3
	or	$t0, $t0, $t3
	ld.w	$a5, $a5, 12
	addi.d	$t3, $t0, 1
	mul.d	$t0, $t3, $t1
	add.d	$t0, $t2, $t0
	sub.w	$a4, $a5, $a4
	slt	$a5, $t6, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t6, $a5
	or	$a4, $a4, $a5
	addi.d	$t2, $a4, 1
	mul.d	$a4, $t0, $t2
	add.w	$t6, $a6, $a4
	ld.w	$a4, $sp, 376
	ld.w	$t5, $sp, 380
	ld.w	$t8, $sp, 384
	alsl.d	$a5, $s6, $s7, 3
	slli.d	$a6, $a4, 3
	mul.d	$t0, $a0, $a4
	sub.d	$t0, $zero, $t0
	mul.d	$t1, $t8, $t3
	ori	$t3, $zero, 1
	sub.d	$t3, $t3, $a1
	mul.d	$t3, $t5, $t3
	add.d	$t1, $t1, $t3
	mul.d	$t1, $t1, $t2
	sub.d	$t1, $zero, $t1
	sub.d	$t5, $zero, $t5
	mul.d	$t2, $t5, $t2
	mul.d	$t7, $t8, $t7
	add.d	$t3, $t7, $t3
	mul.d	$t3, $t3, $t4
	sub.d	$t3, $zero, $t3
	mul.d	$t4, $t5, $t4
	.p2align	4, , 16
.LBB4_33:                               # %.preheader1384.us.us.us.us.us
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_28 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_34 Depth 4
                                        #           Child Loop BB4_35 Depth 5
	move	$t5, $zero
	.p2align	4, , 16
.LBB4_34:                               # %.preheader1383.us.us.us.us.us.us
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_28 Depth=2
                                        #       Parent Loop BB4_33 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_35 Depth 5
	move	$fp, $zero
	alsl.d	$s2, $t6, $a5, 3
	sub.d	$t7, $t1, $t6
	sub.d	$t6, $t2, $t6
	alsl.d	$s3, $a7, $s1, 3
	sub.d	$t8, $t3, $a7
	sub.d	$a7, $t4, $a7
	move	$s4, $a0
	.p2align	4, , 16
.LBB4_35:                               #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_28 Depth=2
                                        #       Parent Loop BB4_33 Depth=3
                                        #         Parent Loop BB4_34 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fldx.d	$fa0, $s3, $fp
	fldx.d	$fa1, $s2, $fp
	fdiv.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $s2, $fp
	add.d	$fp, $fp, $a6
	sub.d	$t7, $t7, $a4
	sub.d	$t6, $t6, $a4
	sub.d	$t8, $t8, $a4
	addi.w	$s4, $s4, -1
	sub.d	$a7, $a7, $a4
	bnez	$s4, .LBB4_35
# %bb.36:                               # %._crit_edge1443.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_34 Depth=4
	sub.w	$a7, $t0, $a7
	addi.w	$t5, $t5, 1
	sub.w	$t6, $t0, $t6
	bne	$t5, $a1, .LBB4_34
# %bb.37:                               # %._crit_edge1449.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_33 Depth=3
	sub.w	$a7, $t0, $t8
	addi.w	$a3, $a3, 1
	sub.w	$t6, $t0, $t7
	bne	$a3, $a2, .LBB4_33
	b	.LBB4_27
	.p2align	4, , 16
.LBB4_38:                               # %._crit_edge1488
                                        #   in Loop: Header=BB4_22 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	beq	$a5, $a0, .LBB4_72
# %bb.39:                               #   in Loop: Header=BB4_22 Depth=1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$a0, $a3, $a0
	addi.d	$a4, $a5, 1
	slli.d	$a1, $a4, 3
	ldx.d	$a1, $a3, $a1
	ld.d	$a2, $a0, 8
	ld.d	$a1, $a1, 8
	move	$a0, $zero
	ld.d	$s0, $a2, 16
	ld.d	$a2, $a1, 8
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 16
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	alsl.d	$a1, $a4, $a3, 3
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ori	$s4, $zero, 16
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	b	.LBB4_41
	.p2align	4, , 16
.LBB4_40:                               # %._crit_edge1551
                                        #   in Loop: Header=BB4_41 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 1
	move	$a2, $zero
	beqz	$a1, .LBB4_21
.LBB4_41:                               #   Parent Loop BB4_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_46 Depth 3
                                        #         Child Loop BB4_47 Depth 4
                                        #         Child Loop BB4_51 Depth 4
                                        #           Child Loop BB4_57 Depth 5
                                        #             Child Loop BB4_59 Depth 6
                                        #               Child Loop BB4_66 Depth 7
                                        #               Child Loop BB4_70 Depth 7
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_43
# %bb.42:                               #   in Loop: Header=BB4_41 Depth=2
	ld.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(hypre_FinalizeIndtComputations)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	bgtz	$a1, .LBB4_44
	b	.LBB4_40
	.p2align	4, , 16
.LBB4_43:                               #   in Loop: Header=BB4_41 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 24
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a2, $sp, 400
	pcaddu18i	$ra, %call36(hypre_InitializeIndtComputations)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 8
	blez	$a1, .LBB4_40
.LBB4_44:                               # %.preheader1385.preheader
                                        #   in Loop: Header=BB4_41 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a1, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a4, $zero
	b	.LBB4_46
	.p2align	4, , 16
.LBB4_45:                               # %._crit_edge1548
                                        #   in Loop: Header=BB4_46 Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB4_40
.LBB4_46:                               # %.preheader1385
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_41 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_47 Depth 4
                                        #         Child Loop BB4_51 Depth 4
                                        #           Child Loop BB4_57 Depth 5
                                        #             Child Loop BB4_59 Depth 6
                                        #               Child Loop BB4_66 Depth 7
                                        #               Child Loop BB4_70 Depth 7
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	addi.d	$s1, $a4, -1
	slli.d	$a2, $a4, 3
	addi.d	$a2, $a2, -8
	slli.d	$a3, $a4, 2
	addi.d	$fp, $a3, -4
	slli.d	$a3, $a4, 4
	alsl.d	$a3, $a4, $a3, 3
	addi.d	$a4, $a4, -1
	addi.d	$s7, $a3, -12
	.p2align	4, , 16
.LBB4_47:                               #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_41 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a3, $s0, $fp
	ld.w	$a3, $a3, 4
	addi.w	$s1, $s1, 1
	addi.d	$a2, $a2, 8
	addi.d	$fp, $fp, 4
	addi.w	$a4, $a4, 1
	addi.d	$s7, $s7, 24
	bne	$a3, $a0, .LBB4_47
# %bb.48:                               #   in Loop: Header=BB4_46 Depth=3
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $s0, 0
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a3, 16
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	ld.d	$a7, $a0, 40
	ld.d	$s8, $a4, 0
	ldx.d	$s5, $a5, $a2
	ld.d	$a2, $a6, 16
	ld.d	$a4, $a7, 0
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	add.d	$s2, $s8, $s7
	ld.d	$a4, $a3, 40
	ld.d	$a2, $a2, 0
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a2, $a6, 40
	ld.d	$a3, $a3, 24
	st.d	$a3, $sp, 320                   # 8-byte Folded Spill
	ldx.w	$a3, $a4, $fp
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a3, $a6, 24
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	ldx.w	$a1, $a2, $a1
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 364
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a1, 40
	move	$s0, $a0
	ld.d	$a0, $a1, 24
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ldx.w	$a0, $a2, $fp
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 364
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 368
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 372
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a0, $s2, 4
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.w	$s6, $s2, -8
	st.d	$s7, $sp, 248                   # 8-byte Folded Spill
	st.d	$s8, $sp, 240                   # 8-byte Folded Spill
	ldx.w	$s7, $s8, $s7
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	ld.w	$s8, $s2, -12
	ld.d	$a0, $s3, 0
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 364
	st.w	$zero, $sp, 368
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 8
	blez	$a1, .LBB4_45
# %bb.49:                               # %.lr.ph1547
                                        #   in Loop: Header=BB4_46 Depth=3
	move	$t2, $s5
	move	$s1, $a0
	move	$t4, $zero
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$s3, $a1, $a0, 3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $s6
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	slt	$a1, $t0, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t0, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$a1, $s7, $s8
	slt	$a2, $t0, $a1
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $t0, $a2
	or	$a1, $a1, $a2
	ld.d	$a2, $a3, 40
	addi.d	$a1, $a1, 1
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a4, $t3, 4
	ld.w	$a5, $t3, -8
	ldx.w	$a2, $a2, $fp
	ld.w	$a6, $sp, 368
	ld.w	$a7, $sp, 372
	sub.w	$a4, $a4, $a5
	slt	$a5, $t0, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t0, $a5
	or	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	mul.d	$a4, $a4, $a7
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	ldx.w	$a5, $a5, $t1
	ld.w	$a7, $t3, -12
	ld.d	$a3, $a3, 24
	add.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 364
	sub.w	$a5, $a5, $a7
	slt	$a7, $t0, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t0, $a7
	or	$a5, $a5, $a7
	addi.d	$a5, $a5, 1
	ld.d	$a7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$s7, $t0, $a7, 3
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	ld.d	$t0, $sp, 296                   # 8-byte Folded Reload
	add.d	$a1, $t0, $a0
	ld.d	$a7, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a7, 3
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	mul.d	$a1, $a4, $a5
	add.w	$a1, $a6, $a1
	add.d	$a4, $a2, $a1
	alsl.d	$a4, $a4, $a3, 3
	st.d	$a4, $sp, 312                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	alsl.d	$a1, $a1, $a2, 3
	add.d	$s8, $a3, $a1
	slli.d	$a1, $t0, 3
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s5, $a7, $a0
	st.d	$t2, $sp, 256                   # 8-byte Folded Spill
	b	.LBB4_51
	.p2align	4, , 16
.LBB4_50:                               # %._crit_edge1529
                                        #   in Loop: Header=BB4_51 Depth=4
	ld.d	$t2, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a0, $t2, 8
	ld.d	$t4, $sp, 264                   # 8-byte Folded Reload
	addi.d	$t4, $t4, 1
	bge	$t4, $a0, .LBB4_45
.LBB4_51:                               #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_41 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_57 Depth 5
                                        #             Child Loop BB4_59 Depth 6
                                        #               Child Loop BB4_66 Depth 7
                                        #               Child Loop BB4_70 Depth 7
	ld.d	$a0, $t2, 0
	slli.d	$a1, $t4, 4
	st.d	$t4, $sp, 264                   # 8-byte Folded Spill
	alsl.d	$a1, $t4, $a1, 3
	ldx.w	$a2, $a0, $a1
	add.d	$s2, $a0, $a1
	st.w	$a2, $sp, 340
	ld.w	$a0, $s2, 4
	st.w	$a0, $sp, 344
	ld.w	$a0, $s2, 8
	st.w	$a0, $sp, 348
	addi.d	$a0, $sp, 340
	addi.d	$a1, $sp, 388
	addi.d	$a2, $sp, 376
	addi.d	$a3, $sp, 328
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 376
	addi.d	$a2, $sp, 352
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 352
	ld.w	$a1, $sp, 356
	ld.w	$a4, $sp, 360
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 296                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	blez	$a2, .LBB4_50
# %bb.52:                               # %.preheader1381.lr.ph
                                        #   in Loop: Header=BB4_51 Depth=4
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	blez	$a2, .LBB4_50
# %bb.53:                               # %.preheader1381.lr.ph
                                        #   in Loop: Header=BB4_51 Depth=4
	blez	$a1, .LBB4_50
# %bb.54:                               # %.preheader1381.lr.ph
                                        #   in Loop: Header=BB4_51 Depth=4
	blez	$a0, .LBB4_50
# %bb.55:                               # %.preheader1380.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_51 Depth=4
	move	$s2, $zero
	ld.w	$a3, $sp, 340
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a4, $t0, -12
	ld.w	$a5, $sp, 344
	ld.w	$a2, $t0, -8
	ld.w	$a6, $sp, 348
	ld.w	$a7, $t0, -4
	ld.w	$t0, $t0, 4
	sub.d	$t1, $a3, $a4
	sub.d	$t2, $a5, $a2
	sub.d	$a7, $a6, $a7
	sub.w	$a2, $t0, $a2
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	slt	$t0, $t7, $a2
	maskeqz	$a2, $a2, $t0
	masknez	$t0, $t7, $t0
	or	$a2, $a2, $t0
	ld.d	$t4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $t4
	addi.d	$a2, $a2, 1
	mul.d	$a7, $a2, $a7
	add.d	$a7, $t2, $a7
	sub.w	$a4, $t0, $a4
	slt	$t0, $t7, $a4
	maskeqz	$a4, $a4, $t0
	masknez	$t0, $t7, $t0
	or	$a4, $a4, $t0
	addi.d	$t0, $a4, 1
	mul.d	$a4, $a7, $t0
	add.w	$a4, $t1, $a4
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a7, $t3, -12
	ld.w	$t1, $t3, -8
	ld.w	$t2, $t3, -4
	ld.w	$t3, $t3, 4
	sub.d	$a3, $a3, $a7
	sub.d	$a5, $a5, $t1
	sub.d	$a6, $a6, $t2
	sub.w	$t1, $t3, $t1
	slt	$t2, $t7, $t1
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $t7, $t2
	or	$t1, $t1, $t2
	ld.d	$t2, $sp, 240                   # 8-byte Folded Reload
	ldx.w	$t2, $t2, $t4
	addi.d	$t1, $t1, 1
	mul.d	$a6, $t1, $a6
	add.d	$a5, $a5, $a6
	sub.w	$a6, $t2, $a7
	slt	$a7, $t7, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $t7, $a7
	or	$a6, $a6, $a7
	addi.d	$t2, $a6, 1
	mul.d	$a5, $a5, $t2
	add.w	$a5, $a3, $a5
	ld.w	$a3, $sp, 328
	ld.d	$t8, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a6, $t8, 0
	ld.w	$a7, $sp, 332
	ld.w	$t3, $t8, 4
	ld.w	$t4, $sp, 336
	ld.w	$t5, $t8, 8
	ld.w	$t6, $t8, 16
	sub.d	$a3, $a3, $a6
	sub.d	$a7, $a7, $t3
	sub.d	$t4, $t4, $t5
	sub.w	$t3, $t6, $t3
	slt	$t5, $t7, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $t7, $t5
	or	$t3, $t3, $t5
	ld.w	$t5, $t8, 12
	addi.d	$t3, $t3, 1
	mul.d	$t4, $t3, $t4
	add.d	$a7, $a7, $t4
	sub.w	$a6, $t5, $a6
	slt	$t4, $t7, $a6
	maskeqz	$a6, $a6, $t4
	masknez	$t4, $t7, $t4
	or	$a6, $a6, $t4
	addi.d	$t4, $a6, 1
	ld.w	$t5, $sp, 380
	mul.d	$a6, $a7, $t4
	add.w	$a6, $a3, $a6
	ld.w	$a7, $sp, 376
	mul.d	$a3, $t5, $t2
	mul.d	$t6, $a1, $a3
	mul.d	$t5, $t5, $t0
	mul.d	$t1, $t2, $t1
	ld.w	$t2, $sp, 384
	mul.d	$t7, $a1, $t5
	mul.d	$a2, $t0, $a2
	mul.d	$t8, $a7, $a0
	mul.d	$fp, $t1, $t2
	mul.d	$a2, $a2, $t2
	sub.d	$t0, $t5, $t8
	sub.d	$t1, $a3, $t8
	sub.d	$t2, $t4, $a0
	sub.d	$a2, $a2, $t7
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	sub.d	$a2, $fp, $t6
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	sub.d	$a2, $t3, $a1
	mul.d	$a2, $a2, $t4
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	ori	$a2, $zero, 5
	sltu	$a2, $a2, $a0
	addi.d	$a3, $a7, -1
	sltui	$a3, $a3, 1
	and	$t6, $a2, $a3
	bstrpick.d	$a2, $a0, 30, 1
	slli.d	$fp, $a2, 1
	slli.d	$t8, $a7, 3
	b	.LBB4_57
	.p2align	4, , 16
.LBB4_56:                               # %._crit_edge1502.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_57 Depth=5
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	add.w	$a4, $a2, $a4
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	add.w	$a5, $a2, $a5
	ld.d	$s2, $sp, 304                   # 8-byte Folded Reload
	addi.w	$s2, $s2, 1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a2
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	beq	$s2, $a2, .LBB4_50
.LBB4_57:                               # %.preheader1380.us.us.us.us.us
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_41 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        #         Parent Loop BB4_51 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB4_59 Depth 6
                                        #               Child Loop BB4_66 Depth 7
                                        #               Child Loop BB4_70 Depth 7
	st.d	$s2, $sp, 304                   # 8-byte Folded Spill
	move	$s2, $zero
	b	.LBB4_59
	.p2align	4, , 16
.LBB4_58:                               # %._crit_edge1494.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_59 Depth=6
	add.w	$a4, $t0, $a4
	add.w	$a5, $t1, $a5
	addi.w	$s2, $s2, 1
	add.w	$a6, $t2, $a6
	beq	$s2, $a1, .LBB4_56
.LBB4_59:                               # %.preheader1379.us.us.us.us.us.us
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_41 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        #         Parent Loop BB4_51 Depth=4
                                        #           Parent Loop BB4_57 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB4_66 Depth 7
                                        #               Child Loop BB4_70 Depth 7
	beqz	$t6, .LBB4_68
# %bb.60:                               # %vector.memcheck1840
                                        #   in Loop: Header=BB4_59 Depth=6
	alsl.d	$a2, $a6, $s3, 3
	alsl.d	$a3, $a5, $s7, 3
	sub.d	$a3, $a2, $a3
	move	$ra, $zero
	bltu	$a3, $s4, .LBB4_69
# %bb.61:                               # %vector.memcheck1840
                                        #   in Loop: Header=BB4_59 Depth=6
	alsl.d	$a3, $a4, $s0, 3
	sub.d	$a3, $a2, $a3
	bltu	$a3, $s4, .LBB4_69
# %bb.62:                               # %vector.memcheck1840
                                        #   in Loop: Header=BB4_59 Depth=6
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	sub.d	$a3, $a2, $a3
	bltu	$a3, $s4, .LBB4_69
# %bb.63:                               # %vector.memcheck1840
                                        #   in Loop: Header=BB4_59 Depth=6
	alsl.d	$a3, $a4, $s1, 3
	sub.d	$a3, $a2, $a3
	bltu	$a3, $s4, .LBB4_69
# %bb.64:                               # %vector.memcheck1840
                                        #   in Loop: Header=BB4_59 Depth=6
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	sub.d	$a3, $a2, $a3
	bltu	$a3, $s4, .LBB4_69
# %bb.65:                               # %vector.ph1851
                                        #   in Loop: Header=BB4_59 Depth=6
	slli.d	$a3, $a5, 3
	slli.d	$t3, $a4, 3
	add.d	$a6, $fp, $a6
	add.d	$a5, $fp, $a5
	add.d	$a4, $fp, $a4
	add.d	$ra, $s1, $t3
	add.d	$t3, $s0, $t3
	add.d	$t4, $s8, $a3
	add.d	$t5, $s5, $a3
	add.d	$a3, $s7, $a3
	move	$t7, $fp
	.p2align	4, , 16
.LBB4_66:                               # %vector.body1854
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_41 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        #         Parent Loop BB4_51 Depth=4
                                        #           Parent Loop BB4_57 Depth=5
                                        #             Parent Loop BB4_59 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	vld	$vr0, $a3, 0
	vld	$vr1, $t3, 0
	vld	$vr2, $t5, 0
	vld	$vr3, $ra, 0
	vld	$vr4, $t4, 0
	vbitrevi.d	$vr1, $vr1, 63
	vfmadd.d	$vr0, $vr1, $vr2, $vr0
	vbitrevi.d	$vr1, $vr3, 63
	vfmadd.d	$vr0, $vr1, $vr4, $vr0
	vst	$vr0, $a2, 0
	addi.d	$a2, $a2, 16
	addi.d	$t7, $t7, -2
	addi.d	$ra, $ra, 16
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	addi.d	$a3, $a3, 16
	bnez	$t7, .LBB4_66
# %bb.67:                               # %middle.block1865
                                        #   in Loop: Header=BB4_59 Depth=6
	move	$ra, $fp
	beq	$fp, $a0, .LBB4_58
	b	.LBB4_69
	.p2align	4, , 16
.LBB4_68:                               #   in Loop: Header=BB4_59 Depth=6
	move	$ra, $zero
.LBB4_69:                               # %scalar.ph1849.preheader
                                        #   in Loop: Header=BB4_59 Depth=6
	move	$a2, $zero
	move	$a3, $zero
	alsl.d	$t3, $a6, $s3, 3
	alsl.d	$t4, $a5, $s7, 3
	alsl.d	$t5, $a5, $s5, 3
	alsl.d	$t7, $a5, $s8, 3
	alsl.d	$s6, $a4, $s0, 3
	alsl.d	$s4, $a4, $s1, 3
	sub.d	$ra, $a0, $ra
	.p2align	4, , 16
.LBB4_70:                               # %scalar.ph1849
                                        #   Parent Loop BB4_22 Depth=1
                                        #     Parent Loop BB4_41 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        #         Parent Loop BB4_51 Depth=4
                                        #           Parent Loop BB4_57 Depth=5
                                        #             Parent Loop BB4_59 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $t4, $a3
	fldx.d	$fa1, $s6, $a3
	fldx.d	$fa2, $t5, $a3
	fldx.d	$fa3, $s4, $a3
	fldx.d	$fa4, $t7, $a3
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fneg.d	$fa1, $fa3
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fst.d	$fa0, $t3, 0
	addi.d	$a6, $a6, 1
	addi.d	$t3, $t3, 8
	add.d	$a3, $a3, $t8
	addi.w	$ra, $ra, -1
	sub.d	$a2, $a2, $a7
	bnez	$ra, .LBB4_70
# %bb.71:                               # %._crit_edge1494.us.us.us.us.us.us.loopexit
                                        #   in Loop: Header=BB4_59 Depth=6
	sub.d	$a5, $a5, $a2
	sub.d	$a4, $a4, $a2
	ori	$s4, $zero, 16
	b	.LBB4_58
.LBB4_72:
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	blt	$a1, $a0, .LBB4_131
# %bb.73:                               # %.lr.ph1655
	addi.w	$a0, $a1, -2
	b	.LBB4_75
	.p2align	4, , 16
.LBB4_74:                               #   in Loop: Header=BB4_75 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a0, $a1, -1
	blez	$a1, .LBB4_131
.LBB4_75:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_81 Depth 2
                                        #       Child Loop BB4_82 Depth 3
                                        #       Child Loop BB4_89 Depth 3
                                        #         Child Loop BB4_91 Depth 4
                                        #           Child Loop BB4_97 Depth 5
                                        #           Child Loop BB4_95 Depth 5
                                        #     Child Loop BB4_101 Depth 2
                                        #       Child Loop BB4_106 Depth 3
                                        #         Child Loop BB4_109 Depth 4
                                        #           Child Loop BB4_115 Depth 5
                                        #             Child Loop BB4_117 Depth 6
                                        #               Child Loop BB4_124 Depth 7
                                        #               Child Loop BB4_129 Depth 7
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	beqz	$a0, .LBB4_77
# %bb.76:                               #   in Loop: Header=BB4_75 Depth=1
	st.d	$zero, $sp, 388
	st.w	$zero, $sp, 396
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 376
	b	.LBB4_78
	.p2align	4, , 16
.LBB4_77:                               #   in Loop: Header=BB4_75 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 12
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a0, 24
	ld.w	$a0, $a0, 32
	st.w	$a1, $sp, 388
	st.d	$a2, $sp, 392
	st.d	$a3, $sp, 376
.LBB4_78:                               #   in Loop: Header=BB4_75 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 8
	ld.d	$a1, $a1, 8
	st.w	$a0, $sp, 384
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 0
	ld.d	$a3, $a1, 8
	slli.d	$a0, $a0, 1
	st.w	$a0, $a2, 0
	ld.w	$a0, $a3, 8
	blez	$a0, .LBB4_99
# %bb.79:                               # %.preheader1377.preheader
                                        #   in Loop: Header=BB4_75 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	ld.d	$a0, $a0, 8
	ld.d	$s1, $a0, 16
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	move	$a2, $zero
	move	$s4, $zero
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	b	.LBB4_81
	.p2align	4, , 16
.LBB4_80:                               # %._crit_edge1582
                                        #   in Loop: Header=BB4_81 Depth=2
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 8
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bge	$a2, $a0, .LBB4_99
.LBB4_81:                               # %.preheader1377
                                        #   Parent Loop BB4_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_82 Depth 3
                                        #       Child Loop BB4_89 Depth 3
                                        #         Child Loop BB4_91 Depth 4
                                        #           Child Loop BB4_97 Depth 5
                                        #           Child Loop BB4_95 Depth 5
	slli.d	$s8, $a2, 2
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s8
	slli.d	$s6, $s4, 2
	slli.d	$a1, $s4, 4
	alsl.d	$a1, $s4, $a1, 3
	addi.d	$s4, $s4, -1
	addi.d	$s2, $a1, -12
	.p2align	4, , 16
.LBB4_82:                               #   Parent Loop BB4_75 Depth=1
                                        #     Parent Loop BB4_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a1, $s1, $s6
	addi.d	$s6, $s6, 4
	addi.w	$s4, $s4, 1
	addi.d	$s2, $s2, 24
	bne	$a1, $a0, .LBB4_82
# %bb.83:                               #   in Loop: Header=BB4_81 Depth=2
	ld.d	$a0, $a3, 0
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a2, 1
	slli.d	$fp, $a1, 3
	ldx.w	$a1, $a0, $fp
	add.d	$s0, $a0, $fp
	st.w	$a1, $sp, 328
	ld.w	$a0, $s0, 4
	st.w	$a0, $sp, 332
	ld.w	$a0, $s0, 8
	st.w	$a0, $sp, 336
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 388
	addi.d	$a2, $sp, 376
	addi.d	$a3, $sp, 340
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	ld.d	$a2, $a2, 0
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 40
	ld.d	$s3, $a3, 0
	ld.d	$s5, $a0, 24
	ld.d	$a0, $a1, 40
	add.d	$a2, $a2, $s6
	ld.w	$s6, $a2, -4
	ld.d	$s7, $a1, 24
	ldx.w	$s8, $a0, $s8
	addi.d	$a1, $sp, 352
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 352
	ld.w	$a1, $sp, 356
	ld.w	$a2, $sp, 360
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blez	$a3, .LBB4_80
# %bb.84:                               # %.preheader1375.lr.ph
                                        #   in Loop: Header=BB4_81 Depth=2
	blez	$a2, .LBB4_80
# %bb.85:                               # %.preheader1375.lr.ph
                                        #   in Loop: Header=BB4_81 Depth=2
	blez	$a1, .LBB4_80
# %bb.86:                               # %.preheader1375.lr.ph
                                        #   in Loop: Header=BB4_81 Depth=2
	blez	$a0, .LBB4_80
# %bb.87:                               # %.preheader1374.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_81 Depth=2
	move	$a3, $zero
	ld.d	$t4, $sp, 312                   # 8-byte Folded Reload
	add.d	$a4, $t4, $s2
	add.d	$a5, $s3, $fp
	ld.w	$a6, $sp, 340
	ld.w	$a7, $a4, -12
	ld.w	$t0, $sp, 344
	ld.w	$t1, $a4, -8
	ld.w	$t2, $sp, 348
	ld.w	$t3, $a4, -4
	ld.w	$a4, $a4, 4
	sub.d	$a6, $a6, $a7
	sub.d	$t0, $t0, $t1
	sub.d	$t2, $t2, $t3
	sub.w	$a4, $a4, $t1
	ld.d	$t6, $sp, 232                   # 8-byte Folded Reload
	slt	$t1, $t6, $a4
	maskeqz	$a4, $a4, $t1
	masknez	$t1, $t6, $t1
	or	$a4, $a4, $t1
	ldx.w	$t1, $t4, $s2
	addi.d	$t3, $a4, 1
	mul.d	$a4, $t3, $t2
	add.d	$a4, $t0, $a4
	sub.w	$a7, $t1, $a7
	slt	$t0, $t6, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t6, $t0
	or	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	mul.d	$a4, $a4, $a7
	add.w	$s0, $a6, $a4
	ld.w	$a4, $sp, 328
	ldx.w	$a6, $s3, $fp
	ld.w	$t0, $sp, 332
	ld.w	$t1, $a5, 4
	ld.w	$t2, $sp, 336
	ld.w	$t4, $a5, 8
	ld.w	$t5, $a5, 16
	sub.d	$a4, $a4, $a6
	sub.d	$t0, $t0, $t1
	sub.d	$t2, $t2, $t4
	sub.w	$t1, $t5, $t1
	slt	$t4, $t6, $t1
	maskeqz	$t1, $t1, $t4
	masknez	$t4, $t6, $t4
	or	$t1, $t1, $t4
	ld.w	$a5, $a5, 12
	addi.d	$t1, $t1, 1
	mul.d	$t2, $t1, $t2
	add.d	$t0, $t0, $t2
	sub.w	$a5, $a5, $a6
	slt	$a6, $t6, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t6, $a6
	or	$a5, $a5, $a6
	addi.d	$t2, $a5, 1
	mul.d	$a5, $t0, $t2
	ld.w	$a6, $sp, 380
	add.w	$s2, $a4, $a5
	ld.w	$a4, $sp, 376
	ld.w	$a5, $sp, 384
	mul.d	$a6, $a6, $a7
	mul.d	$t0, $a1, $a6
	mul.d	$a7, $a7, $t3
	mul.d	$a7, $a7, $a5
	mul.d	$a5, $a0, $a4
	sub.d	$a5, $a6, $a5
	sub.d	$a6, $t2, $a0
	sub.d	$a7, $a7, $t0
	sub.d	$t0, $t1, $a1
	mul.d	$t0, $t0, $t2
	ori	$t1, $zero, 3
	sltu	$t1, $t1, $a0
	addi.d	$t2, $a4, -1
	sltui	$t2, $t2, 1
	and	$t1, $t1, $t2
	bstrpick.d	$t2, $a0, 30, 2
	slli.d	$t2, $t2, 2
	alsl.d	$t3, $s6, $s5, 3
	addi.d	$t4, $t3, 16
	alsl.d	$t5, $s8, $s7, 3
	addi.d	$t6, $t5, 16
	slli.d	$t7, $a4, 3
	b	.LBB4_89
	.p2align	4, , 16
.LBB4_88:                               # %._crit_edge1563.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_89 Depth=3
	add.w	$s0, $a7, $s0
	addi.w	$a3, $a3, 1
	add.w	$s2, $s2, $t0
	beq	$a3, $a2, .LBB4_80
.LBB4_89:                               # %.preheader1374.us.us.us.us.us
                                        #   Parent Loop BB4_75 Depth=1
                                        #     Parent Loop BB4_81 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_91 Depth 4
                                        #           Child Loop BB4_97 Depth 5
                                        #           Child Loop BB4_95 Depth 5
	move	$t8, $zero
	b	.LBB4_91
	.p2align	4, , 16
.LBB4_90:                               # %._crit_edge1557.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_91 Depth=4
	add.w	$s0, $a5, $ra
	addi.w	$t8, $t8, 1
	add.w	$s2, $a6, $fp
	beq	$t8, $a1, .LBB4_88
.LBB4_91:                               # %.preheader1373.us.us.us.us.us.us
                                        #   Parent Loop BB4_75 Depth=1
                                        #     Parent Loop BB4_81 Depth=2
                                        #       Parent Loop BB4_89 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_97 Depth 5
                                        #           Child Loop BB4_95 Depth 5
	beqz	$t1, .LBB4_93
# %bb.92:                               # %vector.memcheck1942
                                        #   in Loop: Header=BB4_91 Depth=4
	add.d	$fp, $s6, $s0
	alsl.d	$fp, $fp, $s5, 3
	add.d	$s3, $s8, $s2
	alsl.d	$s3, $s3, $s7, 3
	sub.d	$fp, $fp, $s3
	ori	$s3, $zero, 32
	bgeu	$fp, $s3, .LBB4_96
.LBB4_93:                               #   in Loop: Header=BB4_91 Depth=4
	move	$s3, $zero
	move	$fp, $s2
	move	$ra, $s0
.LBB4_94:                               # %scalar.ph1944.preheader
                                        #   in Loop: Header=BB4_91 Depth=4
	alsl.d	$s0, $fp, $t5, 3
	alsl.d	$s2, $ra, $t3, 3
	sub.d	$s3, $a0, $s3
	.p2align	4, , 16
.LBB4_95:                               # %scalar.ph1944
                                        #   Parent Loop BB4_75 Depth=1
                                        #     Parent Loop BB4_81 Depth=2
                                        #       Parent Loop BB4_89 Depth=3
                                        #         Parent Loop BB4_91 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $s2, 0
	add.d	$ra, $ra, $a4
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	addi.w	$s3, $s3, -1
	add.d	$s2, $s2, $t7
	bnez	$s3, .LBB4_95
	b	.LBB4_90
	.p2align	4, , 16
.LBB4_96:                               # %vector.ph1946
                                        #   in Loop: Header=BB4_91 Depth=4
	add.d	$fp, $t2, $s2
	add.d	$ra, $t2, $s0
	alsl.d	$s0, $s0, $t4, 3
	alsl.d	$s2, $s2, $t6, 3
	move	$s3, $t2
	.p2align	4, , 16
.LBB4_97:                               # %vector.body1949
                                        #   Parent Loop BB4_75 Depth=1
                                        #     Parent Loop BB4_81 Depth=2
                                        #       Parent Loop BB4_89 Depth=3
                                        #         Parent Loop BB4_91 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr0, $s2, -16
	vld	$vr1, $s2, 0
	vst	$vr0, $s0, -16
	vst	$vr1, $s0, 0
	addi.d	$s3, $s3, -4
	addi.d	$s0, $s0, 32
	addi.d	$s2, $s2, 32
	bnez	$s3, .LBB4_97
# %bb.98:                               # %middle.block1956
                                        #   in Loop: Header=BB4_91 Depth=4
	move	$s3, $t2
	beq	$t2, $a0, .LBB4_90
	b	.LBB4_94
	.p2align	4, , 16
.LBB4_99:                               # %.preheader1378
                                        #   in Loop: Header=BB4_75 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$fp, $a2, $a1, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	b	.LBB4_101
	.p2align	4, , 16
.LBB4_100:                              # %._crit_edge1651
                                        #   in Loop: Header=BB4_101 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 1
	move	$a2, $zero
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_74
.LBB4_101:                              #   Parent Loop BB4_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_106 Depth 3
                                        #         Child Loop BB4_109 Depth 4
                                        #           Child Loop BB4_115 Depth 5
                                        #             Child Loop BB4_117 Depth 6
                                        #               Child Loop BB4_124 Depth 7
                                        #               Child Loop BB4_129 Depth 7
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_103
# %bb.102:                              #   in Loop: Header=BB4_101 Depth=2
	ld.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(hypre_FinalizeIndtComputations)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	ld.d	$a1, $fp, 0
	ldx.d	$a2, $a1, $a0
	ld.w	$a0, $a2, 8
	bgtz	$a0, .LBB4_104
	b	.LBB4_100
	.p2align	4, , 16
.LBB4_103:                              #   in Loop: Header=BB4_101 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 24
	ld.d	$a0, $fp, 0
	addi.d	$a2, $sp, 400
	pcaddu18i	$ra, %call36(hypre_InitializeIndtComputations)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	ld.d	$a1, $fp, 0
	ldx.d	$a2, $a1, $a0
	ld.w	$a0, $a2, 8
	blez	$a0, .LBB4_100
.LBB4_104:                              # %.lr.ph1650.preheader
                                        #   in Loop: Header=BB4_101 Depth=2
	move	$s6, $zero
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	b	.LBB4_106
	.p2align	4, , 16
.LBB4_105:                              # %._crit_edge1647
                                        #   in Loop: Header=BB4_106 Depth=3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	addi.d	$s6, $s6, 1
	bge	$s6, $a0, .LBB4_100
.LBB4_106:                              # %.lr.ph1650
                                        #   Parent Loop BB4_75 Depth=1
                                        #     Parent Loop BB4_101 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_109 Depth 4
                                        #           Child Loop BB4_115 Depth 5
                                        #             Child Loop BB4_117 Depth 6
                                        #               Child Loop BB4_124 Depth 7
                                        #               Child Loop BB4_129 Depth 7
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $s2, 0
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a1, 16
	ld.d	$a3, $a0, 40
	slli.d	$a4, $s6, 3
	ldx.d	$s7, $a2, $a4
	ld.d	$fp, $a1, 0
	ld.d	$a1, $a3, 0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	alsl.d	$a1, $s6, $s6, 1
	slli.d	$s0, $a1, 3
	add.d	$s8, $fp, $s0
	st.d	$zero, $sp, 364
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a1, 40
	ld.d	$a1, $a1, 24
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	slli.d	$s4, $s6, 2
	ldx.w	$a1, $a2, $s4
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 364
	ld.d	$a1, $s3, 0
	move	$s1, $a0
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	move	$a0, $a1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a1, 40
	move	$s2, $a0
	ld.d	$a0, $a1, 24
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ldx.w	$a0, $a2, $s4
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 364
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 368
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 372
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.w	$a0, $s8, 16
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.w	$s5, $s8, 4
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	ld.w	$s8, $s8, 12
	ldx.w	$a0, $fp, $s0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $s3, 0
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 364
	st.w	$zero, $sp, 368
	st.w	$zero, $sp, 372
	addi.d	$a2, $sp, 364
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	move	$a1, $s6
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 8
	blez	$a1, .LBB4_105
# %bb.107:                              # %.lr.ph1646
                                        #   in Loop: Header=BB4_106 Depth=3
	move	$s3, $a0
	move	$t4, $zero
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $s5
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	slt	$a1, $t2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t2, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	sub.w	$a1, $s8, $a1
	slt	$a2, $t2, $a1
	maskeqz	$a1, $a1, $a2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	masknez	$a2, $t2, $a2
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	ld.d	$a2, $a3, 40
	ld.d	$a3, $a3, 24
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a4, $t1, 16
	ld.w	$a5, $t1, 4
	ldx.w	$a2, $a2, $s4
	ld.w	$a6, $sp, 364
	ld.w	$a7, $sp, 368
	sub.w	$a4, $a4, $a5
	slt	$a5, $t2, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t2, $a5
	or	$a4, $a4, $a5
	ld.w	$a5, $sp, 372
	ldx.w	$t0, $fp, $s0
	ld.w	$t1, $t1, 12
	addi.d	$a4, $a4, 1
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a7
	sub.w	$a5, $t1, $t0
	slt	$a7, $t2, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $t2, $a7
	or	$a5, $a5, $a7
	addi.d	$a5, $a5, 1
	ld.d	$a7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$s5, $t0, $a7, 3
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	ld.d	$t0, $sp, 296                   # 8-byte Folded Reload
	add.d	$a1, $t0, $a0
	ld.d	$a7, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a7, 3
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	mul.d	$a1, $a4, $a5
	add.w	$a1, $a6, $a1
	add.d	$a4, $a2, $a1
	alsl.d	$a4, $a4, $a3, 3
	st.d	$a4, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	alsl.d	$a1, $a1, $a2, 3
	add.d	$s8, $a3, $a1
	slli.d	$a1, $t0, 3
	alsl.d	$a0, $a0, $a1, 3
	add.d	$fp, $a7, $a0
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	b	.LBB4_109
	.p2align	4, , 16
.LBB4_108:                              # %._crit_edge1630
                                        #   in Loop: Header=BB4_109 Depth=4
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a0, $s7, 8
	ld.d	$t4, $sp, 240                   # 8-byte Folded Reload
	addi.d	$t4, $t4, 1
	bge	$t4, $a0, .LBB4_105
.LBB4_109:                              #   Parent Loop BB4_75 Depth=1
                                        #     Parent Loop BB4_101 Depth=2
                                        #       Parent Loop BB4_106 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_115 Depth 5
                                        #             Child Loop BB4_117 Depth 6
                                        #               Child Loop BB4_124 Depth 7
                                        #               Child Loop BB4_129 Depth 7
	ld.d	$a0, $s7, 0
	slli.d	$a1, $t4, 4
	st.d	$t4, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$a1, $t4, $a1, 3
	ldx.w	$a2, $a0, $a1
	add.d	$a0, $a0, $a1
	st.w	$a2, $sp, 340
	ld.w	$a1, $a0, 4
	st.w	$a1, $sp, 344
	ld.w	$a1, $a0, 8
	st.w	$a1, $sp, 348
	addi.d	$a1, $sp, 376
	addi.d	$a2, $sp, 352
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 352
	ld.w	$a1, $sp, 356
	ld.w	$a4, $sp, 360
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	blez	$a2, .LBB4_108
# %bb.110:                              # %.preheader1372.lr.ph
                                        #   in Loop: Header=BB4_109 Depth=4
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	blez	$a2, .LBB4_108
# %bb.111:                              # %.preheader1372.lr.ph
                                        #   in Loop: Header=BB4_109 Depth=4
	blez	$a1, .LBB4_108
# %bb.112:                              # %.preheader1372.lr.ph
                                        #   in Loop: Header=BB4_109 Depth=4
	blez	$a0, .LBB4_108
# %bb.113:                              # %.preheader1371.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_109 Depth=4
	move	$t7, $zero
	ld.w	$a2, $sp, 340
	ld.d	$t3, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a3, $t3, 0
	ld.w	$a5, $sp, 344
	ld.w	$a4, $t3, 4
	ld.w	$a6, $sp, 348
	ld.w	$a7, $t3, 8
	ld.w	$t0, $t3, 16
	sub.d	$t1, $a2, $a3
	sub.d	$t2, $a5, $a4
	sub.d	$a7, $a6, $a7
	sub.w	$a4, $t0, $a4
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	slt	$t0, $t4, $a4
	maskeqz	$a4, $a4, $t0
	masknez	$t0, $t4, $t0
	or	$a4, $a4, $t0
	ld.w	$t0, $t3, 12
	addi.d	$t3, $a4, 1
	mul.d	$a4, $t3, $a7
	add.d	$a4, $t2, $a4
	sub.w	$a3, $t0, $a3
	slt	$a7, $t4, $a3
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $t4, $a7
	or	$a3, $a3, $a7
	addi.d	$a3, $a3, 1
	mul.d	$a4, $a4, $a3
	add.w	$a4, $t1, $a4
	ld.d	$t5, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a7, $t5, 0
	ld.w	$t0, $t5, 4
	ld.w	$t1, $t5, 8
	ld.w	$t2, $t5, 16
	sub.d	$a2, $a2, $a7
	sub.d	$a5, $a5, $t0
	sub.d	$a6, $a6, $t1
	sub.w	$t0, $t2, $t0
	slt	$t1, $t4, $t0
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $t4, $t1
	or	$t0, $t0, $t1
	ld.w	$t1, $t5, 12
	addi.d	$t0, $t0, 1
	mul.d	$a6, $t0, $a6
	add.d	$a5, $a5, $a6
	sub.w	$a6, $t1, $a7
	slt	$a7, $t4, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $t4, $a7
	or	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	ld.w	$a7, $sp, 380
	mul.d	$a5, $a5, $a6
	add.w	$a2, $a2, $a5
	ld.w	$a5, $sp, 376
	mul.d	$t1, $a6, $a7
	mul.d	$t2, $a1, $t1
	mul.d	$a7, $a7, $a3
	ld.w	$t4, $sp, 384
	mul.d	$t5, $a1, $a7
	mul.d	$t6, $a5, $a0
	mul.d	$a6, $a6, $t0
	mul.d	$t0, $a6, $t4
	mul.d	$a3, $a3, $t3
	mul.d	$a3, $a3, $t4
	sub.d	$a6, $a7, $t6
	sub.d	$a7, $t1, $t6
	sub.d	$a3, $a3, $t5
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	sub.d	$a3, $t0, $t2
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	addi.d	$a3, $a0, -1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$t0, $s5, 8
	alsl.d	$t2, $a3, $t0, 3
	addi.d	$t0, $s2, 8
	alsl.d	$t3, $a3, $t0, 3
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$t0, $a3, $t0, 3
	st.d	$t0, $sp, 320                   # 8-byte Folded Spill
	addi.d	$t0, $s3, 8
	alsl.d	$t0, $a3, $t0, 3
	st.d	$t0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$t0, $a3, $t0, 3
	st.d	$t0, $sp, 296                   # 8-byte Folded Spill
	addi.d	$t0, $s1, 8
	alsl.d	$a3, $a3, $t0, 3
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	ori	$a3, $zero, 5
	sltu	$a3, $a3, $a0
	addi.d	$t0, $a5, -1
	sltui	$t0, $t0, 1
	and	$t8, $a3, $t0
	bstrpick.d	$a3, $a0, 30, 1
	slli.d	$t6, $a3, 1
	slli.d	$s6, $a5, 3
	b	.LBB4_115
	.p2align	4, , 16
.LBB4_114:                              # %._crit_edge1608.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_115 Depth=5
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	add.w	$a4, $a3, $a4
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	addi.w	$t7, $t7, 1
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	add.w	$a2, $a3, $a2
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	beq	$t7, $a3, .LBB4_108
.LBB4_115:                              # %.preheader1371.us.us.us.us.us
                                        #   Parent Loop BB4_75 Depth=1
                                        #     Parent Loop BB4_101 Depth=2
                                        #       Parent Loop BB4_106 Depth=3
                                        #         Parent Loop BB4_109 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB4_117 Depth 6
                                        #               Child Loop BB4_124 Depth 7
                                        #               Child Loop BB4_129 Depth 7
	st.d	$t7, $sp, 272                   # 8-byte Folded Spill
	move	$s7, $zero
	b	.LBB4_117
	.p2align	4, , 16
.LBB4_116:                              # %._crit_edge1602.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_117 Depth=6
	add.w	$a4, $a6, $a4
	addi.w	$s7, $s7, 1
	add.w	$a2, $a7, $t0
	beq	$s7, $a1, .LBB4_114
.LBB4_117:                              # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB4_75 Depth=1
                                        #     Parent Loop BB4_101 Depth=2
                                        #       Parent Loop BB4_106 Depth=3
                                        #         Parent Loop BB4_109 Depth=4
                                        #           Parent Loop BB4_115 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB4_124 Depth 7
                                        #               Child Loop BB4_129 Depth 7
	beqz	$t8, .LBB4_126
# %bb.118:                              # %vector.memcheck1873
                                        #   in Loop: Header=BB4_117 Depth=6
	alsl.d	$t1, $a2, $s5, 3
	alsl.d	$t0, $a2, $t2, 3
	alsl.d	$a3, $a4, $s2, 3
	alsl.d	$t4, $a4, $t3, 3
	sltu	$t4, $t1, $t4
	sltu	$t5, $a3, $t0
	and	$t4, $t4, $t5
	move	$ra, $zero
	bnez	$t4, .LBB4_127
# %bb.119:                              # %vector.memcheck1873
                                        #   in Loop: Header=BB4_117 Depth=6
	ld.d	$t4, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$t4, $a2, $t4, 3
	ld.d	$t5, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$t5, $a2, $t5, 3
	sltu	$t5, $t1, $t5
	sltu	$t4, $t4, $t0
	and	$t4, $t5, $t4
	bnez	$t4, .LBB4_127
# %bb.120:                              # %vector.memcheck1873
                                        #   in Loop: Header=BB4_117 Depth=6
	alsl.d	$s4, $a4, $s3, 3
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$t4, $a4, $t4, 3
	sltu	$t4, $t1, $t4
	sltu	$t5, $s4, $t0
	and	$t4, $t4, $t5
	bnez	$t4, .LBB4_127
# %bb.121:                              # %vector.memcheck1873
                                        #   in Loop: Header=BB4_117 Depth=6
	ld.d	$t4, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$t4, $a2, $t4, 3
	ld.d	$t5, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$t5, $a2, $t5, 3
	sltu	$t5, $t1, $t5
	sltu	$t4, $t4, $t0
	and	$t4, $t5, $t4
	bnez	$t4, .LBB4_127
# %bb.122:                              # %vector.memcheck1873
                                        #   in Loop: Header=BB4_117 Depth=6
	alsl.d	$t7, $a4, $s1, 3
	ld.d	$t4, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$t4, $a4, $t4, 3
	sltu	$t4, $t1, $t4
	sltu	$t0, $t7, $t0
	and	$t0, $t4, $t0
	bnez	$t0, .LBB4_127
# %bb.123:                              # %vector.ph1921
                                        #   in Loop: Header=BB4_117 Depth=6
	add.d	$t0, $t6, $a2
	add.d	$a4, $t6, $a4
	alsl.d	$ra, $a2, $s8, 3
	alsl.d	$a2, $a2, $fp, 3
	move	$s0, $t6
	.p2align	4, , 16
.LBB4_124:                              # %vector.body1924
                                        #   Parent Loop BB4_75 Depth=1
                                        #     Parent Loop BB4_101 Depth=2
                                        #       Parent Loop BB4_106 Depth=3
                                        #         Parent Loop BB4_109 Depth=4
                                        #           Parent Loop BB4_115 Depth=5
                                        #             Parent Loop BB4_117 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	vld	$vr0, $a3, 0
	vld	$vr1, $s4, 0
	vld	$vr2, $ra, 0
	vld	$vr3, $a2, 0
	vld	$vr4, $t7, 0
	vld	$vr5, $t1, 0
	vfmul.d	$vr1, $vr1, $vr2
	vfmadd.d	$vr0, $vr0, $vr3, $vr1
	vfdiv.d	$vr0, $vr0, $vr4
	vfsub.d	$vr0, $vr5, $vr0
	vst	$vr0, $t1, 0
	addi.d	$s0, $s0, -2
	addi.d	$t7, $t7, 16
	addi.d	$s4, $s4, 16
	addi.d	$a3, $a3, 16
	addi.d	$t1, $t1, 16
	addi.d	$ra, $ra, 16
	addi.d	$a2, $a2, 16
	bnez	$s0, .LBB4_124
# %bb.125:                              # %middle.block1935
                                        #   in Loop: Header=BB4_117 Depth=6
	move	$ra, $t6
	beq	$t6, $a0, .LBB4_116
	b	.LBB4_128
	.p2align	4, , 16
.LBB4_126:                              #   in Loop: Header=BB4_117 Depth=6
	move	$ra, $zero
.LBB4_127:                              # %scalar.ph1919.preheader
                                        #   in Loop: Header=BB4_117 Depth=6
	move	$t0, $a2
.LBB4_128:                              # %scalar.ph1919.preheader
                                        #   in Loop: Header=BB4_117 Depth=6
	move	$a2, $zero
	move	$a3, $zero
	alsl.d	$t1, $t0, $fp, 3
	alsl.d	$t7, $t0, $s8, 3
	alsl.d	$s0, $t0, $s5, 3
	alsl.d	$s4, $a4, $s2, 3
	alsl.d	$t5, $a4, $s3, 3
	alsl.d	$t4, $a4, $s1, 3
	sub.d	$ra, $a0, $ra
	.p2align	4, , 16
.LBB4_129:                              # %scalar.ph1919
                                        #   Parent Loop BB4_75 Depth=1
                                        #     Parent Loop BB4_101 Depth=2
                                        #       Parent Loop BB4_106 Depth=3
                                        #         Parent Loop BB4_109 Depth=4
                                        #           Parent Loop BB4_115 Depth=5
                                        #             Parent Loop BB4_117 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s4, $a3
	fldx.d	$fa1, $t5, $a3
	fldx.d	$fa2, $t7, $a3
	fldx.d	$fa3, $t1, $a3
	fldx.d	$fa4, $t4, $a3
	fldx.d	$fa5, $s0, $a3
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fdiv.d	$fa0, $fa0, $fa4
	fsub.d	$fa0, $fa5, $fa0
	fstx.d	$fa0, $s0, $a3
	add.d	$a3, $a3, $s6
	addi.w	$ra, $ra, -1
	sub.d	$a2, $a2, $a5
	bnez	$ra, .LBB4_129
# %bb.130:                              # %._crit_edge1602.us.us.us.us.us.us.loopexit
                                        #   in Loop: Header=BB4_117 Depth=6
	sub.d	$t0, $t0, $a2
	sub.d	$a4, $a4, $a2
	b	.LBB4_116
.LBB4_131:                              # %._crit_edge1656
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 108
	pcaddu18i	$ra, %call36(hypre_IncFLOPCount)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 104
	pcaddu18i	$ra, %call36(hypre_EndTiming)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end4:
	.size	hypre_CyclicReduction, .Lfunc_end4-hypre_CyclicReduction
                                        # -- End function
	.globl	hypre_CyclicReductionSetBase    # -- Begin function hypre_CyclicReductionSetBase
	.p2align	5
	.type	hypre_CyclicReductionSetBase,@function
hypre_CyclicReductionSetBase:           # @hypre_CyclicReductionSetBase
# %bb.0:
	ld.w	$a3, $a1, 0
	st.w	$a3, $a0, 12
	ld.w	$a3, $a2, 0
	st.w	$a3, $a0, 24
	ld.w	$a3, $a1, 4
	st.w	$a3, $a0, 16
	ld.w	$a3, $a2, 4
	st.w	$a3, $a0, 28
	ld.w	$a1, $a1, 8
	st.w	$a1, $a0, 20
	ld.w	$a1, $a2, 8
	st.w	$a1, $a0, 32
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	hypre_CyclicReductionSetBase, .Lfunc_end5-hypre_CyclicReductionSetBase
                                        # -- End function
	.globl	hypre_CyclicReductionDestroy    # -- Begin function hypre_CyclicReductionDestroy
	.p2align	5
	.type	hypre_CyclicReductionDestroy,@function
hypre_CyclicReductionDestroy:           # @hypre_CyclicReductionDestroy
# %bb.0:
	beqz	$a0, .LBB6_6
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_StructGridDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB6_4
# %bb.2:                                # %.lr.ph
	move	$s1, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	add.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 8
	addi.d	$s0, $s0, 1
	pcaddu18i	$ra, %call36(hypre_StructGridDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	add.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	add.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.w	$a0, $a0, -1
	addi.d	$s1, $s1, 8
	blt	$s0, $a0, .LBB6_3
	b	.LBB6_5
.LBB6_4:
	move	$s0, $zero
.LBB6_5:                                # %._crit_edge
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s0, 3
	ldx.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	st.d	$zero, $fp, 64
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	st.d	$zero, $fp, 40
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	st.d	$zero, $fp, 56
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $fp, 72
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	st.d	$zero, $fp, 80
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	st.d	$zero, $fp, 88
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 104
	st.d	$zero, $fp, 96
	pcaddu18i	$ra, %call36(hypre_FinalizeTiming)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB6_6:
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	hypre_CyclicReductionDestroy, .Lfunc_end6-hypre_CyclicReductionDestroy
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CyclicReduction"
	.size	.L.str, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
