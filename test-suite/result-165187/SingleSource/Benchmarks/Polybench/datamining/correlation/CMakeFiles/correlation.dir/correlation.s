	.file	"correlation.c"
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
	.dword	0x4092c00000000000              # double 1200
.LCPI7_1:
	.dword	0x4095e00000000000              # double 1400
.LCPI7_2:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI7_3:
	.dword	0x4042b5524ae1278e              # double 37.416573867739416
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	st.d	$zero, $sp, 24
	lu12i.w	$a0, 3281
	ori	$a2, $a0, 1024
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 24
	beqz	$s7, .LBB7_37
# %bb.1:
	bnez	$a0, .LBB7_37
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 24
	lu12i.w	$s4, 2812
	ori	$a2, $s4, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24
	beqz	$s0, .LBB7_37
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_37
# %bb.4:                                # %polybench_alloc_data.exit15
	st.d	$zero, $sp, 24
	lu12i.w	$fp, 2
	ori	$s2, $fp, 1408
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 24
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 24
	beqz	$s1, .LBB7_37
# %bb.5:                                # %polybench_alloc_data.exit15
	bnez	$a0, .LBB7_37
# %bb.6:                                # %polybench_alloc_data.exit17
	st.d	$zero, $sp, 24
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 24
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 24
	beqz	$s3, .LBB7_37
# %bb.7:                                # %polybench_alloc_data.exit17
	bnez	$a0, .LBB7_37
# %bb.8:                                # %polybench_alloc_data.exit19
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	lu52i.d	$a3, $zero, 1107
	lu12i.w	$a4, 256
	lu52i.d	$a4, $a4, 1107
	movgr2fr.d	$fa0, $a4
	lu12i.w	$a4, 275200
	lu12i.w	$s5, -3
	pcalau12i	$a5, %pc_hi20(.LCPI7_0)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI7_0)
	ori	$a5, $s5, 2688
	ori	$a6, $fp, 1416
	ori	$a7, $zero, 1400
	move	$t0, $s7
	.p2align	4, , 16
.LBB7_9:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
	move	$t1, $zero
	srli.d	$t2, $a2, 32
	or	$t2, $t2, $a3
	movgr2fr.d	$fa2, $t2
	fsub.d	$fa2, $fa2, $fa0
	move	$t2, $a2
	bstrins.d	$t2, $a4, 63, 32
	movgr2fr.d	$fa3, $t2
	fadd.d	$fa2, $fa3, $fa2
	move	$t2, $a5
	.p2align	4, , 16
.LBB7_10:                               # %vector.body
                                        #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a1, $t1
	bstrpick.d	$t3, $t3, 31, 0
	bstrpick.d	$t4, $t1, 31, 0
	movgr2fr.d	$fa3, $t4
	ffint.d.l	$fa3, $fa3
	movgr2fr.d	$fa4, $t3
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa3, $fa3, $fa1
	fdiv.d	$fa4, $fa4, $fa1
	fadd.d	$fa3, $fa3, $fa2
	fadd.d	$fa4, $fa4, $fa2
	add.d	$t3, $t0, $t2
	fstx.d	$fa3, $t3, $s2
	fstx.d	$fa4, $t3, $a6
	addi.d	$t2, $t2, 16
	add.w	$t1, $t1, $a0
	bnez	$t2, .LBB7_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB7_9 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$a1, $a1, 1
	addi.d	$a0, $a0, 2
	add.d	$t0, $t0, $s2
	bne	$a2, $a7, .LBB7_9
# %bb.12:                               # %init_array.exit.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI7_1)
	move	$a0, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a1, $zero, 1200
	move	$a2, $s7
	.p2align	4, , 16
.LBB7_13:                               # %init_array.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
	alsl.d	$a3, $a0, $s1, 3
	slli.d	$a4, $a0, 3
	stx.d	$zero, $s1, $a4
	ori	$a4, $zero, 1400
	move	$a5, $a2
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_14:                               #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a5, 0
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a3, 0
	addi.d	$a4, $a4, -1
	add.d	$a5, $a5, $s2
	bnez	$a4, .LBB7_14
# %bb.15:                               #   in Loop: Header=BB7_13 Depth=1
	fdiv.d	$fa1, $fa1, $fs0
	fst.d	$fa1, $a3, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$a0, $a1, .LBB7_13
# %bb.16:                               # %.preheader111.i.preheader
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI7_2)
	movgr2fr.d	$fs2, $zero
	vldi	$vr3, -912
	ori	$s6, $zero, 1200
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_17:                               # %.preheader111.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
	alsl.d	$s8, $fp, $s3, 3
	slli.d	$a0, $fp, 3
	stx.d	$zero, $s3, $a0
	alsl.d	$a0, $fp, $s1, 3
	ori	$a1, $zero, 1400
	move	$a2, $s7
	fmov.d	$fa0, $fs2
	.p2align	4, , 16
.LBB7_18:                               #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a2, 0
	fld.d	$fa2, $a0, 0
	fsub.d	$fa1, $fa1, $fa2
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s8, 0
	addi.d	$a1, $a1, -1
	add.d	$a2, $a2, $s2
	bnez	$a1, .LBB7_18
# %bb.19:                               #   in Loop: Header=BB7_17 Depth=1
	fdiv.d	$fa1, $fa0, $fs0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB7_21
.LBB7_20:                               # %.split
                                        #   in Loop: Header=BB7_17 Depth=1
	fcmp.cult.d	$fcc0, $fs1, $fa0
	fsel	$fa0, $fa3, $fa0, $fcc0
	fst.d	$fa0, $s8, 0
	addi.d	$fp, $fp, 1
	addi.d	$s7, $s7, 8
	bne	$fp, $s6, .LBB7_17
	b	.LBB7_22
.LBB7_21:                               # %call.sqrt
                                        #   in Loop: Header=BB7_17 Depth=1
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -912
	b	.LBB7_20
.LBB7_22:                               # %.preheader109.i.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_3)
	move	$a0, $zero
	ori	$a1, $s5, 2688
	ori	$a2, $zero, 1400
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $a7
	.p2align	4, , 16
.LBB7_23:                               # %.preheader109.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
	move	$a4, $a1
	.p2align	4, , 16
.LBB7_24:                               #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a5, $s1, $a4
	fldx.d	$fa1, $a5, $s2
	add.d	$a5, $a3, $a4
	fldx.d	$fa2, $a5, $s2
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $a5, $s2
	add.d	$a6, $s3, $a4
	fldx.d	$fa2, $a6, $s2
	fmul.d	$fa2, $fa2, $fa0
	fdiv.d	$fa1, $fa1, $fa2
	addi.d	$a4, $a4, 8
	fstx.d	$fa1, $a5, $s2
	bnez	$a4, .LBB7_24
# %bb.25:                               #   in Loop: Header=BB7_23 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a3, $a3, $s2
	bne	$a0, $a2, .LBB7_23
# %bb.26:                               # %.lr.ph.preheader.i.preheader
	move	$a0, $zero
	addi.d	$a2, $a7, 8
	ori	$a3, $zero, 1
	lu52i.d	$a1, $zero, 1023
	movgr2fr.d	$fa0, $zero
	ori	$a4, $zero, 1200
	ori	$a5, $zero, 1199
	move	$a6, $a7
	.p2align	4, , 16
.LBB7_27:                               # %.lr.ph.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
                                        #       Child Loop BB7_29 Depth 3
	mul.d	$a7, $a0, $s2
	add.d	$a7, $s0, $a7
	slli.d	$t0, $a0, 3
	stx.d	$a1, $a7, $t0
	alsl.d	$t0, $a0, $s0, 3
	move	$t1, $a2
	move	$t2, $a3
	.p2align	4, , 16
.LBB7_28:                               # %.lr.ph.i
                                        #   Parent Loop BB7_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_29 Depth 3
	alsl.d	$t3, $t2, $a7, 3
	slli.d	$t4, $t2, 3
	stx.d	$zero, $a7, $t4
	ori	$t4, $zero, 1400
	move	$t5, $a6
	move	$t6, $t1
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_29:                               #   Parent Loop BB7_27 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $t5, 0
	fld.d	$fa3, $t6, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $t3, 0
	addi.d	$t4, $t4, -1
	add.d	$t6, $t6, $s2
	add.d	$t5, $t5, $s2
	bnez	$t4, .LBB7_29
# %bb.30:                               #   in Loop: Header=BB7_28 Depth=2
	mul.d	$t3, $t2, $s2
	fstx.d	$fa1, $t0, $t3
	addi.d	$t2, $t2, 1
	addi.d	$t1, $t1, 8
	bne	$t2, $a4, .LBB7_28
# %bb.31:                               # %.loopexit.i
                                        #   in Loop: Header=BB7_27 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	addi.d	$a6, $a6, 8
	bne	$a0, $a5, .LBB7_27
# %bb.32:                               # %kernel_correlation.exit
	ori	$a0, $s4, 2040
	stx.d	$a1, $s0, $a0
	lu12i.w	$fp, 4
	ori	$a0, $fp, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $fp, 2816
	stx.b	$zero, $s4, $a0
	ori	$s5, $s5, 2688
	ori	$s7, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s8, $a0, %got_pc_lo12(stderr)
	move	$s6, $zero
	move	$fp, $zero
.LBB7_33:                               # %.preheader.i23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_34 Depth 2
	add.d	$a0, $s0, $s6
	addi.d	$a1, $s4, 7
	move	$a2, $s5
	.p2align	4, , 16
.LBB7_34:                               #   Parent Loop BB7_33 Depth=1
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
	bnez	$a2, .LBB7_34
# %bb.35:                               #   in Loop: Header=BB7_33 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	add.d	$s6, $s6, $s2
	ori	$a0, $zero, 1200
	bne	$fp, $a0, .LBB7_33
# %bb.36:                               # %print_array.exit
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.LBB7_37:
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
