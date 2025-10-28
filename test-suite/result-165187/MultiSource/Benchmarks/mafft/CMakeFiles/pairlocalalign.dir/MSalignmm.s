	.file	"MSalignmm.c"
	.text
	.globl	MSalignmm                       # -- Begin function MSalignmm
	.p2align	5
	.type	MSalignmm,@function
MSalignmm:                              # @MSalignmm
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	move	$s1, $a7
	move	$fp, $a5
	move	$s0, $a4
	move	$s4, $a3
	move	$s5, $a2
	move	$s6, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	add.d	$a0, $s8, $a0
	addi.w	$s3, $a0, 200
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$fp, $sp, 184                   # 8-byte Folded Spill
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.w	$s3, $s8, 102
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	addi.w	$s7, $s7, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$a1, $zero, 27
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s8, $s8, 0
	blez	$s0, .LBB0_4
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	move	$s7, $s0
	move	$fp, $s2
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_48
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s7, $s7, -1
	addi.d	$fp, $fp, 8
	bnez	$s7, .LBB0_2
.LBB0_4:                                # %.preheader209
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	blez	$a0, .LBB0_8
# %bb.5:                                # %.lr.ph216
	move	$s7, $zero
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	move	$s0, $s6
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_49
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	addi.w	$s7, $s7, 1
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_6
.LBB0_8:                                # %._crit_edge
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fs0, $fa0
	move	$a0, $s2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s8
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$a2, $s4
	move	$a3, $s3
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	move	$a4, $s7
	pcaddu18i	$ra, %call36(MScpmx_calc_new)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB0_10
# %bb.9:
	ld.d	$s7, $sp, 304
	move	$a5, $s1
	ld.d	$s1, $sp, 288
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $s3
	move	$a5, $s1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s8
	move	$a5, $s7
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $s3
	move	$a5, $s7
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB0_11
.LBB0_10:
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$s1, $a0
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $s7
	move	$a2, $s6
	move	$a3, $s4
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB0_11:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fcvt.d.s	$fa0, $fs0
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	move	$a7, $s1
	move	$s1, $a0
	blez	$s8, .LBB0_18
# %bb.12:                               # %.lr.ph219
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 4
	bltu	$a0, $a1, .LBB0_15
# %bb.13:                               # %vector.memcheck
	alsl.d	$a1, $a0, $a5, 2
	bgeu	$fp, $a1, .LBB0_42
# %bb.14:                               # %vector.memcheck
	alsl.d	$a1, $a0, $fp, 2
	bgeu	$a5, $a1, .LBB0_42
.LBB0_15:
	move	$a1, $zero
.LBB0_16:                               # %scalar.ph.preheader
	alsl.d	$a2, $a1, $a5, 2
	alsl.d	$a3, $a1, $fp, 2
	sub.d	$a0, $a0, $a1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB0_17:                               # %scalar.ph
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
	bnez	$a0, .LBB0_17
.LBB0_18:                               # %.preheader208
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	blez	$s3, .LBB0_25
# %bb.19:                               # %.lr.ph221
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	ori	$a1, $zero, 4
	bltu	$a0, $a1, .LBB0_22
# %bb.20:                               # %vector.memcheck285
	alsl.d	$a1, $a0, $a6, 2
	bgeu	$a7, $a1, .LBB0_45
# %bb.21:                               # %vector.memcheck285
	alsl.d	$a1, $a0, $a7, 2
	bgeu	$a6, $a1, .LBB0_45
.LBB0_22:
	move	$a1, $zero
.LBB0_23:                               # %scalar.ph291.preheader
	alsl.d	$a2, $a1, $a6, 2
	alsl.d	$a3, $a1, $a7, 2
	sub.d	$a0, $a0, $a1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB0_24:                               # %scalar.ph291
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
	st.d	$fp, $s8, 0
	st.d	$a5, $s8, 8
	st.d	$a7, $s8, 16
	st.d	$a6, $s8, 24
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a7, $a0, -1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$s8, $sp, 40
	st.d	$zero, $sp, 32
	st.d	$s4, $sp, 24
	st.d	$s5, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$zero, $sp, 0
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	move	$a0, $fp
	move	$a1, $s7
	move	$a2, $s2
	move	$a3, $s6
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	move	$a6, $zero
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	blez	$fp, .LBB0_28
# %bb.26:                               # %.lr.ph225.preheader
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	move	$s0, $s2
	move	$s3, $s5
	.p2align	4, , 16
.LBB0_27:                               # %.lr.ph225
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_27
.LBB0_28:                               # %.preheader207
	blez	$s7, .LBB0_31
# %bb.29:                               # %.lr.ph227.preheader
	move	$fp, $s7
	move	$s0, $s6
	move	$s3, $s4
	.p2align	4, , 16
.LBB0_30:                               # %.lr.ph227
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_30
.LBB0_31:                               # %._crit_edge228
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_54
# %bb.32:
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(seqlen)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bne	$a0, $s1, .LBB0_55
# %bb.33:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$s0, .LBB0_37
# %bb.34:                               # %.lr.ph231
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	addi.w	$s5, $a0, 0
	move	$fp, $s0
	.p2align	4, , 16
.LBB0_35:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB0_51
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 8
	bnez	$fp, .LBB0_35
.LBB0_37:                               # %.preheader
	blez	$s7, .LBB0_41
# %bb.38:                               # %.lr.ph233
	move	$s1, $zero
	addi.w	$s2, $s3, 0
	move	$fp, $s7
	.p2align	4, , 16
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_52
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$fp, $fp, -1
	addi.d	$s6, $s6, 8
	bnez	$fp, .LBB0_39
.LBB0_41:                               # %._crit_edge234
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB0_42:                               # %vector.ph
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.d	$vr1, $vr0, 0
	vldi	$vr2, -912
	vldi	$vr3, -928
	move	$a2, $fp
	move	$a3, $a5
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_43:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a2, 0
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vreplvei.w	$vr5, $vr4, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr4, $vr4, 2
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfsub.d	$vr4, $vr2, $vr4
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr6, $a3, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a2, 0
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfsub.d	$vr4, $vr2, $vr6
	vfsub.d	$vr5, $vr2, $vr5
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 16
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB0_43
# %bb.44:                               # %middle.block
	beq	$a0, $a1, .LBB0_18
	b	.LBB0_16
.LBB0_45:                               # %vector.ph293
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 2
	slli.d	$a1, $a1, 2
	vreplvei.d	$vr1, $vr0, 0
	vldi	$vr2, -912
	vldi	$vr3, -928
	move	$a2, $a7
	move	$a3, $a6
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_46:                               # %vector.body298
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a2, 0
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vreplvei.w	$vr5, $vr4, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr4, $vr4, 2
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfsub.d	$vr4, $vr2, $vr4
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr6, $a3, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a2, 0
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfsub.d	$vr4, $vr2, $vr6
	vfsub.d	$vr5, $vr2, $vr5
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 16
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB0_46
# %bb.47:                               # %middle.block303
	beq	$a0, $a1, .LBB0_25
	b	.LBB0_23
.LBB0_48:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s3
	move	$a3, $s0
	b	.LBB0_50
.LBB0_49:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s7
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
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
	move	$a3, $s0
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
	ld.d	$a0, $s2, 0
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
	ld.d	$a2, $s2, 0
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
	ld.d	$a0, $s6, 0
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function MSalignmm_rec
.LCPI1_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	MSalignmm_rec,@function
MSalignmm_rec:                          # @MSalignmm_rec
# %bb.0:
	addi.d	$sp, $sp, -624
	st.d	$ra, $sp, 616                   # 8-byte Folded Spill
	st.d	$fp, $sp, 608                   # 8-byte Folded Spill
	st.d	$s0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s1, $sp, 592                   # 8-byte Folded Spill
	st.d	$s2, $sp, 584                   # 8-byte Folded Spill
	st.d	$s3, $sp, 576                   # 8-byte Folded Spill
	st.d	$s4, $sp, 568                   # 8-byte Folded Spill
	st.d	$s5, $sp, 560                   # 8-byte Folded Spill
	st.d	$s6, $sp, 552                   # 8-byte Folded Spill
	st.d	$s7, $sp, 544                   # 8-byte Folded Spill
	st.d	$s8, $sp, 536                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 528                  # 8-byte Folded Spill
	move	$s6, $a6
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	st.d	$a4, $sp, 216                   # 8-byte Folded Spill
	move	$s5, $a3
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	move	$s4, $a1
	move	$s0, $a0
	ld.d	$a2, $sp, 664
	ld.d	$a0, $sp, 648
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 640
	ld.d	$a3, $sp, 632
	ld.d	$s3, $sp, 624
	ld.d	$a6, $a2, 0
	pcalau12i	$a0, %pc_hi20(reccycle)
	ld.w	$a1, $a0, %pc_lo12(reccycle)
	ld.d	$s2, $a2, 8
	ld.d	$a4, $a2, 16
	ld.d	$a5, $a2, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(reccycle)
	sub.d	$fp, $a7, $s6
	addi.w	$s8, $fp, 0
	sub.w	$s7, $a3, $s3
	addi.w	$a0, $fp, 1
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	bltz	$s7, .LBB1_24
# %bb.1:
	st.d	$a6, $sp, 312                   # 8-byte Folded Spill
	st.d	$a5, $sp, 320                   # 8-byte Folded Spill
	st.d	$a4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	st.d	$s0, $sp, 304                   # 8-byte Folded Spill
	blez	$s0, .LBB1_9
# %bb.2:                                # %.lr.ph.preheader
	ori	$a1, $zero, 4
	move	$a0, $zero
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB1_7
# %bb.3:                                # %.lr.ph.preheader
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	sub.d	$a1, $s1, $a1
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB1_7
# %bb.4:                                # %vector.ph
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 2
	slli.d	$a0, $a0, 2
	addi.d	$a1, $s1, 16
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	move	$a3, $a0
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB1_5
# %bb.6:                                # %middle.block
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB1_9
.LBB1_7:                                # %.lr.ph.preheader312
	alsl.d	$a1, $a0, $s1, 3
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	sub.d	$a0, $a3, $a0
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB1_8
.LBB1_9:                                # %.preheader13
	addi.w	$a4, $s7, 1
	blez	$s4, .LBB1_17
# %bb.10:                               # %.lr.ph25.preheader
	ori	$a1, $zero, 4
	move	$a0, $zero
	bltu	$s4, $a1, .LBB1_15
# %bb.11:                               # %.lr.ph25.preheader
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	sub.d	$a1, $a5, $a1
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB1_15
# %bb.12:                               # %vector.ph15
	bstrpick.d	$a0, $s4, 30, 2
	slli.d	$a0, $a0, 2
	addi.d	$a1, $a5, 16
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	move	$a3, $a0
	.p2align	4, , 16
.LBB1_13:                               # %vector.body18
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB1_13
# %bb.14:                               # %middle.block23
	beq	$a0, $s4, .LBB1_17
.LBB1_15:                               # %.lr.ph25.preheader311
	alsl.d	$a1, $a0, $a5, 3
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a0, $s4, $a0
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
	st.d	$a4, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 296                   # 8-byte Folded Spill
	ori	$a0, $zero, 99
	st.d	$s7, $sp, 488                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	st.d	$a5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s5, $sp, 184                   # 8-byte Folded Spill
	st.d	$s6, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	blt	$s8, $a0, .LBB1_32
# %bb.18:                               # %._crit_edge
	ori	$a0, $zero, 98
	bgeu	$a0, $s7, .LBB1_32
# %bb.19:                               # %.lr.ph28.preheader
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a0, $s6, $a0, 2
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	alsl.d	$a0, $s6, $s2, 2
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	addi.w	$s5, $s7, 103
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$s7, $s8, 103
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s7
	ld.d	$s1, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	sltu	$a0, $s1, $s8
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 103
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s3, $a1, $a0, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s5, $s6, $a0, 3
	ori	$a7, $zero, 1
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $zero
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $s1
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $s0
	st.d	$s5, $sp, 440                   # 8-byte Folded Spill
	move	$a1, $s5
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	move	$a2, $s3
	move	$a3, $zero
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	st.d	$s1, $sp, 472                   # 8-byte Folded Spill
	move	$a5, $s1
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t5, $s2
	addi.d	$a0, $fp, 2
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a1, $s2, 4
	alsl.d	$a2, $a0, $s2, 2
	addi.d	$s1, $t2, 4
	sltu	$a3, $a1, $s1
	sltu	$a4, $t2, $a2
	and	$a3, $a3, $a4
	bnez	$a3, .LBB1_75
# %bb.20:                               # %.lr.ph28.preheader
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $t1, 2
	addi.d	$a3, $a3, -4
	sltu	$a1, $a1, $a3
	sltu	$a2, $t1, $a2
	and	$a1, $a1, $a2
	ld.d	$t3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	ori	$t0, $zero, 1
	bnez	$a1, .LBB1_76
# %bb.21:                               # %vector.ph34
	addi.d	$a1, $a0, -1
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	ori	$a3, $zero, 1
	move	$t0, $a1
	vldrepl.w	$vr0, $t2, 0
	bstrins.d	$t0, $a3, 2, 0
	addi.d	$a3, $t1, 16
	addi.d	$a4, $t5, 20
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_22:                               # %vector.body37
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
	bnez	$a5, .LBB1_22
# %bb.23:                               # %middle.block44
	bne	$a1, $a2, .LBB1_76
	b	.LBB1_78
.LBB1_24:                               # %.preheader1
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 416                   # 8-byte Folded Reload
	blez	$s0, .LBB1_26
	.p2align	4, , 16
.LBB1_25:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $s1, 0
	add.d	$a1, $a1, $s6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	stx.b	$zero, $a0, $s2
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB1_25
.LBB1_26:                               # %.preheader
	movgr2fr.w	$fs0, $zero
	blez	$s4, .LBB1_234
# %bb.27:                               # %.lr.ph117
	move	$fp, $zero
	ori	$s0, $zero, 45
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_28:                               # %._crit_edge115
                                        #   in Loop: Header=BB1_29 Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $s4, .LBB1_234
.LBB1_29:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_31 Depth 2
	slli.d	$a0, $fp, 3
	ldx.d	$a0, $s5, $a0
	st.b	$zero, $a0, 0
	bltz	$s8, .LBB1_28
# %bb.30:                               # %.lr.ph114.preheader
                                        #   in Loop: Header=BB1_29 Depth=1
	alsl.d	$s2, $fp, $s5, 3
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_31:                               # %.lr.ph114
                                        #   Parent Loop BB1_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	stx.h	$s0, $s1, $a0
	bnez	$s3, .LBB1_31
	b	.LBB1_28
.LBB1_32:
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.d	$a3, $a1, 8
	ld.d	$a2, $a1, 16
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 24
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	alsl.d	$a0, $s6, $a0, 2
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	alsl.d	$a0, $s6, $a3, 2
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	addi.w	$s1, $s7, 103
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	addi.w	$s7, $s8, 103
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s7
	ld.d	$fp, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	slt	$a0, $fp, $s8
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 103
	ori	$a1, $zero, 27
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 27
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.w	$a0, $s8, 102
	addi.w	$a1, $fp, 102
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s7, $fp, $a0, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s4, $s6, $a0, 3
	ori	$a7, $zero, 1
	ori	$s1, $zero, 1
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	move	$a0, $s3
	move	$a1, $s7
	move	$a2, $s4
	move	$a3, $zero
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $s0
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	st.d	$s5, $sp, 392                   # 8-byte Folded Spill
	move	$a0, $s5
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	move	$a1, $s4
	st.d	$s7, $sp, 448                   # 8-byte Folded Spill
	move	$a2, $s7
	move	$a3, $zero
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	move	$a5, $s0
	st.d	$s2, $sp, 464                   # 8-byte Folded Spill
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 360                   # 8-byte Folded Reload
	addi.w	$t6, $s8, 2
	bltz	$s8, .LBB1_36
# %bb.33:                               # %.lr.ph.preheader.i
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t6, $a1
	or	$a0, $a1, $a0
	ori	$a2, $zero, 13
	ori	$a1, $zero, 1
	bge	$t6, $a2, .LBB1_70
.LBB1_34:                               # %.lr.ph.i.preheader
	sub.d	$a0, $a0, $a1
	slli.d	$a2, $a1, 2
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a3, 2
	alsl.d	$a2, $s6, $a2, 2
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, -4
	.p2align	4, , 16
.LBB1_35:                               # %.lr.ph.i
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
	bnez	$a0, .LBB1_35
.LBB1_36:                               # %.preheader3.i
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$s4, $fp, $a0, 2
	ld.d	$a7, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$s8, $fp, $a7, 2
	ld.d	$t7, $sp, 488                   # 8-byte Folded Reload
	addi.w	$a6, $t7, 2
	ori	$a0, $zero, 2
	slt	$a1, $a0, $a6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a6, $a1
	or	$a0, $a1, $a0
	ori	$a2, $zero, 13
	addi.d	$a1, $a0, -1
	bge	$a6, $a2, .LBB1_54
# %bb.37:
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
.LBB1_38:                               # %.lr.ph12.i.preheader
	sub.d	$a2, $a0, $s1
	slli.d	$a4, $s1, 2
	alsl.d	$a3, $s1, $t1, 2
	alsl.d	$a4, $fp, $a4, 2
	add.d	$a4, $a4, $a7
	addi.d	$a4, $a4, -4
	.p2align	4, , 16
.LBB1_39:                               # %.lr.ph12.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s4, 0
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB1_39
.LBB1_40:                               # %.lr.ph15.i
	addi.d	$a2, $s3, 4
	ori	$a3, $zero, 1
	ori	$a4, $zero, 17
	addi.d	$s0, $t2, 4
	st.d	$a6, $sp, 368                   # 8-byte Folded Spill
	bge	$a6, $a4, .LBB1_59
.LBB1_41:                               # %scalar.ph260.preheader
	sub.d	$a1, $a0, $a3
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	alsl.d	$a5, $a3, $t2, 2
	alsl.d	$a3, $a3, $t1, 2
	addi.d	$a3, $a3, -4
	.p2align	4, , 16
.LBB1_42:                               # %scalar.ph260
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
	bnez	$a1, .LBB1_42
.LBB1_43:                               # %._crit_edge.i
	slli.d	$a1, $t7, 2
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	fldx.s	$fa0, $t1, $a1
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	fst.s	$fa0, $a1, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$t6, $sp, 352                   # 8-byte Folded Spill
	bltz	$a1, .LBB1_64
# %bb.44:                               # %.lr.ph37.i
	ori	$a1, $zero, 2
	slt	$a2, $a1, $t6
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $t6, $a2
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	addi.d	$s2, $a0, -4
	addi.d	$s5, $s4, 4
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	addi.d	$fp, $a0, 4
	ori	$s7, $zero, 1
	move	$a2, $t1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	b	.LBB1_46
	.p2align	4, , 16
.LBB1_45:                               # %._crit_edge30.i
                                        #   in Loop: Header=BB1_46 Depth=1
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	fldx.s	$fa0, $t2, $a1
	addi.d	$s7, $s7, 1
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$a2, $t2
	move	$a0, $s1
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	beq	$s7, $a1, .LBB1_65
.LBB1_46:                               # %.lr.ph29.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_48 Depth 2
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	addi.d	$a1, $s7, -1
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a1
	move	$s1, $a2
	addi.d	$s6, $a0, 4
	fst.s	$fa0, $a2, 0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	move	$a3, $s7
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	addi.d	$t3, $s7, -1
	ld.d	$t2, $sp, 504                   # 8-byte Folded Reload
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $t2, 0
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s4, 4
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	slli.d	$a4, $s7, 3
	ld.d	$a5, $sp, 496                   # 8-byte Folded Reload
	ldx.d	$a6, $a5, $a4
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a4, $t3, $a4, 2
	alsl.d	$a5, $s7, $s3, 2
	addi.d	$a6, $a6, 4
	addi.d	$a7, $zero, -1
	b	.LBB1_48
	.p2align	4, , 16
.LBB1_47:                               #   in Loop: Header=BB1_48 Depth=2
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
	beq	$s2, $a2, .LBB1_45
.LBB1_48:                               #   Parent Loop BB1_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa2, $s8, $a2
	fldx.s	$fa1, $s1, $a2
	fadd.s	$fa2, $fa0, $fa2
	fcmp.cule.s	$fcc0, $fa2, $fa1
	stx.w	$zero, $a6, $a2
	fmov.s	$fs0, $fa1
	bcnez	$fcc0, .LBB1_50
# %bb.49:                               #   in Loop: Header=BB1_48 Depth=2
	add.d	$t0, $a7, $a3
	stx.w	$t0, $a6, $a2
	fmov.s	$fs0, $fa2
.LBB1_50:                               #   in Loop: Header=BB1_48 Depth=2
	fldx.s	$fa3, $s0, $a2
	fld.s	$fa4, $a4, 0
	fldx.s	$fa2, $s5, $a2
	fadd.s	$fa4, $fa3, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB1_52
# %bb.51:                               #   in Loop: Header=BB1_48 Depth=2
	ldx.w	$t0, $fp, $a2
	sub.d	$t0, $s7, $t0
	stx.w	$t0, $a6, $a2
	fmov.s	$fs0, $fa4
.LBB1_52:                               #   in Loop: Header=BB1_48 Depth=2
	fld.s	$fa4, $a5, 0
	fadd.s	$fa4, $fa1, $fa4
	fcmp.cult.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB1_47
# %bb.53:                               #   in Loop: Header=BB1_48 Depth=2
	fstx.s	$fa4, $s0, $a2
	stx.w	$t3, $fp, $a2
	b	.LBB1_47
.LBB1_54:                               # %vector.memcheck218
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	addi.d	$a2, $t1, 4
	alsl.d	$a3, $a0, $t1, 2
	addi.d	$a4, $s4, 4
	sltu	$a4, $a2, $a4
	sltu	$a5, $s4, $a3
	and	$a4, $a4, $a5
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_38
# %bb.55:                               # %vector.memcheck218
	alsl.d	$a4, $a0, $s8, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $s8, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB1_38
# %bb.56:                               # %vector.ph232
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	ori	$a3, $zero, 1
	move	$s1, $a1
	vldrepl.w	$vr0, $s4, 0
	bstrins.d	$s1, $a3, 2, 0
	addi.d	$a3, $s8, 16
	addi.d	$a4, $t1, 20
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_57:                               # %vector.body235
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
	bnez	$a5, .LBB1_57
# %bb.58:                               # %middle.block245
	bne	$a1, $a2, .LBB1_38
	b	.LBB1_40
.LBB1_59:                               # %vector.memcheck248
	alsl.d	$a4, $a0, $t2, 2
	alsl.d	$a5, $a0, $t1, 2
	addi.d	$a5, $a5, -4
	sltu	$a5, $s0, $a5
	sltu	$a6, $t1, $a4
	and	$a5, $a5, $a6
	bnez	$a5, .LBB1_41
# %bb.60:                               # %vector.memcheck248
	addi.d	$a5, $s3, 8
	sltu	$a5, $s0, $a5
	sltu	$a4, $a2, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB1_41
# %bb.61:                               # %vector.ph262
	move	$a4, $a1
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a5, 2, 0
	vldrepl.w	$vr0, $a2, 0
	addi.d	$a5, $t1, 16
	addi.d	$a6, $t2, 20
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 20
	vrepli.b	$vr1, 0
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_62:                               # %vector.body265
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
	bnez	$t0, .LBB1_62
# %bb.63:                               # %middle.block273
	bne	$a1, $a4, .LBB1_41
	b	.LBB1_43
.LBB1_64:
	movgr2fr.w	$fs0, $zero
.LBB1_65:                               # %._crit_edge38.i
	ld.d	$s7, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	add.w	$fp, $s7, $s3
	addi.w	$s1, $fp, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$t4, $a0
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 368                   # 8-byte Folded Reload
	blt	$a3, $a1, .LBB1_165
# %bb.66:                               # %.lr.ph.preheader.i.i
	addi.w	$a2, $zero, -1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a3, $a2, .LBB1_162
# %bb.67:                               # %vector.ph278
	bstrpick.d	$a2, $a0, 31, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 8
	ori	$a4, $zero, 2
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_68:                               # %vector.body281
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, -8
	ld.d	$a7, $a3, 0
	addi.d	$t0, $a4, -1
	st.w	$t0, $a6, 0
	st.w	$a4, $a7, 0
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a5, -2
	addi.d	$a3, $a3, 16
	bnez	$a5, .LBB1_68
# %bb.69:                               # %middle.block284
	bne	$a2, $a0, .LBB1_163
	b	.LBB1_165
.LBB1_70:                               # %vector.memcheck188
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	addi.d	$a2, $a3, 4
	alsl.d	$a3, $a0, $a3, 2
	addi.d	$a4, $s3, 4
	sltu	$a4, $a2, $a4
	sltu	$a5, $s3, $a3
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_34
# %bb.71:                               # %vector.memcheck188
	ld.d	$a5, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a5, 2
	addi.d	$a4, $a4, -4
	sltu	$a2, $a2, $a4
	sltu	$a3, $a5, $a3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB1_34
# %bb.72:                               # %vector.ph202
	addi.d	$a2, $a0, -1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	ori	$a4, $zero, 1
	move	$a1, $a2
	vldrepl.w	$vr0, $s3, 0
	bstrins.d	$a1, $a4, 2, 0
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 16
	ld.d	$a5, $sp, 512                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 20
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_73:                               # %vector.body205
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a5, -16
	vst	$vr2, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB1_73
# %bb.74:                               # %middle.block215
	bne	$a2, $a3, .LBB1_34
	b	.LBB1_36
.LBB1_75:
	ld.d	$t3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	ori	$t0, $zero, 1
.LBB1_76:                               # %.lr.ph28.preheader310
	slli.d	$a1, $t0, 2
	alsl.d	$a1, $s6, $a1, 2
	add.d	$a1, $a1, $a7
	addi.d	$a1, $a1, -4
	alsl.d	$a2, $t0, $t5, 2
	sub.d	$a0, $a0, $t0
	.p2align	4, , 16
.LBB1_77:                               # %.lr.ph28
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t2, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB1_77
.LBB1_78:                               # %.lr.ph30.preheader
	alsl.d	$t0, $fp, $a6, 2
	alsl.d	$a0, $fp, $t6, 2
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	addi.w	$t8, $s5, 2
	ori	$a0, $zero, 2
	slt	$a1, $a0, $t8
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $t8, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a0, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 13
	alsl.d	$a2, $a0, $s3, 2
	bge	$t8, $a4, .LBB1_139
.LBB1_79:                               # %.lr.ph30.preheader309
	slli.d	$a4, $a3, 2
	alsl.d	$a4, $fp, $a4, 2
	add.d	$a4, $a4, $t6
	addi.d	$a4, $a4, -4
	alsl.d	$a5, $a3, $s3, 2
	sub.d	$a3, $a0, $a3
	.p2align	4, , 16
.LBB1_80:                               # %.lr.ph30
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $t0, 0
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a5, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB1_80
.LBB1_81:                               # %.lr.ph32
	st.d	$t0, $sp, 360                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	ori	$a4, $zero, 17
	addi.d	$s0, $t3, 4
	bge	$t8, $a4, .LBB1_144
# %bb.82:
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
.LBB1_83:                               # %scalar.ph89.preheader
	alsl.d	$a1, $a3, $s3, 2
	addi.d	$a1, $a1, -4
	alsl.d	$a2, $a3, $t3, 2
	alsl.d	$a4, $a3, $t4, 2
	sub.d	$a0, $a0, $a3
	.p2align	4, , 16
.LBB1_84:                               # %scalar.ph89
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $s1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	st.w	$zero, $a4, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	bnez	$a0, .LBB1_84
.LBB1_85:                               # %._crit_edge33
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$t8, $sp, 288                   # 8-byte Folded Spill
	slli.d	$a0, $s5, 2
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	fldx.s	$fa0, $s3, $a0
	bstrpick.d	$a0, $t0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	vldi	$vr2, -928
	fmul.d	$fa1, $fa1, $fa2
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a2, $fa1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	fst.s	$fa0, $a0, 0
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	move	$t3, $s3
	st.d	$t5, $sp, 512                   # 8-byte Folded Spill
	st.d	$a2, $sp, 504                   # 8-byte Folded Spill
	blez	$a2, .LBB1_98
# %bb.86:                               # %.lr.ph52
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$t4, $a0, 4
	ori	$a0, $zero, 2
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	slt	$a1, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $a2, 1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	addi.d	$s3, $a1, 4
	addi.d	$a1, $a0, -1
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	addi.d	$t6, $a1, 4
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	addi.d	$t7, $a1, 4
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	addi.d	$s8, $a1, 4
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	addi.d	$s4, $a1, 4
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	addi.d	$s1, $a1, 4
	slli.d	$a0, $a0, 2
	addi.d	$s2, $a0, -4
	ori	$s5, $zero, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	st.d	$t4, $sp, 408                   # 8-byte Folded Spill
	st.d	$t6, $sp, 344                   # 8-byte Folded Spill
	st.d	$t7, $sp, 336                   # 8-byte Folded Spill
	b	.LBB1_88
	.p2align	4, , 16
.LBB1_87:                               # %._crit_edge46
                                        #   in Loop: Header=BB1_88 Depth=1
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	fldx.s	$fa0, $t3, $a1
	addi.d	$s5, $s5, 1
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$a0, $t3
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	beq	$s5, $a1, .LBB1_98
.LBB1_88:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_96 Depth 2
                                        #     Child Loop BB1_92 Depth 2
	addi.d	$fp, $s5, -1
	slli.d	$a1, $fp, 2
	fldx.s	$fa0, $t5, $a1
	move	$s6, $s7
	move	$s7, $a0
	fst.s	$fa0, $a0, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	move	$a3, $s5
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t3, $s6
	ld.d	$t5, $sp, 512                   # 8-byte Folded Reload
	slli.d	$a0, $s5, 2
	fldx.s	$fa0, $t5, $a0
	fst.s	$fa0, $s6, 0
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	alsl.d	$a1, $s5, $a1, 2
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	fst.s	$fa0, $a2, 0
	ld.d	$a2, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a2, $fp, $a2, 2
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	bne	$s5, $a3, .LBB1_94
# %bb.89:                               # %.lr.ph45.split.us.preheader
                                        #   in Loop: Header=BB1_88 Depth=1
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	fst.s	$fa0, $a3, 0
	fld.s	$fa0, $s7, 0
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 4
	move	$a3, $zero
	move	$a4, $zero
	move	$a6, $zero
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a5, $t3, 4
	ld.d	$t2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 336                   # 8-byte Folded Reload
	b	.LBB1_92
	.p2align	4, , 16
.LBB1_90:                               # %.lr.ph45.split.us._crit_edge
                                        #   in Loop: Header=BB1_92 Depth=2
	ldx.w	$a7, $t4, $a4
.LBB1_91:                               #   in Loop: Header=BB1_92 Depth=2
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
	fldx.s	$fa1, $s0, $a4
	or	$a6, $a6, $t1
	stx.w	$a7, $t6, $a4
	stx.w	$a6, $t7, $a4
	fstx.s	$fa1, $s4, $a4
	fstx.s	$fa0, $s1, $a4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 1
	beq	$s2, $a4, .LBB1_87
.LBB1_92:                               # %.lr.ph45.split.us
                                        #   Parent Loop BB1_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa3, $s7, $a4
	fldx.s	$fa4, $t2, $a4
	fld.s	$fa6, $a1, 0
	fldx.s	$fa1, $s0, $a4
	fldx.s	$fa5, $s3, $a4
	fld.s	$fa2, $a2, 0
	fadd.s	$fa6, $fa3, $fa6
	fcmp.cle.s	$fcc0, $fa1, $fa6
	bceqz	$fcc0, .LBB1_90
# %bb.93:                               #   in Loop: Header=BB1_92 Depth=2
	fstx.s	$fa6, $s0, $a4
	stx.w	$fp, $t4, $a4
	move	$a7, $fp
	b	.LBB1_91
	.p2align	4, , 16
.LBB1_94:                               # %.lr.ph45.split.preheader
                                        #   in Loop: Header=BB1_88 Depth=1
	fld.s	$fa0, $s7, 0
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 4
	addi.d	$a3, $t3, 4
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	move	$a5, $s3
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	move	$a7, $s0
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	move	$t1, $s7
	b	.LBB1_96
	.p2align	4, , 16
.LBB1_95:                               #   in Loop: Header=BB1_96 Depth=2
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
	beqz	$a4, .LBB1_87
.LBB1_96:                               # %.lr.ph45.split
                                        #   Parent Loop BB1_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa2, $t1, 0
	fld.s	$fa4, $a6, 0
	fld.s	$fa6, $a1, 0
	fld.s	$fa1, $a7, 0
	fld.s	$fa5, $a5, 0
	fld.s	$fa3, $a2, 0
	fadd.s	$fa6, $fa2, $fa6
	fcmp.cult.s	$fcc0, $fa6, $fa1
	bcnez	$fcc0, .LBB1_95
# %bb.97:                               #   in Loop: Header=BB1_96 Depth=2
	fst.s	$fa6, $a7, 0
	st.w	$fp, $t0, 0
	b	.LBB1_95
.LBB1_98:                               # %.lr.ph58
	move	$fp, $s7
	ld.d	$a0, $sp, 656
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ori	$a7, $zero, 1
	move	$a0, $t5
	ld.d	$s0, $sp, 448                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$s5, $sp, 440                   # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$s3, $sp, 488                   # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 472                   # 8-byte Folded Reload
	move	$a5, $s1
	ld.d	$s2, $sp, 464                   # 8-byte Folded Reload
	move	$a6, $s2
	move	$s4, $t5
	move	$s6, $t3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$s8, $s6
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s0
	ld.d	$s7, $sp, 424                   # 8-byte Folded Reload
	move	$a3, $s7
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $s1
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s7, 31, 0
	ori	$a2, $zero, 12
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	bgeu	$s7, $a2, .LBB1_149
# %bb.99:
	move	$a2, $zero
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 296                   # 8-byte Folded Reload
	move	$t4, $s4
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
.LBB1_100:                              # %scalar.ph116.preheader
	move	$t6, $s8
	move	$t8, $fp
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
.LBB1_101:                              # %scalar.ph116.preheader
	slli.d	$a4, $a2, 2
	alsl.d	$a3, $a2, $t4, 2
	sub.d	$a1, $a1, $a2
	alsl.d	$a2, $a6, $a4, 2
	add.d	$a2, $a2, $t0
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_102:                              # %scalar.ph116
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
	bnez	$a1, .LBB1_102
.LBB1_103:                              # %.lr.ph60
	addi.w	$a0, $t1, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 2
	ori	$a1, $zero, 1
	slt	$a2, $a1, $s3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s3, $a2
	ori	$a3, $zero, 16
	or	$a1, $a2, $a1
	bge	$s3, $a3, .LBB1_154
# %bb.104:
	move	$a2, $zero
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 288                   # 8-byte Folded Reload
.LBB1_105:                              # %scalar.ph145.preheader
	slli.d	$a4, $a2, 2
	alsl.d	$a3, $a2, $t6, 2
	sub.d	$a1, $a1, $a2
	alsl.d	$a2, $a7, $a4, 2
	add.d	$a2, $a2, $t2
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_106:                              # %scalar.ph145
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
	bnez	$a1, .LBB1_106
.LBB1_107:                              # %.lr.ph62
	ori	$a1, $zero, 1
	move	$a2, $s0
	.p2align	4, , 16
.LBB1_108:                              # =>This Inner Loop Header: Depth=1
	fldx.s	$fa0, $t6, $fp
	fld.s	$fa1, $a0, -4
	fadd.s	$fa0, $fa0, $fa1
	add.d	$a3, $t0, $fp
	fst.s	$fa0, $a3, -4
	stx.w	$s7, $t1, $fp
	addi.w	$a2, $a2, -1
	addi.d	$fp, $fp, -4
	blt	$a1, $a2, .LBB1_108
# %bb.109:                              # %.preheader8
	move	$s2, $zero
	st.d	$zero, $sp, 496                 # 8-byte Folded Spill
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	addi.d	$a0, $s3, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	bstrpick.d	$a2, $s0, 31, 0
	alsl.d	$a1, $a2, $t0, 2
	addi.d	$s5, $a1, -8
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $t1, 2
	addi.d	$ra, $a1, -8
	addi.w	$a1, $t5, -1
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	slt	$a2, $a1, $t7
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $t7, $a2
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	bstrpick.d	$s4, $t5, 31, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s6, $a0, $a1, 2
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$fp, $a0, $a3, 2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	slli.d	$a1, $a7, 2
	alsl.d	$a1, $a0, $a1, 2
	add.d	$s1, $t3, $a1
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 2
	move	$a2, $s7
	addi.d	$s8, $a0, 4
	add.d	$a0, $a1, $t2
	addi.d	$s7, $a0, 4
	addi.d	$a0, $a3, 8
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	addi.d	$a0, $s3, -2
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	lu12i.w	$a0, -216695
	ori	$a0, $a0, 1664
	movgr2fr.w	$fs0, $a0
	move	$s3, $a2
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	b	.LBB1_112
	.p2align	4, , 16
.LBB1_110:                              #   in Loop: Header=BB1_112 Depth=1
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
.LBB1_111:                              #   in Loop: Header=BB1_112 Depth=1
	movcf2gr	$a0, $fcc0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB1_159
.LBB1_112:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_115 Depth 2
                                        #     Child Loop BB1_129 Depth 2
                                        #     Child Loop BB1_131 Depth 2
	addi.w	$a1, $s3, 0
	blez	$a1, .LBB1_138
# %bb.113:                              # %.lr.ph72
                                        #   in Loop: Header=BB1_112 Depth=1
	move	$a0, $t8
	slli.d	$a1, $s3, 2
	fldx.s	$fa0, $t4, $a1
	addi.d	$a1, $s3, -1
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	addi.w	$s0, $a1, 0
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	fstx.s	$fa0, $t6, $a1
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	move	$a3, $s0
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	st.d	$t6, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
	move	$a7, $zero
	st.d	$t8, $sp, 416                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 480                   # 8-byte Folded Reload
	slli.d	$a0, $s0, 2
	fldx.s	$fa0, $a1, $a0
	move	$a1, $zero
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $a5, $a3
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a6, 2
	move	$t4, $a6
	fldx.s	$fa0, $a6, $a3
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	fld.s	$fa1, $a3, 0
	addi.d	$a2, $a2, -4
	move	$t6, $a5
	alsl.d	$a3, $a4, $a5, 2
	addi.d	$a3, $a3, -8
	fadd.s	$fa0, $fa0, $fa1
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a4, $s3, $a4, 2
	alsl.d	$a5, $s0, $t3, 2
	ld.d	$a6, $sp, 496                   # 8-byte Folded Reload
	xor	$a6, $s0, $a6
	sltui	$a6, $a6, 1
	xor	$a7, $s3, $s4
	sltui	$a7, $a7, 1
	or	$a6, $a7, $a6
	ld.d	$t0, $sp, 488                   # 8-byte Folded Reload
	move	$a7, $t0
	ld.d	$t7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 312                   # 8-byte Folded Reload
	b	.LBB1_115
	.p2align	4, , 16
.LBB1_114:                              #   in Loop: Header=BB1_115 Depth=2
	movcf2gr	$t1, $fcc0
	fldx.s	$fa2, $a3, $a1
	masknez	$t2, $a7, $t1
	maskeqz	$t0, $t0, $t1
	or	$t0, $t0, $t2
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a3, $a1
	addi.w	$a7, $a7, -1
	addi.d	$a1, $a1, -4
	blez	$a7, .LBB1_125
.LBB1_115:                              #   Parent Loop BB1_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $s7, $a1
	fldx.s	$fa2, $a2, $a1
	fadd.s	$fa1, $fa0, $fa1
	fldx.s	$fa4, $s5, $a1
	fld.s	$fa5, $a4, 0
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fldx.s	$fa3, $s1, $a1
	fadd.s	$fa5, $fa4, $fa5
	fcmp.cule.s	$fcc1, $fa5, $fa1
	bcnez	$fcc1, .LBB1_117
# %bb.116:                              #   in Loop: Header=BB1_115 Depth=2
	ldx.w	$t1, $ra, $a1
	fmov.s	$fa1, $fa5
	move	$t2, $a7
	fld.s	$fa5, $a5, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bceqz	$fcc0, .LBB1_118
	b	.LBB1_119
	.p2align	4, , 16
.LBB1_117:                              #   in Loop: Header=BB1_115 Depth=2
	movcf2gr	$t1, $fcc0
	masknez	$t2, $a7, $t1
	maskeqz	$t1, $t0, $t1
	or	$t2, $t1, $t2
	move	$t1, $s3
	fld.s	$fa5, $a5, 0
	fadd.s	$fa5, $fa2, $fa5
	fcmp.cult.s	$fcc0, $fa5, $fa4
	bcnez	$fcc0, .LBB1_119
.LBB1_118:                              #   in Loop: Header=BB1_115 Depth=2
	fstx.s	$fa5, $s5, $a1
	stx.w	$s3, $ra, $a1
.LBB1_119:                              #   in Loop: Header=BB1_115 Depth=2
	bnez	$a6, .LBB1_122
# %bb.120:                              #   in Loop: Header=BB1_115 Depth=2
	beq	$s0, $t5, .LBB1_123
.LBB1_121:                              #   in Loop: Header=BB1_115 Depth=2
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s3, $s4, .LBB1_114
	b	.LBB1_124
	.p2align	4, , 16
.LBB1_122:                              #   in Loop: Header=BB1_115 Depth=2
	stx.w	$t1, $t8, $a1
	stx.w	$t2, $t7, $a1
	bne	$s0, $t5, .LBB1_121
.LBB1_123:                              #   in Loop: Header=BB1_115 Depth=2
	fldx.s	$fa4, $fp, $a1
	fadd.s	$fa4, $fa1, $fa4
	fstx.s	$fa4, $fp, $a1
	fldx.s	$fa4, $s5, $a1
	fldx.s	$fa5, $s8, $a1
	fadd.s	$fa4, $fa4, $fa5
	fstx.s	$fa4, $s8, $a1
	fadd.s	$fa2, $fa2, $fa3
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	bne	$s3, $s4, .LBB1_114
.LBB1_124:                              #   in Loop: Header=BB1_115 Depth=2
	fldx.s	$fa2, $s6, $a1
	fadd.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $s6, $a1
	b	.LBB1_114
	.p2align	4, , 16
.LBB1_125:                              # %._crit_edge73
                                        #   in Loop: Header=BB1_112 Depth=1
	fldx.s	$fa0, $a2, $a1
	fldx.s	$fa1, $t3, $a0
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fs0, $fa0, $fcc0
	bne	$s0, $t5, .LBB1_127
# %bb.126:                              #   in Loop: Header=BB1_112 Depth=1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 0
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $a0, 0
.LBB1_127:                              #   in Loop: Header=BB1_112 Depth=1
	move	$t8, $t4
	ld.d	$t4, $sp, 512                   # 8-byte Folded Reload
	bne	$s3, $s4, .LBB1_111
# %bb.128:                              # %.lr.ph80.preheader
                                        #   in Loop: Header=BB1_112 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	fld.s	$fa0, $a0, 4
	move	$s2, $zero
	ori	$a0, $zero, 2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_129:                              # %.lr.ph80
                                        #   Parent Loop BB1_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc1, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc1
	movcf2gr	$a3, $fcc1
	masknez	$a4, $s2, $a3
	maskeqz	$a3, $a0, $a3
	or	$s2, $a3, $a4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB1_129
# %bb.130:                              # %.lr.ph86.preheader
                                        #   in Loop: Header=BB1_112 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_131:                              # %.lr.ph86
                                        #   Parent Loop BB1_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc1, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc1
	movcf2gr	$a3, $fcc1
	masknez	$a4, $s2, $a3
	maskeqz	$a3, $a0, $a3
	or	$s2, $a3, $a4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB1_131
# %bb.132:                              # %._crit_edge87
                                        #   in Loop: Header=BB1_112 Depth=1
	slli.d	$a0, $s2, 2
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	addi.w	$a3, $s2, -1
	blez	$s2, .LBB1_136
# %bb.133:                              #   in Loop: Header=BB1_112 Depth=1
	slli.d	$a1, $a3, 2
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a1
	fcmp.cule.s	$fcc1, $fa1, $fa0
	move	$a1, $a3
	bcnez	$fcc1, .LBB1_135
# %bb.134:                              #   in Loop: Header=BB1_112 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	fmov.s	$fa0, $fa1
.LBB1_135:                              #   in Loop: Header=BB1_112 Depth=1
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a0
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_110
	b	.LBB1_137
.LBB1_136:                              #   in Loop: Header=BB1_112 Depth=1
	move	$a1, $a3
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	fldx.s	$fa1, $a2, $a0
	fcmp.cule.s	$fcc1, $fa1, $fa0
	bceqz	$fcc1, .LBB1_110
.LBB1_137:                              #   in Loop: Header=BB1_112 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	b	.LBB1_111
.LBB1_138:
	move	$s8, $s2
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	b	.LBB1_199
.LBB1_139:                              # %vector.memcheck47
	addi.d	$a4, $s3, 4
	addi.d	$a5, $t0, 4
	sltu	$a5, $a4, $a5
	sltu	$a6, $t0, $a2
	and	$a5, $a5, $a6
	bnez	$a5, .LBB1_79
# %bb.140:                              # %vector.memcheck47
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a5, $a0, $a6, 2
	addi.d	$a5, $a5, -4
	sltu	$a4, $a4, $a5
	sltu	$a5, $a6, $a2
	and	$a4, $a4, $a5
	bnez	$a4, .LBB1_79
# %bb.141:                              # %vector.ph61
	move	$a4, $a1
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a5, 2, 0
	vldrepl.w	$vr0, $t0, 0
	alsl.d	$a5, $fp, $t6, 2
	addi.d	$a5, $a5, 16
	addi.d	$a6, $s3, 20
	move	$a7, $a4
	.p2align	4, , 16
.LBB1_142:                              # %vector.body64
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, -16
	vld	$vr2, $a5, 0
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a6, -16
	vst	$vr2, $a6, 0
	addi.d	$a5, $a5, 32
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB1_142
# %bb.143:                              # %middle.block74
	bne	$a1, $a4, .LBB1_79
	b	.LBB1_81
.LBB1_144:                              # %vector.memcheck77
	alsl.d	$a4, $a0, $t3, 2
	addi.d	$a2, $a2, -4
	sltu	$a2, $s0, $a2
	sltu	$a5, $s3, $a4
	and	$a2, $a2, $a5
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	bnez	$a2, .LBB1_83
# %bb.145:                              # %vector.memcheck77
	addi.d	$a2, $t2, 8
	sltu	$a2, $s0, $a2
	sltu	$a4, $s1, $a4
	and	$a2, $a2, $a4
	bnez	$a2, .LBB1_83
# %bb.146:                              # %vector.ph91
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	ori	$a4, $zero, 1
	move	$a3, $a1
	bstrins.d	$a3, $a4, 2, 0
	vldrepl.w	$vr0, $s1, 0
	addi.d	$a4, $s3, 16
	addi.d	$a5, $t3, 20
	addi.d	$a6, $t4, 20
	vrepli.b	$vr1, 0
	move	$a7, $a2
	.p2align	4, , 16
.LBB1_147:                              # %vector.body94
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
	bnez	$a7, .LBB1_147
# %bb.148:                              # %middle.block102
	bne	$a1, $a2, .LBB1_83
	b	.LBB1_85
.LBB1_149:                              # %vector.memcheck105
	alsl.d	$a3, $a1, $s4, 2
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	add.d	$a2, $a6, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a4, $a2, 4
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a4
	sltu	$a2, $s4, $a2
	sltu	$a5, $a0, $a3
	and	$a5, $a2, $a5
	move	$a2, $zero
	ld.d	$a7, $sp, 296                   # 8-byte Folded Reload
	move	$t4, $s4
	ld.d	$t2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	bnez	$a5, .LBB1_235
# %bb.150:                              # %vector.memcheck105
	add.d	$a4, $t0, $a4
	sltu	$a4, $t4, $a4
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	sltu	$a3, $a5, $a3
	and	$a3, $a4, $a3
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	move	$t6, $s8
	move	$t8, $fp
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	bnez	$a3, .LBB1_101
# %bb.151:                              # %vector.ph118
	bstrpick.d	$a2, $a1, 30, 3
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 20
	addi.d	$a4, $t4, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_152:                              # %vector.body121
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
	bnez	$a5, .LBB1_152
# %bb.153:                              # %middle.block130
	bne	$a2, $a1, .LBB1_101
	b	.LBB1_103
.LBB1_154:                              # %vector.memcheck133
	alsl.d	$a3, $a1, $t6, 2
	add.d	$a2, $a7, $s3
	alsl.d	$a2, $a2, $t3, 2
	addi.d	$a2, $a2, 4
	sltu	$a2, $t6, $a2
	sltu	$a4, $a0, $a3
	and	$a4, $a2, $a4
	move	$a2, $zero
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 288                   # 8-byte Folded Reload
	bnez	$a4, .LBB1_105
# %bb.155:                              # %vector.memcheck133
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 4
	alsl.d	$a5, $a1, $a4, 2
	sltu	$a5, $t6, $a5
	sltu	$a3, $a4, $a3
	and	$a3, $a5, $a3
	bnez	$a3, .LBB1_105
# %bb.156:                              # %vector.ph147
	bstrpick.d	$a2, $a1, 30, 3
	vldrepl.w	$vr0, $a0, 0
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 20
	addi.d	$a4, $t6, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_157:                              # %vector.body150
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
	bnez	$a5, .LBB1_157
# %bb.158:                              # %middle.block159
	bne	$a2, $a1, .LBB1_105
	b	.LBB1_107
.LBB1_159:
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	beqz	$s2, .LBB1_198
# %bb.160:
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	blt	$s6, $s2, .LBB1_199
# %bb.161:
	ld.d	$s6, $sp, 288                   # 8-byte Folded Reload
	slli.d	$a0, $s6, 2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$t5, $a1, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$s8, $a1, $a0
	move	$fp, $s0
	b	.LBB1_199
.LBB1_162:
	move	$a2, $zero
.LBB1_163:                              # %.lr.ph.i.i.preheader
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 3
	sub.d	$a0, $a0, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB1_164:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.w	$a2, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB1_164
.LBB1_165:                              # %.lr.ph119.i.i
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 6
	bstrpick.d	$a2, $t1, 31, 0
	ld.d	$a4, $sp, 488                   # 8-byte Folded Reload
	bgeu	$a4, $a3, .LBB1_167
# %bb.166:
	move	$a3, $zero
	b	.LBB1_170
.LBB1_167:                              # %vector.ph289
	bstrpick.d	$a3, $a2, 31, 3
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI1_0)
	addi.d	$a4, $a0, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_168:                              # %vector.body292
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a4, -16
	vst	$vr4, $a4, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_168
# %bb.169:                              # %middle.block295
	beq	$a3, $a2, .LBB1_172
.LBB1_170:                              # %scalar.ph287.preheader
	alsl.d	$a0, $a3, $a0, 2
	nor	$a4, $a3, $zero
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_171:                              # %scalar.ph287
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	bnez	$a2, .LBB1_171
.LBB1_172:                              # %._crit_edge.i.i
	st.d	$s8, $sp, 504                   # 8-byte Folded Spill
	add.d	$a0, $s8, $s3
	add.d	$s1, $a0, $s7
	stx.b	$zero, $a0, $s7
	add.d	$a0, $t4, $s3
	add.d	$s8, $a0, $s7
	stx.b	$zero, $a0, $s7
	bltz	$fp, .LBB1_190
# %bb.173:                              # %.lr.ph146.i.i.preheader
	move	$a0, $zero
	ori	$a2, $zero, 111
	ori	$a3, $zero, 45
	.p2align	4, , 16
.LBB1_174:                              # %.lr.ph146.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_182 Depth 2
                                        #     Child Loop BB1_185 Depth 2
	slli.d	$a4, $s3, 3
	ld.d	$a5, $sp, 496                   # 8-byte Folded Reload
	ldx.d	$a4, $a5, $a4
	slli.d	$a5, $s7, 2
	ldx.w	$a5, $a4, $a5
	bltz	$a5, .LBB1_177
# %bb.175:                              #   in Loop: Header=BB1_174 Depth=1
	beqz	$a5, .LBB1_179
# %bb.176:                              #   in Loop: Header=BB1_174 Depth=1
	sub.w	$a4, $s3, $a5
	b	.LBB1_180
	.p2align	4, , 16
.LBB1_177:                              #   in Loop: Header=BB1_174 Depth=1
	addi.w	$a4, $s3, -1
	nor	$a6, $a4, $zero
	add.w	$a6, $s3, $a6
	bnez	$a6, .LBB1_181
.LBB1_178:                              #   in Loop: Header=BB1_174 Depth=1
	move	$a6, $s1
	move	$a7, $s8
	b	.LBB1_183
	.p2align	4, , 16
.LBB1_179:                              #   in Loop: Header=BB1_174 Depth=1
	addi.w	$a4, $s3, -1
.LBB1_180:                              #   in Loop: Header=BB1_174 Depth=1
	move	$a5, $a1
	nor	$a6, $a4, $zero
	add.w	$a6, $s3, $a6
	beqz	$a6, .LBB1_178
.LBB1_181:                              # %.lr.ph125.i.i.preheader
                                        #   in Loop: Header=BB1_174 Depth=1
	sub.d	$a6, $a4, $s3
	addi.w	$t0, $a6, 1
	.p2align	4, , 16
.LBB1_182:                              # %.lr.ph125.i.i
                                        #   Parent Loop BB1_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a6, $s1, -1
	st.b	$a2, $s1, -1
	addi.d	$a7, $s8, -1
	st.b	$a3, $s8, -1
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$t0, $t0, 1
	slli.d	$t1, $t0, 31
	addi.d	$a0, $a0, 1
	move	$s8, $a7
	move	$s1, $a6
	bgez	$t1, .LBB1_182
.LBB1_183:                              # %._crit_edge126.i.i
                                        #   in Loop: Header=BB1_174 Depth=1
	beq	$a5, $a1, .LBB1_187
# %bb.184:                              # %.lr.ph134.preheader.i.i
                                        #   in Loop: Header=BB1_174 Depth=1
	nor	$t0, $a5, $zero
	addi.w	$t1, $a5, 1
	.p2align	4, , 16
.LBB1_185:                              # %.lr.ph134.i.i
                                        #   Parent Loop BB1_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $a6, -1
	addi.d	$a6, $a6, -1
	st.b	$a2, $a7, -1
	bstrpick.d	$t1, $t1, 31, 0
	addi.d	$t1, $t1, 1
	slli.d	$t2, $t1, 31
	addi.d	$a7, $a7, -1
	bgez	$t2, .LBB1_185
# %bb.186:                              # %._crit_edge135.loopexit.i.i
                                        #   in Loop: Header=BB1_174 Depth=1
	add.d	$a0, $a0, $t0
.LBB1_187:                              # %._crit_edge135.i.i
                                        #   in Loop: Header=BB1_174 Depth=1
	blez	$s3, .LBB1_191
# %bb.188:                              # %._crit_edge135.i.i
                                        #   in Loop: Header=BB1_174 Depth=1
	blez	$s7, .LBB1_191
# %bb.189:                              #   in Loop: Header=BB1_174 Depth=1
	add.w	$s7, $a5, $s7
	addi.d	$s1, $a6, -1
	st.b	$a2, $a6, -1
	addi.d	$s8, $a7, -1
	addi.w	$a0, $a0, 2
	st.b	$a2, $a7, -1
	move	$s3, $a4
	bge	$fp, $a0, .LBB1_174
.LBB1_190:                              # %._crit_edge147.i.i
	move	$s6, $t4
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	move	$s3, $t3
	bgtz	$s5, .LBB1_192
	b	.LBB1_194
.LBB1_191:
	move	$s1, $a6
	move	$s8, $a7
	move	$s6, $t4
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	move	$s3, $t3
	blez	$s5, .LBB1_194
.LBB1_192:                              # %.lr.ph155.i.i
	move	$fp, $s3
	.p2align	4, , 16
.LBB1_193:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	addi.d	$fp, $fp, 8
	bnez	$s5, .LBB1_193
.LBB1_194:                              # %.preheader.i.i
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	blez	$s0, .LBB1_197
# %bb.195:                              # %.lr.ph157.i.i
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_196:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a0, $fp, 0
	add.d	$a1, $a1, $s1
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 8
	addi.d	$fp, $fp, 8
	bnez	$s0, .LBB1_196
.LBB1_197:                              # %MSalignmm_tanni.exit
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	b	.LBB1_233
.LBB1_198:
	move	$s6, $zero
	ld.d	$t5, $sp, 424                   # 8-byte Folded Reload
	addi.w	$fp, $t5, -1
	ori	$s8, $zero, 1
.LBB1_199:                              # %.loopexit
	st.d	$t5, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 248                   # 8-byte Folded Spill
	add.w	$a7, $fp, $s7
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	add.w	$a0, $s6, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a2, $sp, 40
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$a2, $sp, 32
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.d	$a2, $sp, 24
	st.d	$s3, $sp, 16
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s1
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	move	$a6, $s7
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	fmov.s	$fs0, $fa0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	nor	$a1, $s6, $zero
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	add.w	$s0, $s8, $a1
	blez	$s0, .LBB1_207
# %bb.200:                              # %.preheader6.preheader
	move	$s3, $s6
	move	$s2, $s5
	move	$s5, $a0
	ori	$a1, $zero, 45
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s6, $s0
	add.w	$fp, $s0, $s5
	blez	$s2, .LBB1_203
# %bb.201:                              # %.lr.ph92
	move	$s1, $s2
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_202:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB1_202
.LBB1_203:                              # %.preheader5
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	move	$s6, $s3
	blez	$s4, .LBB1_206
# %bb.204:                              # %.lr.ph94
	move	$s1, $s4
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	move	$s3, $s5
	.p2align	4, , 16
.LBB1_205:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s2, 0
	add.d	$a1, $a1, $s8
	add.d	$a1, $a1, $s6
	addi.d	$a1, $a1, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s3, $s3, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB1_205
.LBB1_206:                              # %._crit_edge95
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a0, $s6, $a0, 2
	fld.s	$fa0, $a0, 4
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	fld.s	$fa1, $a0, -4
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa0
.LBB1_207:
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	nor	$a1, $s5, $zero
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	add.w	$s0, $a2, $a1
	blez	$s0, .LBB1_215
# %bb.208:                              # %.preheader4.preheader
	move	$s1, $a0
	ori	$a1, $zero, 45
	move	$a0, $s8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s8, $s0
	add.w	$fp, $s0, $s1
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	blez	$a0, .LBB1_211
# %bb.209:                              # %.lr.ph99
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_210:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s6, 0
	add.d	$a1, $a1, $s7
	add.d	$a1, $a1, $s5
	addi.d	$a1, $a1, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, -1
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB1_210
.LBB1_211:                              # %.preheader3
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	blez	$s4, .LBB1_214
# %bb.212:                              # %.lr.ph101
	move	$s0, $s4
	.p2align	4, , 16
.LBB1_213:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	stx.b	$zero, $a0, $fp
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 8
	bnez	$s0, .LBB1_213
.LBB1_214:                              # %._crit_edge102
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	fld.s	$fa0, $a0, 4
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	fld.s	$fa1, $a0, -4
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa0
	b	.LBB1_216
.LBB1_215:
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
.LBB1_216:
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	blez	$a1, .LBB1_224
# %bb.217:                              # %.lr.ph105
	ori	$a1, $zero, 4
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	bgeu	$a2, $a1, .LBB1_219
# %bb.218:
	move	$a1, $zero
	b	.LBB1_222
.LBB1_219:                              # %vector.ph164
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $s3, 16
	vreplgr2vr.d	$vr0, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB1_220:                              # %vector.body167
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB1_220
# %bb.221:                              # %middle.block172
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB1_224
.LBB1_222:                              # %scalar.ph162.preheader
	alsl.d	$a2, $a1, $s3, 3
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	sub.d	$a1, $a3, $a1
	.p2align	4, , 16
.LBB1_223:                              # %scalar.ph162
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB1_223
.LBB1_224:                              # %.preheader2
	ld.d	$a4, $sp, 504                   # 8-byte Folded Reload
	blez	$s4, .LBB1_232
# %bb.225:                              # %.lr.ph107
	ori	$a1, $zero, 4
	bgeu	$s4, $a1, .LBB1_227
# %bb.226:
	move	$a1, $zero
	b	.LBB1_230
.LBB1_227:                              # %vector.ph177
	bstrpick.d	$a1, $s4, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $s1, 16
	vreplgr2vr.d	$vr0, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB1_228:                              # %vector.body180
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, -16
	vld	$vr2, $a2, 0
	vadd.d	$vr1, $vr1, $vr0
	vadd.d	$vr2, $vr2, $vr0
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB1_228
# %bb.229:                              # %middle.block185
	beq	$a1, $s4, .LBB1_232
.LBB1_230:                              # %scalar.ph175.preheader
	alsl.d	$a2, $a1, $s1, 3
	sub.d	$a1, $s4, $a1
	.p2align	4, , 16
.LBB1_231:                              # %scalar.ph175
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB1_231
.LBB1_232:                              # %._crit_edge108
	add.w	$a6, $a4, $s7
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a1, $sp, 40
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $sp, 32
	st.d	$s1, $sp, 24
	st.d	$s3, $sp, 16
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $fp
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MSalignmm_rec)
	jirl	$ra, $ra, 0
	fadd.s	$fs0, $fs0, $fa0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_233:                              # %common.ret.sink.split
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_234:                              # %common.ret
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 528                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 600                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 608                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 616                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 624
	ret
.LBB1_235:
	ld.d	$t5, $sp, 504                   # 8-byte Folded Reload
	b	.LBB1_100
.Lfunc_end1:
	.size	MSalignmm_rec, .Lfunc_end1-MSalignmm_rec
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 120                  # 8-byte Folded Spill
	beqz	$a7, .LBB2_8
# %bb.1:
	blez	$a4, .LBB2_8
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
	ldx.d	$a1, $a1, $a2
	fld.s	$fa1, $a1, 40
	fld.s	$fa2, $a1, 44
	fld.s	$fa3, $a1, 48
	fld.s	$fa4, $a1, 52
	fld.s	$fa5, $a1, 56
	fld.s	$fa6, $a1, 60
	fld.s	$fa7, $a1, 64
	fld.s	$ft0, $a1, 0
	fld.s	$ft1, $a1, 4
	fld.s	$ft2, $a1, 8
	fld.s	$ft3, $a1, 12
	fld.s	$ft4, $a1, 16
	fld.s	$ft5, $a1, 20
	fld.s	$ft6, $a1, 24
	fld.s	$ft7, $a1, 28
	fld.s	$ft8, $a1, 32
	fld.s	$ft9, $a1, 36
	fld.s	$ft10, $a1, 68
	fld.s	$ft11, $a1, 72
	fld.s	$ft12, $a1, 76
	fld.s	$ft13, $a1, 80
	fld.s	$ft14, $a1, 84
	fld.s	$ft15, $a1, 88
	fld.s	$fs0, $a1, 92
	fld.s	$fs1, $a1, 96
	fld.s	$fs2, $a1, 100
	pcalau12i	$a1, %got_pc_hi20(n_dis)
	ld.d	$a1, $a1, %got_pc_lo12(n_dis)
	move	$a2, $zero
	movgr2fr.w	$fa0, $zero
	addi.d	$a3, $sp, 16
	ori	$a7, $zero, 104
	.p2align	4, , 16
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$t1, $a1, $a2
	add.d	$t0, $a1, $a2
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
	fstx.s	$fs3, $a2, $a3
	addi.d	$a2, $a2, 4
	bne	$a2, $a7, .LBB2_9
# %bb.10:                               # %.preheader
	beqz	$a4, .LBB2_16
# %bb.11:
	addi.d	$a1, $sp, 16
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
	ld.d	$a7, $a6, 0
	ld.wu	$a2, $a7, 0
	addi.w	$a3, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a3, .LBB2_12
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB2_13 Depth=1
	ld.d	$a3, $a5, 0
	addi.d	$a7, $a7, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB2_15:                               #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $a2, 2
	fldx.s	$fa2, $a2, $a1
	fld.s	$fa3, $a3, 0
	ld.wu	$a2, $a7, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $a0, 0
	addi.w	$t0, $a2, 0
	addi.d	$a3, $a3, 4
	addi.d	$a7, $a7, 4
	bgez	$t0, .LBB2_15
	b	.LBB2_12
.LBB2_16:                               # %._crit_edge75
	fld.d	$fs4, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 152                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
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
