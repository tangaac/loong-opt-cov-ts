	.file	"syrk.c"
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
	.dword	0x408f400000000000              # double 1000
.LCPI7_2:
	.dword	0x3ff3333333333333              # double 1.2
.LCPI7_3:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 2812
	ori	$s0, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_65
# %bb.1:
	bnez	$a0, .LBB7_65
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 48
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_65
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_65
# %bb.4:                                # %polybench_alloc_data.exit22
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 2343
	ori	$a2, $a0, 3072
	lu12i.w	$s2, 1
	addi.d	$a0, $sp, 48
	move	$a1, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 48
	beqz	$s1, .LBB7_65
# %bb.5:                                # %polybench_alloc_data.exit22
	bnez	$a0, .LBB7_65
# %bb.6:                                # %polybench_alloc_data.exit24
	move	$a1, $zero
	pcalau12i	$t2, %pc_hi20(.LCPI7_0)
	vld	$vr0, $t2, %pc_lo12(.LCPI7_0)
	lu12i.w	$a4, -2
	ori	$a2, $a4, 192
	ori	$a3, $zero, 1200
	ori	$a0, $zero, 0
	lu32i.d	$a0, 180224
	lu52i.d	$a0, $a0, 1033
	vreplgr2vr.d	$vr1, $a0
	ori	$a0, $s2, 3904
	ori	$a5, $s2, 3920
	move	$a6, $s1
	.p2align	4, , 16
.LBB7_7:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
	vreplgr2vr.d	$vr2, $a1
	move	$a7, $a2
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB7_8:                                # %vector.body
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 2
	vmul.d	$vr5, $vr3, $vr2
	vmul.d	$vr4, $vr4, $vr2
	vshuf4i.w	$vr5, $vr5, 8
	vshuf4i.w	$vr4, $vr4, 8
	vaddi.wu	$vr5, $vr5, 1
	vaddi.wu	$vr4, $vr4, 1
	vpickve2gr.w	$t0, $vr5, 1
	mod.wu	$t0, $t0, $a3
	bstrpick.d	$t0, $t0, 31, 0
	vpickve2gr.w	$t1, $vr5, 0
	mod.wu	$t1, $t1, $a3
	bstrpick.d	$t1, $t1, 31, 0
	vpickve2gr.w	$t3, $vr4, 1
	mod.wu	$t3, $t3, $a3
	bstrpick.d	$t3, $t3, 31, 0
	vpickve2gr.w	$t4, $vr4, 0
	mod.wu	$t4, $t4, $a3
	movgr2fr.d	$fa4, $t1
	ffint.d.l	$fa4, $fa4
	bstrpick.d	$t1, $t4, 31, 0
	movfr2gr.d	$t4, $fa4
	movgr2fr.d	$fa4, $t0
	ffint.d.l	$fa4, $fa4
	vinsgr2vr.d	$vr5, $t4, 0
	movfr2gr.d	$t0, $fa4
	movgr2fr.d	$fa4, $t1
	ffint.d.l	$fa4, $fa4
	vinsgr2vr.d	$vr5, $t0, 1
	movfr2gr.d	$t0, $fa4
	movgr2fr.d	$fa4, $t3
	ffint.d.l	$fa4, $fa4
	vinsgr2vr.d	$vr6, $t0, 0
	movfr2gr.d	$t0, $fa4
	vinsgr2vr.d	$vr6, $t0, 1
	vfdiv.d	$vr4, $vr5, $vr1
	vfdiv.d	$vr5, $vr6, $vr1
	add.d	$t0, $a6, $a7
	vstx	$vr4, $t0, $a0
	vstx	$vr5, $t0, $a5
	addi.d	$a7, $a7, 32
	vaddi.du	$vr3, $vr3, 4
	bnez	$a7, .LBB7_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB7_7 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a6, $a6, $a0
	bne	$a1, $a3, .LBB7_7
# %bb.10:                               # %.preheader.i.preheader
	move	$a1, $zero
	move	$a3, $zero
	ld.d	$t4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a5, $t5, $t4
	ori	$a6, $zero, 31
	lu12i.w	$a2, -3
	ori	$a7, $a2, 2688
	lu12i.w	$a2, 67108
	ori	$t0, $a2, 3539
	ori	$t1, $zero, 1000
	pcalau12i	$a2, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_1)
	lu12i.w	$a2, 2
	ori	$s3, $a2, 1408
	ori	$t3, $zero, 1200
	vld	$vr1, $t2, %pc_lo12(.LCPI7_0)
	ori	$t2, $zero, 0
	lu32i.d	$t2, -49152
	lu52i.d	$t2, $t2, 1032
	vreplgr2vr.d	$vr2, $t2
	ori	$t2, $a2, 1424
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %middle.block93
                                        #   in Loop: Header=BB7_12 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$t5, $t5, $s3
	add.d	$t4, $t4, $s3
	addi.d	$a1, $a1, 1
	beq	$a3, $t3, .LBB7_17
.LBB7_12:                               # %vector.memcheck
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
                                        #     Child Loop BB7_14 Depth 2
	bltu	$a6, $a5, .LBB7_15
# %bb.13:                               # %scalar.ph83.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	ori	$t6, $zero, 2
	move	$t7, $a7
	.p2align	4, , 16
.LBB7_14:                               # %scalar.ph83
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t8, $t6, 31, 0
	mul.d	$t8, $t8, $t0
	srli.d	$t8, $t8, 38
	mul.d	$t8, $t8, $t1
	sub.d	$t8, $t6, $t8
	bstrpick.d	$t8, $t8, 31, 0
	movgr2fr.d	$fa3, $t8
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	add.d	$t8, $t4, $t7
	fstx.d	$fa3, $t8, $s3
	add.d	$t8, $t5, $t7
	fstx.d	$fa3, $t8, $s3
	addi.d	$t7, $t7, 8
	add.w	$t6, $t6, $a1
	bnez	$t7, .LBB7_14
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_15:                               # %vector.ph84
                                        #   in Loop: Header=BB7_12 Depth=1
	vreplgr2vr.d	$vr3, $a3
	move	$t6, $a7
	vori.b	$vr4, $vr1, 0
	.p2align	4, , 16
.LBB7_16:                               # %vector.body87
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 2
	vmul.d	$vr6, $vr4, $vr3
	vmul.d	$vr5, $vr5, $vr3
	vshuf4i.w	$vr6, $vr6, 8
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr6, $vr6, 2
	vaddi.wu	$vr5, $vr5, 2
	vpickve2gr.w	$t7, $vr6, 1
	mod.wu	$t7, $t7, $t1
	bstrpick.d	$t7, $t7, 31, 0
	vpickve2gr.w	$t8, $vr6, 0
	mod.wu	$t8, $t8, $t1
	bstrpick.d	$t8, $t8, 31, 0
	vpickve2gr.w	$fp, $vr5, 1
	mod.wu	$fp, $fp, $t1
	bstrpick.d	$fp, $fp, 31, 0
	vpickve2gr.w	$s0, $vr5, 0
	mod.wu	$s0, $s0, $t1
	movgr2fr.d	$fa5, $t8
	ffint.d.l	$fa5, $fa5
	bstrpick.d	$t8, $s0, 31, 0
	movfr2gr.d	$s0, $fa5
	movgr2fr.d	$fa5, $t7
	ffint.d.l	$fa5, $fa5
	vinsgr2vr.d	$vr6, $s0, 0
	movfr2gr.d	$t7, $fa5
	movgr2fr.d	$fa5, $t8
	ffint.d.l	$fa5, $fa5
	vinsgr2vr.d	$vr6, $t7, 1
	movfr2gr.d	$t7, $fa5
	movgr2fr.d	$fa5, $fp
	ffint.d.l	$fa5, $fa5
	vinsgr2vr.d	$vr7, $t7, 0
	movfr2gr.d	$t7, $fa5
	vinsgr2vr.d	$vr7, $t7, 1
	vfdiv.d	$vr5, $vr6, $vr2
	vfdiv.d	$vr6, $vr7, $vr2
	add.d	$t7, $t4, $t6
	vstx	$vr5, $t7, $s3
	vstx	$vr6, $t7, $t2
	add.d	$t7, $t5, $t6
	vstx	$vr5, $t7, $s3
	vstx	$vr6, $t7, $t2
	addi.d	$t6, $t6, 32
	vaddi.du	$vr4, $vr4, 4
	bnez	$t6, .LBB7_16
	b	.LBB7_11
.LBB7_17:                               # %.preheader29.i.preheader
	move	$t0, $zero
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a1, $s2, 8
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	add.d	$a1, $s1, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.d	$t6, $s2, 16
	lu12i.w	$a3, 3
	ori	$a1, $a3, 3712
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	add.d	$a7, $s1, $a1
	ori	$t4, $zero, 1
	addi.w	$t5, $zero, -8
	ori	$a2, $a2, 1416
	vldi	$vr1, -904
	ori	$t7, $zero, 1000
	ori	$a3, $zero, 0
	lu32i.d	$a3, -524288
	lu52i.d	$a3, $a3, 1023
	vreplgr2vr.d	$vr2, $a3
	lu12i.w	$a3, -4
	ori	$a3, $a3, 384
	ori	$a4, $a4, 192
	lu12i.w	$a5, 7
	ori	$a5, $a5, 3328
	lu12i.w	$a6, 209715
	ori	$a6, $a6, 819
	lu32i.d	$a6, 209715
	lu52i.d	$a6, $a6, 1023
	vreplgr2vr.d	$vr0, $a6
	pcalau12i	$a6, %pc_hi20(.LCPI7_2)
	b	.LBB7_19
	.p2align	4, , 16
.LBB7_18:                               #   in Loop: Header=BB7_19 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$t4, $t4, 1
	add.d	$t6, $t6, $s3
	add.d	$s2, $s2, $s3
	addi.d	$t5, $t5, -8
	ori	$a1, $zero, 1200
	beq	$t0, $a1, .LBB7_35
.LBB7_19:                               # %.preheader29.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_25 Depth 2
                                        #     Child Loop BB7_28 Depth 2
                                        #       Child Loop BB7_31 Depth 3
                                        #       Child Loop BB7_34 Depth 3
	move	$t8, $t4
	bstrins.d	$t8, $zero, 1, 0
	bstrpick.d	$t3, $t4, 62, 2
	ori	$a1, $zero, 4
	bgeu	$t4, $a1, .LBB7_21
# %bb.20:                               #   in Loop: Header=BB7_19 Depth=1
	move	$fp, $zero
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_21:                               # %vector.ph114
                                        #   in Loop: Header=BB7_19 Depth=1
	slli.d	$fp, $t3, 2
	move	$t2, $t6
	move	$s0, $t8
	.p2align	4, , 16
.LBB7_22:                               # %vector.body117
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t2, -16
	vld	$vr4, $t2, 0
	vfmul.d	$vr3, $vr3, $vr0
	vfmul.d	$vr4, $vr4, $vr0
	vst	$vr3, $t2, -16
	vst	$vr4, $t2, 0
	addi.d	$s0, $s0, -4
	addi.d	$t2, $t2, 32
	bnez	$s0, .LBB7_22
# %bb.23:                               # %middle.block122
                                        #   in Loop: Header=BB7_19 Depth=1
	beq	$t4, $fp, .LBB7_26
.LBB7_24:                               # %scalar.ph112.preheader
                                        #   in Loop: Header=BB7_19 Depth=1
	alsl.d	$t2, $fp, $s2, 3
	.p2align	4, , 16
.LBB7_25:                               # %scalar.ph112
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t2, 0
	fld.d	$fa4, $a6, %pc_lo12(.LCPI7_2)
	fmul.d	$fa3, $fa3, $fa4
	fst.d	$fa3, $t2, 0
	addi.d	$fp, $fp, 1
	addi.d	$t2, $t2, 8
	bne	$t4, $fp, .LBB7_25
.LBB7_26:                               # %.preheader.i29.preheader
                                        #   in Loop: Header=BB7_19 Depth=1
	move	$s6, $zero
	mul.d	$t2, $t0, $s3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$t2, $a1, $t2
	mul.d	$fp, $t0, $a2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$fp, $a1, $fp
	mul.d	$s0, $t0, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$s4, $a1, $s0
	add.d	$s7, $s1, $s0
	sltu	$t2, $t2, $s4
	sltu	$s0, $s1, $fp
	sltu	$fp, $s7, $fp
	or	$fp, $s0, $fp
	and	$s4, $t2, $fp
	slli.d	$s8, $t3, 2
	move	$ra, $s1
	move	$t3, $a7
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_27:                               # %.loopexit165
                                        #   in Loop: Header=BB7_28 Depth=2
	addi.d	$s6, $s6, 1
	addi.d	$t3, $t3, 8
	addi.d	$ra, $ra, 8
	beq	$s6, $t7, .LBB7_18
.LBB7_28:                               # %.preheader.i29
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_31 Depth 3
                                        #       Child Loop BB7_34 Depth 3
	sltui	$t2, $t4, 4
	or	$t2, $t2, $s4
	andi	$t2, $t2, 1
	alsl.d	$fp, $s6, $s7, 3
	beqz	$t2, .LBB7_30
# %bb.29:                               #   in Loop: Header=BB7_28 Depth=2
	move	$s0, $zero
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_30:                               # %vector.ph103
                                        #   in Loop: Header=BB7_28 Depth=2
	fld.d	$fa3, $fp, 0
	vreplvei.d	$vr3, $vr3, 0
	vfmul.d	$vr3, $vr3, $vr2
	move	$s0, $t3
	move	$t2, $t6
	move	$s5, $t8
	.p2align	4, , 16
.LBB7_31:                               # %vector.body104
                                        #   Parent Loop BB7_19 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa4, $s0, $a3
	fldx.d	$fa5, $s0, $a4
	fld.d	$fa6, $s0, 0
	fldx.d	$fa7, $s0, $a0
	movfr2gr.d	$t1, $fa4
	vinsgr2vr.d	$vr4, $t1, 0
	movfr2gr.d	$t1, $fa5
	vinsgr2vr.d	$vr4, $t1, 1
	movfr2gr.d	$t1, $fa6
	movfr2gr.d	$a1, $fa7
	vld	$vr5, $t2, -16
	vld	$vr6, $t2, 0
	vinsgr2vr.d	$vr7, $t1, 0
	vinsgr2vr.d	$vr7, $a1, 1
	vfmadd.d	$vr4, $vr3, $vr4, $vr5
	vfmadd.d	$vr5, $vr3, $vr7, $vr6
	vst	$vr4, $t2, -16
	vst	$vr5, $t2, 0
	addi.d	$s5, $s5, -4
	addi.d	$t2, $t2, 32
	add.d	$s0, $s0, $a5
	bnez	$s5, .LBB7_31
# %bb.32:                               # %middle.block110
                                        #   in Loop: Header=BB7_28 Depth=2
	move	$s0, $s8
	beq	$t4, $s8, .LBB7_27
.LBB7_33:                               # %scalar.ph102.preheader
                                        #   in Loop: Header=BB7_28 Depth=2
	slli.d	$t2, $s0, 3
	mul.d	$a1, $s0, $a0
	add.d	$s0, $ra, $a1
	.p2align	4, , 16
.LBB7_34:                               # %scalar.ph102
                                        #   Parent Loop BB7_19 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa3, $fp, 0
	fld.d	$fa4, $s0, 0
	fldx.d	$fa5, $s2, $t2
	fmul.d	$fa3, $fa3, $fa1
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fstx.d	$fa3, $s2, $t2
	addi.d	$t2, $t2, 8
	add.d	$a1, $t5, $t2
	add.d	$s0, $s0, $a0
	bnez	$a1, .LBB7_34
	b	.LBB7_27
.LBB7_35:                               # %.preheader29.i34.preheader
	move	$t0, $zero
	ld.d	$t8, $sp, 32                    # 8-byte Folded Reload
	addi.d	$t1, $t8, 8
	addi.d	$t5, $t8, 16
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$s0, $s1, $a1
	ori	$t3, $zero, 1
	addi.w	$t4, $zero, -8
	vldi	$vr1, -904
	ori	$t6, $zero, 1000
	ori	$a1, $zero, 0
	lu32i.d	$a1, -524288
	lu52i.d	$a1, $a1, 1023
	vreplgr2vr.d	$vr2, $a1
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_36:                               #   in Loop: Header=BB7_37 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$t3, $t3, 1
	add.d	$t5, $t5, $s3
	add.d	$t8, $t8, $s3
	addi.d	$t4, $t4, -8
	ori	$a1, $zero, 1200
	beq	$t0, $a1, .LBB7_53
.LBB7_37:                               # %.preheader29.i34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
                                        #     Child Loop BB7_43 Depth 2
                                        #     Child Loop BB7_46 Depth 2
                                        #       Child Loop BB7_49 Depth 3
                                        #       Child Loop BB7_52 Depth 3
	move	$t7, $t3
	bstrins.d	$t7, $zero, 1, 0
	bstrpick.d	$a7, $t3, 62, 2
	ori	$a1, $zero, 4
	bgeu	$t3, $a1, .LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_37 Depth=1
	move	$t2, $zero
	b	.LBB7_42
	.p2align	4, , 16
.LBB7_39:                               # %vector.ph154
                                        #   in Loop: Header=BB7_37 Depth=1
	slli.d	$t2, $a7, 2
	move	$fp, $t5
	move	$s2, $t7
	.p2align	4, , 16
.LBB7_40:                               # %vector.body157
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $fp, -16
	vld	$vr4, $fp, 0
	vfmul.d	$vr3, $vr3, $vr0
	vfmul.d	$vr4, $vr4, $vr0
	vst	$vr3, $fp, -16
	vst	$vr4, $fp, 0
	addi.d	$s2, $s2, -4
	addi.d	$fp, $fp, 32
	bnez	$s2, .LBB7_40
# %bb.41:                               # %middle.block162
                                        #   in Loop: Header=BB7_37 Depth=1
	beq	$t3, $t2, .LBB7_44
.LBB7_42:                               # %scalar.ph152.preheader
                                        #   in Loop: Header=BB7_37 Depth=1
	alsl.d	$fp, $t2, $t8, 3
	.p2align	4, , 16
.LBB7_43:                               # %scalar.ph152
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $fp, 0
	fld.d	$fa4, $a6, %pc_lo12(.LCPI7_2)
	fmul.d	$fa3, $fa3, $fa4
	fst.d	$fa3, $fp, 0
	addi.d	$t2, $t2, 1
	addi.d	$fp, $fp, 8
	bne	$t3, $t2, .LBB7_43
.LBB7_44:                               # %.preheader.i40.preheader
                                        #   in Loop: Header=BB7_37 Depth=1
	move	$s5, $zero
	mul.d	$a1, $t0, $s3
	ld.d	$t2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a1, $t2, $a1
	mul.d	$t2, $t0, $a2
	add.d	$t2, $t1, $t2
	mul.d	$fp, $t0, $a0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	add.d	$s2, $s2, $fp
	add.d	$s6, $s1, $fp
	sltu	$a1, $a1, $s2
	sltu	$fp, $s1, $t2
	sltu	$t2, $s6, $t2
	or	$t2, $fp, $t2
	and	$s7, $a1, $t2
	slli.d	$s8, $a7, 2
	move	$ra, $s1
	move	$s4, $s0
	b	.LBB7_46
	.p2align	4, , 16
.LBB7_45:                               # %.loopexit
                                        #   in Loop: Header=BB7_46 Depth=2
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	addi.d	$ra, $ra, 8
	beq	$s5, $t6, .LBB7_36
.LBB7_46:                               # %.preheader.i40
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_49 Depth 3
                                        #       Child Loop BB7_52 Depth 3
	sltui	$a1, $t3, 4
	or	$a1, $a1, $s7
	andi	$a1, $a1, 1
	alsl.d	$fp, $s5, $s6, 3
	beqz	$a1, .LBB7_48
# %bb.47:                               #   in Loop: Header=BB7_46 Depth=2
	move	$t2, $zero
	b	.LBB7_51
	.p2align	4, , 16
.LBB7_48:                               # %vector.ph139
                                        #   in Loop: Header=BB7_46 Depth=2
	fld.d	$fa3, $fp, 0
	vreplvei.d	$vr3, $vr3, 0
	vfmul.d	$vr3, $vr3, $vr2
	move	$a7, $s4
	move	$t2, $t5
	move	$s2, $t7
	.p2align	4, , 16
.LBB7_49:                               # %vector.body142
                                        #   Parent Loop BB7_37 Depth=1
                                        #     Parent Loop BB7_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa4, $a7, $a3
	fldx.d	$fa5, $a7, $a4
	fld.d	$fa6, $a7, 0
	fldx.d	$fa7, $a7, $a0
	movfr2gr.d	$a1, $fa4
	vinsgr2vr.d	$vr4, $a1, 0
	movfr2gr.d	$a1, $fa5
	vinsgr2vr.d	$vr4, $a1, 1
	movfr2gr.d	$a1, $fa6
	vinsgr2vr.d	$vr5, $a1, 0
	movfr2gr.d	$a1, $fa7
	vinsgr2vr.d	$vr5, $a1, 1
	vld	$vr6, $t2, -16
	vld	$vr7, $t2, 0
	vfmul.d	$vr4, $vr3, $vr4
	vfmul.d	$vr5, $vr3, $vr5
	vfadd.d	$vr4, $vr6, $vr4
	vfadd.d	$vr5, $vr7, $vr5
	vst	$vr4, $t2, -16
	vst	$vr5, $t2, 0
	addi.d	$s2, $s2, -4
	addi.d	$t2, $t2, 32
	add.d	$a7, $a7, $a5
	bnez	$s2, .LBB7_49
# %bb.50:                               # %middle.block149
                                        #   in Loop: Header=BB7_46 Depth=2
	move	$t2, $s8
	beq	$t3, $s8, .LBB7_45
.LBB7_51:                               # %scalar.ph137.preheader
                                        #   in Loop: Header=BB7_46 Depth=2
	slli.d	$a7, $t2, 3
	mul.d	$a1, $t2, $a0
	add.d	$t2, $ra, $a1
	.p2align	4, , 16
.LBB7_52:                               # %scalar.ph137
                                        #   Parent Loop BB7_37 Depth=1
                                        #     Parent Loop BB7_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa3, $fp, 0
	fld.d	$fa4, $t2, 0
	fldx.d	$fa5, $t8, $a7
	fmul.d	$fa3, $fa3, $fa1
	fmul.d	$fa3, $fa3, $fa4
	fadd.d	$fa3, $fa5, $fa3
	fstx.d	$fa3, $t8, $a7
	addi.d	$a7, $a7, 8
	add.d	$a1, $t4, $a7
	add.d	$t2, $t2, $a0
	bnez	$a1, .LBB7_52
	b	.LBB7_45
.LBB7_53:                               # %.preheader.i50.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_3)
	move	$a0, $zero
	move	$a2, $zero
	lu12i.w	$s0, -3
	ori	$a1, $s0, 2688
	ori	$a4, $zero, 1200
	.p2align	4, , 16
.LBB7_54:                               # %.preheader.i50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_55 Depth 2
	move	$a3, $zero
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	add.d	$a5, $a5, $a0
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	add.d	$a6, $a6, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_55:                               #   Parent Loop BB7_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa1, $t0, $s3
	add.d	$t0, $a5, $a7
	fldx.d	$fa2, $t0, $s3
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
	add.d	$a0, $a0, $s3
	bne	$a2, $a4, .LBB7_54
# %bb.58:                               # %check_FP.exit
	lu12i.w	$fp, 4
	ori	$a0, $fp, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s4, $zero
	move	$s5, $zero
	ori	$a0, $fp, 2816
	stx.b	$zero, $s2, $a0
	addi.d	$fp, $s2, 7
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	ori	$s8, $s0, 2688
	ori	$s6, $zero, 3
	ori	$s0, $zero, 1200
.LBB7_59:                               # %.preheader.i54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_60 Depth 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s4
	move	$a1, $fp
	move	$a2, $s8
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
	bstrins.d	$a3, $s6, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s6, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s6, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s6, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s6, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s6, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s6, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s6, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_60
# %bb.61:                               #   in Loop: Header=BB7_59 Depth=1
	ld.d	$a1, $s7, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	add.d	$s4, $s4, $s3
	bne	$s5, $s0, .LBB7_59
# %bb.62:                               # %print_array.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
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
.LBB7_64:
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
