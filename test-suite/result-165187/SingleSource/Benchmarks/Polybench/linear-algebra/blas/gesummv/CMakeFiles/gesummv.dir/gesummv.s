	.file	"gesummv.c"
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
	.dword	0x4056800000000000              # double 90
.LCPI7_1:
	.dword	0x3ff3333333333333              # double 1.2
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $sp, 16
	lu12i.w	$a0, 15
	ori	$s0, $a0, 3360
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16
	beqz	$fp, .LBB7_21
# %bb.1:
	bnez	$a0, .LBB7_21
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 16
	beqz	$s0, .LBB7_21
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_21
# %bb.4:                                # %polybench_alloc_data.exit17
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 720
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB7_21
# %bb.5:                                # %polybench_alloc_data.exit17
	bnez	$a0, .LBB7_21
# %bb.6:                                # %polybench_alloc_data.exit19
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 720
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 16
	beqz	$s2, .LBB7_21
# %bb.7:                                # %polybench_alloc_data.exit19
	bnez	$a0, .LBB7_21
# %bb.8:                                # %polybench_alloc_data.exit21
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 720
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB7_21
# %bb.9:                                # %polybench_alloc_data.exit21
	bnez	$a0, .LBB7_21
# %bb.10:                               # %polybench_alloc_data.exit23
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	lu52i.d	$a3, $zero, 1107
	lu12i.w	$a4, 256
	lu52i.d	$a4, $a4, 1107
	movgr2fr.d	$fa0, $a4
	lu12i.w	$a4, 275200
	pcalau12i	$a5, %pc_hi20(.LCPI7_0)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI7_0)
	lu12i.w	$a5, -302922
	ori	$a5, $a5, 183
	lu32i.d	$a5, 0
	ori	$a6, $zero, 90
	ori	$a7, $zero, 720
	.p2align	4, , 16
.LBB7_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	move	$t0, $zero
	srli.d	$t1, $a2, 32
	or	$t1, $t1, $a3
	movgr2fr.d	$fa2, $t1
	fsub.d	$fa2, $fa2, $fa0
	move	$t1, $a2
	bstrins.d	$t1, $a4, 63, 32
	movgr2fr.d	$fa3, $t1
	fadd.d	$fa2, $fa3, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	slli.d	$t1, $a2, 3
	fstx.d	$fa2, $s2, $t1
	add.d	$t1, $s0, $a1
	add.d	$t2, $fp, $a1
	ori	$t3, $zero, 2
	ori	$t4, $zero, 1
	.p2align	4, , 16
.LBB7_12:                               #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t5, $t3, 31, 1
	mul.d	$t5, $t5, $a5
	srli.d	$t5, $t5, 37
	mul.d	$t5, $t5, $a6
	sub.d	$t5, $t3, $t5
	bstrpick.d	$t5, $t5, 31, 0
	bstrpick.d	$t6, $t4, 31, 1
	mul.d	$t6, $t6, $a5
	srli.d	$t6, $t6, 37
	mul.d	$t6, $t6, $a6
	sub.d	$t6, $t4, $t6
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa2, $t6
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	fstx.d	$fa2, $t2, $t0
	movgr2fr.d	$fa2, $t5
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	fstx.d	$fa2, $t1, $t0
	addi.d	$t0, $t0, 8
	add.w	$t3, $t3, $a0
	add.w	$t4, $t4, $a0
	bne	$t0, $a7, .LBB7_12
# %bb.13:                               #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 720
	addi.d	$a0, $a0, 1
	bne	$a2, $a6, .LBB7_11
# %bb.14:                               # %init_array.exit.preheader
	move	$a0, $zero
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_1)
	ori	$a2, $zero, 720
	vldi	$vr1, -904
	ori	$a3, $zero, 90
	.p2align	4, , 16
.LBB7_15:                               # %init_array.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	move	$a6, $zero
	alsl.d	$a5, $a1, $s1, 3
	slli.d	$a7, $a1, 3
	stx.d	$zero, $s1, $a7
	alsl.d	$a4, $a1, $s3, 3
	stx.d	$zero, $s3, $a7
	add.d	$a7, $s0, $a0
	add.d	$t0, $fp, $a0
	.p2align	4, , 16
.LBB7_16:                               #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa2, $t0, $a6
	fldx.d	$fa3, $s2, $a6
	fld.d	$fa4, $a5, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fst.d	$fa2, $a5, 0
	fldx.d	$fa2, $a7, $a6
	fldx.d	$fa3, $s2, $a6
	fld.d	$fa4, $a4, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	addi.d	$a6, $a6, 8
	fst.d	$fa2, $a4, 0
	bne	$a6, $a2, .LBB7_16
# %bb.17:                               #   in Loop: Header=BB7_15 Depth=1
	fld.d	$fa3, $a5, 0
	fmul.d	$fa3, $fa3, $fa1
	fmul.d	$fa2, $fa2, $fa0
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a4, 0
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 720
	bne	$a1, $a3, .LBB7_15
# %bb.18:                               # %kernel_gesummv.exit
	ori	$a0, $zero, 1441
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a1, $zero
	st.b	$zero, $a0, 1440
	addi.d	$a2, $a0, 7
	ori	$a3, $zero, 3
	ori	$a4, $zero, 720
	.p2align	4, , 16
.LBB7_19:                               # =>This Inner Loop Header: Depth=1
	ldx.d	$a5, $s3, $a1
	srli.d	$a6, $a5, 8
	srli.d	$a7, $a5, 16
	srli.d	$t0, $a5, 24
	srli.d	$t1, $a5, 32
	srli.d	$t2, $a5, 40
	srli.d	$t3, $a5, 48
	srli.d	$t4, $a5, 56
	bstrins.d	$a5, $a3, 63, 4
	st.b	$a5, $a2, -7
	st.b	$a5, $a2, -6
	bstrins.d	$a6, $a3, 63, 4
	st.b	$a6, $a2, -5
	st.b	$a6, $a2, -4
	bstrins.d	$a7, $a3, 63, 4
	st.b	$a7, $a2, -3
	st.b	$a7, $a2, -2
	bstrins.d	$t0, $a3, 63, 4
	st.b	$t0, $a2, -1
	st.b	$t0, $a2, 0
	bstrins.d	$t1, $a3, 63, 4
	st.b	$t1, $a2, 1
	st.b	$t1, $a2, 2
	bstrins.d	$t2, $a3, 63, 4
	st.b	$t2, $a2, 3
	st.b	$t2, $a2, 4
	bstrins.d	$t3, $a3, 63, 4
	st.b	$t3, $a2, 5
	st.b	$t3, $a2, 6
	bstrins.d	$t4, $a3, 63, 4
	st.b	$t4, $a2, 7
	st.b	$t4, $a2, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 16
	bne	$a1, $a4, .LBB7_19
# %bb.20:                               # %print_array.exit
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	ld.d	$a1, $a1, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	move	$a0, $s4
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
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB7_21:
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
