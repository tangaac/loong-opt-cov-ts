	.file	"cvrmisc.c"
	.text
	.globl	cover_cost                      # -- Begin function cover_cost
	.p2align	5
	.type	cover_cost,@function
cover_cost:                             # @cover_cost
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(cube1list)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB0_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_2:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$a1, $a1, %got_pc_lo12(cube)
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 4
	st.w	$zero, $fp, 20
	ld.w	$a2, $a1, 8
	ori	$a3, $zero, 1
	st.w	$a0, $fp, 0
	blt	$a2, $a3, .LBB0_9
# %bb.3:                                # %iter.check
	pcalau12i	$a3, %got_pc_hi20(cdata)
	ld.d	$a3, $a3, %got_pc_lo12(cdata)
	ld.d	$a5, $a3, 8
	ori	$a3, $zero, 3
	addi.d	$a4, $fp, 4
	bgeu	$a3, $a2, .LBB0_6
# %bb.4:                                # %vector.memcheck
	alsl.d	$a3, $a2, $a5, 2
	bgeu	$a4, $a3, .LBB0_23
# %bb.5:                                # %vector.memcheck
	addi.d	$a3, $fp, 8
	bgeu	$a5, $a3, .LBB0_23
.LBB0_6:
	move	$a6, $zero
	move	$a3, $zero
.LBB0_7:                                # %vec.epilog.scalar.ph.preheader
	alsl.d	$a5, $a6, $a5, 2
	sub.d	$a6, $a2, $a6
	.p2align	4, , 16
.LBB0_8:                                # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, 0
	add.d	$a3, $a3, $a7
	st.w	$a3, $a4, 0
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bnez	$a6, .LBB0_8
	b	.LBB0_10
.LBB0_9:
	move	$a3, $zero
.LBB0_10:                               # %.preheader
	ld.w	$a6, $a1, 4
	addi.w	$a5, $a6, -1
	bge	$a2, $a5, .LBB0_16
# %bb.11:                               # %.lr.ph53
	pcalau12i	$a4, %got_pc_hi20(cdata)
	ld.d	$a4, $a4, %got_pc_lo12(cdata)
	ld.d	$a7, $a1, 112
	ld.d	$t0, $a1, 32
	ld.d	$t1, $a4, 8
	move	$a4, $zero
	alsl.d	$a7, $a2, $a7, 2
	alsl.d	$t0, $a2, $t0, 2
	alsl.d	$t1, $a2, $t1, 2
	nor	$t2, $a2, $zero
	add.d	$t2, $t2, $a6
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$t3, $t0, 0
	ld.w	$t4, $t1, 0
	mul.d	$t3, $t3, $a0
	sub.d	$t3, $t3, $t4
	add.d	$a4, $t3, $a4
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=1
	st.w	$a4, $fp, 12
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	beqz	$t2, .LBB0_17
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $a7, 0
	bnez	$t3, .LBB0_12
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$t3, $t1, 0
	add.d	$a4, $a4, $t3
	b	.LBB0_13
.LBB0_16:
	move	$a4, $zero
.LBB0_17:                               # %._crit_edge
	bne	$a2, $a6, .LBB0_19
# %bb.18:
	move	$a1, $zero
	ld.w	$a6, $s0, 0
	mul.w	$a5, $a6, $a0
	ori	$a0, $zero, 1
	bge	$a5, $a0, .LBB0_20
	b	.LBB0_22
.LBB0_19:
	pcalau12i	$a2, %got_pc_hi20(cdata)
	ld.d	$a2, $a2, %got_pc_lo12(cdata)
	ld.d	$a1, $a1, 32
	ld.d	$a2, $a2, 8
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	ldx.w	$a2, $a2, $a5
	mul.d	$a1, $a1, $a0
	sub.d	$a1, $a1, $a2
	st.w	$a1, $fp, 8
	ld.w	$a6, $s0, 0
	mul.w	$a5, $a6, $a0
	ori	$a0, $zero, 1
	blt	$a5, $a0, .LBB0_22
.LBB0_20:                               # %.lr.ph60
	ld.d	$a0, $s0, 24
	move	$a2, $zero
	alsl.d	$a5, $a5, $a0, 2
	slli.d	$a6, $a6, 2
	.p2align	4, , 16
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, 0
	bstrpick.d	$a7, $a7, 15, 15
	add.d	$a2, $a7, $a2
	add.d	$a0, $a0, $a6
	st.w	$a2, $fp, 20
	bltu	$a0, $a5, .LBB0_21
.LBB0_22:                               # %._crit_edge61
	add.d	$a0, $a1, $a3
	add.d	$a0, $a0, $a4
	st.w	$a0, $fp, 16
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_23:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a2, $a3, .LBB0_25
# %bb.24:
	move	$a6, $zero
	move	$a3, $zero
	b	.LBB0_29
.LBB0_25:                               # %vector.ph
	bstrpick.d	$a3, $a2, 30, 4
	slli.d	$a6, $a3, 4
	xvrepli.b	$xr1, 0
	addi.d	$a3, $a5, 32
	move	$a7, $a6
	xvori.b	$xr2, $xr1, 0
	.p2align	4, , 16
.LBB0_26:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a3, -32
	xvld	$xr4, $a3, 0
	xvadd.w	$xr1, $xr1, $xr3
	xvadd.w	$xr2, $xr2, $xr4
	addi.d	$a7, $a7, -16
	addi.d	$a3, $a3, 64
	bnez	$a7, .LBB0_26
# %bb.27:                               # %middle.block
	xvadd.w	$xr1, $xr2, $xr1
	xvhaddw.d.w	$xr1, $xr1, $xr1
	xvhaddw.q.d	$xr1, $xr1, $xr1
	xvpermi.d	$xr2, $xr1, 2
	xvadd.d	$xr1, $xr2, $xr1
	xvpickve2gr.d	$a3, $xr1, 0
	st.w	$a3, $a4, 0
	beq	$a6, $a2, .LBB0_10
# %bb.28:                               # %vec.epilog.iter.check
	andi	$a7, $a2, 12
	beqz	$a7, .LBB0_7
.LBB0_29:                               # %vec.epilog.ph
	move	$a7, $a6
	bstrpick.d	$a6, $a2, 30, 2
	slli.d	$a6, $a6, 2
	vinsgr2vr.w	$vr0, $a3, 0
	sub.d	$a3, $a7, $a6
	alsl.d	$a7, $a7, $a5, 2
	.p2align	4, , 16
.LBB0_30:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a3, $a3, 4
	addi.d	$a7, $a7, 16
	bnez	$a3, .LBB0_30
# %bb.31:                               # %vec.epilog.middle.block
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	st.w	$a3, $a4, 0
	bne	$a6, $a2, .LBB0_7
	b	.LBB0_10
.Lfunc_end0:
	.size	cover_cost, .Lfunc_end0-cover_cost
                                        # -- End function
	.globl	fmt_cost                        # -- Begin function fmt_cost
	.p2align	5
	.type	fmt_cost,@function
fmt_cost:                               # @fmt_cost
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$a1, $a1, %got_pc_lo12(cube)
	ld.w	$a2, $a1, 4
	ld.w	$a1, $a1, 8
	addi.w	$a2, $a2, -1
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 4
	ori	$a4, $zero, 12
	masknez	$a4, $a4, $a1
	ori	$a5, $zero, 8
	maskeqz	$a6, $a5, $a1
	or	$a4, $a6, $a4
	masknez	$a5, $a5, $a1
	ori	$a6, $zero, 16
	maskeqz	$a6, $a6, $a1
	or	$a5, $a6, $a5
	pcalau12i	$a6, %pc_hi20(.L.str.1)
	addi.d	$a6, $a6, %pc_lo12(.L.str.1)
	masknez	$a6, $a6, $a1
	pcalau12i	$a7, %pc_hi20(.L.str)
	ldx.w	$a4, $a0, $a4
	ldx.w	$a5, $a0, $a5
	addi.d	$a0, $a7, %pc_lo12(.L.str)
	maskeqz	$a0, $a0, $a1
	or	$a1, $a0, $a6
	pcalau12i	$a0, %pc_hi20(fmt_cost.s)
	addi.d	$fp, $a0, %pc_lo12(fmt_cost.s)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	fmt_cost, .Lfunc_end1-fmt_cost
                                        # -- End function
	.globl	print_cost                      # -- Begin function print_cost
	.p2align	5
	.type	print_cost,@function
print_cost:                             # @print_cost
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(cover_cost)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 4
	ld.w	$a0, $a0, 8
	addi.w	$a1, $a1, -1
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ld.w	$a2, $sp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	masknez	$a1, $a1, $a0
	pcalau12i	$a3, %pc_hi20(.L.str)
	addi.d	$a3, $a3, %pc_lo12(.L.str)
	ld.w	$a4, $sp, 20
	ld.w	$a5, $sp, 16
	maskeqz	$a3, $a3, $a0
	or	$a1, $a3, $a1
	masknez	$a3, $a4, $a0
	maskeqz	$a4, $a5, $a0
	ld.w	$a6, $sp, 24
	or	$a4, $a4, $a3
	ld.w	$a3, $sp, 12
	masknez	$a5, $a5, $a0
	maskeqz	$a0, $a6, $a0
	or	$a5, $a0, $a5
	pcalau12i	$a0, %pc_hi20(fmt_cost.s)
	addi.d	$fp, $a0, %pc_lo12(fmt_cost.s)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	print_cost, .Lfunc_end2-print_cost
                                        # -- End function
	.globl	copy_cost                       # -- Begin function copy_cost
	.p2align	5
	.type	copy_cost,@function
copy_cost:                              # @copy_cost
# %bb.0:
	vld	$vr0, $a0, 0
	vst	$vr0, $a1, 0
	ld.d	$a0, $a0, 16
	st.d	$a0, $a1, 16
	ret
.Lfunc_end3:
	.size	copy_cost, .Lfunc_end3-copy_cost
                                        # -- End function
	.globl	size_stamp                      # -- Begin function size_stamp
	.p2align	5
	.type	size_stamp,@function
size_stamp:                             # @size_stamp
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(cover_cost)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 4
	ld.w	$a0, $a0, 8
	addi.w	$a1, $a1, -1
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ld.w	$a2, $sp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	masknez	$a1, $a1, $a0
	pcalau12i	$a3, %pc_hi20(.L.str)
	addi.d	$a3, $a3, %pc_lo12(.L.str)
	ld.w	$a4, $sp, 12
	ld.w	$a5, $sp, 8
	maskeqz	$a3, $a3, $a0
	or	$a1, $a3, $a1
	masknez	$a3, $a4, $a0
	maskeqz	$a4, $a5, $a0
	ld.w	$a6, $sp, 16
	or	$a4, $a4, $a3
	ld.w	$a3, $sp, 4
	masknez	$a5, $a5, $a0
	maskeqz	$a0, $a6, $a0
	or	$a5, $a0, $a5
	pcalau12i	$a0, %pc_hi20(fmt_cost.s)
	addi.d	$s0, $a0, %pc_lo12(fmt_cost.s)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end4:
	.size	size_stamp, .Lfunc_end4-size_stamp
                                        # -- End function
	.globl	print_trace                     # -- Begin function print_trace
	.p2align	5
	.type	print_trace,@function
print_trace:                            # @print_trace
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cover_cost)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 4
	ld.w	$a0, $a0, 8
	addi.w	$a1, $a1, -1
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ld.w	$a2, $sp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	masknez	$a1, $a1, $a0
	pcalau12i	$a3, %pc_hi20(.L.str)
	addi.d	$a3, $a3, %pc_lo12(.L.str)
	ld.w	$a4, $sp, 20
	ld.w	$a5, $sp, 16
	maskeqz	$a3, $a3, $a0
	or	$a1, $a3, $a1
	masknez	$a3, $a4, $a0
	maskeqz	$a4, $a5, $a0
	ld.w	$a6, $sp, 24
	or	$a4, $a4, $a3
	ld.w	$a3, $sp, 12
	masknez	$a5, $a5, $a0
	maskeqz	$a0, $a6, $a0
	or	$a5, $a0, $a5
	pcalau12i	$a0, %pc_hi20(fmt_cost.s)
	addi.d	$s0, $a0, %pc_lo12(fmt_cost.s)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $fp
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end5:
	.size	print_trace, .Lfunc_end5-print_trace
                                        # -- End function
	.globl	totals                          # -- Begin function totals
	.p2align	5
	.type	totals,@function
totals:                                 # @totals
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s1, $a2
	move	$s0, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(total_time)
	ld.d	$a1, $a1, %got_pc_lo12(total_time)
	pcalau12i	$a2, %got_pc_hi20(total_calls)
	ld.d	$a2, $a2, %got_pc_lo12(total_calls)
	slli.d	$s3, $s0, 3
	ldx.d	$a3, $a1, $s3
	slli.d	$a4, $s0, 2
	ldx.w	$a5, $a2, $a4
	sub.d	$s0, $a0, $s2
	add.d	$a0, $a3, $s0
	stx.d	$a0, $a1, $s3
	addi.d	$a0, $a5, 1
	stx.w	$a0, $a2, $a4
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cover_cost)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(trace)
	ld.d	$a0, $a0, %got_pc_lo12(trace)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(total_name)
	ld.d	$a0, $a0, %got_pc_lo12(total_name)
	ldx.d	$s1, $a0, $s3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$a1, $a1, %got_pc_lo12(cube)
	ld.w	$a2, $a1, 4
	ld.w	$a1, $a1, 8
	move	$s0, $a0
	addi.w	$a0, $a2, -1
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	ld.w	$a2, $fp, 0
	ld.w	$a3, $fp, 4
	ori	$a1, $zero, 12
	masknez	$a1, $a1, $a0
	ori	$a4, $zero, 8
	maskeqz	$a5, $a4, $a0
	or	$a1, $a5, $a1
	masknez	$a4, $a4, $a0
	ori	$a5, $zero, 16
	maskeqz	$a5, $a5, $a0
	or	$a5, $a5, $a4
	pcalau12i	$a4, %pc_hi20(.L.str.1)
	addi.d	$a4, $a4, %pc_lo12(.L.str.1)
	masknez	$a6, $a4, $a0
	pcalau12i	$a7, %pc_hi20(.L.str)
	ldx.w	$a4, $fp, $a1
	ldx.w	$a5, $fp, $a5
	addi.d	$a1, $a7, %pc_lo12(.L.str)
	maskeqz	$a0, $a1, $a0
	or	$a1, $a0, $a6
	pcalau12i	$a0, %pc_hi20(fmt_cost.s)
	addi.d	$fp, $a0, %pc_lo12(fmt_cost.s)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.LBB6_2:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	totals, .Lfunc_end6-totals
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	fatal                           # -- Begin function fatal
	.p2align	5
	.type	fatal,@function
fatal:                                  # @fatal
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	ld.d	$a3, $a1, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	fatal, .Lfunc_end7-fatal
                                        # -- End function
	.type	fmt_cost.s,@object              # @fmt_cost.s
	.local	fmt_cost.s
	.comm	fmt_cost.s,200,1
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"c=%d in=%d out=%d tot=%d"
	.size	.L.str, 25

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"c=%d in=%d mv=%d out=%d"
	.size	.L.str.1, 24

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"# %s\tCost is %s\n"
	.size	.L.str.2, 17

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"# %s\tTime was %s, cost is %s\n"
	.size	.L.str.3, 30

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"espresso: %s\n"
	.size	.L.str.4, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fmt_cost.s
