	.file	"point_relax.c"
	.text
	.globl	hypre_PointRelaxCreate          # -- Begin function hypre_PointRelaxCreate
	.p2align	5
	.type	hypre_PointRelaxCreate,@function
hypre_PointRelaxCreate:                 # @hypre_PointRelaxCreate
# %bb.0:                                # %.lr.ph.i
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 144
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(hypre_InitializeTiming)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 132
	lu12i.w	$a0, -390306
	ori	$a0, $a0, 3469
	lu32i.d	$a0, 50935
	lu52i.d	$a0, $a0, 1003
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 1000
	st.d	$a0, $fp, 16
	st.w	$zero, $fp, 24
	lu52i.d	$a0, $zero, 1023
	st.d	$a0, $fp, 32
	st.w	$zero, $fp, 40
	st.d	$zero, $fp, 104
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 48
	vst	$vr0, $fp, 64
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_PointRelaxSetNumPointsets)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 72
	st.d	$a0, $a1, 0
	ld.d	$a1, $fp, 48
	ld.d	$a2, $fp, 64
	st.w	$s1, $a1, 0
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $a2, 0
	st.w	$s1, $a2, 8
	st.d	$zero, $a0, 0
	st.w	$zero, $a0, 8
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	hypre_PointRelaxCreate, .Lfunc_end0-hypre_PointRelaxCreate
                                        # -- End function
	.globl	hypre_PointRelaxSetNumPointsets # -- Begin function hypre_PointRelaxSetNumPointsets
	.p2align	5
	.type	hypre_PointRelaxSetNumPointsets,@function
hypre_PointRelaxSetNumPointsets:        # @hypre_PointRelaxSetNumPointsets
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 40
	move	$s0, $a1
	blez	$a0, .LBB1_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $fp, 72
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.w	$a1, $fp, 40
	stx.d	$zero, $a0, $s1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $a1, .LBB1_2
.LBB1_3:                                # %._crit_edge
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	st.d	$zero, $fp, 48
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	st.d	$zero, $fp, 56
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	st.d	$zero, $fp, 64
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 72
	st.w	$s0, $fp, 40
	slli.d	$s2, $s0, 2
	addi.w	$s1, $s2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 56
	slli.w	$s1, $s0, 3
	alsl.w	$a0, $s0, $s1, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	blez	$s0, .LBB1_6
# %bb.4:                                # %.lr.ph39.preheader
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph39
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $fp, 48
	ld.d	$a4, $fp, 56
	stx.w	$zero, $a3, $a1
	stx.w	$a2, $a4, $a1
	st.d	$zero, $a0, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 8
	bne	$s2, $a1, .LBB1_5
.LBB1_6:                                # %._crit_edge40
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	hypre_PointRelaxSetNumPointsets, .Lfunc_end1-hypre_PointRelaxSetNumPointsets
                                        # -- End function
	.globl	hypre_PointRelaxSetPointset     # -- Begin function hypre_PointRelaxSetPointset
	.p2align	5
	.type	hypre_PointRelaxSetPointset,@function
hypre_PointRelaxSetPointset:            # @hypre_PointRelaxSetPointset
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.d	$a0, $a0, 72
	move	$s2, $a1
	slli.d	$s4, $a1, 3
	ldx.d	$a0, $a0, $s4
	move	$s0, $a4
	move	$s3, $a3
	move	$fp, $a2
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 72
	stx.d	$zero, $a0, $s4
	slli.d	$a0, $fp, 3
	alsl.w	$a0, $fp, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 72
	stx.d	$a0, $a1, $s4
	ld.d	$a1, $s1, 48
	slli.d	$a2, $s2, 2
	stx.w	$fp, $a1, $a2
	ld.w	$a1, $s3, 0
	ld.d	$a2, $s1, 64
	alsl.d	$a3, $s2, $s4, 2
	stx.w	$a1, $a2, $a3
	ld.w	$a1, $s3, 4
	add.d	$a2, $a2, $a3
	st.w	$a1, $a2, 4
	ld.w	$a1, $s3, 8
	st.w	$a1, $a2, 8
	blez	$fp, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $a0, 8
	addi.d	$a1, $s0, 8
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, -8
	st.w	$a2, $a0, -8
	ld.w	$a2, $a1, -4
	st.w	$a2, $a0, -4
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 0
	addi.d	$a0, $a0, 12
	addi.d	$fp, $fp, -1
	addi.d	$a1, $a1, 12
	bnez	$fp, .LBB2_2
.LBB2_3:                                # %._crit_edge
	move	$a0, $zero
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	hypre_PointRelaxSetPointset, .Lfunc_end2-hypre_PointRelaxSetPointset
                                        # -- End function
	.globl	hypre_PointRelaxDestroy         # -- Begin function hypre_PointRelaxDestroy
	.p2align	5
	.type	hypre_PointRelaxDestroy,@function
hypre_PointRelaxDestroy:                # @hypre_PointRelaxDestroy
# %bb.0:
	beqz	$a0, .LBB3_5
# %bb.1:                                # %.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 40
	blez	$a0, .LBB3_4
# %bb.2:                                # %.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 72
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	ld.d	$a1, $fp, 72
	ldx.d	$a0, $a0, $s0
	stx.d	$zero, $a1, $s0
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB3_3
.LBB3_4:                                # %._crit_edge
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	st.d	$zero, $fp, 48
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	st.d	$zero, $fp, 56
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	st.d	$zero, $fp, 64
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $fp, 72
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 96
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 104
	st.d	$zero, $fp, 120
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 132
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
.LBB3_5:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	hypre_PointRelaxDestroy, .Lfunc_end3-hypre_PointRelaxDestroy
                                        # -- End function
	.globl	hypre_PointRelaxSetup           # -- Begin function hypre_PointRelaxSetup
	.p2align	5
	.type	hypre_PointRelaxSetup,@function
hypre_PointRelaxSetup:                  # @hypre_PointRelaxSetup
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
	move	$s0, $a0
	ld.w	$s1, $a0, 40
	ld.d	$s2, $a0, 48
	ld.d	$a0, $a0, 64
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 104
	ld.d	$a4, $s0, 72
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	move	$s4, $a2
	bnez	$a0, .LBB4_2
# %bb.1:
	ld.w	$a0, $s4, 0
	move	$s3, $a1
	ld.d	$a1, $s4, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorCreate)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $s4, 48
	pcaddu18i	$ra, %call36(hypre_StructVectorSetNumGhost)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_StructVectorInitialize)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	st.d	$fp, $s0, 104
.LBB4_2:
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$fp, $a1, 8
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 24
	st.d	$zero, $sp, 256
	st.w	$zero, $sp, 264
	addi.d	$a1, $sp, 256
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_StructStencilElementRank)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 268
	st.w	$a1, $sp, 276
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	blez	$s1, .LBB4_23
# %bb.3:                                # %.lr.ph143
	move	$s0, $zero
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_4:                                # %._crit_edge.1
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $sp, 248
	ld.d	$a1, $sp, 240
	ld.d	$a4, $sp, 232
	ld.d	$a5, $sp, 224
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 16
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a3, $s0, $a3, 3
	st.d	$a3, $sp, 32
	ori	$a3, $zero, 1
	st.d	$a3, $sp, 24
	st.d	$a2, $sp, 16
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	st.d	$fp, $sp, 8
	addi.d	$a2, $sp, 268
	addi.d	$a3, $sp, 268
	st.d	$s8, $sp, 0
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayDestroy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	beq	$s0, $s1, .LBB4_23
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #       Child Loop BB4_11 Depth 3
                                        #         Child Loop BB4_12 Depth 4
                                        #     Child Loop BB4_17 Depth 2
                                        #       Child Loop BB4_20 Depth 3
                                        #         Child Loop BB4_21 Depth 4
	addi.d	$a2, $sp, 248
	addi.d	$a3, $sp, 240
	addi.d	$a4, $sp, 232
	addi.d	$a5, $sp, 224
	addi.d	$a6, $sp, 216
	addi.d	$a7, $sp, 208
	move	$a0, $fp
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216
	slli.d	$a0, $s0, 3
	alsl.d	$a0, $s0, $a0, 2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.w	$fp, $a1, 8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	alsl.d	$a0, $s0, $s2, 2
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	blez	$fp, .LBB4_14
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	move	$a2, $zero
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %._crit_edge134
                                        #   in Loop: Header=BB4_8 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB4_14
.LBB4_8:                                # %.lr.ph
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_11 Depth 3
                                        #         Child Loop BB4_12 Depth 4
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	ldx.d	$s4, $a1, $a2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$s7, $s4, 8
	ldx.d	$fp, $a1, $a2
	mul.w	$a1, $a0, $s7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB4_7
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB4_8 Depth=2
	blez	$s7, .LBB4_7
# %bb.10:                               # %.lr.ph.us.preheader
                                        #   in Loop: Header=BB4_8 Depth=2
	move	$s0, $zero
	move	$s3, $zero
	slli.d	$a0, $s7, 4
	alsl.d	$s1, $s7, $a0, 3
	.p2align	4, , 16
.LBB4_11:                               # %.lr.ph.us
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_12 Depth 4
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s6, $zero
	slli.d	$a1, $s0, 3
	alsl.d	$a1, $s0, $a1, 2
	add.d	$s2, $a0, $a1
	slli.d	$a0, $s3, 4
	alsl.d	$s5, $s3, $a0, 3
	add.w	$s3, $s7, $s3
	.p2align	4, , 16
.LBB4_12:                               #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        #       Parent Loop BB4_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	ldx.w	$a2, $a0, $s6
	add.d	$a3, $a0, $s6
	add.d	$a0, $a1, $s5
	stx.w	$a2, $a0, $s6
	ld.w	$a1, $a3, 4
	add.d	$a0, $a0, $s6
	st.w	$a1, $a0, 4
	ld.w	$a1, $a3, 8
	st.w	$a1, $a0, 8
	ld.w	$a1, $a3, 12
	st.w	$a1, $a0, 12
	ld.w	$a1, $a3, 16
	st.w	$a1, $a0, 16
	ld.w	$a1, $a3, 20
	st.w	$a1, $a0, 20
	move	$a1, $s2
	move	$a2, $s8
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 24
	bne	$s1, $s6, .LBB4_12
# %bb.13:                               # %._crit_edge.us
                                        #   in Loop: Header=BB4_11 Depth=3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.d	$s0, $s0, 1
	blt	$s0, $a0, .LBB4_11
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_14:                               # %._crit_edge
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $sp, 208
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.w	$fp, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	blez	$fp, .LBB4_4
# %bb.15:                               # %.lr.ph.preheader.1
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	move	$a2, $zero
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_16:                               # %._crit_edge134.1
                                        #   in Loop: Header=BB4_17 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beq	$a2, $a1, .LBB4_4
.LBB4_17:                               # %.lr.ph.1
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_20 Depth 3
                                        #         Child Loop BB4_21 Depth 4
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	ldx.d	$s4, $a1, $a2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$s3, $s4, 8
	ldx.d	$fp, $a1, $a2
	mul.w	$a1, $a0, $s3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB4_16
# %bb.18:                               # %.lr.ph.1
                                        #   in Loop: Header=BB4_17 Depth=2
	blez	$s3, .LBB4_16
# %bb.19:                               # %.lr.ph.us.preheader.1
                                        #   in Loop: Header=BB4_17 Depth=2
	move	$s1, $zero
	move	$s2, $zero
	slli.d	$a0, $s3, 4
	alsl.d	$s7, $s3, $a0, 3
	.p2align	4, , 16
.LBB4_20:                               # %.lr.ph.us.1
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_21 Depth 4
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s6, $zero
	slli.d	$a1, $s1, 3
	alsl.d	$a1, $s1, $a1, 2
	add.d	$s0, $a0, $a1
	slli.d	$a0, $s2, 4
	alsl.d	$s5, $s2, $a0, 3
	add.w	$s2, $s3, $s2
	.p2align	4, , 16
.LBB4_21:                               #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_17 Depth=2
                                        #       Parent Loop BB4_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	ldx.w	$a2, $a0, $s6
	add.d	$a3, $a0, $s6
	add.d	$a0, $a1, $s5
	stx.w	$a2, $a0, $s6
	ld.w	$a1, $a3, 4
	add.d	$a0, $a0, $s6
	st.w	$a1, $a0, 4
	ld.w	$a1, $a3, 8
	st.w	$a1, $a0, 8
	ld.w	$a1, $a3, 12
	st.w	$a1, $a0, 12
	ld.w	$a1, $a3, 16
	st.w	$a1, $a0, 16
	ld.w	$a1, $a3, 20
	st.w	$a1, $a0, 20
	move	$a1, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 24
	bne	$s7, $s6, .LBB4_21
# %bb.22:                               # %._crit_edge.us.1
                                        #   in Loop: Header=BB4_20 Depth=3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.d	$s1, $s1, 1
	blt	$s1, $a0, .LBB4_20
	b	.LBB4_16
.LBB4_23:                               # %._crit_edge144
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $fp, 80
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 96
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 88
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $fp, 112
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $fp, 120
	blez	$s1, .LBB4_26
# %bb.24:                               # %.lr.ph148.preheader
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB4_25:                               # %.lr.ph148
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, -8
	ld.w	$a2, $a0, -4
	ld.w	$a3, $a0, 0
	ld.w	$a4, $s2, 0
	mul.d	$a1, $a2, $a1
	mul.w	$a1, $a1, $a3
	div.w	$a1, $a4, $a1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, -1
	addi.d	$a0, $a0, 12
	bnez	$s1, .LBB4_25
	b	.LBB4_27
.LBB4_26:
	movgr2fr.d	$fa0, $zero
.LBB4_27:                               # %._crit_edge149
	ld.w	$a0, $s0, 112
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 72
	add.d	$a0, $a1, $a0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 136
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
.Lfunc_end4:
	.size	hypre_PointRelaxSetup, .Lfunc_end4-hypre_PointRelaxSetup
                                        # -- End function
	.globl	hypre_PointRelax                # -- Begin function hypre_PointRelax
	.p2align	5
	.type	hypre_PointRelax,@function
hypre_PointRelax:                       # @hypre_PointRelax
# %bb.0:
	addi.d	$sp, $sp, -608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 512                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 504                  # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$s1, $a0, 16
	ld.w	$fp, $a0, 24
	fld.d	$fs0, $a0, 32
	ld.w	$a0, $a0, 40
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 56
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 64
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 104
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a0, $s0, 112
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 120
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $s0, 132
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	pcaddu18i	$ra, %call36(hypre_BeginTiming)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 80
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 88
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 96
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 80
	st.d	$s2, $sp, 256                   # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 96
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 88
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.w	$zero, $s0, 128
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	beqz	$s1, .LBB5_24
# %bb.1:
	ld.d	$a0, $s4, 24
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 368                   # 8-byte Folded Spill
	beqz	$fp, .LBB5_27
# %bb.2:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a1
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a1, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                # %._crit_edge1221
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 16
	move	$a2, $zero
	beqz	$a1, .LBB5_21
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #       Child Loop BB5_11 Depth 3
                                        #         Child Loop BB5_16 Depth 4
                                        #           Child Loop BB5_17 Depth 5
                                        #             Child Loop BB5_18 Depth 6
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.w	$a1, $a3, 8
	blez	$a1, .LBB5_3
# %bb.5:                                # %.lr.ph1220.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$a6, $zero
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_6:                                # %._crit_edge1217.loopexit
                                        #   in Loop: Header=BB5_8 Depth=2
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	ld.w	$a1, $a3, 8
	ld.d	$s4, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
.LBB5_7:                                # %._crit_edge1217
                                        #   in Loop: Header=BB5_8 Depth=2
	addi.d	$a6, $a6, 1
	bge	$a6, $a1, .LBB5_3
.LBB5_8:                                # %.lr.ph1220
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_11 Depth 3
                                        #         Child Loop BB5_16 Depth 4
                                        #           Child Loop BB5_17 Depth 5
                                        #             Child Loop BB5_18 Depth 6
	ld.d	$a2, $a3, 0
	slli.d	$a0, $a6, 3
	ldx.d	$t1, $a2, $a0
	ld.w	$a2, $t1, 8
	blez	$a2, .LBB5_7
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB5_8 Depth=2
	ld.d	$a1, $s4, 40
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $t0, 16
	move	$t2, $zero
	ld.d	$a1, $a1, 0
	alsl.d	$a3, $a6, $a6, 1
	ld.d	$a2, $a2, 0
	slli.d	$a3, $a3, 3
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a4, $a7, 16
	add.d	$a1, $a1, $a3
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	add.d	$a1, $a2, $a3
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a1, $s4, 64
	ld.d	$a2, $a4, 0
	ld.d	$a4, $s4, 48
	ld.d	$a5, $t0, 40
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $a7, 40
	st.d	$a6, $sp, 424                   # 8-byte Folded Spill
	slli.d	$a6, $a6, 2
	ldx.w	$a5, $a5, $a6
	ld.d	$a7, $a7, 24
	ldx.w	$a1, $a1, $a6
	ld.d	$a6, $t0, 24
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $t0
	add.d	$a2, $a2, $a3
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	alsl.d	$s6, $a1, $a7, 3
	alsl.d	$s1, $a5, $a6, 3
	alsl.d	$s7, $a0, $a4, 3
	st.d	$t1, $sp, 456                   # 8-byte Folded Spill
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               # %._crit_edge
                                        #   in Loop: Header=BB5_11 Depth=3
	ld.d	$t1, $sp, 456                   # 8-byte Folded Reload
	ld.w	$a0, $t1, 8
	ld.d	$t2, $sp, 472                   # 8-byte Folded Reload
	addi.d	$t2, $t2, 1
	bge	$t2, $a0, .LBB5_6
.LBB5_11:                               #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_16 Depth 4
                                        #           Child Loop BB5_17 Depth 5
                                        #             Child Loop BB5_18 Depth 6
	ld.d	$s0, $t1, 0
	slli.d	$a0, $t2, 4
	st.d	$t2, $sp, 472                   # 8-byte Folded Spill
	alsl.d	$s3, $t2, $a0, 3
	add.d	$s5, $s0, $s3
	addi.d	$a2, $sp, 484
	move	$a0, $s5
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.w	$fp, $sp, 484
	ld.w	$a1, $sp, 488
	ld.w	$a2, $sp, 492
	slt	$a0, $fp, $a1
	masknez	$a3, $fp, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a3
	slt	$a3, $a0, $a2
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a2, $a3
	or	$a0, $a3, $a0
	blez	$a0, .LBB5_10
# %bb.12:                               # %.preheader1161.lr.ph
                                        #   in Loop: Header=BB5_11 Depth=3
	blez	$a2, .LBB5_10
# %bb.13:                               # %.preheader1161.lr.ph
                                        #   in Loop: Header=BB5_11 Depth=3
	blez	$a1, .LBB5_10
# %bb.14:                               # %.preheader1161.lr.ph
                                        #   in Loop: Header=BB5_11 Depth=3
	blez	$fp, .LBB5_10
# %bb.15:                               # %.preheader1160.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB5_11 Depth=3
	move	$a3, $zero
	ldx.w	$a0, $s0, $s3
	ld.d	$t5, $sp, 448                   # 8-byte Folded Reload
	ld.w	$a4, $t5, 0
	ld.w	$a6, $s5, 4
	ld.w	$a5, $t5, 4
	ld.w	$a7, $s5, 8
	ld.w	$t0, $t5, 8
	ld.w	$t1, $t5, 16
	sub.d	$t2, $a0, $a4
	sub.d	$t3, $a6, $a5
	sub.d	$t4, $a7, $t0
	sub.w	$t0, $t1, $a5
	addi.w	$a5, $zero, -1
	slt	$t1, $a5, $t0
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a5, $t1
	or	$t0, $t0, $t1
	ld.w	$t1, $t5, 12
	addi.d	$t0, $t0, 1
	mul.d	$t4, $t0, $t4
	add.d	$t3, $t3, $t4
	sub.w	$a4, $t1, $a4
	slt	$t1, $a5, $a4
	maskeqz	$a4, $a4, $t1
	masknez	$t1, $a5, $t1
	or	$a4, $a4, $t1
	addi.d	$t6, $a4, 1
	mul.d	$a4, $t3, $t6
	add.w	$a4, $t2, $a4
	ld.d	$t8, $sp, 440                   # 8-byte Folded Reload
	ld.w	$t1, $t8, 0
	ld.w	$t2, $t8, 4
	ld.w	$t3, $t8, 8
	ld.w	$t4, $t8, 16
	sub.d	$t5, $a0, $t1
	sub.d	$t7, $a6, $t2
	sub.d	$t3, $a7, $t3
	sub.w	$t2, $t4, $t2
	slt	$t4, $a5, $t2
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $a5, $t4
	or	$t2, $t2, $t4
	ld.w	$t4, $t8, 12
	addi.d	$s0, $t2, 1
	mul.d	$t2, $s0, $t3
	add.d	$t2, $t7, $t2
	sub.w	$t1, $t4, $t1
	slt	$t3, $a5, $t1
	maskeqz	$t1, $t1, $t3
	masknez	$t3, $a5, $t3
	or	$t1, $t1, $t3
	addi.d	$t4, $t1, 1
	mul.d	$t1, $t2, $t4
	add.w	$t2, $t5, $t1
	ld.d	$t8, $sp, 432                   # 8-byte Folded Reload
	ld.w	$t1, $t8, 0
	ld.w	$t3, $t8, 4
	ld.w	$t5, $t8, 8
	ld.w	$t7, $t8, 16
	sub.d	$a0, $a0, $t1
	sub.d	$a6, $a6, $t3
	sub.d	$a7, $a7, $t5
	sub.w	$t3, $t7, $t3
	slt	$t5, $a5, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a5, $t5
	or	$t3, $t3, $t5
	ld.w	$t5, $t8, 12
	addi.d	$t3, $t3, 1
	mul.d	$a7, $t3, $a7
	add.d	$a6, $a6, $a7
	sub.w	$a7, $t5, $t1
	slt	$t1, $a5, $a7
	maskeqz	$a7, $a7, $t1
	masknez	$a5, $a5, $t1
	or	$a5, $a7, $a5
	addi.d	$t1, $a5, 1
	mul.d	$a6, $a6, $t1
	ld.d	$a7, $sp, 464                   # 8-byte Folded Reload
	ld.w	$a5, $a7, 0
	add.w	$t8, $a0, $a6
	ld.w	$a0, $a7, 4
	ld.w	$t5, $a7, 8
	slli.d	$a6, $a5, 3
	mul.d	$a7, $a5, $fp
	sub.d	$a7, $zero, $a7
	mul.d	$t3, $t5, $t3
	mul.d	$t7, $t5, $s0
	mul.d	$t5, $t5, $t0
	ori	$t0, $zero, 1
	sub.d	$t0, $t0, $a1
	mul.d	$s0, $a0, $t0
	add.d	$t0, $t3, $s0
	mul.d	$t0, $t0, $t1
	sub.d	$t0, $zero, $t0
	sub.d	$a0, $zero, $a0
	mul.d	$t1, $a0, $t1
	add.d	$t3, $t7, $s0
	mul.d	$t3, $t3, $t4
	sub.d	$t3, $zero, $t3
	mul.d	$t4, $a0, $t4
	add.d	$t5, $t5, $s0
	mul.d	$t5, $t5, $t6
	sub.d	$t5, $zero, $t5
	mul.d	$t6, $a0, $t6
	.p2align	4, , 16
.LBB5_16:                               # %.preheader1160.us.us.us.us.us
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        #       Parent Loop BB5_11 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB5_17 Depth 5
                                        #             Child Loop BB5_18 Depth 6
	move	$t7, $zero
	.p2align	4, , 16
.LBB5_17:                               # %.preheader1159.us.us.us.us.us.us
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        #       Parent Loop BB5_11 Depth=3
                                        #         Parent Loop BB5_16 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB5_18 Depth 6
	move	$ra, $zero
	alsl.d	$s4, $t8, $s6, 3
	sub.d	$s0, $t0, $t8
	sub.d	$t8, $t1, $t8
	alsl.d	$s2, $t2, $s1, 3
	sub.d	$s3, $t3, $t2
	sub.d	$t2, $t4, $t2
	alsl.d	$s8, $a4, $s7, 3
	sub.d	$s5, $t5, $a4
	sub.d	$a4, $t6, $a4
	move	$a0, $fp
	.p2align	4, , 16
.LBB5_18:                               #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        #       Parent Loop BB5_11 Depth=3
                                        #         Parent Loop BB5_16 Depth=4
                                        #           Parent Loop BB5_17 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fldx.d	$fa0, $s2, $ra
	fldx.d	$fa1, $s8, $ra
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s4, $ra
	add.d	$ra, $ra, $a6
	sub.d	$s0, $s0, $a5
	sub.d	$t8, $t8, $a5
	sub.d	$s3, $s3, $a5
	sub.d	$t2, $t2, $a5
	sub.d	$s5, $s5, $a5
	addi.w	$a0, $a0, -1
	sub.d	$a4, $a4, $a5
	bnez	$a0, .LBB5_18
# %bb.19:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB5_17 Depth=5
	sub.w	$a4, $a7, $a4
	sub.w	$t2, $a7, $t2
	addi.w	$t7, $t7, 1
	sub.w	$t8, $a7, $t8
	bne	$t7, $a1, .LBB5_17
# %bb.20:                               # %._crit_edge1173.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB5_16 Depth=4
	sub.w	$a4, $a7, $s5
	sub.w	$t2, $a7, $s3
	addi.w	$a3, $a3, 1
	sub.w	$t8, $a7, $s0
	bne	$a3, $a2, .LBB5_16
	b	.LBB5_10
.LBB5_21:
	vldi	$vr0, -912
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB5_23
# %bb.22:
	fmov.d	$fa0, $fs0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructScale)
	jirl	$ra, $ra, 0
.LBB5_23:
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mod.w	$a2, $a0, $a1
	xori	$a1, $a2, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB5_28
	b	.LBB5_92
.LBB5_24:
	beqz	$fp, .LBB5_26
# %bb.25:
	movgr2fr.d	$fa0, $zero
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorSetConstantValues)
	jirl	$ra, $ra, 0
.LBB5_26:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 132
	b	.LBB5_93
.LBB5_27:
	move	$a2, $zero
	move	$a1, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB5_92
.LBB5_28:                               # %.lr.ph1391
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a3, 31, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	vldi	$vr0, -912
	fsub.d	$fs1, $fa0, $fs0
	ori	$s5, $zero, 32
	slli.d	$a0, $a3, 2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	b	.LBB5_32
	.p2align	4, , 16
.LBB5_29:                               #   in Loop: Header=BB5_32 Depth=1
	ld.d	$a0, $sp, 24
	movgr2cf	$fcc0, $a0
	bcnez	$fcc0, .LBB5_91
# %bb.30:                               #   in Loop: Header=BB5_32 Depth=1
	fmov.d	$fa0, $fs1
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_StructScale)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructAxpy)
	jirl	$ra, $ra, 0
.LBB5_31:                               #   in Loop: Header=BB5_32 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mod.w	$a2, $a0, $a1
	sltui	$a0, $a2, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB5_92
.LBB5_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_34 Depth 2
                                        #       Child Loop BB5_40 Depth 3
                                        #         Child Loop BB5_43 Depth 4
                                        #           Child Loop BB5_49 Depth 5
                                        #             Child Loop BB5_51 Depth 6
                                        #               Child Loop BB5_58 Depth 7
                                        #               Child Loop BB5_55 Depth 7
                                        #           Child Loop BB5_63 Depth 5
                                        #             Child Loop BB5_68 Depth 6
                                        #               Child Loop BB5_70 Depth 7
                                        #                 Child Loop BB5_74 Depth 8
                                        #                 Child Loop BB5_79 Depth 8
                                        #           Child Loop BB5_86 Depth 5
                                        #             Child Loop BB5_87 Depth 6
                                        #               Child Loop BB5_88 Depth 7
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$fp, $a2, $a1
	alsl.d	$a0, $a0, $a1, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructCopy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $fp, 8
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a1, $fp, 16
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	b	.LBB5_34
	.p2align	4, , 16
.LBB5_33:                               # %._crit_edge1386
                                        #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	andi	$a1, $a0, 1
	ori	$a0, $zero, 1
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	beqz	$a1, .LBB5_29
.LBB5_34:                               #   Parent Loop BB5_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_40 Depth 3
                                        #         Child Loop BB5_43 Depth 4
                                        #           Child Loop BB5_49 Depth 5
                                        #             Child Loop BB5_51 Depth 6
                                        #               Child Loop BB5_58 Depth 7
                                        #               Child Loop BB5_55 Depth 7
                                        #           Child Loop BB5_63 Depth 5
                                        #             Child Loop BB5_68 Depth 6
                                        #               Child Loop BB5_70 Depth 7
                                        #                 Child Loop BB5_74 Depth 8
                                        #                 Child Loop BB5_79 Depth 8
                                        #           Child Loop BB5_86 Depth 5
                                        #             Child Loop BB5_87 Depth 6
                                        #               Child Loop BB5_88 Depth 7
	andi	$a0, $a0, 1
	beqz	$a0, .LBB5_36
# %bb.35:                               #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a0, $sp, 496
	pcaddu18i	$ra, %call36(hypre_FinalizeIndtComputations)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.w	$a0, $a2, 8
	bgtz	$a0, .LBB5_37
	b	.LBB5_33
	.p2align	4, , 16
.LBB5_36:                               #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	addi.d	$a2, $sp, 496
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_InitializeIndtComputations)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.w	$a0, $a2, 8
	blez	$a0, .LBB5_33
.LBB5_37:                               # %.lr.ph1385.preheader
                                        #   in Loop: Header=BB5_34 Depth=2
	move	$a7, $zero
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	b	.LBB5_40
	.p2align	4, , 16
.LBB5_38:                               # %._crit_edge1382.loopexit
                                        #   in Loop: Header=BB5_40 Depth=3
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	ld.d	$s4, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
.LBB5_39:                               # %._crit_edge1382
                                        #   in Loop: Header=BB5_40 Depth=3
	addi.d	$a7, $a7, 1
	bge	$a7, $a0, .LBB5_33
.LBB5_40:                               # %.lr.ph1385
                                        #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_43 Depth 4
                                        #           Child Loop BB5_49 Depth 5
                                        #             Child Loop BB5_51 Depth 6
                                        #               Child Loop BB5_58 Depth 7
                                        #               Child Loop BB5_55 Depth 7
                                        #           Child Loop BB5_63 Depth 5
                                        #             Child Loop BB5_68 Depth 6
                                        #               Child Loop BB5_70 Depth 7
                                        #                 Child Loop BB5_74 Depth 8
                                        #                 Child Loop BB5_79 Depth 8
                                        #           Child Loop BB5_86 Depth 5
                                        #             Child Loop BB5_87 Depth 6
                                        #               Child Loop BB5_88 Depth 7
	ld.d	$a1, $a2, 0
	slli.d	$a3, $a7, 3
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	ldx.d	$t0, $a1, $a3
	ld.w	$a1, $t0, 8
	blez	$a1, .LBB5_39
# %bb.41:                               # %.lr.ph1381
                                        #   in Loop: Header=BB5_40 Depth=3
	ld.d	$a0, $s4, 40
	move	$t1, $zero
	ld.d	$a0, $a0, 0
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a6, 16
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 16
	alsl.d	$a3, $a7, $a7, 1
	slli.d	$a3, $a3, 3
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $a5, 16
	add.d	$a0, $a0, $a3
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a3
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	add.d	$a0, $a2, $a3
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a5, 40
	ld.d	$a2, $a6, 40
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a4, $a7, 2
	ld.d	$s8, $a5, 24
	ldx.w	$s2, $a1, $a4
	add.d	$a0, $a0, $a3
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$s3, $a6, 24
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	ldx.w	$a0, $a2, $a4
	alsl.d	$s7, $s2, $s8, 3
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	st.d	$t0, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	st.d	$s2, $sp, 192                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	b	.LBB5_43
	.p2align	4, , 16
.LBB5_42:                               # %._crit_edge1365
                                        #   in Loop: Header=BB5_43 Depth=4
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $t0, 8
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	addi.d	$t1, $t1, 1
	bge	$t1, $a0, .LBB5_38
.LBB5_43:                               #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB5_49 Depth 5
                                        #             Child Loop BB5_51 Depth 6
                                        #               Child Loop BB5_58 Depth 7
                                        #               Child Loop BB5_55 Depth 7
                                        #           Child Loop BB5_63 Depth 5
                                        #             Child Loop BB5_68 Depth 6
                                        #               Child Loop BB5_70 Depth 7
                                        #                 Child Loop BB5_74 Depth 8
                                        #                 Child Loop BB5_79 Depth 8
                                        #           Child Loop BB5_86 Depth 5
                                        #             Child Loop BB5_87 Depth 6
                                        #               Child Loop BB5_88 Depth 7
	ld.d	$fp, $t0, 0
	slli.d	$a0, $t1, 4
	st.d	$t1, $sp, 232                   # 8-byte Folded Spill
	alsl.d	$s0, $t1, $a0, 3
	add.d	$s6, $fp, $s0
	addi.d	$a2, $sp, 484
	move	$a0, $s6
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_BoxGetStrideSize)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 176                   # 8-byte Folded Reload
	ldx.w	$a4, $fp, $s0
	ld.w	$a5, $s6, 4
	ld.w	$t0, $s6, 8
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a7, $zero, -1
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $a6, 0
	ld.w	$a1, $a6, 4
	ld.w	$a2, $a6, 8
	ld.w	$a3, $a6, 16
	st.d	$a4, $sp, 328                   # 8-byte Folded Spill
	sub.d	$a4, $a4, $a0
	st.d	$a5, $sp, 320                   # 8-byte Folded Spill
	sub.d	$a5, $a5, $a1
	st.d	$t0, $sp, 312                   # 8-byte Folded Spill
	sub.d	$a2, $t0, $a2
	sub.w	$a1, $a3, $a1
	slt	$a3, $a7, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a7, $a3
	or	$a1, $a1, $a3
	ld.w	$a3, $a6, 12
	addi.d	$t0, $a1, 1
	mul.d	$a1, $t0, $a2
	add.d	$a1, $a5, $a1
	sub.w	$a0, $a3, $a0
	slt	$a2, $a7, $a0
	maskeqz	$a0, $a0, $a2
	st.d	$a7, $sp, 336                   # 8-byte Folded Spill
	masknez	$a2, $a7, $a2
	or	$a0, $a0, $a2
	addi.d	$a2, $a0, 1
	mul.d	$a0, $a1, $a2
	ld.w	$a1, $s1, 4
	add.w	$a4, $a0, $a4
	ld.w	$a0, $s1, 0
	ld.w	$a3, $s1, 8
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	mul.d	$a6, $a2, $a1
	ld.wu	$a5, $sp, 484
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	mulw.d.w	$a2, $a2, $t0
	ld.w	$a1, $sp, 488
	st.d	$a3, $sp, 296                   # 8-byte Folded Spill
	mul.d	$a7, $a2, $a3
	st.d	$a5, $sp, 472                   # 8-byte Folded Spill
	addi.w	$a2, $a5, 0
	ld.w	$t0, $sp, 492
	slt	$a3, $a2, $a1
	masknez	$a5, $a2, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a5
	slt	$a5, $a3, $t0
	masknez	$a3, $a3, $a5
	st.d	$t0, $sp, 448                   # 8-byte Folded Spill
	maskeqz	$a5, $t0, $a5
	or	$a3, $a5, $a3
	mul.d	$t0, $a1, $a6
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	blez	$a3, .LBB5_60
# %bb.44:                               # %.preheader1156.lr.ph
                                        #   in Loop: Header=BB5_43 Depth=4
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	blez	$a3, .LBB5_60
# %bb.45:                               # %.preheader1156.lr.ph
                                        #   in Loop: Header=BB5_43 Depth=4
	blez	$a1, .LBB5_60
# %bb.46:                               # %.preheader1156.lr.ph
                                        #   in Loop: Header=BB5_43 Depth=4
	blez	$a2, .LBB5_60
# %bb.47:                               # %.preheader1152.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB5_43 Depth=4
	move	$a3, $zero
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a5, $t6, 0
	ld.w	$t1, $t6, 4
	ld.w	$t2, $t6, 8
	ld.w	$t3, $t6, 16
	ld.d	$t4, $sp, 328                   # 8-byte Folded Reload
	sub.d	$t4, $t4, $a5
	ld.d	$t5, $sp, 320                   # 8-byte Folded Reload
	sub.d	$t5, $t5, $t1
	ld.d	$t7, $sp, 312                   # 8-byte Folded Reload
	sub.d	$t2, $t7, $t2
	sub.w	$t1, $t3, $t1
	ld.d	$t7, $sp, 336                   # 8-byte Folded Reload
	slt	$t3, $t7, $t1
	maskeqz	$t1, $t1, $t3
	masknez	$t3, $t7, $t3
	or	$t1, $t1, $t3
	ld.w	$t3, $t6, 12
	addi.d	$t1, $t1, 1
	mul.d	$t2, $t1, $t2
	add.d	$t2, $t5, $t2
	sub.w	$a5, $t3, $a5
	slt	$t3, $t7, $a5
	maskeqz	$a5, $a5, $t3
	masknez	$t3, $t7, $t3
	or	$a5, $a5, $t3
	addi.d	$a5, $a5, 1
	mul.d	$t2, $t2, $a5
	add.w	$s0, $t4, $t2
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	mul.d	$t2, $t2, $a5
	mul.d	$t3, $a1, $t2
	mul.d	$a5, $a5, $t1
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	mul.d	$t4, $a5, $t1
	mul.d	$t1, $a2, $a0
	sub.d	$a5, $t2, $t1
	sub.d	$t1, $a6, $t1
	sub.d	$t2, $t4, $t3
	sub.d	$t3, $a7, $t0
	ori	$t4, $zero, 3
	sltu	$t4, $t4, $a2
	addi.d	$t5, $a0, -1
	sltui	$t5, $t5, 1
	and	$t4, $t4, $t5
	bstrpick.d	$t5, $a2, 30, 2
	slli.d	$t6, $t5, 2
	slli.d	$t7, $a0, 3
	move	$s2, $a4
	b	.LBB5_49
	.p2align	4, , 16
.LBB5_48:                               # %._crit_edge1233.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB5_49 Depth=5
	add.w	$s0, $t2, $s0
	addi.w	$a3, $a3, 1
	add.w	$s2, $t3, $s2
	ld.d	$t5, $sp, 448                   # 8-byte Folded Reload
	beq	$a3, $t5, .LBB5_60
.LBB5_49:                               # %.preheader1152.us.us.us.us.us
                                        #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        #         Parent Loop BB5_43 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB5_51 Depth 6
                                        #               Child Loop BB5_58 Depth 7
                                        #               Child Loop BB5_55 Depth 7
	move	$t8, $zero
	b	.LBB5_51
	.p2align	4, , 16
.LBB5_50:                               # %._crit_edge1227.us.us.us.us.us.us
                                        #   in Loop: Header=BB5_51 Depth=6
	add.w	$s0, $a5, $s1
	addi.w	$t8, $t8, 1
	add.w	$s2, $t1, $fp
	beq	$t8, $a1, .LBB5_48
.LBB5_51:                               # %.preheader1149.us.us.us.us.us.us
                                        #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        #         Parent Loop BB5_43 Depth=4
                                        #           Parent Loop BB5_49 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB5_58 Depth 7
                                        #               Child Loop BB5_55 Depth 7
	beqz	$t4, .LBB5_53
# %bb.52:                               # %vector.memcheck1570
                                        #   in Loop: Header=BB5_51 Depth=6
	add.d	$t5, $s6, $s2
	alsl.d	$t5, $t5, $s8, 3
	ld.d	$fp, $sp, 456                   # 8-byte Folded Reload
	add.d	$fp, $fp, $s0
	alsl.d	$fp, $fp, $ra, 3
	sub.d	$t5, $t5, $fp
	bgeu	$t5, $s5, .LBB5_57
.LBB5_53:                               #   in Loop: Header=BB5_51 Depth=6
	move	$t5, $zero
	move	$fp, $s2
	move	$s1, $s0
.LBB5_54:                               # %scalar.ph1571.preheader
                                        #   in Loop: Header=BB5_51 Depth=6
	move	$s0, $zero
	move	$s2, $zero
	alsl.d	$s3, $fp, $s7, 3
	ld.d	$s4, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$s4, $s1, $s4, 3
	sub.d	$t5, $a2, $t5
	.p2align	4, , 16
.LBB5_55:                               # %scalar.ph1571
                                        #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        #         Parent Loop BB5_43 Depth=4
                                        #           Parent Loop BB5_49 Depth=5
                                        #             Parent Loop BB5_51 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s4, $s2
	fstx.d	$fa0, $s3, $s2
	add.d	$s2, $s2, $t7
	addi.w	$t5, $t5, -1
	sub.d	$s0, $s0, $a0
	bnez	$t5, .LBB5_55
# %bb.56:                               # %._crit_edge1227.us.us.us.us.us.us.loopexit
                                        #   in Loop: Header=BB5_51 Depth=6
	sub.d	$fp, $fp, $s0
	sub.d	$s1, $s1, $s0
	b	.LBB5_50
	.p2align	4, , 16
.LBB5_57:                               # %vector.ph1573
                                        #   in Loop: Header=BB5_51 Depth=6
	add.d	$fp, $t6, $s2
	add.d	$s1, $t6, $s0
	addi.d	$t5, $s7, 16
	alsl.d	$t5, $s2, $t5, 3
	ld.d	$s2, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$s0, $s0, $s2, 3
	move	$s2, $t6
	.p2align	4, , 16
.LBB5_58:                               # %vector.body1576
                                        #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        #         Parent Loop BB5_43 Depth=4
                                        #           Parent Loop BB5_49 Depth=5
                                        #             Parent Loop BB5_51 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	vld	$vr0, $s0, -16
	vld	$vr1, $s0, 0
	vst	$vr0, $t5, -16
	vst	$vr1, $t5, 0
	addi.d	$s2, $s2, -4
	addi.d	$t5, $t5, 32
	addi.d	$s0, $s0, 32
	bnez	$s2, .LBB5_58
# %bb.59:                               # %middle.block1583
                                        #   in Loop: Header=BB5_51 Depth=6
	move	$t5, $t6
	beq	$t6, $a2, .LBB5_50
	b	.LBB5_54
	.p2align	4, , 16
.LBB5_60:                               # %.preheader1158
                                        #   in Loop: Header=BB5_43 Depth=4
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	blez	$a3, .LBB5_81
# %bb.61:                               # %.lr.ph1331
                                        #   in Loop: Header=BB5_43 Depth=4
	move	$t2, $zero
	mul.d	$t3, $a2, $a0
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	slti	$a3, $a3, 1
	slti	$a5, $a1, 1
	slti	$t1, $a2, 1
	st.d	$t3, $sp, 288                   # 8-byte Folded Spill
	sub.d	$s6, $a6, $t3
	sub.d	$a6, $a7, $t0
	st.d	$a6, $sp, 424                   # 8-byte Folded Spill
	addi.d	$a6, $a2, -1
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a7, $a6, 3
	st.d	$a7, $sp, 280                   # 8-byte Folded Spill
	addi.d	$a7, $s7, 8
	alsl.d	$t0, $a6, $a7, 3
	or	$a3, $a3, $a5
	or	$a3, $a3, $t1
	st.d	$a3, $sp, 376                   # 8-byte Folded Spill
	ori	$a3, $zero, 3
	sltu	$a3, $a3, $a2
	addi.d	$a5, $a0, -1
	sltui	$a5, $a5, 1
	and	$t1, $a3, $a5
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 2
	slli.d	$t5, $a3, 2
	slli.d	$t3, $a0, 3
	b	.LBB5_63
	.p2align	4, , 16
.LBB5_62:                               # %.loopexit1155
                                        #   in Loop: Header=BB5_63 Depth=5
	ld.d	$t2, $sp, 408                   # 8-byte Folded Reload
	addi.d	$t2, $t2, 1
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	beq	$t2, $a3, .LBB5_81
.LBB5_63:                               #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        #         Parent Loop BB5_43 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB5_68 Depth 6
                                        #               Child Loop BB5_70 Depth 7
                                        #                 Child Loop BB5_74 Depth 8
                                        #                 Child Loop BB5_79 Depth 8
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	st.d	$t2, $sp, 408                   # 8-byte Folded Spill
	beq	$t2, $a3, .LBB5_62
# %bb.64:                               #   in Loop: Header=BB5_63 Depth=5
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	blez	$a3, .LBB5_62
# %bb.65:                               # %.preheader1151.lr.ph
                                        #   in Loop: Header=BB5_63 Depth=5
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	bnez	$a3, .LBB5_62
# %bb.66:                               # %.preheader1148.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB5_63 Depth=5
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 64
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a5
	move	$t4, $zero
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	slli.d	$a5, $a6, 2
	ldx.w	$a3, $a3, $a5
	st.d	$a3, $sp, 352                   # 8-byte Folded Spill
	alsl.d	$a5, $a6, $a6, 1
	slli.d	$a3, $a5, 2
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a7, $a6, 16
	ld.w	$ra, $a6, 4
	ld.d	$a5, $sp, 360                   # 8-byte Folded Reload
	add.d	$t2, $a5, $a3
	ld.w	$t6, $t2, 4
	ld.w	$t2, $t2, 8
	sub.w	$a7, $a7, $ra
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	slt	$t7, $s3, $a7
	maskeqz	$a7, $a7, $t7
	masknez	$t7, $s3, $t7
	or	$a7, $a7, $t7
	ld.w	$t7, $a6, 12
	ld.w	$s0, $a6, 0
	addi.d	$t8, $a7, 1
	mul.d	$a7, $t8, $t2
	add.d	$a7, $a7, $t6
	sub.w	$t2, $t7, $s0
	slt	$t6, $s3, $t2
	maskeqz	$t2, $t2, $t6
	masknez	$t6, $s3, $t6
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ld.w	$t7, $a3, 4
	ld.w	$fp, $a3, 16
	or	$t2, $t2, $t6
	addi.d	$t2, $t2, 1
	ld.w	$t6, $a3, 0
	sub.w	$fp, $fp, $t7
	slt	$s1, $s3, $fp
	maskeqz	$fp, $fp, $s1
	ld.w	$s2, $a3, 12
	masknez	$s1, $s3, $s1
	or	$fp, $fp, $s1
	addi.d	$fp, $fp, 1
	sub.w	$s1, $s2, $t6
	slt	$s2, $s3, $s1
	maskeqz	$s1, $s1, $s2
	masknez	$s2, $s3, $s2
	or	$s1, $s1, $s2
	addi.d	$s1, $s1, 1
	ld.d	$s4, $sp, 304                   # 8-byte Folded Reload
	mul.d	$s2, $t2, $s4
	mul.d	$s3, $a1, $s2
	mul.d	$s4, $s1, $s4
	mul.d	$s5, $a1, $s4
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	mul.d	$s8, $fp, $a5
	mul.d	$s8, $s8, $s1
	sub.d	$s5, $s8, $s5
	st.d	$s5, $sp, 440                   # 8-byte Folded Spill
	ld.w	$s5, $a3, 8
	mul.d	$s8, $t8, $a5
	mul.d	$s8, $s8, $t2
	sub.d	$a3, $s8, $s3
	st.d	$a3, $sp, 432                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	sub.d	$s3, $s8, $s5
	mul.d	$fp, $fp, $s3
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	sub.d	$t7, $a3, $t7
	add.d	$t7, $t7, $fp
	mul.d	$t7, $t7, $s1
	ld.w	$s1, $a6, 8
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	sub.d	$t6, $a5, $t6
	add.w	$fp, $t6, $t7
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s3, $a6, 48
	sub.d	$t6, $s8, $s1
	mul.d	$t6, $t6, $t8
	ld.d	$t8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t7, $t8, 40
	sub.d	$a6, $a3, $ra
	add.d	$a6, $a6, $t6
	ld.d	$s5, $t8, 24
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ldx.w	$s8, $t7, $a3
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$s1, $a3, $t6
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	sub.d	$t8, $s4, $a3
	sub.d	$t6, $s2, $a3
	sub.d	$a5, $a5, $s0
	mul.d	$a6, $a6, $t2
	add.w	$t7, $a5, $a6
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a5, $a3, $s3, 3
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	add.d	$a3, $a5, $s0
	addi.d	$s4, $a3, 8
	mul.d	$a3, $a7, $t2
	add.w	$a6, $s1, $a3
	add.d	$a3, $s8, $a6
	alsl.d	$s1, $a3, $s5, 3
	add.d	$a3, $s1, $s0
	addi.d	$a3, $a3, 8
	slli.d	$a7, $s8, 3
	alsl.d	$a6, $a6, $a7, 3
	add.d	$s8, $s5, $a6
	move	$ra, $a4
	b	.LBB5_68
	.p2align	4, , 16
.LBB5_67:                               # %._crit_edge1281.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB5_68 Depth=6
	ld.d	$a6, $sp, 440                   # 8-byte Folded Reload
	add.w	$fp, $a6, $fp
	ld.d	$a6, $sp, 432                   # 8-byte Folded Reload
	add.w	$t7, $a6, $t7
	addi.w	$t4, $t4, 1
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
	add.w	$ra, $a6, $ra
	ld.d	$a6, $sp, 448                   # 8-byte Folded Reload
	beq	$t4, $a6, .LBB5_62
.LBB5_68:                               # %.preheader1148.us.us.us.us.us
                                        #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        #         Parent Loop BB5_43 Depth=4
                                        #           Parent Loop BB5_63 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB5_70 Depth 7
                                        #                 Child Loop BB5_74 Depth 8
                                        #                 Child Loop BB5_79 Depth 8
	move	$s2, $zero
	b	.LBB5_70
	.p2align	4, , 16
.LBB5_69:                               # %._crit_edge1273.us.us.us.us.us.us
                                        #   in Loop: Header=BB5_70 Depth=7
	add.w	$fp, $t8, $a7
	add.w	$t7, $t6, $a6
	addi.w	$s2, $s2, 1
	add.w	$ra, $s6, $s5
	beq	$s2, $a1, .LBB5_67
.LBB5_70:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        #         Parent Loop BB5_43 Depth=4
                                        #           Parent Loop BB5_63 Depth=5
                                        #             Parent Loop BB5_68 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB5_74 Depth 8
                                        #                 Child Loop BB5_79 Depth 8
	beqz	$t1, .LBB5_76
# %bb.71:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_70 Depth=7
	alsl.d	$a6, $ra, $s7, 3
	alsl.d	$a7, $ra, $t0, 3
	alsl.d	$t2, $fp, $a5, 3
	alsl.d	$s0, $fp, $s4, 3
	sltu	$s0, $a6, $s0
	sltu	$t2, $t2, $a7
	and	$s0, $s0, $t2
	move	$t2, $zero
	bnez	$s0, .LBB5_77
# %bb.72:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_70 Depth=7
	alsl.d	$s0, $t7, $s1, 3
	alsl.d	$s3, $t7, $a3, 3
	sltu	$a6, $a6, $s3
	sltu	$a7, $s0, $a7
	and	$a6, $a6, $a7
	bnez	$a6, .LBB5_77
# %bb.73:                               # %vector.ph
                                        #   in Loop: Header=BB5_70 Depth=7
	add.d	$s5, $t5, $ra
	add.d	$a6, $t5, $t7
	add.d	$a7, $t5, $fp
	addi.d	$t2, $s7, 16
	alsl.d	$t2, $ra, $t2, 3
	addi.d	$s0, $a5, 16
	alsl.d	$fp, $fp, $s0, 3
	addi.d	$s0, $s8, 16
	alsl.d	$t7, $t7, $s0, 3
	move	$ra, $t5
	.p2align	4, , 16
.LBB5_74:                               # %vector.body
                                        #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        #         Parent Loop BB5_43 Depth=4
                                        #           Parent Loop BB5_63 Depth=5
                                        #             Parent Loop BB5_68 Depth=6
                                        #               Parent Loop BB5_70 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	vld	$vr0, $fp, -16
	vld	$vr1, $fp, 0
	vld	$vr2, $t7, -16
	vld	$vr3, $t7, 0
	vld	$vr4, $t2, -16
	vld	$vr5, $t2, 0
	vbitrevi.d	$vr0, $vr0, 63
	vbitrevi.d	$vr1, $vr1, 63
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vfmadd.d	$vr1, $vr1, $vr3, $vr5
	vst	$vr0, $t2, -16
	vst	$vr1, $t2, 0
	addi.d	$ra, $ra, -4
	addi.d	$t2, $t2, 32
	addi.d	$fp, $fp, 32
	addi.d	$t7, $t7, 32
	bnez	$ra, .LBB5_74
# %bb.75:                               # %middle.block
                                        #   in Loop: Header=BB5_70 Depth=7
	move	$t2, $t5
	ld.d	$t7, $sp, 472                   # 8-byte Folded Reload
	beq	$t5, $t7, .LBB5_69
	b	.LBB5_78
	.p2align	4, , 16
.LBB5_76:                               #   in Loop: Header=BB5_70 Depth=7
	move	$t2, $zero
.LBB5_77:                               #   in Loop: Header=BB5_70 Depth=7
	move	$s5, $ra
	move	$a6, $t7
	move	$a7, $fp
.LBB5_78:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_70 Depth=7
	move	$t7, $zero
	move	$fp, $zero
	alsl.d	$ra, $s5, $s7, 3
	alsl.d	$s0, $a6, $s8, 3
	alsl.d	$s3, $a7, $a5, 3
	sub.d	$t2, $a2, $t2
	.p2align	4, , 16
.LBB5_79:                               # %scalar.ph
                                        #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        #         Parent Loop BB5_43 Depth=4
                                        #           Parent Loop BB5_63 Depth=5
                                        #             Parent Loop BB5_68 Depth=6
                                        #               Parent Loop BB5_70 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	fldx.d	$fa0, $s3, $fp
	fldx.d	$fa1, $s0, $fp
	fldx.d	$fa2, $ra, $fp
	fneg.d	$fa0, $fa0
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fstx.d	$fa0, $ra, $fp
	add.d	$fp, $fp, $t3
	addi.w	$t2, $t2, -1
	sub.d	$t7, $t7, $a0
	bnez	$t2, .LBB5_79
# %bb.80:                               # %._crit_edge1273.us.us.us.us.us.us.loopexit
                                        #   in Loop: Header=BB5_70 Depth=7
	sub.d	$s5, $s5, $t7
	sub.d	$a6, $a6, $t7
	sub.d	$a7, $a7, $t7
	b	.LBB5_69
	.p2align	4, , 16
.LBB5_81:                               # %._crit_edge1332
                                        #   in Loop: Header=BB5_43 Depth=4
	ori	$s5, $zero, 32
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	blez	$a3, .LBB5_42
# %bb.82:                               # %.preheader1153.lr.ph
                                        #   in Loop: Header=BB5_43 Depth=4
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	blez	$a3, .LBB5_42
# %bb.83:                               # %.preheader1153.lr.ph
                                        #   in Loop: Header=BB5_43 Depth=4
	blez	$a1, .LBB5_42
# %bb.84:                               # %.preheader1153.lr.ph
                                        #   in Loop: Header=BB5_43 Depth=4
	blez	$a2, .LBB5_42
# %bb.85:                               # %.preheader1150.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB5_43 Depth=4
	ld.d	$t4, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a5, $t4, 64
	move	$a3, $zero
	ld.d	$t5, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a6, $t5, 8
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a7
	ld.w	$a7, $t5, 4
	ld.w	$t0, $t5, 16
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	sub.d	$a6, $t1, $a6
	ld.w	$t1, $t5, 0
	ld.d	$t2, $sp, 320                   # 8-byte Folded Reload
	sub.d	$t2, $t2, $a7
	sub.w	$a7, $t0, $a7
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	slt	$t0, $t6, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t6, $t0
	or	$a7, $a7, $t0
	addi.d	$t3, $a7, 1
	mul.d	$a6, $t3, $a6
	add.d	$a6, $t2, $a6
	ld.w	$a7, $t5, 12
	ld.d	$t2, $t4, 48
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$t5, $a5, $t0
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $t1
	sub.w	$a7, $a7, $t1
	slt	$t0, $t6, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t6, $t0
	or	$a7, $a7, $t0
	addi.d	$t6, $a7, 1
	mul.d	$a6, $a6, $t6
	add.w	$t4, $a5, $a6
	slli.d	$a5, $a0, 3
	mul.d	$a6, $a0, $a2
	sub.d	$a6, $zero, $a6
	ld.d	$a7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	mul.d	$a7, $fp, $a7
	ori	$t0, $zero, 1
	sub.d	$t0, $t0, $a1
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	mul.d	$t7, $t1, $t0
	add.d	$a7, $a7, $t7
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	mul.d	$a7, $a7, $t0
	sub.d	$a7, $zero, $a7
	sub.d	$t8, $zero, $t1
	mul.d	$t0, $t8, $t0
	alsl.d	$t1, $t5, $t2, 3
	mul.d	$t2, $fp, $t3
	add.d	$t2, $t2, $t7
	mul.d	$t2, $t2, $t6
	sub.d	$t2, $zero, $t2
	mul.d	$t3, $t8, $t6
	.p2align	4, , 16
.LBB5_86:                               # %.preheader1150.us.us.us.us.us
                                        #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        #         Parent Loop BB5_43 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB5_87 Depth 6
                                        #               Child Loop BB5_88 Depth 7
	move	$t5, $zero
	.p2align	4, , 16
.LBB5_87:                               # %.preheader1147.us.us.us.us.us.us
                                        #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        #         Parent Loop BB5_43 Depth=4
                                        #           Parent Loop BB5_86 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB5_88 Depth 7
	move	$t8, $zero
	alsl.d	$fp, $a4, $s7, 3
	sub.d	$t6, $a7, $a4
	sub.d	$a4, $t0, $a4
	alsl.d	$s0, $t4, $t1, 3
	sub.d	$t7, $t2, $t4
	sub.d	$t4, $t3, $t4
	move	$s1, $a2
	.p2align	4, , 16
.LBB5_88:                               #   Parent Loop BB5_32 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        #       Parent Loop BB5_40 Depth=3
                                        #         Parent Loop BB5_43 Depth=4
                                        #           Parent Loop BB5_86 Depth=5
                                        #             Parent Loop BB5_87 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s0, $t8
	fldx.d	$fa1, $fp, $t8
	fdiv.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $fp, $t8
	add.d	$t8, $t8, $a5
	sub.d	$t6, $t6, $a0
	sub.d	$a4, $a4, $a0
	sub.d	$t7, $t7, $a0
	addi.w	$s1, $s1, -1
	sub.d	$t4, $t4, $a0
	bnez	$s1, .LBB5_88
# %bb.89:                               # %._crit_edge1337.us.us.us.us.us.us
                                        #   in Loop: Header=BB5_87 Depth=6
	sub.w	$t4, $a6, $t4
	addi.w	$t5, $t5, 1
	sub.w	$a4, $a6, $a4
	bne	$t5, $a1, .LBB5_87
# %bb.90:                               # %._crit_edge1343.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB5_86 Depth=5
	sub.w	$t4, $a6, $t7
	addi.w	$a3, $a3, 1
	sub.w	$a4, $a6, $t6
	ld.d	$t5, $sp, 448                   # 8-byte Folded Reload
	bne	$a3, $t5, .LBB5_86
	b	.LBB5_42
	.p2align	4, , 16
.LBB5_91:                               #   in Loop: Header=BB5_32 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructCopy)
	jirl	$ra, $ra, 0
	b	.LBB5_31
.LBB5_92:                               # %._crit_edge1392
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 136
	st.w	$a1, $fp, 128
	pcaddu18i	$ra, %call36(hypre_IncFLOPCount)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 132
.LBB5_93:
	pcaddu18i	$ra, %call36(hypre_EndTiming)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs1, $sp, 504                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 512                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.Lfunc_end5:
	.size	hypre_PointRelax, .Lfunc_end5-hypre_PointRelax
                                        # -- End function
	.globl	hypre_PointRelaxSetTol          # -- Begin function hypre_PointRelaxSetTol
	.p2align	5
	.type	hypre_PointRelaxSetTol,@function
hypre_PointRelaxSetTol:                 # @hypre_PointRelaxSetTol
# %bb.0:
	fst.d	$fa0, $a0, 8
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	hypre_PointRelaxSetTol, .Lfunc_end6-hypre_PointRelaxSetTol
                                        # -- End function
	.globl	hypre_PointRelaxSetMaxIter      # -- Begin function hypre_PointRelaxSetMaxIter
	.p2align	5
	.type	hypre_PointRelaxSetMaxIter,@function
hypre_PointRelaxSetMaxIter:             # @hypre_PointRelaxSetMaxIter
# %bb.0:
	st.w	$a1, $a0, 16
	move	$a0, $zero
	ret
.Lfunc_end7:
	.size	hypre_PointRelaxSetMaxIter, .Lfunc_end7-hypre_PointRelaxSetMaxIter
                                        # -- End function
	.globl	hypre_PointRelaxSetZeroGuess    # -- Begin function hypre_PointRelaxSetZeroGuess
	.p2align	5
	.type	hypre_PointRelaxSetZeroGuess,@function
hypre_PointRelaxSetZeroGuess:           # @hypre_PointRelaxSetZeroGuess
# %bb.0:
	st.w	$a1, $a0, 24
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	hypre_PointRelaxSetZeroGuess, .Lfunc_end8-hypre_PointRelaxSetZeroGuess
                                        # -- End function
	.globl	hypre_PointRelaxSetWeight       # -- Begin function hypre_PointRelaxSetWeight
	.p2align	5
	.type	hypre_PointRelaxSetWeight,@function
hypre_PointRelaxSetWeight:              # @hypre_PointRelaxSetWeight
# %bb.0:
	fst.d	$fa0, $a0, 32
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	hypre_PointRelaxSetWeight, .Lfunc_end9-hypre_PointRelaxSetWeight
                                        # -- End function
	.globl	hypre_PointRelaxSetPointsetRank # -- Begin function hypre_PointRelaxSetPointsetRank
	.p2align	5
	.type	hypre_PointRelaxSetPointsetRank,@function
hypre_PointRelaxSetPointsetRank:        # @hypre_PointRelaxSetPointsetRank
# %bb.0:
	ld.d	$a0, $a0, 56
	slli.d	$a1, $a1, 2
	stx.w	$a2, $a0, $a1
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	hypre_PointRelaxSetPointsetRank, .Lfunc_end10-hypre_PointRelaxSetPointsetRank
                                        # -- End function
	.globl	hypre_PointRelaxSetTempVec      # -- Begin function hypre_PointRelaxSetTempVec
	.p2align	5
	.type	hypre_PointRelaxSetTempVec,@function
hypre_PointRelaxSetTempVec:             # @hypre_PointRelaxSetTempVec
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 104
	move	$s0, $a1
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 104
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	hypre_PointRelaxSetTempVec, .Lfunc_end11-hypre_PointRelaxSetTempVec
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"PointRelax"
	.size	.L.str, 11

	.section	".note.GNU-stack","",@progbits
	.addrsig
