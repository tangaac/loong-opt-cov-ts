	.file	"jdphuff.c"
	.text
	.globl	jinit_phuff_decoder             # -- Begin function jinit_phuff_decoder
	.p2align	5
	.type	jinit_phuff_decoder,@function
jinit_phuff_decoder:                    # @jinit_phuff_decoder
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 96
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 576
	pcalau12i	$a1, %pc_hi20(start_pass_phuff_decoder)
	addi.d	$a1, $a1, %pc_lo12(start_pass_phuff_decoder)
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 72
	vst	$vr0, $a0, 56
	ld.d	$a2, $fp, 8
	ld.w	$a3, $fp, 48
	ld.d	$a4, $a2, 0
	st.d	$a1, $a0, 0
	slli.w	$a0, $a3, 6
	slli.d	$a2, $a0, 2
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a4, 0
	ld.w	$a1, $fp, 48
	st.d	$a0, $fp, 184
	blez	$a1, .LBB0_3
# %bb.1:                                # %.preheader.preheader
	move	$s0, $a0
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 255
	ori	$a2, $zero, 256
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	addi.w	$s1, $s1, 1
	addi.d	$s0, $s0, 256
	blt	$s1, $a0, .LBB0_2
.LBB0_3:                                # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	jinit_phuff_decoder, .Lfunc_end0-jinit_phuff_decoder
                                        # -- End function
	.p2align	5                               # -- Begin function start_pass_phuff_decoder
	.type	start_pass_phuff_decoder,@function
start_pass_phuff_decoder:               # @start_pass_phuff_decoder
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
	ld.w	$s1, $a0, 508
	ld.w	$a0, $a0, 512
	beqz	$s1, .LBB1_2
# %bb.1:
	slt	$a1, $a0, $s1
	ld.w	$a2, $fp, 416
	ori	$a3, $zero, 63
	slt	$a0, $a3, $a0
	or	$a0, $a1, $a0
	addi.d	$a1, $a2, -1
	sltu	$a1, $zero, $a1
	or	$a0, $a1, $a0
	b	.LBB1_3
.LBB1_2:
	sltu	$a0, $zero, $a0
.LBB1_3:                                # %._crit_edge160
	ld.w	$a1, $fp, 520
	ld.d	$a2, $fp, 576
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ori	$a2, $zero, 13
	blt	$a2, $a1, .LBB1_17
# %bb.4:                                # %._crit_edge160
	ld.wu	$a2, $fp, 516
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	add.d	$a2, $a2, $a3
	srli.d	$a3, $a2, 32
	addi.w	$a2, $a2, 0
	xor	$a1, $a1, $a2
	sltu	$a1, $zero, $a1
	and	$a1, $a3, $a1
	bnez	$a1, .LBB1_17
# %bb.5:                                # %._crit_edge160
	andi	$a0, $a0, 1
	bnez	$a0, .LBB1_17
# %bb.6:
	ld.w	$a0, $fp, 416
	blez	$a0, .LBB1_18
.LBB1_7:                                # %.lr.ph141
	addi.d	$s3, $fp, 424
	beqz	$s1, .LBB1_22
# %bb.8:                                # %.lr.ph141.split.preheader
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $zero
	ori	$s5, $zero, 111
	addi.w	$s0, $zero, -1
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %._crit_edge
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.w	$a0, $fp, 416
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB1_19
.LBB1_10:                               # %.lr.ph141.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s3, $a0
	ld.w	$s6, $a0, 4
	ld.d	$s2, $fp, 184
	slli.d	$s1, $s6, 8
	ldx.w	$a0, $s2, $s1
	bltz	$a0, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	ld.w	$s7, $fp, 508
	ld.w	$a0, $fp, 512
	blt	$a0, $s7, .LBB1_9
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s6, $a0, 44
	ld.d	$a1, $fp, 0
	st.w	$s5, $a0, 40
	st.w	$zero, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	ld.w	$s7, $fp, 508
	ld.w	$a0, $fp, 512
	blt	$a0, $s7, .LBB1_9
.LBB1_13:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_10 Depth=1
	addi.d	$s8, $s7, -1
	alsl.d	$a0, $s7, $s1, 2
	add.d	$s2, $s2, $a0
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_14:                               #   in Loop: Header=BB1_15 Depth=2
	ld.w	$a0, $fp, 520
	st.w	$a0, $s2, 0
	ld.w	$a0, $fp, 512
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 1
	addi.d	$s2, $s2, 4
	bge	$s8, $a0, .LBB1_9
.LBB1_15:                               # %.lr.ph
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s2, 0
	ld.w	$a1, $fp, 516
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	beq	$a1, $a0, .LBB1_14
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s6, $a0, 44
	ld.d	$a1, $fp, 0
	st.w	$s5, $a0, 40
	st.w	$s7, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	b	.LBB1_14
.LBB1_17:
	ld.d	$a0, $fp, 0
	st.w	$s1, $a0, 44
	ld.w	$a1, $fp, 512
	ld.d	$a2, $fp, 0
	ori	$a3, $zero, 14
	st.w	$a3, $a0, 40
	st.w	$a1, $a2, 48
	ld.w	$a0, $fp, 516
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 52
	ld.w	$a0, $fp, 520
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 56
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 416
	bgtz	$a0, .LBB1_7
.LBB1_18:
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
.LBB1_19:                               # %._crit_edge142
	ld.w	$a1, $fp, 516
	beqz	$a1, .LBB1_21
# %bb.20:
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	sltui	$a1, $s1, 1
	pcalau12i	$a2, %pc_hi20(decode_mcu_AC_refine)
	addi.d	$a2, $a2, %pc_lo12(decode_mcu_AC_refine)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(decode_mcu_DC_refine)
	addi.d	$a3, $a3, %pc_lo12(decode_mcu_DC_refine)
	b	.LBB1_25
.LBB1_21:
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	sltui	$a1, $s1, 1
	pcalau12i	$a2, %pc_hi20(decode_mcu_AC_first)
	addi.d	$a2, $a2, %pc_lo12(decode_mcu_AC_first)
	b	.LBB1_24
.LBB1_22:                               # %.lr.ph141.split.us
	ld.w	$a2, $fp, 508
	ld.w	$a1, $fp, 512
	bge	$a1, $a2, .LBB1_40
# %bb.23:                               # %._crit_edge142.thread
	ld.w	$a1, $fp, 516
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(decode_mcu_DC_refine)
	addi.d	$a2, $a2, %pc_lo12(decode_mcu_DC_refine)
.LBB1_24:                               # %.thread
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(decode_mcu_DC_first)
	addi.d	$a3, $a3, %pc_lo12(decode_mcu_DC_first)
.LBB1_25:                               # %.thread
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a2, 8
	blez	$a0, .LBB1_39
# %bb.26:                               # %.lr.ph145
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$s0, $a0, 56
	addi.d	$s3, $a0, 36
	move	$s2, $zero
	beqz	$s1, .LBB1_32
# %bb.27:                               # %.lr.ph145.split.preheader
	addi.d	$s4, $fp, 256
	ori	$s5, $zero, 424
	ori	$s6, $zero, 3
	ori	$s7, $zero, 49
	b	.LBB1_30
	.p2align	4, , 16
.LBB1_28:                               #   in Loop: Header=BB1_30 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s8, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s7, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	slli.d	$a0, $s8, 3
	ldx.d	$a1, $s4, $a0
.LBB1_29:                               #   in Loop: Header=BB1_30 Depth=1
	alsl.d	$a2, $s8, $s0, 3
	slli.d	$s1, $s8, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_make_d_derived_tbl)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s0, $s1
	st.w	$zero, $s3, 0
	ld.w	$a1, $fp, 416
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, 88
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	addi.d	$s3, $s3, 4
	bge	$s2, $a1, .LBB1_39
.LBB1_30:                               # %.lr.ph145.split
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $fp, $s5
	ld.w	$s8, $a0, 24
	bltu	$s6, $s8, .LBB1_28
# %bb.31:                               #   in Loop: Header=BB1_30 Depth=1
	slli.d	$a0, $s8, 3
	ldx.d	$a1, $s4, $a0
	bnez	$a1, .LBB1_29
	b	.LBB1_28
.LBB1_32:                               # %.lr.ph145.split.us.preheader
	addi.d	$s4, $fp, 224
	ori	$s5, $zero, 424
	ori	$s6, $zero, 3
	ori	$s7, $zero, 49
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_33:                               #   in Loop: Header=BB1_36 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s1, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s7, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	slli.d	$a0, $s1, 3
	ldx.d	$a1, $s4, $a0
.LBB1_34:                               #   in Loop: Header=BB1_36 Depth=1
	alsl.d	$a2, $s1, $s0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_make_d_derived_tbl)
	jirl	$ra, $ra, 0
.LBB1_35:                               #   in Loop: Header=BB1_36 Depth=1
	st.w	$zero, $s3, 0
	ld.w	$a0, $fp, 416
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	addi.d	$s3, $s3, 4
	bge	$s2, $a0, .LBB1_39
.LBB1_36:                               # %.lr.ph145.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 516
	bnez	$a0, .LBB1_35
# %bb.37:                               #   in Loop: Header=BB1_36 Depth=1
	ldx.d	$a0, $fp, $s5
	ld.w	$s1, $a0, 20
	bltu	$s6, $s1, .LBB1_33
# %bb.38:                               #   in Loop: Header=BB1_36 Depth=1
	slli.d	$a0, $s1, 3
	ldx.d	$a1, $s4, $a0
	bnez	$a1, .LBB1_34
	b	.LBB1_33
.LBB1_39:                               # %._crit_edge146
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$zero, $a1, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 16
	ld.w	$a0, $fp, 360
	st.w	$a0, $a1, 52
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
.LBB1_40:                               # %.lr.ph141.split.us.split.preheader
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $zero
	ori	$s5, $zero, 111
	addi.w	$s0, $zero, -1
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_41:                               # %._crit_edge.us.loopexit
                                        #   in Loop: Header=BB1_43 Depth=1
	ld.w	$a0, $fp, 416
.LBB1_42:                               # %._crit_edge.us
                                        #   in Loop: Header=BB1_43 Depth=1
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB1_19
.LBB1_43:                               # %.lr.ph141.split.us.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_46 Depth 2
	ld.w	$s6, $fp, 508
	blt	$a1, $s6, .LBB1_42
# %bb.44:                               # %.lr.ph.us.preheader
                                        #   in Loop: Header=BB1_43 Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s3, $a0
	ld.w	$s7, $a0, 4
	ld.d	$a0, $fp, 184
	addi.d	$s8, $s6, -1
	slli.d	$a1, $s7, 8
	alsl.d	$a1, $s6, $a1, 2
	add.d	$s2, $a0, $a1
	b	.LBB1_46
	.p2align	4, , 16
.LBB1_45:                               #   in Loop: Header=BB1_46 Depth=2
	ld.w	$a0, $fp, 520
	st.w	$a0, $s2, 0
	ld.w	$a1, $fp, 512
	addi.d	$s8, $s8, 1
	addi.d	$s6, $s6, 1
	addi.d	$s2, $s2, 4
	bge	$s8, $a1, .LBB1_41
.LBB1_46:                               # %.lr.ph.us
                                        #   Parent Loop BB1_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s2, 0
	ld.w	$a1, $fp, 516
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	beq	$a1, $a0, .LBB1_45
# %bb.47:                               #   in Loop: Header=BB1_46 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	st.w	$s5, $a0, 40
	st.w	$s6, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	b	.LBB1_45
.Lfunc_end1:
	.size	start_pass_phuff_decoder, .Lfunc_end1-start_pass_phuff_decoder
                                        # -- End function
	.p2align	5                               # -- Begin function decode_mcu_DC_first
	.type	decode_mcu_DC_first,@function
decode_mcu_DC_first:                    # @decode_mcu_DC_first
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 576
	ld.w	$a0, $a0, 360
	ld.w	$a2, $fp, 520
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a1
	beqz	$a0, .LBB2_7
# %bb.1:
	ld.w	$a0, $s1, 52
	bnez	$a0, .LBB2_7
# %bb.2:
	ld.w	$a0, $s1, 24
	ld.d	$a1, $fp, 568
	bstrpick.d	$a2, $a0, 62, 60
	ld.w	$a3, $a1, 172
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 3
	ld.d	$a2, $a1, 16
	add.d	$a0, $a3, $a0
	st.w	$a0, $a1, 172
	st.w	$zero, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB2_24
# %bb.3:                                # %.preheader.i
	ld.w	$a0, $fp, 416
	blez	$a0, .LBB2_6
# %bb.4:                                # %.lr.ph.i
	move	$a0, $zero
	addi.d	$a1, $s1, 36
	.p2align	4, , 16
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a2, $fp, 416
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	blt	$a0, $a2, .LBB2_5
.LBB2_6:                                # %process_restart.exit
	st.d	$zero, $s1, 28
	ld.w	$a0, $fp, 360
	st.w	$a0, $s1, 52
.LBB2_7:
	ld.d	$a0, $fp, 32
	ld.d	$a3, $a0, 0
	st.d	$fp, $sp, 88
	st.d	$a3, $sp, 48
	ld.d	$a4, $a0, 8
	addi.d	$a1, $s1, 28
	st.d	$a1, $sp, 96
	ld.w	$a2, $s1, 48
	ld.w	$a5, $fp, 524
	ld.d	$a1, $s1, 16
	vld	$vr0, $s1, 32
	st.w	$a2, $sp, 40
	ld.w	$a6, $fp, 464
	ld.w	$a2, $s1, 24
	st.d	$a4, $sp, 56
	st.w	$a5, $sp, 64
	vst	$vr0, $sp, 24
	blez	$a6, .LBB2_26
# %bb.8:                                # %.lr.ph
	move	$s4, $zero
	addi.d	$s5, $fp, 468
	addi.d	$s6, $fp, 424
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s7, $s1, 56
	addi.d	$s8, $sp, 28
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_9:                                #   in Loop: Header=BB2_11 Depth=1
	move	$a0, $zero
.LBB2_10:                               #   in Loop: Header=BB2_11 Depth=1
	slli.d	$a3, $s2, 2
	ldx.w	$a4, $s8, $a3
	add.d	$a0, $a4, $a0
	stx.w	$a0, $s8, $a3
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sll.w	$a0, $a0, $a3
	ld.w	$a3, $fp, 464
	st.h	$a0, $s3, 0
	addi.d	$s4, $s4, 1
	addi.d	$s0, $s0, 8
	addi.d	$s5, $s5, 4
	bge	$s4, $a3, .LBB2_25
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	ld.w	$s2, $s5, 0
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $s6, $a0
	ld.w	$a0, $a0, 20
	ld.d	$s3, $s0, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s1, $s7, $a0
	ori	$a0, $zero, 7
	blt	$a0, $a2, .LBB2_14
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	addi.d	$a0, $sp, 48
	move	$a3, $zero
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_24
# %bb.13:                               #   in Loop: Header=BB2_11 Depth=1
	ld.w	$a2, $sp, 80
	ld.d	$a1, $sp, 72
	ori	$a4, $zero, 1
	ori	$a0, $zero, 8
	blt	$a2, $a0, .LBB2_17
.LBB2_14:                               #   in Loop: Header=BB2_11 Depth=1
	addi.d	$a0, $a2, -8
	sra.d	$a0, $a1, $a0
	andi	$a0, $a0, 255
	alsl.d	$a3, $a0, $s1, 2
	ld.w	$a3, $a3, 360
	beqz	$a3, .LBB2_16
# %bb.15:                               #   in Loop: Header=BB2_11 Depth=1
	add.d	$a0, $s1, $a0
	ld.bu	$s1, $a0, 1384
	sub.w	$a2, $a2, $a3
	bnez	$s1, .LBB2_19
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_16:                               #   in Loop: Header=BB2_11 Depth=1
	ori	$a4, $zero, 9
.LBB2_17:                               #   in Loop: Header=BB2_11 Depth=1
	addi.d	$a0, $sp, 48
	move	$a3, $s1
	pcaddu18i	$ra, %call36(jpeg_huff_decode)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_24
# %bb.18:                               #   in Loop: Header=BB2_11 Depth=1
	move	$s1, $a0
	ld.d	$a1, $sp, 72
	ld.w	$a2, $sp, 80
	beqz	$s1, .LBB2_9
.LBB2_19:                               #   in Loop: Header=BB2_11 Depth=1
	bge	$a2, $s1, .LBB2_22
# %bb.20:                               #   in Loop: Header=BB2_11 Depth=1
	addi.d	$a0, $sp, 48
	move	$a3, $s1
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_24
# %bb.21:                               #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a1, $sp, 72
	ld.w	$a2, $sp, 80
.LBB2_22:                               #   in Loop: Header=BB2_11 Depth=1
	sub.w	$a2, $a2, $s1
	sra.d	$a0, $a1, $a2
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $s1
	andn	$a0, $a0, $a3
	addi.w	$a0, $a0, 0
	slli.d	$a3, $s1, 2
	pcalau12i	$a4, %pc_hi20(extend_test)
	addi.d	$a4, $a4, %pc_lo12(extend_test)
	ldx.w	$a4, $a4, $a3
	bge	$a0, $a4, .LBB2_10
# %bb.23:                               #   in Loop: Header=BB2_11 Depth=1
	pcalau12i	$a4, %pc_hi20(extend_offset)
	addi.d	$a4, $a4, %pc_lo12(extend_offset)
	ldx.w	$a3, $a4, $a3
	add.d	$a0, $a3, $a0
	b	.LBB2_10
.LBB2_24:
	move	$a0, $zero
	b	.LBB2_27
.LBB2_25:                               # %._crit_edge.loopexit
	ld.d	$a3, $sp, 48
	ld.d	$a0, $fp, 32
	ld.d	$a4, $sp, 56
	ld.w	$a5, $sp, 64
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
.LBB2_26:                               # %._crit_edge
	addi.d	$a6, $s1, 32
	st.d	$a3, $a0, 0
	st.d	$a4, $a0, 8
	st.w	$a5, $fp, 524
	st.d	$a1, $s1, 16
	vld	$vr0, $sp, 24
	ld.w	$a0, $sp, 40
	ld.w	$a1, $s1, 52
	st.w	$a2, $s1, 24
	vst	$vr0, $a6, 0
	st.w	$a0, $a6, 16
	addi.d	$a0, $a1, -1
	st.w	$a0, $s1, 52
	ori	$a0, $zero, 1
.LBB2_27:                               # %.critedge
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end2:
	.size	decode_mcu_DC_first, .Lfunc_end2-decode_mcu_DC_first
                                        # -- End function
	.p2align	5                               # -- Begin function decode_mcu_AC_first
	.type	decode_mcu_AC_first,@function
decode_mcu_AC_first:                    # @decode_mcu_AC_first
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
	move	$fp, $a0
	ld.d	$s2, $a0, 576
	ld.w	$s3, $a0, 512
	ld.w	$a0, $a0, 360
	ld.w	$s4, $fp, 520
	move	$s1, $a1
	beqz	$a0, .LBB3_2
# %bb.1:
	ld.w	$a0, $s2, 52
	beqz	$a0, .LBB3_4
.LBB3_2:
	ld.w	$a0, $s2, 32
	beqz	$a0, .LBB3_9
.LBB3_3:
	addi.d	$a0, $a0, -1
	b	.LBB3_12
.LBB3_4:
	ld.w	$a0, $s2, 24
	ld.d	$a1, $fp, 568
	bstrpick.d	$a2, $a0, 62, 60
	ld.w	$a3, $a1, 172
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 3
	ld.d	$a2, $a1, 16
	add.d	$a0, $a3, $a0
	st.w	$a0, $a1, 172
	st.w	$zero, $s2, 24
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB3_37
# %bb.5:                                # %.preheader.i
	ld.w	$a0, $fp, 416
	blez	$a0, .LBB3_8
# %bb.6:                                # %.lr.ph.i
	move	$a0, $zero
	addi.d	$a1, $s2, 36
	.p2align	4, , 16
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a2, $fp, 416
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	blt	$a0, $a2, .LBB3_7
.LBB3_8:                                # %process_restart.exit
	st.d	$zero, $s2, 28
	ld.w	$a0, $fp, 360
	st.w	$a0, $s2, 52
	ld.w	$a0, $s2, 32
	bnez	$a0, .LBB3_3
.LBB3_9:
	ld.d	$a0, $fp, 32
	st.d	$fp, $sp, 56
	vld	$vr0, $a0, 0
	vst	$vr0, $sp, 16
	ld.w	$a0, $fp, 524
	ld.d	$a1, $s2, 16
	ld.w	$s8, $fp, 508
	ld.w	$a2, $s2, 24
	st.w	$a0, $sp, 32
	addi.d	$a0, $s2, 28
	st.d	$a0, $sp, 64
	bge	$s3, $s8, .LBB3_14
.LBB3_10:
	move	$a0, $zero
.LBB3_11:                               # %.loopexit
	vld	$vr0, $sp, 16
	ld.d	$a3, $fp, 32
	vst	$vr0, $a3, 0
	ld.w	$a3, $sp, 32
	st.w	$a3, $fp, 524
	st.d	$a1, $s2, 16
	st.w	$a2, $s2, 24
.LBB3_12:
	ld.w	$a1, $s2, 52
	st.w	$a0, $s2, 32
	addi.d	$a0, $a1, -1
	st.w	$a0, $s2, 52
	ori	$a0, $zero, 1
.LBB3_13:                               # %.critedge
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
.LBB3_14:                               # %.lr.ph
	ld.d	$s0, $s2, 88
	ld.d	$s5, $s1, 0
	addi.d	$s6, $s0, 360
	addi.d	$a0, $s0, 1384
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_15:                               #   in Loop: Header=BB3_16 Depth=1
	add.w	$a0, $s7, $s8
	sll.w	$a3, $a3, $s4
	slli.d	$a4, $a0, 2
	pcalau12i	$a5, %got_pc_hi20(jpeg_natural_order)
	ld.d	$a5, $a5, %got_pc_lo12(jpeg_natural_order)
	ldx.w	$a4, $a5, $a4
	slli.d	$a4, $a4, 1
	stx.h	$a3, $s5, $a4
	addi.d	$s8, $a0, 1
	bge	$a0, $s3, .LBB3_10
.LBB3_16:                               # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 7
	blt	$a0, $a2, .LBB3_19
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=1
	addi.d	$a0, $sp, 16
	move	$a3, $zero
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_37
# %bb.18:                               #   in Loop: Header=BB3_16 Depth=1
	ld.w	$a2, $sp, 48
	ld.d	$a1, $sp, 40
	ori	$a4, $zero, 1
	ori	$a0, $zero, 8
	blt	$a2, $a0, .LBB3_24
.LBB3_19:                               #   in Loop: Header=BB3_16 Depth=1
	addi.d	$a0, $a2, -8
	sra.d	$a0, $a1, $a0
	andi	$a0, $a0, 255
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $s6, $a3
	beqz	$a3, .LBB3_23
# %bb.20:                               #   in Loop: Header=BB3_16 Depth=1
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ldx.bu	$a0, $a4, $a0
	sub.w	$a2, $a2, $a3
	andi	$s1, $a0, 15
	bstrpick.d	$s7, $a0, 31, 4
	bnez	$s1, .LBB3_26
.LBB3_21:                               #   in Loop: Header=BB3_16 Depth=1
	addi.w	$a3, $s7, 0
	ori	$a4, $zero, 15
	bne	$a3, $a4, .LBB3_31
# %bb.22:                               #   in Loop: Header=BB3_16 Depth=1
	addi.w	$a0, $s8, 15
	addi.d	$s8, $a0, 1
	blt	$a0, $s3, .LBB3_16
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_23:                               #   in Loop: Header=BB3_16 Depth=1
	ori	$a4, $zero, 9
.LBB3_24:                               #   in Loop: Header=BB3_16 Depth=1
	addi.d	$a0, $sp, 16
	move	$a3, $s0
	pcaddu18i	$ra, %call36(jpeg_huff_decode)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_37
# %bb.25:                               #   in Loop: Header=BB3_16 Depth=1
	ld.d	$a1, $sp, 40
	ld.w	$a2, $sp, 48
	andi	$s1, $a0, 15
	bstrpick.d	$s7, $a0, 31, 4
	beqz	$s1, .LBB3_21
.LBB3_26:                               #   in Loop: Header=BB3_16 Depth=1
	bge	$a2, $s1, .LBB3_29
# %bb.27:                               #   in Loop: Header=BB3_16 Depth=1
	addi.d	$a0, $sp, 16
	move	$a3, $s1
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_37
# %bb.28:                               #   in Loop: Header=BB3_16 Depth=1
	ld.d	$a1, $sp, 40
	ld.w	$a2, $sp, 48
.LBB3_29:                               #   in Loop: Header=BB3_16 Depth=1
	sub.w	$a2, $a2, $s1
	sra.d	$a0, $a1, $a2
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $s1
	andn	$a0, $a0, $a3
	addi.w	$a3, $a0, 0
	slli.d	$a0, $s1, 2
	pcalau12i	$a4, %pc_hi20(extend_test)
	addi.d	$a4, $a4, %pc_lo12(extend_test)
	ldx.w	$a4, $a4, $a0
	bge	$a3, $a4, .LBB3_15
# %bb.30:                               #   in Loop: Header=BB3_16 Depth=1
	pcalau12i	$a4, %pc_hi20(extend_offset)
	addi.d	$a4, $a4, %pc_lo12(extend_offset)
	ldx.w	$a0, $a4, $a0
	add.d	$a3, $a0, $a3
	b	.LBB3_15
.LBB3_31:
	ori	$a4, $zero, 1
	ori	$a5, $zero, 16
	sll.w	$s0, $a4, $s7
	bltu	$a0, $a5, .LBB3_36
# %bb.32:
	bge	$a2, $a3, .LBB3_35
# %bb.33:
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_37
# %bb.34:
	ld.d	$a1, $sp, 40
	ld.w	$a2, $sp, 48
.LBB3_35:
	sub.d	$a2, $a2, $s7
	sra.d	$a0, $a1, $a2
	addi.d	$a3, $s0, -1
	and	$a0, $a3, $a0
	add.d	$s0, $a0, $s0
.LBB3_36:
	addi.d	$a0, $s0, -1
	b	.LBB3_11
.LBB3_37:
	move	$a0, $zero
	b	.LBB3_13
.Lfunc_end3:
	.size	decode_mcu_AC_first, .Lfunc_end3-decode_mcu_AC_first
                                        # -- End function
	.p2align	5                               # -- Begin function decode_mcu_DC_refine
	.type	decode_mcu_DC_refine,@function
decode_mcu_DC_refine:                   # @decode_mcu_DC_refine
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 576
	ld.w	$a0, $a0, 360
	ld.wu	$s2, $fp, 520
	move	$s0, $a1
	beqz	$a0, .LBB4_7
# %bb.1:
	ld.w	$a0, $s1, 52
	bnez	$a0, .LBB4_7
# %bb.2:
	ld.w	$a0, $s1, 24
	ld.d	$a1, $fp, 568
	bstrpick.d	$a2, $a0, 62, 60
	ld.w	$a3, $a1, 172
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 3
	ld.d	$a2, $a1, 16
	add.d	$a0, $a3, $a0
	st.w	$a0, $a1, 172
	st.w	$zero, $s1, 24
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB4_17
# %bb.3:                                # %.preheader.i
	ld.w	$a0, $fp, 416
	blez	$a0, .LBB4_6
# %bb.4:                                # %.lr.ph.i
	move	$a0, $zero
	addi.d	$a1, $s1, 36
	.p2align	4, , 16
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a2, $fp, 416
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	blt	$a0, $a2, .LBB4_5
.LBB4_6:                                # %process_restart.exit
	st.d	$zero, $s1, 28
	ld.w	$a0, $fp, 360
	st.w	$a0, $s1, 52
.LBB4_7:
	ld.d	$a0, $fp, 32
	ld.d	$a3, $a0, 0
	ld.d	$a5, $a0, 8
	st.d	$fp, $sp, 56
	st.d	$a3, $sp, 16
	st.d	$a5, $sp, 24
	ld.w	$a4, $fp, 524
	ld.d	$a1, $s1, 16
	ld.w	$a6, $fp, 464
	ld.w	$a2, $s1, 24
	st.w	$a4, $sp, 32
	addi.d	$a7, $s1, 28
	st.d	$a7, $sp, 64
	blez	$a6, .LBB4_16
# %bb.8:                                # %.lr.ph
	move	$s3, $zero
	ori	$a0, $zero, 1
	sll.w	$s2, $a0, $s2
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_9:                                #   in Loop: Header=BB4_10 Depth=1
	ld.w	$a0, $fp, 464
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	bge	$s3, $a0, .LBB4_15
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s0, 0
	blez	$a2, .LBB4_12
# %bb.11:                               #   in Loop: Header=BB4_10 Depth=1
	addi.w	$a2, $a2, -1
	srl.d	$a0, $a1, $a2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB4_14
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_12:                               #   in Loop: Header=BB4_10 Depth=1
	addi.d	$a0, $sp, 16
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_17
# %bb.13:                               #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a1, $sp, 40
	ld.w	$a2, $sp, 48
	addi.w	$a2, $a2, -1
	srl.d	$a0, $a1, $a2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_9
.LBB4_14:                               #   in Loop: Header=BB4_10 Depth=1
	ld.h	$a0, $s4, 0
	or	$a0, $a0, $s2
	st.h	$a0, $s4, 0
	b	.LBB4_9
.LBB4_15:                               # %._crit_edge.loopexit
	ld.d	$a3, $sp, 16
	ld.d	$a0, $fp, 32
	ld.d	$a5, $sp, 24
	ld.w	$a4, $sp, 32
.LBB4_16:                               # %._crit_edge
	st.d	$a3, $a0, 0
	st.d	$a5, $a0, 8
	ld.w	$a0, $s1, 52
	st.w	$a4, $fp, 524
	st.d	$a1, $s1, 16
	st.w	$a2, $s1, 24
	addi.d	$a0, $a0, -1
	st.w	$a0, $s1, 52
	ori	$a0, $zero, 1
	b	.LBB4_18
.LBB4_17:
	move	$a0, $zero
.LBB4_18:                               # %process_restart.exit.thread
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end4:
	.size	decode_mcu_DC_refine, .Lfunc_end4-decode_mcu_DC_refine
                                        # -- End function
	.p2align	5                               # -- Begin function decode_mcu_AC_refine
	.type	decode_mcu_AC_refine,@function
decode_mcu_AC_refine:                   # @decode_mcu_AC_refine
# %bb.0:
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s2, $a0, 576
	ld.w	$s5, $a0, 512
	ld.w	$a0, $a0, 360
	ld.wu	$s1, $fp, 520
	move	$s0, $a1
	beqz	$a0, .LBB5_7
# %bb.1:
	ld.w	$a0, $s2, 52
	bnez	$a0, .LBB5_7
# %bb.2:
	ld.w	$a0, $s2, 24
	ld.d	$a1, $fp, 568
	bstrpick.d	$a2, $a0, 62, 60
	ld.w	$a3, $a1, 172
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 3
	ld.d	$a2, $a1, 16
	add.d	$a0, $a3, $a0
	st.w	$a0, $a1, 172
	st.w	$zero, $s2, 24
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB5_68
# %bb.3:                                # %.preheader.i
	ld.w	$a0, $fp, 416
	blez	$a0, .LBB5_6
# %bb.4:                                # %.lr.ph.i
	move	$a0, $zero
	addi.d	$a1, $s2, 36
	.p2align	4, , 16
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a2, $fp, 416
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	blt	$a0, $a2, .LBB5_5
.LBB5_6:                                # %process_restart.exit
	st.d	$zero, $s2, 28
	ld.w	$a0, $fp, 360
	st.w	$a0, $s2, 52
.LBB5_7:
	ori	$a0, $zero, 1
	sll.w	$s4, $a0, $s1
	addi.d	$a0, $zero, -1
	ld.d	$a1, $fp, 32
	ld.w	$a2, $fp, 524
	sll.w	$a0, $a0, $s1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 376
	vld	$vr0, $a1, 0
	st.w	$a2, $sp, 352
	ld.d	$a1, $s2, 16
	ld.w	$a2, $s2, 24
	ld.w	$s8, $s2, 32
	move	$a0, $s2
	ld.d	$s2, $s0, 0
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s7, $fp, 508
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 28
	st.d	$a0, $sp, 384
	vst	$vr0, $sp, 336
	bnez	$s8, .LBB5_41
# %bb.8:
	blt	$s5, $s7, .LBB5_41
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 88
	addi.d	$a3, $a0, 360
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1384
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(jpeg_natural_order)
	ld.d	$a0, $a0, %got_pc_lo12(jpeg_natural_order)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               #   in Loop: Header=BB5_11 Depth=1
	addi.w	$s7, $s8, 1
	bge	$s8, $s5, .LBB5_54
.LBB5_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_29 Depth 2
	ori	$a0, $zero, 7
	blt	$a0, $a2, .LBB5_14
# %bb.12:                               #   in Loop: Header=BB5_11 Depth=1
	addi.d	$a0, $sp, 336
	move	$a3, $zero
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_60
# %bb.13:                               #   in Loop: Header=BB5_11 Depth=1
	ld.w	$a2, $sp, 368
	ld.d	$a1, $sp, 360
	ori	$a4, $zero, 1
	ori	$a0, $zero, 8
	blt	$a2, $a0, .LBB5_19
.LBB5_14:                               #   in Loop: Header=BB5_11 Depth=1
	addi.d	$a0, $a2, -8
	sra.d	$a0, $a1, $a0
	andi	$a0, $a0, 255
	slli.d	$a3, $a0, 2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a3, $a4, $a3
	beqz	$a3, .LBB5_18
# %bb.15:                               #   in Loop: Header=BB5_11 Depth=1
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ldx.bu	$a0, $a4, $a0
	sub.w	$a2, $a2, $a3
	andi	$a3, $a0, 15
	bstrpick.d	$s0, $a0, 31, 4
	bnez	$a3, .LBB5_21
.LBB5_16:                               #   in Loop: Header=BB5_11 Depth=1
	addi.w	$a3, $s0, 0
	ori	$a4, $zero, 15
	bne	$a3, $a4, .LBB5_55
# %bb.17:                               #   in Loop: Header=BB5_11 Depth=1
	move	$s3, $zero
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_18:                               #   in Loop: Header=BB5_11 Depth=1
	ori	$a4, $zero, 9
.LBB5_19:                               #   in Loop: Header=BB5_11 Depth=1
	addi.d	$a0, $sp, 336
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(jpeg_huff_decode)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB5_60
# %bb.20:                               #   in Loop: Header=BB5_11 Depth=1
	ld.d	$a1, $sp, 360
	ld.w	$a2, $sp, 368
	andi	$a3, $a0, 15
	bstrpick.d	$s0, $a0, 31, 4
	beqz	$a3, .LBB5_16
.LBB5_21:                               #   in Loop: Header=BB5_11 Depth=1
	ori	$a0, $zero, 1
	beq	$a3, $a0, .LBB5_23
# %bb.22:                               #   in Loop: Header=BB5_11 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a3, 8
	ori	$a5, $zero, 114
	st.w	$a5, $a3, 40
	addi.w	$a3, $zero, -1
	move	$s1, $a1
	move	$a1, $a3
	move	$s3, $a2
	jirl	$ra, $a4, 0
	move	$a1, $s1
	move	$a2, $s3
.LBB5_23:                               #   in Loop: Header=BB5_11 Depth=1
	bgtz	$a2, .LBB5_26
# %bb.24:                               #   in Loop: Header=BB5_11 Depth=1
	addi.d	$a0, $sp, 336
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_60
# %bb.25:                               #   in Loop: Header=BB5_11 Depth=1
	ld.d	$a1, $sp, 360
	ld.w	$a2, $sp, 368
.LBB5_26:                               #   in Loop: Header=BB5_11 Depth=1
	addi.w	$a2, $a2, -1
	srl.d	$a0, $a1, $a2
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$a3, $s4, $a0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a0, $a4, $a0
	or	$s3, $a0, $a3
.LBB5_27:                               #   in Loop: Header=BB5_11 Depth=1
	slt	$a0, $s5, $s7
	move	$fp, $s5
	masknez	$a3, $s5, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a3
	addi.w	$s8, $a0, 1
	sub.d	$a0, $a0, $s7
	addi.d	$s1, $a0, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s6, $s7, $a0, 2
	b	.LBB5_29
	.p2align	4, , 16
.LBB5_28:                               #   in Loop: Header=BB5_29 Depth=2
	addi.w	$s7, $s7, 1
	addi.d	$s1, $s1, -1
	addi.d	$s6, $s6, 4
	beqz	$s1, .LBB5_39
.LBB5_29:                               #   Parent Loop BB5_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s5, $s6, 0
	slli.d	$a0, $s5, 1
	ldx.hu	$a0, $s2, $a0
	beqz	$a0, .LBB5_32
# %bb.30:                               #   in Loop: Header=BB5_29 Depth=2
	blez	$a2, .LBB5_34
# %bb.31:                               #   in Loop: Header=BB5_29 Depth=2
	addi.w	$a2, $a2, -1
	srl.d	$a0, $a1, $a2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB5_36
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_32:                               #   in Loop: Header=BB5_29 Depth=2
	addi.w	$a0, $s0, 0
	blez	$a0, .LBB5_38
# %bb.33:                               #   in Loop: Header=BB5_29 Depth=2
	addi.d	$s0, $s0, -1
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_34:                               #   in Loop: Header=BB5_29 Depth=2
	addi.d	$a0, $sp, 336
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_60
# %bb.35:                               #   in Loop: Header=BB5_29 Depth=2
	ld.d	$a1, $sp, 360
	ld.w	$a2, $sp, 368
	addi.w	$a2, $a2, -1
	srl.d	$a0, $a1, $a2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB5_28
.LBB5_36:                               #   in Loop: Header=BB5_29 Depth=2
	alsl.d	$a0, $s5, $s2, 1
	ld.h	$a3, $a0, 0
	and	$a4, $s4, $a3
	bnez	$a4, .LBB5_28
# %bb.37:                               # %.sink.split
                                        #   in Loop: Header=BB5_29 Depth=2
	slti	$a4, $a3, 0
	masknez	$a5, $s4, $a4
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	add.d	$a3, $a3, $a4
	st.h	$a3, $a0, 0
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_38:                               #   in Loop: Header=BB5_11 Depth=1
	move	$s8, $s7
.LBB5_39:                               # %.split.loop.exit319
                                        #   in Loop: Header=BB5_11 Depth=1
	move	$s5, $fp
	beqz	$s3, .LBB5_10
# %bb.40:                               #   in Loop: Header=BB5_11 Depth=1
	slli.d	$a0, $s8, 2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a0, $a3, $a0
	slli.d	$a3, $a0, 1
	stx.h	$s3, $s2, $a3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a3, $a4, 2
	addi.w	$a4, $a4, 1
	addi.d	$a5, $sp, 80
	stx.w	$a0, $a3, $a5
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	b	.LBB5_10
.LBB5_41:                               # %.loopexit213
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	move	$a0, $zero
	beqz	$s8, .LBB5_44
.LBB5_42:                               # %.preheader
	bge	$s5, $s7, .LBB5_45
.LBB5_43:                               # %._crit_edge
	addi.d	$a0, $s8, -1
.LBB5_44:                               # %.loopexit213.thread296
	vld	$vr0, $sp, 336
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a4, 32
	vst	$vr0, $a3, 0
	ld.w	$a3, $sp, 352
	st.w	$a3, $a4, 524
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a3, $a4, 52
	st.d	$a1, $a4, 16
	st.w	$a2, $a4, 24
	st.w	$a0, $a4, 32
	addi.d	$a0, $a3, -1
	st.w	$a0, $a4, 52
	ori	$a0, $zero, 1
	b	.LBB5_69
.LBB5_45:                               # %.lr.ph245
	pcalau12i	$a0, %got_pc_hi20(jpeg_natural_order)
	ld.d	$a0, $a0, %got_pc_lo12(jpeg_natural_order)
	alsl.d	$s0, $s7, $a0, 2
	sub.d	$a0, $s5, $s7
	addi.d	$s1, $a0, 1
	b	.LBB5_47
	.p2align	4, , 16
.LBB5_46:                               #   in Loop: Header=BB5_47 Depth=1
	addi.w	$s1, $s1, -1
	addi.d	$s0, $s0, 4
	beqz	$s1, .LBB5_43
.LBB5_47:                               # =>This Inner Loop Header: Depth=1
	ld.w	$s3, $s0, 0
	slli.d	$a0, $s3, 1
	ldx.hu	$a0, $s2, $a0
	beqz	$a0, .LBB5_46
# %bb.48:                               #   in Loop: Header=BB5_47 Depth=1
	blez	$a2, .LBB5_50
# %bb.49:                               #   in Loop: Header=BB5_47 Depth=1
	addi.w	$a2, $a2, -1
	srl.d	$a0, $a1, $a2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB5_52
	b	.LBB5_46
	.p2align	4, , 16
.LBB5_50:                               #   in Loop: Header=BB5_47 Depth=1
	addi.d	$a0, $sp, 336
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_60
# %bb.51:                               #   in Loop: Header=BB5_47 Depth=1
	ld.d	$a1, $sp, 360
	ld.w	$a2, $sp, 368
	addi.w	$a2, $a2, -1
	srl.d	$a0, $a1, $a2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB5_46
.LBB5_52:                               #   in Loop: Header=BB5_47 Depth=1
	alsl.d	$a0, $s3, $s2, 1
	ld.h	$a3, $a0, 0
	and	$a4, $s4, $a3
	bnez	$a4, .LBB5_46
# %bb.53:                               # %.sink.split324
                                        #   in Loop: Header=BB5_47 Depth=1
	slti	$a4, $a3, 0
	masknez	$a5, $s4, $a4
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	add.d	$a3, $a3, $a4
	st.h	$a3, $a0, 0
	b	.LBB5_46
.LBB5_54:
	move	$a0, $zero
	b	.LBB5_44
.LBB5_55:
	ori	$a4, $zero, 1
	ori	$a5, $zero, 16
	sll.w	$s8, $a4, $s0
	bltu	$a0, $a5, .LBB5_42
# %bb.56:
	bge	$a2, $a3, .LBB5_59
# %bb.57:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_60
# %bb.58:
	ld.d	$a1, $sp, 360
	ld.w	$a2, $sp, 368
.LBB5_59:
	sub.w	$a2, $a2, $s0
	sra.d	$a0, $a1, $a2
	addi.d	$a3, $s8, -1
	and	$a0, $a3, $a0
	add.d	$s8, $a0, $s8
	b	.LBB5_42
.LBB5_60:                               # %.loopexit
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	blez	$a7, .LBB5_68
# %bb.61:                               # %.lr.ph250.preheader
	ori	$a0, $zero, 1
	bne	$a7, $a0, .LBB5_63
# %bb.62:
	move	$a1, $a7
	b	.LBB5_66
.LBB5_63:                               # %vector.ph
	bstrpick.d	$a1, $a7, 30, 1
	slli.d	$a2, $a1, 1
	andi	$a1, $a7, 1
	addi.d	$a3, $sp, 80
	alsl.d	$a3, $a7, $a3, 2
	addi.d	$a3, $a3, -4
	move	$a4, $a2
	.p2align	4, , 16
.LBB5_64:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a3, -4
	slli.d	$a5, $a5, 1
	slli.d	$a6, $a6, 1
	stx.h	$zero, $s2, $a5
	stx.h	$zero, $s2, $a6
	addi.d	$a4, $a4, -2
	addi.d	$a3, $a3, -8
	bnez	$a4, .LBB5_64
# %bb.65:                               # %middle.block
	beq	$a2, $a7, .LBB5_68
.LBB5_66:                               # %.lr.ph250.preheader350
	addi.d	$a2, $a1, 1
	addi.d	$a3, $sp, 80
	alsl.d	$a1, $a1, $a3, 2
	addi.d	$a1, $a1, -4
	.p2align	4, , 16
.LBB5_67:                               # %.lr.ph250
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	slli.d	$a3, $a3, 1
	stx.h	$zero, $s2, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	bltu	$a0, $a2, .LBB5_67
.LBB5_68:
	move	$a0, $zero
.LBB5_69:                               # %process_restart.exit.thread
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.Lfunc_end5:
	.size	decode_mcu_AC_refine, .Lfunc_end5-decode_mcu_AC_refine
                                        # -- End function
	.type	extend_test,@object             # @extend_test
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
extend_test:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	64                              # 0x40
	.word	128                             # 0x80
	.word	256                             # 0x100
	.word	512                             # 0x200
	.word	1024                            # 0x400
	.word	2048                            # 0x800
	.word	4096                            # 0x1000
	.word	8192                            # 0x2000
	.word	16384                           # 0x4000
	.size	extend_test, 64

	.type	extend_offset,@object           # @extend_offset
	.p2align	2, 0x0
extend_offset:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967293                      # 0xfffffffd
	.word	4294967289                      # 0xfffffff9
	.word	4294967281                      # 0xfffffff1
	.word	4294967265                      # 0xffffffe1
	.word	4294967233                      # 0xffffffc1
	.word	4294967169                      # 0xffffff81
	.word	4294967041                      # 0xffffff01
	.word	4294966785                      # 0xfffffe01
	.word	4294966273                      # 0xfffffc01
	.word	4294965249                      # 0xfffff801
	.word	4294963201                      # 0xfffff001
	.word	4294959105                      # 0xffffe001
	.word	4294950913                      # 0xffffc001
	.word	4294934529                      # 0xffff8001
	.size	extend_offset, 64

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_pass_phuff_decoder
	.addrsig_sym decode_mcu_DC_first
	.addrsig_sym decode_mcu_AC_first
	.addrsig_sym decode_mcu_DC_refine
	.addrsig_sym decode_mcu_AC_refine
