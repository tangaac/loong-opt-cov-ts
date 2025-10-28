	.file	"cholesky.c"
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
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $sp, 16
	lu12i.w	$a0, 7812
	ori	$s1, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16
	beqz	$fp, .LBB7_74
# %bb.1:
	bnez	$a0, .LBB7_74
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 16
	beqz	$s0, .LBB7_74
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_74
# %bb.4:                                # %polybench_alloc_data.exit15
	move	$t2, $zero
	sub.d	$s6, $s0, $fp
	addi.d	$a0, $s0, 24
	addi.d	$a1, $fp, 24
	ori	$a2, $zero, 1
	addi.w	$a3, $zero, -8
	ori	$a4, $zero, 1999
	lu12i.w	$s5, 3
	ori	$s3, $s5, 3712
	ori	$a5, $zero, 2
	pcalau12i	$a6, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a6, %pc_lo12(.LCPI7_0)
	vldi	$vr1, -912
	ori	$a6, $zero, 1998
	ori	$a7, $zero, 4
	ori	$t0, $zero, 32
	vrepli.b	$vr2, 0
	lu52i.d	$t1, $zero, 1023
	ori	$t3, $zero, 2000
	ori	$t4, $zero, 16
	ori	$t5, $zero, 0
	lu32i.d	$t5, 1
	vreplgr2vr.d	$vr3, $t5
	ori	$t5, $zero, 1999
	move	$t6, $fp
	move	$t7, $s0
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_5:                                # %._crit_edge.i
                                        #   in Loop: Header=BB7_6 Depth=1
	mul.d	$t8, $t2, $s3
	add.d	$s2, $fp, $t8
	add.d	$t8, $s0, $t8
	addi.d	$s4, $t2, 1
	slli.d	$t2, $t2, 3
	stx.d	$t1, $s2, $t2
	stx.d	$t1, $t8, $t2
	addi.d	$a2, $a2, 1
	add.d	$t7, $t7, $s3
	add.d	$t6, $t6, $s3
	addi.d	$a3, $a3, -8
	addi.d	$t5, $t5, -1
	ori	$t2, $s5, 3720
	add.d	$a0, $a0, $t2
	add.d	$a1, $a1, $t2
	move	$t2, $s4
	beq	$s4, $t3, .LBB7_21
.LBB7_6:                                # %.preheader87.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #     Child Loop BB7_12 Depth 2
                                        #     Child Loop BB7_17 Depth 2
                                        #     Child Loop BB7_20 Depth 2
	move	$t8, $zero
	bltu	$a2, $a5, .LBB7_11
# %bb.7:                                # %.preheader87.i
                                        #   in Loop: Header=BB7_6 Depth=1
	bltu	$s6, $t4, .LBB7_11
# %bb.8:                                # %vector.ph102
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$s2, $a2
	bstrins.d	$s2, $zero, 0, 0
	bstrpick.d	$t8, $a2, 62, 1
	slli.d	$t8, $t8, 1
	move	$s4, $t6
	move	$s7, $t7
	vori.b	$vr4, $vr3, 0
	.p2align	4, , 16
.LBB7_9:                                # %vector.body105
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vneg.w	$vr5, $vr4
	vpickve2gr.w	$s8, $vr5, 1
	movgr2fr.w	$fa6, $s8
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$s8, $vr5, 0
	movgr2fr.w	$fa5, $s8
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr6, 16
	ori	$s8, $zero, 0
	lu32i.d	$s8, -49152
	lu52i.d	$s8, $s8, 1033
	vreplgr2vr.d	$vr6, $s8
	vfdiv.d	$vr5, $vr5, $vr6
	vfadd.d	$vr5, $vr5, $vr1
	vst	$vr5, $s4, 0
	vst	$vr5, $s7, 0
	vaddi.wu	$vr4, $vr4, 2
	addi.d	$s2, $s2, -2
	addi.d	$s7, $s7, 16
	addi.d	$s4, $s4, 16
	bnez	$s2, .LBB7_9
# %bb.10:                               # %middle.block108
                                        #   in Loop: Header=BB7_6 Depth=1
	beq	$a2, $t8, .LBB7_13
.LBB7_11:                               # %scalar.ph100.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	slli.d	$s2, $t8, 3
	sub.w	$t8, $zero, $t8
	.p2align	4, , 16
.LBB7_12:                               # %scalar.ph100
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa4, $t8
	ffint.d.w	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa0
	fadd.d	$fa4, $fa4, $fa1
	fstx.d	$fa4, $t6, $s2
	fstx.d	$fa4, $t7, $s2
	addi.d	$s2, $s2, 8
	add.d	$s4, $a3, $s2
	addi.w	$t8, $t8, -1
	bnez	$s4, .LBB7_12
.LBB7_13:                               # %.loopexit123
                                        #   in Loop: Header=BB7_6 Depth=1
	bltu	$a6, $t2, .LBB7_5
# %bb.14:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	sub.d	$t8, $a4, $t2
	move	$s2, $a2
	bltu	$t8, $a7, .LBB7_19
# %bb.15:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$s2, $a2
	bltu	$s6, $t0, .LBB7_19
# %bb.16:                               # %vector.ph
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$s7, $t5
	bstrins.d	$s7, $zero, 1, 0
	move	$s4, $t8
	bstrins.d	$s4, $zero, 1, 0
	add.d	$s2, $a2, $s4
	move	$s8, $a1
	move	$ra, $a0
	.p2align	4, , 16
.LBB7_17:                               # %vector.body
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $s8, -16
	vst	$vr2, $s8, 0
	vst	$vr2, $ra, -16
	vst	$vr2, $ra, 0
	addi.d	$s7, $s7, -4
	addi.d	$ra, $ra, 32
	addi.d	$s8, $s8, 32
	bnez	$s7, .LBB7_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB7_6 Depth=1
	beq	$t8, $s4, .LBB7_5
.LBB7_19:                               # %.lr.ph.i.preheader135
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$t8, $s2, -2000
	slli.d	$s2, $s2, 3
	.p2align	4, , 16
.LBB7_20:                               # %.lr.ph.i
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.d	$zero, $t6, $s2
	stx.d	$zero, $t7, $s2
	addi.d	$t8, $t8, 1
	addi.d	$s2, $s2, 8
	bnez	$t8, .LBB7_20
	b	.LBB7_5
.LBB7_21:
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 16
	beqz	$s2, .LBB7_74
# %bb.22:
	bnez	$a0, .LBB7_74
# %bb.23:                               # %polybench_alloc_data.exit.i
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	lu12i.w	$s4, -4
	ori	$a1, $s4, 384
	ori	$a2, $zero, 2000
	move	$a3, $fp
	.p2align	4, , 16
.LBB7_24:                               # %.preheader84.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_25 Depth 2
                                        #       Child Loop BB7_26 Depth 3
	move	$a4, $zero
	alsl.d	$a5, $a0, $fp, 3
	move	$a6, $s2
	.p2align	4, , 16
.LBB7_25:                               # %.preheader83.i
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_26 Depth 3
	mul.d	$a7, $a4, $s3
	add.d	$a7, $a5, $a7
	move	$t0, $a3
	move	$t1, $a1
	.p2align	4, , 16
.LBB7_26:                               #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a7, 0
	fld.d	$fa1, $t0, 0
	add.d	$t2, $a6, $t1
	fldx.d	$fa2, $t2, $s3
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t2, $s3
	addi.d	$t1, $t1, 8
	add.d	$t0, $t0, $s3
	bnez	$t1, .LBB7_26
# %bb.27:                               #   in Loop: Header=BB7_25 Depth=2
	addi.d	$a4, $a4, 1
	add.d	$a6, $a6, $s3
	bne	$a4, $a2, .LBB7_25
# %bb.28:                               #   in Loop: Header=BB7_24 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	bne	$a0, $a2, .LBB7_24
# %bb.29:                               # %.preheader.i.preheader
	move	$a0, $zero
	sub.d	$a1, $fp, $s2
	sub.d	$a2, $s0, $s2
	sltui	$a3, $s6, 32
	sltui	$a1, $a1, 32
	or	$a1, $a3, $a1
	sltui	$a2, $a2, 32
	or	$a1, $a1, $a2
	addi.d	$a2, $s2, 16
	ori	$a3, $s4, 384
	ori	$a4, $zero, 2000
	ori	$a5, $s5, 3696
	ori	$a6, $s5, 3728
	move	$a7, $s2
	move	$t0, $fp
	move	$t1, $s0
	b	.LBB7_31
	.p2align	4, , 16
.LBB7_30:                               # %middle.block122
                                        #   in Loop: Header=BB7_31 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a2, $a2, $s3
	add.d	$t1, $t1, $s3
	add.d	$t0, $t0, $s3
	add.d	$a7, $a7, $s3
	beq	$a0, $a4, .LBB7_34
.LBB7_31:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_33 Depth 2
                                        #     Child Loop BB7_32 Depth 2
	move	$t2, $a3
	beqz	$a1, .LBB7_33
	.p2align	4, , 16
.LBB7_32:                               # %scalar.ph116
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a7, $t2
	fldx.d	$fa0, $t3, $s3
	add.d	$t3, $t0, $t2
	fstx.d	$fa0, $t3, $s3
	add.d	$t3, $t1, $t2
	addi.d	$t2, $t2, 8
	fstx.d	$fa0, $t3, $s3
	bnez	$t2, .LBB7_32
	b	.LBB7_30
	.p2align	4, , 16
.LBB7_33:                               # %vector.body118
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $a2, $t2
	vldx	$vr0, $t3, $a5
	vldx	$vr1, $t3, $s3
	add.d	$t3, $t0, $t2
	vstx	$vr0, $t3, $s3
	vstx	$vr1, $t3, $a6
	add.d	$t3, $t1, $t2
	vstx	$vr0, $t3, $s3
	addi.d	$t2, $t2, 32
	vstx	$vr1, $t3, $a6
	bnez	$t2, .LBB7_33
	b	.LBB7_30
.LBB7_34:                               # %init_array.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	move	$s2, $zero
	ori	$s5, $zero, 2000
	move	$s6, $fp
	.p2align	4, , 16
.LBB7_35:                               # %.preheader44.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_39 Depth 2
                                        #       Child Loop BB7_41 Depth 3
                                        #     Child Loop BB7_43 Depth 2
	mul.d	$s7, $s2, $s3
	beqz	$s2, .LBB7_46
# %bb.36:                               # %.preheader.lr.ph.i
                                        #   in Loop: Header=BB7_35 Depth=1
	move	$a1, $zero
	add.d	$a0, $fp, $s7
	move	$a2, $fp
	b	.LBB7_39
	.p2align	4, , 16
.LBB7_37:                               # %.preheader.._crit_edge_crit_edge.i
                                        #   in Loop: Header=BB7_39 Depth=2
	fld.d	$fa0, $a0, 0
.LBB7_38:                               # %._crit_edge.i21
                                        #   in Loop: Header=BB7_39 Depth=2
	mul.d	$a4, $a1, $s3
	add.d	$a4, $fp, $a4
	fldx.d	$fa1, $a4, $a3
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $a3
	addi.d	$a1, $a1, 1
	add.d	$a2, $a2, $s3
	beq	$a1, $s2, .LBB7_42
.LBB7_39:                               # %.preheader.i16
                                        #   Parent Loop BB7_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_41 Depth 3
	slli.d	$a3, $a1, 3
	beqz	$a1, .LBB7_37
# %bb.40:                               # %.lr.ph.i17
                                        #   in Loop: Header=BB7_39 Depth=2
	fldx.d	$fa0, $a0, $a3
	alsl.d	$a4, $a1, $a0, 3
	move	$a5, $s6
	move	$a6, $a2
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_41:                               #   Parent Loop BB7_35 Depth=1
                                        #     Parent Loop BB7_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a5, 0
	fld.d	$fa2, $a6, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $a4, 0
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	bnez	$a7, .LBB7_41
	b	.LBB7_38
	.p2align	4, , 16
.LBB7_42:                               # %.lr.ph48.i
                                        #   in Loop: Header=BB7_35 Depth=1
	slli.d	$a1, $s2, 3
	fldx.d	$fa0, $a0, $a1
	move	$a1, $zero
	alsl.d	$a0, $s2, $a0, 3
	.p2align	4, , 16
.LBB7_43:                               #   Parent Loop BB7_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa1, $s6, $a1
	fneg.d	$fa2, $fa1
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	addi.d	$a1, $a1, 8
	fst.d	$fa0, $a0, 0
	bne	$s1, $a1, .LBB7_43
# %bb.44:                               # %._crit_edge49.i
                                        #   in Loop: Header=BB7_35 Depth=1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB7_47
.LBB7_45:                               # %._crit_edge49.i.split
                                        #   in Loop: Header=BB7_35 Depth=1
	add.d	$a0, $fp, $s7
	alsl.d	$a0, $s2, $a0, 3
	fst.d	$fa1, $a0, 0
	addi.d	$s2, $s2, 1
	add.d	$s6, $s6, $s3
	addi.d	$s1, $s1, 8
	bne	$s2, $s5, .LBB7_35
	b	.LBB7_48
	.p2align	4, , 16
.LBB7_46:                               # %.preheader43.._crit_edge49_crit_edge.i
                                        #   in Loop: Header=BB7_35 Depth=1
	fld.d	$fa0, $fp, 0
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB7_45
.LBB7_47:                               # %call.sqrt
                                        #   in Loop: Header=BB7_35 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB7_45
.LBB7_48:                               # %.preheader44.i22.preheader
	move	$s1, $zero
	move	$s2, $zero
	ori	$s5, $zero, 2000
	move	$s6, $s0
	.p2align	4, , 16
.LBB7_49:                               # %.preheader44.i22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_53 Depth 2
                                        #       Child Loop BB7_55 Depth 3
                                        #     Child Loop BB7_57 Depth 2
	mul.d	$s7, $s2, $s3
	beqz	$s2, .LBB7_60
# %bb.50:                               # %.preheader.lr.ph.i25
                                        #   in Loop: Header=BB7_49 Depth=1
	move	$a1, $zero
	add.d	$a0, $s0, $s7
	move	$a2, $s0
	b	.LBB7_53
	.p2align	4, , 16
.LBB7_51:                               # %.preheader.._crit_edge_crit_edge.i45
                                        #   in Loop: Header=BB7_53 Depth=2
	fld.d	$fa0, $a0, 0
.LBB7_52:                               # %._crit_edge.i34
                                        #   in Loop: Header=BB7_53 Depth=2
	mul.d	$a4, $a1, $s3
	add.d	$a4, $s0, $a4
	fldx.d	$fa1, $a4, $a3
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $a3
	addi.d	$a1, $a1, 1
	add.d	$a2, $a2, $s3
	beq	$a1, $s2, .LBB7_56
.LBB7_53:                               # %.preheader.i26
                                        #   Parent Loop BB7_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_55 Depth 3
	slli.d	$a3, $a1, 3
	beqz	$a1, .LBB7_51
# %bb.54:                               # %.lr.ph.i29
                                        #   in Loop: Header=BB7_53 Depth=2
	fldx.d	$fa0, $a0, $a3
	alsl.d	$a4, $a1, $a0, 3
	move	$a5, $s6
	move	$a6, $a2
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_55:                               #   Parent Loop BB7_49 Depth=1
                                        #     Parent Loop BB7_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a5, 0
	fld.d	$fa2, $a6, 0
	fmul.d	$fa1, $fa1, $fa2
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a4, 0
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	bnez	$a7, .LBB7_55
	b	.LBB7_52
	.p2align	4, , 16
.LBB7_56:                               # %.lr.ph48.i37
                                        #   in Loop: Header=BB7_49 Depth=1
	slli.d	$a1, $s2, 3
	fldx.d	$fa0, $a0, $a1
	move	$a1, $zero
	alsl.d	$a0, $s2, $a0, 3
	.p2align	4, , 16
.LBB7_57:                               #   Parent Loop BB7_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa1, $s6, $a1
	fmul.d	$fa1, $fa1, $fa1
	fsub.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, 8
	fst.d	$fa0, $a0, 0
	bne	$s1, $a1, .LBB7_57
# %bb.58:                               # %._crit_edge49.i42
                                        #   in Loop: Header=BB7_49 Depth=1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB7_61
.LBB7_59:                               # %._crit_edge49.i42.split
                                        #   in Loop: Header=BB7_49 Depth=1
	add.d	$a0, $s0, $s7
	alsl.d	$a0, $s2, $a0, 3
	fst.d	$fa1, $a0, 0
	addi.d	$s2, $s2, 1
	add.d	$s6, $s6, $s3
	addi.d	$s1, $s1, 8
	bne	$s2, $s5, .LBB7_49
	b	.LBB7_62
	.p2align	4, , 16
.LBB7_60:                               # %.preheader43.._crit_edge49_crit_edge.i47
                                        #   in Loop: Header=BB7_49 Depth=1
	fld.d	$fa0, $s0, 0
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB7_59
.LBB7_61:                               # %call.sqrt291
                                        #   in Loop: Header=BB7_49 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB7_59
.LBB7_62:                               # %.preheader.i49.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_1)
	move	$a0, $zero
	move	$a2, $zero
	ori	$a1, $s4, 384
	ori	$a4, $zero, 2000
	.p2align	4, , 16
.LBB7_63:                               # %.preheader.i49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_64 Depth 2
	move	$a3, $zero
	add.d	$a5, $s0, $a0
	add.d	$a6, $fp, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_64:                               #   Parent Loop BB7_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa1, $t0, $s3
	add.d	$t0, $a5, $a7
	fldx.d	$fa2, $t0, $s3
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_72
# %bb.65:                               # %.critedge.i
                                        #   in Loop: Header=BB7_64 Depth=2
	addi.d	$a7, $a7, 8
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_64
# %bb.66:                               #   in Loop: Header=BB7_63 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s3
	bne	$a2, $a4, .LBB7_63
# %bb.67:                               # %check_FP.exit
	lu12i.w	$s2, 7
	ori	$a0, $s2, 3329
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $s2, 3328
	stx.b	$zero, $s1, $a0
	ori	$s4, $s4, 384
	ori	$s5, $zero, 3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s6, $a0, %got_pc_lo12(stderr)
	move	$s7, $zero
	move	$s8, $zero
	ori	$s2, $zero, 2000
.LBB7_68:                               # %.preheader.i53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_69 Depth 2
	add.d	$a0, $s0, $s7
	addi.d	$a1, $s1, 7
	move	$a2, $s4
	.p2align	4, , 16
.LBB7_69:                               #   Parent Loop BB7_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.d	$a3, $a3, 16000
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s5, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s5, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s5, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s5, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s5, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s5, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s5, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s5, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_69
# %bb.70:                               #   in Loop: Header=BB7_68 Depth=1
	ld.d	$a1, $s6, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	add.d	$s7, $s7, $s3
	bne	$s8, $s2, .LBB7_68
# %bb.71:                               # %print_array.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_73
.LBB7_72:                               # %check_FP.exit.thread
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
.LBB7_73:
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB7_74:
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
