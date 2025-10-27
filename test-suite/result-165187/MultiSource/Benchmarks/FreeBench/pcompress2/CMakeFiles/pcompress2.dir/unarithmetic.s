	.file	"unarithmetic.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function do_deari
.LCPI0_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI0_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI0_3:
	.dword	0                               # 0x0
	.dword	65535                           # 0xffff
.LCPI0_4:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.text
	.globl	do_deari
	.p2align	5
	.type	do_deari,@function
do_deari:                               # @do_deari
# %bb.0:                                # %vector.ph
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
	bstrpick.d	$t4, $a0, 31, 0
	pcalau12i	$a1, %pc_hi20(in_size)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(in_size)
	pcalau12i	$a0, %pc_hi20(in_pos)
	st.w	$zero, $a0, %pc_lo12(in_pos)
	pcalau12i	$a1, %pc_hi20(deari_pos)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.w	$zero, $a1, %pc_lo12(deari_pos)
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	lu12i.w	$a1, 12320
	ori	$a1, $a1, 256
	vreplgr2vr.w	$vr2, $a1
	pcalau12i	$a1, %pc_hi20(char_to_index)
	addi.d	$fp, $a1, %pc_lo12(char_to_index)
	pcalau12i	$a1, %pc_hi20(index_to_char)
	addi.d	$s0, $a1, %pc_lo12(index_to_char)
	move	$a1, $zero
	ori	$a2, $zero, 1024
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.bu	$vr3, $vr2, 4
	vaddi.du	$vr4, $vr0, 1
	vaddi.du	$vr5, $vr1, 1
	vpickve2gr.d	$a3, $vr5, 0
	add.d	$a4, $fp, $a1
	vpickev.w	$vr4, $vr4, $vr5
	vpickev.w	$vr5, $vr0, $vr1
	vaddi.wu	$vr5, $vr5, 5
	vstx	$vr4, $fp, $a1
	vst	$vr5, $a4, 16
	add.d	$a3, $s0, $a3
	vstelm.w	$vr2, $a3, 0, 0
	vstelm.w	$vr3, $a3, 4, 0
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a1, $a1, 32
	vaddi.bu	$vr2, $vr2, 8
	bne	$a1, $a2, .LBB0_1
# %bb.2:                                # %vector.body86.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_2)
	pcalau12i	$a1, %pc_hi20(freq)
	addi.d	$a5, $a1, %pc_lo12(freq)
	vrepli.w	$vr1, 1
	pcalau12i	$a1, %pc_hi20(cum_freq)
	addi.d	$a6, $a1, %pc_lo12(cum_freq)
	move	$a1, $zero
	vrepli.w	$vr2, 257
	vrepli.w	$vr3, 253
	ori	$a2, $zero, 1024
	.p2align	4, , 16
.LBB0_3:                                # %vector.body86
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a5, $a1
	vstx	$vr1, $a5, $a1
	vst	$vr1, $a3, 16
	add.d	$a3, $a6, $a1
	vsub.w	$vr4, $vr2, $vr0
	vsub.w	$vr5, $vr3, $vr0
	vstx	$vr4, $a6, $a1
	vst	$vr5, $a3, 16
	addi.d	$a1, $a1, 32
	vaddi.wu	$vr0, $vr0, 8
	bne	$a1, $a2, .LBB0_3
# %bb.4:                                # %.preheader.i
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1
	st.d	$a2, $a5, 1024
	st.d	$a1, $a6, 1024
	st.w	$zero, $a5, 0
	pcalau12i	$a7, %pc_hi20(bits_to_go)
	pcalau12i	$t0, %pc_hi20(buffer)
	ld.w	$t2, $t0, %pc_lo12(buffer)
	st.w	$zero, $a7, %pc_lo12(bits_to_go)
	pcalau12i	$t1, %pc_hi20(garbage_bits)
	st.w	$zero, $t1, %pc_lo12(garbage_bits)
	pcalau12i	$a1, %got_pc_hi20(in)
	ld.d	$a1, $a1, %got_pc_lo12(in)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	move	$t3, $zero
	move	$t7, $zero
	move	$t5, $zero
	move	$t6, $zero
	ori	$a2, $zero, 16
	ori	$a3, $zero, 14
	b	.LBB0_7
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	addi.d	$a4, $t5, 1
	st.w	$a4, $a0, %pc_lo12(in_pos)
	ldx.bu	$t2, $a1, $t5
	ori	$t7, $zero, 8
	move	$t5, $a4
	.p2align	4, , 16
.LBB0_6:                                # %input_bit.exit.i
                                        #   in Loop: Header=BB0_7 Depth=1
	slli.d	$a4, $t3, 1
	addi.w	$t3, $t2, 0
	andi	$t2, $t2, 1
	srai.d	$t8, $t3, 1
	st.w	$t8, $t0, %pc_lo12(buffer)
	addi.w	$t7, $t7, -1
	st.w	$t7, $a7, %pc_lo12(bits_to_go)
	addi.w	$a2, $a2, -1
	or	$t3, $a4, $t2
	move	$t2, $t8
	beqz	$a2, .LBB0_11
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	bnez	$t7, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	bltu	$t5, $t4, .LBB0_5
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	addi.w	$a4, $t6, 1
	st.w	$a4, $t1, %pc_lo12(garbage_bits)
	bge	$t6, $a3, .LBB0_42
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	ori	$t7, $zero, 8
	move	$t6, $a4
	b	.LBB0_6
.LBB0_11:                               # %start_decoding.exit.preheader
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_3)
	ori	$t5, $zero, 0
	lu32i.d	$t5, 1
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_4)
	lu12i.w	$t6, 8
	lu12i.w	$t8, -8
	lu12i.w	$a1, 7
	ori	$fp, $a1, 4095
	lu12i.w	$s6, -4
	lu12i.w	$s1, 4
	ori	$s2, $zero, 2
	lu12i.w	$a1, 3
	ori	$a1, $a1, 4095
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_12:                               # %start_decoding.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_40 Depth 2
	move	$s7, $zero
	move	$s5, $zero
	move	$t4, $zero
	vpickve2gr.d	$a3, $vr1, 0
	vpickve2gr.d	$a1, $vr1, 1
	sub.d	$a2, $a1, $a3
	ld.w	$a1, $a6, 0
	addi.d	$a2, $a2, 1
	sub.d	$a3, $t3, $a3
	addi.d	$a3, $a3, 1
	mul.d	$a3, $a3, $a1
	addi.d	$a3, $a3, -1
	div.d	$a3, $a3, $a2
	addi.w	$a3, $a3, 0
	ori	$s4, $zero, 1
	addi.d	$t2, $a6, 4
	.p2align	4, , 16
.LBB0_13:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s8, $s5
	move	$ra, $s4
	ld.w	$s3, $t2, 0
	add.d	$t4, $t4, $t5
	addi.d	$s5, $s5, 1
	addi.d	$s7, $s7, 1
	addi.d	$t2, $t2, 4
	addi.w	$s4, $s4, 1
	blt	$a3, $s3, .LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a3, $t2, -8
	vreplvei.d	$vr1, $vr1, 0
	vinsgr2vr.w	$vr2, $s3, 0
	vinsgr2vr.w	$vr2, $a3, 2
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vreplgr2vr.d	$vr3, $a2
	vmul.d	$vr2, $vr3, $vr2
	vreplgr2vr.d	$vr3, $a1
	ld.w	$a2, $a7, %pc_lo12(bits_to_go)
	ld.wu	$t2, $a0, %pc_lo12(in_pos)
	ld.w	$s4, $t1, %pc_lo12(garbage_bits)
	ld.w	$a3, $t0, %pc_lo12(buffer)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.wu	$s3, $a1, %pc_lo12(in_size)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	vdiv.d	$vr2, $vr2, $vr3
	vadd.d	$vr1, $vr1, $vr2
	vadd.d	$vr1, $vr1, $vr0
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_15:                               # %.sink.split.i
                                        #   in Loop: Header=BB0_18 Depth=2
	add.d	$t3, $s0, $t3
	vreplgr2vr.d	$vr2, $s0
	vadd.d	$vr1, $vr2, $vr1
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	beqz	$a2, .LBB0_22
.LBB0_17:                               # %input_bit.exit.i14
                                        #   in Loop: Header=BB0_18 Depth=2
	vpickve2gr.d	$a4, $vr1, 0
	slli.d	$a4, $a4, 1
	vpickve2gr.d	$t7, $vr1, 1
	slli.d	$t7, $t7, 1
	addi.d	$t7, $t7, 1
	slli.d	$t3, $t3, 1
	addi.w	$s0, $a3, 0
	andi	$a3, $a3, 1
	srai.d	$s0, $s0, 1
	st.w	$s0, $t0, %pc_lo12(buffer)
	addi.w	$a2, $a2, -1
	st.w	$a2, $a7, %pc_lo12(bits_to_go)
	or	$t3, $t3, $a3
	vinsgr2vr.d	$vr1, $a4, 0
	vinsgr2vr.d	$vr1, $t7, 1
	move	$a3, $s0
.LBB0_18:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpickve2gr.d	$a4, $vr1, 1
	blt	$a4, $t6, .LBB0_16
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=2
	vpickve2gr.d	$t7, $vr1, 0
	move	$s0, $t8
	blt	$fp, $t7, .LBB0_15
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=2
	blt	$t7, $s1, .LBB0_26
# %bb.21:                               #   in Loop: Header=BB0_18 Depth=2
	srli.d	$a4, $a4, 14
	move	$s0, $s6
	bgeu	$s2, $a4, .LBB0_15
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_22:                               #   in Loop: Header=BB0_18 Depth=2
	bgeu	$t2, $s3, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_18 Depth=2
	addi.d	$a4, $t2, 1
	st.w	$a4, $a0, %pc_lo12(in_pos)
	ldx.bu	$a3, $a1, $t2
	ori	$a2, $zero, 8
	move	$t2, $a4
	b	.LBB0_17
.LBB0_24:                               #   in Loop: Header=BB0_18 Depth=2
	addi.w	$a4, $s4, 1
	st.w	$a4, $t1, %pc_lo12(garbage_bits)
	ori	$a2, $zero, 14
	bge	$s4, $a2, .LBB0_42
# %bb.25:                               #   in Loop: Header=BB0_18 Depth=2
	ori	$a2, $zero, 8
	move	$s4, $a4
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_26:                               # %decode_symbol.exit
                                        #   in Loop: Header=BB0_12 Depth=1
	ori	$a1, $zero, 257
	beq	$s5, $a1, .LBB0_41
# %bb.27:                               #   in Loop: Header=BB0_12 Depth=1
	srai.d	$a2, $t4, 32
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a2
	pcalau12i	$a3, %got_pc_hi20(deari)
	ld.d	$a3, $a3, %got_pc_lo12(deari)
	ld.d	$t4, $sp, 24                    # 8-byte Folded Reload
	ld.wu	$a4, $t4, %pc_lo12(deari_pos)
	ld.d	$a3, $a3, 0
	addi.d	$t2, $a4, 1
	st.w	$t2, $t4, %pc_lo12(deari_pos)
	stx.b	$a1, $a3, $a4
	ld.w	$a3, $a6, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	bne	$a3, $a4, .LBB0_30
# %bb.28:                               # %.preheader.i15.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	move	$a3, $zero
	ori	$t2, $zero, 1028
	.p2align	4, , 16
.LBB0_29:                               # %.preheader.i15
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a4, $a5, $t2
	addi.d	$a4, $a4, 1
	bstrpick.d	$t4, $a4, 31, 31
	add.w	$a4, $a4, $t4
	srai.d	$a4, $a4, 1
	stx.w	$a4, $a5, $t2
	stx.w	$a3, $a6, $t2
	addi.d	$t2, $t2, -4
	addi.w	$t4, $zero, -4
	add.d	$a3, $a4, $a3
	bne	$t2, $t4, .LBB0_29
.LBB0_30:                               # %.loopexit.i.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	addi.d	$a3, $zero, -2
	sub.d	$a3, $a3, $s8
	addi.d	$t4, $ra, 1
	alsl.d	$s3, $ra, $a5, 2
	.p2align	4, , 16
.LBB0_31:                               # %.loopexit.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t2, $ra
	ld.w	$s4, $s3, 0
	ld.w	$a4, $s3, -4
	addi.d	$s3, $s3, -4
	addi.w	$a3, $a3, 1
	addi.d	$t4, $t4, -1
	addi.w	$ra, $ra, -1
	beq	$s4, $a4, .LBB0_31
# %bb.32:                               #   in Loop: Header=BB0_12 Depth=1
	bge	$t4, $s5, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_12 Depth=1
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ldx.bu	$a4, $s0, $t4
	sub.d	$t7, $zero, $a3
	stx.b	$a1, $s0, $t4
	stx.b	$a4, $s0, $a2
	slli.d	$a2, $a4, 2
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	stx.w	$s7, $a4, $a2
	slli.d	$a1, $a1, 2
	stx.w	$t7, $a4, $a1
.LBB0_34:                               #   in Loop: Header=BB0_12 Depth=1
	addi.d	$a1, $s4, 1
	st.w	$a1, $s3, 4
	blez	$t4, .LBB0_12
# %bb.35:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB0_12 Depth=1
	sub.w	$a1, $zero, $a3
	bstrpick.d	$a1, $a1, 31, 0
	sltu	$a3, $zero, $a3
	sub.d	$a2, $a1, $a3
	addi.d	$a2, $a2, 1
	ori	$a4, $zero, 4
	bltu	$a2, $a4, .LBB0_39
# %bb.36:                               # %vector.ph94
                                        #   in Loop: Header=BB0_12 Depth=1
	sub.d	$a4, $zero, $a3
	addi.w	$t4, $zero, -4
	and	$a3, $a2, $t4
	sub.d	$a1, $a1, $a3
	bstrpick.d	$t7, $t2, 31, 0
	alsl.d	$t2, $t7, $a6, 2
	addi.d	$t2, $t2, -16
	add.d	$a4, $a4, $t7
	addi.d	$a4, $a4, 1
	and	$t4, $a4, $t4
	.p2align	4, , 16
.LBB0_37:                               # %vector.body95
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t2, 0
	vaddi.wu	$vr2, $vr2, 1
	vst	$vr2, $t2, 0
	addi.d	$t4, $t4, -4
	addi.d	$t2, $t2, -16
	bnez	$t4, .LBB0_37
# %bb.38:                               # %middle.block99
                                        #   in Loop: Header=BB0_12 Depth=1
	beq	$a2, $a3, .LBB0_12
.LBB0_39:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	addi.d	$a2, $a1, 1
	alsl.d	$a1, $a1, $a6, 2
	addi.d	$a1, $a1, -4
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB0_40:                               # %.lr.ph.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	addi.d	$a3, $a3, 1
	st.w	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	bltu	$a4, $a2, .LBB0_40
	b	.LBB0_12
.LBB0_41:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(deari_pos)
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
.LBB0_42:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	do_deari, .Lfunc_end0-do_deari
                                        # -- End function
	.type	in_size,@object                 # @in_size
	.bss
	.globl	in_size
	.p2align	2, 0x0
in_size:
	.word	0                               # 0x0
	.size	in_size, 4

	.type	in_pos,@object                  # @in_pos
	.globl	in_pos
	.p2align	2, 0x0
in_pos:
	.word	0                               # 0x0
	.size	in_pos, 4

	.type	deari_pos,@object               # @deari_pos
	.globl	deari_pos
	.p2align	2, 0x0
deari_pos:
	.word	0                               # 0x0
	.size	deari_pos, 4

	.type	cum_freq,@object                # @cum_freq
	.globl	cum_freq
	.p2align	2, 0x0
cum_freq:
	.space	1032
	.size	cum_freq, 1032

	.type	index_to_char,@object           # @index_to_char
	.globl	index_to_char
index_to_char:
	.space	258
	.size	index_to_char, 258

	.type	char_to_index,@object           # @char_to_index
	.globl	char_to_index
	.p2align	2, 0x0
char_to_index:
	.space	1024
	.size	char_to_index, 1024

	.type	freq,@object                    # @freq
	.globl	freq
	.p2align	2, 0x0
freq:
	.space	1032
	.size	freq, 1032

	.type	buffer,@object                  # @buffer
	.globl	buffer
	.p2align	2, 0x0
buffer:
	.word	0                               # 0x0
	.size	buffer, 4

	.type	bits_to_go,@object              # @bits_to_go
	.globl	bits_to_go
	.p2align	2, 0x0
bits_to_go:
	.word	0                               # 0x0
	.size	bits_to_go, 4

	.type	garbage_bits,@object            # @garbage_bits
	.globl	garbage_bits
	.p2align	2, 0x0
garbage_bits:
	.word	0                               # 0x0
	.size	garbage_bits, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Bad input file\n"
	.size	.L.str, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
