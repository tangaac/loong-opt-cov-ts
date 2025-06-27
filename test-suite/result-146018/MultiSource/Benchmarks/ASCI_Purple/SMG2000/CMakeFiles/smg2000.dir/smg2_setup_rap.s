	.file	"smg2_setup_rap.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_SMG2CreateRAPOp
.LCPI0_0:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI0_1:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI0_2:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI0_3:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI0_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.text
	.globl	hypre_SMG2CreateRAPOp
	.p2align	5
	.type	hypre_SMG2CreateRAPOp,@function
hypre_SMG2CreateRAPOp:                  # @hypre_SMG2CreateRAPOp
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$a0, %pc_hi20(.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost)
	addi.d	$a0, $a0, %pc_lo12(.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost)
	ld.d	$a1, $a0, 16
	vld	$vr0, $a0, 0
	ld.w	$a0, $fp, 72
	move	$s0, $a3
	st.d	$a1, $sp, 24
	vst	$vr0, $sp, 8
	beqz	$a0, .LBB0_2
# %bb.1:                                # %.loopexit.loopexit59
	ori	$a0, $zero, 5
	ori	$a1, $zero, 12
	ori	$s1, $zero, 5
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	move	$a2, $a0
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $a2, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 40
	st.w	$zero, $a2, 56
	b	.LBB0_3
.LBB0_2:                                # %.preheader
	ori	$a0, $zero, 9
	ori	$a1, $zero, 12
	ori	$s1, $zero, 9
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	move	$a2, $a0
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_3)
	vrepli.b	$vr2, 0
	vst	$vr2, $a2, 40
	vst	$vr0, $a2, 60
	vst	$vr1, $a2, 76
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_4)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $a2, 32
	st.w	$zero, $a2, 56
	vst	$vr0, $a2, 92
.LBB0_3:                                # %.loopexit
	ori	$a0, $zero, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructStencilCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixCreate)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructStencilDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 72
	st.w	$a0, $s0, 72
	beqz	$a0, .LBB0_5
# %bb.4:
	st.w	$zero, $sp, 12
	st.w	$zero, $sp, 20
.LBB0_5:
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixSetNumGhost)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	hypre_SMG2CreateRAPOp, .Lfunc_end0-hypre_SMG2CreateRAPOp
                                        # -- End function
	.globl	hypre_SMG2BuildRAPSym           # -- Begin function hypre_SMG2BuildRAPSym
	.p2align	5
	.type	hypre_SMG2BuildRAPSym,@function
hypre_SMG2BuildRAPSym:                  # @hypre_SMG2BuildRAPSym
# %bb.0:                                # %.split
	addi.d	$sp, $sp, -960
	st.d	$ra, $sp, 952                   # 8-byte Folded Spill
	st.d	$fp, $sp, 944                   # 8-byte Folded Spill
	st.d	$s0, $sp, 936                   # 8-byte Folded Spill
	st.d	$s1, $sp, 928                   # 8-byte Folded Spill
	st.d	$s2, $sp, 920                   # 8-byte Folded Spill
	st.d	$s3, $sp, 912                   # 8-byte Folded Spill
	st.d	$s4, $sp, 904                   # 8-byte Folded Spill
	st.d	$s5, $sp, 896                   # 8-byte Folded Spill
	st.d	$s6, $sp, 888                   # 8-byte Folded Spill
	st.d	$s7, $sp, 880                   # 8-byte Folded Spill
	st.d	$s8, $sp, 872                   # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	ori	$s3, $zero, 1
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	blt	$a6, $s3, .LBB1_137
# %bb.1:                                # %.preheader953.lr.ph
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 24
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $a1, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %.loopexit951
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	bge	$a4, $a0, .LBB1_137
.LBB1_3:                                # %.preheader953
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_132 Depth 2
                                        #       Child Loop BB1_133 Depth 3
                                        #         Child Loop BB1_134 Depth 4
                                        #     Child Loop BB1_14 Depth 2
                                        #       Child Loop BB1_16 Depth 3
                                        #         Child Loop BB1_113 Depth 4
                                        #         Child Loop BB1_122 Depth 4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s1, $a5, -1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a5, 4
	alsl.d	$a2, $a5, $a2, 3
	addi.d	$a3, $a5, -1
	addi.d	$fp, $a2, -12
	.p2align	4, , 16
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s1, $s1, 1
	addi.d	$a1, $a1, 4
	addi.d	$fp, $fp, 24
	bne	$a2, $a0, .LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$s2, $a4, $a1, 3
	add.d	$a0, $a0, $s2
	addi.d	$a3, $sp, 848
	st.d	$a0, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 40
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $s6, 40
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $s5, 40
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a1, 0
	ld.d	$a1, $a2, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $sp, 816                   # 8-byte Folded Spill
	add.d	$s4, $a4, $fp
	st.d	$a5, $sp, 784                   # 8-byte Folded Spill
	add.d	$s0, $a5, $fp
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	add.d	$a1, $a1, $fp
	st.d	$a1, $sp, 800                   # 8-byte Folded Spill
	add.d	$a0, $a0, $s2
	st.d	$a0, $sp, 824                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	st.d	$s7, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	st.d	$s2, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	st.d	$s7, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	st.d	$s2, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	st.d	$zero, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -1
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	move	$s6, $s5
	lu32i.d	$s6, 0
	st.d	$s6, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	st.d	$s3, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	st.d	$s2, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s7, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu32i.d	$s3, -1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 6
	blt	$a0, $a1, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$s5, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	move	$a0, $s5
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	st.d	$zero, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $s1
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	st.d	$s6, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	st.d	$s5, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s3, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a2, $sp, 860
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a1, $sp, 860
	st.w	$zero, $sp, 868
	ld.d	$s2, $sp, 816                   # 8-byte Folded Reload
	ldx.w	$a1, $s2, $fp
	ld.w	$a2, $s4, -12
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	sub.w	$a0, $a1, $a2
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$s7, $sp, 784                   # 8-byte Folded Reload
	ldx.w	$a2, $s7, $fp
	ld.w	$a3, $s0, -12
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 648                   # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 1
	ori	$s3, $zero, 1
	st.d	$s3, $sp, 860
	st.w	$zero, $sp, 868
	addi.d	$a1, $sp, 836
	ld.d	$s6, $sp, 792                   # 8-byte Folded Reload
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	ld.w	$a0, $s0, -12
	ld.w	$a2, $s6, 4
	ld.w	$a4, $s0, -8
	ld.w	$a3, $s6, 8
	ld.w	$a5, $s0, -4
	ld.w	$a6, $s0, 4
	sub.d	$t1, $a1, $a0
	sub.d	$t0, $a2, $a4
	sub.d	$a5, $a3, $a5
	sub.w	$a4, $a6, $a4
	slt	$a6, $s5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s5, $a6
	or	$a4, $a4, $a6
	ldx.w	$a6, $s7, $fp
	addi.d	$a7, $a4, 1
	mul.d	$a4, $a7, $a5
	add.d	$a4, $t0, $a4
	sub.w	$a0, $a6, $a0
	slt	$a5, $s5, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $s5, $a5
	or	$t7, $a0, $a5
	addi.d	$t0, $t7, 1
	mul.d	$a0, $a4, $t0
	add.w	$s7, $t1, $a0
	ld.d	$a6, $sp, 800                   # 8-byte Folded Reload
	ld.w	$a0, $a6, -12
	ld.w	$a4, $a6, -8
	ld.w	$a5, $a6, -4
	ld.w	$a6, $a6, 4
	sub.d	$t3, $a1, $a0
	sub.d	$t2, $a2, $a4
	sub.d	$a5, $a3, $a5
	sub.w	$a4, $a6, $a4
	slt	$a6, $s5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s5, $a6
	or	$a4, $a4, $a6
	ld.d	$a6, $sp, 808                   # 8-byte Folded Reload
	ldx.w	$a6, $a6, $fp
	addi.d	$t1, $a4, 1
	mul.d	$a4, $t1, $a5
	add.d	$a4, $t2, $a4
	sub.w	$a0, $a6, $a0
	slt	$a5, $s5, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $s5, $a5
	or	$a0, $a0, $a5
	addi.d	$t2, $a0, 1
	mul.d	$a4, $a4, $t2
	add.w	$s0, $t3, $a4
	ld.w	$a4, $sp, 848
	ld.w	$a5, $s4, -12
	ld.w	$a6, $sp, 852
	ld.w	$t3, $s4, -8
	ld.w	$t4, $sp, 856
	ld.w	$t5, $s4, -4
	ld.w	$t6, $s4, 4
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $t3
	sub.d	$t5, $t4, $t5
	sub.w	$t3, $t6, $t3
	slt	$t4, $s5, $t3
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $s5, $t4
	or	$t3, $t3, $t4
	ldx.w	$t6, $s2, $fp
	addi.d	$t4, $t3, 1
	mul.d	$t3, $t4, $t5
	add.d	$a6, $a6, $t3
	sub.w	$a5, $t6, $a5
	slt	$t3, $s5, $a5
	maskeqz	$a5, $a5, $t3
	masknez	$t3, $s5, $t3
	or	$a5, $a5, $t3
	addi.d	$t5, $a5, 1
	mul.d	$a5, $a6, $t5
	add.w	$s4, $a4, $a5
	ld.d	$a4, $sp, 824                   # 8-byte Folded Reload
	ld.w	$a5, $a4, 0
	ld.w	$a6, $a4, 4
	ld.w	$t3, $a4, 8
	ld.w	$t6, $a4, 16
	sub.d	$t8, $a1, $a5
	sub.d	$a1, $a2, $a6
	sub.d	$a2, $a3, $t3
	sub.w	$a3, $t6, $a6
	slt	$a6, $s5, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $s5, $a6
	or	$a3, $a3, $a6
	ld.w	$a6, $a4, 12
	addi.d	$t3, $a3, 1
	mul.d	$a2, $t3, $a2
	add.d	$a2, $a1, $a2
	sub.w	$a1, $a6, $a5
	slt	$a3, $s5, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s5, $a3
	or	$a1, $a1, $a3
	addi.d	$t6, $a1, 1
	mul.d	$a2, $a2, $t6
	ld.w	$a3, $sp, 836
	ld.w	$a5, $sp, 840
	add.w	$s2, $t8, $a2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	st.d	$a2, $sp, 696                   # 8-byte Folded Spill
	ld.w	$a6, $sp, 844
	slt	$a2, $a3, $a5
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	masknez	$a3, $a3, $a2
	st.d	$a5, $sp, 576                   # 8-byte Folded Spill
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a6
	masknez	$a2, $a2, $a3
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	maskeqz	$a3, $a6, $a3
	or	$a2, $a3, $a2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ori	$a5, $zero, 5
	bne	$a3, $a5, .LBB1_127
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	blt	$a2, $s3, .LBB1_2
# %bb.9:                                # %.preheader948.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB1_2
# %bb.10:                               # %.preheader948.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB1_2
# %bb.11:                               # %.preheader948.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB1_2
# %bb.12:                               # %.preheader946.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$fp, $s0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 4
	move	$t7, $zero
	ld.w	$a1, $a1, 8
	mul.d	$a0, $a0, $t5
	ld.d	$a5, $sp, 576                   # 8-byte Folded Reload
	mul.d	$a2, $a5, $a0
	mul.d	$a3, $t5, $t4
	mul.d	$a1, $a3, $a1
	ld.d	$t4, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 464                   # 8-byte Folded Reload
	mul.d	$a3, $t5, $t4
	sub.d	$a6, $t0, $t5
	st.d	$a6, $sp, 432                   # 8-byte Folded Spill
	sub.d	$a6, $t2, $t5
	st.d	$a6, $sp, 424                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	sub.d	$a0, $t6, $t5
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	sub.d	$a0, $a7, $a5
	mul.d	$a0, $a0, $t0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	sub.d	$a0, $t1, $a5
	mul.d	$a0, $a0, $t2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a0, $a1, $a2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	sub.d	$a0, $t3, $a5
	mul.d	$a0, $a0, $t6
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $t5, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 672                   # 8-byte Folded Reload
	addi.d	$a1, $t0, 8
	alsl.d	$a2, $a0, $a1, 3
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 648                   # 8-byte Folded Reload
	sub.d	$a2, $a0, $t1
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 200                   # 8-byte Folded Reload
	addi.d	$t3, $t2, -8
	addi.d	$a1, $t2, 8
	alsl.d	$a3, $a0, $a1, 3
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	slli.d	$a3, $s1, 3
	ori	$a5, $zero, 25
	sltu	$a6, $a5, $t5
	addi.d	$a7, $t4, -1
	sltui	$a7, $a7, 1
	and	$a5, $a6, $a7
	st.d	$a5, $sp, 400                   # 8-byte Folded Spill
	st.d	$t3, $sp, 528                   # 8-byte Folded Spill
	sub.d	$a5, $t3, $a3
	st.d	$a5, $sp, 520                   # 8-byte Folded Spill
	sub.d	$a6, $a0, $s1
	alsl.d	$a6, $a6, $t2, 3
	addi.d	$a5, $a6, 16
	st.d	$a5, $sp, 296                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $a3
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 680                   # 8-byte Folded Reload
	addi.d	$a1, $a5, 8
	alsl.d	$a3, $a0, $a1, 3
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 664                   # 8-byte Folded Reload
	addi.d	$a1, $a6, 8
	alsl.d	$a3, $a0, $a1, 3
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	slli.d	$a1, $t1, 3
	ld.d	$a4, $sp, 768                   # 8-byte Folded Reload
	sub.d	$a3, $a4, $a1
	st.d	$a3, $sp, 512                   # 8-byte Folded Spill
	alsl.d	$a3, $a2, $a4, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 776                   # 8-byte Folded Reload
	addi.d	$a3, $a4, -8
	st.d	$a3, $sp, 504                   # 8-byte Folded Spill
	alsl.d	$a3, $a0, $a4, 3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 656                   # 8-byte Folded Reload
	addi.d	$a3, $a7, 8
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$a2, $a0, $a3, 3
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	sub.d	$a0, $t0, $a1
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	sub.d	$a0, $a5, $a1
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	move	$a5, $s2
	sub.d	$a0, $a6, $a1
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	sub.d	$a0, $a7, $a1
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t5, 30, 1
	slli.d	$a1, $a0, 1
	slli.d	$a0, $t5, 3
	bstrpick.d	$a0, $a0, 33, 4
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	mul.d	$a0, $a1, $t4
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a0, $t4, 4
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	slli.d	$s2, $t4, 3
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_13:                               # %._crit_edge1087.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_14 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.w	$fp, $fp, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$s4, $a0, $s4
	ld.d	$t7, $sp, 152                   # 8-byte Folded Reload
	addi.w	$t7, $t7, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$t7, $a0, .LBB1_2
.LBB1_14:                               # %.preheader946.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_16 Depth 3
                                        #         Child Loop BB1_113 Depth 4
                                        #         Child Loop BB1_122 Depth 4
	st.d	$t7, $sp, 152                   # 8-byte Folded Spill
	move	$s1, $zero
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_15:                               # %._crit_edge.us.us.us.us.us.us1152
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	add.w	$s7, $a0, $a2
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	add.w	$fp, $a0, $fp
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	add.w	$s4, $a0, $a4
	ld.d	$s1, $sp, 568                   # 8-byte Folded Reload
	addi.w	$s1, $s1, 1
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	add.w	$a5, $a0, $a5
	ori	$s3, $zero, 1
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	move	$s2, $t4
	beq	$s1, $a0, .LBB1_13
.LBB1_16:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_113 Depth 4
                                        #         Child Loop BB1_122 Depth 4
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	st.d	$s1, $sp, 568                   # 8-byte Folded Spill
	beqz	$a0, .LBB1_115
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a7, $a5, $a0, 3
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a0, 3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t6, $a5, $a0, 3
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$ra, $a5, $a0, 3
	sltu	$a0, $a7, $ra
	sltu	$a2, $t6, $a1
	and	$a0, $a0, $a2
	move	$s3, $zero
	ld.d	$s0, $sp, 288                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_116
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$t0, $a5, $a0, 3
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$t5, $a5, $a0, 3
	sltu	$a0, $a7, $t5
	sltu	$a2, $t0, $a1
	and	$a0, $a0, $a2
	ld.d	$t8, $sp, 320                   # 8-byte Folded Reload
	bnez	$a0, .LBB1_116
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t1, $a5, $a0, 3
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$t7, $a5, $a0, 3
	sltu	$a0, $a7, $t7
	sltu	$a2, $t1, $a1
	and	$a0, $a0, $a2
	bnez	$a0, .LBB1_116
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$t2, $a5, $a0, 3
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a0, 3
	sltu	$a0, $a7, $a2
	sltu	$a3, $t2, $a1
	and	$a0, $a0, $a3
	bnez	$a0, .LBB1_116
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$t3, $fp, $a0, 3
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	sltu	$a0, $a7, $a0
	sltu	$a3, $t3, $a1
	and	$a0, $a0, $a3
	bnez	$a0, .LBB1_116
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	add.d	$a3, $a0, $s4
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a0, 3
	alsl.d	$a6, $a3, $t8, 3
	move	$s5, $a6
	sltu	$a6, $a7, $a6
	st.d	$a4, $sp, 392                   # 8-byte Folded Spill
	sltu	$t4, $a4, $a1
	and	$a6, $a6, $t4
	bnez	$a6, .LBB1_116
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	alsl.d	$a4, $s4, $a0, 3
	alsl.d	$a0, $s4, $t8, 3
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	sltu	$a6, $a7, $a0
	st.d	$a4, $sp, 816                   # 8-byte Folded Spill
	sltu	$t4, $a4, $a1
	and	$a6, $a6, $t4
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	bnez	$a6, .LBB1_116
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a6, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a6, 3
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a6, $s4, $a6, 3
	st.d	$a6, $sp, 808                   # 8-byte Folded Spill
	sltu	$a6, $a7, $a6
	sltu	$t4, $a4, $a1
	and	$a6, $a6, $t4
	bnez	$a6, .LBB1_116
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a6, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$t4, $s7, $a6, 3
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a6, $s7, $a6, 3
	st.d	$a6, $sp, 792                   # 8-byte Folded Spill
	sltu	$a6, $a7, $a6
	st.d	$t4, $sp, 800                   # 8-byte Folded Spill
	sltu	$t4, $t4, $a1
	and	$a6, $a6, $t4
	bnez	$a6, .LBB1_116
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a6, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t4, $s7, $a6, 3
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a6, $s7, $a6, 3
	st.d	$a6, $sp, 776                   # 8-byte Folded Spill
	sltu	$a6, $a7, $a6
	st.d	$t4, $sp, 784                   # 8-byte Folded Spill
	sltu	$t4, $t4, $a1
	and	$a6, $a6, $t4
	bnez	$a6, .LBB1_116
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	st.d	$s7, $sp, 544                   # 8-byte Folded Spill
	alsl.d	$s7, $a3, $a0, 3
	alsl.d	$a6, $a3, $s0, 3
	st.d	$a6, $sp, 768                   # 8-byte Folded Spill
	sltu	$a6, $a7, $a6
	sltu	$t4, $s7, $a1
	and	$a6, $a6, $t4
	bnez	$a6, .LBB1_123
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	alsl.d	$s8, $s4, $a0, 3
	alsl.d	$a0, $s4, $s0, 3
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	sltu	$a6, $a7, $a0
	sltu	$t4, $s8, $a1
	and	$a6, $a6, $t4
	bnez	$a6, .LBB1_123
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$s6, $s4, $a0, 3
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 3
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	sltu	$a6, $a7, $a0
	sltu	$t4, $s6, $a1
	and	$a6, $a6, $t4
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	bnez	$a6, .LBB1_123
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	alsl.d	$s0, $a3, $a0, 3
	ld.d	$t4, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $t4, 3
	st.d	$a3, $sp, 744                   # 8-byte Folded Spill
	sltu	$a3, $a7, $a3
	sltu	$a6, $s0, $a1
	and	$a3, $a3, $a6
	bnez	$a3, .LBB1_123
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	alsl.d	$s1, $s4, $a0, 3
	alsl.d	$a0, $s4, $t4, 3
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	sltu	$a3, $a7, $a0
	sltu	$a6, $s1, $a1
	and	$a3, $a3, $a6
	bnez	$a3, .LBB1_123
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$t8, $s4, $a0, 3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 3
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	sltu	$a3, $a7, $a0
	sltu	$a6, $t8, $a1
	and	$a3, $a3, $a6
	bnez	$a3, .LBB1_124
# %bb.33:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	st.d	$s3, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$s2, $s4, $a0, 3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 3
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	sltu	$a3, $a7, $a0
	sltu	$a6, $s2, $a1
	and	$a3, $a3, $a6
	bnez	$a3, .LBB1_125
# %bb.34:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	st.d	$a5, $sp, 560                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$s3, $a3, $a0, 3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	sltu	$a3, $a7, $a0
	sltu	$a6, $s3, $a1
	and	$a3, $a3, $a6
	bnez	$a3, .LBB1_126
# %bb.35:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	move	$a3, $fp
	alsl.d	$fp, $fp, $a0, 3
	st.d	$a3, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	sltu	$a3, $a7, $a0
	sltu	$a6, $fp, $a1
	and	$a3, $a3, $a6
	bnez	$a3, .LBB1_118
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a5, $s4, $a0, 3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 3
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	sltu	$a3, $a7, $a0
	sltu	$t4, $a5, $a1
	and	$a3, $a3, $t4
	bnez	$a3, .LBB1_118
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a6, $s4, $a0, 3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 3
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	sltu	$a3, $a7, $a0
	st.d	$a6, $sp, 824                   # 8-byte Folded Spill
	sltu	$a1, $a6, $a1
	and	$a1, $a3, $a1
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_118
# %bb.38:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t6, $t5
	sltu	$a3, $t0, $ra
	and	$a1, $a1, $a3
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_118
# %bb.39:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t6, $t7
	sltu	$a3, $t1, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.40:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t6, $a2
	sltu	$a3, $t2, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.41:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t6, $a6
	sltu	$a3, $t3, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	move	$t4, $s5
	sltu	$a1, $t6, $s5
	sltu	$a3, $a0, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.43:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	ld.d	$a3, $sp, 816                   # 8-byte Folded Reload
	sltu	$a3, $a3, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	sltu	$a3, $a4, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	ld.d	$a3, $sp, 800                   # 8-byte Folded Reload
	sltu	$a3, $a3, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	ld.d	$a3, $sp, 784                   # 8-byte Folded Reload
	sltu	$a3, $a3, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.47:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	sltu	$a3, $s7, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.48:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	sltu	$a3, $s8, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.49:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	sltu	$a3, $s6, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.50:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	sltu	$a3, $s0, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.51:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	sltu	$a3, $s1, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.52:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	sltu	$a3, $t8, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.53:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	sltu	$a3, $s2, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.54:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	sltu	$a3, $s3, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.55:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	sltu	$a3, $fp, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.56:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	sltu	$a3, $a5, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.57:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	sltu	$a1, $t6, $a1
	ld.d	$s5, $sp, 824                   # 8-byte Folded Reload
	sltu	$a3, $s5, $ra
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.58:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t0, $t7
	sltu	$a3, $t1, $t5
	and	$a1, $a1, $a3
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	bnez	$a1, .LBB1_118
# %bb.59:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t0, $a2
	sltu	$a3, $t2, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.60:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t0, $a6
	sltu	$a3, $t3, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.61:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t0, $t4
	sltu	$a3, $a0, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.62:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t0, $ra
	ld.d	$a3, $sp, 816                   # 8-byte Folded Reload
	sltu	$a3, $a3, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.63:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	sltu	$a3, $a4, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.64:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	ld.d	$a3, $sp, 800                   # 8-byte Folded Reload
	sltu	$a3, $a3, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.65:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	ld.d	$a3, $sp, 784                   # 8-byte Folded Reload
	sltu	$a3, $a3, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.66:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	sltu	$a3, $s7, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.67:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	sltu	$a3, $s8, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.68:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	sltu	$a3, $s6, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.69:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	sltu	$a3, $s0, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.70:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	sltu	$a3, $s1, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.71:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	sltu	$a3, $t8, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.72:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	sltu	$a3, $s2, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.73:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	sltu	$a3, $s3, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.74:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	sltu	$a3, $fp, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.75:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	sltu	$a3, $a5, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.76:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	sltu	$a1, $t0, $a1
	sltu	$a3, $s5, $t5
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.77:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t1, $a2
	sltu	$a3, $t2, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.78:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t1, $a6
	sltu	$a3, $t3, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.79:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t1, $t4
	sltu	$a3, $a0, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.80:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t1, $ra
	ld.d	$a3, $sp, 816                   # 8-byte Folded Reload
	sltu	$a3, $a3, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.81:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	sltu	$a3, $a4, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.82:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	ld.d	$a3, $sp, 800                   # 8-byte Folded Reload
	sltu	$a3, $a3, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.83:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	ld.d	$a3, $sp, 784                   # 8-byte Folded Reload
	sltu	$a3, $a3, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.84:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	sltu	$a3, $s7, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.85:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	sltu	$a3, $s8, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.86:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	sltu	$a3, $s6, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.87:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	sltu	$a3, $s0, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.88:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	sltu	$a3, $s1, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.89:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	sltu	$a3, $t8, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.90:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	sltu	$a3, $s2, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.91:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	sltu	$a3, $s3, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.92:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	sltu	$a3, $fp, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.93:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	sltu	$a3, $a5, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.94:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	sltu	$a1, $t1, $a1
	sltu	$a3, $s5, $t7
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.95:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t2, $a6
	sltu	$a3, $t3, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.96:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t2, $t4
	sltu	$a3, $a0, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.97:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	sltu	$a1, $t2, $ra
	ld.d	$a3, $sp, 816                   # 8-byte Folded Reload
	sltu	$a3, $a3, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.98:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	sltu	$a3, $a4, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.99:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	ld.d	$a3, $sp, 800                   # 8-byte Folded Reload
	sltu	$a3, $a3, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.100:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	ld.d	$a3, $sp, 784                   # 8-byte Folded Reload
	sltu	$a3, $a3, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.101:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	sltu	$a3, $s7, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.102:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	sltu	$a3, $s8, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.103:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	sltu	$a3, $s6, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.104:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	sltu	$a3, $s0, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.105:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	sltu	$a3, $s1, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.106:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	sltu	$a3, $t8, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.107:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	sltu	$a3, $s2, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.108:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	sltu	$a3, $s3, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.109:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	sltu	$a3, $fp, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.110:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	sltu	$a3, $a5, $a2
	and	$a1, $a1, $a3
	bnez	$a1, .LBB1_118
# %bb.111:                              # %vector.memcheck
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	sltu	$a1, $t2, $a1
	sltu	$a2, $s5, $a2
	and	$a1, $a1, $a2
	bnez	$a1, .LBB1_118
# %bb.112:                              # %vector.ph
                                        #   in Loop: Header=BB1_16 Depth=3
	move	$a1, $zero
	move	$a3, $zero
	ld.d	$t5, $sp, 216                   # 8-byte Folded Reload
	move	$s5, $a4
	ld.d	$a6, $sp, 816                   # 8-byte Folded Reload
	move	$a4, $a0
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	add.d	$a0, $t5, $a0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	move	$t4, $a5
	ld.d	$a5, $sp, 544                   # 8-byte Folded Reload
	add.d	$a2, $t5, $a5
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	add.d	$a0, $t5, $a0
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.d	$s4, $a0, $s4
	st.d	$s4, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$t5, $a5, $a0, 3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$t7, $a5, $a0, 3
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_113:                              # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr0, $t3, $a3
	vldx	$vr1, $s5, $a1
	add.d	$ra, $t7, $a3
	vld	$vr2, $ra, -16
	vfmul.d	$vr1, $vr0, $vr1
	vldx	$vr3, $s6, $a1
	vfmul.d	$vr2, $vr1, $vr2
	vldx	$vr4, $t8, $a1
	vstx	$vr2, $a7, $a3
	vfmul.d	$vr2, $vr0, $vr3
	vld	$vr3, $ra, -8
	vfmul.d	$vr4, $vr0, $vr4
	vldx	$vr5, $s1, $a1
	vldx	$vr6, $a6, $a1
	vldx	$vr7, $s3, $a3
	vfmadd.d	$vr2, $vr2, $vr3, $vr4
	vfmadd.d	$vr2, $vr5, $vr3, $vr2
	add.d	$ra, $s3, $a3
	vfmadd.d	$vr1, $vr1, $vr7, $vr6
	vldx	$vr3, $fp, $a3
	vldx	$vr4, $a4, $a1
	add.d	$a0, $t5, $a3
	vld	$vr5, $a0, -8
	vldx	$vr6, $t3, $a3
	vldx	$vr7, $s6, $a1
	vfmul.d	$vr3, $vr3, $vr4
	vfmadd.d	$vr1, $vr3, $vr5, $vr1
	vldx	$vr3, $s8, $a1
	vfmul.d	$vr4, $vr6, $vr7
	vld	$vr5, $ra, 8
	vldx	$vr7, $fp, $a3
	vldx	$vr8, $s7, $a1
	vldx	$vr9, $t5, $a3
	vfmadd.d	$vr3, $vr4, $vr5, $vr3
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	vldx	$vr4, $a0, $a1
	vfmul.d	$vr8, $vr7, $vr8
	vfmadd.d	$vr3, $vr8, $vr9, $vr3
	vldx	$vr8, $s2, $a1
	vfmadd.d	$vr3, $vr6, $vr4, $vr3
	vldx	$vr4, $t7, $a3
	vldx	$vr6, $s0, $a1
	vstx	$vr2, $t6, $a3
	vfmul.d	$vr0, $vr0, $vr8
	vfmul.d	$vr0, $vr0, $vr4
	vfmadd.d	$vr2, $vr7, $vr6, $vr3
	vldx	$vr3, $s1, $a1
	vldx	$vr4, $t4, $a1
	vstx	$vr0, $t0, $a3
	vstx	$vr1, $t1, $a3
	vfmadd.d	$vr0, $vr3, $vr5, $vr2
	vfmadd.d	$vr0, $vr4, $vr9, $vr0
	vstx	$vr0, $t2, $a3
	addi.d	$a3, $a3, 16
	add.d	$a1, $a1, $s4
	bne	$a5, $a3, .LBB1_113
# %bb.114:                              # %middle.block
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$s3, $a1
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 808                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 208                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB1_15
	b	.LBB1_121
	.p2align	4, , 16
.LBB1_115:                              #   in Loop: Header=BB1_16 Depth=3
	move	$s3, $zero
.LBB1_116:                              #   in Loop: Header=BB1_16 Depth=3
	move	$a2, $s7
.LBB1_117:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_16 Depth=3
	move	$a4, $s4
	move	$t4, $s2
	b	.LBB1_121
	.p2align	4, , 16
.LBB1_118:                              #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
.LBB1_119:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_16 Depth=3
	move	$a4, $s4
	ld.d	$a5, $sp, 560                   # 8-byte Folded Reload
.LBB1_120:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$t4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 376                   # 8-byte Folded Reload
.LBB1_121:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_16 Depth=3
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$a3, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a6, $fp, $a3, 3
	ld.d	$a3, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a7, $fp, $a3, 3
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	sub.d	$t0, $a3, $s3
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$t1, $a2, $a3, 3
	ld.d	$a3, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$t2, $a2, $a3, 3
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	st.d	$a3, $sp, 824                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	st.d	$a3, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t5, $a2, $a3, 3
	ld.d	$a3, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	st.d	$a3, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	st.d	$a3, $sp, 800                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$t8, $a5, $a3, 3
	ld.d	$a3, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t3, $a5, $a3, 3
	ld.d	$a3, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$s0, $a5, $a3, 3
	ld.d	$s7, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$s1, $a4, $s7, 3
	ld.d	$s5, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$s2, $a4, $s5, 3
	move	$t6, $t4
	move	$t4, $a5
	ld.d	$a5, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$s3, $a4, $a5, 3
	ld.d	$a3, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$s4, $a4, $a3, 3
	ld.d	$a3, $sp, 648                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	alsl.d	$s5, $a3, $s5, 3
	alsl.d	$s6, $a3, $a5, 3
	move	$a5, $t4
	alsl.d	$s7, $a3, $s7, 3
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$s8, $a4, $a3, 3
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$ra, $a4, $a3, 3
	ld.d	$a3, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	.p2align	4, , 16
.LBB1_122:                              # %scalar.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        #       Parent Loop BB1_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a6, $a1
	fldx.d	$fa1, $s8, $a0
	fldx.d	$fa2, $t5, $a1
	fmul.d	$fa0, $fa0, $fa1
	move	$t4, $a5
	add.d	$a5, $t5, $a1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t7, $sp, 808                   # 8-byte Folded Reload
	fstx.d	$fa0, $t7, $a1
	fldx.d	$fa0, $a6, $a1
	fldx.d	$fa1, $ra, $a0
	fldx.d	$fa2, $a3, $a0
	fld.d	$fa3, $a5, 8
	fldx.d	$fa4, $s1, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t7, $sp, 800                   # 8-byte Folded Reload
	fstx.d	$fa0, $t7, $a1
	fldx.d	$fa0, $a6, $a1
	ld.d	$t7, $sp, 816                   # 8-byte Folded Reload
	fldx.d	$fa1, $t7, $a0
	fld.d	$fa2, $a5, 16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t8, $a1
	fldx.d	$fa0, $a6, $a1
	fldx.d	$fa1, $s8, $a0
	fldx.d	$fa2, $s2, $a0
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $t1, $a1
	fldx.d	$fa3, $a7, $a1
	fldx.d	$fa4, $s5, $a0
	fldx.d	$fa5, $t2, $a1
	add.d	$a5, $t1, $a1
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmul.d	$fa1, $fa3, $fa4
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fstx.d	$fa0, $t3, $a1
	fld.d	$fa0, $a5, 8
	add.d	$a5, $t2, $a1
	fldx.d	$fa1, $s3, $a0
	fldx.d	$fa2, $a6, $a1
	fldx.d	$fa3, $ra, $a0
	fldx.d	$fa4, $a7, $a1
	fldx.d	$fa5, $s6, $a0
	fld.d	$fa6, $a5, 8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$a5, $sp, 824                   # 8-byte Folded Reload
	fldx.d	$fa3, $a5, $a0
	fldx.d	$fa5, $s7, $a0
	fldx.d	$fa7, $s1, $a0
	fldx.d	$ft0, $s4, $a0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa0, $fa7, $fa0, $fa1
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	fstx.d	$fa0, $s0, $a1
	addi.d	$a2, $a2, 1
	addi.d	$fp, $fp, 1
	ld.d	$a5, $sp, 696                   # 8-byte Folded Reload
	add.d	$a4, $a4, $a5
	move	$a5, $t4
	move	$t4, $t6
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 8
	addi.w	$t0, $t0, -1
	add.d	$a0, $a0, $t6
	bnez	$t0, .LBB1_122
	b	.LBB1_15
.LBB1_123:                              #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	b	.LBB1_117
.LBB1_124:                              #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	move	$a4, $s4
	ld.d	$t4, $sp, 208                   # 8-byte Folded Reload
	b	.LBB1_121
.LBB1_125:                              #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	move	$a4, $s4
	b	.LBB1_120
.LBB1_126:                              #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	b	.LBB1_119
	.p2align	4, , 16
.LBB1_127:                              #   in Loop: Header=BB1_3 Depth=1
	blt	$a2, $s3, .LBB1_2
# %bb.128:                              # %.preheader949.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	blt	$a2, $s3, .LBB1_2
# %bb.129:                              # %.preheader949.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a2, $sp, 576                   # 8-byte Folded Reload
	blt	$a2, $s3, .LBB1_2
# %bb.130:                              # %.preheader949.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	blt	$a2, $s3, .LBB1_2
# %bb.131:                              # %.preheader947.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a3, 4
	move	$s5, $zero
	mul.d	$a4, $a2, $t5
	st.d	$a4, $sp, 568                   # 8-byte Folded Spill
	ld.w	$a3, $a3, 8
	ld.d	$fp, $sp, 696                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	mul.d	$a5, $a4, $fp
	st.d	$a5, $sp, 560                   # 8-byte Folded Spill
	ld.d	$t8, $sp, 576                   # 8-byte Folded Reload
	sub.d	$a5, $a7, $t8
	mul.d	$a5, $a5, $t0
	sub.d	$a6, $t1, $t8
	mul.d	$a6, $a6, $t2
	sub.d	$a7, $t3, $t8
	mul.d	$a7, $a7, $t6
	sub.w	$a4, $zero, $a4
	add.d	$a6, $a6, $a0
	nor	$a6, $a6, $zero
	st.d	$a6, $sp, 552                   # 8-byte Folded Spill
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -8
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a6, $a0, -8
	mul.d	$a0, $a3, $t4
	sub.d	$a3, $s3, $t8
	mul.d	$a2, $a2, $a3
	add.d	$a0, $a0, $a2
	mul.d	$a0, $a0, $t5
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a6, $sp, 528                   # 8-byte Folded Spill
	sub.d	$a0, $a6, $a0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	add.d	$a0, $a5, $t7
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	nor	$a0, $t7, $zero
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	add.d	$a0, $a7, $a1
	nor	$a0, $a0, $zero
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	nor	$a0, $a1, $zero
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	slli.d	$a0, $fp, 3
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	st.d	$a4, $sp, 824                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_132:                              # %.preheader947.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_133 Depth 3
                                        #         Child Loop BB1_134 Depth 4
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_133:                              # %.preheader945.us.us.us.us.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_132 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_134 Depth 4
	st.d	$a2, $sp, 688                   # 8-byte Folded Spill
	move	$a2, $zero
	move	$t1, $zero
	move	$t2, $zero
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a4, $s0, $a0, 3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t3, $s0, $a0, 3
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s0
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	sub.d	$a3, $a1, $s0
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$t5, $s7, $a1, 3
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$t6, $s7, $a1, 3
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t7, $s7, $a1, 3
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	sub.d	$a6, $a1, $s7
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	sub.d	$t8, $a1, $s7
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 800                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a1, 3
	st.d	$a1, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	sub.d	$t0, $a1, $s2
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a5, $a1, $s2
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$s5, $s4, $a7, 3
	ld.d	$fp, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$s7, $s4, $fp, 3
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a1, $s4, $a1, 3
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a1, $s4, $t4, 3
	st.d	$a1, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s4
	alsl.d	$t4, $a1, $t4, 3
	st.d	$t4, $sp, 760                   # 8-byte Folded Spill
	alsl.d	$a7, $a1, $a7, 3
	st.d	$a7, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$t4, $a1, $a7, 3
	st.d	$t4, $sp, 744                   # 8-byte Folded Spill
	alsl.d	$a1, $a1, $fp, 3
	st.d	$a1, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a1, $s4, $a1, 3
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	alsl.d	$a1, $s4, $a7, 3
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a1, $s4, $a1, 3
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$s3, $s4, $a1, 3
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a1, $s4, $a1, 3
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$s8, $s4, $a1, 3
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$ra, $s4, $a1, 3
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a1, $s4, $a1, 3
	ld.d	$a7, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$t4, $s4, $a7, 3
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$s0, $s4, $a7, 3
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	st.d	$s4, $sp, 584                   # 8-byte Folded Spill
	alsl.d	$a7, $s4, $a7, 3
	ld.d	$s6, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 480                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_134:                              #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_132 Depth=2
                                        #       Parent Loop BB1_133 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a4, $t2
	fldx.d	$fa1, $s3, $a2
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$fp, $sp, 704                   # 8-byte Folded Reload
	fldx.d	$fa2, $fp, $a2
	fldx.d	$fa3, $t7, $t2
	fldx.d	$fa4, $s5, $a2
	add.d	$fp, $t7, $t2
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s4, $sp, 816                   # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $t2
	fldx.d	$fa0, $a4, $t2
	fldx.d	$fa1, $s8, $a2
	fldx.d	$fa2, $ra, $a2
	fld.d	$fa3, $fp, 8
	fldx.d	$fa4, $s7, $a2
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$s4, $sp, 808                   # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $t2
	fldx.d	$fa0, $a4, $t2
	fldx.d	$fa1, $a1, $a2
	fldx.d	$fa2, $t4, $a2
	fld.d	$fa3, $fp, 16
	ld.d	$fp, $sp, 776                   # 8-byte Folded Reload
	fldx.d	$fa4, $fp, $a2
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$fp, $sp, 800                   # 8-byte Folded Reload
	fstx.d	$fa0, $fp, $t2
	fldx.d	$fa0, $a4, $t2
	fldx.d	$fa1, $s3, $a2
	ld.d	$fp, $sp, 768                   # 8-byte Folded Reload
	fldx.d	$fa2, $fp, $a2
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa3, $t5, $t2
	fldx.d	$fa4, $t3, $t2
	ld.d	$fp, $sp, 760                   # 8-byte Folded Reload
	fldx.d	$fa5, $fp, $a2
	fldx.d	$fa6, $t6, $t2
	add.d	$fp, $t5, $t2
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $s0, $a2
	ld.d	$s4, $sp, 752                   # 8-byte Folded Reload
	fldx.d	$fa5, $s4, $a2
	fldx.d	$fa7, $s5, $a2
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	fldx.d	$ft0, $s4, $a2
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fmadd.d	$fa0, $fa7, $fa3, $fa0
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	ld.d	$s4, $sp, 792                   # 8-byte Folded Reload
	fstx.d	$fa0, $s4, $t2
	fld.d	$fa0, $fp, 8
	add.d	$fp, $t6, $t2
	ld.d	$s4, $sp, 720                   # 8-byte Folded Reload
	fldx.d	$fa1, $s4, $a2
	fldx.d	$fa2, $a4, $t2
	fldx.d	$fa3, $s8, $a2
	fldx.d	$fa4, $t3, $t2
	ld.d	$s4, $sp, 744                   # 8-byte Folded Reload
	fldx.d	$fa5, $s4, $a2
	fld.d	$fa6, $fp, 8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	fldx.d	$fa3, $a7, $a2
	ld.d	$fp, $sp, 736                   # 8-byte Folded Reload
	fldx.d	$fa5, $fp, $a2
	fldx.d	$fa7, $s7, $a2
	ld.d	$fp, $sp, 712                   # 8-byte Folded Reload
	fldx.d	$ft0, $fp, $a2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa0, $fa7, $fa0, $fa1
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	ld.d	$fp, $sp, 784                   # 8-byte Folded Reload
	fstx.d	$fa0, $fp, $t2
	addi.d	$t2, $t2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, -1
	addi.w	$t1, $t1, -1
	sub.d	$s6, $s6, $s1
	addi.d	$a6, $a6, -1
	addi.d	$t8, $t8, -1
	addi.d	$t0, $t0, -1
	addi.d	$a5, $a5, -1
	add.d	$a2, $a2, $s2
	ld.d	$fp, $sp, 824                   # 8-byte Folded Reload
	bne	$fp, $t1, .LBB1_134
# %bb.135:                              # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_133 Depth=3
	ld.d	$a4, $sp, 824                   # 8-byte Folded Reload
	sub.w	$s7, $a4, $t8
	sub.w	$s0, $a4, $a3
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 584                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	sub.w	$s4, $a1, $s6
	ld.d	$a2, $sp, 688                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	sub.w	$s2, $a4, $a5
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB1_133
# %bb.136:                              # %._crit_edge968.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB1_132 Depth=2
	sub.w	$s7, $a4, $a6
	sub.w	$s0, $a4, $a0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	sub.w	$s4, $a0, $s6
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	addi.w	$s5, $s5, 1
	sub.w	$s2, $a4, $t0
	ori	$s3, $zero, 1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bne	$s5, $a0, .LBB1_132
	b	.LBB1_2
.LBB1_137:                              # %._crit_edge
	move	$a0, $zero
	ld.d	$s8, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 936                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 944                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 952                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 960
	ret
.Lfunc_end1:
	.size	hypre_SMG2BuildRAPSym, .Lfunc_end1-hypre_SMG2BuildRAPSym
                                        # -- End function
	.globl	hypre_SMG2BuildRAPNoSym         # -- Begin function hypre_SMG2BuildRAPNoSym
	.p2align	5
	.type	hypre_SMG2BuildRAPNoSym,@function
hypre_SMG2BuildRAPNoSym:                # @hypre_SMG2BuildRAPNoSym
# %bb.0:                                # %.split
	addi.d	$sp, $sp, -928
	st.d	$ra, $sp, 920                   # 8-byte Folded Spill
	st.d	$fp, $sp, 912                   # 8-byte Folded Spill
	st.d	$s0, $sp, 904                   # 8-byte Folded Spill
	st.d	$s1, $sp, 896                   # 8-byte Folded Spill
	st.d	$s2, $sp, 888                   # 8-byte Folded Spill
	st.d	$s3, $sp, 880                   # 8-byte Folded Spill
	st.d	$s4, $sp, 872                   # 8-byte Folded Spill
	st.d	$s5, $sp, 864                   # 8-byte Folded Spill
	st.d	$s6, $sp, 856                   # 8-byte Folded Spill
	st.d	$s7, $sp, 848                   # 8-byte Folded Spill
	st.d	$s8, $sp, 840                   # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	ori	$t0, $zero, 1
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s6, $zero, 1
	blt	$a6, $t0, .LBB2_195
# %bb.1:                                # %.preheader885.lr.ph
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 24
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $a1, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %.loopexit883
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$s6, $zero, 1
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	bge	$a4, $a0, .LBB2_195
.LBB2_3:                                # %.preheader885
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_96 Depth 2
                                        #       Child Loop BB2_98 Depth 3
                                        #         Child Loop BB2_182 Depth 4
                                        #         Child Loop BB2_188 Depth 4
                                        #     Child Loop BB2_14 Depth 2
                                        #       Child Loop BB2_16 Depth 3
                                        #         Child Loop BB2_72 Depth 4
                                        #         Child Loop BB2_79 Depth 4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s5, $a5, -1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a5, 4
	alsl.d	$a2, $a5, $a2, 3
	addi.d	$a3, $a5, -1
	addi.d	$fp, $a2, -12
	.p2align	4, , 16
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s5, $s5, 1
	addi.d	$a1, $a1, 4
	addi.d	$fp, $fp, 24
	bne	$a2, $a0, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$s1, $a4, $a1, 3
	add.d	$a0, $a0, $s1
	addi.d	$a3, $sp, 816
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 40
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $s4, 40
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $s2, 40
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a1, 0
	ld.d	$a1, $a2, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $sp, 784                   # 8-byte Folded Spill
	add.d	$s3, $a4, $fp
	st.d	$a5, $sp, 752                   # 8-byte Folded Spill
	add.d	$s0, $a5, $fp
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	add.d	$a1, $a1, $fp
	st.d	$a1, $sp, 768                   # 8-byte Folded Spill
	add.d	$a0, $a0, $s1
	st.d	$a0, $sp, 792                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	st.d	$s7, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	st.d	$s1, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	st.d	$s7, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	st.d	$s1, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	st.d	$zero, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s8
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	addi.w	$s4, $zero, -1
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	move	$a0, $s4
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s8
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	st.d	$s6, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s8
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	st.d	$s7, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s8
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 6
	blt	$a0, $a1, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	move	$a0, $s4
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
.LBB2_7:                                #   in Loop: Header=BB2_3 Depth=1
	ori	$s2, $zero, 1
	st.d	$s2, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $s5
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	st.d	$s1, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s5
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s6, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s5
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	move	$a0, $s4
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a2, $sp, 828
	move	$a0, $s5
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 828
	st.w	$zero, $sp, 836
	ld.d	$s1, $sp, 784                   # 8-byte Folded Reload
	ldx.w	$a1, $s1, $fp
	ld.w	$a2, $s3, -12
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	sub.w	$a0, $a1, $a2
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$s6, $sp, 752                   # 8-byte Folded Reload
	ldx.w	$a2, $s6, $fp
	ld.w	$a3, $s0, -12
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 1
	st.d	$s2, $sp, 828
	st.w	$zero, $sp, 836
	addi.d	$a1, $sp, 804
	ld.d	$s2, $sp, 760                   # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s0, -12
	ld.w	$a4, $s2, 4
	ld.w	$a2, $s0, -8
	ld.w	$a5, $s2, 8
	ld.w	$a3, $s0, -4
	ld.w	$a6, $s0, 4
	sub.d	$a7, $a0, $a1
	sub.d	$t0, $a4, $a2
	sub.d	$a3, $a5, $a3
	sub.w	$a2, $a6, $a2
	slt	$a6, $s4, $a2
	maskeqz	$a2, $a2, $a6
	masknez	$a6, $s4, $a6
	or	$a2, $a2, $a6
	ldx.w	$a6, $s6, $fp
	addi.d	$a2, $a2, 1
	mul.d	$a3, $a2, $a3
	add.d	$t0, $t0, $a3
	sub.w	$a1, $a6, $a1
	slt	$a3, $s4, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s4, $a3
	or	$a1, $a1, $a3
	addi.d	$a3, $a1, 1
	mul.d	$a1, $t0, $a3
	add.w	$t7, $a7, $a1
	ld.d	$t0, $sp, 768                   # 8-byte Folded Reload
	ld.w	$a1, $t0, -12
	ld.w	$a6, $t0, -8
	ld.w	$a7, $t0, -4
	ld.w	$t0, $t0, 4
	sub.d	$t1, $a0, $a1
	sub.d	$t2, $a4, $a6
	sub.d	$a7, $a5, $a7
	sub.w	$a6, $t0, $a6
	slt	$t0, $s4, $a6
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $s4, $t0
	or	$a6, $a6, $t0
	ld.d	$t0, $sp, 776                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $fp
	addi.d	$a6, $a6, 1
	mul.d	$a7, $a6, $a7
	add.d	$t2, $t2, $a7
	sub.w	$a1, $t0, $a1
	slt	$a7, $s4, $a1
	maskeqz	$a1, $a1, $a7
	masknez	$a7, $s4, $a7
	or	$a1, $a1, $a7
	addi.d	$a7, $a1, 1
	mul.d	$a1, $t2, $a7
	add.w	$s8, $t1, $a1
	ld.w	$a1, $sp, 816
	ld.w	$t1, $s3, -12
	ld.w	$t0, $sp, 820
	ld.w	$t2, $s3, -8
	ld.w	$t3, $sp, 824
	ld.w	$t4, $s3, -4
	ld.w	$t5, $s3, 4
	sub.d	$a1, $a1, $t1
	sub.d	$t6, $t0, $t2
	sub.d	$t3, $t3, $t4
	sub.w	$t0, $t5, $t2
	slt	$t2, $s4, $t0
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $s4, $t2
	or	$t0, $t0, $t2
	ldx.w	$t2, $s1, $fp
	addi.d	$t0, $t0, 1
	mul.d	$t3, $t0, $t3
	add.d	$t3, $t6, $t3
	sub.w	$t1, $t2, $t1
	slt	$t2, $s4, $t1
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $s4, $t2
	or	$t1, $t1, $t2
	addi.d	$t2, $t1, 1
	mul.d	$t1, $t3, $t2
	add.w	$ra, $a1, $t1
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	ld.w	$t3, $a1, 0
	ld.w	$t1, $a1, 4
	ld.w	$t4, $a1, 8
	ld.w	$t5, $a1, 16
	sub.d	$a0, $a0, $t3
	sub.d	$a4, $a4, $t1
	sub.d	$a5, $a5, $t4
	sub.w	$t1, $t5, $t1
	slt	$t4, $s4, $t1
	maskeqz	$t1, $t1, $t4
	masknez	$t4, $s4, $t4
	or	$t1, $t1, $t4
	ld.w	$t4, $a1, 12
	addi.d	$t1, $t1, 1
	mul.d	$a5, $t1, $a5
	add.d	$a4, $a4, $a5
	sub.w	$a5, $t4, $t3
	slt	$t3, $s4, $a5
	maskeqz	$a5, $a5, $t3
	masknez	$t3, $s4, $t3
	or	$a5, $a5, $t3
	addi.d	$t3, $a5, 1
	mul.d	$a4, $a4, $t3
	ld.w	$a1, $sp, 804
	ld.w	$a5, $sp, 808
	add.w	$s6, $a0, $a4
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$s7, $a0, 0
	ld.w	$t4, $sp, 812
	slt	$a0, $a1, $a5
	st.d	$a1, $sp, 648                   # 8-byte Folded Spill
	masknez	$a4, $a1, $a0
	st.d	$a5, $sp, 632                   # 8-byte Folded Spill
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a4
	slt	$a4, $a0, $t4
	masknez	$a0, $a0, $a4
	st.d	$t4, $sp, 160                   # 8-byte Folded Spill
	maskeqz	$a4, $t4, $a4
	or	$a0, $a4, $a0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ori	$a4, $zero, 5
	st.d	$s7, $sp, 768                   # 8-byte Folded Spill
	bne	$a1, $a4, .LBB2_90
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_2
# %bb.9:                                # %.preheader880.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB2_2
# %bb.10:                               # %.preheader880.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB2_2
# %bb.11:                               # %.preheader880.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB2_2
# %bb.12:                               # %.preheader878.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t4, $t7
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 4
	move	$t5, $zero
	ld.w	$a4, $a1, 8
	mul.d	$a0, $a0, $t2
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	mul.d	$a5, $a1, $a0
	mul.d	$t0, $t2, $t0
	mul.d	$a4, $t0, $a4
	ld.d	$t2, $sp, 648                   # 8-byte Folded Reload
	mul.d	$t0, $t2, $s7
	sub.d	$s4, $a3, $t2
	sub.d	$t6, $a7, $t2
	st.d	$t6, $sp, 560                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $t0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	sub.d	$a0, $t3, $t2
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	sub.d	$a0, $a2, $a1
	mul.d	$a0, $a0, $a3
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	sub.d	$a0, $a6, $a1
	mul.d	$a0, $a0, $a7
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	sub.d	$a0, $a4, $a5
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	sub.d	$a0, $t1, $a1
	mul.d	$a0, $a0, $t3
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a0, $t2, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 656                   # 8-byte Folded Reload
	slli.d	$a2, $a3, 3
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	sub.d	$a2, $a1, $a2
	st.d	$a2, $sp, 592                   # 8-byte Folded Spill
	addi.d	$a2, $a1, 8
	sub.d	$a3, $a0, $a3
	alsl.d	$a1, $a3, $a2, 3
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a2, 3
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	addi.d	$a4, $a1, 8
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a5, $a2, 16
	alsl.d	$a2, $s5, $a1, 3
	addi.d	$a1, $a2, -8
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ori	$a1, $zero, 19
	sltu	$a2, $a1, $t2
	addi.d	$a3, $s7, -1
	sltui	$a3, $a3, 1
	and	$a1, $a2, $a3
	st.d	$a1, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 576                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t2, 30, 1
	slli.d	$a1, $a0, 1
	slli.d	$a0, $t2, 3
	bstrpick.d	$a0, $a0, 33, 4
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$a5, $sp, 416                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $a5, 3
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	st.d	$a4, $sp, 584                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $a4, 3
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	mul.d	$a0, $a1, $s7
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	slli.d	$a0, $s7, 4
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	slli.d	$s2, $s7, 3
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_13:                               # %._crit_edge1019.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_14 Depth=2
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	add.w	$t4, $t4, $a0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	add.w	$ra, $a0, $ra
	ld.d	$t5, $sp, 320                   # 8-byte Folded Reload
	addi.w	$t5, $t5, 1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	add.w	$s6, $s6, $a0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$t5, $a0, .LBB2_2
.LBB2_14:                               # %.preheader878.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_16 Depth 3
                                        #         Child Loop BB2_72 Depth 4
                                        #         Child Loop BB2_79 Depth 4
	st.d	$t5, $sp, 320                   # 8-byte Folded Spill
	move	$t0, $zero
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               # %._crit_edge.us.us.us.us.us.us1084
                                        #   in Loop: Header=BB2_16 Depth=3
	add.w	$t4, $s4, $s5
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	add.w	$s8, $a0, $s8
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	add.w	$ra, $a0, $ra
	ld.d	$t0, $sp, 792                   # 8-byte Folded Reload
	addi.w	$t0, $t0, 1
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	beq	$t0, $a0, .LBB2_13
.LBB2_16:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_72 Depth 4
                                        #         Child Loop BB2_79 Depth 4
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	st.d	$t0, $sp, 792                   # 8-byte Folded Spill
	beqz	$a0, .LBB2_74
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	st.d	$ra, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a7, $s6, $a0, 3
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a5, $s6, $a0, 3
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$fp, $s6, $a0, 3
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$ra, $s6, $a0, 3
	sltu	$a0, $a7, $ra
	sltu	$a2, $fp, $a5
	and	$a0, $a0, $a2
	move	$a6, $zero
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_86
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$s1, $s6, $a0, 3
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$t7, $s6, $a0, 3
	sltu	$a0, $a7, $t7
	sltu	$a2, $s1, $a5
	and	$a0, $a0, $a2
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_83
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$s4, $s6, $a0, 3
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$s5, $s6, $a0, 3
	sltu	$a0, $a7, $s5
	sltu	$a2, $s4, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_83
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	st.d	$s6, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$s6, $s8, $a0, 3
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	sltu	$a0, $a7, $a0
	sltu	$a2, $s6, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_87
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	st.d	$s8, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 776                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$s7, $a3, $a0, 3
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	sltu	$a0, $a7, $a0
	sltu	$a2, $s7, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_84
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	alsl.d	$s8, $a3, $a1, 3
	alsl.d	$a0, $a3, $a4, 3
	move	$t6, $a0
	sltu	$a0, $a7, $a0
	sltu	$a2, $s8, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_84
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	alsl.d	$t1, $a0, $a1, 3
	alsl.d	$a1, $a0, $a4, 3
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	sltu	$a2, $a7, $a1
	sltu	$a3, $t1, $a5
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_85
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$t2, $t4, $a1, 3
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a1, $t4, $a1, 3
	st.d	$a1, $sp, 640                   # 8-byte Folded Spill
	sltu	$a2, $a7, $a1
	sltu	$a3, $t2, $a5
	and	$a2, $a2, $a3
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	bnez	$a2, .LBB2_85
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a3, $t4, $a1, 3
	st.d	$t4, $sp, 744                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a1, $t4, $a1, 3
	st.d	$a1, $sp, 616                   # 8-byte Folded Spill
	sltu	$a2, $a7, $a1
	st.d	$a3, $sp, 624                   # 8-byte Folded Spill
	sltu	$a3, $a3, $a5
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_82
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t3, $a0, $a1, 3
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 608                   # 8-byte Folded Spill
	sltu	$a2, $a7, $a1
	sltu	$a3, $t3, $a5
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_82
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$t8, $a2, $a1, 3
	alsl.d	$t4, $a2, $a4, 3
	sltu	$a2, $a7, $t4
	sltu	$a3, $t8, $a5
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_82
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	st.d	$a6, $sp, 512                   # 8-byte Folded Spill
	alsl.d	$a6, $a0, $a1, 3
	alsl.d	$s3, $a0, $a4, 3
	sltu	$a2, $a7, $s3
	sltu	$a3, $a6, $a5
	and	$a2, $a2, $a3
	bnez	$a2, .LBB2_81
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$t5, $a0, $a1, 3
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$s0, $a0, $a1, 3
	sltu	$a0, $a7, $s0
	sltu	$a2, $t5, $a5
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_81
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a0, 3
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a0, 3
	sltu	$a0, $a7, $a3
	sltu	$a4, $a2, $a5
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$t0, $a0, $a1, 3
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	sltu	$a0, $a7, $a0
	sltu	$a4, $t0, $a5
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $t7
	sltu	$a4, $s1, $ra
	and	$a0, $a0, $a4
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 520                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_81
# %bb.33:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $s5
	sltu	$a4, $s4, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.34:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $a1
	sltu	$a4, $s6, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.35:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $a5
	sltu	$a4, $s7, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $t6
	sltu	$a4, $s8, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	sltu	$a0, $fp, $a0
	sltu	$a4, $t1, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.38:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	sltu	$a0, $fp, $a0
	sltu	$a4, $t2, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.39:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	sltu	$a0, $fp, $a0
	ld.d	$a4, $sp, 624                   # 8-byte Folded Reload
	sltu	$a4, $a4, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.40:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	sltu	$a0, $fp, $a0
	sltu	$a4, $t3, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.41:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $t4
	sltu	$a4, $t8, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $s3
	sltu	$a4, $a6, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.43:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $s0
	sltu	$a4, $t5, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $fp, $a3
	sltu	$a4, $a2, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sltu	$a0, $fp, $a0
	sltu	$a4, $t0, $ra
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_81
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s1, $s5
	sltu	$a4, $s4, $t7
	and	$a0, $a0, $a4
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_80
# %bb.47:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s1, $a1
	sltu	$a4, $s6, $t7
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.48:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s1, $a5
	sltu	$a4, $s7, $t7
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.49:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s1, $t6
	sltu	$a4, $s8, $t7
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.50:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a4, $t1, $t7
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.51:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a4, $t2, $t7
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.52:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	ld.d	$a4, $sp, 624                   # 8-byte Folded Reload
	sltu	$a4, $a4, $t7
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.53:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a4, $t3, $t7
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.54:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s1, $t4
	sltu	$a4, $t8, $t7
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.55:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s1, $s3
	sltu	$a4, $a6, $t7
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.56:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s1, $s0
	sltu	$a4, $t5, $t7
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.57:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s1, $a3
	sltu	$a4, $a2, $t7
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.58:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a0
	sltu	$a4, $t0, $t7
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.59:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $a1
	sltu	$a4, $s6, $s5
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.60:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $a5
	sltu	$a4, $s7, $s5
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.61:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $t6
	sltu	$a4, $s8, $s5
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.62:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a0
	sltu	$a4, $t1, $s5
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.63:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a0
	sltu	$a4, $t2, $s5
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.64:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a0
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	sltu	$a4, $a1, $s5
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.65:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a0
	sltu	$a4, $t3, $s5
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_80
# %bb.66:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $t4
	sltu	$a4, $t8, $s5
	and	$a0, $a0, $a4
	ld.d	$a5, $sp, 744                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_75
# %bb.67:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $s3
	sltu	$a4, $a6, $s5
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_75
# %bb.68:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $s0
	sltu	$a4, $t5, $s5
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_75
# %bb.69:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	sltu	$a0, $s4, $a3
	sltu	$a3, $a2, $s5
	and	$a0, $a0, $a3
	bnez	$a0, .LBB2_75
# %bb.70:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a0
	sltu	$a3, $t0, $s5
	and	$a0, $a0, $a3
	bnez	$a0, .LBB2_75
# %bb.71:                               # %vector.ph
                                        #   in Loop: Header=BB2_16 Depth=3
	move	$a0, $zero
	move	$a3, $zero
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	st.d	$a1, $sp, 784                   # 8-byte Folded Spill
	add.d	$s5, $a4, $a5
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	add.d	$ra, $a1, $ra
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a4, $a5, $a1, 3
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 328                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_72:                               # %vector.body
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_14 Depth=2
                                        #       Parent Loop BB2_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr0, $s6, $a3
	vldx	$vr1, $t1, $a0
	vldx	$vr2, $a4, $a3
	vfmul.d	$vr1, $vr0, $vr1
	add.d	$a5, $a4, $a3
	vfmul.d	$vr2, $vr1, $vr2
	vldx	$vr3, $t3, $a0
	vldx	$vr4, $a6, $a0
	vstx	$vr2, $a7, $a3
	vld	$vr2, $a5, -8
	vfmul.d	$vr3, $vr0, $vr3
	vfmul.d	$vr4, $vr0, $vr4
	vldx	$vr5, $t8, $a0
	vfmadd.d	$vr3, $vr3, $vr2, $vr4
	vldx	$vr4, $t5, $a0
	vld	$vr6, $a5, -16
	vfmadd.d	$vr2, $vr5, $vr2, $vr3
	vstx	$vr2, $fp, $a3
	vfmul.d	$vr0, $vr0, $vr4
	vfmul.d	$vr0, $vr0, $vr6
	vldx	$vr2, $s8, $a0
	vldx	$vr3, $a2, $a3
	vldx	$vr4, $s7, $a0
	vldx	$vr5, $t2, $a3
	vldx	$vr6, $t0, $a3
	vstx	$vr0, $s1, $a3
	vfmul.d	$vr0, $vr3, $vr4
	vfmadd.d	$vr0, $vr0, $vr5, $vr2
	vfmadd.d	$vr0, $vr1, $vr6, $vr0
	vstx	$vr0, $s4, $a3
	addi.d	$a3, $a3, 16
	add.d	$a0, $a0, $t4
	bne	$a1, $a3, .LBB2_72
# %bb.73:                               # %middle.block
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	move	$a6, $a1
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_15
	b	.LBB2_78
	.p2align	4, , 16
.LBB2_74:                               #   in Loop: Header=BB2_16 Depth=3
	move	$a6, $zero
	move	$s5, $t4
	b	.LBB2_78
	.p2align	4, , 16
.LBB2_75:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $a5
.LBB2_76:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
.LBB2_77:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$s6, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
.LBB2_78:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_16 Depth=3
	move	$a0, $zero
	move	$a2, $zero
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a3, $s8, $a1, 3
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a4, $s8, $a1, 3
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	sub.d	$a5, $a1, $a6
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a6, $s5, $a1, 3
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a7, $s5, $a1, 3
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$t0, $s5, $a1, 3
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$t1, $s6, $a1, 3
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$t2, $s6, $a1, 3
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$t3, $s6, $a1, 3
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$t4, $s6, $a1, 3
	ld.d	$fp, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$t5, $ra, $fp, 3
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$t6, $ra, $a1, 3
	ld.d	$t7, $sp, 656                   # 8-byte Folded Reload
	add.d	$s0, $t7, $ra
	alsl.d	$t7, $s0, $a1, 3
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$t8, $s0, $a1, 3
	alsl.d	$fp, $s0, $fp, 3
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$s0, $s0, $a1, 3
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$s1, $ra, $a1, 3
	.p2align	4, , 16
.LBB2_79:                               # %scalar.ph
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_14 Depth=2
                                        #       Parent Loop BB2_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a3, $a2
	fldx.d	$fa1, $t7, $a0
	fldx.d	$fa2, $a6, $a2
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s3, $a6, $a2
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t1, $a2
	fldx.d	$fa0, $a3, $a2
	fldx.d	$fa1, $t8, $a0
	fldx.d	$fa2, $fp, $a0
	fld.d	$fa3, $s3, -8
	fldx.d	$fa4, $t5, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t2, $a2
	fldx.d	$fa0, $a3, $a2
	fldx.d	$fa1, $s0, $a0
	fld.d	$fa2, $s3, -16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t3, $a2
	fldx.d	$fa0, $a4, $a2
	fldx.d	$fa1, $s1, $a0
	fldx.d	$fa2, $t6, $a0
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $a7, $a2
	fldx.d	$fa3, $a3, $a2
	fldx.d	$fa4, $t7, $a0
	fldx.d	$fa5, $t0, $a2
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	addi.d	$s5, $s5, 1
	fmul.d	$fa1, $fa3, $fa4
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fstx.d	$fa0, $t4, $a2
	addi.d	$s8, $s8, 1
	add.d	$ra, $ra, $s7
	addi.d	$s6, $s6, 1
	addi.d	$a2, $a2, 8
	addi.w	$a5, $a5, -1
	add.d	$a0, $a0, $s2
	bnez	$a5, .LBB2_79
	b	.LBB2_15
.LBB2_80:                               #   in Loop: Header=BB2_16 Depth=3
	ld.d	$s5, $sp, 744                   # 8-byte Folded Reload
	b	.LBB2_76
.LBB2_81:                               #   in Loop: Header=BB2_16 Depth=3
	ld.d	$s5, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	b	.LBB2_77
.LBB2_82:                               #   in Loop: Header=BB2_16 Depth=3
	ld.d	$s5, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	b	.LBB2_88
.LBB2_83:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $t4
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	b	.LBB2_78
.LBB2_84:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $t4
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	move	$ra, $a3
	b	.LBB2_89
.LBB2_85:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $t4
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	b	.LBB2_88
.LBB2_86:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $t4
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	b	.LBB2_78
.LBB2_87:                               #   in Loop: Header=BB2_16 Depth=3
	move	$s5, $t4
.LBB2_88:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
.LBB2_89:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_16 Depth=3
	ld.d	$s6, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	b	.LBB2_78
	.p2align	4, , 16
.LBB2_90:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_2
# %bb.91:                               # %.preheader881.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB2_2
# %bb.92:                               # %.preheader881.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB2_2
# %bb.93:                               # %.preheader881.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB2_2
# %bb.94:                               # %.preheader879.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t4, $t7
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 4
	move	$t5, $zero
	ld.w	$a4, $a1, 8
	mul.d	$a0, $a0, $t2
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	mul.d	$a5, $a1, $a0
	mul.d	$t0, $t2, $t0
	mul.d	$a4, $t0, $a4
	ld.d	$t2, $sp, 648                   # 8-byte Folded Reload
	mul.d	$t0, $t2, $s7
	sub.d	$t6, $a3, $t2
	st.d	$t6, $sp, 392                   # 8-byte Folded Spill
	sub.d	$t6, $a7, $t2
	st.d	$t6, $sp, 384                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $t0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	sub.d	$a0, $t3, $t2
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	sub.d	$a0, $a2, $a1
	mul.d	$a0, $a0, $a3
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	sub.d	$a0, $a6, $a1
	mul.d	$a0, $a0, $a7
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a0, $a4, $a5
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	sub.d	$a0, $t1, $a1
	mul.d	$a0, $a0, $t3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $t2, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 656                   # 8-byte Folded Reload
	slli.d	$a2, $a4, 3
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	sub.d	$a3, $a1, $a2
	st.d	$a3, $sp, 432                   # 8-byte Folded Spill
	addi.d	$a3, $a1, 8
	sub.d	$a4, $a0, $a4
	alsl.d	$a1, $a4, $a3, 3
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	alsl.d	$t0, $a0, $a3, 3
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	addi.d	$a6, $a1, 8
	alsl.d	$a3, $a0, $a1, 3
	addi.d	$a7, $a3, 16
	alsl.d	$a3, $s5, $a1, 3
	addi.d	$a1, $a3, -8
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a1, 3
	addi.d	$t3, $a3, 8
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	sub.d	$a1, $a5, $a2
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	ori	$a1, $zero, 23
	sltu	$a2, $a1, $t2
	addi.d	$a3, $s7, -1
	sltui	$a3, $a3, 1
	and	$a1, $a2, $a3
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	addi.d	$a2, $a5, 8
	alsl.d	$a1, $a4, $a2, 3
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a1, 3
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a2, 3
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a1, 3
	addi.d	$a1, $a2, 8
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t2, 30, 1
	slli.d	$a1, $a0, 1
	slli.d	$a0, $t2, 3
	bstrpick.d	$a0, $a0, 33, 4
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$a7, $sp, 280                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $a7, 3
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$a6, $sp, 424                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $a6, 3
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	mul.d	$a0, $a1, $s7
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a0, $s7, 4
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	slli.d	$t7, $s7, 3
	st.d	$t0, $sp, 360                   # 8-byte Folded Spill
	st.d	$t3, $sp, 352                   # 8-byte Folded Spill
	st.d	$t7, $sp, 760                   # 8-byte Folded Spill
	b	.LBB2_96
	.p2align	4, , 16
.LBB2_95:                               # %._crit_edge900.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_96 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$t4, $t4, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.w	$ra, $a0, $ra
	ld.d	$t5, $sp, 152                   # 8-byte Folded Reload
	addi.w	$t5, $t5, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$s6, $s6, $a0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$t5, $a0, .LBB2_2
.LBB2_96:                               # %.preheader879.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_98 Depth 3
                                        #         Child Loop BB2_182 Depth 4
                                        #         Child Loop BB2_188 Depth 4
	st.d	$t5, $sp, 152                   # 8-byte Folded Spill
	move	$t6, $zero
	b	.LBB2_98
	.p2align	4, , 16
.LBB2_97:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	add.w	$t4, $a0, $a2
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	add.w	$s8, $a0, $s8
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	add.w	$ra, $a0, $ra
	ld.d	$t6, $sp, 624                   # 8-byte Folded Reload
	addi.w	$t6, $t6, 1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 352                   # 8-byte Folded Reload
	beq	$t6, $a0, .LBB2_95
.LBB2_98:                               # %.preheader877.us.us.us.us.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_96 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_182 Depth 4
                                        #         Child Loop BB2_188 Depth 4
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	st.d	$t6, $sp, 624                   # 8-byte Folded Spill
	beqz	$a0, .LBB2_184
# %bb.99:                               # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a3, $s6, $a0, 3
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a6, $s6, $a0, 3
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$s0, $s6, $a0, 3
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$t2, $s6, $a0, 3
	sltu	$a0, $a3, $t2
	sltu	$a2, $s0, $a6
	and	$a0, $a0, $a2
	move	$fp, $zero
	ld.d	$a7, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 704                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_189
# %bb.100:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$s2, $s6, $a0, 3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$t8, $s6, $a0, 3
	sltu	$a0, $a3, $t8
	sltu	$a2, $s2, $a6
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_189
# %bb.101:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$s3, $s6, $a0, 3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a2, $s6, $a0, 3
	sltu	$a0, $a3, $a2
	sltu	$a4, $s3, $a6
	and	$a0, $a0, $a4
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_189
# %bb.102:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a4, $s8, $a0, 3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 3
	move	$t5, $a0
	sltu	$a0, $a3, $a0
	st.d	$a4, $sp, 616                   # 8-byte Folded Spill
	sltu	$a4, $a4, $a6
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_189
# %bb.103:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a4, $ra, $a0, 3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	sltu	$a0, $a3, $a0
	st.d	$a4, $sp, 640                   # 8-byte Folded Spill
	sltu	$a4, $a4, $a6
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_189
# %bb.104:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	alsl.d	$a4, $ra, $a5, 3
	alsl.d	$a0, $ra, $t0, 3
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	sltu	$a0, $a3, $a0
	st.d	$a4, $sp, 792                   # 8-byte Folded Spill
	sltu	$a4, $a4, $a6
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_189
# %bb.105:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	add.d	$a0, $a0, $ra
	alsl.d	$a5, $a0, $a5, 3
	alsl.d	$a4, $a0, $t0, 3
	st.d	$a4, $sp, 592                   # 8-byte Folded Spill
	sltu	$a4, $a3, $a4
	move	$t0, $a5
	sltu	$a5, $a5, $a6
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_189
# %bb.106:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a5, $t4, $a4, 3
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a4, $t4, $a4, 3
	st.d	$a4, $sp, 584                   # 8-byte Folded Spill
	sltu	$a4, $a3, $a4
	st.d	$a5, $sp, 464                   # 8-byte Folded Spill
	sltu	$a5, $a5, $a6
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_189
# %bb.107:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a5, $t4, $a4, 3
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a4, $t4, $a4, 3
	st.d	$a4, $sp, 576                   # 8-byte Folded Spill
	sltu	$a4, $a3, $a4
	st.d	$a5, $sp, 568                   # 8-byte Folded Spill
	sltu	$a5, $a5, $a6
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_189
# %bb.108:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	alsl.d	$s5, $ra, $a1, 3
	alsl.d	$a4, $ra, $t3, 3
	st.d	$a4, $sp, 560                   # 8-byte Folded Spill
	sltu	$a4, $a3, $a4
	sltu	$a5, $s5, $a6
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_189
# %bb.109:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	st.d	$s6, $sp, 752                   # 8-byte Folded Spill
	alsl.d	$s6, $a0, $a1, 3
	alsl.d	$a1, $a0, $t3, 3
	st.d	$a1, $sp, 552                   # 8-byte Folded Spill
	sltu	$a4, $a3, $a1
	sltu	$a5, $s6, $a6
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_190
# %bb.110:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$s7, $ra, $a1, 3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 544                   # 8-byte Folded Spill
	sltu	$a4, $a3, $a1
	sltu	$a5, $s7, $a6
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_190
# %bb.111:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	alsl.d	$s1, $ra, $a7, 3
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a4, $ra, $a1, 3
	st.d	$a4, $sp, 536                   # 8-byte Folded Spill
	sltu	$a4, $a3, $a4
	sltu	$a5, $s1, $a6
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_190
# %bb.112:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	st.d	$s8, $sp, 784                   # 8-byte Folded Spill
	alsl.d	$t3, $a0, $a7, 3
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 528                   # 8-byte Folded Spill
	sltu	$a4, $a3, $a1
	sltu	$a5, $t3, $a6
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_191
# %bb.113:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	alsl.d	$s8, $ra, $t1, 3
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a4, $ra, $a1, 3
	st.d	$a4, $sp, 520                   # 8-byte Folded Spill
	sltu	$a4, $a3, $a4
	sltu	$a5, $s8, $a6
	and	$a4, $a4, $a5
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	bnez	$a4, .LBB2_191
# %bb.114:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	alsl.d	$fp, $a0, $t1, 3
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 512                   # 8-byte Folded Spill
	sltu	$a4, $a3, $a1
	sltu	$a5, $fp, $a6
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_193
# %bb.115:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	st.d	$t4, $sp, 744                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$s4, $a0, $a1, 3
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	sltu	$a4, $a3, $a1
	sltu	$a5, $s4, $a6
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_192
# %bb.116:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$t4, $ra, $a1, 3
	alsl.d	$a4, $ra, $a7, 3
	move	$t6, $a4
	sltu	$a4, $a3, $a4
	sltu	$a5, $t4, $a6
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_192
# %bb.117:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	st.d	$ra, $sp, 776                   # 8-byte Folded Spill
	alsl.d	$t1, $a0, $a1, 3
	alsl.d	$a1, $a0, $a7, 3
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	sltu	$a4, $a3, $a1
	sltu	$a5, $t1, $a6
	and	$a4, $a4, $a5
	bnez	$a4, .LBB2_185
# %bb.118:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$ra, $a0, $a1, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	sltu	$a0, $a3, $a0
	sltu	$a4, $ra, $a6
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.119:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$t7, $a1, $a0, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	sltu	$a0, $a3, $a0
	sltu	$a4, $t7, $a6
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.120:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a7, $a0, $a1, 3
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	sltu	$a0, $a3, $a0
	sltu	$a4, $a7, $a6
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.121:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	sltu	$a0, $s0, $t8
	sltu	$a4, $s2, $t2
	and	$a0, $a0, $a4
	ld.d	$a5, $sp, 792                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_185
# %bb.122:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	sltu	$a0, $s0, $a2
	sltu	$a4, $s3, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.123:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	sltu	$a0, $s0, $t5
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	sltu	$a4, $a1, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.124:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	sltu	$a4, $a1, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.125:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $a5, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.126:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	move	$a6, $t0
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $t0, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.127:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	sltu	$a4, $a1, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.128:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	sltu	$a4, $a1, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.129:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $s5, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.130:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $s6, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.131:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $s7, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.132:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $s1, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.133:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $t3, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.134:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $s8, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.135:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $fp, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.136:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $s4, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.137:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	sltu	$a0, $s0, $t6
	sltu	$a4, $t4, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.138:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $t1, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.139:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $ra, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.140:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $t7, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.141:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a0
	sltu	$a4, $a7, $t2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.142:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	sltu	$a0, $s2, $a2
	sltu	$a4, $s3, $t8
	and	$a0, $a0, $a4
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_185
# %bb.143:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	sltu	$a0, $s2, $t5
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	sltu	$a4, $a1, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.144:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	sltu	$a4, $a1, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.145:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $a5, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.146:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $a6, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.147:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $t2, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.148:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	sltu	$a4, $a1, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.149:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $s5, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.150:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $s6, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.151:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $s7, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.152:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $s1, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.153:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $t3, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.154:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $s8, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.155:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $fp, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.156:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $s4, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.157:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	sltu	$a0, $s2, $t6
	sltu	$a4, $t4, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.158:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $t1, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.159:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $ra, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.160:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $t7, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.161:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a0
	sltu	$a4, $a7, $t8
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.162:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	sltu	$a0, $s3, $t5
	ld.d	$t8, $sp, 616                   # 8-byte Folded Reload
	sltu	$a4, $t8, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.163:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	sltu	$a4, $a1, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.164:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $a5, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.165:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $a6, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.166:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $t2, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.167:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	sltu	$a4, $a1, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.168:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $s5, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.169:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $s6, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.170:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $s7, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.171:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $s1, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.172:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $t3, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.173:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $s8, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.174:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $fp, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.175:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $s4, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.176:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	sltu	$a0, $s3, $t6
	sltu	$a4, $t4, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.177:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $t1, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.178:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $ra, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.179:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a4, $t7, $a2
	and	$a0, $a0, $a4
	bnez	$a0, .LBB2_185
# %bb.180:                              # %vector.memcheck1519
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	sltu	$a0, $s3, $a0
	sltu	$a2, $a7, $a2
	and	$a0, $a0, $a2
	bnez	$a0, .LBB2_185
# %bb.181:                              # %vector.ph1947
                                        #   in Loop: Header=BB2_98 Depth=3
	move	$a0, $zero
	move	$a4, $zero
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	add.d	$a1, $a5, $a1
	st.d	$a1, $sp, 784                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 744                   # 8-byte Folded Reload
	add.d	$a2, $a5, $t6
	ld.d	$a1, $sp, 752                   # 8-byte Folded Reload
	add.d	$a1, $a5, $a1
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	add.d	$a1, $a5, $a1
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a5, $t6, $a1, 3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 640                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_182:                              # %vector.body1950
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_96 Depth=2
                                        #       Parent Loop BB2_98 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr0, $t8, $a4
	vldx	$vr1, $a6, $a0
	vfmul.d	$vr1, $vr0, $vr1
	vldx	$vr2, $fp, $a0
	vldx	$vr3, $a5, $a4
	vldx	$vr4, $s8, $a0
	add.d	$a6, $a5, $a4
	vfmul.d	$vr2, $vr0, $vr2
	vfmadd.d	$vr2, $vr1, $vr3, $vr2
	vfmadd.d	$vr2, $vr4, $vr3, $vr2
	vstx	$vr2, $a3, $a4
	vldx	$vr2, $s4, $a0
	vldx	$vr3, $t1, $a0
	vld	$vr5, $a6, -8
	vldx	$vr6, $t4, $a0
	vfmul.d	$vr2, $vr0, $vr2
	vfmul.d	$vr3, $vr0, $vr3
	vfmadd.d	$vr2, $vr2, $vr5, $vr3
	vfmadd.d	$vr2, $vr6, $vr5, $vr2
	vldx	$vr3, $ra, $a0
	vldx	$vr5, $t3, $a0
	vld	$vr6, $a6, -16
	vldx	$vr7, $s1, $a0
	vfmul.d	$vr3, $vr0, $vr3
	vfmul.d	$vr5, $vr0, $vr5
	vfmadd.d	$vr3, $vr3, $vr6, $vr5
	vfmadd.d	$vr3, $vr7, $vr6, $vr3
	ld.d	$a6, $sp, 792                   # 8-byte Folded Reload
	vldx	$vr5, $a6, $a0
	move	$a6, $t0
	vldx	$vr6, $t7, $a4
	vldx	$vr7, $t6, $a0
	vldx	$vr8, $t2, $a4
	vldx	$vr9, $a7, $a4
	vldx	$vr10, $s7, $a0
	vfmul.d	$vr7, $vr6, $vr7
	vfmadd.d	$vr5, $vr7, $vr8, $vr5
	vfmadd.d	$vr1, $vr1, $vr9, $vr5
	vfmadd.d	$vr1, $vr6, $vr10, $vr1
	vldx	$vr5, $s6, $a0
	vldx	$vr6, $s5, $a0
	vstx	$vr2, $s0, $a4
	vstx	$vr3, $s2, $a4
	vfmadd.d	$vr0, $vr0, $vr5, $vr1
	vfmadd.d	$vr0, $vr6, $vr8, $vr0
	vfmadd.d	$vr0, $vr4, $vr9, $vr0
	vstx	$vr0, $s3, $a4
	addi.d	$a4, $a4, 16
	add.d	$a0, $a0, $t5
	bne	$a1, $a4, .LBB2_182
# %bb.183:                              # %middle.block1983
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	move	$fp, $a1
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 752                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_97
	b	.LBB2_187
	.p2align	4, , 16
.LBB2_184:                              #   in Loop: Header=BB2_98 Depth=3
	move	$fp, $zero
	move	$a2, $t4
	b	.LBB2_187
	.p2align	4, , 16
.LBB2_185:                              #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a2, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
.LBB2_186:                              # %scalar.ph1945.preheader
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$s6, $sp, 752                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
.LBB2_187:                              # %scalar.ph1945.preheader
                                        #   in Loop: Header=BB2_98 Depth=3
	move	$a3, $zero
	move	$a6, $zero
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a7, $s8, $a0, 3
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 792                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t1, $a0, $fp
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$t2, $a2, $a0, 3
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$t5, $s6, $a0, 3
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$t7, $s6, $a0, 3
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$t8, $s6, $a0, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$fp, $s6, $a0, 3
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$s0, $ra, $a5, 3
	ld.d	$t0, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$s1, $ra, $t0, 3
	ld.d	$a4, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$s2, $ra, $a4, 3
	ld.d	$t6, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$s3, $ra, $t6, 3
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$s4, $ra, $a1, 3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	add.d	$a0, $a0, $ra
	alsl.d	$s5, $a0, $t6, 3
	alsl.d	$t4, $a0, $a5, 3
	ld.d	$a5, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$s7, $a0, $a5, 3
	alsl.d	$t0, $a0, $t0, 3
	ld.d	$a5, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$t3, $a0, $a5, 3
	alsl.d	$t6, $a0, $a4, 3
	alsl.d	$a5, $a0, $a1, 3
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a4, $ra, $a1, 3
	.p2align	4, , 16
.LBB2_188:                              # %scalar.ph1945
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_96 Depth=2
                                        #       Parent Loop BB2_98 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a7, $a6
	fldx.d	$fa1, $s5, $a3
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa2, $t4, $a3
	fldx.d	$fa3, $t2, $a6
	fldx.d	$fa4, $s0, $a3
	add.d	$a1, $t2, $a6
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t5, $a6
	fldx.d	$fa0, $a7, $a6
	fldx.d	$fa1, $s7, $a3
	fldx.d	$fa2, $t0, $a3
	fld.d	$fa3, $a1, -8
	fldx.d	$fa4, $s1, $a3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t7, $a6
	fldx.d	$fa0, $a7, $a6
	fldx.d	$fa1, $t3, $a3
	fldx.d	$fa2, $t6, $a3
	fld.d	$fa3, $a1, -16
	fldx.d	$fa4, $s2, $a3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t8, $a6
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	fldx.d	$fa0, $a1, $a6
	fldx.d	$fa1, $a0, $a3
	fldx.d	$fa2, $s3, $a3
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	fldx.d	$fa3, $a1, $a6
	fldx.d	$fa4, $a7, $a6
	fldx.d	$fa5, $s5, $a3
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	fldx.d	$fa6, $a1, $a6
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fldx.d	$fa2, $a4, $a3
	fmul.d	$fa5, $fa4, $fa5
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fldx.d	$fa5, $a5, $a3
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fldx.d	$fa1, $s4, $a3
	fldx.d	$fa2, $s0, $a3
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	addi.d	$a2, $a2, 1
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fstx.d	$fa0, $fp, $a6
	addi.d	$s8, $s8, 1
	ld.d	$a1, $sp, 768                   # 8-byte Folded Reload
	add.d	$ra, $ra, $a1
	addi.d	$s6, $s6, 1
	addi.d	$a6, $a6, 8
	addi.w	$t1, $t1, -1
	ld.d	$a1, $sp, 760                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a1
	bnez	$t1, .LBB2_188
	b	.LBB2_97
.LBB2_189:                              #   in Loop: Header=BB2_98 Depth=3
	move	$a2, $t4
	b	.LBB2_187
.LBB2_190:                              #   in Loop: Header=BB2_98 Depth=3
	move	$a2, $t4
	ld.d	$s6, $sp, 752                   # 8-byte Folded Reload
	b	.LBB2_187
.LBB2_191:                              #   in Loop: Header=BB2_98 Depth=3
	move	$a2, $t4
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 752                   # 8-byte Folded Reload
	b	.LBB2_187
.LBB2_192:                              #   in Loop: Header=BB2_98 Depth=3
	ld.d	$a2, $sp, 744                   # 8-byte Folded Reload
	b	.LBB2_194
.LBB2_193:                              #   in Loop: Header=BB2_98 Depth=3
	move	$a2, $t4
.LBB2_194:                              # %scalar.ph1945.preheader
                                        #   in Loop: Header=BB2_98 Depth=3
	ld.d	$s8, $sp, 784                   # 8-byte Folded Reload
	b	.LBB2_186
.LBB2_195:                              # %._crit_edge
	move	$a0, $zero
	ld.d	$s8, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 856                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 864                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 904                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 912                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 920                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 928
	ret
.Lfunc_end2:
	.size	hypre_SMG2BuildRAPNoSym, .Lfunc_end2-hypre_SMG2BuildRAPNoSym
                                        # -- End function
	.globl	hypre_SMG2RAPPeriodicSym        # -- Begin function hypre_SMG2RAPPeriodicSym
	.p2align	5
	.type	hypre_SMG2RAPPeriodicSym,@function
hypre_SMG2RAPPeriodicSym:               # @hypre_SMG2RAPPeriodicSym
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 60
	ori	$fp, $zero, 1
	bne	$a1, $fp, .LBB3_40
# %bb.1:                                # %.split
	ld.d	$s1, $a0, 8
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	blt	$a0, $fp, .LBB3_40
# %bb.2:                                # %.lr.ph
	addi.w	$a0, $zero, -1
	move	$s3, $zero
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	vrepli.b	$vr5, 0
	lu52i.d	$a0, $zero, 1024
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	vst	$vr5, $sp, 32                   # 16-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %._crit_edge
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $s1, 8
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB3_40
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
                                        #       Child Loop BB3_12 Depth 3
                                        #         Child Loop BB3_24 Depth 4
                                        #         Child Loop BB3_15 Depth 4
                                        #     Child Loop BB3_31 Depth 2
                                        #       Child Loop BB3_33 Depth 3
                                        #         Child Loop BB3_36 Depth 4
                                        #         Child Loop BB3_39 Depth 4
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 40
	ld.d	$s8, $s1, 0
	slli.d	$a1, $s3, 4
	alsl.d	$fp, $s3, $a1, 3
	ld.d	$s7, $a0, 0
	add.d	$s6, $s8, $fp
	st.d	$zero, $sp, 152
	st.w	$zero, $sp, 160
	addi.d	$a2, $sp, 152
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 152
	st.w	$zero, $sp, 160
	addi.d	$a2, $sp, 152
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 152
	st.w	$zero, $sp, 160
	addi.d	$a2, $sp, 152
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $sp, 152
	st.w	$zero, $sp, 160
	addi.d	$a2, $sp, 152
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 152
	st.w	$zero, $sp, 160
	addi.d	$a2, $sp, 152
	move	$a0, $s0
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a1, $sp, 140
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	vld	$vr5, $sp, 32                   # 16-byte Folded Reload
	ld.w	$a0, $sp, 140
	ld.w	$a1, $sp, 144
	ld.w	$a4, $sp, 148
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a2, $a4
	masknez	$a2, $a2, $a3
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB3_3
# %bb.5:                                # %.preheader332.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	blt	$a3, $a2, .LBB3_3
# %bb.6:                                # %.preheader332.lr.ph.split.us
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a2, $s7, $fp
	ldx.w	$a3, $s8, $fp
	ldx.w	$a4, $s7, $fp
	ld.w	$a5, $s6, 8
	ld.w	$a6, $a2, 8
	ld.w	$a7, $s6, 4
	ld.w	$t0, $a2, 4
	ld.w	$t1, $a2, 16
	sub.d	$a5, $a5, $a6
	sub.d	$a3, $a3, $a4
	sub.d	$a6, $a7, $t0
	sub.w	$a7, $t1, $t0
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	slt	$t0, $t1, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t1, $t0
	or	$a7, $a7, $t0
	ld.w	$a2, $a2, 12
	addi.d	$a7, $a7, 1
	mul.d	$a5, $a7, $a5
	add.d	$a5, $a6, $a5
	sub.w	$a2, $a2, $a4
	slt	$a4, $t1, $a2
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $t1, $a4
	or	$a2, $a2, $a4
	addi.d	$a2, $a2, 1
	mul.d	$a4, $a5, $a2
	add.w	$a5, $a4, $a3
	sub.d	$a3, $a2, $a0
	sub.d	$a4, $a7, $a1
	mul.d	$fp, $a2, $a4
	ori	$a2, $zero, 1
	ori	$a7, $zero, 8
	vldi	$vr6, -1024
	vld	$vr7, $sp, 0                    # 16-byte Folded Reload
	blt	$a1, $a2, .LBB3_27
# %bb.7:                                # %.preheader332.lr.ph.split.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB3_27
# %bb.8:                                # %.preheader330.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
	addi.d	$a2, $a0, -1
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a4, $a2, $s5, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a4, $a2, $s4, 3
	addi.d	$t0, $a4, 8
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	addi.d	$t1, $a4, -8
	alsl.d	$t2, $a2, $a4, 3
	alsl.d	$a4, $a2, $s2, 3
	addi.d	$t3, $a4, 8
	alsl.d	$a2, $a2, $s1, 3
	addi.d	$t4, $a2, 8
	bstrpick.d	$a2, $a0, 30, 1
	slli.d	$t5, $a2, 1
	move	$t6, $a5
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %._crit_edge340.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a6, $a6, 1
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	add.w	$t6, $t6, $fp
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$a6, $a2, .LBB3_27
.LBB3_10:                               # %.preheader330.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_12 Depth 3
                                        #         Child Loop BB3_24 Depth 4
                                        #         Child Loop BB3_15 Depth 4
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
	move	$t7, $zero
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_12 Depth=3
	addi.w	$t7, $t7, 1
	add.w	$t6, $a3, $t6
	beq	$t7, $a1, .LBB3_9
.LBB3_12:                               # %.preheader328.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_24 Depth 4
                                        #         Child Loop BB3_15 Depth 4
	bgeu	$a0, $a7, .LBB3_16
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=3
	move	$fp, $zero
.LBB3_14:                               # %scalar.ph628.preheader
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$t8, $t6, $t1, 3
	alsl.d	$s0, $t6, $s2, 3
	alsl.d	$s6, $t6, $s5, 3
	alsl.d	$s8, $t6, $s1, 3
	alsl.d	$ra, $t6, $s4, 3
	sub.d	$fp, $a0, $fp
	.p2align	4, , 16
.LBB3_15:                               # %scalar.ph628
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $t8, 0
	fld.d	$fa1, $s0, 0
	fld.d	$fa2, $s6, 0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $s6, 0
	fld.d	$fa0, $s8, 0
	fld.d	$fa1, $ra, 0
	fmadd.d	$fa0, $fa0, $fa6, $fa1
	fst.d	$fa0, $ra, 0
	addi.d	$t6, $t6, 1
	addi.d	$t8, $t8, 8
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, 8
	addi.d	$s8, $s8, 8
	addi.w	$fp, $fp, -1
	addi.d	$ra, $ra, 8
	bnez	$fp, .LBB3_15
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_16:                               # %vector.memcheck584
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$t8, $t6, $s5, 3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	alsl.d	$s6, $t6, $s4, 3
	alsl.d	$a4, $t6, $t0, 3
	sltu	$a6, $t8, $a4
	sltu	$fp, $s6, $a2
	and	$a6, $a6, $fp
	move	$fp, $zero
	bnez	$a6, .LBB3_14
# %bb.17:                               # %vector.memcheck584
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$s8, $t6, $t1, 3
	alsl.d	$a6, $t6, $t2, 3
	sltu	$s0, $t8, $a6
	sltu	$s3, $s8, $a2
	and	$s0, $s0, $s3
	bnez	$s0, .LBB3_14
# %bb.18:                               # %vector.memcheck584
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$ra, $t6, $s2, 3
	alsl.d	$s7, $t6, $t3, 3
	sltu	$s0, $t8, $s7
	sltu	$s3, $ra, $a2
	and	$s0, $s0, $s3
	bnez	$s0, .LBB3_14
# %bb.19:                               # %vector.memcheck584
                                        #   in Loop: Header=BB3_12 Depth=3
	alsl.d	$s0, $t6, $s1, 3
	alsl.d	$s3, $t6, $t4, 3
	sltu	$a7, $t8, $s3
	sltu	$a2, $s0, $a2
	and	$a2, $a7, $a2
	bnez	$a2, .LBB3_26
# %bb.20:                               # %vector.memcheck584
                                        #   in Loop: Header=BB3_12 Depth=3
	sltu	$a2, $s6, $a6
	sltu	$a6, $s8, $a4
	and	$a2, $a2, $a6
	ori	$a7, $zero, 8
	bnez	$a2, .LBB3_14
# %bb.21:                               # %vector.memcheck584
                                        #   in Loop: Header=BB3_12 Depth=3
	sltu	$a2, $s6, $s7
	sltu	$a6, $ra, $a4
	and	$a2, $a2, $a6
	bnez	$a2, .LBB3_14
# %bb.22:                               # %vector.memcheck584
                                        #   in Loop: Header=BB3_12 Depth=3
	sltu	$a2, $s6, $s3
	sltu	$a4, $s0, $a4
	and	$a2, $a2, $a4
	bnez	$a2, .LBB3_14
# %bb.23:                               # %vector.ph630
                                        #   in Loop: Header=BB3_12 Depth=3
	add.d	$t6, $t5, $t6
	move	$a4, $t5
	.p2align	4, , 16
.LBB3_24:                               # %vector.body633
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $s8, 0
	vld	$vr1, $ra, 0
	vld	$vr2, $t8, 0
	vld	$vr3, $s0, 0
	vld	$vr4, $s6, 0
	vfadd.d	$vr0, $vr0, $vr1
	vfadd.d	$vr0, $vr2, $vr0
	vst	$vr0, $t8, 0
	vfmadd.d	$vr0, $vr3, $vr7, $vr4
	vst	$vr0, $s6, 0
	addi.d	$a4, $a4, -2
	addi.d	$s6, $s6, 16
	addi.d	$s0, $s0, 16
	addi.d	$t8, $t8, 16
	addi.d	$ra, $ra, 16
	addi.d	$s8, $s8, 16
	bnez	$a4, .LBB3_24
# %bb.25:                               # %middle.block641
                                        #   in Loop: Header=BB3_12 Depth=3
	move	$fp, $t5
	beq	$t5, $a0, .LBB3_11
	b	.LBB3_14
.LBB3_26:                               #   in Loop: Header=BB3_12 Depth=3
	ori	$a7, $zero, 8
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_27:                               # %.preheader331.lr.ph.split.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 1
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	blt	$a1, $a2, .LBB3_3
# %bb.28:                               # %.preheader331.lr.ph.split.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB3_3
# %bb.29:                               # %.preheader329.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
	sub.d	$a2, $s1, $s2
	sub.d	$a4, $t8, $s2
	sub.d	$a7, $t8, $s1
	sltui	$a2, $a2, 32
	sltui	$a4, $a4, 32
	or	$a2, $a2, $a4
	sltui	$a4, $a7, 32
	or	$a7, $a2, $a4
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$t0, $a2, 2
	addi.d	$t1, $s2, 16
	addi.d	$t2, $t8, 16
	addi.d	$t3, $s1, 16
	b	.LBB3_31
	.p2align	4, , 16
.LBB3_30:                               # %._crit_edge427.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB3_31 Depth=2
	addi.w	$a6, $a6, 1
	add.w	$a5, $a5, $fp
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$a6, $a2, .LBB3_3
.LBB3_31:                               # %.preheader329.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_33 Depth 3
                                        #         Child Loop BB3_36 Depth 4
                                        #         Child Loop BB3_39 Depth 4
	move	$t4, $zero
	b	.LBB3_33
	.p2align	4, , 16
.LBB3_32:                               # %._crit_edge.us.us.us.us.us.us461
                                        #   in Loop: Header=BB3_33 Depth=3
	addi.w	$t4, $t4, 1
	add.w	$a5, $a3, $t5
	beq	$t4, $a1, .LBB3_30
.LBB3_33:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_36 Depth 4
                                        #         Child Loop BB3_39 Depth 4
	sltui	$a2, $a0, 4
	or	$a2, $a2, $a7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB3_35
# %bb.34:                               #   in Loop: Header=BB3_33 Depth=3
	move	$a2, $zero
	move	$t5, $a5
	b	.LBB3_38
	.p2align	4, , 16
.LBB3_35:                               # %vector.ph
                                        #   in Loop: Header=BB3_33 Depth=3
	add.d	$t5, $t0, $a5
	alsl.d	$a4, $a5, $t1, 3
	alsl.d	$a2, $a5, $t2, 3
	alsl.d	$a5, $a5, $t3, 3
	move	$t6, $t0
	.p2align	4, , 16
.LBB3_36:                               # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_31 Depth=2
                                        #       Parent Loop BB3_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr5, $a4, -16
	vst	$vr5, $a4, 0
	vst	$vr5, $a5, -16
	vst	$vr5, $a5, 0
	vst	$vr5, $a2, -16
	vst	$vr5, $a2, 0
	addi.d	$t6, $t6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a2, $a2, 32
	addi.d	$a5, $a5, 32
	bnez	$t6, .LBB3_36
# %bb.37:                               # %middle.block
                                        #   in Loop: Header=BB3_33 Depth=3
	move	$a2, $t0
	beq	$t0, $a0, .LBB3_32
.LBB3_38:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_33 Depth=3
	alsl.d	$a4, $t5, $s2, 3
	alsl.d	$a5, $t5, $s1, 3
	alsl.d	$t6, $t5, $t8, 3
	sub.d	$t7, $a0, $a2
	.p2align	4, , 16
.LBB3_39:                               # %scalar.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_31 Depth=2
                                        #       Parent Loop BB3_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $a4, 0
	st.d	$zero, $a5, 0
	st.d	$zero, $t6, 0
	addi.d	$t5, $t5, 1
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.w	$t7, $t7, -1
	addi.d	$t6, $t6, 8
	bnez	$t7, .LBB3_39
	b	.LBB3_32
.LBB3_40:                               # %.loopexit335
	move	$a0, $zero
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end3:
	.size	hypre_SMG2RAPPeriodicSym, .Lfunc_end3-hypre_SMG2RAPPeriodicSym
                                        # -- End function
	.globl	hypre_SMG2RAPPeriodicNoSym      # -- Begin function hypre_SMG2RAPPeriodicNoSym
	.p2align	5
	.type	hypre_SMG2RAPPeriodicNoSym,@function
hypre_SMG2RAPPeriodicNoSym:             # @hypre_SMG2RAPPeriodicNoSym
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
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a0, 60
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB4_65
# %bb.1:                                # %.preheader205.split
	ld.d	$a2, $a0, 8
	ld.w	$a0, $a2, 8
	blt	$a0, $a1, .LBB4_65
# %bb.2:                                # %.lr.ph
	addi.w	$a0, $zero, -1
	move	$s1, $zero
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, -1
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ori	$a3, $zero, 1
	lu32i.d	$a3, -1
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s5, $zero, 20
	vrepli.b	$vr4, 0
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	vst	$vr4, $sp, 0                    # 16-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %._crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB4_65
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
                                        #       Child Loop BB4_12 Depth 3
                                        #         Child Loop BB4_51 Depth 4
                                        #         Child Loop BB4_56 Depth 4
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 40
	ld.d	$a1, $a2, 0
	slli.d	$a2, $s1, 4
	alsl.d	$a2, $s1, $a2, 3
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	add.d	$s0, $a1, $a2
	st.d	$zero, $sp, 268
	st.w	$zero, $sp, 276
	addi.d	$a2, $sp, 268
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 268
	st.w	$zero, $sp, 276
	addi.d	$a2, $sp, 268
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 268
	st.w	$zero, $sp, 276
	addi.d	$a2, $sp, 268
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $sp, 268
	st.w	$zero, $sp, 276
	addi.d	$a2, $sp, 268
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 268
	st.w	$zero, $sp, 276
	addi.d	$a2, $sp, 268
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	st.d	$s2, $sp, 268
	st.w	$zero, $sp, 276
	addi.d	$a2, $sp, 268
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 268
	st.w	$zero, $sp, 276
	addi.d	$a2, $sp, 268
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $sp, 268
	st.w	$zero, $sp, 276
	addi.d	$a2, $sp, 268
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 268
	st.w	$zero, $sp, 276
	addi.d	$a2, $sp, 268
	move	$a0, $fp
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $sp, 256
	st.d	$s0, $sp, 192                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 0                    # 16-byte Folded Reload
	ld.w	$a0, $sp, 256
	ld.w	$s1, $sp, 260
	ld.w	$a3, $sp, 264
	slt	$a1, $a0, $s1
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a1, $a1, $a2
	slt	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ori	$a2, $zero, 1
	blt	$a1, $s2, .LBB4_3
# %bb.5:                                # %.preheader204.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	blt	$a1, $a2, .LBB4_3
# %bb.6:                                # %.preheader204.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blt	$s1, $a2, .LBB4_3
# %bb.7:                                # %.preheader204.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	blt	$a0, $a2, .LBB4_3
# %bb.8:                                # %.preheader203.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$t7, $s4
	move	$t6, $s3
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a4
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 16
	move	$t2, $zero
	ldx.w	$a4, $a5, $a4
	sub.w	$a3, $a3, $a1
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	slt	$a5, $a7, $a3
	maskeqz	$a3, $a3, $a5
	ld.w	$a6, $a2, 12
	masknez	$a5, $a7, $a5
	or	$a3, $a3, $a5
	addi.d	$a3, $a3, 1
	sub.w	$a5, $a6, $a4
	slt	$a6, $a7, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a7, $a6
	or	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	sub.d	$s0, $a5, $a0
	sub.d	$a6, $a3, $s1
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a7, $t1, 0
	ld.w	$t0, $t1, 4
	ld.w	$t1, $t1, 8
	ld.w	$a2, $a2, 8
	mulw.d.w	$a6, $a5, $a6
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	sub.d	$a4, $a7, $a4
	sub.d	$a1, $t0, $a1
	sub.d	$a2, $t1, $a2
	mul.d	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	mul.d	$a1, $a1, $a5
	add.w	$a6, $a4, $a1
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a2, $a1, $s6, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $fp, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s7, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s3, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s8, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	alsl.d	$a2, $a1, $s4, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a0, 30, 1
	slli.d	$a1, $a1, 1
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a1, $a0, 3
	bstrpick.d	$a1, $a1, 33, 4
	slli.d	$ra, $a1, 4
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$fp, $sp, 216                   # 8-byte Folded Spill
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_9:                                # %._crit_edge211.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_10 Depth=2
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	addi.w	$t2, $t2, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.w	$a6, $a6, $a1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$t2, $a1, .LBB4_3
.LBB4_10:                               # %.preheader203.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_12 Depth 3
                                        #         Child Loop BB4_51 Depth 4
                                        #         Child Loop BB4_56 Depth 4
	st.d	$t2, $sp, 112                   # 8-byte Folded Spill
	move	$a5, $zero
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_11:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB4_12 Depth=3
	addi.w	$a5, $a5, 1
	add.w	$a6, $s0, $a6
	beq	$a5, $s1, .LBB4_9
.LBB4_12:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_51 Depth 4
                                        #         Child Loop BB4_56 Depth 4
	bgeu	$a0, $s5, .LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=3
	move	$t8, $zero
	b	.LBB4_55
	.p2align	4, , 16
.LBB4_14:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	alsl.d	$a3, $a6, $s6, 3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s4, $a6, $a0, 3
	alsl.d	$s0, $a6, $fp, 3
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$s3, $a6, $a0, 3
	sltu	$a1, $a3, $s3
	sltu	$a2, $s0, $s4
	and	$a1, $a1, $a2
	move	$t8, $zero
	bnez	$a1, .LBB4_63
# %bb.15:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	move	$a0, $s1
	alsl.d	$a7, $a6, $s7, 3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $a1, 3
	sltu	$a1, $a3, $s2
	sltu	$a2, $a7, $s4
	and	$a1, $a1, $a2
	bnez	$a1, .LBB4_62
# %bb.16:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	alsl.d	$t0, $a6, $t6, 3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a1, 3
	sltu	$a1, $a3, $s1
	sltu	$a2, $t0, $s4
	and	$a1, $a1, $a2
	bnez	$a1, .LBB4_62
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	alsl.d	$t1, $a6, $s8, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a1, 3
	sltu	$a1, $a3, $a4
	sltu	$a2, $t1, $s4
	and	$a1, $a1, $a2
	bnez	$a1, .LBB4_61
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	move	$fp, $s8
	move	$s7, $s6
	alsl.d	$t2, $a6, $t7, 3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a1, 3
	sltu	$a1, $a3, $a2
	sltu	$t3, $t2, $s4
	and	$a1, $a1, $t3
	bnez	$a1, .LBB4_64
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	move	$s8, $t7
	move	$s6, $t6
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $a1, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$t6, $a6, $a1, 3
	sltu	$a1, $a3, $t6
	sltu	$t4, $t3, $s4
	and	$a1, $a1, $t4
	bnez	$a1, .LBB4_59
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$t4, $a6, $a1, 3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $a1, 3
	sltu	$a1, $a3, $t7
	sltu	$t5, $t4, $s4
	and	$a1, $a1, $t5
	bnez	$a1, .LBB4_58
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$t5, $a6, $a1, 3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	sltu	$s5, $a3, $a1
	sltu	$s4, $t5, $s4
	and	$s4, $s5, $s4
	bnez	$s4, .LBB4_58
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s4, $s0, $s2
	sltu	$s5, $a7, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB4_58
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s4, $s0, $s1
	sltu	$s5, $t0, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB4_58
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s4, $s0, $a4
	sltu	$s5, $t1, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB4_58
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s4, $s0, $a2
	sltu	$s5, $t2, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB4_58
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s4, $s0, $t6
	sltu	$s5, $t3, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB4_58
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s4, $s0, $t7
	sltu	$s5, $t4, $s3
	and	$s4, $s4, $s5
	bnez	$s4, .LBB4_58
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s4, $s0, $a1
	sltu	$s3, $t5, $s3
	and	$s3, $s4, $s3
	ori	$s5, $zero, 20
	bnez	$s3, .LBB4_59
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s3, $a7, $s1
	sltu	$s4, $t0, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_59
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s3, $a7, $a4
	sltu	$s4, $t1, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_59
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s3, $a7, $a2
	sltu	$s4, $t2, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_59
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s3, $a7, $t6
	sltu	$s4, $t3, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_59
# %bb.33:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s3, $a7, $t7
	sltu	$s4, $t4, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_59
# %bb.34:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s3, $a7, $a1
	sltu	$s2, $t5, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB4_59
# %bb.35:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s2, $t0, $a4
	sltu	$s3, $t1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_59
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s2, $t0, $a2
	sltu	$s3, $t2, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_59
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s2, $t0, $t6
	sltu	$s3, $t3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_59
# %bb.38:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s2, $t0, $t7
	sltu	$s3, $t4, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB4_59
# %bb.39:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s2, $t0, $a1
	sltu	$s1, $t5, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB4_59
# %bb.40:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s1, $t1, $a2
	sltu	$s2, $t2, $a4
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_59
# %bb.41:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s1, $t1, $t6
	sltu	$s2, $t3, $a4
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_59
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s1, $t1, $t7
	sltu	$s2, $t4, $a4
	and	$s1, $s1, $s2
	bnez	$s1, .LBB4_59
# %bb.43:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$s1, $t1, $a1
	sltu	$a4, $t5, $a4
	and	$a4, $s1, $a4
	bnez	$a4, .LBB4_59
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$a4, $t2, $t6
	sltu	$s1, $t3, $a2
	and	$a4, $a4, $s1
	bnez	$a4, .LBB4_59
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$a4, $t2, $t7
	sltu	$s1, $t4, $a2
	and	$a4, $a4, $s1
	bnez	$a4, .LBB4_59
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$a4, $t2, $a1
	sltu	$a2, $t5, $a2
	and	$a2, $a4, $a2
	move	$s1, $a0
	bnez	$a2, .LBB4_57
# %bb.47:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$a2, $t3, $t7
	sltu	$a4, $t4, $t6
	and	$a2, $a2, $a4
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bnez	$a2, .LBB4_53
# %bb.48:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$a2, $t3, $a1
	sltu	$a4, $t5, $t6
	and	$a2, $a2, $a4
	bnez	$a2, .LBB4_53
# %bb.49:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_12 Depth=3
	sltu	$a1, $t4, $a1
	sltu	$a2, $t5, $t7
	and	$a1, $a1, $a2
	bnez	$a1, .LBB4_53
# %bb.50:                               # %vector.ph
                                        #   in Loop: Header=BB4_12 Depth=3
	move	$a1, $zero
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a6, $a2, $a6
	move	$t6, $s6
	move	$t7, $s8
	.p2align	4, , 16
.LBB4_51:                               # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        #       Parent Loop BB4_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr0, $s0, $a1
	vldx	$vr1, $a7, $a1
	vldx	$vr2, $a3, $a1
	vfadd.d	$vr0, $vr0, $vr1
	vldx	$vr1, $t1, $a1
	vldx	$vr3, $t2, $a1
	vfadd.d	$vr0, $vr2, $vr0
	vstx	$vr0, $a3, $a1
	vldx	$vr0, $t0, $a1
	vfadd.d	$vr1, $vr1, $vr3
	vldx	$vr2, $t4, $a1
	vldx	$vr3, $t5, $a1
	vfadd.d	$vr0, $vr0, $vr1
	vstx	$vr0, $t0, $a1
	vstx	$vr4, $s0, $a1
	vfadd.d	$vr0, $vr2, $vr3
	vldx	$vr1, $t3, $a1
	vstx	$vr4, $a7, $a1
	vstx	$vr4, $t1, $a1
	vstx	$vr4, $t2, $a1
	vfadd.d	$vr0, $vr1, $vr0
	vstx	$vr0, $t3, $a1
	vstx	$vr4, $t4, $a1
	vstx	$vr4, $t5, $a1
	addi.d	$a1, $a1, 16
	bne	$ra, $a1, .LBB4_51
# %bb.52:                               # %middle.block
                                        #   in Loop: Header=BB4_12 Depth=3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	move	$t8, $a1
	move	$s6, $s7
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	move	$s8, $fp
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_11
	b	.LBB4_55
	.p2align	4, , 16
.LBB4_53:                               #   in Loop: Header=BB4_12 Depth=3
	move	$t6, $s6
	move	$s6, $s7
	move	$t7, $s8
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	move	$s8, $fp
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
.LBB4_54:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_12 Depth=3
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
.LBB4_55:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_12 Depth=3
	slli.d	$a1, $a6, 3
	sub.d	$a2, $a0, $t8
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	move	$t0, $t6
	move	$t1, $t7
	move	$t2, $s8
	move	$t3, $s6
	move	$t4, $s7
	move	$t5, $fp
	.p2align	4, , 16
.LBB4_56:                               # %scalar.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        #       Parent Loop BB4_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t5, $a1
	fldx.d	$fa1, $t4, $a1
	fldx.d	$fa2, $t3, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t3, $a1
	stx.d	$zero, $t5, $a1
	stx.d	$zero, $t4, $a1
	fldx.d	$fa0, $t2, $a1
	fldx.d	$fa1, $t1, $a1
	fldx.d	$fa2, $t0, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t0, $a1
	stx.d	$zero, $t2, $a1
	stx.d	$zero, $t1, $a1
	fldx.d	$fa0, $a7, $a1
	fldx.d	$fa1, $a4, $a1
	fldx.d	$fa2, $a3, $a1
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a3, $a1
	stx.d	$zero, $a7, $a1
	stx.d	$zero, $a4, $a1
	addi.d	$a6, $a6, 1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a4, $a4, 8
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB4_56
	b	.LBB4_11
.LBB4_57:                               #   in Loop: Header=BB4_12 Depth=3
	move	$t6, $s6
	move	$s6, $s7
	move	$t7, $s8
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	move	$s8, $fp
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
	b	.LBB4_63
.LBB4_58:                               #   in Loop: Header=BB4_12 Depth=3
	ori	$s5, $zero, 20
.LBB4_59:                               #   in Loop: Header=BB4_12 Depth=3
	move	$t6, $s6
	move	$s6, $s7
	move	$t7, $s8
.LBB4_60:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_12 Depth=3
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	move	$s8, $fp
.LBB4_61:                               #   in Loop: Header=BB4_12 Depth=3
	ld.d	$fp, $sp, 216                   # 8-byte Folded Reload
.LBB4_62:                               #   in Loop: Header=BB4_12 Depth=3
	move	$s1, $a0
.LBB4_63:                               #   in Loop: Header=BB4_12 Depth=3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	b	.LBB4_54
.LBB4_64:                               #   in Loop: Header=BB4_12 Depth=3
	move	$s6, $s7
	b	.LBB4_60
.LBB4_65:                               # %.loopexit206
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
	.size	hypre_SMG2RAPPeriodicNoSym, .Lfunc_end4-hypre_SMG2RAPPeriodicNoSym
                                        # -- End function
	.type	.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost,@object # @__const.hypre_SMG2CreateRAPOp.RAP_num_ghost
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	.L__const.hypre_SMG2CreateRAPOp.RAP_num_ghost, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
