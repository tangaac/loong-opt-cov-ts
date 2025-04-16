	.file	"floyd-warshall.c"
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
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI7_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_2:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
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
	lu12i.w	$a0, 7656
	ori	$s1, $a0, 1024
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16
	beqz	$fp, .LBB7_42
# %bb.1:
	bnez	$a0, .LBB7_42
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 16
	beqz	$s0, .LBB7_42
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_42
# %bb.4:                                # %polybench_alloc_data.exit16
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(.LCPI7_0)
	vld	$vr8, $a2, %pc_lo12(.LCPI7_0)
	pcalau12i	$a3, %pc_hi20(.LCPI7_1)
	vld	$vr9, $a3, %pc_lo12(.LCPI7_1)
	lu12i.w	$s3, -3
	ori	$a4, $s3, 1088
	lu12i.w	$a1, 149796
	ori	$a5, $a1, 2341
	vreplgr2vr.w	$vr0, $a5
	vrepli.w	$vr1, 7
	lu12i.w	$a5, -241980
	ori	$a5, $a5, 3781
	vreplgr2vr.w	$vr2, $a5
	lu12i.w	$a5, 80659
	ori	$a5, $a5, 2835
	vreplgr2vr.w	$vr3, $a5
	lu12i.w	$a5, -299594
	ori	$a5, $a5, 3511
	vreplgr2vr.w	$vr4, $a5
	ori	$a1, $a1, 2340
	vreplgr2vr.w	$vr5, $a1
	lu12i.w	$a1, -285976
	ori	$a1, $a1, 2979
	vreplgr2vr.w	$vr6, $a1
	lu12i.w	$a1, 95325
	ori	$a1, $a1, 372
	vreplgr2vr.w	$vr7, $a1
	ori	$a1, $zero, 999
	vreplgr2vr.w	$vr10, $a1
	lu12i.w	$a1, 2
	ori	$s2, $a1, 3008
	ori	$a5, $zero, 2800
	move	$a6, $fp
	.p2align	4, , 16
.LBB7_5:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	vreplgr2vr.d	$vr11, $a0
	move	$a7, $a4
	vori.b	$vr12, $vr9, 0
	vori.b	$vr13, $vr8, 0
	.p2align	4, , 16
.LBB7_6:                                # %vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmul.d	$vr14, $vr12, $vr11
	vmul.d	$vr15, $vr13, $vr11
	vpickev.w	$vr14, $vr15, $vr14
	vmuh.wu	$vr15, $vr14, $vr0
	vsub.w	$vr16, $vr14, $vr15
	vsrli.w	$vr16, $vr16, 1
	vadd.w	$vr15, $vr16, $vr15
	vsrli.w	$vr15, $vr15, 2
	vmsub.w	$vr14, $vr15, $vr1
	vaddi.wu	$vr14, $vr14, 1
	add.d	$t0, $a6, $a7
	vadd.d	$vr15, $vr12, $vr11
	vadd.d	$vr16, $vr13, $vr11
	vpickev.w	$vr15, $vr16, $vr15
	vmul.w	$vr16, $vr15, $vr2
	vsle.wu	$vr16, $vr16, $vr3
	vmul.w	$vr17, $vr15, $vr4
	vsle.wu	$vr17, $vr17, $vr5
	vor.v	$vr16, $vr16, $vr17
	vmul.w	$vr15, $vr15, $vr6
	vsle.wu	$vr15, $vr15, $vr7
	vor.v	$vr15, $vr15, $vr16
	vbitsel.v	$vr14, $vr14, $vr10, $vr15
	vstx	$vr14, $t0, $s2
	vaddi.du	$vr12, $vr12, 4
	addi.d	$a7, $a7, 16
	vaddi.du	$vr13, $vr13, 4
	bnez	$a7, .LBB7_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a6, $a6, $s2
	bne	$a0, $a5, .LBB7_5
# %bb.8:                                # %.preheader34.i.preheader
	move	$a5, $zero
	add.d	$a6, $fp, $s1
	lu12i.w	$a0, 7653
	ori	$a4, $a0, 2116
	add.d	$a7, $fp, $a4
	add.d	$t0, $fp, $s2
	addi.d	$t1, $fp, 16
	ori	$t2, $s3, 1088
	ori	$t3, $zero, 2800
	ori	$a0, $a1, 2992
	ori	$a1, $a1, 3024
	move	$t4, $fp
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                #   in Loop: Header=BB7_10 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$t4, $t4, $s2
	beq	$a5, $t3, .LBB7_17
.LBB7_10:                               # %.preheader34.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #       Child Loop BB7_16 Depth 3
                                        #       Child Loop BB7_14 Depth 3
	move	$t5, $zero
	alsl.d	$t6, $a5, $fp, 2
	alsl.d	$t7, $a5, $a7, 2
	mul.d	$t8, $a5, $s2
	sltu	$t7, $fp, $t7
	sltu	$t6, $t6, $a6
	and	$t6, $t7, $t6
	add.d	$t7, $fp, $t8
	add.d	$t8, $t0, $t8
	sltu	$t8, $fp, $t8
	sltu	$t7, $t7, $a6
	and	$t7, $t8, $t7
	or	$t6, $t6, $t7
	move	$t7, $fp
	move	$t8, $t1
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %middle.block94
                                        #   in Loop: Header=BB7_12 Depth=2
	addi.d	$t5, $t5, 1
	add.d	$t8, $t8, $s2
	add.d	$t7, $t7, $s2
	beq	$t5, $t3, .LBB7_9
.LBB7_12:                               # %.preheader.i17
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_16 Depth 3
                                        #       Child Loop BB7_14 Depth 3
	mul.d	$s4, $t5, $s2
	add.d	$s4, $fp, $s4
	alsl.d	$s4, $a5, $s4, 2
	beqz	$t6, .LBB7_15
# %bb.13:                               # %scalar.ph84.preheader
                                        #   in Loop: Header=BB7_12 Depth=2
	move	$s5, $t2
	.p2align	4, , 16
.LBB7_14:                               # %scalar.ph84
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s6, $t7, $s5
	ld.w	$s7, $s4, 0
	add.d	$s8, $t4, $s5
	ldx.w	$s8, $s8, $s2
	ldptr.w	$ra, $s6, 11200
	add.w	$s7, $s8, $s7
	slt	$s8, $ra, $s7
	masknez	$s7, $s7, $s8
	maskeqz	$s8, $ra, $s8
	or	$s7, $s8, $s7
	addi.d	$s5, $s5, 4
	stptr.w	$s7, $s6, 11200
	bnez	$s5, .LBB7_14
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_15:                               # %vector.body86.preheader
                                        #   in Loop: Header=BB7_12 Depth=2
	ld.w	$s4, $s4, 0
	vreplgr2vr.w	$vr8, $s4
	move	$s4, $t2
	.p2align	4, , 16
.LBB7_16:                               # %vector.body86
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s5, $t8, $s4
	add.d	$s6, $t4, $s4
	vldx	$vr9, $s6, $s2
	vldx	$vr10, $s6, $a1
	vldx	$vr11, $s5, $a0
	vldx	$vr12, $s5, $s2
	vadd.w	$vr9, $vr9, $vr8
	vadd.w	$vr10, $vr10, $vr8
	vmin.w	$vr9, $vr11, $vr9
	vmin.w	$vr10, $vr12, $vr10
	vstx	$vr9, $s5, $a0
	addi.d	$s4, $s4, 32
	vstx	$vr10, $s5, $s2
	bnez	$s4, .LBB7_16
	b	.LBB7_11
.LBB7_17:                               # %vector.ph97.preheader
	move	$a5, $zero
	vld	$vr8, $a2, %pc_lo12(.LCPI7_0)
	vld	$vr9, $a3, %pc_lo12(.LCPI7_1)
	ori	$a2, $s3, 1088
	ori	$a3, $zero, 999
	vreplgr2vr.w	$vr10, $a3
	ori	$a3, $zero, 2800
	move	$a6, $s0
	.p2align	4, , 16
.LBB7_18:                               # %vector.ph97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
	vreplgr2vr.d	$vr11, $a5
	move	$a7, $a2
	vori.b	$vr12, $vr9, 0
	vori.b	$vr13, $vr8, 0
	.p2align	4, , 16
.LBB7_19:                               # %vector.body100
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmul.d	$vr14, $vr12, $vr11
	vmul.d	$vr15, $vr13, $vr11
	vpickev.w	$vr14, $vr15, $vr14
	vmuh.wu	$vr15, $vr14, $vr0
	vsub.w	$vr16, $vr14, $vr15
	vsrli.w	$vr16, $vr16, 1
	vadd.w	$vr15, $vr16, $vr15
	vsrli.w	$vr15, $vr15, 2
	vmsub.w	$vr14, $vr15, $vr1
	vaddi.wu	$vr14, $vr14, 1
	add.d	$t0, $a6, $a7
	vadd.d	$vr15, $vr12, $vr11
	vadd.d	$vr16, $vr13, $vr11
	vpickev.w	$vr15, $vr16, $vr15
	vmul.w	$vr16, $vr15, $vr2
	vsle.wu	$vr16, $vr16, $vr3
	vmul.w	$vr17, $vr15, $vr4
	vsle.wu	$vr17, $vr17, $vr5
	vor.v	$vr16, $vr16, $vr17
	vmul.w	$vr15, $vr15, $vr6
	vsle.wu	$vr15, $vr15, $vr7
	vor.v	$vr15, $vr15, $vr16
	vbitsel.v	$vr14, $vr14, $vr10, $vr15
	vstx	$vr14, $t0, $s2
	vaddi.du	$vr12, $vr12, 4
	addi.d	$a7, $a7, 16
	vaddi.du	$vr13, $vr13, 4
	bnez	$a7, .LBB7_19
# %bb.20:                               # %middle.block105
                                        #   in Loop: Header=BB7_18 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$a6, $a6, $s2
	bne	$a5, $a3, .LBB7_18
# %bb.21:                               # %.preheader34.i32.preheader
	move	$a2, $zero
	add.d	$a3, $s0, $s1
	add.d	$a4, $s0, $a4
	add.d	$a5, $s0, $s2
	addi.d	$a6, $s0, 16
	ori	$a7, $s3, 1088
	ori	$t0, $zero, 2800
	move	$t1, $s0
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_22:                               #   in Loop: Header=BB7_23 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$t1, $t1, $s2
	beq	$a2, $t0, .LBB7_30
.LBB7_23:                               # %.preheader34.i32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_25 Depth 2
                                        #       Child Loop BB7_29 Depth 3
                                        #       Child Loop BB7_27 Depth 3
	move	$t2, $zero
	alsl.d	$t3, $a2, $s0, 2
	alsl.d	$t4, $a2, $a4, 2
	mul.d	$t5, $a2, $s2
	sltu	$t4, $s0, $t4
	sltu	$t3, $t3, $a3
	and	$t3, $t4, $t3
	add.d	$t4, $s0, $t5
	add.d	$t5, $a5, $t5
	sltu	$t5, $s0, $t5
	sltu	$t4, $t4, $a3
	and	$t4, $t5, $t4
	or	$t3, $t3, $t4
	move	$t4, $s0
	move	$t5, $a6
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_24:                               # %middle.block131
                                        #   in Loop: Header=BB7_25 Depth=2
	addi.d	$t2, $t2, 1
	add.d	$t5, $t5, $s2
	add.d	$t4, $t4, $s2
	beq	$t2, $t0, .LBB7_22
.LBB7_25:                               # %.preheader.i34
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_29 Depth 3
                                        #       Child Loop BB7_27 Depth 3
	mul.d	$t6, $t2, $s2
	add.d	$t6, $s0, $t6
	alsl.d	$t6, $a2, $t6, 2
	beqz	$t3, .LBB7_28
# %bb.26:                               # %scalar.ph120.preheader
                                        #   in Loop: Header=BB7_25 Depth=2
	move	$t7, $a7
	.p2align	4, , 16
.LBB7_27:                               # %scalar.ph120
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t8, $t4, $t7
	ld.w	$s1, $t6, 0
	add.d	$s4, $t1, $t7
	ldx.w	$s4, $s4, $s2
	ldptr.w	$s5, $t8, 11200
	add.w	$s1, $s4, $s1
	slt	$s4, $s5, $s1
	masknez	$s1, $s1, $s4
	maskeqz	$s4, $s5, $s4
	or	$s1, $s4, $s1
	addi.d	$t7, $t7, 4
	stptr.w	$s1, $t8, 11200
	bnez	$t7, .LBB7_27
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_28:                               # %vector.body122.preheader
                                        #   in Loop: Header=BB7_25 Depth=2
	ld.w	$t6, $t6, 0
	vreplgr2vr.w	$vr0, $t6
	move	$t6, $a7
	.p2align	4, , 16
.LBB7_29:                               # %vector.body122
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $t5, $t6
	add.d	$t8, $t1, $t6
	vldx	$vr1, $t8, $s2
	vldx	$vr2, $t8, $a1
	vldx	$vr3, $t7, $a0
	vldx	$vr4, $t7, $s2
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	vmin.w	$vr1, $vr3, $vr1
	vmin.w	$vr2, $vr4, $vr2
	vstx	$vr1, $t7, $a0
	addi.d	$t6, $t6, 32
	vstx	$vr2, $t7, $s2
	bnez	$t6, .LBB7_29
	b	.LBB7_24
.LBB7_30:                               # %.preheader.i44.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_2)
	move	$a0, $zero
	move	$a2, $zero
	ori	$a1, $s3, 1088
	ori	$a4, $zero, 2800
	.p2align	4, , 16
.LBB7_31:                               # %.preheader.i44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_32 Depth 2
	move	$a3, $zero
	add.d	$a5, $s0, $a0
	add.d	$a6, $fp, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_32:                               #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	ldptr.w	$t0, $t0, 11200
	add.d	$t1, $a5, $a7
	ldptr.w	$t1, $t1, 11200
	movgr2fr.w	$fa1, $t0
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $t1
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_40
# %bb.33:                               # %.critedge.i
                                        #   in Loop: Header=BB7_32 Depth=2
	addi.d	$a7, $a7, 4
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_32
# %bb.34:                               #   in Loop: Header=BB7_31 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s2
	bne	$a2, $a4, .LBB7_31
# %bb.35:                               # %check_FP.exit
	lu12i.w	$s6, 10
	ori	$a0, $s6, 3841
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$s4, $zero
	move	$s5, $zero
	ori	$a0, $s6, 3840
	stx.b	$zero, $s1, $a0
	addi.d	$s6, $s1, 7
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	ori	$s3, $s3, 1088
	ori	$s8, $zero, 3
.LBB7_36:                               # %.preheader.i51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_37 Depth 2
	add.d	$a0, $s0, $s4
	move	$a1, $s6
	move	$a2, $s3
	.p2align	4, , 16
.LBB7_37:                               #   Parent Loop BB7_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.w	$a3, $a3, 11200
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s8, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s8, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s8, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s8, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s8, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s8, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s8, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s8, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_37
# %bb.38:                               #   in Loop: Header=BB7_36 Depth=1
	ld.d	$a1, $s7, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	add.d	$s4, $s4, $s2
	ori	$a0, $zero, 2800
	bne	$s5, $a0, .LBB7_36
# %bb.39:                               # %print_array.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_41
.LBB7_40:                               # %check_FP.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, -487882
	ori	$a1, $a1, 2289
	lu32i.d	$a1, 325813
	lu52i.d	$a5, $a1, 1006
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	st.d	$a5, $sp, 0
	move	$a5, $a2
	move	$a6, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB7_41:
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
.LBB7_42:
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

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\n"
	.size	.L.str.2, 76

	.section	".note.GNU-stack","",@progbits
	.addrsig
