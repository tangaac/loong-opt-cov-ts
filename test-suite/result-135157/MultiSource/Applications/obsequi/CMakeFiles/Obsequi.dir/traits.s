	.file	"traits.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function write_node_info
.LCPI0_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
.LCPI0_1:
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.text
	.globl	write_node_info
	.p2align	5
	.type	write_node_info,@function
write_node_info:                        # @write_node_info
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
	pcalau12i	$s2, %pc_hi20(trait_file)
	ld.d	$s0, $s2, %pc_lo12(trait_file)
	move	$fp, $a1
	bnez	$s0, .LBB0_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	st.d	$s0, $s2, %pc_lo12(trait_file)
	beqz	$s0, .LBB0_51
.LBB0_2:
	addi.d	$a1, $fp, -1
	sltui	$s1, $a1, 1
	pcaddu18i	$ra, %call36(u64bit_to_string)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a0, $zero, 72
	masknez	$a0, $a0, $s1
	ori	$a1, $zero, 86
	maskeqz	$a1, $a1, $s1
	or	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(g_board_size)
	ld.d	$s4, $a0, %got_pc_lo12(g_board_size)
	slli.d	$a0, $fp, 2
	ldx.w	$a0, $s4, $a0
	ori	$s1, $zero, 1
	slli.d	$s3, $fp, 7
	blt	$a0, $s1, .LBB0_5
# %bb.3:                                # %.lr.ph.preheader.i
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	add.d	$a2, $a1, $s3
	ldx.w	$a5, $a1, $s3
	ld.w	$a4, $a2, 4
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB0_6
# %bb.4:
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB0_10
.LBB0_5:
	move	$a2, $zero
	b	.LBB0_12
.LBB0_6:                                # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a3, $a2, 3
	vinsgr2vr.w	$vr0, $a4, 0
	vreplvei.w	$vr0, $vr0, 0
	vinsgr2vr.w	$vr1, $a5, 0
	vreplvei.w	$vr8, $vr1, 0
	add.d	$a2, $s3, $a1
	addi.d	$a2, $a2, 24
	vrepli.b	$vr1, 0
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	vld	$vr2, $a4, %pc_lo12(.LCPI0_0)
	pcalau12i	$a4, %pc_hi20(.LCPI0_1)
	vld	$vr3, $a4, %pc_lo12(.LCPI0_1)
	vrepli.b	$vr4, -1
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	lu12i.w	$a5, 15
	ori	$a5, $a5, 4095
	vreplgr2vr.w	$vr5, $a5
	move	$a5, $a3
	vori.b	$vr6, $vr1, 0
	vori.b	$vr7, $vr1, 0
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr9, $a2, -16
	vori.b	$vr10, $vr0, 0
	vld	$vr0, $a2, 0
	vori.b	$vr11, $vr2, 0
	vshuf.w	$vr11, $vr9, $vr10
	vori.b	$vr10, $vr2, 0
	vshuf.w	$vr10, $vr11, $vr8
	vori.b	$vr8, $vr2, 0
	vshuf.w	$vr8, $vr0, $vr9
	vori.b	$vr12, $vr3, 0
	vshuf.w	$vr12, $vr0, $vr9
	vand.v	$vr9, $vr9, $vr10
	vand.v	$vr10, $vr0, $vr12
	vxor.v	$vr12, $vr11, $vr4
	vxor.v	$vr13, $vr8, $vr4
	vsrli.w	$vr14, $vr9, 1
	vsrli.w	$vr15, $vr10, 1
	vand.v	$vr9, $vr14, $vr9
	vand.v	$vr10, $vr15, $vr10
	vsrli.w	$vr12, $vr12, 1
	vsrli.w	$vr13, $vr13, 1
	vnor.v	$vr9, $vr9, $vr11
	vnor.v	$vr10, $vr10, $vr8
	vand.v	$vr9, $vr12, $vr9
	vand.v	$vr10, $vr13, $vr10
	vand.v	$vr11, $vr9, $vr5
	vand.v	$vr12, $vr10, $vr5
	vilvh.w	$vr13, $vr1, $vr11
	vilvl.w	$vr11, $vr1, $vr11
	vilvh.w	$vr14, $vr1, $vr12
	vilvl.w	$vr12, $vr1, $vr12
	vpickve2gr.d	$a6, $vr11, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr11, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr13, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr13, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr12, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr12, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr14, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr14, 1
	slli.d	$t5, $t5, 2
	ldx.w	$a6, $a4, $a6
	ldx.w	$a7, $a4, $a7
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	vinsgr2vr.w	$vr11, $a6, 0
	vinsgr2vr.w	$vr11, $a7, 1
	vinsgr2vr.w	$vr11, $t0, 2
	vinsgr2vr.w	$vr11, $t1, 3
	ldx.w	$a6, $a4, $t2
	ldx.w	$a7, $a4, $t3
	ldx.w	$t0, $a4, $t4
	ldx.w	$t1, $a4, $t5
	vinsgr2vr.w	$vr12, $a6, 0
	vinsgr2vr.w	$vr12, $a7, 1
	vinsgr2vr.w	$vr12, $t0, 2
	vinsgr2vr.w	$vr12, $t1, 3
	vsrli.w	$vr9, $vr9, 16
	vsrli.w	$vr10, $vr10, 16
	vilvh.w	$vr13, $vr1, $vr9
	vilvl.w	$vr9, $vr1, $vr9
	vilvh.w	$vr14, $vr1, $vr10
	vilvl.w	$vr10, $vr1, $vr10
	vpickve2gr.d	$a6, $vr9, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr9, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr13, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr13, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr10, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr10, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr14, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr14, 1
	slli.d	$t5, $t5, 2
	ldx.w	$a6, $a4, $a6
	ldx.w	$a7, $a4, $a7
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	vinsgr2vr.w	$vr9, $a6, 0
	vinsgr2vr.w	$vr9, $a7, 1
	vinsgr2vr.w	$vr9, $t0, 2
	vinsgr2vr.w	$vr9, $t1, 3
	ldx.w	$a6, $a4, $t2
	ldx.w	$a7, $a4, $t3
	ldx.w	$t0, $a4, $t4
	ldx.w	$t1, $a4, $t5
	vinsgr2vr.w	$vr10, $a6, 0
	vinsgr2vr.w	$vr10, $a7, 1
	vinsgr2vr.w	$vr10, $t0, 2
	vinsgr2vr.w	$vr10, $t1, 3
	vadd.w	$vr6, $vr11, $vr6
	vadd.w	$vr7, $vr12, $vr7
	vadd.w	$vr6, $vr6, $vr9
	vadd.w	$vr7, $vr7, $vr10
	addi.d	$a5, $a5, -8
	addi.d	$a2, $a2, 32
	bnez	$a5, .LBB0_7
# %bb.8:                                # %middle.block
	vadd.w	$vr1, $vr7, $vr6
	vshuf4i.w	$vr2, $vr1, 14
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a2, $vr1, 0
	beq	$a3, $a0, .LBB0_12
# %bb.9:
	vpickve2gr.w	$a4, $vr0, 3
	vpickve2gr.w	$a5, $vr0, 2
.LBB0_10:                               # %.lr.ph.i.preheader
	sub.d	$a0, $a0, $a3
	alsl.d	$a3, $a3, $s3, 2
	add.d	$a3, $a3, $a1
	pcalau12i	$a1, %got_pc_hi20(countbits16)
	ld.d	$a1, $a1, %got_pc_lo12(countbits16)
	addi.d	$a3, $a3, 8
	lu12i.w	$a6, 31
	ori	$a6, $a6, 4092
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a7, $a4
	ld.w	$a4, $a3, 0
	and	$a5, $a4, $a5
	nor	$t0, $a7, $zero
	bstrpick.d	$t1, $a5, 31, 1
	and	$a5, $t1, $a5
	bstrpick.d	$t0, $t0, 31, 1
	or	$a5, $a5, $a7
	andn	$a5, $t0, $a5
	bstrpick.d	$t0, $a5, 15, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a1, $t0
	srli.d	$a5, $a5, 14
	and	$a5, $a5, $a6
	ldx.w	$a5, $a1, $a5
	add.d	$a2, $t0, $a2
	add.w	$a2, $a2, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	move	$a5, $a7
	bnez	$a0, .LBB0_11
.LBB0_12:                               # %tr_total_non_safe_moves.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	xori	$s0, $fp, 1
	slli.d	$a0, $s0, 2
	ldx.w	$a0, $s4, $a0
	blt	$a0, $s1, .LBB0_15
# %bb.13:                               # %.lr.ph.preheader.i20
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	slli.d	$a3, $s0, 7
	add.d	$a2, $a1, $a3
	ldx.w	$a6, $a1, $a3
	ld.w	$a5, $a2, 4
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB0_16
# %bb.14:
	move	$a4, $zero
	move	$a2, $zero
	b	.LBB0_20
.LBB0_15:
	move	$a2, $zero
	b	.LBB0_22
.LBB0_16:                               # %vector.ph76
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a4, $a2, 3
	vinsgr2vr.w	$vr0, $a5, 0
	vreplvei.w	$vr0, $vr0, 0
	vinsgr2vr.w	$vr1, $a6, 0
	vreplvei.w	$vr8, $vr1, 0
	add.d	$a2, $a3, $a1
	addi.d	$a2, $a2, 24
	vrepli.b	$vr1, 0
	pcalau12i	$a5, %pc_hi20(.LCPI0_0)
	vld	$vr2, $a5, %pc_lo12(.LCPI0_0)
	pcalau12i	$a5, %pc_hi20(.LCPI0_1)
	vld	$vr3, $a5, %pc_lo12(.LCPI0_1)
	vrepli.b	$vr4, -1
	pcalau12i	$a5, %got_pc_hi20(countbits16)
	ld.d	$a5, $a5, %got_pc_lo12(countbits16)
	lu12i.w	$a6, 15
	ori	$a6, $a6, 4095
	vreplgr2vr.w	$vr5, $a6
	move	$a6, $a4
	vori.b	$vr6, $vr1, 0
	vori.b	$vr7, $vr1, 0
	.p2align	4, , 16
.LBB0_17:                               # %vector.body79
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr9, $a2, -16
	vori.b	$vr10, $vr0, 0
	vld	$vr0, $a2, 0
	vori.b	$vr11, $vr2, 0
	vshuf.w	$vr11, $vr9, $vr10
	vori.b	$vr10, $vr2, 0
	vshuf.w	$vr10, $vr11, $vr8
	vori.b	$vr8, $vr2, 0
	vshuf.w	$vr8, $vr0, $vr9
	vori.b	$vr12, $vr3, 0
	vshuf.w	$vr12, $vr0, $vr9
	vand.v	$vr9, $vr9, $vr10
	vand.v	$vr10, $vr0, $vr12
	vxor.v	$vr12, $vr11, $vr4
	vxor.v	$vr13, $vr8, $vr4
	vsrli.w	$vr14, $vr9, 1
	vsrli.w	$vr15, $vr10, 1
	vand.v	$vr9, $vr14, $vr9
	vand.v	$vr10, $vr15, $vr10
	vsrli.w	$vr12, $vr12, 1
	vsrli.w	$vr13, $vr13, 1
	vnor.v	$vr9, $vr9, $vr11
	vnor.v	$vr10, $vr10, $vr8
	vand.v	$vr9, $vr12, $vr9
	vand.v	$vr10, $vr13, $vr10
	vand.v	$vr11, $vr9, $vr5
	vand.v	$vr12, $vr10, $vr5
	vilvh.w	$vr13, $vr1, $vr11
	vilvl.w	$vr11, $vr1, $vr11
	vilvh.w	$vr14, $vr1, $vr12
	vilvl.w	$vr12, $vr1, $vr12
	vpickve2gr.d	$a7, $vr11, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr11, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr13, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr13, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr12, 0
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr12, 1
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr14, 0
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t6, $vr14, 1
	slli.d	$t6, $t6, 2
	ldx.w	$a7, $a5, $a7
	ldx.w	$t0, $a5, $t0
	ldx.w	$t1, $a5, $t1
	ldx.w	$t2, $a5, $t2
	vinsgr2vr.w	$vr11, $a7, 0
	vinsgr2vr.w	$vr11, $t0, 1
	vinsgr2vr.w	$vr11, $t1, 2
	vinsgr2vr.w	$vr11, $t2, 3
	ldx.w	$a7, $a5, $t3
	ldx.w	$t0, $a5, $t4
	ldx.w	$t1, $a5, $t5
	ldx.w	$t2, $a5, $t6
	vinsgr2vr.w	$vr12, $a7, 0
	vinsgr2vr.w	$vr12, $t0, 1
	vinsgr2vr.w	$vr12, $t1, 2
	vinsgr2vr.w	$vr12, $t2, 3
	vsrli.w	$vr9, $vr9, 16
	vsrli.w	$vr10, $vr10, 16
	vilvh.w	$vr13, $vr1, $vr9
	vilvl.w	$vr9, $vr1, $vr9
	vilvh.w	$vr14, $vr1, $vr10
	vilvl.w	$vr10, $vr1, $vr10
	vpickve2gr.d	$a7, $vr9, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr9, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr13, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr13, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr10, 0
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr10, 1
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr14, 0
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t6, $vr14, 1
	slli.d	$t6, $t6, 2
	ldx.w	$a7, $a5, $a7
	ldx.w	$t0, $a5, $t0
	ldx.w	$t1, $a5, $t1
	ldx.w	$t2, $a5, $t2
	vinsgr2vr.w	$vr9, $a7, 0
	vinsgr2vr.w	$vr9, $t0, 1
	vinsgr2vr.w	$vr9, $t1, 2
	vinsgr2vr.w	$vr9, $t2, 3
	ldx.w	$a7, $a5, $t3
	ldx.w	$t0, $a5, $t4
	ldx.w	$t1, $a5, $t5
	ldx.w	$t2, $a5, $t6
	vinsgr2vr.w	$vr10, $a7, 0
	vinsgr2vr.w	$vr10, $t0, 1
	vinsgr2vr.w	$vr10, $t1, 2
	vinsgr2vr.w	$vr10, $t2, 3
	vadd.w	$vr6, $vr11, $vr6
	vadd.w	$vr7, $vr12, $vr7
	vadd.w	$vr6, $vr6, $vr9
	vadd.w	$vr7, $vr7, $vr10
	addi.d	$a6, $a6, -8
	addi.d	$a2, $a2, 32
	bnez	$a6, .LBB0_17
# %bb.18:                               # %middle.block90
	vadd.w	$vr1, $vr7, $vr6
	vshuf4i.w	$vr2, $vr1, 14
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a2, $vr1, 0
	beq	$a4, $a0, .LBB0_22
# %bb.19:
	vpickve2gr.w	$a5, $vr0, 3
	vpickve2gr.w	$a6, $vr0, 2
.LBB0_20:                               # %.lr.ph.i26.preheader
	sub.d	$a0, $a0, $a4
	alsl.d	$a3, $a4, $a3, 2
	add.d	$a3, $a3, $a1
	pcalau12i	$a1, %got_pc_hi20(countbits16)
	ld.d	$a1, $a1, %got_pc_lo12(countbits16)
	addi.d	$a3, $a3, 8
	lu12i.w	$a4, 31
	ori	$a4, $a4, 4092
	.p2align	4, , 16
.LBB0_21:                               # %.lr.ph.i26
                                        # =>This Inner Loop Header: Depth=1
	move	$a7, $a5
	ld.w	$a5, $a3, 0
	and	$a6, $a5, $a6
	nor	$t0, $a7, $zero
	bstrpick.d	$t1, $a6, 31, 1
	and	$a6, $t1, $a6
	bstrpick.d	$t0, $t0, 31, 1
	or	$a6, $a6, $a7
	andn	$a6, $t0, $a6
	bstrpick.d	$t0, $a6, 15, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a1, $t0
	srli.d	$a6, $a6, 14
	and	$a6, $a6, $a4
	ldx.w	$a6, $a1, $a6
	add.d	$a2, $t0, $a2
	add.w	$a2, $a2, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	move	$a6, $a7
	bnez	$a0, .LBB0_21
.LBB0_22:                               # %tr_total_non_safe_moves.exit31
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	alsl.d	$s5, $fp, $s4, 2
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s1, $a1, %pc_lo12(.L.str.5)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tr_non_safe_moves_a_little_touchy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$fp, $a0, %pc_lo12(.L.str.4)
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tr_non_safe_moves_a_little_touchy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	blt	$a0, $s0, .LBB0_25
# %bb.23:                               # %.lr.ph.preheader.i32
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB0_26
# %bb.24:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_29
.LBB0_25:
	move	$a2, $zero
	b	.LBB0_31
.LBB0_26:                               # %vector.ph101
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	addi.d	$a2, $a1, 20
	bstrpick.d	$a1, $a0, 30, 3
	slli.d	$a1, $a1, 3
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	pcalau12i	$a3, %got_pc_hi20(countbits16)
	ld.d	$a3, $a3, %got_pc_lo12(countbits16)
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4095
	vreplgr2vr.w	$vr2, $a4
	move	$a4, $a1
	vori.b	$vr3, $vr0, 0
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB0_27:                               # %vector.body104
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr5, $a2, -16
	vld	$vr6, $a2, 0
	vxor.v	$vr5, $vr5, $vr1
	vxor.v	$vr6, $vr6, $vr1
	vand.v	$vr7, $vr5, $vr2
	vand.v	$vr8, $vr6, $vr2
	vilvh.w	$vr9, $vr0, $vr7
	vilvl.w	$vr7, $vr0, $vr7
	vilvh.w	$vr10, $vr0, $vr8
	vilvl.w	$vr8, $vr0, $vr8
	vpickve2gr.d	$a5, $vr7, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr7, 1
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr9, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr9, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr8, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr8, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr10, 0
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr10, 1
	slli.d	$t4, $t4, 2
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	vinsgr2vr.w	$vr7, $a5, 0
	vinsgr2vr.w	$vr7, $a6, 1
	vinsgr2vr.w	$vr7, $a7, 2
	vinsgr2vr.w	$vr7, $t0, 3
	ldx.w	$a5, $a3, $t1
	ldx.w	$a6, $a3, $t2
	ldx.w	$a7, $a3, $t3
	ldx.w	$t0, $a3, $t4
	vinsgr2vr.w	$vr8, $a5, 0
	vinsgr2vr.w	$vr8, $a6, 1
	vinsgr2vr.w	$vr8, $a7, 2
	vinsgr2vr.w	$vr8, $t0, 3
	vsrli.w	$vr5, $vr5, 16
	vsrli.w	$vr6, $vr6, 16
	vilvh.w	$vr9, $vr0, $vr5
	vilvl.w	$vr5, $vr0, $vr5
	vilvh.w	$vr10, $vr0, $vr6
	vilvl.w	$vr6, $vr0, $vr6
	vpickve2gr.d	$a5, $vr5, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr5, 1
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr9, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr9, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr6, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr6, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr10, 0
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr10, 1
	slli.d	$t4, $t4, 2
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	ldx.w	$a5, $a3, $t1
	ldx.w	$a6, $a3, $t2
	ldx.w	$a7, $a3, $t3
	ldx.w	$t0, $a3, $t4
	vinsgr2vr.w	$vr6, $a5, 0
	vinsgr2vr.w	$vr6, $a6, 1
	vinsgr2vr.w	$vr6, $a7, 2
	vinsgr2vr.w	$vr6, $t0, 3
	vadd.w	$vr3, $vr7, $vr3
	vadd.w	$vr4, $vr8, $vr4
	vadd.w	$vr3, $vr3, $vr5
	vadd.w	$vr4, $vr4, $vr6
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB0_27
# %bb.28:                               # %middle.block111
	vadd.w	$vr0, $vr4, $vr3
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a1, $a0, .LBB0_31
.LBB0_29:                               # %.lr.ph.i34.preheader
	pcalau12i	$a3, %got_pc_hi20(g_board)
	ld.d	$a3, $a3, %got_pc_lo12(g_board)
	sub.d	$a0, $a0, $a1
	alsl.d	$a3, $a1, $a3, 2
	pcalau12i	$a1, %got_pc_hi20(countbits16)
	ld.d	$a1, $a1, %got_pc_lo12(countbits16)
	addi.d	$a3, $a3, 4
	lu12i.w	$a4, -16
	lu32i.d	$a4, 0
	.p2align	4, , 16
.LBB0_30:                               # %.lr.ph.i34
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	andn	$a6, $a4, $a5
	nor	$a5, $a5, $zero
	bstrpick.d	$a5, $a5, 15, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	srli.d	$a6, $a6, 14
	ldx.w	$a6, $a1, $a6
	add.d	$a2, $a5, $a2
	add.w	$a2, $a2, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB0_30
.LBB0_31:                               # %tr_total_empty_squares.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 0
	bltz	$a2, .LBB0_34
# %bb.32:                               # %.lr.ph.preheader.i38
	pcalau12i	$a0, %got_pc_hi20(g_board)
	ld.d	$a0, $a0, %got_pc_lo12(g_board)
	ldx.w	$a4, $a0, $s3
	addi.d	$a1, $a2, 1
	ori	$a3, $zero, 7
	bstrpick.d	$a1, $a1, 31, 0
	bgeu	$a2, $a3, .LBB0_35
# %bb.33:
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB0_39
.LBB0_34:
	move	$a2, $zero
	b	.LBB0_41
.LBB0_35:                               # %vector.ph118
	bstrpick.d	$a2, $a1, 31, 3
	slli.d	$a3, $a2, 3
	vinsgr2vr.w	$vr0, $a4, 0
	vreplvei.w	$vr0, $vr0, 0
	add.d	$a2, $s3, $a0
	addi.d	$a2, $a2, 20
	vrepli.b	$vr1, 0
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	vld	$vr2, $a4, %pc_lo12(.LCPI0_0)
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	lu12i.w	$a5, 15
	ori	$a5, $a5, 4095
	vreplgr2vr.w	$vr3, $a5
	move	$a5, $a3
	vori.b	$vr4, $vr1, 0
	vori.b	$vr5, $vr1, 0
	.p2align	4, , 16
.LBB0_36:                               # %vector.body121
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr6, $vr0, 0
	vld	$vr7, $a2, -16
	vld	$vr0, $a2, 0
	vori.b	$vr8, $vr2, 0
	vshuf.w	$vr8, $vr7, $vr6
	vori.b	$vr6, $vr2, 0
	vshuf.w	$vr6, $vr0, $vr7
	vxor.v	$vr7, $vr7, $vr8
	vxor.v	$vr6, $vr0, $vr6
	vand.v	$vr8, $vr7, $vr3
	vand.v	$vr9, $vr6, $vr3
	vilvh.w	$vr10, $vr1, $vr8
	vilvl.w	$vr8, $vr1, $vr8
	vilvh.w	$vr11, $vr1, $vr9
	vilvl.w	$vr9, $vr1, $vr9
	vpickve2gr.d	$a6, $vr8, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr8, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr10, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr10, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr9, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr9, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr11, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr11, 1
	slli.d	$t5, $t5, 2
	ldx.w	$a6, $a4, $a6
	ldx.w	$a7, $a4, $a7
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	vinsgr2vr.w	$vr8, $a6, 0
	vinsgr2vr.w	$vr8, $a7, 1
	vinsgr2vr.w	$vr8, $t0, 2
	vinsgr2vr.w	$vr8, $t1, 3
	ldx.w	$a6, $a4, $t2
	ldx.w	$a7, $a4, $t3
	ldx.w	$t0, $a4, $t4
	ldx.w	$t1, $a4, $t5
	vinsgr2vr.w	$vr9, $a6, 0
	vinsgr2vr.w	$vr9, $a7, 1
	vinsgr2vr.w	$vr9, $t0, 2
	vinsgr2vr.w	$vr9, $t1, 3
	vsrli.w	$vr7, $vr7, 16
	vsrli.w	$vr6, $vr6, 16
	vilvh.w	$vr10, $vr1, $vr7
	vilvl.w	$vr7, $vr1, $vr7
	vilvh.w	$vr11, $vr1, $vr6
	vilvl.w	$vr6, $vr1, $vr6
	vpickve2gr.d	$a6, $vr7, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr7, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr10, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr10, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr6, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr6, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr11, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr11, 1
	slli.d	$t5, $t5, 2
	ldx.w	$a6, $a4, $a6
	ldx.w	$a7, $a4, $a7
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	vinsgr2vr.w	$vr6, $a6, 0
	vinsgr2vr.w	$vr6, $a7, 1
	vinsgr2vr.w	$vr6, $t0, 2
	vinsgr2vr.w	$vr6, $t1, 3
	ldx.w	$a6, $a4, $t2
	ldx.w	$a7, $a4, $t3
	ldx.w	$t0, $a4, $t4
	ldx.w	$t1, $a4, $t5
	vinsgr2vr.w	$vr7, $a6, 0
	vinsgr2vr.w	$vr7, $a7, 1
	vinsgr2vr.w	$vr7, $t0, 2
	vinsgr2vr.w	$vr7, $t1, 3
	vadd.w	$vr4, $vr8, $vr4
	vadd.w	$vr5, $vr9, $vr5
	vadd.w	$vr4, $vr4, $vr6
	vadd.w	$vr5, $vr5, $vr7
	addi.d	$a5, $a5, -8
	addi.d	$a2, $a2, 32
	bnez	$a5, .LBB0_36
# %bb.37:                               # %middle.block130
	vadd.w	$vr1, $vr5, $vr4
	vshuf4i.w	$vr2, $vr1, 14
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a2, $vr1, 0
	beq	$a3, $a1, .LBB0_41
# %bb.38:
	vpickve2gr.w	$a4, $vr0, 3
.LBB0_39:                               # %.lr.ph.i42.preheader
	sub.d	$a1, $a1, $a3
	alsl.d	$a3, $a3, $s3, 2
	add.d	$a3, $a3, $a0
	pcalau12i	$a0, %got_pc_hi20(countbits16)
	ld.d	$a0, $a0, %got_pc_lo12(countbits16)
	addi.d	$a3, $a3, 4
	lu12i.w	$a5, -16
	lu32i.d	$a5, 0
	.p2align	4, , 16
.LBB0_40:                               # %.lr.ph.i42
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	xor	$a4, $a6, $a4
	and	$a7, $a4, $a5
	bstrpick.d	$a4, $a4, 15, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	srli.d	$a7, $a7, 14
	ldx.w	$a7, $a0, $a7
	add.d	$a2, $a4, $a2
	add.w	$a2, $a2, $a7
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	move	$a4, $a6
	bnez	$a1, .LBB0_40
.LBB0_41:                               # %tr_border_length_col.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	bltz	$a1, .LBB0_44
# %bb.42:                               # %.lr.ph.preheader.i46
	addi.d	$a0, $a1, 1
	ori	$a2, $zero, 7
	bstrpick.d	$a0, $a0, 31, 0
	bgeu	$a1, $a2, .LBB0_45
# %bb.43:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_48
.LBB0_44:
	move	$a2, $zero
	b	.LBB0_50
.LBB0_45:                               # %vector.ph139
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a2, $a1, %got_pc_lo12(g_board)
	bstrpick.d	$a1, $a0, 31, 3
	slli.d	$a1, $a1, 3
	add.d	$a2, $s3, $a2
	addi.d	$a2, $a2, 20
	vrepli.b	$vr0, 0
	pcalau12i	$a3, %got_pc_hi20(countbits16)
	ld.d	$a3, $a3, %got_pc_lo12(countbits16)
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4095
	vreplgr2vr.w	$vr1, $a4
	move	$a4, $a1
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB0_46:                               # %vector.body142
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a2, -16
	vld	$vr5, $a2, 0
	vsrli.w	$vr6, $vr4, 1
	vsrli.w	$vr7, $vr5, 1
	vbitclri.w	$vr4, $vr4, 31
	vbitclri.w	$vr5, $vr5, 31
	vxor.v	$vr4, $vr6, $vr4
	vxor.v	$vr5, $vr7, $vr5
	vand.v	$vr6, $vr4, $vr1
	vand.v	$vr7, $vr5, $vr1
	vilvh.w	$vr8, $vr0, $vr6
	vilvl.w	$vr6, $vr0, $vr6
	vilvh.w	$vr9, $vr0, $vr7
	vilvl.w	$vr7, $vr0, $vr7
	vpickve2gr.d	$a5, $vr6, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr6, 1
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr8, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr8, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr7, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr7, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr9, 0
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr9, 1
	slli.d	$t4, $t4, 2
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	vinsgr2vr.w	$vr6, $a5, 0
	vinsgr2vr.w	$vr6, $a6, 1
	vinsgr2vr.w	$vr6, $a7, 2
	vinsgr2vr.w	$vr6, $t0, 3
	ldx.w	$a5, $a3, $t1
	ldx.w	$a6, $a3, $t2
	ldx.w	$a7, $a3, $t3
	ldx.w	$t0, $a3, $t4
	vinsgr2vr.w	$vr7, $a5, 0
	vinsgr2vr.w	$vr7, $a6, 1
	vinsgr2vr.w	$vr7, $a7, 2
	vinsgr2vr.w	$vr7, $t0, 3
	vsrli.w	$vr4, $vr4, 16
	vsrli.w	$vr5, $vr5, 16
	vilvh.w	$vr8, $vr0, $vr4
	vilvl.w	$vr4, $vr0, $vr4
	vilvh.w	$vr9, $vr0, $vr5
	vilvl.w	$vr5, $vr0, $vr5
	vpickve2gr.d	$a5, $vr4, 0
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr4, 1
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr8, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr8, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr5, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr5, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr9, 0
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr9, 1
	slli.d	$t4, $t4, 2
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	ldx.w	$a5, $a3, $t1
	ldx.w	$a6, $a3, $t2
	ldx.w	$a7, $a3, $t3
	ldx.w	$t0, $a3, $t4
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	vadd.w	$vr2, $vr6, $vr2
	vadd.w	$vr3, $vr7, $vr3
	vadd.w	$vr2, $vr2, $vr4
	vadd.w	$vr3, $vr3, $vr5
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	bnez	$a4, .LBB0_46
# %bb.47:                               # %middle.block149
	vadd.w	$vr0, $vr3, $vr2
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a1, $a0, .LBB0_50
.LBB0_48:                               # %.lr.ph.i48.preheader
	pcalau12i	$a3, %got_pc_hi20(g_board)
	ld.d	$a3, $a3, %got_pc_lo12(g_board)
	sub.d	$a0, $a0, $a1
	alsl.d	$a1, $a1, $s3, 2
	add.d	$a3, $a1, $a3
	pcalau12i	$a1, %got_pc_hi20(countbits16)
	ld.d	$a1, $a1, %got_pc_lo12(countbits16)
	addi.d	$a3, $a3, 4
	lu12i.w	$a4, 31
	ori	$a4, $a4, 4092
	.p2align	4, , 16
.LBB0_49:                               # %.lr.ph.i48
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a5, $a3, 0
	srli.d	$a6, $a5, 1
	bstrpick.d	$a5, $a5, 30, 0
	xor	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 15, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a1, $a6
	srli.d	$a5, $a5, 14
	and	$a5, $a5, $a4
	ldx.w	$a5, $a1, $a5
	add.d	$a2, $a6, $a2
	add.w	$a2, $a2, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB0_49
.LBB0_50:                               # %tr_border_length_row.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	ori	$a0, $zero, 10
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.LBB0_51:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s0, $s2, %pc_lo12(trait_file)
	b	.LBB0_2
.Lfunc_end0:
	.size	write_node_info, .Lfunc_end0-write_node_info
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function tr_non_safe_moves_a_little_touchy
.LCPI1_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
.LCPI1_1:
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.text
	.p2align	5
	.type	tr_non_safe_moves_a_little_touchy,@function
tr_non_safe_moves_a_little_touchy:      # @tr_non_safe_moves_a_little_touchy
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(g_board_size)
	ld.d	$a1, $a1, %got_pc_lo12(g_board_size)
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $a1, $a2
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB1_3
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a3, $a1, %got_pc_lo12(g_board)
	slli.d	$a4, $a0, 7
	add.d	$a1, $a3, $a4
	ldx.w	$a7, $a3, $a4
	ld.w	$a6, $a1, 4
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB1_4
# %bb.2:
	move	$a5, $zero
	move	$a1, $zero
	b	.LBB1_8
.LBB1_3:
	move	$a1, $zero
	b	.LBB1_11
.LBB1_4:                                # %vector.ph
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a5, $a1, 3
	vinsgr2vr.w	$vr0, $a6, 0
	vreplvei.w	$vr0, $vr0, 0
	vinsgr2vr.w	$vr1, $a7, 0
	vreplvei.w	$vr7, $vr1, 0
	add.d	$a1, $a4, $a3
	addi.d	$a1, $a1, 24
	vrepli.b	$vr1, 0
	pcalau12i	$a6, %pc_hi20(.LCPI1_0)
	vld	$vr2, $a6, %pc_lo12(.LCPI1_0)
	pcalau12i	$a6, %pc_hi20(.LCPI1_1)
	vld	$vr3, $a6, %pc_lo12(.LCPI1_1)
	pcalau12i	$a6, %got_pc_hi20(countbits16)
	ld.d	$a6, $a6, %got_pc_lo12(countbits16)
	lu12i.w	$a7, 15
	ori	$a7, $a7, 4095
	vreplgr2vr.w	$vr4, $a7
	move	$a7, $a5
	vori.b	$vr5, $vr1, 0
	vori.b	$vr6, $vr1, 0
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr8, $a1, -16
	vori.b	$vr9, $vr0, 0
	vld	$vr0, $a1, 0
	vori.b	$vr10, $vr2, 0
	vshuf.w	$vr10, $vr8, $vr9
	vori.b	$vr9, $vr2, 0
	vshuf.w	$vr9, $vr10, $vr7
	vori.b	$vr7, $vr2, 0
	vshuf.w	$vr7, $vr0, $vr8
	vori.b	$vr11, $vr3, 0
	vshuf.w	$vr11, $vr0, $vr8
	vor.v	$vr8, $vr8, $vr9
	vor.v	$vr9, $vr0, $vr11
	vsrli.w	$vr11, $vr10, 1
	vsrli.w	$vr12, $vr7, 1
	vor.v	$vr8, $vr8, $vr10
	vor.v	$vr9, $vr9, $vr7
	vslli.w	$vr13, $vr8, 1
	vslli.w	$vr14, $vr9, 1
	vslli.w	$vr10, $vr10, 2
	vslli.w	$vr15, $vr7, 2
	vor.v	$vr10, $vr11, $vr10
	vor.v	$vr11, $vr12, $vr15
	vor.v	$vr10, $vr10, $vr13
	vor.v	$vr11, $vr11, $vr14
	vnor.v	$vr8, $vr8, $vr10
	vnor.v	$vr9, $vr9, $vr11
	vand.v	$vr10, $vr8, $vr4
	vand.v	$vr11, $vr9, $vr4
	vilvh.w	$vr12, $vr1, $vr10
	vilvl.w	$vr10, $vr1, $vr10
	vilvh.w	$vr13, $vr1, $vr11
	vilvl.w	$vr11, $vr1, $vr11
	vpickve2gr.d	$t0, $vr10, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr10, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr12, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr12, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr11, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr11, 1
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t6, $vr13, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$t7, $vr13, 1
	slli.d	$t7, $t7, 2
	ldx.w	$t0, $a6, $t0
	ldx.w	$t1, $a6, $t1
	ldx.w	$t2, $a6, $t2
	ldx.w	$t3, $a6, $t3
	vinsgr2vr.w	$vr10, $t0, 0
	vinsgr2vr.w	$vr10, $t1, 1
	vinsgr2vr.w	$vr10, $t2, 2
	vinsgr2vr.w	$vr10, $t3, 3
	ldx.w	$t0, $a6, $t4
	ldx.w	$t1, $a6, $t5
	ldx.w	$t2, $a6, $t6
	ldx.w	$t3, $a6, $t7
	vinsgr2vr.w	$vr11, $t0, 0
	vinsgr2vr.w	$vr11, $t1, 1
	vinsgr2vr.w	$vr11, $t2, 2
	vinsgr2vr.w	$vr11, $t3, 3
	vsrli.w	$vr8, $vr8, 16
	vsrli.w	$vr9, $vr9, 16
	vilvh.w	$vr12, $vr1, $vr8
	vilvl.w	$vr8, $vr1, $vr8
	vilvh.w	$vr13, $vr1, $vr9
	vilvl.w	$vr9, $vr1, $vr9
	vpickve2gr.d	$t0, $vr8, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr8, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr12, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr12, 1
	slli.d	$t3, $t3, 2
	vpickve2gr.d	$t4, $vr9, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t5, $vr9, 1
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$t6, $vr13, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$t7, $vr13, 1
	slli.d	$t7, $t7, 2
	ldx.w	$t0, $a6, $t0
	ldx.w	$t1, $a6, $t1
	ldx.w	$t2, $a6, $t2
	ldx.w	$t3, $a6, $t3
	vinsgr2vr.w	$vr8, $t0, 0
	vinsgr2vr.w	$vr8, $t1, 1
	vinsgr2vr.w	$vr8, $t2, 2
	vinsgr2vr.w	$vr8, $t3, 3
	ldx.w	$t0, $a6, $t4
	ldx.w	$t1, $a6, $t5
	ldx.w	$t2, $a6, $t6
	ldx.w	$t3, $a6, $t7
	vinsgr2vr.w	$vr9, $t0, 0
	vinsgr2vr.w	$vr9, $t1, 1
	vinsgr2vr.w	$vr9, $t2, 2
	vinsgr2vr.w	$vr9, $t3, 3
	vadd.w	$vr5, $vr10, $vr5
	vadd.w	$vr6, $vr11, $vr6
	vadd.w	$vr5, $vr5, $vr8
	vadd.w	$vr6, $vr6, $vr9
	addi.d	$a7, $a7, -8
	addi.d	$a1, $a1, 32
	bnez	$a7, .LBB1_5
# %bb.6:                                # %middle.block
	vadd.w	$vr1, $vr6, $vr5
	vshuf4i.w	$vr2, $vr1, 14
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a1, $vr1, 0
	beq	$a5, $a2, .LBB1_10
# %bb.7:
	vpickve2gr.w	$a6, $vr0, 3
	vpickve2gr.w	$a7, $vr0, 2
.LBB1_8:                                # %.lr.ph.preheader37
	alsl.d	$a4, $a5, $a4, 2
	add.d	$a3, $a4, $a3
	addi.d	$a3, $a3, 8
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	sub.d	$a2, $a2, $a5
	lu12i.w	$a5, -16
	lu32i.d	$a5, 0
	.p2align	4, , 16
.LBB1_9:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$t0, $a6
	ld.w	$a6, $a3, 0
	or	$a7, $a6, $a7
	bstrpick.d	$t1, $t0, 31, 1
	or	$a7, $a7, $t0
	slli.d	$t2, $a7, 1
	slli.d	$t3, $t0, 2
	or	$t1, $t1, $t3
	or	$t1, $t1, $t2
	or	$t2, $a7, $t1
	andn	$t2, $a5, $t2
	nor	$a7, $a7, $t1
	bstrpick.d	$a7, $a7, 15, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a4, $a7
	srli.d	$t1, $t2, 14
	ldx.w	$t1, $a4, $t1
	add.d	$a1, $a7, $a1
	add.w	$a1, $a1, $t1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	move	$a7, $t0
	bnez	$a2, .LBB1_9
.LBB1_10:                               # %._crit_edge
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB1_12
.LBB1_11:                               # %._crit_edge.thread
	move	$a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_12:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(print_board)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	addi.w	$a2, $zero, -1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	tr_non_safe_moves_a_little_touchy, .Lfunc_end1-tr_non_safe_moves_a_little_touchy
                                        # -- End function
	.type	trait_file,@object              # @trait_file
	.local	trait_file
	.comm	trait_file,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"trait_file"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Couldn't open \"trait_file\".\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%c %15s :"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" %2d"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" %2d :"
	.size	.L.str.5, 7

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%d %d\n"
	.size	.L.str.7, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
