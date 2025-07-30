	.file	"communication_info.c"
	.text
	.globl	hypre_CreateCommInfoFromStencil # -- Begin function hypre_CreateCommInfoFromStencil
	.p2align	5
	.type	hypre_CreateCommInfoFromStencil,@function
hypre_CreateCommInfoFromStencil:        # @hypre_CreateCommInfoFromStencil
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	ld.d	$s1, $a0, 8
	ld.d	$fp, $a0, 24
	ld.w	$a0, $s1, 8
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayCreate)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 8
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $zero, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $s0, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s4, $fp, 0
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 8
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 8
	move	$fp, $a0
	ori	$a1, $zero, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 8
	move	$s0, $a0
	ori	$a1, $zero, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	blez	$a1, .LBB0_58
# %bb.1:                                # %.lr.ph550
	move	$s6, $zero
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %._crit_edge547
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $s1, 8
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	addi.d	$s6, $s6, 1
	bge	$s6, $a0, .LBB0_58
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_10 Depth 4
                                        #           Child Loop BB0_12 Depth 5
                                        #             Child Loop BB0_15 Depth 6
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_27 Depth 2
                                        #       Child Loop BB0_29 Depth 3
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_35 Depth 3
                                        #         Child Loop BB0_37 Depth 4
                                        #           Child Loop BB0_39 Depth 5
                                        #             Child Loop BB0_42 Depth 6
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_55 Depth 2
                                        #       Child Loop BB0_57 Depth 3
	ld.d	$a0, $s1, 0
	slli.d	$a1, $s6, 4
	alsl.d	$a1, $s6, $a1, 3
	ldx.w	$a2, $a0, $a1
	add.d	$a1, $a0, $a1
	st.w	$a2, $fp, 0
	ld.w	$a0, $a1, 4
	st.w	$a0, $fp, 4
	ld.w	$a0, $a1, 8
	st.w	$a0, $fp, 8
	ld.w	$a0, $a1, 12
	st.w	$a0, $fp, 12
	ld.w	$a0, $a1, 16
	st.w	$a0, $fp, 16
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.w	$a0, $a1, 20
	st.w	$a0, $fp, 20
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	ori	$a1, $zero, 216
	mul.d	$a1, $s6, $a1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	blez	$a0, .LBB0_22
# %bb.4:                                # %.lr.ph474.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$a1, $zero
	move	$s7, $zero
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %._crit_edge462
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bge	$a1, $a0, .LBB0_18
.LBB0_6:                                # %.preheader434.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_10 Depth 4
                                        #           Child Loop BB0_12 Depth 5
                                        #             Child Loop BB0_15 Depth 6
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a1, 1
	slli.d	$a0, $a0, 2
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a5, 0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a2, $a4, $a0
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 0
	ld.w	$a1, $a5, 12
	ldx.w	$a2, $a4, $a0
	add.d	$a3, $a4, $a0
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 12
	ld.w	$a1, $a5, 4
	ld.w	$a2, $a3, 4
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 4
	ld.w	$a1, $a5, 16
	ld.w	$a2, $a3, 4
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 16
	ld.w	$a1, $a5, 8
	ld.w	$a2, $a3, 8
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 8
	ld.w	$a1, $a5, 20
	ld.w	$a2, $a3, 8
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 20
	ldx.w	$a0, $a4, $a0
	ld.w	$a1, $a3, 4
	ld.w	$a2, $a3, 8
	srai.d	$a3, $a0, 31
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	srai.d	$a3, $a1, 31
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	srai.d	$a4, $a2, 31
	slti	$a0, $a0, 1
	ori	$a3, $zero, 2
	sub.d	$a0, $a3, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	slti	$a0, $a1, 1
	sub.d	$a0, $a3, $a0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	slti	$a0, $a2, 1
	sub.d	$a0, $a3, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %._crit_edge457.split
                                        #   in Loop: Header=BB0_8 Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB0_5
.LBB0_8:                                # %.preheader434
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_10 Depth 4
                                        #           Child Loop BB0_12 Depth 5
                                        #             Child Loop BB0_15 Depth 6
	addi.d	$a4, $a4, 1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %._crit_edge
                                        #   in Loop: Header=BB0_10 Depth=4
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB0_7
.LBB0_10:                               # %.preheader432
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_12 Depth 5
                                        #             Child Loop BB0_15 Depth 6
	addi.d	$a2, $a2, 1
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %.loopexit430
                                        #   in Loop: Header=BB0_12 Depth=5
	move	$a4, $s2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB0_9
.LBB0_12:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        #         Parent Loop BB0_10 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_15 Depth 6
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	addi.w	$s5, $s5, 1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	slli.d	$a1, $s5, 6
	alsl.d	$a1, $s5, $a1, 3
	add.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	add.d	$a0, $a0, $a1
	move	$s2, $a4
	slli.d	$a1, $a4, 3
	ldx.d	$s6, $a0, $a1
	bnez	$s6, .LBB0_15
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_13:                               #   in Loop: Header=BB0_15 Depth=6
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
.LBB0_14:                               #   in Loop: Header=BB0_15 Depth=6
	ld.d	$s6, $s6, 8
	beqz	$s6, .LBB0_11
.LBB0_15:                               # %.lr.ph
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        #         Parent Loop BB0_10 Depth=4
                                        #           Parent Loop BB0_12 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.w	$s1, $s6, 0
	ld.d	$a0, $s4, 0
	slli.d	$a1, $s1, 4
	alsl.d	$a1, $s1, $a1, 3
	add.d	$a1, $a0, $a1
	move	$a0, $fp
	move	$a2, $s8
	pcaddu18i	$ra, %call36(hypre_IntersectBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 12
	ld.w	$a1, $s8, 0
	sub.w	$a0, $a0, $a1
	addi.w	$a1, $zero, -1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	ld.d	$a3, $s8, 16
	ld.d	$a4, $s8, 4
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	vinsgr2vr.d	$vr0, $a3, 0
	vinsgr2vr.d	$vr1, $a4, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	vpickve2gr.w	$a1, $vr0, 0
	vpickve2gr.w	$a2, $vr0, 1
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	sltui	$a1, $a2, 1
	or	$a0, $a0, $a1
	bnez	$a0, .LBB0_14
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=6
	slli.d	$a0, $s1, 3
	ldx.d	$a1, $s0, $a0
	bnez	$a1, .LBB0_13
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=6
	alsl.d	$s3, $s1, $s0, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $s3, 0
	slli.d	$a0, $s7, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	stx.w	$s1, $a2, $a0
	addi.w	$s7, $s7, 1
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_18:                               # %.preheader439
                                        #   in Loop: Header=BB0_3 Depth=1
	blez	$s7, .LBB0_23
# %bb.19:                               # %.lr.ph478.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s3, $zero
	move	$s1, $s7
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_20:                               # %.lr.ph478
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s2, 0
	slli.d	$s5, $a0, 3
	ldx.d	$a0, $s0, $s5
	pcaddu18i	$ra, %call36(hypre_UnionBoxes)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s0, $s5
	ld.w	$a0, $a0, 8
	add.w	$s3, $a0, $s3
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 4
	bnez	$s1, .LBB0_20
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	ori	$s1, $zero, 1
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	move	$s1, $zero
	move	$s7, $zero
	move	$s3, $zero
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	move	$s1, $zero
	move	$s3, $zero
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
.LBB0_24:                               # %._crit_edge479
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$s2, $s6, 3
	ldx.d	$a0, $a0, $s2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	stx.d	$a0, $a1, $s2
	beqz	$s1, .LBB0_30
# %bb.25:                               # %.lr.ph492.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s2, $zero
	move	$s3, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s5, $s6, $a0, 3
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %._crit_edge485
                                        #   in Loop: Header=BB0_27 Depth=2
	alsl.d	$s1, $a1, $s0, 3
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	st.d	$zero, $s1, 0
	beq	$s2, $s7, .LBB0_30
.LBB0_27:                               # %.lr.ph492
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_29 Depth 3
	slli.d	$a0, $s2, 2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s0, $a0
	ld.w	$a2, $a0, 8
	blez	$a2, .LBB0_26
# %bb.28:                               # %.lr.ph484
                                        #   in Loop: Header=BB0_27 Depth=2
	move	$a2, $zero
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	ld.d	$a5, $s5, 0
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ld.d	$a6, $a0, 0
	slli.d	$a7, $s3, 4
	alsl.d	$a7, $s3, $a7, 3
	add.d	$a4, $a4, $a7
	addi.d	$a4, $a4, 12
	alsl.d	$a5, $s3, $a5, 2
	addi.d	$a6, $a6, 12
	.p2align	4, , 16
.LBB0_29:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a3, 0
	st.w	$a7, $a5, 0
	ld.w	$a7, $a6, -12
	st.w	$a7, $a4, -12
	ld.w	$a7, $a6, -8
	st.w	$a7, $a4, -8
	ld.w	$a7, $a6, -4
	st.w	$a7, $a4, -4
	ld.w	$a7, $a6, 0
	st.w	$a7, $a4, 0
	ld.w	$a7, $a6, 4
	st.w	$a7, $a4, 4
	ld.w	$a7, $a6, 8
	st.w	$a7, $a4, 8
	addi.d	$a2, $a2, 1
	ld.w	$a7, $a0, 8
	addi.w	$s3, $s3, 1
	addi.d	$a4, $a4, 24
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 24
	blt	$a2, $a7, .LBB0_29
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_30:                               # %.preheader438
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	blez	$a0, .LBB0_49
# %bb.31:                               # %.lr.ph528.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$a1, $zero
	move	$s7, $zero
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_32:                               # %.preheader435
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s5, 4
	ld.w	$a2, $s5, 8
	sub.d	$a0, $zero, $a0
	st.w	$a0, $s5, 0
	sub.d	$a0, $zero, $a1
	st.w	$a0, $s5, 4
	sub.d	$a0, $zero, $a2
	st.w	$a0, $s5, 8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bge	$a1, $a0, .LBB0_45
.LBB0_33:                               # %.preheader433.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_35 Depth 3
                                        #         Child Loop BB0_37 Depth 4
                                        #           Child Loop BB0_39 Depth 5
                                        #             Child Loop BB0_42 Depth 6
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a1, 1
	slli.d	$a0, $a0, 2
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a1, $a5, $a0
	add.d	$s5, $a5, $a0
	ld.w	$a2, $s5, 4
	sub.d	$a3, $zero, $a1
	ld.w	$a4, $s5, 8
	stx.w	$a3, $a5, $a0
	sub.d	$a2, $zero, $a2
	st.w	$a2, $s5, 4
	sub.d	$a2, $zero, $a4
	st.w	$a2, $s5, 8
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a2, $a3, 0
	sub.d	$a1, $a2, $a1
	st.w	$a1, $fp, 0
	ld.w	$a1, $a3, 12
	ldx.w	$a2, $a5, $a0
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 12
	ld.w	$a1, $a3, 4
	ld.w	$a2, $s5, 4
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 4
	ld.w	$a1, $a3, 16
	ld.w	$a2, $s5, 4
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 16
	ld.w	$a1, $a3, 8
	ld.w	$a2, $s5, 8
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 8
	ld.w	$a1, $a3, 20
	ld.w	$a2, $s5, 8
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 20
	ldx.w	$a0, $a5, $a0
	ld.w	$a1, $s5, 4
	ld.w	$a2, $s5, 8
	srai.d	$a3, $a0, 31
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	srai.d	$a3, $a1, 31
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	srai.d	$a4, $a2, 31
	slti	$a0, $a0, 1
	ori	$a3, $zero, 2
	sub.d	$a0, $a3, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	slti	$a0, $a1, 1
	sub.d	$a0, $a3, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slti	$a0, $a2, 1
	sub.d	$a0, $a3, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %._crit_edge512.split
                                        #   in Loop: Header=BB0_35 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB0_32
.LBB0_35:                               # %.preheader433
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_37 Depth 4
                                        #           Child Loop BB0_39 Depth 5
                                        #             Child Loop BB0_42 Depth 6
	addi.d	$a4, $a4, 1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               # %._crit_edge507
                                        #   in Loop: Header=BB0_37 Depth=4
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB0_34
.LBB0_37:                               # %.preheader431
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_35 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_39 Depth 5
                                        #             Child Loop BB0_42 Depth 6
	addi.d	$a2, $a2, 1
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_38:                               # %.loopexit
                                        #   in Loop: Header=BB0_39 Depth=5
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB0_36
.LBB0_39:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_35 Depth=3
                                        #         Parent Loop BB0_37 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_42 Depth 6
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	addi.w	$s3, $s3, 1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	slli.d	$a1, $s3, 6
	alsl.d	$a1, $s3, $a1, 3
	add.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	add.d	$a0, $a0, $a1
	slli.d	$a1, $a4, 3
	ldx.d	$s6, $a0, $a1
	bnez	$s6, .LBB0_42
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_40:                               #   in Loop: Header=BB0_42 Depth=6
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
.LBB0_41:                               #   in Loop: Header=BB0_42 Depth=6
	ld.d	$s6, $s6, 8
	beqz	$s6, .LBB0_38
.LBB0_42:                               # %.lr.ph501
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_35 Depth=3
                                        #         Parent Loop BB0_37 Depth=4
                                        #           Parent Loop BB0_39 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.w	$s1, $s6, 0
	ld.d	$a0, $s4, 0
	slli.d	$a1, $s1, 4
	alsl.d	$a1, $s1, $a1, 3
	add.d	$a1, $a0, $a1
	move	$a0, $fp
	move	$a2, $s8
	pcaddu18i	$ra, %call36(hypre_IntersectBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 12
	ld.w	$a3, $s8, 0
	sub.w	$a2, $a0, $a3
	addi.w	$a6, $zero, -1
	slt	$a5, $a6, $a2
	ld.w	$a1, $s8, 16
	ld.w	$a4, $s8, 4
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $a6, $a5
	or	$a7, $a2, $a5
	sub.w	$t0, $a1, $a4
	slt	$t1, $a6, $t0
	ld.w	$a2, $s8, 20
	ld.w	$a5, $s8, 8
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a6, $t1
	or	$t0, $t0, $t1
	sub.w	$t1, $a2, $a5
	slt	$t2, $a6, $t1
	maskeqz	$t1, $t1, $t2
	masknez	$a6, $a6, $t2
	or	$a6, $t1, $a6
	addi.d	$a7, $a7, 1
	sltui	$a7, $a7, 1
	addi.d	$t0, $t0, 1
	sltui	$t0, $t0, 1
	or	$a7, $t0, $a7
	addi.d	$a6, $a6, 1
	sltui	$a6, $a6, 1
	or	$a6, $a7, $a6
	bnez	$a6, .LBB0_41
# %bb.43:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_42 Depth=6
	ld.w	$a6, $s5, 0
	sub.d	$a3, $a3, $a6
	st.w	$a3, $s8, 0
	ld.w	$a3, $s5, 0
	sub.d	$a0, $a0, $a3
	st.w	$a0, $s8, 12
	ld.w	$a0, $s5, 4
	sub.d	$a0, $a4, $a0
	st.w	$a0, $s8, 4
	ld.w	$a0, $s5, 4
	sub.d	$a0, $a1, $a0
	st.w	$a0, $s8, 16
	ld.w	$a0, $s5, 8
	sub.d	$a0, $a5, $a0
	st.w	$a0, $s8, 8
	ld.w	$a0, $s5, 8
	slli.d	$a1, $s1, 3
	ldx.d	$a1, $s0, $a1
	sub.d	$a0, $a2, $a0
	st.w	$a0, $s8, 20
	bnez	$a1, .LBB0_40
# %bb.44:                               #   in Loop: Header=BB0_42 Depth=6
	alsl.d	$s2, $s1, $s0, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $s2, 0
	slli.d	$a0, $s7, 2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	stx.w	$s1, $a2, $a0
	addi.w	$s7, $s7, 1
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_45:                               # %.preheader437
                                        #   in Loop: Header=BB0_3 Depth=1
	blez	$s7, .LBB0_50
# %bb.46:                               # %.lr.ph532.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s3, $zero
	move	$s1, $s7
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_47:                               # %.lr.ph532
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s2, 0
	slli.d	$s5, $a0, 3
	ldx.d	$a0, $s0, $s5
	pcaddu18i	$ra, %call36(hypre_UnionBoxes)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s0, $s5
	ld.w	$a0, $a0, 8
	add.w	$s3, $a0, $s3
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 4
	bnez	$s1, .LBB0_47
# %bb.48:                               #   in Loop: Header=BB0_3 Depth=1
	ori	$s1, $zero, 1
	b	.LBB0_52
	.p2align	4, , 16
.LBB0_49:                               #   in Loop: Header=BB0_3 Depth=1
	move	$s1, $zero
	move	$s7, $zero
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	move	$s1, $zero
.LBB0_51:                               # %._crit_edge533
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s3, $zero
.LBB0_52:                               # %._crit_edge533
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$s2, $a0, $s5
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	stx.d	$a0, $a1, $s5
	beqz	$s1, .LBB0_2
# %bb.53:                               # %.lr.ph546.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s3, $zero
	move	$s5, $zero
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$s6, $a1, $a0, 3
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_54:                               # %._crit_edge539
                                        #   in Loop: Header=BB0_55 Depth=2
	alsl.d	$s1, $a1, $s0, 3
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	st.d	$zero, $s1, 0
	beq	$s3, $s7, .LBB0_2
.LBB0_55:                               # %.lr.ph546
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
	slli.d	$a0, $s3, 2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s0, $a0
	ld.w	$a2, $a0, 8
	blez	$a2, .LBB0_54
# %bb.56:                               # %.lr.ph538
                                        #   in Loop: Header=BB0_55 Depth=2
	move	$a2, $zero
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	ld.d	$a5, $s6, 0
	ld.d	$a4, $s2, 0
	ld.d	$a6, $a0, 0
	slli.d	$a7, $s5, 4
	alsl.d	$a7, $s5, $a7, 3
	add.d	$a4, $a4, $a7
	addi.d	$a4, $a4, 12
	alsl.d	$a5, $s5, $a5, 2
	addi.d	$a6, $a6, 12
	.p2align	4, , 16
.LBB0_57:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a3, 0
	st.w	$a7, $a5, 0
	ld.w	$a7, $a6, -12
	st.w	$a7, $a4, -12
	ld.w	$a7, $a6, -8
	st.w	$a7, $a4, -8
	ld.w	$a7, $a6, -4
	st.w	$a7, $a4, -4
	ld.w	$a7, $a6, 0
	st.w	$a7, $a4, 0
	ld.w	$a7, $a6, 4
	st.w	$a7, $a4, 4
	ld.w	$a7, $a6, 8
	st.w	$a7, $a4, 8
	addi.d	$a2, $a2, 1
	ld.w	$a7, $a0, 8
	addi.w	$s5, $s5, 1
	addi.d	$a4, $a4, 24
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 24
	blt	$a2, $a7, .LBB0_57
	b	.LBB0_54
.LBB0_58:                               # %._crit_edge551
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end0:
	.size	hypre_CreateCommInfoFromStencil, .Lfunc_end0-hypre_CreateCommInfoFromStencil
                                        # -- End function
	.globl	hypre_CreateCommInfoFromNumGhost # -- Begin function hypre_CreateCommInfoFromNumGhost
	.p2align	5
	.type	hypre_CreateCommInfoFromNumGhost,@function
hypre_CreateCommInfoFromNumGhost:       # @hypre_CreateCommInfoFromNumGhost
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s0, $a0, 8
	ld.d	$a6, $a0, 16
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	ld.d	$fp, $a0, 24
	ld.w	$a0, $s0, 8
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayCreate)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a1, $zero, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 0
	ld.d	$a1, $fp, 8
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 16
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 8
	move	$fp, $a0
	ori	$a1, $zero, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a2, $s1, 8
	move	$s5, $a0
	ori	$a1, $zero, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	blez	$a1, .LBB1_46
# %bb.1:                                # %.lr.ph350
	move	$s6, $zero
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %._crit_edge347
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $s0, 8
	addi.d	$s6, $s6, 1
	bge	$s6, $a0, .LBB1_46
.LBB1_3:                                # %.preheader300
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #     Child Loop BB1_14 Depth 2
                                        #     Child Loop BB1_22 Depth 2
                                        #       Child Loop BB1_24 Depth 3
                                        #     Child Loop BB1_30 Depth 2
                                        #     Child Loop BB1_36 Depth 2
                                        #     Child Loop BB1_43 Depth 2
                                        #       Child Loop BB1_45 Depth 3
	ld.d	$a0, $s0, 0
	slli.d	$a1, $s6, 4
	alsl.d	$a1, $s6, $a1, 3
	ldx.w	$a2, $a0, $a1
	add.d	$a3, $a0, $a1
	st.w	$a2, $fp, 0
	ld.w	$a2, $a3, 4
	st.w	$a2, $fp, 4
	ld.w	$a2, $a3, 8
	st.w	$a2, $fp, 8
	ld.w	$a2, $a3, 12
	st.w	$a2, $fp, 12
	ld.w	$a2, $a3, 16
	st.w	$a2, $fp, 16
	ld.w	$a2, $a3, 20
	st.w	$a2, $fp, 20
	ldx.w	$a0, $a0, $a1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, 0
	ld.w	$a0, $a3, 12
	ld.w	$a1, $a2, 4
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 12
	ld.w	$a0, $a3, 4
	ld.w	$a1, $a2, 8
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, 4
	ld.w	$a0, $a3, 16
	ld.w	$a1, $a2, 12
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 16
	ld.w	$a0, $a3, 8
	ld.w	$a1, $a2, 16
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, 8
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a0, $a3, 20
	ld.w	$a1, $a2, 20
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 20
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$s6, $s6, $a1, 2
	move	$s0, $zero
	blez	$a0, .LBB1_16
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s1, $zero
	move	$s3, $zero
	move	$s2, $zero
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$s7, $s5
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_8 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
.LBB1_6:                                #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=2
	addi.d	$s3, $s3, 1
	ld.w	$a0, $a2, 8
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 8
	addi.d	$s0, $s0, 24
	addi.d	$s4, $s4, 4
	bge	$s3, $a0, .LBB1_12
.LBB1_8:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s4, 0
	beq	$a0, $a1, .LBB1_7
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a0, $a2, 0
	add.d	$a1, $a0, $s0
	move	$a0, $fp
	move	$a2, $s8
	pcaddu18i	$ra, %call36(hypre_IntersectBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 12
	ld.w	$a1, $s8, 0
	sub.w	$a0, $a0, $a1
	addi.w	$a1, $zero, -1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	ld.d	$a3, $s8, 16
	ld.d	$a4, $s8, 4
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	vinsgr2vr.d	$vr0, $a3, 0
	vinsgr2vr.d	$vr1, $a4, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	vpickve2gr.w	$a1, $vr0, 0
	vpickve2gr.w	$a2, $vr0, 1
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	sltui	$a1, $a2, 1
	or	$a0, $a0, $a1
	bnez	$a0, .LBB1_6
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a1, $s7, 0
	bnez	$a1, .LBB1_5
# %bb.11:                               #   in Loop: Header=BB1_8 Depth=2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $s7, 0
	slli.d	$a0, $s2, 2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	stx.w	$s1, $a2, $a0
	addi.w	$s2, $s2, 1
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_12:                               # %.preheader299
                                        #   in Loop: Header=BB1_3 Depth=1
	blez	$s2, .LBB1_17
# %bb.13:                               # %.lr.ph310.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s4, $zero
	move	$s0, $s2
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_14:                               # %.lr.ph310
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s1, 0
	slli.d	$s3, $a0, 3
	ldx.d	$a0, $s5, $s3
	pcaddu18i	$ra, %call36(hypre_UnionBoxes)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s5, $s3
	ld.w	$a0, $a0, 8
	add.w	$s4, $a0, $s4
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 4
	bnez	$s0, .LBB1_14
# %bb.15:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$s0, $zero, 1
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_16:                               #   in Loop: Header=BB1_3 Depth=1
	move	$s2, $zero
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_17:                               #   in Loop: Header=BB1_3 Depth=1
	move	$s0, $zero
.LBB1_18:                               # %._crit_edge
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s4, $zero
.LBB1_19:                               # %._crit_edge
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	slli.d	$s1, $a1, 3
	ldx.d	$s3, $a0, $s1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	stx.d	$a0, $a1, $s1
	beqz	$s0, .LBB1_25
# %bb.20:                               # %.lr.ph323.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s0, $zero
	move	$s1, $zero
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$s4, $a1, $a0, 3
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_21:                               # %._crit_edge316
                                        #   in Loop: Header=BB1_22 Depth=2
	alsl.d	$s7, $a1, $s5, 3
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	st.d	$zero, $s7, 0
	beq	$s0, $s2, .LBB1_25
.LBB1_22:                               # %.lr.ph323
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_24 Depth 3
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s5, $a0
	ld.w	$a2, $a0, 8
	blez	$a2, .LBB1_21
# %bb.23:                               # %.lr.ph315
                                        #   in Loop: Header=BB1_22 Depth=2
	move	$a2, $zero
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	ld.d	$a5, $s4, 0
	ld.d	$a4, $s3, 0
	ld.d	$a6, $a0, 0
	slli.d	$a7, $s1, 4
	alsl.d	$a7, $s1, $a7, 3
	add.d	$a4, $a4, $a7
	addi.d	$a4, $a4, 12
	alsl.d	$a5, $s1, $a5, 2
	addi.d	$a6, $a6, 12
	.p2align	4, , 16
.LBB1_24:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a3, 0
	st.w	$a7, $a5, 0
	ld.w	$a7, $a6, -12
	st.w	$a7, $a4, -12
	ld.w	$a7, $a6, -8
	st.w	$a7, $a4, -8
	ld.w	$a7, $a6, -4
	st.w	$a7, $a4, -4
	ld.w	$a7, $a6, 0
	st.w	$a7, $a4, 0
	ld.w	$a7, $a6, 4
	st.w	$a7, $a4, 4
	ld.w	$a7, $a6, 8
	st.w	$a7, $a4, 8
	addi.d	$a2, $a2, 1
	ld.w	$a7, $a0, 8
	addi.w	$s1, $s1, 1
	addi.d	$a4, $a4, 24
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 24
	blt	$a2, $a7, .LBB1_24
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_25:                               # %.preheader298
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	blez	$a0, .LBB1_38
# %bb.26:                               # %.lr.ph328
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s2, $zero
	move	$s3, $zero
	move	$s1, $zero
	move	$s7, $zero
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$s0, $s5
	b	.LBB1_30
	.p2align	4, , 16
.LBB1_27:                               #   in Loop: Header=BB1_30 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
.LBB1_28:                               #   in Loop: Header=BB1_30 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
.LBB1_29:                               #   in Loop: Header=BB1_30 Depth=2
	addi.d	$s1, $s1, 1
	ld.w	$a0, $a2, 8
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	addi.d	$s2, $s2, 24
	addi.d	$s4, $s4, 4
	bge	$s1, $a0, .LBB1_34
.LBB1_30:                               #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s6, 0
	ld.w	$a1, $s4, 0
	beq	$a0, $a1, .LBB1_29
# %bb.31:                               #   in Loop: Header=BB1_30 Depth=2
	ld.d	$a0, $a2, 0
	ldx.w	$a1, $a0, $s2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a2, $a3, 0
	add.d	$a0, $a0, $s2
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 0
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a3, 4
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 12
	ld.w	$a1, $a0, 4
	ld.w	$a2, $a3, 8
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 4
	ld.w	$a1, $a0, 16
	ld.w	$a2, $a3, 12
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 16
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a3, 16
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 8
	ld.w	$a0, $a0, 20
	ld.w	$a1, $a3, 20
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 20
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s8
	pcaddu18i	$ra, %call36(hypre_IntersectBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 12
	ld.w	$a1, $s8, 0
	sub.w	$a0, $a0, $a1
	addi.w	$a1, $zero, -1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	ld.d	$a3, $s8, 16
	ld.d	$a4, $s8, 4
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	vinsgr2vr.d	$vr0, $a3, 0
	vinsgr2vr.d	$vr1, $a4, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	vpickve2gr.w	$a1, $vr0, 0
	vpickve2gr.w	$a2, $vr0, 1
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	sltui	$a1, $a2, 1
	or	$a0, $a0, $a1
	bnez	$a0, .LBB1_28
# %bb.32:                               #   in Loop: Header=BB1_30 Depth=2
	ld.d	$a1, $s0, 0
	bnez	$a1, .LBB1_27
# %bb.33:                               #   in Loop: Header=BB1_30 Depth=2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $s0, 0
	slli.d	$a0, $s7, 2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	stx.w	$s3, $a2, $a0
	addi.w	$s7, $s7, 1
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_34:                               # %.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	blez	$s7, .LBB1_39
# %bb.35:                               # %.lr.ph332.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s3, $zero
	move	$s0, $s7
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_36:                               # %.lr.ph332
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s1, 0
	slli.d	$s2, $a0, 3
	ldx.d	$a0, $s5, $s2
	pcaddu18i	$ra, %call36(hypre_UnionBoxes)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s5, $s2
	ld.w	$a0, $a0, 8
	add.w	$s3, $a0, $s3
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 4
	bnez	$s0, .LBB1_36
# %bb.37:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$s0, $zero, 1
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_38:                               #   in Loop: Header=BB1_3 Depth=1
	move	$s0, $zero
	move	$s7, $zero
	move	$s3, $zero
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_39:                               #   in Loop: Header=BB1_3 Depth=1
	move	$s0, $zero
	move	$s3, $zero
.LBB1_40:                               # %._crit_edge333
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$s2, $a0, $s1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	stx.d	$a0, $a1, $s1
	beqz	$s0, .LBB1_2
# %bb.41:                               # %.lr.ph346.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s0, $zero
	move	$s1, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$s3, $s6, $a0, 3
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_42:                               # %._crit_edge339
                                        #   in Loop: Header=BB1_43 Depth=2
	alsl.d	$s4, $a1, $s5, 3
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	st.d	$zero, $s4, 0
	beq	$s0, $s7, .LBB1_2
.LBB1_43:                               # %.lr.ph346
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_45 Depth 3
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s5, $a0
	ld.w	$a2, $a0, 8
	blez	$a2, .LBB1_42
# %bb.44:                               # %.lr.ph338
                                        #   in Loop: Header=BB1_43 Depth=2
	move	$a2, $zero
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	ld.d	$a5, $s3, 0
	ld.d	$a4, $s2, 0
	ld.d	$a6, $a0, 0
	slli.d	$a7, $s1, 4
	alsl.d	$a7, $s1, $a7, 3
	add.d	$a4, $a4, $a7
	addi.d	$a4, $a4, 12
	alsl.d	$a5, $s1, $a5, 2
	addi.d	$a6, $a6, 12
	.p2align	4, , 16
.LBB1_45:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a3, 0
	st.w	$a7, $a5, 0
	ld.w	$a7, $a6, -12
	st.w	$a7, $a4, -12
	ld.w	$a7, $a6, -8
	st.w	$a7, $a4, -8
	ld.w	$a7, $a6, -4
	st.w	$a7, $a4, -4
	ld.w	$a7, $a6, 0
	st.w	$a7, $a4, 0
	ld.w	$a7, $a6, 4
	st.w	$a7, $a4, 4
	ld.w	$a7, $a6, 8
	st.w	$a7, $a4, 8
	addi.d	$a2, $a2, 1
	ld.w	$a7, $a0, 8
	addi.w	$s1, $s1, 1
	addi.d	$a4, $a4, 24
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 24
	blt	$a2, $a7, .LBB1_45
	b	.LBB1_42
.LBB1_46:                               # %._crit_edge351
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end1:
	.size	hypre_CreateCommInfoFromNumGhost, .Lfunc_end1-hypre_CreateCommInfoFromNumGhost
                                        # -- End function
	.globl	hypre_CreateCommInfoFromGrids   # -- Begin function hypre_CreateCommInfoFromGrids
	.p2align	5
	.type	hypre_CreateCommInfoFromGrids,@function
hypre_CreateCommInfoFromGrids:          # @hypre_CreateCommInfoFromGrids
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
	move	$a6, $a1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s1, $a0, 8
	ld.d	$a1, $a1, 8
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $a6, 0
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	addi.d	$a2, $sp, 80
	addi.d	$a3, $sp, 72
	addi.d	$a4, $sp, 68
	pcaddu18i	$ra, %call36(hypre_GatherAllBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayCreate)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s1, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	move	$s7, $a0
	addi.w	$s0, $zero, -1
	blez	$a1, .LBB2_9
# %bb.1:                                # %.lr.ph88
	move	$s2, $zero
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s5, 0
.LBB2_3:                                # %._crit_edge
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a1, $s8, 8
	slli.w	$a1, $a1, 2
	pcaddu18i	$ra, %call36(hypre_ReAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	addi.d	$s2, $s2, 1
	st.d	$a0, $s5, 0
	bge	$s2, $a1, .LBB2_9
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 80
	ld.d	$fp, $s1, 0
	slli.d	$s3, $s2, 3
	ldx.d	$s8, $a0, $s3
	ld.w	$a0, $a1, 8
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	ld.w	$a2, $a1, 8
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$s5, $s2, $a3, 3
	stx.d	$a0, $a3, $s3
	blez	$a2, .LBB2_3
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$s3, $zero
	move	$s4, $zero
	move	$s6, $zero
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	add.d	$fp, $fp, $a0
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=2
	ld.d	$a1, $sp, 80
	ld.w	$a0, $a1, 8
	addi.d	$s6, $s6, 1
	addi.d	$s4, $s4, 4
	addi.d	$s3, $s3, 24
	bge	$s6, $a0, .LBB2_2
.LBB2_7:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a1, 0
	add.d	$a1, $a0, $s3
	move	$a0, $fp
	move	$a2, $s7
	pcaddu18i	$ra, %call36(hypre_IntersectBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 12
	ld.w	$a1, $s7, 0
	sub.w	$a0, $a0, $a1
	slt	$a1, $s0, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$a2, $s7, 16
	ld.d	$a3, $s7, 4
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
	vinsgr2vr.d	$vr0, $a2, 0
	vinsgr2vr.d	$vr1, $a3, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	vpickve2gr.w	$a1, $vr0, 0
	vpickve2gr.w	$a2, $vr0, 1
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	sltui	$a1, $a2, 1
	or	$a0, $a0, $a1
	bnez	$a0, .LBB2_6
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	ld.d	$a0, $sp, 72
	ld.w	$a1, $s8, 8
	ldx.w	$a0, $a0, $s4
	ld.d	$a2, $s5, 0
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
	b	.LBB2_6
.LBB2_9:                                # %._crit_edge89
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 8
	ld.w	$a0, $a0, 0
	st.d	$zero, $sp, 72
	addi.d	$a2, $sp, 80
	addi.d	$a3, $sp, 72
	addi.d	$a4, $sp, 68
	pcaddu18i	$ra, %call36(hypre_GatherAllBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 8
	pcaddu18i	$ra, %call36(hypre_BoxArrayArrayCreate)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s6, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a1, $zero, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 8
	move	$s7, $a0
	blez	$a1, .LBB2_18
# %bb.10:                               # %.lr.ph88.1
	move	$s2, $zero
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_11:                               # %._crit_edge.loopexit.1
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.d	$a0, $s3, 0
.LBB2_12:                               # %._crit_edge.1
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.w	$a1, $s8, 8
	slli.w	$a1, $a1, 2
	pcaddu18i	$ra, %call36(hypre_ReAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 8
	addi.d	$s2, $s2, 1
	st.d	$a0, $s3, 0
	bge	$s2, $a1, .LBB2_18
.LBB2_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_16 Depth 2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 80
	ld.d	$fp, $s6, 0
	slli.d	$s1, $s2, 3
	ldx.d	$s8, $a0, $s1
	ld.w	$a0, $a1, 8
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	ld.w	$a2, $a1, 8
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$s3, $s2, $a3, 3
	stx.d	$a0, $a3, $s1
	blez	$a2, .LBB2_12
# %bb.14:                               # %.lr.ph.1
                                        #   in Loop: Header=BB2_13 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	move	$s1, $zero
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	add.d	$fp, $fp, $a0
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               #   in Loop: Header=BB2_16 Depth=2
	ld.d	$a1, $sp, 80
	ld.w	$a0, $a1, 8
	addi.d	$s1, $s1, 1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 24
	bge	$s1, $a0, .LBB2_11
.LBB2_16:                               #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a1, 0
	add.d	$a1, $a0, $s4
	move	$a0, $fp
	move	$a2, $s7
	pcaddu18i	$ra, %call36(hypre_IntersectBoxes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 12
	ld.w	$a1, $s7, 0
	sub.w	$a0, $a0, $a1
	slt	$a1, $s0, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$a2, $s7, 16
	ld.d	$a3, $s7, 4
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
	vinsgr2vr.d	$vr0, $a2, 0
	vinsgr2vr.d	$vr1, $a3, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	vpickve2gr.w	$a1, $vr0, 0
	vpickve2gr.w	$a2, $vr0, 1
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	sltui	$a1, $a2, 1
	or	$a0, $a0, $a1
	bnez	$a0, .LBB2_15
# %bb.17:                               #   in Loop: Header=BB2_16 Depth=2
	ld.d	$a0, $sp, 72
	ld.w	$a1, $s8, 8
	ldx.w	$a0, $a0, $s5
	ld.d	$a2, $s3, 0
	slli.d	$a1, $a1, 2
	stx.w	$a0, $a2, $a1
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
	b	.LBB2_15
.LBB2_18:                               # %._crit_edge89.1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
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
.Lfunc_end2:
	.size	hypre_CreateCommInfoFromGrids, .Lfunc_end2-hypre_CreateCommInfoFromGrids
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
