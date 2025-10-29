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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI7_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_1:
	.dword	0x404e000000000000              # double 60
.LCPI7_2:
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
	beqz	$fp, .LBB7_46
# %bb.1:
	bnez	$a0, .LBB7_46
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
	beqz	$s0, .LBB7_46
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_46
# %bb.4:                                # %polybench_alloc_data.exit16
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB7_46
# %bb.5:                                # %polybench_alloc_data.exit16
	bnez	$a0, .LBB7_46
# %bb.6:                                # %polybench_alloc_data.exit18
	move	$a2, $zero
	move	$a3, $zero
	sub.d	$a4, $s1, $fp
	ori	$a5, $zero, 80
	ori	$a6, $zero, 15
	lu12i.w	$a0, 335544
	ori	$a0, $a0, 1311
	ori	$a7, $zero, 100
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_1)
	ori	$t0, $zero, 640
	ori	$t1, $zero, 60
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_0)
	ori	$t2, $zero, 0
	lu32i.d	$t2, -131072
	lu52i.d	$t2, $t2, 1028
	vreplgr2vr.d	$vr2, $t2
	move	$t2, $fp
	move	$t3, $s1
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %middle.block
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$t3, $t3, 640
	addi.d	$t2, $t2, 640
	addi.w	$a5, $a5, 1
	addi.w	$a2, $a2, 1
	beq	$a3, $t1, .LBB7_13
.LBB7_8:                                # %.preheader45.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #     Child Loop BB7_10 Depth 2
	move	$t4, $zero
	bltu	$a6, $a4, .LBB7_11
# %bb.9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_8 Depth=1
	move	$t5, $a2
	move	$t6, $a5
	.p2align	4, , 16
.LBB7_10:                               # %scalar.ph
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t7, $t6, 31, 0
	mul.d	$t7, $t7, $a0
	srli.d	$t7, $t7, 37
	mul.d	$t7, $t7, $a7
	sub.d	$t7, $t6, $t7
	bstrpick.d	$t7, $t7, 31, 0
	bstrpick.d	$t8, $t5, 31, 0
	mul.d	$t8, $t8, $a0
	srli.d	$t8, $t8, 37
	mul.d	$t8, $t8, $a7
	sub.d	$t8, $t5, $t8
	bstrpick.d	$t8, $t8, 31, 0
	movgr2fr.d	$fa3, $t8
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fstx.d	$fa3, $t2, $t4
	movgr2fr.d	$fa3, $t7
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fstx.d	$fa3, $t3, $t4
	addi.w	$t6, $t6, -1
	addi.d	$t4, $t4, 8
	addi.w	$t5, $t5, 1
	bne	$t4, $t0, .LBB7_10
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_11:                               # %vector.ph
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$t5, $a3, 80
	vreplgr2vr.d	$vr3, $a3
	vreplgr2vr.d	$vr4, $t5
	vori.b	$vr5, $vr1, 0
	.p2align	4, , 16
.LBB7_12:                               # %vector.body
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vadd.d	$vr6, $vr5, $vr3
	vpickve2gr.w	$t5, $vr6, 0
	mod.wu	$t5, $t5, $a7
	bstrpick.d	$t5, $t5, 31, 0
	vpickve2gr.w	$t6, $vr6, 2
	mod.wu	$t6, $t6, $a7
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa6, $t6
	ffint.d.l	$fa6, $fa6
	movgr2fr.d	$fa7, $t5
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vfdiv.d	$vr6, $vr7, $vr2
	vstx	$vr6, $t2, $t4
	vsub.d	$vr6, $vr4, $vr5
	vpickve2gr.w	$t5, $vr6, 0
	mod.wu	$t5, $t5, $a7
	bstrpick.d	$t5, $t5, 31, 0
	vpickve2gr.w	$t6, $vr6, 2
	mod.wu	$t6, $t6, $a7
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa6, $t6
	ffint.d.l	$fa6, $fa6
	movgr2fr.d	$fa7, $t5
	ffint.d.l	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vfdiv.d	$vr6, $vr7, $vr2
	vstx	$vr6, $t3, $t4
	addi.d	$t4, $t4, 16
	vaddi.du	$vr5, $vr5, 2
	bne	$t4, $t0, .LBB7_12
	b	.LBB7_7
.LBB7_13:                               # %.preheader.i.preheader
	move	$a2, $zero
	move	$a3, $zero
	addi.d	$a4, $s0, 24
	ori	$a5, $zero, 1
	addi.w	$a6, $zero, -8
	ori	$a7, $zero, 59
	ori	$t0, $zero, 2
	ori	$t1, $zero, 100
	ori	$t2, $zero, 58
	ori	$t3, $zero, 4
	ori	$t4, $zero, 0
	lu32i.d	$t4, -51200
	lu52i.d	$t4, $t4, -1016
	ori	$t5, $zero, 480
	ori	$t6, $zero, 60
	ori	$t7, $zero, 59
	move	$t8, $s0
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_14:                               # %.loopexit.i
                                        #   in Loop: Header=BB7_15 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a5, 1
	addi.d	$t8, $t8, 480
	addi.d	$a6, $a6, -8
	addi.d	$a2, $a2, 1
	addi.d	$a4, $a4, 488
	addi.d	$t7, $t7, -1
	beq	$a3, $t6, .LBB7_29
.LBB7_15:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
                                        #     Child Loop BB7_21 Depth 2
                                        #     Child Loop BB7_25 Depth 2
                                        #     Child Loop BB7_28 Depth 2
	bgeu	$a5, $t0, .LBB7_17
# %bb.16:                               #   in Loop: Header=BB7_15 Depth=1
	move	$s4, $zero
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_17:                               # %vector.ph44
                                        #   in Loop: Header=BB7_15 Depth=1
	move	$s5, $a5
	bstrins.d	$s5, $zero, 0, 0
	vld	$vr1, $a1, %pc_lo12(.LCPI7_0)
	bstrpick.d	$s4, $a5, 62, 1
	slli.d	$s4, $s4, 1
	vreplgr2vr.d	$vr2, $a3
	move	$s6, $t8
	.p2align	4, , 16
.LBB7_18:                               # %vector.body49
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vadd.d	$vr3, $vr1, $vr2
	vpickve2gr.w	$s7, $vr3, 0
	mod.wu	$s7, $s7, $t1
	bstrpick.d	$s7, $s7, 31, 0
	vpickve2gr.w	$s8, $vr3, 2
	mod.wu	$s8, $s8, $t1
	bstrpick.d	$s8, $s8, 31, 0
	movgr2fr.d	$fa3, $s8
	ffint.d.l	$fa3, $fa3
	movgr2fr.d	$fa4, $s7
	ffint.d.l	$fa4, $fa4
	vextrins.d	$vr4, $vr3, 16
	ori	$s7, $zero, 0
	lu32i.d	$s7, -131072
	lu52i.d	$s7, $s7, 1028
	vreplgr2vr.d	$vr3, $s7
	vfdiv.d	$vr3, $vr4, $vr3
	vst	$vr3, $s6, 0
	vaddi.du	$vr1, $vr1, 2
	addi.d	$s5, $s5, -2
	addi.d	$s6, $s6, 16
	bnez	$s5, .LBB7_18
# %bb.19:                               # %middle.block54
                                        #   in Loop: Header=BB7_15 Depth=1
	beq	$a5, $s4, .LBB7_22
.LBB7_20:                               # %scalar.ph42.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	slli.d	$s5, $s4, 3
	add.w	$s4, $a2, $s4
	.p2align	4, , 16
.LBB7_21:                               # %scalar.ph42
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$s6, $s4, 31, 0
	mul.d	$s6, $s6, $a0
	srli.d	$s6, $s6, 37
	mul.d	$s6, $s6, $t1
	sub.d	$s6, $s4, $s6
	bstrpick.d	$s6, $s6, 31, 0
	movgr2fr.d	$fa1, $s6
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $t8, $s5
	addi.d	$s5, $s5, 8
	add.d	$s6, $a6, $s5
	addi.w	$s4, $s4, 1
	bnez	$s6, .LBB7_21
.LBB7_22:                               # %.loopexit
                                        #   in Loop: Header=BB7_15 Depth=1
	bltu	$t2, $a3, .LBB7_14
# %bb.23:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	sub.d	$s4, $a7, $a3
	move	$s5, $a5
	bltu	$s4, $t3, .LBB7_27
# %bb.24:                               # %vector.ph37
                                        #   in Loop: Header=BB7_15 Depth=1
	move	$s7, $t7
	bstrins.d	$s7, $zero, 1, 0
	move	$s6, $s4
	bstrins.d	$s6, $zero, 1, 0
	add.d	$s5, $a5, $s6
	move	$s8, $a4
	.p2align	4, , 16
.LBB7_25:                               # %vector.body38
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vreplgr2vr.d	$vr1, $t4
	vst	$vr1, $s8, -16
	vst	$vr1, $s8, 0
	addi.d	$s7, $s7, -4
	addi.d	$s8, $s8, 32
	bnez	$s7, .LBB7_25
# %bb.26:                               # %middle.block41
                                        #   in Loop: Header=BB7_15 Depth=1
	beq	$s4, $s6, .LBB7_14
.LBB7_27:                               # %.lr.ph.i.preheader75
                                        #   in Loop: Header=BB7_15 Depth=1
	slli.d	$s4, $s5, 3
	.p2align	4, , 16
.LBB7_28:                               # %.lr.ph.i
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.d	$t4, $t8, $s4
	addi.d	$s4, $s4, 8
	bne	$s4, $t5, .LBB7_28
	b	.LBB7_14
.LBB7_29:                               # %.preheader44.i.preheader
	move	$a0, $zero
	add.d	$a1, $fp, $s2
	add.d	$a2, $s1, $s2
	add.d	$a3, $s0, $s3
	sltu	$a2, $fp, $a2
	sltu	$a4, $s1, $a1
	and	$a2, $a2, $a4
	sltu	$a3, $fp, $a3
	sltu	$a1, $s0, $a1
	and	$a1, $a3, $a1
	or	$a1, $a2, $a1
	ori	$a2, $zero, 480
	pcalau12i	$a3, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI7_2)
	vldi	$vr1, -904
	movgr2fr.d	$fa2, $zero
	ori	$a3, $zero, 640
	lu12i.w	$a4, 209715
	ori	$a4, $a4, 819
	lu32i.d	$a4, 209715
	lu52i.d	$a4, $a4, 1023
	vreplgr2vr.d	$vr3, $a4
	vrepli.b	$vr4, 0
	ori	$a4, $zero, 60
	ori	$a5, $zero, 80
	move	$a6, $fp
	move	$a7, $s1
	move	$t0, $s0
	b	.LBB7_31
	.p2align	4, , 16
.LBB7_30:                               # %.split.us.i
                                        #   in Loop: Header=BB7_31 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$t0, $t0, 480
	addi.d	$a7, $a7, 640
	addi.d	$a6, $a6, 640
	beq	$a0, $a4, .LBB7_41
.LBB7_31:                               # %.preheader44.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_33 Depth 2
                                        #       Child Loop BB7_34 Depth 3
                                        #     Child Loop BB7_40 Depth 2
                                        #     Child Loop BB7_38 Depth 2
	mul.d	$t1, $a0, $a2
	add.d	$t1, $s0, $t1
	alsl.d	$t1, $a0, $t1, 3
	beqz	$a0, .LBB7_36
# %bb.32:                               # %.preheader.us.i.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	move	$t2, $zero
	alsl.d	$t3, $a0, $a0, 2
	slli.d	$t4, $t3, 7
	add.d	$t3, $fp, $t4
	add.d	$t4, $s1, $t4
	move	$t5, $fp
	move	$t6, $s1
	.p2align	4, , 16
.LBB7_33:                               # %.preheader.us.i
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_34 Depth 3
	alsl.d	$t7, $t2, $t4, 3
	move	$t8, $t0
	move	$s2, $t5
	move	$s3, $t6
	move	$s4, $a0
	fmov.d	$fa5, $fa2
	.p2align	4, , 16
.LBB7_34:                               #   Parent Loop BB7_31 Depth=1
                                        #     Parent Loop BB7_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa6, $t7, 0
	fld.d	$fa7, $t8, 0
	fld.d	$ft0, $s2, 0
	fmul.d	$fa6, $fa6, $fa1
	fmul.d	$fa6, $fa6, $fa7
	fadd.d	$fa6, $ft0, $fa6
	fst.d	$fa6, $s2, 0
	fld.d	$fa6, $s3, 0
	fld.d	$fa7, $t8, 0
	fmul.d	$fa6, $fa6, $fa7
	fadd.d	$fa5, $fa5, $fa6
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 640
	addi.d	$s2, $s2, 640
	addi.d	$t8, $t8, 8
	bnez	$s4, .LBB7_34
# %bb.35:                               # %._crit_edge.us.i
                                        #   in Loop: Header=BB7_33 Depth=2
	slli.d	$t8, $t2, 3
	fldx.d	$fa6, $t3, $t8
	fld.d	$fa7, $t7, 0
	fld.d	$ft0, $t1, 0
	fmul.d	$fa6, $fa6, $fa0
	fmul.d	$fa7, $fa7, $fa1
	fmul.d	$fa7, $fa7, $ft0
	fadd.d	$fa6, $fa6, $fa7
	fmul.d	$fa5, $fa5, $fa1
	fadd.d	$fa5, $fa5, $fa6
	fstx.d	$fa5, $t3, $t8
	addi.d	$t2, $t2, 1
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	bne	$t2, $a5, .LBB7_33
	b	.LBB7_30
	.p2align	4, , 16
.LBB7_36:                               # %vector.memcheck57
                                        #   in Loop: Header=BB7_31 Depth=1
	beqz	$a1, .LBB7_39
# %bb.37:                               # %.preheader.i22.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	move	$t2, $zero
	.p2align	4, , 16
.LBB7_38:                               # %.preheader.i22
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa5, $a6, $t2
	fldx.d	$fa6, $a7, $t2
	fld.d	$fa7, $t1, 0
	fmul.d	$fa5, $fa5, $fa0
	fmul.d	$fa6, $fa6, $fa1
	fmul.d	$fa6, $fa6, $fa7
	fadd.d	$fa5, $fa5, $fa6
	fadd.d	$fa5, $fa5, $fa2
	fstx.d	$fa5, $a6, $t2
	addi.d	$t2, $t2, 8
	bne	$t2, $a3, .LBB7_38
	b	.LBB7_30
.LBB7_39:                               # %vector.body65.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	vldrepl.d	$vr5, $t1, 0
	move	$t1, $zero
	.p2align	4, , 16
.LBB7_40:                               # %vector.body65
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr6, $a6, $t1
	vldx	$vr7, $a7, $t1
	vfmul.d	$vr6, $vr6, $vr3
	vfmul.d	$vr7, $vr7, $vr1
	vfmul.d	$vr7, $vr7, $vr5
	vfadd.d	$vr6, $vr6, $vr7
	vfadd.d	$vr6, $vr6, $vr4
	vstx	$vr6, $a6, $t1
	addi.d	$t1, $t1, 16
	bne	$t1, $a3, .LBB7_40
	b	.LBB7_30
.LBB7_41:                               # %kernel_symm.exit
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
.LBB7_42:                               # %.preheader.i23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_43 Depth 2
	move	$a0, $zero
	move	$a1, $s6
	.p2align	4, , 16
.LBB7_43:                               #   Parent Loop BB7_42 Depth=1
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
	bne	$a0, $s4, .LBB7_43
# %bb.44:                               #   in Loop: Header=BB7_42 Depth=1
	ld.d	$a1, $s5, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 640
	bne	$s7, $s8, .LBB7_42
# %bb.45:                               # %print_array.exit
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
.LBB7_46:
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
