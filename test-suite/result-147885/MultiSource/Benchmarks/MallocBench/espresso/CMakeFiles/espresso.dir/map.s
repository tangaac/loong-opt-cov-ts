	.file	"map.c"
	.text
	.globl	minterms                        # -- Begin function minterms
	.p2align	5
	.type	minterms,@function
minterms:                               # @minterms
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$s1, $a1, %got_pc_lo12(cube)
	ld.w	$a1, $s1, 4
	move	$fp, $a0
	blez	$a1, .LBB0_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s1, 32
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB0_4
# %bb.2:
	move	$a2, $zero
	ori	$s0, $zero, 1
	b	.LBB0_7
.LBB0_3:
	ori	$a0, $zero, 8
	ori	$s0, $zero, 1
	b	.LBB0_11
.LBB0_4:                                # %vector.ph
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	vrepli.w	$vr0, 1
	addi.d	$a3, $a0, 16
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB0_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vmul.w	$vr0, $vr2, $vr0
	vmul.w	$vr1, $vr3, $vr1
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_5
# %bb.6:                                # %middle.block
	vmul.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vmul.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s0, $vr0, 0
	beq	$a2, $a1, .LBB0_9
.LBB0_7:                                # %scalar.ph.preheader
	alsl.d	$a0, $a2, $a0, 2
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB0_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	mul.d	$s0, $a2, $s0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_8
.LBB0_9:                                # %._crit_edge
	addi.w	$a1, $s0, 0
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	blt	$a1, $a2, .LBB0_11
# %bb.10:
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_11:                               # %._crit_edge.thread
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s0, 0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(Gminterm)
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 0
	ld.d	$s2, $fp, 24
	st.d	$s0, $a0, %pc_lo12(Gminterm)
	pcalau12i	$s3, %pc_hi20(Gcube)
	mul.w	$a0, $a2, $a1
	st.d	$s2, $s3, %pc_lo12(Gcube)
	blez	$a0, .LBB0_14
# %bb.12:                               # %.lr.ph15.preheader
	alsl.d	$s4, $a0, $s2, 2
	.p2align	4, , 16
.LBB0_13:                               # %.lr.ph15
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 4
	addi.w	$a0, $a0, -1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(explode)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	alsl.d	$s2, $a0, $s2, 2
	st.d	$s2, $s3, %pc_lo12(Gcube)
	bltu	$s2, $s4, .LBB0_13
.LBB0_14:                               # %._crit_edge16
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
.Lfunc_end0:
	.size	minterms, .Lfunc_end0-minterms
                                        # -- End function
	.globl	explode                         # -- Begin function explode
	.p2align	5
	.type	explode,@function
explode:                                # @explode
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(cube)
	ld.d	$a3, $a2, %got_pc_lo12(cube)
	ld.d	$a2, $a3, 24
	ld.d	$a5, $a3, 16
	slli.d	$a4, $a0, 2
	ldx.w	$a2, $a2, $a4
	ldx.w	$s1, $a5, $a4
	bge	$a2, $s1, .LBB1_2
.LBB1_1:                                # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_2:                                # %.lr.ph
	ld.d	$a3, $a3, 32
	ldx.w	$a3, $a3, $a4
	pcalau12i	$a4, %pc_hi20(Gcube)
	ld.d	$a4, $a4, %pc_lo12(Gcube)
	mul.w	$fp, $a3, $a1
	addi.d	$s2, $a4, 4
	beqz	$a0, .LBB1_7
# %bb.3:                                # %.lr.ph.split.preheader
	addi.w	$s0, $a0, -1
	addi.w	$s3, $a2, 1
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=1
	addi.w	$s1, $s1, 1
	addi.w	$fp, $fp, 1
	beq	$s3, $s1, .LBB1_1
.LBB1_5:                                # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	srai.d	$a0, $s1, 5
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s2, $a0
	srl.w	$a0, $a0, $s1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(explode)
	jirl	$ra, $ra, 0
	b	.LBB1_4
.LBB1_7:                                # %.lr.ph.split.us.preheader
	pcalau12i	$a0, %pc_hi20(Gminterm)
	ld.d	$a0, $a0, %pc_lo12(Gminterm)
	addi.d	$a0, $a0, 4
	addi.w	$a1, $a2, 1
	ori	$a2, $zero, 1
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_8:                                #   in Loop: Header=BB1_9 Depth=1
	addi.w	$s1, $s1, 1
	addi.w	$fp, $fp, 1
	beq	$a1, $s1, .LBB1_1
.LBB1_9:                                # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	srai.d	$a3, $s1, 5
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s2, $a3
	srl.w	$a3, $a3, $s1
	andi	$a3, $a3, 1
	beqz	$a3, .LBB1_8
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	srai.d	$a3, $fp, 5
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $a0, $a3
	sll.w	$a5, $a2, $fp
	or	$a4, $a4, $a5
	stx.w	$a4, $a0, $a3
	b	.LBB1_8
.Lfunc_end1:
	.size	explode, .Lfunc_end1-explode
                                        # -- End function
	.globl	map                             # -- Begin function map
	.p2align	5
	.type	map,@function
map:                                    # @map
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$s3, $a1, %got_pc_lo12(cube)
	ld.w	$a1, $s3, 4
	move	$s0, $a0
	blez	$a1, .LBB2_3
# %bb.1:                                # %.lr.ph.i
	ld.d	$a0, $s3, 32
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB2_4
# %bb.2:
	move	$a2, $zero
	ori	$fp, $zero, 1
	b	.LBB2_7
.LBB2_3:
	ori	$a0, $zero, 8
	ori	$fp, $zero, 1
	b	.LBB2_11
.LBB2_4:                                # %vector.ph
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	vrepli.w	$vr0, 1
	addi.d	$a3, $a0, 16
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vmul.w	$vr0, $vr2, $vr0
	vmul.w	$vr1, $vr3, $vr1
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB2_5
# %bb.6:                                # %middle.block
	vmul.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vmul.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$fp, $vr0, 0
	beq	$a2, $a1, .LBB2_9
.LBB2_7:                                # %scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a0, $a2, $a0, 2
	.p2align	4, , 16
.LBB2_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	mul.d	$fp, $a2, $fp
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB2_8
.LBB2_9:                                # %._crit_edge.i
	addi.w	$a1, $fp, 0
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	blt	$a1, $a2, .LBB2_11
# %bb.10:
	addi.d	$a0, $fp, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_11:                               # %._crit_edge.thread.i
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	addi.w	$a1, $fp, 0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	pcalau12i	$a3, %pc_hi20(Gminterm)
	ld.w	$a1, $s0, 12
	ld.w	$a2, $s0, 0
	ld.d	$fp, $s0, 24
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	st.d	$a0, $a3, %pc_lo12(Gminterm)
	pcalau12i	$s1, %pc_hi20(Gcube)
	mul.w	$a0, $a2, $a1
	st.d	$fp, $s1, %pc_lo12(Gcube)
	blez	$a0, .LBB2_14
# %bb.12:                               # %.lr.ph15.i.preheader
	alsl.d	$s2, $a0, $fp, 2
	.p2align	4, , 16
.LBB2_13:                               # %.lr.ph15.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 4
	addi.w	$a0, $a0, -1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(explode)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	alsl.d	$fp, $a0, $fp, 2
	st.d	$fp, $s1, %pc_lo12(Gcube)
	bltu	$fp, $s2, .LBB2_13
.LBB2_14:                               # %minterms.exit
	ld.d	$a0, $s3, 32
	ld.w	$a1, $s3, 4
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$a0, $a0, -4
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	blez	$a0, .LBB2_37
# %bb.15:                               # %.lr.ph51
	ld.wu	$a2, $s3, 8
	move	$a1, $zero
	ori	$a0, $zero, 1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	sll.w	$s6, $a0, $a2
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	addi.d	$s7, $a0, 4
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(mapindex)
	addi.d	$a0, $a0, %pc_lo12(mapindex)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s1, $zero, 64
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_16:                               # %._crit_edge
                                        #   in Loop: Header=BB2_17 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB2_37
.LBB2_17:                               # %.lr.ph.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
                                        #       Child Loop BB2_21 Depth 3
                                        #         Child Loop BB2_23 Depth 4
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sll.w	$a0, $a1, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB2_19
	.p2align	4, , 16
.LBB2_18:                               #   in Loop: Header=BB2_19 Depth=2
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $s3, 8
	ori	$a2, $zero, 8
	slt	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	addi.w	$a1, $a0, -8
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a0, $a2, 1
	bgeu	$a2, $a1, .LBB2_16
.LBB2_19:                               # %.lr.ph
                                        #   Parent Loop BB2_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_21 Depth 3
                                        #         Child Loop BB2_23 Depth 4
	move	$s4, $zero
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$s8, $a0, 8
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$s0, $s8, $a0
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	b	.LBB2_21
	.p2align	4, , 16
.LBB2_20:                               #   in Loop: Header=BB2_21 Depth=3
	addi.d	$s3, $s3, 64
	ori	$a0, $zero, 16
	beq	$s4, $a0, .LBB2_18
.LBB2_21:                               # %.preheader
                                        #   Parent Loop BB2_17 Depth=1
                                        #     Parent Loop BB2_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_23 Depth 4
	move	$s5, $zero
	move	$s2, $zero
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	ori	$s4, $zero, 1
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_22:                               #   in Loop: Header=BB2_23 Depth=4
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 1
	beq	$s5, $s1, .LBB2_29
.LBB2_23:                               #   Parent Loop BB2_17 Depth=1
                                        #     Parent Loop BB2_19 Depth=2
                                        #       Parent Loop BB2_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a0, $s3, $s5
	add.w	$a1, $a0, $s8
	blt	$a1, $s6, .LBB2_26
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=4
	andi	$a0, $s4, 3
	beqz	$a0, .LBB2_27
.LBB2_25:                               #   in Loop: Header=BB2_23 Depth=4
	andi	$a0, $s4, 7
	bnez	$a0, .LBB2_22
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_23 Depth=4
	add.w	$a0, $a0, $s0
	srai.d	$a1, $a0, 5
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s7, $a1
	srl.w	$a0, $a1, $a0
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 49
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 46
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	andi	$a0, $s4, 3
	bnez	$a0, .LBB2_25
.LBB2_27:                               #   in Loop: Header=BB2_23 Depth=4
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	andi	$a0, $s4, 7
	bnez	$a0, .LBB2_22
.LBB2_28:                               #   in Loop: Header=BB2_23 Depth=4
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_29:                               #   in Loop: Header=BB2_21 Depth=3
	beqz	$s2, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_21 Depth=3
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB2_31:                               #   in Loop: Header=BB2_21 Depth=3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s4, $a1, 1
	andi	$a0, $s4, 3
	beqz	$a0, .LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_21 Depth=3
	andi	$a0, $s4, 7
	bnez	$a0, .LBB2_20
	b	.LBB2_36
	.p2align	4, , 16
.LBB2_33:                               #   in Loop: Header=BB2_21 Depth=3
	ori	$a0, $zero, 15
	beq	$a1, $a0, .LBB2_35
# %bb.34:                               #   in Loop: Header=BB2_21 Depth=3
	slli.d	$a0, $s4, 6
	pcalau12i	$a1, %pc_hi20(mapindex)
	addi.d	$a1, $a1, %pc_lo12(mapindex)
	ldx.w	$a0, $a1, $a0
	bge	$a0, $s6, .LBB2_18
.LBB2_35:                               #   in Loop: Header=BB2_21 Depth=3
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	andi	$a0, $s4, 7
	bnez	$a0, .LBB2_20
.LBB2_36:                               #   in Loop: Header=BB2_21 Depth=3
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB2_20
.LBB2_37:                               # %._crit_edge52
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	beqz	$a0, .LBB2_39
# %bb.38:
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB2_39:
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end2:
	.size	map, .Lfunc_end2-map
                                        # -- End function
	.type	Gminterm,@object                # @Gminterm
	.local	Gminterm
	.comm	Gminterm,8,8
	.type	Gcube,@object                   # @Gcube
	.local	Gcube
	.comm	Gcube,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n\nOutput space # %d\n"
	.size	.L.str, 21

	.type	mapindex,@object                # @mapindex
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
mapindex:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	80                              # 0x50
	.word	81                              # 0x51
	.word	83                              # 0x53
	.word	82                              # 0x52
	.word	64                              # 0x40
	.word	65                              # 0x41
	.word	67                              # 0x43
	.word	66                              # 0x42
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	23                              # 0x17
	.word	22                              # 0x16
	.word	84                              # 0x54
	.word	85                              # 0x55
	.word	87                              # 0x57
	.word	86                              # 0x56
	.word	68                              # 0x44
	.word	69                              # 0x45
	.word	71                              # 0x47
	.word	70                              # 0x46
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	15                              # 0xf
	.word	14                              # 0xe
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	30                              # 0x1e
	.word	92                              # 0x5c
	.word	93                              # 0x5d
	.word	95                              # 0x5f
	.word	94                              # 0x5e
	.word	76                              # 0x4c
	.word	77                              # 0x4d
	.word	79                              # 0x4f
	.word	78                              # 0x4e
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	26                              # 0x1a
	.word	88                              # 0x58
	.word	89                              # 0x59
	.word	91                              # 0x5b
	.word	90                              # 0x5a
	.word	72                              # 0x48
	.word	73                              # 0x49
	.word	75                              # 0x4b
	.word	74                              # 0x4a
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	34                              # 0x22
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	51                              # 0x33
	.word	50                              # 0x32
	.word	112                             # 0x70
	.word	113                             # 0x71
	.word	115                             # 0x73
	.word	114                             # 0x72
	.word	96                              # 0x60
	.word	97                              # 0x61
	.word	99                              # 0x63
	.word	98                              # 0x62
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	39                              # 0x27
	.word	38                              # 0x26
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	55                              # 0x37
	.word	54                              # 0x36
	.word	116                             # 0x74
	.word	117                             # 0x75
	.word	119                             # 0x77
	.word	118                             # 0x76
	.word	100                             # 0x64
	.word	101                             # 0x65
	.word	103                             # 0x67
	.word	102                             # 0x66
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	47                              # 0x2f
	.word	46                              # 0x2e
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	63                              # 0x3f
	.word	62                              # 0x3e
	.word	124                             # 0x7c
	.word	125                             # 0x7d
	.word	127                             # 0x7f
	.word	126                             # 0x7e
	.word	108                             # 0x6c
	.word	109                             # 0x6d
	.word	111                             # 0x6f
	.word	110                             # 0x6e
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	43                              # 0x2b
	.word	42                              # 0x2a
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	59                              # 0x3b
	.word	58                              # 0x3a
	.word	120                             # 0x78
	.word	121                             # 0x79
	.word	123                             # 0x7b
	.word	122                             # 0x7a
	.word	104                             # 0x68
	.word	105                             # 0x69
	.word	107                             # 0x6b
	.word	106                             # 0x6a
	.word	160                             # 0xa0
	.word	161                             # 0xa1
	.word	163                             # 0xa3
	.word	162                             # 0xa2
	.word	176                             # 0xb0
	.word	177                             # 0xb1
	.word	179                             # 0xb3
	.word	178                             # 0xb2
	.word	240                             # 0xf0
	.word	241                             # 0xf1
	.word	243                             # 0xf3
	.word	242                             # 0xf2
	.word	224                             # 0xe0
	.word	225                             # 0xe1
	.word	227                             # 0xe3
	.word	226                             # 0xe2
	.word	164                             # 0xa4
	.word	165                             # 0xa5
	.word	167                             # 0xa7
	.word	166                             # 0xa6
	.word	180                             # 0xb4
	.word	181                             # 0xb5
	.word	183                             # 0xb7
	.word	182                             # 0xb6
	.word	244                             # 0xf4
	.word	245                             # 0xf5
	.word	247                             # 0xf7
	.word	246                             # 0xf6
	.word	228                             # 0xe4
	.word	229                             # 0xe5
	.word	231                             # 0xe7
	.word	230                             # 0xe6
	.word	172                             # 0xac
	.word	173                             # 0xad
	.word	175                             # 0xaf
	.word	174                             # 0xae
	.word	188                             # 0xbc
	.word	189                             # 0xbd
	.word	191                             # 0xbf
	.word	190                             # 0xbe
	.word	252                             # 0xfc
	.word	253                             # 0xfd
	.word	255                             # 0xff
	.word	254                             # 0xfe
	.word	236                             # 0xec
	.word	237                             # 0xed
	.word	239                             # 0xef
	.word	238                             # 0xee
	.word	168                             # 0xa8
	.word	169                             # 0xa9
	.word	171                             # 0xab
	.word	170                             # 0xaa
	.word	184                             # 0xb8
	.word	185                             # 0xb9
	.word	187                             # 0xbb
	.word	186                             # 0xba
	.word	248                             # 0xf8
	.word	249                             # 0xf9
	.word	251                             # 0xfb
	.word	250                             # 0xfa
	.word	232                             # 0xe8
	.word	233                             # 0xe9
	.word	235                             # 0xeb
	.word	234                             # 0xea
	.word	128                             # 0x80
	.word	129                             # 0x81
	.word	131                             # 0x83
	.word	130                             # 0x82
	.word	144                             # 0x90
	.word	145                             # 0x91
	.word	147                             # 0x93
	.word	146                             # 0x92
	.word	208                             # 0xd0
	.word	209                             # 0xd1
	.word	211                             # 0xd3
	.word	210                             # 0xd2
	.word	192                             # 0xc0
	.word	193                             # 0xc1
	.word	195                             # 0xc3
	.word	194                             # 0xc2
	.word	132                             # 0x84
	.word	133                             # 0x85
	.word	135                             # 0x87
	.word	134                             # 0x86
	.word	148                             # 0x94
	.word	149                             # 0x95
	.word	151                             # 0x97
	.word	150                             # 0x96
	.word	212                             # 0xd4
	.word	213                             # 0xd5
	.word	215                             # 0xd7
	.word	214                             # 0xd6
	.word	196                             # 0xc4
	.word	197                             # 0xc5
	.word	199                             # 0xc7
	.word	198                             # 0xc6
	.word	140                             # 0x8c
	.word	141                             # 0x8d
	.word	143                             # 0x8f
	.word	142                             # 0x8e
	.word	156                             # 0x9c
	.word	157                             # 0x9d
	.word	159                             # 0x9f
	.word	158                             # 0x9e
	.word	220                             # 0xdc
	.word	221                             # 0xdd
	.word	223                             # 0xdf
	.word	222                             # 0xde
	.word	204                             # 0xcc
	.word	205                             # 0xcd
	.word	207                             # 0xcf
	.word	206                             # 0xce
	.word	136                             # 0x88
	.word	137                             # 0x89
	.word	139                             # 0x8b
	.word	138                             # 0x8a
	.word	152                             # 0x98
	.word	153                             # 0x99
	.word	155                             # 0x9b
	.word	154                             # 0x9a
	.word	216                             # 0xd8
	.word	217                             # 0xd9
	.word	219                             # 0xdb
	.word	218                             # 0xda
	.word	200                             # 0xc8
	.word	201                             # 0xc9
	.word	203                             # 0xcb
	.word	202                             # 0xca
	.size	mapindex, 1024

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"  "
	.size	.L.str.1, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
