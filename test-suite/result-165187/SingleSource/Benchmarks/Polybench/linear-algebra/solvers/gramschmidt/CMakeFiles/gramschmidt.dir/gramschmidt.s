	.file	"gramschmidt.c"
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
	.dword	0x408f400000000000              # double 1000
.LCPI7_1:
	.dword	0x4059000000000000              # double 100
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	st.d	$zero, $sp, 24
	lu12i.w	$a0, 2343
	ori	$s1, $a0, 3072
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 24
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 24
	beqz	$fp, .LBB7_26
# %bb.1:
	bnez	$a0, .LBB7_26
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 24
	lu12i.w	$a0, 2812
	ori	$s2, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 24
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_26
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_26
# %bb.4:                                # %polybench_alloc_data.exit18
	st.d	$zero, $sp, 24
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 24
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 24
	beqz	$s7, .LBB7_26
# %bb.5:                                # %polybench_alloc_data.exit18
	bnez	$a0, .LBB7_26
# %bb.6:                                # %polybench_alloc_data.exit20
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	lu12i.w	$a3, -3
	ori	$a3, $a3, 2688
	lu12i.w	$a4, 67108
	ori	$a4, $a4, 3539
	ori	$a5, $zero, 1000
	pcalau12i	$a6, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a6, %pc_lo12(.LCPI7_0)
	pcalau12i	$a6, %pc_hi20(.LCPI7_1)
	fld.d	$fa1, $a6, %pc_lo12(.LCPI7_1)
	vldi	$vr2, -988
	lu12i.w	$a6, 2
	ori	$s3, $a6, 1408
	.p2align	4, , 16
.LBB7_7:                                # %.preheader29.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
	move	$a6, $zero
	add.d	$a7, $s7, $a1
	add.d	$t0, $fp, $a1
	move	$t1, $a3
	.p2align	4, , 16
.LBB7_8:                                #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t2, $a6, 31, 0
	mul.d	$t2, $t2, $a4
	srli.d	$t2, $t2, 38
	mul.d	$t2, $t2, $a5
	sub.d	$t2, $a6, $t2
	bstrpick.d	$t2, $t2, 31, 0
	movgr2fr.d	$fa3, $t2
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fmul.d	$fa3, $fa3, $fa1
	fadd.d	$fa3, $fa3, $fa2
	add.d	$t2, $t0, $t1
	fstx.d	$fa3, $t2, $s3
	add.d	$t2, $a7, $t1
	stptr.d	$zero, $t2, 9600
	addi.d	$t1, $t1, 8
	add.w	$a6, $a6, $a0
	bnez	$t1, .LBB7_8
# %bb.9:                                #   in Loop: Header=BB7_7 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a1, $a1, $s3
	addi.d	$a0, $a0, 1
	bne	$a2, $a5, .LBB7_7
# %bb.10:                               # %init_array.exit
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$s2, $zero
	move	$s4, $zero
	addi.d	$s5, $fp, 8
	ori	$s6, $zero, 1
	movgr2fr.d	$fs0, $zero
	ori	$t0, $zero, 1198
	ori	$s8, $zero, 1200
	move	$s1, $s7
	move	$s0, $fp
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %.loopexit.i
                                        #   in Loop: Header=BB7_12 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s6, $s6, 1
	addi.d	$s0, $s0, 8
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 8
	addi.d	$s1, $s1, 8
	beq	$s4, $s8, .LBB7_25
.LBB7_12:                               # %.preheader67.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_13 Depth 2
                                        #     Child Loop BB7_16 Depth 2
                                        #     Child Loop BB7_19 Depth 2
                                        #       Child Loop BB7_20 Depth 3
                                        #       Child Loop BB7_22 Depth 3
	ori	$a2, $zero, 1000
	move	$a1, $s0
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB7_13:                               #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a2, $a2, -1
	add.d	$a1, $a1, $s3
	bnez	$a2, .LBB7_13
# %bb.14:                               #   in Loop: Header=BB7_12 Depth=1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB7_24
.LBB7_15:                               # %.split
                                        #   in Loop: Header=BB7_12 Depth=1
	mul.d	$a1, $s4, $s3
	add.d	$a7, $a0, $a1
	alsl.d	$a1, $s4, $a7, 3
	slli.d	$a2, $s4, 3
	fstx.d	$fa1, $a7, $a2
	ori	$a2, $zero, 1000
	move	$a3, $s2
	.p2align	4, , 16
.LBB7_16:                               #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $fp, $a3
	fld.d	$fa1, $a1, 0
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s7, $a3
	addi.d	$a2, $a2, -1
	add.d	$a3, $a3, $s3
	bnez	$a2, .LBB7_16
# %bb.17:                               #   in Loop: Header=BB7_12 Depth=1
	bltu	$t0, $s4, .LBB7_11
# %bb.18:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	move	$a1, $s5
	move	$a2, $s6
	.p2align	4, , 16
.LBB7_19:                               # %.lr.ph.i
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_20 Depth 3
                                        #       Child Loop BB7_22 Depth 3
	alsl.d	$a3, $a2, $a7, 3
	slli.d	$a4, $a2, 3
	stx.d	$zero, $a7, $a4
	ori	$a4, $zero, 1000
	move	$a5, $s1
	move	$a6, $a1
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB7_20:                               #   Parent Loop BB7_12 Depth=1
                                        #     Parent Loop BB7_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a5, 0
	fld.d	$fa2, $a6, 0
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, 0
	addi.d	$a4, $a4, -1
	add.d	$a6, $a6, $s3
	add.d	$a5, $a5, $s3
	bnez	$a4, .LBB7_20
# %bb.21:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB7_19 Depth=2
	move	$a4, $zero
	ori	$a5, $zero, 1000
	.p2align	4, , 16
.LBB7_22:                               # %.preheader.i
                                        #   Parent Loop BB7_12 Depth=1
                                        #     Parent Loop BB7_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa0, $s1, $a4
	fld.d	$fa1, $a3, 0
	fldx.d	$fa2, $a1, $a4
	fmul.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a1, $a4
	addi.d	$a5, $a5, -1
	add.d	$a4, $a4, $s3
	bnez	$a5, .LBB7_22
# %bb.23:                               #   in Loop: Header=BB7_19 Depth=2
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bne	$a2, $s8, .LBB7_19
	b	.LBB7_11
.LBB7_24:                               # %call.sqrt
                                        #   in Loop: Header=BB7_12 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ori	$t0, $zero, 1198
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	fmov.d	$fa1, $fa0
	b	.LBB7_15
.LBB7_25:                               # %kernel_gramschmidt.exit
	move	$a1, $s7
	move	$s0, $a0
	pcaddu18i	$ra, %call36(print_array)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.LBB7_26:
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
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function print_array
	.type	print_array,@function
print_array:                            # @print_array
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s2, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -3
	ori	$a0, $a0, 2688
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s1, $a0, %pc_lo12(.L.str.6)
	move	$s4, $zero
	move	$s3, $zero
	move	$s5, $zero
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1408
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB8_1:                                # %.preheader1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_2 Depth 2
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	move	$s7, $s4
	move	$s8, $s3
.LBB8_2:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s7, 31, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 36
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 2
	add.w	$a0, $s8, $a0
	bnez	$a0, .LBB8_4
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=2
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB8_4:                                #   in Loop: Header=BB8_2 Depth=2
	ld.d	$a0, $s2, 0
	add.d	$a1, $s0, $s6
	ldptr.d	$a2, $a1, 9600
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, -1
	addi.d	$s6, $s6, 8
	addi.w	$s7, $s7, 1
	bnez	$s6, .LBB8_2
# %bb.5:                                #   in Loop: Header=BB8_1 Depth=1
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, -1200
	addi.w	$s4, $s4, 1200
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$s0, $s0, $a0
	ori	$a0, $zero, 1200
	bne	$s5, $a0, .LBB8_1
# %bb.6:
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -3
	ori	$s8, $a0, 2688
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s0, $a0, %pc_lo12(.L.str.6)
	move	$s5, $zero
	move	$s6, $zero
	move	$s7, $zero
	.p2align	4, , 16
.LBB8_7:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
	move	$s1, $s8
	move	$s4, $s5
	move	$s3, $s6
.LBB8_8:                                #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s4, 31, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 36
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 2
	add.w	$a0, $s3, $a0
	bnez	$a0, .LBB8_10
# %bb.9:                                #   in Loop: Header=BB8_8 Depth=2
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB8_10:                               #   in Loop: Header=BB8_8 Depth=2
	ld.d	$a0, $s2, 0
	add.d	$a1, $fp, $s1
	ldptr.d	$a2, $a1, 9600
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	addi.w	$s4, $s4, 1
	bnez	$s1, .LBB8_8
# %bb.11:                               #   in Loop: Header=BB8_7 Depth=1
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, -1200
	addi.w	$s5, $s5, 1200
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	ori	$a0, $zero, 1000
	bne	$s7, $a0, .LBB8_7
# %bb.12:
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end8:
	.size	print_array, .Lfunc_end8-print_array
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
	.asciz	"==BEGIN DUMP_ARRAYS==\n"
	.size	.L.str.2, 23

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"begin dump: %s"
	.size	.L.str.3, 15

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"R"
	.size	.L.str.4, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%0.2lf "
	.size	.L.str.6, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\nend   dump: %s\n"
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Q"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"==END   DUMP_ARRAYS==\n"
	.size	.L.str.9, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
