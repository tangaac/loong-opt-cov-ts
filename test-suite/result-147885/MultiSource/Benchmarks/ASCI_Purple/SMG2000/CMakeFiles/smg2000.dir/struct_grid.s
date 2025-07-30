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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
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
	ld.d	$a1, $s7, 0
	ld.d	$a2, $s6, 0
	alsl.d	$a0, $s3, $s4, 2
	addi.d	$a1, $a1, 12
	slli.d	$a3, $s3, 4
	alsl.d	$a3, $s3, $a3, 3
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, 12
	move	$a3, $s8
	move	$a4, $s2
	.p2align	4, , 16
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, -12
	st.w	$a5, $a1, -12
	ld.w	$a5, $a2, -8
	st.w	$a5, $a1, -8
	ld.w	$a5, $a2, -4
	st.w	$a5, $a1, -4
	ld.w	$a5, $a2, 0
	st.w	$a5, $a1, 0
	ld.w	$a5, $a2, 4
	st.w	$a5, $a1, 4
	ld.w	$a5, $a2, 8
	st.w	$a5, $a1, 8
	ld.w	$a5, $a0, 0
	st.w	$a5, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 24
	addi.d	$a3, $a3, 4
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
	addi.d	$a6, $sp, 0
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $s2
	move	$a5, $s1
	pcaddu18i	$ra, %call36(hypre_BoxNeighborsCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	ld.d	$a0, $s0, 40
	st.d	$a1, $s0, 24
	pcaddu18i	$ra, %call36(hypre_BoxDestroy)
	jirl	$ra, $ra, 0
	st.d	$fp, $s0, 40
	move	$a0, $zero
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end7:
	.size	hypre_StructGridSetHood, .Lfunc_end7-hypre_StructGridSetHood
                                        # -- End function
	.globl	hypre_StructGridAssemble        # -- Begin function hypre_StructGridAssemble
	.p2align	5
	.type	hypre_StructGridAssemble,@function
hypre_StructGridAssemble:               # @hypre_StructGridAssemble
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a3, $a0, 24
	ld.d	$s0, $a0, 8
	bnez	$a3, .LBB8_37
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
	addi.d	$a6, $a2, 96
	ori	$a7, $zero, 8
	move	$t0, $a2
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_3:                                # %._crit_edge
                                        #   in Loop: Header=BB8_4 Depth=1
	stx.w	$t5, $a0, $t1
	stx.w	$t4, $a5, $t1
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 4
	addi.d	$t0, $t0, 4
	beq	$a3, $s2, .LBB8_12
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
                                        #     Child Loop BB8_11 Depth 2
	slli.d	$t1, $a3, 2
	ldx.w	$t5, $a2, $t1
	ld.w	$t2, $a1, 8
	ldx.w	$t4, $a4, $t1
	blez	$t2, .LBB8_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	bgeu	$t2, $a7, .LBB8_7
# %bb.6:                                #   in Loop: Header=BB8_4 Depth=1
	move	$t3, $zero
	b	.LBB8_10
	.p2align	4, , 16
.LBB8_7:                                # %vector.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	bstrpick.d	$t3, $t2, 30, 3
	slli.d	$t3, $t3, 3
	vreplgr2vr.w	$vr1, $t4
	vreplgr2vr.w	$vr0, $t5
	move	$t4, $a6
	move	$t5, $t3
	vori.b	$vr3, $vr1, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB8_8:                                # %vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t4, -96
	ld.w	$t7, $t4, -72
	ld.w	$t8, $t4, -48
	ld.w	$s3, $t4, -24
	vinsgr2vr.w	$vr4, $t6, 0
	vinsgr2vr.w	$vr4, $t7, 1
	vinsgr2vr.w	$vr4, $t8, 2
	vinsgr2vr.w	$vr4, $s3, 3
	ld.w	$t6, $t4, 0
	ld.w	$t7, $t4, 24
	ld.w	$t8, $t4, 48
	ld.w	$s3, $t4, 72
	vinsgr2vr.w	$vr5, $t6, 0
	vinsgr2vr.w	$vr5, $t7, 1
	vinsgr2vr.w	$vr5, $t8, 2
	vinsgr2vr.w	$vr5, $s3, 3
	vmin.w	$vr0, $vr0, $vr4
	vmin.w	$vr2, $vr2, $vr5
	ld.w	$t6, $t4, -84
	ld.w	$t7, $t4, -60
	ld.w	$t8, $t4, -36
	ld.w	$s3, $t4, -12
	vinsgr2vr.w	$vr4, $t6, 0
	vinsgr2vr.w	$vr4, $t7, 1
	vinsgr2vr.w	$vr4, $t8, 2
	vinsgr2vr.w	$vr4, $s3, 3
	ld.w	$t6, $t4, 12
	ld.w	$t7, $t4, 36
	ld.w	$t8, $t4, 60
	ld.w	$s3, $t4, 84
	vinsgr2vr.w	$vr5, $t6, 0
	vinsgr2vr.w	$vr5, $t7, 1
	vinsgr2vr.w	$vr5, $t8, 2
	vinsgr2vr.w	$vr5, $s3, 3
	vmax.w	$vr1, $vr1, $vr4
	vmax.w	$vr3, $vr3, $vr5
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 192
	bnez	$t5, .LBB8_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	vmax.w	$vr1, $vr1, $vr3
	vshuf4i.w	$vr3, $vr1, 14
	vmax.w	$vr1, $vr1, $vr3
	vreplvei.w	$vr3, $vr1, 1
	vmax.w	$vr1, $vr1, $vr3
	vpickve2gr.w	$t4, $vr1, 0
	vmin.w	$vr0, $vr0, $vr2
	vshuf4i.w	$vr1, $vr0, 14
	vmin.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmin.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t5, $vr0, 0
	beq	$t3, $t2, .LBB8_3
.LBB8_10:                               # %.lr.ph.preheader226
                                        #   in Loop: Header=BB8_4 Depth=1
	slli.d	$t6, $t3, 4
	alsl.d	$t6, $t3, $t6, 3
	sub.d	$t2, $t2, $t3
	.p2align	4, , 16
.LBB8_11:                               # %.lr.ph
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t3, $t0, $t6
	add.d	$t7, $t0, $t6
	slt	$t8, $t5, $t3
	ld.w	$t7, $t7, 12
	masknez	$t3, $t3, $t8
	maskeqz	$t5, $t5, $t8
	or	$t5, $t5, $t3
	slt	$t3, $t7, $t4
	masknez	$t7, $t7, $t3
	maskeqz	$t3, $t4, $t3
	or	$t4, $t3, $t7
	addi.d	$t2, $t2, -1
	addi.d	$t6, $t6, 24
	bnez	$t2, .LBB8_11
	b	.LBB8_3
.LBB8_12:                               # %.preheader
	ori	$a1, $zero, 2
	blt	$a1, $s2, .LBB8_16
.LBB8_13:                               # %.lr.ph127
	addi.d	$a1, $s2, 1
	bstrpick.d	$a2, $a1, 31, 0
	ori	$a1, $zero, 4
	sub.d	$a1, $a1, $a2
	ori	$a3, $zero, 10
	bgeu	$a1, $a3, .LBB8_20
.LBB8_14:                               # %scalar.ph181.preheader
	alsl.d	$a1, $s2, $a0, 2
	addi.d	$a2, $s2, 1
	ori	$a3, $zero, 3
	.p2align	4, , 16
.LBB8_15:                               # %scalar.ph181
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	st.w	$zero, $a1, 12
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 1
	bne	$a4, $a3, .LBB8_15
.LBB8_16:                               # %._crit_edge128
	ld.d	$a2, $sp, 24
	ld.w	$a1, $a2, 8
	st.d	$a0, $fp, 40
	blez	$a1, .LBB8_19
# %bb.17:                               # %.lr.ph132
	ld.d	$a0, $a2, 0
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB8_25
# %bb.18:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB8_28
.LBB8_19:
	move	$a3, $zero
	b	.LBB8_30
.LBB8_20:                               # %vector.scevcheck
	ori	$a3, $zero, 3
	sub.d	$a2, $a3, $a2
	addi.w	$a3, $a2, 0
	addi.d	$a4, $zero, -2
	sub.w	$a4, $a4, $s2
	bltu	$a4, $a3, .LBB8_14
# %bb.21:                               # %vector.scevcheck
	srli.d	$a2, $a2, 32
	bnez	$a2, .LBB8_14
# %bb.22:                               # %vector.ph183
	move	$a2, $a1
	bstrins.d	$a2, $zero, 0, 0
	add.d	$a3, $a2, $s2
	alsl.d	$a4, $s2, $a0, 2
	move	$a5, $a2
	.p2align	4, , 16
.LBB8_23:                               # %vector.body186
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a4, 0
	st.d	$zero, $a4, 12
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB8_23
# %bb.24:                               # %middle.block189
	move	$s2, $a3
	bne	$a1, $a2, .LBB8_14
	b	.LBB8_16
.LBB8_25:                               # %vector.ph194
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	vrepli.b	$vr0, 0
	addi.d	$a3, $a0, 96
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB8_26:                               # %vector.body197
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -84
	ld.w	$a6, $a3, -60
	ld.w	$a7, $a3, -36
	ld.w	$t0, $a3, -12
	vinsgr2vr.w	$vr2, $a5, 0
	vinsgr2vr.w	$vr2, $a6, 1
	vinsgr2vr.w	$vr2, $a7, 2
	vinsgr2vr.w	$vr2, $t0, 3
	ld.w	$a5, $a3, 12
	ld.w	$a6, $a3, 36
	ld.w	$a7, $a3, 60
	ld.w	$t0, $a3, 84
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr3, $a7, 2
	vinsgr2vr.w	$vr3, $t0, 3
	ld.w	$a5, $a3, -96
	ld.w	$a6, $a3, -72
	ld.w	$a7, $a3, -48
	ld.w	$t0, $a3, -24
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a3, 24
	ld.w	$a7, $a3, 48
	ld.w	$t0, $a3, 72
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	vsub.w	$vr2, $vr2, $vr4
	vsub.w	$vr3, $vr3, $vr5
	vmaxi.w	$vr2, $vr2, -1
	vmaxi.w	$vr3, $vr3, -1
	vaddi.wu	$vr2, $vr2, 1
	vaddi.wu	$vr3, $vr3, 1
	ld.w	$a5, $a3, -80
	ld.w	$a6, $a3, -56
	ld.w	$a7, $a3, -32
	ld.w	$t0, $a3, -8
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ld.w	$a5, $a3, 16
	ld.w	$a6, $a3, 40
	ld.w	$a7, $a3, 64
	ld.w	$t0, $a3, 88
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	ld.w	$a5, $a3, -92
	ld.w	$a6, $a3, -68
	ld.w	$a7, $a3, -44
	ld.w	$t0, $a3, -20
	vinsgr2vr.w	$vr6, $a5, 0
	vinsgr2vr.w	$vr6, $a6, 1
	vinsgr2vr.w	$vr6, $a7, 2
	vinsgr2vr.w	$vr6, $t0, 3
	ld.w	$a5, $a3, 4
	ld.w	$a6, $a3, 28
	ld.w	$a7, $a3, 52
	ld.w	$t0, $a3, 76
	vinsgr2vr.w	$vr7, $a5, 0
	vinsgr2vr.w	$vr7, $a6, 1
	vinsgr2vr.w	$vr7, $a7, 2
	vinsgr2vr.w	$vr7, $t0, 3
	vsub.w	$vr4, $vr4, $vr6
	vsub.w	$vr5, $vr5, $vr7
	vmaxi.w	$vr4, $vr4, -1
	vmaxi.w	$vr5, $vr5, -1
	vaddi.wu	$vr4, $vr4, 1
	vaddi.wu	$vr5, $vr5, 1
	vmul.w	$vr2, $vr4, $vr2
	vmul.w	$vr3, $vr5, $vr3
	ld.w	$a5, $a3, -76
	ld.w	$a6, $a3, -52
	ld.w	$a7, $a3, -28
	ld.w	$t0, $a3, -4
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ld.w	$a5, $a3, 20
	ld.w	$a6, $a3, 44
	ld.w	$a7, $a3, 68
	ld.w	$t0, $a3, 92
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	ld.w	$a5, $a3, -88
	ld.w	$a6, $a3, -64
	ld.w	$a7, $a3, -40
	ld.w	$t0, $a3, -16
	vinsgr2vr.w	$vr6, $a5, 0
	vinsgr2vr.w	$vr6, $a6, 1
	vinsgr2vr.w	$vr6, $a7, 2
	vinsgr2vr.w	$vr6, $t0, 3
	ld.w	$a5, $a3, 8
	ld.w	$a6, $a3, 32
	ld.w	$a7, $a3, 56
	ld.w	$t0, $a3, 80
	vinsgr2vr.w	$vr7, $a5, 0
	vinsgr2vr.w	$vr7, $a6, 1
	vinsgr2vr.w	$vr7, $a7, 2
	vinsgr2vr.w	$vr7, $t0, 3
	vsub.w	$vr4, $vr4, $vr6
	vsub.w	$vr5, $vr5, $vr7
	vmaxi.w	$vr4, $vr4, -1
	vmaxi.w	$vr5, $vr5, -1
	vaddi.wu	$vr4, $vr4, 1
	vaddi.wu	$vr5, $vr5, 1
	vmadd.w	$vr0, $vr2, $vr4
	vmadd.w	$vr1, $vr3, $vr5
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 192
	bnez	$a4, .LBB8_26
# %bb.27:                               # %middle.block202
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	beq	$a2, $a1, .LBB8_30
.LBB8_28:                               # %scalar.ph192.preheader
	slli.d	$a4, $a2, 4
	alsl.d	$a4, $a2, $a4, 3
	add.d	$a0, $a4, $a0
	addi.d	$a0, $a0, 16
	sub.d	$a1, $a1, $a2
	addi.w	$a2, $zero, -1
	.p2align	4, , 16
.LBB8_29:                               # %scalar.ph192
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, -4
	ld.w	$a5, $a0, -16
	sub.w	$a4, $a4, $a5
	slt	$a5, $a2, $a4
	maskeqz	$a4, $a4, $a5
	ld.d	$a6, $a0, 0
	masknez	$a5, $a2, $a5
	ld.d	$a7, $a0, -12
	or	$a4, $a4, $a5
	vinsgr2vr.d	$vr0, $a6, 0
	addi.d	$a4, $a4, 1
	vinsgr2vr.d	$vr1, $a7, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	vpickve2gr.w	$a5, $vr0, 0
	mul.d	$a4, $a5, $a4
	vpickve2gr.w	$a5, $vr0, 1
	mul.d	$a4, $a4, $a5
	add.d	$a3, $a4, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 24
	bnez	$a1, .LBB8_29
.LBB8_30:                               # %._crit_edge133
	st.w	$a3, $fp, 52
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
	blez	$a1, .LBB8_33
# %bb.31:                               # %.lr.ph137.preheader
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $s2
	.p2align	4, , 16
.LBB8_32:                               # %.lr.ph137
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a2, 0
	ld.w	$a3, $s3, 8
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	blt	$a1, $a3, .LBB8_32
.LBB8_33:                               # %._crit_edge138
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
	blez	$a1, .LBB8_36
# %bb.34:                               # %.lr.ph141.preheader
	move	$a1, $zero
	alsl.d	$a2, $s4, $s2, 2
	move	$a3, $a0
	.p2align	4, , 16
.LBB8_35:                               # %.lr.ph141
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	st.w	$a4, $a3, 0
	ld.w	$a4, $s0, 8
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	blt	$a1, $a4, .LBB8_35
.LBB8_36:                               # %._crit_edge142
	ld.d	$a3, $fp, 24
	st.d	$a0, $fp, 16
.LBB8_37:
	ld.w	$a1, $fp, 32
	ori	$a2, $zero, 1
	move	$a0, $a3
	pcaddu18i	$ra, %call36(hypre_BoxNeighborsAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 8
	blez	$a0, .LBB8_40
# %bb.38:                               # %.lr.ph146
	ld.d	$a1, $s0, 0
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB8_41
# %bb.39:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB8_44
.LBB8_40:
	move	$a3, $zero
	b	.LBB8_46
.LBB8_41:                               # %vector.ph208
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	vrepli.b	$vr0, 0
	addi.d	$a3, $a1, 96
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB8_42:                               # %vector.body211
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -84
	ld.w	$a6, $a3, -60
	ld.w	$a7, $a3, -36
	ld.w	$t0, $a3, -12
	vinsgr2vr.w	$vr2, $a5, 0
	vinsgr2vr.w	$vr2, $a6, 1
	vinsgr2vr.w	$vr2, $a7, 2
	vinsgr2vr.w	$vr2, $t0, 3
	ld.w	$a5, $a3, 12
	ld.w	$a6, $a3, 36
	ld.w	$a7, $a3, 60
	ld.w	$t0, $a3, 84
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr3, $a7, 2
	vinsgr2vr.w	$vr3, $t0, 3
	ld.w	$a5, $a3, -96
	ld.w	$a6, $a3, -72
	ld.w	$a7, $a3, -48
	ld.w	$t0, $a3, -24
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a3, 24
	ld.w	$a7, $a3, 48
	ld.w	$t0, $a3, 72
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	vsub.w	$vr2, $vr2, $vr4
	vsub.w	$vr3, $vr3, $vr5
	vmaxi.w	$vr2, $vr2, -1
	vmaxi.w	$vr3, $vr3, -1
	vaddi.wu	$vr2, $vr2, 1
	vaddi.wu	$vr3, $vr3, 1
	ld.w	$a5, $a3, -80
	ld.w	$a6, $a3, -56
	ld.w	$a7, $a3, -32
	ld.w	$t0, $a3, -8
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ld.w	$a5, $a3, 16
	ld.w	$a6, $a3, 40
	ld.w	$a7, $a3, 64
	ld.w	$t0, $a3, 88
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	ld.w	$a5, $a3, -92
	ld.w	$a6, $a3, -68
	ld.w	$a7, $a3, -44
	ld.w	$t0, $a3, -20
	vinsgr2vr.w	$vr6, $a5, 0
	vinsgr2vr.w	$vr6, $a6, 1
	vinsgr2vr.w	$vr6, $a7, 2
	vinsgr2vr.w	$vr6, $t0, 3
	ld.w	$a5, $a3, 4
	ld.w	$a6, $a3, 28
	ld.w	$a7, $a3, 52
	ld.w	$t0, $a3, 76
	vinsgr2vr.w	$vr7, $a5, 0
	vinsgr2vr.w	$vr7, $a6, 1
	vinsgr2vr.w	$vr7, $a7, 2
	vinsgr2vr.w	$vr7, $t0, 3
	vsub.w	$vr4, $vr4, $vr6
	vsub.w	$vr5, $vr5, $vr7
	vmaxi.w	$vr4, $vr4, -1
	vmaxi.w	$vr5, $vr5, -1
	vaddi.wu	$vr4, $vr4, 1
	vaddi.wu	$vr5, $vr5, 1
	vmul.w	$vr2, $vr4, $vr2
	vmul.w	$vr3, $vr5, $vr3
	ld.w	$a5, $a3, -76
	ld.w	$a6, $a3, -52
	ld.w	$a7, $a3, -28
	ld.w	$t0, $a3, -4
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ld.w	$a5, $a3, 20
	ld.w	$a6, $a3, 44
	ld.w	$a7, $a3, 68
	ld.w	$t0, $a3, 92
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	ld.w	$a5, $a3, -88
	ld.w	$a6, $a3, -64
	ld.w	$a7, $a3, -40
	ld.w	$t0, $a3, -16
	vinsgr2vr.w	$vr6, $a5, 0
	vinsgr2vr.w	$vr6, $a6, 1
	vinsgr2vr.w	$vr6, $a7, 2
	vinsgr2vr.w	$vr6, $t0, 3
	ld.w	$a5, $a3, 8
	ld.w	$a6, $a3, 32
	ld.w	$a7, $a3, 56
	ld.w	$t0, $a3, 80
	vinsgr2vr.w	$vr7, $a5, 0
	vinsgr2vr.w	$vr7, $a6, 1
	vinsgr2vr.w	$vr7, $a7, 2
	vinsgr2vr.w	$vr7, $t0, 3
	vsub.w	$vr4, $vr4, $vr6
	vsub.w	$vr5, $vr5, $vr7
	vmaxi.w	$vr4, $vr4, -1
	vmaxi.w	$vr5, $vr5, -1
	vaddi.wu	$vr4, $vr4, 1
	vaddi.wu	$vr5, $vr5, 1
	vmadd.w	$vr0, $vr2, $vr4
	vmadd.w	$vr1, $vr3, $vr5
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 192
	bnez	$a4, .LBB8_42
# %bb.43:                               # %middle.block216
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	beq	$a2, $a0, .LBB8_46
.LBB8_44:                               # %scalar.ph206.preheader
	slli.d	$a4, $a2, 4
	alsl.d	$a4, $a2, $a4, 3
	add.d	$a1, $a4, $a1
	addi.d	$a1, $a1, 16
	sub.d	$a0, $a0, $a2
	addi.w	$a2, $zero, -1
	.p2align	4, , 16
.LBB8_45:                               # %scalar.ph206
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, -4
	ld.w	$a5, $a1, -16
	sub.w	$a4, $a4, $a5
	slt	$a5, $a2, $a4
	maskeqz	$a4, $a4, $a5
	ld.d	$a6, $a1, 0
	masknez	$a5, $a2, $a5
	ld.d	$a7, $a1, -12
	or	$a4, $a4, $a5
	vinsgr2vr.d	$vr0, $a6, 0
	addi.d	$a4, $a4, 1
	vinsgr2vr.d	$vr1, $a7, 0
	vsub.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, -1
	vaddi.wu	$vr0, $vr0, 1
	vpickve2gr.w	$a5, $vr0, 0
	mul.d	$a4, $a5, $a4
	vpickve2gr.w	$a5, $vr0, 1
	mul.d	$a4, $a4, $a5
	add.d	$a3, $a4, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 24
	bnez	$a0, .LBB8_45
.LBB8_46:                               # %._crit_edge147
	st.w	$a3, $fp, 48
	move	$a0, $zero
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end8:
	.size	hypre_StructGridAssemble, .Lfunc_end8-hypre_StructGridAssemble
                                        # -- End function
	.globl	hypre_GatherAllBoxes            # -- Begin function hypre_GatherAllBoxes
	.p2align	5
	.type	hypre_GatherAllBoxes,@function
hypre_GatherAllBoxes:                   # @hypre_GatherAllBoxes
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	move	$fp, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s7, $a1
	move	$s6, $a0
	addi.d	$a1, $sp, 92
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_size)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 88
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_rank)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 8
	ld.w	$a1, $sp, 92
	slli.d	$a2, $a0, 3
	sub.d	$a0, $a2, $a0
	st.w	$a0, $sp, 84
	slli.w	$a0, $a1, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 92
	move	$s3, $a0
	slli.w	$a0, $a1, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	addi.d	$a0, $sp, 84
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
	ld.w	$a1, $sp, 92
	ld.w	$a0, $s3, 0
	ori	$a2, $zero, 2
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
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
	ld.w	$a4, $sp, 92
	add.w	$fp, $a0, $fp
	addi.d	$s0, $s0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	blt	$s0, $a4, .LBB9_2
	b	.LBB9_4
.LBB9_3:
	move	$fp, $a0
.LBB9_4:                                # %._crit_edge
	ld.w	$a0, $sp, 84
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
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$a6, $s7, 0
	addi.d	$a2, $s4, 4
	addi.d	$a3, $s4, 8
	addi.d	$a4, $s4, 16
	addi.d	$a5, $s4, 24
	addi.d	$a6, $a6, 12
	.p2align	4, , 16
.LBB9_6:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $sp, 88
	slli.d	$t0, $a1, 2
	stx.w	$a7, $s4, $t0
	ld.w	$a7, $a6, -12
	stx.w	$a7, $a2, $t0
	ld.w	$a7, $a6, 0
	stx.w	$a7, $a3, $t0
	ld.w	$a7, $a6, -8
	addi.w	$t1, $a1, 3
	slli.d	$t1, $t1, 2
	stx.w	$a7, $s4, $t1
	ld.w	$a7, $a6, 4
	stx.w	$a7, $a4, $t0
	ld.w	$a7, $a6, -4
	addi.w	$t1, $a1, 5
	slli.d	$t1, $t1, 2
	stx.w	$a7, $s4, $t1
	ld.w	$a7, $a6, 8
	stx.w	$a7, $a5, $t0
	ld.w	$a7, $s7, 8
	addi.w	$a1, $a1, 7
	addi.d	$a0, $a0, 1
	addi.d	$a6, $a6, 24
	blt	$a0, $a7, .LBB9_6
.LBB9_7:                                # %._crit_edge113
	ld.w	$a1, $sp, 84
	ori	$a2, $zero, 1
	ori	$a6, $zero, 1
	move	$a0, $s4
	move	$a3, $s5
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$a4, $s3
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
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
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	slli.w	$a0, $s7, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	pcaddu18i	$ra, %call36(hypre_BoxCreate)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s7, $sp, 0                     # 8-byte Folded Spill
	blez	$fp, .LBB9_12
# %bb.8:                                # %.lr.ph123
	move	$s1, $zero
	move	$s3, $zero
	move	$s2, $zero
	addi.d	$a0, $s5, 4
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $s5, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s5, 16
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$s6, $s5, 24
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
	ldx.w	$a1, $s5, $a0
	st.w	$a1, $s7, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	st.w	$a1, $sp, 108
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	st.w	$a1, $sp, 96
	addi.w	$a1, $s2, 3
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s5, $a1
	st.w	$a1, $sp, 112
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	st.w	$a1, $sp, 100
	addi.w	$a1, $s2, 5
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s5, $a1
	st.w	$a1, $sp, 116
	ldx.w	$a0, $s6, $a0
	st.w	$a0, $sp, 104
	addi.d	$a1, $sp, 108
	addi.d	$a2, $sp, 96
	move	$a0, $s8
	pcaddu18i	$ra, %call36(hypre_BoxSetExtents)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
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
	ld.w	$a1, $sp, 88
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
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$s0, $a0, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
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
	ld.w	$a5, $a0, 56
	ld.w	$a6, $a0, 60
	ld.w	$fp, $a0, 64
	or	$a0, $a6, $a5
	or	$a0, $a0, $fp
	beqz	$a0, .LBB10_25
# %bb.1:
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	sltu	$s0, $zero, $a5
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	sltu	$s2, $zero, $a6
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	sltu	$s1, $zero, $fp
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a3, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.w	$s3, $a1, 8
	ori	$a0, $zero, 1
	masknez	$a1, $a0, $s0
	ori	$a2, $zero, 3
	maskeqz	$a3, $a2, $s0
	or	$a1, $a3, $a1
	masknez	$a3, $a0, $s2
	maskeqz	$a4, $a2, $s2
	or	$a3, $a4, $a3
	mul.d	$a1, $a3, $a1
	masknez	$a0, $a0, $s1
	maskeqz	$a2, $a2, $s1
	or	$a0, $a2, $a0
	mul.d	$a0, $a1, $a0
	mul.w	$s6, $a0, $s3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_BoxArrayCreate)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	slli.w	$a0, $s6, 2
	pcaddu18i	$ra, %call36(hypre_MAlloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	blez	$s3, .LBB10_26
# %bb.2:                                # %.preheader184.preheader
	move	$a6, $s3
	move	$t0, $zero
	move	$t1, $zero
	sub.w	$a1, $zero, $s0
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	sub.w	$a1, $zero, $s2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	sub.w	$a1, $zero, $s1
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a4, $s1, 1
	addi.d	$t8, $s2, 1
	addi.d	$s2, $s0, 1
	move	$s0, $zero
                                        # implicit-def: $r24
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$t8, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	b	.LBB10_4
	.p2align	4, , 16
.LBB10_3:                               # %.split206.us
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	xor	$a0, $a2, $a0
	sltui	$a0, $a0, 1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a5, $t2
	sub.d	$a2, $t1, $a2
	add.d	$a2, $a2, $a1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a0
	maskeqz	$a5, $a5, $a0
	or	$s1, $a5, $a3
	maskeqz	$a2, $a2, $a0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	masknez	$a0, $a3, $a0
	addi.w	$a3, $ra, 0
	or	$s0, $a2, $a0
	move	$t0, $a1
	move	$t1, $ra
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	bge	$a3, $a6, .LBB10_27
.LBB10_4:                               # %.preheader184
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
                                        #     Child Loop BB10_11 Depth 2
                                        #       Child Loop BB10_12 Depth 3
                                        #         Child Loop BB10_13 Depth 4
                                        #     Child Loop BB10_17 Depth 2
                                        #       Child Loop BB10_19 Depth 3
                                        #         Child Loop BB10_21 Depth 4
                                        #           Child Loop BB10_23 Depth 5
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	move	$a1, $zero
	move	$a0, $zero
	addi.w	$a7, $t1, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$s1, $a7, $a2, 2
	addi.w	$a2, $t1, 1
	slt	$a3, $a2, $a6
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a6, $a3
	or	$t2, $a3, $a2
	ori	$a5, $zero, 24
	mul.d	$a2, $a7, $a5
	alsl.d	$a3, $t0, $s6, 2
	st.d	$t0, $sp, 96                    # 8-byte Folded Spill
	mul.d	$t0, $t0, $a5
	move	$t4, $s1
	move	$t5, $a7
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_5:                               #   Parent Loop BB10_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t4, 0
	ld.w	$t6, $s1, 0
	bne	$t3, $t6, .LBB10_8
# %bb.6:                                #   in Loop: Header=BB10_5 Depth=2
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t3, $a5, 0
	add.d	$t3, $t3, $a2
	ld.d	$t6, $s5, 0
	ldx.w	$t7, $t3, $a1
	add.d	$t3, $t3, $a1
	add.d	$t6, $t6, $t0
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
	st.w	$t3, $a3, 0
	addi.d	$t5, $t5, 1
	addi.d	$a0, $a0, 1
	addi.d	$t4, $t4, 4
	addi.d	$a1, $a1, 24
	addi.d	$a3, $a3, 4
	blt	$t5, $a6, .LBB10_5
# %bb.7:                                # %.split.loop.exit229.loopexit
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_8:                               # %.split.loop.exit
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	add.w	$t2, $t1, $a0
.LBB10_9:                               # %.split.loop.exit229
                                        #   in Loop: Header=BB10_4 Depth=1
	addi.w	$a2, $t1, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$ra, $t2
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	bge	$a2, $t2, .LBB10_11
# %bb.10:                               # %.preheader183.us.preheader
                                        #   in Loop: Header=BB10_4 Depth=1
	slli.d	$a0, $a7, 4
	alsl.d	$t6, $a7, $a0, 3
	addi.d	$a0, $a7, 1
	slt	$a2, $t2, $a0
	masknez	$a3, $t2, $a2
	maskeqz	$a0, $a0, $a2
	or	$t7, $a0, $a3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$ra, $t2
	b	.LBB10_17
	.p2align	4, , 16
.LBB10_11:                              # %.preheader183
                                        #   Parent Loop BB10_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_12 Depth 3
                                        #         Child Loop BB10_13 Depth 4
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_12:                              # %.preheader182
                                        #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_13 Depth 4
	or	$a3, $a2, $a0
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_13:                              # %.preheader
                                        #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_11 Depth=2
                                        #       Parent Loop BB10_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	or	$a5, $a3, $a7
	sltui	$a5, $a5, 1
	masknez	$a6, $t1, $a5
	maskeqz	$a5, $ra, $a5
	addi.w	$a7, $a7, 1
	or	$ra, $a5, $a6
	bne	$a4, $a7, .LBB10_13
# %bb.14:                               # %.split
                                        #   in Loop: Header=BB10_12 Depth=3
	addi.w	$a2, $a2, 1
	bne	$a2, $t8, .LBB10_12
# %bb.15:                               # %.split198
                                        #   in Loop: Header=BB10_11 Depth=2
	addi.w	$a0, $a0, 1
	bne	$a0, $s2, .LBB10_11
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_16:                              # %.split198.us.us
                                        #   in Loop: Header=BB10_17 Depth=2
	addi.w	$a3, $a3, 1
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	beq	$a3, $s2, .LBB10_3
.LBB10_17:                              # %.preheader183.us
                                        #   Parent Loop BB10_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_19 Depth 3
                                        #         Child Loop BB10_21 Depth 4
                                        #           Child Loop BB10_23 Depth 5
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	mul.d	$s0, $a3, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	b	.LBB10_19
	.p2align	4, , 16
.LBB10_18:                              # %.split.us.us.us
                                        #   in Loop: Header=BB10_19 Depth=3
	addi.w	$a2, $a2, 1
	ld.d	$t8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $t8, .LBB10_16
.LBB10_19:                              # %.preheader182.us.us
                                        #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_21 Depth 4
                                        #           Child Loop BB10_23 Depth 5
	or	$a0, $a2, $a3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$s2, $a2, $a3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	b	.LBB10_21
	.p2align	4, , 16
.LBB10_20:                              # %..loopexit_crit_edge.us.us.us
                                        #   in Loop: Header=BB10_21 Depth=4
	addi.w	$a3, $a3, 1
	beq	$a3, $a4, .LBB10_18
.LBB10_21:                              #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        #       Parent Loop BB10_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB10_23 Depth 5
	or	$t0, $a0, $a3
	beqz	$t0, .LBB10_20
# %bb.22:                               # %.preheader.us.us.us
                                        #   in Loop: Header=BB10_21 Depth=4
	ld.d	$a5, $s5, 0
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	move	$s4, $fp
	mul.d	$ra, $a3, $fp
	alsl.d	$t5, $a1, $s6, 2
	slli.d	$t0, $a1, 4
	alsl.d	$t0, $a1, $t0, 3
	add.d	$a5, $a5, $t0
	addi.d	$t0, $a5, 12
	add.d	$a5, $a6, $t6
	addi.d	$s7, $a5, 12
	move	$t4, $s1
	move	$t3, $a7
	.p2align	4, , 16
.LBB10_23:                              #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        #       Parent Loop BB10_19 Depth=3
                                        #         Parent Loop BB10_21 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a6, $s7, -12
	st.w	$a6, $t0, -12
	ld.w	$s8, $s7, -8
	st.w	$s8, $t0, -8
	ld.w	$a5, $s7, -4
	st.w	$a5, $t0, -4
	ld.w	$s3, $s7, 0
	st.w	$s3, $t0, 0
	ld.w	$t8, $s7, 4
	st.w	$t8, $t0, 4
	ld.w	$fp, $s7, 8
	add.d	$a6, $a6, $s0
	st.w	$a6, $t0, -12
	add.d	$a6, $s8, $s2
	st.w	$a6, $t0, -8
	add.d	$a5, $a5, $ra
	st.w	$a5, $t0, -4
	add.d	$a5, $s3, $s0
	st.w	$a5, $t0, 0
	add.d	$a5, $t8, $s2
	st.w	$a5, $t0, 4
	add.d	$a5, $fp, $ra
	st.w	$a5, $t0, 8
	ld.w	$a5, $t4, 0
	st.w	$a5, $t5, 0
	addi.d	$t3, $t3, 1
	addi.w	$a1, $a1, 1
	addi.d	$t5, $t5, 4
	addi.d	$t0, $t0, 24
	addi.d	$s7, $s7, 24
	addi.d	$t4, $t4, 4
	blt	$t3, $t2, .LBB10_23
# %bb.24:                               #   in Loop: Header=BB10_21 Depth=4
	move	$ra, $t7
	move	$fp, $s4
	b	.LBB10_20
.LBB10_25:
	move	$s0, $zero
	b	.LBB10_28
.LBB10_26:
	move	$a1, $zero
	move	$s0, $zero
                                        # implicit-def: $r24
.LBB10_27:                              # %._crit_edge
	move	$a0, $s5
	pcaddu18i	$ra, %call36(hypre_BoxArraySetSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxArrayDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$s5, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$s6, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$s1, $a0, 0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
.LBB10_28:
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
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
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
	move	$s3, $zero
	move	$s0, $zero
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
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
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
	addi.d	$s4, $s4, 1
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, 24
	blt	$s4, $a0, .LBB11_2
.LBB11_3:                               # %._crit_edge
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
	move	$s7, $zero
	addi.d	$s2, $sp, 48
	addi.d	$s3, $sp, 52
	addi.d	$s4, $sp, 36
	addi.d	$s8, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s5, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 44
	addi.d	$a6, $sp, 32
	st.d	$s8, $sp, 0
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
	addi.w	$s7, $s7, 1
	blt	$s7, $a0, .LBB12_2
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
