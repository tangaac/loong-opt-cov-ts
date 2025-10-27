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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI7_0:
	.dword	0x4092c00000000000              # double 1200
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
	beqz	$fp, .LBB7_62
# %bb.1:
	bnez	$a0, .LBB7_62
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 32
	beqz	$s0, .LBB7_62
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_62
# %bb.4:                                # %polybench_alloc_data.exit22
	st.d	$zero, $sp, 32
	lu12i.w	$a0, 2343
	ori	$a2, $a0, 3072
	lu12i.w	$s2, 1
	addi.d	$a0, $sp, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 32
	beqz	$s1, .LBB7_62
# %bb.5:                                # %polybench_alloc_data.exit22
	bnez	$a0, .LBB7_62
# %bb.6:                                # %polybench_alloc_data.exit24
	move	$a1, $zero
	move	$a2, $zero
	ori	$a4, $zero, 1
	lu12i.w	$a3, -2
	ori	$a5, $a3, 192
	lu12i.w	$a0, 111848
	ori	$a6, $a0, 437
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_0)
	ori	$a7, $zero, 1200
	ori	$a0, $s2, 3904
	ori	$t0, $s2, 3912
	move	$t1, $s1
	.p2align	4, , 16
.LBB7_7:                                # %.preheader35.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
	ori	$t2, $zero, 1
	move	$t3, $a5
	move	$t4, $a4
	.p2align	4, , 16
.LBB7_8:                                # %vector.body
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t5, $t4, 31, 0
	mul.d	$t5, $t5, $a6
	srli.d	$t5, $t5, 39
	mul.d	$t5, $t5, $a7
	sub.d	$t5, $t4, $t5
	bstrpick.d	$t5, $t5, 31, 0
	bstrpick.d	$t6, $t2, 31, 0
	mul.d	$t6, $t6, $a6
	srli.d	$t6, $t6, 39
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
	fstx.d	$fa1, $t5, $a0
	fstx.d	$fa2, $t5, $t0
	add.w	$t4, $t4, $a1
	addi.d	$t3, $t3, 16
	add.w	$t2, $t2, $a1
	bnez	$t3, .LBB7_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB7_7 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$a4, $a4, 1
	addi.d	$a1, $a1, 2
	add.d	$t1, $t1, $a0
	bne	$a2, $a7, .LBB7_7
# %bb.10:                               # %.preheader.i.preheader
	move	$a2, $zero
	move	$a4, $zero
	move	$a5, $zero
	lu12i.w	$a1, -3
	ori	$a6, $a1, 2688
	lu12i.w	$a1, 67108
	ori	$a7, $a1, 3539
	ori	$t0, $zero, 1000
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_1)
	lu12i.w	$a1, 2
	ori	$s3, $a1, 1408
	ori	$t1, $zero, 1200
	.p2align	4, , 16
.LBB7_11:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	add.d	$t2, $s0, $a4
	add.d	$t3, $fp, $a4
	ori	$t4, $zero, 2
	move	$t5, $a6
	.p2align	4, , 16
.LBB7_12:                               #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t6, $t4, 31, 0
	mul.d	$t6, $t6, $a7
	srli.d	$t6, $t6, 38
	mul.d	$t6, $t6, $t0
	sub.d	$t6, $t4, $t6
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa1, $t6
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	add.d	$t6, $t3, $t5
	fstx.d	$fa1, $t6, $s3
	add.d	$t6, $t2, $t5
	fstx.d	$fa1, $t6, $s3
	addi.d	$t5, $t5, 8
	add.w	$t4, $t4, $a2
	bnez	$t5, .LBB7_12
# %bb.13:                               #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$a4, $a4, $s3
	addi.d	$a2, $a2, 1
	bne	$a5, $t1, .LBB7_11
# %bb.14:                               # %.preheader29.i.preheader
	move	$a6, $zero
	addi.d	$a5, $fp, 16
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3712
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	add.d	$t0, $s1, $a2
	ori	$t1, $zero, 1
	addi.w	$t2, $zero, -8
	ori	$a1, $a1, 1416
	pcalau12i	$a2, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_2)
	vldi	$vr2, -904
	ori	$t4, $zero, 1000
	ori	$t5, $zero, 1200
	lu12i.w	$a2, -4
	ori	$a2, $a2, 384
	ori	$a3, $a3, 192
	lu12i.w	$a4, 7
	ori	$a4, $a4, 3328
	lu12i.w	$a7, 209715
	ori	$a7, $a7, 819
	lu32i.d	$a7, 209715
	lu52i.d	$a7, $a7, 1023
	vreplgr2vr.d	$vr1, $a7
	move	$t6, $fp
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_15:                               #   in Loop: Header=BB7_16 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$t1, $t1, 1
	add.d	$a5, $a5, $s3
	add.d	$t6, $t6, $s3
	addi.d	$t2, $t2, -8
	beq	$a6, $t5, .LBB7_32
.LBB7_16:                               # %.preheader29.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_25 Depth 2
                                        #       Child Loop BB7_28 Depth 3
                                        #       Child Loop BB7_31 Depth 3
	move	$t3, $t1
	bstrins.d	$t3, $zero, 1, 0
	bstrpick.d	$s6, $t1, 62, 2
	ori	$a7, $zero, 4
	bgeu	$t1, $a7, .LBB7_18
# %bb.17:                               #   in Loop: Header=BB7_16 Depth=1
	move	$t8, $zero
	b	.LBB7_21
	.p2align	4, , 16
.LBB7_18:                               # %vector.ph103
                                        #   in Loop: Header=BB7_16 Depth=1
	slli.d	$t8, $s6, 2
	move	$a7, $a5
	move	$t7, $t3
	.p2align	4, , 16
.LBB7_19:                               # %vector.body106
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vfmul.d	$vr3, $vr3, $vr1
	vfmul.d	$vr4, $vr4, $vr1
	vst	$vr3, $a7, -16
	vst	$vr4, $a7, 0
	addi.d	$t7, $t7, -4
	addi.d	$a7, $a7, 32
	bnez	$t7, .LBB7_19
# %bb.20:                               # %middle.block111
                                        #   in Loop: Header=BB7_16 Depth=1
	beq	$t1, $t8, .LBB7_23
.LBB7_21:                               # %scalar.ph101.preheader
                                        #   in Loop: Header=BB7_16 Depth=1
	alsl.d	$a7, $t8, $t6, 3
	.p2align	4, , 16
.LBB7_22:                               # %scalar.ph101
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $a7, 0
	fmul.d	$fa3, $fa3, $fa0
	fst.d	$fa3, $a7, 0
	addi.d	$t8, $t8, 1
	addi.d	$a7, $a7, 8
	bne	$t1, $t8, .LBB7_22
.LBB7_23:                               # %.preheader28.i
                                        #   in Loop: Header=BB7_16 Depth=1
	move	$t8, $zero
	mul.d	$a7, $a6, $s3
	add.d	$a7, $fp, $a7
	mul.d	$t7, $a6, $a1
	add.d	$t7, $fp, $t7
	addi.d	$t7, $t7, 8
	mul.d	$s2, $a6, $a0
	add.d	$s2, $s1, $s2
	add.d	$s4, $s2, $a0
	sltu	$a7, $a7, $s4
	sltu	$s4, $s1, $t7
	sltu	$t7, $s2, $t7
	or	$t7, $s4, $t7
	and	$s5, $a7, $t7
	slli.d	$s6, $s6, 2
	move	$s7, $s1
	move	$s8, $t0
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_24:                               # %.loopexit154
                                        #   in Loop: Header=BB7_25 Depth=2
	addi.d	$t8, $t8, 1
	addi.d	$s8, $s8, 8
	addi.d	$s7, $s7, 8
	beq	$t8, $t4, .LBB7_15
.LBB7_25:                               # %.preheader.i29
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_28 Depth 3
                                        #       Child Loop BB7_31 Depth 3
	sltui	$a7, $t1, 4
	or	$a7, $a7, $s5
	andi	$a7, $a7, 1
	alsl.d	$ra, $t8, $s2, 3
	beqz	$a7, .LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_25 Depth=2
	move	$t7, $zero
	b	.LBB7_30
	.p2align	4, , 16
.LBB7_27:                               # %vector.ph95
                                        #   in Loop: Header=BB7_25 Depth=2
	fld.d	$fa3, $ra, 0
	fmul.d	$fa3, $fa3, $fa2
	vreplvei.d	$vr3, $vr3, 0
	move	$s4, $s8
	move	$a7, $a5
	move	$t7, $t3
	.p2align	4, , 16
.LBB7_28:                               # %vector.body96
                                        #   Parent Loop BB7_16 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa4, $s4, $a2
	fldx.d	$fa5, $s4, $a3
	fld.d	$fa6, $s4, 0
	fldx.d	$fa7, $s4, $a0
	vld	$vr8, $a7, -16
	vld	$vr9, $a7, 0
	vextrins.d	$vr4, $vr5, 16
	vextrins.d	$vr6, $vr7, 16
	vfmadd.d	$vr4, $vr3, $vr4, $vr8
	vfmadd.d	$vr5, $vr3, $vr6, $vr9
	vst	$vr4, $a7, -16
	vst	$vr5, $a7, 0
	addi.d	$t7, $t7, -4
	addi.d	$a7, $a7, 32
	add.d	$s4, $s4, $a4
	bnez	$t7, .LBB7_28
# %bb.29:                               # %middle.block100
                                        #   in Loop: Header=BB7_25 Depth=2
	move	$t7, $s6
	beq	$t1, $s6, .LBB7_24
.LBB7_30:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_25 Depth=2
	slli.d	$a7, $t7, 3
	mul.d	$t7, $t7, $a0
	add.d	$t7, $s7, $t7
	.p2align	4, , 16
.LBB7_31:                               # %scalar.ph
                                        #   Parent Loop BB7_16 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa3, $ra, 0
	fld.d	$fa4, $t7, 0
	fldx.d	$fa5, $t6, $a7
	fmul.d	$fa3, $fa3, $fa2
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fstx.d	$fa3, $t6, $a7
	addi.d	$a7, $a7, 8
	add.d	$s4, $t2, $a7
	add.d	$t7, $t7, $a0
	bnez	$s4, .LBB7_31
	b	.LBB7_24
.LBB7_32:                               # %.preheader29.i34.preheader
	move	$a6, $zero
	addi.d	$s4, $s0, 16
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	add.d	$a5, $s1, $a5
	ori	$t0, $zero, 1
	addi.w	$t1, $zero, -8
	vldi	$vr2, -904
	ori	$t3, $zero, 1000
	ori	$t4, $zero, 1200
	move	$t5, $s0
	b	.LBB7_34
	.p2align	4, , 16
.LBB7_33:                               #   in Loop: Header=BB7_34 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 1
	add.d	$s4, $s4, $s3
	add.d	$t5, $t5, $s3
	addi.d	$t1, $t1, -8
	beq	$a6, $t4, .LBB7_50
.LBB7_34:                               # %.preheader29.i34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_37 Depth 2
                                        #     Child Loop BB7_40 Depth 2
                                        #     Child Loop BB7_43 Depth 2
                                        #       Child Loop BB7_46 Depth 3
                                        #       Child Loop BB7_49 Depth 3
	move	$t2, $t0
	bstrins.d	$t2, $zero, 1, 0
	bstrpick.d	$s5, $t0, 62, 2
	ori	$a7, $zero, 4
	bgeu	$t0, $a7, .LBB7_36
# %bb.35:                               #   in Loop: Header=BB7_34 Depth=1
	move	$t7, $zero
	b	.LBB7_39
	.p2align	4, , 16
.LBB7_36:                               # %vector.ph143
                                        #   in Loop: Header=BB7_34 Depth=1
	slli.d	$t7, $s5, 2
	move	$a7, $s4
	move	$t6, $t2
	.p2align	4, , 16
.LBB7_37:                               # %vector.body146
                                        #   Parent Loop BB7_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vfmul.d	$vr3, $vr3, $vr1
	vfmul.d	$vr4, $vr4, $vr1
	vst	$vr3, $a7, -16
	vst	$vr4, $a7, 0
	addi.d	$t6, $t6, -4
	addi.d	$a7, $a7, 32
	bnez	$t6, .LBB7_37
# %bb.38:                               # %middle.block151
                                        #   in Loop: Header=BB7_34 Depth=1
	beq	$t0, $t7, .LBB7_41
.LBB7_39:                               # %scalar.ph141.preheader
                                        #   in Loop: Header=BB7_34 Depth=1
	alsl.d	$a7, $t7, $t5, 3
	.p2align	4, , 16
.LBB7_40:                               # %scalar.ph141
                                        #   Parent Loop BB7_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $a7, 0
	fmul.d	$fa3, $fa3, $fa0
	fst.d	$fa3, $a7, 0
	addi.d	$t7, $t7, 1
	addi.d	$a7, $a7, 8
	bne	$t0, $t7, .LBB7_40
.LBB7_41:                               # %.preheader28.i40
                                        #   in Loop: Header=BB7_34 Depth=1
	move	$t7, $zero
	mul.d	$a7, $a6, $s3
	add.d	$a7, $s0, $a7
	mul.d	$t6, $a6, $a1
	add.d	$t6, $s0, $t6
	addi.d	$t6, $t6, 8
	mul.d	$t8, $a6, $a0
	add.d	$t8, $s1, $t8
	add.d	$s2, $t8, $a0
	sltu	$a7, $a7, $s2
	sltu	$s2, $s1, $t6
	sltu	$t6, $t8, $t6
	or	$t6, $s2, $t6
	and	$s2, $a7, $t6
	slli.d	$s5, $s5, 2
	move	$s6, $s1
	move	$s7, $a5
	b	.LBB7_43
	.p2align	4, , 16
.LBB7_42:                               # %.loopexit
                                        #   in Loop: Header=BB7_43 Depth=2
	addi.d	$t7, $t7, 1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 8
	beq	$t7, $t3, .LBB7_33
.LBB7_43:                               # %.preheader.i41
                                        #   Parent Loop BB7_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_46 Depth 3
                                        #       Child Loop BB7_49 Depth 3
	sltui	$a7, $t0, 4
	or	$a7, $a7, $s2
	andi	$a7, $a7, 1
	alsl.d	$s8, $t7, $t8, 3
	beqz	$a7, .LBB7_45
# %bb.44:                               #   in Loop: Header=BB7_43 Depth=2
	move	$t6, $zero
	b	.LBB7_48
	.p2align	4, , 16
.LBB7_45:                               # %vector.ph128
                                        #   in Loop: Header=BB7_43 Depth=2
	fld.d	$fa3, $s8, 0
	fmul.d	$fa3, $fa3, $fa2
	vreplvei.d	$vr3, $vr3, 0
	move	$ra, $s7
	move	$a7, $s4
	move	$t6, $t2
	.p2align	4, , 16
.LBB7_46:                               # %vector.body131
                                        #   Parent Loop BB7_34 Depth=1
                                        #     Parent Loop BB7_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa4, $ra, $a2
	fldx.d	$fa5, $ra, $a3
	fld.d	$fa6, $ra, 0
	fldx.d	$fa7, $ra, $a0
	vextrins.d	$vr4, $vr5, 16
	vextrins.d	$vr6, $vr7, 16
	vld	$vr5, $a7, -16
	vld	$vr7, $a7, 0
	vfmul.d	$vr4, $vr3, $vr4
	vfmul.d	$vr6, $vr3, $vr6
	vfadd.d	$vr4, $vr5, $vr4
	vfadd.d	$vr5, $vr7, $vr6
	vst	$vr4, $a7, -16
	vst	$vr5, $a7, 0
	addi.d	$t6, $t6, -4
	addi.d	$a7, $a7, 32
	add.d	$ra, $ra, $a4
	bnez	$t6, .LBB7_46
# %bb.47:                               # %middle.block138
                                        #   in Loop: Header=BB7_43 Depth=2
	move	$t6, $s5
	beq	$t0, $s5, .LBB7_42
.LBB7_48:                               # %scalar.ph126.preheader
                                        #   in Loop: Header=BB7_43 Depth=2
	slli.d	$a7, $t6, 3
	mul.d	$t6, $t6, $a0
	add.d	$t6, $s6, $t6
	.p2align	4, , 16
.LBB7_49:                               # %scalar.ph126
                                        #   Parent Loop BB7_34 Depth=1
                                        #     Parent Loop BB7_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa3, $s8, 0
	fld.d	$fa4, $t6, 0
	fldx.d	$fa5, $t5, $a7
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa4
	fadd.d	$fa3, $fa5, $fa3
	fstx.d	$fa3, $t5, $a7
	addi.d	$a7, $a7, 8
	add.d	$ra, $t1, $a7
	add.d	$t6, $t6, $a0
	bnez	$ra, .LBB7_49
	b	.LBB7_42
.LBB7_50:                               # %.preheader.i53.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_3)
	move	$a0, $zero
	move	$a2, $zero
	lu12i.w	$a1, -3
	ori	$a1, $a1, 2688
	ori	$a4, $zero, 1200
	.p2align	4, , 16
.LBB7_51:                               # %.preheader.i53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_52 Depth 2
	move	$a3, $zero
	add.d	$a5, $s0, $a0
	add.d	$a6, $fp, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_52:                               #   Parent Loop BB7_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa1, $t0, $s3
	add.d	$t0, $a5, $a7
	fldx.d	$fa2, $t0, $s3
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_60
# %bb.53:                               # %.critedge.i
                                        #   in Loop: Header=BB7_52 Depth=2
	addi.d	$a7, $a7, 8
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_52
# %bb.54:                               #   in Loop: Header=BB7_51 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s3
	bne	$a2, $a4, .LBB7_51
# %bb.55:                               # %check_FP.exit
	lu12i.w	$s4, 4
	ori	$a0, $s4, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $s4, 2816
	stx.b	$zero, $s2, $a0
	lu12i.w	$a0, -3
	ori	$s4, $a0, 2688
	ori	$s6, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	move	$s8, $zero
	move	$s5, $zero
.LBB7_56:                               # %.preheader.i57
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_57 Depth 2
	add.d	$a0, $s0, $s8
	addi.d	$a1, $s2, 7
	move	$a2, $s4
	.p2align	4, , 16
.LBB7_57:                               #   Parent Loop BB7_56 Depth=1
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
	bnez	$a2, .LBB7_57
# %bb.58:                               #   in Loop: Header=BB7_56 Depth=1
	ld.d	$a1, $s7, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	add.d	$s8, $s8, $s3
	ori	$a0, $zero, 1200
	bne	$s5, $a0, .LBB7_56
# %bb.59:                               # %print_array.exit
	move	$a0, $s2
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
	move	$a0, $zero
	b	.LBB7_61
.LBB7_60:                               # %check_FP.exit.thread
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
.LBB7_61:
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
.LBB7_62:
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
