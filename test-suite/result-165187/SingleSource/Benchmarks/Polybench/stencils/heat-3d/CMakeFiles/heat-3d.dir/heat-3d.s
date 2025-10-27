	.file	"heat-3d.c"
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
	.dword	0x405e000000000000              # double 120
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	st.d	$zero, $sp, 64
	lu12i.w	$a1, 1
	lu12i.w	$a2, 3375
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 64
	beqz	$fp, .LBB7_35
# %bb.1:
	bnez	$a0, .LBB7_35
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 64
	lu12i.w	$a1, 1
	lu12i.w	$a2, 3375
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 64
	beqz	$s0, .LBB7_35
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_35
# %bb.4:                                # %polybench_alloc_data.exit12
	st.d	$zero, $sp, 64
	lu12i.w	$a1, 1
	lu12i.w	$a2, 3375
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 64
	beqz	$s1, .LBB7_35
# %bb.5:                                # %polybench_alloc_data.exit12
	bnez	$a0, .LBB7_35
# %bb.6:                                # %polybench_alloc_data.exit14
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $zero
	ori	$a3, $zero, 120
	vldi	$vr0, -988
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI7_0)
	ori	$a4, $zero, 960
	lu12i.w	$a0, 28
	ori	$s3, $a0, 512
	ori	$a5, $zero, 120
	.p2align	4, , 16
.LBB7_7:                                # %.preheader24.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
                                        #       Child Loop BB7_9 Depth 3
	move	$a6, $zero
	move	$a7, $a1
	move	$t0, $a5
	.p2align	4, , 16
.LBB7_8:                                # %.preheader.i
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_9 Depth 3
	move	$t1, $zero
	add.d	$t2, $fp, $a7
	add.d	$t3, $s1, $a7
	move	$t4, $t0
	.p2align	4, , 16
.LBB7_9:                                #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa2, $t4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fdiv.d	$fa2, $fa2, $fa1
	fstx.d	$fa2, $t3, $t1
	fstx.d	$fa2, $t2, $t1
	addi.d	$t1, $t1, 8
	addi.w	$t4, $t4, -1
	bne	$t1, $a4, .LBB7_9
# %bb.10:                               #   in Loop: Header=BB7_8 Depth=2
	addi.d	$a6, $a6, 1
	addi.w	$t0, $t0, 1
	addi.d	$a7, $a7, 960
	bne	$a6, $a3, .LBB7_8
# %bb.11:                               #   in Loop: Header=BB7_7 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$a5, $a5, 1
	add.d	$a1, $a1, $s3
	bne	$a2, $a3, .LBB7_7
# %bb.12:                               # %.preheader117.i.preheader
	lu12i.w	$a2, 56
	ori	$a3, $a2, 1992
	add.d	$a1, $fp, $a3
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $a0, 1480
	add.d	$a4, $s1, $a1
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ori	$a4, $a0, 520
	add.d	$a5, $fp, $a4
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $a0, 1472
	add.d	$a5, $fp, $a0
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	add.d	$a3, $s1, $a3
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	add.d	$a3, $fp, $a1
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	add.d	$a7, $s1, $a4
	add.d	$t0, $s1, $a0
	ori	$t1, $zero, 1
	ori	$t2, $a2, 56
	lu12i.w	$a0, 84
	ori	$t3, $a0, 568
	vldi	$vr0, -896
	vldi	$vr1, -960
	ori	$t4, $zero, 944
	ori	$t5, $zero, 119
	b	.LBB7_14
	.p2align	4, , 16
.LBB7_13:                               #   in Loop: Header=BB7_14 Depth=1
	addi.w	$t1, $t1, 1
	ori	$a0, $zero, 501
	beq	$t1, $a0, .LBB7_28
.LBB7_14:                               # %.preheader117.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
                                        #       Child Loop BB7_18 Depth 3
                                        #         Child Loop BB7_20 Depth 4
                                        #         Child Loop BB7_19 Depth 4
                                        #     Child Loop BB7_23 Depth 2
                                        #       Child Loop BB7_25 Depth 3
                                        #         Child Loop BB7_27 Depth 4
                                        #         Child Loop BB7_26 Depth 4
	move	$t7, $zero
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	move	$t6, $fp
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ori	$s7, $zero, 1
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_15:                               #   in Loop: Header=BB7_16 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$t7, $t7, 1
	add.d	$a0, $a0, $s3
	add.d	$a2, $a2, $s3
	add.d	$a3, $a3, $s3
	add.d	$t6, $t6, $s3
	add.d	$t8, $t8, $s3
	beq	$s7, $t5, .LBB7_21
.LBB7_16:                               # %.preheader115.i
                                        #   Parent Loop BB7_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_18 Depth 3
                                        #         Child Loop BB7_20 Depth 4
                                        #         Child Loop BB7_19 Depth 4
	mul.d	$a4, $t7, $s3
	add.d	$s0, $s1, $a4
	add.d	$s2, $s0, $a1
	add.d	$s0, $s0, $t2
	add.d	$a4, $fp, $a4
	addi.d	$s4, $a4, 968
	add.d	$a4, $a4, $t3
	sltu	$a4, $s2, $a4
	sltu	$s0, $s4, $s0
	and	$s0, $a4, $s0
	ori	$s8, $zero, 1
	move	$ra, $t8
	move	$s2, $t6
	move	$s4, $a3
	move	$s5, $a2
	move	$s6, $a0
	b	.LBB7_18
	.p2align	4, , 16
.LBB7_17:                               # %middle.block59
                                        #   in Loop: Header=BB7_18 Depth=3
	addi.d	$s8, $s8, 1
	addi.d	$s6, $s6, 960
	addi.d	$s5, $s5, 960
	addi.d	$s4, $s4, 960
	addi.d	$s2, $s2, 960
	addi.d	$ra, $ra, 960
	beq	$s8, $t5, .LBB7_15
.LBB7_18:                               # %.preheader113.i
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_20 Depth 4
                                        #         Child Loop BB7_19 Depth 4
	move	$a4, $zero
	beqz	$s0, .LBB7_20
	.p2align	4, , 16
.LBB7_19:                               # %scalar.ph46
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_16 Depth=2
                                        #       Parent Loop BB7_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa2, $s6, $a4
	add.d	$a5, $ra, $a4
	fld.d	$fa3, $a5, 8
	add.d	$a6, $s2, $a4
	fld.d	$fa4, $a6, 968
	fld.d	$fa5, $a5, 968
	fld.d	$fa6, $a5, -952
	fmadd.d	$fa2, $fa3, $fa0, $fa2
	fadd.d	$fa2, $fa2, $fa4
	fmadd.d	$fa4, $fa3, $fa0, $fa5
	fadd.d	$fa4, $fa4, $fa6
	fld.d	$fa5, $a5, 16
	fldx.d	$fa6, $ra, $a4
	fmul.d	$fa4, $fa4, $fa1
	fmadd.d	$fa2, $fa2, $fa1, $fa4
	fmadd.d	$fa4, $fa3, $fa0, $fa5
	fadd.d	$fa4, $fa4, $fa6
	fmadd.d	$fa2, $fa4, $fa1, $fa2
	fadd.d	$fa2, $fa3, $fa2
	fstx.d	$fa2, $s5, $a4
	addi.d	$a4, $a4, 8
	bne	$a4, $t4, .LBB7_19
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_20:                               # %vector.body48
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_16 Depth=2
                                        #       Parent Loop BB7_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr2, $s6, $a4
	add.d	$a5, $s4, $a4
	vld	$vr3, $a5, 960
	add.d	$a6, $s2, $a4
	vld	$vr4, $a6, 968
	vld	$vr5, $a5, 1920
	vldx	$vr6, $s4, $a4
	vfmadd.d	$vr2, $vr3, $vr0, $vr2
	vfadd.d	$vr2, $vr2, $vr4
	vfmadd.d	$vr4, $vr3, $vr0, $vr5
	vfadd.d	$vr4, $vr4, $vr6
	vld	$vr5, $a5, 968
	vld	$vr6, $a5, 952
	vfmul.d	$vr4, $vr4, $vr1
	vfmadd.d	$vr2, $vr2, $vr1, $vr4
	vfmadd.d	$vr4, $vr3, $vr0, $vr5
	vfadd.d	$vr4, $vr4, $vr6
	vfmadd.d	$vr2, $vr4, $vr1, $vr2
	vfadd.d	$vr2, $vr3, $vr2
	vstx	$vr2, $s5, $a4
	addi.d	$a4, $a4, 16
	bne	$a4, $t4, .LBB7_20
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_21:                               # %.preheader114.i.preheader
                                        #   in Loop: Header=BB7_14 Depth=1
	move	$t7, $zero
	ori	$t8, $zero, 1
	move	$s2, $t0
	move	$s4, $s1
	move	$s5, $a7
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_22:                               #   in Loop: Header=BB7_23 Depth=2
	addi.d	$t8, $t8, 1
	addi.d	$t7, $t7, 1
	add.d	$s7, $s7, $s3
	add.d	$s6, $s6, $s3
	add.d	$s5, $s5, $s3
	add.d	$s4, $s4, $s3
	add.d	$s2, $s2, $s3
	beq	$t8, $t5, .LBB7_13
.LBB7_23:                               # %.preheader114.i
                                        #   Parent Loop BB7_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_25 Depth 3
                                        #         Child Loop BB7_27 Depth 4
                                        #         Child Loop BB7_26 Depth 4
	mul.d	$a0, $t7, $s3
	add.d	$a2, $fp, $a0
	add.d	$a3, $a2, $a1
	add.d	$a2, $a2, $t2
	add.d	$a0, $s1, $a0
	addi.d	$a4, $a0, 968
	add.d	$a0, $a0, $t3
	sltu	$a0, $a3, $a0
	sltu	$a2, $a4, $a2
	and	$s0, $a0, $a2
	move	$s8, $s2
	move	$t6, $s4
	move	$a3, $s5
	move	$a2, $s6
	move	$a0, $s7
	ori	$ra, $zero, 1
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_24:                               # %middle.block
                                        #   in Loop: Header=BB7_25 Depth=3
	addi.d	$ra, $ra, 1
	addi.d	$a0, $a0, 960
	addi.d	$a2, $a2, 960
	addi.d	$a3, $a3, 960
	addi.d	$t6, $t6, 960
	addi.d	$s8, $s8, 960
	beq	$ra, $t5, .LBB7_22
.LBB7_25:                               # %.preheader.i18
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_23 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_27 Depth 4
                                        #         Child Loop BB7_26 Depth 4
	move	$a4, $zero
	beqz	$s0, .LBB7_27
	.p2align	4, , 16
.LBB7_26:                               # %scalar.ph
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_23 Depth=2
                                        #       Parent Loop BB7_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa2, $a0, $a4
	add.d	$a5, $s8, $a4
	fld.d	$fa3, $a5, 8
	add.d	$a6, $t6, $a4
	fld.d	$fa4, $a6, 968
	fld.d	$fa5, $a5, 968
	fld.d	$fa6, $a5, -952
	fmadd.d	$fa2, $fa3, $fa0, $fa2
	fadd.d	$fa2, $fa2, $fa4
	fmadd.d	$fa4, $fa3, $fa0, $fa5
	fadd.d	$fa4, $fa4, $fa6
	fld.d	$fa5, $a5, 16
	fldx.d	$fa6, $s8, $a4
	fmul.d	$fa4, $fa4, $fa1
	fmadd.d	$fa2, $fa2, $fa1, $fa4
	fmadd.d	$fa4, $fa3, $fa0, $fa5
	fadd.d	$fa4, $fa4, $fa6
	fmadd.d	$fa2, $fa4, $fa1, $fa2
	fadd.d	$fa2, $fa3, $fa2
	fstx.d	$fa2, $a2, $a4
	addi.d	$a4, $a4, 8
	bne	$a4, $t4, .LBB7_26
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_27:                               # %vector.body
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_23 Depth=2
                                        #       Parent Loop BB7_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr2, $a0, $a4
	add.d	$a5, $a3, $a4
	vld	$vr3, $a5, 960
	add.d	$a6, $t6, $a4
	vld	$vr4, $a6, 968
	vld	$vr5, $a5, 1920
	vldx	$vr6, $a3, $a4
	vfmadd.d	$vr2, $vr3, $vr0, $vr2
	vfadd.d	$vr2, $vr2, $vr4
	vfmadd.d	$vr4, $vr3, $vr0, $vr5
	vfadd.d	$vr4, $vr4, $vr6
	vld	$vr5, $a5, 968
	vld	$vr6, $a5, 952
	vfmul.d	$vr4, $vr4, $vr1
	vfmadd.d	$vr2, $vr2, $vr1, $vr4
	vfmadd.d	$vr4, $vr3, $vr0, $vr5
	vfadd.d	$vr4, $vr4, $vr6
	vfmadd.d	$vr2, $vr4, $vr1, $vr2
	vfadd.d	$vr2, $vr3, $vr2
	vstx	$vr2, $a2, $a4
	addi.d	$a4, $a4, 16
	bne	$a4, $t4, .LBB7_27
	b	.LBB7_24
.LBB7_28:                               # %kernel_heat_3d.exit
	ori	$a0, $zero, 1921
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.b	$zero, $a0, 1920
	ori	$s4, $zero, 3
	ori	$s5, $zero, 1920
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$s8, $zero
	.p2align	4, , 16
.LBB7_29:                               # %.preheader22.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_30 Depth 2
                                        #       Child Loop BB7_31 Depth 3
	move	$s0, $zero
	move	$s7, $s6
.LBB7_30:                               # %.preheader.i19
                                        #   Parent Loop BB7_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_31 Depth 3
	move	$a0, $zero
	move	$a1, $s7
	.p2align	4, , 16
.LBB7_31:                               #   Parent Loop BB7_29 Depth=1
                                        #     Parent Loop BB7_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a2, $fp, $a1
	srli.d	$a3, $a2, 8
	srli.d	$a4, $a2, 16
	srli.d	$a5, $a2, 24
	srli.d	$a6, $a2, 32
	srli.d	$a7, $a2, 40
	srli.d	$t0, $a2, 48
	srli.d	$t1, $a2, 56
	bstrins.d	$a2, $s4, 63, 4
	add.d	$t2, $s2, $a0
	stx.b	$a2, $s2, $a0
	st.b	$a2, $t2, 1
	bstrins.d	$a3, $s4, 63, 4
	st.b	$a3, $t2, 2
	st.b	$a3, $t2, 3
	bstrins.d	$a4, $s4, 63, 4
	st.b	$a4, $t2, 4
	st.b	$a4, $t2, 5
	bstrins.d	$a5, $s4, 63, 4
	st.b	$a5, $t2, 6
	st.b	$a5, $t2, 7
	bstrins.d	$a6, $s4, 63, 4
	st.b	$a6, $t2, 8
	st.b	$a6, $t2, 9
	bstrins.d	$a7, $s4, 63, 4
	st.b	$a7, $t2, 10
	st.b	$a7, $t2, 11
	bstrins.d	$t0, $s4, 63, 4
	st.b	$t0, $t2, 12
	st.b	$t0, $t2, 13
	bstrins.d	$t1, $s4, 63, 4
	st.b	$t1, $t2, 14
	st.b	$t1, $t2, 15
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 8
	bne	$a0, $s5, .LBB7_31
# %bb.32:                               #   in Loop: Header=BB7_30 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	addi.d	$s7, $s7, 960
	ori	$a0, $zero, 120
	bne	$s0, $a0, .LBB7_30
# %bb.33:                               #   in Loop: Header=BB7_29 Depth=1
	addi.d	$s8, $s8, 1
	add.d	$s6, $s6, $s3
	ori	$a0, $zero, 120
	bne	$s8, $a0, .LBB7_29
# %bb.34:                               # %print_array.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB7_35:
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
