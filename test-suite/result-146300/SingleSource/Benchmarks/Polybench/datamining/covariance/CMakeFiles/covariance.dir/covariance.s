	.file	"covariance.c"
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
	.dword	0x4059000000000000              # double 100
.LCPI7_2:
	.dword	0x4058c00000000000              # double 99
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 160
	bstrins.d	$sp, $zero, 4, 0
	st.d	$zero, $sp, 64
	lu12i.w	$a0, 15
	ori	$a2, $a0, 2560
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 64
	beqz	$s0, .LBB7_31
# %bb.1:
	bnez	$a0, .LBB7_31
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 64
	lu12i.w	$a0, 12
	ori	$a2, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 64
	beqz	$s1, .LBB7_31
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_31
# %bb.4:                                # %polybench_alloc_data.exit13
	st.d	$zero, $sp, 64
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 64
	ori	$a2, $zero, 640
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 64
	beqz	$s2, .LBB7_31
# %bb.5:                                # %polybench_alloc_data.exit13
	bnez	$a0, .LBB7_31
# %bb.6:                                # %polybench_alloc_data.exit15
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI7_0)
	ori	$a1, $zero, 0
	lu32i.d	$a1, 262144
	lu52i.d	$a1, $a1, 1029
	vreplgr2vr.d	$vr1, $a1
	ori	$a1, $zero, 640
	ori	$a2, $zero, 100
	move	$a3, $s0
	.p2align	4, , 16
.LBB7_7:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
	move	$a4, $zero
	vreplgr2vr.d	$vr2, $a0
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
	vext2xv.du.wu	$xr5, $xr5
	xvffint.d.lu	$xr5, $xr5
	xvst	$xr5, $sp, 0
	vld	$vr5, $sp, 0
	vext2xv.du.wu	$xr4, $xr4
	xvffint.d.lu	$xr4, $xr4
	xvst	$xr4, $sp, 32
	vld	$vr4, $sp, 32
	vfdiv.d	$vr5, $vr5, $vr1
	vfdiv.d	$vr4, $vr4, $vr1
	add.d	$a5, $a3, $a4
	vstx	$vr5, $a3, $a4
	vst	$vr4, $a5, 16
	addi.d	$a4, $a4, 32
	vaddi.du	$vr3, $vr3, 4
	bne	$a4, $a1, .LBB7_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB7_7 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 640
	bne	$a0, $a2, .LBB7_7
# %bb.10:                               # %init_array.exit.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_1)
	move	$a0, $zero
	movgr2fr.d	$fa1, $zero
	ori	$a1, $zero, 80
	move	$a2, $s0
	.p2align	4, , 16
.LBB7_11:                               # %init_array.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	alsl.d	$a3, $a0, $s2, 3
	slli.d	$a4, $a0, 3
	stx.d	$zero, $s2, $a4
	ori	$a4, $zero, 100
	move	$a5, $a2
	fmov.d	$fa2, $fa1
	.p2align	4, , 16
.LBB7_12:                               #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $a5, 0
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 640
	bnez	$a4, .LBB7_12
# %bb.13:                               #   in Loop: Header=BB7_11 Depth=1
	fdiv.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a3, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$a0, $a1, .LBB7_11
# %bb.14:                               # %.preheader65.i.preheader
	move	$a0, $zero
	addu16i.d	$a1, $s0, 1
	addi.d	$a1, $a1, -1536
	addi.d	$a2, $s2, 640
	sltu	$a2, $s0, $a2
	sltu	$a1, $s2, $a1
	and	$a1, $a2, $a1
	ori	$a2, $zero, 640
	ori	$a3, $zero, 100
	move	$a4, $s0
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_15:                               # %vector.body31
                                        #   in Loop: Header=BB7_17 Depth=1
	xvld	$xr0, $s2, 0
	xvld	$xr1, $s2, 32
	alsl.d	$a5, $a0, $a0, 2
	slli.d	$a6, $a5, 7
	add.d	$a5, $s0, $a6
	xvldx	$xr2, $s0, $a6
	xvld	$xr3, $a5, 32
	xvfsub.d	$xr0, $xr2, $xr0
	xvfsub.d	$xr1, $xr3, $xr1
	xvstx	$xr0, $s0, $a6
	xvst	$xr1, $a5, 32
	xvld	$xr0, $s2, 64
	xvld	$xr1, $s2, 96
	xvld	$xr2, $a5, 64
	xvld	$xr3, $a5, 96
	xvfsub.d	$xr0, $xr2, $xr0
	xvfsub.d	$xr1, $xr3, $xr1
	xvst	$xr0, $a5, 64
	xvst	$xr1, $a5, 96
	xvld	$xr0, $s2, 128
	xvld	$xr1, $s2, 160
	xvld	$xr2, $a5, 128
	xvld	$xr3, $a5, 160
	xvfsub.d	$xr0, $xr2, $xr0
	xvfsub.d	$xr1, $xr3, $xr1
	xvst	$xr0, $a5, 128
	xvst	$xr1, $a5, 160
	xvld	$xr0, $s2, 192
	xvld	$xr1, $s2, 224
	xvld	$xr2, $a5, 192
	xvld	$xr3, $a5, 224
	xvfsub.d	$xr0, $xr2, $xr0
	xvfsub.d	$xr1, $xr3, $xr1
	xvst	$xr0, $a5, 192
	xvst	$xr1, $a5, 224
	xvld	$xr0, $s2, 256
	xvld	$xr1, $s2, 288
	xvld	$xr2, $a5, 256
	xvld	$xr3, $a5, 288
	xvfsub.d	$xr0, $xr2, $xr0
	xvfsub.d	$xr1, $xr3, $xr1
	xvst	$xr0, $a5, 256
	xvst	$xr1, $a5, 288
	xvld	$xr0, $s2, 320
	xvld	$xr1, $s2, 352
	xvld	$xr2, $a5, 320
	xvld	$xr3, $a5, 352
	xvfsub.d	$xr0, $xr2, $xr0
	xvfsub.d	$xr1, $xr3, $xr1
	xvst	$xr0, $a5, 320
	xvst	$xr1, $a5, 352
	xvld	$xr0, $s2, 384
	xvld	$xr1, $s2, 416
	xvld	$xr2, $a5, 384
	xvld	$xr3, $a5, 416
	xvfsub.d	$xr0, $xr2, $xr0
	xvfsub.d	$xr1, $xr3, $xr1
	xvst	$xr0, $a5, 384
	xvst	$xr1, $a5, 416
	xvld	$xr0, $s2, 448
	xvld	$xr1, $s2, 480
	xvld	$xr2, $a5, 448
	xvld	$xr3, $a5, 480
	xvfsub.d	$xr0, $xr2, $xr0
	xvfsub.d	$xr1, $xr3, $xr1
	xvst	$xr0, $a5, 448
	xvst	$xr1, $a5, 480
	xvld	$xr0, $s2, 512
	xvld	$xr1, $s2, 544
	xvld	$xr2, $a5, 512
	xvld	$xr3, $a5, 544
	xvfsub.d	$xr0, $xr2, $xr0
	xvfsub.d	$xr1, $xr3, $xr1
	xvst	$xr0, $a5, 512
	xvst	$xr1, $a5, 544
	xvld	$xr0, $s2, 576
	xvld	$xr1, $s2, 608
	xvld	$xr2, $a5, 576
	xvld	$xr3, $a5, 608
	xvfsub.d	$xr0, $xr2, $xr0
	xvfsub.d	$xr1, $xr3, $xr1
	xvst	$xr0, $a5, 576
	xvst	$xr1, $a5, 608
.LBB7_16:                               # %middle.block37
                                        #   in Loop: Header=BB7_17 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 640
	beq	$a0, $a3, .LBB7_20
.LBB7_17:                               # %vector.memcheck
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
	beqz	$a1, .LBB7_15
# %bb.18:                               # %scalar.ph29.preheader
                                        #   in Loop: Header=BB7_17 Depth=1
	move	$a5, $zero
	.p2align	4, , 16
.LBB7_19:                               # %scalar.ph29
                                        #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $s2, $a5
	fldx.d	$fa1, $a4, $a5
	fsub.d	$fa0, $fa1, $fa0
	fstx.d	$fa0, $a4, $a5
	addi.d	$a5, $a5, 8
	bne	$a5, $a2, .LBB7_19
	b	.LBB7_16
.LBB7_20:                               # %.preheader.i19.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_2)
	move	$a0, $zero
	movgr2fr.d	$fa1, $zero
	ori	$a1, $zero, 80
	move	$a2, $s0
	.p2align	4, , 16
.LBB7_21:                               # %.preheader.i19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
                                        #       Child Loop BB7_23 Depth 3
	alsl.d	$a3, $a0, $a0, 2
	slli.d	$a3, $a3, 7
	add.d	$a3, $s1, $a3
	slli.d	$a4, $a0, 3
	move	$a5, $a2
	move	$a6, $a0
	.p2align	4, , 16
.LBB7_22:                               #   Parent Loop BB7_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_23 Depth 3
	alsl.d	$a7, $a6, $a3, 3
	slli.d	$t0, $a6, 3
	stx.d	$zero, $a3, $t0
	ori	$t0, $zero, 100
	move	$t1, $a2
	move	$t2, $a5
	fmov.d	$fa2, $fa1
	.p2align	4, , 16
.LBB7_23:                               #   Parent Loop BB7_21 Depth=1
                                        #     Parent Loop BB7_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa3, $t1, 0
	fld.d	$fa4, $t2, 0
	fmul.d	$fa3, $fa3, $fa4
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$t2, $t2, 640
	addi.d	$t1, $t1, 640
	bnez	$t0, .LBB7_23
# %bb.24:                               #   in Loop: Header=BB7_22 Depth=2
	fdiv.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a7, 0
	alsl.d	$a7, $a6, $a6, 2
	slli.d	$a7, $a7, 7
	add.d	$a7, $s1, $a7
	fstx.d	$fa2, $a7, $a4
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	bne	$a6, $a1, .LBB7_22
# %bb.25:                               #   in Loop: Header=BB7_21 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$a0, $a1, .LBB7_21
# %bb.26:                               # %kernel_covariance.exit
	ori	$a0, $zero, 1281
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s4, $zero
	move	$s5, $zero
	st.b	$zero, $a0, 1280
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s6, $a0, %got_pc_lo12(stderr)
	ori	$s7, $zero, 3
	ori	$s8, $zero, 1280
.LBB7_27:                               # %.preheader.i20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
	move	$a0, $zero
	move	$a1, $s4
	.p2align	4, , 16
.LBB7_28:                               #   Parent Loop BB7_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a2, $s1, $a1
	srli.d	$a3, $a2, 8
	srli.d	$a4, $a2, 16
	srli.d	$a5, $a2, 24
	srli.d	$a6, $a2, 32
	srli.d	$a7, $a2, 40
	srli.d	$t0, $a2, 48
	srli.d	$t1, $a2, 56
	bstrins.d	$a2, $s7, 63, 4
	add.d	$t2, $s3, $a0
	stx.b	$a2, $s3, $a0
	st.b	$a2, $t2, 1
	bstrins.d	$a3, $s7, 63, 4
	st.b	$a3, $t2, 2
	st.b	$a3, $t2, 3
	bstrins.d	$a4, $s7, 63, 4
	st.b	$a4, $t2, 4
	st.b	$a4, $t2, 5
	bstrins.d	$a5, $s7, 63, 4
	st.b	$a5, $t2, 6
	st.b	$a5, $t2, 7
	bstrins.d	$a6, $s7, 63, 4
	st.b	$a6, $t2, 8
	st.b	$a6, $t2, 9
	bstrins.d	$a7, $s7, 63, 4
	st.b	$a7, $t2, 10
	st.b	$a7, $t2, 11
	bstrins.d	$t0, $s7, 63, 4
	st.b	$t0, $t2, 12
	st.b	$t0, $t2, 13
	bstrins.d	$t1, $s7, 63, 4
	st.b	$t1, $t2, 14
	st.b	$t1, $t2, 15
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 8
	bne	$a0, $s8, .LBB7_28
# %bb.29:                               #   in Loop: Header=BB7_27 Depth=1
	ld.d	$a1, $s6, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 640
	ori	$a0, $zero, 80
	bne	$s5, $a0, .LBB7_27
# %bb.30:                               # %print_array.exit
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
	addi.d	$sp, $fp, -160
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB7_31:
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
