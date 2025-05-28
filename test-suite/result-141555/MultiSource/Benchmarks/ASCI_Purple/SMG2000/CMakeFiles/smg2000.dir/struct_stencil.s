	.file	"struct_stencil.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_StructStencilCreate
.LCPI0_0:
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	4294967295                      # 0xffffffff
.LCPI0_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
.LCPI0_2:
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
.LCPI0_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	6                               # 0x6
.LCPI0_4:
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI0_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	7                               # 0x7
	.text
	.globl	hypre_StructStencilCreate
	.p2align	5
	.type	hypre_StructStencilCreate,@function
hypre_StructStencilCreate:              # @hypre_StructStencilCreate
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 0
	st.w	$fp, $a0, 8
	st.w	$s1, $a0, 16
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 20
	blt	$fp, $a1, .LBB0_3
# %bb.1:                                # %.preheader.preheader
	ori	$a1, $zero, 8
	bgeu	$fp, $a1, .LBB0_4
# %bb.2:
	move	$a1, $zero
	move	$a3, $zero
	b	.LBB0_7
.LBB0_3:
	move	$a3, $zero
	b	.LBB0_9
.LBB0_4:                                # %vector.ph
	bstrpick.d	$a1, $fp, 30, 3
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_0)
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI0_1)
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	vld	$vr2, $a2, %pc_lo12(.LCPI0_2)
	pcalau12i	$a2, %pc_hi20(.LCPI0_3)
	vld	$vr3, $a2, %pc_lo12(.LCPI0_3)
	pcalau12i	$a2, %pc_hi20(.LCPI0_4)
	vld	$vr4, $a2, %pc_lo12(.LCPI0_4)
	pcalau12i	$a2, %pc_hi20(.LCPI0_5)
	vld	$vr5, $a2, %pc_lo12(.LCPI0_5)
	slli.d	$a1, $a1, 3
	vrepli.b	$vr6, 0
	move	$a2, $a1
	move	$a3, $s0
	vori.b	$vr7, $vr6, 0
	.p2align	4, , 16
.LBB0_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr8, $a3, 0
	vld	$vr9, $a3, 16
	vld	$vr10, $a3, 32
	vori.b	$vr11, $vr0, 0
	vshuf.w	$vr11, $vr9, $vr8
	vori.b	$vr12, $vr1, 0
	vshuf.w	$vr12, $vr10, $vr11
	vori.b	$vr11, $vr2, 0
	vshuf.w	$vr11, $vr9, $vr8
	vori.b	$vr13, $vr3, 0
	vshuf.w	$vr13, $vr10, $vr11
	vori.b	$vr11, $vr4, 0
	vld	$vr14, $a3, 48
	vld	$vr15, $a3, 64
	vld	$vr16, $a3, 80
	vshuf.w	$vr11, $vr9, $vr8
	vori.b	$vr8, $vr5, 0
	vshuf.w	$vr8, $vr10, $vr11
	vori.b	$vr9, $vr0, 0
	vshuf.w	$vr9, $vr15, $vr14
	vori.b	$vr10, $vr1, 0
	vshuf.w	$vr10, $vr16, $vr9
	vori.b	$vr9, $vr2, 0
	vshuf.w	$vr9, $vr15, $vr14
	vori.b	$vr11, $vr3, 0
	vshuf.w	$vr11, $vr16, $vr9
	vori.b	$vr9, $vr4, 0
	vshuf.w	$vr9, $vr15, $vr14
	vori.b	$vr14, $vr5, 0
	vshuf.w	$vr14, $vr16, $vr9
	vneg.w	$vr9, $vr12
	vmax.w	$vr9, $vr12, $vr9
	vneg.w	$vr12, $vr10
	vmax.w	$vr10, $vr10, $vr12
	vmax.wu	$vr6, $vr9, $vr6
	vmax.wu	$vr7, $vr10, $vr7
	vneg.w	$vr9, $vr13
	vmax.w	$vr9, $vr13, $vr9
	vneg.w	$vr10, $vr11
	vmax.w	$vr10, $vr11, $vr10
	vmax.wu	$vr6, $vr9, $vr6
	vmax.wu	$vr7, $vr10, $vr7
	vneg.w	$vr9, $vr8
	vmax.w	$vr8, $vr8, $vr9
	vneg.w	$vr9, $vr14
	vmax.w	$vr9, $vr14, $vr9
	vmax.wu	$vr6, $vr8, $vr6
	vmax.wu	$vr7, $vr9, $vr7
	addi.d	$a2, $a2, -8
	addi.d	$a3, $a3, 96
	bnez	$a2, .LBB0_5
# %bb.6:                                # %middle.block
	vmax.wu	$vr0, $vr6, $vr7
	vshuf4i.w	$vr1, $vr0, 14
	vmax.wu	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.wu	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	beq	$a1, $fp, .LBB0_9
.LBB0_7:                                # %.preheader.preheader37
	slli.d	$a2, $a1, 3
	alsl.d	$a2, $a1, $a2, 2
	add.d	$a2, $a2, $s0
	addi.d	$a2, $a2, 8
	sub.d	$a1, $fp, $a1
	.p2align	4, , 16
.LBB0_8:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, -8
	srai.d	$a5, $a4, 31
	xor	$a4, $a4, $a5
	sub.w	$a4, $a4, $a5
	sltu	$a5, $a3, $a4
	ld.w	$a6, $a2, -4
	maskeqz	$a4, $a4, $a5
	masknez	$a3, $a3, $a5
	or	$a3, $a4, $a3
	srai.d	$a4, $a6, 31
	xor	$a5, $a6, $a4
	sub.w	$a4, $a5, $a4
	sltu	$a5, $a3, $a4
	ld.w	$a6, $a2, 0
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	srai.d	$a4, $a6, 31
	xor	$a5, $a6, $a4
	sub.w	$a4, $a5, $a4
	sltu	$a5, $a3, $a4
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 12
	bnez	$a1, .LBB0_8
.LBB0_9:                                # %._crit_edge
	st.w	$a3, $a0, 12
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	hypre_StructStencilCreate, .Lfunc_end0-hypre_StructStencilCreate
                                        # -- End function
	.globl	hypre_StructStencilRef          # -- Begin function hypre_StructStencilRef
	.p2align	5
	.type	hypre_StructStencilRef,@function
hypre_StructStencilRef:                 # @hypre_StructStencilRef
# %bb.0:
	ld.w	$a1, $a0, 20
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 20
	ret
.Lfunc_end1:
	.size	hypre_StructStencilRef, .Lfunc_end1-hypre_StructStencilRef
                                        # -- End function
	.globl	hypre_StructStencilDestroy      # -- Begin function hypre_StructStencilDestroy
	.p2align	5
	.type	hypre_StructStencilDestroy,@function
hypre_StructStencilDestroy:             # @hypre_StructStencilDestroy
# %bb.0:
	beqz	$a0, .LBB2_2
# %bb.1:
	ld.w	$a1, $a0, 20
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 20
	beqz	$a1, .LBB2_3
.LBB2_2:
	move	$a0, $zero
	ret
.LBB2_3:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	hypre_StructStencilDestroy, .Lfunc_end2-hypre_StructStencilDestroy
                                        # -- End function
	.globl	hypre_StructStencilElementRank  # -- Begin function hypre_StructStencilElementRank
	.p2align	5
	.type	hypre_StructStencilElementRank,@function
hypre_StructStencilElementRank:         # @hypre_StructStencilElementRank
# %bb.0:
	move	$a2, $a0
	ld.w	$a3, $a0, 8
	ori	$a4, $zero, 1
	addi.w	$a0, $zero, -1
	blt	$a3, $a4, .LBB3_7
# %bb.1:                                # %.lr.ph
	ld.d	$a5, $a2, 0
	ld.w	$a2, $a1, 0
	move	$a4, $zero
	addi.d	$a5, $a5, 8
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	addi.w	$a4, $a4, 1
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 12
	beqz	$a3, .LBB3_7
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, -8
	bne	$a6, $a2, .LBB3_2
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a6, $a5, -4
	ld.w	$a7, $a1, 4
	bne	$a6, $a7, .LBB3_2
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$a7, $a1, 8
	bne	$a6, $a7, .LBB3_2
# %bb.6:
	move	$a0, $a4
.LBB3_7:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	hypre_StructStencilElementRank, .Lfunc_end3-hypre_StructStencilElementRank
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hypre_StructStencilSymmetrize
.LCPI4_0:
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	4294967295                      # 0xffffffff
.LCPI4_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
.LCPI4_2:
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
.LCPI4_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	6                               # 0x6
.LCPI4_4:
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI4_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	7                               # 0x7
	.text
	.globl	hypre_StructStencilSymmetrize
	.p2align	5
	.type	hypre_StructStencilSymmetrize,@function
hypre_StructStencilSymmetrize:          # @hypre_StructStencilSymmetrize
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
	move	$s3, $a0
	ld.wu	$s6, $a0, 8
	ld.d	$s1, $a0, 0
	move	$fp, $a2
	move	$s0, $a1
	addi.w	$s5, $s6, 0
	slli.w	$s4, $s6, 1
	ori	$a1, $zero, 12
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s2, $a0
	blt	$s5, $a1, .LBB4_15
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $s2, 8
	addi.d	$a1, $s1, 8
	move	$a2, $s5
	.p2align	4, , 16
.LBB4_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, -8
	st.w	$a3, $a0, -8
	ld.w	$a3, $a1, -4
	st.w	$a3, $a0, -4
	ld.w	$a3, $a1, 0
	st.w	$a3, $a0, 0
	addi.d	$a0, $a0, 12
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 12
	bnez	$a2, .LBB4_2
# %bb.3:                                # %.lr.ph92.preheader
	ori	$a1, $zero, 4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$a0, $a1, $a0
	slli.d	$a2, $a0, 2
	ori	$a1, $zero, 255
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $s2, 8
	sub.d	$a2, $zero, $s6
	addi.w	$a3, $zero, -1
	ori	$a4, $zero, 12
	move	$a5, $s1
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 12
	addi.d	$a2, $a2, 1
	beq	$a0, $s6, .LBB4_16
.LBB4_5:                                # %.lr.ph92
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
	slli.d	$a6, $a0, 2
	ldx.w	$a6, $s1, $a6
	blt	$a3, $a6, .LBB4_4
# %bb.6:                                # %.lr.ph87
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$a6, $zero
	slli.d	$a7, $a0, 3
	alsl.d	$a7, $a0, $a7, 2
	add.d	$a7, $s2, $a7
	ori	$t2, $zero, 1
	move	$t0, $a1
	move	$t1, $a5
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                #   in Loop: Header=BB4_8 Depth=2
	addi.d	$a6, $a6, -1
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 12
	beq	$a2, $a6, .LBB4_13
.LBB4_8:                                #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $a7, 0
	ld.w	$t4, $t0, -8
	sub.w	$t3, $zero, $t3
	bne	$t4, $t3, .LBB4_7
# %bb.9:                                #   in Loop: Header=BB4_8 Depth=2
	ld.w	$t3, $a7, 4
	ld.w	$t4, $t0, -4
	sub.w	$t3, $zero, $t3
	bne	$t4, $t3, .LBB4_7
# %bb.10:                               #   in Loop: Header=BB4_8 Depth=2
	ld.w	$t3, $a7, 8
	ld.w	$t4, $t0, 0
	sub.w	$t3, $zero, $t3
	bne	$t4, $t3, .LBB4_7
# %bb.11:                               #   in Loop: Header=BB4_8 Depth=2
	move	$t2, $zero
	beqz	$a6, .LBB4_7
# %bb.12:                               #   in Loop: Header=BB4_8 Depth=2
	st.w	$a0, $t1, 0
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_13:                               # %._crit_edge88
                                        #   in Loop: Header=BB4_5 Depth=1
	beqz	$t2, .LBB4_4
# %bb.14:                               # %.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	mul.d	$a6, $a0, $a4
	ldx.w	$a7, $s2, $a6
	add.d	$a6, $s2, $a6
	sub.d	$a7, $zero, $a7
	mul.d	$t0, $s5, $a4
	ld.w	$t1, $a6, 4
	stx.w	$a7, $s2, $t0
	ld.w	$a6, $a6, 8
	add.d	$a7, $s2, $t0
	sub.d	$t0, $zero, $t1
	st.w	$t0, $a7, 4
	sub.d	$a6, $zero, $a6
	st.w	$a6, $a7, 8
	slli.d	$a6, $s5, 2
	stx.w	$a0, $s1, $a6
	addi.w	$s5, $s5, 1
	b	.LBB4_4
.LBB4_15:                               # %.preheader80
	ori	$a1, $zero, 4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB4_16:                               # %._crit_edge93
	ld.w	$s3, $s3, 16
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 0
	st.w	$s5, $a0, 8
	st.w	$s3, $a0, 16
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 20
	blt	$s5, $a1, .LBB4_19
# %bb.17:                               # %.preheader.preheader.i
	ori	$a1, $zero, 8
	bgeu	$s5, $a1, .LBB4_20
# %bb.18:
	move	$a1, $zero
	move	$a3, $zero
	b	.LBB4_23
.LBB4_19:
	move	$a3, $zero
	b	.LBB4_25
.LBB4_20:                               # %vector.ph
	bstrpick.d	$a1, $s5, 30, 3
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI4_0)
	pcalau12i	$a2, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI4_1)
	pcalau12i	$a2, %pc_hi20(.LCPI4_2)
	vld	$vr2, $a2, %pc_lo12(.LCPI4_2)
	pcalau12i	$a2, %pc_hi20(.LCPI4_3)
	vld	$vr3, $a2, %pc_lo12(.LCPI4_3)
	pcalau12i	$a2, %pc_hi20(.LCPI4_4)
	vld	$vr4, $a2, %pc_lo12(.LCPI4_4)
	pcalau12i	$a2, %pc_hi20(.LCPI4_5)
	vld	$vr5, $a2, %pc_lo12(.LCPI4_5)
	slli.d	$a1, $a1, 3
	vrepli.b	$vr6, 0
	move	$a2, $a1
	move	$a3, $s2
	vori.b	$vr7, $vr6, 0
	.p2align	4, , 16
.LBB4_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr8, $a3, 0
	vld	$vr9, $a3, 16
	vld	$vr10, $a3, 32
	vori.b	$vr11, $vr0, 0
	vshuf.w	$vr11, $vr9, $vr8
	vori.b	$vr12, $vr1, 0
	vshuf.w	$vr12, $vr10, $vr11
	vori.b	$vr11, $vr2, 0
	vshuf.w	$vr11, $vr9, $vr8
	vori.b	$vr13, $vr3, 0
	vshuf.w	$vr13, $vr10, $vr11
	vori.b	$vr11, $vr4, 0
	vld	$vr14, $a3, 48
	vld	$vr15, $a3, 64
	vld	$vr16, $a3, 80
	vshuf.w	$vr11, $vr9, $vr8
	vori.b	$vr8, $vr5, 0
	vshuf.w	$vr8, $vr10, $vr11
	vori.b	$vr9, $vr0, 0
	vshuf.w	$vr9, $vr15, $vr14
	vori.b	$vr10, $vr1, 0
	vshuf.w	$vr10, $vr16, $vr9
	vori.b	$vr9, $vr2, 0
	vshuf.w	$vr9, $vr15, $vr14
	vori.b	$vr11, $vr3, 0
	vshuf.w	$vr11, $vr16, $vr9
	vori.b	$vr9, $vr4, 0
	vshuf.w	$vr9, $vr15, $vr14
	vori.b	$vr14, $vr5, 0
	vshuf.w	$vr14, $vr16, $vr9
	vneg.w	$vr9, $vr12
	vmax.w	$vr9, $vr12, $vr9
	vneg.w	$vr12, $vr10
	vmax.w	$vr10, $vr10, $vr12
	vmax.wu	$vr6, $vr9, $vr6
	vmax.wu	$vr7, $vr10, $vr7
	vneg.w	$vr9, $vr13
	vmax.w	$vr9, $vr13, $vr9
	vneg.w	$vr10, $vr11
	vmax.w	$vr10, $vr11, $vr10
	vmax.wu	$vr6, $vr9, $vr6
	vmax.wu	$vr7, $vr10, $vr7
	vneg.w	$vr9, $vr8
	vmax.w	$vr8, $vr8, $vr9
	vneg.w	$vr9, $vr14
	vmax.w	$vr9, $vr14, $vr9
	vmax.wu	$vr6, $vr8, $vr6
	vmax.wu	$vr7, $vr9, $vr7
	addi.d	$a2, $a2, -8
	addi.d	$a3, $a3, 96
	bnez	$a2, .LBB4_21
# %bb.22:                               # %middle.block
	vmax.wu	$vr0, $vr6, $vr7
	vshuf4i.w	$vr1, $vr0, 14
	vmax.wu	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.wu	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	beq	$a1, $s5, .LBB4_25
.LBB4_23:                               # %.preheader.i.preheader
	sub.d	$a2, $s5, $a1
	slli.d	$a4, $a1, 3
	alsl.d	$a1, $a1, $a4, 2
	add.d	$a1, $a1, $s2
	addi.d	$a1, $a1, 8
	.p2align	4, , 16
.LBB4_24:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, -8
	srai.d	$a5, $a4, 31
	xor	$a4, $a4, $a5
	sub.w	$a4, $a4, $a5
	sltu	$a5, $a3, $a4
	ld.w	$a6, $a1, -4
	maskeqz	$a4, $a4, $a5
	masknez	$a3, $a3, $a5
	or	$a3, $a4, $a3
	srai.d	$a4, $a6, 31
	xor	$a5, $a6, $a4
	sub.w	$a4, $a5, $a4
	sltu	$a5, $a3, $a4
	ld.w	$a6, $a1, 0
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	srai.d	$a4, $a6, 31
	xor	$a5, $a6, $a4
	sub.w	$a4, $a5, $a4
	sltu	$a5, $a3, $a4
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 12
	bnez	$a2, .LBB4_24
.LBB4_25:                               # %hypre_StructStencilCreate.exit
	st.w	$a3, $a0, 12
	st.d	$a0, $s0, 0
	st.d	$s1, $fp, 0
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
.Lfunc_end4:
	.size	hypre_StructStencilSymmetrize, .Lfunc_end4-hypre_StructStencilSymmetrize
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
