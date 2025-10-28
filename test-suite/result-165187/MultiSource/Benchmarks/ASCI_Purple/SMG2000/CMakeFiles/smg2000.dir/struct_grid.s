	.file	"struct_grid.c"
	.text
	.globl	hypre_StructGridCreate          # -- Begin function hypre_StructGridCreate
	.p2align	5
	.type	hypre_StructGridCreate,@function
hypre_StructGridCreate:                 # @hypre_StructGridCreate
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
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.w	$s1, $a0, 0
	st.w	$s0, $a0, 4
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $s2, 16
	ori	$a0, $zero, 2
	st.w	$a0, $s2, 32
	st.d	$zero, $s2, 40
	vst	$vr0, $s2, 48
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $s2, 64
	st.d	$s2, $fp, 0
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	hypre_StructGridCreate, .Lfunc_end0-hypre_StructGridCreate
                                        # -- End function
	.globl	hypre_StructGridRef             # -- Begin function hypre_StructGridRef
	.p2align	5
	.type	hypre_StructGridRef,@function
hypre_StructGridRef:                    # @hypre_StructGridRef
# %bb.0:
	ld.w	$a2, $a0, 68
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 68
	st.d	$a0, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	hypre_StructGridRef, .Lfunc_end1-hypre_StructGridRef
                                        # -- End function
	.globl	hypre_StructGridDestroy         # -- Begin function hypre_StructGridDestroy
	.p2align	5
	.type	hypre_StructGridDestroy,@function
hypre_StructGridDestroy:                # @hypre_StructGridDestroy
# %bb.0:
	beqz	$a0, .LBB2_2
# %bb.1:
	ld.w	$a1, $a0, 68
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 68
	beqz	$a1, .LBB2_3
.LBB2_2:
	move	$a0, $zero
	ret
.LBB2_3:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 40
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(hypre_BoxNeighborsDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$zero, $fp, 16
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	hypre_StructGridDestroy, .Lfunc_end2-hypre_StructGridDestroy
                                        # -- End function
	.globl	hypre_StructGridSetHoodInfo     # -- Begin function hypre_StructGridSetHoodInfo
	.p2align	5
	.type	hypre_StructGridSetHoodInfo,@function
hypre_StructGridSetHoodInfo:            # @hypre_StructGridSetHoodInfo
# %bb.0:
	st.w	$a1, $a0, 32
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	hypre_StructGridSetHoodInfo, .Lfunc_end3-hypre_StructGridSetHoodInfo
                                        # -- End function
	.globl	hypre_StructGridSetPeriodic     # -- Begin function hypre_StructGridSetPeriodic
	.p2align	5
	.type	hypre_StructGridSetPeriodic,@function
hypre_StructGridSetPeriodic:            # @hypre_StructGridSetPeriodic
# %bb.0:
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 56
	ld.w	$a2, $a1, 4
	st.w	$a2, $a0, 60
	ld.w	$a1, $a1, 8
	st.w	$a1, $a0, 64
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	hypre_StructGridSetPeriodic, .Lfunc_end4-hypre_StructGridSetPeriodic
                                        # -- End function
	.globl	hypre_StructGridSetExtents      # -- Begin function hypre_StructGridSetExtents
	.p2align	5
	.type	hypre_StructGridSetExtents,@function
hypre_StructGridSetExtents:             # @hypre_StructGridSetExtents
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
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(hypre_BoxSetExtents)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	hypre_StructGridSetExtents, .Lfunc_end5-hypre_StructGridSetExtents
                                        # -- End function
	.globl	hypre_StructGridSetBoxes        # -- Begin function hypre_StructGridSetBoxes
	.p2align	5
	.type	hypre_StructGridSetBoxes,@function
hypre_StructGridSetBoxes:               # @hypre_StructGridSetBoxes
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	move	$s0, $a1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 8
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	hypre_StructGridSetBoxes, .Lfunc_end6-hypre_StructGridSetBoxes
                                        # -- End function
	.globl	hypre_StructGridSetHood         # -- Begin function hypre_StructGridSetHood
	.p2align	5
	.type	hypre_StructGridSetHood,@function
hypre_StructGridSetHood:                # @hypre_StructGridSetHood
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
	move	$fp, $a7
	move	$s1, $a6
	move	$s2, $a5
	move	$s3, $a4
	move	$s4, $a3
	move	$s5, $a2
	move	$s6, $a1
	move	$s0, $a0
	move	$a0, $a5
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	slli.w	$a0, $s2, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	blez	$s2, .LBB7_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s7, 0
	ld.d	$a2, $s6, 0
	addi.d	$a0, $a0, 12
	alsl.d	$a1, $s3, $s4, 2
	slli.d	$a3, $s3, 4
	alsl.d	$a3, $s3, $a3, 3
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, 12
	move	$a3, $s8
	move	$a4, $s2
	.p2align	4, , 16
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, -12
	st.w	$a5, $a0, -12
	ld.w	$a5, $a2, -8
	st.w	$a5, $a0, -8
	ld.w	$a5, $a2, -4
	st.w	$a5, $a0, -4
	ld.w	$a5, $a2, 0
	st.w	$a5, $a0, 0
	ld.w	$a5, $a2, 4
	st.w	$a5, $a0, 4
	ld.w	$a5, $a2, 8
	st.w	$a5, $a0, 8
	ld.w	$a5, $a1, 0
	st.w	$a5, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, 24
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 24
	bnez	$a4, .LBB7_2
.LBB7_3:                                # %._crit_edge
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	st.d	$zero, $s0, 8
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$s7, $s0, 8
	st.d	$s8, $s0, 16
	addi.d	$a6, $sp, 16
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $s2
	move	$a5, $s1
	pcaddu18i	$ra, %call36(hypre_BoxNeighborsCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	ld.d	$a0, $s0, 40
	st.d	$a1, $s0, 24
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	st.d	$fp, $s0, 40
	move	$a0, $zero
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
.Lfunc_end7:
	.size	hypre_StructGridSetHood, .Lfunc_end7-hypre_StructGridSetHood
                                        # -- End function
	.globl	hypre_StructGridAssemble        # -- Begin function hypre_StructGridAssemble
	.p2align	5
	.type	hypre_StructGridAssemble,@function
hypre_StructGridAssemble:               # @hypre_StructGridAssemble
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
	move	$fp, $a0
	ld.d	$a3, $a0, 24
	ld.d	$s0, $a0, 8
	bnez	$a3, .LBB8_26
# %bb.1:
	ld.w	$a0, $fp, 0
	ld.w	$s2, $fp, 4
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_GatherAllBoxes)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s0, 8
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	blez	$s2, .LBB8_13
# %bb.2:                                # %.lr.ph125
	ld.d	$a1, $sp, 24
	ld.d	$a2, $a1, 0
	move	$a3, $zero
	addi.d	$a4, $a2, 12
	addi.d	$a5, $a0, 12
	addi.d	$a6, $a2, 24
	ori	$a7, $zero, 1
	move	$t0, $a2
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_3:                                # %._crit_edge
                                        #   in Loop: Header=BB8_4 Depth=1
	stx.w	$t2, $a0, $t1
	stx.w	$t3, $a5, $t1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 4
	addi.d	$t0, $t0, 4
	beq	$a3, $s2, .LBB8_12
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
                                        #     Child Loop BB8_11 Depth 2
	slli.d	$t1, $a3, 2
	ldx.w	$t2, $a2, $t1
	ld.w	$t4, $a1, 8
	ldx.w	$t3, $a4, $t1
	blez	$t4, .LBB8_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	bne	$t4, $a7, .LBB8_7
# %bb.6:                                #   in Loop: Header=BB8_4 Depth=1
	move	$t5, $zero
	b	.LBB8_10
	.p2align	4, , 16
.LBB8_7:                                # %vector.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	bstrpick.d	$t5, $t4, 30, 1
	slli.d	$t5, $t5, 1
	move	$t7, $t5
	move	$t8, $a6
	move	$s3, $t3
	move	$t6, $t2
	.p2align	4, , 16
.LBB8_8:                                # %vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s4, $t8, -24
	ld.w	$s5, $t8, 0
	slt	$s6, $t2, $s4
	masknez	$s4, $s4, $s6
	maskeqz	$t2, $t2, $s6
	or	$t2, $t2, $s4
	slt	$s4, $t6, $s5
	masknez	$s5, $s5, $s4
	ld.w	$s6, $t8, -12
	maskeqz	$t6, $t6, $s4
	or	$t6, $t6, $s5
	ld.w	$s4, $t8, 12
	slt	$s5, $s6, $t3
	masknez	$s6, $s6, $s5
	maskeqz	$t3, $t3, $s5
	or	$t3, $t3, $s6
	slt	$s5, $s4, $s3
	masknez	$s4, $s4, $s5
	maskeqz	$s3, $s3, $s5
	or	$s3, $s3, $s4
	addi.d	$t7, $t7, -2
	addi.d	$t8, $t8, 48
	bnez	$t7, .LBB8_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	slt	$t7, $s3, $t3
	masknez	$t8, $s3, $t7
	maskeqz	$t3, $t3, $t7
	or	$t3, $t3, $t8
	slt	$t7, $t2, $t6
	masknez	$t6, $t6, $t7
	maskeqz	$t2, $t2, $t7
	or	$t2, $t2, $t6
	beq	$t5, $t4, .LBB8_3
.LBB8_10:                               # %.lr.ph.preheader184
                                        #   in Loop: Header=BB8_4 Depth=1
	slli.d	$t6, $t5, 4
	alsl.d	$t6, $t5, $t6, 3
	sub.d	$t4, $t4, $t5
	.p2align	4, , 16
.LBB8_11:                               # %.lr.ph
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t5, $t0, $t6
	add.d	$t7, $t0, $t6
	slt	$t8, $t2, $t5
	ld.w	$t7, $t7, 12
	masknez	$t5, $t5, $t8
	maskeqz	$t2, $t2, $t8
	or	$t2, $t2, $t5
	slt	$t5, $t7, $t3
	masknez	$t7, $t7, $t5
	maskeqz	$t3, $t3, $t5
	or	$t3, $t3, $t7
	addi.d	$t4, $t4, -1
	addi.d	$t6, $t6, 24
	bnez	$t4, .LBB8_11
	b	.LBB8_3
.LBB8_12:                               # %.preheader
	ori	$a1, $zero, 2
	blt	$a1, $s2, .LBB8_15
.LBB8_13:                               # %.lr.ph127
	alsl.d	$a1, $s2, $a0, 2
	addi.d	$a2, $s2, 1
	ori	$a3, $zero, 3
	.p2align	4, , 16
.LBB8_14:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	st.w	$zero, $a1, 12
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 1
	bne	$a4, $a3, .LBB8_14
.LBB8_15:                               # %._crit_edge128
	ld.d	$a2, $sp, 24
	ld.w	$a1, $a2, 8
	st.d	$a0, $fp, 40
	blez	$a1, .LBB8_18
# %bb.16:                               # %.lr.ph132
	ld.d	$a2, $a2, 0
	move	$a0, $zero
	addi.d	$a2, $a2, 12
	addi.w	$a3, $zero, -1
	.p2align	4, , 16
.LBB8_17:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a2, -12
	sub.w	$a4, $a4, $a5
	slt	$a5, $a3, $a4
	ld.w	$a6, $a2, 4
	ld.w	$a7, $a2, -8
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a3, $a5
	or	$a4, $a4, $a5
	sub.w	$a5, $a6, $a7
	slt	$a6, $a3, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a3, $a6
	or	$a5, $a5, $a6
	ld.w	$a6, $a2, 8
	ld.w	$a7, $a2, -4
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 1
	mul.d	$a4, $a5, $a4
	sub.w	$a5, $a6, $a7
	slt	$a6, $a3, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a3, $a6
	or	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	mul.d	$a4, $a4, $a5
	add.d	$a0, $a4, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 24
	bnez	$a1, .LBB8_17
	b	.LBB8_19
.LBB8_18:
	move	$a0, $zero
.LBB8_19:                               # %._crit_edge133
	st.w	$a0, $fp, 52
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 12
	addi.d	$a4, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_StructGridPeriodicAllBoxes)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 24
	ld.w	$a0, $s3, 8
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 8
	move	$s2, $a0
	blez	$a1, .LBB8_22
# %bb.20:                               # %.lr.ph137.preheader
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $s2
	.p2align	4, , 16
.LBB8_21:                               # %.lr.ph137
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a2, 0
	ld.w	$a3, $s3, 8
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	blt	$a1, $a3, .LBB8_21
.LBB8_22:                               # %._crit_edge138
	ld.d	$a1, $sp, 16
	ld.w	$s4, $sp, 12
	ld.w	$a5, $sp, 8
	addi.d	$a6, $sp, 32
	move	$a0, $s3
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(hypre_BoxNeighborsCreate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	ld.w	$a1, $s0, 8
	st.d	$a0, $fp, 24
	slli.w	$a0, $a1, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 8
	blez	$a1, .LBB8_25
# %bb.23:                               # %.lr.ph141.preheader
	move	$a1, $zero
	alsl.d	$a2, $s4, $s2, 2
	move	$a3, $a0
	.p2align	4, , 16
.LBB8_24:                               # %.lr.ph141
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	st.w	$a4, $a3, 0
	ld.w	$a4, $s0, 8
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	blt	$a1, $a4, .LBB8_24
.LBB8_25:                               # %._crit_edge142
	ld.d	$a3, $fp, 24
	st.d	$a0, $fp, 16
.LBB8_26:
	ld.w	$a1, $fp, 32
	ori	$a2, $zero, 1
	move	$a0, $a3
	pcaddu18i	$ra, %call36(hypre_BoxNeighborsAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 8
	blez	$a0, .LBB8_29
# %bb.27:                               # %.lr.ph146
	ld.d	$a2, $s0, 0
	move	$a1, $zero
	addi.d	$a2, $a2, 12
	addi.w	$a3, $zero, -1
	.p2align	4, , 16
.LBB8_28:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a2, -12
	sub.w	$a4, $a4, $a5
	slt	$a5, $a3, $a4
	ld.w	$a6, $a2, 4
	ld.w	$a7, $a2, -8
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a3, $a5
	or	$a4, $a4, $a5
	sub.w	$a5, $a6, $a7
	slt	$a6, $a3, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a3, $a6
	or	$a5, $a5, $a6
	ld.w	$a6, $a2, 8
	ld.w	$a7, $a2, -4
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 1
	mul.d	$a4, $a5, $a4
	sub.w	$a5, $a6, $a7
	slt	$a6, $a3, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a3, $a6
	or	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	mul.d	$a4, $a4, $a5
	add.d	$a1, $a4, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 24
	bnez	$a0, .LBB8_28
	b	.LBB8_30
.LBB8_29:
	move	$a1, $zero
.LBB8_30:                               # %._crit_edge147
	st.w	$a1, $fp, 48
	move	$a0, $zero
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
.Lfunc_end8:
	.size	hypre_StructGridAssemble, .Lfunc_end8-hypre_StructGridAssemble
                                        # -- End function
	.globl	hypre_GatherAllBoxes            # -- Begin function hypre_GatherAllBoxes
	.p2align	5
	.type	hypre_GatherAllBoxes,@function
hypre_GatherAllBoxes:                   # @hypre_GatherAllBoxes
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s7, $a1
	move	$s6, $a0
	addi.d	$a1, $sp, 76
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_size)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 72
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_rank)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 8
	ld.w	$a1, $sp, 76
	slli.d	$a2, $a0, 3
	sub.d	$a0, $a2, $a0
	st.w	$a0, $sp, 68
	slli.w	$a0, $a1, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 76
	move	$s3, $a0
	slli.w	$a0, $a1, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	addi.d	$a0, $sp, 68
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	ori	$s0, $zero, 1
	move	$a3, $s3
	move	$a6, $s6
	pcaddu18i	$ra, %call36(hypre_MPI_Allgather)
	jirl	$ra, $ra, 0
	st.w	$zero, $s8, 0
	ld.w	$a1, $sp, 76
	ld.w	$a0, $s3, 0
	ori	$a2, $zero, 2
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	blt	$a1, $a2, .LBB9_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $zero
	addi.d	$a2, $s3, 4
	addi.d	$a3, $s8, 4
	move	$fp, $a0
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a0, $a1
	st.w	$a1, $a3, 0
	ld.w	$a0, $a2, 0
	ld.w	$a4, $sp, 76
	add.w	$fp, $a0, $fp
	addi.d	$s0, $s0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	blt	$s0, $a4, .LBB9_2
	b	.LBB9_4
.LBB9_3:
	move	$fp, $a0
.LBB9_4:                                # %._crit_edge
	ld.w	$a0, $sp, 68
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	slli.w	$a0, $fp, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 8
	move	$s5, $a0
	blez	$a1, .LBB9_7
# %bb.5:                                # %.lr.ph112
	ld.d	$a2, $s7, 0
	move	$a0, $zero
	move	$a1, $zero
	addi.d	$a2, $a2, 12
	.p2align	4, , 16
.LBB9_6:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $sp, 72
	slli.d	$a4, $a1, 2
	stx.w	$a3, $s4, $a4
	ld.w	$a3, $a2, -12
	alsl.d	$a4, $a1, $s4, 2
	st.w	$a3, $a4, 4
	ld.w	$a3, $a2, 0
	st.w	$a3, $a4, 8
	ld.w	$a3, $a2, -8
	addi.w	$a5, $a1, 3
	slli.d	$a5, $a5, 2
	stx.w	$a3, $s4, $a5
	ld.w	$a3, $a2, 4
	st.w	$a3, $a4, 16
	ld.w	$a3, $a2, -4
	addi.w	$a5, $a1, 5
	slli.d	$a5, $a5, 2
	stx.w	$a3, $s4, $a5
	ld.w	$a3, $a2, 8
	st.w	$a3, $a4, 24
	ld.w	$a3, $s7, 8
	addi.w	$a1, $a1, 7
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 24
	blt	$a0, $a3, .LBB9_6
.LBB9_7:                                # %._crit_edge113
	ld.w	$a1, $sp, 68
	ori	$a2, $zero, 1
	ori	$a6, $zero, 1
	move	$a0, $s4
	move	$a3, $s5
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	move	$a4, $s3
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$a5, $s8
	move	$a7, $s6
	pcaddu18i	$ra, %call36(hypre_MPI_Allgatherv)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -449390
	ori	$a0, $a0, 1171
	mul.d	$a0, $fp, $a0
	srli.d	$a0, $a0, 32
	add.w	$a0, $a0, $fp
	bstrpick.d	$a1, $a0, 31, 31
	srli.d	$a0, $a0, 2
	add.w	$s7, $a0, $a1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	slli.w	$a0, $s7, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	blez	$fp, .LBB9_12
# %bb.8:                                # %.lr.ph123
	move	$s1, $zero
	move	$s3, $zero
	move	$s2, $zero
	addi.w	$s0, $zero, -1
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_9:                                #   in Loop: Header=BB9_10 Depth=1
	addi.w	$s2, $s2, 7
	addi.d	$s7, $s7, 4
	addi.w	$s3, $s3, 1
	addi.d	$s1, $s1, 24
	bge	$s2, $fp, .LBB9_13
.LBB9_10:                               # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s2, 2
	ldx.w	$a0, $s5, $a0
	alsl.d	$a1, $s2, $s5, 2
	st.w	$a0, $s7, 0
	ld.w	$a0, $a1, 4
	st.w	$a0, $sp, 92
	ld.w	$a0, $a1, 8
	st.w	$a0, $sp, 80
	addi.w	$a0, $s2, 3
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s5, $a0
	st.w	$a0, $sp, 96
	ld.w	$a0, $a1, 16
	st.w	$a0, $sp, 84
	addi.w	$a0, $s2, 5
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s5, $a0
	st.w	$a0, $sp, 100
	ld.w	$a0, $a1, 24
	st.w	$a0, $sp, 88
	addi.d	$a1, $sp, 92
	addi.d	$a2, $sp, 80
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_BoxSetExtents)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	ld.d	$a1, $s6, 0
	stx.w	$a0, $a1, $s1
	ld.w	$a0, $s8, 4
	add.d	$a1, $a1, $s1
	st.w	$a0, $a1, 4
	ld.w	$a0, $s8, 8
	st.w	$a0, $a1, 8
	ld.w	$a0, $s8, 12
	st.w	$a0, $a1, 12
	ld.w	$a0, $s8, 16
	st.w	$a0, $a1, 16
	ld.w	$a0, $s8, 20
	st.w	$a0, $a1, 20
	bgez	$s0, .LBB9_9
# %bb.11:                               #   in Loop: Header=BB9_10 Depth=1
	ld.w	$a0, $s7, 0
	ld.w	$a1, $sp, 72
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s3, $a0
	or	$s0, $a0, $a1
	b	.LBB9_9
.LBB9_12:
	addi.d	$s0, $zero, -1
.LBB9_13:                               # %._crit_edge124
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$s6, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$s0, $a0, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end9:
	.size	hypre_GatherAllBoxes, .Lfunc_end9-hypre_GatherAllBoxes
                                        # -- End function
	.globl	hypre_StructGridPeriodicAllBoxes # -- Begin function hypre_StructGridPeriodicAllBoxes
	.p2align	5
	.type	hypre_StructGridPeriodicAllBoxes,@function
hypre_StructGridPeriodicAllBoxes:       # @hypre_StructGridPeriodicAllBoxes
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
	ld.w	$s7, $a0, 56
	ld.w	$a5, $a0, 60
	ld.w	$fp, $a0, 64
	or	$a0, $a5, $s7
	or	$a0, $a0, $fp
	beqz	$a0, .LBB10_24
# %bb.1:
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	sltu	$s0, $zero, $s7
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	sltu	$s2, $zero, $a5
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s4, $a1, 0
	sltu	$s3, $zero, $fp
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s1, $a2, 0
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $a3, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$s8, $s4, 8
	ori	$a0, $zero, 1
	masknez	$a1, $a0, $s0
	ori	$a2, $zero, 3
	maskeqz	$a3, $a2, $s0
	or	$a1, $a3, $a1
	masknez	$a3, $a0, $s2
	maskeqz	$a4, $a2, $s2
	or	$a3, $a4, $a3
	mul.d	$a1, $a3, $a1
	masknez	$a0, $a0, $s3
	maskeqz	$a2, $a2, $s3
	or	$a0, $a2, $a0
	mul.d	$a0, $a1, $a0
	mul.w	$s6, $a0, $s8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	slli.w	$a0, $s6, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	blez	$s8, .LBB10_25
# %bb.2:                                # %.preheader184.preheader
	move	$a7, $s8
	st.d	$s7, $sp, 120                   # 8-byte Folded Spill
	move	$t1, $zero
	sub.w	$t8, $zero, $s0
	sub.w	$ra, $zero, $s2
	sub.w	$a1, $zero, $s3
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a4, $s3, 1
	addi.d	$a1, $s2, 1
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a1, $s0, 1
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	move	$s0, $zero
	move	$a0, $zero
                                        # implicit-def: $r9
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	st.d	$ra, $sp, 112                   # 8-byte Folded Spill
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_3:                               #   in Loop: Header=BB10_5 Depth=1
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	move	$a3, $t4
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
.LBB10_4:                               # %.split206.us
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	xor	$a0, $t1, $a0
	sltui	$a0, $a0, 1
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	add.d	$a2, $a6, $t4
	sub.d	$a2, $t1, $a2
	add.d	$a2, $a2, $a1
	masknez	$a5, $a5, $a0
	maskeqz	$a6, $a6, $a0
	or	$a5, $a6, $a5
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $s0, $a0
	or	$s0, $a2, $a0
	move	$a0, $a1
	move	$t1, $a3
	bge	$a3, $a7, .LBB10_26
.LBB10_5:                               # %.preheader184
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_6 Depth 2
                                        #     Child Loop BB10_9 Depth 2
                                        #       Child Loop BB10_10 Depth 3
                                        #         Child Loop BB10_11 Depth 4
                                        #     Child Loop BB10_17 Depth 2
                                        #       Child Loop BB10_19 Depth 3
                                        #         Child Loop BB10_21 Depth 4
                                        #           Child Loop BB10_23 Depth 5
	move	$a1, $zero
	move	$a3, $zero
	alsl.d	$s7, $t1, $s1, 2
	addi.w	$a6, $t1, 1
	slt	$t0, $a6, $a7
	masknez	$a6, $a6, $t0
	maskeqz	$t0, $a7, $t0
	or	$s2, $t0, $a6
	ori	$a2, $zero, 24
	mul.d	$t0, $t1, $a2
	mul.d	$t2, $a0, $a2
	alsl.d	$a6, $a0, $s6, 2
	move	$t4, $s7
	move	$t5, $t1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_6:                               #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t4, 0
	ld.w	$t6, $s7, 0
	bne	$t3, $t6, .LBB10_14
# %bb.7:                                #   in Loop: Header=BB10_6 Depth=2
	ld.d	$t3, $s4, 0
	add.d	$t3, $t3, $t0
	ld.d	$t6, $s5, 0
	ldx.w	$t7, $t3, $a1
	add.d	$t3, $t3, $a1
	add.d	$t6, $t6, $t2
	stx.w	$t7, $t6, $a1
	ld.w	$t7, $t3, 4
	add.d	$t6, $t6, $a1
	st.w	$t7, $t6, 4
	ld.w	$t7, $t3, 8
	st.w	$t7, $t6, 8
	ld.w	$t7, $t3, 12
	st.w	$t7, $t6, 12
	ld.w	$t7, $t3, 16
	st.w	$t7, $t6, 16
	ld.w	$t3, $t3, 20
	st.w	$t3, $t6, 20
	ld.w	$t3, $t4, 0
	st.w	$t3, $a6, 0
	addi.d	$t5, $t5, 1
	addi.d	$a3, $a3, 1
	addi.d	$t4, $t4, 4
	addi.d	$a1, $a1, 24
	addi.d	$a6, $a6, 4
	blt	$t5, $a7, .LBB10_6
# %bb.8:                                # %.split.loop.exit235.loopexit
                                        #   in Loop: Header=BB10_5 Depth=1
	add.w	$a1, $a0, $a3
	move	$t4, $s2
	move	$a6, $t8
	move	$a3, $t4
	blt	$t1, $t4, .LBB10_15
	.p2align	4, , 16
.LBB10_9:                               # %.preheader183
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_10 Depth 3
                                        #         Child Loop BB10_11 Depth 4
	move	$t0, $ra
	.p2align	4, , 16
.LBB10_10:                              # %.preheader182
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_11 Depth 4
	or	$t2, $t0, $a6
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_11:                              # %.preheader
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_9 Depth=2
                                        #       Parent Loop BB10_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	or	$a0, $t2, $t3
	sltui	$a0, $a0, 1
	masknez	$a2, $t1, $a0
	maskeqz	$a0, $a3, $a0
	addi.w	$t3, $t3, 1
	or	$a3, $a0, $a2
	bne	$a4, $t3, .LBB10_11
# %bb.12:                               # %.split
                                        #   in Loop: Header=BB10_10 Depth=3
	addi.w	$t0, $t0, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$t0, $a0, .LBB10_10
# %bb.13:                               # %.split198
                                        #   in Loop: Header=BB10_9 Depth=2
	addi.w	$a6, $a6, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bne	$a6, $a0, .LBB10_9
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_14:                              # %.split.loop.exit
                                        #   in Loop: Header=BB10_5 Depth=1
	add.w	$a1, $a0, $a3
	add.w	$t4, $t1, $a3
	move	$a6, $t8
	move	$a3, $t4
	bge	$t1, $t4, .LBB10_9
.LBB10_15:                              # %.preheader183.us.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	sub.d	$s1, $t4, $t1
	slli.d	$a3, $t1, 4
	alsl.d	$t5, $t1, $a3, 3
	st.d	$t4, $sp, 72                    # 8-byte Folded Spill
	sub.d	$t6, $t4, $t1
	move	$a2, $t8
	b	.LBB10_17
	.p2align	4, , 16
.LBB10_16:                              # %.split198.us.us
                                        #   in Loop: Header=BB10_17 Depth=2
	addi.w	$a2, $a2, 1
	ld.d	$ra, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB10_3
.LBB10_17:                              # %.preheader183.us
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_19 Depth 3
                                        #         Child Loop BB10_21 Depth 4
                                        #           Child Loop BB10_23 Depth 5
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	mul.d	$t8, $a2, $a0
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	b	.LBB10_19
	.p2align	4, , 16
.LBB10_18:                              # %.split.us.us.us
                                        #   in Loop: Header=BB10_19 Depth=3
	addi.w	$ra, $ra, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	beq	$ra, $a0, .LBB10_16
.LBB10_19:                              # %.preheader182.us.us
                                        #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_21 Depth 4
                                        #           Child Loop BB10_23 Depth 5
	or	$s0, $ra, $a2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	mul.d	$t0, $ra, $a0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	b	.LBB10_21
	.p2align	4, , 16
.LBB10_20:                              # %..loopexit_crit_edge.us.us.us
                                        #   in Loop: Header=BB10_21 Depth=4
	addi.w	$a3, $a3, 1
	beq	$a3, $a4, .LBB10_18
.LBB10_21:                              #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        #       Parent Loop BB10_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB10_23 Depth 5
	or	$a6, $s0, $a3
	beqz	$a6, .LBB10_20
# %bb.22:                               # %.preheader.us.us.us
                                        #   in Loop: Header=BB10_21 Depth=4
	ld.d	$a0, $s5, 0
	ld.d	$a2, $s4, 0
	mul.d	$s2, $a3, $fp
	alsl.d	$s3, $a1, $s6, 2
	slli.d	$a5, $a1, 4
	alsl.d	$a5, $a1, $a5, 3
	add.d	$a0, $a0, $a5
	addi.d	$t2, $a0, 12
	add.d	$a0, $a2, $t5
	addi.d	$a6, $a0, 12
	add.w	$a1, $t6, $a1
	move	$t3, $s7
	move	$t4, $s1
	.p2align	4, , 16
.LBB10_23:                              #   Parent Loop BB10_5 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        #       Parent Loop BB10_19 Depth=3
                                        #         Parent Loop BB10_21 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a2, $a6, -12
	st.w	$a2, $t2, -12
	ld.w	$a7, $a6, -8
	st.w	$a7, $t2, -8
	ld.w	$s8, $a6, -4
	st.w	$s8, $t2, -4
	ld.w	$a5, $a6, 0
	st.w	$a5, $t2, 0
	ld.w	$a0, $a6, 4
	st.w	$a0, $t2, 4
	ld.w	$t7, $a6, 8
	add.d	$a2, $a2, $t8
	st.w	$a2, $t2, -12
	add.d	$a2, $a7, $t0
	st.w	$a2, $t2, -8
	add.d	$a2, $s8, $s2
	st.w	$a2, $t2, -4
	add.d	$a2, $a5, $t8
	st.w	$a2, $t2, 0
	add.d	$a0, $a0, $t0
	st.w	$a0, $t2, 4
	add.d	$a0, $t7, $s2
	st.w	$a0, $t2, 8
	ld.w	$a0, $t3, 0
	st.w	$a0, $s3, 0
	addi.d	$s3, $s3, 4
	addi.d	$t2, $t2, 24
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 4
	addi.d	$a6, $a6, 24
	bnez	$t4, .LBB10_23
	b	.LBB10_20
.LBB10_24:
	move	$s0, $zero
	b	.LBB10_27
.LBB10_25:
	move	$a1, $zero
	move	$s0, $zero
                                        # implicit-def: $r9
.LBB10_26:                              # %._crit_edge
	move	$a0, $s5
	move	$fp, $a5
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$s5, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$s6, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$fp, $a0, 0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
.LBB10_27:
	st.w	$s0, $a4, 0
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
.Lfunc_end10:
	.size	hypre_StructGridPeriodicAllBoxes, .Lfunc_end10-hypre_StructGridPeriodicAllBoxes
                                        # -- End function
	.globl	hypre_StructGridPrint           # -- Begin function hypre_StructGridPrint
	.p2align	5
	.type	hypre_StructGridPrint,@function
hypre_StructGridPrint:                  # @hypre_StructGridPrint
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a2, $a1, 4
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 8
	ld.w	$a2, $s2, 8
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	blez	$a0, .LBB11_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	move	$s3, $zero
	move	$s1, $zero
	move	$s4, $zero
	.p2align	4, , 16
.LBB11_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	add.d	$a1, $a0, $s3
	ldx.w	$a3, $a0, $s3
	ld.w	$a4, $a1, 4
	ld.w	$a5, $a1, 8
	ld.w	$a6, $a1, 12
	ld.w	$a7, $a1, 16
	ld.w	$a0, $a1, 20
	st.d	$a0, $sp, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	addi.d	$s4, $s4, 1
	addi.w	$s1, $s1, 1
	addi.d	$s3, $s3, 24
	blt	$s4, $a0, .LBB11_2
.LBB11_3:                               # %._crit_edge
	move	$a0, $zero
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end11:
	.size	hypre_StructGridPrint, .Lfunc_end11-hypre_StructGridPrint
                                        # -- End function
	.globl	hypre_StructGridRead            # -- Begin function hypre_StructGridRead
	.p2align	5
	.type	hypre_StructGridRead,@function
hypre_StructGridRead:                   # @hypre_StructGridRead
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s3, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 28
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$s4, $sp, 28
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.w	$s2, $a0, 0
	st.w	$s4, $a0, 4
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 16
	ori	$a0, $zero, 2
	st.w	$a0, $s1, 32
	st.d	$zero, $s1, 40
	vst	$vr0, $s1, 48
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $s1, 64
	addi.d	$a2, $sp, 24
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 24
	blez	$a0, .LBB12_3
# %bb.1:                                # %.lr.ph
	addi.d	$s2, $sp, 48
	addi.d	$s3, $sp, 52
	addi.d	$s4, $sp, 36
	addi.d	$s7, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s5, $a0, %pc_lo12(.L.str.1)
	move	$s8, $zero
	.p2align	4, , 16
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 44
	addi.d	$a6, $sp, 32
	st.d	$s7, $sp, 0
	move	$a0, $s0
	move	$a1, $s5
	move	$a4, $s2
	move	$a5, $s3
	move	$a7, $s4
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.d	$a1, $sp, 44
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(hypre_BoxSetExtents)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_AppendBox)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 24
	addi.w	$s8, $s8, 1
	blt	$s8, $a0, .LBB12_2
.LBB12_3:                               # %._crit_edge
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructGridAssemble)
	jirl	$ra, $ra, 0
	st.d	$s1, $fp, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end12:
	.size	hypre_StructGridRead, .Lfunc_end12-hypre_StructGridRead
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d:  (%d, %d, %d)  x  (%d, %d, %d)\n"
	.size	.L.str.1, 36

	.section	".note.GNU-stack","",@progbits
	.addrsig
