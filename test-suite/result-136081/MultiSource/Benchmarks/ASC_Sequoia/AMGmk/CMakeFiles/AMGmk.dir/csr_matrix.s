	.file	"csr_matrix.c"
	.text
	.globl	hypre_CSRMatrixCreate           # -- Begin function hypre_CSRMatrixCreate
	.p2align	5
	.type	hypre_CSRMatrixCreate,@function
hypre_CSRMatrixCreate:                  # @hypre_CSRMatrixCreate
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 56
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 40
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	st.w	$s1, $a0, 24
	st.w	$s0, $a0, 28
	st.w	$fp, $a0, 32
	st.w	$s2, $a0, 52
	st.w	$s1, $a0, 48
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	hypre_CSRMatrixCreate, .Lfunc_end0-hypre_CSRMatrixCreate
                                        # -- End function
	.globl	hypre_CSRMatrixDestroy          # -- Begin function hypre_CSRMatrixDestroy
	.p2align	5
	.type	hypre_CSRMatrixDestroy,@function
hypre_CSRMatrixDestroy:                 # @hypre_CSRMatrixDestroy
# %bb.0:
	beqz	$a0, .LBB1_6
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	st.d	$zero, $fp, 8
	beqz	$a0, .LBB1_3
# %bb.2:
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
.LBB1_3:
	ld.w	$a0, $fp, 52
	beqz	$a0, .LBB1_5
# %bb.4:
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	st.d	$zero, $fp, 0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 16
.LBB1_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB1_6:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	hypre_CSRMatrixDestroy, .Lfunc_end1-hypre_CSRMatrixDestroy
                                        # -- End function
	.globl	hypre_CSRMatrixInitialize       # -- Begin function hypre_CSRMatrixInitialize
	.p2align	5
	.type	hypre_CSRMatrixInitialize,@function
hypre_CSRMatrixInitialize:              # @hypre_CSRMatrixInitialize
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s1, $a0, 24
	ld.d	$a0, $a0, 0
	ld.w	$s0, $fp, 32
	bnez	$a0, .LBB2_3
# %bb.1:
	beqz	$s0, .LBB2_3
# %bb.2:
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
.LBB2_3:
	ld.d	$a0, $fp, 8
	bnez	$a0, .LBB2_5
# %bb.4:
	addi.w	$a0, $s1, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
.LBB2_5:
	ld.d	$a0, $fp, 16
	bnez	$a0, .LBB2_8
# %bb.6:
	beqz	$s0, .LBB2_8
# %bb.7:
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
.LBB2_8:
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	hypre_CSRMatrixInitialize, .Lfunc_end2-hypre_CSRMatrixInitialize
                                        # -- End function
	.globl	hypre_CSRMatrixSetDataOwner     # -- Begin function hypre_CSRMatrixSetDataOwner
	.p2align	5
	.type	hypre_CSRMatrixSetDataOwner,@function
hypre_CSRMatrixSetDataOwner:            # @hypre_CSRMatrixSetDataOwner
# %bb.0:
	st.w	$a1, $a0, 52
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	hypre_CSRMatrixSetDataOwner, .Lfunc_end3-hypre_CSRMatrixSetDataOwner
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_CSRMatrixSetRownnz
.LCPI4_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.text
	.globl	hypre_CSRMatrixSetRownnz
	.p2align	5
	.type	hypre_CSRMatrixSetRownnz,@function
hypre_CSRMatrixSetRownnz:               # @hypre_CSRMatrixSetRownnz
# %bb.0:
	ld.w	$a3, $a0, 24
	blez	$a3, .LBB4_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 8
	ld.w	$a4, $fp, 0
	ori	$a1, $zero, 8
	bgeu	$a3, $a1, .LBB4_4
# %bb.2:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB4_8
.LBB4_3:                                # %._crit_edge.thread
	move	$a1, $zero
	st.w	$zero, $a0, 48
	st.d	$a1, $a0, 40
	move	$a0, $zero
	ret
.LBB4_4:                                # %vector.ph
	bstrpick.d	$a1, $a3, 30, 3
	slli.d	$a1, $a1, 3
	vinsgr2vr.w	$vr0, $a4, 0
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI4_0)
	vreplvei.w	$vr0, $vr0, 0
	vrepli.b	$vr2, 0
	addi.d	$a2, $fp, 20
	move	$a4, $a1
	vori.b	$vr3, $vr2, 0
	.p2align	4, , 16
.LBB4_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr4, $vr0, 0
	vld	$vr5, $a2, -16
	vld	$vr0, $a2, 0
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr5, $vr4
	vori.b	$vr4, $vr1, 0
	vshuf.w	$vr4, $vr0, $vr5
	vslt.w	$vr5, $vr6, $vr5
	vslt.w	$vr4, $vr4, $vr0
	vsub.w	$vr2, $vr2, $vr5
	vsub.w	$vr3, $vr3, $vr4
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB4_5
# %bb.6:                                # %middle.block
	vadd.w	$vr1, $vr3, $vr2
	vreplvei.d	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a2, $vr1, 0
	beq	$a1, $a3, .LBB4_10
# %bb.7:
	vpickve2gr.w	$a4, $vr0, 3
.LBB4_8:                                # %.lr.ph.preheader50
	sub.d	$a5, $a3, $a1
	alsl.d	$a1, $a1, $fp, 2
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB4_9:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	slt	$a4, $a4, $a6
	add.w	$a2, $a2, $a4
	addi.d	$a5, $a5, -1
	addi.d	$a1, $a1, 4
	move	$a4, $a6
	bnez	$a5, .LBB4_9
.LBB4_10:                               # %._crit_edge
	move	$a1, $zero
	st.w	$a2, $a0, 48
	beqz	$a2, .LBB4_17
# %bb.11:                               # %._crit_edge
	beq	$a2, $a3, .LBB4_17
# %bb.12:                               # %.lr.ph39.preheader
	move	$s0, $a0
	bstrpick.d	$s1, $a3, 31, 0
	ori	$a1, $zero, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	move	$a3, $zero
	addi.d	$a2, $fp, 4
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_13:                               #   in Loop: Header=BB4_14 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$s1, $s1, -1
	addi.d	$a2, $a2, 4
	beqz	$s1, .LBB4_16
.LBB4_14:                               # %.lr.ph39
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a2, -4
	bge	$a5, $a4, .LBB4_13
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=1
	slli.d	$a4, $a3, 2
	addi.w	$a3, $a3, 1
	stx.w	$a0, $a1, $a4
	b	.LBB4_13
.LBB4_16:
	move	$a0, $s0
.LBB4_17:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	st.d	$a1, $a0, 40
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	hypre_CSRMatrixSetRownnz, .Lfunc_end4-hypre_CSRMatrixSetRownnz
                                        # -- End function
	.globl	hypre_CSRMatrixRead             # -- Begin function hypre_CSRMatrixRead
	.p2align	5
	.type	hypre_CSRMatrixRead,@function
hypre_CSRMatrixRead:                    # @hypre_CSRMatrixRead
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
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a2, $sp, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 12
	move	$s0, $a0
	bltz	$s3, .LBB5_3
# %bb.1:                                # %.lr.ph.preheader
	addi.w	$s4, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	move	$s2, $s0
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	addi.d	$a0, $a0, -1
	st.w	$a0, $s2, 0
	ld.w	$s3, $sp, 12
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 4
	blt	$s4, $s3, .LBB5_2
.LBB5_3:                                # %._crit_edge
	slli.d	$a0, $s3, 2
	ldx.w	$s1, $s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 56
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$zero, $a0, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	st.d	$zero, $a0, 0
	st.w	$s3, $a0, 24
	st.w	$s3, $a0, 28
	st.w	$s1, $a0, 32
	st.w	$s5, $a0, 52
	st.w	$s3, $a0, 48
	st.d	$s0, $a0, 8
	ori	$s6, $zero, 1
	beqz	$s1, .LBB5_12
# %bb.4:
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 8
	st.d	$a0, $s2, 0
	beqz	$a1, .LBB5_7
# %bb.5:                                # %.thread
	ld.d	$s3, $s2, 16
	beqz	$s3, .LBB5_8
.LBB5_6:                                # %hypre_CSRMatrixInitialize.exit
	ori	$s6, $zero, 1
	bge	$s1, $s6, .LBB5_9
	b	.LBB5_12
.LBB5_7:
	addi.w	$a0, $s3, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 8
	ld.d	$s3, $s2, 16
	bnez	$s3, .LBB5_6
.LBB5_8:
	ori	$a1, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s2, 16
	ori	$s6, $zero, 1
	blt	$s1, $s6, .LBB5_12
.LBB5_9:                                # %.lr.ph51.preheader
	move	$s6, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s4, $a0, %pc_lo12(.L.str.1)
	move	$s7, $s1
	.p2align	4, , 16
.LBB5_10:                               # %.lr.ph51
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	addi.w	$a0, $a0, -1
	st.w	$a0, $s3, 0
	slt	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a0, $a0, $a1
	or	$s6, $a0, $a2
	addi.d	$s7, $s7, -1
	addi.d	$s3, $s3, 4
	bnez	$s7, .LBB5_10
# %bb.11:                               # %._crit_edge52.loopexit
	addi.d	$s6, $s6, 1
.LBB5_12:                               # %._crit_edge52
	ld.w	$a0, $sp, 12
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s0, $a0
	blt	$a0, $s5, .LBB5_15
# %bb.13:                               # %.lr.ph56.preheader
	ld.d	$s3, $s2, 0
	move	$s5, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s4, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB5_14:                               # %.lr.ph56
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s0, $a0
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	blt	$s5, $a0, .LBB5_14
.LBB5_15:                               # %._crit_edge57
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	st.w	$s1, $s2, 32
	st.w	$s6, $s2, 28
	move	$a0, $s2
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
.Lfunc_end5:
	.size	hypre_CSRMatrixRead, .Lfunc_end5-hypre_CSRMatrixRead
                                        # -- End function
	.globl	hypre_CSRMatrixPrint            # -- Begin function hypre_CSRMatrixPrint
	.p2align	5
	.type	hypre_CSRMatrixPrint,@function
hypre_CSRMatrixPrint:                   # @hypre_CSRMatrixPrint
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s2, $a0, 0
	ld.d	$s4, $a0, 8
	ld.d	$s3, $a0, 16
	ld.w	$s0, $a0, 24
	move	$a0, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bltz	$s0, .LBB6_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $s0, 1
	bstrpick.d	$s5, $a0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s1, $a0, %pc_lo12(.L.str.4)
	move	$s6, $s4
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s6, 0
	addi.w	$a2, $a0, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 4
	bnez	$s5, .LBB6_2
.LBB6_3:                                # %.preheader35
	slli.d	$a0, $s0, 2
	ldx.w	$a0, $s4, $a0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_10
# %bb.4:                                # %.lr.ph39.preheader
	move	$s5, $zero
	alsl.d	$s1, $s0, $s4, 2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s0, $a0, %pc_lo12(.L.str.4)
	.p2align	4, , 16
.LBB6_5:                                # %.lr.ph39
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 0
	addi.w	$a2, $a0, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 4
	blt	$s5, $a0, .LBB6_5
# %bb.6:                                # %._crit_edge
	beqz	$s2, .LBB6_11
# %bb.7:                                # %.preheader
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_12
# %bb.8:                                # %.lr.ph41.preheader
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s0, $a0, %pc_lo12(.L.str.5)
	.p2align	4, , 16
.LBB6_9:                                # %.lr.ph41
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s2, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB6_9
	b	.LBB6_12
.LBB6_10:                               # %._crit_edge.thread
	bnez	$s2, .LBB6_12
.LBB6_11:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB6_12:                               # %.loopexit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.Lfunc_end6:
	.size	hypre_CSRMatrixPrint, .Lfunc_end6-hypre_CSRMatrixPrint
                                        # -- End function
	.globl	hypre_CSRMatrixCopy             # -- Begin function hypre_CSRMatrixCopy
	.p2align	5
	.type	hypre_CSRMatrixCopy,@function
hypre_CSRMatrixCopy:                    # @hypre_CSRMatrixCopy
# %bb.0:
	ld.w	$a3, $a0, 24
	ld.d	$a4, $a0, 8
	ld.d	$a5, $a1, 8
	ori	$a6, $zero, 1
	blt	$a3, $a6, .LBB7_6
# %bb.1:                                # %.lr.ph50.preheader
	ld.d	$a6, $a0, 16
	ld.d	$a7, $a1, 16
	ld.w	$t2, $a4, 0
	move	$t0, $zero
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %.loopexit46
                                        #   in Loop: Header=BB7_3 Depth=1
	beq	$t0, $a3, .LBB7_6
.LBB7_3:                                # %.lr.ph50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	slli.d	$t1, $t0, 2
	stx.w	$t2, $a5, $t1
	ldx.w	$t1, $a4, $t1
	addi.d	$t0, $t0, 1
	slli.d	$t2, $t0, 2
	ldx.w	$t2, $a4, $t2
	bge	$t1, $t2, .LBB7_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	alsl.d	$t3, $t0, $a4, 2
	alsl.d	$t4, $t1, $a6, 2
	alsl.d	$t5, $t1, $a7, 2
	.p2align	4, , 16
.LBB7_5:                                # %.lr.ph
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t4, 0
	st.w	$t2, $t5, 0
	ld.w	$t2, $t3, 0
	addi.d	$t1, $t1, 1
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 4
	blt	$t1, $t2, .LBB7_5
	b	.LBB7_2
.LBB7_6:                                # %._crit_edge
	slli.d	$a6, $a3, 2
	ldx.w	$a7, $a4, $a6
	stx.w	$a7, $a5, $a6
	beqz	$a2, .LBB7_19
# %bb.7:
	ori	$a2, $zero, 1
	blt	$a3, $a2, .LBB7_19
# %bb.8:                                # %.lr.ph56.preheader
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	ld.w	$t4, $a4, 0
	sub.d	$a5, $a1, $a0
	addi.d	$a6, $a1, 16
	addi.d	$a7, $a0, 16
	ori	$t0, $zero, 4
	ori	$t1, $zero, 32
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %.loopexit
                                        #   in Loop: Header=BB7_10 Depth=1
	move	$t4, $t2
	beq	$a2, $a3, .LBB7_19
.LBB7_10:                               # %.lr.ph56
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_18 Depth 2
	addi.d	$a2, $a2, 1
	slli.d	$t2, $a2, 2
	ldx.w	$t2, $a4, $t2
	bge	$t4, $t2, .LBB7_9
# %bb.11:                               # %.lr.ph53.preheader
                                        #   in Loop: Header=BB7_10 Depth=1
	sub.d	$t5, $t2, $t4
	bltu	$t5, $t0, .LBB7_16
# %bb.12:                               # %.lr.ph53.preheader
                                        #   in Loop: Header=BB7_10 Depth=1
	bltu	$a5, $t1, .LBB7_16
# %bb.13:                               # %vector.ph
                                        #   in Loop: Header=BB7_10 Depth=1
	move	$t6, $t5
	bstrins.d	$t6, $zero, 1, 0
	add.d	$t3, $t6, $t4
	alsl.d	$t7, $t4, $a6, 3
	alsl.d	$t4, $t4, $a7, 3
	move	$t8, $t6
	.p2align	4, , 16
.LBB7_14:                               # %vector.body
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t4, -16
	vld	$vr1, $t4, 0
	vst	$vr0, $t7, -16
	vst	$vr1, $t7, 0
	addi.d	$t8, $t8, -4
	addi.d	$t7, $t7, 32
	addi.d	$t4, $t4, 32
	bnez	$t8, .LBB7_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB7_10 Depth=1
	beq	$t5, $t6, .LBB7_9
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_16:                               #   in Loop: Header=BB7_10 Depth=1
	move	$t3, $t4
.LBB7_17:                               # %.lr.ph53.preheader70
                                        #   in Loop: Header=BB7_10 Depth=1
	alsl.d	$t4, $t3, $a0, 3
	alsl.d	$t5, $t3, $a1, 3
	sub.d	$t3, $t2, $t3
	.p2align	4, , 16
.LBB7_18:                               # %.lr.ph53
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $t4, 0
	fst.d	$fa0, $t5, 0
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, -1
	addi.d	$t5, $t5, 8
	bnez	$t3, .LBB7_18
	b	.LBB7_9
.LBB7_19:                               # %.loopexit45
	move	$a0, $zero
	ret
.Lfunc_end7:
	.size	hypre_CSRMatrixCopy, .Lfunc_end7-hypre_CSRMatrixCopy
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_CSRMatrixClone
.LCPI8_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.text
	.globl	hypre_CSRMatrixClone
	.p2align	5
	.type	hypre_CSRMatrixClone,@function
hypre_CSRMatrixClone:                   # @hypre_CSRMatrixClone
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$s3, $a0, 24
	ld.w	$s2, $a0, 28
	ld.w	$s1, $a0, 32
	ori	$a0, $zero, 1
	ori	$a1, $zero, 56
	ori	$s4, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$zero, $a0, 40
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $a0, 8
	st.w	$s3, $a0, 24
	st.w	$s2, $a0, 28
	st.w	$s1, $a0, 32
	st.w	$s4, $a0, 52
	st.w	$s3, $a0, 48
	addi.d	$s4, $s3, 1
	beqz	$s1, .LBB8_3
# %bb.1:
	ori	$a1, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	st.d	$a0, $fp, 0
	addi.d	$s2, $fp, 8
	beqz	$a1, .LBB8_4
# %bb.2:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB8_5
	b	.LBB8_7
.LBB8_3:                                # %.thread
	addi.d	$s2, $fp, 8
.LBB8_4:
	addi.w	$a0, $s4, 0
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $fp, 16
	bnez	$a0, .LBB8_7
.LBB8_5:
	beqz	$s1, .LBB8_7
# %bb.6:
	ori	$a1, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
.LBB8_7:                                # %hypre_CSRMatrixInitialize.exit
	ld.d	$a1, $s0, 16
	ld.d	$s2, $s2, 0
	vld	$vr6, $sp, 0                    # 16-byte Folded Reload
	bltz	$s3, .LBB8_15
# %bb.8:                                # %.lr.ph.preheader
	ld.d	$a2, $s0, 8
	move	$a4, $zero
	ori	$a5, $zero, 7
	bstrpick.d	$a3, $s4, 31, 0
	bltu	$s3, $a5, .LBB8_13
# %bb.9:                                # %.lr.ph.preheader
	sub.d	$a5, $s2, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB8_13
# %bb.10:                               # %vector.ph
	bstrpick.d	$a4, $a3, 31, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $s2, 16
	addi.d	$a6, $a2, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB8_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB8_11
# %bb.12:                               # %middle.block
	beq	$a4, $a3, .LBB8_15
.LBB8_13:                               # %.lr.ph.preheader75
	alsl.d	$a5, $a4, $s2, 2
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB8_14:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	st.w	$a4, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB8_14
.LBB8_15:                               # %.preheader
	ori	$a2, $zero, 1
	blt	$s1, $a2, .LBB8_23
# %bb.16:                               # %.lr.ph35.preheader
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$s1, $a3, .LBB8_21
# %bb.17:                               # %.lr.ph35.preheader
	sub.d	$a3, $a0, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB8_21
# %bb.18:                               # %vector.ph46
	bstrpick.d	$a2, $s1, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a0, 16
	addi.d	$a4, $a1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB8_19:                               # %vector.body49
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB8_19
# %bb.20:                               # %middle.block54
	beq	$a2, $s1, .LBB8_23
.LBB8_21:                               # %.lr.ph35.preheader74
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a2, $s1, $a2
	.p2align	4, , 16
.LBB8_22:                               # %.lr.ph35
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	st.w	$a3, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB8_22
.LBB8_23:                               # %._crit_edge
	ld.w	$a0, $s0, 48
	ld.d	$a1, $s0, 40
	st.w	$a0, $fp, 48
	beqz	$a1, .LBB8_41
# %bb.24:
	ld.w	$s0, $fp, 24
	blez	$s0, .LBB8_27
# %bb.25:                               # %.lr.ph.preheader.i
	ld.w	$a2, $s2, 0
	ori	$a0, $zero, 8
	bgeu	$s0, $a0, .LBB8_28
# %bb.26:
	move	$a1, $zero
	move	$a0, $zero
	b	.LBB8_32
.LBB8_27:                               # %._crit_edge.thread.i
	move	$a1, $zero
	st.w	$zero, $fp, 48
	b	.LBB8_40
.LBB8_28:                               # %vector.ph59
	bstrpick.d	$a0, $s0, 30, 3
	slli.d	$a1, $a0, 3
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI8_0)
	vinsgr2vr.w	$vr0, $a2, 0
	vreplvei.w	$vr0, $vr0, 0
	addi.d	$a0, $s2, 20
	move	$a2, $a1
	vori.b	$vr2, $vr6, 0
	.p2align	4, , 16
.LBB8_29:                               # %vector.body62
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr3, $vr0, 0
	vld	$vr4, $a0, -16
	vld	$vr0, $a0, 0
	vori.b	$vr5, $vr1, 0
	vshuf.w	$vr5, $vr4, $vr3
	vori.b	$vr3, $vr1, 0
	vshuf.w	$vr3, $vr0, $vr4
	vslt.w	$vr4, $vr5, $vr4
	vslt.w	$vr3, $vr3, $vr0
	vsub.w	$vr6, $vr6, $vr4
	vsub.w	$vr2, $vr2, $vr3
	addi.d	$a2, $a2, -8
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB8_29
# %bb.30:                               # %middle.block68
	vadd.w	$vr1, $vr2, $vr6
	vreplvei.d	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a0, $vr1, 0
	beq	$a1, $s0, .LBB8_34
# %bb.31:
	vpickve2gr.w	$a2, $vr0, 3
.LBB8_32:                               # %.lr.ph.i.preheader
	sub.d	$a3, $s0, $a1
	alsl.d	$a1, $a1, $s2, 2
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB8_33:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	slt	$a2, $a2, $a4
	add.w	$a0, $a0, $a2
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	move	$a2, $a4
	bnez	$a3, .LBB8_33
.LBB8_34:                               # %._crit_edge.i
	move	$a1, $zero
	st.w	$a0, $fp, 48
	beqz	$a0, .LBB8_40
# %bb.35:                               # %._crit_edge.i
	beq	$a0, $s0, .LBB8_40
# %bb.36:                               # %.lr.ph39.preheader.i
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	move	$a3, $zero
	addi.d	$a2, $s2, 4
	b	.LBB8_38
	.p2align	4, , 16
.LBB8_37:                               #   in Loop: Header=BB8_38 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$s0, $s0, -1
	addi.d	$a2, $a2, 4
	beqz	$s0, .LBB8_40
.LBB8_38:                               # %.lr.ph39.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a2, -4
	bge	$a5, $a4, .LBB8_37
# %bb.39:                               #   in Loop: Header=BB8_38 Depth=1
	slli.d	$a4, $a3, 2
	addi.w	$a3, $a3, 1
	stx.w	$a0, $a1, $a4
	b	.LBB8_37
.LBB8_40:                               # %hypre_CSRMatrixSetRownnz.exit
	st.d	$a1, $fp, 40
.LBB8_41:
	move	$a0, $fp
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end8:
	.size	hypre_CSRMatrixClone, .Lfunc_end8-hypre_CSRMatrixClone
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_CSRMatrixUnion
.LCPI9_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	hypre_CSRMatrixUnion
	.p2align	5
	.type	hypre_CSRMatrixUnion,@function
hypre_CSRMatrixUnion:                   # @hypre_CSRMatrixUnion
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $a0
	ld.w	$t5, $a0, 24
	ld.w	$s2, $a0, 28
	ld.w	$s4, $a1, 28
	ld.d	$s7, $a0, 8
	ld.d	$s8, $a0, 16
	ld.d	$s5, $a1, 8
	ld.d	$s3, $a1, 16
	move	$fp, $a3
	move	$s0, $a2
	st.d	$t5, $sp, 24                    # 8-byte Folded Spill
	beqz	$a2, .LBB9_35
# %bb.1:
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $zero, 4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $a0
	move	$a0, $s2
	blt	$s4, $a1, .LBB9_14
# %bb.2:                                # %.lr.ph220
	blez	$s2, .LBB9_36
# %bb.3:                                # %.lr.ph.us.preheader
	move	$t3, $zero
	bstrpick.d	$a1, $s2, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $s0, 16
	ori	$a3, $zero, 8
	ori	$a4, $zero, 1
	vrepli.b	$vr0, 0
	move	$a0, $s2
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_4:                                #   in Loop: Header=BB9_5 Depth=1
	addi.d	$t3, $t3, 1
	beq	$t3, $s4, .LBB9_14
.LBB9_5:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_8 Depth 2
                                        #     Child Loop BB9_11 Depth 2
	slli.d	$a5, $t3, 2
	ldx.w	$a6, $fp, $a5
	bgeu	$s2, $a3, .LBB9_7
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=1
	move	$t1, $zero
	move	$a7, $zero
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_7:                                # %vector.ph388
                                        #   in Loop: Header=BB9_5 Depth=1
	vreplgr2vr.w	$vr1, $a6
	move	$a7, $a2
	move	$t0, $a1
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB9_8:                                # %vector.body391
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr4, $a7, -16
	vld	$vr5, $a7, 0
	vseq.w	$vr4, $vr4, $vr1
	vseq.w	$vr5, $vr5, $vr1
	vor.v	$vr2, $vr2, $vr4
	vor.v	$vr3, $vr3, $vr5
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB9_8
# %bb.9:                                # %middle.block396
                                        #   in Loop: Header=BB9_5 Depth=1
	vor.v	$vr1, $vr3, $vr2
	vpickve2gr.w	$a7, $vr1, 0
	vpickve2gr.w	$t0, $vr1, 1
	andi	$t0, $t0, 1
	bstrins.d	$a7, $t0, 63, 1
	vpickve2gr.w	$t0, $vr1, 2
	bstrins.d	$a7, $t0, 2, 2
	vpickve2gr.w	$t0, $vr1, 3
	slli.d	$t0, $t0, 3
	or	$a7, $a7, $t0
	andi	$a7, $a7, 15
	sltu	$a7, $zero, $a7
	move	$t1, $a1
	beq	$a1, $s2, .LBB9_12
.LBB9_10:                               # %scalar.ph386.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	alsl.d	$t0, $t1, $s0, 2
	sub.d	$t1, $s2, $t1
	.p2align	4, , 16
.LBB9_11:                               # %scalar.ph386
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	xor	$t2, $t2, $a6
	sltui	$t2, $t2, 1
	masknez	$a7, $a7, $t2
	maskeqz	$t2, $a4, $t2
	or	$a7, $t2, $a7
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	bnez	$t1, .LBB9_11
.LBB9_12:                               # %._crit_edge.us
                                        #   in Loop: Header=BB9_5 Depth=1
	bnez	$a7, .LBB9_4
# %bb.13:                               #   in Loop: Header=BB9_5 Depth=1
	stx.w	$a0, $s1, $a5
	addi.w	$a0, $a0, 1
	b	.LBB9_4
.LBB9_14:                               # %._crit_edge221
	st.d	$s6, $sp, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s6, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	blt	$s2, $s6, .LBB9_22
# %bb.15:                               # %.lr.ph.preheader
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s2, $a2, .LBB9_20
# %bb.16:                               # %.lr.ph.preheader
	sub.d	$a2, $a0, $s0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB9_20
# %bb.17:                               # %vector.ph401
	bstrpick.d	$a1, $s2, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a0, 16
	addi.d	$a3, $s0, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB9_18:                               # %vector.body404
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB9_18
# %bb.19:                               # %middle.block409
	beq	$a1, $s2, .LBB9_22
.LBB9_20:                               # %.lr.ph.preheader461
	alsl.d	$a2, $a1, $a0, 2
	alsl.d	$a3, $a1, $s0, 2
	sub.d	$a1, $s2, $a1
	.p2align	4, , 16
.LBB9_21:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB9_21
.LBB9_22:                               # %.preheader
	ori	$a1, $zero, 1
	ld.d	$s6, $sp, 0                     # 8-byte Folded Reload
	blt	$s4, $a1, .LBB9_46
# %bb.23:                               # %.lr.ph228
	blez	$s2, .LBB9_44
# %bb.24:                               # %.lr.ph226.us.preheader
	move	$a1, $zero
	vrepli.b	$vr0, 0
	bstrpick.d	$a2, $s2, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $s0, 16
	ori	$a4, $zero, 8
	ori	$a5, $zero, 1
	b	.LBB9_26
	.p2align	4, , 16
.LBB9_25:                               #   in Loop: Header=BB9_26 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB9_46
.LBB9_26:                               # %.lr.ph226.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_29 Depth 2
                                        #     Child Loop BB9_32 Depth 2
	slli.d	$a7, $a1, 2
	ldx.w	$a6, $fp, $a7
	bgeu	$s2, $a4, .LBB9_28
# %bb.27:                               #   in Loop: Header=BB9_26 Depth=1
	move	$t2, $zero
	move	$t0, $zero
	b	.LBB9_31
	.p2align	4, , 16
.LBB9_28:                               # %vector.ph414
                                        #   in Loop: Header=BB9_26 Depth=1
	vreplgr2vr.w	$vr1, $a6
	move	$t0, $a3
	move	$t1, $a2
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB9_29:                               # %vector.body419
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr4, $t0, -16
	vld	$vr5, $t0, 0
	vseq.w	$vr4, $vr4, $vr1
	vseq.w	$vr5, $vr5, $vr1
	vor.v	$vr2, $vr2, $vr4
	vor.v	$vr3, $vr3, $vr5
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB9_29
# %bb.30:                               # %middle.block426
                                        #   in Loop: Header=BB9_26 Depth=1
	vor.v	$vr1, $vr3, $vr2
	vpickve2gr.w	$t0, $vr1, 0
	vpickve2gr.w	$t1, $vr1, 1
	andi	$t1, $t1, 1
	bstrins.d	$t0, $t1, 63, 1
	vpickve2gr.w	$t1, $vr1, 2
	bstrins.d	$t0, $t1, 2, 2
	vpickve2gr.w	$t1, $vr1, 3
	slli.d	$t1, $t1, 3
	or	$t0, $t0, $t1
	andi	$t0, $t0, 15
	sltu	$t0, $zero, $t0
	move	$t2, $a2
	beq	$a2, $s2, .LBB9_33
.LBB9_31:                               # %scalar.ph412.preheader
                                        #   in Loop: Header=BB9_26 Depth=1
	alsl.d	$t1, $t2, $s0, 2
	sub.d	$t2, $s2, $t2
	.p2align	4, , 16
.LBB9_32:                               # %scalar.ph412
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 0
	xor	$t3, $t3, $a6
	sltui	$t3, $t3, 1
	masknez	$t0, $t0, $t3
	maskeqz	$t3, $a5, $t3
	or	$t0, $t3, $t0
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	bnez	$t2, .LBB9_32
.LBB9_33:                               # %._crit_edge.us229
                                        #   in Loop: Header=BB9_26 Depth=1
	bnez	$t0, .LBB9_25
# %bb.34:                               #   in Loop: Header=BB9_26 Depth=1
	ldx.w	$a7, $s1, $a7
	slli.d	$a7, $a7, 2
	stx.w	$a6, $a0, $a7
	b	.LBB9_25
.LBB9_35:                               # %.thread
	move	$s1, $zero
	slt	$a0, $s4, $s2
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB9_46
.LBB9_36:                               # %.lr.ph220.split.preheader
	ori	$a0, $zero, 8
	bgeu	$s4, $a0, .LBB9_38
# %bb.37:
	move	$a3, $zero
	move	$a0, $s2
	b	.LBB9_41
.LBB9_38:                               # %vector.ph
	bstrpick.d	$a1, $s4, 30, 3
	pcalau12i	$a0, %pc_hi20(.LCPI9_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI9_0)
	slli.d	$a3, $a1, 3
	alsl.w	$a0, $a1, $s2, 3
	vreplgr2vr.w	$vr1, $s2
	vadd.w	$vr0, $vr1, $vr0
	addi.d	$a1, $s1, 16
	move	$a2, $a3
	.p2align	4, , 16
.LBB9_39:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB9_39
# %bb.40:                               # %middle.block
	beq	$a3, $s4, .LBB9_43
.LBB9_41:                               # %.lr.ph220.split.preheader465
	alsl.d	$a1, $a3, $s1, 2
	sub.d	$a2, $s4, $a3
	.p2align	4, , 16
.LBB9_42:                               # %.lr.ph220.split
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a1, 0
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB9_42
.LBB9_43:                               # %.preheader.thread
	ori	$a1, $zero, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
.LBB9_44:                               # %.lr.ph228.split.preheader
	move	$a1, $zero
	.p2align	4, , 16
.LBB9_45:                               # %.lr.ph228.split
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $s1, $a1
	ldx.w	$a3, $fp, $a1
	slli.d	$a2, $a2, 2
	stx.w	$a3, $a0, $a2
	addi.d	$s4, $s4, -1
	addi.d	$a1, $a1, 4
	bnez	$s4, .LBB9_45
.LBB9_46:                               # %.loopexit210
	ld.w	$s4, $s6, 32
	ori	$s2, $zero, 1
	blt	$t5, $s2, .LBB9_69
# %bb.47:                               # %.lr.ph257
	ld.w	$a1, $s5, 0
	move	$a2, $zero
	addi.d	$a0, $s8, 4
	b	.LBB9_49
	.p2align	4, , 16
.LBB9_48:                               # %.loopexit209
                                        #   in Loop: Header=BB9_49 Depth=1
	move	$a1, $a3
	beq	$a2, $t5, .LBB9_69
.LBB9_49:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_53 Depth 2
                                        #       Child Loop BB9_58 Depth 3
                                        #     Child Loop BB9_62 Depth 2
                                        #       Child Loop BB9_67 Depth 3
	move	$a5, $a2
	addi.d	$a2, $a2, 1
	slli.d	$a4, $a2, 2
	ldx.w	$a3, $s5, $a4
	bge	$a1, $a3, .LBB9_48
# %bb.50:                               # %.lr.ph252
                                        #   in Loop: Header=BB9_49 Depth=1
	ldx.w	$a4, $s7, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s7, $a5
	addi.w	$a6, $a4, -1
	bnez	$s0, .LBB9_53
	b	.LBB9_62
	.p2align	4, , 16
.LBB9_51:                               # %.split
                                        #   in Loop: Header=BB9_53 Depth=2
	move	$a7, $zero
	xor	$t0, $t1, $a5
	sltui	$t0, $t0, 1
	add.w	$a5, $a5, $t0
.LBB9_52:                               # %.loopexit
                                        #   in Loop: Header=BB9_53 Depth=2
	addi.d	$a1, $a1, 1
	add.w	$s4, $a7, $s4
	beq	$a1, $a3, .LBB9_48
.LBB9_53:                               # %.lr.ph252.split
                                        #   Parent Loop BB9_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_58 Depth 3
	slli.d	$a7, $a1, 2
	ldx.w	$t0, $s3, $a7
	beqz	$fp, .LBB9_55
# %bb.54:                               #   in Loop: Header=BB9_53 Depth=2
	slli.d	$a7, $t0, 2
	ldx.w	$t0, $fp, $a7
.LBB9_55:                               #   in Loop: Header=BB9_53 Depth=2
	ori	$a7, $zero, 1
	bge	$a5, $a4, .LBB9_52
# %bb.56:                               # %.lr.ph234
                                        #   in Loop: Header=BB9_53 Depth=2
	slli.d	$t1, $a5, 2
	ldx.w	$t1, $s8, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$t2, $s0, $t1
	move	$t1, $a5
	beq	$t0, $t2, .LBB9_51
# %bb.57:                               # %.lr.ph240.preheader
                                        #   in Loop: Header=BB9_53 Depth=2
	sub.d	$t2, $a6, $a5
	alsl.d	$t3, $a5, $a0, 2
	move	$t1, $a5
	.p2align	4, , 16
.LBB9_58:                               # %.lr.ph240
                                        #   Parent Loop BB9_49 Depth=1
                                        #     Parent Loop BB9_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$t2, .LBB9_52
# %bb.59:                               #   in Loop: Header=BB9_58 Depth=3
	ld.w	$t4, $t3, 0
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s0, $t4
	addi.d	$t2, $t2, -1
	addi.w	$t1, $t1, 1
	addi.d	$t3, $t3, 4
	bne	$t0, $t4, .LBB9_58
	b	.LBB9_51
	.p2align	4, , 16
.LBB9_60:                               # %.split.us.us
                                        #   in Loop: Header=BB9_62 Depth=2
	move	$a7, $zero
	xor	$t0, $t1, $a5
	sltui	$t0, $t0, 1
	add.w	$a5, $a5, $t0
.LBB9_61:                               # %.loopexit.us
                                        #   in Loop: Header=BB9_62 Depth=2
	addi.d	$a1, $a1, 1
	add.w	$s4, $a7, $s4
	beq	$a1, $a3, .LBB9_48
.LBB9_62:                               # %.lr.ph252.split.us
                                        #   Parent Loop BB9_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_67 Depth 3
	slli.d	$a7, $a1, 2
	ldx.w	$t0, $s3, $a7
	beqz	$fp, .LBB9_64
# %bb.63:                               #   in Loop: Header=BB9_62 Depth=2
	slli.d	$a7, $t0, 2
	ldx.w	$t0, $fp, $a7
.LBB9_64:                               #   in Loop: Header=BB9_62 Depth=2
	ori	$a7, $zero, 1
	bge	$a5, $a4, .LBB9_61
# %bb.65:                               # %.lr.ph234.us
                                        #   in Loop: Header=BB9_62 Depth=2
	slli.d	$t1, $a5, 2
	ldx.w	$t2, $s8, $t1
	move	$t1, $a5
	beq	$t0, $t2, .LBB9_60
# %bb.66:                               # %.lr.ph244.us.preheader
                                        #   in Loop: Header=BB9_62 Depth=2
	sub.d	$t2, $a6, $a5
	alsl.d	$t3, $a5, $a0, 2
	move	$t1, $a5
	beqz	$t2, .LBB9_61
	.p2align	4, , 16
.LBB9_67:                               #   Parent Loop BB9_49 Depth=1
                                        #     Parent Loop BB9_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t4, $t3, 0
	addi.d	$t2, $t2, -1
	addi.w	$t1, $t1, 1
	addi.d	$t3, $t3, 4
	beq	$t0, $t4, .LBB9_60
# %bb.68:                               # %.lr.ph244.us
                                        #   in Loop: Header=BB9_67 Depth=3
	bnez	$t2, .LBB9_67
	b	.LBB9_61
.LBB9_69:                               # %._crit_edge
	ori	$a0, $zero, 1
	ori	$a1, $zero, 56
	move	$s6, $t5
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$zero, $a0, 40
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	st.w	$s6, $a0, 24
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a1, 28
	st.w	$s4, $a1, 32
	st.w	$s2, $a1, 52
	st.w	$s6, $a1, 48
	move	$s6, $a1
	beqz	$s4, .LBB9_72
# %bb.70:
	ori	$a1, $zero, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 8
	st.d	$a0, $s6, 0
	addi.d	$s2, $s6, 8
	beqz	$a1, .LBB9_73
# %bb.71:
	ld.d	$a0, $s6, 16
	beqz	$a0, .LBB9_74
	b	.LBB9_76
.LBB9_72:                               # %.thread369
	addi.d	$s2, $s6, 8
.LBB9_73:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s6, 16
	bnez	$a0, .LBB9_76
.LBB9_74:
	beqz	$s4, .LBB9_76
# %bb.75:
	ori	$a1, $zero, 4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 16
.LBB9_76:                               # %hypre_CSRMatrixInitialize.exit
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $s2, 0
	ori	$a2, $zero, 1
	st.w	$zero, $a1, 0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	blt	$s6, $a2, .LBB9_100
# %bb.77:                               # %.lr.ph282
	move	$a2, $zero
	move	$a4, $zero
	addi.d	$a3, $a0, 16
	addi.d	$a5, $s8, 16
	ori	$a6, $zero, 8
	ori	$a7, $zero, 32
	b	.LBB9_79
	.p2align	4, , 16
.LBB9_78:                               # %._crit_edge278
                                        #   in Loop: Header=BB9_79 Depth=1
	stx.w	$a4, $a1, $t0
	beq	$a2, $s6, .LBB9_100
.LBB9_79:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_98 Depth 2
                                        #     Child Loop BB9_84 Depth 2
                                        #     Child Loop BB9_88 Depth 2
                                        #       Child Loop BB9_92 Depth 3
                                        #       Child Loop BB9_94 Depth 3
	slli.d	$t3, $a2, 2
	ldx.w	$t1, $s7, $t3
	addi.d	$a2, $a2, 1
	slli.d	$t0, $a2, 2
	ldx.w	$t2, $s7, $t0
	bge	$t1, $t2, .LBB9_85
# %bb.80:                               # %.lr.ph262.preheader
                                        #   in Loop: Header=BB9_79 Depth=1
	sub.d	$t5, $t2, $t1
	addi.w	$a4, $a4, 0
	bltu	$t5, $a6, .LBB9_82
# %bb.81:                               # %vector.memcheck432
                                        #   in Loop: Header=BB9_79 Depth=1
	alsl.d	$t4, $a4, $a0, 2
	alsl.d	$t6, $t1, $s8, 2
	sub.d	$t4, $t4, $t6
	bgeu	$t4, $a7, .LBB9_97
.LBB9_82:                               #   in Loop: Header=BB9_79 Depth=1
	move	$t4, $t1
.LBB9_83:                               # %.lr.ph262.preheader452
                                        #   in Loop: Header=BB9_79 Depth=1
	alsl.d	$t5, $t4, $s8, 2
	sub.d	$t6, $t2, $t4
	alsl.d	$t7, $a4, $a0, 2
	add.d	$a4, $a4, $t2
	sub.d	$a4, $a4, $t4
	.p2align	4, , 16
.LBB9_84:                               # %.lr.ph262
                                        #   Parent Loop BB9_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t5, 0
	st.w	$t4, $t7, 0
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, -1
	addi.d	$t7, $t7, 4
	bnez	$t6, .LBB9_84
.LBB9_85:                               # %._crit_edge263
                                        #   in Loop: Header=BB9_79 Depth=1
	ldx.w	$t3, $s5, $t3
	ldx.w	$t5, $s5, $t0
	bge	$t3, $t5, .LBB9_78
# %bb.86:                               # %.lr.ph277.preheader
                                        #   in Loop: Header=BB9_79 Depth=1
	alsl.d	$t4, $a2, $s5, 2
	b	.LBB9_88
	.p2align	4, , 16
.LBB9_87:                               # %._crit_edge269
                                        #   in Loop: Header=BB9_88 Depth=2
	slli.d	$t5, $t6, 2
	ldx.w	$t5, $s1, $t5
	addi.w	$t6, $a4, 0
	slli.d	$t6, $t6, 2
	stx.w	$t5, $a0, $t6
	ld.w	$t5, $t4, 0
	addi.d	$a4, $a4, 1
	addi.d	$t3, $t3, 1
	bge	$t3, $t5, .LBB9_78
.LBB9_88:                               # %.lr.ph277
                                        #   Parent Loop BB9_79 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_92 Depth 3
                                        #       Child Loop BB9_94 Depth 3
	slli.d	$t6, $t3, 2
	ldx.w	$t6, $s3, $t6
	move	$t7, $t6
	beqz	$fp, .LBB9_90
# %bb.89:                               #   in Loop: Header=BB9_88 Depth=2
	slli.d	$t7, $t6, 2
	ldx.w	$t7, $fp, $t7
.LBB9_90:                               #   in Loop: Header=BB9_88 Depth=2
	bge	$t1, $t2, .LBB9_87
# %bb.91:                               # %.lr.ph268
                                        #   in Loop: Header=BB9_88 Depth=2
	alsl.d	$s2, $t1, $s8, 2
	move	$t8, $t1
	beqz	$s0, .LBB9_94
	.p2align	4, , 16
.LBB9_92:                               # %.lr.ph268.split
                                        #   Parent Loop BB9_79 Depth=1
                                        #     Parent Loop BB9_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s4, $s2, 0
	slli.d	$s4, $s4, 2
	ldx.w	$s4, $s0, $s4
	beq	$t7, $s4, .LBB9_96
# %bb.93:                               #   in Loop: Header=BB9_92 Depth=3
	addi.d	$t8, $t8, 1
	addi.d	$s2, $s2, 4
	bne	$t2, $t8, .LBB9_92
	b	.LBB9_87
	.p2align	4, , 16
.LBB9_94:                               # %.lr.ph268.split.us
                                        #   Parent Loop BB9_79 Depth=1
                                        #     Parent Loop BB9_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s4, $s2, 0
	beq	$t7, $s4, .LBB9_96
# %bb.95:                               #   in Loop: Header=BB9_94 Depth=3
	addi.d	$t8, $t8, 1
	addi.d	$s2, $s2, 4
	bne	$t2, $t8, .LBB9_94
	b	.LBB9_87
	.p2align	4, , 16
.LBB9_96:                               # %.thread206
                                        #   in Loop: Header=BB9_88 Depth=2
	addi.w	$t6, $t8, 0
	xor	$t6, $t1, $t6
	sltui	$t6, $t6, 1
	add.w	$t1, $t1, $t6
	addi.d	$t3, $t3, 1
	blt	$t3, $t5, .LBB9_88
	b	.LBB9_78
.LBB9_97:                               # %vector.ph436
                                        #   in Loop: Header=BB9_79 Depth=1
	slli.d	$t7, $a4, 2
	slli.d	$t8, $t1, 2
	move	$t6, $t5
	bstrins.d	$t6, $zero, 2, 0
	add.d	$t4, $t6, $t1
	add.d	$a4, $t6, $a4
	add.d	$t7, $a3, $t7
	add.d	$t8, $a5, $t8
	move	$s2, $t6
	.p2align	4, , 16
.LBB9_98:                               # %vector.body439
                                        #   Parent Loop BB9_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t8, -16
	vld	$vr1, $t8, 0
	vst	$vr0, $t7, -16
	vst	$vr1, $t7, 0
	addi.d	$t7, $t7, 32
	addi.d	$s2, $s2, -8
	addi.d	$t8, $t8, 32
	bnez	$s2, .LBB9_98
# %bb.99:                               # %middle.block445
                                        #   in Loop: Header=BB9_79 Depth=1
	beq	$t5, $t6, .LBB9_85
	b	.LBB9_83
.LBB9_100:                              # %._crit_edge283
	beqz	$s1, .LBB9_102
# %bb.101:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB9_102:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end9:
	.size	hypre_CSRMatrixUnion, .Lfunc_end9-hypre_CSRMatrixUnion
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%le"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"w"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%d\n"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%.14e\n"
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Warning: No matrix data!\n"
	.size	.L.str.6, 26

	.section	".note.GNU-stack","",@progbits
	.addrsig
