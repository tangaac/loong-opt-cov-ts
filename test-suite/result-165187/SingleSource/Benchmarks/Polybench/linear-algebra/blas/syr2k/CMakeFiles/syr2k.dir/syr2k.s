	.file	"syr2k.c"
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
	.dword	0x4092c00000000000              # double 1200
.LCPI7_2:
	.dword	0x408f400000000000              # double 1000
.LCPI7_3:
	.dword	0x3ff3333333333333              # double 1.2
.LCPI7_4:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	st.d	$zero, $sp, 32
	lu12i.w	$a0, 2812
	ori	$s0, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_65
# %bb.1:
	bnez	$a0, .LBB7_65
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_65
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_65
# %bb.4:                                # %polybench_alloc_data.exit26
	st.d	$zero, $sp, 32
	lu12i.w	$a0, 2343
	ori	$s2, $a0, 3072
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 32
	beqz	$s5, .LBB7_65
# %bb.5:                                # %polybench_alloc_data.exit26
	bnez	$a0, .LBB7_65
# %bb.6:                                # %polybench_alloc_data.exit28
	st.d	$zero, $sp, 32
	lu12i.w	$s3, 1
	addi.d	$a0, $sp, 32
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 32
	beqz	$fp, .LBB7_65
# %bb.7:                                # %polybench_alloc_data.exit28
	bnez	$a0, .LBB7_65
# %bb.8:                                # %polybench_alloc_data.exit30
	move	$a2, $zero
	move	$a5, $zero
	sub.d	$a6, $fp, $s5
	ori	$a7, $zero, 15
	lu12i.w	$a0, -2
	ori	$t0, $a0, 192
	lu12i.w	$a0, 67108
	ori	$t1, $a0, 3539
	ori	$t2, $zero, 1000
	lu12i.w	$a0, 111848
	ori	$a3, $a0, 437
	ori	$t3, $zero, 1200
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI7_1)
	ori	$a1, $s3, 3904
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_2)
	pcalau12i	$a4, %pc_hi20(.LCPI7_0)
	vld	$vr2, $a4, %pc_lo12(.LCPI7_0)
	ori	$a0, $zero, 0
	ori	$t4, $zero, 0
	lu32i.d	$t4, 180224
	lu52i.d	$t4, $t4, 1033
	vreplgr2vr.d	$vr3, $t4
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	vreplgr2vr.d	$vr4, $a0
	move	$t4, $s5
	move	$t5, $fp
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %middle.block
                                        #   in Loop: Header=BB7_10 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$t5, $t5, $a1
	add.d	$t4, $t4, $a1
	addi.d	$a2, $a2, 1
	beq	$a5, $t3, .LBB7_15
.LBB7_10:                               # %.preheader43.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_12 Depth 2
	bltu	$a7, $a6, .LBB7_13
# %bb.11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_10 Depth=1
	ori	$a0, $zero, 2
	ori	$t6, $zero, 1
	move	$t7, $t0
	.p2align	4, , 16
.LBB7_12:                               # %scalar.ph
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t8, $a0, 31, 0
	mul.d	$t8, $t8, $t1
	srli.d	$t8, $t8, 38
	mul.d	$t8, $t8, $t2
	sub.d	$t8, $a0, $t8
	bstrpick.d	$t8, $t8, 31, 0
	bstrpick.d	$s0, $t6, 31, 0
	mul.d	$s0, $s0, $a3
	srli.d	$s0, $s0, 39
	mul.d	$s0, $s0, $t3
	sub.d	$s0, $t6, $s0
	bstrpick.d	$s0, $s0, 31, 0
	movgr2fr.d	$fa5, $s0
	ffint.d.l	$fa5, $fa5
	fdiv.d	$fa5, $fa5, $fa1
	add.d	$s0, $t4, $t7
	fstx.d	$fa5, $s0, $a1
	movgr2fr.d	$fa5, $t8
	ffint.d.l	$fa5, $fa5
	fdiv.d	$fa5, $fa5, $fa0
	add.d	$t8, $t5, $t7
	fstx.d	$fa5, $t8, $a1
	addi.d	$t7, $t7, 8
	add.w	$a0, $a0, $a2
	add.w	$t6, $t6, $a2
	bnez	$t7, .LBB7_12
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_13:                               # %vector.ph
                                        #   in Loop: Header=BB7_10 Depth=1
	vreplgr2vr.d	$vr5, $a5
	move	$t6, $t0
	vori.b	$vr6, $vr2, 0
	.p2align	4, , 16
.LBB7_14:                               # %vector.body
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmul.d	$vr7, $vr6, $vr5
	vshuf4i.w	$vr7, $vr7, 8
	vaddi.wu	$vr8, $vr7, 1
	vpickve2gr.w	$a0, $vr8, 0
	mod.wu	$a0, $a0, $t3
	bstrpick.d	$a0, $a0, 31, 0
	vpickve2gr.w	$t7, $vr8, 1
	mod.wu	$t7, $t7, $t3
	bstrpick.d	$t7, $t7, 31, 0
	movgr2fr.d	$ft0, $t7
	ffint.d.l	$ft0, $ft0
	movgr2fr.d	$ft1, $a0
	ffint.d.l	$ft1, $ft1
	vextrins.d	$vr9, $vr8, 16
	vfdiv.d	$vr8, $vr9, $vr3
	add.d	$a0, $t4, $t6
	vstx	$vr8, $a0, $a1
	vaddi.wu	$vr7, $vr7, 2
	vpickve2gr.w	$a0, $vr7, 0
	mod.wu	$a0, $a0, $t2
	bstrpick.d	$a0, $a0, 31, 0
	vpickve2gr.w	$t7, $vr7, 1
	mod.wu	$t7, $t7, $t2
	bstrpick.d	$t7, $t7, 31, 0
	movgr2fr.d	$fa7, $t7
	ffint.d.l	$fa7, $fa7
	movgr2fr.d	$ft0, $a0
	ffint.d.l	$ft0, $ft0
	vextrins.d	$vr8, $vr7, 16
	vfdiv.d	$vr7, $vr8, $vr4
	add.d	$a0, $t5, $t6
	vstx	$vr7, $a0, $a1
	addi.d	$t6, $t6, 16
	vaddi.du	$vr6, $vr6, 2
	bnez	$t6, .LBB7_14
	b	.LBB7_9
.LBB7_15:                               # %.preheader.i.preheader
	move	$a5, $zero
	move	$a6, $zero
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a7, $t4, $t3
	ori	$t0, $zero, 15
	lu12i.w	$a0, -3
	ori	$t1, $a0, 2688
	ori	$t2, $zero, 1200
	lu12i.w	$a2, 2
	ori	$s4, $a2, 1408
	vld	$vr1, $a4, %pc_lo12(.LCPI7_0)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -49152
	lu52i.d	$a0, $a0, 1032
	vreplgr2vr.d	$vr2, $a0
	move	$a4, $t3
	move	$t3, $t4
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_16:                               # %middle.block107
                                        #   in Loop: Header=BB7_17 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$t3, $t3, $s4
	add.d	$a4, $a4, $s4
	addi.d	$a5, $a5, 1
	beq	$a6, $t2, .LBB7_22
.LBB7_17:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_21 Depth 2
                                        #     Child Loop BB7_19 Depth 2
	bltu	$t0, $a7, .LBB7_20
# %bb.18:                               # %scalar.ph98.preheader
                                        #   in Loop: Header=BB7_17 Depth=1
	ori	$a0, $zero, 3
	move	$t4, $t1
	.p2align	4, , 16
.LBB7_19:                               # %scalar.ph98
                                        #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t5, $a0, 31, 0
	mul.d	$t5, $t5, $a3
	srli.d	$t5, $t5, 39
	mul.d	$t5, $t5, $t2
	sub.d	$t5, $a0, $t5
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa3, $t5
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	add.d	$t5, $a4, $t4
	fstx.d	$fa3, $t5, $s4
	add.d	$t5, $t3, $t4
	fstx.d	$fa3, $t5, $s4
	addi.d	$t4, $t4, 8
	add.w	$a0, $a0, $a5
	bnez	$t4, .LBB7_19
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_20:                               # %vector.ph99
                                        #   in Loop: Header=BB7_17 Depth=1
	vreplgr2vr.d	$vr3, $a6
	move	$a0, $t1
	vori.b	$vr4, $vr1, 0
	.p2align	4, , 16
.LBB7_21:                               # %vector.body102
                                        #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmul.d	$vr5, $vr4, $vr3
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr5, $vr5, 3
	vpickve2gr.w	$t4, $vr5, 0
	mod.wu	$t4, $t4, $t2
	bstrpick.d	$t4, $t4, 31, 0
	vpickve2gr.w	$t5, $vr5, 1
	mod.wu	$t5, $t5, $t2
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa5, $t5
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t4
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr2
	add.d	$t4, $a4, $a0
	vstx	$vr5, $t4, $s4
	add.d	$t4, $t3, $a0
	vstx	$vr5, $t4, $s4
	addi.d	$a0, $a0, 16
	vaddi.du	$vr4, $vr4, 2
	bnez	$a0, .LBB7_21
	b	.LBB7_16
.LBB7_22:                               # %.preheader36.i.preheader
	move	$a3, $zero
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a4, $t2, 16
	ori	$a5, $zero, 1
	ori	$a6, $zero, 8
	ori	$a7, $zero, 4
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_3)
	vldi	$vr2, -904
	ori	$t0, $zero, 1000
	ori	$t1, $zero, 1200
	lu12i.w	$a0, 209715
	ori	$a0, $a0, 819
	lu32i.d	$a0, 209715
	lu52i.d	$a0, $a0, 1023
	vreplgr2vr.d	$vr1, $a0
	.p2align	4, , 16
.LBB7_23:                               # %.preheader36.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
                                        #     Child Loop BB7_29 Depth 2
                                        #     Child Loop BB7_31 Depth 2
                                        #       Child Loop BB7_32 Depth 3
	bgeu	$a5, $a7, .LBB7_25
# %bb.24:                               #   in Loop: Header=BB7_23 Depth=1
	move	$a0, $zero
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_25:                               # %vector.ph109
                                        #   in Loop: Header=BB7_23 Depth=1
	move	$t3, $a5
	bstrins.d	$t3, $zero, 1, 0
	bstrpick.d	$a0, $a5, 62, 2
	slli.d	$a0, $a0, 2
	move	$t4, $a4
	.p2align	4, , 16
.LBB7_26:                               # %vector.body110
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t4, -16
	vld	$vr4, $t4, 0
	vfmul.d	$vr3, $vr3, $vr1
	vfmul.d	$vr4, $vr4, $vr1
	vst	$vr3, $t4, -16
	vst	$vr4, $t4, 0
	addi.d	$t3, $t3, -4
	addi.d	$t4, $t4, 32
	bnez	$t3, .LBB7_26
# %bb.27:                               # %middle.block114
                                        #   in Loop: Header=BB7_23 Depth=1
	beq	$a5, $a0, .LBB7_30
.LBB7_28:                               # %scalar.ph108.preheader
                                        #   in Loop: Header=BB7_23 Depth=1
	alsl.d	$t3, $a0, $t2, 3
	.p2align	4, , 16
.LBB7_29:                               # %scalar.ph108
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t3, 0
	fmul.d	$fa3, $fa3, $fa0
	fst.d	$fa3, $t3, 0
	addi.d	$a0, $a0, 1
	addi.d	$t3, $t3, 8
	bne	$a5, $a0, .LBB7_29
.LBB7_30:                               # %.preheader35.i
                                        #   in Loop: Header=BB7_23 Depth=1
	move	$t3, $zero
	move	$t4, $zero
	mul.d	$a0, $a3, $a1
	add.d	$t5, $fp, $a0
	add.d	$t6, $s5, $a0
	.p2align	4, , 16
.LBB7_31:                               # %.preheader.i35
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_32 Depth 3
	move	$a0, $zero
	alsl.d	$t7, $t4, $t5, 3
	alsl.d	$t8, $t4, $t6, 3
	move	$s0, $t3
	.p2align	4, , 16
.LBB7_32:                               #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa3, $s5, $s0
	fmul.d	$fa3, $fa3, $fa2
	fldx.d	$fa4, $fp, $s0
	fld.d	$fa5, $t8, 0
	fld.d	$fa6, $t7, 0
	fldx.d	$fa7, $t2, $a0
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa5
	fmadd.d	$fa3, $fa3, $fa6, $fa4
	fadd.d	$fa3, $fa7, $fa3
	fstx.d	$fa3, $t2, $a0
	addi.d	$a0, $a0, 8
	add.d	$s0, $s0, $a1
	bne	$a6, $a0, .LBB7_32
# %bb.33:                               #   in Loop: Header=BB7_31 Depth=2
	addi.d	$t4, $t4, 1
	addi.d	$t3, $t3, 8
	bne	$t4, $t0, .LBB7_31
# %bb.34:                               #   in Loop: Header=BB7_23 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a5, 1
	add.d	$a4, $a4, $s4
	add.d	$t2, $t2, $s4
	addi.d	$a6, $a6, 8
	bne	$a3, $t1, .LBB7_23
# %bb.35:                               # %.preheader36.i38.preheader
	move	$a3, $zero
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a4, $s0, 16
	ori	$a5, $zero, 1
	lu12i.w	$a0, -2
	ori	$a6, $a0, 192
	ori	$a2, $a2, 1416
	ori	$a7, $zero, 4
	vldi	$vr2, -904
	ori	$t0, $zero, 1000
	ori	$t1, $zero, 1200
	lu12i.w	$a0, 3
	ori	$t2, $a0, 3712
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_36:                               #   in Loop: Header=BB7_37 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a5, 1
	add.d	$a4, $a4, $s4
	add.d	$s0, $s0, $s4
	lu12i.w	$a0, -2
	ori	$a0, $a0, 192
	add.d	$a6, $a6, $a0
	beq	$a3, $t1, .LBB7_53
.LBB7_37:                               # %.preheader36.i38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
                                        #     Child Loop BB7_43 Depth 2
                                        #     Child Loop BB7_46 Depth 2
                                        #       Child Loop BB7_49 Depth 3
                                        #       Child Loop BB7_52 Depth 3
	bgeu	$a5, $a7, .LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_37 Depth=1
	move	$a0, $zero
	b	.LBB7_42
	.p2align	4, , 16
.LBB7_39:                               # %vector.ph150
                                        #   in Loop: Header=BB7_37 Depth=1
	move	$t3, $a5
	bstrins.d	$t3, $zero, 1, 0
	bstrpick.d	$a0, $a5, 62, 2
	slli.d	$a0, $a0, 2
	move	$t4, $a4
	.p2align	4, , 16
.LBB7_40:                               # %vector.body153
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t4, -16
	vld	$vr4, $t4, 0
	vfmul.d	$vr3, $vr3, $vr1
	vfmul.d	$vr4, $vr4, $vr1
	vst	$vr3, $t4, -16
	vst	$vr4, $t4, 0
	addi.d	$t3, $t3, -4
	addi.d	$t4, $t4, 32
	bnez	$t3, .LBB7_40
# %bb.41:                               # %middle.block158
                                        #   in Loop: Header=BB7_37 Depth=1
	beq	$a5, $a0, .LBB7_44
.LBB7_42:                               # %scalar.ph148.preheader
                                        #   in Loop: Header=BB7_37 Depth=1
	alsl.d	$t3, $a0, $s0, 3
	.p2align	4, , 16
.LBB7_43:                               # %scalar.ph148
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t3, 0
	fmul.d	$fa3, $fa3, $fa0
	fst.d	$fa3, $t3, 0
	addi.d	$a0, $a0, 1
	addi.d	$t3, $t3, 8
	bne	$a5, $a0, .LBB7_43
.LBB7_44:                               # %.preheader35.i44
                                        #   in Loop: Header=BB7_37 Depth=1
	move	$t4, $zero
	move	$a0, $a5
	bstrins.d	$a0, $zero, 0, 0
	mul.d	$t3, $a3, $s4
	ld.d	$t6, $sp, 24                    # 8-byte Folded Reload
	add.d	$t3, $t6, $t3
	mul.d	$t5, $a3, $a2
	add.d	$t5, $t6, $t5
	addi.d	$t5, $t5, 8
	mul.d	$t7, $a3, $a1
	add.d	$t6, $s5, $t7
	add.d	$t8, $t7, $a1
	sltu	$s1, $t6, $t5
	sltu	$s2, $s5, $t5
	or	$s1, $s1, $s2
	add.d	$s2, $s5, $t8
	add.d	$t8, $fp, $t8
	add.d	$t7, $fp, $t7
	sltu	$s2, $t3, $s2
	and	$s1, $s2, $s1
	sltu	$t3, $t3, $t8
	sltu	$t8, $fp, $t5
	and	$t8, $t3, $t8
	or	$t8, $s1, $t8
	sltu	$t5, $t7, $t5
	and	$t3, $t3, $t5
	or	$t8, $t8, $t3
	bstrpick.d	$t3, $a5, 62, 1
	slli.d	$s3, $t3, 1
	move	$s2, $fp
	move	$s1, $s5
	b	.LBB7_46
	.p2align	4, , 16
.LBB7_45:                               # %.loopexit
                                        #   in Loop: Header=BB7_46 Depth=2
	addi.d	$t4, $t4, 1
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 8
	beq	$t4, $t0, .LBB7_36
.LBB7_46:                               # %.preheader.i45
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_49 Depth 3
                                        #       Child Loop BB7_52 Depth 3
	sltui	$t3, $a5, 2
	alsl.d	$s8, $t4, $t7, 3
	or	$t3, $t3, $t8
	andi	$t3, $t3, 1
	alsl.d	$ra, $t4, $t6, 3
	beqz	$t3, .LBB7_48
# %bb.47:                               #   in Loop: Header=BB7_46 Depth=2
	move	$t5, $zero
	b	.LBB7_51
	.p2align	4, , 16
.LBB7_48:                               # %vector.ph134
                                        #   in Loop: Header=BB7_46 Depth=2
	vldrepl.d	$vr3, $s8, 0
	vldrepl.d	$vr4, $ra, 0
	move	$t5, $a0
	move	$t3, $s0
	move	$s6, $s2
	move	$s7, $s1
	.p2align	4, , 16
.LBB7_49:                               # %vector.body137
                                        #   Parent Loop BB7_37 Depth=1
                                        #     Parent Loop BB7_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa5, $s7, 0
	fldx.d	$fa6, $s7, $a1
	fld.d	$fa7, $s6, 0
	fldx.d	$ft0, $s6, $a1
	vextrins.d	$vr5, $vr6, 16
	vfmul.d	$vr5, $vr5, $vr2
	vfmul.d	$vr5, $vr5, $vr3
	vextrins.d	$vr7, $vr8, 16
	vld	$vr6, $t3, 0
	vfmul.d	$vr7, $vr7, $vr2
	vfmul.d	$vr7, $vr7, $vr4
	vfadd.d	$vr5, $vr5, $vr7
	vfadd.d	$vr5, $vr6, $vr5
	vst	$vr5, $t3, 0
	add.d	$s7, $s7, $t2
	add.d	$s6, $s6, $t2
	addi.d	$t5, $t5, -2
	addi.d	$t3, $t3, 16
	bnez	$t5, .LBB7_49
# %bb.50:                               # %middle.block145
                                        #   in Loop: Header=BB7_46 Depth=2
	move	$t5, $s3
	beq	$a5, $s3, .LBB7_45
.LBB7_51:                               # %scalar.ph132.preheader
                                        #   in Loop: Header=BB7_46 Depth=2
	mul.d	$t3, $t5, $a1
	slli.d	$t5, $t5, 3
	.p2align	4, , 16
.LBB7_52:                               # %scalar.ph132
                                        #   Parent Loop BB7_37 Depth=1
                                        #     Parent Loop BB7_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa3, $s1, $t3
	fld.d	$fa4, $s8, 0
	fmul.d	$fa3, $fa3, $fa2
	fldx.d	$fa5, $s2, $t3
	fld.d	$fa6, $ra, 0
	fmul.d	$fa3, $fa3, $fa4
	fldx.d	$fa4, $s0, $t5
	fmul.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa5, $fa6
	fadd.d	$fa3, $fa3, $fa5
	fadd.d	$fa3, $fa4, $fa3
	fstx.d	$fa3, $s0, $t5
	add.d	$t3, $t3, $a1
	add.d	$s6, $a6, $t3
	addi.d	$t5, $t5, 8
	bnez	$s6, .LBB7_52
	b	.LBB7_45
.LBB7_53:                               # %.preheader.i59.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_4)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_4)
	move	$a0, $zero
	move	$a2, $zero
	lu12i.w	$a1, -3
	ori	$a1, $a1, 2688
	ori	$a4, $zero, 1200
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_54:                               # %.preheader.i59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_55 Depth 2
	move	$a3, $zero
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	add.d	$a5, $a5, $a0
	add.d	$a6, $t1, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_55:                               #   Parent Loop BB7_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa1, $t0, $s4
	add.d	$t0, $a5, $a7
	fldx.d	$fa2, $t0, $s4
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_63
# %bb.56:                               # %.critedge.i
                                        #   in Loop: Header=BB7_55 Depth=2
	addi.d	$a7, $a7, 8
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_55
# %bb.57:                               #   in Loop: Header=BB7_54 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s4
	bne	$a2, $a4, .LBB7_54
# %bb.58:                               # %check_FP.exit
	lu12i.w	$s0, 4
	ori	$a0, $s0, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $s0, 2816
	stx.b	$zero, $s3, $a0
	addi.d	$s1, $s3, 7
	lu12i.w	$a0, -3
	ori	$s2, $a0, 2688
	ori	$s7, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s8, $a0, %got_pc_lo12(stderr)
	move	$s6, $zero
	move	$s0, $zero
.LBB7_59:                               # %.preheader.i63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_60 Depth 2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s6
	move	$a1, $s1
	move	$a2, $s2
	.p2align	4, , 16
.LBB7_60:                               #   Parent Loop BB7_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.d	$a3, $a3, 9600
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s7, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s7, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s7, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s7, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s7, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s7, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s7, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s7, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_60
# %bb.61:                               #   in Loop: Header=BB7_59 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	add.d	$s6, $s6, $s4
	ori	$a0, $zero, 1200
	bne	$s0, $a0, .LBB7_59
# %bb.62:                               # %print_array.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_64
.LBB7_63:                               # %check_FP.exit.thread
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
.LBB7_64:
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB7_65:
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
