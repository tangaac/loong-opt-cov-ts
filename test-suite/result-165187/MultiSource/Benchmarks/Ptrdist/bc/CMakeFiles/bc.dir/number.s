	.file	"number.c"
	.text
	.globl	free_num                        # -- Begin function free_num
	.p2align	5
	.type	free_num,@function
free_num:                               # @free_num
# %bb.0:
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_4
# %bb.1:
	ld.w	$a2, $a1, 12
	addi.w	$a2, $a2, -1
	st.w	$a2, $a1, 12
	bnez	$a2, .LBB0_3
# %bb.2:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB0_3:
	st.d	$zero, $a0, 0
.LBB0_4:
	ret
.Lfunc_end0:
	.size	free_num, .Lfunc_end0-free_num
                                        # -- End function
	.globl	new_num                         # -- Begin function new_num
	.p2align	5
	.type	new_num,@function
new_num:                                # @new_num
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1040
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	st.w	$s0, $a0, 4
	st.w	$fp, $a0, 8
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 12
	st.b	$zero, $a0, 16
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	new_num, .Lfunc_end1-new_num
                                        # -- End function
	.globl	init_numbers                    # -- Begin function init_numbers
	.p2align	5
	.type	init_numbers,@function
init_numbers:                           # @init_numbers
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 1041
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $a0, 0
	st.b	$zero, $a0, 16
	pcalau12i	$a1, %pc_hi20(_zero_)
	st.d	$a0, $a1, %pc_lo12(_zero_)
	ori	$a0, $zero, 1041
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(_one_)
	st.d	$a0, $a1, %pc_lo12(_one_)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 16
	ori	$a0, $zero, 1041
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(_two_)
	st.d	$a0, $a1, %pc_lo12(_two_)
	ori	$a1, $zero, 2
	st.b	$a1, $a0, 16
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	init_numbers, .Lfunc_end2-init_numbers
                                        # -- End function
	.globl	copy_num                        # -- Begin function copy_num
	.p2align	5
	.type	copy_num,@function
copy_num:                               # @copy_num
# %bb.0:
	ld.w	$a1, $a0, 12
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 12
	ret
.Lfunc_end3:
	.size	copy_num, .Lfunc_end3-copy_num
                                        # -- End function
	.globl	init_num                        # -- Begin function init_num
	.p2align	5
	.type	init_num,@function
init_num:                               # @init_num
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_zero_)
	ld.d	$a1, $a1, %pc_lo12(_zero_)
	ld.w	$a2, $a1, 12
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 12
	st.d	$a1, $a0, 0
	ret
.Lfunc_end4:
	.size	init_num, .Lfunc_end4-init_num
                                        # -- End function
	.globl	int2num                         # -- Begin function int2num
	.p2align	5
	.type	int2num,@function
int2num:                                # @int2num
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	srai.d	$a0, $a1, 31
	xor	$a1, $a1, $a0
	sub.w	$a1, $a1, $a0
	bstrpick.d	$a2, $a1, 31, 0
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	lu32i.d	$a0, 0
	mul.d	$a2, $a2, $a0
	srli.d	$a2, $a2, 35
	ori	$a3, $zero, 10
	mul.d	$a2, $a2, $a3
	sub.d	$a2, $a1, $a2
	st.b	$a2, $sp, 10
	addi.d	$s1, $sp, 11
	ori	$s2, $zero, 1
	bltu	$a1, $a3, .LBB5_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$s2, $zero, 1
	lu12i.w	$a2, 104857
	ori	$a2, $a2, 2458
	ori	$a3, $zero, 99
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a1
	bstrpick.d	$a1, $a1, 31, 0
	mul.d	$a1, $a1, $a0
	srli.d	$a1, $a1, 35
	mul.d	$a5, $a1, $a2
	srli.d	$a5, $a5, 32
	slli.d	$a6, $a5, 3
	alsl.d	$a5, $a5, $a6, 1
	sub.d	$a5, $a1, $a5
	st.b	$a5, $s1, 0
	addi.w	$s2, $s2, 1
	addi.d	$s1, $s1, 1
	bltu	$a3, $a4, .LBB5_2
.LBB5_3:                                # %._crit_edge
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB5_6
# %bb.4:
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB5_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %free_num.exit
	addi.d	$a0, $s2, 1040
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $a0, 4
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 8
	st.b	$zero, $a0, 16
	st.d	$a0, $s0, 0
	bgez	$fp, .LBB5_8
# %bb.7:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB5_8:                                # %.preheader
	addi.d	$a3, $a0, 16
	addi.d	$a0, $s2, 1
	addi.d	$a1, $s1, -1
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB5_9:                                # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	st.b	$a4, $a3, 0
	addi.d	$a3, $a3, 1
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, -1
	blt	$a2, $a0, .LBB5_9
# %bb.10:
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end5:
	.size	int2num, .Lfunc_end5-int2num
                                        # -- End function
	.globl	num2long                        # -- Begin function num2long
	.p2align	5
	.type	num2long,@function
num2long:                               # @num2long
# %bb.0:
	ld.w	$a1, $a0, 4
	blez	$a1, .LBB6_5
# %bb.1:                                # %.lr.ph.preheader
	move	$a2, $zero
	addi.d	$a3, $a0, 16
	ori	$a4, $zero, 2
	lu12i.w	$a5, -209716
	ori	$a5, $a5, 3277
	lu32i.d	$a5, -209716
	lu52i.d	$a5, $a5, 204
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a3, 0
	move	$a6, $a1
	slli.d	$a1, $a2, 3
	alsl.d	$a1, $a2, $a1, 1
	add.d	$a2, $a1, $a7
	bltu	$a6, $a4, .LBB6_4
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB6_2 Depth=1
	addi.d	$a3, $a3, 1
	addi.w	$a1, $a6, -1
	blt	$a2, $a5, .LBB6_2
.LBB6_4:                                # %._crit_edge.loopexit
	ori	$a1, $zero, 1
	sltu	$a1, $a1, $a6
	srai.d	$a3, $a2, 63
	andn	$a2, $a2, $a3
	masknez	$a1, $a2, $a1
	b	.LBB6_6
.LBB6_5:
	move	$a1, $zero
.LBB6_6:                                # %._crit_edge
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	sub.d	$a2, $zero, $a1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ret
.Lfunc_end6:
	.size	num2long, .Lfunc_end6-num2long
                                        # -- End function
	.globl	bc_compare                      # -- Begin function bc_compare
	.p2align	5
	.type	bc_compare,@function
bc_compare:                             # @bc_compare
# %bb.0:
	ori	$a2, $zero, 1
	move	$a3, $zero
	pcaddu18i	$t8, %call36(_do_compare)
	jr	$t8
.Lfunc_end7:
	.size	bc_compare, .Lfunc_end7-bc_compare
                                        # -- End function
	.p2align	5                               # -- Begin function _do_compare
	.type	_do_compare,@function
_do_compare:                            # @_do_compare
# %bb.0:
	beqz	$a2, .LBB8_2
# %bb.1:
	ld.w	$a4, $a0, 0
	ld.w	$a5, $a1, 0
	bne	$a4, $a5, .LBB8_8
.LBB8_2:
	ld.w	$t0, $a0, 4
	ld.w	$a4, $a1, 4
	bne	$t0, $a4, .LBB8_7
# %bb.3:
	ld.w	$a6, $a0, 8
	ld.w	$a7, $a1, 8
	slt	$a4, $a6, $a7
	masknez	$a5, $a7, $a4
	maskeqz	$a4, $a6, $a4
	or	$t1, $a4, $a5
	add.w	$t2, $t1, $t0
	addi.d	$a5, $a0, 16
	addi.d	$a4, $a1, 16
	blez	$t2, .LBB8_9
# %bb.4:                                # %.lr.ph.preheader
	add.d	$a1, $t0, $t1
	addi.w	$a1, $a1, 1
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB8_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t0, $a5, 0
	ld.bu	$t2, $a4, 0
	bne	$t0, $t2, .LBB8_16
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a5, $a5, 1
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, 1
	blt	$t1, $a1, .LBB8_5
	b	.LBB8_11
.LBB8_7:
	bge	$a4, $t0, .LBB8_28
	b	.LBB8_21
.LBB8_8:
	sltu	$a0, $zero, $a4
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ret
.LBB8_9:                                # %._crit_edge
	beqz	$t2, .LBB8_11
# %bb.10:                               # %._crit_edge..thread_crit_edge
	ld.bu	$t0, $a5, 0
	b	.LBB8_20
.LBB8_11:                               # %._crit_edge.thread
	beq	$a6, $a7, .LBB8_19
# %bb.12:
	bge	$a7, $a6, .LBB8_25
# %bb.13:                               # %.lr.ph101.preheader
	sub.d	$a1, $a6, $a7
	addi.d	$a3, $a1, 1
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB8_14:                               # %.lr.ph101
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a5, 0
	bnez	$a1, .LBB8_21
# %bb.15:                               #   in Loop: Header=BB8_14 Depth=1
	move	$a1, $zero
	addi.w	$a3, $a3, -1
	addi.d	$a5, $a5, 1
	blt	$a4, $a3, .LBB8_14
	b	.LBB8_24
.LBB8_16:                               # %.critedge
	beqz	$a3, .LBB8_20
# %bb.17:                               # %.critedge
	ori	$a3, $zero, 2
	bne	$a1, $a3, .LBB8_20
# %bb.18:                               # %.critedge
	bne	$a6, $a7, .LBB8_20
.LBB8_19:
	move	$a0, $zero
	ret
.LBB8_20:                               # %.thread
	ld.b	$a1, $a4, 0
	ext.w.b	$a3, $t0
	bge	$a1, $a3, .LBB8_28
.LBB8_21:
	beqz	$a2, .LBB8_23
# %bb.22:
	ld.w	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ret
.LBB8_23:
	ori	$a1, $zero, 1
.LBB8_24:                               # %.loopexit
	move	$a0, $a1
	ret
.LBB8_25:                               # %.lr.ph97.preheader
	sub.d	$a1, $a7, $a6
	addi.d	$a3, $a1, 1
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB8_26:                               # %.lr.ph97
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a4, 0
	bnez	$a1, .LBB8_28
# %bb.27:                               #   in Loop: Header=BB8_26 Depth=1
	move	$a1, $zero
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, 1
	blt	$a5, $a3, .LBB8_26
	b	.LBB8_24
.LBB8_28:
	beqz	$a2, .LBB8_30
# %bb.29:
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ret
.LBB8_30:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end8:
	.size	_do_compare, .Lfunc_end8-_do_compare
                                        # -- End function
	.globl	is_zero                         # -- Begin function is_zero
	.p2align	5
	.type	is_zero,@function
is_zero:                                # @is_zero
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_zero_)
	ld.d	$a1, $a1, %pc_lo12(_zero_)
	beq	$a0, $a1, .LBB9_7
# %bb.1:
	ld.w	$a1, $a0, 4
	ld.w	$a2, $a0, 8
	add.w	$a1, $a2, $a1
	blez	$a1, .LBB9_6
# %bb.2:                                # %.lr.ph.preheader
	addi.d	$a0, $a0, 16
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB9_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a0, 0
	move	$a3, $a1
	bnez	$a4, .LBB9_8
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	addi.d	$a0, $a0, 1
	addi.w	$a1, $a3, -1
	blt	$a2, $a3, .LBB9_3
# %bb.5:
	move	$a1, $zero
.LBB9_6:                                # %.critedge
	sltui	$a0, $a1, 1
	ret
.LBB9_7:
	ori	$a0, $zero, 1
	ret
.LBB9_8:
	sltui	$a0, $a3, 1
	ret
.Lfunc_end9:
	.size	is_zero, .Lfunc_end9-is_zero
                                        # -- End function
	.globl	is_neg                          # -- Begin function is_neg
	.p2align	5
	.type	is_neg,@function
is_neg:                                 # @is_neg
# %bb.0:
	ld.w	$a0, $a0, 0
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ret
.Lfunc_end10:
	.size	is_neg, .Lfunc_end10-is_neg
                                        # -- End function
	.globl	bc_add                          # -- Begin function bc_add
	.p2align	5
	.type	bc_add,@function
bc_add:                                 # @bc_add
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 0
	ld.w	$a3, $a1, 0
	move	$fp, $a2
	bne	$a0, $a3, .LBB11_2
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_do_add)
	jirl	$ra, $ra, 0
	b	.LBB11_12
.LBB11_2:
	ld.w	$a5, $s0, 4
	ld.w	$a0, $a1, 4
	bne	$a5, $a0, .LBB11_7
# %bb.3:
	ld.w	$a3, $s0, 8
	ld.w	$a4, $a1, 8
	slt	$a0, $a3, $a4
	masknez	$a2, $a4, $a0
	maskeqz	$a0, $a3, $a0
	or	$a6, $a0, $a2
	add.w	$a7, $a6, $a5
	addi.d	$a2, $s0, 16
	addi.d	$a0, $a1, 16
	blez	$a7, .LBB11_8
# %bb.4:                                # %.lr.ph.i.preheader
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB11_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a2, 0
	ld.bu	$t0, $a0, 0
	bne	$a7, $t0, .LBB11_10
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$a5, $a5, -1
	addi.d	$a0, $a0, 1
	blt	$a6, $a5, .LBB11_5
	b	.LBB11_13
.LBB11_7:
	blt	$a0, $a5, .LBB11_11
	b	.LBB11_22
.LBB11_8:                               # %._crit_edge.i
	beqz	$a7, .LBB11_13
# %bb.9:                                # %._crit_edge..thread_crit_edge.i
	ld.bu	$a7, $a2, 0
	ld.bu	$t0, $a0, 0
.LBB11_10:                              # %.thread.i
	ext.w.b	$a0, $a7
	ext.w.b	$a2, $t0
	bge	$a2, $a0, .LBB11_22
.LBB11_11:                              # %_do_compare.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_do_sub)
	jirl	$ra, $ra, 0
.LBB11_12:
	ld.w	$a1, $s0, 0
	b	.LBB11_23
.LBB11_13:                              # %._crit_edge.thread.i
	bne	$a3, $a4, .LBB11_15
.LBB11_14:                              # %.loopexit
	pcalau12i	$a0, %pc_hi20(_zero_)
	ld.d	$a0, $a0, %pc_lo12(_zero_)
	ld.w	$a1, $a0, 12
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 12
	ld.d	$a1, $fp, 0
	bnez	$a1, .LBB11_24
	b	.LBB11_26
.LBB11_15:
	bge	$a4, $a3, .LBB11_19
# %bb.16:                               # %.lr.ph101.preheader.i
	sub.d	$a0, $a3, $a4
	addi.d	$a0, $a0, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB11_17:                              # %.lr.ph101.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	bnez	$a4, .LBB11_11
# %bb.18:                               #   in Loop: Header=BB11_17 Depth=1
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	blt	$a3, $a0, .LBB11_17
	b	.LBB11_14
.LBB11_19:                              # %.lr.ph97.preheader.i
	sub.d	$a2, $a4, $a3
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB11_20:                              # %.lr.ph97.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a0, 0
	bnez	$a4, .LBB11_22
# %bb.21:                               #   in Loop: Header=BB11_20 Depth=1
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	blt	$a3, $a2, .LBB11_20
	b	.LBB11_14
.LBB11_22:                              # %.loopexit23
	move	$a0, $a1
	move	$s1, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_do_sub)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
.LBB11_23:
	st.w	$a1, $a0, 0
	ld.d	$a1, $fp, 0
	beqz	$a1, .LBB11_26
.LBB11_24:
	ld.w	$a2, $a1, 12
	addi.w	$a2, $a2, -1
	st.w	$a2, $a1, 12
	bnez	$a2, .LBB11_26
# %bb.25:
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB11_26:                              # %free_num.exit
	st.d	$a0, $fp, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	bc_add, .Lfunc_end11-bc_add
                                        # -- End function
	.p2align	5                               # -- Begin function _do_add
	.type	_do_add,@function
_do_add:                                # @_do_add
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
	move	$s0, $a0
	ld.w	$s5, $a0, 8
	ld.w	$s6, $a1, 8
	slt	$a0, $s6, $s5
	ld.w	$s3, $s0, 4
	ld.w	$s4, $a1, 4
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s5, $a0
	or	$s7, $a0, $a1
	slt	$a0, $s4, $s3
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 1
	add.d	$s8, $s7, $s1
	addi.d	$a0, $s8, 1040
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	st.w	$s1, $a0, 4
	st.w	$s7, $a0, 8
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 12
	st.b	$zero, $a0, 16
	add.d	$a1, $s0, $s3
	add.d	$a1, $a1, $s5
	addi.d	$s1, $a1, 15
	add.d	$a1, $fp, $s4
	add.d	$a1, $a1, $s6
	addi.d	$s2, $a1, 15
	add.d	$a1, $s8, $a0
	addi.d	$a1, $a1, 15
	bne	$s5, $s6, .LBB12_2
.LBB12_1:                               # %.loopexit
	move	$s6, $s5
	b	.LBB12_6
.LBB12_2:
	bge	$s6, $s5, .LBB12_4
# %bb.3:                                # %.preheader.preheader
	slt	$a1, $s3, $s4
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	add.d	$a1, $a1, $s7
	sub.d	$a2, $s6, $s5
	nor	$a2, $a2, $zero
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a1, $a1, $a2
	add.d	$s7, $a1, $a0
	addi.d	$a3, $s7, 16
	add.d	$a1, $s5, $s3
	sub.d	$a1, $a1, $a2
	add.d	$s0, $a1, $s0
	addi.d	$a1, $s0, 15
	addi.d	$a2, $a2, 1
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	addi.d	$s1, $s0, 14
	addi.d	$a1, $s7, 15
	move	$s5, $s6
	b	.LBB12_6
.LBB12_4:                               # %.preheader99
	bge	$s5, $s6, .LBB12_6
# %bb.5:                                # %.lr.ph.preheader
	slt	$a1, $s3, $s4
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	add.d	$a1, $a1, $s7
	sub.d	$a2, $s5, $s6
	nor	$a2, $a2, $zero
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a1, $a1, $a2
	add.d	$s0, $a1, $a0
	addi.d	$a3, $s0, 16
	add.d	$a1, $s6, $s4
	sub.d	$a1, $a1, $a2
	add.d	$s2, $a1, $fp
	addi.d	$a1, $s2, 15
	addi.d	$a2, $a2, 1
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	addi.d	$s2, $s2, 14
	addi.d	$a1, $s0, 15
	b	.LBB12_1
.LBB12_6:                               # %.loopexit
	move	$a2, $zero
	add.w	$a3, $s5, $s3
	add.w	$a4, $s6, $s4
	blez	$a3, .LBB12_11
# %bb.7:                                # %.loopexit
	blez	$a4, .LBB12_11
# %bb.8:                                # %.lr.ph115.preheader
	move	$a2, $zero
	ori	$a5, $zero, 9
	ori	$a6, $zero, 2
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB12_9:                               # %.lr.ph115
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a3
	move	$t0, $a4
	ld.b	$a3, $s1, 0
	ld.b	$a4, $s2, 0
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, -1
	add.d	$a2, $a3, $a2
	add.d	$a3, $a2, $a4
	ext.w.b	$a2, $a3
	slt	$a2, $a5, $a2
	addi.d	$a4, $a3, -10
	masknez	$a3, $a3, $a2
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	st.b	$a3, $a1, 0
	addi.d	$a1, $a1, -1
	addi.w	$a3, $t1, -1
	addi.w	$a4, $t0, -1
	bltu	$t1, $a6, .LBB12_11
# %bb.10:                               # %.lr.ph115
                                        #   in Loop: Header=BB12_9 Depth=1
	bltu	$a7, $t0, .LBB12_9
.LBB12_11:                              # %._crit_edge
	sltui	$a5, $a3, 1
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	blez	$a3, .LBB12_14
# %bb.12:                               # %.lr.ph126.preheader
	masknez	$a4, $s1, $a5
	maskeqz	$a5, $s2, $a5
	or	$a6, $a5, $a4
	addi.d	$a3, $a3, 1
	ori	$a4, $zero, 9
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB12_13:                              # %.lr.ph126
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a6, 0
	addi.d	$a6, $a6, -1
	add.d	$a7, $a7, $a2
	ext.w.b	$a2, $a7
	slt	$a2, $a4, $a2
	addi.d	$t0, $a7, -10
	masknez	$a7, $a7, $a2
	maskeqz	$t0, $t0, $a2
	or	$a7, $t0, $a7
	st.b	$a7, $a1, 0
	addi.w	$a3, $a3, -1
	addi.d	$a1, $a1, -1
	bltu	$a5, $a3, .LBB12_13
.LBB12_14:                              # %._crit_edge127
	beqz	$a2, .LBB12_16
# %bb.15:
	ld.b	$a2, $a1, 0
	addi.d	$a2, $a2, 1
	st.b	$a2, $a1, 0
.LBB12_16:
	ld.w	$a4, $a0, 4
	ori	$a2, $zero, 2
	addi.d	$a1, $a0, 16
	blt	$a4, $a2, .LBB12_21
# %bb.17:                               # %.lr.ph.preheader.i
	addi.d	$a3, $a4, 15
	bstrpick.d	$a3, $a3, 31, 0
	add.d	$a3, $a0, $a3
	move	$a5, $a1
	.p2align	4, , 16
.LBB12_18:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a5, 0
	move	$a6, $a4
	bnez	$a7, .LBB12_22
# %bb.19:                               #   in Loop: Header=BB12_18 Depth=1
	addi.d	$a5, $a5, 1
	addi.w	$a4, $a6, -1
	blt	$a2, $a6, .LBB12_18
# %bb.20:
	ori	$a4, $zero, 1
	ld.w	$a2, $a0, 8
	add.w	$a2, $a2, $a4
	st.w	$a4, $a0, 4
	bgtz	$a2, .LBB12_23
	b	.LBB12_28
.LBB12_21:
	move	$a3, $a1
	ld.w	$a2, $a0, 8
	add.w	$a2, $a2, $a4
	st.w	$a4, $a0, 4
	bgtz	$a2, .LBB12_23
	b	.LBB12_28
.LBB12_22:
	move	$a4, $a6
	move	$a3, $a5
	ld.w	$a2, $a0, 8
	add.w	$a2, $a2, $a4
	st.w	$a4, $a0, 4
	blez	$a2, .LBB12_28
.LBB12_23:                              # %iter.check
	ori	$a4, $zero, 16
	bltu	$a2, $a4, .LBB12_25
# %bb.24:                               # %vector.memcheck
	sub.d	$a4, $a0, $a3
	addi.d	$a5, $a4, 16
	ori	$a4, $zero, 32
	bgeu	$a5, $a4, .LBB12_29
.LBB12_25:
	move	$a4, $a3
	move	$a6, $a2
.LBB12_26:                              # %.lr.ph25.i.preheader
	addi.d	$a2, $a6, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB12_27:                              # %.lr.ph25.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a5, $a4, 0
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a1, 1
	addi.w	$a2, $a2, -1
	st.b	$a5, $a1, 0
	move	$a1, $a6
	bltu	$a3, $a2, .LBB12_27
.LBB12_28:                              # %_rm_leading_zeros.exit
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
	ret
.LBB12_29:                              # %vector.main.loop.iter.check
	bgeu	$a2, $a4, .LBB12_34
# %bb.30:
	move	$a5, $zero
.LBB12_31:                              # %vec.epilog.ph
	bstrpick.d	$a6, $a2, 30, 4
	slli.d	$a7, $a6, 4
	alsl.d	$a4, $a6, $a3, 4
	alsl.d	$a1, $a6, $a1, 4
	sub.d	$a6, $a2, $a7
	sub.d	$t0, $a5, $a7
	add.d	$t1, $a5, $a0
	addi.d	$t1, $t1, 16
	add.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB12_32:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vst	$vr0, $t1, 0
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$a3, $a3, 16
	bnez	$t0, .LBB12_32
# %bb.33:                               # %vec.epilog.middle.block
	bne	$a7, $a2, .LBB12_26
	b	.LBB12_28
.LBB12_34:                              # %vector.ph
	andi	$a4, $a2, 16
	bstrpick.d	$a5, $a2, 30, 5
	slli.d	$a5, $a5, 5
	addi.d	$a6, $a0, 32
	addi.d	$a7, $a3, 16
	move	$t0, $a5
	.p2align	4, , 16
.LBB12_35:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$t0, $t0, -32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB12_35
# %bb.36:                               # %middle.block
	beq	$a5, $a2, .LBB12_28
# %bb.37:                               # %vec.epilog.iter.check
	bnez	$a4, .LBB12_31
# %bb.38:
	add.d	$a4, $a3, $a5
	add.d	$a1, $a1, $a5
	sub.d	$a6, $a2, $a5
	b	.LBB12_26
.Lfunc_end12:
	.size	_do_add, .Lfunc_end12-_do_add
                                        # -- End function
	.p2align	5                               # -- Begin function _do_sub
	.type	_do_sub,@function
_do_sub:                                # @_do_sub
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
	move	$fp, $a1
	move	$s0, $a0
	ld.w	$s1, $a0, 4
	ld.w	$s2, $a1, 4
	slt	$a0, $s2, $s1
	ld.w	$s8, $s0, 8
	ld.w	$s7, $a1, 8
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s1, $a0
	or	$s6, $a0, $a1
	slt	$a0, $s7, $s8
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$s4, $a0, $a1
	slt	$a0, $s1, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slt	$a0, $s8, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$s5, $a0, $a1
	add.d	$s3, $s6, $s4
	addi.d	$a0, $s3, 1040
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$t5, $s6
	st.w	$zero, $a0, 0
	st.w	$s6, $a0, 4
	st.w	$s4, $a0, 8
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 12
	st.b	$zero, $a0, 16
	add.d	$a1, $s0, $s1
	add.d	$a1, $a1, $s8
	addi.d	$a3, $a1, 15
	add.d	$a1, $fp, $s2
	add.d	$a1, $a1, $s7
	addi.d	$s6, $a1, 15
	add.d	$a2, $s3, $a0
	addi.d	$a4, $a2, 15
	bge	$s7, $s8, .LBB13_3
# %bb.1:
	sub.w	$a2, $s8, $s5
	blez	$a2, .LBB13_7
# %bb.2:                                # %.lr.ph123.preheader
	add.d	$a1, $s4, $t5
	sub.d	$a3, $s5, $s8
	nor	$a3, $a3, $zero
	bstrpick.d	$a4, $a3, 31, 0
	sub.d	$a1, $a1, $a4
	add.d	$s3, $a1, $a0
	addi.d	$a3, $s3, 15
	add.d	$a1, $s8, $s1
	sub.d	$a1, $a1, $a4
	add.d	$s0, $a1, $s0
	addi.d	$a1, $s0, 15
	move	$fp, $a0
	move	$a0, $a3
	move	$s4, $t5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$t5, $s4
	move	$a0, $fp
	move	$a1, $zero
	addi.d	$a3, $s0, 14
	addi.d	$a4, $s3, 14
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	add.w	$a6, $s5, $t6
	bgtz	$a6, .LBB13_8
	b	.LBB13_10
.LBB13_3:
	sub.w	$a6, $s7, $s5
	blez	$a6, .LBB13_7
# %bb.4:                                # %.lr.ph.preheader
	move	$a5, $zero
	move	$a1, $zero
	addi.d	$a4, $a6, 1
	addi.d	$a7, $a2, 15
	add.d	$a6, $s2, $s7
	add.d	$a6, $a6, $fp
	addi.d	$t0, $a6, 15
	ori	$t1, $zero, 10
	ori	$t2, $zero, 1
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$t3, $t0, $a5
	add.w	$t3, $a1, $t3
	slt	$a1, $zero, $t3
	maskeqz	$t4, $t1, $a1
	sub.d	$t3, $t4, $t3
	stx.b	$t3, $a7, $a5
	addi.w	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	bltu	$t2, $a4, .LBB13_5
# %bb.6:                                # %.loopexit112.loopexit
	add.d	$a2, $a2, $a5
	addi.d	$a4, $a2, 15
	add.d	$a2, $a6, $a5
	addi.d	$s6, $a2, 15
	add.w	$a6, $s5, $t6
	bgtz	$a6, .LBB13_8
	b	.LBB13_10
.LBB13_7:
	move	$a1, $zero
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	add.w	$a6, $s5, $t6
	blez	$a6, .LBB13_10
	.p2align	4, , 16
.LBB13_8:                               # %.lr.ph131
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a2, $s6, 0
	ld.b	$a7, $a3, 0
	addi.d	$a5, $a3, -1
	addi.d	$s6, $s6, -1
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a7, $a1
	slti	$a3, $a2, 0
	addi.d	$a7, $a2, 10
	bstrpick.d	$a1, $a2, 31, 31
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a7, $a3
	or	$a3, $a3, $a2
	addi.d	$a2, $a4, -1
	addi.w	$a6, $a6, -1
	st.b	$a3, $a4, 0
	move	$a4, $a2
	move	$a3, $a5
	bnez	$a6, .LBB13_8
# %bb.9:                                # %._crit_edge
	bne	$s1, $s2, .LBB13_11
	b	.LBB13_14
.LBB13_10:
	move	$a5, $a3
	move	$a2, $a4
	beq	$s1, $s2, .LBB13_14
.LBB13_11:                              # %._crit_edge
	sub.w	$a3, $t5, $t6
	blez	$a3, .LBB13_14
# %bb.12:                               # %.lr.ph140.preheader
	addi.d	$a3, $a3, 1
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB13_13:                              # %.lr.ph140
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a6, $a5, 0
	addi.d	$a5, $a5, -1
	sub.w	$a1, $a6, $a1
	slti	$a6, $a1, 0
	addi.d	$a7, $a1, 10
	masknez	$t0, $a1, $a6
	maskeqz	$a6, $a7, $a6
	or	$a6, $a6, $t0
	st.b	$a6, $a2, 0
	addi.d	$a2, $a2, -1
	addi.w	$a3, $a3, -1
	bstrpick.d	$a1, $a1, 31, 31
	bltu	$a4, $a3, .LBB13_13
.LBB13_14:                              # %.loopexit
	ld.w	$a4, $a0, 4
	ori	$a2, $zero, 2
	addi.d	$a1, $a0, 16
	blt	$a4, $a2, .LBB13_19
# %bb.15:                               # %.lr.ph.preheader.i
	addi.d	$a3, $a4, 15
	bstrpick.d	$a3, $a3, 31, 0
	add.d	$a3, $a0, $a3
	move	$a5, $a1
	.p2align	4, , 16
.LBB13_16:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a5, 0
	move	$a6, $a4
	bnez	$a7, .LBB13_20
# %bb.17:                               #   in Loop: Header=BB13_16 Depth=1
	addi.d	$a5, $a5, 1
	addi.w	$a4, $a6, -1
	blt	$a2, $a6, .LBB13_16
# %bb.18:
	ori	$a4, $zero, 1
	ld.w	$a2, $a0, 8
	add.w	$a2, $a2, $a4
	st.w	$a4, $a0, 4
	bgtz	$a2, .LBB13_21
	b	.LBB13_26
.LBB13_19:
	move	$a3, $a1
	ld.w	$a2, $a0, 8
	add.w	$a2, $a2, $a4
	st.w	$a4, $a0, 4
	bgtz	$a2, .LBB13_21
	b	.LBB13_26
.LBB13_20:
	move	$a4, $a6
	move	$a3, $a5
	ld.w	$a2, $a0, 8
	add.w	$a2, $a2, $a4
	st.w	$a4, $a0, 4
	blez	$a2, .LBB13_26
.LBB13_21:                              # %iter.check
	ori	$a4, $zero, 16
	bltu	$a2, $a4, .LBB13_23
# %bb.22:                               # %vector.memcheck
	sub.d	$a4, $a0, $a3
	addi.d	$a5, $a4, 16
	ori	$a4, $zero, 32
	bgeu	$a5, $a4, .LBB13_27
.LBB13_23:
	move	$a4, $a3
	move	$a6, $a2
.LBB13_24:                              # %.lr.ph25.i.preheader
	addi.d	$a2, $a6, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB13_25:                              # %.lr.ph25.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a5, $a4, 0
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a1, 1
	addi.w	$a2, $a2, -1
	st.b	$a5, $a1, 0
	move	$a1, $a6
	bltu	$a3, $a2, .LBB13_25
.LBB13_26:                              # %_rm_leading_zeros.exit
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
.LBB13_27:                              # %vector.main.loop.iter.check
	bgeu	$a2, $a4, .LBB13_32
# %bb.28:
	move	$a5, $zero
.LBB13_29:                              # %vec.epilog.ph
	bstrpick.d	$a6, $a2, 30, 4
	slli.d	$a7, $a6, 4
	alsl.d	$a4, $a6, $a3, 4
	alsl.d	$a1, $a6, $a1, 4
	sub.d	$a6, $a2, $a7
	sub.d	$t0, $a5, $a7
	add.d	$t1, $a5, $a0
	addi.d	$t1, $t1, 16
	add.d	$a3, $a3, $a5
	.p2align	4, , 16
.LBB13_30:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vst	$vr0, $t1, 0
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$a3, $a3, 16
	bnez	$t0, .LBB13_30
# %bb.31:                               # %vec.epilog.middle.block
	bne	$a7, $a2, .LBB13_24
	b	.LBB13_26
.LBB13_32:                              # %vector.ph
	andi	$a4, $a2, 16
	bstrpick.d	$a5, $a2, 30, 5
	slli.d	$a5, $a5, 5
	addi.d	$a6, $a0, 32
	addi.d	$a7, $a3, 16
	move	$t0, $a5
	.p2align	4, , 16
.LBB13_33:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$t0, $t0, -32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB13_33
# %bb.34:                               # %middle.block
	beq	$a5, $a2, .LBB13_26
# %bb.35:                               # %vec.epilog.iter.check
	bnez	$a4, .LBB13_29
# %bb.36:
	add.d	$a4, $a3, $a5
	add.d	$a1, $a1, $a5
	sub.d	$a6, $a2, $a5
	b	.LBB13_24
.Lfunc_end13:
	.size	_do_sub, .Lfunc_end13-_do_sub
                                        # -- End function
	.globl	bc_sub                          # -- Begin function bc_sub
	.p2align	5
	.type	bc_sub,@function
bc_sub:                                 # @bc_sub
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 0
	ld.w	$a3, $a1, 0
	move	$fp, $a2
	bne	$a0, $a3, .LBB14_6
# %bb.1:
	ld.w	$a5, $s0, 4
	ld.w	$a0, $a1, 4
	bne	$a5, $a0, .LBB14_7
# %bb.2:
	ld.w	$a3, $s0, 8
	ld.w	$a4, $a1, 8
	slt	$a0, $a3, $a4
	masknez	$a2, $a4, $a0
	maskeqz	$a0, $a3, $a0
	or	$a6, $a0, $a2
	add.w	$a7, $a6, $a5
	addi.d	$a2, $s0, 16
	addi.d	$a0, $a1, 16
	blez	$a7, .LBB14_8
# %bb.3:                                # %.lr.ph.i.preheader
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, 1
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB14_4:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a2, 0
	ld.bu	$t0, $a0, 0
	bne	$a7, $t0, .LBB14_10
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$a5, $a5, -1
	addi.d	$a0, $a0, 1
	blt	$a6, $a5, .LBB14_4
	b	.LBB14_13
.LBB14_6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_do_add)
	jirl	$ra, $ra, 0
	b	.LBB14_12
.LBB14_7:
	blt	$a0, $a5, .LBB14_11
	b	.LBB14_22
.LBB14_8:                               # %._crit_edge.i
	beqz	$a7, .LBB14_13
# %bb.9:                                # %._crit_edge..thread_crit_edge.i
	ld.bu	$a7, $a2, 0
	ld.bu	$t0, $a0, 0
.LBB14_10:                              # %.thread.i
	ext.w.b	$a0, $a7
	ext.w.b	$a2, $t0
	bge	$a2, $a0, .LBB14_22
.LBB14_11:                              # %_do_compare.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_do_sub)
	jirl	$ra, $ra, 0
.LBB14_12:
	ld.w	$a1, $s0, 0
	b	.LBB14_23
.LBB14_13:                              # %._crit_edge.thread.i
	bne	$a3, $a4, .LBB14_15
.LBB14_14:                              # %.loopexit
	pcalau12i	$a0, %pc_hi20(_zero_)
	ld.d	$a0, $a0, %pc_lo12(_zero_)
	ld.w	$a1, $a0, 12
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 12
	ld.d	$a1, $fp, 0
	bnez	$a1, .LBB14_24
	b	.LBB14_26
.LBB14_15:
	bge	$a4, $a3, .LBB14_19
# %bb.16:                               # %.lr.ph101.preheader.i
	sub.d	$a0, $a3, $a4
	addi.d	$a0, $a0, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB14_17:                              # %.lr.ph101.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	bnez	$a4, .LBB14_11
# %bb.18:                               #   in Loop: Header=BB14_17 Depth=1
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	blt	$a3, $a0, .LBB14_17
	b	.LBB14_14
.LBB14_19:                              # %.lr.ph97.preheader.i
	sub.d	$a2, $a4, $a3
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB14_20:                              # %.lr.ph97.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a0, 0
	bnez	$a4, .LBB14_22
# %bb.21:                               #   in Loop: Header=BB14_20 Depth=1
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	blt	$a3, $a2, .LBB14_20
	b	.LBB14_14
.LBB14_22:                              # %.loopexit23
	move	$a0, $a1
	move	$s1, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_do_sub)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	sltui	$a1, $a1, 1
.LBB14_23:
	st.w	$a1, $a0, 0
	ld.d	$a1, $fp, 0
	beqz	$a1, .LBB14_26
.LBB14_24:
	ld.w	$a2, $a1, 12
	addi.w	$a2, $a2, -1
	st.w	$a2, $a1, 12
	bnez	$a2, .LBB14_26
# %bb.25:
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB14_26:                              # %free_num.exit
	st.d	$a0, $fp, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	bc_sub, .Lfunc_end14-bc_sub
                                        # -- End function
	.globl	bc_multiply                     # -- Begin function bc_multiply
	.p2align	5
	.type	bc_multiply,@function
bc_multiply:                            # @bc_multiply
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
	move	$s1, $a1
	move	$s0, $a0
	ld.w	$a4, $a0, 4
	ld.w	$s7, $a0, 8
	ld.w	$a0, $a1, 4
	ld.w	$a1, $a1, 8
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	add.w	$fp, $s7, $a4
	add.d	$s8, $a1, $a0
	addi.w	$s3, $s8, 0
	add.d	$s6, $s8, $fp
	add.w	$a0, $a1, $s7
	slt	$a2, $a1, $s7
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$a1, $a2, $a1
	slt	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	slt	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a0, $a2
	or	$s2, $a1, $a2
	sub.w	$s4, $a0, $s2
	sub.w	$s5, $s6, $a0
	add.d	$a0, $s5, $s2
	addi.d	$a0, $a0, 1040
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$s5, $a0, 4
	st.w	$s2, $a0, 8
	ori	$a1, $zero, 1
	ld.w	$a2, $s0, 0
	ld.w	$a3, $s1, 0
	st.w	$a1, $a0, 12
	addi.d	$s2, $a0, 16
	st.b	$zero, $a0, 16
	xor	$a1, $a2, $a3
	sltu	$a1, $zero, $a1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.w	$a1, $a0, 0
	addi.d	$a1, $fp, 15
	add.d	$a2, $s1, $s3
	nor	$a0, $s4, $zero
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	add.w	$a5, $s6, $a0
	addi.w	$a3, $s3, -1
	lu12i.w	$t6, 419430
	blez	$s4, .LBB15_26
# %bb.1:                                # %.lr.ph151
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	move	$a6, $zero
	move	$a4, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $a0, $s7
	addi.d	$t0, $a0, -2
	add.d	$a0, $a0, $s0
	addi.d	$t1, $a0, 14
	sub.w	$t2, $zero, $s3
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $s8, $s1
	addi.d	$t3, $a0, 16
	ori	$t4, $zero, 16
	ori	$t5, $zero, 17
	ori	$a0, $t6, 1639
	lu32i.d	$a0, 419430
	lu52i.d	$t6, $a0, 1638
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               # %._crit_edge
                                        #   in Loop: Header=BB15_3 Depth=1
	mulh.d	$a0, $a4, $t6
	srli.d	$a4, $a0, 63
	srai.d	$a0, $a0, 2
	add.d	$a4, $a0, $a4
	addi.w	$a6, $a6, 1
	addi.w	$t2, $t2, 1
	bge	$a6, $s4, .LBB15_13
.LBB15_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_7 Depth 2
                                        #     Child Loop BB15_11 Depth 2
	addi.w	$ra, $zero, -1
	sub.w	$a0, $a6, $s3
	slt	$a5, $ra, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $ra, $a5
	or	$a0, $a0, $a5
	nor	$a5, $a0, $zero
	add.d	$t7, $a1, $a5
	blt	$t7, $t4, .LBB15_2
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=1
	slt	$a5, $a6, $a3
	masknez	$a7, $a3, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	bltz	$a5, .LBB15_2
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB15_3 Depth=1
	bstrpick.d	$t8, $a5, 31, 0
	sub.w	$a0, $zero, $a0
	add.d	$a0, $t0, $a0
	sltu	$a5, $a0, $t8
	masknez	$a7, $t8, $a5
	maskeqz	$a0, $a0, $a5
	or	$fp, $a0, $a7
	beqz	$fp, .LBB15_9
# %bb.6:                                # %vector.ph
                                        #   in Loop: Header=BB15_3 Depth=1
	move	$a5, $zero
	slt	$a0, $ra, $t2
	masknez	$a7, $ra, $a0
	maskeqz	$a0, $t2, $a0
	or	$a0, $a0, $a7
	sub.w	$a7, $zero, $a0
	add.d	$ra, $t1, $a7
	sub.d	$a7, $t3, $t8
	sub.d	$a0, $t0, $a0
	sltu	$s5, $a0, $t8
	maskeqz	$a0, $a0, $s5
	masknez	$s5, $t8, $s5
	or	$a0, $a0, $s5
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 32, 1
	slli.d	$s7, $a0, 1
	addi.d	$s5, $fp, 1
	bstrpick.d	$a0, $s5, 32, 1
	slli.d	$fp, $a0, 1
	sub.d	$t7, $t7, $fp
	.p2align	4, , 16
.LBB15_7:                               # %vector.body
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a0, $ra, 0
	ld.b	$s8, $ra, -1
	ld.b	$s1, $a7, -1
	ld.b	$s6, $a7, 0
	mul.d	$a0, $s1, $a0
	mul.d	$s1, $s6, $s8
	add.d	$a4, $a0, $a4
	add.d	$a5, $s1, $a5
	addi.d	$ra, $ra, -2
	addi.d	$s7, $s7, -2
	addi.d	$a7, $a7, 2
	bnez	$s7, .LBB15_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB15_3 Depth=1
	add.d	$a4, $a5, $a4
	beq	$s5, $fp, .LBB15_2
	b	.LBB15_10
.LBB15_9:                               #   in Loop: Header=BB15_3 Depth=1
	move	$fp, $zero
.LBB15_10:                              # %scalar.ph
                                        #   in Loop: Header=BB15_3 Depth=1
	sub.d	$a0, $fp, $t8
	addi.d	$a0, $a0, 15
	.p2align	4, , 16
.LBB15_11:                              # %.lr.ph
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a5, $s0, $t7
	ldx.b	$a7, $a2, $a0
	mul.d	$a5, $a7, $a5
	add.d	$a4, $a5, $a4
	bltu	$t7, $t5, .LBB15_2
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB15_11 Depth=2
	addi.d	$a5, $a0, -15
	addi.d	$t7, $t7, -1
	addi.d	$a0, $a0, 1
	bltz	$a5, .LBB15_11
	b	.LBB15_2
.LBB15_13:
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	lu12i.w	$t6, 419430
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a6, $a0, -1
	add.d	$a7, $s2, $a5
	bge	$s4, $a6, .LBB15_27
.LBB15_14:                              # %.lr.ph164
	move	$t0, $zero
	add.d	$a0, $s6, $s7
	addi.d	$t1, $a0, -2
	sub.w	$t8, $s4, $s3
	add.d	$a0, $a0, $s0
	addi.d	$a0, $a0, 14
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	add.d	$a5, $s8, $s1
	addi.d	$a0, $a5, 16
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$t5, $zero, -1
	ori	$t4, $zero, 16
	ori	$t7, $zero, 17
	ori	$a5, $t6, 1639
	lu32i.d	$a5, 419430
	lu52i.d	$a5, $a5, 1638
	st.d	$t8, $sp, 64                    # 8-byte Folded Spill
	b	.LBB15_16
	.p2align	4, , 16
.LBB15_15:                              # %._crit_edge159
                                        #   in Loop: Header=BB15_16 Depth=1
	mulh.d	$a0, $a4, $a5
	srli.d	$t2, $a0, 63
	srai.d	$a0, $a0, 2
	add.d	$t3, $a0, $t2
	slli.d	$a0, $t3, 3
	alsl.d	$a0, $t3, $a0, 1
	sub.d	$a0, $a4, $a0
	addi.d	$fp, $a7, -1
	st.b	$a0, $a7, 0
	addi.w	$s4, $s4, 1
	addi.d	$t0, $t0, 1
	addi.w	$t8, $t8, 1
	move	$a7, $fp
	move	$a4, $t3
	bge	$s4, $a6, .LBB15_28
.LBB15_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_20 Depth 2
                                        #     Child Loop BB15_24 Depth 2
	sub.w	$t3, $s4, $s3
	srai.d	$fp, $t3, 31
	nor	$fp, $fp, $zero
	andn	$t3, $fp, $t3
	add.d	$s1, $a1, $t3
	blt	$s1, $t4, .LBB15_15
# %bb.17:                               #   in Loop: Header=BB15_16 Depth=1
	slt	$t3, $s4, $a3
	masknez	$fp, $a3, $t3
	maskeqz	$t3, $s4, $t3
	or	$t3, $t3, $fp
	bltz	$t3, .LBB15_15
# %bb.18:                               # %.lr.ph158.preheader
                                        #   in Loop: Header=BB15_16 Depth=1
	bstrpick.d	$s5, $t3, 31, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.w	$t3, $a0, $t0
	slt	$fp, $t5, $t3
	maskeqz	$t3, $t3, $fp
	masknez	$fp, $t5, $fp
	or	$t3, $t3, $fp
	sub.w	$t3, $zero, $t3
	add.d	$t3, $t1, $t3
	sltu	$fp, $t3, $s5
	masknez	$s6, $s5, $fp
	maskeqz	$t3, $t3, $fp
	or	$fp, $t3, $s6
	beqz	$fp, .LBB15_22
# %bb.19:                               # %vector.ph197
                                        #   in Loop: Header=BB15_16 Depth=1
	move	$s6, $zero
	slt	$t3, $t5, $t8
	masknez	$s7, $t5, $t3
	maskeqz	$t3, $t8, $t3
	or	$t3, $t3, $s7
	sub.w	$s7, $zero, $t3
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$s8, $a0, $s5
	sub.d	$t3, $t1, $t3
	sltu	$ra, $t3, $s5
	maskeqz	$t3, $t3, $ra
	masknez	$ra, $s5, $ra
	or	$t3, $t3, $ra
	addi.d	$t3, $t3, 1
	bstrpick.d	$t3, $t3, 32, 1
	slli.d	$t3, $t3, 1
	addi.d	$ra, $fp, 1
	bstrpick.d	$fp, $ra, 32, 1
	slli.d	$fp, $fp, 1
	sub.d	$s1, $s1, $fp
	.p2align	4, , 16
.LBB15_20:                              # %vector.body200
                                        #   Parent Loop BB15_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a0, $s7, 0
	ld.b	$t4, $s7, -1
	ld.b	$t6, $s8, -1
	ld.b	$t2, $s8, 0
	mul.d	$a0, $t6, $a0
	mul.d	$t2, $t2, $t4
	add.d	$a4, $a0, $a4
	add.d	$s6, $t2, $s6
	addi.d	$s7, $s7, -2
	addi.d	$t3, $t3, -2
	addi.d	$s8, $s8, 2
	bnez	$t3, .LBB15_20
# %bb.21:                               # %middle.block207
                                        #   in Loop: Header=BB15_16 Depth=1
	add.d	$a4, $s6, $a4
	ori	$t4, $zero, 16
	beq	$ra, $fp, .LBB15_15
	b	.LBB15_23
.LBB15_22:                              #   in Loop: Header=BB15_16 Depth=1
	move	$fp, $zero
.LBB15_23:                              # %scalar.ph195
                                        #   in Loop: Header=BB15_16 Depth=1
	sub.d	$a0, $fp, $s5
	addi.d	$t3, $a0, 15
	.p2align	4, , 16
.LBB15_24:                              # %.lr.ph158
                                        #   Parent Loop BB15_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a0, $s0, $s1
	ldx.b	$t2, $a2, $t3
	mul.d	$a0, $t2, $a0
	add.d	$a4, $a0, $a4
	bltu	$s1, $t7, .LBB15_15
# %bb.25:                               # %.lr.ph158
                                        #   in Loop: Header=BB15_24 Depth=2
	addi.d	$a0, $t3, -15
	addi.d	$s1, $s1, -1
	addi.d	$t3, $t3, 1
	bltz	$a0, .LBB15_24
	b	.LBB15_15
.LBB15_26:
	move	$a4, $zero
	move	$s4, $zero
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a6, $a0, -1
	add.d	$a7, $s2, $a5
	blt	$s4, $a6, .LBB15_14
.LBB15_27:
	move	$t3, $a4
	move	$fp, $a7
.LBB15_28:                              # %._crit_edge165
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $s0, 0
	st.b	$t3, $fp, 0
	beqz	$a1, .LBB15_31
# %bb.29:
	ld.w	$a0, $a1, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 12
	bnez	$a0, .LBB15_31
# %bb.30:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB15_31:                              # %free_num.exit
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a3, $a1, 4
	ori	$a0, $zero, 2
	st.d	$a1, $s0, 0
	blt	$a3, $a0, .LBB15_36
# %bb.32:                               # %.lr.ph.preheader.i
	addi.d	$a1, $a3, 15
	bstrpick.d	$a2, $a1, 31, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a2, $a1, $a2
	move	$a1, $s2
	.p2align	4, , 16
.LBB15_33:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a1, 0
	move	$a4, $a3
	bnez	$a5, .LBB15_37
# %bb.34:                               #   in Loop: Header=BB15_33 Depth=1
	addi.d	$a1, $a1, 1
	addi.w	$a3, $a4, -1
	blt	$a0, $a4, .LBB15_33
# %bb.35:
	ori	$a3, $zero, 1
	b	.LBB15_38
.LBB15_36:
	move	$a2, $s2
	b	.LBB15_38
.LBB15_37:
	move	$a3, $a4
	move	$a2, $a1
.LBB15_38:                              # %.critedge.i
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 8
	add.w	$a1, $a1, $a3
	st.w	$a3, $a0, 4
	blez	$a1, .LBB15_44
# %bb.39:                               # %iter.check
	ori	$a0, $zero, 16
	bltu	$a1, $a0, .LBB15_41
# %bb.40:                               # %vector.memcheck
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	addi.d	$a3, $a0, 16
	ori	$a0, $zero, 32
	bgeu	$a3, $a0, .LBB15_52
.LBB15_41:
	move	$a3, $a2
	move	$a4, $s2
	move	$a6, $a1
.LBB15_42:                              # %.lr.ph25.i.preheader
	addi.d	$a0, $a6, 1
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB15_43:                              # %.lr.ph25.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a2, $a3, 0
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a4, 1
	addi.w	$a0, $a0, -1
	st.b	$a2, $a4, 0
	move	$a4, $a5
	bltu	$a1, $a0, .LBB15_43
.LBB15_44:                              # %_rm_leading_zeros.exit
	pcalau12i	$a0, %pc_hi20(_zero_)
	ld.d	$a1, $a0, %pc_lo12(_zero_)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB15_50
# %bb.45:
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 4
	ld.w	$a1, $a1, 8
	add.w	$a2, $a1, $a0
	blez	$a2, .LBB15_49
# %bb.46:                               # %.lr.ph.i130.preheader
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB15_47:                              # %.lr.ph.i130
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $s2, 0
	bnez	$a2, .LBB15_51
# %bb.48:                               #   in Loop: Header=BB15_47 Depth=1
	addi.w	$a0, $a0, -1
	addi.d	$s2, $s2, 1
	blt	$a1, $a0, .LBB15_47
	b	.LBB15_50
.LBB15_49:                              # %is_zero.exit
	bnez	$a2, .LBB15_51
.LBB15_50:                              # %is_zero.exit.thread
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
.LBB15_51:                              # %is_zero.exit.thread134
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
.LBB15_52:                              # %vector.main.loop.iter.check
	bgeu	$a1, $a0, .LBB15_57
# %bb.53:
	move	$a5, $zero
.LBB15_54:                              # %vec.epilog.ph
	bstrpick.d	$a4, $a1, 30, 4
	slli.d	$a0, $a4, 4
	alsl.d	$a3, $a4, $a2, 4
	alsl.d	$a4, $a4, $s2, 4
	sub.d	$a6, $a1, $a0
	sub.d	$a7, $a5, $a0
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	add.d	$t0, $a5, $t0
	addi.d	$t0, $t0, 16
	add.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB15_55:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, 0
	vst	$vr0, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	addi.d	$a2, $a2, 16
	bnez	$a7, .LBB15_55
# %bb.56:                               # %vec.epilog.middle.block
	bne	$a0, $a1, .LBB15_42
	b	.LBB15_44
.LBB15_57:                              # %vector.ph218
	andi	$a0, $a1, 16
	bstrpick.d	$a3, $a1, 30, 5
	slli.d	$a5, $a3, 5
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a2, 16
	move	$a6, $a5
	.p2align	4, , 16
.LBB15_58:                              # %vector.body221
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB15_58
# %bb.59:                               # %middle.block226
	beq	$a5, $a1, .LBB15_44
# %bb.60:                               # %vec.epilog.iter.check
	bnez	$a0, .LBB15_54
# %bb.61:
	add.d	$a3, $a2, $a5
	add.d	$a4, $s2, $a5
	sub.d	$a6, $a1, $a5
	b	.LBB15_42
.Lfunc_end15:
	.size	bc_multiply, .Lfunc_end15-bc_multiply
                                        # -- End function
	.globl	bc_divide                       # -- Begin function bc_divide
	.p2align	5
	.type	bc_divide,@function
bc_divide:                              # @bc_divide
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(_zero_)
	ld.d	$a4, $s5, %pc_lo12(_zero_)
	move	$s8, $a0
	addi.w	$a0, $zero, -1
	beq	$a1, $a4, .LBB16_89
# %bb.1:
	move	$fp, $a3
	move	$s3, $a2
	move	$s7, $a1
	ld.w	$s1, $a1, 4
	ld.w	$s4, $a1, 8
	add.w	$a1, $s4, $s1
	blez	$a1, .LBB16_5
# %bb.2:                                # %.lr.ph.preheader.i
	addi.d	$a1, $s7, 16
	add.d	$a2, $s1, $s4
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB16_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a1, 0
	bnez	$a4, .LBB16_6
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=1
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	blt	$a3, $a2, .LBB16_3
	b	.LBB16_89
.LBB16_5:                               # %is_zero.exit
	beqz	$a1, .LBB16_89
.LBB16_6:                               # %is_zero.exit.thread276
	addi.d	$s6, $s8, 16
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	beqz	$s4, .LBB16_12
# %bb.7:                                # %.thread388
	addi.d	$s2, $s7, 16
.LBB16_8:                               # %.lr.ph.preheader
	bstrpick.d	$a0, $s4, 31, 0
	add.d	$a0, $s1, $a0
	add.d	$a0, $a0, $s7
	addi.d	$a0, $a0, 15
	.p2align	4, , 16
.LBB16_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB16_19
# %bb.10:                               #   in Loop: Header=BB16_9 Depth=1
	addi.w	$s4, $s4, -1
	addi.d	$a0, $a0, -1
	bnez	$s4, .LBB16_9
.LBB16_11:
	move	$s4, $zero
	b	.LBB16_19
.LBB16_12:
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB16_17
# %bb.13:
	ld.bu	$a1, $s7, 16
	bne	$a1, $a0, .LBB16_17
# %bb.14:
	ld.w	$s2, $s8, 4
	add.d	$a0, $fp, $s2
	addi.d	$a0, $a0, 1040
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$s2, $a0, 4
	st.w	$fp, $a0, 8
	ori	$s1, $zero, 1
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s7, 0
	st.w	$s1, $s0, 12
	addi.d	$s4, $s0, 16
	st.b	$zero, $s0, 16
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.w	$a0, $s0, 0
	add.d	$a0, $s4, $s2
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 8
	slt	$a1, $a0, $fp
	masknez	$a2, $fp, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	add.w	$a2, $a0, $s2
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB16_100
# %bb.15:
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	beqz	$a1, .LBB16_101
# %bb.16:                               # %.thread394
	move	$s4, $zero
	st.d	$s0, $s3, 0
	addi.d	$s2, $s7, 16
	ori	$s1, $zero, 1
	b	.LBB16_19
.LBB16_17:                              # %.thread386
	move	$s4, $zero
.LBB16_18:                              # %.critedge
	addi.d	$s2, $s7, 16
.LBB16_19:                              # %.critedge
	ld.w	$a2, $s8, 4
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $s8, 8
	add.w	$s3, $a2, $s4
	sub.w	$a1, $a0, $s4
	slt	$a3, $a1, $fp
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	sub.d	$a1, $fp, $a1
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$a1, $a1, $a3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a2
	addi.w	$s5, $a0, 0
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 2
	bstrpick.d	$a1, $a0, 31, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.w	$s7, $s4, $s1
	addi.w	$a0, $s7, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$s5, $a0, 31, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	bstrpick.d	$s6, $s7, 31, 0
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s8, $s6
	ld.bu	$s1, $s8, 0
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	beqz	$s1, .LBB16_21
# %bb.20:
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	b	.LBB16_23
	.p2align	4, , 16
.LBB16_21:                              # %.lr.ph321
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s1, $s8, 1
	addi.d	$s8, $s8, 1
	addi.w	$s7, $s7, -1
	beqz	$s1, .LBB16_21
# %bb.22:                               # %._crit_edge.loopexit
	addi.w	$a0, $s7, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
.LBB16_23:                              # %._crit_edge
	add.w	$s5, $s3, $fp
	sltu	$a0, $s5, $s7
	sltu	$a2, $s3, $s7
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	sub.d	$a1, $s3, $s7
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	masknez	$a1, $a1, $a2
	masknez	$a0, $a1, $a0
	addi.d	$s6, $a0, 1
	add.d	$s0, $s6, $fp
	addi.w	$s2, $s6, 0
	add.d	$a0, $fp, $s2
	addi.d	$a0, $a0, 1040
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.w	$zero, $a0, 0
	st.w	$s6, $a0, 4
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.w	$fp, $a0, 8
	ori	$a0, $zero, 1
	st.w	$a0, $s3, 12
	addi.d	$s6, $s3, 16
	st.b	$zero, $s3, 16
	bstrpick.d	$a2, $s0, 31, 0
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$t2, $a0
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bltu	$s5, $s7, .LBB16_66
# %bb.24:
	move	$t5, $s5
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	ext.w.b	$a0, $s1
	addi.d	$a0, $a0, 1
	ori	$t4, $zero, 10
	div.d	$a0, $t4, $a0
	bstrpick.d	$a1, $a0, 15, 0
	ori	$s2, $zero, 1
	addi.d	$a2, $s7, 1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$s3, 419430
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $s2, .LBB16_40
# %bb.25:
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a3, $a2, 0
	slli.d	$a4, $a0, 48
	addi.w	$a2, $a3, 1
	beqz	$a4, .LBB16_38
# %bb.26:
	lu12i.w	$a4, 524287
	ori	$a4, $a4, 4094
	ext.w.h	$a0, $a0
	bltu	$a4, $a3, .LBB16_31
# %bb.27:                               # %.lr.ph.preheader.i230
	move	$a3, $zero
	add.d	$a2, $t1, $a2
	addi.d	$a2, $a2, -1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	add.d	$a4, $s4, $a4
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	masknez	$a5, $a5, $a7
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a6, $a6, $a7
	or	$a5, $a6, $a5
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 2
	ori	$a5, $s3, 1639
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB16_28:                              # %.lr.ph.i231
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a2, 0
	mul.d	$a7, $a7, $a0
	add.w	$a7, $a7, $a3
	mul.d	$a3, $a7, $a5
	srli.d	$t0, $a3, 63
	srai.d	$a3, $a3, 34
	add.d	$a3, $a3, $t0
	slli.d	$t0, $a3, 3
	alsl.d	$t0, $a3, $t0, 1
	sub.d	$t0, $a7, $t0
	st.b	$t0, $a2, 0
	addi.w	$a4, $a4, -1
	addi.d	$a2, $a2, -1
	bltu	$a6, $a4, .LBB16_28
# %bb.29:                               # %._crit_edge.i
	addi.w	$a4, $a7, 9
	ori	$a5, $zero, 19
	bltu	$a4, $a5, .LBB16_31
# %bb.30:
	st.b	$a3, $a2, 0
.LBB16_31:                              # %_one_mult.exit
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB16_40
# %bb.32:                               # %_one_mult.exit
	move	$fp, $t5
	beqz	$a1, .LBB16_39
# %bb.33:
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	ori	$t4, $zero, 10
	move	$t5, $fp
	blez	$s7, .LBB16_40
# %bb.34:                               # %.lr.ph.preheader.i233
	move	$a2, $zero
	add.d	$a1, $s8, $s7
	addi.d	$a1, $a1, -1
	ori	$a3, $s3, 1639
	ori	$a4, $zero, 1
	addi.d	$a5, $s7, 1
	.p2align	4, , 16
.LBB16_35:                              # %.lr.ph.i235
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a6, $a1, 0
	mul.d	$a6, $a6, $a0
	add.w	$a6, $a6, $a2
	mul.d	$a2, $a6, $a3
	srli.d	$a7, $a2, 63
	srai.d	$a2, $a2, 34
	add.d	$a2, $a2, $a7
	slli.d	$a7, $a2, 3
	alsl.d	$a7, $a2, $a7, 1
	sub.d	$a7, $a6, $a7
	st.b	$a7, $a1, 0
	addi.w	$a5, $a5, -1
	addi.d	$a1, $a1, -1
	bltu	$a4, $a5, .LBB16_35
# %bb.36:                               # %._crit_edge.i242
	addi.w	$a0, $a6, 9
	ori	$a3, $zero, 19
	bltu	$a0, $a3, .LBB16_40
# %bb.37:
	st.b	$a2, $a1, 0
	b	.LBB16_40
.LBB16_38:                              # %_one_mult.exit.thread
	move	$fp, $t5
	move	$a0, $t1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB16_39:
	move	$a0, $s8
	move	$a1, $zero
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	ori	$t4, $zero, 10
	move	$t5, $fp
.LBB16_40:                              # %_one_mult.exit245
	move	$s0, $zero
	bstrpick.d	$a2, $s7, 31, 0
	add.d	$a0, $s6, $a2
	bstrpick.d	$a1, $s1, 31, 0
	sub.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$s5, $a0, $a1
	sub.d	$a0, $t5, $s7
	addi.d	$a1, $t2, 1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	add.d	$a1, $a1, $s7
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	add.d	$a1, $t2, $a2
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$s1, $a0, 31, 0
	add.d	$a0, $s7, $s8
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	add.d	$a0, $a2, $s8
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$t5, $zero, 9
	lu12i.w	$a0, 6
	ori	$a0, $a0, 1639
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s3, $s3, 1639
	b	.LBB16_43
	.p2align	4, , 16
.LBB16_41:                              #   in Loop: Header=BB16_43 Depth=1
	move	$fp, $zero
.LBB16_42:                              # %.thread
                                        #   in Loop: Header=BB16_43 Depth=1
	addi.d	$a0, $s5, 1
	st.b	$fp, $s5, 0
	move	$s5, $a0
	bltu	$s1, $s0, .LBB16_65
.LBB16_43:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_53 Depth 2
                                        #     Child Loop BB16_58 Depth 2
                                        #     Child Loop BB16_62 Depth 2
	move	$s4, $s0
	ldx.bu	$a2, $t1, $s0
	ld.bu	$a3, $s8, 0
	ext.w.b	$a1, $a2
	ext.w.b	$a0, $a3
	addi.d	$s0, $s0, 1
	bne	$a3, $a2, .LBB16_45
# %bb.44:                               # %._crit_edge356
                                        #   in Loop: Header=BB16_43 Depth=1
	ldx.bu	$a2, $t1, $s0
	ori	$fp, $zero, 9
	b	.LBB16_46
	.p2align	4, , 16
.LBB16_45:                              #   in Loop: Header=BB16_43 Depth=1
	ldx.b	$a3, $t1, $s0
	slli.d	$a2, $a1, 3
	alsl.d	$a4, $a1, $a2, 1
	andi	$a2, $a3, 255
	add.d	$a3, $a4, $a3
	div.d	$a3, $a3, $a0
	ext.w.h	$fp, $a3
.LBB16_46:                              #   in Loop: Header=BB16_43 Depth=1
	ld.b	$a3, $s8, 1
	mul.d	$a4, $fp, $a3
	mul.d	$a1, $a1, $t4
	ext.w.b	$a2, $a2
	add.d	$a1, $a1, $a2
	addi.d	$a2, $s4, 2
	bstrpick.d	$a2, $a2, 31, 0
	ldx.b	$a2, $t1, $a2
	mul.d	$a5, $fp, $a0
	sub.d	$a5, $a1, $a5
	mul.d	$a5, $a5, $t4
	add.d	$a5, $a5, $a2
	bgeu	$a5, $a4, .LBB16_48
# %bb.47:                               #   in Loop: Header=BB16_43 Depth=1
	addi.d	$a4, $fp, -1
	mul.d	$a3, $a4, $a3
	mul.d	$a0, $a4, $a0
	sub.d	$a0, $a1, $a0
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	add.w	$a0, $a0, $a2
	sltu	$a0, $a0, $a3
	addi.d	$a1, $fp, -2
	masknez	$a2, $a4, $a0
	maskeqz	$a0, $a1, $a0
	or	$fp, $a0, $a2
.LBB16_48:                              #   in Loop: Header=BB16_43 Depth=1
	beqz	$fp, .LBB16_41
# %bb.49:                               #   in Loop: Header=BB16_43 Depth=1
	st.b	$zero, $t2, 0
	bne	$fp, $s2, .LBB16_51
# %bb.50:                               #   in Loop: Header=BB16_43 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$t5, $zero, 9
	ori	$t4, $zero, 10
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	b	.LBB16_56
	.p2align	4, , 16
.LBB16_51:                              #   in Loop: Header=BB16_43 Depth=1
	blez	$s7, .LBB16_56
# %bb.52:                               # %.lr.ph.i248.preheader
                                        #   in Loop: Header=BB16_43 Depth=1
	move	$a1, $zero
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_53:                              # %.lr.ph.i248
                                        #   Parent Loop BB16_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a3, 0
	mul.d	$a4, $fp, $a4
	add.w	$a4, $a4, $a1
	mul.d	$a1, $a4, $s3
	srli.d	$a5, $a1, 63
	srai.d	$a1, $a1, 34
	add.d	$a1, $a1, $a5
	slli.d	$a5, $a1, 3
	alsl.d	$a5, $a1, $a5, 1
	sub.d	$a5, $a4, $a5
	st.b	$a5, $a0, 0
	addi.d	$a0, $a0, -1
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, -1
	bltu	$s2, $a2, .LBB16_53
# %bb.54:                               # %._crit_edge.i255
                                        #   in Loop: Header=BB16_43 Depth=1
	addi.w	$a2, $a4, 9
	ori	$a3, $zero, 19
	bltu	$a2, $a3, .LBB16_56
# %bb.55:                               #   in Loop: Header=BB16_43 Depth=1
	st.b	$a1, $a0, 0
	.p2align	4, , 16
.LBB16_56:                              # %_one_mult.exit258
                                        #   in Loop: Header=BB16_43 Depth=1
	beqz	$t3, .LBB16_42
# %bb.57:                               # %.lr.ph329.preheader
                                        #   in Loop: Header=BB16_43 Depth=1
	add.d	$a0, $t1, $s4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	move	$a3, $zero
	move	$a1, $t3
	move	$a2, $a0
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_58:                              # %.lr.ph329
                                        #   Parent Loop BB16_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a5, 0
	ld.b	$a6, $a2, 0
	addi.d	$a5, $a5, -1
	add.d	$a3, $a3, $a4
	sub.w	$a4, $a6, $a3
	slti	$a3, $a4, 0
	addi.d	$a6, $a4, 10
	masknez	$a7, $a4, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a7
	st.b	$a3, $a2, 0
	addi.d	$a2, $a2, -1
	addi.w	$a1, $a1, -1
	bstrpick.d	$a3, $a4, 31, 31
	bnez	$a1, .LBB16_58
# %bb.59:                               # %._crit_edge330
                                        #   in Loop: Header=BB16_43 Depth=1
	bgez	$a4, .LBB16_42
# %bb.60:                               #   in Loop: Header=BB16_43 Depth=1
	addi.d	$fp, $fp, -1
	beqz	$s7, .LBB16_42
# %bb.61:                               # %.lr.ph337.preheader
                                        #   in Loop: Header=BB16_43 Depth=1
	move	$a3, $zero
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s7
	.p2align	4, , 16
.LBB16_62:                              # %.lr.ph337
                                        #   Parent Loop BB16_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a0, 0
	ld.b	$a5, $a1, 0
	add.d	$a3, $a3, $a4
	add.w	$a4, $a3, $a5
	slt	$a3, $t5, $a4
	addi.d	$a5, $a4, 246
	masknez	$a6, $a4, $a3
	maskeqz	$a5, $a5, $a3
	or	$a5, $a5, $a6
	st.b	$a5, $a0, 0
	addi.d	$a0, $a0, -1
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, -1
	bnez	$a2, .LBB16_62
# %bb.63:                               # %._crit_edge338
                                        #   in Loop: Header=BB16_43 Depth=1
	blt	$a4, $t4, .LBB16_42
# %bb.64:                               #   in Loop: Header=BB16_43 Depth=1
	ld.b	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	st.b	$a1, $a0, 0
	b	.LBB16_42
.LBB16_65:                              # %.loopexit.loopexit
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.w	$s2, $s3, 4
.LBB16_66:                              # %.loopexit
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(_zero_)
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.w	$a0, $s3, 0
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	beq	$s3, $a2, .LBB16_77
# %bb.67:
	ld.w	$a0, $s3, 8
	add.w	$a1, $a0, $s2
	blez	$a1, .LBB16_71
# %bb.68:                               # %.lr.ph.i265.preheader
	add.d	$a0, $s2, $a0
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 1
	move	$a2, $s6
	.p2align	4, , 16
.LBB16_69:                              # %.lr.ph.i265
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	bnez	$a3, .LBB16_72
# %bb.70:                               #   in Loop: Header=BB16_69 Depth=1
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	blt	$a1, $a0, .LBB16_69
	b	.LBB16_77
.LBB16_71:                              # %is_zero.exit268
	beqz	$a1, .LBB16_77
.LBB16_72:                              # %is_zero.exit268.thread290
	ori	$a0, $zero, 2
	blt	$s2, $a0, .LBB16_78
.LBB16_73:                              # %.lr.ph.preheader.i271
	addi.d	$a1, $s2, 15
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a1, $s3, $a1
	move	$a2, $s6
	.p2align	4, , 16
.LBB16_74:                              # %.lr.ph.i272
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	move	$a3, $s2
	bnez	$a4, .LBB16_79
# %bb.75:                               #   in Loop: Header=BB16_74 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$s2, $a3, -1
	blt	$a0, $a3, .LBB16_74
# %bb.76:
	ori	$s2, $zero, 1
	ld.w	$a0, $s3, 8
	add.w	$a0, $a0, $s2
	st.w	$s2, $s3, 4
	bgtz	$a0, .LBB16_80
	b	.LBB16_85
.LBB16_77:                              # %is_zero.exit268.thread
	st.w	$zero, $s3, 0
	ori	$a0, $zero, 2
	bge	$s2, $a0, .LBB16_73
.LBB16_78:
	move	$a1, $s6
	ld.w	$a0, $s3, 8
	add.w	$a0, $a0, $s2
	st.w	$s2, $s3, 4
	bgtz	$a0, .LBB16_80
	b	.LBB16_85
.LBB16_79:
	move	$s2, $a3
	move	$a1, $a2
	ld.w	$a0, $s3, 8
	add.w	$a0, $a0, $s2
	st.w	$s2, $s3, 4
	blez	$a0, .LBB16_85
.LBB16_80:                              # %iter.check
	ori	$a2, $zero, 16
	bltu	$a0, $a2, .LBB16_82
# %bb.81:                               # %vector.memcheck
	sub.d	$a2, $s3, $a1
	addi.d	$a3, $a2, 16
	ori	$a2, $zero, 32
	bgeu	$a3, $a2, .LBB16_90
.LBB16_82:
	move	$a2, $a1
	move	$a4, $a0
.LBB16_83:                              # %.lr.ph25.i.preheader
	addi.d	$a0, $a4, 1
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB16_84:                              # %.lr.ph25.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a4, $s6, 1
	addi.w	$a0, $a0, -1
	st.b	$a3, $s6, 0
	move	$s6, $a4
	bltu	$a1, $a0, .LBB16_84
.LBB16_85:                              # %_rm_leading_zeros.exit
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB16_88
# %bb.86:
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB16_88
# %bb.87:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
.LBB16_88:                              # %free_num.exit273
	st.d	$s3, $fp, 0
	move	$a0, $t2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB16_89:                              # %is_zero.exit.thread
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB16_90:                              # %vector.main.loop.iter.check
	bgeu	$a0, $a2, .LBB16_95
# %bb.91:
	move	$a3, $zero
.LBB16_92:                              # %vec.epilog.ph
	bstrpick.d	$a4, $a0, 30, 4
	slli.d	$a5, $a4, 4
	alsl.d	$a2, $a4, $a1, 4
	alsl.d	$s6, $a4, $s6, 4
	sub.d	$a4, $a0, $a5
	sub.d	$a6, $a3, $a5
	add.d	$a7, $a3, $s3
	addi.d	$a7, $a7, 16
	add.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB16_93:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vst	$vr0, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$a1, $a1, 16
	bnez	$a6, .LBB16_93
# %bb.94:                               # %vec.epilog.middle.block
	bne	$a5, $a0, .LBB16_83
	b	.LBB16_85
.LBB16_95:                              # %vector.ph
	andi	$a2, $a0, 16
	bstrpick.d	$a3, $a0, 30, 5
	slli.d	$a3, $a3, 5
	addi.d	$a4, $s3, 32
	addi.d	$a5, $a1, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB16_96:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB16_96
# %bb.97:                               # %middle.block
	beq	$a3, $a0, .LBB16_85
# %bb.98:                               # %vec.epilog.iter.check
	bnez	$a2, .LBB16_92
# %bb.99:
	add.d	$a2, $a1, $a3
	add.d	$s6, $s6, $a3
	sub.d	$a4, $a0, $a3
	b	.LBB16_83
.LBB16_100:                             # %.thread390
	move	$s4, $zero
	st.d	$s0, $s3, 0
	b	.LBB16_18
.LBB16_101:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s7, 8
	ld.w	$s1, $s7, 4
	st.d	$s0, $s3, 0
	addi.d	$s2, $s7, 16
	bnez	$s4, .LBB16_8
	b	.LBB16_11
.Lfunc_end16:
	.size	bc_divide, .Lfunc_end16-bc_divide
                                        # -- End function
	.globl	bc_modulo                       # -- Begin function bc_modulo
	.p2align	5
	.type	bc_modulo,@function
bc_modulo:                              # @bc_modulo
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(_zero_)
	ld.d	$a5, $a4, %pc_lo12(_zero_)
	addi.w	$a4, $zero, -1
	beq	$a1, $a5, .LBB17_10
# %bb.1:
	ld.w	$t0, $a1, 4
	ld.w	$a6, $a1, 8
	add.w	$a7, $a6, $t0
	blez	$a7, .LBB17_5
# %bb.2:                                # %.lr.ph.preheader.i
	addi.d	$a7, $a1, 16
	add.d	$t0, $t0, $a6
	addi.d	$t0, $t0, 1
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB17_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t2, $a7, 0
	bnez	$t2, .LBB17_6
# %bb.4:                                #   in Loop: Header=BB17_3 Depth=1
	addi.w	$t0, $t0, -1
	addi.d	$a7, $a7, 1
	blt	$t1, $t0, .LBB17_3
	b	.LBB17_10
.LBB17_5:                               # %is_zero.exit
	beqz	$a7, .LBB17_10
.LBB17_6:                               # %is_zero.exit.thread18
	ld.w	$a4, $a0, 8
	add.w	$a6, $a6, $a3
	slt	$a7, $a6, $a4
	ld.w	$t0, $a5, 12
	masknez	$a6, $a6, $a7
	maskeqz	$a4, $a4, $a7
	or	$fp, $a4, $a6
	addi.d	$a4, $t0, 1
	st.w	$a4, $a5, 12
	st.d	$a5, $sp, 0
	move	$s0, $a2
	addi.d	$a2, $sp, 0
	move	$s1, $a0
	move	$s2, $a1
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	addi.d	$a2, $sp, 0
	move	$a1, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bc_sub)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB17_9
# %bb.7:
	ld.w	$a0, $fp, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 12
	bnez	$a0, .LBB17_9
# %bb.8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_9:                               # %free_num.exit
	move	$a4, $zero
.LBB17_10:                              # %free_num.exit
	move	$a0, $a4
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	bc_modulo, .Lfunc_end17-bc_modulo
                                        # -- End function
	.globl	bc_raise                        # -- Begin function bc_raise
	.p2align	5
	.type	bc_raise,@function
bc_raise:                               # @bc_raise
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
	move	$s2, $a1
	ld.w	$a1, $a1, 8
	move	$s0, $a3
	move	$fp, $a2
	move	$s1, $a0
	beqz	$a1, .LBB18_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(rt_warn)
	jirl	$ra, $ra, 0
.LBB18_2:
	ld.w	$a0, $s2, 4
	blez	$a0, .LBB18_7
# %bb.3:                                # %.lr.ph.preheader.i
	move	$a1, $zero
	addi.d	$a2, $s2, 16
	ori	$a3, $zero, 2
	lu12i.w	$a4, -209716
	ori	$a4, $a4, 3277
	lu32i.d	$a4, -209716
	lu52i.d	$a4, $a4, 204
	move	$a6, $a0
	.p2align	4, , 16
.LBB18_4:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a2, 0
	move	$a5, $a6
	slli.d	$a6, $a1, 3
	alsl.d	$a1, $a1, $a6, 1
	add.d	$a1, $a1, $a7
	bltu	$a5, $a3, .LBB18_6
# %bb.5:                                # %.lr.ph.i
                                        #   in Loop: Header=BB18_4 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$a6, $a5, -1
	blt	$a1, $a4, .LBB18_4
.LBB18_6:                               # %._crit_edge.loopexit.i
	ori	$a2, $zero, 1
	sltu	$a2, $a2, $a5
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	masknez	$a1, $a1, $a2
	b	.LBB18_8
.LBB18_7:
	move	$a1, $zero
.LBB18_8:                               # %num2long.exit
	ld.w	$a2, $s2, 0
	sltui	$a2, $a2, 1
	sub.d	$a3, $zero, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$s3, $a1, $a3
	beqz	$s3, .LBB18_12
# %bb.9:                                # %.critedge
	bltz	$s3, .LBB18_20
# %bb.10:
	ld.w	$a1, $s1, 8
	mul.d	$a2, $s3, $a1
	slt	$a0, $a1, $s0
	masknez	$a3, $a1, $a0
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a3
	move	$a0, $s3
	blt	$s0, $a2, .LBB18_21
# %bb.11:
	mul.w	$s0, $a1, $s3
	move	$a0, $s3
	b	.LBB18_21
.LBB18_12:
	ori	$a1, $zero, 1
	blt	$a1, $a0, .LBB18_14
# %bb.13:
	ld.bu	$a0, $s2, 16
	beqz	$a0, .LBB18_15
.LBB18_14:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(rt_error)
	jirl	$ra, $ra, 0
.LBB18_15:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB18_19
# %bb.16:
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB18_18
# %bb.17:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB18_18:
	st.d	$zero, $fp, 0
.LBB18_19:                              # %free_num.exit
	pcalau12i	$a0, %pc_hi20(_one_)
	ld.d	$a0, $a0, %pc_lo12(_one_)
	ld.w	$a1, $a0, 12
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 12
	st.d	$a0, $fp, 0
	b	.LBB18_32
.LBB18_20:
	sub.d	$a0, $zero, $s3
.LBB18_21:
	pcalau12i	$s2, %pc_hi20(_one_)
	ld.d	$a1, $s2, %pc_lo12(_one_)
	ld.w	$a2, $a1, 12
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 12
	ld.w	$a2, $s1, 12
	st.d	$a1, $sp, 24
	addi.d	$a1, $a2, 1
	st.w	$a1, $s1, 12
	st.d	$s1, $sp, 16
	ori	$s4, $zero, 1
	b	.LBB18_23
	.p2align	4, , 16
.LBB18_22:                              #   in Loop: Header=BB18_23 Depth=1
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	srli.d	$a0, $s5, 1
	bgeu	$s4, $s5, .LBB18_25
.LBB18_23:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $sp, 16
	move	$s5, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB18_22
# %bb.24:                               #   in Loop: Header=BB18_23 Depth=1
	ld.d	$a0, $sp, 24
	addi.d	$a2, $sp, 24
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	b	.LBB18_22
.LBB18_25:
	bltz	$s3, .LBB18_33
# %bb.26:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB18_29
# %bb.27:
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB18_29
# %bb.28:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB18_29:                              # %free_num.exit46
	ld.d	$a0, $sp, 24
	st.d	$a0, $fp, 0
.LBB18_30:                              # %free_num.exit45
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB18_32
# %bb.31:
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	beqz	$a1, .LBB18_36
.LBB18_32:                              # %free_num.exit47
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB18_33:
	ld.d	$a0, $s2, %pc_lo12(_one_)
	ld.d	$s1, $sp, 24
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB18_30
# %bb.34:
	ld.w	$a0, $s1, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s1, 12
	bnez	$a0, .LBB18_30
# %bb.35:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB18_30
.LBB18_36:
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end18:
	.size	bc_raise, .Lfunc_end18-bc_raise
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function bc_sqrt
.LCPI19_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
.LCPI19_1:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.text
	.globl	bc_sqrt
	.p2align	5
	.type	bc_sqrt,@function
bc_sqrt:                                # @bc_sqrt
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
	move	$fp, $a0
	ld.d	$s5, $a0, 0
	pcalau12i	$s1, %pc_hi20(_zero_)
	ld.d	$s2, $s1, %pc_lo12(_zero_)
	move	$s0, $a1
	ori	$a2, $zero, 1
	move	$a0, $s5
	move	$a1, $s2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_do_compare)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB19_17
# %bb.1:
	beqz	$a0, .LBB19_18
# %bb.2:
	pcalau12i	$s7, %pc_hi20(_one_)
	ld.d	$s4, $s7, %pc_lo12(_one_)
	ori	$a2, $zero, 1
	move	$a0, $s5
	move	$a1, $s4
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_do_compare)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_23
# %bb.3:
	move	$s6, $a0
	ld.w	$a0, $s5, 8
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	ld.w	$s8, $s2, 12
	maskeqz	$a1, $s0, $a1
	or	$s1, $a1, $a0
	addi.w	$s3, $s1, 2
	addi.d	$a0, $s8, 2
	st.w	$a0, $s2, 12
	ori	$a0, $zero, 1042
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI19_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI19_0)
	move	$s0, $a0
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 1280
	st.h	$a0, $s0, 16
	bltz	$s6, .LBB19_28
# %bb.4:                                # %.lr.ph.i
	bstrpick.d	$a0, $s8, 31, 0
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 31
	st.w	$a0, $s2, 12
	bgez	$a1, .LBB19_6
# %bb.5:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s5, $fp, 0
.LBB19_6:                               # %free_num.exit.i
	ori	$a0, $zero, 1042
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI19_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI19_1)
	move	$s4, $a0
	vst	$vr0, $a0, 0
	ori	$s6, $zero, 1
	st.h	$s6, $a0, 16
	ld.w	$s5, $s5, 4
	st.d	$a0, $sp, 16
	srai.d	$a0, $s5, 31
	xor	$a1, $s5, $a0
	sub.w	$a1, $a1, $a0
	bstrpick.d	$a2, $a1, 31, 0
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	lu32i.d	$a0, 0
	mul.d	$a2, $a2, $a0
	srli.d	$a2, $a2, 35
	ori	$a3, $zero, 10
	mul.d	$a2, $a2, $a3
	sub.d	$a2, $a1, $a2
	st.b	$a2, $sp, 26
	addi.d	$s8, $sp, 27
	bltu	$a1, $a3, .LBB19_9
# %bb.7:                                # %.lr.ph.i33.preheader
	ori	$s6, $zero, 1
	lu12i.w	$a2, 104857
	ori	$a2, $a2, 2458
	ori	$a3, $zero, 99
	.p2align	4, , 16
.LBB19_8:                               # %.lr.ph.i33
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a1
	bstrpick.d	$a1, $a1, 31, 0
	mul.d	$a1, $a1, $a0
	srli.d	$a1, $a1, 35
	mul.d	$a5, $a1, $a2
	srli.d	$a5, $a5, 32
	slli.d	$a6, $a5, 3
	alsl.d	$a5, $a5, $a6, 1
	sub.d	$a5, $a1, $a5
	st.b	$a5, $s8, 0
	addi.w	$s6, $s6, 1
	addi.d	$s8, $s8, 1
	bltu	$a3, $a4, .LBB19_8
.LBB19_9:                               # %._crit_edge.i40
	ld.w	$a0, $s2, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s2, 12
	bnez	$a0, .LBB19_11
# %bb.10:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_11:                              # %free_num.exit.i41
	addi.d	$a0, $s6, 1040
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	st.w	$s6, $a0, 4
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 8
	st.b	$zero, $a0, 16
	st.d	$a0, $sp, 8
	bgez	$s5, .LBB19_13
# %bb.12:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB19_13:                              # %.preheader
	addi.d	$a1, $s6, 1
	addi.d	$a2, $s8, -1
	ori	$a3, $zero, 16
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB19_14:                              # =>This Inner Loop Header: Depth=1
	ld.b	$a5, $a2, 0
	stx.b	$a5, $a0, $a3
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, -1
	blt	$a4, $a1, .LBB19_14
# %bb.15:
	addi.d	$a2, $sp, 8
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 8
	st.w	$zero, $s5, 8
	addi.d	$a2, $sp, 16
	move	$a0, $s4
	move	$a1, $s5
	move	$a3, $s1
	pcaddu18i	$ra, %call36(bc_raise)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 12
	move	$s2, $zero
	addi.w	$a0, $a0, -1
	st.w	$a0, $s5, 12
	bnez	$a0, .LBB19_29
# %bb.16:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	b	.LBB19_29
.LBB19_17:
	move	$a0, $zero
	b	.LBB19_62
.LBB19_18:
	beqz	$s5, .LBB19_22
# %bb.19:
	ld.w	$a0, $s5, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s5, 12
	bnez	$a0, .LBB19_21
# %bb.20:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_21:
	st.d	$zero, $fp, 0
	ld.d	$s2, $s1, %pc_lo12(_zero_)
.LBB19_22:                              # %free_num.exit
	ld.w	$a0, $s2, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 12
	st.d	$s2, $fp, 0
	b	.LBB19_61
.LBB19_23:
	beqz	$s5, .LBB19_27
# %bb.24:
	ld.w	$a0, $s5, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s5, 12
	bnez	$a0, .LBB19_26
# %bb.25:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_26:
	st.d	$zero, $fp, 0
	ld.d	$s4, $s7, %pc_lo12(_one_)
.LBB19_27:                              # %free_num.exit31
	ld.w	$a0, $s4, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 12
	st.d	$s4, $fp, 0
	b	.LBB19_61
.LBB19_28:
	ld.w	$a0, $s4, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 12
	st.d	$s4, $sp, 16
.LBB19_29:                              # %.lr.ph.preheader
	ori	$s5, $zero, 1
	ori	$s6, $zero, 2
	.p2align	4, , 16
.LBB19_30:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_36 Depth 2
                                        #     Child Loop BB19_47 Depth 2
                                        #     Child Loop BB19_42 Depth 2
	beqz	$s2, .LBB19_33
# %bb.31:                               #   in Loop: Header=BB19_30 Depth=1
	ld.w	$a0, $s2, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s2, 12
	bnez	$a0, .LBB19_33
# %bb.32:                               #   in Loop: Header=BB19_30 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_33:                              # %free_num.exit48
                                        #   in Loop: Header=BB19_30 Depth=1
	ld.d	$s2, $sp, 16
	ld.w	$a1, $s2, 12
	ld.d	$a0, $fp, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s2, 12
	st.d	$s2, $sp, 8
	addi.d	$a2, $sp, 16
	move	$a1, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	addi.d	$a2, $sp, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bc_add)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	addi.d	$a2, $sp, 16
	move	$a1, $s0
	move	$a3, $s3
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 16
	ld.w	$a4, $s4, 4
	ld.w	$a0, $s2, 4
	bne	$a4, $a0, .LBB19_30
# %bb.34:                               #   in Loop: Header=BB19_30 Depth=1
	ld.w	$a2, $s4, 8
	ld.w	$a3, $s2, 8
	slt	$a0, $a2, $a3
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $a2, $a0
	or	$a6, $a0, $a1
	add.w	$a5, $a6, $a4
	addi.d	$a0, $s4, 16
	addi.d	$a1, $s2, 16
	blez	$a5, .LBB19_38
# %bb.35:                               # %.lr.ph.i50.preheader
                                        #   in Loop: Header=BB19_30 Depth=1
	add.d	$a4, $a4, $a6
	addi.w	$a4, $a4, 1
	.p2align	4, , 16
.LBB19_36:                              # %.lr.ph.i50
                                        #   Parent Loop BB19_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a0, 0
	ld.bu	$a6, $a1, 0
	bne	$a5, $a6, .LBB19_44
# %bb.37:                               #   in Loop: Header=BB19_36 Depth=2
	addi.d	$a0, $a0, 1
	addi.w	$a4, $a4, -1
	addi.d	$a1, $a1, 1
	blt	$s5, $a4, .LBB19_36
	b	.LBB19_39
.LBB19_38:                              # %._crit_edge.i49
                                        #   in Loop: Header=BB19_30 Depth=1
	bnez	$a5, .LBB19_30
.LBB19_39:                              # %._crit_edge.thread.i
                                        #   in Loop: Header=BB19_30 Depth=1
	beq	$a2, $a3, .LBB19_49
# %bb.40:                               #   in Loop: Header=BB19_30 Depth=1
	bge	$a3, $a2, .LBB19_46
# %bb.41:                               # %.lr.ph101.preheader.i
                                        #   in Loop: Header=BB19_30 Depth=1
	sub.d	$a1, $a2, $a3
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB19_42:                              # %.lr.ph101.i
                                        #   Parent Loop BB19_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a0, 0
	bnez	$a2, .LBB19_30
# %bb.43:                               #   in Loop: Header=BB19_42 Depth=2
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	blt	$s5, $a1, .LBB19_42
	b	.LBB19_49
.LBB19_44:                              # %.critedge.i
                                        #   in Loop: Header=BB19_30 Depth=1
	bne	$a2, $a3, .LBB19_30
# %bb.45:                               # %.critedge.i
                                        #   in Loop: Header=BB19_30 Depth=1
	bne	$a4, $s6, .LBB19_30
	b	.LBB19_49
.LBB19_46:                              # %.lr.ph97.preheader.i
                                        #   in Loop: Header=BB19_30 Depth=1
	sub.d	$a0, $a3, $a2
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB19_47:                              # %.lr.ph97.i
                                        #   Parent Loop BB19_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 0
	bnez	$a2, .LBB19_30
# %bb.48:                               #   in Loop: Header=BB19_47 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	blt	$s5, $a0, .LBB19_47
.LBB19_49:                              # %.outer._crit_edge
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB19_53
# %bb.50:
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB19_52
# %bb.51:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_52:
	st.d	$zero, $fp, 0
.LBB19_53:                              # %free_num.exit51
	ld.d	$a1, $s7, %pc_lo12(_one_)
	move	$a0, $s4
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB19_56
# %bb.54:
	ld.w	$a0, $s4, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s4, 12
	bnez	$a0, .LBB19_56
# %bb.55:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_56:                              # %free_num.exit52
	beqz	$s2, .LBB19_59
# %bb.57:
	ld.w	$a0, $s2, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s2, 12
	bnez	$a0, .LBB19_59
# %bb.58:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_59:                              # %free_num.exit53
	ld.w	$a1, $s0, 12
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB19_62
# %bb.60:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_61:                              # %free_num.exit54
	ori	$a0, $zero, 1
.LBB19_62:                              # %free_num.exit54
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
.Lfunc_end19:
	.size	bc_sqrt, .Lfunc_end19-bc_sqrt
                                        # -- End function
	.globl	out_long                        # -- Begin function out_long
	.p2align	5
	.type	out_long,@function
out_long:                               # @out_long
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a2, .LBB20_2
# %bb.1:
	ori	$a0, $zero, 32
	jirl	$ra, $fp, 0
.LBB20_2:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 16
	move	$a2, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$s2, $a0, 0
	bge	$s2, $s0, .LBB20_4
	.p2align	4, , 16
.LBB20_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 48
	jirl	$ra, $fp, 0
	addi.w	$s0, $s0, -1
	blt	$s2, $s0, .LBB20_3
.LBB20_4:                               # %.preheader
	blez	$s2, .LBB20_7
# %bb.5:                                # %.lr.ph15.preheader
	bstrpick.d	$s0, $s1, 30, 0
	addi.d	$s1, $sp, 16
	.p2align	4, , 16
.LBB20_6:                               # %.lr.ph15
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $s1, 0
	jirl	$ra, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 1
	bnez	$s0, .LBB20_6
.LBB20_7:                               # %._crit_edge
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end20:
	.size	out_long, .Lfunc_end20-out_long
                                        # -- End function
	.globl	out_num                         # -- Begin function out_num
	.p2align	5
	.type	out_num,@function
out_num:                                # @out_num
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	move	$s8, $a0
	ld.w	$a0, $a0, 0
	ori	$a3, $zero, 1
	move	$s4, $a1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bne	$a0, $a3, .LBB21_2
# %bb.1:
	ori	$a0, $zero, 45
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
.LBB21_2:
	pcalau12i	$s6, %pc_hi20(_zero_)
	ld.d	$a7, $s6, %pc_lo12(_zero_)
	beq	$s8, $a7, .LBB21_19
# %bb.3:
	ld.w	$a1, $s8, 4
	ld.w	$a0, $s8, 8
	add.w	$a3, $a0, $a1
	blez	$a3, .LBB21_7
# %bb.4:                                # %.lr.ph.preheader.i
	addi.d	$a3, $s8, 16
	add.d	$a4, $a1, $a0
	addi.d	$a4, $a4, 1
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB21_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a6, $a3, 0
	bnez	$a6, .LBB21_8
# %bb.6:                                #   in Loop: Header=BB21_5 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a3, $a3, 1
	blt	$a5, $a4, .LBB21_5
	b	.LBB21_19
.LBB21_7:                               # %is_zero.exit
	beqz	$a3, .LBB21_19
.LBB21_8:                               # %is_zero.exit.thread155
	ori	$s1, $zero, 10
	bne	$s4, $s1, .LBB21_20
# %bb.9:
	ori	$s0, $zero, 1
	addi.d	$fp, $s8, 16
	blt	$s0, $a1, .LBB21_12
# %bb.10:
	ld.bu	$a2, $fp, 0
	beqz	$a2, .LBB21_105
# %bb.11:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB21_15
.LBB21_12:                              # %.lr.ph195.preheader
	addi.d	$s1, $a1, 1
	.p2align	4, , 16
.LBB21_13:                              # %.lr.ph195
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $fp, 0
	addi.d	$fp, $fp, 1
	addi.d	$a0, $a0, 48
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	addi.w	$s1, $s1, -1
	bltu	$s0, $s1, .LBB21_13
# %bb.14:                               # %.loopexit.loopexit
	ld.w	$a0, $s8, 8
.LBB21_15:                              # %.loopexit
	blez	$a0, .LBB21_67
.LBB21_16:
	ori	$a0, $zero, 46
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	ld.w	$a0, $s8, 8
	blez	$a0, .LBB21_67
# %bb.17:                               # %.lr.ph199.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB21_18:                              # %.lr.ph199
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $fp, 0
	addi.d	$fp, $fp, 1
	addi.d	$a0, $a0, 48
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	ld.w	$a0, $s8, 8
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB21_18
	b	.LBB21_67
.LBB21_19:                              # %is_zero.exit.thread
	ori	$a0, $zero, 48
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	jr	$a2
.LBB21_20:
	ld.w	$a0, $a7, 12
	pcalau12i	$a1, %pc_hi20(_one_)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(_one_)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a7, 12
	st.d	$a7, $sp, 120
	addi.d	$a2, $sp, 120
	move	$a0, $s8
	move	$a3, $zero
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, %pc_lo12(_zero_)
	ld.w	$a0, $a1, 12
	st.d	$a1, $sp, 112
	ld.d	$s2, $sp, 120
	st.d	$a1, $sp, 104
	addi.d	$a0, $a0, 3
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	st.w	$a0, $a1, 12
	addi.d	$a2, $sp, 112
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bc_sub)
	jirl	$ra, $ra, 0
	srai.d	$a0, $s4, 31
	xor	$a1, $s4, $a0
	sub.w	$a0, $a1, $a0
	lu12i.w	$a1, -209716
	ori	$s5, $a1, 3277
	bstrpick.d	$a1, $a0, 31, 0
	move	$a6, $s5
	lu32i.d	$a6, 0
	mul.d	$a1, $a1, $a6
	srli.d	$a1, $a1, 35
	mul.d	$a1, $a1, $s1
	sub.d	$a1, $a0, $a1
	st.b	$a1, $sp, 128
	addi.d	$fp, $sp, 129
	ori	$s0, $zero, 1
	bltu	$a0, $s1, .LBB21_23
# %bb.21:                               # %.lr.ph.i65.preheader
	ori	$s0, $zero, 1
	lu12i.w	$a1, 104857
	ori	$a1, $a1, 2458
	ori	$a2, $zero, 99
	.p2align	4, , 16
.LBB21_22:                              # %.lr.ph.i65
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a0
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $a6
	srli.d	$a0, $a0, 35
	mul.d	$a4, $a0, $a1
	srli.d	$a4, $a4, 32
	slli.d	$a5, $a4, 3
	alsl.d	$a4, $a4, $a5, 1
	sub.d	$a4, $a0, $a4
	st.b	$a4, $fp, 0
	addi.w	$s0, $s0, 1
	addi.d	$fp, $fp, 1
	bltu	$a2, $a3, .LBB21_22
.LBB21_23:                              # %._crit_edge.i
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a1, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 12
	bnez	$a0, .LBB21_25
# %bb.24:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB21_25:                              # %free_num.exit.i
	addi.d	$a0, $s0, 1040
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.w	$zero, $a0, 0
	st.w	$s0, $a0, 4
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $s7, 8
	st.b	$zero, $s7, 16
	bgez	$s4, .LBB21_27
# %bb.26:
	ori	$a0, $zero, 1
	st.w	$a0, $s7, 0
.LBB21_27:                              # %.preheader313
	addi.d	$a0, $s0, 1
	addi.d	$a1, $fp, -1
	ori	$a2, $zero, 16
	ori	$a3, $zero, 1
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_28:                              # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	stx.b	$a4, $s7, $a2
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, -1
	blt	$a3, $a0, .LBB21_28
# %bb.29:                               # %int2num.exit
	ld.d	$a0, $s6, %pc_lo12(_zero_)
	ld.w	$a1, $a0, 12
	addi.w	$a2, $s4, -1
	srai.d	$a3, $a2, 31
	xor	$a2, $a2, $a3
	sub.w	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 31, 0
	mul.d	$a3, $a3, $t0
	srli.d	$a3, $a3, 35
	ori	$a4, $zero, 10
	mul.d	$a3, $a3, $a4
	sub.d	$a3, $a2, $a3
	st.b	$a3, $sp, 128
	addi.d	$fp, $sp, 129
	ori	$s0, $zero, 1
	bltu	$a2, $a4, .LBB21_32
# %bb.30:                               # %.lr.ph.i70.preheader
	ori	$s0, $zero, 1
	lu12i.w	$a3, 104857
	ori	$a3, $a3, 2458
	ori	$a4, $zero, 99
	.p2align	4, , 16
.LBB21_31:                              # %.lr.ph.i70
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a2
	bstrpick.d	$a2, $a2, 31, 0
	mul.d	$a2, $a2, $t0
	srli.d	$a2, $a2, 35
	mul.d	$a6, $a2, $a3
	srli.d	$a6, $a6, 32
	slli.d	$a7, $a6, 3
	alsl.d	$a6, $a6, $a7, 1
	sub.d	$a6, $a2, $a6
	st.b	$a6, $fp, 0
	addi.w	$s0, $s0, 1
	addi.d	$fp, $fp, 1
	bltu	$a4, $a5, .LBB21_31
.LBB21_32:                              # %._crit_edge.i77
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB21_34
# %bb.33:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB21_34:                              # %free_num.exit.i80
	addi.d	$a0, $s0, 1040
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	st.w	$s0, $a0, 4
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 8
	st.b	$zero, $a0, 16
	bgtz	$s4, .LBB21_36
# %bb.35:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB21_36:                              # %.preheader311
	addi.d	$a3, $a0, 16
	addi.d	$a6, $s0, 1
	addi.d	$a1, $fp, -1
	ori	$a2, $zero, 1
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_37:                              # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	st.b	$a4, $a3, 0
	addi.d	$a3, $a3, 1
	addi.w	$a6, $a6, -1
	addi.d	$a1, $a1, -1
	blt	$a2, $a6, .LBB21_37
# %bb.38:                               # %int2num.exit85
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $s6, %pc_lo12(_zero_)
	pcalau12i	$a1, %pc_hi20(ref_str)
	addi.d	$a1, $a1, %pc_lo12(ref_str)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	beq	$s2, $a0, .LBB21_55
# %bb.39:                               # %.lr.ph.preheader
	move	$s3, $zero
	ori	$fp, $zero, 1
	ori	$s0, $zero, 2
	move	$a0, $s5
	lu32i.d	$a0, -209716
	lu52i.d	$s1, $a0, 204
.LBB21_40:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_42 Depth 2
                                        #     Child Loop BB21_47 Depth 2
	ld.w	$a1, $s2, 4
	ld.w	$a2, $s2, 8
	add.w	$a0, $a2, $a1
	blez	$a0, .LBB21_44
# %bb.41:                               # %.lr.ph.preheader.i91
                                        #   in Loop: Header=BB21_40 Depth=1
	addi.d	$a0, $s2, 16
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB21_42:                              # %.lr.ph.i92
                                        #   Parent Loop BB21_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a0, 0
	bnez	$a2, .LBB21_45
# %bb.43:                               #   in Loop: Header=BB21_42 Depth=2
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	blt	$fp, $a1, .LBB21_42
	b	.LBB21_51
.LBB21_44:                              # %is_zero.exit95
                                        #   in Loop: Header=BB21_40 Depth=1
	beqz	$a0, .LBB21_51
.LBB21_45:                              # %is_zero.exit95.thread167
                                        #   in Loop: Header=BB21_40 Depth=1
	addi.d	$a2, $sp, 104
	move	$a0, $s2
	move	$a1, $s7
	move	$a3, $zero
	pcaddu18i	$ra, %call36(bc_modulo)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 104
	ld.w	$a1, $a5, 4
	move	$s5, $a0
	move	$a0, $zero
	blez	$a1, .LBB21_50
# %bb.46:                               # %.lr.ph.preheader.i97
                                        #   in Loop: Header=BB21_40 Depth=1
	addi.d	$a2, $a5, 16
	.p2align	4, , 16
.LBB21_47:                              # %.lr.ph.i98
                                        #   Parent Loop BB21_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	move	$a3, $a1
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	add.d	$a0, $a0, $a4
	bltu	$a3, $s0, .LBB21_49
# %bb.48:                               # %.lr.ph.i98
                                        #   in Loop: Header=BB21_47 Depth=2
	addi.d	$a2, $a2, 1
	addi.w	$a1, $a3, -1
	blt	$a0, $s1, .LBB21_47
.LBB21_49:                              # %._crit_edge.loopexit.i
                                        #   in Loop: Header=BB21_40 Depth=1
	sltu	$a1, $fp, $a3
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
.LBB21_50:                              # %num2long.exit
                                        #   in Loop: Header=BB21_40 Depth=1
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $a5, 0
	sltui	$a1, $a1, 1
	sub.d	$a2, $zero, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	st.d	$a0, $s5, 0
	st.d	$s3, $s5, 8
	addi.d	$a2, $sp, 120
	move	$a0, $s2
	move	$a1, $s7
	move	$a3, $zero
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 120
	ld.d	$a0, $s6, %pc_lo12(_zero_)
	move	$s3, $s5
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	bne	$s2, $a0, .LBB21_40
	b	.LBB21_52
.LBB21_51:                              # %is_zero.exit95.thread
	move	$s5, $s3
	beqz	$s3, .LBB21_55
.LBB21_52:                              # %.preheader
	ori	$a0, $zero, 17
	bge	$s4, $a0, .LBB21_97
# %bb.53:                               # %.preheader.split.us.preheader
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_54:                              # %.preheader.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s5, 0
	ld.d	$fp, $s5, 8
	ldx.b	$a0, $s0, $a0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s5, $fp
	bnez	$fp, .LBB21_54
.LBB21_55:                              # %.loopexit178
	ld.w	$a0, $s8, 8
	blez	$a0, .LBB21_57
.LBB21_56:
	ori	$a0, $zero, 46
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(_one_)
	ld.w	$a0, $a1, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 12
	ld.w	$a0, $a1, 4
	ld.w	$a3, $s8, 8
	st.d	$a1, $sp, 96
	bge	$a3, $a0, .LBB21_68
.LBB21_57:                              # %.loopexit177
	beqz	$s2, .LBB21_60
.LBB21_58:                              # %.loopexit177.thread
	ld.w	$a0, $s2, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s2, 12
	bnez	$a0, .LBB21_60
# %bb.59:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB21_60:                              # %free_num.exit
	ld.d	$a0, $sp, 112
	beqz	$a0, .LBB21_63
# %bb.61:
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB21_63
# %bb.62:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB21_63:                              # %free_num.exit142
	ld.w	$a0, $s7, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s7, 12
	beqz	$a0, .LBB21_65
# %bb.64:                               # %free_num.exit143
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bnez	$a0, .LBB21_66
	b	.LBB21_67
.LBB21_65:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB21_67
.LBB21_66:
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	beqz	$a1, .LBB21_96
.LBB21_67:                              # %free_num.exit144
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB21_68:                              # %.lr.ph192
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	ori	$s1, $zero, 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	lu32i.d	$a0, -209716
	lu52i.d	$s0, $a0, 204
	ori	$s4, $zero, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 104857
	ori	$fp, $a0, 2458
	ori	$s3, $zero, 99
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	b	.LBB21_71
	.p2align	4, , 16
.LBB21_69:                              #   in Loop: Header=BB21_71 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.b	$a0, $a0, $s7
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.LBB21_70:                              #   in Loop: Header=BB21_71 Depth=1
	addi.d	$a2, $sp, 96
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s7
	move	$a3, $zero
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	ld.w	$a0, $a1, 4
	ld.w	$a3, $s8, 8
	blt	$a3, $a0, .LBB21_58
.LBB21_71:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_73 Depth 2
                                        #     Child Loop BB21_79 Depth 2
                                        #     Child Loop BB21_86 Depth 2
                                        #     Child Loop BB21_91 Depth 2
                                        #     Child Loop BB21_94 Depth 2
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 112
	addi.d	$a2, $sp, 112
	move	$a1, $s7
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 112
	ld.w	$a1, $s6, 4
	blez	$a1, .LBB21_76
# %bb.72:                               # %.lr.ph.preheader.i104
                                        #   in Loop: Header=BB21_71 Depth=1
	move	$a0, $zero
	addi.d	$a2, $s6, 16
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_73:                              # %.lr.ph.i105
                                        #   Parent Loop BB21_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	move	$a3, $a1
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	add.d	$a0, $a0, $a4
	bltu	$a3, $s1, .LBB21_75
# %bb.74:                               # %.lr.ph.i105
                                        #   in Loop: Header=BB21_73 Depth=2
	addi.d	$a2, $a2, 1
	addi.w	$a1, $a3, -1
	blt	$a0, $s0, .LBB21_73
.LBB21_75:                              # %._crit_edge.loopexit.i109
                                        #   in Loop: Header=BB21_71 Depth=1
	sltu	$a1, $s4, $a3
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	b	.LBB21_77
	.p2align	4, , 16
.LBB21_76:                              #   in Loop: Header=BB21_71 Depth=1
	move	$a0, $zero
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
.LBB21_77:                              # %num2long.exit110
                                        #   in Loop: Header=BB21_71 Depth=1
	ld.w	$a1, $s6, 0
	sltui	$a1, $a1, 1
	sub.d	$a2, $zero, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	addi.w	$s7, $a0, 0
	srai.d	$a1, $s7, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 0
	mul.d	$a1, $a1, $a5
	srli.d	$a1, $a1, 35
	ori	$a2, $zero, 10
	mul.d	$a1, $a1, $a2
	sub.d	$a1, $a0, $a1
	st.b	$a1, $sp, 128
	ori	$s5, $zero, 1
	addi.d	$s8, $sp, 129
	bltu	$a0, $a2, .LBB21_80
# %bb.78:                               # %.lr.ph.i114.preheader
                                        #   in Loop: Header=BB21_71 Depth=1
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB21_79:                              # %.lr.ph.i114
                                        #   Parent Loop BB21_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $a5
	srli.d	$a0, $a0, 35
	mul.d	$a2, $a0, $fp
	srli.d	$a2, $a2, 32
	slli.d	$a3, $a2, 3
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a2, $a0, $a2
	st.b	$a2, $s8, 0
	addi.w	$s5, $s5, 1
	addi.d	$s8, $s8, 1
	bltu	$s3, $a1, .LBB21_79
.LBB21_80:                              # %._crit_edge.i121
                                        #   in Loop: Header=BB21_71 Depth=1
	beqz	$s2, .LBB21_83
# %bb.81:                               #   in Loop: Header=BB21_71 Depth=1
	ld.w	$a0, $s2, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s2, 12
	bnez	$a0, .LBB21_83
# %bb.82:                               #   in Loop: Header=BB21_71 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB21_83:                              # %free_num.exit.i124
                                        #   in Loop: Header=BB21_71 Depth=1
	addi.d	$a0, $s5, 1040
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.w	$zero, $a0, 0
	st.w	$s5, $a0, 4
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s2, 8
	st.b	$zero, $s2, 16
	st.d	$s2, $sp, 120
	bgez	$s7, .LBB21_85
# %bb.84:                               #   in Loop: Header=BB21_71 Depth=1
	st.w	$s4, $s2, 0
.LBB21_85:                              # %.preheader290
                                        #   in Loop: Header=BB21_71 Depth=1
	addi.d	$a0, $s5, 1
	addi.d	$a1, $s8, -1
	ori	$a2, $zero, 16
	.p2align	4, , 16
.LBB21_86:                              #   Parent Loop BB21_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a3, $a1, 0
	stx.b	$a3, $s2, $a2
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, -1
	blt	$s4, $a0, .LBB21_86
# %bb.87:                               # %int2num.exit129
                                        #   in Loop: Header=BB21_71 Depth=1
	addi.d	$a2, $sp, 112
	move	$a0, $s6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(bc_sub)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ori	$a1, $zero, 16
	bge	$a1, $a0, .LBB21_69
# %bb.88:                               #   in Loop: Header=BB21_71 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$s5, $a0, 4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB21_90
# %bb.89:                               #   in Loop: Header=BB21_71 Depth=1
	ori	$a0, $zero, 32
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.LBB21_90:                              #   in Loop: Header=BB21_71 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 128
	move	$a2, $s7
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.w	$s7, $a0, 0
	bge	$s7, $s5, .LBB21_92
	.p2align	4, , 16
.LBB21_91:                              # %.lr.ph.i139
                                        #   Parent Loop BB21_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 48
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	addi.w	$s5, $s5, -1
	blt	$s7, $s5, .LBB21_91
.LBB21_92:                              # %.preheader.i131
                                        #   in Loop: Header=BB21_71 Depth=1
	blez	$s7, .LBB21_95
# %bb.93:                               # %.lr.ph15.preheader.i133
                                        #   in Loop: Header=BB21_71 Depth=1
	bstrpick.d	$s5, $s6, 30, 0
	addi.d	$s6, $sp, 128
	.p2align	4, , 16
.LBB21_94:                              # %.lr.ph15.i135
                                        #   Parent Loop BB21_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a0, $s6, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 1
	bnez	$s5, .LBB21_94
.LBB21_95:                              # %out_long.exit141
                                        #   in Loop: Header=BB21_71 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB21_70
.LBB21_96:
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB21_97:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s6, $a0, %pc_lo12(.L.str.2)
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	b	.LBB21_99
	.p2align	4, , 16
.LBB21_98:                              # %out_long.exit
                                        #   in Loop: Header=BB21_99 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s5, $fp
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	beqz	$fp, .LBB21_104
.LBB21_99:                              # %.preheader.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_100 Depth 2
                                        #     Child Loop BB21_103 Depth 2
	ld.d	$fp, $s5, 8
	ld.d	$s7, $s5, 0
	ld.w	$s0, $s3, 4
	ori	$a0, $zero, 32
	jirl	$ra, $a5, 0
	addi.d	$a0, $sp, 128
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.w	$s1, $a0, 0
	bge	$s1, $s0, .LBB21_101
	.p2align	4, , 16
.LBB21_100:                             # %.lr.ph.i100
                                        #   Parent Loop BB21_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 48
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	addi.w	$s0, $s0, -1
	blt	$s1, $s0, .LBB21_100
.LBB21_101:                             # %.preheader.i
                                        #   in Loop: Header=BB21_99 Depth=1
	blez	$s1, .LBB21_98
# %bb.102:                              # %.lr.ph15.preheader.i
                                        #   in Loop: Header=BB21_99 Depth=1
	bstrpick.d	$s0, $s7, 30, 0
	addi.d	$s1, $sp, 128
	.p2align	4, , 16
.LBB21_103:                             # %.lr.ph15.i
                                        #   Parent Loop BB21_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a0, $s1, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 1
	bnez	$s0, .LBB21_103
	b	.LBB21_98
.LBB21_104:
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $s8, 8
	bgtz	$a0, .LBB21_56
	b	.LBB21_57
.LBB21_105:
	addi.d	$fp, $s8, 17
	bgtz	$a0, .LBB21_16
	b	.LBB21_67
.Lfunc_end21:
	.size	out_num, .Lfunc_end21-out_num
                                        # -- End function
	.type	_zero_,@object                  # @_zero_
	.bss
	.globl	_zero_
	.p2align	3, 0x0
_zero_:
	.dword	0
	.size	_zero_, 8

	.type	_one_,@object                   # @_one_
	.globl	_one_
	.p2align	3, 0x0
_one_:
	.dword	0
	.size	_one_, 8

	.type	_two_,@object                   # @_two_
	.globl	_two_
	.p2align	3, 0x0
_two_:
	.dword	0
	.size	_two_, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"non-zero scale in exponent"
	.size	.L.str, 27

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"exponent too large in raise"
	.size	.L.str.1, 28

	.type	ref_str,@object                 # @ref_str
	.data
	.globl	ref_str
ref_str:
	.asciz	"0123456789ABCDEF"
	.size	ref_str, 17

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%ld"
	.size	.L.str.2, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
