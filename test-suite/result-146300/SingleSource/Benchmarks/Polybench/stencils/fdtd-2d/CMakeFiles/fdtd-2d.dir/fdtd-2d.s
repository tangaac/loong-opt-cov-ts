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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI7_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI7_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_2:
	.dword	0x408f400000000000              # double 1000
.LCPI7_3:
	.dword	0x4092c00000000000              # double 1200
.LCPI7_4:
	.dword	0xbfe6666666666666              # double -0.69999999999999996
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 416
	bstrins.d	$sp, $zero, 4, 0
	st.d	$zero, $sp, 320
	lu12i.w	$s6, 2343
	ori	$s3, $s6, 3072
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 320
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 320
	beqz	$s0, .LBB7_93
# %bb.1:
	bnez	$a0, .LBB7_93
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 320
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 320
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	beqz	$a1, .LBB7_93
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_93
# %bb.4:                                # %polybench_alloc_data.exit40
	st.d	$zero, $sp, 320
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 320
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 320
	beqz	$s2, .LBB7_93
# %bb.5:                                # %polybench_alloc_data.exit40
	bnez	$a0, .LBB7_93
# %bb.6:                                # %polybench_alloc_data.exit42
	st.d	$zero, $sp, 320
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 320
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 320
	beqz	$s8, .LBB7_93
# %bb.7:                                # %polybench_alloc_data.exit42
	bnez	$a0, .LBB7_93
# %bb.8:                                # %polybench_alloc_data.exit44
	st.d	$zero, $sp, 320
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 320
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	beqz	$a1, .LBB7_93
# %bb.9:                                # %polybench_alloc_data.exit44
	bnez	$a0, .LBB7_93
# %bb.10:                               # %polybench_alloc_data.exit46
	st.d	$zero, $sp, 320
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 320
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 320
	beqz	$s4, .LBB7_93
# %bb.11:                               # %polybench_alloc_data.exit46
	bnez	$a0, .LBB7_93
# %bb.12:                               # %polybench_alloc_data.exit48
	st.d	$zero, $sp, 320
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 320
	ori	$a2, $zero, 4000
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 320
	beqz	$s1, .LBB7_93
# %bb.13:                               # %polybench_alloc_data.exit48
	bnez	$a0, .LBB7_93
# %bb.14:                               # %polybench_alloc_data.exit50
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI7_0)
	lu12i.w	$a0, -1
	ori	$a0, $a0, 128
	ori	$a1, $zero, 3968
	ori	$a2, $zero, 4000
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vext2xv.du.wu	$xr2, $xr0
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	add.d	$a3, $s1, $a0
	xvstx	$xr2, $a3, $a1
	xvstx	$xr1, $a3, $a2
	addi.d	$a0, $a0, 64
	vaddi.wu	$vr0, $vr0, 8
	bnez	$a0, .LBB7_15
# %bb.16:                               # %scalar.ph
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	ori	$a0, $zero, 0
	ori	$a5, $zero, 0
	lu32i.d	$a5, -65536
	lu52i.d	$a5, $a5, 1031
	stptr.d	$a5, $s1, 3968
	ori	$a5, $zero, 0
	lu32i.d	$a5, -61440
	lu52i.d	$a5, $a5, 1031
	stptr.d	$a5, $s1, 3976
	ori	$a5, $zero, 0
	lu32i.d	$a5, -57344
	lu52i.d	$a5, $a5, 1031
	stptr.d	$a5, $s1, 3984
	lu32i.d	$a0, -53248
	lu52i.d	$a0, $a0, 1031
	stptr.d	$a0, $s1, 3992
	sub.d	$a0, $t1, $s0
	sub.d	$a5, $s2, $s0
	sub.d	$a6, $s2, $t1
	sltui	$a0, $a0, 16
	sltui	$a5, $a5, 16
	or	$a0, $a0, $a5
	sltui	$a5, $a6, 16
	or	$a5, $a0, $a5
	lu12i.w	$a0, -3
	ori	$a6, $a0, 2688
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI7_2)
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI7_3)
	lu12i.w	$a0, 2
	ori	$s7, $a0, 1408
	ori	$a7, $zero, 1000
	move	$t0, $s0
	move	$t2, $s2
	pcalau12i	$t8, %pc_hi20(.LCPI7_1)
	b	.LBB7_18
	.p2align	4, , 16
.LBB7_17:                               # %middle.block111
                                        #   in Loop: Header=BB7_18 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$t2, $t2, $s7
	add.d	$t1, $t1, $s7
	add.d	$t0, $t0, $s7
	addi.w	$a3, $a3, 3
	addi.d	$a2, $a2, 1
	addi.w	$a1, $a1, 2
	beq	$a4, $a7, .LBB7_23
.LBB7_18:                               # %vector.memcheck
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_20 Depth 2
	beqz	$a5, .LBB7_21
# %bb.19:                               # %scalar.ph104.preheader
                                        #   in Loop: Header=BB7_18 Depth=1
	move	$t4, $zero
	move	$t3, $a6
	.p2align	4, , 16
.LBB7_20:                               # %scalar.ph104
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $a1, $t4
	add.d	$t6, $a3, $t4
	add.w	$t4, $a2, $t4
	bstrpick.d	$t7, $t4, 31, 0
	movgr2fr.d	$fa0, $t7
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	add.d	$t7, $t0, $t3
	fstx.d	$fa0, $t7, $s7
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa0, $t5
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa2
	add.d	$t5, $t1, $t3
	fstx.d	$fa0, $t5, $s7
	bstrpick.d	$t5, $t6, 31, 0
	movgr2fr.d	$fa0, $t5
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	add.d	$t5, $t2, $t3
	addi.d	$t3, $t3, 8
	fstx.d	$fa0, $t5, $s7
	bnez	$t3, .LBB7_20
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_21:                               # %vector.ph105
                                        #   in Loop: Header=BB7_18 Depth=1
	vld	$vr3, $t8, %pc_lo12(.LCPI7_1)
	vreplgr2vr.d	$vr0, $a4
	lu12i.w	$t3, -3
	ori	$t3, $t3, 2688
	.p2align	4, , 16
.LBB7_22:                               # %vector.body106
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 1
	vmul.d	$vr4, $vr4, $vr0
	vshuf4i.w	$vr4, $vr4, 8
	vext2xv.du.wu	$xr4, $xr4
	xvffint.d.lu	$xr4, $xr4
	xvst	$xr4, $sp, 224
	vld	$vr4, $sp, 224
	ori	$t4, $zero, 0
	lu32i.d	$t4, -49152
	lu52i.d	$t4, $t4, 1032
	vreplgr2vr.d	$vr5, $t4
	vfdiv.d	$vr4, $vr4, $vr5
	add.d	$t4, $t0, $t3
	vstx	$vr4, $t4, $s7
	vaddi.du	$vr4, $vr3, 3
	vaddi.du	$vr3, $vr3, 2
	vmul.d	$vr6, $vr3, $vr0
	vshuf4i.w	$vr6, $vr6, 8
	vext2xv.du.wu	$xr6, $xr6
	xvffint.d.lu	$xr6, $xr6
	xvst	$xr6, $sp, 256
	vld	$vr6, $sp, 256
	ori	$t4, $zero, 0
	lu32i.d	$t4, 180224
	lu52i.d	$t4, $t4, 1033
	vreplgr2vr.d	$vr7, $t4
	vfdiv.d	$vr6, $vr6, $vr7
	add.d	$t4, $t1, $t3
	vstx	$vr6, $t4, $s7
	vmul.d	$vr4, $vr4, $vr0
	vshuf4i.w	$vr4, $vr4, 8
	vext2xv.du.wu	$xr4, $xr4
	xvffint.d.lu	$xr4, $xr4
	xvst	$xr4, $sp, 288
	vld	$vr4, $sp, 288
	vfdiv.d	$vr4, $vr4, $vr5
	add.d	$t4, $t2, $t3
	addi.d	$t3, $t3, 16
	vstx	$vr4, $t4, $s7
	bnez	$t3, .LBB7_22
	b	.LBB7_17
.LBB7_23:                               # %init_array.exit
	st.d	$t8, $sp, 40                    # 8-byte Folded Spill
	move	$t4, $zero
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $t3, $s7
	lu12i.w	$a2, 2341
	ori	$a3, $a2, 1656
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	add.d	$a3, $s2, $a3
	ori	$a2, $a2, 1664
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	add.d	$a2, $s0, $a2
	ori	$a4, $s6, 3064
	st.d	$a4, $sp, 0                     # 8-byte Folded Spill
	add.d	$a4, $t3, $a4
	addi.d	$a5, $s0, 8
	add.d	$a6, $s0, $s3
	add.d	$a7, $s2, $s3
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	add.d	$t0, $t3, $s3
	sltu	$a1, $a1, $a7
	sltu	$t0, $s2, $t0
	and	$t5, $a1, $t0
	sltu	$a1, $a5, $a7
	sltu	$a5, $s2, $a6
	and	$t6, $a1, $a5
	sltu	$a1, $s2, $a2
	sltu	$a2, $s0, $a3
	and	$a1, $a1, $a2
	sltu	$a2, $s2, $a4
	sltu	$a3, $t3, $a3
	and	$a2, $a2, $a3
	or	$t7, $a1, $a2
	ori	$a1, $a0, 1440
	add.d	$a2, $t3, $a1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	add.d	$a2, $s2, $a1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a2, $s2, 40
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a2, $s0, 40
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a2, $s2, 32
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a2, $s0, 32
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a2, -3
	ori	$a2, $a2, 2688
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a2, 4
	ori	$s6, $a2, 2816
	vldi	$vr4, -800
	ori	$a6, $zero, 1000
	ori	$t8, $zero, 999
	lu12i.w	$a3, 419430
	ori	$a3, $a3, 1638
	lu32i.d	$a3, 419430
	lu52i.d	$a3, $a3, -1026
	xvreplgr2vr.d	$xr0, $a3
	lu52i.d	$a3, $zero, -1026
	xvreplgr2vr.d	$xr5, $a3
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_24:                               # %vector.ph175
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_25 Depth 2
                                        #     Child Loop BB7_28 Depth 2
                                        #       Child Loop BB7_30 Depth 3
                                        #       Child Loop BB7_29 Depth 3
                                        #     Child Loop BB7_32 Depth 2
                                        #       Child Loop BB7_34 Depth 3
                                        #       Child Loop BB7_37 Depth 3
                                        #     Child Loop BB7_40 Depth 2
                                        #       Child Loop BB7_43 Depth 3
                                        #       Child Loop BB7_46 Depth 3
	alsl.d	$a3, $t4, $s1, 3
	xvldrepl.d	$xr3, $a3, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_25:                               # %vector.body178
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a4, $t3, $a3
	xvstx	$xr3, $a4, $s7
	addi.d	$a3, $a3, 64
	xvstx	$xr3, $a4, $a1
	bnez	$a3, .LBB7_25
# %bb.26:                               # %vector.memcheck156.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	ori	$a4, $zero, 1
	move	$a5, $t3
	move	$t0, $s2
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_27:                               # %middle.block172
                                        #   in Loop: Header=BB7_28 Depth=2
	addi.d	$a4, $a4, 1
	add.d	$t2, $t2, $s7
	add.d	$t1, $t1, $s7
	add.d	$t0, $t0, $s7
	add.d	$a5, $a5, $s7
	beq	$a4, $a6, .LBB7_31
.LBB7_28:                               # %vector.memcheck156
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_30 Depth 3
                                        #       Child Loop BB7_29 Depth 3
	ori	$a3, $a0, 1376
	lu12i.w	$a7, -3
	ori	$s1, $a7, 2688
	beqz	$t5, .LBB7_30
	.p2align	4, , 16
.LBB7_29:                               # %scalar.ph161
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s3, $a5, $s1
	add.d	$s5, $t0, $s1
	fldx.d	$fa3, $s5, $s6
	fldx.d	$fa6, $s5, $s7
	fldx.d	$fa7, $s3, $s6
	fsub.d	$fa3, $fa3, $fa6
	fmadd.d	$fa3, $fa3, $fa4, $fa7
	addi.d	$s1, $s1, 8
	fstx.d	$fa3, $s3, $s6
	bnez	$s1, .LBB7_29
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_30:                               # %vector.body163
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s3, $t2, $s1
	add.d	$s5, $t1, $s1
	xvldx	$xr3, $s5, $a3
	xvldx	$xr6, $s5, $s7
	xvld	$xr7, $s5, -32
	xvldx	$xr8, $t1, $s1
	xvldx	$xr9, $s3, $a3
	xvldx	$xr10, $s3, $s7
	xvfsub.d	$xr3, $xr3, $xr7
	xvfsub.d	$xr6, $xr6, $xr8
	xvfmadd.d	$xr3, $xr3, $xr5, $xr9
	xvfmadd.d	$xr6, $xr6, $xr5, $xr10
	xvstx	$xr3, $s3, $a3
	addi.d	$s1, $s1, 64
	xvstx	$xr6, $s3, $s7
	bnez	$s1, .LBB7_30
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_31:                               # %vector.memcheck136.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$t0, $zero
	move	$t1, $zero
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_32:                               # %vector.memcheck136
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_34 Depth 3
                                        #       Child Loop BB7_37 Depth 3
	ori	$s5, $zero, 1
	ori	$a4, $a0, 1312
	ori	$a5, $a0, 1344
	bnez	$t6, .LBB7_36
# %bb.33:                               # %vector.body145.preheader
                                        #   in Loop: Header=BB7_32 Depth=2
	lu12i.w	$a7, -3
	ori	$s3, $a7, 2752
	.p2align	4, , 16
.LBB7_34:                               # %vector.body145
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s5, $t2, $s3
	add.d	$ra, $s1, $s3
	xvldx	$xr3, $ra, $a4
	xvldx	$xr6, $ra, $a5
	ori	$a7, $a0, 1304
	xvldx	$xr7, $ra, $a7
	ori	$a7, $a0, 1336
	xvldx	$xr8, $ra, $a7
	xvldx	$xr9, $s5, $a4
	xvldx	$xr10, $s5, $a5
	xvfsub.d	$xr3, $xr3, $xr7
	xvfsub.d	$xr6, $xr6, $xr8
	xvfmadd.d	$xr3, $xr3, $xr5, $xr9
	xvfmadd.d	$xr6, $xr6, $xr5, $xr10
	xvstx	$xr3, $s5, $a4
	addi.d	$s3, $s3, 64
	xvstx	$xr6, $s5, $a5
	bnez	$s3, .LBB7_34
# %bb.35:                               #   in Loop: Header=BB7_32 Depth=2
	ori	$s5, $zero, 1193
.LBB7_36:                               # %scalar.ph143.preheader
                                        #   in Loop: Header=BB7_32 Depth=2
	addi.d	$s3, $s5, -1200
	alsl.d	$s5, $s5, $t0, 3
	.p2align	4, , 16
.LBB7_37:                               # %scalar.ph143
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $s2, $s5
	fldx.d	$fa3, $s2, $s5
	fld.d	$fa6, $a7, -8
	fldx.d	$fa7, $s0, $s5
	fsub.d	$fa3, $fa3, $fa6
	fmadd.d	$fa3, $fa3, $fa4, $fa7
	fstx.d	$fa3, $s0, $s5
	addi.d	$s3, $s3, 1
	addi.d	$s5, $s5, 8
	bnez	$s3, .LBB7_37
# %bb.38:                               # %.loopexit285
                                        #   in Loop: Header=BB7_32 Depth=2
	addi.d	$t1, $t1, 1
	add.d	$s1, $s1, $s7
	add.d	$t2, $t2, $s7
	add.d	$t0, $t0, $s7
	bne	$t1, $a6, .LBB7_32
# %bb.39:                               # %vector.memcheck113.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$ra, $zero
	move	$t0, $zero
	move	$s1, $t3
	ld.d	$t2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_40:                               # %vector.memcheck113
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_43 Depth 3
                                        #       Child Loop BB7_46 Depth 3
	beqz	$t7, .LBB7_42
# %bb.41:                               #   in Loop: Header=BB7_40 Depth=2
	move	$s5, $zero
	b	.LBB7_45
	.p2align	4, , 16
.LBB7_42:                               # %vector.body122.preheader
                                        #   in Loop: Header=BB7_40 Depth=2
	lu12i.w	$a7, -3
	ori	$s3, $a7, 2752
	.p2align	4, , 16
.LBB7_43:                               # %vector.body122
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $t1, $s3
	xvldx	$xr3, $a7, $a4
	add.d	$s5, $t2, $s3
	ori	$t3, $a0, 1320
	xvldx	$xr6, $s5, $t3
	xvldx	$xr7, $s5, $a4
	ori	$t3, $a0, 1352
	xvldx	$xr8, $s5, $t3
	xvldx	$xr9, $s5, $a5
	xvfsub.d	$xr6, $xr6, $xr7
	add.d	$t3, $s1, $s3
	ori	$s5, $a2, 2752
	xvldx	$xr7, $t3, $s5
	xvfsub.d	$xr8, $xr8, $xr9
	ori	$s5, $a2, 2784
	xvldx	$xr9, $t3, $s5
	xvfadd.d	$xr6, $xr6, $xr7
	xvldx	$xr7, $t3, $a5
	xvldx	$xr10, $t3, $a3
	xvfadd.d	$xr8, $xr8, $xr9
	xvldx	$xr9, $a7, $a5
	xvfsub.d	$xr6, $xr6, $xr7
	xvfsub.d	$xr7, $xr8, $xr10
	xvfmadd.d	$xr3, $xr6, $xr0, $xr3
	xvfmadd.d	$xr6, $xr7, $xr0, $xr9
	xvstx	$xr3, $a7, $a4
	addi.d	$s3, $s3, 64
	xvstx	$xr6, $a7, $a5
	bnez	$s3, .LBB7_43
# %bb.44:                               #   in Loop: Header=BB7_40 Depth=2
	ori	$s5, $zero, 1192
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
.LBB7_45:                               # %scalar.ph120.preheader
                                        #   in Loop: Header=BB7_40 Depth=2
	alsl.d	$s3, $s5, $ra, 3
	addi.d	$s5, $s5, -1199
	.p2align	4, , 16
.LBB7_46:                               # %scalar.ph120
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa6, $s2, $s3
	add.d	$a7, $s0, $s3
	fld.d	$fa7, $a7, 8
	fldx.d	$ft0, $s0, $s3
	add.d	$a7, $t3, $s3
	fldx.d	$ft1, $a7, $s7
	fldx.d	$ft2, $t3, $s3
	pcalau12i	$a7, %pc_hi20(.LCPI7_4)
	fld.d	$fa3, $a7, %pc_lo12(.LCPI7_4)
	fsub.d	$fa7, $fa7, $ft0
	fadd.d	$fa7, $fa7, $ft1
	fsub.d	$fa7, $fa7, $ft2
	fmadd.d	$fa6, $fa7, $fa3, $fa6
	fstx.d	$fa6, $s2, $s3
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	bnez	$s5, .LBB7_46
# %bb.47:                               # %.loopexit284
                                        #   in Loop: Header=BB7_40 Depth=2
	addi.d	$t0, $t0, 1
	add.d	$t1, $t1, $s7
	add.d	$t2, $t2, $s7
	add.d	$s1, $s1, $s7
	add.d	$ra, $ra, $s7
	bne	$t0, $t8, .LBB7_40
# %bb.48:                               #   in Loop: Header=BB7_24 Depth=1
	addi.d	$t4, $t4, 1
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ori	$a7, $zero, 500
	bne	$t4, $a7, .LBB7_24
# %bb.49:                               # %vector.body185.preheader
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	vld	$vr4, $a6, %pc_lo12(.LCPI7_0)
	lu12i.w	$a6, -1
	ori	$a6, $a6, 128
	ori	$a7, $zero, 3968
	ori	$t0, $zero, 4000
	.p2align	4, , 16
.LBB7_50:                               # %vector.body185
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr5, $vr4, 4
	vext2xv.du.wu	$xr6, $xr4
	xvffint.d.lu	$xr6, $xr6
	vext2xv.du.wu	$xr5, $xr5
	xvffint.d.lu	$xr5, $xr5
	add.d	$t1, $s1, $a6
	xvstx	$xr6, $t1, $a7
	xvstx	$xr5, $t1, $t0
	addi.d	$a6, $a6, 64
	vaddi.wu	$vr4, $vr4, 8
	bnez	$a6, .LBB7_50
# %bb.51:                               # %kernel_fdtd_2d.exit
	move	$a6, $zero
	move	$a7, $zero
	move	$t0, $zero
	move	$t1, $zero
	ori	$t2, $zero, 0
	ori	$t3, $zero, 0
	lu32i.d	$t3, -65536
	lu52i.d	$t3, $t3, 1031
	stptr.d	$t3, $s1, 3968
	ori	$t3, $zero, 0
	lu32i.d	$t3, -61440
	lu52i.d	$t3, $t3, 1031
	stptr.d	$t3, $s1, 3976
	ori	$t3, $zero, 0
	lu32i.d	$t3, -57344
	lu52i.d	$t3, $t3, 1031
	stptr.d	$t3, $s1, 3984
	lu32i.d	$t2, -53248
	lu52i.d	$t2, $t2, 1031
	stptr.d	$t2, $s1, 3992
	ld.d	$t6, $sp, 120                   # 8-byte Folded Reload
	sub.d	$t2, $t6, $s8
	sub.d	$t3, $s4, $s8
	sub.d	$t4, $s4, $t6
	sltui	$t2, $t2, 16
	sltui	$t3, $t3, 16
	or	$t2, $t2, $t3
	sltui	$t3, $t4, 16
	or	$t2, $t2, $t3
	lu12i.w	$t3, -3
	ori	$t3, $t3, 2688
	ori	$t4, $zero, 1000
	move	$t5, $s8
	move	$t7, $s4
	b	.LBB7_53
	.p2align	4, , 16
.LBB7_52:                               # %middle.block208
                                        #   in Loop: Header=BB7_53 Depth=1
	addi.d	$t1, $t1, 1
	add.d	$t7, $t7, $s7
	add.d	$t6, $t6, $s7
	add.d	$t5, $t5, $s7
	addi.w	$t0, $t0, 3
	addi.d	$a7, $a7, 1
	addi.w	$a6, $a6, 2
	beq	$t1, $t4, .LBB7_58
.LBB7_53:                               # %vector.memcheck193
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_57 Depth 2
                                        #     Child Loop BB7_55 Depth 2
	beqz	$t2, .LBB7_56
# %bb.54:                               # %scalar.ph199.preheader
                                        #   in Loop: Header=BB7_53 Depth=1
	move	$s1, $zero
	move	$t8, $t3
	.p2align	4, , 16
.LBB7_55:                               # %scalar.ph199
                                        #   Parent Loop BB7_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s3, $a6, $s1
	add.d	$s5, $t0, $s1
	add.w	$s1, $a7, $s1
	bstrpick.d	$ra, $s1, 31, 0
	movgr2fr.d	$fa4, $ra
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa1
	add.d	$ra, $t5, $t8
	fstx.d	$fa4, $ra, $s7
	bstrpick.d	$s3, $s3, 31, 0
	movgr2fr.d	$fa4, $s3
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa2
	add.d	$s3, $t6, $t8
	fstx.d	$fa4, $s3, $s7
	bstrpick.d	$s3, $s5, 31, 0
	movgr2fr.d	$fa4, $s3
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa1
	add.d	$s3, $t7, $t8
	addi.d	$t8, $t8, 8
	fstx.d	$fa4, $s3, $s7
	bnez	$t8, .LBB7_55
	b	.LBB7_52
	.p2align	4, , 16
.LBB7_56:                               # %vector.ph200
                                        #   in Loop: Header=BB7_53 Depth=1
	ld.d	$t8, $sp, 40                    # 8-byte Folded Reload
	vld	$vr5, $t8, %pc_lo12(.LCPI7_1)
	vreplgr2vr.d	$vr4, $t1
	lu12i.w	$t8, -3
	ori	$t8, $t8, 2688
	.p2align	4, , 16
.LBB7_57:                               # %vector.body203
                                        #   Parent Loop BB7_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr6, $vr5, 1
	vmul.d	$vr6, $vr6, $vr4
	vshuf4i.w	$vr6, $vr6, 8
	vext2xv.du.wu	$xr6, $xr6
	xvffint.d.lu	$xr6, $xr6
	xvst	$xr6, $sp, 128
	vld	$vr6, $sp, 128
	ori	$s1, $zero, 0
	lu32i.d	$s1, -49152
	lu52i.d	$s1, $s1, 1032
	vreplgr2vr.d	$vr7, $s1
	vfdiv.d	$vr6, $vr6, $vr7
	add.d	$s1, $t5, $t8
	vstx	$vr6, $s1, $s7
	vaddi.du	$vr6, $vr5, 3
	vaddi.du	$vr5, $vr5, 2
	vmul.d	$vr8, $vr5, $vr4
	vshuf4i.w	$vr8, $vr8, 8
	vext2xv.du.wu	$xr8, $xr8
	xvffint.d.lu	$xr8, $xr8
	xvst	$xr8, $sp, 160
	vld	$vr8, $sp, 160
	ori	$s1, $zero, 0
	lu32i.d	$s1, 180224
	lu52i.d	$s1, $s1, 1033
	vreplgr2vr.d	$vr9, $s1
	vfdiv.d	$vr8, $vr8, $vr9
	add.d	$s1, $t6, $t8
	vstx	$vr8, $s1, $s7
	vmul.d	$vr6, $vr6, $vr4
	vshuf4i.w	$vr6, $vr6, 8
	vext2xv.du.wu	$xr6, $xr6
	xvffint.d.lu	$xr6, $xr6
	xvst	$xr6, $sp, 192
	vld	$vr6, $sp, 192
	vfdiv.d	$vr6, $vr6, $vr7
	add.d	$s1, $t7, $t8
	addi.d	$t8, $t8, 16
	vstx	$vr6, $s1, $s7
	bnez	$t8, .LBB7_57
	b	.LBB7_52
.LBB7_58:                               # %init_array.exit65
	move	$a6, $zero
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	add.d	$t6, $t7, $s7
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	add.d	$a7, $s4, $a7
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
	add.d	$t2, $s8, $t0
	ld.d	$t0, $sp, 0                     # 8-byte Folded Reload
	add.d	$t3, $t7, $t0
	addi.d	$t1, $s8, 8
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	add.d	$t4, $s8, $t0
	add.d	$t5, $s4, $t0
	add.d	$t0, $t7, $t0
	st.d	$t6, $sp, 96                    # 8-byte Folded Spill
	sltu	$t6, $t6, $t5
	sltu	$t0, $s4, $t0
	and	$t0, $t6, $t0
	sltu	$t1, $t1, $t5
	sltu	$t4, $s4, $t4
	and	$t1, $t1, $t4
	sltu	$t2, $s4, $t2
	sltu	$t4, $s8, $a7
	and	$t2, $t2, $t4
	sltu	$t3, $s4, $t3
	sltu	$a7, $t7, $a7
	and	$a7, $t3, $a7
	or	$t2, $t2, $a7
	add.d	$a7, $t7, $a1
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	add.d	$a7, $s4, $a1
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a7, $s4, 40
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a7, $s8, 40
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a7, -3
	ori	$a7, $a7, 2688
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	vldi	$vr1, -800
	ori	$t8, $zero, 1000
	ori	$ra, $zero, 999
	lu52i.d	$a7, $zero, 1022
	xvreplgr2vr.d	$xr2, $a7
	.p2align	4, , 16
.LBB7_59:                               # %vector.ph273
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_60 Depth 2
                                        #     Child Loop BB7_63 Depth 2
                                        #       Child Loop BB7_65 Depth 3
                                        #       Child Loop BB7_64 Depth 3
                                        #     Child Loop BB7_67 Depth 2
                                        #       Child Loop BB7_69 Depth 3
                                        #       Child Loop BB7_72 Depth 3
                                        #     Child Loop BB7_75 Depth 2
                                        #       Child Loop BB7_78 Depth 3
                                        #       Child Loop BB7_81 Depth 3
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a7, 3
	xvldrepl.d	$xr4, $a7, 0
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_60:                               # %vector.body276
                                        #   Parent Loop BB7_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $t7, $a7
	xvstx	$xr4, $t3, $s7
	addi.d	$a7, $a7, 64
	xvstx	$xr4, $t3, $a1
	bnez	$a7, .LBB7_60
# %bb.61:                               # %vector.memcheck254.preheader
                                        #   in Loop: Header=BB7_59 Depth=1
	ori	$a7, $zero, 1
	move	$t3, $t7
	move	$s1, $s4
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	b	.LBB7_63
	.p2align	4, , 16
.LBB7_62:                               # %middle.block270
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.d	$a7, $a7, 1
	add.d	$s5, $s5, $s7
	add.d	$s3, $s3, $s7
	add.d	$s1, $s1, $s7
	add.d	$t3, $t3, $s7
	beq	$a7, $t8, .LBB7_66
.LBB7_63:                               # %vector.memcheck254
                                        #   Parent Loop BB7_59 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_65 Depth 3
                                        #       Child Loop BB7_64 Depth 3
	lu12i.w	$t4, -3
	ori	$t4, $t4, 2688
	beqz	$t0, .LBB7_65
	.p2align	4, , 16
.LBB7_64:                               # %scalar.ph259
                                        #   Parent Loop BB7_59 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $s1, $t4
	fldx.d	$fa4, $t5, $s6
	fldx.d	$fa5, $t5, $s7
	add.d	$t5, $t3, $t4
	fldx.d	$fa6, $t5, $s6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa1
	fadd.d	$fa4, $fa6, $fa4
	addi.d	$t4, $t4, 8
	fstx.d	$fa4, $t5, $s6
	bnez	$t4, .LBB7_64
	b	.LBB7_62
	.p2align	4, , 16
.LBB7_65:                               # %vector.body261
                                        #   Parent Loop BB7_59 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $s5, $t4
	add.d	$t6, $s3, $t4
	xvldx	$xr4, $t6, $a3
	xvldx	$xr5, $t6, $s7
	xvld	$xr6, $t6, -32
	xvldx	$xr7, $s3, $t4
	xvldx	$xr8, $t5, $a3
	xvldx	$xr9, $t5, $s7
	xvfsub.d	$xr4, $xr4, $xr6
	xvfsub.d	$xr5, $xr5, $xr7
	xvfmul.d	$xr4, $xr4, $xr2
	xvfmul.d	$xr5, $xr5, $xr2
	xvfsub.d	$xr4, $xr8, $xr4
	xvfsub.d	$xr5, $xr9, $xr5
	xvstx	$xr4, $t5, $a3
	addi.d	$t4, $t4, 64
	xvstx	$xr5, $t5, $s7
	bnez	$t4, .LBB7_65
	b	.LBB7_62
	.p2align	4, , 16
.LBB7_66:                               # %vector.memcheck233.preheader
                                        #   in Loop: Header=BB7_59 Depth=1
	move	$a7, $zero
	move	$t3, $zero
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_67:                               # %vector.memcheck233
                                        #   Parent Loop BB7_59 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_69 Depth 3
                                        #       Child Loop BB7_72 Depth 3
	ori	$t5, $zero, 1
	bnez	$t1, .LBB7_71
# %bb.68:                               # %vector.body242.preheader
                                        #   in Loop: Header=BB7_67 Depth=2
	lu12i.w	$t4, -3
	ori	$t4, $t4, 2752
	.p2align	4, , 16
.LBB7_69:                               # %vector.body242
                                        #   Parent Loop BB7_59 Depth=1
                                        #     Parent Loop BB7_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $s1, $t4
	add.d	$t6, $s3, $t4
	xvldx	$xr4, $t6, $a4
	xvldx	$xr5, $t6, $a5
	ori	$s5, $a0, 1304
	xvldx	$xr6, $t6, $s5
	ori	$s5, $a0, 1336
	xvldx	$xr7, $t6, $s5
	xvldx	$xr8, $t5, $a4
	xvldx	$xr9, $t5, $a5
	xvfsub.d	$xr4, $xr4, $xr6
	xvfsub.d	$xr5, $xr5, $xr7
	xvfmul.d	$xr4, $xr4, $xr2
	xvfmul.d	$xr5, $xr5, $xr2
	xvfsub.d	$xr4, $xr8, $xr4
	xvfsub.d	$xr5, $xr9, $xr5
	xvstx	$xr4, $t5, $a4
	addi.d	$t4, $t4, 64
	xvstx	$xr5, $t5, $a5
	bnez	$t4, .LBB7_69
# %bb.70:                               #   in Loop: Header=BB7_67 Depth=2
	ori	$t5, $zero, 1193
.LBB7_71:                               # %scalar.ph240.preheader
                                        #   in Loop: Header=BB7_67 Depth=2
	addi.d	$t4, $t5, -1200
	alsl.d	$t5, $t5, $a7, 3
	.p2align	4, , 16
.LBB7_72:                               # %scalar.ph240
                                        #   Parent Loop BB7_59 Depth=1
                                        #     Parent Loop BB7_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $s4, $t5
	fldx.d	$fa4, $s4, $t5
	fld.d	$fa5, $t6, -8
	fldx.d	$fa6, $s8, $t5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa1
	fadd.d	$fa4, $fa6, $fa4
	fstx.d	$fa4, $s8, $t5
	addi.d	$t4, $t4, 1
	addi.d	$t5, $t5, 8
	bnez	$t4, .LBB7_72
# %bb.73:                               # %.loopexit281
                                        #   in Loop: Header=BB7_67 Depth=2
	addi.d	$t3, $t3, 1
	add.d	$s3, $s3, $s7
	add.d	$s1, $s1, $s7
	add.d	$a7, $a7, $s7
	bne	$t3, $t8, .LBB7_67
# %bb.74:                               # %vector.memcheck210.preheader
                                        #   in Loop: Header=BB7_59 Depth=1
	move	$s1, $zero
	move	$a7, $zero
	ld.d	$t3, $sp, 96                    # 8-byte Folded Reload
	move	$s3, $s8
	move	$s5, $s4
	.p2align	4, , 16
.LBB7_75:                               # %vector.memcheck210
                                        #   Parent Loop BB7_59 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_78 Depth 3
                                        #       Child Loop BB7_81 Depth 3
	beqz	$t2, .LBB7_77
# %bb.76:                               #   in Loop: Header=BB7_75 Depth=2
	move	$t5, $zero
	b	.LBB7_80
	.p2align	4, , 16
.LBB7_77:                               # %vector.body223.preheader
                                        #   in Loop: Header=BB7_75 Depth=2
	lu12i.w	$t4, -3
	ori	$t4, $t4, 2720
	.p2align	4, , 16
.LBB7_78:                               # %vector.body223
                                        #   Parent Loop BB7_59 Depth=1
                                        #     Parent Loop BB7_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t5, $s5, $t4
	add.d	$t6, $s3, $t4
	ori	$t7, $a0, 1384
	xvldx	$xr4, $t6, $t7
	xvldx	$xr5, $t6, $a3
	add.d	$t6, $t3, $t4
	xvldx	$xr6, $t6, $a3
	xvld	$xr7, $t6, -32
	xvfsub.d	$xr4, $xr4, $xr5
	xvldx	$xr5, $t5, $a3
	xvfadd.d	$xr4, $xr4, $xr6
	xvfsub.d	$xr4, $xr4, $xr7
	xvfmul.d	$xr4, $xr4, $xr0
	xvfadd.d	$xr4, $xr5, $xr4
	addi.d	$t4, $t4, 32
	xvstx	$xr4, $t5, $a3
	bnez	$t4, .LBB7_78
# %bb.79:                               #   in Loop: Header=BB7_75 Depth=2
	ori	$t5, $zero, 1196
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
.LBB7_80:                               # %scalar.ph221.preheader
                                        #   in Loop: Header=BB7_75 Depth=2
	alsl.d	$t4, $t5, $s1, 3
	addi.d	$t5, $t5, -1199
	.p2align	4, , 16
.LBB7_81:                               # %scalar.ph221
                                        #   Parent Loop BB7_59 Depth=1
                                        #     Parent Loop BB7_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $s8, $t4
	fld.d	$fa4, $t6, 8
	fldx.d	$fa5, $s8, $t4
	add.d	$t6, $t7, $t4
	fldx.d	$fa6, $t6, $s7
	fldx.d	$fa7, $t7, $t4
	fsub.d	$fa4, $fa4, $fa5
	fldx.d	$fa5, $s4, $t4
	fadd.d	$fa4, $fa4, $fa6
	fsub.d	$fa4, $fa4, $fa7
	fmul.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa5, $fa4
	fstx.d	$fa4, $s4, $t4
	addi.d	$t5, $t5, 1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB7_81
# %bb.82:                               # %.loopexit
                                        #   in Loop: Header=BB7_75 Depth=2
	addi.d	$a7, $a7, 1
	add.d	$s5, $s5, $s7
	add.d	$s3, $s3, $s7
	add.d	$t3, $t3, $s7
	add.d	$s1, $s1, $s7
	bne	$a7, $ra, .LBB7_75
# %bb.83:                               #   in Loop: Header=BB7_59 Depth=1
	addi.d	$a6, $a6, 1
	ori	$a7, $zero, 500
	bne	$a6, $a7, .LBB7_59
# %bb.84:                               # %kernel_fdtd_2d_StrictFP.exit
	ori	$a0, $a2, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s5, $zero
	move	$s1, $zero
	stx.b	$zero, $a0, $s6
	addi.d	$a0, $a0, 7
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, -3
	ori	$a0, $a0, 2688
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s6, $zero, 3
.LBB7_85:                               # %.preheader.i97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_86 Depth 2
                                        #     Child Loop BB7_88 Depth 2
                                        #     Child Loop BB7_90 Depth 2
	add.d	$a0, $s8, $s5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_86:                               #   Parent Loop BB7_85 Depth=1
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
	bnez	$a2, .LBB7_86
# %bb.87:                               #   in Loop: Header=BB7_85 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s5
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_88:                               #   Parent Loop BB7_85 Depth=1
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
	bnez	$a2, .LBB7_88
# %bb.89:                               #   in Loop: Header=BB7_85 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $s5
	lu12i.w	$a1, -3
	ori	$a1, $a1, 2688
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_90:                               #   Parent Loop BB7_85 Depth=1
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
	bnez	$a1, .LBB7_90
# %bb.91:                               #   in Loop: Header=BB7_85 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 1
	add.d	$s5, $s5, $s7
	ori	$a0, $zero, 1000
	bne	$s1, $a0, .LBB7_85
# %bb.92:                               # %print_array.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$sp, $fp, -416
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB7_93:
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
