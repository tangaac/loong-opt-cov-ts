	.file	"MSalignmm.c"
	.text
	.globl	MSalignmm                       # -- Begin function MSalignmm
	.p2align	5
	.type	MSalignmm,@function
MSalignmm:                              # @MSalignmm
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(penalty)
	ld.d	$a6, $a6, %got_pc_lo12(penalty)
	move	$s6, $a0
	ld.w	$fp, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	move	$s1, $a5
	move	$s2, $a4
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	move	$s5, $a2
	move	$s0, $a1
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	add.d	$a0, $s8, $a0
	addi.w	$s3, $a0, 200
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$s4, $s1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.w	$s3, $s8, 102
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$s7, $sp, 120                   # 8-byte Folded Spill
	addi.w	$s7, $s7, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$s7, $zero, 1
	st.d	$s8, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s8, $s8, 0
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	blt	$s2, $s7, .LBB0_4
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	move	$s1, $s6
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_48
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB0_2
.LBB0_4:                                # %.preheader209
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	blt	$s4, $s7, .LBB0_8
# %bb.5:                                # %.lr.ph216
	move	$s7, $zero
	move	$s2, $s4
	move	$s1, $s0
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_49
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	addi.w	$s7, $s7, 1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB0_6
.LBB0_8:                                # %._crit_edge
	movgr2fr.w	$fa0, $fp
	ffint.s.w	$fs0, $fa0
	move	$a0, $s6
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s8
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s3
	move	$s7, $s4
	move	$a4, $s4
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	beqz	$a5, .LBB0_10
# %bb.9:
	ld.d	$s7, $sp, 288
	ld.d	$s1, $sp, 272
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s5
	move	$a4, $s8
	move	$a5, $s7
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s7
	move	$s7, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB0_11
.LBB0_10:
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$s1, $a0
	move	$a1, $s7
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s6
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s0
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB0_11:
	ori	$a0, $zero, 1
	fcvt.d.s	$fa0, $fs0
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	blt	$s8, $a0, .LBB0_18
# %bb.12:                               # %.lr.ph219
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a2, $zero, 4
	bltu	$a1, $a2, .LBB0_15
# %bb.13:                               # %vector.memcheck
	alsl.d	$a2, $a1, $a7, 2
	bgeu	$t1, $a2, .LBB0_42
# %bb.14:                               # %vector.memcheck
	alsl.d	$a2, $a1, $t1, 2
	bgeu	$a7, $a2, .LBB0_42
.LBB0_15:
	move	$a2, $zero
.LBB0_16:                               # %scalar.ph.preheader
	alsl.d	$a3, $a2, $a7, 2
	alsl.d	$a4, $a2, $t1, 2
	sub.d	$a1, $a1, $a2
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB0_17:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a4, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a4, 0
	fld.s	$fa3, $a3, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB0_17
.LBB0_18:                               # %.preheader208
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	blt	$s3, $a0, .LBB0_25
# %bb.19:                               # %.lr.ph221
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 4
	bltu	$a0, $a1, .LBB0_22
# %bb.20:                               # %vector.memcheck277
	alsl.d	$a1, $a0, $t0, 2
	bgeu	$s1, $a1, .LBB0_45
# %bb.21:                               # %vector.memcheck277
	alsl.d	$a1, $a0, $s1, 2
	bgeu	$t0, $a1, .LBB0_45
.LBB0_22:
	move	$a1, $zero
.LBB0_23:                               # %scalar.ph283.preheader
	alsl.d	$a2, $a1, $t0, 2
	alsl.d	$a3, $a1, $s1, 2
	sub.d	$a0, $a0, $a1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB0_24:                               # %scalar.ph283
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a3, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a3, 0
	fld.s	$fa3, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB0_24
.LBB0_25:                               # %._crit_edge222
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$t1, $a1, 0
	st.d	$a7, $a1, 8
	st.d	$s1, $a1, 16
	st.d	$t0, $a1, 24
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a7, $a0, -1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a1, $sp, 40
	st.d	$zero, $sp, 32
	st.d	$s8, $sp, 24
	st.d	$s4, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	move	$a0, $s1
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s0
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	move	$a6, $zero
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	fmov.s	$fs0, $fa0
	blt	$s1, $fp, .LBB0_28
# %bb.26:                               # %.lr.ph225.preheader
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	move	$s2, $s6
	move	$s3, $s4
	.p2align	4, , 16
.LBB0_27:                               # %.lr.ph225
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB0_27
.LBB0_28:                               # %.preheader207
	blt	$s7, $fp, .LBB0_31
# %bb.29:                               # %.lr.ph227.preheader
	move	$fp, $s7
	move	$s1, $s0
	move	$s2, $s8
	.p2align	4, , 16
.LBB0_30:                               # %.lr.ph227
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 8
	bnez	$fp, .LBB0_30
.LBB0_31:                               # %._crit_edge228
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $s1, .LBB0_54
# %bb.32:
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	bne	$a0, $s1, .LBB0_55
# %bb.33:
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	move	$s3, $a0
	blt	$s2, $fp, .LBB0_37
# %bb.34:                               # %.lr.ph231
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	addi.w	$s5, $a0, 0
	move	$s1, $s2
	.p2align	4, , 16
.LBB0_35:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB0_51
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$s1, $s1, -1
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB0_35
.LBB0_37:                               # %.preheader
	blt	$s7, $fp, .LBB0_41
# %bb.38:                               # %.lr.ph233
	move	$s1, $zero
	addi.w	$fp, $s3, 0
	move	$s2, $s7
	.p2align	4, , 16
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_52
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 8
	bnez	$s2, .LBB0_39
.LBB0_41:                               # %._crit_edge234
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB0_42:                               # %vector.ph
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 30, 2
	slli.d	$a2, $a2, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$a3, $zero, 1023
	vreplgr2vr.d	$vr2, $a3
	lu52i.d	$a3, $zero, 1022
	vreplgr2vr.d	$vr3, $a3
	move	$a3, $t1
	move	$a4, $a7
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_43:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a3, 0
	vreplvei.w	$vr5, $vr4, 0
	fcvt.d.s	$fa5, $fa5
	movfr2gr.d	$a6, $fa5
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vinsgr2vr.d	$vr6, $a6, 0
	movfr2gr.d	$a6, $fa5
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	vinsgr2vr.d	$vr6, $a6, 1
	movfr2gr.d	$a6, $fa5
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr5, $a6, 0
	movfr2gr.d	$a6, $fa4
	vinsgr2vr.d	$vr5, $a6, 1
	vfsub.d	$vr4, $vr2, $vr5
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 0
	fcvt.s.d	$fa6, $fa6
	vfmul.d	$vr4, $vr4, $vr1
	movfr2gr.s	$a6, $fa6
	vreplvei.d	$vr5, $vr5, 1
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a6, 0
	movfr2gr.s	$a6, $fa5
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a6, 1
	movfr2gr.s	$a6, $fa5
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr5, $a4, 0
	fcvt.s.d	$fa4, $fa4
	vinsgr2vr.w	$vr6, $a6, 2
	movfr2gr.s	$a6, $fa4
	vinsgr2vr.w	$vr6, $a6, 3
	vreplvei.w	$vr4, $vr5, 0
	fcvt.d.s	$fa4, $fa4
	vst	$vr6, $a3, 0
	movfr2gr.d	$a6, $fa4
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr6, $a6, 0
	movfr2gr.d	$a6, $fa4
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr6, $a6, 1
	movfr2gr.d	$a6, $fa4
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr5, $a6, 0
	movfr2gr.d	$a6, $fa4
	vinsgr2vr.d	$vr5, $a6, 1
	vfsub.d	$vr4, $vr2, $vr5
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 0
	fcvt.s.d	$fa6, $fa6
	vfmul.d	$vr4, $vr4, $vr1
	movfr2gr.s	$a6, $fa6
	vreplvei.d	$vr5, $vr5, 1
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a6, 0
	movfr2gr.s	$a6, $fa5
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a6, 1
	movfr2gr.s	$a6, $fa5
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vinsgr2vr.w	$vr6, $a6, 2
	movfr2gr.s	$a6, $fa4
	vinsgr2vr.w	$vr6, $a6, 3
	vst	$vr6, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 16
	addi.d	$a3, $a3, 16
	bnez	$a5, .LBB0_43
# %bb.44:                               # %middle.block
	beq	$a1, $a2, .LBB0_18
	b	.LBB0_16
.LBB0_45:                               # %vector.ph285
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$a2, $zero, 1023
	vreplgr2vr.d	$vr2, $a2
	lu52i.d	$a2, $zero, 1022
	vreplgr2vr.d	$vr3, $a2
	move	$a2, $s1
	move	$a3, $t0
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_46:                               # %vector.body290
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a2, 0
	vreplvei.w	$vr5, $vr4, 0
	fcvt.d.s	$fa5, $fa5
	movfr2gr.d	$a5, $fa5
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vinsgr2vr.d	$vr6, $a5, 0
	movfr2gr.d	$a5, $fa5
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	vinsgr2vr.d	$vr6, $a5, 1
	movfr2gr.d	$a5, $fa5
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr5, $a5, 0
	movfr2gr.d	$a5, $fa4
	vinsgr2vr.d	$vr5, $a5, 1
	vfsub.d	$vr4, $vr2, $vr5
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 0
	fcvt.s.d	$fa6, $fa6
	vfmul.d	$vr4, $vr4, $vr1
	movfr2gr.s	$a5, $fa6
	vreplvei.d	$vr5, $vr5, 1
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a5, 0
	movfr2gr.s	$a5, $fa5
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a5, 1
	movfr2gr.s	$a5, $fa5
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr5, $a3, 0
	fcvt.s.d	$fa4, $fa4
	vinsgr2vr.w	$vr6, $a5, 2
	movfr2gr.s	$a5, $fa4
	vinsgr2vr.w	$vr6, $a5, 3
	vreplvei.w	$vr4, $vr5, 0
	fcvt.d.s	$fa4, $fa4
	vst	$vr6, $a2, 0
	movfr2gr.d	$a5, $fa4
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr6, $a5, 0
	movfr2gr.d	$a5, $fa4
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr6, $a5, 1
	movfr2gr.d	$a5, $fa4
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr5, $a5, 0
	movfr2gr.d	$a5, $fa4
	vinsgr2vr.d	$vr5, $a5, 1
	vfsub.d	$vr4, $vr2, $vr5
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 0
	fcvt.s.d	$fa6, $fa6
	vfmul.d	$vr4, $vr4, $vr1
	movfr2gr.s	$a5, $fa6
	vreplvei.d	$vr5, $vr5, 1
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a5, 0
	movfr2gr.s	$a5, $fa5
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a5, 1
	movfr2gr.s	$a5, $fa5
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vinsgr2vr.w	$vr6, $a5, 2
	movfr2gr.s	$a5, $fa4
	vinsgr2vr.w	$vr6, $a5, 3
	vst	$vr6, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 16
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB0_46
# %bb.47:                               # %middle.block295
	beq	$a0, $a1, .LBB0_25
	b	.LBB0_23
.LBB0_48:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s3
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_50
.LBB0_49:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s7
	move	$a3, $s4
.LBB0_50:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_51:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s4
	move	$a3, $s2
	b	.LBB0_53
.LBB0_52:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s1
	move	$a3, $s7
.LBB0_53:
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_54:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$fp, $s0, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_55:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$fp, $a0, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	MSalignmm, .Lfunc_end0-MSalignmm
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function MSalignmm_rec
.LCPI1_0:
	.word	0xcb189680                      # float -1.0E+7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI1_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI1_3:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.p2align	5
	.type	MSalignmm_rec,@function
MSalignmm_rec:                          # @MSalignmm_rec
# %bb.0:
	addi.d	$sp, $sp, -656
	st.d	$ra, $sp, 648                   # 8-byte Folded Spill
	st.d	$fp, $sp, 640                   # 8-byte Folded Spill
	st.d	$s0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s1, $sp, 624                   # 8-byte Folded Spill
	st.d	$s2, $sp, 616                   # 8-byte Folded Spill
	st.d	$s3, $sp, 608                   # 8-byte Folded Spill
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 592                   # 8-byte Folded Spill
	st.d	$s6, $sp, 584                   # 8-byte Folded Spill
	st.d	$s7, $sp, 576                   # 8-byte Folded Spill
	st.d	$s8, $sp, 568                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 560                  # 8-byte Folded Spill
	move	$s2, $a7
	move	$s5, $a6
	move	$s0, $a2
	move	$s6, $a1
	move	$s7, $a0
	ld.d	$t1, $sp, 696
	ld.d	$a0, $sp, 680
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 672
	ld.d	$a6, $sp, 664
	ld.d	$a2, $sp, 656
	ld.d	$s3, $t1, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	ld.d	$s8, $t1, 8
	ld.d	$a7, $t1, 16
	ld.d	$t0, $t1, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(reccycle)
	sub.d	$fp, $s2, $s5
	addi.w	$s4, $fp, 0
	sub.w	$t2, $a6, $a2
	addi.w	$a1, $zero, -1
	addi.w	$a0, $fp, 1
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	bge	$a1, $t2, .LBB1_43
# %bb.1:
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	st.d	$t0, $sp, 304                   # 8-byte Folded Spill
	st.d	$a7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s1, $sp, 248                   # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$t1, $sp, 168                   # 8-byte Folded Spill
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $s7
	move	$a1, $zero
	st.d	$t2, $sp, 456                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	move	$a6, $a0
	blt	$s7, $a1, .LBB1_9
# %bb.2:                                # %.lr.ph.preheader
	ori	$a2, $zero, 4
	move	$a0, $zero
	bltu	$s7, $a2, .LBB1_7
# %bb.3:                                # %.lr.ph.preheader
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	sub.d	$a2, $s0, $a2
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB1_7
# %bb.4:                                # %vector.ph
	bstrpick.d	$a0, $s7, 30, 2
	slli.d	$a0, $a0, 2
	addi.d	$a2, $s0, 16
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	move	$a4, $a0
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_5
# %bb.6:                                # %middle.block
	beq	$a0, $s7, .LBB1_9
.LBB1_7:                                # %.lr.ph.preheader407
	alsl.d	$a2, $a0, $s0, 3
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 3
	sub.d	$a0, $s7, $a0
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.d	$a4, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB1_8
.LBB1_9:                                # %.preheader13
	addi.w	$a0, $a5, 1
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	blt	$s6, $a1, .LBB1_17
# %bb.10:                               # %.lr.ph25.preheader
	ori	$a1, $zero, 4
	move	$a0, $zero
	bltu	$s6, $a1, .LBB1_15
# %bb.11:                               # %.lr.ph25.preheader
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	sub.d	$a1, $a6, $a1
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB1_15
# %bb.12:                               # %vector.ph16
	bstrpick.d	$a0, $s6, 30, 2
	slli.d	$a0, $a0, 2
	addi.d	$a1, $a6, 16
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	move	$a3, $a0
	.p2align	4, , 16
.LBB1_13:                               # %vector.body19
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB1_13
# %bb.14:                               # %middle.block24
	beq	$a0, $s6, .LBB1_17
.LBB1_15:                               # %.lr.ph25.preheader406
	alsl.d	$a1, $a0, $a6, 3
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $s6, $a0
	.p2align	4, , 16
.LBB1_16:                               # %.lr.ph25
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB1_16
.LBB1_17:                               # %._crit_edge
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	ori	$a0, $zero, 99
	st.d	$s5, $sp, 280                   # 8-byte Folded Spill
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	blt	$s4, $a0, .LBB1_51
# %bb.18:                               # %._crit_edge
	ori	$a0, $zero, 98
	bgeu	$a0, $a5, .LBB1_51
# %bb.19:                               # %.lr.ph28.preheader
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 344                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 352                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $s8, 2
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	addi.w	$s5, $a5, 103
	move	$a0, $s5
	move	$s0, $a5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$s7, $s4, 103
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	sltu	$a0, $s0, $s4
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 103
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a1, $zero, 26
	move	$a0, $s5
	move	$s5, $s2
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s1, $a0, $a1, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s8, $s2, $a0, 3
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s8
	move	$a3, $zero
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	move	$a5, $s7
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s5
	st.d	$s8, $sp, 488                   # 8-byte Folded Spill
	move	$a1, $s8
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	move	$a2, $s1
	move	$a3, $zero
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	st.d	$s7, $sp, 520                   # 8-byte Folded Spill
	move	$a5, $s7
	st.d	$s4, $sp, 512                   # 8-byte Folded Spill
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 12
	bgeu	$a1, $a2, .LBB1_132
# %bb.20:
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 424                   # 8-byte Folded Reload
	move	$t3, $s3
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 304                   # 8-byte Folded Reload
.LBB1_21:                               # %.lr.ph28.preheader405
	ld.d	$a7, $sp, 352                   # 8-byte Folded Reload
.LBB1_22:                               # %.lr.ph28.preheader405
	slli.d	$a2, $s0, 2
	alsl.d	$a1, $s0, $t3, 2
	alsl.d	$a2, $s2, $a2, 2
	add.d	$a2, $a2, $a7
	addi.d	$a2, $a2, -4
	sub.d	$a0, $a0, $s0
	.p2align	4, , 16
.LBB1_23:                               # %.lr.ph28
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_23
.LBB1_24:                               # %.lr.ph32.preheader
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$t5, $a0, $a6, 2
	alsl.d	$t4, $a0, $t6, 2
	addi.w	$t7, $t0, 2
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t7, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 13
	alsl.d	$a2, $a0, $s5, 2
	bge	$t7, $a4, .LBB1_137
.LBB1_25:                               # %.lr.ph32.preheader404
	slli.d	$a5, $a3, 2
	alsl.d	$a4, $a3, $s5, 2
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a5, 2
	add.d	$a5, $a5, $t6
	addi.d	$a5, $a5, -4
	sub.d	$a3, $a0, $a3
	.p2align	4, , 16
.LBB1_26:                               # %.lr.ph32
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t5, 0
	fld.s	$fa1, $a5, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB1_26
.LBB1_27:                               # %.lr.ph36
	addi.d	$t1, $t1, 4
	ori	$a3, $zero, 1
	ori	$a4, $zero, 13
	addi.d	$fp, $t2, 4
	bge	$t7, $a4, .LBB1_142
.LBB1_28:                               # %scalar.ph91.preheader
	alsl.d	$a1, $a3, $t2, 2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a4, $a3, $s5, 2
	addi.d	$a4, $a4, -4
	sub.d	$a0, $a0, $a3
	.p2align	4, , 16
.LBB1_29:                               # %scalar.ph91
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $t1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	st.w	$zero, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	bnez	$a0, .LBB1_29
.LBB1_30:                               # %._crit_edge37
	st.d	$t1, $sp, 328                   # 8-byte Folded Spill
	st.d	$t7, $sp, 336                   # 8-byte Folded Spill
	st.d	$t5, $sp, 408                   # 8-byte Folded Spill
	st.d	$t4, $sp, 400                   # 8-byte Folded Spill
	slli.d	$a0, $t0, 2
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	fldx.s	$fa0, $s5, $a0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	fst.s	$fa0, $a0, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	ori	$s1, $zero, 1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	move	$t5, $s5
	st.d	$t3, $sp, 504                   # 8-byte Folded Spill
	st.d	$a2, $sp, 536                   # 8-byte Folded Spill
	blt	$a2, $s1, .LBB1_73
# %bb.31:                               # %.lr.ph56
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.d	$t7, $a0, 4
	ori	$a0, $zero, 2
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a2, 1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	addi.d	$s3, $a1, 4
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	addi.d	$s5, $a1, 4
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	addi.d	$s6, $a1, 4
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	addi.d	$s8, $a1, 4
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	addi.d	$s4, $a1, 4
	slli.d	$a0, $a0, 2
	addi.d	$s0, $a0, -4
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	st.d	$t7, $sp, 440                   # 8-byte Folded Spill
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_32:                               # %._crit_edge50
                                        #   in Loop: Header=BB1_33 Depth=1
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	fldx.s	$fa0, $t5, $a1
	addi.d	$s1, $s1, 1
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$a0, $t5
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB1_73
.LBB1_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_41 Depth 2
                                        #     Child Loop BB1_37 Depth 2
	addi.d	$s2, $s1, -1
	slli.d	$a1, $s2, 2
	fldx.s	$fa0, $t3, $a1
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	fst.s	$fa0, $a0, 0
	move	$a0, $s7
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	move	$a3, $s1
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t5, $s7
	ld.d	$t3, $sp, 504                   # 8-byte Folded Reload
	slli.d	$a0, $s1, 2
	fldx.s	$fa0, $t3, $a0
	fst.s	$fa0, $s7, 0
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	alsl.d	$a1, $s1, $a1, 2
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	fst.s	$fa0, $a2, 0
	ld.d	$a2, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a2, $s2, $a2, 2
	ld.d	$a3, $sp, 536                   # 8-byte Folded Reload
	bne	$s1, $a3, .LBB1_39
# %bb.34:                               # %.lr.ph49.split.us.preheader
                                        #   in Loop: Header=BB1_33 Depth=1
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	fst.s	$fa0, $a3, 0
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	fld.s	$fa0, $s7, 0
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 4
	move	$a3, $zero
	move	$a4, $zero
	move	$a6, $zero
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a5, $t5, 4
	ld.d	$t2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 440                   # 8-byte Folded Reload
	b	.LBB1_37
	.p2align	4, , 16
.LBB1_35:                               # %.lr.ph49.split.us._crit_edge
                                        #   in Loop: Header=BB1_37 Depth=2
	ldx.w	$a7, $t7, $a4
.LBB1_36:                               #   in Loop: Header=BB1_37 Depth=2
	fadd.s	$fa4, $fa0, $fa4
	fcmp.clt.s	$fcc0, $fa3, $fa4
	fsel	$fa4, $fa3, $fa4, $fcc0
	fadd.s	$fa3, $fa3, $fa5
	fcmp.cult.s	$fcc0, $fa3, $fa0
	fsel	$fa0, $fa3, $fa0, $fcc0
	movcf2gr	$t0, $fcc0
	masknez	$t1, $a3, $t0
	maskeqz	$a6, $a6, $t0
	fldx.s	$fa3, $a5, $a4
	fadd.s	$fa1, $fa1, $fa2
	fcmp.clt.s	$fcc0, $fa4, $fa1
	fsel	$fa1, $fa4, $fa1, $fcc0
	fadd.s	$fa1, $fa1, $fa3
	fstx.s	$fa1, $a5, $a4
	fstx.s	$fa1, $s8, $a4
	fldx.s	$fa1, $fp, $a4
	or	$a6, $a6, $t1
	stx.w	$a7, $s5, $a4
	stx.w	$a6, $s6, $a4
	fstx.s	$fa1, $t4, $a4
	fstx.s	$fa0, $s4, $a4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 1
	beq	$s0, $a4, .LBB1_32
.LBB1_37:                               # %.lr.ph49.split.us
                                        #   Parent Loop BB1_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa3, $s7, $a4
	fldx.s	$fa4, $t2, $a4
	fld.s	$fa6, $a1, 0
	fldx.s	$fa1, $fp, $a4
	fldx.s	$fa5, $s3, $a4
	fld.s	$fa2, $a2, 0
	fadd.s	$fa6, $fa3, $fa6
	fcmp.cle.s	$fcc0, $fa1, $fa6
	bceqz	$fcc0, .LBB1_35
# %bb.38:                               #   in Loop: Header=BB1_37 Depth=2
	fstx.s	$fa6, $fp, $a4
	stx.w	$s2, $t7, $a4
	move	$a7, $s2
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_39:                               # %.lr.ph49.split.preheader
                                        #   in Loop: Header=BB1_33 Depth=1
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	fld.s	$fa0, $s7, 0
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 4
	addi.d	$a3, $t5, 4
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	move	$a5, $s3
	ld.d	$a6, $sp, 400                   # 8-byte Folded Reload
	move	$a7, $fp
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	move	$t1, $s7
	b	.LBB1_41
	.p2align	4, , 16
.LBB1_40:                               #   in Loop: Header=BB1_41 Depth=2
	fadd.s	$fa4, $fa0, $fa4
	fcmp.clt.s	$fcc0, $fa2, $fa4
	fsel	$fa4, $fa2, $fa4, $fcc0
	fadd.s	$fa2, $fa2, $fa5
	fcmp.cle.s	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa1, $fa1, $fa3
	fcmp.clt.s	$fcc0, $fa4, $fa1
	fsel	$fa1, $fa4, $fa1, $fcc0
	fadd.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a3, 0
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	beqz	$a4, .LBB1_32
.LBB1_41:                               # %.lr.ph49.split
                                        #   Parent Loop BB1_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t1, 0
	fld.s	$fa4, $a6, 0
	fld.s	$fa6, $a1, 0
	fld.s	$fa1, $a7, 0
	fld.s	$fa5, $a5, 0
	fld.s	$fa3, $a2, 0
	fadd.s	$fa6, $fa2, $fa6
	fcmp.cult.s	$fcc0, $fa6, $fa1
	bcnez	$fcc0, .LBB1_40
# %bb.42:                               #   in Loop: Header=BB1_41 Depth=2
	fst.s	$fa6, $a7, 0
	st.w	$s2, $t0, 0
	b	.LBB1_40
.LBB1_43:                               # %.preheader1
	ori	$fp, $zero, 1
	ld.d	$s2, $sp, 464                   # 8-byte Folded Reload
	blt	$s7, $fp, .LBB1_45
	.p2align	4, , 16
.LBB1_44:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s1, 0
	add.d	$a1, $a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	stx.b	$zero, $a0, $s2
	addi.d	$s0, $s0, 8
	addi.d	$s7, $s7, -1
	addi.d	$s1, $s1, 8
	bnez	$s7, .LBB1_44
.LBB1_45:                               # %.preheader
	movgr2fr.w	$fs0, $zero
	blt	$s6, $fp, .LBB1_260
# %bb.46:                               # %.lr.ph129
	move	$fp, $zero
	ori	$s0, $zero, 45
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	b	.LBB1_48
	.p2align	4, , 16
.LBB1_47:                               # %._crit_edge127
                                        #   in Loop: Header=BB1_48 Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $s6, .LBB1_260
.LBB1_48:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_50 Depth 2
	slli.d	$a0, $fp, 3
	ldx.d	$a0, $s5, $a0
	st.b	$zero, $a0, 0
	bltz	$s4, .LBB1_47
# %bb.49:                               # %.lr.ph126.preheader
                                        #   in Loop: Header=BB1_48 Depth=1
	alsl.d	$s2, $fp, $s5, 3
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_50:                               # %.lr.ph126
                                        #   Parent Loop BB1_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	stx.h	$s0, $s1, $a0
	bnez	$s3, .LBB1_50
	b	.LBB1_47
.LBB1_51:
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.d	$a3, $a1, 8
	ld.d	$a2, $a1, 16
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 24
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	alsl.d	$s3, $s5, $a0, 2
	st.d	$a3, $sp, 440                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $a3, 2
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	addi.w	$s1, $a5, 103
	move	$a0, $s1
	move	$s8, $a5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	addi.w	$s5, $s4, 103
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s5
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	slt	$a0, $s8, $s4
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 103
	ori	$a1, $zero, 27
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ori	$a1, $zero, 27
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$a0, $s4, 102
	addi.w	$a1, $s8, 102
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s8, $a0, $a1, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s2, $s2, $a0, 3
	ori	$a7, $zero, 1
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	move	$a0, $fp
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $zero
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	move	$a5, $s5
	move	$a6, $s1
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	st.d	$s0, $sp, 416                   # 8-byte Folded Spill
	move	$a0, $s0
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	move	$a1, $s2
	st.d	$s8, $sp, 496                   # 8-byte Folded Spill
	move	$a2, $s8
	move	$a3, $zero
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	st.d	$s5, $sp, 520                   # 8-byte Folded Spill
	move	$a5, $s5
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	move	$a6, $s1
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	addi.w	$t5, $s4, 2
	bltz	$s4, .LBB1_55
# %bb.52:                               # %.lr.ph.preheader.i
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t5, $a1
	or	$a0, $a1, $a0
	ori	$a2, $zero, 13
	ori	$a1, $zero, 1
	bge	$t5, $a2, .LBB1_154
.LBB1_53:                               # %.lr.ph.i.preheader
	sub.d	$a0, $a0, $a1
	slli.d	$a2, $a1, 2
	ld.d	$a3, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a3, 2
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_54:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s3, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_54
.LBB1_55:                               # %.preheader3.i
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $a0, 2
	ld.d	$a7, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a7, 2
	ld.d	$t1, $sp, 456                   # 8-byte Folded Reload
	addi.w	$t6, $t1, 2
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t6, $a1
	or	$a0, $a1, $a0
	ori	$a2, $zero, 13
	addi.d	$a1, $a0, -1
	bge	$t6, $a2, .LBB1_122
# %bb.56:
	ld.d	$t2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 408                   # 8-byte Folded Reload
	ori	$t0, $zero, 1
.LBB1_57:                               # %.lr.ph14.i.preheader
	sub.d	$a2, $a0, $t0
	slli.d	$a4, $t0, 2
	alsl.d	$a3, $t0, $s4, 2
	alsl.d	$a4, $a6, $a4, 2
	add.d	$a4, $a4, $a7
	addi.d	$a4, $a4, -4
	.p2align	4, , 16
.LBB1_58:                               # %.lr.ph14.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t7, 0
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB1_58
.LBB1_59:                               # %.lr.ph19.i
	addi.d	$a2, $s3, 4
	ori	$a3, $zero, 1
	ori	$a4, $zero, 13
	addi.d	$s2, $t4, 4
	bge	$t6, $a4, .LBB1_127
.LBB1_60:                               # %scalar.ph299.preheader
	sub.d	$a1, $a0, $a3
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	alsl.d	$a5, $a3, $t4, 2
	alsl.d	$a3, $a3, $s4, 2
	addi.d	$a3, $a3, -4
	.p2align	4, , 16
.LBB1_61:                               # %scalar.ph299
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	st.w	$zero, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB1_61
.LBB1_62:                               # %._crit_edge.i
	slli.d	$a1, $t1, 2
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	fldx.s	$fa0, $s4, $a1
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	fst.s	$fa0, $a1, 0
	st.d	$t5, $sp, 384                   # 8-byte Folded Spill
	st.d	$t6, $sp, 392                   # 8-byte Folded Spill
	bltz	$t2, .LBB1_150
# %bb.63:                               # %.lr.ph41.i
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	ori	$a1, $zero, 2
	slt	$a2, $a1, $t5
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $t5, $a2
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	addi.d	$s3, $a0, -4
	addi.d	$s5, $t7, 4
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	addi.d	$fp, $a0, 4
	ori	$s7, $zero, 1
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	st.d	$t7, $sp, 432                   # 8-byte Folded Spill
	b	.LBB1_65
	.p2align	4, , 16
.LBB1_64:                               # %._crit_edge34.i
                                        #   in Loop: Header=BB1_65 Depth=1
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	fldx.s	$fa0, $s4, $a1
	addi.d	$s7, $s7, 1
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$a0, $s1
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	beq	$s7, $a1, .LBB1_151
.LBB1_65:                               # %.lr.ph33.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_67 Depth 2
	addi.d	$s0, $s7, -1
	slli.d	$a1, $s0, 2
	ld.d	$a3, $sp, 544                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a1
	move	$s1, $s4
	addi.d	$s6, $a0, 4
	fst.s	$fa0, $s4, 0
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	move	$a3, $s7
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	move	$a7, $zero
	move	$s4, $a0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t7, $sp, 432                   # 8-byte Folded Reload
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $s4, 0
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $t7, 4
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	slli.d	$a4, $s7, 3
	ld.d	$a5, $sp, 536                   # 8-byte Folded Reload
	ldx.d	$a6, $a5, $a4
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a4, $s0, $a4, 2
	ld.d	$a5, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a5, 2
	addi.d	$a6, $a6, 4
	addi.d	$a7, $zero, -1
	b	.LBB1_67
	.p2align	4, , 16
.LBB1_66:                               #   in Loop: Header=BB1_67 Depth=2
	fadd.s	$fa1, $fa1, $fa2
	fcmp.cult.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$t0, $fcc0
	fldx.s	$fa1, $s6, $a2
	masknez	$t1, $a1, $t0
	maskeqz	$a3, $a3, $t0
	or	$a3, $a3, $t1
	fadd.s	$fa1, $fs0, $fa1
	fstx.s	$fa1, $s6, $a2
	addi.d	$a7, $a7, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 1
	beq	$s3, $a2, .LBB1_64
.LBB1_67:                               #   Parent Loop BB1_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa2, $s8, $a2
	fldx.s	$fa1, $s1, $a2
	fadd.s	$fa2, $fa0, $fa2
	fcmp.cule.s	$fcc0, $fa2, $fa1
	stx.w	$zero, $a6, $a2
	fmov.s	$fs0, $fa1
	bcnez	$fcc0, .LBB1_69
# %bb.68:                               #   in Loop: Header=BB1_67 Depth=2
	add.d	$t0, $a7, $a3
	stx.w	$t0, $a6, $a2
	fmov.s	$fs0, $fa2
.LBB1_69:                               #   in Loop: Header=BB1_67 Depth=2
	fldx.s	$fa3, $s2, $a2
	fld.s	$fa4, $a4, 0
	fldx.s	$fa2, $s5, $a2
	fadd.s	$fa4, $fa3, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB1_71
# %bb.70:                               #   in Loop: Header=BB1_67 Depth=2
	ldx.w	$t0, $fp, $a2
	sub.d	$t0, $s7, $t0
	stx.w	$t0, $a6, $a2
	fmov.s	$fs0, $fa4
.LBB1_71:                               #   in Loop: Header=BB1_67 Depth=2
	fld.s	$fa4, $a5, 0
	fadd.s	$fa4, $fa1, $fa4
	fcmp.cult.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB1_66
# %bb.72:                               #   in Loop: Header=BB1_67 Depth=2
	fstx.s	$fa4, $s2, $a2
	stx.w	$s0, $fp, $a2
	b	.LBB1_66
.LBB1_73:                               # %._crit_edge57
	move	$s8, $s7
	ld.d	$fp, $sp, 688
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $t3
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	move	$a1, $s1
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	move	$a5, $s2
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	move	$a6, $s3
	move	$s5, $t5
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$s6, $s5
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s1
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$s1, $sp, 552                   # 8-byte Folded Reload
	move	$a4, $s1
	move	$a5, $s2
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	blt	$s4, $s0, .LBB1_78
# %bb.74:                               # %.lr.ph62
	ori	$a1, $zero, 12
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 2
	bgeu	$s4, $a1, .LBB1_159
# %bb.75:
	move	$a1, $zero
.LBB1_76:                               # %scalar.ph118.preheader
	slli.d	$a3, $a1, 2
	alsl.d	$a2, $a1, $t3, 2
	sub.d	$a1, $s4, $a1
	alsl.d	$a3, $a5, $a3, 2
	add.d	$a3, $a3, $a6
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB1_77:                               # %scalar.ph118
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB1_77
.LBB1_78:                               # %.preheader10
	addi.w	$a0, $fp, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$t1, $sp, 456                   # 8-byte Folded Reload
	move	$t7, $s6
	ld.d	$t8, $sp, 336                   # 8-byte Folded Reload
	beqz	$t1, .LBB1_87
# %bb.79:                               # %.lr.ph64
	alsl.d	$a0, $t1, $t4, 2
	ori	$a1, $zero, 1
	slt	$a2, $a1, $t1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $t1, $a2
	ori	$a3, $zero, 16
	or	$a1, $a2, $a1
	bge	$t1, $a3, .LBB1_164
# %bb.80:
	move	$a2, $zero
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
.LBB1_81:                               # %scalar.ph147.preheader
	slli.d	$a4, $a2, 2
	alsl.d	$a3, $a2, $t7, 2
	sub.d	$a1, $a1, $a2
	alsl.d	$a2, $a6, $a4, 2
	add.d	$a2, $a2, $t5
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_82:                               # %scalar.ph147
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB1_82
.LBB1_83:                               # %.lr.ph68
	slti	$a2, $t1, 1
	ori	$a1, $zero, 1
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $t1, $a2
	or	$a2, $a2, $a3
	add.d	$a2, $a6, $a2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a4, $a3, $a2
	addi.w	$a3, $a4, 0
	ori	$a5, $zero, 19
	addi.d	$a2, $a0, -4
	bgeu	$a3, $a5, .LBB1_169
.LBB1_84:
	move	$a0, $t1
.LBB1_85:                               # %scalar.ph178.preheader
	addi.d	$a3, $a0, 1
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 2
	alsl.d	$a5, $a0, $t7, 2
	alsl.d	$a0, $a0, $t2, 2
	addi.d	$a0, $a0, -4
	.p2align	4, , 16
.LBB1_86:                               # %scalar.ph178
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 0
	st.w	$s4, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -4
	addi.d	$a5, $a5, -4
	addi.d	$a0, $a0, -4
	blt	$a1, $a3, .LBB1_86
.LBB1_87:                               # %.preheader8
	move	$s7, $zero
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	st.d	$zero, $sp, 392                 # 8-byte Folded Spill
	bstrpick.d	$s3, $s1, 31, 0
	alsl.d	$a0, $s3, $t2, 2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a1, $s3, $a1, 2
	addi.w	$a2, $t1, -1
	bstrpick.d	$a3, $a2, 31, 0
	alsl.d	$a4, $a3, $t4, 2
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	addi.d	$s2, $a0, -8
	addi.d	$fp, $a1, -8
	ld.d	$t4, $sp, 536                   # 8-byte Folded Reload
	addi.w	$a0, $t4, -1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	srai.d	$a0, $a2, 63
	and	$a0, $a0, $a2
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	slt	$a0, $a1, $t8
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $t8, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$s6, $t4, 31, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t8, $a3, $a0, 2
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a1, 2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$ra, $a3, $a0, 2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a0, 2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	alsl.d	$a0, $a3, $a0, 2
	add.d	$a5, $t6, $a0
	move	$t6, $a2
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$s1, $a3, $a2, 2
	add.d	$a0, $a0, $t5
	addi.d	$s5, $a0, 4
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI1_0)
	addi.d	$a0, $a1, 8
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a0, $t1, -2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s8
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$t8, $sp, 336                   # 8-byte Folded Spill
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	st.d	$t6, $sp, 312                   # 8-byte Folded Spill
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
	b	.LBB1_90
	.p2align	4, , 16
.LBB1_88:                               #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
.LBB1_89:                               #   in Loop: Header=BB1_90 Depth=1
	movcf2gr	$a0, $fcc0
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	move	$a0, $a5
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	beq	$s0, $a1, .LBB1_147
.LBB1_90:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_94 Depth 2
                                        #     Child Loop BB1_112 Depth 2
                                        #     Child Loop BB1_114 Depth 2
	addi.w	$a1, $s4, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB1_121
# %bb.91:                               #   in Loop: Header=BB1_90 Depth=1
	slli.d	$a1, $s4, 2
	fldx.s	$fa0, $t3, $a1
	addi.d	$a1, $s4, -1
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	addi.w	$s0, $a1, 0
	ld.d	$s8, $sp, 480                   # 8-byte Folded Reload
	fstx.s	$fa0, $t7, $s8
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 496                   # 8-byte Folded Reload
	move	$a3, $s0
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	st.d	$t7, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	move	$a7, $zero
	move	$fp, $s3
	move	$s3, $a0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 528                   # 8-byte Folded Reload
	move	$t7, $s3
	move	$s3, $fp
	ld.d	$t3, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	slli.d	$a0, $s0, 2
	fldx.s	$fa0, $t3, $a0
	fstx.s	$fa0, $t7, $s8
	alsl.d	$a1, $fp, $a5, 2
	addi.d	$a1, $a1, -4
	beqz	$t0, .LBB1_106
# %bb.92:                               # %.lr.ph78
                                        #   in Loop: Header=BB1_90 Depth=1
	alsl.d	$a2, $t0, $a5, 2
	fld.s	$fa0, $a2, 0
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	fld.s	$fa1, $a2, 0
	move	$a2, $zero
	alsl.d	$a3, $s3, $t7, 2
	addi.d	$a3, $a3, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a4, $s4, $a4, 2
	ld.d	$a5, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a5, $s0, $a5, 2
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
	xor	$a6, $s0, $a6
	sltui	$a6, $a6, 1
	xor	$a7, $s4, $s6
	sltui	$a7, $a7, 1
	or	$a6, $a7, $a6
	move	$a7, $t0
	ld.d	$t4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
	b	.LBB1_94
	.p2align	4, , 16
.LBB1_93:                               #   in Loop: Header=BB1_94 Depth=2
	movcf2gr	$t1, $fcc0
	fldx.s	$fa2, $a3, $a2
	masknez	$t2, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$t0, $t0, $t2
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a3, $a2
	addi.w	$a7, $a7, -1
	addi.d	$a2, $a2, -4
	blez	$a7, .LBB1_105
.LBB1_94:                               #   Parent Loop BB1_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $s5, $a2
	fldx.s	$fa2, $a1, $a2
	fldx.s	$fa3, $s2, $a2
	fld.s	$fa4, $a4, 0
	fadd.s	$fa1, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fadd.s	$fa4, $fa3, $fa4
	fcmp.cule.s	$fcc1, $fa4, $fa1
	bcnez	$fcc1, .LBB1_96
# %bb.95:                               #   in Loop: Header=BB1_94 Depth=2
	ldx.w	$t1, $fp, $a2
	fmov.s	$fa1, $fa4
	move	$t2, $a7
	b	.LBB1_97
	.p2align	4, , 16
.LBB1_96:                               #   in Loop: Header=BB1_94 Depth=2
	movcf2gr	$t1, $fcc0
	masknez	$t2, $a7, $t1
	maskeqz	$t1, $t0, $t1
	or	$t2, $t1, $t2
	move	$t1, $s4
.LBB1_97:                               #   in Loop: Header=BB1_94 Depth=2
	fld.s	$fa5, $a5, 0
	fldx.s	$fa4, $s8, $a2
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa3
	bceqz	$fcc0, .LBB1_101
# %bb.98:                               #   in Loop: Header=BB1_94 Depth=2
	beqz	$a6, .LBB1_102
.LBB1_99:                               #   in Loop: Header=BB1_94 Depth=2
	stx.w	$t1, $t6, $a2
	stx.w	$t2, $ra, $a2
	beq	$s0, $t4, .LBB1_103
.LBB1_100:                              #   in Loop: Header=BB1_94 Depth=2
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s4, $s6, .LBB1_93
	b	.LBB1_104
	.p2align	4, , 16
.LBB1_101:                              #   in Loop: Header=BB1_94 Depth=2
	fstx.s	$fa5, $s2, $a2
	stx.w	$s4, $fp, $a2
	bnez	$a6, .LBB1_99
.LBB1_102:                              #   in Loop: Header=BB1_94 Depth=2
	bne	$s0, $t4, .LBB1_100
.LBB1_103:                              #   in Loop: Header=BB1_94 Depth=2
	fldx.s	$fa3, $t5, $a2
	fadd.s	$fa3, $fa1, $fa3
	fstx.s	$fa3, $t5, $a2
	fldx.s	$fa3, $s2, $a2
	fldx.s	$fa5, $s1, $a2
	fadd.s	$fa3, $fa3, $fa5
	fstx.s	$fa3, $s1, $a2
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s4, $s6, .LBB1_93
.LBB1_104:                              #   in Loop: Header=BB1_94 Depth=2
	fldx.s	$fa2, $t8, $a2
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $t8, $a2
	b	.LBB1_93
	.p2align	4, , 16
.LBB1_105:                              # %._crit_edge79.loopexit
                                        #   in Loop: Header=BB1_90 Depth=1
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 528                   # 8-byte Folded Reload
	b	.LBB1_107
	.p2align	4, , 16
.LBB1_106:                              #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 536                   # 8-byte Folded Reload
.LBB1_107:                              # %._crit_edge79
                                        #   in Loop: Header=BB1_90 Depth=1
	fld.s	$fa0, $a1, 0
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	fldx.s	$fa1, $a1, $a0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	bne	$s0, $t4, .LBB1_109
# %bb.108:                              #   in Loop: Header=BB1_90 Depth=1
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fadd.s	$fa0, $fs0, $fa0
	fstx.s	$fa0, $a1, $a0
.LBB1_109:                              #   in Loop: Header=BB1_90 Depth=1
	bne	$s4, $s6, .LBB1_89
# %bb.110:                              #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 4
	move	$s7, $zero
	ori	$a0, $zero, 3
	blt	$t0, $a0, .LBB1_113
# %bb.111:                              # %.lr.ph86.preheader
                                        #   in Loop: Header=BB1_90 Depth=1
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_112:                              # %.lr.ph86
                                        #   Parent Loop BB1_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc1, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc1
	movcf2gr	$a3, $fcc1
	masknez	$a4, $s7, $a3
	maskeqz	$a3, $a0, $a3
	or	$s7, $a3, $a4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB1_112
.LBB1_113:                              # %.lr.ph92.preheader
                                        #   in Loop: Header=BB1_90 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_114:                              # %.lr.ph92
                                        #   Parent Loop BB1_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc1, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc1
	movcf2gr	$a3, $fcc1
	masknez	$a4, $s7, $a3
	maskeqz	$a3, $a0, $a3
	or	$s7, $a3, $a4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB1_114
# %bb.115:                              # %._crit_edge93
                                        #   in Loop: Header=BB1_90 Depth=1
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	addi.w	$a3, $s7, -1
	ori	$a1, $zero, 1
	st.d	$a3, $sp, 392                   # 8-byte Folded Spill
	blt	$s7, $a1, .LBB1_119
# %bb.116:                              #   in Loop: Header=BB1_90 Depth=1
	slli.d	$a1, $a3, 2
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a1, $a3
	bcnez	$fcc1, .LBB1_118
# %bb.117:                              #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	fmov.s	$fa0, $fa1
.LBB1_118:                              #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a0
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_88
	b	.LBB1_120
.LBB1_119:                              #   in Loop: Header=BB1_90 Depth=1
	move	$a1, $a3
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a0
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_88
.LBB1_120:                              #   in Loop: Header=BB1_90 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	b	.LBB1_89
.LBB1_121:
	move	$s5, $s7
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	b	.LBB1_224
.LBB1_122:                              # %vector.memcheck257
	ld.d	$s4, $sp, 416                   # 8-byte Folded Reload
	addi.d	$a2, $s4, 4
	alsl.d	$a3, $a0, $s4, 2
	addi.d	$a4, $t7, 4
	sltu	$a4, $a2, $a4
	sltu	$a5, $t7, $a3
	and	$a4, $a4, $a5
	ld.d	$t2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 408                   # 8-byte Folded Reload
	ori	$t0, $zero, 1
	bnez	$a4, .LBB1_57
# %bb.123:                              # %vector.memcheck257
	alsl.d	$a4, $a0, $s8, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $s8, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB1_57
# %bb.124:                              # %vector.ph271
	move	$a2, $a1
	fld.s	$fa0, $t7, 0
	bstrins.d	$a2, $zero, 2, 0
	ori	$a3, $zero, 1
	move	$t0, $a1
	bstrins.d	$t0, $a3, 2, 0
	vreplvei.w	$vr0, $vr0, 0
	addi.d	$a3, $s4, 20
	addi.d	$a4, $s8, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_125:                              # %vector.body274
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a3, -16
	vld	$vr4, $a3, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_125
# %bb.126:                              # %middle.block284
	bne	$a1, $a2, .LBB1_57
	b	.LBB1_59
.LBB1_127:                              # %vector.memcheck287
	alsl.d	$a4, $a0, $t4, 2
	alsl.d	$a5, $a0, $s4, 2
	addi.d	$a5, $a5, -4
	sltu	$a5, $s2, $a5
	sltu	$a6, $s4, $a4
	and	$a5, $a5, $a6
	bnez	$a5, .LBB1_60
# %bb.128:                              # %vector.memcheck287
	addi.d	$a5, $s3, 8
	sltu	$a5, $s2, $a5
	sltu	$a4, $a2, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB1_60
# %bb.129:                              # %vector.ph301
	move	$a4, $a1
	fld.s	$fa0, $a2, 0
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a5, 2, 0
	vreplvei.w	$vr0, $vr0, 0
	addi.d	$a5, $s4, 16
	addi.d	$a6, $t4, 20
	ld.d	$a7, $sp, 424                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 20
	vrepli.b	$vr1, 0
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_130:                              # %vector.body304
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vfadd.s	$vr2, $vr2, $vr0
	vfadd.s	$vr3, $vr3, $vr0
	vst	$vr2, $a6, -16
	vst	$vr3, $a6, 0
	vst	$vr1, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB1_130
# %bb.131:                              # %middle.block312
	bne	$a1, $a4, .LBB1_60
	b	.LBB1_62
.LBB1_132:                              # %vector.memcheck27
	addi.d	$a2, $s3, 4
	alsl.d	$a3, $a0, $s3, 2
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	addi.d	$a4, $t1, 4
	sltu	$a4, $a2, $a4
	sltu	$a5, $t1, $a3
	and	$a4, $a4, $a5
	move	$t3, $s3
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 304                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_261
# %bb.133:                              # %vector.memcheck27
	ld.d	$a5, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a5, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $a5, $a3
	and	$a2, $a2, $a3
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 352                   # 8-byte Folded Reload
	bnez	$a2, .LBB1_22
# %bb.134:                              # %vector.ph36
	move	$a2, $a1
	fld.s	$fa0, $t1, 0
	bstrins.d	$a2, $zero, 2, 0
	ori	$a3, $zero, 1
	move	$s0, $a1
	bstrins.d	$s0, $a3, 2, 0
	vreplvei.w	$vr0, $vr0, 0
	addi.d	$a3, $t3, 20
	ld.d	$a4, $sp, 544                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_135:                              # %vector.body39
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a3, -16
	vld	$vr4, $a3, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_135
# %bb.136:                              # %middle.block46
	bne	$a1, $a2, .LBB1_22
	b	.LBB1_24
.LBB1_137:                              # %vector.memcheck49
	addi.d	$a4, $s5, 4
	addi.d	$a5, $t5, 4
	sltu	$a5, $a4, $a5
	sltu	$a6, $t5, $a2
	and	$a5, $a5, $a6
	bnez	$a5, .LBB1_25
# %bb.138:                              # %vector.memcheck49
	alsl.d	$a5, $a0, $t4, 2
	addi.d	$a5, $a5, -4
	sltu	$a4, $a4, $a5
	sltu	$a5, $t4, $a2
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_25
# %bb.139:                              # %vector.ph63
	move	$a4, $a1
	fld.s	$fa0, $t5, 0
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a5, 2, 0
	vreplvei.w	$vr0, $vr0, 0
	addi.d	$a5, $s5, 20
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a6, $a6, $t6, 2
	addi.d	$a6, $a6, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB1_140:                              # %vector.body66
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a5, -16
	vst	$vr2, $a5, 0
	addi.d	$a5, $a5, 32
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB1_140
# %bb.141:                              # %middle.block76
	bne	$a1, $a4, .LBB1_25
	b	.LBB1_27
.LBB1_142:                              # %vector.memcheck79
	alsl.d	$a4, $a0, $t2, 2
	addi.d	$a2, $a2, -4
	sltu	$a2, $fp, $a2
	sltu	$a5, $s5, $a4
	and	$a2, $a2, $a5
	bnez	$a2, .LBB1_28
# %bb.143:                              # %vector.memcheck79
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 8
	sltu	$a2, $fp, $a2
	sltu	$a4, $t1, $a4
	and	$a2, $a2, $a4
	bnez	$a2, .LBB1_28
# %bb.144:                              # %vector.ph93
	move	$a2, $a1
	fld.s	$fa0, $t1, 0
	bstrins.d	$a2, $zero, 2, 0
	ori	$a4, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a4, 2, 0
	vreplvei.w	$vr0, $vr0, 0
	addi.d	$a4, $s5, 16
	addi.d	$a5, $t2, 20
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 20
	vrepli.b	$vr1, 0
	move	$a7, $a2
	.p2align	4, , 16
.LBB1_145:                              # %vector.body96
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vfadd.s	$vr2, $vr2, $vr0
	vfadd.s	$vr3, $vr3, $vr0
	vst	$vr2, $a5, -16
	vst	$vr3, $a5, 0
	vst	$vr1, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB1_145
# %bb.146:                              # %middle.block104
	bne	$a1, $a2, .LBB1_28
	b	.LBB1_30
.LBB1_147:
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	beqz	$s7, .LBB1_223
# %bb.148:
	ld.d	$s5, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	blt	$t0, $s7, .LBB1_224
# %bb.149:
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	slli.d	$a0, $t0, 2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$t4, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$s5, $a1, $a0
	move	$s8, $s0
	b	.LBB1_224
.LBB1_150:
	movgr2fr.w	$fs0, $zero
.LBB1_151:                              # %._crit_edge42.i
	ld.d	$s1, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 464                   # 8-byte Folded Reload
	add.w	$fp, $s1, $s6
	addi.w	$s5, $fp, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$s5, $a0
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB1_179
# %bb.152:                              # %.lr.ph.preheader.i.i
	ori	$a2, $zero, 4
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a3, 31, 0
	bgeu	$a3, $a2, .LBB1_174
# %bb.153:
	move	$a2, $zero
	b	.LBB1_177
.LBB1_154:                              # %vector.memcheck227
	ld.d	$a3, $sp, 544                   # 8-byte Folded Reload
	addi.d	$a2, $a3, 4
	alsl.d	$a3, $a0, $a3, 2
	addi.d	$a4, $s3, 4
	sltu	$a4, $a2, $a4
	sltu	$a5, $s3, $a3
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_53
# %bb.155:                              # %vector.memcheck227
	ld.d	$a5, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a5, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $a5, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB1_53
# %bb.156:                              # %vector.ph241
	addi.d	$a2, $a0, -1
	move	$a3, $a2
	fld.s	$fa0, $s3, 0
	bstrins.d	$a3, $zero, 2, 0
	ori	$a4, $zero, 1
	move	$a1, $a2
	bstrins.d	$a1, $a4, 2, 0
	vreplvei.w	$vr0, $vr0, 0
	ld.d	$a4, $sp, 544                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 20
	ld.d	$a5, $sp, 504                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_157:                              # %vector.body244
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, -16
	vld	$vr2, $a5, 0
	vld	$vr3, $a4, -16
	vld	$vr4, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB1_157
# %bb.158:                              # %middle.block254
	bne	$a2, $a3, .LBB1_53
	b	.LBB1_55
.LBB1_159:                              # %vector.memcheck107
	alsl.d	$a2, $s4, $t3, 2
	add.d	$a1, $a5, $s4
	slli.d	$a1, $a1, 2
	addi.d	$a3, $a1, 4
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	sltu	$a1, $t3, $a1
	sltu	$a4, $a0, $a2
	and	$a4, $a1, $a4
	move	$a1, $zero
	bnez	$a4, .LBB1_76
# %bb.160:                              # %vector.memcheck107
	add.d	$a3, $a6, $a3
	sltu	$a3, $t3, $a3
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	sltu	$a2, $a4, $a2
	and	$a2, $a3, $a2
	bnez	$a2, .LBB1_76
# %bb.161:                              # %vector.ph120
	fld.s	$fa0, $a0, 0
	bstrpick.d	$a1, $s4, 30, 3
	slli.d	$a1, $a1, 3
	vreplvei.w	$vr0, $vr0, 0
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 20
	addi.d	$a3, $t3, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_162:                              # %vector.body123
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vld	$vr3, $a3, -16
	vld	$vr4, $a3, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a2, $a2, 32
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_162
# %bb.163:                              # %middle.block132
	bne	$a1, $s4, .LBB1_76
	b	.LBB1_78
.LBB1_164:                              # %vector.memcheck135
	alsl.d	$a3, $a1, $t7, 2
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	add.d	$a2, $a6, $t1
	alsl.d	$a2, $a2, $t6, 2
	addi.d	$a2, $a2, 4
	sltu	$a2, $t7, $a2
	sltu	$a4, $a0, $a3
	and	$a4, $a2, $a4
	move	$a2, $zero
	bnez	$a4, .LBB1_81
# %bb.165:                              # %vector.memcheck135
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 4
	alsl.d	$a5, $a1, $a4, 2
	sltu	$a5, $t7, $a5
	sltu	$a3, $a4, $a3
	and	$a3, $a5, $a3
	bnez	$a3, .LBB1_81
# %bb.166:                              # %vector.ph149
	fld.s	$fa0, $a0, 0
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	vreplvei.w	$vr0, $vr0, 0
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 20
	addi.d	$a4, $t7, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_167:                              # %vector.body152
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, -16
	vld	$vr2, $a3, 0
	vld	$vr3, $a4, -16
	vld	$vr4, $a4, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_167
# %bb.168:                              # %middle.block161
	bne	$a2, $a1, .LBB1_81
	b	.LBB1_83
.LBB1_169:                              # %vector.memcheck164
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ld.d	$a5, $sp, 480                   # 8-byte Folded Reload
	sub.d	$a6, $a5, $a4
	add.d	$a4, $a6, $t2
	addi.d	$a4, $a4, -4
	alsl.d	$a5, $t1, $t2, 2
	add.d	$a6, $t7, $a6
	alsl.d	$a7, $t1, $t7, 2
	addi.d	$a7, $a7, 4
	sltu	$a7, $a4, $a7
	sltu	$a6, $a6, $a5
	and	$a6, $a7, $a6
	bnez	$a6, .LBB1_84
# %bb.170:                              # %vector.memcheck164
	sltu	$a0, $a4, $a0
	sltu	$a4, $a2, $a5
	and	$a4, $a0, $a4
	move	$a0, $t1
	bnez	$a4, .LBB1_85
# %bb.171:                              # %vector.ph180
	bstrpick.d	$a0, $a3, 31, 0
	addi.d	$a3, $a0, 1
	bstrpick.d	$a0, $a3, 32, 2
	fld.s	$fa1, $a2, 0
	slli.d	$a4, $a0, 2
	sub.d	$a0, $t1, $a4
	vreplgr2vr.w	$vr0, $s4
	vreplvei.w	$vr1, $vr1, 0
	ld.d	$a6, $sp, 480                   # 8-byte Folded Reload
	addi.d	$a7, $a6, -12
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a7
	addi.d	$a5, $a5, -16
	add.d	$a7, $t7, $a7
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_172:                              # %vector.body185
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vfadd.s	$vr2, $vr2, $vr1
	vst	$vr2, $a5, 0
	vst	$vr0, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, -16
	addi.d	$a7, $a7, -16
	bnez	$t0, .LBB1_172
# %bb.173:                              # %middle.block194
	bne	$a3, $a4, .LBB1_85
	b	.LBB1_87
.LBB1_174:                              # %vector.ph317
	pcalau12i	$a2, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI1_1)
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 536                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_175:                              # %vector.body320
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, -16
	vld	$vr2, $a3, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.w	$a5, $vr4, 0
	vpickve2gr.d	$a6, $vr1, 0
	st.w	$a5, $a6, 0
	vpickve2gr.w	$a5, $vr4, 1
	vpickve2gr.d	$a6, $vr1, 1
	st.w	$a5, $a6, 0
	vpickve2gr.w	$a5, $vr3, 0
	vpickve2gr.d	$a6, $vr2, 0
	st.w	$a5, $a6, 0
	vpickve2gr.w	$a5, $vr3, 1
	vpickve2gr.d	$a6, $vr2, 1
	st.w	$a5, $a6, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_175
# %bb.176:                              # %middle.block325
	beq	$a2, $a0, .LBB1_179
.LBB1_177:                              # %.lr.ph.i.i.preheader
	ld.d	$a3, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	sub.d	$a0, $a0, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB1_178:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.w	$a2, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB1_178
.LBB1_179:                              # %.lr.ph119.i.i
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 6
	bstrpick.d	$a2, $t0, 31, 0
	bgeu	$a7, $a3, .LBB1_181
# %bb.180:
	move	$a3, $zero
	b	.LBB1_184
.LBB1_181:                              # %vector.ph330
	bstrpick.d	$a3, $a2, 31, 3
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %pc_hi20(.LCPI1_2)
	vld	$vr0, $a4, %pc_lo12(.LCPI1_2)
	addi.d	$a4, $a0, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_182:                              # %vector.body333
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a4, -16
	vst	$vr4, $a4, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_182
# %bb.183:                              # %middle.block339
	beq	$a3, $a2, .LBB1_186
.LBB1_184:                              # %scalar.ph328.preheader
	alsl.d	$a0, $a3, $a0, 2
	nor	$a4, $a3, $zero
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_185:                              # %scalar.ph328
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	bnez	$a2, .LBB1_185
.LBB1_186:                              # %._crit_edge.i.i
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	add.d	$a0, $s0, $s6
	add.d	$s8, $a0, $s1
	stx.b	$zero, $a0, $s1
	add.d	$a0, $s5, $s6
	add.d	$s7, $a0, $s1
	stx.b	$zero, $a0, $s1
	bltz	$fp, .LBB1_215
# %bb.187:                              # %.lr.ph146.i.i.preheader
	move	$t0, $zero
	ori	$a0, $zero, 1
	ori	$a2, $zero, 111
	ori	$a3, $zero, 45
	ori	$a4, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a5, $zero, 16
	.p2align	4, , 16
.LBB1_188:                              # %.lr.ph146.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_194 Depth 2
                                        #     Child Loop BB1_205 Depth 2
                                        #     Child Loop BB1_201 Depth 2
                                        #     Child Loop BB1_210 Depth 2
	slli.d	$a6, $s6, 3
	ld.d	$a7, $sp, 536                   # 8-byte Folded Reload
	ldx.d	$a6, $a7, $a6
	slli.d	$a7, $s1, 2
	ldx.w	$a7, $a6, $a7
	bge	$a1, $a7, .LBB1_196
# %bb.189:                              #   in Loop: Header=BB1_188 Depth=1
	beqz	$a7, .LBB1_214
# %bb.190:                              #   in Loop: Header=BB1_188 Depth=1
	sub.w	$a6, $s6, $a7
	move	$a7, $a1
	nor	$t1, $a6, $zero
	add.w	$t2, $s6, $t1
	beqz	$t2, .LBB1_197
.LBB1_191:                              # %.lr.ph125.i.i.preheader
                                        #   in Loop: Header=BB1_188 Depth=1
	bltu	$t2, $a5, .LBB1_203
# %bb.192:                              # %.lr.ph125.i.i.preheader
                                        #   in Loop: Header=BB1_188 Depth=1
	sub.d	$t3, $s8, $s7
	bltu	$t3, $a5, .LBB1_203
# %bb.193:                              # %vector.ph369
                                        #   in Loop: Header=BB1_188 Depth=1
	bstrpick.d	$t5, $t2, 31, 0
	bstrpick.d	$t3, $t5, 31, 4
	slli.d	$t6, $t3, 4
	sub.d	$t2, $t2, $t6
	sub.d	$t3, $s7, $t6
	sub.d	$t4, $s8, $t6
	addi.d	$t7, $s8, -16
	addi.d	$t8, $s7, -16
	move	$s0, $t6
	.p2align	4, , 16
.LBB1_194:                              # %vector.body373
                                        #   Parent Loop BB1_188 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $t7, 0
	vst	$vr1, $t8, 0
	addi.d	$s0, $s0, -16
	addi.d	$t7, $t7, -16
	addi.d	$t8, $t8, -16
	bnez	$s0, .LBB1_194
# %bb.195:                              # %middle.block380
                                        #   in Loop: Header=BB1_188 Depth=1
	bne	$t6, $t5, .LBB1_204
	b	.LBB1_206
	.p2align	4, , 16
.LBB1_196:                              #   in Loop: Header=BB1_188 Depth=1
	addi.w	$a6, $s6, -1
	nor	$t1, $a6, $zero
	add.w	$t2, $s6, $t1
	bnez	$t2, .LBB1_191
	.p2align	4, , 16
.LBB1_197:                              # %._crit_edge126.i.i
                                        #   in Loop: Header=BB1_188 Depth=1
	beq	$a7, $a1, .LBB1_207
.LBB1_198:                              # %.lr.ph134.preheader.i.i
                                        #   in Loop: Header=BB1_188 Depth=1
	addi.w	$t1, $zero, -9
	nor	$t4, $a7, $zero
	bltu	$t1, $a7, .LBB1_208
# %bb.199:                              # %.lr.ph134.preheader.i.i
                                        #   in Loop: Header=BB1_188 Depth=1
	sub.d	$t1, $s8, $s7
	bltu	$t1, $a4, .LBB1_208
# %bb.200:                              # %vector.ph348
                                        #   in Loop: Header=BB1_188 Depth=1
	bstrpick.d	$t1, $t4, 30, 3
	slli.d	$t5, $t1, 3
	sub.d	$t3, $t4, $t5
	sub.d	$t1, $s7, $t5
	pcalau12i	$t2, %pc_hi20(.LCPI1_3)
	vld	$vr3, $t2, %pc_lo12(.LCPI1_3)
	sub.d	$t2, $s8, $t5
	vinsgr2vr.w	$vr4, $t0, 0
	vinsgr2vr.w	$vr5, $zero, 0
	vshuf.w	$vr3, $vr5, $vr4
	addi.d	$t0, $s8, -4
	addi.d	$t6, $s7, -4
	move	$t7, $t5
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB1_201:                              # %vector.body351
                                        #   Parent Loop BB1_188 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpickve2gr.w	$t8, $vr1, 0
	st.w	$t8, $t0, 0
	st.w	$t8, $t0, -4
	vpickve2gr.w	$t8, $vr2, 0
	st.w	$t8, $t6, 0
	st.w	$t8, $t6, -4
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$t7, $t7, -8
	addi.d	$t0, $t0, -8
	addi.d	$t6, $t6, -8
	bnez	$t7, .LBB1_201
# %bb.202:                              # %middle.block358
                                        #   in Loop: Header=BB1_188 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vreplvei.d	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	vpickve2gr.w	$t0, $vr3, 0
	bne	$t5, $t4, .LBB1_209
	b	.LBB1_211
	.p2align	4, , 16
.LBB1_203:                              #   in Loop: Header=BB1_188 Depth=1
	move	$t3, $s7
	move	$t4, $s8
.LBB1_204:                              # %.lr.ph125.i.i.preheader389
                                        #   in Loop: Header=BB1_188 Depth=1
	move	$t5, $t3
	move	$t6, $t4
	.p2align	4, , 16
.LBB1_205:                              # %.lr.ph125.i.i
                                        #   Parent Loop BB1_188 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t4, $t6, -1
	st.b	$a2, $t6, -1
	addi.d	$t3, $t5, -1
	addi.w	$t2, $t2, -1
	st.b	$a3, $t5, -1
	move	$t5, $t3
	move	$t6, $t4
	bnez	$t2, .LBB1_205
.LBB1_206:                              # %._crit_edge126.loopexit.i.i
                                        #   in Loop: Header=BB1_188 Depth=1
	add.d	$t0, $s6, $t0
	add.d	$t0, $t1, $t0
	move	$s8, $t4
	move	$s7, $t3
	bne	$a7, $a1, .LBB1_198
.LBB1_207:                              #   in Loop: Header=BB1_188 Depth=1
	move	$t2, $s8
	move	$t1, $s7
	bge	$s6, $a0, .LBB1_212
	b	.LBB1_216
	.p2align	4, , 16
.LBB1_208:                              #   in Loop: Header=BB1_188 Depth=1
	move	$t3, $t4
	move	$t1, $s7
	move	$t2, $s8
.LBB1_209:                              # %.lr.ph134.i.i.preheader
                                        #   in Loop: Header=BB1_188 Depth=1
	add.d	$t0, $t0, $t3
	.p2align	4, , 16
.LBB1_210:                              # %.lr.ph134.i.i
                                        #   Parent Loop BB1_188 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t2, -1
	addi.d	$t2, $t2, -1
	st.b	$a2, $t1, -1
	addi.w	$t3, $t3, -1
	addi.d	$t1, $t1, -1
	bnez	$t3, .LBB1_210
.LBB1_211:                              # %._crit_edge135.i.i
                                        #   in Loop: Header=BB1_188 Depth=1
	blt	$s6, $a0, .LBB1_216
.LBB1_212:                              # %._crit_edge135.i.i
                                        #   in Loop: Header=BB1_188 Depth=1
	blt	$s1, $a0, .LBB1_216
# %bb.213:                              #   in Loop: Header=BB1_188 Depth=1
	add.w	$s1, $a7, $s1
	addi.d	$s8, $t2, -1
	st.b	$a2, $t2, -1
	addi.d	$s7, $t1, -1
	addi.w	$t0, $t0, 2
	st.b	$a2, $t1, -1
	move	$s6, $a6
	bge	$fp, $t0, .LBB1_188
	b	.LBB1_215
	.p2align	4, , 16
.LBB1_214:                              #   in Loop: Header=BB1_188 Depth=1
	addi.w	$a6, $s6, -1
	move	$a7, $a1
	nor	$t1, $a6, $zero
	add.w	$t2, $s6, $t1
	bnez	$t2, .LBB1_191
	b	.LBB1_197
.LBB1_215:                              # %._crit_edge147.i.i
	ori	$fp, $zero, 1
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	bge	$s6, $fp, .LBB1_217
	b	.LBB1_219
.LBB1_216:
	move	$s8, $t2
	move	$s7, $t1
	ori	$fp, $zero, 1
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	blt	$s6, $fp, .LBB1_219
.LBB1_217:                              # %.lr.ph155.i.i
	move	$s0, $s4
	.p2align	4, , 16
.LBB1_218:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s0, 0
	add.d	$a1, $a1, $s1
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, -1
	addi.d	$s3, $s3, 8
	addi.d	$s0, $s0, 8
	bnez	$s6, .LBB1_218
.LBB1_219:                              # %.preheader.i.i
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	blt	$s2, $fp, .LBB1_222
# %bb.220:                              # %.lr.ph157.i.i
	move	$fp, $s6
	.p2align	4, , 16
.LBB1_221:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $a1, $s1
	move	$a2, $s7
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 8
	addi.d	$fp, $fp, 8
	bnez	$s2, .LBB1_221
.LBB1_222:                              # %MSalignmm_tanni.exit
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	b	.LBB1_259
.LBB1_223:
	move	$t0, $zero
	ld.d	$t4, $sp, 472                   # 8-byte Folded Reload
	addi.w	$s8, $t4, -1
	ori	$s5, $zero, 1
.LBB1_224:                              # %.loopexit
	st.d	$t4, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$s6, $t0
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	add.w	$a7, $s8, $fp
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	add.w	$a0, $s6, $a1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.d	$a2, $sp, 40
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$a2, $sp, 32
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a2, $sp, 24
	st.d	$s4, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 0
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s7
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s3
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	move	$a6, $fp
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	fmov.s	$fs0, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	nor	$a1, $s6, $zero
	st.d	$s5, $sp, 552                   # 8-byte Folded Spill
	add.w	$s0, $s5, $a1
	ori	$fp, $zero, 1
	blt	$s0, $fp, .LBB1_232
# %bb.225:                              # %.preheader6.preheader
	move	$s5, $a0
	ori	$a1, $zero, 45
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s4, $s0
	add.w	$s1, $s0, $s5
	blt	$s7, $fp, .LBB1_228
# %bb.226:                              # %.lr.ph104
	move	$s2, $s7
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_227:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	stx.b	$zero, $a0, $s1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB1_227
.LBB1_228:                              # %.preheader5
	ori	$a0, $zero, 1
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 368                   # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB1_231
# %bb.229:                              # %.lr.ph106
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_230:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s3, 0
	add.d	$a1, $a1, $s8
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	move	$a2, $s6
	ld.d	$a0, $s3, 0
	stx.b	$zero, $a0, $s1
	addi.d	$s4, $s4, 8
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB1_230
.LBB1_231:                              # %._crit_edge107
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a0, $a2, $a0, 2
	fld.s	$fa0, $a0, 4
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	fld.s	$fa1, $a0, -4
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa0
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	b	.LBB1_233
.LBB1_232:
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
.LBB1_233:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	nor	$a1, $s8, $zero
	ld.d	$a2, $sp, 536                   # 8-byte Folded Reload
	add.w	$s0, $a2, $a1
	blt	$s0, $fp, .LBB1_241
# %bb.234:                              # %.preheader4.preheader
	move	$s1, $a0
	ori	$a1, $zero, 45
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $fp, $s0
	ori	$s2, $zero, 1
	add.w	$fp, $s0, $s1
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	blt	$s7, $s2, .LBB1_237
# %bb.235:                              # %.lr.ph111
	move	$s1, $s7
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_236:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s6, 0
	add.d	$a1, $a1, $s5
	add.d	$a1, $a1, $s8
	addi.d	$a1, $a1, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s3, $s3, 8
	addi.d	$s1, $s1, -1
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB1_236
.LBB1_237:                              # %.preheader3
	ld.d	$s1, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	blt	$s8, $s2, .LBB1_240
# %bb.238:                              # %.lr.ph113
	move	$s0, $s8
	.p2align	4, , 16
.LBB1_239:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB1_239
.LBB1_240:                              # %._crit_edge114
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	fld.s	$fa0, $a0, 4
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	fld.s	$fa1, $a0, -4
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa0
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	b	.LBB1_242
.LBB1_241:
	ld.d	$s1, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
.LBB1_242:
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	addi.w	$a0, $a0, 0
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	blt	$s7, $a1, .LBB1_250
# %bb.243:                              # %.lr.ph117
	ori	$a2, $zero, 4
	bgeu	$s7, $a2, .LBB1_245
# %bb.244:
	move	$a2, $zero
	b	.LBB1_248
.LBB1_245:                              # %vector.ph199
	bstrpick.d	$a2, $s7, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s4, 16
	vreplgr2vr.d	$vr0, $a0
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_246:                              # %vector.body204
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, -16
	vld	$vr2, $a3, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_246
# %bb.247:                              # %middle.block209
	beq	$a2, $s7, .LBB1_250
.LBB1_248:                              # %scalar.ph197.preheader
	alsl.d	$a3, $a2, $s4, 3
	sub.d	$a2, $s7, $a2
	.p2align	4, , 16
.LBB1_249:                              # %scalar.ph197
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	add.d	$a4, $a4, $a0
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB1_249
.LBB1_250:                              # %.preheader2
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	blt	$s8, $a1, .LBB1_258
# %bb.251:                              # %.lr.ph119
	ori	$a1, $zero, 4
	bgeu	$s8, $a1, .LBB1_253
# %bb.252:
	move	$a1, $zero
	b	.LBB1_256
.LBB1_253:                              # %vector.ph214
	bstrpick.d	$a1, $s8, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $s6, 16
	vreplgr2vr.d	$vr0, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB1_254:                              # %vector.body219
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB1_254
# %bb.255:                              # %middle.block224
	beq	$a1, $s8, .LBB1_258
.LBB1_256:                              # %scalar.ph212.preheader
	alsl.d	$a2, $a1, $s6, 3
	sub.d	$a1, $s8, $a1
	.p2align	4, , 16
.LBB1_257:                              # %scalar.ph212
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB1_257
.LBB1_258:                              # %._crit_edge120
	add.w	$a6, $a4, $s5
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	add.w	$a0, $s1, $a0
	st.d	$a5, $sp, 40
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 32
	st.d	$s6, $sp, 24
	st.d	$s4, $sp, 16
	st.d	$a7, $sp, 8
	st.d	$a0, $sp, 0
	move	$a0, $s7
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s3
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	fadd.s	$fs0, $fs0, $fa0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_259:                              # %common.ret.sink.split
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_260:                              # %common.ret
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 560                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 632                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 648                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 656
	ret
.LBB1_261:
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 424                   # 8-byte Folded Reload
	b	.LBB1_21
.Lfunc_end1:
	.size	MSalignmm_rec, .Lfunc_end1-MSalignmm_rec
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 104                  # 8-byte Folded Spill
	beqz	$a7, .LBB2_8
# %bb.1:
	ori	$a7, $zero, 1
	blt	$a4, $a7, .LBB2_8
# %bb.2:                                # %.preheader62.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 104
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	ld.d	$t2, $t6, 0
	slli.d	$t3, $t3, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t2, $t3
	beq	$a7, $a4, .LBB2_8
.LBB2_4:                                # %.preheader62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a2, $t2
	move	$t4, $zero
	move	$t5, $zero
	move	$t3, $zero
	alsl.d	$t7, $a7, $a5, 3
	alsl.d	$t6, $a7, $a6, 3
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=2
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 1
	beq	$t4, $t0, .LBB2_3
.LBB2_6:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $t2, $t4
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_5
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=2
	ld.d	$t8, $t7, 0
	ld.d	$fp, $t6, 0
	slli.d	$s0, $t3, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t5, $fp, $s0
	addi.w	$t3, $t3, 1
	b	.LBB2_5
.LBB2_8:                                # %.loopexit
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a1, $a2
	move	$a1, $zero
	fld.s	$fa1, $a2, 40
	fld.s	$fa2, $a2, 44
	fld.s	$fa3, $a2, 48
	fld.s	$fa4, $a2, 52
	fld.s	$fa5, $a2, 56
	fld.s	$fa6, $a2, 60
	fld.s	$fa7, $a2, 64
	fld.s	$ft0, $a2, 0
	fld.s	$ft1, $a2, 4
	fld.s	$ft2, $a2, 8
	fld.s	$ft3, $a2, 12
	fld.s	$ft4, $a2, 16
	fld.s	$ft5, $a2, 20
	fld.s	$ft6, $a2, 24
	fld.s	$ft7, $a2, 28
	fld.s	$ft8, $a2, 32
	fld.s	$ft9, $a2, 36
	fld.s	$ft10, $a2, 68
	fld.s	$ft11, $a2, 72
	fld.s	$ft12, $a2, 76
	fld.s	$ft13, $a2, 80
	fld.s	$ft14, $a2, 84
	fld.s	$ft15, $a2, 88
	fld.s	$fs0, $a2, 92
	fld.s	$fs1, $a2, 96
	fld.s	$fs2, $a2, 100
	pcalau12i	$a2, %got_pc_hi20(n_dis)
	ld.d	$a2, $a2, %got_pc_lo12(n_dis)
	movgr2fr.w	$fa0, $zero
	addi.d	$a3, $sp, 0
	ori	$a7, $zero, 104
	.p2align	4, , 16
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$t1, $a2, $a1
	add.d	$t0, $a2, $a1
	ld.w	$t2, $t0, 104
	movgr2fr.w	$fs3, $t1
	ffint.s.w	$fs3, $fs3
	fmadd.s	$fs3, $fs3, $ft0, $fa0
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 208
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft1, $fs3
	ld.w	$t2, $t0, 312
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft2, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 416
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft3, $fs3
	ld.w	$t2, $t0, 520
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft4, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 624
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft5, $fs3
	ld.w	$t2, $t0, 728
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft6, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 832
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft7, $fs3
	ld.w	$t2, $t0, 936
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft8, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1040
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft9, $fs3
	ld.w	$t2, $t0, 1144
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa1, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1248
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa2, $fs3
	ld.w	$t2, $t0, 1352
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa3, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1456
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa4, $fs3
	ld.w	$t2, $t0, 1560
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa5, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1664
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa6, $fs3
	ld.w	$t2, $t0, 1768
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa7, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1872
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft10, $fs3
	ld.w	$t2, $t0, 1976
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft11, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2080
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft12, $fs3
	ldptr.w	$t2, $t0, 2184
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft13, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2288
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft14, $fs3
	ldptr.w	$t2, $t0, 2392
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft15, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2496
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs0, $fs3
	ldptr.w	$t0, $t0, 2600
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs1, $fs3
	movgr2fr.w	$fs4, $t0
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs2, $fs3
	fstx.s	$fs3, $a1, $a3
	addi.d	$a1, $a1, 4
	bne	$a1, $a7, .LBB2_9
# %bb.10:                               # %.preheader
	beqz	$a4, .LBB2_16
# %bb.11:
	addi.d	$a1, $sp, 0
	addi.w	$a2, $zero, -1
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %._crit_edge
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	beqz	$a4, .LBB2_16
.LBB2_13:                               # %.lr.ph74
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	ld.d	$t0, $a6, 0
	ld.wu	$a3, $t0, 0
	addi.w	$a7, $a3, 0
	st.w	$zero, $a0, 0
	bltz	$a7, .LBB2_12
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.d	$a7, $a5, 0
	addi.d	$t0, $t0, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB2_15:                               #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a3, $a3, 2
	fldx.s	$fa2, $a3, $a1
	fld.s	$fa3, $a7, 0
	ld.wu	$a3, $t0, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $a0, 0
	addi.w	$t1, $a3, 0
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	blt	$a2, $t1, .LBB2_15
	b	.LBB2_12
.LBB2_16:                               # %._crit_edge75
	fld.d	$fs4, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 136                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end2:
	.size	match_calc, .Lfunc_end2-match_calc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"i = %d / %d\n"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"bug! hairetsu ga kowareta!\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"j = %d / %d\n"
	.size	.L.str.2, 13

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"bug! hairetsu ga kowareta! (nglen1) seqlen(seq1[0])=%d but nglen1=%d\n"
	.size	.L.str.3, 70

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"seq1[0] = %s\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"bug! hairetsu ga kowareta! (nglen2) seqlen(seq2[0])=%d but nglen2=%d\n"
	.size	.L.str.5, 70

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"hairetsu ga kowareta (end of MSalignmm) !\n"
	.size	.L.str.6, 43

	.type	reccycle,@object                # @reccycle
	.local	reccycle
	.comm	reccycle,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
