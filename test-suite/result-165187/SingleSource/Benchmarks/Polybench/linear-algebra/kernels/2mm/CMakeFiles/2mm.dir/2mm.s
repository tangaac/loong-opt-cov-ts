	.file	"2mm.c"
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
	.p2align	4, 0x0                          # -- Begin function init_array
.LCPI7_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	init_array
	.p2align	5
	.type	init_array,@function
init_array:                             # @init_array
# %bb.0:
	ori	$t0, $zero, 0
	lu32i.d	$t0, -524288
	lu52i.d	$t0, $t0, 1023
	st.d	$t0, $a4, 0
	lu12i.w	$a4, 209715
	ori	$a4, $a4, 819
	lu32i.d	$a4, 209715
	lu52i.d	$a4, $a4, 1023
	st.d	$a4, $a5, 0
	blez	$a0, .LBB7_11
# %bb.1:                                # %.preheader67.lr.ph
	blez	$a2, .LBB7_22
# %bb.2:                                # %.preheader67.us.preheader
	move	$a4, $zero
	move	$a5, $zero
	bstrpick.d	$t0, $a0, 31, 0
	movgr2fr.d	$fa0, $t0
	ffint.d.l	$fa0, $fa0
	bstrpick.d	$t0, $a2, 30, 1
	slli.d	$t0, $t0, 1
	vinsgr2vr.w	$vr3, $a0, 0
	vinsgr2vr.w	$vr3, $a0, 1
	vreplvei.d	$vr1, $vr0, 0
	pcalau12i	$t1, %pc_hi20(.LCPI7_0)
	vld	$vr2, $t1, %pc_lo12(.LCPI7_0)
	ori	$t1, $zero, 1
	vpickve2gr.w	$t2, $vr3, 0
	vpickve2gr.w	$t3, $vr3, 1
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 560
	addi.d	$a4, $a4, 1
	beq	$a5, $a0, .LBB7_11
.LBB7_4:                                # %.preheader67.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
                                        #     Child Loop BB7_10 Depth 2
	bne	$a2, $t1, .LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	move	$t6, $zero
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_6:                                # %vector.ph
                                        #   in Loop: Header=BB7_4 Depth=1
	vreplgr2vr.d	$vr3, $a5
	move	$t4, $a6
	move	$t5, $t0
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB7_7:                                # %vector.body
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmul.d	$vr5, $vr4, $vr3
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr5, $vr5, 1
	vpickve2gr.w	$t6, $vr5, 0
	mod.wu	$t6, $t6, $t2
	bstrpick.d	$t6, $t6, 31, 0
	vpickve2gr.w	$t7, $vr5, 1
	mod.wu	$t7, $t7, $t3
	bstrpick.d	$t7, $t7, 31, 0
	movgr2fr.d	$fa5, $t7
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t6
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr1
	vst	$vr5, $t4, 0
	vaddi.du	$vr4, $vr4, 2
	addi.d	$t5, $t5, -2
	addi.d	$t4, $t4, 16
	bnez	$t5, .LBB7_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$t6, $t0
	beq	$t0, $a2, .LBB7_3
.LBB7_9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	slli.d	$t4, $t6, 3
	mul.d	$t5, $a4, $t6
	addi.w	$t5, $t5, 1
	sub.d	$t6, $a2, $t6
	.p2align	4, , 16
.LBB7_10:                               # %scalar.ph
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mod.wu	$t7, $t5, $a0
	bstrpick.d	$t7, $t7, 31, 0
	movgr2fr.d	$fa3, $t7
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fstx.d	$fa3, $a6, $t4
	addi.d	$t4, $t4, 8
	addi.d	$t6, $t6, -1
	add.w	$t5, $t5, $a4
	bnez	$t6, .LBB7_10
	b	.LBB7_3
.LBB7_11:                               # %.preheader66
	blez	$a2, .LBB7_22
# %bb.12:                               # %.preheader65.lr.ph
	blez	$a1, .LBB7_33
# %bb.13:                               # %.preheader65.us.preheader
	move	$a4, $zero
	move	$a5, $zero
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	bstrpick.d	$a6, $a1, 30, 1
	slli.d	$a6, $a6, 1
	vinsgr2vr.w	$vr3, $a1, 0
	vinsgr2vr.w	$vr3, $a1, 1
	vreplvei.d	$vr1, $vr0, 0
	pcalau12i	$t0, %pc_hi20(.LCPI7_0)
	vld	$vr2, $t0, %pc_lo12(.LCPI7_0)
	ori	$t0, $zero, 1
	vpickve2gr.w	$t1, $vr3, 0
	vpickve2gr.w	$t2, $vr3, 1
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_14:                               # %._crit_edge.us72
                                        #   in Loop: Header=BB7_15 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 400
	addi.d	$a4, $a4, 1
	beq	$a5, $a2, .LBB7_22
.LBB7_15:                               # %.preheader65.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
                                        #     Child Loop BB7_21 Depth 2
	bne	$a1, $t0, .LBB7_17
# %bb.16:                               #   in Loop: Header=BB7_15 Depth=1
	move	$t5, $zero
	b	.LBB7_20
	.p2align	4, , 16
.LBB7_17:                               # %vector.ph124
                                        #   in Loop: Header=BB7_15 Depth=1
	vreplgr2vr.d	$vr3, $a5
	move	$t3, $a7
	move	$t4, $a6
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB7_18:                               # %vector.body133
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 1
	vmul.d	$vr5, $vr5, $vr3
	vpickve2gr.w	$t5, $vr5, 0
	mod.wu	$t5, $t5, $t1
	bstrpick.d	$t5, $t5, 31, 0
	vpickve2gr.w	$t6, $vr5, 2
	mod.wu	$t6, $t6, $t2
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa5, $t6
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t5
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr1
	vst	$vr5, $t3, 0
	vaddi.du	$vr4, $vr4, 2
	addi.d	$t4, $t4, -2
	addi.d	$t3, $t3, 16
	bnez	$t4, .LBB7_18
# %bb.19:                               # %middle.block138
                                        #   in Loop: Header=BB7_15 Depth=1
	move	$t5, $a6
	beq	$a6, $a1, .LBB7_14
.LBB7_20:                               # %scalar.ph122.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	slli.d	$t3, $t5, 3
	sub.d	$t4, $a1, $t5
	addi.d	$t5, $t5, 1
	mul.w	$t5, $a4, $t5
	.p2align	4, , 16
.LBB7_21:                               # %scalar.ph122
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mod.wu	$t6, $t5, $a1
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa3, $t6
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fstx.d	$fa3, $a7, $t3
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, -1
	add.w	$t5, $t5, $a4
	bnez	$t4, .LBB7_21
	b	.LBB7_14
.LBB7_22:                               # %.preheader64
	blez	$a1, .LBB7_33
# %bb.23:                               # %.preheader63.lr.ph
	blez	$a3, .LBB7_33
# %bb.24:                               # %.preheader63.us.preheader
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a6, $sp, 0
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	bstrpick.d	$a7, $a3, 30, 1
	slli.d	$a7, $a7, 1
	vinsgr2vr.w	$vr3, $a3, 0
	vinsgr2vr.w	$vr3, $a3, 1
	vreplvei.d	$vr1, $vr0, 0
	pcalau12i	$t0, %pc_hi20(.LCPI7_0)
	vld	$vr2, $t0, %pc_lo12(.LCPI7_0)
	ori	$t0, $zero, 1
	vpickve2gr.w	$t1, $vr3, 0
	vpickve2gr.w	$t2, $vr3, 1
	b	.LBB7_26
	.p2align	4, , 16
.LBB7_25:                               # %._crit_edge.us75
                                        #   in Loop: Header=BB7_26 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 640
	addi.d	$a4, $a4, 1
	beq	$a5, $a1, .LBB7_33
.LBB7_26:                               # %.preheader63.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_29 Depth 2
                                        #     Child Loop BB7_32 Depth 2
	bne	$a3, $t0, .LBB7_28
# %bb.27:                               #   in Loop: Header=BB7_26 Depth=1
	move	$t5, $zero
	b	.LBB7_31
	.p2align	4, , 16
.LBB7_28:                               # %vector.ph143
                                        #   in Loop: Header=BB7_26 Depth=1
	vreplgr2vr.d	$vr3, $a5
	move	$t3, $a6
	move	$t4, $a7
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB7_29:                               # %vector.body152
                                        #   Parent Loop BB7_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 3
	vmul.d	$vr5, $vr5, $vr3
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr5, $vr5, 1
	vpickve2gr.w	$t5, $vr5, 0
	mod.wu	$t5, $t5, $t1
	bstrpick.d	$t5, $t5, 31, 0
	vpickve2gr.w	$t6, $vr5, 1
	mod.wu	$t6, $t6, $t2
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa5, $t6
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t5
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr1
	vst	$vr5, $t3, 0
	vaddi.du	$vr4, $vr4, 2
	addi.d	$t4, $t4, -2
	addi.d	$t3, $t3, 16
	bnez	$t4, .LBB7_29
# %bb.30:                               # %middle.block157
                                        #   in Loop: Header=BB7_26 Depth=1
	move	$t5, $a7
	beq	$a7, $a3, .LBB7_25
.LBB7_31:                               # %scalar.ph141.preheader
                                        #   in Loop: Header=BB7_26 Depth=1
	slli.d	$t3, $t5, 3
	addi.d	$t4, $t5, 3
	mul.d	$t4, $a4, $t4
	addi.w	$t4, $t4, 1
	sub.d	$t5, $a3, $t5
	.p2align	4, , 16
.LBB7_32:                               # %scalar.ph141
                                        #   Parent Loop BB7_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mod.wu	$t6, $t4, $a3
	bstrpick.d	$t6, $t6, 31, 0
	movgr2fr.d	$fa3, $t6
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fstx.d	$fa3, $a6, $t3
	addi.d	$t3, $t3, 8
	addi.d	$t5, $t5, -1
	add.w	$t4, $t4, $a4
	bnez	$t5, .LBB7_32
	b	.LBB7_25
.LBB7_33:                               # %.preheader62
	blez	$a0, .LBB7_44
# %bb.34:                               # %.preheader.lr.ph
	blez	$a3, .LBB7_44
# %bb.35:                               # %.preheader.us.preheader
	move	$a1, $zero
	move	$a4, $zero
	ld.d	$a5, $sp, 8
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	bstrpick.d	$a6, $a3, 30, 1
	slli.d	$a6, $a6, 1
	vinsgr2vr.w	$vr3, $a2, 0
	vinsgr2vr.w	$vr3, $a2, 1
	vreplvei.d	$vr1, $vr0, 0
	pcalau12i	$a7, %pc_hi20(.LCPI7_0)
	vld	$vr2, $a7, %pc_lo12(.LCPI7_0)
	ori	$a7, $zero, 1
	vpickve2gr.w	$t0, $vr3, 0
	vpickve2gr.w	$t1, $vr3, 1
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_36:                               # %._crit_edge.us79
                                        #   in Loop: Header=BB7_37 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 640
	addi.d	$a1, $a1, 1
	beq	$a4, $a0, .LBB7_44
.LBB7_37:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
                                        #     Child Loop BB7_43 Depth 2
	bne	$a3, $a7, .LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_37 Depth=1
	move	$t4, $zero
	b	.LBB7_42
	.p2align	4, , 16
.LBB7_39:                               # %vector.ph162
                                        #   in Loop: Header=BB7_37 Depth=1
	vreplgr2vr.d	$vr3, $a4
	move	$t2, $a5
	move	$t3, $a6
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB7_40:                               # %vector.body171
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr4, 2
	vmul.d	$vr5, $vr4, $vr3
	vpickve2gr.w	$t4, $vr5, 0
	mod.w	$t4, $t4, $t0
	bstrpick.d	$t4, $t4, 31, 0
	vpickve2gr.w	$t5, $vr5, 2
	mod.w	$t5, $t5, $t1
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa5, $t5
	ffint.d.l	$fa5, $fa5
	movgr2fr.d	$fa6, $t4
	ffint.d.l	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfdiv.d	$vr5, $vr6, $vr1
	vst	$vr5, $t2, 0
	addi.d	$t3, $t3, -2
	addi.d	$t2, $t2, 16
	bnez	$t3, .LBB7_40
# %bb.41:                               # %middle.block176
                                        #   in Loop: Header=BB7_37 Depth=1
	move	$t4, $a6
	beq	$a6, $a3, .LBB7_36
.LBB7_42:                               # %scalar.ph160.preheader
                                        #   in Loop: Header=BB7_37 Depth=1
	slli.d	$t2, $t4, 3
	addi.d	$t3, $t4, 2
	mul.w	$t3, $a1, $t3
	sub.d	$t4, $a3, $t4
	.p2align	4, , 16
.LBB7_43:                               # %scalar.ph160
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mod.w	$t5, $t3, $a2
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa3, $t5
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	fstx.d	$fa3, $a5, $t2
	addi.d	$t2, $t2, 8
	addi.d	$t4, $t4, -1
	add.w	$t3, $t3, $a1
	bnez	$t4, .LBB7_43
	b	.LBB7_36
.LBB7_44:                               # %._crit_edge78
	ret
.Lfunc_end7:
	.size	init_array, .Lfunc_end7-init_array
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI8_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI8_1:
	.dword	0x3ff3333333333333              # double 1.2
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
	lu12i.w	$a0, 3
	ori	$a2, $a0, 3712
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16
	beqz	$fp, .LBB8_43
# %bb.1:
	bnez	$a0, .LBB8_43
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 16
	lu12i.w	$a0, 5
	ori	$a2, $a0, 1920
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 16
	beqz	$s4, .LBB8_43
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB8_43
# %bb.4:                                # %polybench_alloc_data.exit25
	st.d	$zero, $sp, 16
	lu12i.w	$s0, 6
	ori	$a2, $s0, 3424
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16
	beqz	$s1, .LBB8_43
# %bb.5:                                # %polybench_alloc_data.exit25
	bnez	$a0, .LBB8_43
# %bb.6:                                # %polybench_alloc_data.exit27
	st.d	$zero, $sp, 16
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 16
	beqz	$s2, .LBB8_43
# %bb.7:                                # %polybench_alloc_data.exit27
	bnez	$a0, .LBB8_43
# %bb.8:                                # %polybench_alloc_data.exit29
	st.d	$zero, $sp, 16
	ori	$a2, $s0, 1024
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16
	beqz	$s3, .LBB8_43
# %bb.9:                                # %polybench_alloc_data.exit29
	bnez	$a0, .LBB8_43
# %bb.10:                               # %polybench_alloc_data.exit31
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI8_0)
	ori	$a2, $zero, 40
	ori	$a3, $zero, 0
	lu32i.d	$a3, 262144
	lu52i.d	$a3, $a3, 1028
	vreplgr2vr.d	$vr1, $a3
	ori	$a3, $zero, 560
	move	$a4, $s4
	.p2align	4, , 16
.LBB8_11:                               # %.preheader67.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_12 Depth 2
	move	$a5, $zero
	vreplgr2vr.d	$vr2, $a1
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB8_12:                               # %vector.body
                                        #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmul.d	$vr4, $vr3, $vr2
	vshuf4i.w	$vr4, $vr4, 8
	vaddi.wu	$vr4, $vr4, 1
	vpickve2gr.w	$a6, $vr4, 0
	mod.wu	$a6, $a6, $a2
	bstrpick.d	$a6, $a6, 31, 0
	vpickve2gr.w	$a7, $vr4, 1
	mod.wu	$a7, $a7, $a2
	bstrpick.d	$a7, $a7, 31, 0
	movgr2fr.d	$fa4, $a7
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $a6
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vstx	$vr4, $a4, $a5
	addi.d	$a5, $a5, 16
	vaddi.du	$vr3, $vr3, 2
	bne	$a5, $a3, .LBB8_12
# %bb.13:                               # %._crit_edge.us.i
                                        #   in Loop: Header=BB8_11 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 560
	bne	$a1, $a2, .LBB8_11
# %bb.14:                               # %.preheader65.us.i.preheader
	move	$a1, $zero
	vld	$vr0, $a0, %pc_lo12(.LCPI8_0)
	ori	$a2, $zero, 50
	ori	$a3, $zero, 0
	lu32i.d	$a3, -458752
	lu52i.d	$a3, $a3, 1028
	vreplgr2vr.d	$vr1, $a3
	ori	$a3, $zero, 400
	ori	$a4, $zero, 70
	move	$a5, $s1
	.p2align	4, , 16
.LBB8_15:                               # %.preheader65.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_16 Depth 2
	move	$a6, $zero
	vreplgr2vr.d	$vr2, $a1
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB8_16:                               # %vector.body47
                                        #   Parent Loop BB8_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 1
	vmul.d	$vr4, $vr4, $vr2
	vpickve2gr.w	$a7, $vr4, 0
	mod.wu	$a7, $a7, $a2
	bstrpick.d	$a7, $a7, 31, 0
	vpickve2gr.w	$t0, $vr4, 2
	mod.wu	$t0, $t0, $a2
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa4, $t0
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $a7
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vstx	$vr4, $a5, $a6
	addi.d	$a6, $a6, 16
	vaddi.du	$vr3, $vr3, 2
	bne	$a6, $a3, .LBB8_16
# %bb.17:                               # %._crit_edge.us72.i
                                        #   in Loop: Header=BB8_15 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 400
	bne	$a1, $a4, .LBB8_15
# %bb.18:                               # %.preheader63.us.i.preheader
	move	$a1, $zero
	vld	$vr0, $a0, %pc_lo12(.LCPI8_0)
	ori	$a2, $zero, 80
	ori	$a3, $zero, 0
	lu32i.d	$a3, 262144
	lu52i.d	$a3, $a3, 1029
	vreplgr2vr.d	$vr1, $a3
	ori	$a3, $zero, 640
	ori	$a4, $zero, 50
	move	$a5, $s2
	.p2align	4, , 16
.LBB8_19:                               # %.preheader63.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_20 Depth 2
	move	$a6, $zero
	vreplgr2vr.d	$vr2, $a1
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB8_20:                               # %vector.body56
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 3
	vmul.d	$vr4, $vr4, $vr2
	vshuf4i.w	$vr4, $vr4, 8
	vaddi.wu	$vr4, $vr4, 1
	vpickve2gr.w	$a7, $vr4, 0
	mod.wu	$a7, $a7, $a2
	bstrpick.d	$a7, $a7, 31, 0
	vpickve2gr.w	$t0, $vr4, 1
	mod.wu	$t0, $t0, $a2
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa4, $t0
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $a7
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vstx	$vr4, $a5, $a6
	addi.d	$a6, $a6, 16
	vaddi.du	$vr3, $vr3, 2
	bne	$a6, $a3, .LBB8_20
# %bb.21:                               # %._crit_edge.us75.i
                                        #   in Loop: Header=BB8_19 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 640
	bne	$a1, $a4, .LBB8_19
# %bb.22:                               # %.preheader.us.i.preheader
	move	$a1, $zero
	vld	$vr0, $a0, %pc_lo12(.LCPI8_0)
	ori	$a0, $zero, 70
	ori	$a2, $zero, 0
	lu32i.d	$a2, 98304
	lu52i.d	$a2, $a2, 1029
	vreplgr2vr.d	$vr1, $a2
	ori	$a2, $zero, 640
	ori	$a3, $zero, 40
	move	$a4, $s3
	.p2align	4, , 16
.LBB8_23:                               # %.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_24 Depth 2
	move	$a5, $zero
	vreplgr2vr.d	$vr2, $a1
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB8_24:                               # %vector.body65
                                        #   Parent Loop BB8_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr3, $vr3, 2
	vmul.d	$vr4, $vr3, $vr2
	vpickve2gr.w	$a6, $vr4, 0
	mod.w	$a6, $a6, $a0
	bstrpick.d	$a6, $a6, 31, 0
	vpickve2gr.w	$a7, $vr4, 2
	mod.w	$a7, $a7, $a0
	bstrpick.d	$a7, $a7, 31, 0
	movgr2fr.d	$fa4, $a7
	ffint.d.l	$fa4, $fa4
	movgr2fr.d	$fa5, $a6
	ffint.d.l	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vfdiv.d	$vr4, $vr5, $vr1
	vstx	$vr4, $a4, $a5
	addi.d	$a5, $a5, 16
	bne	$a5, $a2, .LBB8_24
# %bb.25:                               # %._crit_edge.us79.i
                                        #   in Loop: Header=BB8_23 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 640
	bne	$a1, $a3, .LBB8_23
# %bb.26:                               # %.preheader49.i.preheader
	move	$a0, $zero
	ori	$a1, $zero, 400
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -904
	ori	$a2, $zero, 560
	ori	$a3, $zero, 50
	ori	$a4, $zero, 40
	move	$a5, $s4
	.p2align	4, , 16
.LBB8_27:                               # %.preheader49.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_28 Depth 2
                                        #       Child Loop BB8_29 Depth 3
	move	$a6, $zero
	mul.d	$a7, $a0, $a1
	add.d	$a7, $fp, $a7
	move	$t0, $s1
	.p2align	4, , 16
.LBB8_28:                               #   Parent Loop BB8_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_29 Depth 3
	move	$t1, $zero
	alsl.d	$t2, $a6, $a7, 3
	slli.d	$t3, $a6, 3
	stx.d	$zero, $a7, $t3
	move	$t3, $t0
	fmov.d	$fa2, $fa0
	.p2align	4, , 16
.LBB8_29:                               #   Parent Loop BB8_27 Depth=1
                                        #     Parent Loop BB8_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa3, $a5, $t1
	fld.d	$fa4, $t3, 0
	fmul.d	$fa3, $fa3, $fa1
	fmul.d	$fa3, $fa3, $fa4
	fadd.d	$fa2, $fa2, $fa3
	fst.d	$fa2, $t2, 0
	addi.d	$t1, $t1, 8
	addi.d	$t3, $t3, 400
	bne	$t1, $a2, .LBB8_29
# %bb.30:                               #   in Loop: Header=BB8_28 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 8
	bne	$a6, $a3, .LBB8_28
# %bb.31:                               #   in Loop: Header=BB8_27 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a5, $a5, 560
	bne	$a0, $a4, .LBB8_27
# %bb.32:                               # %.preheader.i.preheader
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI8_1)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI8_1)
	ori	$a1, $zero, 400
	ori	$a2, $zero, 80
	ori	$a3, $zero, 40
	move	$a4, $fp
	.p2align	4, , 16
.LBB8_33:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_34 Depth 2
                                        #       Child Loop BB8_35 Depth 3
	move	$a5, $zero
	alsl.d	$a6, $a0, $a0, 2
	slli.d	$a6, $a6, 7
	add.d	$a6, $s3, $a6
	move	$a7, $s2
	.p2align	4, , 16
.LBB8_34:                               #   Parent Loop BB8_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_35 Depth 3
	slli.d	$t2, $a5, 3
	fldx.d	$fa1, $a6, $t2
	move	$t0, $zero
	alsl.d	$t1, $a5, $a6, 3
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a6, $t2
	move	$t2, $a7
	.p2align	4, , 16
.LBB8_35:                               #   Parent Loop BB8_33 Depth=1
                                        #     Parent Loop BB8_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa2, $a4, $t0
	fld.d	$fa3, $t2, 0
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $t1, 0
	addi.d	$t0, $t0, 8
	addi.d	$t2, $t2, 640
	bne	$t0, $a1, .LBB8_35
# %bb.36:                               #   in Loop: Header=BB8_34 Depth=2
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 8
	bne	$a5, $a2, .LBB8_34
# %bb.37:                               #   in Loop: Header=BB8_33 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 400
	bne	$a0, $a3, .LBB8_33
# %bb.38:                               # %kernel_2mm.exit
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1281
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.b	$zero, $a0, 1280
	ori	$s5, $zero, 3
	ori	$s6, $zero, 1280
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	move	$s8, $zero
	move	$s0, $zero
.LBB8_39:                               # %.preheader.i35
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_40 Depth 2
	move	$a0, $zero
	move	$a1, $s8
	.p2align	4, , 16
.LBB8_40:                               #   Parent Loop BB8_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a2, $s3, $a1
	srli.d	$a3, $a2, 8
	srli.d	$a4, $a2, 16
	srli.d	$a5, $a2, 24
	srli.d	$a6, $a2, 32
	srli.d	$a7, $a2, 40
	srli.d	$t0, $a2, 48
	srli.d	$t1, $a2, 56
	bstrins.d	$a2, $s5, 63, 4
	add.d	$t2, $s4, $a0
	stx.b	$a2, $s4, $a0
	st.b	$a2, $t2, 1
	bstrins.d	$a3, $s5, 63, 4
	st.b	$a3, $t2, 2
	st.b	$a3, $t2, 3
	bstrins.d	$a4, $s5, 63, 4
	st.b	$a4, $t2, 4
	st.b	$a4, $t2, 5
	bstrins.d	$a5, $s5, 63, 4
	st.b	$a5, $t2, 6
	st.b	$a5, $t2, 7
	bstrins.d	$a6, $s5, 63, 4
	st.b	$a6, $t2, 8
	st.b	$a6, $t2, 9
	bstrins.d	$a7, $s5, 63, 4
	st.b	$a7, $t2, 10
	st.b	$a7, $t2, 11
	bstrins.d	$t0, $s5, 63, 4
	st.b	$t0, $t2, 12
	st.b	$t0, $t2, 13
	bstrins.d	$t1, $s5, 63, 4
	st.b	$t1, $t2, 14
	st.b	$t1, $t2, 15
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 8
	bne	$a0, $s6, .LBB8_40
# %bb.41:                               #   in Loop: Header=BB8_39 Depth=1
	ld.d	$a1, $s7, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	addi.d	$s8, $s8, 640
	ori	$a0, $zero, 40
	bne	$s0, $a0, .LBB8_39
# %bb.42:                               # %print_array.exit
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
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
.LBB8_43:
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
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
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
