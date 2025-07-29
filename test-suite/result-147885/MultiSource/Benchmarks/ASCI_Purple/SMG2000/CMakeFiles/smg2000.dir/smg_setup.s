	.file	"smg_setup.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_SMGSetup
.LCPI0_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	hypre_SMGSetup
	.p2align	5
	.type	hypre_SMGSetup,@function
hypre_SMGSetup:                         # @hypre_SMGSetup
# %bb.0:
	addi.d	$sp, $sp, -432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 336                  # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	move	$s3, $a0
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.w	$a0, $s3, 36
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a0, $s3, 40
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$zero, $sp, 264
	ld.d	$a0, $a1, 24
	vrepli.b	$vr0, 0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s0, $a1, 8
	st.d	$zero, $sp, 240
	ld.w	$a1, $a0, 16
	vst	$vr0, $sp, 248
	ld.d	$a0, $s0, 40
	vst	$vr0, $sp, 224
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.w	$s4, $a1, -1
	st.w	$s4, $s3, 44
	pcaddu18i	$ra, %call36(hypre_BoxDuplicate)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.d	$s6, $a0, 12
	slli.d	$fp, $s4, 2
	ldx.w	$a0, $s6, $fp
	ldx.w	$a1, $s5, $fp
	sub.w	$a0, $a0, $a1
	addi.w	$a1, $zero, -1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(hypre_Log2)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 28
	addi.w	$a0, $a0, 2
	slt	$a2, $zero, $a1
	slt	$a3, $a0, $a1
	maskeqz	$a4, $a0, $a3
	masknez	$a1, $a1, $a3
	or	$a1, $a4, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s2, $a1, $a0
	st.w	$s2, $s3, 28
	slli.w	$s1, $s2, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$zero, $a0, 0
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructGridRef)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 276
	ld.w	$a1, $s3, 60
	ld.d	$a2, $s3, 64
	ld.w	$a3, $s3, 48
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a4, $s3, 52
	st.w	$a1, $sp, 276
	st.d	$a2, $sp, 280
	ldx.w	$a1, $fp, $a0
	st.w	$a3, $sp, 300
	st.d	$a4, $sp, 304
	slli.d	$a1, $a1, 1
	stx.w	$a1, $fp, $a0
	ldx.w	$a1, $s5, $fp
	ldx.w	$a2, $s6, $fp
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	alsl.d	$a0, $s4, $a0, 2
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$s1, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a0, $s1, 8
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$s1, $s7
	addi.d	$a0, $s7, 8
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	beq	$a1, $a2, .LBB0_7
# %bb.1:
	addi.w	$s3, $s2, -1
	beqz	$s3, .LBB0_7
# %bb.2:                                # %.peel.next
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$fp, $a0, $s6, 2
	alsl.d	$s0, $a0, $s5, 2
	addi.d	$a1, $sp, 300
	addi.d	$a2, $sp, 276
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 300
	addi.d	$a2, $sp, 276
	move	$a0, $s5
	move	$a3, $s5
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 300
	addi.d	$a2, $sp, 276
	move	$a0, $s6
	move	$a3, $s6
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	addi.d	$a1, $sp, 300
	addi.d	$a2, $sp, 276
	move	$a3, $zero
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructCoarsen)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	addi.d	$a1, $sp, 300
	addi.d	$a2, $sp, 276
	ori	$a3, $zero, 1
	ori	$s2, $zero, 1
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructCoarsen)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 276
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.w	$s2, $sp, 284
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	st.d	$zero, $sp, 300
	st.w	$zero, $sp, 308
	slli.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $fp, 0
	beq	$a0, $a1, .LBB0_7
# %bb.3:                                # %.peel.next
	ori	$s2, $zero, 1
	beq	$s3, $s2, .LBB0_7
# %bb.4:                                # %.lr.ph557.preheader
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$a0, $a0, -2
	addi.d	$s3, $s1, 16
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$s7, $a1, 16
	ori	$s8, $zero, 1
	lu32i.d	$s8, 1
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph557
                                        # =>This Inner Loop Header: Depth=1
	move	$s4, $a0
	addi.d	$a1, $sp, 300
	addi.d	$a2, $sp, 276
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_ProjectBox)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 300
	addi.d	$a2, $sp, 276
	move	$a0, $s5
	move	$a3, $s5
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 300
	addi.d	$a2, $sp, 276
	move	$a0, $s6
	move	$a3, $s6
	pcaddu18i	$ra, %call36(hypre_StructMapFineToCoarse)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, -8
	addi.d	$a1, $sp, 300
	addi.d	$a2, $sp, 276
	move	$a3, $zero
	move	$a4, $s7
	pcaddu18i	$ra, %call36(hypre_StructCoarsen)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, -8
	addi.d	$a1, $sp, 300
	addi.d	$a2, $sp, 276
	ori	$a3, $zero, 1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(hypre_StructCoarsen)
	jirl	$ra, $ra, 0
	st.d	$s8, $sp, 276
	st.w	$s2, $sp, 284
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	st.d	$zero, $sp, 300
	st.w	$zero, $sp, 308
	slli.d	$a0, $a0, 1
	st.w	$a0, $a1, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB0_7
# %bb.6:                                # %.lr.ph557
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $s4, -1
	addi.d	$s3, $s3, 8
	addi.d	$s7, $s7, 8
	bnez	$s4, .LBB0_5
.LBB0_7:                                # %.loopexit
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	addi.d	$fp, $s2, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.w	$fp, $a0, 32
	st.d	$s1, $a0, 72
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a1, $a0, 80
	slli.w	$s5, $fp, 3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	slli.w	$s3, $s2, 3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $s0, 0
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $fp, 0
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	blt	$t0, $a1, .LBB0_15
# %bb.8:                                # %.lr.ph.preheader
	ori	$a0, $zero, 4
	bgeu	$t0, $a0, .LBB0_10
# %bb.9:
	move	$a0, $zero
	b	.LBB0_13
.LBB0_10:                               # %vector.ph
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_1)
	bstrpick.d	$a0, $t0, 30, 2
	slli.d	$a0, $a0, 2
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 1
	move	$a3, $a0
	.p2align	4, , 16
.LBB0_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vslli.d	$vr2, $vr0, 1
	vslli.d	$vr3, $vr1, 1
	vpickve2gr.d	$a4, $vr3, 0
	slli.d	$a4, $a4, 2
	vpickve2gr.d	$a5, $vr3, 1
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr2, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr2, 1
	slli.d	$a7, $a7, 2
	stx.w	$a2, $a4, $a1
	stx.w	$a2, $a5, $a1
	stx.w	$a2, $a6, $a1
	stx.w	$a2, $a7, $a1
	vbitseti.d	$vr2, $vr2, 0
	vbitseti.d	$vr3, $vr3, 0
	vpickve2gr.d	$a4, $vr3, 0
	slli.d	$a4, $a4, 2
	vpickve2gr.d	$a5, $vr3, 1
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr2, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr2, 1
	slli.d	$a7, $a7, 2
	stx.w	$a2, $a4, $a1
	stx.w	$a2, $a5, $a1
	stx.w	$a2, $a6, $a1
	stx.w	$a2, $a7, $a1
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a3, $a3, -4
	vaddi.du	$vr0, $vr0, 4
	bnez	$a3, .LBB0_11
# %bb.12:                               # %middle.block
	beq	$a0, $t0, .LBB0_15
.LBB0_13:                               # %.lr.ph.preheader558
	addi.d	$a1, $sp, 224
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 4
	sub.d	$a0, $t0, $a0
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1
	.p2align	4, , 16
.LBB0_14:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $a1, -4
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB0_14
.LBB0_15:                               # %._crit_edge
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $s1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructVectorCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	addi.d	$s7, $s7, 48
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructVectorSetNumGhost)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeShell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$fp, $a0, 36
	ld.d	$a1, $s1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructVectorCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 0
	addi.d	$s0, $s5, 48
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructVectorSetNumGhost)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeShell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.w	$a0, $a0, 36
	add.w	$s5, $a0, $fp
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	beqz	$s2, .LBB0_18
# %bb.16:                               # %.lr.ph501
	move	$a1, $s4
	bstrpick.d	$a2, $s2, 31, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s2, $a0, 8
	addi.d	$fp, $s3, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s4, $a0, 8
	addi.d	$s3, $s6, 8
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	addi.d	$s7, $a1, 8
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $s4, -8
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_SMGCreateInterpOp)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(hypre_StructMatrixInitializeShell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.w	$a4, $a0, 60
	st.d	$a0, $s0, 0
	ld.d	$a1, $s4, -8
	ld.d	$a2, $s6, 0
	ld.d	$a3, $s1, 0
	add.d	$s5, $a4, $s5
	pcaddu18i	$ra, %call36(hypre_SMGCreateRAPOp)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(hypre_StructMatrixInitializeShell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$a0, $a0, 60
	ld.d	$a1, $s1, 0
	add.d	$s5, $s5, $a0
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_StructVectorCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	addi.d	$a1, $sp, 248
	pcaddu18i	$ra, %call36(hypre_StructVectorSetNumGhost)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeShell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a0, $a0, 36
	ld.d	$a1, $s1, 0
	add.d	$s5, $s5, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_StructVectorCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	addi.d	$a1, $sp, 224
	pcaddu18i	$ra, %call36(hypre_StructVectorSetNumGhost)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeShell)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a0, $a0, 36
	ld.d	$a1, $s1, 0
	add.w	$s5, $s5, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_StructVectorCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorSetNumGhost)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeShell)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_StructVectorCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorSetNumGhost)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeShell)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$s3, $s3, 8
	addi.d	$s7, $s7, 8
	addi.d	$s2, $s2, 8
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	addi.d	$s1, $s1, 8
	bnez	$a2, .LBB0_17
.LBB0_18:                               # %._crit_edge502
	ori	$a1, $zero, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $s5, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$s0, $a0, 88
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 36
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	alsl.d	$s0, $a1, $s0, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_21
# %bb.19:                               # %.lr.ph506.preheader
	ld.d	$a0, $s6, 0
	ld.w	$a0, $a0, 36
	move	$fp, $zero
	alsl.d	$s0, $a0, $s0, 3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$s1, $a0, 3
	addi.d	$s2, $s8, 8
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$s3, $a0, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s4, $a0, 8
	.p2align	4, , 16
.LBB0_20:                               # %.lr.ph506
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s7, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixInitializeData)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s7, $fp
	ld.w	$a1, $a0, 60
	ldx.d	$a0, $s4, $fp
	alsl.d	$s0, $a1, $s0, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixInitializeData)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $fp
	ld.w	$a1, $a0, 60
	ldx.d	$a0, $s3, $fp
	alsl.d	$s0, $a1, $s0, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeData)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s3, $fp
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s3, $fp
	ld.w	$a1, $a0, 36
	ldx.d	$a0, $s2, $fp
	alsl.d	$s0, $a1, $s0, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeData)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s2, $fp
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s2, $fp
	ld.d	$a1, $s5, 0
	ld.w	$a2, $a0, 36
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	add.d	$s5, $a0, $fp
	ld.d	$a0, $s5, 8
	ld.d	$a1, $a1, 24
	alsl.d	$s0, $a2, $s0, 3
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	add.d	$s5, $s6, $fp
	ld.d	$a0, $s5, 8
	ld.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	bne	$s1, $fp, .LBB0_20
.LBB0_21:                               # %._crit_edge507
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$s3, $a0, 96
	st.d	$s7, $a0, 104
	move	$s7, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $s7, 112
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	st.d	$s2, $s7, 120
	st.d	$s8, $s7, 128
	st.d	$s5, $s7, 136
	st.d	$s6, $s7, 144
	st.d	$s6, $s7, 152
	st.d	$s6, $s7, 160
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 0
	ld.d	$a1, $s8, 0
	ld.d	$a3, $a2, 24
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a3, $s5, 0
	ld.w	$a4, $a2, 32
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a4, $a1, 24
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 32
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $a3, 24
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s8, 0
	ld.d	$a1, $a1, 24
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	beqz	$s6, .LBB0_28
# %bb.22:                               # %.lr.ph510
	move	$a2, $s3
	move	$s3, $zero
	addi.d	$a0, $sp, 300
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 288
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s6, 31, 0
	addi.d	$a1, $s8, 8
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a1, $s2, 8
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_25 Depth=1
	ld.w	$a1, $s7, 48
	ld.w	$a2, $s7, 52
	st.w	$a1, $sp, 324
	st.w	$a2, $sp, 328
	ld.w	$a0, $s7, 56
	ld.w	$a3, $s7, 60
	ld.w	$a4, $s7, 64
	ld.w	$a5, $s7, 68
	st.w	$a0, $sp, 332
	st.w	$a3, $sp, 312
	st.w	$a4, $sp, 316
.LBB0_24:                               #   in Loop: Header=BB0_25 Depth=1
	st.w	$a5, $sp, 320
	st.w	$a1, $sp, 300
	st.w	$a2, $sp, 304
	st.w	$a1, $sp, 288
	st.w	$a2, $sp, 292
	st.w	$a0, $sp, 296
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $s0, 0
	st.w	$a3, $sp, 276
	st.w	$a4, $sp, 280
	st.w	$a5, $sp, 284
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a2, $fp, 0
	st.w	$a0, $sp, 308
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 0
	slli.d	$a0, $a2, 1
	st.w	$a0, $fp, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_SMGRelaxCreate)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s4, $s3
	addi.d	$a1, $sp, 324
	addi.d	$a2, $sp, 312
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetBase)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	ld.w	$a1, $s7, 4
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetMemoryUse)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetTol)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetNumSpaces)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	ld.w	$a3, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetSpace)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	ld.w	$a2, $s0, 0
	ld.w	$a3, $fp, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetSpace)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s3
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetTempVec)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetNumPreRelax)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetNumPostRelax)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	add.d	$fp, $s1, $s3
	ld.d	$a1, $fp, -8
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	add.d	$s2, $s0, $s3
	ld.d	$a2, $s2, -8
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	add.d	$s6, $s8, $s3
	ld.d	$a3, $s6, -8
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetup)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	ld.d	$a1, $fp, -8
	ld.d	$a2, $s2, -8
	ld.d	$a3, $s6, -8
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a4, $s7, $s3
	addi.d	$a6, $sp, 300
	addi.d	$a7, $sp, 288
	addi.d	$a5, $sp, 276
	st.d	$a5, $sp, 0
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_SMGSetupInterpOp)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetNumPreSpaces)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetNumRegSpaces)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s3
	ld.d	$a1, $fp, -8
	ld.d	$a2, $s2, -8
	ld.d	$a3, $s6, -8
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_SMGResidualCreate)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	stx.d	$a0, $s5, $s3
	addi.d	$a1, $sp, 324
	addi.d	$a2, $sp, 312
	pcaddu18i	$ra, %call36(hypre_SMGResidualSetBase)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s5, $s3
	ld.d	$a1, $fp, -8
	ld.d	$a2, $s6, -8
	ld.d	$a3, $s2, -8
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a4, $s2, $s3
	pcaddu18i	$ra, %call36(hypre_SMGResidualSetup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_SemiInterpCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	stx.d	$a0, $a1, $s3
	ldx.d	$a1, $s7, $s3
	ldx.d	$a3, $s8, $s3
	ldx.d	$a4, $s2, $s3
	ori	$a2, $zero, 1
	addi.d	$a5, $sp, 300
	addi.d	$a6, $sp, 288
	addi.d	$a7, $sp, 276
	pcaddu18i	$ra, %call36(hypre_SemiInterpSetup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_SemiRestrictCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	stx.d	$a0, $a1, $s3
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a1, $s6, $s3
	ldx.d	$a3, $s2, $s3
	ldx.d	$a4, $s0, $s3
	addi.d	$a5, $sp, 300
	addi.d	$a6, $sp, 288
	addi.d	$a7, $sp, 276
	move	$a2, $zero
	pcaddu18i	$ra, %call36(hypre_SemiRestrictSetup)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s6, $s3
	ld.d	$a1, $fp, -8
	ldx.d	$a2, $s7, $s3
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a3, $s1, $s3
	addi.d	$a4, $sp, 300
	addi.d	$a5, $sp, 276
	pcaddu18i	$ra, %call36(hypre_SMGSetupRAPOp)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $s3, .LBB0_27
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	beqz	$s3, .LBB0_23
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	move	$a0, $zero
	st.d	$zero, $sp, 324
	st.w	$zero, $sp, 332
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	lu32i.d	$a4, 1
	st.d	$a4, $sp, 312
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	b	.LBB0_24
.LBB0_27:                               # %._crit_edge511
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	ori	$a3, $zero, 1
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	move	$s0, $s6
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_29
.LBB0_28:                               # %._crit_edge511.thread
	ld.w	$a0, $s7, 48
	ld.w	$a1, $s7, 52
	ld.w	$a2, $s7, 56
	ld.w	$a3, $s7, 60
	ld.w	$a4, $s7, 64
	ld.w	$a5, $s7, 68
	move	$s0, $zero
.LBB0_29:
	st.w	$a0, $sp, 324
	st.w	$a1, $sp, 328
	st.w	$a2, $sp, 332
	st.w	$a3, $sp, 312
	st.w	$a4, $sp, 316
	st.w	$a5, $sp, 320
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_SMGRelaxCreate)
	jirl	$ra, $ra, 0
	slli.d	$s1, $s0, 3
	stx.d	$a0, $s4, $s1
	addi.d	$a1, $sp, 324
	addi.d	$a2, $sp, 312
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetBase)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s1
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetTol)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s1
	ori	$a1, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetMaxIter)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s1
	ldx.d	$a1, $s5, $s1
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetTempVec)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetNumPreRelax)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetNumPostRelax)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s4, $s1
	ldx.d	$a1, $s3, $s1
	ldx.d	$a2, $s2, $s1
	ldx.d	$a3, $s8, $s1
	pcaddu18i	$ra, %call36(hypre_SMGRelaxSetup)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB0_31
# %bb.30:
	alsl.d	$s2, $s0, $s3, 3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$s3, $s0, $a0, 3
	alsl.d	$s0, $s0, $s8, 3
	pcaddu18i	$ra, %call36(hypre_SMGResidualCreate)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	stx.d	$a0, $s5, $s1
	addi.d	$a1, $sp, 324
	addi.d	$a2, $sp, 312
	pcaddu18i	$ra, %call36(hypre_SMGResidualSetBase)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s5, $s1
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s0, 0
	ld.d	$a3, $s3, 0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a4, $a4, $s1
	pcaddu18i	$ra, %call36(hypre_SMGResidualSetup)
	jirl	$ra, $ra, 0
.LBB0_31:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s8, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a1, 32
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructVectorInitializeData)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.w	$a2, $a1, 32
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(hypre_StructVectorAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 208
	st.d	$s4, $s7, 168
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a1, $s7, 176
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $s7, 184
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $s7, 192
	blt	$a0, $fp, .LBB0_33
# %bb.32:
	ld.w	$a0, $s7, 16
	slli.w	$s0, $a0, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 216
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 224
.LBB0_33:
	move	$a0, $zero
	fld.d	$fs0, $sp, 336                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.Lfunc_end0:
	.size	hypre_SMGSetup, .Lfunc_end0-hypre_SMGSetup
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
