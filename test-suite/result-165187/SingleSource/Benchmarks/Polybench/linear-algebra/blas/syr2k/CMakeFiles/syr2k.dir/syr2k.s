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
	ld.d	$fp, $sp, 32
	beqz	$fp, .LBB7_60
# %bb.1:
	bnez	$a0, .LBB7_60
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 32
	beqz	$s0, .LBB7_60
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_60
# %bb.4:                                # %polybench_alloc_data.exit26
	st.d	$zero, $sp, 32
	lu12i.w	$a0, 2343
	ori	$s2, $a0, 3072
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 32
	beqz	$s1, .LBB7_60
# %bb.5:                                # %polybench_alloc_data.exit26
	bnez	$a0, .LBB7_60
# %bb.6:                                # %polybench_alloc_data.exit28
	st.d	$zero, $sp, 32
	lu12i.w	$s3, 1
	addi.d	$a0, $sp, 32
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 32
	beqz	$s2, .LBB7_60
# %bb.7:                                # %polybench_alloc_data.exit28
	bnez	$a0, .LBB7_60
# %bb.8:                                # %polybench_alloc_data.exit30
	move	$a3, $zero
	move	$a4, $zero
	sub.d	$a5, $s2, $s1
	ori	$a6, $zero, 15
	lu12i.w	$a0, -2
	ori	$a7, $a0, 192
	lu12i.w	$a0, 67108
	ori	$t0, $a0, 3539
	ori	$t1, $zero, 1000
	lu12i.w	$a0, 111848
	ori	$a1, $a0, 437
	ori	$t2, $zero, 1200
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI7_1)
	ori	$a0, $s3, 3904
	pcalau12i	$a2, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_2)
	pcalau12i	$a2, %pc_hi20(.LCPI7_0)
	vld	$vr2, $a2, %pc_lo12(.LCPI7_0)
	ori	$t3, $zero, 0
	ori	$t4, $zero, 0
	lu32i.d	$t4, 180224
	lu52i.d	$t4, $t4, 1033
	vreplgr2vr.d	$vr3, $t4
	lu32i.d	$t3, -49152
	lu52i.d	$t3, $t3, 1032
	vreplgr2vr.d	$vr4, $t3
	move	$t3, $s1
	move	$t4, $s2
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %middle.block
                                        #   in Loop: Header=BB7_10 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$t4, $t4, $a0
	add.d	$t3, $t3, $a0
	addi.d	$a3, $a3, 1
	beq	$a4, $t2, .LBB7_15
.LBB7_10:                               # %.preheader43.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_12 Depth 2
	bltu	$a6, $a5, .LBB7_13
# %bb.11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_10 Depth=1
	ori	$t5, $zero, 2
	ori	$t6, $zero, 1
	move	$t7, $a7
	.p2align	4, , 16
.LBB7_12:                               # %scalar.ph
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t8, $t5, 31, 0
	mul.d	$t8, $t8, $t0
	srli.d	$t8, $t8, 38
	mul.d	$t8, $t8, $t1
	sub.d	$t8, $t5, $t8
	bstrpick.d	$t8, $t8, 31, 0
	bstrpick.d	$s3, $t6, 31, 0
	mul.d	$s3, $s3, $a1
	srli.d	$s3, $s3, 39
	mul.d	$s3, $s3, $t2
	sub.d	$s3, $t6, $s3
	bstrpick.d	$s3, $s3, 31, 0
	movgr2fr.d	$fa5, $s3
	ffint.d.l	$fa5, $fa5
	fdiv.d	$fa5, $fa5, $fa1
	add.d	$s3, $t3, $t7
	fstx.d	$fa5, $s3, $a0
	movgr2fr.d	$fa5, $t8
	ffint.d.l	$fa5, $fa5
	fdiv.d	$fa5, $fa5, $fa0
	add.d	$t8, $t4, $t7
	fstx.d	$fa5, $t8, $a0
	addi.d	$t7, $t7, 8
	add.w	$t5, $t5, $a3
	add.w	$t6, $t6, $a3
	bnez	$t7, .LBB7_12
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_13:                               # %vector.ph
                                        #   in Loop: Header=BB7_10 Depth=1
	vreplgr2vr.d	$vr5, $a4
	move	$t5, $a7
	vori.b	$vr6, $vr2, 0
	.p2align	4, , 16
.LBB7_14:                               # %vector.body
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmul.d	$vr7, $vr6, $vr5
	vshuf4i.w	$vr7, $vr7, 8
	vaddi.wu	$vr8, $vr7, 1
	vpickve2gr.w	$t6, $vr8, 0
	mod.wu	$t6, $t6, $t2
	bstrpick.d	$t6, $t6, 31, 0
	vpickve2gr.w	$t7, $vr8, 1
	mod.wu	$t7, $t7, $t2
	bstrpick.d	$t7, $t7, 31, 0
	movgr2fr.d	$ft0, $t7
	ffint.d.l	$ft0, $ft0
	movgr2fr.d	$ft1, $t6
	ffint.d.l	$ft1, $ft1
	vextrins.d	$vr9, $vr8, 16
	vfdiv.d	$vr8, $vr9, $vr3
	add.d	$t6, $t3, $t5
	vstx	$vr8, $t6, $a0
	vaddi.wu	$vr7, $vr7, 2
	vpickve2gr.w	$t6, $vr7, 0
	mod.wu	$t6, $t6, $t1
	bstrpick.d	$t6, $t6, 31, 0
	vpickve2gr.w	$t7, $vr7, 1
	mod.wu	$t7, $t7, $t1
	bstrpick.d	$t7, $t7, 31, 0
	movgr2fr.d	$fa7, $t7
	ffint.d.l	$fa7, $fa7
	movgr2fr.d	$ft0, $t6
	ffint.d.l	$ft0, $ft0
	vextrins.d	$vr8, $vr7, 16
	vfdiv.d	$vr7, $vr8, $vr4
	add.d	$t6, $t4, $t5
	vstx	$vr7, $t6, $a0
	addi.d	$t5, $t5, 16
	vaddi.du	$vr6, $vr6, 2
	bnez	$t5, .LBB7_14
	b	.LBB7_9
.LBB7_15:                               # %.preheader.i.preheader
	move	$a3, $zero
	move	$a4, $zero
	sub.d	$a5, $s0, $fp
	ori	$a6, $zero, 15
	lu12i.w	$s5, -3
	ori	$a7, $s5, 2688
	ori	$t0, $zero, 1200
	lu12i.w	$t1, 2
	ori	$s4, $t1, 1408
	vld	$vr1, $a2, %pc_lo12(.LCPI7_0)
	ori	$a2, $zero, 0
	lu32i.d	$a2, -49152
	lu52i.d	$a2, $a2, 1032
	vreplgr2vr.d	$vr2, $a2
	move	$a2, $fp
	move	$t1, $s0
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_16:                               # %middle.block107
                                        #   in Loop: Header=BB7_17 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$t1, $t1, $s4
	add.d	$a2, $a2, $s4
	addi.d	$a3, $a3, 1
	beq	$a4, $t0, .LBB7_22
.LBB7_17:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_21 Depth 2
                                        #     Child Loop BB7_19 Depth 2
	bltu	$a6, $a5, .LBB7_20
# %bb.18:                               # %scalar.ph98.preheader
                                        #   in Loop: Header=BB7_17 Depth=1
	ori	$t2, $zero, 3
	move	$t3, $a7
	.p2align	4, , 16
.LBB7_19:                               # %scalar.ph98
                                        #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t2, 31, 0
	mul.d	$t4, $t4, $a1
	srli.d	$t4, $t4, 39
	mul.d	$t4, $t4, $t0
	sub.d	$t4, $t2, $t4
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa3, $t4
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	add.d	$t4, $a2, $t3
	fstx.d	$fa3, $t4, $s4
	add.d	$t4, $t1, $t3
	fstx.d	$fa3, $t4, $s4
	addi.d	$t3, $t3, 8
	add.w	$t2, $t2, $a3
	bnez	$t3, .LBB7_19
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_20:                               # %vector.ph99
                                        #   in Loop: Header=BB7_17 Depth=1
	vreplgr2vr.d	$vr3, $a4
	move	$t2, $a7
	vori.b	$vr4, $vr1, 0
	.p2align	4, , 16
.LBB7_21:                               # %vector.body102
                                        #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmul.d	$vr5, $vr4, $vr3
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr5, $vr5, 3
	vpickve2gr.w	$t3, $vr5, 0
	mod.wu	$t3, $t3, $t0
	bstrpick.d	$t3, $t3, 31, 0
	vpickve2gr.w	$t4, $vr5, 1
	mod.wu	$t4, $t4, $t0
	bstrpick.d	$t4, $t4, 31, 0
	movgr2fr.d	$fa5, $t4
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t3
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr2
	add.d	$t3, $a2, $t2
	vstx	$vr5, $t3, $s4
	add.d	$t3, $t1, $t2
	vstx	$vr5, $t3, $s4
	addi.d	$t2, $t2, 16
	vaddi.du	$vr4, $vr4, 2
	bnez	$t2, .LBB7_21
	b	.LBB7_16
.LBB7_22:                               # %.preheader36.i.preheader
	move	$a1, $zero
	addi.d	$a2, $fp, 16
	ori	$a3, $zero, 1
	ori	$a4, $zero, 8
	ori	$a5, $zero, 4
	pcalau12i	$a6, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a6, %pc_lo12(.LCPI7_3)
	vldi	$vr2, -904
	ori	$a6, $zero, 1000
	ori	$a7, $zero, 1200
	lu12i.w	$t0, 209715
	ori	$t0, $t0, 819
	lu32i.d	$t0, 209715
	lu52i.d	$t0, $t0, 1023
	vreplgr2vr.d	$vr1, $t0
	move	$t0, $fp
	.p2align	4, , 16
.LBB7_23:                               # %.preheader36.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
                                        #     Child Loop BB7_29 Depth 2
                                        #     Child Loop BB7_31 Depth 2
                                        #       Child Loop BB7_32 Depth 3
	bgeu	$a3, $a5, .LBB7_25
# %bb.24:                               #   in Loop: Header=BB7_23 Depth=1
	move	$t1, $zero
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_25:                               # %vector.ph109
                                        #   in Loop: Header=BB7_23 Depth=1
	move	$t2, $a3
	bstrins.d	$t2, $zero, 1, 0
	bstrpick.d	$t1, $a3, 62, 2
	slli.d	$t1, $t1, 2
	move	$t3, $a2
	.p2align	4, , 16
.LBB7_26:                               # %vector.body110
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t3, -16
	vld	$vr4, $t3, 0
	vfmul.d	$vr3, $vr3, $vr1
	vfmul.d	$vr4, $vr4, $vr1
	vst	$vr3, $t3, -16
	vst	$vr4, $t3, 0
	addi.d	$t2, $t2, -4
	addi.d	$t3, $t3, 32
	bnez	$t2, .LBB7_26
# %bb.27:                               # %middle.block114
                                        #   in Loop: Header=BB7_23 Depth=1
	beq	$a3, $t1, .LBB7_30
.LBB7_28:                               # %scalar.ph108.preheader
                                        #   in Loop: Header=BB7_23 Depth=1
	alsl.d	$t2, $t1, $t0, 3
	.p2align	4, , 16
.LBB7_29:                               # %scalar.ph108
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t2, 0
	fmul.d	$fa3, $fa3, $fa0
	fst.d	$fa3, $t2, 0
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 8
	bne	$a3, $t1, .LBB7_29
.LBB7_30:                               # %.preheader35.i
                                        #   in Loop: Header=BB7_23 Depth=1
	move	$t1, $zero
	move	$t2, $zero
	mul.d	$t4, $a1, $a0
	add.d	$t3, $s2, $t4
	add.d	$t4, $s1, $t4
	.p2align	4, , 16
.LBB7_31:                               # %.preheader.i35
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_32 Depth 3
	move	$t5, $zero
	alsl.d	$t6, $t2, $t3, 3
	alsl.d	$t7, $t2, $t4, 3
	move	$t8, $t1
	.p2align	4, , 16
.LBB7_32:                               #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa3, $s1, $t8
	fmul.d	$fa3, $fa3, $fa2
	fldx.d	$fa4, $s2, $t8
	fld.d	$fa5, $t7, 0
	fld.d	$fa6, $t6, 0
	fldx.d	$fa7, $t0, $t5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa5
	fmadd.d	$fa3, $fa3, $fa6, $fa4
	fadd.d	$fa3, $fa7, $fa3
	fstx.d	$fa3, $t0, $t5
	addi.d	$t5, $t5, 8
	add.d	$t8, $t8, $a0
	bne	$a4, $t5, .LBB7_32
# %bb.33:                               #   in Loop: Header=BB7_31 Depth=2
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, 8
	bne	$t2, $a6, .LBB7_31
# %bb.34:                               #   in Loop: Header=BB7_23 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 1
	add.d	$a2, $a2, $s4
	add.d	$t0, $t0, $s4
	addi.d	$a4, $a4, 8
	bne	$a1, $a7, .LBB7_23
# %bb.35:                               # %.preheader36.i38.preheader
	move	$a1, $zero
	addi.d	$a2, $s0, 16
	ori	$a3, $zero, 1
	ori	$a4, $zero, 8
	ori	$a5, $zero, 4
	vldi	$vr2, -904
	ori	$a6, $zero, 1000
	ori	$a7, $zero, 1200
	move	$t0, $s0
	.p2align	4, , 16
.LBB7_36:                               # %.preheader36.i38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_39 Depth 2
                                        #     Child Loop BB7_42 Depth 2
                                        #     Child Loop BB7_44 Depth 2
                                        #       Child Loop BB7_45 Depth 3
	bgeu	$a3, $a5, .LBB7_38
# %bb.37:                               #   in Loop: Header=BB7_36 Depth=1
	move	$t1, $zero
	b	.LBB7_41
	.p2align	4, , 16
.LBB7_38:                               # %vector.ph117
                                        #   in Loop: Header=BB7_36 Depth=1
	move	$t2, $a3
	bstrins.d	$t2, $zero, 1, 0
	bstrpick.d	$t1, $a3, 62, 2
	slli.d	$t1, $t1, 2
	move	$t3, $a2
	.p2align	4, , 16
.LBB7_39:                               # %vector.body120
                                        #   Parent Loop BB7_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t3, -16
	vld	$vr4, $t3, 0
	vfmul.d	$vr3, $vr3, $vr1
	vfmul.d	$vr4, $vr4, $vr1
	vst	$vr3, $t3, -16
	vst	$vr4, $t3, 0
	addi.d	$t2, $t2, -4
	addi.d	$t3, $t3, 32
	bnez	$t2, .LBB7_39
# %bb.40:                               # %middle.block125
                                        #   in Loop: Header=BB7_36 Depth=1
	beq	$a3, $t1, .LBB7_43
.LBB7_41:                               # %scalar.ph115.preheader
                                        #   in Loop: Header=BB7_36 Depth=1
	alsl.d	$t2, $t1, $t0, 3
	.p2align	4, , 16
.LBB7_42:                               # %scalar.ph115
                                        #   Parent Loop BB7_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t2, 0
	fmul.d	$fa3, $fa3, $fa0
	fst.d	$fa3, $t2, 0
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 8
	bne	$a3, $t1, .LBB7_42
.LBB7_43:                               # %.preheader35.i44
                                        #   in Loop: Header=BB7_36 Depth=1
	move	$t1, $zero
	move	$t2, $zero
	mul.d	$t4, $a1, $a0
	add.d	$t3, $s2, $t4
	add.d	$t4, $s1, $t4
	.p2align	4, , 16
.LBB7_44:                               # %.preheader.i45
                                        #   Parent Loop BB7_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_45 Depth 3
	move	$t5, $zero
	alsl.d	$t6, $t2, $t3, 3
	alsl.d	$t7, $t2, $t4, 3
	move	$t8, $t1
	.p2align	4, , 16
.LBB7_45:                               #   Parent Loop BB7_36 Depth=1
                                        #     Parent Loop BB7_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa3, $s1, $t8
	fld.d	$fa4, $t6, 0
	fmul.d	$fa3, $fa3, $fa2
	fldx.d	$fa5, $s2, $t8
	fld.d	$fa6, $t7, 0
	fmul.d	$fa3, $fa3, $fa4
	fldx.d	$fa4, $t0, $t5
	fmul.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa5, $fa6
	fadd.d	$fa3, $fa3, $fa5
	fadd.d	$fa3, $fa4, $fa3
	fstx.d	$fa3, $t0, $t5
	addi.d	$t5, $t5, 8
	add.d	$t8, $t8, $a0
	bne	$a4, $t5, .LBB7_45
# %bb.46:                               #   in Loop: Header=BB7_44 Depth=2
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, 8
	bne	$t2, $a6, .LBB7_44
# %bb.47:                               #   in Loop: Header=BB7_36 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 1
	add.d	$a2, $a2, $s4
	add.d	$t0, $t0, $s4
	addi.d	$a4, $a4, 8
	bne	$a1, $a7, .LBB7_36
# %bb.48:                               # %.preheader.i59.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_4)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_4)
	move	$a0, $zero
	move	$a2, $zero
	ori	$a1, $s5, 2688
	ori	$a4, $zero, 1200
	.p2align	4, , 16
.LBB7_49:                               # %.preheader.i59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_50 Depth 2
	move	$a3, $zero
	add.d	$a5, $s0, $a0
	add.d	$a6, $fp, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_50:                               #   Parent Loop BB7_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa1, $t0, $s4
	add.d	$t0, $a5, $a7
	fldx.d	$fa2, $t0, $s4
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_58
# %bb.51:                               # %.critedge.i
                                        #   in Loop: Header=BB7_50 Depth=2
	addi.d	$a7, $a7, 8
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_50
# %bb.52:                               #   in Loop: Header=BB7_49 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s4
	bne	$a2, $a4, .LBB7_49
# %bb.53:                               # %check_FP.exit
	lu12i.w	$s6, 4
	ori	$a0, $s6, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $s6, 2816
	stx.b	$zero, $s3, $a0
	ori	$a0, $s5, 2688
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s7, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s8, $a0, %got_pc_lo12(stderr)
	move	$s6, $zero
	move	$s5, $zero
.LBB7_54:                               # %.preheader.i63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_55 Depth 2
	add.d	$a0, $s0, $s6
	addi.d	$a1, $s3, 7
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_55:                               #   Parent Loop BB7_54 Depth=1
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
	bnez	$a2, .LBB7_55
# %bb.56:                               #   in Loop: Header=BB7_54 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	add.d	$s6, $s6, $s4
	ori	$a0, $zero, 1200
	bne	$s5, $a0, .LBB7_54
# %bb.57:                               # %print_array.exit
	move	$a0, $s3
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
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_59
.LBB7_58:                               # %check_FP.exit.thread
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
.LBB7_59:
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
.LBB7_60:
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
