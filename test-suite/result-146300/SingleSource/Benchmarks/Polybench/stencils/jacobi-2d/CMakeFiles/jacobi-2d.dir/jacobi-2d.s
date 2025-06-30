	.file	"jacobi-2d.c"
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
	.dword	0x4094500000000000              # double 1300
.LCPI7_2:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
.LCPI7_3:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 320
	bstrins.d	$sp, $zero, 4, 0
	st.d	$zero, $sp, 224
	lu12i.w	$s3, 3300
	ori	$s2, $s3, 3200
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 224
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 224
	beqz	$s0, .LBB7_68
# %bb.1:
	bnez	$a0, .LBB7_68
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 224
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 224
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 224
	beqz	$s1, .LBB7_68
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_68
# %bb.4:                                # %polybench_alloc_data.exit23
	st.d	$zero, $sp, 224
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 224
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 224
	beqz	$s2, .LBB7_68
# %bb.5:                                # %polybench_alloc_data.exit23
	bnez	$a0, .LBB7_68
# %bb.6:                                # %polybench_alloc_data.exit25
	move	$a0, $zero
	move	$a1, $zero
	sub.d	$a2, $s2, $s0
	ori	$a3, $zero, 3
	ori	$a4, $zero, 2
	ori	$a5, $zero, 15
	lu12i.w	$s5, -3
	ori	$a6, $s5, 1888
	pcalau12i	$a7, %pc_hi20(.LCPI7_1)
	fld.d	$fa1, $a7, %pc_lo12(.LCPI7_1)
	lu12i.w	$t4, 2
	ori	$s4, $t4, 2208
	ori	$a7, $zero, 1300
	pcalau12i	$t0, %pc_hi20(.LCPI7_0)
	st.d	$t0, $sp, 80                    # 8-byte Folded Spill
	vld	$vr0, $t0, %pc_lo12(.LCPI7_0)
	ori	$t0, $zero, 0
	lu32i.d	$t0, 282624
	lu52i.d	$t0, $t0, 1033
	vreplgr2vr.d	$vr2, $t0
	move	$t0, $s0
	move	$t1, $s2
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %middle.block
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$t1, $t1, $s4
	add.d	$t0, $t0, $s4
	addi.w	$a3, $a3, 3
	addi.d	$a0, $a0, 1
	addi.w	$a4, $a4, 2
	beq	$a1, $a7, .LBB7_13
.LBB7_8:                                # %vector.memcheck
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #     Child Loop BB7_10 Depth 2
	bltu	$a5, $a2, .LBB7_11
# %bb.9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_8 Depth=1
	move	$t2, $zero
	move	$t3, $a6
	.p2align	4, , 16
.LBB7_10:                               # %scalar.ph
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $a4, $t2
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa3, $t5
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa1
	add.d	$t5, $t0, $t3
	fstx.d	$fa3, $t5, $s4
	add.d	$t5, $a3, $t2
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa3, $t5
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa1
	add.d	$t5, $t1, $t3
	fstx.d	$fa3, $t5, $s4
	addi.d	$t3, $t3, 8
	add.w	$t2, $t2, $a0
	bnez	$t3, .LBB7_10
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_11:                               # %vector.ph
                                        #   in Loop: Header=BB7_8 Depth=1
	vreplgr2vr.d	$vr3, $a1
	move	$t2, $a6
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB7_12:                               # %vector.body
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 2
	vmul.d	$vr6, $vr5, $vr3
	vshuf4i.w	$vr6, $vr6, 8
	vaddi.wu	$vr6, $vr6, 2
	vext2xv.du.wu	$xr6, $xr6
	xvffint.d.lu	$xr6, $xr6
	xvst	$xr6, $sp, 160
	vld	$vr6, $sp, 160
	vaddi.du	$vr4, $vr4, 3
	vfdiv.d	$vr6, $vr6, $vr2
	add.d	$t3, $t0, $t2
	vstx	$vr6, $t3, $s4
	vmul.d	$vr4, $vr4, $vr3
	vshuf4i.w	$vr4, $vr4, 8
	vaddi.wu	$vr4, $vr4, 3
	vext2xv.du.wu	$xr4, $xr4
	xvffint.d.lu	$xr4, $xr4
	xvst	$xr4, $sp, 192
	vld	$vr4, $sp, 192
	vfdiv.d	$vr4, $vr4, $vr2
	add.d	$t3, $t1, $t2
	addi.d	$t2, $t2, 16
	vstx	$vr4, $t3, $s4
	vori.b	$vr4, $vr5, 0
	bnez	$t2, .LBB7_12
	b	.LBB7_7
.LBB7_13:                               # %.preheader57.i.preheader
	move	$t5, $zero
	ori	$a1, $t4, 2216
	add.d	$a7, $s0, $a1
	lu12i.w	$a0, 3298
	ori	$a2, $a0, 984
	add.d	$a0, $s0, $a2
	addi.d	$a4, $s2, 8
	ori	$a3, $s3, 3192
	add.d	$a5, $s2, $a3
	add.d	$t1, $s2, $a1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	add.d	$a6, $s2, $a2
	addi.d	$a2, $s0, 8
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	add.d	$a3, $s0, $a3
	sltu	$a3, $t1, $a3
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	sltu	$a2, $a2, $a6
	and	$t8, $a3, $a2
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	sltu	$a2, $a7, $a5
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	sltu	$a0, $a4, $a0
	and	$s3, $a2, $a0
	lu12i.w	$a0, 5
	ori	$a2, $a0, 328
	add.d	$t0, $s0, $a2
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	add.d	$s8, $s2, $a2
	ori	$ra, $zero, 1299
	ori	$a6, $s5, 1920
	lu12i.w	$a2, -419431
	ori	$a2, $a2, 2458
	lu32i.d	$a2, -419431
	lu52i.d	$a2, $a2, 1020
	xvreplgr2vr.d	$xr0, $a2
	.p2align	4, , 16
.LBB7_14:                               # %.preheader57.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_15 Depth 2
                                        #       Child Loop BB7_17 Depth 3
                                        #       Child Loop BB7_20 Depth 3
                                        #     Child Loop BB7_23 Depth 2
                                        #       Child Loop BB7_25 Depth 3
                                        #       Child Loop BB7_28 Depth 3
	move	$a7, $zero
	ori	$t2, $zero, 1
	move	$s7, $t0
	move	$t7, $t1
	.p2align	4, , 16
.LBB7_15:                               # %.preheader55.i
                                        #   Parent Loop BB7_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_17 Depth 3
                                        #       Child Loop BB7_20 Depth 3
	ori	$a2, $t4, 2176
	ori	$a3, $s5, 1856
	ori	$a4, $zero, 1
	bnez	$t8, .LBB7_19
# %bb.16:                               # %vector.body110.preheader
                                        #   in Loop: Header=BB7_15 Depth=2
	ori	$a4, $s5, 1920
	.p2align	4, , 16
.LBB7_17:                               # %vector.body110
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $s7, $a4
	xvld	$xr2, $a5, -32
	xvld	$xr3, $a5, -40
	xvld	$xr4, $a5, -24
	xvldx	$xr5, $a5, $a2
	xvldx	$xr6, $a5, $a3
	xvfadd.d	$xr2, $xr2, $xr3
	xvfadd.d	$xr2, $xr2, $xr4
	xvfadd.d	$xr2, $xr2, $xr5
	xvfadd.d	$xr2, $xr2, $xr6
	xvfmul.d	$xr2, $xr2, $xr0
	add.d	$a5, $t7, $a4
	addi.d	$a4, $a4, 32
	xvstx	$xr2, $a5, $a2
	bnez	$a4, .LBB7_17
# %bb.18:                               #   in Loop: Header=BB7_15 Depth=2
	ori	$a4, $zero, 1297
.LBB7_19:                               # %scalar.ph108.preheader
                                        #   in Loop: Header=BB7_15 Depth=2
	alsl.d	$t3, $a4, $a7, 3
	addi.d	$a5, $a4, -1299
	.p2align	4, , 16
.LBB7_20:                               # %scalar.ph108
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $s0, $t3
	fldx.d	$fa2, $t6, $s4
	ori	$a4, $t4, 2200
	fldx.d	$fa3, $t6, $a4
	fadd.d	$fa3, $fa2, $fa3
	fldx.d	$fa4, $t6, $a1
	ori	$s6, $a0, 320
	fldx.d	$fa5, $t6, $s6
	fldx.d	$fa6, $s0, $t3
	pcalau12i	$t6, %pc_hi20(.LCPI7_2)
	fld.d	$fa2, $t6, %pc_lo12(.LCPI7_2)
	fadd.d	$fa3, $fa3, $fa4
	fadd.d	$fa3, $fa3, $fa5
	fadd.d	$fa3, $fa3, $fa6
	fmul.d	$fa3, $fa3, $fa2
	add.d	$t6, $s2, $t3
	fstx.d	$fa3, $t6, $s4
	addi.d	$a5, $a5, 1
	addi.d	$t3, $t3, 8
	bnez	$a5, .LBB7_20
# %bb.21:                               # %.loopexit179
                                        #   in Loop: Header=BB7_15 Depth=2
	addi.d	$t2, $t2, 1
	add.d	$t7, $t7, $s4
	add.d	$s7, $s7, $s4
	add.d	$a7, $a7, $s4
	bne	$t2, $ra, .LBB7_15
# %bb.22:                               # %.preheader.i29.preheader
                                        #   in Loop: Header=BB7_14 Depth=1
	move	$a7, $zero
	ori	$t2, $zero, 1
	move	$t7, $s8
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_23:                               # %.preheader.i29
                                        #   Parent Loop BB7_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_25 Depth 3
                                        #       Child Loop BB7_28 Depth 3
	ori	$t3, $zero, 1
	bnez	$s3, .LBB7_27
# %bb.24:                               # %vector.body91.preheader
                                        #   in Loop: Header=BB7_23 Depth=2
	move	$a5, $a6
	.p2align	4, , 16
.LBB7_25:                               # %vector.body91
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t3, $t7, $a5
	xvld	$xr3, $t3, -32
	xvld	$xr4, $t3, -40
	xvld	$xr5, $t3, -24
	xvldx	$xr6, $t3, $a2
	xvldx	$xr7, $t3, $a3
	xvfadd.d	$xr3, $xr3, $xr4
	xvfadd.d	$xr3, $xr3, $xr5
	xvfadd.d	$xr3, $xr3, $xr6
	xvfadd.d	$xr3, $xr3, $xr7
	xvfmul.d	$xr3, $xr3, $xr0
	add.d	$t3, $s7, $a5
	addi.d	$a5, $a5, 32
	xvstx	$xr3, $t3, $a2
	bnez	$a5, .LBB7_25
# %bb.26:                               #   in Loop: Header=BB7_23 Depth=2
	ori	$t3, $zero, 1297
.LBB7_27:                               # %scalar.ph89.preheader
                                        #   in Loop: Header=BB7_23 Depth=2
	alsl.d	$a5, $t3, $a7, 3
	addi.d	$t3, $t3, -1299
	.p2align	4, , 16
.LBB7_28:                               # %scalar.ph89
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $s2, $a5
	fldx.d	$fa3, $t6, $s4
	fldx.d	$fa4, $t6, $a4
	fldx.d	$fa5, $t6, $a1
	fldx.d	$fa6, $t6, $s6
	fldx.d	$fa7, $s2, $a5
	fadd.d	$fa3, $fa3, $fa4
	fadd.d	$fa3, $fa3, $fa5
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa3, $fa7
	fmul.d	$fa3, $fa3, $fa2
	add.d	$t6, $s0, $a5
	fstx.d	$fa3, $t6, $s4
	addi.d	$t3, $t3, 1
	addi.d	$a5, $a5, 8
	bnez	$t3, .LBB7_28
# %bb.29:                               # %.loopexit178
                                        #   in Loop: Header=BB7_23 Depth=2
	addi.d	$t2, $t2, 1
	add.d	$s7, $s7, $s4
	add.d	$t7, $t7, $s4
	add.d	$a7, $a7, $s4
	bne	$t2, $ra, .LBB7_23
# %bb.30:                               #   in Loop: Header=BB7_14 Depth=1
	addi.w	$t5, $t5, 1
	ori	$a5, $zero, 500
	bne	$t5, $a5, .LBB7_14
# %bb.31:                               # %.preheader.i30.preheader
	move	$a5, $zero
	move	$a6, $zero
	sub.d	$t4, $s2, $s1
	ori	$t5, $zero, 3
	ori	$t6, $zero, 2
	ori	$t7, $zero, 15
	ori	$t8, $s5, 1888
	ori	$s3, $zero, 1300
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	vld	$vr3, $a7, %pc_lo12(.LCPI7_0)
	ori	$a7, $zero, 0
	lu32i.d	$a7, 282624
	lu52i.d	$a7, $a7, 1033
	vreplgr2vr.d	$vr4, $a7
	move	$s7, $s1
	move	$s8, $s2
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_32:                               # %middle.block132
                                        #   in Loop: Header=BB7_33 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$s8, $s8, $s4
	add.d	$s7, $s7, $s4
	addi.w	$t5, $t5, 3
	addi.d	$a5, $a5, 1
	addi.w	$t6, $t6, 2
	beq	$a6, $s3, .LBB7_38
.LBB7_33:                               # %vector.memcheck121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_37 Depth 2
                                        #     Child Loop BB7_35 Depth 2
	bltu	$t7, $t4, .LBB7_36
# %bb.34:                               # %scalar.ph123.preheader
                                        #   in Loop: Header=BB7_33 Depth=1
	move	$a7, $zero
	move	$t0, $t8
	.p2align	4, , 16
.LBB7_35:                               # %scalar.ph123
                                        #   Parent Loop BB7_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $t6, $a7
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa5, $t1
	ffint.d.l	$fa5, $fa5
	fdiv.d	$fa5, $fa5, $fa1
	add.d	$t1, $s7, $t0
	fstx.d	$fa5, $t1, $s4
	add.d	$t1, $t5, $a7
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa5, $t1
	ffint.d.l	$fa5, $fa5
	fdiv.d	$fa5, $fa5, $fa1
	add.d	$t1, $s8, $t0
	fstx.d	$fa5, $t1, $s4
	addi.d	$t0, $t0, 8
	add.w	$a7, $a7, $a5
	bnez	$t0, .LBB7_35
	b	.LBB7_32
	.p2align	4, , 16
.LBB7_36:                               # %vector.ph124
                                        #   in Loop: Header=BB7_33 Depth=1
	vreplgr2vr.d	$vr5, $a6
	move	$a7, $t8
	vori.b	$vr6, $vr3, 0
	.p2align	4, , 16
.LBB7_37:                               # %vector.body127
                                        #   Parent Loop BB7_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr7, $vr6, 2
	vmul.d	$vr8, $vr7, $vr5
	vshuf4i.w	$vr8, $vr8, 8
	vaddi.wu	$vr8, $vr8, 2
	vext2xv.du.wu	$xr8, $xr8
	xvffint.d.lu	$xr8, $xr8
	xvst	$xr8, $sp, 96
	vld	$vr8, $sp, 96
	vaddi.du	$vr6, $vr6, 3
	vfdiv.d	$vr8, $vr8, $vr4
	add.d	$t0, $s7, $a7
	vstx	$vr8, $t0, $s4
	vmul.d	$vr6, $vr6, $vr5
	vshuf4i.w	$vr6, $vr6, 8
	vaddi.wu	$vr6, $vr6, 3
	vext2xv.du.wu	$xr6, $xr6
	xvffint.d.lu	$xr6, $xr6
	xvst	$xr6, $sp, 128
	vld	$vr6, $sp, 128
	vfdiv.d	$vr6, $vr6, $vr4
	add.d	$t0, $s8, $a7
	addi.d	$a7, $a7, 16
	vstx	$vr6, $t0, $s4
	vori.b	$vr6, $vr7, 0
	bnez	$a7, .LBB7_37
	b	.LBB7_32
.LBB7_38:                               # %.preheader57.i38.preheader
	move	$a5, $zero
	add.d	$t4, $s1, $a1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	add.d	$a7, $s1, $a6
	add.d	$t0, $s2, $a1
	addi.d	$a6, $s1, 8
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	add.d	$t1, $s1, $t1
	sltu	$t1, $t0, $t1
	ld.d	$t2, $sp, 40                    # 8-byte Folded Reload
	sltu	$a6, $a6, $t2
	and	$a6, $t1, $a6
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	sltu	$a7, $t2, $a7
	and	$a7, $t1, $a7
	ld.d	$t2, $sp, 32                    # 8-byte Folded Reload
	add.d	$t1, $s1, $t2
	add.d	$t2, $s2, $t2
	ori	$t3, $zero, 1299
	ori	$t6, $s5, 1920
	.p2align	4, , 16
.LBB7_39:                               # %.preheader57.i38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
                                        #       Child Loop BB7_42 Depth 3
                                        #       Child Loop BB7_45 Depth 3
                                        #     Child Loop BB7_48 Depth 2
                                        #       Child Loop BB7_50 Depth 3
                                        #       Child Loop BB7_53 Depth 3
	move	$t7, $zero
	ori	$t8, $zero, 1
	move	$s3, $t1
	move	$s7, $t0
	.p2align	4, , 16
.LBB7_40:                               # %.preheader55.i40
                                        #   Parent Loop BB7_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_42 Depth 3
                                        #       Child Loop BB7_45 Depth 3
	ori	$ra, $zero, 1
	bnez	$a6, .LBB7_44
# %bb.41:                               # %vector.body165.preheader
                                        #   in Loop: Header=BB7_40 Depth=2
	ori	$s8, $s5, 1920
	.p2align	4, , 16
.LBB7_42:                               # %vector.body165
                                        #   Parent Loop BB7_39 Depth=1
                                        #     Parent Loop BB7_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$ra, $s3, $s8
	xvld	$xr1, $ra, -32
	xvld	$xr3, $ra, -40
	xvld	$xr4, $ra, -24
	xvldx	$xr5, $ra, $a2
	xvldx	$xr6, $ra, $a3
	xvfadd.d	$xr1, $xr1, $xr3
	xvfadd.d	$xr1, $xr1, $xr4
	xvfadd.d	$xr1, $xr1, $xr5
	xvfadd.d	$xr1, $xr1, $xr6
	xvfmul.d	$xr1, $xr1, $xr0
	add.d	$ra, $s7, $s8
	addi.d	$s8, $s8, 32
	xvstx	$xr1, $ra, $a2
	bnez	$s8, .LBB7_42
# %bb.43:                               #   in Loop: Header=BB7_40 Depth=2
	ori	$ra, $zero, 1297
.LBB7_44:                               # %scalar.ph163.preheader
                                        #   in Loop: Header=BB7_40 Depth=2
	alsl.d	$s8, $ra, $t7, 3
	addi.d	$ra, $ra, -1299
	.p2align	4, , 16
.LBB7_45:                               # %scalar.ph163
                                        #   Parent Loop BB7_39 Depth=1
                                        #     Parent Loop BB7_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $s1, $s8
	fldx.d	$fa1, $t5, $s4
	fldx.d	$fa3, $t5, $a4
	fldx.d	$fa4, $t5, $a1
	fldx.d	$fa5, $t5, $s6
	fldx.d	$fa6, $s1, $s8
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fadd.d	$fa1, $fa1, $fa5
	fadd.d	$fa1, $fa1, $fa6
	fmul.d	$fa1, $fa1, $fa2
	add.d	$t5, $s2, $s8
	fstx.d	$fa1, $t5, $s4
	addi.d	$ra, $ra, 1
	addi.d	$s8, $s8, 8
	bnez	$ra, .LBB7_45
# %bb.46:                               # %.loopexit176
                                        #   in Loop: Header=BB7_40 Depth=2
	addi.d	$t8, $t8, 1
	add.d	$s7, $s7, $s4
	add.d	$s3, $s3, $s4
	add.d	$t7, $t7, $s4
	bne	$t8, $t3, .LBB7_40
# %bb.47:                               # %.preheader.i47.preheader
                                        #   in Loop: Header=BB7_39 Depth=1
	move	$t7, $zero
	ori	$t8, $zero, 1
	move	$s3, $t2
	move	$s7, $t4
	.p2align	4, , 16
.LBB7_48:                               # %.preheader.i47
                                        #   Parent Loop BB7_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_50 Depth 3
                                        #       Child Loop BB7_53 Depth 3
	ori	$ra, $zero, 1
	bnez	$a7, .LBB7_52
# %bb.49:                               # %vector.body144.preheader
                                        #   in Loop: Header=BB7_48 Depth=2
	move	$s8, $t6
	.p2align	4, , 16
.LBB7_50:                               # %vector.body144
                                        #   Parent Loop BB7_39 Depth=1
                                        #     Parent Loop BB7_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $s3, $s8
	xvld	$xr1, $t5, -32
	xvld	$xr3, $t5, -40
	xvld	$xr4, $t5, -24
	xvldx	$xr5, $t5, $a2
	xvldx	$xr6, $t5, $a3
	xvfadd.d	$xr1, $xr1, $xr3
	xvfadd.d	$xr1, $xr1, $xr4
	xvfadd.d	$xr1, $xr1, $xr5
	xvfadd.d	$xr1, $xr1, $xr6
	xvfmul.d	$xr1, $xr1, $xr0
	add.d	$t5, $s7, $s8
	addi.d	$s8, $s8, 32
	xvstx	$xr1, $t5, $a2
	bnez	$s8, .LBB7_50
# %bb.51:                               #   in Loop: Header=BB7_48 Depth=2
	ori	$ra, $zero, 1297
.LBB7_52:                               # %scalar.ph142.preheader
                                        #   in Loop: Header=BB7_48 Depth=2
	alsl.d	$s8, $ra, $t7, 3
	addi.d	$ra, $ra, -1299
	.p2align	4, , 16
.LBB7_53:                               # %scalar.ph142
                                        #   Parent Loop BB7_39 Depth=1
                                        #     Parent Loop BB7_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $s2, $s8
	fldx.d	$fa1, $t5, $s4
	fldx.d	$fa3, $t5, $a4
	fldx.d	$fa4, $t5, $a1
	fldx.d	$fa5, $t5, $s6
	fldx.d	$fa6, $s2, $s8
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fadd.d	$fa1, $fa1, $fa5
	fadd.d	$fa1, $fa1, $fa6
	fmul.d	$fa1, $fa1, $fa2
	add.d	$t5, $s1, $s8
	fstx.d	$fa1, $t5, $s4
	addi.d	$ra, $ra, 1
	addi.d	$s8, $s8, 8
	bnez	$ra, .LBB7_53
# %bb.54:                               # %.loopexit
                                        #   in Loop: Header=BB7_48 Depth=2
	addi.d	$t8, $t8, 1
	add.d	$s7, $s7, $s4
	add.d	$s3, $s3, $s4
	add.d	$t7, $t7, $s4
	bne	$t8, $t3, .LBB7_48
# %bb.55:                               #   in Loop: Header=BB7_39 Depth=1
	addi.w	$a5, $a5, 1
	ori	$t5, $zero, 500
	bne	$a5, $t5, .LBB7_39
# %bb.56:                               # %.preheader.i55.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_3)
	move	$a1, $zero
	move	$a2, $zero
	ori	$a4, $s5, 1888
	ori	$a5, $zero, 1300
	.p2align	4, , 16
.LBB7_57:                               # %.preheader.i55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_58 Depth 2
	move	$a3, $zero
	add.d	$a6, $s1, $a1
	add.d	$a7, $s0, $a1
	move	$t0, $a4
	.p2align	4, , 16
.LBB7_58:                               #   Parent Loop BB7_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a7, $t0
	fldx.d	$fa1, $t1, $s4
	add.d	$t1, $a6, $t0
	fldx.d	$fa2, $t1, $s4
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_66
# %bb.59:                               # %.critedge.i
                                        #   in Loop: Header=BB7_58 Depth=2
	addi.d	$t0, $t0, 8
	addi.w	$a3, $a3, 1
	bnez	$t0, .LBB7_58
# %bb.60:                               #   in Loop: Header=BB7_57 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a1, $a1, $s4
	bne	$a2, $a5, .LBB7_57
# %bb.61:                               # %check_FP.exit
	ori	$a0, $a0, 321
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s7, $zero
	move	$s8, $zero
	stx.b	$zero, $a0, $s6
	addi.d	$a0, $a0, 7
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s5, $s5, 1888
	ori	$s6, $zero, 3
.LBB7_62:                               # %.preheader.i59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_63 Depth 2
	add.d	$a0, $s1, $s7
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s5
	.p2align	4, , 16
.LBB7_63:                               #   Parent Loop BB7_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.d	$a3, $a3, 10400
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
	bnez	$a2, .LBB7_63
# %bb.64:                               #   in Loop: Header=BB7_62 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	add.d	$s7, $s7, $s4
	ori	$a0, $zero, 1300
	bne	$s8, $a0, .LBB7_62
# %bb.65:                               # %print_array.exit
	move	$a0, $s3
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
	b	.LBB7_67
.LBB7_66:                               # %check_FP.exit.thread
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
.LBB7_67:
	addi.d	$sp, $fp, -320
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB7_68:
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
