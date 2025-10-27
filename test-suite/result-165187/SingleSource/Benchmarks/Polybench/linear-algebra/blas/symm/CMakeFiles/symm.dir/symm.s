	.file	"symm.c"
	.text
	.globl	polybench_flush_cache           # -- Begin function polybench_flush_cache
	.p2align	5
	.type	polybench_flush_cache,@function
polybench_flush_cache:                  # @polybench_flush_cache
# %bb.0:
	ret
.Lfunc_end0:
	.size	polybench_flush_cache, .Lfunc_end0-polybench_flush_cache
                                        # -- End function
	.globl	polybench_prepare_instruments   # -- Begin function polybench_prepare_instruments
	.p2align	5
	.type	polybench_prepare_instruments,@function
polybench_prepare_instruments:          # @polybench_prepare_instruments
# %bb.0:
	ret
.Lfunc_end1:
	.size	polybench_prepare_instruments, .Lfunc_end1-polybench_prepare_instruments
                                        # -- End function
	.globl	polybench_timer_start           # -- Begin function polybench_timer_start
	.p2align	5
	.type	polybench_timer_start,@function
polybench_timer_start:                  # @polybench_timer_start
# %bb.0:
	pcalau12i	$a0, %pc_hi20(polybench_t_start)
	st.d	$zero, $a0, %pc_lo12(polybench_t_start)
	ret
.Lfunc_end2:
	.size	polybench_timer_start, .Lfunc_end2-polybench_timer_start
                                        # -- End function
	.globl	polybench_timer_stop            # -- Begin function polybench_timer_stop
	.p2align	5
	.type	polybench_timer_stop,@function
polybench_timer_stop:                   # @polybench_timer_stop
# %bb.0:
	pcalau12i	$a0, %pc_hi20(polybench_t_end)
	st.d	$zero, $a0, %pc_lo12(polybench_t_end)
	ret
.Lfunc_end3:
	.size	polybench_timer_stop, .Lfunc_end3-polybench_timer_stop
                                        # -- End function
	.globl	polybench_timer_print           # -- Begin function polybench_timer_print
	.p2align	5
	.type	polybench_timer_print,@function
polybench_timer_print:                  # @polybench_timer_print
# %bb.0:
	pcalau12i	$a0, %pc_hi20(polybench_t_end)
	fld.d	$fa0, $a0, %pc_lo12(polybench_t_end)
	pcalau12i	$a0, %pc_hi20(polybench_t_start)
	fld.d	$fa1, $a0, %pc_lo12(polybench_t_start)
	fsub.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end4:
	.size	polybench_timer_print, .Lfunc_end4-polybench_timer_print
                                        # -- End function
	.globl	polybench_free_data             # -- Begin function polybench_free_data
	.p2align	5
	.type	polybench_free_data,@function
polybench_free_data:                    # @polybench_free_data
# %bb.0:
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end5:
	.size	polybench_free_data, .Lfunc_end5-polybench_free_data
                                        # -- End function
	.globl	polybench_alloc_data            # -- Begin function polybench_alloc_data
	.p2align	5
	.type	polybench_alloc_data,@function
polybench_alloc_data:                   # @polybench_alloc_data
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	mul.d	$a2, $a0, $a1
	st.d	$zero, $sp, 0
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	beqz	$a1, .LBB6_3
# %bb.1:
	bnez	$a0, .LBB6_3
# %bb.2:                                # %xmalloc.exit
	move	$a0, $a1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_3:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	polybench_alloc_data, .Lfunc_end6-polybench_alloc_data
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI7_0:
	.dword	0x404e000000000000              # double 60
.LCPI7_1:
	.dword	0x3ff3333333333333              # double 1.2
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$zero, $sp, 16
	lu12i.w	$a0, 9
	ori	$s2, $a0, 1536
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16
	beqz	$fp, .LBB7_43
# %bb.1:
	bnez	$a0, .LBB7_43
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 16
	lu12i.w	$a0, 7
	ori	$s3, $a0, 128
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 16
	beqz	$s0, .LBB7_43
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_43
# %bb.4:                                # %polybench_alloc_data.exit16
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB7_43
# %bb.5:                                # %polybench_alloc_data.exit16
	bnez	$a0, .LBB7_43
# %bb.6:                                # %polybench_alloc_data.exit18
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	ori	$a4, $zero, 80
	lu12i.w	$a0, 335544
	ori	$a0, $a0, 1311
	pcalau12i	$a5, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a5, %pc_lo12(.LCPI7_0)
	ori	$a5, $zero, 100
	ori	$a6, $zero, 640
	ori	$a7, $zero, 60
	.p2align	4, , 16
.LBB7_7:                                # %.preheader45.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
	move	$t0, $zero
	add.d	$t1, $s1, $a2
	add.d	$t2, $fp, $a2
	move	$t3, $a1
	move	$t4, $a4
	.p2align	4, , 16
.LBB7_8:                                #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t5, $t4, 31, 0
	mul.d	$t5, $t5, $a0
	srli.d	$t5, $t5, 37
	mul.d	$t5, $t5, $a5
	sub.d	$t5, $t4, $t5
	bstrpick.d	$t5, $t5, 31, 0
	bstrpick.d	$t6, $t3, 31, 0
	mul.d	$t6, $t6, $a0
	srli.d	$t6, $t6, 37
	mul.d	$t6, $t6, $a5
	sub.d	$t6, $t3, $t6
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa1, $t6
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $t2, $t0
	movgr2fr.d	$fa1, $t5
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $t1, $t0
	addi.w	$t4, $t4, -1
	addi.d	$t0, $t0, 8
	addi.w	$t3, $t3, 1
	bne	$t0, $a6, .LBB7_8
# %bb.9:                                #   in Loop: Header=BB7_7 Depth=1
	addi.d	$a3, $a3, 1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 640
	addi.w	$a1, $a1, 1
	bne	$a3, $a7, .LBB7_7
# %bb.10:                               # %.preheader.i.preheader
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $zero
	addi.d	$a3, $s0, 8
	addi.d	$a4, $s0, 24
	ori	$a5, $zero, 1
	ori	$a6, $zero, 59
	ori	$a7, $zero, 2
	ori	$t0, $zero, 100
	ori	$t1, $zero, 58
	ori	$t2, $zero, 4
	ori	$t3, $zero, 0
	lu32i.d	$t3, -51200
	lu52i.d	$t3, $t3, -1016
	ori	$t4, $zero, 480
	ori	$t5, $zero, 60
	ori	$t6, $zero, 59
	move	$t7, $s0
	ori	$t8, $zero, 1
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %.loopexit.i
                                        #   in Loop: Header=BB7_12 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$t8, $t8, 1
	addi.w	$a5, $a5, 1
	addi.d	$a3, $a3, 480
	addi.w	$a1, $a1, 1
	addi.d	$t7, $t7, 480
	addi.d	$a4, $a4, 488
	addi.d	$t6, $t6, -1
	beq	$a2, $t5, .LBB7_26
.LBB7_12:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_15 Depth 2
                                        #     Child Loop BB7_18 Depth 2
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_25 Depth 2
	bgeu	$t8, $a7, .LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_12 Depth=1
	move	$s4, $zero
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_14:                               # %vector.ph36
                                        #   in Loop: Header=BB7_12 Depth=1
	move	$s5, $t8
	bstrins.d	$s5, $zero, 0, 0
	bstrpick.d	$s4, $t8, 62, 1
	slli.d	$s4, $s4, 1
	move	$s6, $a1
	move	$s7, $a3
	move	$s8, $a5
	.p2align	4, , 16
.LBB7_15:                               # %vector.body39
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$ra, $s8, 31, 0
	mul.d	$ra, $ra, $a0
	srli.d	$ra, $ra, 37
	mul.d	$ra, $ra, $t0
	sub.d	$ra, $s8, $ra
	bstrpick.d	$ra, $ra, 31, 0
	bstrpick.d	$s3, $s6, 31, 0
	mul.d	$s3, $s3, $a0
	srli.d	$s3, $s3, 37
	mul.d	$s3, $s3, $t0
	sub.d	$s3, $s6, $s3
	bstrpick.d	$s3, $s3, 31, 0
	movgr2fr.d	$fa1, $s3
	ffint.d.l	$fa1, $fa1
	movgr2fr.d	$fa2, $ra
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa0
	fdiv.d	$fa2, $fa2, $fa0
	fst.d	$fa1, $s7, -8
	fst.d	$fa2, $s7, 0
	addi.w	$s8, $s8, 2
	addi.d	$s7, $s7, 16
	addi.d	$s5, $s5, -2
	addi.w	$s6, $s6, 2
	bnez	$s5, .LBB7_15
# %bb.16:                               # %middle.block42
                                        #   in Loop: Header=BB7_12 Depth=1
	beq	$t8, $s4, .LBB7_19
.LBB7_17:                               # %scalar.ph34.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	alsl.d	$s5, $s4, $t7, 3
	add.w	$s6, $a1, $s4
	.p2align	4, , 16
.LBB7_18:                               # %scalar.ph34
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$s3, $s6, 31, 0
	mul.d	$s3, $s3, $a0
	srli.d	$s3, $s3, 37
	mul.d	$s3, $s3, $t0
	sub.d	$s3, $s6, $s3
	bstrpick.d	$s3, $s3, 31, 0
	movgr2fr.d	$fa1, $s3
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $s5, 0
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	addi.w	$s6, $s6, 1
	bne	$t8, $s4, .LBB7_18
.LBB7_19:                               # %.loopexit
                                        #   in Loop: Header=BB7_12 Depth=1
	bltu	$t1, $a2, .LBB7_11
# %bb.20:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	sub.d	$s4, $a6, $a2
	move	$s5, $t8
	bltu	$s4, $t2, .LBB7_24
# %bb.21:                               # %vector.ph
                                        #   in Loop: Header=BB7_12 Depth=1
	move	$s7, $t6
	bstrins.d	$s7, $zero, 1, 0
	move	$s6, $s4
	bstrins.d	$s6, $zero, 1, 0
	add.d	$s5, $t8, $s6
	move	$s8, $a4
	.p2align	4, , 16
.LBB7_22:                               # %vector.body
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vreplgr2vr.d	$vr1, $t3
	vst	$vr1, $s8, -16
	vst	$vr1, $s8, 0
	addi.d	$s7, $s7, -4
	addi.d	$s8, $s8, 32
	bnez	$s7, .LBB7_22
# %bb.23:                               # %middle.block
                                        #   in Loop: Header=BB7_12 Depth=1
	beq	$s4, $s6, .LBB7_11
.LBB7_24:                               # %.lr.ph.i.preheader61
                                        #   in Loop: Header=BB7_12 Depth=1
	slli.d	$s4, $s5, 3
	.p2align	4, , 16
.LBB7_25:                               # %.lr.ph.i
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.d	$t3, $t7, $s4
	addi.d	$s4, $s4, 8
	bne	$s4, $t4, .LBB7_25
	b	.LBB7_11
.LBB7_26:                               # %.preheader44.i.preheader
	move	$a0, $zero
	add.d	$a1, $fp, $s2
	add.d	$a2, $s1, $s2
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	add.d	$a3, $s0, $a3
	sltu	$a2, $fp, $a2
	sltu	$a4, $s1, $a1
	and	$a2, $a2, $a4
	sltu	$a3, $fp, $a3
	sltu	$a1, $s0, $a1
	and	$a1, $a3, $a1
	or	$a1, $a2, $a1
	addi.d	$a2, $fp, 16
	ori	$a3, $zero, 480
	vldi	$vr0, -904
	movgr2fr.d	$fa1, $zero
	ori	$a4, $zero, 640
	lu12i.w	$a5, 209715
	ori	$a5, $a5, 819
	lu32i.d	$a5, 209715
	lu52i.d	$a5, $a5, 1023
	vreplgr2vr.d	$vr2, $a5
	vrepli.b	$vr3, 0
	ori	$a5, $zero, 60
	ori	$a6, $zero, 80
	move	$a7, $fp
	move	$t0, $s1
	move	$t1, $s0
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_27:                               # %.split.us.i
                                        #   in Loop: Header=BB7_28 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$t1, $t1, 480
	addi.d	$a2, $a2, 640
	addi.d	$t0, $t0, 640
	addi.d	$a7, $a7, 640
	beq	$a0, $a5, .LBB7_38
.LBB7_28:                               # %.preheader44.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_30 Depth 2
                                        #       Child Loop BB7_31 Depth 3
                                        #     Child Loop BB7_37 Depth 2
                                        #     Child Loop BB7_35 Depth 2
	mul.d	$t2, $a0, $a3
	add.d	$t2, $s0, $t2
	alsl.d	$t2, $a0, $t2, 3
	pcalau12i	$t3, %pc_hi20(.LCPI7_1)
	beqz	$a0, .LBB7_33
# %bb.29:                               # %.preheader.us.i.preheader
                                        #   in Loop: Header=BB7_28 Depth=1
	move	$t4, $zero
	alsl.d	$t5, $a0, $a0, 2
	slli.d	$t6, $t5, 7
	add.d	$t5, $fp, $t6
	add.d	$t6, $s1, $t6
	move	$t7, $fp
	move	$t8, $s1
	.p2align	4, , 16
.LBB7_30:                               # %.preheader.us.i
                                        #   Parent Loop BB7_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_31 Depth 3
	alsl.d	$s2, $t4, $t6, 3
	move	$s3, $t1
	move	$s4, $t7
	move	$s5, $t8
	move	$s6, $a0
	fmov.d	$fa4, $fa1
	.p2align	4, , 16
.LBB7_31:                               #   Parent Loop BB7_28 Depth=1
                                        #     Parent Loop BB7_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa5, $s2, 0
	fld.d	$fa6, $s3, 0
	fld.d	$fa7, $s4, 0
	fmul.d	$fa5, $fa5, $fa0
	fmul.d	$fa5, $fa5, $fa6
	fadd.d	$fa5, $fa7, $fa5
	fst.d	$fa5, $s4, 0
	fld.d	$fa5, $s5, 0
	fld.d	$fa6, $s3, 0
	fmul.d	$fa5, $fa5, $fa6
	fadd.d	$fa4, $fa4, $fa5
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 640
	addi.d	$s4, $s4, 640
	addi.d	$s3, $s3, 8
	bnez	$s6, .LBB7_31
# %bb.32:                               # %._crit_edge.us.i
                                        #   in Loop: Header=BB7_30 Depth=2
	slli.d	$s3, $t4, 3
	fldx.d	$fa5, $t5, $s3
	fld.d	$fa6, $t3, %pc_lo12(.LCPI7_1)
	fld.d	$fa7, $s2, 0
	fld.d	$ft0, $t2, 0
	fmul.d	$fa5, $fa5, $fa6
	fmul.d	$fa6, $fa7, $fa0
	fmul.d	$fa6, $fa6, $ft0
	fadd.d	$fa5, $fa5, $fa6
	fmul.d	$fa4, $fa4, $fa0
	fadd.d	$fa4, $fa4, $fa5
	fstx.d	$fa4, $t5, $s3
	addi.d	$t4, $t4, 1
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	bne	$t4, $a6, .LBB7_30
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_33:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_28 Depth=1
	beqz	$a1, .LBB7_36
# %bb.34:                               # %.preheader.i22.preheader
                                        #   in Loop: Header=BB7_28 Depth=1
	move	$t4, $zero
	.p2align	4, , 16
.LBB7_35:                               # %.preheader.i22
                                        #   Parent Loop BB7_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa4, $a7, $t4
	fld.d	$fa5, $t3, %pc_lo12(.LCPI7_1)
	fldx.d	$fa6, $t0, $t4
	fld.d	$fa7, $t2, 0
	fmul.d	$fa4, $fa4, $fa5
	fmul.d	$fa5, $fa6, $fa0
	fmul.d	$fa5, $fa5, $fa7
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$fa4, $fa4, $fa1
	fstx.d	$fa4, $a7, $t4
	addi.d	$t4, $t4, 8
	bne	$t4, $a4, .LBB7_35
	b	.LBB7_27
.LBB7_36:                               # %vector.body52.preheader
                                        #   in Loop: Header=BB7_28 Depth=1
	vldrepl.d	$vr4, $t2, 0
	move	$t2, $zero
	.p2align	4, , 16
.LBB7_37:                               # %vector.body52
                                        #   Parent Loop BB7_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a2, $t2
	vld	$vr5, $t3, -16
	vldx	$vr6, $a2, $t2
	add.d	$t4, $t0, $t2
	vldx	$vr7, $t0, $t2
	vld	$vr8, $t4, 16
	vfmul.d	$vr5, $vr5, $vr2
	vfmul.d	$vr6, $vr6, $vr2
	vfmul.d	$vr7, $vr7, $vr0
	vfmul.d	$vr8, $vr8, $vr0
	vfmul.d	$vr7, $vr7, $vr4
	vfmul.d	$vr8, $vr8, $vr4
	vfadd.d	$vr5, $vr5, $vr7
	vfadd.d	$vr6, $vr6, $vr8
	vfadd.d	$vr5, $vr5, $vr3
	vfadd.d	$vr6, $vr6, $vr3
	vstx	$vr6, $a2, $t2
	addi.d	$t2, $t2, 32
	vst	$vr5, $t3, -16
	bne	$t2, $a4, .LBB7_37
	b	.LBB7_27
.LBB7_38:                               # %kernel_symm.exit
	ori	$a0, $zero, 1281
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.b	$zero, $a0, 1280
	ori	$s3, $zero, 3
	ori	$s4, $zero, 1280
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s5, $a0, %got_pc_lo12(stderr)
	move	$s6, $zero
	move	$s7, $zero
	ori	$s8, $zero, 60
.LBB7_39:                               # %.preheader.i23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
	move	$a0, $zero
	move	$a1, $s6
	.p2align	4, , 16
.LBB7_40:                               #   Parent Loop BB7_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a2, $fp, $a1
	srli.d	$a3, $a2, 8
	srli.d	$a4, $a2, 16
	srli.d	$a5, $a2, 24
	srli.d	$a6, $a2, 32
	srli.d	$a7, $a2, 40
	srli.d	$t0, $a2, 48
	srli.d	$t1, $a2, 56
	bstrins.d	$a2, $s3, 63, 4
	add.d	$t2, $s2, $a0
	stx.b	$a2, $s2, $a0
	st.b	$a2, $t2, 1
	bstrins.d	$a3, $s3, 63, 4
	st.b	$a3, $t2, 2
	st.b	$a3, $t2, 3
	bstrins.d	$a4, $s3, 63, 4
	st.b	$a4, $t2, 4
	st.b	$a4, $t2, 5
	bstrins.d	$a5, $s3, 63, 4
	st.b	$a5, $t2, 6
	st.b	$a5, $t2, 7
	bstrins.d	$a6, $s3, 63, 4
	st.b	$a6, $t2, 8
	st.b	$a6, $t2, 9
	bstrins.d	$a7, $s3, 63, 4
	st.b	$a7, $t2, 10
	st.b	$a7, $t2, 11
	bstrins.d	$t0, $s3, 63, 4
	st.b	$t0, $t2, 12
	st.b	$t0, $t2, 13
	bstrins.d	$t1, $s3, 63, 4
	st.b	$t1, $t2, 14
	st.b	$t1, $t2, 15
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 8
	bne	$a0, $s4, .LBB7_40
# %bb.41:                               #   in Loop: Header=BB7_39 Depth=1
	ld.d	$a1, $s5, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 640
	bne	$s7, $s8, .LBB7_39
# %bb.42:                               # %print_array.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
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
.LBB7_43:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
                                        # -- End function
	.type	polybench_papi_counters_threadid,@object # @polybench_papi_counters_threadid
	.bss
	.globl	polybench_papi_counters_threadid
	.p2align	2, 0x0
polybench_papi_counters_threadid:
	.word	0                               # 0x0
	.size	polybench_papi_counters_threadid, 4

	.type	polybench_program_total_flops,@object # @polybench_program_total_flops
	.globl	polybench_program_total_flops
	.p2align	3, 0x0
polybench_program_total_flops:
	.dword	0x0000000000000000              # double 0
	.size	polybench_program_total_flops, 8

	.type	polybench_t_start,@object       # @polybench_t_start
	.globl	polybench_t_start
	.p2align	3, 0x0
polybench_t_start:
	.dword	0x0000000000000000              # double 0
	.size	polybench_t_start, 8

	.type	polybench_t_end,@object         # @polybench_t_end
	.globl	polybench_t_end
	.p2align	3, 0x0
polybench_t_end:
	.dword	0x0000000000000000              # double 0
	.size	polybench_t_end, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%0.6f\n"
	.size	.L.str, 7

	.type	polybench_c_start,@object       # @polybench_c_start
	.bss
	.globl	polybench_c_start
	.p2align	3, 0x0
polybench_c_start:
	.dword	0                               # 0x0
	.size	polybench_c_start, 8

	.type	polybench_c_end,@object         # @polybench_c_end
	.globl	polybench_c_end
	.p2align	3, 0x0
polybench_c_end:
	.dword	0                               # 0x0
	.size	polybench_c_end, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"[PolyBench] posix_memalign: cannot allocate memory"
	.size	.L.str.1, 51

	.section	".note.GNU-stack","",@progbits
	.addrsig
