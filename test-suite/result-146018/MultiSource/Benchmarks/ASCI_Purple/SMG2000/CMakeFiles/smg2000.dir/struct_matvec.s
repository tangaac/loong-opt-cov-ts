	.file	"struct_matvec.c"
	.text
	.globl	hypre_StructMatvecCreate        # -- Begin function hypre_StructMatvecCreate
	.p2align	5
	.type	hypre_StructMatvecCreate,@function
hypre_StructMatvecCreate:               # @hypre_StructMatvecCreate
# %bb.0:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(hypre_CAlloc)
	jr	$t8
.Lfunc_end0:
	.size	hypre_StructMatvecCreate, .Lfunc_end0-hypre_StructMatvecCreate
                                        # -- End function
	.globl	hypre_StructMatvecSetup         # -- Begin function hypre_StructMatvecSetup
	.p2align	5
	.type	hypre_StructMatvecSetup,@function
hypre_StructMatvecSetup:                # @hypre_StructMatvecSetup
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	move	$s1, $a1
	ld.d	$s2, $a1, 8
	ld.d	$a1, $a1, 24
	move	$s0, $a2
	move	$fp, $a0
	addi.d	$a2, $sp, 112
	addi.d	$a3, $sp, 104
	addi.d	$a4, $sp, 96
	addi.d	$a5, $sp, 88
	addi.d	$a6, $sp, 80
	addi.d	$a7, $sp, 72
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 112
	ld.d	$a1, $sp, 104
	ld.d	$a4, $sp, 96
	ld.d	$a5, $sp, 88
	ld.d	$a6, $sp, 80
	ld.d	$a7, $sp, 72
	ld.d	$t0, $s0, 16
	lu32i.d	$a3, 1
	st.d	$a3, $sp, 60
	st.w	$a2, $sp, 68
	addi.d	$a3, $sp, 48
	st.d	$a3, $sp, 32
	st.d	$a2, $sp, 24
	st.d	$t0, $sp, 16
	st.d	$s2, $sp, 8
	addi.d	$t0, $sp, 60
	addi.d	$a2, $sp, 60
	addi.d	$a3, $sp, 60
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $fp, 8
	st.d	$a1, $fp, 16
	move	$a0, $zero
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end1:
	.size	hypre_StructMatvecSetup, .Lfunc_end1-hypre_StructMatvecSetup
                                        # -- End function
	.globl	hypre_StructMatvecCompute       # -- Begin function hypre_StructMatvecCompute
	.p2align	5
	.type	hypre_StructMatvecCompute,@function
hypre_StructMatvecCompute:              # @hypre_StructMatvecCompute
# %bb.0:
	addi.d	$sp, $sp, -816
	st.d	$ra, $sp, 808                   # 8-byte Folded Spill
	st.d	$fp, $sp, 800                   # 8-byte Folded Spill
	st.d	$s0, $sp, 792                   # 8-byte Folded Spill
	st.d	$s1, $sp, 784                   # 8-byte Folded Spill
	st.d	$s2, $sp, 776                   # 8-byte Folded Spill
	st.d	$s3, $sp, 768                   # 8-byte Folded Spill
	st.d	$s4, $sp, 760                   # 8-byte Folded Spill
	st.d	$s5, $sp, 752                   # 8-byte Folded Spill
	st.d	$s6, $sp, 744                   # 8-byte Folded Spill
	st.d	$s7, $sp, 736                   # 8-byte Folded Spill
	st.d	$s8, $sp, 728                   # 8-byte Folded Spill
	fmov.d	$ft0, $fa0
	ld.d	$a0, $a0, 16
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	movgr2fr.d	$fa0, $zero
	fcmp.cune.d	$fcc0, $ft0, $fa0
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	bcnez	$fcc0, .LBB2_19
# %bb.1:                                # %.split4703
	ld.d	$a0, $a1, 8
	ld.d	$fp, $a0, 8
	ld.w	$a0, $fp, 8
	ori	$s0, $zero, 1
	blt	$a0, $s0, .LBB2_248
# %bb.2:                                # %.lr.ph4705
	move	$s2, $zero
	vreplvei.d	$vr3, $vr1, 0
	addi.w	$s3, $zero, -1
	vst	$vr1, $sp, 688                  # 16-byte Folded Spill
	vst	$vr3, $sp, 672                  # 16-byte Folded Spill
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                # %._crit_edge4639
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $fp, 8
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB2_248
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
                                        #       Child Loop BB2_12 Depth 3
                                        #         Child Loop BB2_14 Depth 4
                                        #         Child Loop BB2_18 Depth 4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 16
	ld.d	$s7, $fp, 0
	ld.d	$a1, $a2, 40
	ld.d	$s8, $a0, 0
	ld.d	$s5, $a2, 24
	slli.d	$a0, $s2, 2
	ldx.w	$s6, $a1, $a0
	alsl.d	$a0, $s2, $s2, 1
	slli.d	$s4, $a0, 3
	add.d	$s1, $s7, $s4
	addi.d	$a1, $sp, 708
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 672                  # 16-byte Folded Reload
	vld	$vr1, $sp, 688                  # 16-byte Folded Reload
	ld.w	$a0, $sp, 708
	ld.w	$a1, $sp, 712
	ld.w	$a2, $sp, 716
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	blt	$a3, $s0, .LBB2_3
# %bb.5:                                # %.preheader3251.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	blt	$a2, $s0, .LBB2_3
# %bb.6:                                # %.preheader3251.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	blt	$a1, $s0, .LBB2_3
# %bb.7:                                # %.preheader3251.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	blt	$a0, $s0, .LBB2_3
# %bb.8:                                # %.preheader3250.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a3, $zero
	add.d	$a4, $s8, $s4
	ldx.w	$a5, $s7, $s4
	ldx.w	$a6, $s8, $s4
	ld.w	$a7, $s1, 4
	ld.w	$t0, $a4, 4
	ld.w	$t1, $s1, 8
	ld.w	$t2, $a4, 8
	ld.w	$t3, $a4, 16
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.d	$t1, $t1, $t2
	sub.w	$t0, $t3, $t0
	slt	$t2, $s3, $t0
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $s3, $t2
	or	$t0, $t0, $t2
	ld.w	$a4, $a4, 12
	addi.d	$t0, $t0, 1
	mul.d	$t1, $t0, $t1
	add.d	$a7, $a7, $t1
	sub.w	$a4, $a4, $a6
	slt	$a6, $s3, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s3, $a6
	or	$a4, $a4, $a6
	addi.d	$a6, $a4, 1
	mul.d	$a4, $a7, $a6
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a7, $t1, 28
	add.w	$t8, $a5, $a4
	ld.w	$a4, $t1, 24
	ld.w	$a5, $t1, 32
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
	alsl.d	$t2, $s6, $s5, 3
	addi.d	$t3, $t2, 16
	slli.d	$t4, $a4, 5
	slli.d	$t5, $a4, 3
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                # %._crit_edge4625.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_10 Depth=2
	addi.w	$a3, $a3, 1
	add.w	$t8, $a6, $t8
	beq	$a3, $a2, .LBB2_3
.LBB2_10:                               # %.preheader3250.us.us.us.us.us
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
                                        #         Child Loop BB2_14 Depth 4
                                        #         Child Loop BB2_18 Depth 4
	move	$t6, $zero
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_11:                               # %._crit_edge4621.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_12 Depth=3
	addi.w	$t6, $t6, 1
	add.w	$t8, $a5, $t7
	beq	$t6, $a1, .LBB2_9
.LBB2_12:                               # %.preheader.us.us.us.us.us.us
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_14 Depth 4
                                        #         Child Loop BB2_18 Depth 4
	beqz	$a7, .LBB2_16
# %bb.13:                               # %vector.ph5970
                                        #   in Loop: Header=BB2_12 Depth=3
	add.d	$t7, $t1, $t8
	alsl.d	$t8, $t8, $t3, 3
	move	$s1, $t0
	.p2align	4, , 16
.LBB2_14:                               # %vector.body5975
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        #       Parent Loop BB2_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t8, -16
	vld	$vr2, $t8, 0
	vfmul.d	$vr0, $vr3, $vr0
	vfmul.d	$vr2, $vr3, $vr2
	vst	$vr0, $t8, -16
	vst	$vr2, $t8, 0
	addi.d	$s1, $s1, -4
	add.d	$t8, $t8, $t4
	bnez	$s1, .LBB2_14
# %bb.15:                               # %middle.block5981
                                        #   in Loop: Header=BB2_12 Depth=3
	move	$s1, $t0
	beq	$t0, $a0, .LBB2_11
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_16:                               #   in Loop: Header=BB2_12 Depth=3
	move	$s1, $zero
	move	$t7, $t8
.LBB2_17:                               # %scalar.ph5968.preheader
                                        #   in Loop: Header=BB2_12 Depth=3
	alsl.d	$t8, $t7, $t2, 3
	sub.d	$s1, $a0, $s1
	.p2align	4, , 16
.LBB2_18:                               # %scalar.ph5968
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        #       Parent Loop BB2_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa0, $t8, 0
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $t8, 0
	add.d	$t7, $t7, $a4
	addi.w	$s1, $s1, -1
	add.d	$t8, $t8, $t5
	bnez	$s1, .LBB2_18
	b	.LBB2_11
.LBB2_19:                               # %.split4616
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a2, $a1, 24
	move	$a0, $zero
	ld.d	$a3, $a2, 0
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	ld.w	$s7, $a2, 8
	fdiv.d	$fa2, $fa1, $ft0
	vreplvei.d	$vr1, $vr2, 0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	vreplvei.d	$vr3, $vr8, 0
	vldi	$vr1, -912
	fcmp.ceq.d	$fcc0, $ft0, $fa1
	movcf2gr	$a2, $fcc0
	st.d	$a2, $sp, 136
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	movcf2gr	$a2, $fcc0
	st.d	$a2, $sp, 16
	vst	$vr2, $sp, 48                   # 16-byte Folded Spill
	fcmp.ceq.d	$fcc0, $fa2, $fa0
	movcf2gr	$a2, $fcc0
	st.d	$a2, $sp, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	ori	$a3, $zero, 1
	vst	$vr8, $sp, 160                  # 16-byte Folded Spill
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s7, $sp, 312                   # 8-byte Folded Spill
	vst	$vr3, $sp, 144                  # 16-byte Folded Spill
	b	.LBB2_21
	.p2align	4, , 16
.LBB2_20:                               # %._crit_edge4615
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	andi	$a2, $a0, 1
	ori	$a0, $zero, 1
	move	$a3, $zero
	beqz	$a2, .LBB2_248
.LBB2_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_43 Depth 2
                                        #       Child Loop BB2_49 Depth 3
                                        #         Child Loop BB2_51 Depth 4
                                        #           Child Loop BB2_53 Depth 5
                                        #           Child Loop BB2_57 Depth 5
                                        #     Child Loop BB2_27 Depth 2
                                        #       Child Loop BB2_33 Depth 3
                                        #         Child Loop BB2_35 Depth 4
                                        #           Child Loop BB2_37 Depth 5
                                        #           Child Loop BB2_41 Depth 5
                                        #     Child Loop BB2_63 Depth 2
                                        #       Child Loop BB2_66 Depth 3
                                        #         Child Loop BB2_69 Depth 4
                                        #           Child Loop BB2_208 Depth 5
                                        #             Child Loop BB2_210 Depth 6
                                        #               Child Loop BB2_226 Depth 7
                                        #               Child Loop BB2_230 Depth 7
                                        #           Child Loop BB2_180 Depth 5
                                        #             Child Loop BB2_182 Depth 6
                                        #               Child Loop BB2_196 Depth 7
                                        #               Child Loop BB2_200 Depth 7
                                        #           Child Loop BB2_94 Depth 5
                                        #             Child Loop BB2_96 Depth 6
                                        #               Child Loop BB2_108 Depth 7
                                        #               Child Loop BB2_112 Depth 7
                                        #           Child Loop BB2_138 Depth 5
                                        #             Child Loop BB2_140 Depth 6
                                        #               Child Loop BB2_150 Depth 7
                                        #               Child Loop BB2_154 Depth 7
                                        #           Child Loop BB2_118 Depth 5
                                        #             Child Loop BB2_120 Depth 6
                                        #               Child Loop BB2_128 Depth 7
                                        #               Child Loop BB2_132 Depth 7
                                        #           Child Loop BB2_160 Depth 5
                                        #             Child Loop BB2_162 Depth 6
                                        #               Child Loop BB2_168 Depth 7
                                        #               Child Loop BB2_172 Depth 7
                                        #           Child Loop BB2_75 Depth 5
                                        #             Child Loop BB2_77 Depth 6
                                        #               Child Loop BB2_81 Depth 7
                                        #               Child Loop BB2_86 Depth 7
                                        #         Child Loop BB2_239 Depth 4
                                        #           Child Loop BB2_241 Depth 5
                                        #             Child Loop BB2_243 Depth 6
                                        #             Child Loop BB2_247 Depth 6
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_23
# %bb.22:                               #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a0, $sp, 720
	pcaddu18i	$ra, %call36(hypre_FinalizeIndtComputations)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s8, $a0, 16
	b	.LBB2_58
	.p2align	4, , 16
.LBB2_23:                               #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	addi.d	$a2, $sp, 720
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_InitializeIndtComputations)
	jirl	$ra, $ra, 0
	ld.d	$s8, $fp, 8
	ld.d	$a0, $sp, 16
	movgr2cf	$fcc0, $a0
	bcnez	$fcc0, .LBB2_58
# %bb.24:                               # %.split
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$s0, $a0, 8
	ld.w	$a0, $s0, 8
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB2_59
# %bb.25:                               # %.lr.ph
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a0, $sp, 8
	move	$fp, $zero
	movgr2cf	$fcc0, $a0
	bcnez	$fcc0, .LBB2_27
	b	.LBB2_43
	.p2align	4, , 16
.LBB2_26:                               # %.loopexit3301.us
                                        #   in Loop: Header=BB2_27 Depth=2
	ld.w	$a0, $s0, 8
	addi.d	$fp, $fp, 1
	bge	$fp, $a0, .LBB2_58
.LBB2_27:                               # %.lr.ph.split.us
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_33 Depth 3
                                        #         Child Loop BB2_35 Depth 4
                                        #           Child Loop BB2_37 Depth 5
                                        #           Child Loop BB2_41 Depth 5
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 16
	ld.d	$s4, $s0, 0
	ld.d	$a1, $a2, 40
	ld.d	$s5, $a0, 0
	ld.d	$s1, $a2, 24
	slli.d	$a0, $fp, 2
	ldx.w	$s2, $a1, $a0
	alsl.d	$a0, $fp, $fp, 1
	slli.d	$s6, $a0, 3
	add.d	$s3, $s4, $s6
	addi.d	$a1, $sp, 708
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 708
	ld.w	$a1, $sp, 712
	ld.w	$a2, $sp, 716
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	blez	$a3, .LBB2_26
# %bb.28:                               # %.preheader3297.lr.ph.us
                                        #   in Loop: Header=BB2_27 Depth=2
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB2_26
# %bb.29:                               # %.preheader3297.lr.ph.us
                                        #   in Loop: Header=BB2_27 Depth=2
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB2_26
# %bb.30:                               # %.preheader3297.lr.ph.us
                                        #   in Loop: Header=BB2_27 Depth=2
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB2_26
# %bb.31:                               # %.preheader3294.us.us.us.us.us.us3491.preheader
                                        #   in Loop: Header=BB2_27 Depth=2
	move	$a3, $zero
	add.d	$a4, $s5, $s6
	ldx.w	$a5, $s4, $s6
	ldx.w	$a6, $s5, $s6
	ld.w	$a7, $s3, 4
	ld.w	$t0, $a4, 4
	ld.w	$t1, $s3, 8
	ld.w	$t2, $a4, 8
	ld.w	$t3, $a4, 16
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.d	$t1, $t1, $t2
	sub.w	$t0, $t3, $t0
	addi.w	$t2, $zero, -1
	slt	$t3, $t2, $t0
	maskeqz	$t0, $t0, $t3
	masknez	$t3, $t2, $t3
	or	$t0, $t0, $t3
	ld.w	$a4, $a4, 12
	addi.d	$t0, $t0, 1
	mul.d	$t1, $t0, $t1
	add.d	$a7, $a7, $t1
	sub.w	$a4, $a4, $a6
	slt	$a6, $t2, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $t2, $a6
	or	$a4, $a4, $a6
	addi.d	$a6, $a4, 1
	mul.d	$a4, $a7, $a6
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a7, $t1, 28
	add.w	$t7, $a5, $a4
	ld.w	$a4, $t1, 24
	ld.w	$a5, $t1, 32
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
	alsl.d	$t2, $s2, $s1, 3
	addi.d	$t3, $t2, 16
	slli.d	$t4, $a4, 5
	slli.d	$t5, $a4, 3
	b	.LBB2_33
	.p2align	4, , 16
.LBB2_32:                               # %._crit_edge3391.split.us.us.us.us.us.us.us3501
                                        #   in Loop: Header=BB2_33 Depth=3
	addi.w	$a3, $a3, 1
	add.w	$t7, $a6, $t7
	beq	$a3, $a2, .LBB2_26
.LBB2_33:                               # %.preheader3294.us.us.us.us.us.us3491
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_27 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_35 Depth 4
                                        #           Child Loop BB2_37 Depth 5
                                        #           Child Loop BB2_41 Depth 5
	move	$t6, $zero
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %._crit_edge.us.us.us.us.us.us3422.us3499
                                        #   in Loop: Header=BB2_35 Depth=4
	addi.w	$t6, $t6, 1
	add.w	$t7, $a5, $t8
	beq	$t6, $a1, .LBB2_32
.LBB2_35:                               # %.preheader3283.us.us.us.us.us.us.us3494
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_27 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_37 Depth 5
                                        #           Child Loop BB2_41 Depth 5
	beqz	$a7, .LBB2_39
# %bb.36:                               # %vector.ph5936
                                        #   in Loop: Header=BB2_35 Depth=4
	add.d	$t8, $t1, $t7
	alsl.d	$t7, $t7, $t3, 3
	move	$s1, $t0
	.p2align	4, , 16
.LBB2_37:                               # %vector.body5939
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_27 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        #         Parent Loop BB2_35 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vst	$vr0, $t7, -16
	vst	$vr0, $t7, 0
	addi.d	$s1, $s1, -4
	add.d	$t7, $t7, $t4
	bnez	$s1, .LBB2_37
# %bb.38:                               # %middle.block5943
                                        #   in Loop: Header=BB2_35 Depth=4
	move	$s1, $t0
	beq	$t0, $a0, .LBB2_34
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_39:                               #   in Loop: Header=BB2_35 Depth=4
	move	$s1, $zero
	move	$t8, $t7
.LBB2_40:                               # %scalar.ph5934.preheader
                                        #   in Loop: Header=BB2_35 Depth=4
	alsl.d	$t7, $t8, $t2, 3
	sub.d	$s1, $a0, $s1
	.p2align	4, , 16
.LBB2_41:                               # %scalar.ph5934
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_27 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        #         Parent Loop BB2_35 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	st.d	$zero, $t7, 0
	add.d	$t8, $t8, $a4
	addi.w	$s1, $s1, -1
	add.d	$t7, $t7, $t5
	bnez	$s1, .LBB2_41
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_42:                               # %.loopexit3302
                                        #   in Loop: Header=BB2_43 Depth=2
	ld.w	$a0, $s0, 8
	addi.d	$fp, $fp, 1
	bge	$fp, $a0, .LBB2_58
.LBB2_43:                               # %.lr.ph.split
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_49 Depth 3
                                        #         Child Loop BB2_51 Depth 4
                                        #           Child Loop BB2_53 Depth 5
                                        #           Child Loop BB2_57 Depth 5
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 16
	ld.d	$s4, $s0, 0
	ld.d	$a1, $a2, 40
	ld.d	$s5, $a0, 0
	ld.d	$s1, $a2, 24
	slli.d	$a0, $fp, 2
	ldx.w	$s2, $a1, $a0
	alsl.d	$a0, $fp, $fp, 1
	slli.d	$s6, $a0, 3
	add.d	$s3, $s4, $s6
	addi.d	$a1, $sp, 708
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 708
	ld.w	$a1, $sp, 712
	ld.w	$a2, $sp, 716
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB2_42
# %bb.44:                               # %.preheader3299.lr.ph
                                        #   in Loop: Header=BB2_43 Depth=2
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB2_42
# %bb.45:                               # %.preheader3299.lr.ph
                                        #   in Loop: Header=BB2_43 Depth=2
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB2_42
# %bb.46:                               # %.preheader3299.lr.ph
                                        #   in Loop: Header=BB2_43 Depth=2
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB2_42
# %bb.47:                               # %.preheader3295.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_43 Depth=2
	move	$a3, $zero
	add.d	$a4, $s5, $s6
	ldx.w	$a5, $s4, $s6
	ldx.w	$a6, $s5, $s6
	ld.w	$a7, $s3, 4
	ld.w	$t0, $a4, 4
	ld.w	$t1, $s3, 8
	ld.w	$t2, $a4, 8
	ld.w	$t3, $a4, 16
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.d	$t1, $t1, $t2
	sub.w	$t0, $t3, $t0
	addi.w	$t2, $zero, -1
	slt	$t3, $t2, $t0
	maskeqz	$t0, $t0, $t3
	masknez	$t3, $t2, $t3
	or	$t0, $t0, $t3
	ld.w	$a4, $a4, 12
	addi.d	$t0, $t0, 1
	mul.d	$t1, $t0, $t1
	add.d	$a7, $a7, $t1
	sub.w	$a4, $a4, $a6
	slt	$a6, $t2, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $t2, $a6
	or	$a4, $a4, $a6
	addi.d	$a6, $a4, 1
	mul.d	$a4, $a7, $a6
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a7, $t1, 28
	add.w	$t8, $a5, $a4
	ld.w	$a4, $t1, 24
	ld.w	$a5, $t1, 32
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
	alsl.d	$t2, $s2, $s1, 3
	addi.d	$t3, $t2, 16
	slli.d	$t4, $a4, 5
	slli.d	$t5, $a4, 3
	b	.LBB2_49
	.p2align	4, , 16
.LBB2_48:                               # %._crit_edge3309.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_49 Depth=3
	addi.w	$a3, $a3, 1
	add.w	$t8, $a6, $t8
	beq	$a3, $a2, .LBB2_42
.LBB2_49:                               # %.preheader3295.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_43 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_51 Depth 4
                                        #           Child Loop BB2_53 Depth 5
                                        #           Child Loop BB2_57 Depth 5
	move	$t6, $zero
	b	.LBB2_51
	.p2align	4, , 16
.LBB2_50:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_51 Depth=4
	addi.w	$t6, $t6, 1
	add.w	$t8, $a5, $t7
	beq	$t6, $a1, .LBB2_48
.LBB2_51:                               # %.preheader3284.us.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_43 Depth=2
                                        #       Parent Loop BB2_49 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_53 Depth 5
                                        #           Child Loop BB2_57 Depth 5
	beqz	$a7, .LBB2_55
# %bb.52:                               # %vector.ph5951
                                        #   in Loop: Header=BB2_51 Depth=4
	add.d	$t7, $t1, $t8
	alsl.d	$t8, $t8, $t3, 3
	move	$s1, $t0
	.p2align	4, , 16
.LBB2_53:                               # %vector.body5956
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_43 Depth=2
                                        #       Parent Loop BB2_49 Depth=3
                                        #         Parent Loop BB2_51 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr0, $t8, -16
	vld	$vr1, $t8, 0
	vfmul.d	$vr0, $vr3, $vr0
	vfmul.d	$vr1, $vr3, $vr1
	vst	$vr0, $t8, -16
	vst	$vr1, $t8, 0
	addi.d	$s1, $s1, -4
	add.d	$t8, $t8, $t4
	bnez	$s1, .LBB2_53
# %bb.54:                               # %middle.block5962
                                        #   in Loop: Header=BB2_51 Depth=4
	move	$s1, $t0
	beq	$t0, $a0, .LBB2_50
	b	.LBB2_56
	.p2align	4, , 16
.LBB2_55:                               #   in Loop: Header=BB2_51 Depth=4
	move	$s1, $zero
	move	$t7, $t8
.LBB2_56:                               # %scalar.ph5949.preheader
                                        #   in Loop: Header=BB2_51 Depth=4
	alsl.d	$t8, $t7, $t2, 3
	sub.d	$s1, $a0, $s1
	.p2align	4, , 16
.LBB2_57:                               # %scalar.ph5949
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_43 Depth=2
                                        #       Parent Loop BB2_49 Depth=3
                                        #         Parent Loop BB2_51 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fld.d	$fa0, $t8, 0
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $t8, 0
	add.d	$t7, $t7, $a4
	addi.w	$s1, $s1, -1
	add.d	$t8, $t8, $t5
	bnez	$s1, .LBB2_57
	b	.LBB2_50
	.p2align	4, , 16
.LBB2_58:                               # %.split4613
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
.LBB2_59:                               # %.split4613
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.w	$a0, $s8, 8
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB2_20
# %bb.60:                               # %.split4610.preheader
                                        #   in Loop: Header=BB2_21 Depth=1
	move	$a4, $zero
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	b	.LBB2_63
	.p2align	4, , 16
.LBB2_61:                               # %._crit_edge4612.loopexit
                                        #   in Loop: Header=BB2_63 Depth=2
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $s8, 8
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB2_62:                               # %._crit_edge4612
                                        #   in Loop: Header=BB2_63 Depth=2
	addi.d	$a4, $a4, 1
	bge	$a4, $a0, .LBB2_20
.LBB2_63:                               # %.split4610
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_66 Depth 3
                                        #         Child Loop BB2_69 Depth 4
                                        #           Child Loop BB2_208 Depth 5
                                        #             Child Loop BB2_210 Depth 6
                                        #               Child Loop BB2_226 Depth 7
                                        #               Child Loop BB2_230 Depth 7
                                        #           Child Loop BB2_180 Depth 5
                                        #             Child Loop BB2_182 Depth 6
                                        #               Child Loop BB2_196 Depth 7
                                        #               Child Loop BB2_200 Depth 7
                                        #           Child Loop BB2_94 Depth 5
                                        #             Child Loop BB2_96 Depth 6
                                        #               Child Loop BB2_108 Depth 7
                                        #               Child Loop BB2_112 Depth 7
                                        #           Child Loop BB2_138 Depth 5
                                        #             Child Loop BB2_140 Depth 6
                                        #               Child Loop BB2_150 Depth 7
                                        #               Child Loop BB2_154 Depth 7
                                        #           Child Loop BB2_118 Depth 5
                                        #             Child Loop BB2_120 Depth 6
                                        #               Child Loop BB2_128 Depth 7
                                        #               Child Loop BB2_132 Depth 7
                                        #           Child Loop BB2_160 Depth 5
                                        #             Child Loop BB2_162 Depth 6
                                        #               Child Loop BB2_168 Depth 7
                                        #               Child Loop BB2_172 Depth 7
                                        #           Child Loop BB2_75 Depth 5
                                        #             Child Loop BB2_77 Depth 6
                                        #               Child Loop BB2_81 Depth 7
                                        #               Child Loop BB2_86 Depth 7
                                        #         Child Loop BB2_239 Depth 4
                                        #           Child Loop BB2_241 Depth 5
                                        #             Child Loop BB2_243 Depth 6
                                        #             Child Loop BB2_247 Depth 6
	ld.d	$a2, $s8, 0
	slli.d	$a3, $a4, 3
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	ldx.d	$a7, $a2, $a3
	ld.w	$a2, $a7, 8
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB2_62
# %bb.64:                               # %.split4484.lr.ph
                                        #   in Loop: Header=BB2_63 Depth=2
	ld.d	$a0, $a1, 40
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a6, 16
	move	$t0, $zero
	ld.d	$a0, $a0, 0
	alsl.d	$a2, $a4, $a4, 1
	ld.d	$a1, $a1, 0
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a5, 16
	slli.d	$a2, $a2, 3
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a2
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 0
	ld.d	$a1, $a5, 40
	ld.d	$a3, $a6, 40
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a4, $a4, 2
	ld.d	$a5, $a5, 24
	ldx.w	$a1, $a1, $a4
	ld.d	$a6, $a6, 24
	ldx.w	$a3, $a3, $a4
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a5, 3
	addi.d	$a1, $a0, 8
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a1, $a3, $a6, 3
	addi.d	$a2, $a1, 8
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 16
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	addi.d	$t8, $a0, 16
	st.d	$a7, $sp, 192                   # 8-byte Folded Spill
	st.d	$t8, $sp, 184                   # 8-byte Folded Spill
	b	.LBB2_66
	.p2align	4, , 16
.LBB2_65:                               # %.loopexit3296
                                        #   in Loop: Header=BB2_66 Depth=3
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	addi.d	$t0, $t0, 1
	bge	$t0, $a0, .LBB2_61
.LBB2_66:                               # %.split4484
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_69 Depth 4
                                        #           Child Loop BB2_208 Depth 5
                                        #             Child Loop BB2_210 Depth 6
                                        #               Child Loop BB2_226 Depth 7
                                        #               Child Loop BB2_230 Depth 7
                                        #           Child Loop BB2_180 Depth 5
                                        #             Child Loop BB2_182 Depth 6
                                        #               Child Loop BB2_196 Depth 7
                                        #               Child Loop BB2_200 Depth 7
                                        #           Child Loop BB2_94 Depth 5
                                        #             Child Loop BB2_96 Depth 6
                                        #               Child Loop BB2_108 Depth 7
                                        #               Child Loop BB2_112 Depth 7
                                        #           Child Loop BB2_138 Depth 5
                                        #             Child Loop BB2_140 Depth 6
                                        #               Child Loop BB2_150 Depth 7
                                        #               Child Loop BB2_154 Depth 7
                                        #           Child Loop BB2_118 Depth 5
                                        #             Child Loop BB2_120 Depth 6
                                        #               Child Loop BB2_128 Depth 7
                                        #               Child Loop BB2_132 Depth 7
                                        #           Child Loop BB2_160 Depth 5
                                        #             Child Loop BB2_162 Depth 6
                                        #               Child Loop BB2_168 Depth 7
                                        #               Child Loop BB2_172 Depth 7
                                        #           Child Loop BB2_75 Depth 5
                                        #             Child Loop BB2_77 Depth 6
                                        #               Child Loop BB2_81 Depth 7
                                        #               Child Loop BB2_86 Depth 7
                                        #         Child Loop BB2_239 Depth 4
                                        #           Child Loop BB2_241 Depth 5
                                        #             Child Loop BB2_243 Depth 6
                                        #             Child Loop BB2_247 Depth 6
	ld.d	$a0, $a7, 0
	slli.d	$a1, $t0, 4
	st.d	$t0, $sp, 200                   # 8-byte Folded Spill
	alsl.d	$a1, $t0, $a1, 3
	add.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 708
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 160                  # 16-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB2_232
# %bb.67:                               # %.lr.ph4486
                                        #   in Loop: Header=BB2_66 Depth=3
	ld.w	$a5, $sp, 708
	ld.w	$a2, $sp, 712
	move	$a6, $zero
	ld.w	$a3, $sp, 716
	slt	$a0, $a5, $a2
	masknez	$a1, $a5, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	st.d	$a3, $sp, 368                   # 8-byte Folded Spill
	slti	$a0, $a3, 1
	st.d	$a2, $sp, 664                   # 8-byte Folded Spill
	slti	$a1, $a2, 1
	slti	$a2, $a5, 1
	addi.d	$a3, $a5, -1
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a4, $a3, 3
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 3
	st.d	$a4, $sp, 656                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a4, 3
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	bstrpick.d	$a3, $a5, 31, 0
	st.d	$a3, $sp, 640                   # 8-byte Folded Spill
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a5, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	st.d	$a5, $sp, 672                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a5, 30, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 648                   # 8-byte Folded Spill
	b	.LBB2_69
	.p2align	4, , 16
.LBB2_68:                               # %.loopexit3287
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 7
	ld.d	$s7, $sp, 312                   # 8-byte Folded Reload
	bge	$a6, $s7, .LBB2_232
.LBB2_69:                               #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_208 Depth 5
                                        #             Child Loop BB2_210 Depth 6
                                        #               Child Loop BB2_226 Depth 7
                                        #               Child Loop BB2_230 Depth 7
                                        #           Child Loop BB2_180 Depth 5
                                        #             Child Loop BB2_182 Depth 6
                                        #               Child Loop BB2_196 Depth 7
                                        #               Child Loop BB2_200 Depth 7
                                        #           Child Loop BB2_94 Depth 5
                                        #             Child Loop BB2_96 Depth 6
                                        #               Child Loop BB2_108 Depth 7
                                        #               Child Loop BB2_112 Depth 7
                                        #           Child Loop BB2_138 Depth 5
                                        #             Child Loop BB2_140 Depth 6
                                        #               Child Loop BB2_150 Depth 7
                                        #               Child Loop BB2_154 Depth 7
                                        #           Child Loop BB2_118 Depth 5
                                        #             Child Loop BB2_120 Depth 6
                                        #               Child Loop BB2_128 Depth 7
                                        #               Child Loop BB2_132 Depth 7
                                        #           Child Loop BB2_160 Depth 5
                                        #             Child Loop BB2_162 Depth 6
                                        #               Child Loop BB2_168 Depth 7
                                        #               Child Loop BB2_172 Depth 7
                                        #           Child Loop BB2_75 Depth 5
                                        #             Child Loop BB2_77 Depth 6
                                        #               Child Loop BB2_81 Depth 7
                                        #               Child Loop BB2_86 Depth 7
	st.d	$a6, $sp, 352                   # 8-byte Folded Spill
	sub.w	$a0, $s7, $a6
	slti	$a1, $a0, 7
	maskeqz	$a0, $a0, $a1
	ori	$a2, $zero, 7
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 6
	bltu	$a1, $a0, .LBB2_68
# %bb.70:                               #   in Loop: Header=BB2_69 Depth=4
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI2_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB2_71:                               #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.72:                               # %.preheader3281.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_68
# %bb.73:                               # %.preheader3267.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 64
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	move	$a1, $zero
	ld.d	$t1, $a2, 48
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	slli.d	$a2, $a3, 2
	ldx.w	$t2, $a0, $a2
	alsl.d	$a0, $a3, $a3, 1
	slli.d	$a0, $a0, 2
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a0
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a3, $s3, 16
	ld.w	$a4, $s3, 4
	ldx.w	$fp, $a5, $a0
	ld.w	$a5, $a2, 4
	ld.w	$a2, $a2, 8
	sub.w	$a3, $a3, $a4
	addi.w	$a0, $zero, -1
	slt	$a6, $a0, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $a0, $a6
	or	$a3, $a3, $a6
	ld.w	$a6, $s3, 12
	ld.w	$a7, $s3, 0
	addi.d	$a3, $a3, 1
	mul.d	$a2, $a3, $a2
	add.d	$s0, $a2, $a5
	sub.w	$a2, $a6, $a7
	slt	$a5, $a0, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $a0, $a5
	or	$a2, $a2, $a5
	addi.d	$s1, $a2, 1
	mul.d	$a2, $s0, $s1
	add.w	$t4, $a2, $fp
	ld.d	$t3, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a2, $t3, 0
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a5, $s2, 0
	ld.w	$a6, $t3, 4
	ld.w	$t0, $s2, 4
	ld.w	$t3, $t3, 8
	ld.w	$t5, $s2, 8
	ld.w	$t6, $s2, 16
	sub.d	$t7, $a2, $a5
	sub.d	$t8, $a6, $t0
	sub.d	$t5, $t3, $t5
	sub.w	$t0, $t6, $t0
	slt	$t6, $a0, $t0
	maskeqz	$t0, $t0, $t6
	masknez	$t6, $a0, $t6
	or	$t0, $t0, $t6
	ld.w	$t6, $s2, 12
	addi.d	$t0, $t0, 1
	mul.d	$t5, $t0, $t5
	add.d	$t5, $t8, $t5
	sub.w	$a5, $t6, $a5
	slt	$t6, $a0, $a5
	maskeqz	$a5, $a5, $t6
	masknez	$t6, $a0, $t6
	or	$a5, $a5, $t6
	addi.d	$a5, $a5, 1
	mul.d	$t5, $t5, $a5
	ld.w	$t6, $s3, 8
	add.w	$s2, $t7, $t5
	sub.d	$a7, $a2, $a7
	sub.d	$a4, $a6, $a4
	sub.d	$t5, $t3, $t6
	mul.d	$t5, $t5, $a3
	add.d	$a4, $a4, $t5
	mul.d	$a4, $a4, $s1
	add.w	$s5, $a7, $a4
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a4, $t7, 0
	ld.w	$a7, $t7, 4
	ld.w	$t5, $t7, 8
	ld.w	$t6, $t7, 16
	sub.d	$a2, $a2, $a4
	sub.d	$a6, $a6, $a7
	sub.d	$t3, $t3, $t5
	sub.w	$a7, $t6, $a7
	slt	$t5, $a0, $a7
	maskeqz	$a7, $a7, $t5
	masknez	$t5, $a0, $t5
	or	$a7, $a7, $t5
	ld.w	$t5, $t7, 12
	addi.d	$a7, $a7, 1
	mul.d	$t3, $a7, $t3
	add.d	$a6, $a6, $t3
	sub.w	$a4, $t5, $a4
	slt	$t3, $a0, $a4
	maskeqz	$a4, $a4, $t3
	masknez	$a0, $a0, $t3
	or	$a0, $a4, $a0
	addi.d	$a4, $a0, 1
	ld.d	$t8, $sp, 256                   # 8-byte Folded Reload
	ld.w	$t3, $t8, 28
	mul.d	$a0, $a6, $a4
	add.w	$a0, $a2, $a0
	ld.w	$a2, $t8, 24
	mul.d	$a6, $a4, $t3
	ld.d	$s3, $sp, 664                   # 8-byte Folded Reload
	mul.d	$t5, $s3, $a6
	mul.d	$t6, $t3, $s1
	mul.d	$t7, $s3, $t6
	mul.d	$t3, $t3, $a5
	mul.d	$a4, $a4, $a7
	ld.w	$a7, $t8, 32
	mul.d	$t8, $s3, $t3
	mul.d	$a5, $a5, $t0
	ld.d	$s6, $sp, 672                   # 8-byte Folded Reload
	mul.d	$t0, $s6, $a2
	mul.d	$s3, $a4, $a7
	mul.d	$a3, $s1, $a3
	mul.d	$s4, $a3, $a7
	mul.d	$a7, $a5, $a7
	sub.d	$a3, $t3, $t0
	sub.d	$a4, $t6, $t0
	sub.d	$a5, $a6, $t0
	sub.d	$a6, $a7, $t8
	st.d	$a6, $sp, 632                   # 8-byte Folded Spill
	sub.d	$a6, $s4, $t7
	st.d	$a6, $sp, 624                   # 8-byte Folded Spill
	sub.d	$t0, $s3, $t5
	ori	$a6, $zero, 3
	sltu	$a6, $a6, $s6
	alsl.d	$t1, $t2, $t1, 3
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	add.d	$t2, $t1, $a7
	addi.d	$t2, $t2, 8
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$t3, $t4, $s3, 3
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t4, $t4, $a7, 3
	addi.d	$t5, $a2, -1
	sltui	$t5, $t5, 1
	and	$t5, $a6, $t5
	ld.d	$a6, $sp, 496                   # 8-byte Folded Reload
	mul.d	$t6, $a6, $a2
	slli.d	$t7, $a2, 5
	addi.d	$t8, $t1, 16
	mul.d	$a6, $s0, $s1
	add.w	$a6, $fp, $a6
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $fp, 3
	slli.d	$s0, $a2, 3
	alsl.d	$s1, $a6, $s3, 3
	b	.LBB2_75
	.p2align	4, , 16
.LBB2_74:                               # %._crit_edge3515.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_75 Depth=5
	ld.d	$a6, $sp, 632                   # 8-byte Folded Reload
	add.w	$s2, $a6, $s2
	ld.d	$a6, $sp, 624                   # 8-byte Folded Reload
	add.w	$s5, $a6, $s5
	addi.w	$a1, $a1, 1
	add.w	$a0, $t0, $a0
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	beq	$a1, $a6, .LBB2_68
.LBB2_75:                               # %.preheader3267.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_77 Depth 6
                                        #               Child Loop BB2_81 Depth 7
                                        #               Child Loop BB2_86 Depth 7
	move	$s3, $zero
	b	.LBB2_77
	.p2align	4, , 16
.LBB2_76:                               # %._crit_edge.us.us.us.us.us.us3573
                                        #   in Loop: Header=BB2_77 Depth=6
	add.w	$s2, $a3, $s6
	add.w	$s5, $a4, $s4
	addi.w	$s3, $s3, 1
	add.w	$a0, $a5, $a0
	ld.d	$a6, $sp, 664                   # 8-byte Folded Reload
	beq	$s3, $a6, .LBB2_74
.LBB2_77:                               # %.preheader3259.us.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_75 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_81 Depth 7
                                        #               Child Loop BB2_86 Depth 7
	beqz	$t5, .LBB2_83
# %bb.78:                               # %vector.memcheck5881
                                        #   in Loop: Header=BB2_77 Depth=6
	ld.d	$a6, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$s7, $a0, $a6, 3
	ld.d	$a6, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a6, $a0, $a6, 3
	alsl.d	$s4, $s2, $t1, 3
	alsl.d	$s6, $s2, $t2, 3
	sltu	$s6, $s7, $s6
	sltu	$s4, $s4, $a6
	and	$s4, $s6, $s4
	move	$s8, $zero
	bnez	$s4, .LBB2_84
# %bb.79:                               # %vector.memcheck5881
                                        #   in Loop: Header=BB2_77 Depth=6
	alsl.d	$s4, $s5, $t3, 3
	alsl.d	$s6, $s5, $t4, 3
	sltu	$s6, $s7, $s6
	sltu	$a6, $s4, $a6
	and	$a6, $s6, $a6
	bnez	$a6, .LBB2_84
# %bb.80:                               # %vector.ph5911
                                        #   in Loop: Header=BB2_77 Depth=6
	move	$s8, $zero
	add.d	$a0, $t6, $a0
	add.d	$s4, $t6, $s5
	add.d	$s6, $t6, $s2
	alsl.d	$s2, $s2, $t8, 3
	alsl.d	$s5, $s5, $fp, 3
	ld.d	$ra, $sp, 496                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_81:                               # %vector.body5914
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_75 Depth=5
                                        #             Parent Loop BB2_77 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	add.d	$a6, $s2, $s8
	vld	$vr0, $a6, -16
	vldx	$vr1, $s2, $s8
	add.d	$a6, $s5, $s8
	vld	$vr2, $a6, -16
	vldx	$vr3, $s5, $s8
	add.d	$a6, $s7, $s8
	vldx	$vr4, $s7, $s8
	vld	$vr5, $a6, 16
	vfmadd.d	$vr0, $vr0, $vr2, $vr4
	vfmadd.d	$vr1, $vr1, $vr3, $vr5
	vstx	$vr0, $s7, $s8
	vst	$vr1, $a6, 16
	addi.d	$ra, $ra, -4
	add.d	$s8, $s8, $t7
	bnez	$ra, .LBB2_81
# %bb.82:                               # %middle.block5926
                                        #   in Loop: Header=BB2_77 Depth=6
	ld.d	$a7, $sp, 496                   # 8-byte Folded Reload
	move	$s8, $a7
	ld.d	$a6, $sp, 640                   # 8-byte Folded Reload
	beq	$a7, $a6, .LBB2_76
	b	.LBB2_85
	.p2align	4, , 16
.LBB2_83:                               #   in Loop: Header=BB2_77 Depth=6
	move	$s8, $zero
.LBB2_84:                               #   in Loop: Header=BB2_77 Depth=6
	move	$s4, $s5
	move	$s6, $s2
.LBB2_85:                               # %scalar.ph5909.preheader
                                        #   in Loop: Header=BB2_77 Depth=6
	move	$s2, $zero
	move	$s5, $zero
	ld.d	$a6, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$s7, $a0, $a6, 3
	alsl.d	$ra, $s4, $s1, 3
	alsl.d	$a6, $s6, $t1, 3
	ld.d	$a7, $sp, 672                   # 8-byte Folded Reload
	sub.d	$s8, $a7, $s8
	.p2align	4, , 16
.LBB2_86:                               # %scalar.ph5909
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_75 Depth=5
                                        #             Parent Loop BB2_77 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $a6, $s5
	fldx.d	$fa1, $ra, $s5
	fldx.d	$fa2, $s7, $s5
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fstx.d	$fa0, $s7, $s5
	add.d	$s5, $s5, $s0
	addi.w	$s8, $s8, -1
	sub.d	$s2, $s2, $a2
	bnez	$s8, .LBB2_86
# %bb.87:                               # %._crit_edge.us.us.us.us.us.us3573.loopexit
                                        #   in Loop: Header=BB2_77 Depth=6
	sub.d	$a0, $a0, $s2
	sub.d	$s4, $s4, $s2
	sub.d	$s6, $s6, $s2
	b	.LBB2_76
.LBB2_88:                               #   in Loop: Header=BB2_69 Depth=4
	ld.w	$a2, $sp, 712
	ld.w	$a3, $sp, 716
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	slt	$a0, $a1, $a2
	masknez	$a1, $a1, $a0
	st.d	$a2, $sp, 600                   # 8-byte Folded Spill
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	st.d	$a3, $sp, 456                   # 8-byte Folded Spill
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_68
# %bb.89:                               # %.preheader3273.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.90:                               # %.preheader3273.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.91:                               # %.preheader3273.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.92:                               # %.preheader3263.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 64
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	ld.d	$t0, $a1, 48
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a0, 2
	slli.d	$a2, $a3, 2
	ldx.w	$t1, $a0, $a2
	ld.w	$t5, $a1, 4
	ld.w	$t6, $a1, 8
	ld.w	$fp, $a1, 12
	ld.w	$t8, $a1, 16
	alsl.d	$a0, $a3, $a3, 1
	slli.d	$s3, $a0, 2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 16
	ld.w	$a1, $a0, 4
	ld.d	$t7, $sp, 208                   # 8-byte Folded Reload
	add.d	$t2, $t7, $s3
	ld.w	$a4, $t2, 4
	ld.w	$a6, $t2, 8
	sub.w	$a2, $a2, $a1
	addi.w	$a3, $zero, -1
	slt	$a5, $a3, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $a3, $a5
	or	$a2, $a2, $a5
	ld.w	$a7, $a0, 12
	ld.w	$t3, $a0, 0
	addi.d	$a5, $a2, 1
	mul.d	$a2, $a5, $a6
	add.d	$a2, $a2, $a4
	st.d	$a2, $sp, 608                   # 8-byte Folded Spill
	sub.w	$a2, $a7, $t3
	slt	$a4, $a3, $a2
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a3, $a4
	or	$a2, $a2, $a4
	addi.d	$s1, $a2, 1
	ld.w	$a2, $t2, 20
	ld.w	$a4, $t2, 16
	ld.w	$a6, $t2, 32
	ld.w	$a7, $t2, 28
	mul.d	$a2, $a2, $a5
	add.d	$a2, $a2, $a4
	st.d	$a2, $sp, 568                   # 8-byte Folded Spill
	mul.d	$a2, $a6, $a5
	add.d	$s4, $a2, $a7
	ld.w	$a2, $t2, 44
	ld.w	$a4, $t2, 40
	ld.w	$a6, $t2, 56
	ld.w	$a7, $t2, 52
	mul.d	$a2, $a2, $a5
	add.d	$s6, $a2, $a4
	mul.d	$a2, $a6, $a5
	add.d	$s7, $a2, $a7
	ld.d	$t4, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a4, $t4, 0
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $ra, 0
	ld.w	$a6, $t4, 4
	ld.w	$a7, $ra, 4
	ld.w	$t4, $t4, 8
	ld.w	$s0, $ra, 8
	ld.w	$s2, $ra, 16
	sub.d	$s5, $a4, $a2
	sub.d	$s8, $a6, $a7
	sub.d	$s0, $t4, $s0
	sub.w	$a7, $s2, $a7
	slt	$s2, $a3, $a7
	maskeqz	$a7, $a7, $s2
	masknez	$s2, $a3, $s2
	or	$a7, $a7, $s2
	ld.w	$s2, $ra, 12
	addi.d	$a7, $a7, 1
	mul.d	$s0, $a7, $s0
	add.d	$s0, $s8, $s0
	sub.w	$a2, $s2, $a2
	slt	$s2, $a3, $a2
	maskeqz	$a2, $a2, $s2
	masknez	$s2, $a3, $s2
	or	$a2, $a2, $s2
	addi.d	$s2, $a2, 1
	mul.d	$a2, $s0, $s2
	ld.w	$s0, $a0, 8
	add.w	$a2, $s5, $a2
	sub.d	$t3, $a4, $t3
	sub.d	$a1, $a6, $a1
	sub.d	$s0, $t4, $s0
	mul.d	$s0, $s0, $a5
	add.d	$a1, $a1, $s0
	mul.d	$a1, $a1, $s1
	add.w	$a1, $t3, $a1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$t3, $a0, 0
	ld.w	$s0, $a0, 4
	ld.w	$s5, $a0, 8
	ld.w	$s8, $a0, 16
	sub.d	$a4, $a4, $t3
	sub.d	$a6, $a6, $s0
	sub.d	$t4, $t4, $s5
	sub.w	$s0, $s8, $s0
	slt	$s5, $a3, $s0
	maskeqz	$s0, $s0, $s5
	masknez	$s5, $a3, $s5
	or	$s0, $s0, $s5
	ld.w	$s5, $a0, 12
	addi.d	$s0, $s0, 1
	mul.d	$t4, $s0, $t4
	add.d	$a6, $a6, $t4
	sub.w	$t3, $s5, $t3
	slt	$t4, $a3, $t3
	maskeqz	$t3, $t3, $t4
	masknez	$a3, $a3, $t4
	or	$a3, $t3, $a3
	addi.d	$t3, $a3, 1
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.w	$t4, $ra, 28
	mul.d	$a3, $a6, $t3
	add.w	$a3, $a4, $a3
	ld.w	$a4, $ra, 24
	mul.d	$a6, $t3, $t4
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	mul.d	$s5, $a0, $a6
	mul.d	$s8, $t4, $s1
	mul.d	$t3, $t3, $s0
	ld.w	$s0, $ra, 32
	mul.d	$t4, $t4, $s2
	mul.d	$a7, $s2, $a7
	mul.d	$s2, $a0, $s8
	mul.d	$t3, $t3, $s0
	mul.d	$a5, $s1, $a5
	mul.d	$a5, $a5, $s0
	mul.d	$a7, $a7, $s0
	ld.d	$ra, $sp, 672                   # 8-byte Folded Reload
	mul.d	$s0, $ra, $a4
	sub.d	$s8, $s8, $s0
	st.d	$s8, $sp, 592                   # 8-byte Folded Spill
	sub.d	$a6, $a6, $s0
	st.d	$a6, $sp, 584                   # 8-byte Folded Spill
	sub.d	$a6, $t4, $s0
	st.d	$a6, $sp, 576                   # 8-byte Folded Spill
	mul.d	$a6, $a0, $t4
	sub.d	$a0, $a7, $a6
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	sub.d	$a0, $a5, $s2
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	sub.d	$a0, $t3, $s5
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	alsl.d	$a0, $t8, $t0, 3
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	add.d	$a5, $t0, $a0
	addi.d	$a5, $a5, 8
	alsl.d	$a0, $t8, $a5, 3
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	alsl.d	$a0, $fp, $t0, 3
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	alsl.d	$a0, $fp, $a5, 3
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	alsl.d	$a0, $t6, $t0, 3
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	alsl.d	$a0, $t6, $a5, 3
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	alsl.d	$s2, $t5, $t0, 3
	alsl.d	$a0, $t5, $a5, 3
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	alsl.d	$s5, $t1, $t0, 3
	ld.w	$a6, $t2, 48
	alsl.d	$a0, $t1, $a5, 3
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	mul.d	$a5, $s7, $s1
	ld.w	$a7, $t2, 36
	add.w	$a5, $a6, $a5
	mul.d	$a6, $s6, $s1
	ld.w	$t0, $t2, 24
	add.w	$a6, $a7, $a6
	ld.w	$a7, $t2, 12
	mul.d	$t1, $s4, $s1
	add.w	$t0, $t0, $t1
	ldx.w	$a0, $t7, $s3
	ld.d	$t1, $sp, 568                   # 8-byte Folded Reload
	mul.d	$t1, $t1, $s1
	add.w	$a7, $a7, $t1
	ld.d	$t1, $sp, 608                   # 8-byte Folded Reload
	mul.d	$t1, $t1, $s1
	ori	$t2, $zero, 7
	sltu	$t2, $t2, $ra
	add.w	$a0, $a0, $t1
	addi.d	$t1, $a4, -1
	sltui	$t1, $t1, 1
	and	$t1, $t2, $t1
	st.d	$t1, $sp, 568                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s8, $a5, $t2, 3
	ld.d	$t3, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a5, $a5, $t3, 3
	st.d	$a5, $sp, 520                   # 8-byte Folded Spill
	alsl.d	$t5, $a6, $t2, 3
	alsl.d	$a5, $a6, $t3, 3
	st.d	$a5, $sp, 512                   # 8-byte Folded Spill
	alsl.d	$t1, $t0, $t2, 3
	alsl.d	$a5, $t0, $t3, 3
	st.d	$a5, $sp, 504                   # 8-byte Folded Spill
	alsl.d	$t6, $a7, $t2, 3
	alsl.d	$a5, $a7, $t3, 3
	st.d	$a5, $sp, 488                   # 8-byte Folded Spill
	alsl.d	$a5, $a0, $t2, 3
	st.d	$a5, $sp, 608                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $t3, 3
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a4
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	slli.d	$s1, $a4, 4
	slli.d	$s3, $a4, 3
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_93:                               # %._crit_edge4181.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_94 Depth=5
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	add.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a5, $sp, 464                   # 8-byte Folded Reload
	addi.w	$a5, $a5, 1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	add.w	$a3, $a0, $a3
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	st.d	$a5, $sp, 464                   # 8-byte Folded Spill
	beq	$a5, $a0, .LBB2_68
.LBB2_94:                               # %.preheader3263.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_96 Depth 6
                                        #               Child Loop BB2_108 Depth 7
                                        #               Child Loop BB2_112 Depth 7
	move	$s6, $zero
	b	.LBB2_96
	.p2align	4, , 16
.LBB2_95:                               # %._crit_edge.us.us.us.us.us.us4239
                                        #   in Loop: Header=BB2_96 Depth=6
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	add.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	addi.w	$s6, $s6, 1
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	add.w	$a3, $a0, $a3
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB2_93
.LBB2_96:                               # %.preheader3255.us.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_94 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_108 Depth 7
                                        #               Child Loop BB2_112 Depth 7
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_110
# %bb.97:                               # %vector.memcheck5441
                                        #   in Loop: Header=BB2_96 Depth=6
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$s4, $a3, $a0, 3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a6, $a3, $a0, 3
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$t2, $a2, $a0, 3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 3
	sltu	$a0, $s4, $a0
	sltu	$a5, $t2, $a6
	and	$a5, $a0, $a5
	move	$a0, $zero
	bnez	$a5, .LBB2_111
# %bb.98:                               # %vector.memcheck5441
                                        #   in Loop: Header=BB2_96 Depth=6
	ld.d	$a5, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$t0, $a2, $a5, 3
	ld.d	$a5, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a5, 3
	sltu	$a5, $s4, $a5
	sltu	$a7, $t0, $a6
	and	$a5, $a5, $a7
	bnez	$a5, .LBB2_111
# %bb.99:                               # %vector.memcheck5441
                                        #   in Loop: Header=BB2_96 Depth=6
	ld.d	$a5, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$ra, $a2, $a5, 3
	ld.d	$a5, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a5, 3
	sltu	$a5, $s4, $a5
	sltu	$a7, $ra, $a6
	and	$a5, $a5, $a7
	bnez	$a5, .LBB2_111
# %bb.100:                              # %vector.memcheck5441
                                        #   in Loop: Header=BB2_96 Depth=6
	alsl.d	$t4, $a2, $s2, 3
	ld.d	$a5, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a5, 3
	sltu	$a5, $s4, $a5
	sltu	$a7, $t4, $a6
	and	$a5, $a5, $a7
	bnez	$a5, .LBB2_111
# %bb.101:                              # %vector.memcheck5441
                                        #   in Loop: Header=BB2_96 Depth=6
	alsl.d	$fp, $a2, $s5, 3
	ld.d	$a5, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a5, 3
	sltu	$a5, $s4, $a5
	sltu	$a7, $fp, $a6
	and	$a5, $a5, $a7
	bnez	$a5, .LBB2_111
# %bb.102:                              # %vector.memcheck5441
                                        #   in Loop: Header=BB2_96 Depth=6
	alsl.d	$a5, $a1, $s8, 3
	ld.d	$a7, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a7, $a1, $a7, 3
	sltu	$a7, $s4, $a7
	sltu	$t3, $a5, $a6
	and	$a7, $a7, $t3
	bnez	$a7, .LBB2_111
# %bb.103:                              # %vector.memcheck5441
                                        #   in Loop: Header=BB2_96 Depth=6
	alsl.d	$a7, $a1, $t5, 3
	ld.d	$t3, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$t3, $a1, $t3, 3
	sltu	$t3, $s4, $t3
	sltu	$t7, $a7, $a6
	and	$t3, $t3, $t7
	bnez	$t3, .LBB2_111
# %bb.104:                              # %vector.memcheck5441
                                        #   in Loop: Header=BB2_96 Depth=6
	alsl.d	$s7, $a1, $t1, 3
	ld.d	$t3, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$t3, $a1, $t3, 3
	sltu	$t3, $s4, $t3
	sltu	$t7, $s7, $a6
	and	$t3, $t3, $t7
	bnez	$t3, .LBB2_111
# %bb.105:                              # %vector.memcheck5441
                                        #   in Loop: Header=BB2_96 Depth=6
	alsl.d	$t3, $a1, $t6, 3
	ld.d	$t7, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$t7, $a1, $t7, 3
	sltu	$t7, $s4, $t7
	sltu	$t8, $t3, $a6
	and	$t7, $t7, $t8
	bnez	$t7, .LBB2_111
# %bb.106:                              # %vector.memcheck5441
                                        #   in Loop: Header=BB2_96 Depth=6
	ld.d	$t7, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t8, $a1, $t7, 3
	ld.d	$t7, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$t7, $a1, $t7, 3
	sltu	$t7, $s4, $t7
	sltu	$a6, $t8, $a6
	and	$a6, $t7, $a6
	bnez	$a6, .LBB2_111
# %bb.107:                              # %vector.ph5559
                                        #   in Loop: Header=BB2_96 Depth=6
	move	$a0, $zero
	ld.d	$a6, $sp, 472                   # 8-byte Folded Reload
	add.d	$a3, $a6, $a3
	add.d	$a1, $a6, $a1
	add.d	$a2, $a6, $a2
	ld.d	$a6, $sp, 648                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_108:                              # %vector.body5562
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_94 Depth=5
                                        #             Parent Loop BB2_96 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	vldx	$vr0, $fp, $a0
	vldx	$vr1, $t4, $a0
	vldx	$vr2, $t3, $a0
	vldx	$vr3, $t8, $a0
	vfmul.d	$vr1, $vr1, $vr2
	vfmadd.d	$vr0, $vr0, $vr3, $vr1
	vldx	$vr1, $ra, $a0
	vldx	$vr2, $s7, $a0
	vldx	$vr3, $t0, $a0
	vldx	$vr4, $a7, $a0
	vldx	$vr5, $t2, $a0
	vldx	$vr6, $a5, $a0
	vldx	$vr7, $s4, $a0
	vfmadd.d	$vr0, $vr1, $vr2, $vr0
	vfmadd.d	$vr0, $vr3, $vr4, $vr0
	vfmadd.d	$vr0, $vr5, $vr6, $vr0
	vfadd.d	$vr0, $vr7, $vr0
	vstx	$vr0, $s4, $a0
	addi.d	$a6, $a6, -2
	add.d	$a0, $a0, $s1
	bnez	$a6, .LBB2_108
# %bb.109:                              # %middle.block5579
                                        #   in Loop: Header=BB2_96 Depth=6
	ld.d	$a6, $sp, 648                   # 8-byte Folded Reload
	move	$a0, $a6
	ld.d	$a5, $sp, 640                   # 8-byte Folded Reload
	beq	$a6, $a5, .LBB2_95
	b	.LBB2_111
	.p2align	4, , 16
.LBB2_110:                              #   in Loop: Header=BB2_96 Depth=6
	move	$a0, $zero
.LBB2_111:                              # %scalar.ph5557.preheader
                                        #   in Loop: Header=BB2_96 Depth=6
	move	$a5, $zero
	move	$a6, $zero
	ld.d	$a7, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a7, $a3, $a7, 3
	alsl.d	$t0, $a1, $s8, 3
	alsl.d	$t2, $a1, $t5, 3
	alsl.d	$t3, $a1, $t1, 3
	alsl.d	$t4, $a1, $t6, 3
	ld.d	$t7, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t8, $a1, $t7, 3
	alsl.d	$fp, $a2, $s5, 3
	alsl.d	$s4, $a2, $s2, 3
	ld.d	$t7, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$s7, $a2, $t7, 3
	ld.d	$t7, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$ra, $a2, $t7, 3
	ld.d	$t7, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$t7, $a2, $t7, 3
	ld.d	$s0, $sp, 672                   # 8-byte Folded Reload
	sub.d	$a0, $s0, $a0
	.p2align	4, , 16
.LBB2_112:                              # %scalar.ph5557
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_94 Depth=5
                                        #             Parent Loop BB2_96 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $fp, $a6
	fldx.d	$fa1, $s4, $a6
	fldx.d	$fa2, $t4, $a6
	fldx.d	$fa3, $t8, $a6
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fldx.d	$fa1, $s7, $a6
	fldx.d	$fa2, $t3, $a6
	fldx.d	$fa3, $ra, $a6
	fldx.d	$fa4, $t2, $a6
	fldx.d	$fa5, $t7, $a6
	fldx.d	$fa6, $t0, $a6
	fldx.d	$fa7, $a7, $a6
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fadd.d	$fa0, $fa7, $fa0
	fstx.d	$fa0, $a7, $a6
	add.d	$a6, $a6, $s3
	addi.w	$a0, $a0, -1
	sub.d	$a5, $a5, $a4
	bnez	$a0, .LBB2_112
# %bb.113:                              # %._crit_edge.us.us.us.us.us.us4239.loopexit
                                        #   in Loop: Header=BB2_96 Depth=6
	sub.d	$a3, $a3, $a5
	sub.d	$a1, $a1, $a5
	sub.d	$a2, $a2, $a5
	b	.LBB2_95
.LBB2_114:                              #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.115:                              # %.preheader3277.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_68
# %bb.116:                              # %.preheader3265.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 64
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	st.d	$zero, $sp, 576                 # 8-byte Folded Spill
	ld.d	$t1, $a1, 48
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a0, 2
	slli.d	$a2, $a3, 2
	ldx.w	$a0, $a0, $a2
	ld.w	$t7, $a1, 4
	ld.w	$t5, $a1, 8
	alsl.d	$a1, $a3, $a3, 1
	slli.d	$a2, $a1, 2
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a2
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a4, $s7, 16
	ld.w	$a1, $s7, 4
	ldx.w	$s3, $a5, $a2
	ld.w	$a2, $a3, 4
	ld.w	$a5, $a3, 8
	sub.w	$a6, $a4, $a1
	addi.w	$a4, $zero, -1
	slt	$a7, $a4, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a4, $a7
	or	$a6, $a6, $a7
	ld.w	$a7, $s7, 12
	ld.w	$t0, $s7, 0
	addi.d	$a6, $a6, 1
	mul.d	$a5, $a6, $a5
	add.d	$s4, $a5, $a2
	sub.w	$a2, $a7, $t0
	slt	$a5, $a4, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $a4, $a5
	or	$a2, $a2, $a5
	ld.w	$a5, $a3, 20
	addi.d	$s5, $a2, 1
	ld.w	$s1, $a3, 12
	ld.w	$a2, $a3, 16
	mul.d	$a5, $a5, $a6
	ld.w	$a7, $a3, 32
	ld.w	$t2, $a3, 28
	add.d	$s2, $a5, $a2
	ld.w	$s0, $a3, 24
	mul.d	$a2, $a7, $a6
	add.d	$s6, $a2, $t2
	ld.d	$t2, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a5, $t2, 0
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $fp, 0
	ld.w	$a7, $t2, 4
	ld.w	$a3, $fp, 4
	ld.w	$t2, $t2, 8
	ld.w	$t3, $fp, 8
	ld.w	$t4, $fp, 16
	sub.d	$t6, $a5, $a2
	sub.d	$t8, $a7, $a3
	sub.d	$t3, $t2, $t3
	sub.w	$a3, $t4, $a3
	slt	$t4, $a4, $a3
	maskeqz	$a3, $a3, $t4
	masknez	$t4, $a4, $t4
	or	$a3, $a3, $t4
	ld.w	$t4, $fp, 12
	addi.d	$fp, $a3, 1
	mul.d	$a3, $fp, $t3
	add.d	$a3, $t8, $a3
	sub.w	$a2, $t4, $a2
	slt	$t3, $a4, $a2
	maskeqz	$a2, $a2, $t3
	masknez	$t3, $a4, $t3
	or	$a2, $a2, $t3
	addi.d	$t3, $a2, 1
	mul.d	$a2, $a3, $t3
	ld.w	$a3, $s7, 8
	add.w	$a2, $t6, $a2
	sub.d	$t0, $a5, $t0
	sub.d	$a1, $a7, $a1
	sub.d	$a3, $t2, $a3
	mul.d	$a3, $a3, $a6
	add.d	$a1, $a1, $a3
	mul.d	$a1, $a1, $s5
	add.w	$a3, $t0, $a1
	ld.d	$t8, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a1, $t8, 0
	ld.w	$t0, $t8, 4
	ld.w	$t4, $t8, 8
	ld.w	$t6, $t8, 16
	sub.d	$a5, $a5, $a1
	sub.d	$a7, $a7, $t0
	sub.d	$t2, $t2, $t4
	sub.w	$t0, $t6, $t0
	slt	$t4, $a4, $t0
	maskeqz	$t0, $t0, $t4
	masknez	$t4, $a4, $t4
	or	$t0, $t0, $t4
	ld.w	$t4, $t8, 12
	addi.d	$t0, $t0, 1
	mul.d	$t2, $t0, $t2
	add.d	$a7, $a7, $t2
	sub.w	$a1, $t4, $a1
	slt	$t2, $a4, $a1
	maskeqz	$a1, $a1, $t2
	masknez	$a4, $a4, $t2
	or	$a1, $a1, $a4
	addi.d	$a1, $a1, 1
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.w	$t2, $s7, 28
	mul.d	$a4, $a7, $a1
	add.w	$a4, $a5, $a4
	ld.w	$a5, $s7, 24
	mul.d	$t4, $a1, $t2
	ld.d	$s8, $sp, 664                   # 8-byte Folded Reload
	mul.d	$t6, $s8, $t4
	mul.d	$a7, $t2, $s5
	mul.d	$t8, $s8, $a7
	mul.d	$t2, $t2, $t3
	mul.d	$a1, $a1, $t0
	ld.w	$t0, $s7, 32
	mul.d	$s7, $s8, $t2
	mul.d	$t3, $t3, $fp
	ld.d	$ra, $sp, 672                   # 8-byte Folded Reload
	mul.d	$fp, $ra, $a5
	mul.d	$a1, $a1, $t0
	mul.d	$a6, $s5, $a6
	mul.d	$s8, $a6, $t0
	mul.d	$t3, $t3, $t0
	sub.d	$a6, $t2, $fp
	sub.d	$a7, $a7, $fp
	sub.d	$t0, $t4, $fp
	sub.d	$t2, $t3, $s7
	st.d	$t2, $sp, 568                   # 8-byte Folded Spill
	sub.d	$t2, $s8, $t8
	st.d	$t2, $sp, 560                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $t6
	st.d	$a1, $sp, 552                   # 8-byte Folded Spill
	ori	$a1, $zero, 5
	sltu	$a1, $a1, $ra
	alsl.d	$t4, $t5, $t1, 3
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	add.d	$t2, $t1, $t2
	addi.d	$t2, $t2, 8
	alsl.d	$t3, $t5, $t2, 3
	st.d	$t3, $sp, 632                   # 8-byte Folded Spill
	alsl.d	$t6, $t7, $t1, 3
	alsl.d	$t3, $t7, $t2, 3
	st.d	$t3, $sp, 624                   # 8-byte Folded Spill
	alsl.d	$t8, $a0, $t1, 3
	alsl.d	$a0, $a0, $t2, 3
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	mul.d	$a0, $s6, $s5
	add.w	$t1, $s0, $a0
	ld.d	$t2, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $t1, $t2, 3
	ld.d	$t3, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t1, $t1, $t3, 3
	st.d	$t1, $sp, 608                   # 8-byte Folded Spill
	mul.d	$t1, $s2, $s5
	add.w	$t1, $s1, $t1
	alsl.d	$s1, $t1, $t2, 3
	alsl.d	$t1, $t1, $t3, 3
	st.d	$t1, $sp, 600                   # 8-byte Folded Spill
	mul.d	$t1, $s4, $s5
	add.w	$t1, $s3, $t1
	alsl.d	$s3, $t1, $t2, 3
	alsl.d	$t1, $t1, $t3, 3
	st.d	$t1, $sp, 592                   # 8-byte Folded Spill
	addi.d	$t1, $a5, -1
	sltui	$t1, $t1, 1
	and	$s6, $a1, $t1
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a5
	st.d	$a1, $sp, 584                   # 8-byte Folded Spill
	slli.d	$s8, $a5, 4
	slli.d	$ra, $a5, 3
	b	.LBB2_118
	.p2align	4, , 16
.LBB2_117:                              # %._crit_edge3873.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_118 Depth=5
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	add.w	$a2, $a1, $a2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	add.w	$a3, $a1, $a3
	ld.d	$t1, $sp, 576                   # 8-byte Folded Reload
	addi.w	$t1, $t1, 1
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	add.w	$a4, $a1, $a4
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$t1, $sp, 576                   # 8-byte Folded Spill
	beq	$t1, $a1, .LBB2_68
.LBB2_118:                              # %.preheader3265.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_120 Depth 6
                                        #               Child Loop BB2_128 Depth 7
                                        #               Child Loop BB2_132 Depth 7
	move	$t1, $zero
	b	.LBB2_120
	.p2align	4, , 16
.LBB2_119:                              # %._crit_edge.us.us.us.us.us.us3931
                                        #   in Loop: Header=BB2_120 Depth=6
	add.w	$a2, $a6, $a2
	add.w	$a3, $a7, $a3
	addi.w	$t1, $t1, 1
	add.w	$a4, $t0, $a4
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	beq	$t1, $a1, .LBB2_117
.LBB2_120:                              # %.preheader3257.us.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_118 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_128 Depth 7
                                        #               Child Loop BB2_132 Depth 7
	beqz	$s6, .LBB2_130
# %bb.121:                              # %vector.memcheck5709
                                        #   in Loop: Header=BB2_120 Depth=6
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$t2, $a4, $a1, 3
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$fp, $a4, $a1, 3
	alsl.d	$t3, $a2, $t4, 3
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	sltu	$a1, $t2, $a1
	sltu	$t5, $t3, $fp
	and	$a1, $a1, $t5
	move	$s4, $zero
	bnez	$a1, .LBB2_131
# %bb.122:                              # %vector.memcheck5709
                                        #   in Loop: Header=BB2_120 Depth=6
	alsl.d	$a1, $a2, $t6, 3
	ld.d	$t5, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$t5, $a2, $t5, 3
	sltu	$t5, $t2, $t5
	sltu	$t7, $a1, $fp
	and	$t5, $t5, $t7
	bnez	$t5, .LBB2_131
# %bb.123:                              # %vector.memcheck5709
                                        #   in Loop: Header=BB2_120 Depth=6
	alsl.d	$s5, $a2, $t8, 3
	ld.d	$t5, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t5, $a2, $t5, 3
	sltu	$t5, $t2, $t5
	sltu	$t7, $s5, $fp
	and	$t5, $t5, $t7
	bnez	$t5, .LBB2_131
# %bb.124:                              # %vector.memcheck5709
                                        #   in Loop: Header=BB2_120 Depth=6
	alsl.d	$s2, $a3, $a0, 3
	ld.d	$t5, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t5, $a3, $t5, 3
	sltu	$t5, $t2, $t5
	sltu	$t7, $s2, $fp
	and	$t5, $t5, $t7
	bnez	$t5, .LBB2_131
# %bb.125:                              # %vector.memcheck5709
                                        #   in Loop: Header=BB2_120 Depth=6
	alsl.d	$s0, $a3, $s1, 3
	ld.d	$t5, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$t5, $a3, $t5, 3
	sltu	$t5, $t2, $t5
	sltu	$t7, $s0, $fp
	and	$t5, $t5, $t7
	bnez	$t5, .LBB2_131
# %bb.126:                              # %vector.memcheck5709
                                        #   in Loop: Header=BB2_120 Depth=6
	alsl.d	$t7, $a3, $s3, 3
	ld.d	$t5, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$t5, $a3, $t5, 3
	sltu	$t5, $t2, $t5
	sltu	$fp, $t7, $fp
	and	$t5, $t5, $fp
	bnez	$t5, .LBB2_131
# %bb.127:                              # %vector.ph5783
                                        #   in Loop: Header=BB2_120 Depth=6
	move	$t5, $zero
	ld.d	$fp, $sp, 584                   # 8-byte Folded Reload
	add.d	$a4, $fp, $a4
	add.d	$a3, $fp, $a3
	add.d	$a2, $fp, $a2
	ld.d	$fp, $sp, 648                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_128:                              # %vector.body5786
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_118 Depth=5
                                        #             Parent Loop BB2_120 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	vldx	$vr0, $s5, $t5
	vldx	$vr1, $t7, $t5
	vldx	$vr2, $a1, $t5
	vldx	$vr3, $s0, $t5
	vldx	$vr4, $t3, $t5
	vldx	$vr5, $s2, $t5
	vldx	$vr6, $t2, $t5
	vfmul.d	$vr2, $vr2, $vr3
	vfmadd.d	$vr0, $vr0, $vr1, $vr2
	vfmadd.d	$vr0, $vr4, $vr5, $vr0
	vfadd.d	$vr0, $vr6, $vr0
	vstx	$vr0, $t2, $t5
	addi.d	$fp, $fp, -2
	add.d	$t5, $t5, $s8
	bnez	$fp, .LBB2_128
# %bb.129:                              # %middle.block5799
                                        #   in Loop: Header=BB2_120 Depth=6
	ld.d	$t2, $sp, 648                   # 8-byte Folded Reload
	move	$s4, $t2
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	beq	$t2, $a1, .LBB2_119
	b	.LBB2_131
	.p2align	4, , 16
.LBB2_130:                              #   in Loop: Header=BB2_120 Depth=6
	move	$s4, $zero
.LBB2_131:                              # %scalar.ph5781.preheader
                                        #   in Loop: Header=BB2_120 Depth=6
	move	$a1, $zero
	move	$t2, $zero
	ld.d	$t3, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$t3, $a4, $t3, 3
	alsl.d	$t7, $a3, $a0, 3
	alsl.d	$fp, $a3, $s1, 3
	alsl.d	$s0, $a3, $s3, 3
	alsl.d	$s2, $a2, $t8, 3
	alsl.d	$s5, $a2, $t6, 3
	alsl.d	$t5, $a2, $t4, 3
	ld.d	$s7, $sp, 672                   # 8-byte Folded Reload
	sub.d	$s4, $s7, $s4
	.p2align	4, , 16
.LBB2_132:                              # %scalar.ph5781
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_118 Depth=5
                                        #             Parent Loop BB2_120 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s2, $t2
	fldx.d	$fa1, $s0, $t2
	fldx.d	$fa2, $s5, $t2
	fldx.d	$fa3, $fp, $t2
	fldx.d	$fa4, $t5, $t2
	fldx.d	$fa5, $t7, $t2
	fldx.d	$fa6, $t3, $t2
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fadd.d	$fa0, $fa6, $fa0
	fstx.d	$fa0, $t3, $t2
	add.d	$t2, $t2, $ra
	addi.w	$s4, $s4, -1
	sub.d	$a1, $a1, $a5
	bnez	$s4, .LBB2_132
# %bb.133:                              # %._crit_edge.us.us.us.us.us.us3931.loopexit
                                        #   in Loop: Header=BB2_120 Depth=6
	sub.d	$a4, $a4, $a1
	sub.d	$a3, $a3, $a1
	sub.d	$a2, $a2, $a1
	b	.LBB2_119
.LBB2_134:                              #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.135:                              # %.preheader3275.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_68
# %bb.136:                              # %.preheader3264.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 64
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	st.d	$zero, $sp, 528                 # 8-byte Folded Spill
	ld.d	$a4, $a1, 48
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a0, 2
	slli.d	$a2, $a3, 2
	ldx.w	$t1, $a0, $a2
	ld.w	$t2, $a1, 4
	ld.w	$t7, $a1, 8
	ld.w	$t5, $a1, 12
	alsl.d	$a0, $a3, $a3, 1
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.d	$t3, $a3, $a0
	ld.d	$ra, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a1, $ra, 16
	ld.w	$a2, $ra, 4
	ldx.w	$a0, $a3, $a0
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	ld.w	$a5, $t3, 4
	ld.w	$a7, $t3, 8
	sub.w	$a1, $a1, $a2
	addi.w	$a3, $zero, -1
	slt	$a6, $a3, $a1
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $a3, $a6
	or	$a1, $a1, $a6
	ld.w	$t0, $ra, 12
	ld.w	$t4, $ra, 0
	addi.d	$a6, $a1, 1
	mul.d	$a1, $a6, $a7
	add.d	$s4, $a1, $a5
	sub.w	$a1, $t0, $t4
	slt	$a5, $a3, $a1
	maskeqz	$a1, $a1, $a5
	masknez	$a5, $a3, $a5
	or	$a1, $a1, $a5
	ld.w	$a5, $t3, 20
	ld.w	$a7, $t3, 16
	addi.d	$s7, $a1, 1
	ld.w	$a1, $t3, 32
	mul.d	$a5, $a5, $a6
	add.d	$s5, $a5, $a7
	ld.w	$a5, $t3, 28
	mul.d	$a1, $a1, $a6
	ld.w	$a7, $t3, 44
	ld.w	$t0, $t3, 40
	add.d	$s2, $a1, $a5
	ld.w	$s3, $t3, 36
	mul.d	$a1, $a7, $a6
	add.d	$s6, $a1, $t0
	ld.d	$t6, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a5, $t6, 0
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a1, $s8, 0
	ld.w	$a7, $t6, 4
	ld.w	$t0, $s8, 4
	ld.w	$t6, $t6, 8
	ld.w	$t8, $s8, 8
	ld.w	$fp, $s8, 16
	sub.d	$s0, $a5, $a1
	sub.d	$s1, $a7, $t0
	sub.d	$t8, $t6, $t8
	sub.w	$t0, $fp, $t0
	slt	$fp, $a3, $t0
	maskeqz	$t0, $t0, $fp
	masknez	$fp, $a3, $fp
	or	$t0, $t0, $fp
	ld.w	$fp, $s8, 12
	addi.d	$t0, $t0, 1
	mul.d	$t8, $t0, $t8
	add.d	$t8, $s1, $t8
	sub.w	$a1, $fp, $a1
	slt	$fp, $a3, $a1
	maskeqz	$a1, $a1, $fp
	masknez	$fp, $a3, $fp
	or	$a1, $a1, $fp
	addi.d	$fp, $a1, 1
	mul.d	$a1, $t8, $fp
	ld.w	$t8, $ra, 8
	add.w	$a1, $s0, $a1
	sub.d	$t4, $a5, $t4
	sub.d	$a2, $a7, $a2
	sub.d	$t8, $t6, $t8
	mul.d	$t8, $t8, $a6
	add.d	$a2, $a2, $t8
	mul.d	$a2, $a2, $s7
	add.w	$a2, $t4, $a2
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.w	$t4, $s8, 0
	ld.w	$t8, $s8, 4
	ld.w	$s0, $s8, 8
	ld.w	$s1, $s8, 16
	sub.d	$a5, $a5, $t4
	sub.d	$a7, $a7, $t8
	sub.d	$t6, $t6, $s0
	sub.w	$t8, $s1, $t8
	slt	$s0, $a3, $t8
	maskeqz	$t8, $t8, $s0
	masknez	$s0, $a3, $s0
	or	$t8, $t8, $s0
	ld.w	$s0, $s8, 12
	addi.d	$t8, $t8, 1
	mul.d	$t6, $t8, $t6
	add.d	$a7, $a7, $t6
	sub.w	$t4, $s0, $t4
	slt	$t6, $a3, $t4
	maskeqz	$t4, $t4, $t6
	masknez	$a3, $a3, $t6
	or	$a3, $t4, $a3
	addi.d	$t4, $a3, 1
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.w	$t6, $ra, 28
	mul.d	$a3, $a7, $t4
	add.w	$a3, $a5, $a3
	ld.w	$a5, $ra, 24
	mul.d	$a7, $t4, $t6
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	mul.d	$s0, $a0, $a7
	mul.d	$s1, $t6, $s7
	mul.d	$s8, $a0, $s1
	mul.d	$t4, $t4, $t8
	ld.w	$t8, $ra, 32
	mul.d	$t6, $t6, $fp
	mul.d	$t0, $fp, $t0
	mul.d	$fp, $a0, $t6
	mul.d	$t4, $t4, $t8
	mul.d	$a6, $s7, $a6
	mul.d	$a6, $a6, $t8
	mul.d	$t0, $t0, $t8
	ld.d	$ra, $sp, 672                   # 8-byte Folded Reload
	mul.d	$t8, $ra, $a5
	sub.d	$a0, $t6, $t8
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	sub.d	$a0, $s1, $t8
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	sub.d	$a0, $a7, $t8
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	sub.d	$a0, $t0, $fp
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	sub.d	$a0, $a6, $s8
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	sub.d	$a0, $t4, $s0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	alsl.d	$t4, $t5, $a4, 3
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	add.d	$a6, $a4, $a0
	addi.d	$a6, $a6, 8
	alsl.d	$a0, $t5, $a6, 3
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	alsl.d	$t6, $t7, $a4, 3
	alsl.d	$a0, $t7, $a6, 3
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	alsl.d	$t8, $t2, $a4, 3
	alsl.d	$a0, $t2, $a6, 3
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	alsl.d	$s0, $t1, $a4, 3
	alsl.d	$a0, $t1, $a6, 3
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ld.w	$a4, $t3, 12
	ld.w	$a6, $t3, 24
	mul.d	$a7, $s6, $s7
	add.w	$a7, $s3, $a7
	ori	$t0, $zero, 7
	sltu	$t0, $t0, $ra
	mul.d	$t1, $s2, $s7
	add.w	$a6, $a6, $t1
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s2, $a7, $t1, 3
	ld.d	$t2, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $t2, 3
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	mul.d	$a7, $s5, $s7
	add.w	$a4, $a4, $a7
	alsl.d	$s5, $a6, $t1, 3
	alsl.d	$a0, $a6, $t2, 3
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	mul.d	$a6, $s4, $s7
	alsl.d	$s7, $a4, $t1, 3
	alsl.d	$a0, $a4, $t2, 3
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a6
	addi.d	$a4, $a5, -1
	sltui	$a4, $a4, 1
	and	$a4, $t0, $a4
	st.d	$a4, $sp, 608                   # 8-byte Folded Spill
	alsl.d	$t1, $a0, $t1, 3
	alsl.d	$a0, $a0, $t2, 3
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a5
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	slli.d	$a4, $a5, 4
	slli.d	$t2, $a5, 3
	b	.LBB2_138
	.p2align	4, , 16
.LBB2_137:                              # %._crit_edge4076.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_138 Depth=5
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	add.w	$a2, $a0, $a2
	ld.d	$a6, $sp, 528                   # 8-byte Folded Reload
	addi.w	$a6, $a6, 1
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	add.w	$a3, $a0, $a3
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	st.d	$a6, $sp, 528                   # 8-byte Folded Spill
	beq	$a6, $a0, .LBB2_68
.LBB2_138:                              # %.preheader3264.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_140 Depth 6
                                        #               Child Loop BB2_150 Depth 7
                                        #               Child Loop BB2_154 Depth 7
	move	$a0, $zero
	b	.LBB2_140
	.p2align	4, , 16
.LBB2_139:                              # %._crit_edge.us.us.us.us.us.us4134
                                        #   in Loop: Header=BB2_140 Depth=6
	ld.d	$a6, $sp, 632                   # 8-byte Folded Reload
	add.w	$a1, $a6, $a1
	ld.d	$a6, $sp, 624                   # 8-byte Folded Reload
	add.w	$a2, $a6, $a2
	addi.w	$a0, $a0, 1
	ld.d	$a6, $sp, 616                   # 8-byte Folded Reload
	add.w	$a3, $a6, $a3
	ld.d	$a6, $sp, 664                   # 8-byte Folded Reload
	beq	$a0, $a6, .LBB2_137
.LBB2_140:                              # %.preheader3256.us.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_138 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_150 Depth 7
                                        #               Child Loop BB2_154 Depth 7
	ld.d	$a6, $sp, 608                   # 8-byte Folded Reload
	beqz	$a6, .LBB2_152
# %bb.141:                              # %vector.memcheck5587
                                        #   in Loop: Header=BB2_140 Depth=6
	ld.d	$a6, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$s8, $a3, $a6, 3
	ld.d	$a6, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$t3, $a3, $a6, 3
	alsl.d	$s6, $a1, $t4, 3
	ld.d	$a6, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $a6, 3
	sltu	$a6, $s8, $a6
	sltu	$a7, $s6, $t3
	and	$a6, $a6, $a7
	move	$s4, $zero
	bnez	$a6, .LBB2_153
# %bb.142:                              # %vector.memcheck5587
                                        #   in Loop: Header=BB2_140 Depth=6
	alsl.d	$t5, $a1, $t6, 3
	ld.d	$a6, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $a6, 3
	sltu	$a6, $s8, $a6
	sltu	$a7, $t5, $t3
	and	$a6, $a6, $a7
	bnez	$a6, .LBB2_153
# %bb.143:                              # %vector.memcheck5587
                                        #   in Loop: Header=BB2_140 Depth=6
	alsl.d	$t7, $a1, $t8, 3
	ld.d	$a6, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $a6, 3
	sltu	$a6, $s8, $a6
	sltu	$a7, $t7, $t3
	and	$a6, $a6, $a7
	bnez	$a6, .LBB2_153
# %bb.144:                              # %vector.memcheck5587
                                        #   in Loop: Header=BB2_140 Depth=6
	alsl.d	$s1, $a1, $s0, 3
	ld.d	$a6, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $a6, 3
	sltu	$a6, $s8, $a6
	sltu	$a7, $s1, $t3
	and	$a6, $a6, $a7
	bnez	$a6, .LBB2_153
# %bb.145:                              # %vector.memcheck5587
                                        #   in Loop: Header=BB2_140 Depth=6
	alsl.d	$fp, $a2, $s2, 3
	ld.d	$a6, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a6, $a2, $a6, 3
	sltu	$a6, $s8, $a6
	sltu	$a7, $fp, $t3
	and	$a6, $a6, $a7
	bnez	$a6, .LBB2_153
# %bb.146:                              # %vector.memcheck5587
                                        #   in Loop: Header=BB2_140 Depth=6
	alsl.d	$s3, $a2, $s5, 3
	ld.d	$a6, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a6, $a2, $a6, 3
	sltu	$a6, $s8, $a6
	sltu	$a7, $s3, $t3
	and	$a6, $a6, $a7
	bnez	$a6, .LBB2_153
# %bb.147:                              # %vector.memcheck5587
                                        #   in Loop: Header=BB2_140 Depth=6
	alsl.d	$a6, $a2, $s7, 3
	ld.d	$a7, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a7, $a2, $a7, 3
	sltu	$a7, $s8, $a7
	sltu	$t0, $a6, $t3
	and	$a7, $a7, $t0
	bnez	$a7, .LBB2_153
# %bb.148:                              # %vector.memcheck5587
                                        #   in Loop: Header=BB2_140 Depth=6
	alsl.d	$a7, $a2, $t1, 3
	ld.d	$t0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t0, $a2, $t0, 3
	sltu	$t0, $s8, $t0
	sltu	$t3, $a7, $t3
	and	$t0, $t0, $t3
	bnez	$t0, .LBB2_153
# %bb.149:                              # %vector.ph5683
                                        #   in Loop: Header=BB2_140 Depth=6
	move	$t0, $zero
	ld.d	$t3, $sp, 536                   # 8-byte Folded Reload
	add.d	$a3, $t3, $a3
	add.d	$a2, $t3, $a2
	add.d	$a1, $t3, $a1
	ld.d	$t3, $sp, 648                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_150:                              # %vector.body5686
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_138 Depth=5
                                        #             Parent Loop BB2_140 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	vldx	$vr0, $t7, $t0
	vldx	$vr1, $a6, $t0
	vldx	$vr2, $s1, $t0
	vldx	$vr3, $a7, $t0
	vfmul.d	$vr0, $vr0, $vr1
	vldx	$vr1, $t5, $t0
	vldx	$vr4, $s3, $t0
	vldx	$vr5, $s6, $t0
	vldx	$vr6, $fp, $t0
	vldx	$vr7, $s8, $t0
	vfmadd.d	$vr0, $vr2, $vr3, $vr0
	vfmadd.d	$vr0, $vr1, $vr4, $vr0
	vfmadd.d	$vr0, $vr5, $vr6, $vr0
	vfadd.d	$vr0, $vr7, $vr0
	vstx	$vr0, $s8, $t0
	addi.d	$t3, $t3, -2
	add.d	$t0, $t0, $a4
	bnez	$t3, .LBB2_150
# %bb.151:                              # %middle.block5701
                                        #   in Loop: Header=BB2_140 Depth=6
	ld.d	$a7, $sp, 648                   # 8-byte Folded Reload
	move	$s4, $a7
	ld.d	$a6, $sp, 640                   # 8-byte Folded Reload
	beq	$a7, $a6, .LBB2_139
	b	.LBB2_153
	.p2align	4, , 16
.LBB2_152:                              #   in Loop: Header=BB2_140 Depth=6
	move	$s4, $zero
.LBB2_153:                              # %scalar.ph5681.preheader
                                        #   in Loop: Header=BB2_140 Depth=6
	move	$a6, $zero
	move	$a7, $zero
	ld.d	$t0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$t3, $a3, $t0, 3
	alsl.d	$t5, $a2, $s2, 3
	alsl.d	$t7, $a2, $s5, 3
	alsl.d	$fp, $a2, $s7, 3
	alsl.d	$s1, $a2, $t1, 3
	alsl.d	$s3, $a1, $s0, 3
	alsl.d	$s6, $a1, $t8, 3
	alsl.d	$s8, $a1, $t6, 3
	alsl.d	$t0, $a1, $t4, 3
	ld.d	$ra, $sp, 672                   # 8-byte Folded Reload
	sub.d	$s4, $ra, $s4
	.p2align	4, , 16
.LBB2_154:                              # %scalar.ph5681
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_138 Depth=5
                                        #             Parent Loop BB2_140 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s6, $a7
	fldx.d	$fa1, $fp, $a7
	fldx.d	$fa2, $s3, $a7
	fldx.d	$fa3, $s1, $a7
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $s8, $a7
	fldx.d	$fa4, $t7, $a7
	fldx.d	$fa5, $t0, $a7
	fldx.d	$fa6, $t5, $a7
	fldx.d	$fa7, $t3, $a7
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fadd.d	$fa0, $fa7, $fa0
	fstx.d	$fa0, $t3, $a7
	add.d	$a7, $a7, $t2
	addi.w	$s4, $s4, -1
	sub.d	$a6, $a6, $a5
	bnez	$s4, .LBB2_154
# %bb.155:                              # %._crit_edge.us.us.us.us.us.us4134.loopexit
                                        #   in Loop: Header=BB2_140 Depth=6
	sub.d	$a3, $a3, $a6
	sub.d	$a2, $a2, $a6
	sub.d	$a1, $a1, $a6
	b	.LBB2_139
.LBB2_156:                              #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.157:                              # %.preheader3279.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_68
# %bb.158:                              # %.preheader3266.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 64
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	move	$s7, $zero
	ld.d	$t5, $a1, 48
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a0, 2
	slli.d	$a2, $a3, 2
	ldx.w	$t6, $a0, $a2
	ld.w	$t4, $a1, 4
	alsl.d	$a0, $a3, $a3, 1
	slli.d	$a0, $a0, 2
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a0
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a2, $s4, 16
	ld.w	$a3, $s4, 4
	ldx.w	$fp, $a4, $a0
	ld.w	$a4, $a1, 4
	ld.w	$a6, $a1, 8
	sub.w	$a2, $a2, $a3
	addi.w	$a0, $zero, -1
	slt	$a5, $a0, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $a0, $a5
	or	$a2, $a2, $a5
	ld.w	$a7, $s4, 12
	ld.w	$t0, $s4, 0
	addi.d	$a5, $a2, 1
	mul.d	$a2, $a5, $a6
	add.d	$s0, $a2, $a4
	sub.w	$a2, $a7, $t0
	slt	$a4, $a0, $a2
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a0, $a4
	or	$a2, $a2, $a4
	ld.w	$a4, $a1, 20
	ld.w	$a6, $a1, 16
	addi.d	$s1, $a2, 1
	ld.w	$t7, $a1, 12
	mul.d	$a1, $a4, $a5
	add.d	$t8, $a1, $a6
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a1, $a7, 0
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $s3, 0
	ld.w	$a4, $a7, 4
	ld.w	$a6, $s3, 4
	ld.w	$a7, $a7, 8
	ld.w	$t1, $s3, 8
	ld.w	$t2, $s3, 16
	sub.d	$t3, $a1, $a2
	sub.d	$s2, $a4, $a6
	sub.d	$t1, $a7, $t1
	sub.w	$a6, $t2, $a6
	slt	$t2, $a0, $a6
	maskeqz	$a6, $a6, $t2
	masknez	$t2, $a0, $t2
	or	$a6, $a6, $t2
	ld.w	$t2, $s3, 12
	addi.d	$a6, $a6, 1
	mul.d	$t1, $a6, $t1
	add.d	$t1, $s2, $t1
	sub.w	$a2, $t2, $a2
	slt	$t2, $a0, $a2
	maskeqz	$a2, $a2, $t2
	masknez	$t2, $a0, $t2
	or	$a2, $a2, $t2
	addi.d	$t2, $a2, 1
	mul.d	$a2, $t1, $t2
	ld.w	$t1, $s4, 8
	add.w	$a2, $t3, $a2
	sub.d	$t0, $a1, $t0
	sub.d	$a3, $a4, $a3
	sub.d	$t1, $a7, $t1
	mul.d	$t1, $t1, $a5
	add.d	$a3, $a3, $t1
	mul.d	$a3, $a3, $s1
	add.w	$a3, $t0, $a3
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	ld.w	$t0, $s3, 0
	ld.w	$t1, $s3, 4
	ld.w	$t3, $s3, 8
	ld.w	$s2, $s3, 16
	sub.d	$a1, $a1, $t0
	sub.d	$a4, $a4, $t1
	sub.d	$a7, $a7, $t3
	sub.w	$t1, $s2, $t1
	slt	$t3, $a0, $t1
	maskeqz	$t1, $t1, $t3
	masknez	$t3, $a0, $t3
	or	$t1, $t1, $t3
	ld.w	$t3, $s3, 12
	addi.d	$t1, $t1, 1
	mul.d	$a7, $t1, $a7
	add.d	$a4, $a4, $a7
	sub.w	$a7, $t3, $t0
	slt	$t0, $a0, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$a0, $a0, $t0
	or	$a0, $a7, $a0
	addi.d	$a7, $a0, 1
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	ld.w	$t0, $s4, 28
	mul.d	$a0, $a4, $a7
	add.w	$a0, $a1, $a0
	ld.w	$a4, $s4, 24
	mul.d	$a1, $a7, $t0
	ld.d	$s5, $sp, 664                   # 8-byte Folded Reload
	mul.d	$t3, $s5, $a1
	mul.d	$s2, $t0, $s1
	mul.d	$s3, $s5, $s2
	mul.d	$a7, $a7, $t1
	ld.w	$t1, $s4, 32
	mul.d	$t0, $t0, $t2
	mul.d	$a6, $t2, $a6
	mul.d	$t2, $s5, $t0
	mul.d	$s4, $a7, $t1
	mul.d	$a5, $s1, $a5
	mul.d	$s5, $a5, $t1
	mul.d	$t1, $a6, $t1
	ld.d	$s6, $sp, 672                   # 8-byte Folded Reload
	mul.d	$a7, $s6, $a4
	sub.d	$a5, $t0, $a7
	sub.d	$a6, $s2, $a7
	sub.d	$a7, $a1, $a7
	sub.d	$a1, $t1, $t2
	st.d	$a1, $sp, 616                   # 8-byte Folded Spill
	sub.d	$a1, $s5, $s3
	st.d	$a1, $sp, 608                   # 8-byte Folded Spill
	sub.d	$a1, $s4, $t3
	st.d	$a1, $sp, 600                   # 8-byte Folded Spill
	ori	$a1, $zero, 5
	sltu	$a1, $a1, $s6
	alsl.d	$t3, $t4, $t5, 3
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	add.d	$t0, $t5, $t0
	addi.d	$t0, $t0, 8
	alsl.d	$t4, $t4, $t0, 3
	alsl.d	$t5, $t6, $t5, 3
	alsl.d	$t6, $t6, $t0, 3
	mul.d	$t0, $t8, $s1
	add.w	$t0, $t7, $t0
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$t7, $t0, $t1, 3
	ld.d	$t2, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t8, $t0, $t2, 3
	mul.d	$t0, $s0, $s1
	add.w	$t0, $fp, $t0
	alsl.d	$fp, $t0, $t1, 3
	alsl.d	$t0, $t0, $t2, 3
	st.d	$t0, $sp, 632                   # 8-byte Folded Spill
	addi.d	$t0, $a4, -1
	sltui	$t0, $t0, 1
	and	$s1, $a1, $t0
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	mul.d	$s2, $a1, $a4
	slli.d	$s3, $a4, 4
	slli.d	$s5, $a4, 3
	b	.LBB2_160
	.p2align	4, , 16
.LBB2_159:                              # %._crit_edge3686.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_160 Depth=5
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	add.w	$a2, $a1, $a2
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	add.w	$a3, $a1, $a3
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	addi.w	$s7, $s7, 1
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	beq	$s7, $a1, .LBB2_68
.LBB2_160:                              # %.preheader3266.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_162 Depth 6
                                        #               Child Loop BB2_168 Depth 7
                                        #               Child Loop BB2_172 Depth 7
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	move	$s6, $zero
	b	.LBB2_162
	.p2align	4, , 16
.LBB2_161:                              # %._crit_edge.us.us.us.us.us.us3744
                                        #   in Loop: Header=BB2_162 Depth=6
	add.w	$a2, $a5, $a2
	add.w	$a3, $a6, $a3
	addi.w	$s6, $s6, 1
	add.w	$a0, $a7, $a0
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	beq	$s6, $a1, .LBB2_159
.LBB2_162:                              # %.preheader3258.us.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_160 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_168 Depth 7
                                        #               Child Loop BB2_172 Depth 7
	beqz	$s1, .LBB2_170
# %bb.163:                              # %vector.memcheck5807
                                        #   in Loop: Header=BB2_162 Depth=6
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$s7, $a0, $a1, 3
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$t2, $a0, $a1, 3
	alsl.d	$s8, $a2, $t3, 3
	alsl.d	$a1, $a2, $t4, 3
	sltu	$a1, $s7, $a1
	sltu	$t0, $s8, $t2
	and	$a1, $a1, $t0
	move	$s4, $zero
	bnez	$a1, .LBB2_171
# %bb.164:                              # %vector.memcheck5807
                                        #   in Loop: Header=BB2_162 Depth=6
	alsl.d	$ra, $a2, $t5, 3
	alsl.d	$a1, $a2, $t6, 3
	sltu	$a1, $s7, $a1
	sltu	$t0, $ra, $t2
	and	$a1, $a1, $t0
	bnez	$a1, .LBB2_171
# %bb.165:                              # %vector.memcheck5807
                                        #   in Loop: Header=BB2_162 Depth=6
	alsl.d	$t0, $a3, $t7, 3
	alsl.d	$a1, $a3, $t8, 3
	sltu	$a1, $s7, $a1
	sltu	$t1, $t0, $t2
	and	$a1, $a1, $t1
	bnez	$a1, .LBB2_171
# %bb.166:                              # %vector.memcheck5807
                                        #   in Loop: Header=BB2_162 Depth=6
	alsl.d	$t1, $a3, $fp, 3
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 3
	sltu	$a1, $s7, $a1
	sltu	$t2, $t1, $t2
	and	$a1, $a1, $t2
	bnez	$a1, .LBB2_171
# %bb.167:                              # %vector.ph5859
                                        #   in Loop: Header=BB2_162 Depth=6
	move	$a1, $zero
	add.d	$a0, $s2, $a0
	add.d	$a3, $s2, $a3
	add.d	$a2, $s2, $a2
	ld.d	$t2, $sp, 648                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_168:                              # %vector.body5862
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_160 Depth=5
                                        #             Parent Loop BB2_162 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	vldx	$vr0, $ra, $a1
	vldx	$vr1, $s8, $a1
	vldx	$vr2, $t0, $a1
	vldx	$vr3, $t1, $a1
	vldx	$vr4, $s7, $a1
	vfmul.d	$vr1, $vr1, $vr2
	vfmadd.d	$vr0, $vr0, $vr3, $vr1
	vfadd.d	$vr0, $vr4, $vr0
	vstx	$vr0, $s7, $a1
	addi.d	$t2, $t2, -2
	add.d	$a1, $a1, $s3
	bnez	$t2, .LBB2_168
# %bb.169:                              # %middle.block5873
                                        #   in Loop: Header=BB2_162 Depth=6
	ld.d	$t0, $sp, 648                   # 8-byte Folded Reload
	move	$s4, $t0
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	beq	$t0, $a1, .LBB2_161
	b	.LBB2_171
	.p2align	4, , 16
.LBB2_170:                              #   in Loop: Header=BB2_162 Depth=6
	move	$s4, $zero
.LBB2_171:                              # %scalar.ph5857.preheader
                                        #   in Loop: Header=BB2_162 Depth=6
	move	$t0, $zero
	move	$t1, $zero
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$s7, $a0, $a1, 3
	alsl.d	$s8, $a3, $t7, 3
	alsl.d	$ra, $a3, $fp, 3
	alsl.d	$t2, $a2, $t5, 3
	alsl.d	$a1, $a2, $t3, 3
	ld.d	$s0, $sp, 672                   # 8-byte Folded Reload
	sub.d	$s4, $s0, $s4
	.p2align	4, , 16
.LBB2_172:                              # %scalar.ph5857
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_160 Depth=5
                                        #             Parent Loop BB2_162 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $a1, $t1
	fldx.d	$fa2, $s8, $t1
	fldx.d	$fa3, $ra, $t1
	fldx.d	$fa4, $s7, $t1
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fadd.d	$fa0, $fa4, $fa0
	fstx.d	$fa0, $s7, $t1
	add.d	$t1, $t1, $s5
	addi.w	$s4, $s4, -1
	sub.d	$t0, $t0, $a4
	bnez	$s4, .LBB2_172
# %bb.173:                              # %._crit_edge.us.us.us.us.us.us3744.loopexit
                                        #   in Loop: Header=BB2_162 Depth=6
	sub.d	$a0, $a0, $t0
	sub.d	$a3, $a3, $t0
	sub.d	$a2, $a2, $t0
	b	.LBB2_161
.LBB2_174:                              #   in Loop: Header=BB2_69 Depth=4
	ld.w	$a2, $sp, 712
	ld.w	$a3, $sp, 716
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	slt	$a0, $a1, $a2
	masknez	$a1, $a1, $a0
	st.d	$a2, $sp, 568                   # 8-byte Folded Spill
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_68
# %bb.175:                              # %.preheader3271.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.176:                              # %.preheader3271.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.177:                              # %.preheader3271.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.178:                              # %.preheader3262.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 64
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	st.d	$zero, $sp, 416                 # 8-byte Folded Spill
	ld.d	$t1, $a1, 48
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a0, 2
	slli.d	$a2, $a3, 2
	ldx.w	$t2, $a0, $a2
	ld.w	$t5, $a1, 4
	ld.w	$t7, $a1, 8
	ld.w	$fp, $a1, 12
	alsl.d	$a0, $a3, $a3, 1
	slli.d	$s3, $a0, 2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a0, 4
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	add.d	$a7, $t6, $s3
	ld.w	$a5, $a7, 4
	ld.w	$t0, $a7, 8
	sub.w	$a4, $a2, $a3
	addi.w	$a2, $zero, -1
	slt	$a6, $a2, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $a2, $a6
	or	$a6, $a4, $a6
	ld.w	$t3, $a0, 12
	ld.w	$a4, $a0, 0
	addi.d	$a6, $a6, 1
	mul.d	$t0, $a6, $t0
	add.d	$a5, $t0, $a5
	st.d	$a5, $sp, 584                   # 8-byte Folded Spill
	sub.w	$a5, $t3, $a4
	slt	$t0, $a2, $a5
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $a2, $t0
	ld.w	$t3, $a7, 20
	ld.w	$t4, $a7, 16
	or	$a5, $a5, $t0
	addi.d	$s1, $a5, 1
	mul.d	$a5, $t3, $a6
	add.d	$a5, $a5, $t4
	st.d	$a5, $sp, 576                   # 8-byte Folded Spill
	ld.w	$a5, $a7, 32
	ld.w	$t0, $a7, 28
	ld.w	$t3, $a7, 44
	ld.w	$t8, $a7, 40
	mul.d	$a5, $a5, $a6
	add.d	$t4, $a5, $t0
	mul.d	$a5, $t3, $a6
	add.d	$s4, $a5, $t8
	ld.w	$a5, $a7, 56
	ld.w	$t0, $a7, 52
	ld.w	$t3, $a7, 68
	ld.w	$t8, $a7, 64
	mul.d	$a5, $a5, $a6
	add.d	$t0, $a5, $t0
	mul.d	$a5, $t3, $a6
	add.d	$s6, $a5, $t8
	ld.d	$s0, $sp, 288                   # 8-byte Folded Reload
	ld.w	$t3, $s0, 0
	ld.w	$t8, $s0, 4
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a5, $ra, 4
	ld.w	$s0, $s0, 8
	ld.w	$s2, $ra, 8
	ld.w	$s5, $ra, 16
	ld.w	$s7, $ra, 0
	sub.d	$s8, $t8, $a5
	sub.d	$s2, $s0, $s2
	sub.w	$a5, $s5, $a5
	slt	$s5, $a2, $a5
	maskeqz	$a5, $a5, $s5
	masknez	$s5, $a2, $s5
	or	$a5, $a5, $s5
	addi.d	$s5, $a5, 1
	ld.w	$a5, $ra, 12
	mul.d	$s2, $s5, $s2
	add.d	$s2, $s8, $s2
	sub.d	$s8, $t3, $s7
	sub.w	$a5, $a5, $s7
	slt	$s7, $a2, $a5
	maskeqz	$a5, $a5, $s7
	masknez	$s7, $a2, $s7
	or	$a5, $a5, $s7
	addi.d	$s7, $a5, 1
	mul.d	$a5, $s2, $s7
	ld.w	$s2, $a0, 8
	add.w	$a5, $s8, $a5
	sub.d	$a4, $t3, $a4
	sub.d	$a3, $t8, $a3
	sub.d	$s2, $s0, $s2
	mul.d	$s2, $s2, $a6
	add.d	$a3, $a3, $s2
	mul.d	$a3, $a3, $s1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$s2, $a0, 8
	add.w	$a4, $a4, $a3
	ld.w	$a3, $a0, 4
	ld.w	$s8, $a0, 16
	sub.d	$s0, $s0, $s2
	ld.w	$s2, $a0, 0
	sub.d	$t8, $t8, $a3
	sub.w	$a3, $s8, $a3
	slt	$s8, $a2, $a3
	maskeqz	$a3, $a3, $s8
	masknez	$s8, $a2, $s8
	or	$a3, $a3, $s8
	addi.d	$s8, $a3, 1
	mul.d	$a3, $s8, $s0
	add.d	$a3, $t8, $a3
	ld.w	$t8, $a0, 12
	ld.w	$s0, $a1, 16
	ld.w	$a1, $a1, 20
	sub.d	$t3, $t3, $s2
	sub.w	$t8, $t8, $s2
	slt	$s2, $a2, $t8
	maskeqz	$t8, $t8, $s2
	masknez	$a2, $a2, $s2
	or	$a2, $t8, $a2
	addi.d	$t8, $a2, 1
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.w	$s2, $ra, 28
	mul.d	$a2, $a3, $t8
	add.w	$a2, $t3, $a2
	ld.w	$a3, $ra, 24
	mul.d	$t3, $t8, $s2
	mul.d	$t8, $t8, $s8
	ld.w	$s8, $ra, 32
	mul.d	$s5, $s7, $s5
	mul.d	$s7, $s2, $s7
	mul.d	$s2, $s2, $s1
	mul.d	$t8, $t8, $s8
	mul.d	$a6, $s1, $a6
	mul.d	$a6, $a6, $s8
	mul.d	$s5, $s5, $s8
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	mul.d	$s8, $a0, $s7
	sub.d	$s5, $s5, $s8
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	mul.d	$s5, $a0, $s2
	sub.d	$a6, $a6, $s5
	st.d	$a6, $sp, 392                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 672                   # 8-byte Folded Reload
	mul.d	$a6, $s5, $a3
	sub.d	$s7, $s7, $a6
	st.d	$s7, $sp, 560                   # 8-byte Folded Spill
	sub.d	$s2, $s2, $a6
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	sub.d	$a6, $t3, $a6
	st.d	$a6, $sp, 544                   # 8-byte Folded Spill
	mul.d	$a6, $a0, $t3
	sub.d	$a0, $t8, $a6
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	add.d	$a6, $t1, $a0
	addi.d	$a6, $a6, 8
	alsl.d	$a0, $a1, $t1, 3
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a6, 3
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $t1, 3
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $a6, 3
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	alsl.d	$a0, $fp, $t1, 3
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	alsl.d	$a0, $fp, $a6, 3
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	alsl.d	$a0, $t7, $t1, 3
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	alsl.d	$a0, $t7, $a6, 3
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	alsl.d	$a0, $t5, $t1, 3
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	alsl.d	$a0, $t5, $a6, 3
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	alsl.d	$a0, $t2, $t1, 3
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	ld.w	$a1, $a7, 60
	alsl.d	$a0, $t2, $a6, 3
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	mul.d	$a6, $s6, $s1
	ld.w	$t1, $a7, 48
	add.w	$a1, $a1, $a6
	mul.d	$a6, $t0, $s1
	ld.w	$t0, $a7, 36
	add.w	$a6, $t1, $a6
	mul.d	$t1, $s4, $s1
	ld.w	$t2, $a7, 24
	add.w	$t0, $t0, $t1
	ld.w	$a7, $a7, 12
	mul.d	$t1, $t4, $s1
	add.w	$t2, $t2, $t1
	ldx.w	$a0, $t6, $s3
	ld.d	$t1, $sp, 576                   # 8-byte Folded Reload
	mul.d	$t1, $t1, $s1
	add.w	$a7, $a7, $t1
	ld.d	$t1, $sp, 584                   # 8-byte Folded Reload
	mul.d	$t1, $t1, $s1
	add.w	$a0, $a0, $t1
	addi.d	$t1, $a3, -1
	sltui	$t1, $t1, 1
	ori	$t3, $zero, 7
	sltu	$t3, $t3, $s5
	and	$t1, $t3, $t1
	st.d	$t1, $sp, 536                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$t5, $a1, $t3, 3
	ld.d	$t4, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $t4, 3
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	alsl.d	$t1, $a6, $t3, 3
	alsl.d	$a1, $a6, $t4, 3
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	alsl.d	$t6, $t0, $t3, 3
	alsl.d	$a1, $t0, $t4, 3
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	alsl.d	$fp, $t2, $t3, 3
	alsl.d	$a1, $t2, $t4, 3
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	alsl.d	$a1, $a7, $t3, 3
	st.d	$a1, $sp, 584                   # 8-byte Folded Spill
	alsl.d	$a1, $a7, $t4, 3
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t3, 3
	st.d	$a1, $sp, 576                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $t4, 3
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a3
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	slli.d	$s1, $a3, 4
	slli.d	$t7, $a3, 3
	b	.LBB2_180
	.p2align	4, , 16
.LBB2_179:                              # %._crit_edge4286.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_180 Depth=5
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	add.w	$a5, $a0, $a5
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	add.w	$a4, $a0, $a4
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	add.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	beq	$a1, $a0, .LBB2_68
.LBB2_180:                              # %.preheader3262.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_182 Depth 6
                                        #               Child Loop BB2_196 Depth 7
                                        #               Child Loop BB2_200 Depth 7
	move	$t2, $zero
	b	.LBB2_182
	.p2align	4, , 16
.LBB2_181:                              # %._crit_edge.us.us.us.us.us.us4344
                                        #   in Loop: Header=BB2_182 Depth=6
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	add.w	$a5, $a0, $a5
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	add.w	$a4, $a0, $a4
	addi.w	$t2, $t2, 1
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	add.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	beq	$t2, $a0, .LBB2_179
.LBB2_182:                              # %.preheader3254.us.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_180 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_196 Depth 7
                                        #               Child Loop BB2_200 Depth 7
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_198
# %bb.183:                              # %vector.memcheck5271
                                        #   in Loop: Header=BB2_182 Depth=6
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$s4, $a2, $a0, 3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$t3, $a2, $a0, 3
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a7, $a5, $a0, 3
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a0, 3
	sltu	$a0, $s4, $a0
	sltu	$a1, $a7, $t3
	and	$a1, $a0, $a1
	move	$a0, $zero
	bnez	$a1, .LBB2_199
# %bb.184:                              # %vector.memcheck5271
                                        #   in Loop: Header=BB2_182 Depth=6
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$t4, $a5, $a1, 3
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 3
	sltu	$a1, $s4, $a1
	sltu	$a6, $t4, $t3
	and	$a1, $a1, $a6
	bnez	$a1, .LBB2_199
# %bb.185:                              # %vector.memcheck5271
                                        #   in Loop: Header=BB2_182 Depth=6
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$s8, $a5, $a1, 3
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 3
	sltu	$a1, $s4, $a1
	sltu	$a6, $s8, $t3
	and	$a1, $a1, $a6
	bnez	$a1, .LBB2_199
# %bb.186:                              # %vector.memcheck5271
                                        #   in Loop: Header=BB2_182 Depth=6
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$t0, $a5, $a1, 3
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 3
	sltu	$a1, $s4, $a1
	sltu	$a6, $t0, $t3
	and	$a1, $a1, $a6
	bnez	$a1, .LBB2_199
# %bb.187:                              # %vector.memcheck5271
                                        #   in Loop: Header=BB2_182 Depth=6
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a1, 3
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 3
	sltu	$a1, $s4, $a1
	sltu	$t8, $a6, $t3
	and	$a1, $a1, $t8
	bnez	$a1, .LBB2_199
# %bb.188:                              # %vector.memcheck5271
                                        #   in Loop: Header=BB2_182 Depth=6
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 3
	ld.d	$t8, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$t8, $a5, $t8, 3
	sltu	$t8, $s4, $t8
	sltu	$s0, $a1, $t3
	and	$t8, $t8, $s0
	bnez	$t8, .LBB2_199
# %bb.189:                              # %vector.memcheck5271
                                        #   in Loop: Header=BB2_182 Depth=6
	alsl.d	$ra, $a4, $t5, 3
	ld.d	$t8, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$t8, $a4, $t8, 3
	sltu	$t8, $s4, $t8
	sltu	$s0, $ra, $t3
	and	$t8, $t8, $s0
	bnez	$t8, .LBB2_199
# %bb.190:                              # %vector.memcheck5271
                                        #   in Loop: Header=BB2_182 Depth=6
	alsl.d	$t8, $a4, $t1, 3
	ld.d	$s0, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$s0, $a4, $s0, 3
	sltu	$s0, $s4, $s0
	sltu	$s2, $t8, $t3
	and	$s0, $s0, $s2
	bnez	$s0, .LBB2_199
# %bb.191:                              # %vector.memcheck5271
                                        #   in Loop: Header=BB2_182 Depth=6
	alsl.d	$s0, $a4, $t6, 3
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$s2, $a4, $s2, 3
	sltu	$s2, $s4, $s2
	sltu	$s5, $s0, $t3
	and	$s2, $s2, $s5
	bnez	$s2, .LBB2_199
# %bb.192:                              # %vector.memcheck5271
                                        #   in Loop: Header=BB2_182 Depth=6
	alsl.d	$s6, $a4, $fp, 3
	ld.d	$s2, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$s2, $a4, $s2, 3
	sltu	$s2, $s4, $s2
	sltu	$s5, $s6, $t3
	and	$s2, $s2, $s5
	bnez	$s2, .LBB2_199
# %bb.193:                              # %vector.memcheck5271
                                        #   in Loop: Header=BB2_182 Depth=6
	ld.d	$s2, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$s2, $a4, $s2, 3
	ld.d	$s3, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$s5, $a4, $s3, 3
	sltu	$s5, $s4, $s5
	sltu	$s7, $s2, $t3
	and	$s5, $s5, $s7
	bnez	$s5, .LBB2_199
# %bb.194:                              # %vector.memcheck5271
                                        #   in Loop: Header=BB2_182 Depth=6
	ld.d	$s3, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$s5, $a4, $s3, 3
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$s7, $a4, $s3, 3
	sltu	$s7, $s4, $s7
	sltu	$t3, $s5, $t3
	and	$t3, $s7, $t3
	bnez	$t3, .LBB2_199
# %bb.195:                              # %vector.ph5411
                                        #   in Loop: Header=BB2_182 Depth=6
	move	$a0, $zero
	ld.d	$t3, $sp, 424                   # 8-byte Folded Reload
	add.d	$a2, $t3, $a2
	add.d	$a4, $t3, $a4
	add.d	$a5, $t3, $a5
	ld.d	$t3, $sp, 648                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_196:                              # %vector.body5414
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_180 Depth=5
                                        #             Parent Loop BB2_182 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	vldx	$vr0, $a1, $a0
	vldx	$vr1, $s5, $a0
	vldx	$vr2, $a6, $a0
	vldx	$vr3, $s2, $a0
	vldx	$vr4, $t0, $a0
	vldx	$vr5, $s6, $a0
	vfmul.d	$vr2, $vr2, $vr3
	vfmadd.d	$vr0, $vr0, $vr1, $vr2
	vfmadd.d	$vr0, $vr4, $vr5, $vr0
	vldx	$vr1, $s8, $a0
	vldx	$vr2, $s0, $a0
	vldx	$vr3, $t4, $a0
	vldx	$vr4, $t8, $a0
	vldx	$vr5, $a7, $a0
	vldx	$vr6, $ra, $a0
	vldx	$vr7, $s4, $a0
	vfmadd.d	$vr0, $vr1, $vr2, $vr0
	vfmadd.d	$vr0, $vr3, $vr4, $vr0
	vfmadd.d	$vr0, $vr5, $vr6, $vr0
	vfadd.d	$vr0, $vr7, $vr0
	vstx	$vr0, $s4, $a0
	addi.d	$t3, $t3, -2
	add.d	$a0, $a0, $s1
	bnez	$t3, .LBB2_196
# %bb.197:                              # %middle.block5433
                                        #   in Loop: Header=BB2_182 Depth=6
	ld.d	$a6, $sp, 648                   # 8-byte Folded Reload
	move	$a0, $a6
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	beq	$a6, $a1, .LBB2_181
	b	.LBB2_199
	.p2align	4, , 16
.LBB2_198:                              #   in Loop: Header=BB2_182 Depth=6
	move	$a0, $zero
.LBB2_199:                              # %scalar.ph5409.preheader
                                        #   in Loop: Header=BB2_182 Depth=6
	move	$a1, $zero
	move	$a6, $zero
	ld.d	$a7, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a7, $a2, $a7, 3
	alsl.d	$t0, $a4, $t5, 3
	alsl.d	$t3, $a4, $t1, 3
	alsl.d	$t4, $a4, $t6, 3
	alsl.d	$t8, $a4, $fp, 3
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$s0, $a4, $s0, 3
	ld.d	$s2, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$s2, $a4, $s2, 3
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$s4, $a5, $s3, 3
	ld.d	$s3, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$s5, $a5, $s3, 3
	ld.d	$s3, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$s6, $a5, $s3, 3
	ld.d	$s3, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$s8, $a5, $s3, 3
	ld.d	$s3, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$ra, $a5, $s3, 3
	ld.d	$s3, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$s7, $a5, $s3, 3
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
	sub.d	$a0, $s3, $a0
	.p2align	4, , 16
.LBB2_200:                              # %scalar.ph5409
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_180 Depth=5
                                        #             Parent Loop BB2_182 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s4, $a6
	fldx.d	$fa1, $s2, $a6
	fldx.d	$fa2, $s5, $a6
	fldx.d	$fa3, $s0, $a6
	fldx.d	$fa4, $s6, $a6
	fldx.d	$fa5, $t8, $a6
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fldx.d	$fa1, $s8, $a6
	fldx.d	$fa2, $t4, $a6
	fldx.d	$fa3, $ra, $a6
	fldx.d	$fa4, $t3, $a6
	fldx.d	$fa5, $s7, $a6
	fldx.d	$fa6, $t0, $a6
	fldx.d	$fa7, $a7, $a6
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fadd.d	$fa0, $fa7, $fa0
	fstx.d	$fa0, $a7, $a6
	add.d	$a6, $a6, $t7
	addi.w	$a0, $a0, -1
	sub.d	$a1, $a1, $a3
	bnez	$a0, .LBB2_200
# %bb.201:                              # %._crit_edge.us.us.us.us.us.us4344.loopexit
                                        #   in Loop: Header=BB2_182 Depth=6
	sub.d	$a2, $a2, $a1
	sub.d	$a4, $a4, $a1
	sub.d	$a5, $a5, $a1
	b	.LBB2_181
.LBB2_202:                              #   in Loop: Header=BB2_69 Depth=4
	ld.w	$a2, $sp, 712
	ld.w	$a3, $sp, 716
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	slt	$a0, $a1, $a2
	masknez	$a1, $a1, $a0
	st.d	$a2, $sp, 536                   # 8-byte Folded Spill
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_68
# %bb.203:                              # %.preheader3269.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.204:                              # %.preheader3269.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.205:                              # %.preheader3269.lr.ph
                                        #   in Loop: Header=BB2_69 Depth=4
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_68
# %bb.206:                              # %.preheader3261.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_69 Depth=4
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 64
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a2
	st.d	$zero, $sp, 360                 # 8-byte Folded Spill
	ld.d	$a2, $a1, 48
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a0, 2
	slli.d	$a1, $a5, 2
	ldx.w	$a6, $a0, $a1
	ld.w	$t1, $a3, 4
	ld.w	$a4, $a3, 8
	alsl.d	$a0, $a5, $a5, 1
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ld.d	$ra, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a5, $ra, 16
	ld.w	$t5, $ra, 4
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	add.d	$a1, $fp, $a0
	ld.w	$a7, $a1, 4
	ld.w	$t0, $a1, 8
	sub.w	$t2, $a5, $t5
	addi.w	$a5, $zero, -1
	slt	$t3, $a5, $t2
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a5, $t3
	or	$t2, $t2, $t3
	ld.w	$t3, $ra, 12
	ld.w	$t8, $ra, 0
	addi.d	$t2, $t2, 1
	mul.d	$t0, $t2, $t0
	add.d	$a0, $t0, $a7
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	sub.w	$a7, $t3, $t8
	slt	$t3, $a5, $a7
	maskeqz	$a7, $a7, $t3
	masknez	$t3, $a5, $t3
	or	$a7, $a7, $t3
	addi.d	$t3, $a7, 1
	ld.w	$a7, $a1, 20
	ld.w	$t4, $a1, 16
	ld.w	$t6, $a1, 32
	ld.w	$t7, $a1, 28
	mul.d	$a7, $a7, $t2
	add.d	$t4, $a7, $t4
	mul.d	$a7, $t6, $t2
	add.d	$t6, $a7, $t7
	ld.w	$a7, $a1, 44
	ld.w	$t7, $a1, 40
	ld.w	$s0, $a1, 56
	ld.w	$s1, $a1, 52
	mul.d	$a7, $a7, $t2
	add.d	$t0, $a7, $t7
	mul.d	$a7, $s0, $t2
	add.d	$s0, $a7, $s1
	ld.w	$a7, $a1, 68
	ld.w	$t7, $a1, 64
	ld.w	$s1, $a1, 80
	ld.w	$s2, $a1, 76
	mul.d	$a7, $a7, $t2
	add.d	$a7, $a7, $t7
	mul.d	$t7, $s1, $t2
	add.d	$s1, $t7, $s2
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	ld.w	$s2, $s4, 0
	ld.w	$s3, $s4, 4
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$t7, $a0, 4
	ld.w	$s4, $s4, 8
	ld.w	$s5, $a0, 8
	ld.w	$s6, $a0, 16
	ld.w	$s7, $a0, 0
	sub.d	$s8, $s3, $t7
	sub.d	$s5, $s4, $s5
	sub.w	$t7, $s6, $t7
	slt	$s6, $a5, $t7
	maskeqz	$t7, $t7, $s6
	masknez	$s6, $a5, $s6
	or	$t7, $t7, $s6
	addi.d	$s6, $t7, 1
	ld.w	$t7, $a0, 12
	mul.d	$s5, $s6, $s5
	add.d	$s5, $s8, $s5
	sub.d	$s8, $s2, $s7
	sub.w	$t7, $t7, $s7
	slt	$s7, $a5, $t7
	maskeqz	$t7, $t7, $s7
	masknez	$s7, $a5, $s7
	or	$t7, $t7, $s7
	addi.d	$s7, $t7, 1
	mul.d	$t7, $s5, $s7
	ld.w	$s5, $ra, 8
	add.w	$t7, $s8, $t7
	sub.d	$t8, $s2, $t8
	sub.d	$t5, $s3, $t5
	sub.d	$s5, $s4, $s5
	mul.d	$s5, $s5, $t2
	add.d	$t5, $t5, $s5
	mul.d	$t5, $t5, $t3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$s5, $a0, 8
	add.w	$t8, $t8, $t5
	ld.w	$t5, $a0, 4
	ld.w	$s8, $a0, 16
	sub.d	$s4, $s4, $s5
	ld.w	$s5, $a0, 0
	sub.d	$s3, $s3, $t5
	sub.w	$t5, $s8, $t5
	slt	$s8, $a5, $t5
	maskeqz	$t5, $t5, $s8
	masknez	$s8, $a5, $s8
	or	$t5, $t5, $s8
	addi.d	$t5, $t5, 1
	mul.d	$s4, $t5, $s4
	ld.w	$s8, $a0, 12
	add.d	$s3, $s3, $s4
	ld.w	$s4, $a3, 12
	sub.d	$s2, $s2, $s5
	sub.w	$s5, $s8, $s5
	slt	$s8, $a5, $s5
	maskeqz	$s5, $s5, $s8
	masknez	$a5, $a5, $s8
	or	$a5, $s5, $a5
	addi.d	$s5, $a5, 1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$s8, $a0, 28
	mul.d	$a5, $s3, $s5
	add.w	$ra, $s2, $a5
	ld.w	$a5, $a0, 24
	mul.d	$s2, $s5, $s8
	mul.d	$t5, $s5, $t5
	ld.w	$s3, $a0, 32
	mul.d	$s5, $s7, $s6
	mul.d	$s6, $s8, $s7
	mul.d	$s7, $s8, $t3
	mul.d	$t5, $t5, $s3
	mul.d	$t2, $t3, $t2
	mul.d	$t2, $t2, $s3
	mul.d	$s3, $s5, $s3
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	mul.d	$s5, $a0, $s6
	sub.d	$s3, $s3, $s5
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	mul.d	$s3, $a0, $s7
	sub.d	$t2, $t2, $s3
	st.d	$t2, $sp, 328                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
	mul.d	$t2, $s3, $a5
	sub.d	$s5, $s6, $t2
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	sub.d	$s5, $s7, $t2
	st.d	$s5, $sp, 520                   # 8-byte Folded Spill
	sub.d	$t2, $s2, $t2
	st.d	$t2, $sp, 512                   # 8-byte Folded Spill
	mul.d	$t2, $a0, $s2
	sub.d	$a0, $t5, $t2
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.w	$t2, $a3, 16
	ld.w	$t5, $a3, 24
	ld.w	$a3, $a3, 20
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	add.d	$s2, $a2, $a0
	addi.d	$s2, $s2, 8
	alsl.d	$a0, $t5, $a2, 3
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	alsl.d	$a0, $t5, $s2, 3
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	alsl.d	$a0, $a3, $a2, 3
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	alsl.d	$a0, $a3, $s2, 3
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	alsl.d	$a0, $t2, $a2, 3
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	alsl.d	$a0, $t2, $s2, 3
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	alsl.d	$a0, $s4, $a2, 3
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	alsl.d	$a0, $s4, $s2, 3
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	alsl.d	$a0, $a4, $a2, 3
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	alsl.d	$a0, $a4, $s2, 3
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	alsl.d	$a0, $t1, $a2, 3
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	alsl.d	$a0, $t1, $s2, 3
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	alsl.d	$a0, $a6, $a2, 3
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	ld.w	$a2, $a1, 72
	alsl.d	$a0, $a6, $s2, 3
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	mul.d	$a3, $s1, $t3
	ld.w	$a4, $a1, 60
	add.w	$a2, $a2, $a3
	mul.d	$a3, $a7, $t3
	ld.w	$a6, $a1, 48
	add.w	$a3, $a4, $a3
	mul.d	$a4, $s0, $t3
	ld.w	$a7, $a1, 36
	add.w	$a4, $a6, $a4
	mul.d	$a6, $t0, $t3
	ld.w	$t1, $a1, 24
	add.w	$a6, $a7, $a6
	ld.w	$a1, $a1, 12
	mul.d	$a7, $t6, $t3
	add.w	$a7, $t1, $a7
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	ldx.w	$a0, $fp, $a0
	mul.d	$t1, $t4, $t3
	add.w	$a1, $a1, $t1
	ld.d	$t0, $sp, 568                   # 8-byte Folded Reload
	mul.d	$t0, $t0, $t3
	add.w	$a0, $a0, $t0
	addi.d	$t0, $a5, -1
	sltui	$t0, $t0, 1
	ori	$t1, $zero, 9
	sltu	$t1, $t1, $s3
	and	$t0, $t1, $t0
	st.d	$t0, $sp, 504                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$t1, $a2, $t0, 3
	st.d	$t1, $sp, 576                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $t1, 3
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	alsl.d	$a2, $a3, $t0, 3
	st.d	$a2, $sp, 568                   # 8-byte Folded Spill
	alsl.d	$a2, $a3, $t1, 3
	st.d	$a2, $sp, 424                   # 8-byte Folded Spill
	alsl.d	$s0, $a4, $t0, 3
	alsl.d	$a2, $a4, $t1, 3
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	alsl.d	$a2, $a6, $t0, 3
	alsl.d	$a3, $a6, $t1, 3
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	alsl.d	$a3, $a7, $t0, 3
	st.d	$a3, $sp, 560                   # 8-byte Folded Spill
	alsl.d	$a3, $a7, $t1, 3
	st.d	$a3, $sp, 400                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $t0, 3
	st.d	$a3, $sp, 552                   # 8-byte Folded Spill
	alsl.d	$a1, $a1, $t1, 3
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t0, 3
	st.d	$a1, $sp, 544                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $t1, 3
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a5
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	slli.d	$a1, $a5, 4
	slli.d	$s2, $a5, 3
	b	.LBB2_208
	.p2align	4, , 16
.LBB2_207:                              # %._crit_edge4391.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_208 Depth=5
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	add.w	$t7, $a0, $t7
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	add.w	$t8, $a0, $t8
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	add.w	$ra, $a0, $ra
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	st.d	$a3, $sp, 360                   # 8-byte Folded Spill
	beq	$a3, $a0, .LBB2_68
.LBB2_208:                              # %.preheader3261.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_210 Depth 6
                                        #               Child Loop BB2_226 Depth 7
                                        #               Child Loop BB2_230 Depth 7
	move	$t4, $zero
	b	.LBB2_210
	.p2align	4, , 16
.LBB2_209:                              # %._crit_edge.us.us.us.us.us.us4449
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	add.w	$t7, $a0, $t7
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	add.w	$t8, $a0, $t8
	addi.w	$t4, $t4, 1
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	add.w	$ra, $a0, $ra
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	beq	$t4, $a0, .LBB2_207
.LBB2_210:                              # %.preheader3253.us.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_208 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_226 Depth 7
                                        #               Child Loop BB2_230 Depth 7
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_228
# %bb.211:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$s7, $ra, $a0, 3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a3, $ra, $a0, 3
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$fp, $t7, $a0, 3
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a0, $t7, $a0, 3
	sltu	$a0, $s7, $a0
	sltu	$a4, $fp, $a3
	and	$a4, $a0, $a4
	move	$a0, $zero
	bnez	$a4, .LBB2_229
# %bb.212:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a4, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$s4, $t7, $a4, 3
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a4, $t7, $a4, 3
	sltu	$a4, $s7, $a4
	sltu	$a6, $s4, $a3
	and	$a4, $a4, $a6
	bnez	$a4, .LBB2_229
# %bb.213:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a4, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$s6, $t7, $a4, 3
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a4, $t7, $a4, 3
	sltu	$a4, $s7, $a4
	sltu	$a6, $s6, $a3
	and	$a4, $a4, $a6
	bnez	$a4, .LBB2_229
# %bb.214:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a4, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$s3, $t7, $a4, 3
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a4, $t7, $a4, 3
	sltu	$a4, $s7, $a4
	sltu	$a6, $s3, $a3
	and	$a4, $a4, $a6
	bnez	$a4, .LBB2_229
# %bb.215:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a4, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$t0, $t7, $a4, 3
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a4, $t7, $a4, 3
	sltu	$a4, $s7, $a4
	sltu	$a6, $t0, $a3
	and	$a4, $a4, $a6
	bnez	$a4, .LBB2_229
# %bb.216:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a4, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a7, $t7, $a4, 3
	ld.d	$a4, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a4, $t7, $a4, 3
	sltu	$a4, $s7, $a4
	sltu	$a6, $a7, $a3
	and	$a4, $a4, $a6
	bnez	$a4, .LBB2_229
# %bb.217:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a4, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$s8, $t7, $a4, 3
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a4, $t7, $a4, 3
	sltu	$a4, $s7, $a4
	sltu	$a6, $s8, $a3
	and	$a4, $a4, $a6
	bnez	$a4, .LBB2_229
# %bb.218:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a4, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$s5, $t8, $a4, 3
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a4, $t8, $a4, 3
	sltu	$a4, $s7, $a4
	sltu	$a6, $s5, $a3
	and	$a4, $a4, $a6
	bnez	$a4, .LBB2_229
# %bb.219:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a4, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$t5, $t8, $a4, 3
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a4, $t8, $a4, 3
	sltu	$a4, $s7, $a4
	sltu	$a6, $t5, $a3
	and	$a4, $a4, $a6
	bnez	$a4, .LBB2_229
# %bb.220:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	alsl.d	$t1, $t8, $s0, 3
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a4, $t8, $a4, 3
	sltu	$a4, $s7, $a4
	sltu	$a6, $t1, $a3
	and	$a4, $a4, $a6
	bnez	$a4, .LBB2_229
# %bb.221:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	alsl.d	$a4, $t8, $a2, 3
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a6, 3
	sltu	$a6, $s7, $a6
	sltu	$t2, $a4, $a3
	and	$a6, $a6, $t2
	bnez	$a6, .LBB2_229
# %bb.222:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a6, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$t2, $t8, $a6, 3
	ld.d	$a6, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a6, 3
	sltu	$a6, $s7, $a6
	sltu	$t6, $t2, $a3
	and	$a6, $a6, $t6
	bnez	$a6, .LBB2_229
# %bb.223:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a6, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$t6, $t8, $a6, 3
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a6, 3
	sltu	$a6, $s7, $a6
	sltu	$s1, $t6, $a3
	and	$a6, $a6, $s1
	bnez	$a6, .LBB2_229
# %bb.224:                              # %vector.memcheck
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a6, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$s1, $t8, $a6, 3
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a6, 3
	sltu	$a6, $s7, $a6
	sltu	$a3, $s1, $a3
	and	$a3, $a6, $a3
	bnez	$a3, .LBB2_229
# %bb.225:                              # %vector.ph5239
                                        #   in Loop: Header=BB2_210 Depth=6
	move	$a0, $zero
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	add.d	$ra, $a3, $ra
	add.d	$t8, $a3, $t8
	add.d	$t7, $a3, $t7
	ld.d	$a3, $sp, 648                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_226:                              # %vector.body5242
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_208 Depth=5
                                        #             Parent Loop BB2_210 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	vldx	$vr0, $s8, $a0
	vldx	$vr1, $s1, $a0
	vldx	$vr2, $a7, $a0
	vldx	$vr3, $t6, $a0
	vldx	$vr4, $t0, $a0
	vldx	$vr5, $t2, $a0
	vldx	$vr6, $s3, $a0
	vldx	$vr7, $a4, $a0
	vfmul.d	$vr2, $vr2, $vr3
	vfmadd.d	$vr0, $vr0, $vr1, $vr2
	vfmadd.d	$vr0, $vr4, $vr5, $vr0
	vfmadd.d	$vr0, $vr6, $vr7, $vr0
	vldx	$vr1, $s6, $a0
	vldx	$vr2, $t1, $a0
	vldx	$vr3, $s4, $a0
	vldx	$vr4, $t5, $a0
	vldx	$vr5, $fp, $a0
	vldx	$vr6, $s5, $a0
	vldx	$vr7, $s7, $a0
	vfmadd.d	$vr0, $vr1, $vr2, $vr0
	vfmadd.d	$vr0, $vr3, $vr4, $vr0
	vfmadd.d	$vr0, $vr5, $vr6, $vr0
	vfadd.d	$vr0, $vr7, $vr0
	vstx	$vr0, $s7, $a0
	addi.d	$a3, $a3, -2
	add.d	$a0, $a0, $a1
	bnez	$a3, .LBB2_226
# %bb.227:                              # %middle.block5263
                                        #   in Loop: Header=BB2_210 Depth=6
	ld.d	$a4, $sp, 648                   # 8-byte Folded Reload
	move	$a0, $a4
	ld.d	$a3, $sp, 640                   # 8-byte Folded Reload
	beq	$a4, $a3, .LBB2_209
	b	.LBB2_229
	.p2align	4, , 16
.LBB2_228:                              #   in Loop: Header=BB2_210 Depth=6
	move	$a0, $zero
.LBB2_229:                              # %scalar.ph5237.preheader
                                        #   in Loop: Header=BB2_210 Depth=6
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a6, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$a7, $ra, $a6, 3
	ld.d	$a6, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$t0, $t8, $a6, 3
	ld.d	$a6, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$t1, $t8, $a6, 3
	alsl.d	$t2, $t8, $s0, 3
	alsl.d	$t5, $t8, $a2, 3
	ld.d	$a6, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$t6, $t8, $a6, 3
	ld.d	$a6, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$fp, $t8, $a6, 3
	ld.d	$a6, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$s1, $t8, $a6, 3
	ld.d	$a6, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$s3, $t7, $a6, 3
	ld.d	$a6, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$s4, $t7, $a6, 3
	ld.d	$a6, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$s5, $t7, $a6, 3
	ld.d	$a6, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$s6, $t7, $a6, 3
	ld.d	$a6, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$s7, $t7, $a6, 3
	ld.d	$a6, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$s8, $t7, $a6, 3
	ld.d	$a6, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a6, $t7, $a6, 3
	ld.d	$t3, $sp, 672                   # 8-byte Folded Reload
	sub.d	$a0, $t3, $a0
	.p2align	4, , 16
.LBB2_230:                              # %scalar.ph5237
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_69 Depth=4
                                        #           Parent Loop BB2_208 Depth=5
                                        #             Parent Loop BB2_210 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	fldx.d	$fa0, $s3, $a4
	fldx.d	$fa1, $s1, $a4
	fldx.d	$fa2, $s4, $a4
	fldx.d	$fa3, $fp, $a4
	fldx.d	$fa4, $s5, $a4
	fldx.d	$fa5, $t6, $a4
	fldx.d	$fa6, $s6, $a4
	fldx.d	$fa7, $t5, $a4
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fmadd.d	$fa0, $fa6, $fa7, $fa0
	fldx.d	$fa1, $s7, $a4
	fldx.d	$fa2, $t2, $a4
	fldx.d	$fa3, $s8, $a4
	fldx.d	$fa4, $t1, $a4
	fldx.d	$fa5, $a6, $a4
	fldx.d	$fa6, $t0, $a4
	fldx.d	$fa7, $a7, $a4
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fadd.d	$fa0, $fa7, $fa0
	fstx.d	$fa0, $a7, $a4
	add.d	$a4, $a4, $s2
	addi.w	$a0, $a0, -1
	sub.d	$a3, $a3, $a5
	bnez	$a0, .LBB2_230
# %bb.231:                              # %._crit_edge.us.us.us.us.us.us4449.loopexit
                                        #   in Loop: Header=BB2_210 Depth=6
	sub.d	$ra, $ra, $a3
	sub.d	$t8, $t8, $a3
	sub.d	$t7, $t7, $a3
	b	.LBB2_209
	.p2align	4, , 16
.LBB2_232:                              # %._crit_edge
                                        #   in Loop: Header=BB2_66 Depth=3
	vld	$vr3, $sp, 144                  # 16-byte Folded Reload
	ld.d	$a0, $sp, 136
	movgr2cf	$fcc0, $a0
	ld.d	$t8, $sp, 184                   # 8-byte Folded Reload
	bcnez	$fcc0, .LBB2_65
# %bb.233:                              #   in Loop: Header=BB2_66 Depth=3
	ld.w	$a0, $sp, 708
	ld.w	$a1, $sp, 712
	ld.w	$a2, $sp, 716
	slt	$a3, $a0, $a1
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a2, $a4
	or	$a3, $a4, $a3
	ori	$a4, $zero, 1
	blt	$a3, $a4, .LBB2_65
# %bb.234:                              # %.preheader3285.lr.ph
                                        #   in Loop: Header=BB2_66 Depth=3
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB2_65
# %bb.235:                              # %.preheader3285.lr.ph
                                        #   in Loop: Header=BB2_66 Depth=3
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB2_65
# %bb.236:                              # %.preheader3285.lr.ph
                                        #   in Loop: Header=BB2_66 Depth=3
	ori	$a3, $zero, 1
	blt	$a0, $a3, .LBB2_65
# %bb.237:                              # %.preheader3268.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_66 Depth=3
	move	$a3, $zero
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a4, $t0, 0
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a5, $t3, 0
	ld.w	$a6, $t0, 4
	ld.w	$a7, $t3, 4
	ld.w	$t0, $t0, 8
	ld.w	$t1, $t3, 8
	ld.w	$t2, $t3, 16
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $a7
	sub.d	$t0, $t0, $t1
	sub.w	$a7, $t2, $a7
	addi.w	$t1, $zero, -1
	slt	$t2, $t1, $a7
	maskeqz	$a7, $a7, $t2
	masknez	$t2, $t1, $t2
	or	$a7, $a7, $t2
	ld.w	$t2, $t3, 12
	addi.d	$a7, $a7, 1
	mul.d	$t0, $a7, $t0
	add.d	$a6, $a6, $t0
	sub.w	$a5, $t2, $a5
	slt	$t0, $t1, $a5
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$a5, $a5, $t0
	addi.d	$a5, $a5, 1
	mul.d	$a6, $a6, $a5
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	ld.w	$t0, $t1, 28
	add.w	$t6, $a4, $a6
	ld.w	$a4, $t1, 24
	ld.w	$a6, $t1, 32
	mul.d	$t0, $a5, $t0
	mul.d	$t1, $a1, $t0
	mul.d	$a5, $a5, $a7
	mul.d	$a6, $a5, $a6
	mul.d	$a5, $a0, $a4
	sub.d	$a5, $t0, $a5
	sub.d	$a6, $a6, $t1
	ori	$a7, $zero, 3
	sltu	$a7, $a7, $a0
	addi.d	$t0, $a4, -1
	sltui	$t0, $t0, 1
	and	$a7, $a7, $t0
	bstrpick.d	$t0, $a0, 30, 2
	slli.d	$t0, $t0, 2
	mul.d	$t1, $t0, $a4
	slli.d	$t2, $a4, 5
	slli.d	$t3, $a4, 3
	b	.LBB2_239
	.p2align	4, , 16
.LBB2_238:                              # %._crit_edge4510.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_239 Depth=4
	addi.w	$a3, $a3, 1
	add.w	$t6, $a6, $t6
	beq	$a3, $a2, .LBB2_65
.LBB2_239:                              # %.preheader3268.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_241 Depth 5
                                        #             Child Loop BB2_243 Depth 6
                                        #             Child Loop BB2_247 Depth 6
	move	$t4, $zero
	b	.LBB2_241
	.p2align	4, , 16
.LBB2_240:                              # %._crit_edge4506.us.us.us.us.us.us
                                        #   in Loop: Header=BB2_241 Depth=5
	addi.w	$t4, $t4, 1
	add.w	$t6, $a5, $t5
	beq	$t4, $a1, .LBB2_238
.LBB2_241:                              # %.preheader3260.us.us.us.us.us.us
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_239 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_243 Depth 6
                                        #             Child Loop BB2_247 Depth 6
	beqz	$a7, .LBB2_245
# %bb.242:                              # %vector.ph
                                        #   in Loop: Header=BB2_241 Depth=5
	add.d	$t5, $t1, $t6
	alsl.d	$t6, $t6, $t8, 3
	move	$t7, $t0
	.p2align	4, , 16
.LBB2_243:                              # %vector.body
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_239 Depth=4
                                        #           Parent Loop BB2_241 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vld	$vr0, $t6, -16
	vld	$vr1, $t6, 0
	vfmul.d	$vr0, $vr3, $vr0
	vfmul.d	$vr1, $vr3, $vr1
	vst	$vr0, $t6, -16
	vst	$vr1, $t6, 0
	addi.d	$t7, $t7, -4
	add.d	$t6, $t6, $t2
	bnez	$t7, .LBB2_243
# %bb.244:                              # %middle.block
                                        #   in Loop: Header=BB2_241 Depth=5
	move	$t7, $t0
	beq	$t0, $a0, .LBB2_240
	b	.LBB2_246
	.p2align	4, , 16
.LBB2_245:                              #   in Loop: Header=BB2_241 Depth=5
	move	$t7, $zero
	move	$t5, $t6
.LBB2_246:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_241 Depth=5
	ld.d	$t6, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$t6, $t5, $t6, 3
	sub.d	$t7, $a0, $t7
	.p2align	4, , 16
.LBB2_247:                              # %scalar.ph
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_66 Depth=3
                                        #         Parent Loop BB2_239 Depth=4
                                        #           Parent Loop BB2_241 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	fld.d	$fa0, $t6, 0
	fmul.d	$fa0, $ft0, $fa0
	fst.d	$fa0, $t6, 0
	add.d	$t5, $t5, $a4
	addi.w	$t7, $t7, -1
	add.d	$t6, $t6, $t3
	bnez	$t7, .LBB2_247
	b	.LBB2_240
.LBB2_248:                              # %.loopexit3252
	move	$a0, $zero
	ld.d	$s8, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 792                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 800                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 808                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 816
	ret
.Lfunc_end2:
	.size	hypre_StructMatvecCompute, .Lfunc_end2-hypre_StructMatvecCompute
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_71-.LJTI2_0
	.word	.LBB2_156-.LJTI2_0
	.word	.LBB2_114-.LJTI2_0
	.word	.LBB2_134-.LJTI2_0
	.word	.LBB2_88-.LJTI2_0
	.word	.LBB2_174-.LJTI2_0
	.word	.LBB2_202-.LJTI2_0
                                        # -- End function
	.text
	.globl	hypre_StructMatvecDestroy       # -- Begin function hypre_StructMatvecDestroy
	.p2align	5
	.type	hypre_StructMatvecDestroy,@function
hypre_StructMatvecDestroy:              # @hypre_StructMatvecDestroy
# %bb.0:
	beqz	$a0, .LBB3_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB3_2:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	hypre_StructMatvecDestroy, .Lfunc_end3-hypre_StructMatvecDestroy
                                        # -- End function
	.globl	hypre_StructMatvec              # -- Begin function hypre_StructMatvec
	.p2align	5
	.type	hypre_StructMatvec,@function
hypre_StructMatvec:                     # @hypre_StructMatvec
# %bb.0:                                # %hypre_StructMatvecDestroy.exit
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	move	$s0, $a2
	fmov.d	$fs0, $fa1
	move	$s1, $a1
	move	$s2, $a0
	fmov.d	$fs1, $fa0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	ori	$s4, $zero, 1
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s2, 8
	ld.d	$a1, $s2, 24
	move	$fp, $a0
	addi.d	$a2, $sp, 112
	addi.d	$a3, $sp, 104
	addi.d	$a4, $sp, 96
	addi.d	$a5, $sp, 88
	addi.d	$a6, $sp, 80
	addi.d	$a7, $sp, 72
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_CreateComputeInfo)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 112
	ld.d	$a1, $sp, 104
	ld.d	$a4, $sp, 96
	ld.d	$a5, $sp, 88
	ld.d	$a6, $sp, 80
	ld.d	$a7, $sp, 72
	ld.d	$a3, $s1, 16
	lu32i.d	$a2, 1
	st.d	$a2, $sp, 60
	st.w	$s4, $sp, 68
	addi.d	$a2, $sp, 48
	st.d	$a2, $sp, 32
	st.d	$s4, $sp, 24
	st.d	$a3, $sp, 16
	st.d	$s3, $sp, 8
	addi.d	$t0, $sp, 60
	addi.d	$a2, $sp, 60
	addi.d	$a3, $sp, 60
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(hypre_ComputePkgCreate)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixRef)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructVectorRef)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $fp, 8
	st.d	$a1, $fp, 16
	move	$a0, $fp
	fmov.d	$fa0, $fs1
	move	$a1, $s2
	move	$a2, $s1
	fmov.d	$fa1, $fs0
	move	$a3, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatvecCompute)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(hypre_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(hypre_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(hypre_ComputePkgDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end4:
	.size	hypre_StructMatvec, .Lfunc_end4-hypre_StructMatvec
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
