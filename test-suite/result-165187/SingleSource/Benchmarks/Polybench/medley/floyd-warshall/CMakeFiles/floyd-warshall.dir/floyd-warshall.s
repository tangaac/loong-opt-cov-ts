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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI7_0:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$zero, $sp, 80
	lu12i.w	$a0, 7656
	ori	$s0, $a0, 1024
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 80
	beqz	$fp, .LBB7_42
# %bb.1:
	bnez	$a0, .LBB7_42
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 80
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 80
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_42
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_42
# %bb.4:                                # %polybench_alloc_data.exit16
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	ori	$s5, $zero, 1
	lu12i.w	$a0, -3
	ori	$a0, $a0, 1088
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 149796
	ori	$a1, $a0, 2341
	lu12i.w	$a0, -285976
	ori	$a2, $a0, 2979
	lu32i.d	$a2, 0
	ori	$t1, $zero, 11
	lu12i.w	$a0, 322638
	ori	$a3, $a0, 3151
	ori	$t2, $zero, 13
	ori	$t3, $zero, 999
	lu12i.w	$a0, 2
	ori	$s2, $a0, 3008
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	move	$t5, $fp
	.p2align	4, , 16
.LBB7_5:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	move	$t6, $zero
	move	$t7, $zero
	move	$t8, $a5
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	ori	$s6, $zero, 1
	move	$s7, $a5
	ori	$s8, $zero, 1
	.p2align	4, , 16
.LBB7_6:                                # %vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$ra, $s7, 31, 0
	mul.d	$ra, $ra, $a1
	srli.d	$ra, $ra, 32
	sub.d	$s1, $s7, $ra
	bstrpick.d	$s1, $s1, 31, 1
	add.d	$s1, $s1, $ra
	srli.d	$s1, $s1, 2
	slli.d	$ra, $s1, 3
	sub.d	$s1, $s1, $ra
	add.d	$s1, $s8, $s1
	bstrpick.d	$ra, $s5, 31, 0
	mul.d	$t0, $ra, $a2
	srli.d	$t0, $t0, 35
	mul.d	$t0, $t0, $t1
	sub.d	$t0, $s6, $t0
	mul.d	$t4, $ra, $a1
	srli.d	$t4, $t4, 32
	sub.d	$s3, $s5, $t4
	bstrpick.d	$s3, $s3, 31, 1
	add.d	$t4, $s3, $t4
	srli.d	$t4, $t4, 2
	slli.d	$s3, $t4, 3
	sub.d	$t4, $t4, $s3
	add.d	$t4, $s6, $t4
	mul.d	$s3, $ra, $a3
	srli.d	$s3, $s3, 34
	mul.d	$s3, $s3, $t2
	sub.d	$s3, $s6, $s3
	bstrpick.d	$ra, $t8, 31, 0
	mul.d	$a6, $ra, $a2
	srli.d	$a6, $a6, 35
	mul.d	$a6, $a6, $t1
	sub.d	$a6, $t7, $a6
	mul.d	$a7, $ra, $a1
	srli.d	$a7, $a7, 32
	sub.d	$fp, $t8, $a7
	bstrpick.d	$fp, $fp, 31, 1
	add.d	$a7, $fp, $a7
	srli.d	$a7, $a7, 2
	slli.d	$fp, $a7, 3
	sub.d	$a7, $a7, $fp
	add.d	$a7, $t7, $a7
	mul.d	$fp, $ra, $a3
	srli.d	$fp, $fp, 34
	mul.d	$fp, $fp, $t2
	sub.d	$fp, $t7, $fp
	bstrpick.d	$ra, $t6, 31, 0
	mul.d	$ra, $ra, $a1
	srli.d	$ra, $ra, 32
	sub.d	$s0, $t6, $ra
	bstrpick.d	$s0, $s0, 31, 1
	add.d	$s0, $s0, $ra
	srli.d	$s0, $s0, 2
	slli.d	$ra, $s0, 3
	sub.d	$s0, $s0, $ra
	add.d	$s0, $s8, $s0
	add.d	$s1, $a5, $s1
	add.d	$ra, $t5, $s4
	add.w	$fp, $a5, $fp
	add.w	$s3, $a5, $s3
	sltui	$fp, $fp, 1
	sltui	$s3, $s3, 1
	add.w	$a7, $a5, $a7
	add.w	$t4, $a5, $t4
	sltui	$a7, $a7, 1
	sltui	$t4, $t4, 1
	add.w	$a6, $a5, $a6
	add.w	$t0, $a5, $t0
	sltui	$a6, $a6, 1
	sltui	$t0, $t0, 1
	masknez	$s0, $s0, $a7
	maskeqz	$a7, $t3, $a7
	or	$a7, $a7, $s0
	masknez	$a7, $a7, $fp
	maskeqz	$fp, $t3, $fp
	or	$a7, $fp, $a7
	masknez	$a7, $a7, $a6
	maskeqz	$a6, $t3, $a6
	or	$a6, $a6, $a7
	masknez	$a7, $s1, $t4
	maskeqz	$t4, $t3, $t4
	or	$a7, $t4, $a7
	masknez	$a7, $a7, $s3
	maskeqz	$t4, $t3, $s3
	or	$a7, $t4, $a7
	masknez	$a7, $a7, $t0
	maskeqz	$t0, $t3, $t0
	or	$a7, $t0, $a7
	stptr.w	$a6, $ra, 11200
	stptr.w	$a7, $ra, 11204
	add.d	$s8, $s8, $a4
	add.w	$s7, $s7, $a4
	addi.d	$s6, $s6, 2
	addi.w	$s5, $s5, 2
	addi.d	$s4, $s4, 8
	addi.d	$t7, $t7, 2
	addi.w	$t8, $t8, 2
	add.w	$t6, $t6, $a4
	bnez	$s4, .LBB7_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	addi.w	$a5, $a5, 1
	addi.d	$a4, $a4, 2
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	addi.w	$s5, $s5, 1
	add.d	$t5, $t5, $s2
	ori	$a7, $zero, 2800
	bne	$a6, $a7, .LBB7_5
# %bb.8:                                # %.preheader34.i.preheader
	move	$a5, $zero
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	add.d	$a6, $s4, $a4
	addi.d	$a7, $s4, 16
	lu12i.w	$a4, 7653
	ori	$s5, $a4, 2116
	lu12i.w	$a4, -3
	ori	$t0, $a4, 1088
	ori	$t1, $zero, 2800
	move	$t2, $s4
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                #   in Loop: Header=BB7_10 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$t2, $t2, $s2
	beq	$a5, $t1, .LBB7_17
.LBB7_10:                               # %.preheader34.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #       Child Loop BB7_16 Depth 3
                                        #       Child Loop BB7_14 Depth 3
	move	$t3, $zero
	alsl.d	$t4, $a5, $s4, 2
	add.d	$t5, $t4, $s5
	mul.d	$t6, $a5, $s2
	add.d	$t6, $s4, $t6
	sltu	$t5, $s4, $t5
	sltu	$t4, $t4, $a6
	and	$t4, $t5, $t4
	add.d	$t5, $t6, $s2
	sltu	$t5, $s4, $t5
	sltu	$t6, $t6, $a6
	and	$t5, $t5, $t6
	or	$t4, $t4, $t5
	move	$t5, $s4
	move	$t6, $a7
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %middle.block93
                                        #   in Loop: Header=BB7_12 Depth=2
	addi.d	$t3, $t3, 1
	add.d	$t6, $t6, $s2
	add.d	$t5, $t5, $s2
	beq	$t3, $t1, .LBB7_9
.LBB7_12:                               # %.preheader.i17
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_16 Depth 3
                                        #       Child Loop BB7_14 Depth 3
	mul.d	$t7, $t3, $s2
	add.d	$t7, $s4, $t7
	alsl.d	$t7, $a5, $t7, 2
	beqz	$t4, .LBB7_15
# %bb.13:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_12 Depth=2
	move	$t8, $t0
	.p2align	4, , 16
.LBB7_14:                               # %scalar.ph
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$fp, $t5, $t8
	ld.w	$s0, $t7, 0
	add.d	$s1, $t2, $t8
	ldx.w	$s1, $s1, $s2
	ldptr.w	$s3, $fp, 11200
	add.w	$s0, $s1, $s0
	slt	$s1, $s3, $s0
	masknez	$s0, $s0, $s1
	maskeqz	$s1, $s3, $s1
	or	$s0, $s1, $s0
	addi.d	$t8, $t8, 4
	stptr.w	$s0, $fp, 11200
	bnez	$t8, .LBB7_14
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_15:                               # %vector.body87.preheader
                                        #   in Loop: Header=BB7_12 Depth=2
	vldrepl.w	$vr0, $t7, 0
	ori	$t7, $a4, 1088
	.p2align	4, , 16
.LBB7_16:                               # %vector.body87
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t8, $t6, $t7
	ori	$fp, $a0, 2992
	add.d	$s0, $t2, $t7
	vldx	$vr1, $s0, $s2
	ori	$s1, $a0, 3024
	vldx	$vr2, $s0, $s1
	vldx	$vr3, $t8, $fp
	vldx	$vr4, $t8, $s2
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	vmin.w	$vr1, $vr3, $vr1
	vmin.w	$vr2, $vr4, $vr2
	vstx	$vr1, $t8, $fp
	addi.d	$t7, $t7, 32
	vstx	$vr2, $t8, $s2
	bnez	$t7, .LBB7_16
	b	.LBB7_11
.LBB7_17:                               # %.preheader.i21.preheader
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	ori	$s6, $zero, 1
	ori	$a4, $a4, 1088
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	ori	$t2, $zero, 11
	ori	$t3, $zero, 13
	ori	$t4, $zero, 999
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_18:                               # %.preheader.i21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	move	$t7, $zero
	move	$t8, $zero
	move	$s4, $a6
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	move	$s8, $a6
	ori	$ra, $zero, 1
	.p2align	4, , 16
.LBB7_19:                               # %vector.body96
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$fp, $s8, 31, 0
	mul.d	$fp, $fp, $a1
	srli.d	$fp, $fp, 32
	sub.d	$s0, $s8, $fp
	bstrpick.d	$s0, $s0, 31, 1
	add.d	$fp, $s0, $fp
	srli.d	$fp, $fp, 2
	slli.d	$s0, $fp, 3
	sub.d	$fp, $fp, $s0
	add.d	$fp, $ra, $fp
	bstrpick.d	$s0, $s6, 31, 0
	mul.d	$s1, $s0, $a2
	srli.d	$s1, $s1, 35
	mul.d	$s1, $s1, $t2
	sub.d	$s1, $s7, $s1
	mul.d	$s3, $s0, $a1
	srli.d	$s3, $s3, 32
	sub.d	$t1, $s6, $s3
	bstrpick.d	$t1, $t1, 31, 1
	add.d	$t1, $t1, $s3
	srli.d	$t1, $t1, 2
	slli.d	$s3, $t1, 3
	sub.d	$t1, $t1, $s3
	add.d	$t1, $s7, $t1
	mul.d	$s0, $s0, $a3
	srli.d	$s0, $s0, 34
	mul.d	$s0, $s0, $t3
	sub.d	$s0, $s7, $s0
	bstrpick.d	$s3, $s4, 31, 0
	mul.d	$t5, $s3, $a2
	srli.d	$t5, $t5, 35
	mul.d	$t5, $t5, $t2
	sub.d	$t5, $t8, $t5
	mul.d	$a4, $s3, $a1
	srli.d	$a4, $a4, 32
	sub.d	$a7, $s4, $a4
	bstrpick.d	$a7, $a7, 31, 1
	add.d	$a4, $a7, $a4
	srli.d	$a4, $a4, 2
	slli.d	$a7, $a4, 3
	sub.d	$a4, $a4, $a7
	add.d	$a4, $t8, $a4
	mul.d	$a7, $s3, $a3
	srli.d	$a7, $a7, 34
	mul.d	$a7, $a7, $t3
	sub.d	$a7, $t8, $a7
	bstrpick.d	$s3, $t7, 31, 0
	mul.d	$s3, $s3, $a1
	srli.d	$s3, $s3, 32
	sub.d	$t0, $t7, $s3
	bstrpick.d	$t0, $t0, 31, 1
	add.d	$t0, $t0, $s3
	srli.d	$t0, $t0, 2
	slli.d	$s3, $t0, 3
	sub.d	$t0, $t0, $s3
	add.d	$t0, $ra, $t0
	add.d	$fp, $a6, $fp
	add.d	$s3, $t6, $s5
	add.w	$a7, $a6, $a7
	add.w	$s0, $a6, $s0
	sltui	$a7, $a7, 1
	sltui	$s0, $s0, 1
	add.w	$a4, $a6, $a4
	add.w	$t1, $a6, $t1
	sltui	$a4, $a4, 1
	sltui	$t1, $t1, 1
	add.w	$t5, $a6, $t5
	add.w	$s1, $a6, $s1
	sltui	$t5, $t5, 1
	sltui	$s1, $s1, 1
	masknez	$t0, $t0, $a4
	maskeqz	$a4, $t4, $a4
	or	$a4, $a4, $t0
	masknez	$a4, $a4, $a7
	maskeqz	$a7, $t4, $a7
	or	$a4, $a7, $a4
	masknez	$a4, $a4, $t5
	maskeqz	$a7, $t4, $t5
	or	$a4, $a7, $a4
	masknez	$a7, $fp, $t1
	maskeqz	$t0, $t4, $t1
	or	$a7, $t0, $a7
	masknez	$a7, $a7, $s0
	maskeqz	$t0, $t4, $s0
	or	$a7, $t0, $a7
	masknez	$a7, $a7, $s1
	maskeqz	$t0, $t4, $s1
	or	$a7, $t0, $a7
	stptr.w	$a4, $s3, 11200
	stptr.w	$a7, $s3, 11204
	add.d	$ra, $ra, $a5
	add.w	$s8, $s8, $a5
	addi.d	$s7, $s7, 2
	addi.w	$s6, $s6, 2
	addi.d	$s5, $s5, 8
	addi.d	$t8, $t8, 2
	addi.w	$s4, $s4, 2
	add.w	$t7, $t7, $a5
	bnez	$s5, .LBB7_19
# %bb.20:                               # %middle.block99
                                        #   in Loop: Header=BB7_18 Depth=1
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	addi.w	$a6, $a6, 1
	addi.d	$a5, $a5, 2
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	addi.w	$s6, $s6, 1
	add.d	$t6, $t6, $s2
	ori	$a4, $zero, 2800
	bne	$a7, $a4, .LBB7_18
# %bb.21:                               # %.preheader34.i32.preheader
	move	$a1, $zero
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $s0, $a2
	addi.d	$a3, $s0, 16
	lu12i.w	$s3, -3
	ori	$a5, $s3, 1088
	ori	$a6, $zero, 2800
	move	$a7, $s0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_22:                               #   in Loop: Header=BB7_23 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a7, $a7, $s2
	beq	$a1, $a6, .LBB7_30
.LBB7_23:                               # %.preheader34.i32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_25 Depth 2
                                        #       Child Loop BB7_29 Depth 3
                                        #       Child Loop BB7_27 Depth 3
	move	$t0, $zero
	alsl.d	$a4, $a1, $s0, 2
	add.d	$t1, $a4, $s1
	mul.d	$t2, $a1, $s2
	add.d	$t2, $s0, $t2
	sltu	$t1, $s0, $t1
	sltu	$a4, $a4, $a2
	and	$a4, $t1, $a4
	add.d	$t1, $t2, $s2
	sltu	$t1, $s0, $t1
	sltu	$t2, $t2, $a2
	and	$t1, $t1, $t2
	or	$t1, $a4, $t1
	move	$t2, $s0
	move	$t3, $a3
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_24:                               # %middle.block124
                                        #   in Loop: Header=BB7_25 Depth=2
	addi.d	$t0, $t0, 1
	add.d	$t3, $t3, $s2
	add.d	$t2, $t2, $s2
	beq	$t0, $a6, .LBB7_22
.LBB7_25:                               # %.preheader.i34
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_29 Depth 3
                                        #       Child Loop BB7_27 Depth 3
	mul.d	$a4, $t0, $s2
	add.d	$a4, $s0, $a4
	alsl.d	$t4, $a1, $a4, 2
	beqz	$t1, .LBB7_28
# %bb.26:                               # %scalar.ph113.preheader
                                        #   in Loop: Header=BB7_25 Depth=2
	move	$t5, $a5
	.p2align	4, , 16
.LBB7_27:                               # %scalar.ph113
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a4, $t2, $t5
	ld.w	$t6, $t4, 0
	add.d	$t7, $a7, $t5
	ldx.w	$t7, $t7, $s2
	ldptr.w	$t8, $a4, 11200
	add.w	$t6, $t7, $t6
	slt	$t7, $t8, $t6
	masknez	$t6, $t6, $t7
	maskeqz	$t7, $t8, $t7
	or	$t6, $t7, $t6
	addi.d	$t5, $t5, 4
	stptr.w	$t6, $a4, 11200
	bnez	$t5, .LBB7_27
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_28:                               # %vector.body115.preheader
                                        #   in Loop: Header=BB7_25 Depth=2
	vldrepl.w	$vr0, $t4, 0
	ori	$t4, $s3, 1088
	.p2align	4, , 16
.LBB7_29:                               # %vector.body115
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a4, $t3, $t4
	ori	$t5, $a0, 2992
	add.d	$t6, $a7, $t4
	vldx	$vr1, $t6, $s2
	ori	$t7, $a0, 3024
	vldx	$vr2, $t6, $t7
	vldx	$vr3, $a4, $t5
	vldx	$vr4, $a4, $s2
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	vmin.w	$vr1, $vr3, $vr1
	vmin.w	$vr2, $vr4, $vr2
	vstx	$vr1, $a4, $t5
	addi.d	$t4, $t4, 32
	vstx	$vr2, $a4, $s2
	bnez	$t4, .LBB7_29
	b	.LBB7_24
.LBB7_30:                               # %.preheader.i44.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_0)
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
	lu12i.w	$fp, 10
	ori	$a0, $fp, 3841
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $fp, 3840
	stx.b	$zero, $s1, $a0
	addi.d	$fp, $s1, 7
	ori	$s3, $s3, 1088
	ori	$s5, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s6, $a0, %got_pc_lo12(stderr)
	move	$s7, $zero
	move	$s8, $zero
	ori	$s4, $zero, 2800
.LBB7_36:                               # %.preheader.i51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_37 Depth 2
	add.d	$a0, $s0, $s7
	move	$a1, $fp
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
	bstrins.d	$a3, $s5, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s5, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s5, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s5, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s5, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s5, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s5, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s5, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_37
# %bb.38:                               #   in Loop: Header=BB7_36 Depth=1
	ld.d	$a1, $s6, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	add.d	$s7, $s7, $s2
	bne	$s8, $s4, .LBB7_36
# %bb.39:                               # %print_array.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
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
	lu52i.d	$a1, $a1, 1006
	st.d	$a1, $sp, 0
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a5, $a2
	move	$a6, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB7_41:
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
