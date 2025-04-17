	.file	"refine.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function refine
.LCPI0_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	refine
	.p2align	5
	.type	refine,@function
refine:                                 # @refine
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(num_refine)
	pcalau12i	$a0, %pc_hi20(block_change)
	ld.w	$a1, $a0, %pc_lo12(block_change)
	ld.w	$a0, $s2, %pc_lo12(num_refine)
	fmov.d	$fs0, $fa0
	sltui	$a2, $fp, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$s0, $a2, $a1
	ori	$a1, $zero, 1
	pcalau12i	$s3, %pc_hi20(num_blocks)
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	blt	$s0, $a1, .LBB0_15
# %bb.1:                                # %.lr.ph100.preheader
	move	$s4, $zero
	movgr2fr.d	$fs2, $zero
	pcalau12i	$a1, %pc_hi20(cur_max_level)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(uniform_refine)
	pcalau12i	$s7, %pc_hi20(timer_refine_co)
	pcalau12i	$s8, %pc_hi20(timer_refine_mr)
	pcalau12i	$fp, %pc_hi20(timer_refine_sb)
	pcalau12i	$s1, %pc_hi20(timer_cb_all)
	pcalau12i	$s5, %pc_hi20(sorted_index)
	pcalau12i	$a1, %pc_hi20(sorted_list)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(blocks)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	bltz	$a0, .LBB0_5
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
	ld.d	$a1, $s3, %pc_lo12(num_blocks)
	.p2align	4, , 16
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	move	$a2, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	bnez	$a0, .LBB0_11
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	addi.w	$a0, $a2, -1
	bgtz	$a2, .LBB0_3
.LBB0_5:                                # %.loopexit92
	pcaddu18i	$ra, %call36(reset_all)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(uniform_refine)
	beqz	$a0, .LBB0_12
.LBB0_6:                                # %.preheader91
	ld.d	$a0, $s5, %pc_lo12(sorted_index)
	ld.w	$a1, $s2, %pc_lo12(num_refine)
	addi.d	$a0, $a0, 4
	slli.d	$a2, $a1, 2
	ldx.w	$a2, $a0, $a2
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB0_13
# %bb.7:                                # %.lr.ph97
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $a2, %pc_lo12(sorted_list)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(blocks)
	move	$a3, $zero
	addi.d	$a4, $a4, 4
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=1
	ld.w	$a1, $s2, %pc_lo12(num_refine)
	slli.d	$a5, $a1, 2
	ldx.w	$a5, $a0, $a5
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	bge	$a3, $a5, .LBB0_13
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, 0
	alsl.d	$a5, $a5, $a5, 1
	slli.d	$a5, $a5, 6
	ldx.w	$a6, $a2, $a5
	bltz	$a6, .LBB0_8
# %bb.10:                               # %.sink.split
                                        #   in Loop: Header=BB0_9 Depth=1
	add.d	$a5, $a2, $a5
	ld.w	$a6, $a5, 4
	slt	$a1, $a6, $a1
	st.w	$a1, $a5, 8
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_11:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$a2, $a0, %pc_lo12(cur_max_level)
	pcaddu18i	$ra, %call36(reset_all)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(uniform_refine)
	bnez	$a0, .LBB0_6
.LBB0_12:
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	pcaddu18i	$ra, %call36(check_objects)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s7, %pc_lo12(timer_refine_co)
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $s7, %pc_lo12(timer_refine_co)
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fs2, $fs2, $fa0
.LBB0_13:                               # %.loopexit
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	pcaddu18i	$ra, %call36(refine_level)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s8, %pc_lo12(timer_refine_mr)
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $s8, %pc_lo12(timer_refine_mr)
	fadd.d	$fs2, $fs2, $fa0
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	pcaddu18i	$ra, %call36(split_blocks)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $fp, %pc_lo12(timer_refine_sb)
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $fp, %pc_lo12(timer_refine_sb)
	fadd.d	$fs2, $fs2, $fa0
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fmov.d	$fs1, $fa0
	pcaddu18i	$ra, %call36(consolidate_blocks)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s1, %pc_lo12(timer_cb_all)
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $s1, %pc_lo12(timer_cb_all)
	addi.w	$s4, $s4, 1
	fadd.d	$fs2, $fs2, $fa0
	beq	$s4, $s0, .LBB0_16
# %bb.14:                               # %.lr.ph100thread-pre-split
	ld.w	$a0, $s2, %pc_lo12(num_refine)
	bgez	$a0, .LBB0_2
	b	.LBB0_5
.LBB0_15:
	movgr2fr.d	$fs2, $zero
.LBB0_16:                               # %._crit_edge
	pcalau12i	$s8, %pc_hi20(target_active)
	ld.w	$a0, $s8, %pc_lo12(target_active)
	pcalau12i	$s0, %pc_hi20(target_max)
	pcalau12i	$fp, %pc_hi20(target_min)
	pcalau12i	$s4, %pc_hi20(my_pe)
	pcalau12i	$a1, %pc_hi20(global_active)
	addi.d	$s5, $a1, %pc_lo12(global_active)
	bnez	$a0, .LBB0_20
# %bb.17:                               # %._crit_edge
	ld.w	$a0, $s0, %pc_lo12(target_max)
	bnez	$a0, .LBB0_20
# %bb.18:                               # %._crit_edge
	ld.w	$a0, $fp, %pc_lo12(target_min)
	bnez	$a0, .LBB0_20
# %bb.19:
	ld.d	$s8, $sp, 0                     # 8-byte Folded Reload
	b	.LBB0_52
.LBB0_20:
	ld.w	$a0, $s4, %pc_lo12(my_pe)
	bnez	$a0, .LBB0_25
# %bb.21:                               # %.preheader
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $s2, %pc_lo12(num_refine)
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
	bltz	$a0, .LBB0_24
# %bb.22:                               # %.lr.ph103.preheader
	move	$fp, $zero
	move	$s0, $zero
	addi.w	$s6, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	.p2align	4, , 16
.LBB0_23:                               # %.lr.ph103
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, %pc_lo12(num_blocks)
	ldx.w	$a3, $a0, $fp
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(num_refine)
	addi.d	$s6, $s6, 1
	addi.w	$s0, $s0, 1
	addi.d	$fp, $fp, 4
	blt	$s6, $a0, .LBB0_23
.LBB0_24:                               # %._crit_edge104
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
.LBB0_25:
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(num_blocks)
	ld.w	$a2, $a0, 0
	ld.w	$a3, $s2, %pc_lo12(num_refine)
	fmov.d	$fs1, $fa0
	ori	$a5, $zero, 1
	st.w	$a2, $s5, 0
	blt	$a3, $a5, .LBB0_41
# %bb.26:                               # %iter.check
	addi.d	$a1, $a3, 1
	ori	$a4, $zero, 4
	bstrpick.d	$a1, $a1, 31, 0
	bltu	$a3, $a4, .LBB0_39
# %bb.27:                               # %vector.memcheck
	alsl.d	$a4, $a1, $a0, 2
	bgeu	$s5, $a4, .LBB0_29
# %bb.28:                               # %vector.memcheck
	addi.d	$a4, $a0, 4
	addi.d	$a6, $s5, 4
	bltu	$a4, $a6, .LBB0_39
.LBB0_29:                               # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB0_31
# %bb.30:
	move	$a4, $zero
	b	.LBB0_35
.LBB0_31:                               # %vector.ph
	bstrpick.d	$a4, $a3, 30, 4
	slli.d	$a4, $a4, 4
	xvinsgr2vr.w	$xr1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI0_0)
	xvpermi.d	$xr1, $xr1, 68
	xvinsgr2vr.w	$xr2, $zero, 0
	xvpermi.d	$xr2, $xr2, 68
	xvshuf.w	$xr0, $xr2, $xr1
	addi.d	$a2, $a0, 36
	xvrepli.b	$xr1, 0
	move	$a5, $a4
	.p2align	4, , 16
.LBB0_32:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvadd.w	$xr0, $xr0, $xr2
	xvadd.w	$xr1, $xr1, $xr3
	addi.d	$a5, $a5, -16
	addi.d	$a2, $a2, 64
	bnez	$a5, .LBB0_32
# %bb.33:                               # %middle.block
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a2, $xr0, 0
	st.w	$a2, $s5, 0
	beq	$a4, $a3, .LBB0_41
# %bb.34:                               # %vec.epilog.iter.check
	andi	$a5, $a3, 12
	beqz	$a5, .LBB0_38
.LBB0_35:                               # %vec.epilog.ph
	bstrpick.d	$a5, $a3, 30, 2
	slli.d	$a6, $a5, 2
	srli.d	$a7, $a3, 2
	ori	$a5, $zero, 1
	pcalau12i	$t0, %pc_hi20(.LCPI0_1)
	vld	$vr0, $t0, %pc_lo12(.LCPI0_1)
	bstrins.d	$a5, $a7, 30, 2
	vinsgr2vr.w	$vr1, $a2, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	alsl.d	$a2, $a4, $a0, 2
	addi.d	$a2, $a2, 4
	sub.d	$a4, $a4, $a6
	.p2align	4, , 16
.LBB0_36:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, 0
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB0_36
# %bb.37:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	st.w	$a2, $s5, 0
	bne	$a6, $a3, .LBB0_39
	b	.LBB0_41
.LBB0_38:
	addi.d	$a5, $a4, 1
.LBB0_39:                               # %.lr.ph108.preheader
	alsl.d	$a0, $a5, $a0, 2
	sub.d	$a1, $a1, $a5
	.p2align	4, , 16
.LBB0_40:                               # %.lr.ph108
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	add.w	$a2, $a2, $a3
	st.w	$a2, $s5, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_40
.LBB0_41:                               # %._crit_edge109
	ld.w	$a1, $s8, %pc_lo12(target_active)
	pcalau12i	$a0, %pc_hi20(num_pes)
	beqz	$a1, .LBB0_43
# %bb.42:
	ld.w	$a3, $a0, %pc_lo12(num_pes)
	mul.d	$a3, $a3, $a1
	addi.w	$a3, $a3, 3
	blt	$a3, $a2, .LBB0_45
.LBB0_43:
	ld.w	$a3, $s0, %pc_lo12(target_max)
	beqz	$a3, .LBB0_46
# %bb.44:
	ld.w	$a4, $a0, %pc_lo12(num_pes)
	mul.w	$a3, $a4, $a3
	bge	$a3, $a2, .LBB0_46
.LBB0_45:
	pcaddu18i	$ra, %call36(reduce_blocks)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 0                     # 8-byte Folded Reload
	b	.LBB0_51
.LBB0_46:
	ld.d	$s8, $sp, 0                     # 8-byte Folded Reload
	beqz	$a1, .LBB0_48
# %bb.47:
	ld.w	$a3, $a0, %pc_lo12(num_pes)
	mul.d	$a1, $a3, $a1
	addi.w	$a1, $a1, -3
	blt	$a2, $a1, .LBB0_50
.LBB0_48:
	ld.w	$a1, $fp, %pc_lo12(target_min)
	beqz	$a1, .LBB0_51
# %bb.49:
	ld.w	$a0, $a0, %pc_lo12(num_pes)
	mul.w	$a0, $a0, $a1
	bge	$a2, $a0, .LBB0_51
.LBB0_50:
	pcaddu18i	$ra, %call36(add_blocks)
	jirl	$ra, $ra, 0
.LBB0_51:
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(timer_target_all)
	fld.d	$fa1, $a0, %pc_lo12(timer_target_all)
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a0, %pc_lo12(timer_target_all)
	fadd.d	$fs2, $fs2, $fa0
.LBB0_52:
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(num_active)
	ld.w	$a1, $a0, %pc_lo12(num_active)
	pcalau12i	$a2, %pc_hi20(local_max_b)
	ld.w	$a0, $a2, %pc_lo12(local_max_b)
	fmov.d	$fs1, $fa0
	blt	$a0, $a1, .LBB0_55
# %bb.53:
	pcalau12i	$a1, %pc_hi20(global_max_b)
	ld.w	$a2, $a1, %pc_lo12(global_max_b)
	blt	$a2, $a0, .LBB0_56
.LBB0_54:
	ld.w	$a0, $s2, %pc_lo12(num_refine)
	bgez	$a0, .LBB0_57
	b	.LBB0_66
.LBB0_55:
	st.w	$a1, $a2, %pc_lo12(local_max_b)
	move	$a0, $a1
	pcalau12i	$a1, %pc_hi20(global_max_b)
	ld.w	$a2, $a1, %pc_lo12(global_max_b)
	bge	$a2, $a0, .LBB0_54
.LBB0_56:
	st.w	$a0, $a1, %pc_lo12(global_max_b)
	ld.w	$a0, $s2, %pc_lo12(num_refine)
	bltz	$a0, .LBB0_66
.LBB0_57:
	ld.d	$a1, $s3, %pc_lo12(num_blocks)
	ld.w	$a2, $a1, 0
	ld.w	$a3, $s4, %pc_lo12(my_pe)
	st.w	$a2, $s5, 0
	pcalau12i	$fp, %pc_hi20(report_perf)
	bnez	$a3, .LBB0_60
# %bb.58:
	ld.bu	$a2, $fp, %pc_lo12(report_perf)
	andi	$a2, $a2, 8
	beqz	$a2, .LBB0_60
# %bb.59:
	ld.w	$a3, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $zero
	move	$a2, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(num_refine)
.LBB0_60:
	ori	$s0, $zero, 1
	blt	$a0, $s0, .LBB0_66
# %bb.61:                               # %.lr.ph113.peel.next.preheader
	move	$s6, $zero
	ori	$s7, $zero, 4
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$s1, $a1, %pc_lo12(.L.str.2)
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_62:                               #   in Loop: Header=BB0_63 Depth=1
	addi.d	$s6, $s6, 1
	addi.w	$s0, $s0, 1
	addi.d	$s7, $s7, 4
	bge	$s6, $a0, .LBB0_66
.LBB0_63:                               # %.lr.ph113.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, %pc_lo12(num_blocks)
	ld.w	$a2, $s5, 0
	ldx.w	$a3, $a1, $s7
	ld.w	$a4, $s4, %pc_lo12(my_pe)
	add.d	$a2, $a2, $a3
	st.w	$a2, $s5, 0
	bnez	$a4, .LBB0_62
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=1
	ld.bu	$a2, $fp, %pc_lo12(report_perf)
	andi	$a2, $a2, 8
	beqz	$a2, .LBB0_62
# %bb.65:                               #   in Loop: Header=BB0_63 Depth=1
	ldx.w	$a3, $a1, $s7
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(num_refine)
	b	.LBB0_62
.LBB0_66:                               # %._crit_edge114
	ld.w	$a0, $s4, %pc_lo12(my_pe)
	bnez	$a0, .LBB0_69
# %bb.67:
	pcalau12i	$a0, %pc_hi20(report_perf)
	ld.bu	$a0, $a0, %pc_lo12(report_perf)
	andi	$a0, $a0, 8
	beqz	$a0, .LBB0_69
# %bb.68:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB0_69:
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fs1, $fs2, $fa0
	pcaddu18i	$ra, %call36(timer)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(timer_refine_cc)
	fld.d	$fa1, $a0, %pc_lo12(timer_refine_cc)
	fsub.d	$fa0, $fa0, $fs0
	fsub.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, %pc_lo12(timer_refine_cc)
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	refine, .Lfunc_end0-refine
                                        # -- End function
	.globl	reset_all                       # -- Begin function reset_all
	.p2align	5
	.type	reset_all,@function
reset_all:                              # @reset_all
# %bb.0:
	addi.d	$sp, $sp, -16
	pcalau12i	$a0, %pc_hi20(sorted_index)
	ld.d	$a0, $a0, %pc_lo12(sorted_index)
	pcalau12i	$a1, %pc_hi20(num_refine)
	ld.w	$a4, $a1, %pc_lo12(num_refine)
	addi.d	$a3, $a0, 4
	slli.d	$a0, $a4, 2
	ldx.w	$a5, $a3, $a0
	ori	$a2, $zero, 1
	pcalau12i	$a0, %pc_hi20(blocks)
	blt	$a5, $a2, .LBB1_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a5, %pc_hi20(sorted_list)
	ld.d	$a7, $a5, %pc_lo12(sorted_list)
	move	$a5, $zero
	ld.d	$a6, $a0, %pc_lo12(blocks)
	addi.d	$a7, $a7, 4
	addi.w	$t0, $zero, -1
	lu32i.d	$t0, 0
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	slli.d	$t1, $a4, 2
	ldx.w	$t1, $a3, $t1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 8
	bge	$a5, $t1, .LBB1_5
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a7, 0
	alsl.d	$t1, $t1, $t1, 1
	slli.d	$t1, $t1, 6
	ldx.w	$t2, $a6, $t1
	bltz	$t2, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	add.d	$a4, $a6, $t1
	st.w	$t0, $a4, 8
	ld.w	$a4, $a1, %pc_lo12(num_refine)
	b	.LBB1_2
.LBB1_5:                                # %.preheader25
	pcalau12i	$a1, %pc_hi20(max_active_parent)
	ld.w	$a3, $a1, %pc_lo12(max_active_parent)
	blt	$a3, $a2, .LBB1_38
# %bb.6:                                # %.lr.ph31
	pcalau12i	$a2, %pc_hi20(parents)
	ld.d	$a3, $a2, %pc_lo12(parents)
	move	$a2, $zero
	addi.d	$a3, $a3, 28
	vrepli.b	$vr0, -1
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 15
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$a6, $a1, %pc_lo12(max_active_parent)
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 100
	bge	$a2, $a6, .LBB1_38
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, -28
	bltz	$a6, .LBB1_7
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	ld.w	$t0, $a3, -4
	ld.w	$a7, $a3, 0
	nor	$a6, $t0, $zero
	srai.d	$t1, $a6, 31
	ld.w	$a6, $a3, 4
	slti	$t2, $a7, 0
	vld	$vr1, $a3, 8
	masknez	$t1, $t1, $t2
	slti	$t2, $a6, 0
	masknez	$t5, $t1, $t2
	vslt.w	$vr1, $vr0, $vr1
	vpickve2gr.w	$t1, $vr1, 0
	andi	$t6, $t1, 1
	vpickve2gr.w	$t2, $vr1, 1
	andi	$t3, $t2, 1
	vpickve2gr.w	$t2, $vr1, 2
	andi	$t7, $t2, 1
	vpickve2gr.w	$t4, $vr1, 3
	andi	$t8, $t4, 1
	maskeqz	$t5, $t5, $t6
	ld.w	$t6, $a3, 24
	maskeqz	$t5, $t5, $t3
	maskeqz	$t5, $t5, $t7
	maskeqz	$t5, $t5, $t8
	st.w	$t5, $a3, -8
	bge	$a4, $t6, .LBB1_13
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=1
	bstrins.d	$t1, $t3, 63, 1
	bstrins.d	$t1, $t2, 2, 2
	slli.d	$t2, $t4, 3
	or	$t1, $t1, $t2
	andi	$t1, $t1, 15
	bne	$t1, $a5, .LBB1_14
# %bb.11:                               #   in Loop: Header=BB1_8 Depth=1
	or	$a6, $a7, $a6
	bltz	$a6, .LBB1_14
# %bb.12:                               #   in Loop: Header=BB1_8 Depth=1
	blt	$a4, $t0, .LBB1_7
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_13:                               # %.thread
                                        #   in Loop: Header=BB1_8 Depth=1
	st.w	$zero, $a3, -8
.LBB1_14:                               # %.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a6, $a0, %pc_lo12(blocks)
	bltz	$t0, .LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_8 Depth=1
	alsl.d	$t0, $t0, $t0, 1
	slli.d	$t0, $t0, 6
	add.d	$t0, $a6, $t0
	ld.w	$t1, $t0, 8
	beq	$t1, $a4, .LBB1_19
.LBB1_16:                               #   in Loop: Header=BB1_8 Depth=1
	bltz	$a7, .LBB1_20
.LBB1_17:                               #   in Loop: Header=BB1_8 Depth=1
	alsl.d	$a7, $a7, $a7, 1
	slli.d	$a7, $a7, 6
	add.d	$a7, $a6, $a7
	ld.w	$t0, $a7, 8
	bne	$t0, $a4, .LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a7, $a7, 8
	st.w	$zero, $a7, 0
	b	.LBB1_20
.LBB1_19:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a7, $t0, 8
	st.w	$zero, $a7, 0
	ld.w	$a7, $a3, 0
	bgez	$a7, .LBB1_17
	.p2align	4, , 16
.LBB1_20:                               #   in Loop: Header=BB1_8 Depth=1
	ld.w	$a7, $a3, 4
	bltz	$a7, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_8 Depth=1
	alsl.d	$a7, $a7, $a7, 1
	slli.d	$a7, $a7, 6
	add.d	$a7, $a6, $a7
	ld.w	$t0, $a7, 8
	beq	$t0, $a4, .LBB1_25
.LBB1_22:                               #   in Loop: Header=BB1_8 Depth=1
	ld.w	$a7, $a3, 8
	bltz	$a7, .LBB1_26
.LBB1_23:                               #   in Loop: Header=BB1_8 Depth=1
	alsl.d	$a7, $a7, $a7, 1
	slli.d	$a7, $a7, 6
	add.d	$a7, $a6, $a7
	ld.w	$t0, $a7, 8
	bne	$t0, $a4, .LBB1_26
# %bb.24:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a7, $a7, 8
	st.w	$zero, $a7, 0
	b	.LBB1_26
.LBB1_25:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a7, $a7, 8
	st.w	$zero, $a7, 0
	ld.w	$a7, $a3, 8
	bgez	$a7, .LBB1_23
	.p2align	4, , 16
.LBB1_26:                               #   in Loop: Header=BB1_8 Depth=1
	ld.w	$a7, $a3, 12
	bltz	$a7, .LBB1_28
# %bb.27:                               #   in Loop: Header=BB1_8 Depth=1
	alsl.d	$a7, $a7, $a7, 1
	slli.d	$a7, $a7, 6
	add.d	$a7, $a6, $a7
	ld.w	$t0, $a7, 8
	beq	$t0, $a4, .LBB1_31
.LBB1_28:                               #   in Loop: Header=BB1_8 Depth=1
	ld.w	$a7, $a3, 16
	bltz	$a7, .LBB1_32
.LBB1_29:                               #   in Loop: Header=BB1_8 Depth=1
	alsl.d	$a7, $a7, $a7, 1
	slli.d	$a7, $a7, 6
	add.d	$a7, $a6, $a7
	ld.w	$t0, $a7, 8
	bne	$t0, $a4, .LBB1_32
# %bb.30:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a7, $a7, 8
	st.w	$zero, $a7, 0
	b	.LBB1_32
.LBB1_31:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a7, $a7, 8
	st.w	$zero, $a7, 0
	ld.w	$a7, $a3, 16
	bgez	$a7, .LBB1_29
	.p2align	4, , 16
.LBB1_32:                               #   in Loop: Header=BB1_8 Depth=1
	ld.w	$a7, $a3, 20
	bltz	$a7, .LBB1_34
# %bb.33:                               #   in Loop: Header=BB1_8 Depth=1
	alsl.d	$a7, $a7, $a7, 1
	slli.d	$a7, $a7, 6
	add.d	$a7, $a6, $a7
	ld.w	$t0, $a7, 8
	beq	$t0, $a4, .LBB1_37
.LBB1_34:                               #   in Loop: Header=BB1_8 Depth=1
	ld.w	$a7, $a3, 24
	bltz	$a7, .LBB1_7
.LBB1_35:                               #   in Loop: Header=BB1_8 Depth=1
	alsl.d	$a7, $a7, $a7, 1
	slli.d	$a7, $a7, 6
	add.d	$a6, $a6, $a7
	ld.w	$a7, $a6, 8
	bne	$a7, $a4, .LBB1_7
# %bb.36:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a6, $a6, 8
	st.w	$zero, $a6, 0
	b	.LBB1_7
.LBB1_37:                               #   in Loop: Header=BB1_8 Depth=1
	addi.d	$a7, $a7, 8
	st.w	$zero, $a7, 0
	ld.w	$a7, $a3, 24
	bgez	$a7, .LBB1_35
	b	.LBB1_7
.LBB1_38:                               # %._crit_edge
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	reset_all, .Lfunc_end1-reset_all
                                        # -- End function
	.globl	refine_level                    # -- Begin function refine_level
	.p2align	5
	.type	refine_level,@function
refine_level:                           # @refine_level
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
	pcalau12i	$a0, %pc_hi20(cur_max_level)
	ld.w	$t1, $a0, %pc_lo12(cur_max_level)
	pcalau12i	$a1, %pc_hi20(sorted_index)
	ld.d	$a2, $a1, %pc_lo12(sorted_index)
	pcalau12i	$a0, %pc_hi20(sorted_list)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(blocks)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	bltz	$t1, .LBB2_198
# %bb.1:                                # %.preheader194.lr.ph
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(parents)
	ori	$a5, $zero, 1
	addi.w	$a6, $zero, -1
	ori	$a7, $zero, 100
	ori	$t0, $zero, 24
	ori	$t2, $zero, 6
	pcalau12i	$t8, %pc_hi20(my_pe)
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %.split.us
                                        #   in Loop: Header=BB2_3 Depth=1
	blez	$t3, .LBB2_197
.LBB2_3:                                # %.preheader194
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
                                        #       Child Loop BB2_9 Depth 3
                                        #         Child Loop BB2_15 Depth 4
                                        #         Child Loop BB2_91 Depth 4
                                        #     Child Loop BB2_136 Depth 2
                                        #       Child Loop BB2_140 Depth 3
                                        #         Child Loop BB2_146 Depth 4
	move	$t3, $t1
	alsl.d	$t4, $t1, $a2, 2
	slli.d	$a0, $t1, 2
	addi.d	$t5, $t1, 1
	alsl.d	$t6, $t5, $a2, 2
	slli.d	$a3, $t5, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t7, $a1, %pc_lo12(sorted_list)
	ldx.w	$s1, $a2, $a0
	ldx.w	$a3, $a2, $a3
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(blocks)
	addi.d	$t1, $t1, -1
	addi.w	$fp, $t1, 0
	blt	$s1, $a3, .LBB2_6
# %bb.4:                                # %.preheader193
                                        #   in Loop: Header=BB2_3 Depth=1
	blt	$s1, $a3, .LBB2_136
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_5:                                # %._crit_edge
                                        #   in Loop: Header=BB2_6 Depth=2
	beqz	$s3, .LBB2_134
.LBB2_6:                                # %.preheader194.split
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_9 Depth 3
                                        #         Child Loop BB2_15 Depth 4
                                        #         Child Loop BB2_91 Depth 4
	ld.w	$s1, $t4, 0
	bge	$s1, $a3, .LBB2_134
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB2_6 Depth=2
	ld.d	$s2, $a4, %pc_lo12(parents)
	move	$s3, $zero
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_8:                                # %.loopexit189
                                        #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a3, $t6, 0
	addi.d	$s1, $s1, 1
	bge	$s1, $a3, .LBB2_5
.LBB2_9:                                #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_15 Depth 4
                                        #         Child Loop BB2_91 Depth 4
	alsl.d	$a0, $s1, $t7, 3
	ld.w	$a0, $a0, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	ldx.w	$a3, $s0, $a0
	bltz	$a3, .LBB2_8
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=3
	add.d	$s4, $s0, $a0
	ld.wu	$a0, $s4, 4
	bne	$t3, $a0, .LBB2_8
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s4, 8
	beq	$a0, $a5, .LBB2_52
# %bb.12:                               #   in Loop: Header=BB2_9 Depth=3
	bne	$a0, $a6, .LBB2_8
# %bb.13:                               # %.preheader191
                                        #   in Loop: Header=BB2_9 Depth=3
	ld.d	$s5, $a4, %pc_lo12(parents)
	move	$s6, $zero
	addi.d	$s7, $s4, 52
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %.loopexit186
                                        #   in Loop: Header=BB2_15 Depth=4
	addi.d	$s6, $s6, 4
	beq	$s6, $t0, .LBB2_8
.LBB2_15:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        #       Parent Loop BB2_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.wu	$a0, $s7, $s6
	bne	$t5, $a0, .LBB2_14
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a3, $s4, 16
	st.w	$zero, $s4, 8
	addi.w	$s3, $s3, 1
	beq	$a3, $a6, .LBB2_14
# %bb.17:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$s8, $s4, 20
	ld.w	$a0, $t8, %pc_lo12(my_pe)
	bne	$s8, $a0, .LBB2_14
# %bb.18:                               #   in Loop: Header=BB2_15 Depth=4
	mul.d	$a0, $a3, $a7
	add.d	$a3, $s5, $a0
	ld.w	$a0, $a3, 20
	beq	$a0, $a6, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 56
	beq	$a0, $s8, .LBB2_21
	b	.LBB2_23
.LBB2_20:                               #   in Loop: Header=BB2_15 Depth=4
	st.w	$zero, $a3, 20
	ld.w	$s8, $t8, %pc_lo12(my_pe)
	ld.w	$a0, $a3, 56
	bne	$a0, $s8, .LBB2_23
.LBB2_21:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 24
	bltz	$a0, .LBB2_23
# %bb.22:                               #   in Loop: Header=BB2_15 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	beq	$a1, $a6, .LBB2_27
.LBB2_23:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 60
	bne	$a0, $s8, .LBB2_28
.LBB2_24:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 28
	bltz	$a0, .LBB2_28
# %bb.25:                               #   in Loop: Header=BB2_15 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	bne	$a1, $a6, .LBB2_28
# %bb.26:                               #   in Loop: Header=BB2_15 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s8, $t8, %pc_lo12(my_pe)
	b	.LBB2_28
.LBB2_27:                               #   in Loop: Header=BB2_15 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s8, $t8, %pc_lo12(my_pe)
	ld.w	$a0, $a3, 60
	beq	$a0, $s8, .LBB2_24
.LBB2_28:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 64
	bne	$a0, $s8, .LBB2_31
# %bb.29:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 32
	bltz	$a0, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_15 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	beq	$a1, $a6, .LBB2_35
.LBB2_31:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 68
	bne	$a0, $s8, .LBB2_36
.LBB2_32:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 36
	bltz	$a0, .LBB2_36
# %bb.33:                               #   in Loop: Header=BB2_15 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	bne	$a1, $a6, .LBB2_36
# %bb.34:                               #   in Loop: Header=BB2_15 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s8, $t8, %pc_lo12(my_pe)
	b	.LBB2_36
.LBB2_35:                               #   in Loop: Header=BB2_15 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s8, $t8, %pc_lo12(my_pe)
	ld.w	$a0, $a3, 68
	beq	$a0, $s8, .LBB2_32
.LBB2_36:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 72
	bne	$a0, $s8, .LBB2_39
# %bb.37:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 40
	bltz	$a0, .LBB2_39
# %bb.38:                               #   in Loop: Header=BB2_15 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	beq	$a1, $a6, .LBB2_43
.LBB2_39:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 76
	bne	$a0, $s8, .LBB2_44
.LBB2_40:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 44
	bltz	$a0, .LBB2_44
# %bb.41:                               #   in Loop: Header=BB2_15 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	bne	$a1, $a6, .LBB2_44
# %bb.42:                               #   in Loop: Header=BB2_15 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s8, $t8, %pc_lo12(my_pe)
	b	.LBB2_44
.LBB2_43:                               #   in Loop: Header=BB2_15 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s8, $t8, %pc_lo12(my_pe)
	ld.w	$a0, $a3, 76
	beq	$a0, $s8, .LBB2_40
.LBB2_44:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 80
	bne	$a0, $s8, .LBB2_47
# %bb.45:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 48
	bltz	$a0, .LBB2_47
# %bb.46:                               #   in Loop: Header=BB2_15 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	beq	$a1, $a6, .LBB2_51
.LBB2_47:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 84
	bne	$a0, $s8, .LBB2_14
.LBB2_48:                               #   in Loop: Header=BB2_15 Depth=4
	ld.w	$a0, $a3, 52
	bltz	$a0, .LBB2_14
# %bb.49:                               #   in Loop: Header=BB2_15 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	bne	$a1, $a6, .LBB2_14
# %bb.50:                               #   in Loop: Header=BB2_15 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	b	.LBB2_14
.LBB2_51:                               #   in Loop: Header=BB2_15 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s8, $t8, %pc_lo12(my_pe)
	ld.w	$a0, $a3, 84
	beq	$a0, $s8, .LBB2_48
	b	.LBB2_14
.LBB2_52:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a3, $s4, 16
	beq	$a3, $a6, .LBB2_88
# %bb.53:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$s6, $s4, 20
	ld.w	$a0, $t8, %pc_lo12(my_pe)
	bne	$s6, $a0, .LBB2_88
# %bb.54:                               #   in Loop: Header=BB2_9 Depth=3
	mul.d	$a0, $a3, $a7
	add.d	$s5, $s2, $a0
	ld.w	$a0, $s5, 20
	beq	$a0, $a6, .LBB2_56
# %bb.55:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 56
	beq	$a0, $s6, .LBB2_57
	b	.LBB2_59
.LBB2_56:                               #   in Loop: Header=BB2_9 Depth=3
	st.w	$zero, $s5, 20
	ld.w	$s6, $t8, %pc_lo12(my_pe)
	ld.w	$a0, $s5, 56
	bne	$a0, $s6, .LBB2_59
.LBB2_57:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 24
	bltz	$a0, .LBB2_59
# %bb.58:                               #   in Loop: Header=BB2_9 Depth=3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a3, $a0, 8
	beq	$a3, $a6, .LBB2_63
.LBB2_59:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 60
	bne	$a0, $s6, .LBB2_64
.LBB2_60:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 28
	bltz	$a0, .LBB2_64
# %bb.61:                               #   in Loop: Header=BB2_9 Depth=3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a3, $a0, 8
	bne	$a3, $a6, .LBB2_64
# %bb.62:                               #   in Loop: Header=BB2_9 Depth=3
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s6, $t8, %pc_lo12(my_pe)
	addi.w	$s3, $s3, 1
	b	.LBB2_64
.LBB2_63:                               #   in Loop: Header=BB2_9 Depth=3
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s6, $t8, %pc_lo12(my_pe)
	addi.w	$s3, $s3, 1
	ld.w	$a0, $s5, 60
	beq	$a0, $s6, .LBB2_60
.LBB2_64:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 64
	bne	$a0, $s6, .LBB2_67
# %bb.65:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 32
	bltz	$a0, .LBB2_67
# %bb.66:                               #   in Loop: Header=BB2_9 Depth=3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a3, $a0, 8
	beq	$a3, $a6, .LBB2_71
.LBB2_67:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 68
	bne	$a0, $s6, .LBB2_72
.LBB2_68:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 36
	bltz	$a0, .LBB2_72
# %bb.69:                               #   in Loop: Header=BB2_9 Depth=3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a3, $a0, 8
	bne	$a3, $a6, .LBB2_72
# %bb.70:                               #   in Loop: Header=BB2_9 Depth=3
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s6, $t8, %pc_lo12(my_pe)
	addi.w	$s3, $s3, 1
	b	.LBB2_72
.LBB2_71:                               #   in Loop: Header=BB2_9 Depth=3
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s6, $t8, %pc_lo12(my_pe)
	addi.w	$s3, $s3, 1
	ld.w	$a0, $s5, 68
	beq	$a0, $s6, .LBB2_68
.LBB2_72:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 72
	bne	$a0, $s6, .LBB2_75
# %bb.73:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 40
	bltz	$a0, .LBB2_75
# %bb.74:                               #   in Loop: Header=BB2_9 Depth=3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a3, $a0, 8
	beq	$a3, $a6, .LBB2_79
.LBB2_75:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 76
	bne	$a0, $s6, .LBB2_80
.LBB2_76:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 44
	bltz	$a0, .LBB2_80
# %bb.77:                               #   in Loop: Header=BB2_9 Depth=3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a3, $a0, 8
	bne	$a3, $a6, .LBB2_80
# %bb.78:                               #   in Loop: Header=BB2_9 Depth=3
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s6, $t8, %pc_lo12(my_pe)
	addi.w	$s3, $s3, 1
	b	.LBB2_80
.LBB2_79:                               #   in Loop: Header=BB2_9 Depth=3
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s6, $t8, %pc_lo12(my_pe)
	addi.w	$s3, $s3, 1
	ld.w	$a0, $s5, 76
	beq	$a0, $s6, .LBB2_76
.LBB2_80:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 80
	bne	$a0, $s6, .LBB2_83
# %bb.81:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 48
	bltz	$a0, .LBB2_83
# %bb.82:                               #   in Loop: Header=BB2_9 Depth=3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a3, $a0, 8
	beq	$a3, $a6, .LBB2_87
.LBB2_83:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 84
	bne	$a0, $s6, .LBB2_88
.LBB2_84:                               #   in Loop: Header=BB2_9 Depth=3
	ld.w	$a0, $s5, 52
	bltz	$a0, .LBB2_88
# %bb.85:                               #   in Loop: Header=BB2_9 Depth=3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a3, $a0, 8
	bne	$a3, $a6, .LBB2_88
# %bb.86:                               #   in Loop: Header=BB2_9 Depth=3
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	addi.w	$s3, $s3, 1
	b	.LBB2_88
.LBB2_87:                               #   in Loop: Header=BB2_9 Depth=3
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s6, $t8, %pc_lo12(my_pe)
	addi.w	$s3, $s3, 1
	ld.w	$a0, $s5, 84
	beq	$a0, $s6, .LBB2_84
.LBB2_88:                               # %.loopexit190
                                        #   in Loop: Header=BB2_9 Depth=3
	ld.d	$s5, $a4, %pc_lo12(parents)
	move	$s6, $zero
	addi.d	$s7, $s4, 52
	addi.d	$s4, $s4, 76
	b	.LBB2_91
.LBB2_89:                               #   in Loop: Header=BB2_91 Depth=4
	move	$s3, $s8
	.p2align	4, , 16
.LBB2_90:                               # %.loopexit185
                                        #   in Loop: Header=BB2_91 Depth=4
	addi.d	$s6, $s6, 4
	addi.d	$s4, $s4, 16
	beq	$s6, $t0, .LBB2_8
.LBB2_91:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        #       Parent Loop BB2_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.wu	$a0, $s7, $s6
	bne	$t3, $a0, .LBB2_98
# %bb.92:                               #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $s4, 0
	bltz	$a0, .LBB2_90
# %bb.93:                               #   in Loop: Header=BB2_91 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a3, $s0, $a0
	ld.w	$a0, $a3, 8
	bne	$a0, $a6, .LBB2_90
# %bb.94:                               #   in Loop: Header=BB2_91 Depth=4
	ld.w	$ra, $a3, 16
	addi.d	$a0, $a3, 8
	st.w	$zero, $a0, 0
	addi.w	$s8, $s3, 1
	beq	$ra, $a6, .LBB2_89
# %bb.95:                               #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a3, $a3, 20
	ld.w	$a0, $t8, %pc_lo12(my_pe)
	bne	$a3, $a0, .LBB2_89
# %bb.96:                               #   in Loop: Header=BB2_91 Depth=4
	mul.d	$a0, $ra, $a7
	add.d	$ra, $s5, $a0
	ld.w	$a0, $ra, 20
	beq	$a0, $a6, .LBB2_102
# %bb.97:                               #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 56
	beq	$a0, $a3, .LBB2_103
	b	.LBB2_105
	.p2align	4, , 16
.LBB2_98:                               #   in Loop: Header=BB2_91 Depth=4
	addi.w	$a0, $a0, 0
	bne	$a0, $fp, .LBB2_90
# %bb.99:                               #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $s4, 0
	bltz	$a0, .LBB2_90
# %bb.100:                              #   in Loop: Header=BB2_91 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	beq	$a1, $a5, .LBB2_90
# %bb.101:                              #   in Loop: Header=BB2_91 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$a5, $a0, 0
	addi.w	$s3, $s3, 1
	b	.LBB2_90
.LBB2_102:                              #   in Loop: Header=BB2_91 Depth=4
	st.w	$zero, $ra, 20
	ld.w	$a3, $t8, %pc_lo12(my_pe)
	ld.w	$a0, $ra, 56
	bne	$a0, $a3, .LBB2_105
.LBB2_103:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 24
	bltz	$a0, .LBB2_105
# %bb.104:                              #   in Loop: Header=BB2_91 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	beq	$a1, $a6, .LBB2_109
.LBB2_105:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 60
	bne	$a0, $a3, .LBB2_110
.LBB2_106:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 28
	bltz	$a0, .LBB2_110
# %bb.107:                              #   in Loop: Header=BB2_91 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	bne	$a1, $a6, .LBB2_110
# %bb.108:                              #   in Loop: Header=BB2_91 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$a3, $t8, %pc_lo12(my_pe)
	addi.w	$s8, $s8, 1
	b	.LBB2_110
.LBB2_109:                              #   in Loop: Header=BB2_91 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$a3, $t8, %pc_lo12(my_pe)
	addi.w	$s8, $s3, 2
	ld.w	$a0, $ra, 60
	beq	$a0, $a3, .LBB2_106
.LBB2_110:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 64
	bne	$a0, $a3, .LBB2_113
# %bb.111:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 32
	bltz	$a0, .LBB2_113
# %bb.112:                              #   in Loop: Header=BB2_91 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	beq	$a1, $a6, .LBB2_117
.LBB2_113:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 68
	bne	$a0, $a3, .LBB2_118
.LBB2_114:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 36
	bltz	$a0, .LBB2_118
# %bb.115:                              #   in Loop: Header=BB2_91 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	bne	$a1, $a6, .LBB2_118
# %bb.116:                              #   in Loop: Header=BB2_91 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$a3, $t8, %pc_lo12(my_pe)
	addi.w	$s8, $s8, 1
	b	.LBB2_118
.LBB2_117:                              #   in Loop: Header=BB2_91 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$a3, $t8, %pc_lo12(my_pe)
	addi.w	$s8, $s8, 1
	ld.w	$a0, $ra, 68
	beq	$a0, $a3, .LBB2_114
.LBB2_118:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 72
	bne	$a0, $a3, .LBB2_121
# %bb.119:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 40
	bltz	$a0, .LBB2_121
# %bb.120:                              #   in Loop: Header=BB2_91 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	beq	$a1, $a6, .LBB2_125
.LBB2_121:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 76
	bne	$a0, $a3, .LBB2_126
.LBB2_122:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 44
	bltz	$a0, .LBB2_126
# %bb.123:                              #   in Loop: Header=BB2_91 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	bne	$a1, $a6, .LBB2_126
# %bb.124:                              #   in Loop: Header=BB2_91 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$a3, $t8, %pc_lo12(my_pe)
	addi.w	$s8, $s8, 1
	b	.LBB2_126
.LBB2_125:                              #   in Loop: Header=BB2_91 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$a3, $t8, %pc_lo12(my_pe)
	addi.w	$s8, $s8, 1
	ld.w	$a0, $ra, 76
	beq	$a0, $a3, .LBB2_122
.LBB2_126:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 80
	bne	$a0, $a3, .LBB2_129
# %bb.127:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 48
	bltz	$a0, .LBB2_129
# %bb.128:                              #   in Loop: Header=BB2_91 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	beq	$a1, $a6, .LBB2_133
.LBB2_129:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 84
	bne	$a0, $a3, .LBB2_89
.LBB2_130:                              #   in Loop: Header=BB2_91 Depth=4
	ld.w	$a0, $ra, 52
	bltz	$a0, .LBB2_89
# %bb.131:                              #   in Loop: Header=BB2_91 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	bne	$a1, $a6, .LBB2_89
# %bb.132:                              #   in Loop: Header=BB2_91 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	addi.w	$s3, $s8, 1
	b	.LBB2_90
.LBB2_133:                              #   in Loop: Header=BB2_91 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$a3, $t8, %pc_lo12(my_pe)
	addi.w	$s8, $s8, 1
	ld.w	$a0, $ra, 84
	bne	$a0, $a3, .LBB2_89
	b	.LBB2_130
	.p2align	4, , 16
.LBB2_134:                              # %.preheader193.loopexit
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t7, $a0, %pc_lo12(sorted_list)
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(blocks)
	ld.w	$s1, $t4, 0
	blt	$s1, $a3, .LBB2_136
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_135:                              # %._crit_edge221
                                        #   in Loop: Header=BB2_136 Depth=2
	beqz	$s2, .LBB2_2
.LBB2_136:                              # %.preheader193.split223
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_140 Depth 3
                                        #         Child Loop BB2_146 Depth 4
	ld.w	$s1, $t4, 0
	bge	$s1, $a3, .LBB2_2
# %bb.137:                              # %.lr.ph220.preheader
                                        #   in Loop: Header=BB2_136 Depth=2
	move	$s2, $zero
	b	.LBB2_140
.LBB2_138:                              # %.loopexit188.loopexit
                                        #   in Loop: Header=BB2_140 Depth=3
	ld.w	$a3, $t6, 0
	.p2align	4, , 16
.LBB2_139:                              # %.loopexit188
                                        #   in Loop: Header=BB2_140 Depth=3
	addi.d	$s1, $s1, 1
	bge	$s1, $a3, .LBB2_135
.LBB2_140:                              # %.lr.ph220
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_136 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_146 Depth 4
	alsl.d	$a0, $s1, $t7, 3
	ld.w	$a0, $a0, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	ldx.w	$a1, $s0, $a0
	bltz	$a1, .LBB2_139
# %bb.141:                              #   in Loop: Header=BB2_140 Depth=3
	add.d	$s6, $s0, $a0
	ld.wu	$a0, $s6, 4
	bne	$t3, $a0, .LBB2_139
# %bb.142:                              #   in Loop: Header=BB2_140 Depth=3
	ld.w	$a0, $s6, 8
	bnez	$a0, .LBB2_139
# %bb.143:                              # %.preheader187
                                        #   in Loop: Header=BB2_140 Depth=3
	ld.d	$s3, $a4, %pc_lo12(parents)
	move	$s4, $zero
	addi.d	$s5, $s6, 52
	addi.d	$s6, $s6, 76
	b	.LBB2_146
	.p2align	4, , 16
.LBB2_144:                              # %.loopexit
                                        #   in Loop: Header=BB2_146 Depth=4
	st.w	$zero, $a0, 28
.LBB2_145:                              # %.loopexit
                                        #   in Loop: Header=BB2_146 Depth=4
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 16
	beq	$s4, $t2, .LBB2_138
.LBB2_146:                              #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_136 Depth=2
                                        #       Parent Loop BB2_140 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $s5, 0
	bne	$a0, $fp, .LBB2_159
# %bb.147:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $s6, 0
	bltz	$a0, .LBB2_145
# %bb.148:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a3, $s0, $a0
	ld.w	$a0, $a3, 8
	bne	$a0, $a6, .LBB2_145
# %bb.149:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$s7, $a3, 16
	addi.d	$a0, $a3, 8
	st.w	$zero, $a0, 0
	addi.w	$s2, $s2, 1
	beq	$s7, $a6, .LBB2_145
# %bb.150:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 20
	ld.w	$a1, $t8, %pc_lo12(my_pe)
	bne	$a0, $a1, .LBB2_145
# %bb.151:                              #   in Loop: Header=BB2_146 Depth=4
	mul.d	$a0, $s7, $a7
	add.d	$a3, $s3, $a0
	ld.w	$a0, $a3, 20
	bne	$a0, $a6, .LBB2_145
# %bb.152:                              #   in Loop: Header=BB2_146 Depth=4
	st.w	$zero, $a3, 20
	ld.w	$s8, $a3, 56
	ld.w	$s7, $t8, %pc_lo12(my_pe)
	bne	$s8, $s7, .LBB2_155
# %bb.153:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 24
	bltz	$a0, .LBB2_171
# %bb.154:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	move	$s7, $s8
	beq	$a1, $a6, .LBB2_172
.LBB2_155:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 60
	bne	$a0, $s7, .LBB2_173
.LBB2_156:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 28
	bltz	$a0, .LBB2_173
# %bb.157:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	bne	$a1, $a6, .LBB2_173
# %bb.158:                              #   in Loop: Header=BB2_146 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s7, $t8, %pc_lo12(my_pe)
	b	.LBB2_173
	.p2align	4, , 16
.LBB2_159:                              #   in Loop: Header=BB2_146 Depth=4
	bstrpick.d	$a0, $a0, 31, 0
	bne	$t3, $a0, .LBB2_162
# %bb.160:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $s6, 0
	bltz	$a0, .LBB2_145
# %bb.161:                              #   in Loop: Header=BB2_146 Depth=4
	xori	$a1, $s4, 1
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	alsl.d	$a0, $a1, $a0, 2
	b	.LBB2_144
	.p2align	4, , 16
.LBB2_162:                              #   in Loop: Header=BB2_146 Depth=4
	bne	$t5, $a0, .LBB2_145
# %bb.163:                              # %.preheader183
                                        #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $s6, 0
	xori	$a3, $s4, 1
	bltz	$a0, .LBB2_165
# %bb.164:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	alsl.d	$a0, $a3, $a0, 2
	st.w	$zero, $a0, 28
.LBB2_165:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $s6, 4
	bltz	$a0, .LBB2_167
# %bb.166:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	alsl.d	$a0, $a3, $a0, 2
	st.w	$zero, $a0, 28
.LBB2_167:                              # %.preheader183.1
                                        #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $s6, 8
	bltz	$a0, .LBB2_169
# %bb.168:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	alsl.d	$a0, $a3, $a0, 2
	st.w	$zero, $a0, 28
.LBB2_169:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $s6, 12
	bltz	$a0, .LBB2_145
# %bb.170:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	alsl.d	$a0, $a3, $a0, 2
	b	.LBB2_144
.LBB2_171:                              #   in Loop: Header=BB2_146 Depth=4
	move	$s7, $s8
	ld.w	$a0, $a3, 60
	beq	$a0, $s7, .LBB2_156
	b	.LBB2_173
.LBB2_172:                              #   in Loop: Header=BB2_146 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s7, $t8, %pc_lo12(my_pe)
	ld.w	$a0, $a3, 60
	beq	$a0, $s7, .LBB2_156
.LBB2_173:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 64
	bne	$a0, $s7, .LBB2_176
# %bb.174:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 32
	bltz	$a0, .LBB2_176
# %bb.175:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	beq	$a1, $a6, .LBB2_180
.LBB2_176:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 68
	bne	$a0, $s7, .LBB2_181
.LBB2_177:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 36
	bltz	$a0, .LBB2_181
# %bb.178:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	bne	$a1, $a6, .LBB2_181
# %bb.179:                              #   in Loop: Header=BB2_146 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s7, $t8, %pc_lo12(my_pe)
	b	.LBB2_181
.LBB2_180:                              #   in Loop: Header=BB2_146 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s7, $t8, %pc_lo12(my_pe)
	ld.w	$a0, $a3, 68
	beq	$a0, $s7, .LBB2_177
.LBB2_181:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 72
	bne	$a0, $s7, .LBB2_184
# %bb.182:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 40
	bltz	$a0, .LBB2_184
# %bb.183:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	beq	$a1, $a6, .LBB2_188
.LBB2_184:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 76
	bne	$a0, $s7, .LBB2_189
.LBB2_185:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 44
	bltz	$a0, .LBB2_189
# %bb.186:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	bne	$a1, $a6, .LBB2_189
# %bb.187:                              #   in Loop: Header=BB2_146 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s7, $t8, %pc_lo12(my_pe)
	b	.LBB2_189
.LBB2_188:                              #   in Loop: Header=BB2_146 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s7, $t8, %pc_lo12(my_pe)
	ld.w	$a0, $a3, 76
	beq	$a0, $s7, .LBB2_185
.LBB2_189:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 80
	bne	$a0, $s7, .LBB2_192
# %bb.190:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 48
	bltz	$a0, .LBB2_192
# %bb.191:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	beq	$a1, $a6, .LBB2_196
.LBB2_192:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 84
	bne	$a0, $s7, .LBB2_145
.LBB2_193:                              #   in Loop: Header=BB2_146 Depth=4
	ld.w	$a0, $a3, 52
	bltz	$a0, .LBB2_145
# %bb.194:                              #   in Loop: Header=BB2_146 Depth=4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 8
	bne	$a1, $a6, .LBB2_145
# %bb.195:                              #   in Loop: Header=BB2_146 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	b	.LBB2_145
.LBB2_196:                              #   in Loop: Header=BB2_146 Depth=4
	addi.d	$a0, $a0, 8
	st.w	$zero, $a0, 0
	ld.w	$s7, $t8, %pc_lo12(my_pe)
	ld.w	$a0, $a3, 84
	bne	$a0, $s7, .LBB2_145
	b	.LBB2_193
.LBB2_197:                              # %.preheader.loopexit
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(sorted_index)
.LBB2_198:                              # %.preheader
	pcalau12i	$a0, %pc_hi20(num_refine)
	ld.w	$a0, $a0, %pc_lo12(num_refine)
	alsl.d	$a0, $a0, $a2, 2
	ld.w	$a2, $a0, 4
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB2_201
# %bb.199:                              # %.lr.ph227
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(blocks)
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(sorted_list)
	bne	$a2, $a0, .LBB2_202
# %bb.200:
	move	$a4, $zero
	move	$a0, $zero
	b	.LBB2_205
.LBB2_201:
	move	$a0, $zero
	b	.LBB2_207
.LBB2_202:                              # %vector.ph
	move	$a0, $zero
	move	$a5, $zero
	bstrpick.d	$a4, $a2, 30, 1
	slli.d	$a4, $a4, 1
	addi.d	$a6, $a3, 12
	ori	$a7, $zero, 192
	move	$t0, $a4
	.p2align	4, , 16
.LBB2_203:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a6, -8
	ld.w	$t2, $a6, 0
	mul.d	$t1, $t1, $a7
	add.d	$t1, $a1, $t1
	mul.d	$t2, $t2, $a7
	ld.w	$t1, $t1, 8
	add.d	$t2, $a1, $t2
	ld.w	$t2, $t2, 8
	addi.d	$t1, $t1, -1
	sltui	$t1, $t1, 1
	addi.d	$t2, $t2, -1
	sltui	$t2, $t2, 1
	add.d	$a0, $a0, $t1
	add.d	$a5, $a5, $t2
	addi.d	$t0, $t0, -2
	addi.d	$a6, $a6, 16
	bnez	$t0, .LBB2_203
# %bb.204:                              # %middle.block
	add.w	$a0, $a5, $a0
	beq	$a4, $a2, .LBB2_207
.LBB2_205:                              # %scalar.ph.preheader
	alsl.d	$a3, $a4, $a3, 3
	addi.d	$a3, $a3, 4
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB2_206:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	alsl.d	$a4, $a4, $a4, 1
	slli.d	$a4, $a4, 6
	add.d	$a4, $a1, $a4
	ld.w	$a4, $a4, 8
	addi.d	$a4, $a4, -1
	sltui	$a4, $a4, 1
	add.w	$a0, $a0, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB2_206
.LBB2_207:                              # %._crit_edge228
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
.Lfunc_end2:
	.size	refine_level, .Lfunc_end2-refine_level
                                        # -- End function
	.type	block_change,@object            # @block_change
	.comm	block_change,4,4
	.type	num_refine,@object              # @num_refine
	.comm	num_refine,4,4
	.type	num_blocks,@object              # @num_blocks
	.comm	num_blocks,8,8
	.type	cur_max_level,@object           # @cur_max_level
	.comm	cur_max_level,4,4
	.type	uniform_refine,@object          # @uniform_refine
	.comm	uniform_refine,4,4
	.type	sorted_index,@object            # @sorted_index
	.comm	sorted_index,8,8
	.type	sorted_list,@object             # @sorted_list
	.comm	sorted_list,8,8
	.type	blocks,@object                  # @blocks
	.comm	blocks,8,8
	.type	timer_refine_co,@object         # @timer_refine_co
	.comm	timer_refine_co,8,8
	.type	timer_refine_mr,@object         # @timer_refine_mr
	.comm	timer_refine_mr,8,8
	.type	timer_refine_sb,@object         # @timer_refine_sb
	.comm	timer_refine_sb,8,8
	.type	timer_cb_all,@object            # @timer_cb_all
	.comm	timer_cb_all,8,8
	.type	target_active,@object           # @target_active
	.comm	target_active,4,4
	.type	target_max,@object              # @target_max
	.comm	target_max,4,4
	.type	target_min,@object              # @target_min
	.comm	target_min,4,4
	.type	my_pe,@object                   # @my_pe
	.comm	my_pe,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Number of blocks at level %d before target %d is %d\n"
	.size	.L.str, 53

	.type	global_active,@object           # @global_active
	.comm	global_active,4,4
	.type	num_pes,@object                 # @num_pes
	.comm	num_pes,4,4
	.type	timer_target_all,@object        # @timer_target_all
	.comm	timer_target_all,8,8
	.type	num_active,@object              # @num_active
	.comm	num_active,4,4
	.type	local_max_b,@object             # @local_max_b
	.comm	local_max_b,4,4
	.type	global_max_b,@object            # @global_max_b
	.comm	global_max_b,4,4
	.type	report_perf,@object             # @report_perf
	.comm	report_perf,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Number of blocks at level %d at timestep %d is %d\n"
	.size	.L.str.2, 51

	.type	timer_refine_cc,@object         # @timer_refine_cc
	.comm	timer_refine_cc,8,8
	.type	parents,@object                 # @parents
	.comm	parents,8,8
	.type	max_active_parent,@object       # @max_active_parent
	.comm	max_active_parent,4,4
	.type	max_num_blocks,@object          # @max_num_blocks
	.comm	max_num_blocks,4,4
	.type	x_block_size,@object            # @x_block_size
	.comm	x_block_size,4,4
	.type	y_block_size,@object            # @y_block_size
	.comm	y_block_size,4,4
	.type	z_block_size,@object            # @z_block_size
	.comm	z_block_size,4,4
	.type	num_vars,@object                # @num_vars
	.comm	num_vars,4,4
	.type	comm_vars,@object               # @comm_vars
	.comm	comm_vars,4,4
	.type	init_block_x,@object            # @init_block_x
	.comm	init_block_x,4,4
	.type	init_block_y,@object            # @init_block_y
	.comm	init_block_y,4,4
	.type	init_block_z,@object            # @init_block_z
	.comm	init_block_z,4,4
	.type	reorder,@object                 # @reorder
	.comm	reorder,4,4
	.type	npx,@object                     # @npx
	.comm	npx,4,4
	.type	npy,@object                     # @npy
	.comm	npy,4,4
	.type	npz,@object                     # @npz
	.comm	npz,4,4
	.type	inbalance,@object               # @inbalance
	.comm	inbalance,4,4
	.type	refine_freq,@object             # @refine_freq
	.comm	refine_freq,4,4
	.type	report_diffusion,@object        # @report_diffusion
	.comm	report_diffusion,4,4
	.type	checksum_freq,@object           # @checksum_freq
	.comm	checksum_freq,4,4
	.type	stages_per_ts,@object           # @stages_per_ts
	.comm	stages_per_ts,4,4
	.type	error_tol,@object               # @error_tol
	.comm	error_tol,4,4
	.type	num_tsteps,@object              # @num_tsteps
	.comm	num_tsteps,4,4
	.type	stencil,@object                 # @stencil
	.comm	stencil,4,4
	.type	plot_freq,@object               # @plot_freq
	.comm	plot_freq,4,4
	.type	lb_opt,@object                  # @lb_opt
	.comm	lb_opt,4,4
	.type	code,@object                    # @code
	.comm	code,4,4
	.type	permute,@object                 # @permute
	.comm	permute,4,4
	.type	nonblocking,@object             # @nonblocking
	.comm	nonblocking,4,4
	.type	refine_ghost,@object            # @refine_ghost
	.comm	refine_ghost,4,4
	.type	max_num_parents,@object         # @max_num_parents
	.comm	max_num_parents,4,4
	.type	num_parents,@object             # @num_parents
	.comm	num_parents,4,4
	.type	block_start,@object             # @block_start
	.comm	block_start,8,8
	.type	max_active_block,@object        # @max_active_block
	.comm	max_active_block,4,4
	.type	x_block_half,@object            # @x_block_half
	.comm	x_block_half,4,4
	.type	y_block_half,@object            # @y_block_half
	.comm	y_block_half,4,4
	.type	z_block_half,@object            # @z_block_half
	.comm	z_block_half,4,4
	.type	tol,@object                     # @tol
	.comm	tol,8,8
	.type	grid_sum,@object                # @grid_sum
	.comm	grid_sum,8,8
	.type	p8,@object                      # @p8
	.comm	p8,8,8
	.type	p2,@object                      # @p2
	.comm	p2,8,8
	.type	mesh_size,@object               # @mesh_size
	.comm	mesh_size,12,4
	.type	max_mesh_size,@object           # @max_mesh_size
	.comm	max_mesh_size,4,4
	.type	from,@object                    # @from
	.comm	from,8,8
	.type	to,@object                      # @to
	.comm	to,8,8
	.type	msg_len,@object                 # @msg_len
	.comm	msg_len,48,4
	.type	num_objects,@object             # @num_objects
	.comm	num_objects,4,4
	.type	objects,@object                 # @objects
	.comm	objects,8,8
	.type	average,@object                 # @average
	.comm	average,1024,8
	.type	stddev,@object                  # @stddev
	.comm	stddev,1024,8
	.type	minimum,@object                 # @minimum
	.comm	minimum,1024,8
	.type	maximum,@object                 # @maximum
	.comm	maximum,1024,8
	.type	timer_all,@object               # @timer_all
	.comm	timer_all,8,8
	.type	timer_comm_all,@object          # @timer_comm_all
	.comm	timer_comm_all,8,8
	.type	timer_comm_dir,@object          # @timer_comm_dir
	.comm	timer_comm_dir,24,8
	.type	timer_comm_same,@object         # @timer_comm_same
	.comm	timer_comm_same,24,8
	.type	timer_comm_diff,@object         # @timer_comm_diff
	.comm	timer_comm_diff,24,8
	.type	timer_comm_bc,@object           # @timer_comm_bc
	.comm	timer_comm_bc,24,8
	.type	timer_calc_all,@object          # @timer_calc_all
	.comm	timer_calc_all,8,8
	.type	timer_cs_all,@object            # @timer_cs_all
	.comm	timer_cs_all,8,8
	.type	timer_cs_calc,@object           # @timer_cs_calc
	.comm	timer_cs_calc,8,8
	.type	timer_refine_all,@object        # @timer_refine_all
	.comm	timer_refine_all,8,8
	.type	timer_target_rb,@object         # @timer_target_rb
	.comm	timer_target_rb,8,8
	.type	timer_target_dc,@object         # @timer_target_dc
	.comm	timer_target_dc,8,8
	.type	timer_target_cb,@object         # @timer_target_cb
	.comm	timer_target_cb,8,8
	.type	timer_target_ab,@object         # @timer_target_ab
	.comm	timer_target_ab,8,8
	.type	timer_target_da,@object         # @timer_target_da
	.comm	timer_target_da,8,8
	.type	timer_target_sb,@object         # @timer_target_sb
	.comm	timer_target_sb,8,8
	.type	timer_plot,@object              # @timer_plot
	.comm	timer_plot,8,8
	.type	total_blocks,@object            # @total_blocks
	.comm	total_blocks,8,8
	.type	nb_min,@object                  # @nb_min
	.comm	nb_min,4,4
	.type	nb_max,@object                  # @nb_max
	.comm	nb_max,4,4
	.type	nrs,@object                     # @nrs
	.comm	nrs,4,4
	.type	nps,@object                     # @nps
	.comm	nps,4,4
	.type	num_refined,@object             # @num_refined
	.comm	num_refined,4,4
	.type	num_reformed,@object            # @num_reformed
	.comm	num_reformed,4,4
	.type	counter_bc,@object              # @counter_bc
	.comm	counter_bc,12,4
	.type	counter_same,@object            # @counter_same
	.comm	counter_same,12,4
	.type	counter_diff,@object            # @counter_diff
	.comm	counter_diff,12,4
	.type	counter_malloc,@object          # @counter_malloc
	.comm	counter_malloc,4,4
	.type	size_malloc,@object             # @size_malloc
	.comm	size_malloc,8,8
	.type	counter_malloc_init,@object     # @counter_malloc_init
	.comm	counter_malloc_init,4,4
	.type	size_malloc_init,@object        # @size_malloc_init
	.comm	size_malloc_init,8,8
	.type	total_red,@object               # @total_red
	.comm	total_red,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
