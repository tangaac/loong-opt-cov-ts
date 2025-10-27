	.file	"3mm.c"
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
	.dword	0x40af400000000000              # double 4000
.LCPI7_1:
	.dword	0x40b1940000000000              # double 4500
.LCPI7_2:
	.dword	0x40b57c0000000000              # double 5500
.LCPI7_3:
	.dword	0x40b3880000000000              # double 5000
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
	lu12i.w	$a0, 1406
	ori	$a2, $a0, 1024
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48
	beqz	$fp, .LBB7_53
# %bb.1:
	bnez	$a0, .LBB7_53
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 1562
	ori	$a2, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 48
	beqz	$s0, .LBB7_53
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_53
# %bb.4:                                # %polybench_alloc_data.exit31
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 1757
	ori	$a2, $a0, 3328
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 48
	beqz	$s1, .LBB7_53
# %bb.5:                                # %polybench_alloc_data.exit31
	bnez	$a0, .LBB7_53
# %bb.6:                                # %polybench_alloc_data.exit33
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 1933
	ori	$a2, $a0, 2432
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 48
	beqz	$s2, .LBB7_53
# %bb.7:                                # %polybench_alloc_data.exit33
	bnez	$a0, .LBB7_53
# %bb.8:                                # %polybench_alloc_data.exit35
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 2109
	ori	$a2, $a0, 1536
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 48
	beqz	$s3, .LBB7_53
# %bb.9:                                # %polybench_alloc_data.exit35
	bnez	$a0, .LBB7_53
# %bb.10:                               # %polybench_alloc_data.exit37
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 2578
	ori	$a2, $a0, 512
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 48
	beqz	$s4, .LBB7_53
# %bb.11:                               # %polybench_alloc_data.exit37
	bnez	$a0, .LBB7_53
# %bb.12:                               # %polybench_alloc_data.exit39
	st.d	$zero, $sp, 48
	lu12i.w	$a0, 1718
	ori	$a2, $a0, 3072
	lu12i.w	$s6, 1
	addi.d	$a0, $sp, 48
	move	$a1, $s6
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 48
	beqz	$s5, .LBB7_53
# %bb.13:                               # %polybench_alloc_data.exit39
	bnez	$a0, .LBB7_53
# %bb.14:                               # %polybench_alloc_data.exit41
	move	$a1, $zero
	move	$a3, $zero
	ori	$a4, $zero, 1
	lu12i.w	$a0, -2
	ori	$a5, $a0, 192
	lu12i.w	$a2, 335544
	ori	$a6, $a2, 1311
	pcalau12i	$a2, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_0)
	ori	$a7, $zero, 800
	ori	$a2, $s6, 3904
	ori	$t0, $s6, 3912
	move	$t1, $s0
	.p2align	4, , 16
.LBB7_15:                               # %.preheader63.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	ori	$t2, $zero, 1
	move	$t3, $a5
	move	$t4, $a4
	.p2align	4, , 16
.LBB7_16:                               # %vector.body
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t5, $t4, 31, 0
	mul.d	$t5, $t5, $a6
	srli.d	$t5, $t5, 40
	mul.d	$t5, $t5, $a7
	sub.d	$t5, $t4, $t5
	bstrpick.d	$t5, $t5, 31, 0
	bstrpick.d	$t6, $t2, 31, 0
	mul.d	$t6, $t6, $a6
	srli.d	$t6, $t6, 40
	mul.d	$t6, $t6, $a7
	sub.d	$t6, $t2, $t6
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa1, $t6
	ffint.d.l	$fa1, $fa1
	movgr2fr.d	$fa2, $t5
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa0
	fdiv.d	$fa2, $fa2, $fa0
	add.d	$t5, $t1, $t3
	fstx.d	$fa1, $t5, $a2
	fstx.d	$fa2, $t5, $t0
	add.w	$t4, $t4, $a1
	addi.d	$t3, $t3, 16
	add.w	$t2, $t2, $a1
	bnez	$t3, .LBB7_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB7_15 Depth=1
	addi.d	$a3, $a3, 1
	addi.w	$a4, $a4, 1
	addi.d	$a1, $a1, 2
	add.d	$t1, $t1, $a2
	bne	$a3, $a7, .LBB7_15
# %bb.18:                               # %.preheader61.i.preheader
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$a3, $zero
	move	$a4, $zero
	ori	$a5, $zero, 2
	ori	$a6, $a0, 992
	lu12i.w	$a1, -452053
	ori	$a7, $a1, 965
	lu32i.d	$a7, 0
	ori	$t0, $zero, 900
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_1)
	ori	$a1, $s6, 3104
	ori	$t1, $s6, 3112
	ori	$t2, $zero, 1000
	ori	$t3, $zero, 2
	move	$t4, $s1
	.p2align	4, , 16
.LBB7_19:                               # %.preheader61.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
	move	$t5, $a5
	move	$t6, $t3
	move	$t7, $a6
	.p2align	4, , 16
.LBB7_20:                               # %vector.body57
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t8, $t6, 31, 0
	mul.d	$t8, $t8, $a7
	srli.d	$t8, $t8, 41
	mul.d	$t8, $t8, $t0
	sub.d	$t8, $t6, $t8
	bstrpick.d	$t8, $t8, 31, 0
	bstrpick.d	$s0, $t5, 31, 0
	mul.d	$s0, $s0, $a7
	srli.d	$s0, $s0, 41
	mul.d	$s0, $s0, $t0
	sub.d	$s0, $t5, $s0
	bstrpick.d	$s0, $s0, 31, 0
	movgr2fr.d	$fa1, $s0
	ffint.d.l	$fa1, $fa1
	movgr2fr.d	$fa2, $t8
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa0
	fdiv.d	$fa2, $fa2, $fa0
	add.d	$t8, $t4, $t7
	fstx.d	$fa1, $t8, $a1
	fstx.d	$fa2, $t8, $t1
	addi.d	$t7, $t7, 16
	add.w	$t6, $t6, $a3
	add.w	$t5, $t5, $a3
	bnez	$t7, .LBB7_20
# %bb.21:                               # %middle.block60
                                        #   in Loop: Header=BB7_19 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$t4, $t4, $a1
	addi.w	$t3, $t3, 2
	addi.d	$a3, $a3, 2
	addi.w	$a5, $a5, 1
	bne	$a4, $t2, .LBB7_19
# %bb.22:                               # %.preheader59.i.preheader
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	move	$t0, $zero
	lu12i.w	$s8, -3
	ori	$t1, $s8, 2688
	lu12i.w	$a3, 122016
	ori	$t2, $a3, 477
	ori	$t3, $zero, 1100
	pcalau12i	$a3, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI7_2)
	lu12i.w	$a4, 2
	ori	$a3, $a4, 1408
	ori	$t4, $a4, 1416
	ori	$t5, $zero, 900
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$t6, $s3
	.p2align	4, , 16
.LBB7_23:                               # %.preheader59.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
	move	$t7, $a5
	move	$t8, $a7
	move	$s0, $t1
	.p2align	4, , 16
.LBB7_24:                               # %vector.body62
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$s3, $t8, 31, 2
	mul.d	$s3, $s3, $t2
	srli.d	$s3, $s3, 37
	mul.d	$s3, $s3, $t3
	sub.d	$s3, $t8, $s3
	bstrpick.d	$s3, $s3, 31, 0
	bstrpick.d	$s6, $t7, 31, 2
	mul.d	$s6, $s6, $t2
	srli.d	$s6, $s6, 37
	mul.d	$s6, $s6, $t3
	sub.d	$s6, $t7, $s6
	bstrpick.d	$s6, $s6, 31, 0
	movgr2fr.d	$fa1, $s6
	ffint.d.l	$fa1, $fa1
	movgr2fr.d	$fa2, $s3
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa0
	fdiv.d	$fa2, $fa2, $fa0
	add.d	$s3, $t6, $s0
	fstx.d	$fa1, $s3, $a3
	fstx.d	$fa2, $s3, $t4
	addi.d	$s0, $s0, 16
	add.w	$t8, $t8, $a6
	add.w	$t7, $t7, $a6
	bnez	$s0, .LBB7_24
# %bb.25:                               # %middle.block65
                                        #   in Loop: Header=BB7_23 Depth=1
	addi.d	$t0, $t0, 1
	add.d	$t6, $t6, $a3
	addi.w	$a7, $a7, 4
	addi.d	$a6, $a6, 2
	addi.w	$a5, $a5, 3
	bne	$t0, $t5, .LBB7_23
# %bb.26:                               # %.preheader.i.preheader
	move	$a5, $zero
	move	$a6, $zero
	ori	$a7, $zero, 2
	ori	$t0, $s8, 3488
	lu12i.w	$t1, 67108
	ori	$t1, $t1, 3539
	ori	$t2, $zero, 1000
	pcalau12i	$t3, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $t3, %pc_lo12(.LCPI7_3)
	ori	$s7, $a4, 608
	ori	$a4, $a4, 616
	ori	$t3, $zero, 1200
	ori	$t4, $zero, 2
	move	$t5, $s4
	.p2align	4, , 16
.LBB7_27:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
	move	$t6, $a7
	move	$t7, $t4
	move	$t8, $t0
	.p2align	4, , 16
.LBB7_28:                               # %vector.body67
                                        #   Parent Loop BB7_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$s0, $t7, 31, 0
	mul.d	$s0, $s0, $t1
	srli.d	$s0, $s0, 38
	mul.d	$s0, $s0, $t2
	sub.d	$s0, $t7, $s0
	bstrpick.d	$s0, $s0, 31, 0
	bstrpick.d	$s3, $t6, 31, 0
	mul.d	$s3, $s3, $t1
	srli.d	$s3, $s3, 38
	mul.d	$s3, $s3, $t2
	sub.d	$s3, $t6, $s3
	bstrpick.d	$s3, $s3, 31, 0
	movgr2fr.d	$fa1, $s3
	ffint.d.l	$fa1, $fa1
	movgr2fr.d	$fa2, $s0
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa0
	fdiv.d	$fa2, $fa2, $fa0
	add.d	$s0, $t5, $t8
	fstx.d	$fa1, $s0, $s7
	fstx.d	$fa2, $s0, $a4
	addi.d	$t8, $t8, 16
	add.w	$t7, $t7, $a5
	add.w	$t6, $t6, $a5
	bnez	$t8, .LBB7_28
# %bb.29:                               # %middle.block70
                                        #   in Loop: Header=BB7_27 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$t5, $t5, $s7
	addi.w	$t4, $t4, 3
	addi.d	$a5, $a5, 2
	addi.w	$a7, $a7, 2
	bne	$a6, $t3, .LBB7_27
# %bb.30:                               # %.preheader73.i.preheader
	move	$a4, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a5, $a0, 192
	ori	$a6, $zero, 900
	ori	$a7, $zero, 800
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_31:                               # %.preheader73.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_32 Depth 2
                                        #       Child Loop BB7_33 Depth 3
	move	$t1, $zero
	mul.d	$t2, $a4, $a1
	add.d	$t2, $fp, $t2
	move	$t3, $s1
	.p2align	4, , 16
.LBB7_32:                               #   Parent Loop BB7_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_33 Depth 3
	alsl.d	$t4, $t1, $t2, 3
	slli.d	$t5, $t1, 3
	stx.d	$zero, $t2, $t5
	move	$t5, $t3
	move	$t6, $a5
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_33:                               #   Parent Loop BB7_31 Depth=1
                                        #     Parent Loop BB7_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $t0, $t6
	fldx.d	$fa2, $t7, $a2
	fld.d	$fa3, $t5, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $t4, 0
	addi.d	$t6, $t6, 8
	add.d	$t5, $t5, $a1
	bnez	$t6, .LBB7_33
# %bb.34:                               #   in Loop: Header=BB7_32 Depth=2
	addi.d	$t1, $t1, 1
	addi.d	$t3, $t3, 8
	bne	$t1, $a6, .LBB7_32
# %bb.35:                               #   in Loop: Header=BB7_31 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$t0, $t0, $a2
	bne	$a4, $a7, .LBB7_31
# %bb.36:                               # %.preheader71.i.preheader
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a4, $s8, 2688
	ori	$a5, $zero, 1100
	ori	$a6, $zero, 900
	move	$a7, $t8
	.p2align	4, , 16
.LBB7_37:                               # %.preheader71.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_38 Depth 2
                                        #       Child Loop BB7_39 Depth 3
	move	$t0, $zero
	mul.d	$t1, $a2, $s7
	add.d	$t1, $s2, $t1
	move	$t2, $s4
	.p2align	4, , 16
.LBB7_38:                               #   Parent Loop BB7_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_39 Depth 3
	alsl.d	$t3, $t0, $t1, 3
	slli.d	$t4, $t0, 3
	stx.d	$zero, $t1, $t4
	move	$t4, $t2
	move	$t5, $a4
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_39:                               #   Parent Loop BB7_37 Depth=1
                                        #     Parent Loop BB7_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $a7, $t5
	fldx.d	$fa2, $t6, $a3
	fld.d	$fa3, $t4, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $t3, 0
	addi.d	$t5, $t5, 8
	add.d	$t4, $t4, $s7
	bnez	$t5, .LBB7_39
# %bb.40:                               #   in Loop: Header=BB7_38 Depth=2
	addi.d	$t0, $t0, 1
	addi.d	$t2, $t2, 8
	bne	$t0, $a5, .LBB7_38
# %bb.41:                               #   in Loop: Header=BB7_37 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a7, $a7, $a3
	bne	$a2, $a6, .LBB7_37
# %bb.42:                               # %.preheader.i45.preheader
	move	$a2, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a0, $a0, 992
	ori	$a3, $zero, 1100
	ori	$a4, $zero, 800
	move	$a5, $fp
	.p2align	4, , 16
.LBB7_43:                               # %.preheader.i45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_44 Depth 2
                                        #       Child Loop BB7_45 Depth 3
	move	$a6, $zero
	mul.d	$a7, $a2, $s7
	add.d	$a7, $s5, $a7
	move	$t0, $s2
	.p2align	4, , 16
.LBB7_44:                               #   Parent Loop BB7_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_45 Depth 3
	alsl.d	$t1, $a6, $a7, 3
	slli.d	$t2, $a6, 3
	stx.d	$zero, $a7, $t2
	move	$t2, $t0
	move	$t3, $a0
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_45:                               #   Parent Loop BB7_43 Depth=1
                                        #     Parent Loop BB7_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t4, $a5, $t3
	fldx.d	$fa2, $t4, $a1
	fld.d	$fa3, $t2, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $t1, 0
	addi.d	$t3, $t3, 8
	add.d	$t2, $t2, $s7
	bnez	$t3, .LBB7_45
# %bb.46:                               #   in Loop: Header=BB7_44 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 8
	bne	$a6, $a3, .LBB7_44
# %bb.47:                               #   in Loop: Header=BB7_43 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a5, $a5, $a1
	bne	$a2, $a4, .LBB7_43
# %bb.48:                               # %kernel_3mm.exit
	lu12i.w	$s0, 4
	ori	$a0, $s0, 1217
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a0, $s0, 1216
	stx.b	$zero, $s6, $a0
	ori	$a0, $s8, 3488
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s3, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s0, $zero
.LBB7_49:                               # %.preheader.i46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_50 Depth 2
	add.d	$a0, $s5, $s8
	addi.d	$a1, $s6, 7
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_50:                               #   Parent Loop BB7_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.d	$a3, $a3, 8800
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s3, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s3, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s3, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s3, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s3, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s3, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s3, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s3, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_50
# %bb.51:                               #   in Loop: Header=BB7_49 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	add.d	$s8, $s8, $s7
	ori	$a0, $zero, 800
	bne	$s0, $a0, .LBB7_49
# %bb.52:                               # %print_array.exit
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.LBB7_53:
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
