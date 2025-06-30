	.file	"symm.c"
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
	.dword	0x404e000000000000              # double 60
.LCPI7_3:
	.dword	0x3ff3333333333333              # double 1.2
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI7_2:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
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
	lu12i.w	$a0, 9
	ori	$s2, $a0, 1536
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 64
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 64
	beqz	$s0, .LBB7_45
# %bb.1:
	bnez	$a0, .LBB7_45
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 64
	lu12i.w	$a0, 7
	ori	$s3, $a0, 128
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 64
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 64
	beqz	$s1, .LBB7_45
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_45
# %bb.4:                                # %polybench_alloc_data.exit16
	st.d	$zero, $sp, 64
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 64
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 64
	beqz	$s2, .LBB7_45
# %bb.5:                                # %polybench_alloc_data.exit16
	bnez	$a0, .LBB7_45
# %bb.6:                                # %polybench_alloc_data.exit18
	move	$a1, $zero
	move	$a2, $zero
	sub.d	$a3, $s2, $s0
	ori	$a4, $zero, 80
	ori	$a5, $zero, 15
	lu12i.w	$a0, 335544
	ori	$a0, $a0, 1311
	ori	$a6, $zero, 100
	pcalau12i	$a7, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a7, %pc_lo12(.LCPI7_1)
	ori	$a7, $zero, 640
	ori	$t0, $zero, 60
	pcalau12i	$t1, %pc_hi20(.LCPI7_0)
	vld	$vr1, $t1, %pc_lo12(.LCPI7_0)
	ori	$t1, $zero, 0
	lu32i.d	$t1, -131072
	lu52i.d	$t1, $t1, 1028
	vreplgr2vr.d	$vr2, $t1
	move	$t1, $s0
	move	$t2, $s2
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %middle.block
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$t2, $t2, 640
	addi.d	$t1, $t1, 640
	addi.w	$a4, $a4, 1
	addi.w	$a1, $a1, 1
	beq	$a2, $t0, .LBB7_13
.LBB7_8:                                # %.preheader45.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #     Child Loop BB7_10 Depth 2
	move	$t3, $zero
	bltu	$a5, $a3, .LBB7_11
# %bb.9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_8 Depth=1
	move	$t4, $a1
	move	$t5, $a4
	.p2align	4, , 16
.LBB7_10:                               # %scalar.ph
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t6, $t5, 31, 0
	mul.d	$t6, $t6, $a0
	srli.d	$t6, $t6, 37
	mul.d	$t6, $t6, $a6
	sub.d	$t6, $t5, $t6
	bstrpick.d	$t6, $t6, 31, 0
	bstrpick.d	$t7, $t4, 31, 0
	mul.d	$t7, $t7, $a0
	srli.d	$t7, $t7, 37
	mul.d	$t7, $t7, $a6
	sub.d	$t7, $t4, $t7
	bstrpick.d	$t7, $t7, 31, 0
	movgr2fr.d	$fa3, $t7
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fstx.d	$fa3, $t1, $t3
	movgr2fr.d	$fa3, $t6
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fstx.d	$fa3, $t2, $t3
	addi.w	$t5, $t5, -1
	addi.d	$t3, $t3, 8
	addi.w	$t4, $t4, 1
	bne	$t3, $a7, .LBB7_10
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_11:                               # %vector.ph
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$t4, $a2, 80
	vreplgr2vr.d	$vr3, $a2
	vreplgr2vr.d	$vr4, $t4
	vori.b	$vr5, $vr1, 0
	.p2align	4, , 16
.LBB7_12:                               # %vector.body
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vadd.d	$vr6, $vr5, $vr3
	vpickve2gr.w	$t4, $vr6, 0
	mod.wu	$t4, $t4, $a6
	vinsgr2vr.w	$vr7, $t4, 0
	vpickve2gr.w	$t4, $vr6, 2
	mod.wu	$t4, $t4, $a6
	vinsgr2vr.w	$vr6, $t4, 0
	vpackev.w	$vr6, $vr6, $vr7
	vext2xv.du.wu	$xr6, $xr6
	xvffint.d.lu	$xr6, $xr6
	xvst	$xr6, $sp, 0
	vld	$vr6, $sp, 0
	vfdiv.d	$vr6, $vr6, $vr2
	vstx	$vr6, $t1, $t3
	vsub.d	$vr6, $vr4, $vr5
	vpickve2gr.w	$t4, $vr6, 0
	mod.wu	$t4, $t4, $a6
	vinsgr2vr.w	$vr7, $t4, 0
	vpickve2gr.w	$t4, $vr6, 2
	mod.wu	$t4, $t4, $a6
	vinsgr2vr.w	$vr6, $t4, 0
	vpackev.w	$vr6, $vr6, $vr7
	vext2xv.du.wu	$xr6, $xr6
	xvffint.d.lu	$xr6, $xr6
	xvst	$xr6, $sp, 32
	vld	$vr6, $sp, 32
	vfdiv.d	$vr6, $vr6, $vr2
	vstx	$vr6, $t2, $t3
	addi.d	$t3, $t3, 16
	vaddi.du	$vr5, $vr5, 2
	bne	$t3, $a7, .LBB7_12
	b	.LBB7_7
.LBB7_13:                               # %.preheader.i.preheader
	move	$a1, $zero
	move	$a2, $zero
	addi.d	$a3, $s1, 40
	ori	$a4, $zero, 1
	addi.w	$a5, $zero, -8
	ori	$a6, $zero, 59
	ori	$a7, $zero, 4
	ori	$t0, $zero, 100
	ori	$t1, $zero, 58
	ori	$t2, $zero, 8
	ori	$t3, $zero, 0
	lu32i.d	$t3, -51200
	lu52i.d	$t3, $t3, -1016
	ori	$t4, $zero, 480
	ori	$t5, $zero, 60
	vrepli.w	$vr1, 100
	ori	$t6, $zero, 59
	move	$t7, $s1
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_14:                               # %.loopexit.i
                                        #   in Loop: Header=BB7_15 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a4, $a4, 1
	addi.d	$t7, $t7, 480
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, 1
	addi.d	$t6, $t6, -1
	addi.d	$a3, $a3, 488
	beq	$a2, $t5, .LBB7_29
.LBB7_15:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
                                        #     Child Loop BB7_21 Depth 2
                                        #     Child Loop BB7_25 Depth 2
                                        #     Child Loop BB7_28 Depth 2
	bgeu	$a4, $a7, .LBB7_17
# %bb.16:                               #   in Loop: Header=BB7_15 Depth=1
	move	$t8, $zero
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_17:                               # %vector.ph44
                                        #   in Loop: Header=BB7_15 Depth=1
	move	$s4, $a4
	bstrins.d	$s4, $zero, 1, 0
	pcalau12i	$t8, %pc_hi20(.LCPI7_2)
	xvld	$xr2, $t8, %pc_lo12(.LCPI7_2)
	bstrpick.d	$t8, $a4, 62, 2
	slli.d	$t8, $t8, 2
	xvreplgr2vr.d	$xr3, $a2
	move	$s5, $t7
	.p2align	4, , 16
.LBB7_18:                               # %vector.body49
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvadd.d	$xr4, $xr2, $xr3
	xvpickve2gr.d	$s6, $xr4, 0
	vinsgr2vr.w	$vr5, $s6, 0
	xvpickve2gr.d	$s6, $xr4, 1
	vinsgr2vr.w	$vr5, $s6, 1
	xvpickve2gr.d	$s6, $xr4, 2
	vinsgr2vr.w	$vr5, $s6, 2
	xvpickve2gr.d	$s6, $xr4, 3
	vinsgr2vr.w	$vr5, $s6, 3
	vreplgr2vr.w	$vr4, $a0
	vmuh.wu	$vr4, $vr5, $vr4
	vsrli.w	$vr4, $vr4, 5
	vmsub.w	$vr5, $vr4, $vr1
	vext2xv.du.wu	$xr4, $xr5
	xvffint.d.lu	$xr4, $xr4
	ori	$s6, $zero, 0
	lu32i.d	$s6, -131072
	lu52i.d	$s6, $s6, 1028
	xvreplgr2vr.d	$xr5, $s6
	xvfdiv.d	$xr4, $xr4, $xr5
	xvst	$xr4, $s5, 0
	xvaddi.du	$xr2, $xr2, 4
	addi.d	$s4, $s4, -4
	addi.d	$s5, $s5, 32
	bnez	$s4, .LBB7_18
# %bb.19:                               # %middle.block54
                                        #   in Loop: Header=BB7_15 Depth=1
	beq	$a4, $t8, .LBB7_22
.LBB7_20:                               # %scalar.ph42.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	slli.d	$s4, $t8, 3
	add.w	$t8, $a1, $t8
	.p2align	4, , 16
.LBB7_21:                               # %scalar.ph42
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$s5, $t8, 31, 0
	mul.d	$s5, $s5, $a0
	srli.d	$s5, $s5, 37
	mul.d	$s5, $s5, $t0
	sub.d	$s5, $t8, $s5
	bstrpick.d	$s5, $s5, 31, 0
	movgr2fr.d	$fa2, $s5
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $t7, $s4
	addi.d	$s4, $s4, 8
	add.d	$s5, $a5, $s4
	addi.w	$t8, $t8, 1
	bnez	$s5, .LBB7_21
.LBB7_22:                               # %.loopexit
                                        #   in Loop: Header=BB7_15 Depth=1
	bltu	$t1, $a2, .LBB7_14
# %bb.23:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	sub.d	$t8, $a6, $a2
	move	$s4, $a4
	bltu	$t8, $t2, .LBB7_27
# %bb.24:                               # %vector.ph36
                                        #   in Loop: Header=BB7_15 Depth=1
	move	$s6, $t6
	bstrins.d	$s6, $zero, 2, 0
	move	$s5, $t8
	bstrins.d	$s5, $zero, 2, 0
	add.d	$s4, $a4, $s5
	move	$s7, $a3
	.p2align	4, , 16
.LBB7_25:                               # %vector.body37
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvreplgr2vr.d	$xr2, $t3
	xvst	$xr2, $s7, -32
	xvst	$xr2, $s7, 0
	addi.d	$s6, $s6, -8
	addi.d	$s7, $s7, 64
	bnez	$s6, .LBB7_25
# %bb.26:                               # %middle.block40
                                        #   in Loop: Header=BB7_15 Depth=1
	beq	$t8, $s5, .LBB7_14
.LBB7_27:                               # %.lr.ph.i.preheader78
                                        #   in Loop: Header=BB7_15 Depth=1
	slli.d	$t8, $s4, 3
	.p2align	4, , 16
.LBB7_28:                               # %.lr.ph.i
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.d	$t3, $t7, $t8
	addi.d	$t8, $t8, 8
	bne	$t8, $t4, .LBB7_28
	b	.LBB7_14
.LBB7_29:                               # %.preheader44.i.preheader
	move	$a0, $zero
	addi.d	$a1, $s0, 640
	addi.d	$a2, $s2, 640
	add.d	$a3, $s1, $s3
	sltu	$a2, $s0, $a2
	sltu	$a4, $s2, $a1
	and	$a2, $a2, $a4
	sltu	$a3, $s0, $a3
	sltu	$a1, $s1, $a1
	and	$a1, $a3, $a1
	or	$a1, $a2, $a1
	ori	$a2, $zero, 480
	pcalau12i	$a3, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI7_3)
	vldi	$vr1, -904
	movgr2fr.d	$fa2, $zero
	ori	$a3, $zero, 640
	lu12i.w	$a4, 209715
	ori	$a4, $a4, 819
	lu32i.d	$a4, 209715
	lu52i.d	$a4, $a4, 1023
	xvreplgr2vr.d	$xr3, $a4
	ori	$a4, $zero, 0
	lu32i.d	$a4, -524288
	lu52i.d	$a4, $a4, 1023
	xvreplgr2vr.d	$xr4, $a4
	xvrepli.b	$xr5, 0
	ori	$a4, $zero, 60
	ori	$a5, $zero, 80
	move	$a6, $s1
	b	.LBB7_32
.LBB7_30:                               # %vector.body65
                                        #   in Loop: Header=BB7_32 Depth=1
	xvld	$xr6, $s0, 0
	xvld	$xr7, $s0, 32
	xvfmul.d	$xr6, $xr6, $xr3
	xvld	$xr8, $s2, 0
	xvld	$xr9, $s2, 32
	fld.d	$ft2, $a7, 0
	xvfmul.d	$xr7, $xr7, $xr3
	xvfmul.d	$xr8, $xr8, $xr4
	xvfmul.d	$xr9, $xr9, $xr4
	xvreplve0.d	$xr10, $xr10
	xvfmul.d	$xr8, $xr8, $xr10
	xvfmul.d	$xr9, $xr9, $xr10
	xvfadd.d	$xr6, $xr6, $xr8
	xvfadd.d	$xr7, $xr7, $xr9
	xvfadd.d	$xr6, $xr6, $xr5
	xvfadd.d	$xr7, $xr7, $xr5
	xvst	$xr6, $s0, 0
	xvst	$xr7, $s0, 32
	xvld	$xr6, $s0, 64
	xvld	$xr7, $s0, 96
	xvld	$xr8, $s2, 64
	xvld	$xr9, $s2, 96
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr7, $xr7, $xr3
	xvfmul.d	$xr8, $xr8, $xr4
	xvfmul.d	$xr9, $xr9, $xr4
	xvfmul.d	$xr8, $xr8, $xr10
	xvfmul.d	$xr9, $xr9, $xr10
	xvfadd.d	$xr6, $xr6, $xr8
	xvfadd.d	$xr7, $xr7, $xr9
	xvfadd.d	$xr6, $xr6, $xr5
	xvfadd.d	$xr7, $xr7, $xr5
	xvst	$xr6, $s0, 64
	xvst	$xr7, $s0, 96
	xvld	$xr6, $s0, 128
	xvld	$xr7, $s0, 160
	xvld	$xr8, $s2, 128
	xvld	$xr9, $s2, 160
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr7, $xr7, $xr3
	xvfmul.d	$xr8, $xr8, $xr4
	xvfmul.d	$xr9, $xr9, $xr4
	xvfmul.d	$xr8, $xr8, $xr10
	xvfmul.d	$xr9, $xr9, $xr10
	xvfadd.d	$xr6, $xr6, $xr8
	xvfadd.d	$xr7, $xr7, $xr9
	xvfadd.d	$xr6, $xr6, $xr5
	xvfadd.d	$xr7, $xr7, $xr5
	xvld	$xr8, $s0, 192
	xvst	$xr6, $s0, 128
	xvst	$xr7, $s0, 160
	xvld	$xr6, $s0, 224
	xvfmul.d	$xr7, $xr8, $xr3
	xvld	$xr8, $s2, 192
	xvld	$xr9, $s2, 224
	fld.d	$ft2, $a7, 0
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr8, $xr8, $xr4
	xvfmul.d	$xr9, $xr9, $xr4
	xvreplve0.d	$xr10, $xr10
	xvfmul.d	$xr8, $xr8, $xr10
	xvfmul.d	$xr9, $xr9, $xr10
	xvfadd.d	$xr7, $xr7, $xr8
	xvfadd.d	$xr6, $xr6, $xr9
	xvfadd.d	$xr7, $xr7, $xr5
	xvfadd.d	$xr6, $xr6, $xr5
	xvld	$xr8, $s0, 256
	xvst	$xr7, $s0, 192
	xvst	$xr6, $s0, 224
	xvld	$xr6, $s0, 288
	xvfmul.d	$xr7, $xr8, $xr3
	xvld	$xr8, $s2, 256
	xvld	$xr9, $s2, 288
	fld.d	$ft2, $a7, 0
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr8, $xr8, $xr4
	xvfmul.d	$xr9, $xr9, $xr4
	xvreplve0.d	$xr10, $xr10
	xvfmul.d	$xr8, $xr8, $xr10
	xvfmul.d	$xr9, $xr9, $xr10
	xvfadd.d	$xr7, $xr7, $xr8
	xvfadd.d	$xr6, $xr6, $xr9
	xvfadd.d	$xr7, $xr7, $xr5
	xvfadd.d	$xr6, $xr6, $xr5
	xvld	$xr8, $s0, 320
	xvst	$xr7, $s0, 256
	xvst	$xr6, $s0, 288
	xvld	$xr6, $s0, 352
	xvfmul.d	$xr7, $xr8, $xr3
	xvld	$xr8, $s2, 320
	xvld	$xr9, $s2, 352
	fld.d	$ft2, $a7, 0
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr8, $xr8, $xr4
	xvfmul.d	$xr9, $xr9, $xr4
	xvreplve0.d	$xr10, $xr10
	xvfmul.d	$xr8, $xr8, $xr10
	xvfmul.d	$xr9, $xr9, $xr10
	xvfadd.d	$xr7, $xr7, $xr8
	xvfadd.d	$xr6, $xr6, $xr9
	xvfadd.d	$xr7, $xr7, $xr5
	xvfadd.d	$xr6, $xr6, $xr5
	xvld	$xr8, $s0, 384
	xvst	$xr7, $s0, 320
	xvst	$xr6, $s0, 352
	xvld	$xr6, $s0, 416
	xvfmul.d	$xr7, $xr8, $xr3
	xvld	$xr8, $s2, 384
	xvld	$xr9, $s2, 416
	fld.d	$ft2, $a7, 0
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr8, $xr8, $xr4
	xvfmul.d	$xr9, $xr9, $xr4
	xvreplve0.d	$xr10, $xr10
	xvfmul.d	$xr8, $xr8, $xr10
	xvfmul.d	$xr9, $xr9, $xr10
	xvfadd.d	$xr7, $xr7, $xr8
	xvfadd.d	$xr6, $xr6, $xr9
	xvfadd.d	$xr7, $xr7, $xr5
	xvfadd.d	$xr6, $xr6, $xr5
	xvld	$xr8, $s0, 448
	xvst	$xr7, $s0, 384
	xvst	$xr6, $s0, 416
	xvld	$xr6, $s0, 480
	xvfmul.d	$xr7, $xr8, $xr3
	xvld	$xr8, $s2, 448
	xvld	$xr9, $s2, 480
	fld.d	$ft2, $a7, 0
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr8, $xr8, $xr4
	xvfmul.d	$xr9, $xr9, $xr4
	xvreplve0.d	$xr10, $xr10
	xvfmul.d	$xr8, $xr8, $xr10
	xvfmul.d	$xr9, $xr9, $xr10
	xvfadd.d	$xr7, $xr7, $xr8
	xvfadd.d	$xr6, $xr6, $xr9
	xvfadd.d	$xr7, $xr7, $xr5
	xvfadd.d	$xr6, $xr6, $xr5
	xvld	$xr8, $s0, 512
	xvst	$xr7, $s0, 448
	xvst	$xr6, $s0, 480
	xvld	$xr6, $s0, 544
	xvfmul.d	$xr7, $xr8, $xr3
	xvld	$xr8, $s2, 512
	xvld	$xr9, $s2, 544
	fld.d	$ft2, $a7, 0
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr8, $xr8, $xr4
	xvfmul.d	$xr9, $xr9, $xr4
	xvreplve0.d	$xr10, $xr10
	xvfmul.d	$xr8, $xr8, $xr10
	xvfmul.d	$xr9, $xr9, $xr10
	xvfadd.d	$xr7, $xr7, $xr8
	xvfadd.d	$xr6, $xr6, $xr9
	xvfadd.d	$xr7, $xr7, $xr5
	xvfadd.d	$xr6, $xr6, $xr5
	xvld	$xr8, $s0, 576
	xvst	$xr7, $s0, 512
	xvst	$xr6, $s0, 544
	xvld	$xr6, $s0, 608
	xvfmul.d	$xr7, $xr8, $xr3
	xvld	$xr8, $s2, 576
	xvld	$xr9, $s2, 608
	fld.d	$ft2, $a7, 0
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr8, $xr8, $xr4
	xvfmul.d	$xr9, $xr9, $xr4
	xvreplve0.d	$xr10, $xr10
	xvfmul.d	$xr8, $xr8, $xr10
	xvfmul.d	$xr9, $xr9, $xr10
	xvfadd.d	$xr7, $xr7, $xr8
	xvfadd.d	$xr6, $xr6, $xr9
	xvfadd.d	$xr7, $xr7, $xr5
	xvfadd.d	$xr6, $xr6, $xr5
	xvst	$xr7, $s0, 576
	xvst	$xr6, $s0, 608
	.p2align	4, , 16
.LBB7_31:                               # %.split.us.i
                                        #   in Loop: Header=BB7_32 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a6, $a6, 480
	beq	$a0, $a4, .LBB7_40
.LBB7_32:                               # %.preheader44.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_34 Depth 2
                                        #       Child Loop BB7_35 Depth 3
                                        #     Child Loop BB7_39 Depth 2
	mul.d	$a7, $a0, $a2
	add.d	$a7, $s1, $a7
	alsl.d	$a7, $a0, $a7, 3
	beqz	$a0, .LBB7_37
# %bb.33:                               # %.preheader.us.i.preheader
                                        #   in Loop: Header=BB7_32 Depth=1
	move	$t0, $zero
	alsl.d	$t1, $a0, $a0, 2
	slli.d	$t1, $t1, 7
	add.d	$t2, $s2, $t1
	move	$t3, $s0
	move	$t4, $s2
	.p2align	4, , 16
.LBB7_34:                               # %.preheader.us.i
                                        #   Parent Loop BB7_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_35 Depth 3
	alsl.d	$t5, $t0, $t2, 3
	move	$t6, $a6
	move	$t7, $t3
	move	$t8, $t4
	move	$s3, $a0
	fmov.d	$fa6, $fa2
	.p2align	4, , 16
.LBB7_35:                               #   Parent Loop BB7_32 Depth=1
                                        #     Parent Loop BB7_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa7, $t5, 0
	fld.d	$ft0, $t6, 0
	fld.d	$ft1, $t7, 0
	fmul.d	$fa7, $fa7, $fa1
	fmul.d	$fa7, $fa7, $ft0
	fadd.d	$fa7, $ft1, $fa7
	fst.d	$fa7, $t7, 0
	fld.d	$fa7, $t8, 0
	fld.d	$ft0, $t6, 0
	fmul.d	$fa7, $fa7, $ft0
	fadd.d	$fa6, $fa6, $fa7
	addi.d	$s3, $s3, -1
	addi.d	$t8, $t8, 640
	addi.d	$t7, $t7, 640
	addi.d	$t6, $t6, 8
	bnez	$s3, .LBB7_35
# %bb.36:                               # %._crit_edge.us.i
                                        #   in Loop: Header=BB7_34 Depth=2
	add.d	$t6, $s0, $t1
	slli.d	$t7, $t0, 3
	fldx.d	$fa7, $t6, $t7
	fld.d	$ft0, $t5, 0
	fld.d	$ft1, $a7, 0
	fmul.d	$fa7, $fa7, $fa0
	fmul.d	$ft0, $ft0, $fa1
	fmul.d	$ft0, $ft0, $ft1
	fadd.d	$fa7, $fa7, $ft0
	fmul.d	$fa6, $fa6, $fa1
	fadd.d	$fa6, $fa6, $fa7
	fstx.d	$fa6, $t6, $t7
	addi.d	$t0, $t0, 1
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	bne	$t0, $a5, .LBB7_34
	b	.LBB7_31
	.p2align	4, , 16
.LBB7_37:                               # %vector.memcheck57
                                        #   in Loop: Header=BB7_32 Depth=1
	beqz	$a1, .LBB7_30
# %bb.38:                               # %.preheader.i23.preheader
                                        #   in Loop: Header=BB7_32 Depth=1
	move	$t0, $zero
	.p2align	4, , 16
.LBB7_39:                               # %.preheader.i23
                                        #   Parent Loop BB7_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa6, $s0, $t0
	fldx.d	$fa7, $s2, $t0
	fld.d	$ft0, $a7, 0
	fmul.d	$fa6, $fa6, $fa0
	fmul.d	$fa7, $fa7, $fa1
	fmul.d	$fa7, $fa7, $ft0
	fadd.d	$fa6, $fa6, $fa7
	fadd.d	$fa6, $fa6, $fa2
	fstx.d	$fa6, $s0, $t0
	addi.d	$t0, $t0, 8
	bne	$t0, $a3, .LBB7_39
	b	.LBB7_31
.LBB7_40:                               # %kernel_symm.exit
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
.LBB7_41:                               # %.preheader.i24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_42 Depth 2
	move	$a0, $zero
	move	$a1, $s4
	.p2align	4, , 16
.LBB7_42:                               #   Parent Loop BB7_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a2, $s0, $a1
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
	bne	$a0, $s8, .LBB7_42
# %bb.43:                               #   in Loop: Header=BB7_41 Depth=1
	ld.d	$a1, $s6, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 640
	ori	$a0, $zero, 60
	bne	$s5, $a0, .LBB7_41
# %bb.44:                               # %print_array.exit
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
.LBB7_45:
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
