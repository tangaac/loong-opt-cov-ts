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
	.globl	hypre_CSRMatrixSetRownnz        # -- Begin function hypre_CSRMatrixSetRownnz
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
	vreplvei.w	$vr0, $vr0, 0
	vrepli.b	$vr1, 0
	addi.d	$a2, $fp, 20
	move	$a4, $a1
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB4_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a2, -16
	vbsrl.v	$vr4, $vr0, 12
	vld	$vr0, $a2, 0
	vbsll.v	$vr5, $vr3, 4
	vor.v	$vr4, $vr5, $vr4
	vbsrl.v	$vr5, $vr3, 12
	vbsll.v	$vr6, $vr0, 4
	vor.v	$vr5, $vr6, $vr5
	vslt.w	$vr3, $vr4, $vr3
	vslt.w	$vr4, $vr5, $vr0
	vsub.w	$vr1, $vr1, $vr3
	vsub.w	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB4_5
# %bb.6:                                # %middle.block
	vadd.w	$vr1, $vr2, $vr1
	vshuf4i.w	$vr2, $vr1, 14
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
	addi.d	$a6, $a1, 32
	addi.d	$a7, $a0, 32
	ori	$t0, $zero, 8
	ori	$t1, $zero, 64
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
	bstrins.d	$t6, $zero, 2, 0
	add.d	$t3, $t6, $t4
	alsl.d	$t7, $t4, $a6, 3
	alsl.d	$t4, $t4, $a7, 3
	move	$t8, $t6
	.p2align	4, , 16
.LBB7_14:                               # %vector.body
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t4, -32
	xvld	$xr1, $t4, 0
	xvst	$xr0, $t7, -32
	xvst	$xr1, $t7, 0
	addi.d	$t8, $t8, -8
	addi.d	$t7, $t7, 64
	addi.d	$t4, $t4, 64
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
	.globl	hypre_CSRMatrixClone            # -- Begin function hypre_CSRMatrixClone
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
	bltz	$s3, .LBB8_21
# %bb.8:                                # %iter.check
	ld.d	$a2, $s0, 8
	move	$a4, $zero
	ori	$a5, $zero, 3
	bstrpick.d	$a3, $s4, 31, 0
	bltu	$s3, $a5, .LBB8_19
# %bb.9:                                # %iter.check
	sub.d	$a5, $s2, $a2
	ori	$a6, $zero, 63
	bgeu	$a6, $a5, .LBB8_19
# %bb.10:                               # %vector.main.loop.iter.check
	ori	$a4, $zero, 15
	bgeu	$s3, $a4, .LBB8_12
# %bb.11:
	move	$a4, $zero
	b	.LBB8_16
.LBB8_12:                               # %vector.ph
	bstrpick.d	$a4, $a3, 31, 4
	slli.d	$a4, $a4, 4
	addi.d	$a5, $s2, 32
	addi.d	$a6, $a2, 32
	move	$a7, $a4
	.p2align	4, , 16
.LBB8_13:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB8_13
# %bb.14:                               # %middle.block
	beq	$a4, $a3, .LBB8_21
# %bb.15:                               # %vec.epilog.iter.check
	andi	$a5, $a3, 12
	beqz	$a5, .LBB8_19
.LBB8_16:                               # %vec.epilog.ph
	move	$a7, $a4
	bstrpick.d	$a4, $a3, 31, 2
	slli.d	$a4, $a4, 2
	sub.d	$a5, $a7, $a4
	alsl.d	$a6, $a7, $s2, 2
	alsl.d	$a7, $a7, $a2, 2
	.p2align	4, , 16
.LBB8_17:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, 0
	vst	$vr0, $a6, 0
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB8_17
# %bb.18:                               # %vec.epilog.middle.block
	beq	$a4, $a3, .LBB8_21
.LBB8_19:                               # %.lr.ph.preheader
	alsl.d	$a5, $a4, $s2, 2
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB8_20:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	st.w	$a4, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB8_20
.LBB8_21:                               # %.preheader
	ori	$a2, $zero, 1
	blt	$s1, $a2, .LBB8_35
# %bb.22:                               # %iter.check53
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$s1, $a3, .LBB8_33
# %bb.23:                               # %iter.check53
	sub.d	$a3, $a0, $a1
	ori	$a4, $zero, 63
	bgeu	$a4, $a3, .LBB8_33
# %bb.24:                               # %vector.main.loop.iter.check55
	ori	$a2, $zero, 16
	bgeu	$s1, $a2, .LBB8_26
# %bb.25:
	move	$a2, $zero
	b	.LBB8_30
.LBB8_26:                               # %vector.ph56
	bstrpick.d	$a2, $s1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	addi.d	$a4, $a1, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB8_27:                               # %vector.body59
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB8_27
# %bb.28:                               # %middle.block64
	beq	$a2, $s1, .LBB8_35
# %bb.29:                               # %vec.epilog.iter.check69
	andi	$a3, $s1, 12
	beqz	$a3, .LBB8_33
.LBB8_30:                               # %vec.epilog.ph68
	move	$a5, $a2
	bstrpick.d	$a2, $s1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a0, 2
	alsl.d	$a5, $a5, $a1, 2
	.p2align	4, , 16
.LBB8_31:                               # %vec.epilog.vector.body74
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB8_31
# %bb.32:                               # %vec.epilog.middle.block78
	beq	$a2, $s1, .LBB8_35
.LBB8_33:                               # %.lr.ph35.preheader
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a2, $s1, $a2
	.p2align	4, , 16
.LBB8_34:                               # %.lr.ph35
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	st.w	$a3, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB8_34
.LBB8_35:                               # %._crit_edge
	ld.w	$a0, $s0, 48
	ld.d	$a1, $s0, 40
	st.w	$a0, $fp, 48
	beqz	$a1, .LBB8_53
# %bb.36:
	ld.w	$s0, $fp, 24
	blez	$s0, .LBB8_39
# %bb.37:                               # %.lr.ph.preheader.i
	ld.w	$a2, $s2, 0
	ori	$a0, $zero, 8
	bgeu	$s0, $a0, .LBB8_40
# %bb.38:
	move	$a1, $zero
	move	$a0, $zero
	b	.LBB8_44
.LBB8_39:                               # %._crit_edge.thread.i
	move	$a1, $zero
	st.w	$zero, $fp, 48
	b	.LBB8_52
.LBB8_40:                               # %vector.ph82
	bstrpick.d	$a0, $s0, 30, 3
	slli.d	$a1, $a0, 3
	vinsgr2vr.w	$vr0, $a2, 0
	vreplvei.w	$vr0, $vr0, 0
	addi.d	$a0, $s2, 20
	move	$a2, $a1
	vori.b	$vr1, $vr6, 0
	.p2align	4, , 16
.LBB8_41:                               # %vector.body85
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a0, -16
	vbsrl.v	$vr3, $vr0, 12
	vld	$vr0, $a0, 0
	vbsll.v	$vr4, $vr2, 4
	vor.v	$vr3, $vr4, $vr3
	vbsrl.v	$vr4, $vr2, 12
	vbsll.v	$vr5, $vr0, 4
	vor.v	$vr4, $vr5, $vr4
	vslt.w	$vr2, $vr3, $vr2
	vslt.w	$vr3, $vr4, $vr0
	vsub.w	$vr6, $vr6, $vr2
	vsub.w	$vr1, $vr1, $vr3
	addi.d	$a2, $a2, -8
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB8_41
# %bb.42:                               # %middle.block91
	vadd.w	$vr1, $vr1, $vr6
	vshuf4i.w	$vr2, $vr1, 14
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a0, $vr1, 0
	beq	$a1, $s0, .LBB8_46
# %bb.43:
	vpickve2gr.w	$a2, $vr0, 3
.LBB8_44:                               # %.lr.ph.i.preheader
	sub.d	$a3, $s0, $a1
	alsl.d	$a1, $a1, $s2, 2
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB8_45:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	slt	$a2, $a2, $a4
	add.w	$a0, $a0, $a2
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	move	$a2, $a4
	bnez	$a3, .LBB8_45
.LBB8_46:                               # %._crit_edge.i
	move	$a1, $zero
	st.w	$a0, $fp, 48
	beqz	$a0, .LBB8_52
# %bb.47:                               # %._crit_edge.i
	beq	$a0, $s0, .LBB8_52
# %bb.48:                               # %.lr.ph39.preheader.i
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	move	$a3, $zero
	addi.d	$a2, $s2, 4
	b	.LBB8_50
	.p2align	4, , 16
.LBB8_49:                               #   in Loop: Header=BB8_50 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$s0, $s0, -1
	addi.d	$a2, $a2, 4
	beqz	$s0, .LBB8_52
.LBB8_50:                               # %.lr.ph39.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a2, -4
	bge	$a5, $a4, .LBB8_49
# %bb.51:                               #   in Loop: Header=BB8_50 Depth=1
	slli.d	$a4, $a3, 2
	addi.w	$a3, $a3, 1
	stx.w	$a0, $a1, $a4
	b	.LBB8_49
.LBB8_52:                               # %hypre_CSRMatrixSetRownnz.exit
	st.d	$a1, $fp, 40
.LBB8_53:
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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function hypre_CSRMatrixUnion
.LCPI9_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	hypre_CSRMatrixUnion
	.p2align	5
	.type	hypre_CSRMatrixUnion,@function
hypre_CSRMatrixUnion:                   # @hypre_CSRMatrixUnion
# %bb.0:
	addi.d	$sp, $sp, -112
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
	move	$ra, $a0
	ld.w	$t8, $a0, 24
	ld.w	$s2, $a0, 28
	ld.w	$s4, $a1, 28
	ld.d	$s7, $a0, 8
	ld.d	$s8, $a0, 16
	ld.d	$s5, $a1, 8
	ld.d	$s6, $a1, 16
	move	$fp, $a3
	move	$s0, $a2
	st.d	$t8, $sp, 16                    # 8-byte Folded Spill
	beqz	$a2, .LBB9_25
# %bb.1:
	st.d	$a4, $sp, 0                     # 8-byte Folded Spill
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $zero, 4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $a0
	move	$s3, $s2
	blt	$s4, $a1, .LBB9_20
# %bb.2:                                # %.lr.ph220
	blez	$s2, .LBB9_26
# %bb.3:                                # %.lr.ph.us.preheader
	move	$a0, $zero
	bstrpick.d	$a1, $s2, 30, 4
	slli.d	$a1, $a1, 4
	andi	$a2, $s2, 12
	bstrpick.d	$a3, $s2, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s0, 32
	sub.d	$a5, $zero, $a3
	ori	$a6, $zero, 3
	ori	$a7, $zero, 1
	ori	$t0, $zero, 16
	vrepli.b	$vr0, 0
	move	$s3, $s2
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_4:                                #   in Loop: Header=BB9_5 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s4, .LBB9_20
.LBB9_5:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_10 Depth 2
                                        #     Child Loop BB9_14 Depth 2
                                        #     Child Loop BB9_17 Depth 2
	slli.d	$t1, $a0, 2
	ldx.w	$t2, $fp, $t1
	bltu	$a6, $s2, .LBB9_7
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=1
	move	$t5, $zero
	move	$t3, $zero
	b	.LBB9_16
	.p2align	4, , 16
.LBB9_7:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB9_5 Depth=1
	bgeu	$s2, $t0, .LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_5 Depth=1
	move	$t4, $zero
	move	$t3, $zero
	b	.LBB9_13
	.p2align	4, , 16
.LBB9_9:                                # %vector.ph390
                                        #   in Loop: Header=BB9_5 Depth=1
	xvreplgr2vr.w	$xr1, $t2
	move	$t3, $a4
	move	$t4, $a1
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB9_10:                               # %vector.body393
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr4, $t3, -32
	xvld	$xr5, $t3, 0
	xvseq.w	$xr4, $xr4, $xr1
	xvpickve2gr.w	$t5, $xr4, 0
	vinsgr2vr.h	$vr6, $t5, 0
	xvpickve2gr.w	$t5, $xr4, 1
	vinsgr2vr.h	$vr6, $t5, 1
	xvpickve2gr.w	$t5, $xr4, 2
	vinsgr2vr.h	$vr6, $t5, 2
	xvpickve2gr.w	$t5, $xr4, 3
	vinsgr2vr.h	$vr6, $t5, 3
	xvpickve2gr.w	$t5, $xr4, 4
	vinsgr2vr.h	$vr6, $t5, 4
	xvpickve2gr.w	$t5, $xr4, 5
	vinsgr2vr.h	$vr6, $t5, 5
	xvpickve2gr.w	$t5, $xr4, 6
	vinsgr2vr.h	$vr6, $t5, 6
	xvpickve2gr.w	$t5, $xr4, 7
	vinsgr2vr.h	$vr6, $t5, 7
	xvseq.w	$xr4, $xr5, $xr1
	xvpickve2gr.w	$t5, $xr4, 0
	vinsgr2vr.h	$vr5, $t5, 0
	xvpickve2gr.w	$t5, $xr4, 1
	vinsgr2vr.h	$vr5, $t5, 1
	xvpickve2gr.w	$t5, $xr4, 2
	vinsgr2vr.h	$vr5, $t5, 2
	xvpickve2gr.w	$t5, $xr4, 3
	vinsgr2vr.h	$vr5, $t5, 3
	xvpickve2gr.w	$t5, $xr4, 4
	vinsgr2vr.h	$vr5, $t5, 4
	xvpickve2gr.w	$t5, $xr4, 5
	vinsgr2vr.h	$vr5, $t5, 5
	xvpickve2gr.w	$t5, $xr4, 6
	vinsgr2vr.h	$vr5, $t5, 6
	xvpickve2gr.w	$t5, $xr4, 7
	vinsgr2vr.h	$vr5, $t5, 7
	vor.v	$vr2, $vr2, $vr6
	vor.v	$vr3, $vr3, $vr5
	addi.d	$t4, $t4, -16
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB9_10
# %bb.11:                               # %middle.block398
                                        #   in Loop: Header=BB9_5 Depth=1
	vor.v	$vr1, $vr3, $vr2
	vslli.h	$vr1, $vr1, 15
	vsrai.h	$vr1, $vr1, 15
	vmskltz.h	$vr1, $vr1
	vpickve2gr.hu	$t3, $vr1, 0
	andi	$t3, $t3, 255
	sltu	$t3, $zero, $t3
	beq	$a1, $s2, .LBB9_18
# %bb.12:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB9_5 Depth=1
	move	$t5, $a1
	move	$t4, $a1
	beqz	$a2, .LBB9_16
.LBB9_13:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB9_5 Depth=1
	vreplgr2vr.w	$vr2, $t2
	vreplgr2vr.w	$vr1, $t3
	add.d	$t3, $a5, $t4
	alsl.d	$t4, $t4, $s0, 2
	.p2align	4, , 16
.LBB9_14:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t4, 0
	vseq.w	$vr3, $vr3, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	bnez	$t3, .LBB9_14
# %bb.15:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB9_5 Depth=1
	vslli.w	$vr1, $vr1, 31
	vsrai.w	$vr1, $vr1, 31
	vmskltz.w	$vr1, $vr1
	vpickve2gr.hu	$t3, $vr1, 0
	andi	$t3, $t3, 15
	sltu	$t3, $zero, $t3
	move	$t5, $a3
	beq	$a3, $s2, .LBB9_18
.LBB9_16:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	alsl.d	$t4, $t5, $s0, 2
	sub.d	$t5, $s2, $t5
	.p2align	4, , 16
.LBB9_17:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t4, 0
	xor	$t6, $t6, $t2
	sltui	$t6, $t6, 1
	masknez	$t3, $t3, $t6
	maskeqz	$t6, $a7, $t6
	or	$t3, $t6, $t3
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 4
	bnez	$t5, .LBB9_17
.LBB9_18:                               # %._crit_edge.us
                                        #   in Loop: Header=BB9_5 Depth=1
	bnez	$t3, .LBB9_4
# %bb.19:                               #   in Loop: Header=BB9_5 Depth=1
	stx.w	$s3, $s1, $t1
	addi.w	$s3, $s3, 1
	b	.LBB9_4
.LBB9_20:                               # %._crit_edge221
	ori	$a1, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB9_37
# %bb.21:                               # %iter.check417
	move	$a1, $zero
	ori	$a2, $zero, 4
	bltu	$s2, $a2, .LBB9_35
# %bb.22:                               # %iter.check417
	sub.d	$a2, $a0, $s0
	ori	$a3, $zero, 63
	bgeu	$a3, $a2, .LBB9_35
# %bb.23:                               # %vector.main.loop.iter.check419
	ori	$a1, $zero, 16
	bgeu	$s2, $a1, .LBB9_28
# %bb.24:
	move	$a1, $zero
	b	.LBB9_32
.LBB9_25:                               # %.thread
	move	$s1, $zero
	slt	$a0, $s4, $s2
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s2, $a0
	or	$s3, $a0, $a1
	b	.LBB9_64
.LBB9_26:                               # %.lr.ph220.split.preheader
	ori	$a0, $zero, 16
	bgeu	$s4, $a0, .LBB9_56
# %bb.27:
	move	$a0, $zero
	move	$s3, $s2
	b	.LBB9_59
.LBB9_28:                               # %vector.ph420
	bstrpick.d	$a1, $s2, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $a0, 32
	addi.d	$a3, $s0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB9_29:                               # %vector.body423
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB9_29
# %bb.30:                               # %middle.block428
	beq	$a1, $s2, .LBB9_37
# %bb.31:                               # %vec.epilog.iter.check433
	andi	$a2, $s2, 12
	beqz	$a2, .LBB9_35
.LBB9_32:                               # %vec.epilog.ph432
	move	$a4, $a1
	bstrpick.d	$a1, $s2, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $a0, 2
	alsl.d	$a4, $a4, $s0, 2
	.p2align	4, , 16
.LBB9_33:                               # %vec.epilog.vector.body438
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB9_33
# %bb.34:                               # %vec.epilog.middle.block442
	beq	$a1, $s2, .LBB9_37
.LBB9_35:                               # %.lr.ph.preheader
	alsl.d	$a2, $a1, $a0, 2
	alsl.d	$a3, $a1, $s0, 2
	sub.d	$a1, $s2, $a1
	.p2align	4, , 16
.LBB9_36:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB9_36
.LBB9_37:                               # %.preheader
	ori	$a1, $zero, 1
	blt	$s4, $a1, .LBB9_64
# %bb.38:                               # %.lr.ph228
	blez	$s2, .LBB9_62
# %bb.39:                               # %.lr.ph226.us.preheader
	move	$a1, $zero
	vrepli.b	$vr0, 0
	bstrpick.d	$a2, $s2, 30, 4
	slli.d	$a2, $a2, 4
	andi	$a3, $s2, 12
	bstrpick.d	$a4, $s2, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $s0, 32
	sub.d	$a6, $zero, $a4
	ori	$a7, $zero, 3
	ori	$t0, $zero, 1
	ori	$t1, $zero, 16
	b	.LBB9_41
	.p2align	4, , 16
.LBB9_40:                               #   in Loop: Header=BB9_41 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB9_64
.LBB9_41:                               # %iter.check448
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_46 Depth 2
                                        #     Child Loop BB9_50 Depth 2
                                        #     Child Loop BB9_53 Depth 2
	slli.d	$t3, $a1, 2
	ldx.w	$t2, $fp, $t3
	bltu	$a7, $s2, .LBB9_43
# %bb.42:                               #   in Loop: Header=BB9_41 Depth=1
	move	$t6, $zero
	move	$t4, $zero
	b	.LBB9_52
	.p2align	4, , 16
.LBB9_43:                               # %vector.main.loop.iter.check450
                                        #   in Loop: Header=BB9_41 Depth=1
	bgeu	$s2, $t1, .LBB9_45
# %bb.44:                               #   in Loop: Header=BB9_41 Depth=1
	move	$t5, $zero
	move	$t4, $zero
	b	.LBB9_49
	.p2align	4, , 16
.LBB9_45:                               # %vector.ph451
                                        #   in Loop: Header=BB9_41 Depth=1
	xvreplgr2vr.w	$xr1, $t2
	move	$t4, $a5
	move	$t5, $a2
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB9_46:                               # %vector.body456
                                        #   Parent Loop BB9_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr4, $t4, -32
	xvld	$xr5, $t4, 0
	xvseq.w	$xr4, $xr4, $xr1
	xvpickve2gr.w	$t6, $xr4, 0
	vinsgr2vr.h	$vr6, $t6, 0
	xvpickve2gr.w	$t6, $xr4, 1
	vinsgr2vr.h	$vr6, $t6, 1
	xvpickve2gr.w	$t6, $xr4, 2
	vinsgr2vr.h	$vr6, $t6, 2
	xvpickve2gr.w	$t6, $xr4, 3
	vinsgr2vr.h	$vr6, $t6, 3
	xvpickve2gr.w	$t6, $xr4, 4
	vinsgr2vr.h	$vr6, $t6, 4
	xvpickve2gr.w	$t6, $xr4, 5
	vinsgr2vr.h	$vr6, $t6, 5
	xvpickve2gr.w	$t6, $xr4, 6
	vinsgr2vr.h	$vr6, $t6, 6
	xvpickve2gr.w	$t6, $xr4, 7
	vinsgr2vr.h	$vr6, $t6, 7
	xvseq.w	$xr4, $xr5, $xr1
	xvpickve2gr.w	$t6, $xr4, 0
	vinsgr2vr.h	$vr5, $t6, 0
	xvpickve2gr.w	$t6, $xr4, 1
	vinsgr2vr.h	$vr5, $t6, 1
	xvpickve2gr.w	$t6, $xr4, 2
	vinsgr2vr.h	$vr5, $t6, 2
	xvpickve2gr.w	$t6, $xr4, 3
	vinsgr2vr.h	$vr5, $t6, 3
	xvpickve2gr.w	$t6, $xr4, 4
	vinsgr2vr.h	$vr5, $t6, 4
	xvpickve2gr.w	$t6, $xr4, 5
	vinsgr2vr.h	$vr5, $t6, 5
	xvpickve2gr.w	$t6, $xr4, 6
	vinsgr2vr.h	$vr5, $t6, 6
	xvpickve2gr.w	$t6, $xr4, 7
	vinsgr2vr.h	$vr5, $t6, 7
	vor.v	$vr2, $vr2, $vr6
	vor.v	$vr3, $vr3, $vr5
	addi.d	$t5, $t5, -16
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB9_46
# %bb.47:                               # %middle.block463
                                        #   in Loop: Header=BB9_41 Depth=1
	vor.v	$vr1, $vr3, $vr2
	vslli.h	$vr1, $vr1, 15
	vsrai.h	$vr1, $vr1, 15
	vmskltz.h	$vr1, $vr1
	vpickve2gr.hu	$t4, $vr1, 0
	andi	$t4, $t4, 255
	sltu	$t4, $zero, $t4
	beq	$a2, $s2, .LBB9_54
# %bb.48:                               # %vec.epilog.iter.check471
                                        #   in Loop: Header=BB9_41 Depth=1
	move	$t6, $a2
	move	$t5, $a2
	beqz	$a3, .LBB9_52
.LBB9_49:                               # %vec.epilog.ph470
                                        #   in Loop: Header=BB9_41 Depth=1
	vreplgr2vr.w	$vr2, $t2
	vreplgr2vr.w	$vr1, $t4
	add.d	$t4, $a6, $t5
	alsl.d	$t5, $t5, $s0, 2
	.p2align	4, , 16
.LBB9_50:                               # %vec.epilog.vector.body478
                                        #   Parent Loop BB9_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t5, 0
	vseq.w	$vr3, $vr3, $vr2
	vor.v	$vr1, $vr1, $vr3
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB9_50
# %bb.51:                               # %vec.epilog.middle.block485
                                        #   in Loop: Header=BB9_41 Depth=1
	vslli.w	$vr1, $vr1, 31
	vsrai.w	$vr1, $vr1, 31
	vmskltz.w	$vr1, $vr1
	vpickve2gr.hu	$t4, $vr1, 0
	andi	$t4, $t4, 15
	sltu	$t4, $zero, $t4
	move	$t6, $a4
	beq	$a4, $s2, .LBB9_54
.LBB9_52:                               # %vec.epilog.scalar.ph469.preheader
                                        #   in Loop: Header=BB9_41 Depth=1
	alsl.d	$t5, $t6, $s0, 2
	sub.d	$t6, $s2, $t6
	.p2align	4, , 16
.LBB9_53:                               # %vec.epilog.scalar.ph469
                                        #   Parent Loop BB9_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t5, 0
	xor	$t7, $t7, $t2
	sltui	$t7, $t7, 1
	masknez	$t4, $t4, $t7
	maskeqz	$t7, $t0, $t7
	or	$t4, $t7, $t4
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB9_53
.LBB9_54:                               # %._crit_edge.us229
                                        #   in Loop: Header=BB9_41 Depth=1
	bnez	$t4, .LBB9_40
# %bb.55:                               #   in Loop: Header=BB9_41 Depth=1
	ldx.w	$t3, $s1, $t3
	slli.d	$t3, $t3, 2
	stx.w	$t2, $a0, $t3
	b	.LBB9_40
.LBB9_56:                               # %vector.ph
	bstrpick.d	$a1, $s4, 30, 4
	pcalau12i	$a0, %pc_hi20(.LCPI9_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI9_0)
	slli.d	$a0, $a1, 4
	alsl.w	$s3, $a1, $s2, 4
	xvreplgr2vr.w	$xr1, $s2
	xvadd.w	$xr0, $xr1, $xr0
	addi.d	$a1, $s1, 32
	move	$a2, $a0
	.p2align	4, , 16
.LBB9_57:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.wu	$xr1, $xr0, 8
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB9_57
# %bb.58:                               # %middle.block
	beq	$a0, $s4, .LBB9_61
.LBB9_59:                               # %.lr.ph220.split.preheader526
	alsl.d	$a1, $a0, $s1, 2
	sub.d	$a0, $s4, $a0
	.p2align	4, , 16
.LBB9_60:                               # %.lr.ph220.split
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s3, $a1, 0
	addi.w	$s3, $s3, 1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB9_60
.LBB9_61:                               # %.preheader.thread
	ori	$a1, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
.LBB9_62:                               # %.lr.ph228.split.preheader
	move	$a1, $zero
	.p2align	4, , 16
.LBB9_63:                               # %.lr.ph228.split
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $s1, $a1
	ldx.w	$a3, $fp, $a1
	slli.d	$a2, $a2, 2
	stx.w	$a3, $a0, $a2
	addi.d	$s4, $s4, -1
	addi.d	$a1, $a1, 4
	bnez	$s4, .LBB9_63
.LBB9_64:                               # %.loopexit210
	ld.w	$s4, $ra, 32
	ori	$a0, $zero, 1
	blt	$t8, $a0, .LBB9_87
# %bb.65:                               # %.lr.ph257
	ld.w	$a1, $s5, 0
	move	$a2, $zero
	addi.d	$a0, $s8, 4
	b	.LBB9_67
	.p2align	4, , 16
.LBB9_66:                               # %.loopexit209
                                        #   in Loop: Header=BB9_67 Depth=1
	move	$a1, $a3
	beq	$a2, $t8, .LBB9_87
.LBB9_67:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_71 Depth 2
                                        #       Child Loop BB9_76 Depth 3
                                        #     Child Loop BB9_80 Depth 2
                                        #       Child Loop BB9_85 Depth 3
	move	$a5, $a2
	addi.d	$a2, $a2, 1
	slli.d	$a4, $a2, 2
	ldx.w	$a3, $s5, $a4
	bge	$a1, $a3, .LBB9_66
# %bb.68:                               # %.lr.ph252
                                        #   in Loop: Header=BB9_67 Depth=1
	ldx.w	$a4, $s7, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s7, $a5
	addi.w	$a6, $a4, -1
	bnez	$s0, .LBB9_71
	b	.LBB9_80
	.p2align	4, , 16
.LBB9_69:                               # %.split
                                        #   in Loop: Header=BB9_71 Depth=2
	move	$a7, $zero
	xor	$t0, $t1, $a5
	sltui	$t0, $t0, 1
	add.w	$a5, $a5, $t0
.LBB9_70:                               # %.loopexit
                                        #   in Loop: Header=BB9_71 Depth=2
	addi.d	$a1, $a1, 1
	add.w	$s4, $a7, $s4
	beq	$a1, $a3, .LBB9_66
.LBB9_71:                               # %.lr.ph252.split
                                        #   Parent Loop BB9_67 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_76 Depth 3
	slli.d	$a7, $a1, 2
	ldx.w	$t0, $s6, $a7
	beqz	$fp, .LBB9_73
# %bb.72:                               #   in Loop: Header=BB9_71 Depth=2
	slli.d	$a7, $t0, 2
	ldx.w	$t0, $fp, $a7
.LBB9_73:                               #   in Loop: Header=BB9_71 Depth=2
	ori	$a7, $zero, 1
	bge	$a5, $a4, .LBB9_70
# %bb.74:                               # %.lr.ph234
                                        #   in Loop: Header=BB9_71 Depth=2
	slli.d	$t1, $a5, 2
	ldx.w	$t1, $s8, $t1
	slli.d	$t1, $t1, 2
	ldx.w	$t2, $s0, $t1
	move	$t1, $a5
	beq	$t0, $t2, .LBB9_69
# %bb.75:                               # %.lr.ph240.preheader
                                        #   in Loop: Header=BB9_71 Depth=2
	sub.d	$t2, $a6, $a5
	alsl.d	$t3, $a5, $a0, 2
	move	$t1, $a5
	.p2align	4, , 16
.LBB9_76:                               # %.lr.ph240
                                        #   Parent Loop BB9_67 Depth=1
                                        #     Parent Loop BB9_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$t2, .LBB9_70
# %bb.77:                               #   in Loop: Header=BB9_76 Depth=3
	ld.w	$t4, $t3, 0
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s0, $t4
	addi.d	$t2, $t2, -1
	addi.w	$t1, $t1, 1
	addi.d	$t3, $t3, 4
	bne	$t0, $t4, .LBB9_76
	b	.LBB9_69
	.p2align	4, , 16
.LBB9_78:                               # %.split.us.us
                                        #   in Loop: Header=BB9_80 Depth=2
	move	$a7, $zero
	xor	$t0, $t1, $a5
	sltui	$t0, $t0, 1
	add.w	$a5, $a5, $t0
.LBB9_79:                               # %.loopexit.us
                                        #   in Loop: Header=BB9_80 Depth=2
	addi.d	$a1, $a1, 1
	add.w	$s4, $a7, $s4
	beq	$a1, $a3, .LBB9_66
.LBB9_80:                               # %.lr.ph252.split.us
                                        #   Parent Loop BB9_67 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_85 Depth 3
	slli.d	$a7, $a1, 2
	ldx.w	$t0, $s6, $a7
	beqz	$fp, .LBB9_82
# %bb.81:                               #   in Loop: Header=BB9_80 Depth=2
	slli.d	$a7, $t0, 2
	ldx.w	$t0, $fp, $a7
.LBB9_82:                               #   in Loop: Header=BB9_80 Depth=2
	ori	$a7, $zero, 1
	bge	$a5, $a4, .LBB9_79
# %bb.83:                               # %.lr.ph234.us
                                        #   in Loop: Header=BB9_80 Depth=2
	slli.d	$t1, $a5, 2
	ldx.w	$t2, $s8, $t1
	move	$t1, $a5
	beq	$t0, $t2, .LBB9_78
# %bb.84:                               # %.lr.ph244.us.preheader
                                        #   in Loop: Header=BB9_80 Depth=2
	sub.d	$t2, $a6, $a5
	alsl.d	$t3, $a5, $a0, 2
	move	$t1, $a5
	beqz	$t2, .LBB9_79
	.p2align	4, , 16
.LBB9_85:                               #   Parent Loop BB9_67 Depth=1
                                        #     Parent Loop BB9_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t4, $t3, 0
	addi.d	$t2, $t2, -1
	addi.w	$t1, $t1, 1
	addi.d	$t3, $t3, 4
	beq	$t0, $t4, .LBB9_78
# %bb.86:                               # %.lr.ph244.us
                                        #   in Loop: Header=BB9_85 Depth=3
	bnez	$t2, .LBB9_85
	b	.LBB9_79
.LBB9_87:                               # %._crit_edge
	ori	$a0, $zero, 1
	ori	$a1, $zero, 56
	move	$s2, $t8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 40
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	st.w	$s2, $a0, 24
	st.w	$s3, $a0, 28
	st.w	$s4, $a0, 32
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 52
	st.w	$s2, $a0, 48
	move	$s2, $a0
	beqz	$s4, .LBB9_90
# %bb.88:
	ori	$a1, $zero, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 8
	st.d	$a0, $s2, 0
	addi.d	$s3, $s2, 8
	beqz	$a1, .LBB9_91
# %bb.89:
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB9_92
	b	.LBB9_94
.LBB9_90:                               # %.thread369
	addi.d	$s3, $s2, 8
.LBB9_91:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s2, 16
	bnez	$a0, .LBB9_94
.LBB9_92:
	beqz	$s4, .LBB9_94
# %bb.93:
	ori	$a1, $zero, 4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
.LBB9_94:                               # %hypre_CSRMatrixInitialize.exit
	ld.d	$a1, $s3, 0
	ori	$a2, $zero, 1
	st.w	$zero, $a1, 0
	ld.d	$ra, $sp, 16                    # 8-byte Folded Reload
	blt	$ra, $a2, .LBB9_118
# %bb.95:                               # %.lr.ph282
	move	$a2, $zero
	move	$a4, $zero
	addi.d	$a3, $a0, 32
	addi.d	$a5, $s8, 32
	ori	$a6, $zero, 16
	ori	$a7, $zero, 64
	b	.LBB9_97
	.p2align	4, , 16
.LBB9_96:                               # %._crit_edge278
                                        #   in Loop: Header=BB9_97 Depth=1
	stx.w	$a4, $a1, $t0
	beq	$a2, $ra, .LBB9_118
.LBB9_97:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_116 Depth 2
                                        #     Child Loop BB9_102 Depth 2
                                        #     Child Loop BB9_106 Depth 2
                                        #       Child Loop BB9_110 Depth 3
                                        #       Child Loop BB9_112 Depth 3
	slli.d	$t3, $a2, 2
	ldx.w	$t1, $s7, $t3
	addi.d	$a2, $a2, 1
	slli.d	$t0, $a2, 2
	ldx.w	$t2, $s7, $t0
	bge	$t1, $t2, .LBB9_103
# %bb.98:                               # %.lr.ph262.preheader
                                        #   in Loop: Header=BB9_97 Depth=1
	sub.d	$t5, $t2, $t1
	addi.w	$a4, $a4, 0
	bltu	$t5, $a6, .LBB9_100
# %bb.99:                               # %vector.memcheck490
                                        #   in Loop: Header=BB9_97 Depth=1
	alsl.d	$t4, $a4, $a0, 2
	alsl.d	$t6, $t1, $s8, 2
	sub.d	$t4, $t4, $t6
	bgeu	$t4, $a7, .LBB9_115
.LBB9_100:                              #   in Loop: Header=BB9_97 Depth=1
	move	$t4, $t1
.LBB9_101:                              # %.lr.ph262.preheader514
                                        #   in Loop: Header=BB9_97 Depth=1
	alsl.d	$t5, $t4, $s8, 2
	sub.d	$t6, $t2, $t4
	alsl.d	$t7, $a4, $a0, 2
	add.d	$a4, $a4, $t2
	sub.d	$a4, $a4, $t4
	.p2align	4, , 16
.LBB9_102:                              # %.lr.ph262
                                        #   Parent Loop BB9_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t5, 0
	st.w	$t4, $t7, 0
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, -1
	addi.d	$t7, $t7, 4
	bnez	$t6, .LBB9_102
.LBB9_103:                              # %._crit_edge263
                                        #   in Loop: Header=BB9_97 Depth=1
	ldx.w	$t3, $s5, $t3
	ldx.w	$t5, $s5, $t0
	bge	$t3, $t5, .LBB9_96
# %bb.104:                              # %.lr.ph277.preheader
                                        #   in Loop: Header=BB9_97 Depth=1
	alsl.d	$t4, $a2, $s5, 2
	b	.LBB9_106
	.p2align	4, , 16
.LBB9_105:                              # %._crit_edge269
                                        #   in Loop: Header=BB9_106 Depth=2
	slli.d	$t5, $t6, 2
	ldx.w	$t5, $s1, $t5
	addi.w	$t6, $a4, 0
	slli.d	$t6, $t6, 2
	stx.w	$t5, $a0, $t6
	ld.w	$t5, $t4, 0
	addi.d	$a4, $a4, 1
	addi.d	$t3, $t3, 1
	bge	$t3, $t5, .LBB9_96
.LBB9_106:                              # %.lr.ph277
                                        #   Parent Loop BB9_97 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_110 Depth 3
                                        #       Child Loop BB9_112 Depth 3
	slli.d	$t6, $t3, 2
	ldx.w	$t6, $s6, $t6
	move	$t7, $t6
	beqz	$fp, .LBB9_108
# %bb.107:                              #   in Loop: Header=BB9_106 Depth=2
	slli.d	$t7, $t6, 2
	ldx.w	$t7, $fp, $t7
.LBB9_108:                              #   in Loop: Header=BB9_106 Depth=2
	bge	$t1, $t2, .LBB9_105
# %bb.109:                              # %.lr.ph268
                                        #   in Loop: Header=BB9_106 Depth=2
	alsl.d	$s3, $t1, $s8, 2
	move	$t8, $t1
	beqz	$s0, .LBB9_112
	.p2align	4, , 16
.LBB9_110:                              # %.lr.ph268.split
                                        #   Parent Loop BB9_97 Depth=1
                                        #     Parent Loop BB9_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s4, $s3, 0
	slli.d	$s4, $s4, 2
	ldx.w	$s4, $s0, $s4
	beq	$t7, $s4, .LBB9_114
# %bb.111:                              #   in Loop: Header=BB9_110 Depth=3
	addi.d	$t8, $t8, 1
	addi.d	$s3, $s3, 4
	bne	$t2, $t8, .LBB9_110
	b	.LBB9_105
	.p2align	4, , 16
.LBB9_112:                              # %.lr.ph268.split.us
                                        #   Parent Loop BB9_97 Depth=1
                                        #     Parent Loop BB9_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s4, $s3, 0
	beq	$t7, $s4, .LBB9_114
# %bb.113:                              #   in Loop: Header=BB9_112 Depth=3
	addi.d	$t8, $t8, 1
	addi.d	$s3, $s3, 4
	bne	$t2, $t8, .LBB9_112
	b	.LBB9_105
	.p2align	4, , 16
.LBB9_114:                              # %.thread206
                                        #   in Loop: Header=BB9_106 Depth=2
	addi.w	$t6, $t8, 0
	xor	$t6, $t1, $t6
	sltui	$t6, $t6, 1
	add.w	$t1, $t1, $t6
	addi.d	$t3, $t3, 1
	blt	$t3, $t5, .LBB9_106
	b	.LBB9_96
.LBB9_115:                              # %vector.ph494
                                        #   in Loop: Header=BB9_97 Depth=1
	slli.d	$t7, $a4, 2
	slli.d	$t8, $t1, 2
	move	$t6, $t5
	bstrins.d	$t6, $zero, 3, 0
	add.d	$t4, $t6, $t1
	add.d	$a4, $t6, $a4
	add.d	$t7, $a3, $t7
	add.d	$t8, $a5, $t8
	move	$s3, $t6
	.p2align	4, , 16
.LBB9_116:                              # %vector.body497
                                        #   Parent Loop BB9_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t8, -32
	xvld	$xr1, $t8, 0
	xvst	$xr0, $t7, -32
	xvst	$xr1, $t7, 0
	addi.d	$t7, $t7, 64
	addi.d	$s3, $s3, -16
	addi.d	$t8, $t8, 64
	bnez	$s3, .LBB9_116
# %bb.117:                              # %middle.block503
                                        #   in Loop: Header=BB9_97 Depth=1
	beq	$t5, $t6, .LBB9_103
	b	.LBB9_101
.LBB9_118:                              # %._crit_edge283
	beqz	$s1, .LBB9_120
# %bb.119:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
.LBB9_120:
	move	$a0, $s2
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
