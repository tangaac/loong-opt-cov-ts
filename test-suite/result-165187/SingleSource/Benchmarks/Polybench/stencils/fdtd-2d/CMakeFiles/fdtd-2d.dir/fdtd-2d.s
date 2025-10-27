	.file	"fdtd-2d.c"
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
	.dword	0x4092c00000000000              # double 1200
.LCPI7_2:
	.dword	0xbfe6666666666666              # double -0.69999999999999996
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	st.d	$zero, $sp, 96
	lu12i.w	$s6, 2343
	ori	$s3, $s6, 3072
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 96
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 96
	beqz	$fp, .LBB7_87
# %bb.1:
	bnez	$a0, .LBB7_87
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 96
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 96
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 96
	beqz	$s0, .LBB7_87
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_87
# %bb.4:                                # %polybench_alloc_data.exit40
	st.d	$zero, $sp, 96
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 96
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 96
	beqz	$s1, .LBB7_87
# %bb.5:                                # %polybench_alloc_data.exit40
	bnez	$a0, .LBB7_87
# %bb.6:                                # %polybench_alloc_data.exit42
	st.d	$zero, $sp, 96
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 96
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 96
	beqz	$s2, .LBB7_87
# %bb.7:                                # %polybench_alloc_data.exit42
	bnez	$a0, .LBB7_87
# %bb.8:                                # %polybench_alloc_data.exit44
	st.d	$zero, $sp, 96
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 96
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 96
	beqz	$s7, .LBB7_87
# %bb.9:                                # %polybench_alloc_data.exit44
	bnez	$a0, .LBB7_87
# %bb.10:                               # %polybench_alloc_data.exit46
	st.d	$zero, $sp, 96
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 96
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 96
	beqz	$s4, .LBB7_87
# %bb.11:                               # %polybench_alloc_data.exit46
	bnez	$a0, .LBB7_87
# %bb.12:                               # %polybench_alloc_data.exit48
	st.d	$zero, $sp, 96
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 96
	ori	$a2, $zero, 4000
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 96
	beqz	$t8, .LBB7_87
# %bb.13:                               # %polybench_alloc_data.exit48
	bnez	$a0, .LBB7_87
# %bb.14:                               # %polybench_alloc_data.exit50
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	lu12i.w	$a0, -1
	ori	$a0, $a0, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB7_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 2
	vpickve2gr.w	$a3, $vr0, 1
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa2, $a3
	ffint.d.l	$fa2, $fa2
	vpickve2gr.w	$a3, $vr0, 0
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa3, $a3
	ffint.d.l	$fa3, $fa3
	vextrins.d	$vr3, $vr2, 16
	vpickve2gr.w	$a3, $vr1, 1
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa2, $a3
	ffint.d.l	$fa2, $fa2
	vpickve2gr.w	$a3, $vr1, 0
	bstrpick.d	$a3, $a3, 31, 0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	vextrins.d	$vr1, $vr2, 16
	add.d	$a3, $t8, $a0
	vstx	$vr3, $a3, $a1
	vstx	$vr1, $a3, $a2
	addi.d	$a0, $a0, 32
	vaddi.wu	$vr0, $vr0, 4
	bnez	$a0, .LBB7_15
# %bb.16:                               # %.preheader.i.preheader
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	lu12i.w	$a0, -3
	ori	$a6, $a0, 2688
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_0)
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI7_1)
	lu12i.w	$a0, 2
	ori	$s8, $a0, 1408
	ori	$a7, $zero, 1000
	.p2align	4, , 16
.LBB7_17:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
	move	$t4, $zero
	add.d	$t0, $s1, $a4
	add.d	$t1, $s0, $a4
	add.d	$t2, $fp, $a4
	move	$t3, $a6
	.p2align	4, , 16
.LBB7_18:                               #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $a1, $t4
	add.d	$t6, $a3, $t4
	add.w	$t4, $a2, $t4
	bstrpick.d	$t7, $t4, 31, 0
	movgr2fr.d	$fa2, $t7
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	add.d	$t7, $t2, $t3
	fstx.d	$fa2, $t7, $s8
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa2, $t5
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	add.d	$t5, $t1, $t3
	fstx.d	$fa2, $t5, $s8
	bstrpick.d	$t5, $t6, 31, 0
	movgr2fr.d	$fa2, $t5
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	add.d	$t5, $t0, $t3
	addi.d	$t3, $t3, 8
	fstx.d	$fa2, $t5, $s8
	bnez	$t3, .LBB7_18
# %bb.19:                               #   in Loop: Header=BB7_17 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$a4, $a4, $s8
	addi.w	$a3, $a3, 3
	addi.d	$a2, $a2, 1
	addi.w	$a1, $a1, 2
	bne	$a5, $a7, .LBB7_17
# %bb.20:                               # %.preheader80.i.preheader
	move	$t1, $zero
	lu12i.w	$a1, 2341
	ori	$a2, $a1, 1656
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	add.d	$a2, $s1, $a2
	ori	$a1, $a1, 1664
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a1, $fp, $a1
	ori	$a3, $s6, 3064
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	add.d	$a3, $s0, $a3
	addi.d	$a4, $fp, 8
	add.d	$a5, $fp, $s3
	add.d	$a6, $s1, $s3
	add.d	$a7, $s0, $s8
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	add.d	$t0, $s0, $s3
	sltu	$a7, $a7, $a6
	sltu	$t0, $s1, $t0
	and	$t5, $a7, $t0
	sltu	$a4, $a4, $a6
	sltu	$a5, $s1, $a5
	and	$t6, $a4, $a5
	sltu	$a1, $s1, $a1
	sltu	$a4, $fp, $a2
	and	$a1, $a1, $a4
	sltu	$a3, $s1, $a3
	sltu	$a2, $s0, $a2
	and	$a2, $a3, $a2
	or	$t7, $a1, $a2
	ori	$a1, $a0, 1424
	add.d	$a2, $s0, $a1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	add.d	$a1, $s1, $a1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a1, -3
	ori	$a1, $a1, 2688
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a2, 4
	ori	$s6, $a2, 2816
	vldi	$vr3, -800
	ori	$a7, $zero, 1000
	ori	$t0, $zero, 999
	lu12i.w	$a3, 419430
	ori	$a1, $a3, 1638
	lu32i.d	$a1, 419430
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	lu52i.d	$a3, $a1, -1026
	vreplgr2vr.d	$vr4, $a3
	st.d	$t8, $sp, 88                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_21:                               # %vector.ph163
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_25 Depth 2
                                        #       Child Loop BB7_27 Depth 3
                                        #       Child Loop BB7_26 Depth 3
                                        #     Child Loop BB7_29 Depth 2
                                        #       Child Loop BB7_31 Depth 3
                                        #       Child Loop BB7_34 Depth 3
                                        #     Child Loop BB7_37 Depth 2
                                        #       Child Loop BB7_40 Depth 3
                                        #       Child Loop BB7_43 Depth 3
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a3, $t1, $t8, 3
	vldrepl.d	$vr2, $a3, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$a1, $a0, 1424
	.p2align	4, , 16
.LBB7_22:                               # %vector.body164
                                        #   Parent Loop BB7_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a4, $s0, $a3
	vstx	$vr2, $a4, $s8
	addi.d	$a3, $a3, 32
	vstx	$vr2, $a4, $a1
	bnez	$a3, .LBB7_22
# %bb.23:                               # %.preheader76.i.preheader
                                        #   in Loop: Header=BB7_21 Depth=1
	ori	$a4, $zero, 1
	move	$a5, $s0
	move	$a6, $s1
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_24:                               # %middle.block161
                                        #   in Loop: Header=BB7_25 Depth=2
	addi.d	$a4, $a4, 1
	add.d	$t2, $t2, $s8
	add.d	$t1, $t1, $s8
	add.d	$a6, $a6, $s8
	add.d	$a5, $a5, $s8
	beq	$a4, $a7, .LBB7_28
.LBB7_25:                               # %.preheader76.i
                                        #   Parent Loop BB7_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_27 Depth 3
                                        #       Child Loop BB7_26 Depth 3
	ori	$a3, $a0, 1392
	lu12i.w	$a1, -3
	ori	$t3, $a1, 2688
	beqz	$t5, .LBB7_27
	.p2align	4, , 16
.LBB7_26:                               # %scalar.ph150
                                        #   Parent Loop BB7_21 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t8, $a5, $t3
	add.d	$s3, $a6, $t3
	fldx.d	$fa2, $s3, $s6
	fldx.d	$fa5, $s3, $s8
	fldx.d	$fa6, $t8, $s6
	fsub.d	$fa2, $fa2, $fa5
	fmadd.d	$fa2, $fa2, $fa3, $fa6
	addi.d	$t3, $t3, 8
	fstx.d	$fa2, $t8, $s6
	bnez	$t3, .LBB7_26
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_27:                               # %vector.body152
                                        #   Parent Loop BB7_21 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t8, $t2, $t3
	add.d	$s3, $t1, $t3
	vldx	$vr2, $s3, $a3
	vldx	$vr5, $s3, $s8
	vld	$vr6, $s3, -16
	vldx	$vr7, $t1, $t3
	vldx	$vr8, $t8, $a3
	vldx	$vr9, $t8, $s8
	vfsub.d	$vr2, $vr2, $vr6
	vfsub.d	$vr5, $vr5, $vr7
	vfmadd.d	$vr2, $vr2, $vr3, $vr8
	vfmadd.d	$vr5, $vr5, $vr3, $vr9
	vstx	$vr2, $t8, $a3
	addi.d	$t3, $t3, 32
	vstx	$vr5, $t8, $s8
	bnez	$t3, .LBB7_27
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_28:                               # %.preheader75.i.preheader
                                        #   in Loop: Header=BB7_21 Depth=1
	move	$t1, $zero
	move	$t2, $zero
	addi.d	$t3, $s1, 24
	addi.d	$s3, $fp, 24
	.p2align	4, , 16
.LBB7_29:                               # %.preheader75.i
                                        #   Parent Loop BB7_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_31 Depth 3
                                        #       Child Loop BB7_34 Depth 3
	ori	$s5, $zero, 1
	ori	$a4, $a0, 1360
	ori	$a5, $a0, 1376
	ori	$a6, $a0, 1368
	bnez	$t6, .LBB7_33
# %bb.30:                               # %vector.body133.preheader
                                        #   in Loop: Header=BB7_29 Depth=2
	lu12i.w	$a1, -3
	ori	$t8, $a1, 2720
	.p2align	4, , 16
.LBB7_31:                               # %vector.body133
                                        #   Parent Loop BB7_21 Depth=1
                                        #     Parent Loop BB7_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s5, $s3, $t8
	add.d	$ra, $t3, $t8
	vldx	$vr2, $ra, $a4
	vldx	$vr5, $ra, $a5
	ori	$t4, $a0, 1352
	vldx	$vr6, $ra, $t4
	vldx	$vr7, $ra, $a6
	vldx	$vr8, $s5, $a4
	vldx	$vr9, $s5, $a5
	vfsub.d	$vr2, $vr2, $vr6
	vfsub.d	$vr5, $vr5, $vr7
	vfmadd.d	$vr2, $vr2, $vr3, $vr8
	vfmadd.d	$vr5, $vr5, $vr3, $vr9
	vstx	$vr2, $s5, $a4
	addi.d	$t8, $t8, 32
	vstx	$vr5, $s5, $a5
	bnez	$t8, .LBB7_31
# %bb.32:                               #   in Loop: Header=BB7_29 Depth=2
	ori	$s5, $zero, 1197
.LBB7_33:                               # %scalar.ph131.preheader
                                        #   in Loop: Header=BB7_29 Depth=2
	addi.d	$t8, $s5, -1200
	alsl.d	$s5, $s5, $t1, 3
	.p2align	4, , 16
.LBB7_34:                               # %scalar.ph131
                                        #   Parent Loop BB7_21 Depth=1
                                        #     Parent Loop BB7_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t4, $s1, $s5
	fldx.d	$fa2, $s1, $s5
	fld.d	$fa5, $t4, -8
	fldx.d	$fa6, $fp, $s5
	fsub.d	$fa2, $fa2, $fa5
	fmadd.d	$fa2, $fa2, $fa3, $fa6
	fstx.d	$fa2, $fp, $s5
	addi.d	$t8, $t8, 1
	addi.d	$s5, $s5, 8
	bnez	$t8, .LBB7_34
# %bb.35:                               #   in Loop: Header=BB7_29 Depth=2
	addi.d	$t2, $t2, 1
	add.d	$s3, $s3, $s8
	add.d	$t3, $t3, $s8
	add.d	$t1, $t1, $s8
	bne	$t2, $a7, .LBB7_29
# %bb.36:                               # %.preheader.i54.preheader
                                        #   in Loop: Header=BB7_21 Depth=1
	move	$s5, $zero
	move	$t2, $zero
	move	$s3, $s0
	addi.d	$t3, $fp, 16
	addi.d	$t1, $s1, 16
	.p2align	4, , 16
.LBB7_37:                               # %.preheader.i54
                                        #   Parent Loop BB7_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_40 Depth 3
                                        #       Child Loop BB7_43 Depth 3
	beqz	$t7, .LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_37 Depth=2
	move	$ra, $zero
	b	.LBB7_42
	.p2align	4, , 16
.LBB7_39:                               # %vector.body111.preheader
                                        #   in Loop: Header=BB7_37 Depth=2
	lu12i.w	$a1, -3
	ori	$t8, $a1, 2720
	.p2align	4, , 16
.LBB7_40:                               # %vector.body111
                                        #   Parent Loop BB7_21 Depth=1
                                        #     Parent Loop BB7_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t4, $t1, $t8
	vldx	$vr2, $t4, $a4
	add.d	$ra, $t3, $t8
	vldx	$vr5, $ra, $a6
	vldx	$vr6, $ra, $a4
	ori	$a1, $a0, 1384
	vldx	$vr7, $ra, $a1
	vldx	$vr8, $ra, $a5
	vfsub.d	$vr5, $vr5, $vr6
	add.d	$a1, $s3, $t8
	ori	$ra, $a2, 2784
	vldx	$vr6, $a1, $ra
	vfsub.d	$vr7, $vr7, $vr8
	ori	$ra, $a2, 2800
	vldx	$vr8, $a1, $ra
	vfadd.d	$vr5, $vr5, $vr6
	vldx	$vr6, $a1, $a5
	vldx	$vr9, $a1, $a3
	vfadd.d	$vr7, $vr7, $vr8
	vldx	$vr8, $t4, $a5
	vfsub.d	$vr5, $vr5, $vr6
	vfsub.d	$vr6, $vr7, $vr9
	vfmadd.d	$vr2, $vr5, $vr4, $vr2
	vfmadd.d	$vr5, $vr6, $vr4, $vr8
	vstx	$vr2, $t4, $a4
	addi.d	$t8, $t8, 32
	vstx	$vr5, $t4, $a5
	bnez	$t8, .LBB7_40
# %bb.41:                               #   in Loop: Header=BB7_37 Depth=2
	ori	$ra, $zero, 1196
.LBB7_42:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_37 Depth=2
	alsl.d	$t8, $ra, $s5, 3
	addi.d	$ra, $ra, -1199
	.p2align	4, , 16
.LBB7_43:                               # %scalar.ph
                                        #   Parent Loop BB7_21 Depth=1
                                        #     Parent Loop BB7_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa5, $s1, $t8
	add.d	$a1, $fp, $t8
	fld.d	$fa6, $a1, 8
	fldx.d	$fa7, $fp, $t8
	add.d	$a1, $s0, $t8
	fldx.d	$ft0, $a1, $s8
	fldx.d	$ft1, $s0, $t8
	pcalau12i	$a1, %pc_hi20(.LCPI7_2)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI7_2)
	fsub.d	$fa6, $fa6, $fa7
	fadd.d	$fa6, $fa6, $ft0
	fsub.d	$fa6, $fa6, $ft1
	fmadd.d	$fa5, $fa6, $fa2, $fa5
	fstx.d	$fa5, $s1, $t8
	addi.d	$ra, $ra, 1
	addi.d	$t8, $t8, 8
	bnez	$ra, .LBB7_43
# %bb.44:                               #   in Loop: Header=BB7_37 Depth=2
	addi.d	$t2, $t2, 1
	add.d	$t1, $t1, $s8
	add.d	$t3, $t3, $s8
	add.d	$s3, $s3, $s8
	add.d	$s5, $s5, $s8
	bne	$t2, $t0, .LBB7_37
# %bb.45:                               #   in Loop: Header=BB7_21 Depth=1
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	addi.d	$t1, $t1, 1
	ld.d	$t8, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 500
	bne	$t1, $a1, .LBB7_21
# %bb.46:                               # %vector.body170.preheader
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	vreplgr2vr.d	$vr3, $a1
	lu12i.w	$a1, -1
	ori	$a7, $a1, 96
	ori	$t0, $zero, 4000
	ori	$t1, $zero, 4016
	.p2align	4, , 16
.LBB7_47:                               # %vector.body170
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr4, $vr3, 2
	vpickve2gr.w	$a1, $vr3, 1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa5, $a1
	ffint.d.l	$fa5, $fa5
	vpickve2gr.w	$a1, $vr3, 0
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa6, $a1
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vpickve2gr.w	$a1, $vr4, 1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa5, $a1
	ffint.d.l	$fa5, $fa5
	vpickve2gr.w	$a1, $vr4, 0
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa4, $a1
	ffint.d.l	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	add.d	$a1, $t8, $a7
	vstx	$vr6, $a1, $t0
	vstx	$vr4, $a1, $t1
	addi.d	$a7, $a7, 32
	vaddi.wu	$vr3, $vr3, 4
	bnez	$a7, .LBB7_47
# %bb.48:                               # %.preheader.i58.preheader
	move	$a7, $zero
	move	$t0, $zero
	move	$t1, $zero
	move	$t2, $zero
	move	$t3, $zero
	lu12i.w	$a1, -3
	ori	$a1, $a1, 2688
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ori	$t5, $zero, 1000
	.p2align	4, , 16
.LBB7_49:                               # %.preheader.i58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_50 Depth 2
	move	$s5, $zero
	add.d	$t6, $s4, $t2
	add.d	$t7, $s7, $t2
	add.d	$t8, $s2, $t2
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_50:                               #   Parent Loop BB7_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $a7, $s5
	add.d	$ra, $t1, $s5
	add.w	$s5, $t0, $s5
	bstrpick.d	$t4, $s5, 31, 0
	movgr2fr.d	$fa3, $t4
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	add.d	$t4, $t8, $s3
	fstx.d	$fa3, $t4, $s8
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa3, $a1
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa1
	add.d	$a1, $t7, $s3
	fstx.d	$fa3, $a1, $s8
	bstrpick.d	$a1, $ra, 31, 0
	movgr2fr.d	$fa3, $a1
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	add.d	$a1, $t6, $s3
	addi.d	$s3, $s3, 8
	fstx.d	$fa3, $a1, $s8
	bnez	$s3, .LBB7_50
# %bb.51:                               #   in Loop: Header=BB7_49 Depth=1
	addi.d	$t3, $t3, 1
	add.d	$t2, $t2, $s8
	addi.w	$t1, $t1, 3
	addi.d	$t0, $t0, 1
	addi.w	$a7, $a7, 2
	bne	$t3, $t5, .LBB7_49
# %bb.52:                               # %.preheader80.i66.preheader
	move	$t8, $zero
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $s4, $a1
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	add.d	$t2, $s2, $a7
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	add.d	$t3, $s7, $a7
	addi.d	$t1, $s2, 8
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	add.d	$t4, $s2, $a7
	add.d	$t5, $s4, $a7
	add.d	$t0, $s7, $s8
	add.d	$t6, $s7, $a7
	sltu	$t0, $t0, $t5
	sltu	$t6, $s4, $t6
	and	$t0, $t0, $t6
	sltu	$t1, $t1, $t5
	sltu	$t4, $s4, $t4
	and	$t1, $t1, $t4
	sltu	$t2, $s4, $t2
	sltu	$t4, $s2, $a1
	and	$t2, $t2, $t4
	sltu	$t3, $s4, $t3
	sltu	$a1, $s7, $a1
	and	$a1, $t3, $a1
	or	$t2, $t2, $a1
	ori	$a7, $a0, 1424
	add.d	$a1, $s7, $a7
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	add.d	$a1, $s4, $a7
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a1, -3
	ori	$a1, $a1, 2688
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	vldi	$vr0, -800
	ori	$t6, $zero, 1000
	ori	$t7, $zero, 999
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 1022
	vreplgr2vr.d	$vr1, $a1
	vldi	$vr3, -928
	.p2align	4, , 16
.LBB7_53:                               # %vector.ph245
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_54 Depth 2
                                        #     Child Loop BB7_57 Depth 2
                                        #       Child Loop BB7_59 Depth 3
                                        #       Child Loop BB7_58 Depth 3
                                        #     Child Loop BB7_61 Depth 2
                                        #       Child Loop BB7_63 Depth 3
                                        #       Child Loop BB7_66 Depth 3
                                        #     Child Loop BB7_69 Depth 2
                                        #       Child Loop BB7_72 Depth 3
                                        #       Child Loop BB7_75 Depth 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$t8, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$a1, $t8, $a1, 3
	vldrepl.d	$vr4, $a1, 0
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_54:                               # %vector.body248
                                        #   Parent Loop BB7_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $s7, $t3
	vstx	$vr4, $a1, $s8
	addi.d	$t3, $t3, 32
	vstx	$vr4, $a1, $a7
	bnez	$t3, .LBB7_54
# %bb.55:                               # %.preheader76.i72.preheader
                                        #   in Loop: Header=BB7_53 Depth=1
	ori	$t3, $zero, 1
	move	$t8, $s7
	move	$s3, $s4
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	b	.LBB7_57
	.p2align	4, , 16
.LBB7_56:                               # %middle.block243
                                        #   in Loop: Header=BB7_57 Depth=2
	addi.d	$t3, $t3, 1
	add.d	$ra, $ra, $s8
	add.d	$s5, $s5, $s8
	add.d	$s3, $s3, $s8
	add.d	$t8, $t8, $s8
	beq	$t3, $t6, .LBB7_60
.LBB7_57:                               # %.preheader76.i72
                                        #   Parent Loop BB7_53 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_59 Depth 3
                                        #       Child Loop BB7_58 Depth 3
	lu12i.w	$a1, -3
	ori	$t4, $a1, 2688
	beqz	$t0, .LBB7_59
	.p2align	4, , 16
.LBB7_58:                               # %scalar.ph232
                                        #   Parent Loop BB7_53 Depth=1
                                        #     Parent Loop BB7_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s3, $t4
	fldx.d	$fa4, $a1, $s6
	fldx.d	$fa5, $a1, $s8
	add.d	$a1, $t8, $t4
	fldx.d	$fa6, $a1, $s6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fadd.d	$fa4, $fa6, $fa4
	addi.d	$t4, $t4, 8
	fstx.d	$fa4, $a1, $s6
	bnez	$t4, .LBB7_58
	b	.LBB7_56
	.p2align	4, , 16
.LBB7_59:                               # %vector.body234
                                        #   Parent Loop BB7_53 Depth=1
                                        #     Parent Loop BB7_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $ra, $t4
	add.d	$t5, $s5, $t4
	vldx	$vr4, $t5, $a3
	vldx	$vr5, $t5, $s8
	vld	$vr6, $t5, -16
	vldx	$vr7, $s5, $t4
	vldx	$vr8, $a1, $a3
	vldx	$vr9, $a1, $s8
	vfsub.d	$vr4, $vr4, $vr6
	vfsub.d	$vr5, $vr5, $vr7
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr5, $vr5, $vr3
	vfsub.d	$vr4, $vr8, $vr4
	vfsub.d	$vr5, $vr9, $vr5
	vstx	$vr4, $a1, $a3
	addi.d	$t4, $t4, 32
	vstx	$vr5, $a1, $s8
	bnez	$t4, .LBB7_59
	b	.LBB7_56
	.p2align	4, , 16
.LBB7_60:                               # %.preheader75.i79.preheader
                                        #   in Loop: Header=BB7_53 Depth=1
	move	$t3, $zero
	move	$t8, $zero
	addi.d	$s3, $s4, 24
	addi.d	$s5, $s2, 24
	.p2align	4, , 16
.LBB7_61:                               # %.preheader75.i79
                                        #   Parent Loop BB7_53 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_63 Depth 3
                                        #       Child Loop BB7_66 Depth 3
	ori	$t5, $zero, 1
	bnez	$t1, .LBB7_65
# %bb.62:                               # %vector.body214.preheader
                                        #   in Loop: Header=BB7_61 Depth=2
	lu12i.w	$a1, -3
	ori	$t4, $a1, 2720
	.p2align	4, , 16
.LBB7_63:                               # %vector.body214
                                        #   Parent Loop BB7_53 Depth=1
                                        #     Parent Loop BB7_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s5, $t4
	add.d	$t5, $s3, $t4
	vldx	$vr4, $t5, $a4
	vldx	$vr5, $t5, $a5
	ori	$ra, $a0, 1352
	vldx	$vr6, $t5, $ra
	vldx	$vr7, $t5, $a6
	vldx	$vr8, $a1, $a4
	vldx	$vr9, $a1, $a5
	vfsub.d	$vr4, $vr4, $vr6
	vfsub.d	$vr5, $vr5, $vr7
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr5, $vr5, $vr3
	vfsub.d	$vr4, $vr8, $vr4
	vfsub.d	$vr5, $vr9, $vr5
	vstx	$vr4, $a1, $a4
	addi.d	$t4, $t4, 32
	vstx	$vr5, $a1, $a5
	bnez	$t4, .LBB7_63
# %bb.64:                               #   in Loop: Header=BB7_61 Depth=2
	ori	$t5, $zero, 1197
.LBB7_65:                               # %scalar.ph212.preheader
                                        #   in Loop: Header=BB7_61 Depth=2
	addi.d	$t4, $t5, -1200
	alsl.d	$t5, $t5, $t3, 3
	.p2align	4, , 16
.LBB7_66:                               # %scalar.ph212
                                        #   Parent Loop BB7_53 Depth=1
                                        #     Parent Loop BB7_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s4, $t5
	fldx.d	$fa4, $s4, $t5
	fld.d	$fa5, $a1, -8
	fldx.d	$fa6, $s2, $t5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fadd.d	$fa4, $fa6, $fa4
	fstx.d	$fa4, $s2, $t5
	addi.d	$t4, $t4, 1
	addi.d	$t5, $t5, 8
	bnez	$t4, .LBB7_66
# %bb.67:                               #   in Loop: Header=BB7_61 Depth=2
	addi.d	$t8, $t8, 1
	add.d	$s5, $s5, $s8
	add.d	$s3, $s3, $s8
	add.d	$t3, $t3, $s8
	bne	$t8, $t6, .LBB7_61
# %bb.68:                               # %.preheader.i86.preheader
                                        #   in Loop: Header=BB7_53 Depth=1
	move	$s5, $zero
	move	$ra, $zero
	move	$s3, $s7
	addi.d	$t3, $s2, 16
	addi.d	$t8, $s4, 16
	.p2align	4, , 16
.LBB7_69:                               # %.preheader.i86
                                        #   Parent Loop BB7_53 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_72 Depth 3
                                        #       Child Loop BB7_75 Depth 3
	beqz	$t2, .LBB7_71
# %bb.70:                               #   in Loop: Header=BB7_69 Depth=2
	move	$t5, $zero
	b	.LBB7_74
	.p2align	4, , 16
.LBB7_71:                               # %vector.body190.preheader
                                        #   in Loop: Header=BB7_69 Depth=2
	lu12i.w	$a1, -3
	ori	$t4, $a1, 2720
	.p2align	4, , 16
.LBB7_72:                               # %vector.body190
                                        #   Parent Loop BB7_53 Depth=1
                                        #     Parent Loop BB7_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $t8, $t4
	vldx	$vr4, $a1, $a4
	add.d	$t5, $t3, $t4
	vldx	$vr5, $t5, $a6
	vldx	$vr6, $t5, $a4
	ori	$a7, $a0, 1384
	vldx	$vr7, $t5, $a7
	vldx	$vr8, $t5, $a5
	vfsub.d	$vr5, $vr5, $vr6
	add.d	$a7, $s3, $t4
	ori	$t5, $a2, 2784
	vldx	$vr6, $a7, $t5
	vfsub.d	$vr7, $vr7, $vr8
	ori	$t5, $a2, 2800
	vldx	$vr8, $a7, $t5
	vfadd.d	$vr5, $vr5, $vr6
	vldx	$vr6, $a7, $a5
	vldx	$vr9, $a7, $a3
	vfadd.d	$vr7, $vr7, $vr8
	vldx	$vr8, $a1, $a5
	vfsub.d	$vr5, $vr5, $vr6
	vfsub.d	$vr6, $vr7, $vr9
	vfmul.d	$vr5, $vr5, $vr1
	vfmul.d	$vr6, $vr6, $vr1
	vfsub.d	$vr4, $vr4, $vr5
	vfsub.d	$vr5, $vr8, $vr6
	vstx	$vr4, $a1, $a4
	addi.d	$t4, $t4, 32
	vstx	$vr5, $a1, $a5
	bnez	$t4, .LBB7_72
# %bb.73:                               #   in Loop: Header=BB7_69 Depth=2
	ori	$t5, $zero, 1196
.LBB7_74:                               # %scalar.ph188.preheader
                                        #   in Loop: Header=BB7_69 Depth=2
	alsl.d	$t4, $t5, $s5, 3
	addi.d	$t5, $t5, -1199
	.p2align	4, , 16
.LBB7_75:                               # %scalar.ph188
                                        #   Parent Loop BB7_53 Depth=1
                                        #     Parent Loop BB7_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s2, $t4
	fld.d	$fa4, $a1, 8
	fldx.d	$fa5, $s2, $t4
	add.d	$a1, $s7, $t4
	fldx.d	$fa6, $a1, $s8
	fldx.d	$fa7, $s7, $t4
	fsub.d	$fa4, $fa4, $fa5
	fldx.d	$fa5, $s4, $t4
	fadd.d	$fa4, $fa4, $fa6
	fsub.d	$fa4, $fa4, $fa7
	fmul.d	$fa4, $fa4, $fa2
	fadd.d	$fa4, $fa5, $fa4
	fstx.d	$fa4, $s4, $t4
	addi.d	$t5, $t5, 1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB7_75
# %bb.76:                               #   in Loop: Header=BB7_69 Depth=2
	addi.d	$ra, $ra, 1
	add.d	$t8, $t8, $s8
	add.d	$t3, $t3, $s8
	add.d	$s3, $s3, $s8
	add.d	$s5, $s5, $s8
	bne	$ra, $t7, .LBB7_69
# %bb.77:                               #   in Loop: Header=BB7_53 Depth=1
	ld.d	$t8, $sp, 80                    # 8-byte Folded Reload
	addi.d	$t8, $t8, 1
	ori	$a7, $a0, 1424
	ori	$a1, $zero, 500
	bne	$t8, $a1, .LBB7_53
# %bb.78:                               # %kernel_fdtd_2d_StrictFP.exit
	ori	$a0, $a2, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.b	$zero, $a0, $s6
	move	$s3, $a0
	addi.d	$a0, $a0, 7
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, -3
	ori	$a0, $a0, 2688
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s6, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$s5, $zero
	move	$a1, $zero
.LBB7_79:                               # %.preheader.i95
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_80 Depth 2
                                        #     Child Loop BB7_82 Depth 2
                                        #     Child Loop BB7_84 Depth 2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	add.d	$a0, $s2, $s5
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_80:                               #   Parent Loop BB7_79 Depth=1
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
	bnez	$a2, .LBB7_80
# %bb.81:                               #   in Loop: Header=BB7_79 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	add.d	$a0, $s7, $s5
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_82:                               #   Parent Loop BB7_79 Depth=1
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
	bnez	$a2, .LBB7_82
# %bb.83:                               #   in Loop: Header=BB7_79 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $s5
	lu12i.w	$a1, -3
	ori	$a1, $a1, 2688
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_84:                               #   Parent Loop BB7_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a1
	ldptr.d	$a3, $a3, 9600
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s6, 63, 4
	st.b	$a3, $a2, -7
	st.b	$a3, $a2, -6
	bstrins.d	$a4, $s6, 63, 4
	st.b	$a4, $a2, -5
	st.b	$a4, $a2, -4
	bstrins.d	$a5, $s6, 63, 4
	st.b	$a5, $a2, -3
	st.b	$a5, $a2, -2
	bstrins.d	$a6, $s6, 63, 4
	st.b	$a6, $a2, -1
	st.b	$a6, $a2, 0
	bstrins.d	$a7, $s6, 63, 4
	st.b	$a7, $a2, 1
	st.b	$a7, $a2, 2
	bstrins.d	$t0, $s6, 63, 4
	st.b	$t0, $a2, 3
	st.b	$t0, $a2, 4
	bstrins.d	$t1, $s6, 63, 4
	st.b	$t1, $a2, 5
	st.b	$t1, $a2, 6
	bstrins.d	$t2, $s6, 63, 4
	st.b	$t2, $a2, 7
	st.b	$t2, $a2, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB7_84
# %bb.85:                               #   in Loop: Header=BB7_79 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	add.d	$s5, $s5, $s8
	ori	$a0, $zero, 1000
	bne	$a1, $a0, .LBB7_79
# %bb.86:                               # %print_array.exit
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
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB7_87:
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
