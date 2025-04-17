	.file	"set.c"
	.text
	.globl	bit_index                       # -- Begin function bit_index
	.p2align	5
	.type	bit_index,@function
bit_index:                              # @bit_index
# %bb.0:
	beqz	$a0, .LBB0_5
# %bb.1:                                # %.preheader
	move	$a1, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_6
# %bb.2:                                # %.lr.ph.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	andi	$a2, $a1, 2
	bstrpick.d	$a1, $a1, 31, 1
	addi.w	$a0, $a0, 1
	beqz	$a2, .LBB0_3
# %bb.4:                                # %.loopexit
	ret
.LBB0_5:
	addi.w	$a0, $zero, -1
	ret
.LBB0_6:
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	bit_index, .Lfunc_end0-bit_index
                                        # -- End function
	.globl	set_ord                         # -- Begin function set_ord
	.p2align	5
	.type	set_ord,@function
set_ord:                                # @set_ord
# %bb.0:
	move	$a1, $a0
	ld.wu	$a0, $a0, 0
	andi	$a3, $a0, 1023
	beqz	$a3, .LBB1_5
# %bb.1:                                # %.lr.ph.preheader
	move	$a0, $zero
	addi.d	$a2, $a3, 1
	alsl.d	$a1, $a3, $a1, 2
	pcalau12i	$a3, %got_pc_hi20(bit_count)
	ld.d	$a3, $a3, %got_pc_lo12(bit_count)
	ori	$a4, $zero, 1
	lu12i.w	$a5, -4096
	lu32i.d	$a5, 0
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	bge	$a4, $a2, .LBB1_6
.LBB1_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	beqz	$a6, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	and	$a7, $a6, $a5
	andi	$t0, $a6, 255
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a3, $t0
	srli.d	$t1, $a6, 6
	andi	$t1, $t1, 1020
	ldx.w	$t1, $a3, $t1
	srli.d	$a6, $a6, 14
	andi	$a6, $a6, 1020
	ldx.w	$a6, $a3, $a6
	srli.d	$a7, $a7, 22
	ldx.w	$a7, $a3, $a7
	add.d	$a0, $t0, $a0
	add.d	$a0, $a0, $t1
	add.d	$a0, $a0, $a6
	add.w	$a0, $a0, $a7
	b	.LBB1_2
.LBB1_5:
	move	$a0, $zero
.LBB1_6:                                # %._crit_edge
	ret
.Lfunc_end1:
	.size	set_ord, .Lfunc_end1-set_ord
                                        # -- End function
	.globl	set_dist                        # -- Begin function set_dist
	.p2align	5
	.type	set_dist,@function
set_dist:                               # @set_dist
# %bb.0:
	move	$a2, $a0
	ld.wu	$a0, $a0, 0
	andi	$a4, $a0, 1023
	beqz	$a4, .LBB2_5
# %bb.1:                                # %.lr.ph.preheader
	move	$a0, $zero
	addi.d	$a3, $a4, 1
	alsl.d	$a1, $a4, $a1, 2
	alsl.d	$a2, $a4, $a2, 2
	pcalau12i	$a4, %got_pc_hi20(bit_count)
	ld.d	$a4, $a4, %got_pc_lo12(bit_count)
	ori	$a5, $zero, 1
	lu12i.w	$a6, -4096
	lu32i.d	$a6, 0
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	bge	$a5, $a3, .LBB2_6
.LBB2_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a2, 0
	ld.w	$t0, $a1, 0
	and	$a7, $t0, $a7
	beqz	$a7, .LBB2_2
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	and	$t0, $a7, $a6
	andi	$t1, $a7, 255
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a4, $t1
	srli.d	$t2, $a7, 6
	andi	$t2, $t2, 1020
	ldx.w	$t2, $a4, $t2
	srli.d	$a7, $a7, 14
	andi	$a7, $a7, 1020
	ldx.w	$a7, $a4, $a7
	srli.d	$t0, $t0, 22
	ldx.w	$t0, $a4, $t0
	add.d	$a0, $t1, $a0
	add.d	$a0, $a0, $t2
	add.d	$a0, $a0, $a7
	add.w	$a0, $a0, $t0
	b	.LBB2_2
.LBB2_5:
	move	$a0, $zero
.LBB2_6:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	set_dist, .Lfunc_end2-set_dist
                                        # -- End function
	.globl	set_clear                       # -- Begin function set_clear
	.p2align	5
	.type	set_clear,@function
set_clear:                              # @set_clear
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	slti	$a0, $a1, 33
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 5
	addi.d	$a1, $a1, 1
	ori	$a2, $zero, 1
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	st.w	$a0, $fp, 0
	slli.d	$a2, $a0, 2
	addi.d	$a0, $fp, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	set_clear, .Lfunc_end3-set_clear
                                        # -- End function
	.globl	set_fill                        # -- Begin function set_fill
	.p2align	5
	.type	set_fill,@function
set_fill:                               # @set_fill
# %bb.0:
	slti	$a2, $a1, 33
	addi.d	$a3, $a1, -1
	bstrpick.d	$a3, $a3, 31, 5
	addi.d	$a3, $a3, 1
	ori	$a4, $zero, 1
	maskeqz	$a4, $a4, $a2
	masknez	$a2, $a3, $a2
	or	$a3, $a4, $a2
	st.w	$a3, $a0, 0
	slli.d	$a2, $a3, 2
	slli.d	$a4, $a3, 5
	sub.d	$a1, $a4, $a1
	addi.d	$a4, $zero, -1
	srl.w	$a1, $a4, $a1
	ori	$a4, $zero, 2
	stx.w	$a1, $a0, $a2
	bltu	$a3, $a4, .LBB4_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.w	$a1, $a3, -1
	slli.d	$a2, $a1, 2
	addi.w	$a3, $a3, -2
	sub.d	$a1, $a1, $a3
	alsl.d	$a3, $a1, $a0, 2
	ori	$a1, $zero, 255
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB4_2:                                # %._crit_edge
	ret
.Lfunc_end4:
	.size	set_fill, .Lfunc_end4-set_fill
                                        # -- End function
	.globl	set_copy                        # -- Begin function set_copy
	.p2align	5
	.type	set_copy,@function
set_copy:                               # @set_copy
# %bb.0:
	ld.wu	$a2, $a1, 0
	andi	$a5, $a2, 1023
	ori	$a2, $zero, 7
	bltu	$a5, $a2, .LBB5_5
# %bb.1:
	sub.d	$a2, $a1, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB5_5
# %bb.2:                                # %vector.ph
	addi.d	$a3, $a5, 1
	andi	$a4, $a3, 2040
	sub.d	$a2, $a5, $a4
	slli.d	$a5, $a5, 2
	addi.d	$a6, $a5, -28
	add.d	$a5, $a0, $a6
	add.d	$a6, $a1, $a6
	move	$a7, $a4
	.p2align	4, , 16
.LBB5_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, 0
	xvst	$xr0, $a5, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	bnez	$a7, .LBB5_3
# %bb.4:                                # %middle.block
	bne	$a3, $a4, .LBB5_6
	b	.LBB5_8
.LBB5_5:
	move	$a2, $a5
.LBB5_6:                                # %scalar.ph.preheader
	addi.d	$a3, $a2, 1
	alsl.d	$a4, $a2, $a0, 2
	alsl.d	$a1, $a2, $a1, 2
	.p2align	4, , 16
.LBB5_7:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	st.w	$a2, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, -4
	addi.d	$a1, $a1, -4
	bnez	$a3, .LBB5_7
.LBB5_8:                                # %.loopexit
	ret
.Lfunc_end5:
	.size	set_copy, .Lfunc_end5-set_copy
                                        # -- End function
	.globl	set_and                         # -- Begin function set_and
	.p2align	5
	.type	set_and,@function
set_and:                                # @set_and
# %bb.0:
	ld.wu	$a3, $a0, 0
	ld.wu	$a4, $a1, 0
	srli.d	$a3, $a3, 10
	andi	$a6, $a4, 1023
	bstrins.d	$a4, $a3, 63, 10
	sltu	$a3, $zero, $a6
	sub.d	$a3, $a6, $a3
	addi.d	$a3, $a3, 1
	ori	$a5, $zero, 8
	st.w	$a4, $a0, 0
	bgeu	$a3, $a5, .LBB6_5
.LBB6_1:
	move	$a4, $a6
.LBB6_2:                                # %scalar.ph.preheader
	addi.d	$a3, $a4, 1
	alsl.d	$a5, $a4, $a0, 2
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB6_3:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	and	$a6, $a7, $a6
	st.w	$a6, $a5, 0
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a3, .LBB6_3
.LBB6_4:                                # %.loopexit
	ret
.LBB6_5:                                # %vector.memcheck
	sub.d	$a5, $a1, $a0
	ori	$a4, $zero, 32
	bltu	$a5, $a4, .LBB6_1
# %bb.6:                                # %vector.memcheck
	sub.d	$a5, $a2, $a0
	bltu	$a5, $a4, .LBB6_1
# %bb.7:                                # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	sub.d	$a4, $a6, $a5
	slli.d	$a6, $a6, 2
	addi.d	$t0, $a6, -28
	add.d	$a6, $a0, $t0
	add.d	$a7, $a2, $t0
	add.d	$t0, $a1, $t0
	move	$t1, $a5
	.p2align	4, , 16
.LBB6_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t0, 0
	xvld	$xr1, $a7, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a6, 0
	addi.d	$t1, $t1, -8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB6_8
# %bb.9:                                # %middle.block
	bne	$a3, $a5, .LBB6_2
	b	.LBB6_4
.Lfunc_end6:
	.size	set_and, .Lfunc_end6-set_and
                                        # -- End function
	.globl	set_or                          # -- Begin function set_or
	.p2align	5
	.type	set_or,@function
set_or:                                 # @set_or
# %bb.0:
	ld.wu	$a3, $a0, 0
	ld.wu	$a4, $a1, 0
	srli.d	$a3, $a3, 10
	andi	$a6, $a4, 1023
	bstrins.d	$a4, $a3, 63, 10
	sltu	$a3, $zero, $a6
	sub.d	$a3, $a6, $a3
	addi.d	$a3, $a3, 1
	ori	$a5, $zero, 8
	st.w	$a4, $a0, 0
	bgeu	$a3, $a5, .LBB7_5
.LBB7_1:
	move	$a4, $a6
.LBB7_2:                                # %scalar.ph.preheader
	addi.d	$a3, $a4, 1
	alsl.d	$a5, $a4, $a0, 2
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB7_3:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	or	$a6, $a7, $a6
	st.w	$a6, $a5, 0
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a3, .LBB7_3
.LBB7_4:                                # %.loopexit
	ret
.LBB7_5:                                # %vector.memcheck
	sub.d	$a5, $a1, $a0
	ori	$a4, $zero, 32
	bltu	$a5, $a4, .LBB7_1
# %bb.6:                                # %vector.memcheck
	sub.d	$a5, $a2, $a0
	bltu	$a5, $a4, .LBB7_1
# %bb.7:                                # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	sub.d	$a4, $a6, $a5
	slli.d	$a6, $a6, 2
	addi.d	$t0, $a6, -28
	add.d	$a6, $a0, $t0
	add.d	$a7, $a2, $t0
	add.d	$t0, $a1, $t0
	move	$t1, $a5
	.p2align	4, , 16
.LBB7_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t0, 0
	xvld	$xr1, $a7, 0
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a6, 0
	addi.d	$t1, $t1, -8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB7_8
# %bb.9:                                # %middle.block
	bne	$a3, $a5, .LBB7_2
	b	.LBB7_4
.Lfunc_end7:
	.size	set_or, .Lfunc_end7-set_or
                                        # -- End function
	.globl	set_diff                        # -- Begin function set_diff
	.p2align	5
	.type	set_diff,@function
set_diff:                               # @set_diff
# %bb.0:
	ld.wu	$a3, $a0, 0
	ld.wu	$a4, $a1, 0
	srli.d	$a3, $a3, 10
	andi	$a6, $a4, 1023
	bstrins.d	$a4, $a3, 63, 10
	sltu	$a3, $zero, $a6
	sub.d	$a3, $a6, $a3
	addi.d	$a3, $a3, 1
	ori	$a5, $zero, 8
	st.w	$a4, $a0, 0
	bgeu	$a3, $a5, .LBB8_5
.LBB8_1:
	move	$a4, $a6
.LBB8_2:                                # %scalar.ph.preheader
	addi.d	$a3, $a4, 1
	alsl.d	$a5, $a4, $a0, 2
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB8_3:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	andn	$a6, $a6, $a7
	st.w	$a6, $a5, 0
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a3, .LBB8_3
.LBB8_4:                                # %.loopexit
	ret
.LBB8_5:                                # %vector.memcheck
	sub.d	$a5, $a1, $a0
	ori	$a4, $zero, 32
	bltu	$a5, $a4, .LBB8_1
# %bb.6:                                # %vector.memcheck
	sub.d	$a5, $a2, $a0
	bltu	$a5, $a4, .LBB8_1
# %bb.7:                                # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	sub.d	$a4, $a6, $a5
	slli.d	$a6, $a6, 2
	addi.d	$t0, $a6, -28
	add.d	$a6, $a0, $t0
	add.d	$a7, $a2, $t0
	add.d	$t0, $a1, $t0
	xvrepli.b	$xr0, -1
	move	$t1, $a5
	.p2align	4, , 16
.LBB8_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a7, 0
	xvld	$xr2, $t0, 0
	xvxor.v	$xr1, $xr1, $xr0
	xvand.v	$xr1, $xr2, $xr1
	xvst	$xr1, $a6, 0
	addi.d	$t1, $t1, -8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB8_8
# %bb.9:                                # %middle.block
	bne	$a3, $a5, .LBB8_2
	b	.LBB8_4
.Lfunc_end8:
	.size	set_diff, .Lfunc_end8-set_diff
                                        # -- End function
	.globl	set_xor                         # -- Begin function set_xor
	.p2align	5
	.type	set_xor,@function
set_xor:                                # @set_xor
# %bb.0:
	ld.wu	$a3, $a0, 0
	ld.wu	$a4, $a1, 0
	srli.d	$a3, $a3, 10
	andi	$a6, $a4, 1023
	bstrins.d	$a4, $a3, 63, 10
	sltu	$a3, $zero, $a6
	sub.d	$a3, $a6, $a3
	addi.d	$a3, $a3, 1
	ori	$a5, $zero, 8
	st.w	$a4, $a0, 0
	bgeu	$a3, $a5, .LBB9_5
.LBB9_1:
	move	$a4, $a6
.LBB9_2:                                # %scalar.ph.preheader
	addi.d	$a3, $a4, 1
	alsl.d	$a5, $a4, $a0, 2
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a1, $a4, $a1, 2
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB9_3:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	xor	$a6, $a7, $a6
	st.w	$a6, $a5, 0
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$a4, $a3, .LBB9_3
.LBB9_4:                                # %.loopexit
	ret
.LBB9_5:                                # %vector.memcheck
	sub.d	$a5, $a1, $a0
	ori	$a4, $zero, 32
	bltu	$a5, $a4, .LBB9_1
# %bb.6:                                # %vector.memcheck
	sub.d	$a5, $a2, $a0
	bltu	$a5, $a4, .LBB9_1
# %bb.7:                                # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	sub.d	$a4, $a6, $a5
	slli.d	$a6, $a6, 2
	addi.d	$t0, $a6, -28
	add.d	$a6, $a0, $t0
	add.d	$a7, $a2, $t0
	add.d	$t0, $a1, $t0
	move	$t1, $a5
	.p2align	4, , 16
.LBB9_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t0, 0
	xvld	$xr1, $a7, 0
	xvxor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a6, 0
	addi.d	$t1, $t1, -8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB9_8
# %bb.9:                                # %middle.block
	bne	$a3, $a5, .LBB9_2
	b	.LBB9_4
.Lfunc_end9:
	.size	set_xor, .Lfunc_end9-set_xor
                                        # -- End function
	.globl	set_merge                       # -- Begin function set_merge
	.p2align	5
	.type	set_merge,@function
set_merge:                              # @set_merge
# %bb.0:
	ld.wu	$a4, $a0, 0
	ld.wu	$a5, $a1, 0
	srli.d	$a4, $a4, 10
	andi	$a7, $a5, 1023
	bstrins.d	$a5, $a4, 63, 10
	sltu	$a4, $zero, $a7
	sub.d	$a4, $a7, $a4
	addi.d	$a4, $a4, 1
	ori	$a6, $zero, 8
	st.w	$a5, $a0, 0
	bgeu	$a4, $a6, .LBB10_5
.LBB10_1:
	move	$a5, $a7
.LBB10_2:                               # %scalar.ph.preheader
	addi.d	$a4, $a5, 1
	alsl.d	$a6, $a5, $a0, 2
	alsl.d	$a2, $a5, $a2, 2
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a1, $a5, $a1, 2
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB10_3:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a1, 0
	ld.w	$t0, $a3, 0
	ld.w	$t1, $a2, 0
	and	$a7, $t0, $a7
	andn	$t0, $t1, $t0
	or	$a7, $t0, $a7
	st.w	$a7, $a6, 0
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -4
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -4
	bltu	$a5, $a4, .LBB10_3
.LBB10_4:                               # %.loopexit
	ret
.LBB10_5:                               # %vector.memcheck
	sub.d	$a6, $a1, $a0
	ori	$a5, $zero, 32
	bltu	$a6, $a5, .LBB10_1
# %bb.6:                                # %vector.memcheck
	sub.d	$a6, $a3, $a0
	bltu	$a6, $a5, .LBB10_1
# %bb.7:                                # %vector.memcheck
	sub.d	$a5, $a2, $a0
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB10_1
# %bb.8:                                # %vector.ph
	move	$a6, $a4
	bstrins.d	$a6, $zero, 2, 0
	sub.d	$a5, $a7, $a6
	slli.d	$a7, $a7, 2
	addi.d	$t2, $a7, -28
	add.d	$a7, $a0, $t2
	add.d	$t0, $a2, $t2
	add.d	$t1, $a3, $t2
	add.d	$t2, $a1, $t2
	xvrepli.b	$xr0, -1
	move	$t3, $a6
	.p2align	4, , 16
.LBB10_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $t2, 0
	xvld	$xr2, $t1, 0
	xvld	$xr3, $t0, 0
	xvand.v	$xr1, $xr2, $xr1
	xvxor.v	$xr2, $xr2, $xr0
	xvand.v	$xr2, $xr3, $xr2
	xvor.v	$xr1, $xr2, $xr1
	xvst	$xr1, $a7, 0
	addi.d	$t3, $t3, -8
	addi.d	$a7, $a7, -32
	addi.d	$t0, $t0, -32
	addi.d	$t1, $t1, -32
	addi.d	$t2, $t2, -32
	bnez	$t3, .LBB10_9
# %bb.10:                               # %middle.block
	bne	$a4, $a6, .LBB10_2
	b	.LBB10_4
.Lfunc_end10:
	.size	set_merge, .Lfunc_end10-set_merge
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function set_andp
.LCPI11_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI11_1:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	set_andp
	.p2align	5
	.type	set_andp,@function
set_andp:                               # @set_andp
# %bb.0:                                # %iter.check
	ld.wu	$a3, $a0, 0
	ld.wu	$a5, $a1, 0
	srli.d	$a4, $a3, 10
	andi	$a3, $a5, 1023
	bstrins.d	$a5, $a4, 63, 10
	sltu	$a4, $zero, $a3
	sub.d	$a4, $a3, $a4
	addi.d	$a4, $a4, 1
	ori	$a6, $zero, 8
	st.w	$a5, $a0, 0
	bgeu	$a4, $a6, .LBB11_5
# %bb.1:
	move	$t0, $zero
.LBB11_2:                               # %vec.epilog.scalar.ph.preheader
	addi.d	$a4, $a3, 1
	alsl.d	$a0, $a3, $a0, 2
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a1, $a3, $a1, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB11_3:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	and	$a5, $a6, $a5
	st.w	$a5, $a0, 0
	or	$t0, $a5, $t0
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, -4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$a3, $a4, .LBB11_3
.LBB11_4:                               # %.loopexit
	sltu	$a0, $zero, $t0
	ret
.LBB11_5:                               # %vector.memcheck
	sub.d	$a6, $a1, $a0
	ori	$a5, $zero, 64
	move	$t0, $zero
	bltu	$a6, $a5, .LBB11_2
# %bb.6:                                # %vector.memcheck
	sub.d	$a6, $a2, $a0
	bltu	$a6, $a5, .LBB11_2
# %bb.7:                                # %vector.main.loop.iter.check
	ori	$a7, $zero, 16
	slli.d	$a6, $a3, 2
	pcalau12i	$a5, %pc_hi20(.LCPI11_0)
	bgeu	$a4, $a7, .LBB11_12
# %bb.8:
	move	$a7, $zero
	move	$t0, $zero
.LBB11_9:                               # %vec.epilog.ph
	move	$t1, $a4
	bstrins.d	$t1, $zero, 2, 0
	sub.d	$a3, $a3, $t1
	xvinsgr2vr.w	$xr1, $t0, 0
	pcalau12i	$t0, %pc_hi20(.LCPI11_1)
	xvld	$xr0, $t0, %pc_lo12(.LCPI11_1)
	xvpermi.d	$xr1, $xr1, 68
	xvinsgr2vr.w	$xr2, $zero, 0
	xvpermi.d	$xr2, $xr2, 68
	xvshuf.w	$xr0, $xr2, $xr1
	sub.d	$t0, $a7, $t1
	slli.d	$a7, $a7, 2
	sub.d	$a6, $a6, $a7
	addi.d	$t2, $a6, -28
	add.d	$a6, $a0, $t2
	add.d	$a7, $a2, $t2
	add.d	$t2, $a1, $t2
	.p2align	4, , 16
.LBB11_10:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $t2, 0
	xvld	$xr2, $a7, 0
	xvand.v	$xr1, $xr2, $xr1
	xvpermi.d	$xr2, $xr1, 78
	xvshuf4i.w	$xr2, $xr2, 27
	xvst	$xr1, $a6, 0
	xvor.v	$xr0, $xr2, $xr0
	addi.d	$t0, $t0, 8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	addi.d	$t2, $t2, -32
	bnez	$t0, .LBB11_10
# %bb.11:                               # %vec.epilog.middle.block
	xvld	$xr1, $a5, %pc_lo12(.LCPI11_0)
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvor.v	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvor.v	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvor.v	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t0, $xr0, 0
	bne	$a4, $t1, .LBB11_2
	b	.LBB11_4
.LBB11_12:                              # %vector.ph
	move	$a7, $a4
	bstrins.d	$a7, $zero, 3, 0
	addi.d	$t2, $a6, -28
	add.d	$t0, $a1, $t2
	add.d	$t1, $a0, $t2
	xvrepli.b	$xr0, 0
	add.d	$t2, $a2, $t2
	move	$t3, $a7
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB11_13:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t0, 0
	xvld	$xr3, $t2, 0
	xvld	$xr4, $t0, -32
	xvld	$xr5, $t2, -32
	xvand.v	$xr2, $xr3, $xr2
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 27
	xvand.v	$xr4, $xr5, $xr4
	xvpermi.d	$xr5, $xr4, 78
	xvshuf4i.w	$xr5, $xr5, 27
	xvst	$xr2, $t1, 0
	xvst	$xr4, $t1, -32
	xvor.v	$xr0, $xr3, $xr0
	xvor.v	$xr1, $xr5, $xr1
	addi.d	$t3, $t3, -16
	addi.d	$t0, $t0, -64
	addi.d	$t1, $t1, -64
	addi.d	$t2, $t2, -64
	bnez	$t3, .LBB11_13
# %bb.14:                               # %middle.block
	xvld	$xr2, $a5, %pc_lo12(.LCPI11_0)
	xvor.v	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvor.v	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvor.v	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvor.v	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t0, $xr0, 0
	beq	$a4, $a7, .LBB11_4
# %bb.15:                               # %vec.epilog.iter.check
	andi	$t1, $a4, 8
	bnez	$t1, .LBB11_9
# %bb.16:
	sub.d	$a3, $a3, $a7
	b	.LBB11_2
.Lfunc_end11:
	.size	set_andp, .Lfunc_end11-set_andp
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function set_orp
.LCPI12_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI12_1:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	set_orp
	.p2align	5
	.type	set_orp,@function
set_orp:                                # @set_orp
# %bb.0:                                # %iter.check
	ld.wu	$a3, $a0, 0
	ld.wu	$a5, $a1, 0
	srli.d	$a4, $a3, 10
	andi	$a3, $a5, 1023
	bstrins.d	$a5, $a4, 63, 10
	sltu	$a4, $zero, $a3
	sub.d	$a4, $a3, $a4
	addi.d	$a4, $a4, 1
	ori	$a6, $zero, 8
	st.w	$a5, $a0, 0
	bgeu	$a4, $a6, .LBB12_5
# %bb.1:
	move	$t0, $zero
.LBB12_2:                               # %vec.epilog.scalar.ph.preheader
	addi.d	$a4, $a3, 1
	alsl.d	$a0, $a3, $a0, 2
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a1, $a3, $a1, 2
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB12_3:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	or	$a5, $a6, $a5
	st.w	$a5, $a0, 0
	or	$t0, $a5, $t0
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, -4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$a3, $a4, .LBB12_3
.LBB12_4:                               # %.loopexit
	sltu	$a0, $zero, $t0
	ret
.LBB12_5:                               # %vector.memcheck
	sub.d	$a6, $a1, $a0
	ori	$a5, $zero, 64
	move	$t0, $zero
	bltu	$a6, $a5, .LBB12_2
# %bb.6:                                # %vector.memcheck
	sub.d	$a6, $a2, $a0
	bltu	$a6, $a5, .LBB12_2
# %bb.7:                                # %vector.main.loop.iter.check
	ori	$a7, $zero, 16
	slli.d	$a6, $a3, 2
	pcalau12i	$a5, %pc_hi20(.LCPI12_0)
	bgeu	$a4, $a7, .LBB12_12
# %bb.8:
	move	$a7, $zero
	move	$t0, $zero
.LBB12_9:                               # %vec.epilog.ph
	move	$t1, $a4
	bstrins.d	$t1, $zero, 2, 0
	sub.d	$a3, $a3, $t1
	xvinsgr2vr.w	$xr1, $t0, 0
	pcalau12i	$t0, %pc_hi20(.LCPI12_1)
	xvld	$xr0, $t0, %pc_lo12(.LCPI12_1)
	xvpermi.d	$xr1, $xr1, 68
	xvinsgr2vr.w	$xr2, $zero, 0
	xvpermi.d	$xr2, $xr2, 68
	xvshuf.w	$xr0, $xr2, $xr1
	sub.d	$t0, $a7, $t1
	slli.d	$a7, $a7, 2
	sub.d	$a6, $a6, $a7
	addi.d	$t2, $a6, -28
	add.d	$a6, $a0, $t2
	add.d	$a7, $a2, $t2
	add.d	$t2, $a1, $t2
	.p2align	4, , 16
.LBB12_10:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $t2, 0
	xvld	$xr2, $a7, 0
	xvor.v	$xr1, $xr2, $xr1
	xvpermi.d	$xr2, $xr1, 78
	xvshuf4i.w	$xr2, $xr2, 27
	xvst	$xr1, $a6, 0
	xvor.v	$xr0, $xr2, $xr0
	addi.d	$t0, $t0, 8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	addi.d	$t2, $t2, -32
	bnez	$t0, .LBB12_10
# %bb.11:                               # %vec.epilog.middle.block
	xvld	$xr1, $a5, %pc_lo12(.LCPI12_0)
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvor.v	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvor.v	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvor.v	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t0, $xr0, 0
	bne	$a4, $t1, .LBB12_2
	b	.LBB12_4
.LBB12_12:                              # %vector.ph
	move	$a7, $a4
	bstrins.d	$a7, $zero, 3, 0
	addi.d	$t2, $a6, -28
	add.d	$t0, $a1, $t2
	add.d	$t1, $a0, $t2
	xvrepli.b	$xr0, 0
	add.d	$t2, $a2, $t2
	move	$t3, $a7
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB12_13:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t0, 0
	xvld	$xr3, $t2, 0
	xvld	$xr4, $t0, -32
	xvld	$xr5, $t2, -32
	xvor.v	$xr2, $xr3, $xr2
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 27
	xvor.v	$xr4, $xr5, $xr4
	xvpermi.d	$xr5, $xr4, 78
	xvshuf4i.w	$xr5, $xr5, 27
	xvst	$xr2, $t1, 0
	xvst	$xr4, $t1, -32
	xvor.v	$xr0, $xr3, $xr0
	xvor.v	$xr1, $xr5, $xr1
	addi.d	$t3, $t3, -16
	addi.d	$t0, $t0, -64
	addi.d	$t1, $t1, -64
	addi.d	$t2, $t2, -64
	bnez	$t3, .LBB12_13
# %bb.14:                               # %middle.block
	xvld	$xr2, $a5, %pc_lo12(.LCPI12_0)
	xvor.v	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvor.v	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvor.v	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvor.v	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t0, $xr0, 0
	beq	$a4, $a7, .LBB12_4
# %bb.15:                               # %vec.epilog.iter.check
	andi	$t1, $a4, 8
	bnez	$t1, .LBB12_9
# %bb.16:
	sub.d	$a3, $a3, $a7
	b	.LBB12_2
.Lfunc_end12:
	.size	set_orp, .Lfunc_end12-set_orp
                                        # -- End function
	.globl	setp_empty                      # -- Begin function setp_empty
	.p2align	5
	.type	setp_empty,@function
setp_empty:                             # @setp_empty
# %bb.0:
	ld.wu	$a1, $a0, 0
	andi	$a3, $a1, 1023
	.p2align	4, , 16
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	slli.d	$a1, $a3, 2
	ldx.w	$a1, $a0, $a1
	bnez	$a1, .LBB13_4
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	move	$a2, $a3
	ori	$a1, $zero, 1
	addi.w	$a3, $a3, -1
	blt	$a1, $a2, .LBB13_1
# %bb.3:
	move	$a0, $a1
	ret
.LBB13_4:
	move	$a0, $zero
	ret
.Lfunc_end13:
	.size	setp_empty, .Lfunc_end13-setp_empty
                                        # -- End function
	.globl	setp_full                       # -- Begin function setp_full
	.p2align	5
	.type	setp_full,@function
setp_full:                              # @setp_full
# %bb.0:
	ld.wu	$a2, $a0, 0
	andi	$a3, $a2, 1023
	slli.d	$a2, $a3, 5
	slli.d	$a4, $a3, 2
	ldx.w	$a4, $a0, $a4
	sub.d	$a2, $a2, $a1
	addi.w	$a1, $zero, -1
	srl.w	$a2, $a1, $a2
	bne	$a4, $a2, .LBB14_4
# %bb.1:                                # %.preheader.preheader
	addi.d	$a2, $a3, 1
	alsl.d	$a0, $a3, $a0, 2
	addi.d	$a3, $a0, -4
	ori	$a0, $zero, 2
	.p2align	4, , 16
.LBB14_2:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, -1
	blt	$a2, $a0, .LBB14_5
# %bb.3:                                #   in Loop: Header=BB14_2 Depth=1
	ld.w	$a4, $a3, 0
	addi.d	$a3, $a3, -4
	beq	$a4, $a1, .LBB14_2
.LBB14_4:
	move	$a0, $zero
	ret
.LBB14_5:
	ori	$a0, $zero, 1
	ret
.Lfunc_end14:
	.size	setp_full, .Lfunc_end14-setp_full
                                        # -- End function
	.globl	setp_equal                      # -- Begin function setp_equal
	.p2align	5
	.type	setp_equal,@function
setp_equal:                             # @setp_equal
# %bb.0:
	ld.wu	$a2, $a0, 0
	andi	$a4, $a2, 1023
	.p2align	4, , 16
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	move	$a3, $a4
	slli.d	$a2, $a4, 2
	ldx.w	$a4, $a0, $a2
	ldx.w	$a2, $a1, $a2
	bne	$a4, $a2, .LBB15_4
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	ori	$a2, $zero, 1
	addi.w	$a4, $a3, -1
	blt	$a2, $a3, .LBB15_1
# %bb.3:
	move	$a0, $a2
	ret
.LBB15_4:
	move	$a0, $zero
	ret
.Lfunc_end15:
	.size	setp_equal, .Lfunc_end15-setp_equal
                                        # -- End function
	.globl	setp_disjoint                   # -- Begin function setp_disjoint
	.p2align	5
	.type	setp_disjoint,@function
setp_disjoint:                          # @setp_disjoint
# %bb.0:
	ld.wu	$a2, $a0, 0
	andi	$a4, $a2, 1023
	.p2align	4, , 16
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	move	$a3, $a4
	slli.d	$a2, $a4, 2
	ldx.w	$a4, $a0, $a2
	ldx.w	$a2, $a1, $a2
	and	$a2, $a2, $a4
	bnez	$a2, .LBB16_4
# %bb.2:                                #   in Loop: Header=BB16_1 Depth=1
	ori	$a2, $zero, 1
	addi.w	$a4, $a3, -1
	blt	$a2, $a3, .LBB16_1
# %bb.3:
	move	$a0, $a2
	ret
.LBB16_4:
	move	$a0, $zero
	ret
.Lfunc_end16:
	.size	setp_disjoint, .Lfunc_end16-setp_disjoint
                                        # -- End function
	.globl	setp_implies                    # -- Begin function setp_implies
	.p2align	5
	.type	setp_implies,@function
setp_implies:                           # @setp_implies
# %bb.0:
	ld.wu	$a2, $a0, 0
	andi	$a4, $a2, 1023
	.p2align	4, , 16
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	move	$a3, $a4
	slli.d	$a2, $a4, 2
	ldx.w	$a4, $a0, $a2
	ldx.w	$a2, $a1, $a2
	andn	$a2, $a4, $a2
	bnez	$a2, .LBB17_4
# %bb.2:                                #   in Loop: Header=BB17_1 Depth=1
	ori	$a2, $zero, 1
	addi.w	$a4, $a3, -1
	blt	$a2, $a3, .LBB17_1
# %bb.3:
	move	$a0, $a2
	ret
.LBB17_4:
	move	$a0, $zero
	ret
.Lfunc_end17:
	.size	setp_implies, .Lfunc_end17-setp_implies
                                        # -- End function
	.globl	sf_or                           # -- Begin function sf_or
	.p2align	5
	.type	sf_or,@function
sf_or:                                  # @sf_or
# %bb.0:                                # %._crit_edge25
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 4
	slti	$s3, $a0, 33
	addi.d	$s2, $a0, -1
	srli.d	$a0, $s2, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
	ori	$s1, $zero, 8
	maskeqz	$a1, $s1, $s3
	masknez	$a0, $a0, $s3
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bstrpick.d	$a0, $s2, 31, 5
	addi.d	$a0, $a0, 1
	ori	$s2, $zero, 1
	maskeqz	$a1, $s2, $s3
	masknez	$a0, $a0, $s3
	or	$a0, $a1, $a0
	st.w	$a0, $fp, 0
	slli.d	$a2, $a0, 2
	addi.d	$a0, $fp, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.w	$a2, $s0, 0
	mul.w	$a1, $a2, $a0
	blt	$a1, $s2, .LBB18_10
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s0, 24
	alsl.d	$a1, $a1, $a0, 2
	slli.d	$a2, $a2, 2
	b	.LBB18_3
	.p2align	4, , 16
.LBB18_2:                               # %.loopexit
                                        #   in Loop: Header=BB18_3 Depth=1
	add.d	$a0, $a0, $a2
	bgeu	$a0, $a1, .LBB18_10
.LBB18_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_6 Depth 2
                                        #     Child Loop BB18_9 Depth 2
	ld.wu	$a3, $fp, 0
	andi	$a6, $a3, 1023
	sltu	$a3, $zero, $a6
	sub.d	$a3, $a6, $a3
	addi.d	$a4, $a3, 1
	bgeu	$a4, $s1, .LBB18_5
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=1
	move	$a3, $a6
	b	.LBB18_8
	.p2align	4, , 16
.LBB18_5:                               # %vector.ph
                                        #   in Loop: Header=BB18_3 Depth=1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	sub.d	$a3, $a6, $a5
	slli.d	$a6, $a6, 2
	addi.d	$a6, $a6, -28
	move	$a7, $a5
	.p2align	4, , 16
.LBB18_6:                               # %vector.body
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvldx	$xr0, $fp, $a6
	xvldx	$xr1, $a0, $a6
	xvor.v	$xr0, $xr1, $xr0
	xvstx	$xr0, $fp, $a6
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, -32
	bnez	$a7, .LBB18_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB18_3 Depth=1
	beq	$a4, $a5, .LBB18_2
.LBB18_8:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB18_3 Depth=1
	addi.d	$a4, $a3, 1
	slli.d	$a3, $a3, 2
	.p2align	4, , 16
.LBB18_9:                               # %scalar.ph
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a5, $fp, $a3
	ldx.w	$a6, $a0, $a3
	or	$a5, $a6, $a5
	stx.w	$a5, $fp, $a3
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, -4
	bltu	$s2, $a4, .LBB18_9
	b	.LBB18_2
.LBB18_10:                              # %._crit_edge
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end18:
	.size	sf_or, .Lfunc_end18-sf_or
                                        # -- End function
	.globl	sf_and                          # -- Begin function sf_and
	.p2align	5
	.type	sf_and,@function
sf_and:                                 # @sf_and
# %bb.0:                                # %._crit_edge27
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$s5, $a0, 4
	slti	$s1, $s5, 33
	addi.d	$s2, $s5, -1
	srli.d	$a0, $s2, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
	ori	$a1, $zero, 8
	maskeqz	$a1, $a1, $s1
	masknez	$a0, $a0, $s1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bstrpick.d	$a0, $s2, 31, 5
	addi.d	$a0, $a0, 1
	ori	$s2, $zero, 1
	maskeqz	$a1, $s2, $s1
	masknez	$a0, $a0, $s1
	or	$s3, $a1, $a0
	slli.d	$s6, $s3, 2
	addi.d	$s4, $s3, -1
	slli.d	$s1, $s4, 2
	sub.d	$a0, $s6, $s1
	add.d	$a0, $fp, $a0
	addi.d	$a2, $s1, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$s3, $fp, 0
	slli.d	$a0, $s3, 5
	sub.d	$a0, $a0, $s5
	addi.d	$a1, $zero, -1
	srl.w	$a0, $a1, $a0
	ori	$a1, $zero, 2
	stx.w	$a0, $fp, $s6
	bltu	$s3, $a1, .LBB19_2
# %bb.1:                                # %.lr.ph.preheader.i
	addi.w	$a0, $s3, -2
	sub.d	$a0, $s4, $a0
	alsl.d	$a0, $a0, $fp, 2
	ori	$a1, $zero, 255
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB19_2:                               # %set_fill.exit
	ld.w	$a0, $s0, 12
	ld.w	$a2, $s0, 0
	mul.w	$a1, $a2, $a0
	blt	$a1, $s2, .LBB19_12
# %bb.3:                                # %.lr.ph
	ld.d	$a0, $s0, 24
	alsl.d	$a1, $a1, $a0, 2
	slli.d	$a2, $a2, 2
	ori	$a3, $zero, 8
	ori	$a4, $zero, 1
	b	.LBB19_5
	.p2align	4, , 16
.LBB19_4:                               # %.loopexit
                                        #   in Loop: Header=BB19_5 Depth=1
	add.d	$a0, $a0, $a2
	bgeu	$a0, $a1, .LBB19_12
.LBB19_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_8 Depth 2
                                        #     Child Loop BB19_11 Depth 2
	ld.wu	$a5, $fp, 0
	andi	$t0, $a5, 1023
	sltu	$a5, $zero, $t0
	sub.d	$a5, $t0, $a5
	addi.d	$a6, $a5, 1
	bgeu	$a6, $a3, .LBB19_7
# %bb.6:                                #   in Loop: Header=BB19_5 Depth=1
	move	$a5, $t0
	b	.LBB19_10
	.p2align	4, , 16
.LBB19_7:                               # %vector.ph
                                        #   in Loop: Header=BB19_5 Depth=1
	move	$a7, $a6
	bstrins.d	$a7, $zero, 2, 0
	sub.d	$a5, $t0, $a7
	slli.d	$t0, $t0, 2
	addi.d	$t0, $t0, -28
	move	$t1, $a7
	.p2align	4, , 16
.LBB19_8:                               # %vector.body
                                        #   Parent Loop BB19_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvldx	$xr0, $fp, $t0
	xvldx	$xr1, $a0, $t0
	xvand.v	$xr0, $xr1, $xr0
	xvstx	$xr0, $fp, $t0
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, -32
	bnez	$t1, .LBB19_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB19_5 Depth=1
	beq	$a6, $a7, .LBB19_4
.LBB19_10:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB19_5 Depth=1
	addi.d	$a6, $a5, 1
	slli.d	$a5, $a5, 2
	.p2align	4, , 16
.LBB19_11:                              # %scalar.ph
                                        #   Parent Loop BB19_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a7, $fp, $a5
	ldx.w	$t0, $a0, $a5
	and	$a7, $t0, $a7
	stx.w	$a7, $fp, $a5
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, -4
	bltu	$a4, $a6, .LBB19_11
	b	.LBB19_4
.LBB19_12:                              # %._crit_edge
	move	$a0, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end19:
	.size	sf_and, .Lfunc_end19-sf_and
                                        # -- End function
	.globl	sf_active                       # -- Begin function sf_active
	.p2align	5
	.type	sf_active,@function
sf_active:                              # @sf_active
# %bb.0:
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 0
	mul.w	$a2, $a2, $a1
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB20_4
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a1, $a0, 24
	alsl.d	$a2, $a2, $a1, 2
	lu12i.w	$a3, 2
	.p2align	4, , 16
.LBB20_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	or	$a4, $a4, $a3
	st.w	$a4, $a1, 0
	ld.w	$a4, $a0, 0
	alsl.d	$a1, $a4, $a1, 2
	bltu	$a1, $a2, .LBB20_2
# %bb.3:                                # %._crit_edge.loopexit
	ld.w	$a1, $a0, 12
.LBB20_4:                               # %._crit_edge
	st.w	$a1, $a0, 16
	ret
.Lfunc_end20:
	.size	sf_active, .Lfunc_end20-sf_active
                                        # -- End function
	.globl	sf_inactive                     # -- Begin function sf_inactive
	.p2align	5
	.type	sf_inactive,@function
sf_inactive:                            # @sf_inactive
# %bb.0:
	ld.w	$a1, $a0, 12
	ld.w	$a7, $a0, 0
	mul.w	$a2, $a7, $a1
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB21_15
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$a1, $a0, 24
	alsl.d	$a2, $a2, $a1, 2
	lu12i.w	$a3, 2
	ori	$a4, $zero, 7
	ori	$a5, $zero, 32
	move	$a6, $a1
	b	.LBB21_3
	.p2align	4, , 16
.LBB21_2:                               #   in Loop: Header=BB21_3 Depth=1
	ld.w	$t0, $a0, 12
	addi.d	$t0, $t0, -1
	st.w	$t0, $a0, 12
	alsl.d	$a6, $a7, $a6, 2
	bgeu	$a6, $a2, .LBB21_15
.LBB21_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_8 Depth 2
                                        #     Child Loop BB21_12 Depth 2
	ld.wu	$t0, $a6, 0
	and	$t1, $t0, $a3
	beqz	$t1, .LBB21_2
# %bb.4:                                #   in Loop: Header=BB21_3 Depth=1
	beq	$a1, $a6, .LBB21_14
# %bb.5:                                #   in Loop: Header=BB21_3 Depth=1
	andi	$t2, $t0, 1023
	bltu	$t2, $a4, .LBB21_10
# %bb.6:                                #   in Loop: Header=BB21_3 Depth=1
	sub.d	$a7, $a6, $a1
	bltu	$a7, $a5, .LBB21_10
# %bb.7:                                # %vector.ph
                                        #   in Loop: Header=BB21_3 Depth=1
	addi.d	$t0, $t2, 1
	andi	$t1, $t0, 2040
	sub.d	$a7, $t2, $t1
	alsl.d	$t3, $t2, $a6, 2
	alsl.d	$t2, $t2, $a1, 2
	addi.d	$t2, $t2, -28
	addi.d	$t3, $t3, -28
	move	$t4, $t1
	.p2align	4, , 16
.LBB21_8:                               # %vector.body
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t3, 0
	xvst	$xr0, $t2, 0
	addi.d	$t4, $t4, -8
	addi.d	$t2, $t2, -32
	addi.d	$t3, $t3, -32
	bnez	$t4, .LBB21_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB21_3 Depth=1
	bne	$t0, $t1, .LBB21_11
	b	.LBB21_13
.LBB21_10:                              #   in Loop: Header=BB21_3 Depth=1
	move	$a7, $t2
.LBB21_11:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB21_3 Depth=1
	addi.d	$t0, $a7, 1
	alsl.d	$t1, $a7, $a1, 2
	alsl.d	$a7, $a7, $a6, 2
	.p2align	4, , 16
.LBB21_12:                              # %scalar.ph
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $a7, 0
	st.w	$t2, $t1, 0
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, -4
	addi.d	$a7, $a7, -4
	bnez	$t0, .LBB21_12
.LBB21_13:                              # %.loopexit.loopexit
                                        #   in Loop: Header=BB21_3 Depth=1
	ld.w	$a7, $a0, 0
.LBB21_14:                              # %.loopexit
                                        #   in Loop: Header=BB21_3 Depth=1
	alsl.d	$a1, $a7, $a1, 2
	alsl.d	$a6, $a7, $a6, 2
	bltu	$a6, $a2, .LBB21_3
.LBB21_15:                              # %._crit_edge
	ret
.Lfunc_end21:
	.size	sf_inactive, .Lfunc_end21-sf_inactive
                                        # -- End function
	.globl	sf_copy                         # -- Begin function sf_copy
	.p2align	5
	.type	sf_copy,@function
sf_copy:                                # @sf_copy
# %bb.0:
	ld.w	$a2, $a1, 4
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a1, 12
	st.w	$a2, $a0, 4
	st.w	$a3, $a0, 0
	ld.w	$a5, $a1, 16
	st.w	$a4, $a0, 12
	mul.d	$a2, $a4, $a3
	ori	$a3, $zero, 1
	st.w	$a5, $a0, 16
	blt	$a2, $a3, .LBB22_16
# %bb.1:                                # %iter.check
	ld.d	$a3, $a1, 24
	ld.d	$a4, $a0, 24
	ori	$a5, $zero, 4
	move	$a1, $zero
	bltu	$a2, $a5, .LBB22_5
# %bb.2:                                # %iter.check
	sub.d	$a5, $a4, $a3
	ori	$a6, $zero, 64
	bltu	$a5, $a6, .LBB22_5
# %bb.3:                                # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB22_6
# %bb.4:
	move	$a1, $zero
	b	.LBB22_10
.LBB22_5:
	move	$a5, $a4
	move	$a6, $a3
	b	.LBB22_14
.LBB22_6:                               # %vector.ph
	bstrpick.d	$a1, $a2, 62, 4
	slli.d	$a1, $a1, 4
	addi.d	$a5, $a3, 32
	addi.d	$a6, $a4, 32
	move	$a7, $a1
	.p2align	4, , 16
.LBB22_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$a5, $a5, 64
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB22_7
# %bb.8:                                # %middle.block
	beq	$a2, $a1, .LBB22_16
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a5, $a2, 12
	beqz	$a5, .LBB22_13
.LBB22_10:                              # %vec.epilog.ph
	move	$a7, $a1
	bstrpick.d	$a6, $a2, 62, 2
	slli.d	$a1, $a6, 2
	alsl.d	$a5, $a6, $a4, 4
	alsl.d	$a6, $a6, $a3, 4
	alsl.d	$a3, $a7, $a3, 2
	alsl.d	$a4, $a7, $a4, 2
	sub.d	$a7, $a7, $a1
	.p2align	4, , 16
.LBB22_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 16
	addi.d	$a7, $a7, 4
	addi.d	$a4, $a4, 16
	bnez	$a7, .LBB22_11
# %bb.12:                               # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB22_14
	b	.LBB22_16
.LBB22_13:
	alsl.d	$a5, $a1, $a4, 2
	alsl.d	$a6, $a1, $a3, 2
.LBB22_14:                              # %.lr.ph.i.preheader
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB22_15:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a6, 0
	addi.d	$a6, $a6, 4
	addi.d	$a3, $a5, 4
	addi.d	$a1, $a1, -1
	st.w	$a2, $a5, 0
	move	$a5, $a3
	bnez	$a1, .LBB22_15
.LBB22_16:                              # %intcpy.exit
	ret
.Lfunc_end22:
	.size	sf_copy, .Lfunc_end22-sf_copy
                                        # -- End function
	.globl	sf_join                         # -- Begin function sf_join
	.p2align	5
	.type	sf_join,@function
sf_join:                                # @sf_join
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	ld.w	$s3, $a0, 12
	ld.w	$s5, $a0, 0
	ld.w	$s2, $a1, 12
	ld.w	$s4, $a0, 4
	ld.w	$a2, $a1, 4
	ld.w	$s6, $a1, 0
	move	$a0, $s2
	move	$a1, $s3
	beq	$s4, $a2, .LBB23_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 12
	ld.w	$a0, $s0, 12
	ld.w	$s4, $s1, 4
.LBB23_2:
	pcalau12i	$a2, %pc_hi20(set_family_garbage)
	ld.d	$fp, $a2, %pc_lo12(set_family_garbage)
	mul.w	$s2, $s6, $s2
	mul.w	$s3, $s5, $s3
	add.w	$s5, $a0, $a1
	beqz	$fp, .LBB23_4
# %bb.3:
	ld.d	$a0, $fp, 32
	st.d	$a0, $a2, %pc_lo12(set_family_garbage)
	b	.LBB23_5
.LBB23_4:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB23_5:                               # %sf_new.exit
	st.w	$s4, $fp, 4
	slti	$a0, $s4, 33
	addi.d	$a1, $s4, -1
	bstrpick.d	$a1, $a1, 31, 5
	addi.d	$a1, $a1, 2
	ori	$a2, $zero, 2
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	st.w	$a0, $fp, 0
	st.w	$s5, $fp, 8
	mul.d	$a0, $s5, $a0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 12
	ld.w	$a1, $s1, 12
	ld.w	$a2, $s0, 12
	ld.w	$a3, $s1, 16
	ld.w	$a4, $s0, 16
	st.d	$a0, $fp, 24
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 12
	add.d	$a2, $a4, $a3
	ori	$a1, $zero, 1
	st.w	$a2, $fp, 16
	blt	$s3, $a1, .LBB23_21
# %bb.6:                                # %iter.check
	ld.d	$a3, $s1, 24
	ori	$a4, $zero, 4
	move	$a2, $zero
	bltu	$s3, $a4, .LBB23_10
# %bb.7:                                # %iter.check
	sub.d	$a4, $a0, $a3
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB23_10
# %bb.8:                                # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$s3, $a2, .LBB23_11
# %bb.9:
	move	$a2, $zero
	b	.LBB23_15
.LBB23_10:
	move	$a4, $a0
	move	$a5, $a3
	b	.LBB23_19
.LBB23_11:                              # %vector.ph
	bstrpick.d	$a2, $s3, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a4, $a3, 32
	addi.d	$a5, $a0, 32
	move	$a6, $a2
	.p2align	4, , 16
.LBB23_12:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB23_12
# %bb.13:                               # %middle.block
	beq	$a2, $s3, .LBB23_21
# %bb.14:                               # %vec.epilog.iter.check
	andi	$a4, $s3, 12
	beqz	$a4, .LBB23_18
.LBB23_15:                              # %vec.epilog.ph
	move	$a7, $a2
	bstrpick.d	$a5, $s3, 30, 2
	slli.d	$a2, $a5, 2
	alsl.d	$a4, $a5, $a0, 4
	alsl.d	$a5, $a5, $a3, 4
	alsl.d	$a3, $a7, $a3, 2
	alsl.d	$a6, $a7, $a0, 2
	sub.d	$a7, $a7, $a2
	.p2align	4, , 16
.LBB23_16:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vst	$vr0, $a6, 0
	addi.d	$a3, $a3, 16
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB23_16
# %bb.17:                               # %vec.epilog.middle.block
	bne	$a2, $s3, .LBB23_19
	b	.LBB23_21
.LBB23_18:
	alsl.d	$a4, $a2, $a0, 2
	alsl.d	$a5, $a2, $a3, 2
.LBB23_19:                              # %.lr.ph.i.preheader
	sub.d	$a2, $s3, $a2
	.p2align	4, , 16
.LBB23_20:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a4, 4
	addi.d	$a2, $a2, -1
	st.w	$a3, $a4, 0
	move	$a4, $a6
	bnez	$a2, .LBB23_20
.LBB23_21:                              # %intcpy.exit
	blt	$s2, $a1, .LBB23_27
# %bb.22:                               # %iter.check50
	ld.d	$a3, $s0, 24
	ori	$a2, $zero, 4
	alsl.d	$a1, $s3, $a0, 2
	bltu	$s2, $a2, .LBB23_24
# %bb.23:                               # %vector.memcheck46
	alsl.d	$a2, $s3, $a0, 2
	sub.d	$a2, $a2, $a3
	ori	$a4, $zero, 64
	bgeu	$a2, $a4, .LBB23_28
.LBB23_24:
	move	$a2, $zero
	move	$a4, $a3
.LBB23_25:                              # %.lr.ph.i22.preheader
	sub.d	$a0, $s2, $a2
	.p2align	4, , 16
.LBB23_26:                              # %.lr.ph.i22
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a1, 4
	addi.d	$a0, $a0, -1
	st.w	$a2, $a1, 0
	move	$a1, $a3
	bnez	$a0, .LBB23_26
.LBB23_27:                              # %intcpy.exit28
	move	$a0, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB23_28:                              # %vector.main.loop.iter.check52
	ori	$a2, $zero, 16
	bgeu	$s2, $a2, .LBB23_30
# %bb.29:
	move	$a2, $zero
	b	.LBB23_34
.LBB23_30:                              # %vector.ph53
	slli.d	$a5, $s3, 2
	bstrpick.d	$a2, $s2, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a4, $a3, 32
	add.d	$a5, $a5, $a0
	addi.d	$a5, $a5, 32
	move	$a6, $a2
	.p2align	4, , 16
.LBB23_31:                              # %vector.body56
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB23_31
# %bb.32:                               # %middle.block63
	beq	$a2, $s2, .LBB23_27
# %bb.33:                               # %vec.epilog.iter.check68
	andi	$a4, $s2, 12
	beqz	$a4, .LBB23_37
.LBB23_34:                              # %vec.epilog.ph67
	move	$a5, $a2
	bstrpick.d	$a4, $s2, 30, 2
	slli.d	$a2, $a4, 2
	alsl.d	$a1, $a4, $a1, 4
	alsl.d	$a4, $a4, $a3, 4
	slli.d	$a6, $a5, 2
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a6, $s3, $a6, 2
	add.d	$a0, $a0, $a6
	sub.d	$a5, $a5, $a2
	.p2align	4, , 16
.LBB23_35:                              # %vec.epilog.vector.body73
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vst	$vr0, $a0, 0
	addi.d	$a3, $a3, 16
	addi.d	$a5, $a5, 4
	addi.d	$a0, $a0, 16
	bnez	$a5, .LBB23_35
# %bb.36:                               # %vec.epilog.middle.block81
	bne	$a2, $s2, .LBB23_25
	b	.LBB23_27
.LBB23_37:
	alsl.d	$a1, $a2, $a1, 2
	alsl.d	$a4, $a2, $a3, 2
	b	.LBB23_25
.Lfunc_end23:
	.size	sf_join, .Lfunc_end23-sf_join
                                        # -- End function
	.globl	sf_append                       # -- Begin function sf_append
	.p2align	5
	.type	sf_append,@function
sf_append:                              # @sf_append
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ld.w	$s1, $a0, 12
	ld.w	$s2, $a0, 0
	ld.w	$s3, $a1, 12
	ld.w	$a0, $a0, 4
	ld.w	$a3, $a1, 4
	ld.w	$s4, $a1, 0
	move	$a1, $s3
	move	$a2, $s1
	beq	$a0, $a3, .LBB24_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 12
	ld.w	$a1, $s0, 12
.LBB24_2:
	ld.w	$a3, $fp, 0
	ld.d	$a0, $fp, 24
	add.w	$a1, $a1, $a2
	st.w	$a1, $fp, 8
	mul.d	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	beqz	$a0, .LBB24_4
# %bb.3:
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	b	.LBB24_5
.LBB24_4:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
.LBB24_5:
	move	$a1, $a0
	st.d	$a0, $fp, 24
	ld.d	$a0, $s0, 24
	mul.w	$a3, $s4, $s3
	ori	$a2, $zero, 1
	blt	$a3, $a2, .LBB24_11
# %bb.6:                                # %iter.check
	mul.w	$a5, $s2, $s1
	ori	$a4, $zero, 4
	alsl.d	$a2, $a5, $a1, 2
	bltu	$a3, $a4, .LBB24_8
# %bb.7:                                # %vector.memcheck
	alsl.d	$a4, $a5, $a1, 2
	sub.d	$a4, $a4, $a0
	ori	$a6, $zero, 64
	bgeu	$a4, $a6, .LBB24_14
.LBB24_8:
	move	$a4, $zero
	move	$a6, $a0
.LBB24_9:                               # %.lr.ph.i.preheader
	sub.d	$a1, $a3, $a4
	.p2align	4, , 16
.LBB24_10:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a6, 0
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a2, 4
	addi.d	$a1, $a1, -1
	st.w	$a3, $a2, 0
	move	$a2, $a4
	bnez	$a1, .LBB24_10
.LBB24_11:                              # %intcpy.exit
	ld.w	$a1, $s0, 12
	ld.w	$a2, $fp, 12
	ld.w	$a3, $s0, 16
	ld.w	$a4, $fp, 16
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 12
	add.d	$a1, $a4, $a3
	st.w	$a1, $fp, 16
	beqz	$a0, .LBB24_13
# %bb.12:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 24
.LBB24_13:                              # %sf_free.exit
	pcalau12i	$a0, %pc_hi20(set_family_garbage)
	ld.d	$a1, $a0, %pc_lo12(set_family_garbage)
	st.d	$a1, $s0, 32
	st.d	$s0, $a0, %pc_lo12(set_family_garbage)
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB24_14:                              # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB24_16
# %bb.15:
	move	$a4, $zero
	b	.LBB24_20
.LBB24_16:                              # %vector.ph
	slli.d	$a7, $a5, 2
	bstrpick.d	$a4, $a3, 30, 4
	slli.d	$a4, $a4, 4
	addi.d	$a6, $a0, 32
	add.d	$a7, $a7, $a1
	addi.d	$a7, $a7, 32
	move	$t0, $a4
	.p2align	4, , 16
.LBB24_17:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$a6, $a6, 64
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB24_17
# %bb.18:                               # %middle.block
	beq	$a4, $a3, .LBB24_11
# %bb.19:                               # %vec.epilog.iter.check
	andi	$a6, $a3, 12
	beqz	$a6, .LBB24_23
.LBB24_20:                              # %vec.epilog.ph
	move	$t0, $a4
	bstrpick.d	$a6, $a3, 30, 2
	slli.d	$a4, $a6, 2
	alsl.d	$a2, $a6, $a2, 4
	alsl.d	$a6, $a6, $a0, 4
	slli.d	$t1, $t0, 2
	alsl.d	$a7, $t0, $a0, 2
	alsl.d	$a5, $a5, $t1, 2
	add.d	$a1, $a1, $a5
	sub.d	$a5, $t0, $a4
	.p2align	4, , 16
.LBB24_21:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, 0
	vst	$vr0, $a1, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB24_21
# %bb.22:                               # %vec.epilog.middle.block
	bne	$a4, $a3, .LBB24_9
	b	.LBB24_11
.LBB24_23:
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a6, $a4, $a0, 2
	b	.LBB24_9
.Lfunc_end24:
	.size	sf_append, .Lfunc_end24-sf_append
                                        # -- End function
	.globl	sf_new                          # -- Begin function sf_new
	.p2align	5
	.type	sf_new,@function
sf_new:                                 # @sf_new
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(set_family_garbage)
	ld.d	$fp, $a2, %pc_lo12(set_family_garbage)
	move	$s1, $a1
	move	$s0, $a0
	beqz	$fp, .LBB25_2
# %bb.1:
	ld.d	$a0, $fp, 32
	st.d	$a0, $a2, %pc_lo12(set_family_garbage)
	b	.LBB25_3
.LBB25_2:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB25_3:
	st.w	$s1, $fp, 4
	slti	$a0, $s1, 33
	addi.d	$a1, $s1, -1
	bstrpick.d	$a1, $a1, 31, 5
	addi.d	$a1, $a1, 2
	ori	$a2, $zero, 2
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	st.w	$a0, $fp, 0
	st.w	$s0, $fp, 8
	mul.d	$a0, $s0, $a0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	st.d	$zero, $fp, 12
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end25:
	.size	sf_new, .Lfunc_end25-sf_new
                                        # -- End function
	.globl	sf_save                         # -- Begin function sf_save
	.p2align	5
	.type	sf_save,@function
sf_save:                                # @sf_save
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$s1, $a0, 12
	pcalau12i	$a0, %pc_hi20(set_family_garbage)
	ld.d	$fp, $a0, %pc_lo12(set_family_garbage)
	ld.w	$s2, $s0, 4
	beqz	$fp, .LBB26_2
# %bb.1:
	ld.d	$a1, $fp, 32
	st.d	$a1, $a0, %pc_lo12(set_family_garbage)
	b	.LBB26_3
.LBB26_2:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB26_3:                               # %sf_new.exit
	slti	$a0, $s2, 33
	addi.d	$a1, $s2, -1
	bstrpick.d	$a1, $a1, 31, 5
	addi.d	$a1, $a1, 2
	ori	$a2, $zero, 2
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	st.w	$a0, $fp, 0
	mul.d	$a0, $s1, $a0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	st.d	$zero, $sp, 8
	st.w	$s1, $sp, 4
	st.w	$s2, $sp, 0
	vld	$vr0, $sp, 0
	vst	$vr0, $fp, 4
	ld.w	$a1, $s0, 4
	ld.w	$a2, $s0, 0
	ld.w	$a3, $s0, 12
	st.w	$a1, $fp, 4
	st.w	$a2, $fp, 0
	ld.w	$a4, $s0, 16
	st.w	$a3, $fp, 12
	mul.d	$a1, $a3, $a2
	ori	$a2, $zero, 1
	st.w	$a4, $fp, 16
	blt	$a1, $a2, .LBB26_19
# %bb.4:                                # %iter.check
	ld.d	$a3, $s0, 24
	ori	$a4, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a4, .LBB26_8
# %bb.5:                                # %iter.check
	sub.d	$a4, $a0, $a3
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB26_8
# %bb.6:                                # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB26_9
# %bb.7:
	move	$a2, $zero
	b	.LBB26_13
.LBB26_8:
	move	$a4, $a0
	move	$a5, $a3
	b	.LBB26_17
.LBB26_9:                               # %vector.ph
	bstrpick.d	$a2, $a1, 62, 4
	slli.d	$a2, $a2, 4
	addi.d	$a4, $a3, 32
	addi.d	$a5, $a0, 32
	move	$a6, $a2
	.p2align	4, , 16
.LBB26_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB26_10
# %bb.11:                               # %middle.block
	beq	$a1, $a2, .LBB26_19
# %bb.12:                               # %vec.epilog.iter.check
	andi	$a4, $a1, 12
	beqz	$a4, .LBB26_16
.LBB26_13:                              # %vec.epilog.ph
	move	$a6, $a2
	bstrpick.d	$a5, $a1, 62, 2
	slli.d	$a2, $a5, 2
	alsl.d	$a4, $a5, $a0, 4
	alsl.d	$a5, $a5, $a3, 4
	alsl.d	$a3, $a6, $a3, 2
	alsl.d	$a0, $a6, $a0, 2
	sub.d	$a6, $a6, $a2
	.p2align	4, , 16
.LBB26_14:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vst	$vr0, $a0, 0
	addi.d	$a3, $a3, 16
	addi.d	$a6, $a6, 4
	addi.d	$a0, $a0, 16
	bnez	$a6, .LBB26_14
# %bb.15:                               # %vec.epilog.middle.block
	bne	$a1, $a2, .LBB26_17
	b	.LBB26_19
.LBB26_16:
	alsl.d	$a4, $a2, $a0, 2
	alsl.d	$a5, $a2, $a3, 2
.LBB26_17:                              # %.lr.ph.i.i.preheader
	sub.d	$a0, $a1, $a2
	.p2align	4, , 16
.LBB26_18:                              # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a4, 4
	addi.d	$a0, $a0, -1
	st.w	$a1, $a4, 0
	move	$a4, $a2
	bnez	$a0, .LBB26_18
.LBB26_19:                              # %sf_copy.exit
	move	$a0, $fp
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end26:
	.size	sf_save, .Lfunc_end26-sf_save
                                        # -- End function
	.globl	sf_free                         # -- Begin function sf_free
	.p2align	5
	.type	sf_free,@function
sf_free:                                # @sf_free
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB27_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 24
.LBB27_2:
	pcalau12i	$a0, %pc_hi20(set_family_garbage)
	ld.d	$a1, $a0, %pc_lo12(set_family_garbage)
	st.d	$a1, $fp, 32
	st.d	$fp, $a0, %pc_lo12(set_family_garbage)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end27:
	.size	sf_free, .Lfunc_end27-sf_free
                                        # -- End function
	.globl	sf_cleanup                      # -- Begin function sf_cleanup
	.p2align	5
	.type	sf_cleanup,@function
sf_cleanup:                             # @sf_cleanup
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(set_family_garbage)
	ld.d	$a0, $fp, %pc_lo12(set_family_garbage)
	beqz	$a0, .LBB28_2
	.p2align	4, , 16
.LBB28_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB28_1
.LBB28_2:                               # %._crit_edge
	st.d	$zero, $fp, %pc_lo12(set_family_garbage)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end28:
	.size	sf_cleanup, .Lfunc_end28-sf_cleanup
                                        # -- End function
	.globl	sf_addset                       # -- Begin function sf_addset
	.p2align	5
	.type	sf_addset,@function
sf_addset:                              # @sf_addset
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s1, $a0, 12
	ld.w	$a0, $a0, 8
	move	$s0, $a1
	bge	$s1, $a0, .LBB29_2
# %bb.1:                                # %._crit_edge
	ld.d	$a0, $fp, 24
	b	.LBB29_6
.LBB29_2:
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a1, $a0, $a1
	srli.d	$a1, $a1, 1
	add.d	$a1, $a0, $a1
	ld.w	$a2, $fp, 0
	ld.d	$a0, $fp, 24
	addi.w	$a1, $a1, 1
	st.w	$a1, $fp, 8
	mul.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	beqz	$a0, .LBB29_4
# %bb.3:
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 12
	b	.LBB29_5
.LBB29_4:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
.LBB29_5:
	st.d	$a0, $fp, 24
.LBB29_6:
	addi.d	$a1, $s1, 1
	st.w	$a1, $fp, 12
	ld.wu	$a1, $s0, 0
	ld.w	$a2, $fp, 0
	andi	$a6, $a1, 1023
	ori	$a3, $zero, 7
	mul.w	$a1, $s1, $a2
	bltu	$a6, $a3, .LBB29_8
# %bb.7:                                # %vector.memcheck
	alsl.d	$a2, $a1, $a0, 2
	sub.d	$a2, $s0, $a2
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB29_12
.LBB29_8:
	move	$a2, $a6
.LBB29_9:                               # %scalar.ph.preheader
	addi.d	$a3, $a2, 1
	slli.d	$a4, $a2, 2
	alsl.d	$a1, $a1, $a4, 2
	add.d	$a0, $a0, $a1
	alsl.d	$a1, $a2, $s0, 2
	.p2align	4, , 16
.LBB29_10:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 0
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, -4
	bnez	$a3, .LBB29_10
.LBB29_11:                              # %.loopexit
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB29_12:                              # %vector.ph
	addi.d	$a3, $a6, 1
	slli.d	$a5, $a1, 2
	andi	$a4, $a3, 2040
	sub.d	$a2, $a6, $a4
	alsl.d	$a5, $a6, $a5, 2
	add.d	$a5, $a5, $a0
	addi.d	$a5, $a5, -28
	alsl.d	$a6, $a6, $s0, 2
	addi.d	$a6, $a6, -28
	move	$a7, $a4
	.p2align	4, , 16
.LBB29_13:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, 0
	xvst	$xr0, $a5, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, -32
	addi.d	$a6, $a6, -32
	bnez	$a7, .LBB29_13
# %bb.14:                               # %middle.block
	beq	$a3, $a4, .LBB29_11
	b	.LBB29_9
.Lfunc_end29:
	.size	sf_addset, .Lfunc_end29-sf_addset
                                        # -- End function
	.globl	sf_delset                       # -- Begin function sf_delset
	.p2align	5
	.type	sf_delset,@function
sf_delset:                              # @sf_delset
# %bb.0:
	ld.w	$a3, $a0, 12
	ld.w	$a4, $a0, 0
	ld.d	$a2, $a0, 24
	addi.d	$a3, $a3, -1
	st.w	$a3, $a0, 12
	mul.w	$a0, $a3, $a4
	slli.d	$a7, $a0, 2
	ldx.wu	$a3, $a2, $a7
	andi	$t0, $a3, 1023
	ori	$a3, $zero, 7
	mul.w	$a1, $a4, $a1
	bltu	$t0, $a3, .LBB30_5
# %bb.1:                                # %vector.memcheck
	sub.d	$a3, $a0, $a1
	bstrpick.d	$a3, $a3, 61, 3
	slli.d	$a3, $a3, 3
	beqz	$a3, .LBB30_5
# %bb.2:                                # %vector.ph
	addi.d	$a4, $t0, 1
	andi	$a5, $a4, 2040
	sub.d	$a3, $t0, $a5
	slli.d	$a6, $a1, 2
	alsl.d	$a6, $t0, $a6, 2
	add.d	$a6, $a6, $a2
	addi.d	$a6, $a6, -28
	alsl.d	$a7, $t0, $a7, 2
	add.d	$a7, $a7, $a2
	addi.d	$a7, $a7, -28
	move	$t0, $a5
	.p2align	4, , 16
.LBB30_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a7, 0
	xvst	$xr0, $a6, 0
	addi.d	$t0, $t0, -8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB30_3
# %bb.4:                                # %middle.block
	bne	$a4, $a5, .LBB30_6
	b	.LBB30_8
.LBB30_5:
	move	$a3, $t0
.LBB30_6:                               # %scalar.ph.preheader
	addi.d	$a4, $a3, 1
	slli.d	$a3, $a3, 2
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $a2, $a1
	alsl.d	$a0, $a0, $a3, 2
	add.d	$a0, $a2, $a0
	.p2align	4, , 16
.LBB30_7:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	st.w	$a2, $a1, 0
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, -4
	bnez	$a4, .LBB30_7
.LBB30_8:                               # %set_copy.exit
	ret
.Lfunc_end30:
	.size	sf_delset, .Lfunc_end30-sf_delset
                                        # -- End function
	.globl	sf_print                        # -- Begin function sf_print
	.p2align	5
	.type	sf_print,@function
sf_print:                               # @sf_print
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB31_3
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$s0, $fp, 24
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB31_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ps1)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 12
	addi.w	$s1, $s1, 1
	alsl.d	$s0, $a0, $s0, 2
	blt	$s1, $a1, .LBB31_2
.LBB31_3:                               # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end31:
	.size	sf_print, .Lfunc_end31-sf_print
                                        # -- End function
	.globl	sf_bm_print                     # -- Begin function sf_bm_print
	.p2align	5
	.type	sf_bm_print,@function
sf_bm_print:                            # @sf_bm_print
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	ori	$s3, $zero, 1
	blt	$a0, $s3, .LBB32_6
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	ld.d	$s4, $fp, 24
	lu12i.w	$a0, 131071
	ori	$s5, $a0, 4092
	pcalau12i	$a0, %pc_hi20(s1)
	addi.d	$s1, $a0, %pc_lo12(s1)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s2, $a0, %pc_lo12(.L.str.3)
	b	.LBB32_3
	.p2align	4, , 16
.LBB32_2:                               # %pbv1.exit
                                        #   in Loop: Header=BB32_3 Depth=1
	stx.b	$zero, $s1, $a0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ld.w	$a1, $fp, 12
	addi.w	$s0, $s0, 1
	alsl.d	$s4, $a0, $s4, 2
	bge	$s0, $a1, .LBB32_6
.LBB32_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_5 Depth 2
	ld.w	$a0, $fp, 4
	blt	$a0, $s3, .LBB32_2
# %bb.4:                                # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB32_3 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	addi.d	$a3, $s4, 4
	.p2align	4, , 16
.LBB32_5:                               # %.lr.ph.i
                                        #   Parent Loop BB32_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a4, $a2, 3
	and	$a4, $a4, $s5
	ldx.w	$a4, $a3, $a4
	srl.w	$a4, $a4, $a1
	andi	$a4, $a4, 1
	sltui	$a4, $a4, 1
	xori	$a4, $a4, 49
	stx.b	$a4, $s1, $a2
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	bne	$a0, $a2, .LBB32_5
	b	.LBB32_2
.LBB32_6:                               # %._crit_edge
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end32:
	.size	sf_bm_print, .Lfunc_end32-sf_bm_print
                                        # -- End function
	.globl	sf_write                        # -- Begin function sf_write
	.p2align	5
	.type	sf_write,@function
sf_write:                               # @sf_write
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a2, $a1, 12
	ld.w	$a3, $a1, 4
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	ld.w	$a1, $fp, 0
	mul.w	$a0, $a1, $a0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB33_8
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$s3, $fp, 24
	alsl.d	$a0, $a0, $s3, 2
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s1, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s2, $a0, %pc_lo12(.L.str.7)
	b	.LBB33_3
	.p2align	4, , 16
.LBB33_2:                               # %set_write.exit
                                        #   in Loop: Header=BB33_3 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	alsl.d	$s3, $a0, $s3, 2
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	bgeu	$s3, $a0, .LBB33_8
.LBB33_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_5 Depth 2
	ld.wu	$a0, $s3, 0
	move	$s4, $zero
	andi	$s5, $a0, 1023
	addi.d	$s6, $s5, 1
	move	$s7, $s3
	b	.LBB33_5
	.p2align	4, , 16
.LBB33_4:                               #   in Loop: Header=BB33_5 Depth=2
	addi.d	$s7, $s7, 4
	beq	$s6, $s4, .LBB33_2
.LBB33_5:                               #   Parent Loop BB33_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $s7, 0
	move	$s8, $s4
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
	beq	$s5, $s8, .LBB33_4
# %bb.6:                                #   in Loop: Header=BB33_5 Depth=2
	andi	$a0, $s4, 7
	bnez	$a0, .LBB33_4
# %bb.7:                                #   in Loop: Header=BB33_5 Depth=2
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB33_4
.LBB33_8:                               # %._crit_edge
	move	$a0, $s0
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end33:
	.size	sf_write, .Lfunc_end33-sf_write
                                        # -- End function
	.globl	sf_read                         # -- Begin function sf_read
	.p2align	5
	.type	sf_read,@function
sf_read:                                # @sf_read
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 4
	addi.d	$a3, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 4
	pcalau12i	$a0, %pc_hi20(set_family_garbage)
	ld.d	$s0, $a0, %pc_lo12(set_family_garbage)
	ld.w	$s2, $sp, 0
	beqz	$s0, .LBB34_2
# %bb.1:
	ld.d	$a1, $s0, 32
	st.d	$a1, $a0, %pc_lo12(set_family_garbage)
	b	.LBB34_3
.LBB34_2:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB34_3:                               # %sf_new.exit
	st.w	$s2, $s0, 4
	slti	$a0, $s2, 33
	addi.d	$a1, $s2, -1
	bstrpick.d	$a1, $a1, 31, 5
	addi.d	$a1, $a1, 2
	ori	$a2, $zero, 2
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$s2, $a2, $a0
	st.w	$s2, $s0, 0
	st.w	$s1, $s0, 8
	mul.d	$a0, $s1, $s2
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$s1, $a0
	st.d	$a0, $s0, 24
	st.w	$zero, $s0, 16
	mul.w	$a0, $a1, $s2
	ori	$s3, $zero, 1
	st.w	$a1, $s0, 12
	blt	$a0, $s3, .LBB34_9
# %bb.4:                                # %.lr.ph20.preheader
	alsl.d	$s4, $a0, $s1, 2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s2, $a0, %pc_lo12(.L.str.5)
	b	.LBB34_6
	.p2align	4, , 16
.LBB34_5:                               # %._crit_edge
                                        #   in Loop: Header=BB34_6 Depth=1
	ld.w	$a0, $s0, 0
	alsl.d	$s1, $a0, $s1, 2
	bgeu	$s1, $s4, .LBB34_9
.LBB34_6:                               # %.lr.ph20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_8 Depth 2
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s1, 0
	andi	$a0, $a0, 1023
	st.w	$s3, $sp, 0
	beqz	$a0, .LBB34_5
# %bb.7:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB34_6 Depth=1
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB34_8:                               # %.lr.ph
                                        #   Parent Loop BB34_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a2, $a0, $s1, 2
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 0
	ld.wu	$a1, $s1, 0
	addi.w	$a0, $a0, 1
	andi	$a1, $a1, 1023
	st.w	$a0, $sp, 0
	bgeu	$a1, $a0, .LBB34_8
	b	.LBB34_5
.LBB34_9:                               # %._crit_edge21
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end34:
	.size	sf_read, .Lfunc_end34-sf_read
                                        # -- End function
	.globl	set_write                       # -- Begin function set_write
	.p2align	5
	.type	set_write,@function
set_write:                              # @set_write
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.wu	$a1, $a1, 0
	move	$fp, $a0
	move	$s5, $zero
	andi	$s3, $a1, 1023
	addi.d	$s4, $s3, 1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s1, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s2, $a0, %pc_lo12(.L.str.7)
	b	.LBB35_2
	.p2align	4, , 16
.LBB35_1:                               #   in Loop: Header=BB35_2 Depth=1
	addi.d	$s0, $s0, 4
	beq	$s4, $s5, .LBB35_5
.LBB35_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s0, 0
	move	$s6, $s5
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	beq	$s3, $s6, .LBB35_1
# %bb.3:                                #   in Loop: Header=BB35_2 Depth=1
	andi	$a0, $s5, 7
	bnez	$a0, .LBB35_1
# %bb.4:                                #   in Loop: Header=BB35_2 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB35_1
.LBB35_5:
	ori	$a0, $zero, 10
	move	$a1, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end35:
	.size	set_write, .Lfunc_end35-set_write
                                        # -- End function
	.globl	sf_bm_read                      # -- Begin function sf_bm_read
	.p2align	5
	.type	sf_bm_read,@function
sf_bm_read:                             # @sf_bm_read
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 20
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 20
	pcalau12i	$a0, %pc_hi20(set_family_garbage)
	ld.d	$s0, $a0, %pc_lo12(set_family_garbage)
	ld.w	$s2, $sp, 16
	beqz	$s0, .LBB36_2
# %bb.1:
	ld.d	$a1, $s0, 32
	st.d	$a1, $a0, %pc_lo12(set_family_garbage)
	b	.LBB36_3
.LBB36_2:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB36_3:                               # %sf_new.exit
	slti	$a0, $s2, 33
	addi.d	$a1, $s2, -1
	bstrpick.d	$a1, $a1, 31, 5
	addi.d	$a1, $a1, 2
	ori	$a2, $zero, 2
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
	st.w	$a0, $s0, 0
	mul.d	$a0, $s1, $a0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 24
	st.d	$zero, $sp, 8
	st.w	$s1, $sp, 4
	st.w	$s2, $sp, 0
	vld	$vr0, $sp, 0
	ld.w	$a0, $sp, 20
	ori	$s4, $zero, 1
	vst	$vr0, $s0, 4
	blt	$a0, $s4, .LBB36_15
# %bb.4:                                # %.lr.ph18.preheader
	move	$s5, $zero
	ori	$s6, $zero, 48
	ori	$s7, $zero, 49
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s1, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s2, $a0, %pc_lo12(.L.str.10)
	b	.LBB36_6
	.p2align	4, , 16
.LBB36_5:                               #   in Loop: Header=BB36_6 Depth=1
	ld.w	$a0, $sp, 20
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB36_15
.LBB36_6:                               # %.lr.ph18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_10 Depth 2
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 24
	ld.w	$a2, $s0, 0
	addi.d	$a3, $a0, 1
	st.w	$a3, $s0, 12
	ld.w	$a3, $s0, 4
	mul.w	$a0, $a0, $a2
	alsl.d	$a4, $a0, $a1, 2
	slli.d	$a0, $a0, 2
	slti	$a2, $a3, 33
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 5
	addi.d	$a3, $a3, 1
	maskeqz	$a5, $s4, $a2
	masknez	$a2, $a3, $a2
	or	$a2, $a5, $a2
	stx.w	$a2, $a1, $a0
	slli.d	$a2, $a2, 2
	addi.d	$s3, $a4, 4
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 16
	blt	$a0, $s4, .LBB36_13
# %bb.7:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB36_6 Depth=1
	move	$s8, $zero
	b	.LBB36_10
	.p2align	4, , 16
.LBB36_8:                               #   in Loop: Header=BB36_10 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
.LBB36_9:                               #   in Loop: Header=BB36_10 Depth=2
	ld.w	$a0, $sp, 16
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB36_13
.LBB36_10:                              # %.lr.ph
                                        #   Parent Loop BB36_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB36_9
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB36_10 Depth=2
	bne	$a0, $s7, .LBB36_8
# %bb.12:                               #   in Loop: Header=BB36_10 Depth=2
	bstrpick.d	$a0, $s8, 31, 5
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 60, 2
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s3, $a0
	sll.w	$a2, $s4, $s8
	or	$a1, $a1, $a2
	stx.w	$a1, $s3, $a0
	b	.LBB36_9
	.p2align	4, , 16
.LBB36_13:                              # %._crit_edge
                                        #   in Loop: Header=BB36_6 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB36_5
# %bb.14:                               #   in Loop: Header=BB36_6 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
	b	.LBB36_5
.LBB36_15:                              # %._crit_edge19
	move	$a0, $s0
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
.Lfunc_end36:
	.size	sf_bm_read, .Lfunc_end36-sf_bm_read
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function ps1
.LCPI37_0:
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.text
	.globl	ps1
	.p2align	5
	.type	ps1,@function
ps1:                                    # @ps1
# %bb.0:
	move	$a1, $a0
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a6, $a0, 5
	pcalau12i	$a0, %pc_hi20(s1)
	addi.d	$a0, $a0, %pc_lo12(s1)
	ori	$a2, $zero, 91
	st.b	$a2, $a0, 0
	beqz	$a6, .LBB37_16
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	move	$a2, $zero
	addi.d	$a1, $a1, 4
	addi.d	$a3, $sp, -20
	ori	$a4, $zero, 1
	addi.d	$a5, $sp, 11
	addi.w	$a6, $a6, 0
	ori	$a7, $zero, 44
	lu12i.w	$t0, -209716
	ori	$t0, $t0, 3277
	lu32i.d	$t0, 0
	ori	$t1, $zero, 9
	ori	$t2, $zero, 32
	ori	$t3, $zero, 105
	ori	$t5, $zero, 1
	ori	$t4, $zero, 1
	b	.LBB37_3
	.p2align	4, , 16
.LBB37_2:                               #   in Loop: Header=BB37_3 Depth=1
	addi.w	$a2, $a2, 1
	beq	$a2, $a6, .LBB37_18
.LBB37_3:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_7 Depth 2
                                        #     Child Loop BB37_11 Depth 2
                                        #     Child Loop BB37_13 Depth 2
	bstrpick.d	$t6, $a2, 31, 5
	slli.d	$t6, $t6, 2
	bstrpick.d	$t6, $t6, 60, 2
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $a1, $t6
	srl.w	$t6, $t6, $a2
	andi	$t6, $t6, 1
	beqz	$t6, .LBB37_2
# %bb.4:                                #   in Loop: Header=BB37_3 Depth=1
	bnez	$t5, .LBB37_6
# %bb.5:                                #   in Loop: Header=BB37_3 Depth=1
	addi.w	$t5, $t4, 0
	addi.d	$t4, $t4, 1
	stx.b	$a7, $a0, $t5
.LBB37_6:                               #   in Loop: Header=BB37_3 Depth=1
	move	$t5, $zero
	addi.d	$t6, $sp, 12
	ori	$fp, $zero, 1
	move	$t8, $a2
	.p2align	4, , 16
.LBB37_7:                               #   Parent Loop BB37_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s0, $t8
	move	$t7, $fp
	bstrpick.d	$t8, $t8, 31, 0
	mul.d	$t8, $t8, $t0
	srli.d	$t8, $t8, 35
	slli.d	$fp, $t8, 3
	alsl.d	$fp, $t8, $fp, 1
	sub.d	$fp, $s0, $fp
	ori	$fp, $fp, 48
	st.b	$fp, $t6, 0
	addi.w	$t5, $t5, 1
	addi.d	$t6, $t6, 1
	addi.w	$fp, $t7, 1
	bltu	$t1, $s0, .LBB37_7
# %bb.8:                                # %.preheader.preheader
                                        #   in Loop: Header=BB37_3 Depth=1
	addi.w	$s0, $t4, 0
	bge	$t5, $t2, .LBB37_10
# %bb.9:                                #   in Loop: Header=BB37_3 Depth=1
	move	$t4, $s0
	b	.LBB37_13
	.p2align	4, , 16
.LBB37_10:                              # %vector.ph
                                        #   in Loop: Header=BB37_3 Depth=1
	slt	$t4, $a4, $t5
	masknez	$t6, $a4, $t4
	maskeqz	$t4, $t5, $t4
	or	$t6, $t4, $t6
	bstrpick.d	$t4, $t6, 30, 5
	slli.d	$t8, $t4, 5
	add.d	$t4, $t8, $s0
	sub.d	$t5, $t5, $t8
	add.d	$fp, $a3, $t7
	slt	$s1, $a4, $t7
	masknez	$s2, $a4, $s1
	maskeqz	$t7, $t7, $s1
	or	$t7, $t7, $s2
	bstrpick.d	$t7, $t7, 30, 5
	slli.d	$t7, $t7, 5
	add.d	$s0, $a0, $s0
	.p2align	4, , 16
.LBB37_11:                              # %vector.body
                                        #   Parent Loop BB37_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $fp, 0
	pcalau12i	$s1, %pc_hi20(.LCPI37_0)
	xvld	$xr1, $s1, %pc_lo12(.LCPI37_0)
	xvpermi.d	$xr0, $xr0, 78
	xvshuf.b	$xr0, $xr0, $xr0, $xr1
	xvst	$xr0, $s0, 0
	addi.d	$fp, $fp, -32
	addi.d	$t7, $t7, -32
	addi.d	$s0, $s0, 32
	bnez	$t7, .LBB37_11
# %bb.12:                               # %middle.block
                                        #   in Loop: Header=BB37_3 Depth=1
	beq	$t6, $t8, .LBB37_14
	.p2align	4, , 16
.LBB37_13:                              # %.preheader
                                        #   Parent Loop BB37_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t6, $t5
	ldx.b	$t7, $a5, $t5
	addi.d	$t5, $t5, -1
	stx.b	$t7, $a0, $t4
	addi.d	$t4, $t4, 1
	blt	$a4, $t6, .LBB37_13
.LBB37_14:                              # %.loopexit47.loopexit
                                        #   in Loop: Header=BB37_3 Depth=1
	addi.d	$t5, $t4, -1
	bge	$t5, $t3, .LBB37_17
# %bb.15:                               #   in Loop: Header=BB37_3 Depth=1
	move	$t5, $zero
	b	.LBB37_2
.LBB37_16:
	ori	$t4, $zero, 1
	addi.w	$a1, $t4, 0
	ori	$a2, $zero, 93
	stx.h	$a2, $a0, $a1
	ret
.LBB37_17:
	addi.d	$a1, $t5, 2
	bstrpick.d	$a2, $t4, 31, 0
	ori	$a3, $zero, 46
	stx.b	$a3, $a0, $a2
	addi.d	$a2, $t5, 3
	bstrpick.d	$a1, $a1, 31, 0
	stx.b	$a3, $a0, $a1
	addi.d	$t4, $t5, 4
	bstrpick.d	$a1, $a2, 31, 0
	stx.b	$a3, $a0, $a1
.LBB37_18:
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	addi.w	$a1, $t4, 0
	ori	$a2, $zero, 93
	stx.h	$a2, $a0, $a1
	ret
.Lfunc_end37:
	.size	ps1, .Lfunc_end37-ps1
                                        # -- End function
	.globl	pbv1                            # -- Begin function pbv1
	.p2align	5
	.type	pbv1,@function
pbv1:                                   # @pbv1
# %bb.0:
	move	$a2, $a0
	ori	$a3, $zero, 1
	pcalau12i	$a0, %pc_hi20(s1)
	addi.d	$a0, $a0, %pc_lo12(s1)
	blt	$a1, $a3, .LBB38_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a3, $zero
	move	$a4, $zero
	addi.d	$a2, $a2, 4
	lu12i.w	$a5, 131071
	ori	$a5, $a5, 4092
	.p2align	4, , 16
.LBB38_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a4, 3
	and	$a6, $a6, $a5
	ldx.w	$a6, $a2, $a6
	srl.w	$a6, $a6, $a3
	andi	$a6, $a6, 1
	sltui	$a6, $a6, 1
	xori	$a6, $a6, 49
	stx.b	$a6, $a0, $a4
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 1
	bne	$a1, $a4, .LBB38_2
.LBB38_3:                               # %._crit_edge
	stx.b	$zero, $a0, $a1
	ret
.Lfunc_end38:
	.size	pbv1, .Lfunc_end38-pbv1
                                        # -- End function
	.globl	set_adjcnt                      # -- Begin function set_adjcnt
	.p2align	5
	.type	set_adjcnt,@function
set_adjcnt:                             # @set_adjcnt
# %bb.0:
	ld.wu	$a3, $a0, 0
	andi	$a6, $a3, 1023
	beqz	$a6, .LBB39_8
# %bb.1:                                # %.lr.ph18.preheader
	slli.d	$a3, $a6, 5
	addi.d	$a3, $a3, -32
	ori	$a4, $zero, 2
	b	.LBB39_3
	.p2align	4, , 16
.LBB39_2:                               # %.loopexit
                                        #   in Loop: Header=BB39_3 Depth=1
	addi.d	$a6, $a5, -1
	addi.w	$a3, $a3, -32
	blt	$a5, $a4, .LBB39_8
.LBB39_3:                               # %.lr.ph18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_6 Depth 2
	move	$a5, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a0, $a6
	beqz	$a6, .LBB39_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB39_3 Depth=1
	bstrpick.d	$a7, $a3, 31, 0
	alsl.d	$a7, $a7, $a1, 2
	b	.LBB39_6
	.p2align	4, , 16
.LBB39_5:                               #   in Loop: Header=BB39_6 Depth=2
	addi.w	$t0, $a6, 0
	bstrpick.d	$a6, $a6, 31, 1
	addi.d	$a7, $a7, 4
	bltu	$t0, $a4, .LBB39_2
.LBB39_6:                               # %.lr.ph
                                        #   Parent Loop BB39_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t0, $a6, 1
	beqz	$t0, .LBB39_5
# %bb.7:                                #   in Loop: Header=BB39_6 Depth=2
	ld.w	$t0, $a7, 0
	add.d	$t0, $t0, $a2
	st.w	$t0, $a7, 0
	b	.LBB39_5
.LBB39_8:                               # %._crit_edge
	ret
.Lfunc_end39:
	.size	set_adjcnt, .Lfunc_end39-set_adjcnt
                                        # -- End function
	.globl	sf_count                        # -- Begin function sf_count
	.p2align	5
	.type	sf_count,@function
sf_count:                               # @sf_count
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s1, $a0, 4
	slli.d	$s0, $s1, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	blt	$s1, $s2, .LBB40_2
# %bb.1:                                # %.lr.ph.preheader
	move	$s1, $a0
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB40_2:                               # %._crit_edge
	ld.w	$a2, $fp, 12
	ld.w	$a1, $fp, 0
	mul.w	$a3, $a1, $a2
	blt	$a3, $s2, .LBB40_13
# %bb.3:                                # %.lr.ph41
	ld.d	$a2, $fp, 24
	alsl.d	$a3, $a3, $a2, 2
	ori	$a4, $zero, 2
	b	.LBB40_5
	.p2align	4, , 16
.LBB40_4:                               # %._crit_edge38
                                        #   in Loop: Header=BB40_5 Depth=1
	alsl.d	$a2, $a1, $a2, 2
	bgeu	$a2, $a3, .LBB40_13
.LBB40_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_8 Depth 2
                                        #       Child Loop BB40_11 Depth 3
	ld.wu	$a5, $a2, 0
	andi	$a7, $a5, 1023
	beqz	$a7, .LBB40_4
# %bb.6:                                # %.lr.ph37.preheader
                                        #   in Loop: Header=BB40_5 Depth=1
	slli.d	$a5, $a7, 5
	addi.d	$a5, $a5, -32
	b	.LBB40_8
	.p2align	4, , 16
.LBB40_7:                               # %.loopexit
                                        #   in Loop: Header=BB40_8 Depth=2
	addi.d	$a7, $a6, -1
	addi.w	$a5, $a5, -32
	blt	$a6, $a4, .LBB40_4
.LBB40_8:                               # %.lr.ph37
                                        #   Parent Loop BB40_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB40_11 Depth 3
	move	$a6, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a2, $a7
	beqz	$a7, .LBB40_7
# %bb.9:                                # %.lr.ph34.preheader
                                        #   in Loop: Header=BB40_8 Depth=2
	bstrpick.d	$t0, $a5, 31, 0
	alsl.d	$t0, $t0, $a0, 2
	b	.LBB40_11
	.p2align	4, , 16
.LBB40_10:                              #   in Loop: Header=BB40_11 Depth=3
	addi.w	$t1, $a7, 0
	bstrpick.d	$a7, $a7, 31, 1
	addi.d	$t0, $t0, 4
	bltu	$t1, $a4, .LBB40_7
.LBB40_11:                              # %.lr.ph34
                                        #   Parent Loop BB40_5 Depth=1
                                        #     Parent Loop BB40_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$t1, $a7, 1
	beqz	$t1, .LBB40_10
# %bb.12:                               #   in Loop: Header=BB40_11 Depth=3
	ld.w	$t1, $t0, 0
	addi.d	$t1, $t1, 1
	st.w	$t1, $t0, 0
	b	.LBB40_10
.LBB40_13:                              # %._crit_edge42
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end40:
	.size	sf_count, .Lfunc_end40-sf_count
                                        # -- End function
	.globl	sf_count_restricted             # -- Begin function sf_count_restricted
	.p2align	5
	.type	sf_count_restricted,@function
sf_count_restricted:                    # @sf_count_restricted
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$s2, $a0, 4
	move	$fp, $a1
	slli.d	$s1, $s2, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	blt	$s2, $s3, .LBB41_2
# %bb.1:                                # %.lr.ph.preheader
	move	$s2, $a0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB41_2:                               # %._crit_edge
	ld.w	$a1, $s0, 12
	ld.w	$a3, $s0, 0
	mul.w	$a2, $a3, $a1
	blt	$a2, $s3, .LBB41_17
# %bb.3:                                # %.lr.ph44
	ld.d	$a1, $s0, 24
	alsl.d	$a2, $a2, $a1, 2
	slli.d	$a3, $a3, 2
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1024
	ori	$a6, $zero, 2
	lu12i.w	$a7, -4096
	lu32i.d	$a7, 0
	b	.LBB41_5
	.p2align	4, , 16
.LBB41_4:                               # %._crit_edge41
                                        #   in Loop: Header=BB41_5 Depth=1
	add.d	$a1, $a1, $a3
	bgeu	$a1, $a2, .LBB41_17
.LBB41_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_8 Depth 2
                                        #     Child Loop BB41_12 Depth 2
                                        #       Child Loop BB41_15 Depth 3
	ld.wu	$t0, $a1, 0
	andi	$t0, $t0, 1023
	beqz	$t0, .LBB41_4
# %bb.6:                                # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB41_5 Depth=1
	move	$t2, $zero
	addi.d	$t1, $t0, 1
	slli.d	$t3, $t0, 2
	b	.LBB41_8
	.p2align	4, , 16
.LBB41_7:                               #   in Loop: Header=BB41_8 Depth=2
	addi.d	$t1, $t1, -1
	addi.d	$t3, $t3, -4
	bge	$a4, $t1, .LBB41_10
.LBB41_8:                               # %.lr.ph.i
                                        #   Parent Loop BB41_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t4, $a1, $t3
	beqz	$t4, .LBB41_7
# %bb.9:                                #   in Loop: Header=BB41_8 Depth=2
	pcalau12i	$t5, %got_pc_hi20(bit_count)
	ld.d	$t5, $t5, %got_pc_lo12(bit_count)
	and	$t6, $t4, $a7
	andi	$t7, $t4, 255
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $t5, $t7
	srli.d	$t8, $t4, 6
	andi	$t8, $t8, 1020
	ldx.w	$t8, $t5, $t8
	srli.d	$t4, $t4, 14
	andi	$t4, $t4, 1020
	ldx.w	$t4, $t5, $t4
	srli.d	$t6, $t6, 22
	ldx.w	$t5, $t5, $t6
	add.d	$t2, $t7, $t2
	add.d	$t2, $t2, $t8
	add.d	$t2, $t2, $t4
	add.d	$t2, $t2, $t5
	b	.LBB41_7
	.p2align	4, , 16
.LBB41_10:                              # %set_ord.exit
                                        #   in Loop: Header=BB41_5 Depth=1
	addi.w	$t1, $t2, -1
	div.w	$t1, $a5, $t1
	slli.d	$t2, $t0, 5
	addi.d	$t2, $t2, -32
	b	.LBB41_12
	.p2align	4, , 16
.LBB41_11:                              # %.loopexit
                                        #   in Loop: Header=BB41_12 Depth=2
	addi.d	$t0, $t3, -1
	addi.w	$t2, $t2, -32
	blt	$t3, $a6, .LBB41_4
.LBB41_12:                              # %.lr.ph40
                                        #   Parent Loop BB41_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB41_15 Depth 3
	move	$t3, $t0
	slli.d	$t0, $t0, 2
	ldx.w	$t4, $a1, $t0
	ldx.w	$t0, $fp, $t0
	and	$t0, $t0, $t4
	beqz	$t0, .LBB41_11
# %bb.13:                               # %.lr.ph38.preheader
                                        #   in Loop: Header=BB41_12 Depth=2
	bstrpick.d	$t4, $t2, 31, 0
	alsl.d	$t4, $t4, $a0, 2
	b	.LBB41_15
	.p2align	4, , 16
.LBB41_14:                              #   in Loop: Header=BB41_15 Depth=3
	addi.w	$t5, $t0, 0
	bstrpick.d	$t0, $t0, 31, 1
	addi.d	$t4, $t4, 4
	bltu	$t5, $a6, .LBB41_11
.LBB41_15:                              # %.lr.ph38
                                        #   Parent Loop BB41_5 Depth=1
                                        #     Parent Loop BB41_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$t5, $t0, 1
	beqz	$t5, .LBB41_14
# %bb.16:                               #   in Loop: Header=BB41_15 Depth=3
	ld.w	$t5, $t4, 0
	add.d	$t5, $t5, $t1
	st.w	$t5, $t4, 0
	b	.LBB41_14
.LBB41_17:                              # %._crit_edge45
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end41:
	.size	sf_count_restricted, .Lfunc_end41-sf_count_restricted
                                        # -- End function
	.globl	sf_delc                         # -- Begin function sf_delc
	.p2align	5
	.type	sf_delc,@function
sf_delc:                                # @sf_delc
# %bb.0:
	sub.d	$a2, $a2, $a1
	addi.w	$a2, $a2, 1
	pcaddu18i	$t8, %call36(sf_delcol)
	jr	$t8
.Lfunc_end42:
	.size	sf_delc, .Lfunc_end42-sf_delc
                                        # -- End function
	.globl	sf_addcol                       # -- Begin function sf_addcol
	.p2align	5
	.type	sf_addcol,@function
sf_addcol:                              # @sf_addcol
# %bb.0:
	ld.w	$a3, $a0, 4
	bne	$a1, $a3, .LBB43_2
# %bb.1:
	addi.d	$a3, $a1, -1
	bstrpick.d	$a3, $a3, 31, 5
	slli.d	$a3, $a3, 5
	addi.w	$a3, $a3, 32
	ori	$a4, $zero, 32
	slt	$a5, $a4, $a1
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a4, $a3, $a4
	add.w	$a3, $a1, $a2
	bge	$a4, $a3, .LBB43_3
.LBB43_2:
	sub.w	$a2, $zero, $a2
	pcaddu18i	$t8, %call36(sf_delcol)
	jr	$t8
.LBB43_3:
	st.w	$a3, $a0, 4
	ret
.Lfunc_end43:
	.size	sf_addcol, .Lfunc_end43-sf_addcol
                                        # -- End function
	.globl	sf_delcol                       # -- Begin function sf_delcol
	.p2align	5
	.type	sf_delcol,@function
sf_delcol:                              # @sf_delcol
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	move	$s6, $a0
	ld.w	$a0, $a0, 4
	pcalau12i	$a3, %pc_hi20(set_family_garbage)
	ld.d	$s0, $a3, %pc_lo12(set_family_garbage)
	ld.w	$fp, $s6, 12
	move	$s7, $a2
	move	$s4, $a1
	sub.w	$s2, $a0, $a2
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	beqz	$s0, .LBB44_2
# %bb.1:
	ld.d	$a0, $s0, 32
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $a3, %pc_lo12(set_family_garbage)
	b	.LBB44_3
.LBB44_2:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
.LBB44_3:                               # %sf_new.exit
	slti	$s3, $s2, 33
	addi.d	$a0, $s2, -1
	bstrpick.d	$s5, $a0, 31, 5
	addi.d	$a0, $s5, 2
	ori	$a1, $zero, 2
	maskeqz	$a1, $a1, $s3
	masknez	$a0, $a0, $s3
	or	$a0, $a1, $a0
	st.w	$a0, $s0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	mul.d	$a0, $fp, $a0
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s0, 24
	st.d	$zero, $sp, 104
	st.w	$fp, $sp, 100
	st.w	$s2, $sp, 96
	vld	$vr0, $sp, 96
	vst	$vr0, $s0, 4
	ld.w	$a0, $s6, 12
	ld.w	$a2, $s6, 0
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $s6, 24
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	mul.w	$a1, $a2, $a0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB44_31
# %bb.4:                                # %.lr.ph59
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s8, 2
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	srai.d	$a1, $s7, 63
	move	$a3, $s7
	andn	$a1, $s7, $a1
	add.w	$a2, $a1, $s4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$s7, $a1, 4
	addi.w	$a1, $s5, 1
	maskeqz	$a0, $a0, $s3
	masknez	$a1, $a1, $s3
	or	$s6, $a0, $a1
	slli.d	$a0, $s6, 2
	bstrpick.d	$a0, $a0, 31, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s6, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bge	$a2, $s7, .LBB44_16
# %bb.5:                                # %.lr.ph59.split.us
	move	$s5, $zero
	blez	$s4, .LBB44_23
# %bb.6:                                # %.lr.ph59.split.us.split.us.preheader
	sub.d	$s2, $zero, $a3
	ori	$fp, $zero, 1
	b	.LBB44_8
	.p2align	4, , 16
.LBB44_7:                               # %._crit_edge57.us.us
                                        #   in Loop: Header=BB44_8 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s8, $a0, $s8, 2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB44_31
.LBB44_8:                               # %.lr.ph59.split.us.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_10 Depth 2
                                        #     Child Loop BB44_14 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	mul.w	$a0, $s5, $a0
	addi.d	$s5, $s5, 1
	st.w	$s5, $s0, 12
	alsl.d	$s3, $a0, $s1, 2
	slli.d	$a1, $a0, 2
	stx.w	$s6, $s1, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	move	$a1, $zero
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB44_10
	.p2align	4, , 16
.LBB44_9:                               #   in Loop: Header=BB44_10 Depth=2
	addi.w	$a0, $a0, 1
	beq	$s4, $a0, .LBB44_12
.LBB44_10:                              # %.preheader.us.us
                                        #   Parent Loop BB44_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a1, $a0, 31, 5
	addi.d	$a1, $a1, 1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $s8, $a1
	sll.w	$a2, $fp, $a0
	and	$a3, $a3, $a2
	beqz	$a3, .LBB44_9
# %bb.11:                               #   in Loop: Header=BB44_10 Depth=2
	ldx.w	$a3, $s3, $a1
	or	$a2, $a3, $a2
	stx.w	$a2, $s3, $a1
	b	.LBB44_9
	.p2align	4, , 16
.LBB44_12:                              # %._crit_edge.us.us
                                        #   in Loop: Header=BB44_8 Depth=1
	addi.d	$a0, $s8, 4
	addi.d	$a1, $s3, 4
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	b	.LBB44_14
	.p2align	4, , 16
.LBB44_13:                              #   in Loop: Header=BB44_14 Depth=2
	addi.w	$a2, $a2, 1
	bge	$a2, $s7, .LBB44_7
.LBB44_14:                              #   Parent Loop BB44_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a3, $a2, 31, 5
	slli.d	$a3, $a3, 2
	bstrpick.d	$a3, $a3, 60, 2
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	srl.w	$a3, $a3, $a2
	andi	$a3, $a3, 1
	beqz	$a3, .LBB44_13
# %bb.15:                               #   in Loop: Header=BB44_14 Depth=2
	add.w	$a3, $s2, $a2
	srai.d	$a4, $a3, 5
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a1, $a4
	sll.w	$a3, $fp, $a3
	or	$a3, $a5, $a3
	stx.w	$a3, $a1, $a4
	b	.LBB44_13
.LBB44_16:                              # %.lr.ph59.split
	blez	$s4, .LBB44_29
# %bb.17:                               # %.lr.ph59.split.split.us.preheader
	move	$s5, $zero
	ori	$fp, $zero, 1
	b	.LBB44_19
	.p2align	4, , 16
.LBB44_18:                              # %._crit_edge.us67
                                        #   in Loop: Header=BB44_19 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s8, $a0, $s8, 2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB44_31
.LBB44_19:                              # %.lr.ph59.split.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_21 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	mul.w	$a0, $s5, $a0
	addi.d	$s5, $s5, 1
	st.w	$s5, $s0, 12
	alsl.d	$s3, $a0, $s1, 2
	slli.d	$a1, $a0, 2
	stx.w	$s6, $s1, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	move	$a1, $zero
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB44_21
	.p2align	4, , 16
.LBB44_20:                              #   in Loop: Header=BB44_21 Depth=2
	addi.w	$a0, $a0, 1
	beq	$s4, $a0, .LBB44_18
.LBB44_21:                              # %.preheader.us65
                                        #   Parent Loop BB44_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a1, $a0, 31, 5
	addi.d	$a1, $a1, 1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $s8, $a1
	sll.w	$a2, $fp, $a0
	and	$a3, $a3, $a2
	beqz	$a3, .LBB44_20
# %bb.22:                               #   in Loop: Header=BB44_21 Depth=2
	ldx.w	$a3, $s3, $a1
	or	$a2, $a3, $a2
	stx.w	$a2, $s3, $a1
	b	.LBB44_20
.LBB44_23:                              # %.lr.ph59.split.us.split.preheader
	sub.d	$fp, $zero, $a3
	ori	$s2, $zero, 1
	b	.LBB44_25
	.p2align	4, , 16
.LBB44_24:                              # %._crit_edge57.us
                                        #   in Loop: Header=BB44_25 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s8, $a0, $s8, 2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB44_31
.LBB44_25:                              # %.lr.ph59.split.us.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_27 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	mul.w	$a0, $s5, $a0
	addi.d	$s5, $s5, 1
	st.w	$s5, $s0, 12
	alsl.d	$s3, $a0, $s1, 2
	slli.d	$a1, $a0, 2
	stx.w	$s6, $s1, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	move	$a1, $zero
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 4
	addi.d	$a1, $s3, 4
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	b	.LBB44_27
	.p2align	4, , 16
.LBB44_26:                              #   in Loop: Header=BB44_27 Depth=2
	addi.w	$a2, $a2, 1
	bge	$a2, $s7, .LBB44_24
.LBB44_27:                              #   Parent Loop BB44_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srai.d	$a3, $a2, 5
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	srl.w	$a3, $a3, $a2
	andi	$a3, $a3, 1
	beqz	$a3, .LBB44_26
# %bb.28:                               #   in Loop: Header=BB44_27 Depth=2
	add.w	$a3, $fp, $a2
	srai.d	$a4, $a3, 5
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a1, $a4
	sll.w	$a3, $s2, $a3
	or	$a3, $a5, $a3
	stx.w	$a3, $a1, $a4
	b	.LBB44_26
.LBB44_29:                              # %.lr.ph59.split.split.preheader
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	slli.d	$fp, $a0, 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.d	$s2, $a0, $a1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slli.d	$s3, $a0, 2
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB44_30:                              # %.lr.ph59.split.split
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s4, $s0, 12
	st.w	$s6, $s1, 0
	add.d	$a0, $s1, $s2
	move	$a1, $zero
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
	add.d	$s8, $s8, $s3
	add.d	$s1, $s1, $fp
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bltu	$s8, $a0, .LBB44_30
.LBB44_31:                              # %._crit_edge60
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB44_33
# %bb.32:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 24
.LBB44_33:                              # %sf_free.exit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $fp, 32
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$fp, $a0, %pc_lo12(set_family_garbage)
	move	$a0, $s0
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end44:
	.size	sf_delcol, .Lfunc_end44-sf_delcol
                                        # -- End function
	.globl	sf_copy_col                     # -- Begin function sf_copy_col
	.p2align	5
	.type	sf_copy_col,@function
sf_copy_col:                            # @sf_copy_col
# %bb.0:
	ld.w	$a5, $a2, 12
	ld.w	$a4, $a2, 0
	ori	$a7, $zero, 1
	mul.w	$t1, $a4, $a5
	blt	$t1, $a7, .LBB45_5
# %bb.1:                                # %.lr.ph
	ld.d	$a5, $a2, 24
	sll.w	$a6, $a7, $a3
	sll.w	$a7, $a7, $a1
	ld.d	$t0, $a0, 24
	alsl.d	$t1, $t1, $a5, 2
	srai.d	$a1, $a1, 5
	srai.d	$a3, $a3, 5
	b	.LBB45_3
	.p2align	4, , 16
.LBB45_2:                               #   in Loop: Header=BB45_3 Depth=1
	ld.w	$t2, $a0, 0
	alsl.d	$a5, $a4, $a5, 2
	alsl.d	$t0, $t2, $t0, 2
	bgeu	$a5, $t1, .LBB45_5
.LBB45_3:                               # =>This Inner Loop Header: Depth=1
	alsl.d	$t2, $a3, $a5, 2
	ld.w	$t2, $t2, 4
	and	$t2, $t2, $a6
	beqz	$t2, .LBB45_2
# %bb.4:                                #   in Loop: Header=BB45_3 Depth=1
	alsl.d	$a4, $a1, $t0, 2
	ld.w	$t2, $a4, 4
	or	$t2, $t2, $a7
	st.w	$t2, $a4, 4
	ld.w	$a4, $a2, 0
	b	.LBB45_2
.LBB45_5:                               # %._crit_edge
	ret
.Lfunc_end45:
	.size	sf_copy_col, .Lfunc_end45-sf_copy_col
                                        # -- End function
	.globl	sf_compress                     # -- Begin function sf_compress
	.p2align	5
	.type	sf_compress,@function
sf_compress:                            # @sf_compress
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	ld.wu	$a2, $a1, 0
	andi	$a2, $a2, 1023
	move	$fp, $a0
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $zero
	beqz	$a2, .LBB46_5
# %bb.1:                                # %.lr.ph.preheader.i
	addi.d	$a0, $a2, 1
	alsl.d	$a1, $a2, $a1, 2
	pcalau12i	$a2, %got_pc_hi20(bit_count)
	ld.d	$a2, $a2, %got_pc_lo12(bit_count)
	ori	$a3, $zero, 1
	lu12i.w	$a4, -4096
	lu32i.d	$a4, 0
	b	.LBB46_3
	.p2align	4, , 16
.LBB46_2:                               #   in Loop: Header=BB46_3 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bge	$a3, $a0, .LBB46_5
.LBB46_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	beqz	$a5, .LBB46_2
# %bb.4:                                #   in Loop: Header=BB46_3 Depth=1
	and	$a6, $a5, $a4
	andi	$a7, $a5, 255
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a2, $a7
	srli.d	$t0, $a5, 6
	andi	$t0, $t0, 1020
	ldx.w	$t0, $a2, $t0
	srli.d	$a5, $a5, 14
	andi	$a5, $a5, 1020
	ldx.w	$a5, $a2, $a5
	srli.d	$a6, $a6, 22
	ldx.w	$a6, $a2, $a6
	add.d	$a7, $a7, $s3
	add.d	$a7, $a7, $t0
	add.d	$a5, $a7, $a5
	add.w	$s3, $a5, $a6
	b	.LBB46_2
.LBB46_5:                               # %set_ord.exit
	pcalau12i	$a0, %pc_hi20(set_family_garbage)
	ld.d	$s0, $a0, %pc_lo12(set_family_garbage)
	ld.w	$s7, $fp, 12
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	beqz	$s0, .LBB46_7
# %bb.6:
	ld.d	$a1, $s0, 32
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $a0, %pc_lo12(set_family_garbage)
	b	.LBB46_8
.LBB46_7:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
.LBB46_8:                               # %sf_new.exit
	slti	$s8, $s3, 33
	addi.d	$a0, $s3, -1
	bstrpick.d	$s5, $a0, 31, 5
	addi.d	$a0, $s5, 2
	ori	$a1, $zero, 2
	maskeqz	$a1, $a1, $s8
	masknez	$a0, $a0, $s8
	or	$s6, $a1, $a0
	st.w	$s6, $s0, 0
	mul.d	$a0, $s7, $s6
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s0, 24
	st.d	$zero, $sp, 40
	st.w	$s7, $sp, 36
	st.w	$s3, $sp, 32
	vld	$vr0, $sp, 32
	vst	$vr0, $s0, 4
	ld.w	$a0, $fp, 12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB46_11
# %bb.9:                                # %.lr.ph.preheader
	addi.w	$a0, $s5, 1
	masknez	$a0, $a0, $s8
	ori	$a1, $zero, 1
	maskeqz	$a1, $a1, $s8
	or	$s8, $a1, $a0
	slli.d	$s3, $s8, 2
	addi.w	$a0, $s3, 0
	addi.w	$a1, $s6, 0
	slli.d	$s5, $a1, 2
	sub.d	$a0, $a0, $s3
	addi.d	$s1, $a0, 4
	move	$s2, $s4
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB46_10:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s7, $a1
	st.w	$a1, $s0, 12
	st.w	$s8, $s2, 0
	add.d	$a0, $s2, $s1
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	addi.w	$a1, $s7, 1
	add.d	$s2, $s2, $s5
	blt	$s7, $a0, .LBB46_10
.LBB46_11:                              # %.preheader
	ld.w	$a1, $fp, 4
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB46_21
# %bb.12:                               # %.lr.ph36
	move	$a2, $zero
	move	$a3, $zero
	move	$t1, $zero
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a4, $a4, 4
	bstrpick.d	$a6, $s6, 31, 0
	addi.d	$a5, $s4, 4
	slli.d	$a6, $a6, 2
	addi.w	$a7, $zero, -4
	lu52i.d	$a7, $a7, 511
	ori	$t0, $zero, 1
	b	.LBB46_15
	.p2align	4, , 16
.LBB46_13:                              #   in Loop: Header=BB46_15 Depth=1
	move	$t1, $t3
.LBB46_14:                              # %sf_copy_col.exit
                                        #   in Loop: Header=BB46_15 Depth=1
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	beq	$a3, $a1, .LBB46_21
.LBB46_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_19 Depth 2
	bstrpick.d	$t2, $a3, 31, 5
	slli.d	$t2, $t2, 2
	bstrpick.d	$t2, $t2, 60, 2
	slli.d	$t2, $t2, 2
	ldx.w	$t3, $a4, $t2
	sll.w	$t2, $t0, $a3
	and	$t3, $t3, $t2
	beqz	$t3, .LBB46_14
# %bb.16:                               #   in Loop: Header=BB46_15 Depth=1
	ld.w	$t8, $fp, 0
	mul.w	$t7, $t8, $a0
	addi.w	$t3, $t1, 1
	blt	$t7, $t0, .LBB46_13
# %bb.17:                               # %.lr.ph.i30
                                        #   in Loop: Header=BB46_15 Depth=1
	srli.d	$t5, $a2, 3
	ld.d	$t4, $fp, 24
	and	$t5, $t5, $a7
	addi.d	$t5, $t5, 4
	sll.w	$t6, $t0, $t1
	alsl.d	$t7, $t7, $t4, 2
	srai.d	$s1, $t1, 5
	slli.d	$t1, $t8, 2
	alsl.d	$t8, $s1, $a5, 2
	b	.LBB46_19
	.p2align	4, , 16
.LBB46_18:                              #   in Loop: Header=BB46_19 Depth=2
	add.d	$t4, $t4, $t1
	add.d	$t8, $t8, $a6
	bgeu	$t4, $t7, .LBB46_13
.LBB46_19:                              #   Parent Loop BB46_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$s1, $t4, $t5
	and	$s1, $s1, $t2
	beqz	$s1, .LBB46_18
# %bb.20:                               #   in Loop: Header=BB46_19 Depth=2
	ld.w	$s1, $t8, 0
	or	$s1, $s1, $t6
	st.w	$s1, $t8, 0
	b	.LBB46_18
.LBB46_21:                              # %._crit_edge
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB46_23
# %bb.22:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 24
.LBB46_23:                              # %sf_free.exit
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $fp, 32
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$fp, $a0, %pc_lo12(set_family_garbage)
	move	$a0, $s0
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end46:
	.size	sf_compress, .Lfunc_end46-sf_compress
                                        # -- End function
	.globl	sf_transpose                    # -- Begin function sf_transpose
	.p2align	5
	.type	sf_transpose,@function
sf_transpose:                           # @sf_transpose
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
	move	$fp, $a0
	ld.w	$s1, $a0, 4
	pcalau12i	$s3, %pc_hi20(set_family_garbage)
	ld.d	$s0, $s3, %pc_lo12(set_family_garbage)
	ld.w	$s5, $a0, 12
	beqz	$s0, .LBB47_2
# %bb.1:
	ld.d	$s4, $s0, 32
	st.d	$s4, $s3, %pc_lo12(set_family_garbage)
	b	.LBB47_3
.LBB47_2:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s4, $zero
.LBB47_3:                               # %sf_new.exit
	st.w	$s5, $s0, 4
	slti	$s2, $s5, 33
	addi.d	$a0, $s5, -1
	bstrpick.d	$s7, $a0, 31, 5
	addi.d	$a0, $s7, 2
	ori	$a1, $zero, 2
	maskeqz	$a1, $a1, $s2
	masknez	$a0, $a0, $s2
	or	$s5, $a1, $a0
	st.w	$s5, $s0, 0
	st.w	$s1, $s0, 8
	mul.d	$a0, $s1, $s5
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s6, $fp, 4
	st.d	$a0, $s0, 24
	st.w	$zero, $s0, 16
	ori	$a2, $zero, 1
	st.w	$s6, $s0, 12
	blt	$s6, $a2, .LBB47_13
# %bb.4:                                # %.lr.ph.preheader
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $zero
	addi.w	$a1, $s7, 1
	maskeqz	$a2, $a2, $s2
	masknez	$a1, $a1, $s2
	or	$s7, $a2, $a1
	slli.d	$s2, $s7, 2
	addi.w	$a1, $s2, 0
	sub.d	$a1, $a1, $s2
	addi.d	$s4, $a1, 4
	bstrpick.d	$a1, $s5, 31, 0
	slli.d	$s3, $a1, 2
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a0
	.p2align	4, , 16
.LBB47_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s7, $s1, 0
	add.d	$a0, $s1, $s4
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, 1
	add.d	$s1, $s1, $s3
	blt	$s8, $s6, .LBB47_5
# %bb.6:                                # %._crit_edge
	ld.w	$a1, $fp, 12
	ld.d	$a0, $fp, 24
	addi.d	$s2, $fp, 24
	blez	$a1, .LBB47_17
# %bb.7:                                # %.preheader.lr.ph
	ld.w	$a2, $fp, 0
	move	$a3, $zero
	ld.d	$a4, $sp, 0                     # 8-byte Folded Reload
	addi.d	$a4, $a4, 4
	ori	$a5, $zero, 1
	move	$a6, $a0
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	b	.LBB47_9
	.p2align	4, , 16
.LBB47_8:                               # %._crit_edge44.us
                                        #   in Loop: Header=BB47_9 Depth=1
	addi.w	$a3, $a3, 1
	alsl.d	$a6, $a2, $a6, 2
	beq	$a3, $a1, .LBB47_14
.LBB47_9:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_11 Depth 2
	move	$a7, $zero
	move	$t0, $zero
	addi.d	$t1, $a6, 4
	bstrpick.d	$t3, $a3, 31, 5
	sll.w	$t2, $a5, $a3
	slli.d	$t3, $t3, 2
	bstrpick.d	$t3, $t3, 60, 2
	alsl.d	$t3, $t3, $a4, 2
	b	.LBB47_11
	.p2align	4, , 16
.LBB47_10:                              #   in Loop: Header=BB47_11 Depth=2
	addi.w	$t0, $t0, 1
	add.w	$a7, $a7, $s5
	beq	$s6, $t0, .LBB47_8
.LBB47_11:                              #   Parent Loop BB47_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t0, 31, 5
	slli.d	$t4, $t4, 2
	bstrpick.d	$t4, $t4, 60, 2
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $t1, $t4
	srl.w	$t4, $t4, $t0
	andi	$t4, $t4, 1
	beqz	$t4, .LBB47_10
# %bb.12:                               #   in Loop: Header=BB47_11 Depth=2
	slli.d	$t4, $a7, 2
	ldx.w	$t5, $t3, $t4
	or	$t5, $t5, $t2
	stx.w	$t5, $t3, $t4
	b	.LBB47_10
.LBB47_13:                              # %._crit_edge.thread
	ld.d	$a0, $fp, 24
	addi.d	$s2, $fp, 24
.LBB47_14:                              # %._crit_edge53
	beqz	$a0, .LBB47_16
.LBB47_15:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s2, 0
.LBB47_16:                              # %sf_free.exit
	st.d	$s4, $fp, 32
	st.d	$fp, $s3, %pc_lo12(set_family_garbage)
	move	$a0, $s0
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
.LBB47_17:
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	bnez	$a0, .LBB47_15
	b	.LBB47_16
.Lfunc_end47:
	.size	sf_transpose, .Lfunc_end47-sf_transpose
                                        # -- End function
	.globl	sf_permute                      # -- Begin function sf_permute
	.p2align	5
	.type	sf_permute,@function
sf_permute:                             # @sf_permute
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
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(set_family_garbage)
	ld.d	$s3, $a0, %pc_lo12(set_family_garbage)
	ld.w	$s4, $s0, 12
	move	$s1, $a2
	move	$s2, $a1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$s3, .LBB48_2
# %bb.1:
	ld.d	$a1, $s3, 32
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $a0, %pc_lo12(set_family_garbage)
	b	.LBB48_3
.LBB48_2:
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
.LBB48_3:                               # %sf_new.exit
	slti	$s5, $s1, 33
	addi.d	$a0, $s1, -1
	bstrpick.d	$s6, $a0, 31, 5
	addi.d	$a0, $s6, 2
	ori	$a1, $zero, 2
	maskeqz	$a1, $a1, $s5
	masknez	$a0, $a0, $s5
	or	$fp, $a1, $a0
	st.w	$fp, $s3, 0
	mul.d	$a0, $fp, $s4
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$a0, $s3, 24
	st.d	$zero, $sp, 56
	st.w	$s4, $sp, 52
	st.w	$s1, $sp, 48
	vld	$vr0, $sp, 48
	vst	$vr0, $s3, 4
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $s0, 12
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.w	$a0, $s3, 12
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	mul.w	$a0, $a0, $fp
	ori	$a1, $zero, 1
	addi.w	$s7, $fp, 0
	blt	$a0, $a1, .LBB48_6
# %bb.4:                                # %.lr.ph
	alsl.d	$fp, $a0, $s8, 2
	addi.w	$a0, $s6, 1
	ori	$a1, $zero, 1
	maskeqz	$a1, $a1, $s5
	masknez	$a0, $a0, $s5
	or	$s5, $a1, $a0
	slli.d	$s4, $s5, 2
	addi.w	$a0, $s4, 0
	sub.d	$a0, $a0, $s4
	addi.d	$s6, $a0, 4
	slli.d	$s0, $s7, 2
	move	$s3, $s8
	.p2align	4, , 16
.LBB48_5:                               # =>This Inner Loop Header: Depth=1
	st.w	$s5, $s3, 0
	add.d	$a0, $s3, $s6
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s3, $s3, $s0
	bltu	$s3, $fp, .LBB48_5
.LBB48_6:                               # %._crit_edge
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $fp, 0
	ld.d	$a0, $fp, 24
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	mul.w	$a1, $a2, $a1
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB48_16
# %bb.7:                                # %.preheader.lr.ph
	alsl.d	$a1, $a1, $a0, 2
	blez	$s1, .LBB48_14
# %bb.8:                                # %.preheader.us.preheader
	ori	$a3, $zero, 1
	lu12i.w	$a4, 131071
	ori	$a4, $a4, 4092
	move	$a5, $a0
	b	.LBB48_10
	.p2align	4, , 16
.LBB48_9:                               # %._crit_edge50.us
                                        #   in Loop: Header=BB48_10 Depth=1
	alsl.d	$a5, $a2, $a5, 2
	alsl.d	$s8, $s7, $s8, 2
	bgeu	$a5, $a1, .LBB48_16
.LBB48_10:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_12 Depth 2
	move	$a6, $zero
	move	$a7, $zero
	addi.d	$t0, $a5, 4
	addi.d	$t1, $s8, 4
	move	$t2, $s2
	b	.LBB48_12
	.p2align	4, , 16
.LBB48_11:                              #   in Loop: Header=BB48_12 Depth=2
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	addi.d	$t2, $t2, 4
	beq	$s1, $a7, .LBB48_9
.LBB48_12:                              #   Parent Loop BB48_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, 0
	srai.d	$t4, $t3, 5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $t0, $t4
	srl.w	$t3, $t4, $t3
	andi	$t3, $t3, 1
	beqz	$t3, .LBB48_11
# %bb.13:                               #   in Loop: Header=BB48_12 Depth=2
	srli.d	$t3, $a7, 3
	and	$t3, $t3, $a4
	ldx.w	$t4, $t1, $t3
	sll.w	$t5, $a3, $a6
	or	$t4, $t4, $t5
	stx.w	$t4, $t1, $t3
	b	.LBB48_11
.LBB48_14:                              # %.preheader.preheader
	slli.d	$a2, $a2, 2
	move	$a3, $a0
	.p2align	4, , 16
.LBB48_15:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a3, $a2
	bltu	$a3, $a1, .LBB48_15
.LBB48_16:                              # %._crit_edge53
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB48_18
# %bb.17:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 24
.LBB48_18:                              # %sf_free.exit
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $fp, 32
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$fp, $a0, %pc_lo12(set_family_garbage)
	move	$a0, $s0
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
.Lfunc_end48:
	.size	sf_permute, .Lfunc_end48-sf_permute
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sf_join: sf_size mismatch"
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"sf_append: sf_size mismatch"
	.size	.L.str.1, 28

	.type	set_family_garbage,@object      # @set_family_garbage
	.local	set_family_garbage
	.comm	set_family_garbage,8,8
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"A[%d] = %s\n"
	.size	.L.str.2, 12

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"[%4d] %s\n"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%d %d\n"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%x"
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%x "
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\n\t"
	.size	.L.str.7, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Error reading set family"
	.size	.L.str.9, 25

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Error reading set family (at end of line)"
	.size	.L.str.10, 42

	.type	s1,@object                      # @s1
	.local	s1
	.comm	s1,120,1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym s1
