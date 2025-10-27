	.file	"gemver.c"
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
	.dword	0x409f400000000000              # double 2000
.LCPI7_1:
	.dword	0x3ff3333333333333              # double 1.2
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
	lu12i.w	$a0, 7812
	ori	$s7, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s7
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_44
# %bb.1:
	bnez	$a0, .LBB7_44
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 32
	lu12i.w	$fp, 3
	ori	$s1, $fp, 3712
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 32
	beqz	$s0, .LBB7_44
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_44
# %bb.4:                                # %polybench_alloc_data.exit31
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 32
	beqz	$s2, .LBB7_44
# %bb.5:                                # %polybench_alloc_data.exit31
	bnez	$a0, .LBB7_44
# %bb.6:                                # %polybench_alloc_data.exit33
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 32
	beqz	$s3, .LBB7_44
# %bb.7:                                # %polybench_alloc_data.exit33
	bnez	$a0, .LBB7_44
# %bb.8:                                # %polybench_alloc_data.exit35
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 32
	beqz	$s4, .LBB7_44
# %bb.9:                                # %polybench_alloc_data.exit35
	bnez	$a0, .LBB7_44
# %bb.10:                               # %polybench_alloc_data.exit37
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 32
	beqz	$s5, .LBB7_44
# %bb.11:                               # %polybench_alloc_data.exit37
	bnez	$a0, .LBB7_44
# %bb.12:                               # %polybench_alloc_data.exit39
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 32
	beqz	$s6, .LBB7_44
# %bb.13:                               # %polybench_alloc_data.exit39
	bnez	$a0, .LBB7_44
# %bb.14:                               # %polybench_alloc_data.exit41
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 32
	beqz	$s7, .LBB7_44
# %bb.15:                               # %polybench_alloc_data.exit41
	bnez	$a0, .LBB7_44
# %bb.16:                               # %polybench_alloc_data.exit43
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 32
	beqz	$s8, .LBB7_44
# %bb.17:                               # %polybench_alloc_data.exit43
	bnez	$a0, .LBB7_44
# %bb.18:                               # %polybench_alloc_data.exit45
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	lu52i.d	$a4, $zero, 1107
	lu12i.w	$a0, 256
	lu52i.d	$a0, $a0, 1107
	movgr2fr.d	$fa0, $a0
	lu12i.w	$a5, 275200
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI7_0)
	vldi	$vr2, -928
	vldi	$vr3, -944
	vldi	$vr4, -1000
	vldi	$vr5, -960
	vldi	$vr6, -990
	lu12i.w	$a0, -4
	ori	$a6, $a0, 384
	lu12i.w	$a7, 67108
	ori	$a7, $a7, 3539
	ori	$t0, $zero, 2000
	ori	$t1, $fp, 3720
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	move	$t2, $t8
	.p2align	4, , 16
.LBB7_19:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
	move	$t3, $zero
	srli.d	$t4, $a3, 32
	or	$t4, $t4, $a4
	movgr2fr.d	$fa7, $t4
	fsub.d	$fa7, $fa7, $fa0
	move	$t4, $a3
	bstrins.d	$t4, $a5, 63, 32
	movgr2fr.d	$ft0, $t4
	fadd.d	$fa7, $ft0, $fa7
	slli.d	$t4, $a3, 3
	fstx.d	$fa7, $s0, $t4
	addi.d	$a3, $a3, 1
	srli.d	$t5, $a3, 32
	or	$t5, $t5, $a4
	movgr2fr.d	$fa7, $t5
	fsub.d	$fa7, $fa7, $fa0
	move	$t5, $a3
	bstrins.d	$t5, $a5, 63, 32
	movgr2fr.d	$ft0, $t5
	fadd.d	$fa7, $ft0, $fa7
	fdiv.d	$fa7, $fa7, $fa1
	fmul.d	$ft0, $fa7, $fa2
	fstx.d	$ft0, $s3, $t4
	fmul.d	$ft0, $fa7, $fa3
	fstx.d	$ft0, $s2, $t4
	fdiv.d	$ft0, $fa7, $fa4
	fstx.d	$ft0, $s4, $t4
	fmul.d	$ft0, $fa7, $fa5
	fstx.d	$ft0, $s7, $t4
	fdiv.d	$fa7, $fa7, $fa6
	fstx.d	$fa7, $s8, $t4
	stx.d	$zero, $s6, $t4
	stx.d	$zero, $s5, $t4
	move	$t4, $a6
	move	$t5, $a2
	.p2align	4, , 16
.LBB7_20:                               # %vector.body
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t6, $t5, 31, 0
	mul.d	$t6, $t6, $a7
	srli.d	$t6, $t6, 39
	mul.d	$t6, $t6, $t0
	sub.d	$t6, $t5, $t6
	bstrpick.d	$t6, $t6, 31, 0
	bstrpick.d	$t7, $t3, 31, 0
	mul.d	$t7, $t7, $a7
	srli.d	$t7, $t7, 39
	mul.d	$t7, $t7, $t0
	sub.d	$t7, $t3, $t7
	bstrpick.d	$t7, $t7, 31, 0
	movgr2fr.d	$fa7, $t7
	ffint.d.l	$fa7, $fa7
	movgr2fr.d	$ft0, $t6
	ffint.d.l	$ft0, $ft0
	fdiv.d	$fa7, $fa7, $fa1
	fdiv.d	$ft0, $ft0, $fa1
	add.d	$t6, $t2, $t4
	fstx.d	$fa7, $t6, $s1
	fstx.d	$ft0, $t6, $t1
	add.w	$t5, $t5, $a1
	addi.d	$t4, $t4, 16
	add.w	$t3, $t3, $a1
	bnez	$t4, .LBB7_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB7_19 Depth=1
	addi.w	$a2, $a2, 1
	addi.d	$a1, $a1, 2
	add.d	$t2, $t2, $s1
	bne	$a3, $t0, .LBB7_19
# %bb.22:                               # %.preheader69.i.preheader
	move	$a1, $zero
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $t8, $a2
	add.d	$a3, $s0, $s1
	add.d	$a4, $s2, $s1
	add.d	$a5, $s3, $s1
	add.d	$a6, $s4, $s1
	sltu	$a3, $t8, $a3
	sltu	$a7, $s0, $a2
	and	$a3, $a3, $a7
	sltu	$a4, $t8, $a4
	sltu	$a7, $s2, $a2
	and	$a4, $a4, $a7
	or	$a3, $a3, $a4
	sltu	$a4, $t8, $a5
	sltu	$a5, $s3, $a2
	and	$a4, $a4, $a5
	or	$a3, $a3, $a4
	sltu	$a4, $t8, $a6
	sltu	$a2, $s4, $a2
	and	$a2, $a4, $a2
	or	$a2, $a3, $a2
	addi.d	$a3, $t8, 16
	ori	$a4, $a0, 384
	ori	$a5, $zero, 2000
	ori	$a6, $fp, 3696
	move	$a7, $t8
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_23:                               # %middle.block84
                                        #   in Loop: Header=BB7_24 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a3, $a3, $s1
	add.d	$a7, $a7, $s1
	beq	$a1, $a5, .LBB7_29
.LBB7_24:                               # %.preheader69.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
                                        #     Child Loop BB7_26 Depth 2
	alsl.d	$t0, $a1, $s0, 3
	alsl.d	$t1, $a1, $s3, 3
	beqz	$a2, .LBB7_27
# %bb.25:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$t2, $a4
	.p2align	4, , 16
.LBB7_26:                               # %scalar.ph
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a7, $t2
	fldx.d	$fa0, $t3, $s1
	fld.d	$fa1, $t0, 0
	add.d	$t4, $s2, $t2
	fldx.d	$fa2, $t4, $s1
	fld.d	$fa3, $t1, 0
	add.d	$t4, $s4, $t2
	fldx.d	$fa4, $t4, $s1
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa3, $fa4
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$t2, $t2, 8
	fstx.d	$fa0, $t3, $s1
	bnez	$t2, .LBB7_26
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_27:                               # %vector.body74.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	vldrepl.d	$vr0, $t0, 0
	vldrepl.d	$vr1, $t1, 0
	move	$t0, $a4
	.p2align	4, , 16
.LBB7_28:                               # %vector.body74
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a3, $t0
	vldx	$vr2, $t1, $a6
	add.d	$t2, $s2, $t0
	vldx	$vr3, $t2, $s1
	vldx	$vr4, $t1, $s1
	ori	$t3, $fp, 3728
	vldx	$vr5, $t2, $t3
	vfmul.d	$vr3, $vr0, $vr3
	vfadd.d	$vr2, $vr2, $vr3
	add.d	$t2, $s4, $t0
	vldx	$vr3, $t2, $s1
	vldx	$vr6, $t2, $t3
	vfmul.d	$vr5, $vr0, $vr5
	vfadd.d	$vr4, $vr4, $vr5
	vfmul.d	$vr3, $vr1, $vr3
	vfmul.d	$vr5, $vr1, $vr6
	vfadd.d	$vr2, $vr2, $vr3
	vfadd.d	$vr3, $vr4, $vr5
	vstx	$vr2, $t1, $a6
	addi.d	$t0, $t0, 32
	vstx	$vr3, $t1, $s1
	bnez	$t0, .LBB7_28
	b	.LBB7_23
.LBB7_29:                               # %.preheader67.i.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_1)
	move	$a1, $zero
	ori	$a2, $a0, 384
	ori	$a3, $zero, 2000
	move	$a4, $t8
	.p2align	4, , 16
.LBB7_30:                               # %.preheader67.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_31 Depth 2
	slli.d	$a5, $a1, 3
	fldx.d	$fa1, $s6, $a5
	alsl.d	$a5, $a1, $s6, 3
	move	$a6, $a4
	move	$a7, $a2
	.p2align	4, , 16
.LBB7_31:                               #   Parent Loop BB7_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a6, 0
	add.d	$t0, $s7, $a7
	fldx.d	$fa3, $t0, $s1
	fmul.d	$fa2, $fa2, $fa0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a5, 0
	addi.d	$a7, $a7, 8
	add.d	$a6, $a6, $s1
	bnez	$a7, .LBB7_31
# %bb.32:                               #   in Loop: Header=BB7_30 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 8
	bne	$a1, $a3, .LBB7_30
# %bb.33:                               # %vector.memcheck85
	add.d	$a1, $s8, $s1
	bgeu	$s6, $a1, .LBB7_37
# %bb.34:                               # %vector.memcheck85
	add.d	$a1, $s6, $s1
	bgeu	$s8, $a1, .LBB7_37
# %bb.35:                               # %.preheader66.i.preheader
	ori	$a1, $a0, 384
	.p2align	4, , 16
.LBB7_36:                               # %.preheader66.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s6, $a1
	fldx.d	$fa0, $a2, $s1
	add.d	$a3, $s8, $a1
	fldx.d	$fa1, $a3, $s1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, 8
	fstx.d	$fa0, $a2, $s1
	bnez	$a1, .LBB7_36
	b	.LBB7_39
.LBB7_37:                               # %vector.body93.preheader
	ori	$a1, $a0, 384
	ori	$a2, $fp, 3728
	.p2align	4, , 16
.LBB7_38:                               # %vector.body93
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s6, $a1
	vldx	$vr0, $a3, $s1
	vldx	$vr1, $a3, $a2
	add.d	$a4, $s8, $a1
	vldx	$vr2, $a4, $s1
	vldx	$vr3, $a4, $a2
	vfadd.d	$vr0, $vr0, $vr2
	vfadd.d	$vr1, $vr1, $vr3
	vstx	$vr0, $a3, $s1
	addi.d	$a1, $a1, 32
	vstx	$vr1, $a3, $a2
	bnez	$a1, .LBB7_38
.LBB7_39:                               # %.preheader.i.preheader
	move	$a1, $zero
	ori	$a0, $a0, 384
	vldi	$vr0, -904
	ori	$a2, $zero, 2000
	move	$a3, $t8
	.p2align	4, , 16
.LBB7_40:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_41 Depth 2
	slli.d	$a4, $a1, 3
	fldx.d	$fa1, $s5, $a4
	alsl.d	$a4, $a1, $s5, 3
	move	$a5, $a0
	.p2align	4, , 16
.LBB7_41:                               #   Parent Loop BB7_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $a3, $a5
	fldx.d	$fa2, $a6, $s1
	add.d	$a6, $s6, $a5
	fldx.d	$fa3, $a6, $s1
	fmul.d	$fa2, $fa2, $fa0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a5, $a5, 8
	fst.d	$fa1, $a4, 0
	bnez	$a5, .LBB7_41
# %bb.42:                               #   in Loop: Header=BB7_40 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a3, $a3, $s1
	bne	$a1, $a2, .LBB7_40
# %bb.43:                               # %kernel_gemver.exit
	move	$a0, $s5
	pcaddu18i	$ra, %call36(print_array)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.LBB7_44:
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
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s1, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -209716
	ori	$a1, $a0, 3277
	lu32i.d	$a1, -209716
	lu52i.d	$s2, $a1, -820
	ori	$a0, $a0, 3276
	lu32i.d	$a0, -209716
	lu52i.d	$s3, $a0, 204
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s0, $a0, %pc_lo12(.L.str.6)
	move	$s4, $zero
	ori	$s5, $zero, 2000
	b	.LBB8_2
	.p2align	4, , 16
.LBB8_1:                                #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a2, $fp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
	addi.d	$fp, $fp, 8
	beq	$s4, $s5, .LBB8_4
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s4, 15, 0
	mul.d	$a0, $a0, $s2
	rotri.d	$a0, $a0, 2
	bltu	$s3, $a0, .LBB8_1
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB8_1
.LBB8_4:
	ld.d	$a0, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
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
	.asciz	"w"
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
	.asciz	"==END   DUMP_ARRAYS==\n"
	.size	.L.str.8, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
