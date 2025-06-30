	.file	"takehiro.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function count_bits
.LCPI0_0:
	.dword	0x40c0070000000000              # double 8206
	.text
	.globl	count_bits
	.p2align	5
	.type	count_bits,@function
count_bits:                             # @count_bits
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a3
	ld.wu	$a3, $a3, 12
	pcalau12i	$a4, %got_pc_hi20(ipow20)
	ld.d	$a4, $a4, %got_pc_lo12(ipow20)
	slli.d	$a3, $a3, 3
	fldx.d	$fa0, $a4, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI0_0)
	move	$s0, $a1
	move	$a1, $a0
	st.w	$zero, $sp, 8
	fdiv.d	$fa0, $fa1, $fa0
	lu12i.w	$a0, -2
	ori	$a3, $a0, 3584
	lu12i.w	$a0, 1
	ori	$a4, $a0, 512
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1696
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a2, $a3
	fldx.d	$fa1, $a5, $a4
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_30
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a3, $a3, 8
	bnez	$a3, .LBB0_1
# %bb.3:
	ld.w	$a0, $a1, 260
	beqz	$a0, .LBB0_6
# %bb.4:
	move	$a0, $a2
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(quantize_xrpow)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_7
.LBB0_5:
	addi.d	$s1, $s0, 144
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table_short)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 32
	addi.d	$a0, $s0, 2047
	addi.d	$a1, $a0, 257
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table_short)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.w	$a0, $sp, 8
	st.w	$a1, $fp, 36
	ori	$a1, $zero, 288
	b	.LBB0_29
.LBB0_6:
	move	$a0, $a2
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(quantize_xrpow_ISO)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ori	$a0, $zero, 2
	beq	$a1, $a0, .LBB0_5
.LBB0_7:
	addi.d	$a2, $s0, 2047
	addi.d	$a2, $a2, 253
	ori	$a5, $zero, 574
	ori	$a3, $zero, 578
	.p2align	4, , 16
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	beq	$a3, $a0, .LBB0_14
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a6, $a2, -4
	or	$a4, $a6, $a4
	addi.w	$a5, $a5, -2
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, -8
	beqz	$a4, .LBB0_8
# %bb.10:
	addi.w	$a2, $a5, 4
	ori	$a0, $zero, 4
	st.w	$a2, $fp, 8
	blt	$a3, $a0, .LBB0_15
# %bb.11:                               # %.lr.ph.i
	pcalau12i	$a0, %got_pc_hi20(ht)
	ld.d	$a4, $a0, %got_pc_lo12(ht)
	move	$a0, $zero
	move	$a3, $zero
	ld.d	$a4, $a4, 784
	bstrpick.d	$a5, $a5, 31, 0
	alsl.d	$a5, $a5, $s0, 2
	ori	$a6, $zero, 1
	ori	$a7, $zero, 7
	move	$s2, $a2
	.p2align	4, , 16
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	alsl.d	$t0, $s2, $s0, 2
	ld.w	$t2, $t0, -4
	ld.w	$t3, $t0, -8
	ld.w	$t1, $t0, -12
	ld.w	$t0, $a5, 0
	or	$t4, $t3, $t2
	or	$t4, $t4, $t1
	or	$t4, $t4, $t0
	bltu	$a6, $t4, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	add.d	$a3, $t2, $a3
	sltu	$t3, $zero, $t3
	ori	$t4, $t2, 2
	masknez	$t2, $t2, $t3
	maskeqz	$t4, $t4, $t3
	or	$t2, $t4, $t2
	sltu	$t1, $zero, $t1
	addi.w	$t4, $t2, 4
	masknez	$t2, $t2, $t1
	maskeqz	$t4, $t4, $t1
	or	$t2, $t4, $t2
	sltui	$t4, $t0, 1
	addi.w	$t5, $t2, 8
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $t5, $t4
	addi.w	$s2, $s2, -4
	or	$t2, $t2, $t4
	ldx.bu	$t2, $a4, $t2
	add.d	$a3, $a3, $t3
	add.d	$a3, $a3, $t0
	add.d	$a3, $a3, $t1
	add.w	$a0, $a0, $t2
	addi.w	$t0, $s2, 4
	addi.d	$a5, $a5, -16
	bltu	$a7, $t0, .LBB0_12
	b	.LBB0_16
.LBB0_14:                               # %.thread130.i
	move	$a2, $zero
	move	$a3, $zero
	move	$s2, $zero
	move	$a0, $zero
	st.w	$zero, $fp, 8
	b	.LBB0_16
.LBB0_15:
	move	$a3, $zero
	move	$a0, $zero
	move	$s2, $a2
.LBB0_16:                               # %.thread.i
	sub.w	$a4, $a2, $s2
	slt	$a5, $a0, $a4
	xori	$a6, $a5, 1
	masknez	$a4, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	st.w	$a0, $sp, 12
	st.w	$a6, $fp, 72
	st.w	$a0, $fp, 88
	st.w	$s2, $fp, 4
	beqz	$s2, .LBB0_19
# %bb.17:
	pcalau12i	$a0, %got_pc_hi20(scalefac_band)
	ld.d	$a0, $a0, %got_pc_lo12(scalefac_band)
	beqz	$a1, .LBB0_20
# %bb.18:
	ld.w	$a0, $a0, 32
	ori	$a1, $zero, 7
	lu32i.d	$a1, 13
	st.d	$a1, $fp, 56
	slt	$a1, $a0, $s2
	masknez	$a2, $s2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
	b	.LBB0_27
.LBB0_19:
	move	$a3, $zero
	b	.LBB0_28
.LBB0_20:                               # %.preheader.i.preheader
	pcalau12i	$a1, %pc_hi20(subdv_table+4)
	addi.d	$a2, $a1, %pc_lo12(subdv_table+4)
	addi.d	$a1, $a0, 4
	.p2align	4, , 16
.LBB0_21:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 4
	blt	$a3, $s2, .LBB0_21
# %bb.22:
	ld.w	$a4, $a2, -4
	addi.d	$a3, $a4, 3
	addi.d	$a1, $a4, 2
	alsl.d	$a4, $a4, $a0, 2
	addi.d	$a4, $a4, 4
	.p2align	4, , 16
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, -4
	blt	$s2, $a5, .LBB0_23
# %bb.24:
	ld.w	$a4, $a2, 0
	addi.d	$a2, $a3, -2
	st.w	$a2, $fp, 56
	addi.d	$a2, $a4, 1
	add.w	$a3, $a4, $a3
	.p2align	4, , 16
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a3, 31, 0
	slli.d	$a5, $a4, 2
	ldx.w	$a5, $a0, $a5
	addi.d	$a2, $a2, -1
	addi.w	$a3, $a3, -1
	blt	$s2, $a5, .LBB0_25
# %bb.26:
	alsl.d	$a3, $a4, $a0, 2
	st.w	$a2, $fp, 60
	bstrpick.d	$a1, $a1, 31, 0
	ld.w	$s3, $a3, 0
	slli.d	$a1, $a1, 2
	ldx.w	$s1, $a0, $a1
	alsl.d	$a0, $s3, $s0, 2
	alsl.d	$a1, $s2, $s0, 2
	addi.d	$a2, $sp, 12
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 40
	move	$s2, $s3
.LBB0_27:
	alsl.d	$s1, $s1, $s0, 2
	addi.d	$a2, $sp, 12
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 32
	alsl.d	$a1, $s2, $s0, 2
	addi.d	$a2, $sp, 12
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 12
	ld.w	$a2, $fp, 8
	ld.w	$a3, $fp, 4
	move	$a1, $a0
	move	$a0, $a4
	st.w	$a1, $fp, 36
.LBB0_28:                               # %count_bits_long.exit
	sub.d	$a1, $a2, $a3
	bstrpick.d	$a1, $a1, 31, 2
	st.w	$a1, $fp, 8
	bstrpick.d	$a1, $a3, 31, 1
.LBB0_29:                               # %.loopexit
	st.w	$a1, $fp, 4
.LBB0_30:                               # %.loopexit
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	count_bits, .Lfunc_end0-count_bits
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function choose_table_short
.LCPI1_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.p2align	5
	.type	choose_table_short,@function
choose_table_short:                     # @choose_table_short
# %bb.0:
	bgeu	$a0, $a1, .LBB1_3
# %bb.1:                                # %iter.check
	addi.d	$sp, $sp, -144
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a3, $a0, 8
	sltu	$a4, $a3, $a1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a1, $a4
	or	$a3, $a4, $a3
	nor	$a4, $a0, $zero
	add.d	$a4, $a3, $a4
	ori	$a3, $zero, 24
	bgeu	$a4, $a3, .LBB1_4
# %bb.2:
	move	$a7, $zero
	move	$a5, $a0
	b	.LBB1_14
.LBB1_3:
	addi.w	$a0, $zero, 0
	ret
.LBB1_4:                                # %vector.main.loop.iter.check
	srli.d	$a3, $a4, 3
	ori	$a5, $zero, 120
	addi.d	$a3, $a3, 1
	bgeu	$a4, $a5, .LBB1_6
# %bb.5:
	move	$a4, $zero
	move	$a7, $zero
	b	.LBB1_10
.LBB1_6:                                # %vector.ph
	bstrpick.d	$a4, $a3, 61, 4
	slli.d	$a4, $a4, 4
	xvrepli.b	$xr0, 0
	addi.d	$a5, $a0, 64
	move	$a6, $a4
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB1_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, -64
	ld.w	$t0, $a5, -56
	ld.w	$t1, $a5, -48
	ld.w	$t2, $a5, -40
	ld.w	$t3, $a5, -32
	ld.w	$t4, $a5, -24
	ld.w	$t5, $a5, -16
	ld.w	$t6, $a5, -8
	xvinsgr2vr.w	$xr2, $a7, 0
	xvinsgr2vr.w	$xr2, $t0, 1
	xvinsgr2vr.w	$xr2, $t1, 2
	xvinsgr2vr.w	$xr2, $t2, 3
	xvinsgr2vr.w	$xr2, $t3, 4
	xvinsgr2vr.w	$xr2, $t4, 5
	xvinsgr2vr.w	$xr2, $t5, 6
	xvinsgr2vr.w	$xr2, $t6, 7
	ld.w	$a7, $a5, 0
	ld.w	$t0, $a5, 8
	ld.w	$t1, $a5, 16
	ld.w	$t2, $a5, 24
	ld.w	$t3, $a5, 32
	ld.w	$t4, $a5, 40
	ld.w	$t5, $a5, 48
	ld.w	$t6, $a5, 56
	xvinsgr2vr.w	$xr3, $a7, 0
	xvinsgr2vr.w	$xr3, $t0, 1
	xvinsgr2vr.w	$xr3, $t1, 2
	xvinsgr2vr.w	$xr3, $t2, 3
	xvinsgr2vr.w	$xr3, $t3, 4
	xvinsgr2vr.w	$xr3, $t4, 5
	xvinsgr2vr.w	$xr3, $t5, 6
	xvinsgr2vr.w	$xr3, $t6, 7
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	ld.w	$a7, $a5, -60
	ld.w	$t0, $a5, -52
	ld.w	$t1, $a5, -44
	ld.w	$t2, $a5, -36
	ld.w	$t3, $a5, -28
	ld.w	$t4, $a5, -20
	ld.w	$t5, $a5, -12
	ld.w	$t6, $a5, -4
	xvinsgr2vr.w	$xr2, $a7, 0
	xvinsgr2vr.w	$xr2, $t0, 1
	xvinsgr2vr.w	$xr2, $t1, 2
	xvinsgr2vr.w	$xr2, $t2, 3
	xvinsgr2vr.w	$xr2, $t3, 4
	xvinsgr2vr.w	$xr2, $t4, 5
	xvinsgr2vr.w	$xr2, $t5, 6
	xvinsgr2vr.w	$xr2, $t6, 7
	ld.w	$a7, $a5, 4
	ld.w	$t0, $a5, 12
	ld.w	$t1, $a5, 20
	ld.w	$t2, $a5, 28
	ld.w	$t3, $a5, 36
	ld.w	$t4, $a5, 44
	ld.w	$t5, $a5, 52
	ld.w	$t6, $a5, 60
	xvinsgr2vr.w	$xr3, $a7, 0
	xvinsgr2vr.w	$xr3, $t0, 1
	xvinsgr2vr.w	$xr3, $t1, 2
	xvinsgr2vr.w	$xr3, $t2, 3
	xvinsgr2vr.w	$xr3, $t3, 4
	xvinsgr2vr.w	$xr3, $t4, 5
	xvinsgr2vr.w	$xr3, $t5, 6
	xvinsgr2vr.w	$xr3, $t6, 7
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 128
	bnez	$a6, .LBB1_7
# %bb.8:                                # %middle.block
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a7, $xr0, 0
	beq	$a3, $a4, .LBB1_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a5, $a3, 12
	beqz	$a5, .LBB1_13
.LBB1_10:                               # %vec.epilog.ph
	bstrpick.d	$a5, $a3, 61, 2
	slli.d	$a6, $a5, 2
	slli.d	$a5, $a5, 5
	add.d	$a5, $a0, $a5
	vreplgr2vr.w	$vr0, $a7
	sub.d	$a7, $a4, $a6
	alsl.d	$a4, $a4, $a0, 3
	addi.d	$a4, $a4, 16
	.p2align	4, , 16
.LBB1_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a4, -16
	ld.w	$t1, $a4, -8
	ld.w	$t2, $a4, 0
	ld.w	$t3, $a4, 8
	vinsgr2vr.w	$vr1, $t0, 0
	vinsgr2vr.w	$vr1, $t1, 1
	vinsgr2vr.w	$vr1, $t2, 2
	vinsgr2vr.w	$vr1, $t3, 3
	vmax.w	$vr0, $vr0, $vr1
	ld.w	$t0, $a4, -12
	ld.w	$t1, $a4, -4
	ld.w	$t2, $a4, 4
	ld.w	$t3, $a4, 12
	vinsgr2vr.w	$vr1, $t0, 0
	vinsgr2vr.w	$vr1, $t1, 1
	vinsgr2vr.w	$vr1, $t2, 2
	vinsgr2vr.w	$vr1, $t3, 3
	vmax.w	$vr0, $vr0, $vr1
	addi.d	$a7, $a7, 4
	addi.d	$a4, $a4, 32
	bnez	$a7, .LBB1_11
# %bb.12:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a7, $vr0, 0
	bne	$a3, $a6, .LBB1_14
	b	.LBB1_15
.LBB1_13:
	alsl.d	$a5, $a4, $a0, 3
	.p2align	4, , 16
.LBB1_14:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a5, 0
	slt	$a4, $a3, $a7
	masknez	$a3, $a3, $a4
	ld.w	$a6, $a5, 4
	maskeqz	$a4, $a7, $a4
	or	$a3, $a4, $a3
	addi.d	$a4, $a5, 8
	slt	$a5, $a6, $a3
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a6, $a5
	or	$a7, $a3, $a5
	move	$a5, $a4
	bltu	$a4, $a1, .LBB1_14
.LBB1_15:                               # %ix_max.exit
	lu12i.w	$a3, 2
	ori	$a3, $a3, 14
	bgeu	$a3, $a7, .LBB1_17
# %bb.16:
	addi.d	$a5, $zero, -1
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1696
	b	.LBB1_67
.LBB1_17:
	ori	$a3, $zero, 15
	bltu	$a3, $a7, .LBB1_37
# %bb.18:
	beqz	$a7, .LBB1_69
# %bb.19:
	pcalau12i	$a3, %pc_hi20(huf_tbl_noESC)
	addi.d	$a3, $a3, %pc_lo12(huf_tbl_noESC)
	alsl.d	$a3, $a7, $a3, 2
	ld.wu	$a5, $a3, -4
	pcalau12i	$a3, %got_pc_hi20(ht)
	ld.d	$a7, $a3, %got_pc_lo12(ht)
	move	$a6, $zero
	move	$t2, $zero
	slli.d	$a3, $a5, 4
	alsl.d	$a3, $a5, $a3, 3
	add.d	$a3, $a7, $a3
	ld.d	$t0, $a3, 16
	addi.w	$a3, $a5, 0
	pcalau12i	$a4, %pc_hi20(cb_esc_buf)
	addi.d	$a4, $a4, %pc_lo12(cb_esc_buf)
	move	$t1, $a0
	.p2align	4, , 16
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t1, 0
	ld.w	$t4, $t1, 12
	sltu	$t5, $zero, $t3
	sltu	$t6, $zero, $t4
	alsl.w	$t7, $t3, $t4, 4
	alsl.d	$t3, $t3, $t4, 4
	add.d	$a6, $a6, $t6
	st.w	$t3, $a4, 0
	ldx.bu	$t3, $t0, $t7
	ld.w	$t4, $t1, 4
	ld.w	$t6, $t1, 16
	add.d	$a6, $a6, $t5
	add.d	$t2, $t2, $t3
	sltu	$t3, $zero, $t4
	sltu	$t5, $zero, $t6
	alsl.w	$t7, $t4, $t6, 4
	alsl.d	$t4, $t4, $t6, 4
	add.d	$a6, $a6, $t5
	st.w	$t4, $a4, 4
	ldx.bu	$t4, $t0, $t7
	ld.w	$t5, $t1, 8
	ld.w	$t6, $t1, 20
	add.d	$a6, $a6, $t3
	add.d	$t2, $t2, $t4
	sltu	$t3, $zero, $t5
	sltu	$t4, $zero, $t6
	alsl.w	$t7, $t5, $t6, 4
	alsl.d	$t5, $t5, $t6, 4
	add.d	$a6, $a6, $t4
	st.w	$t5, $a4, 8
	ldx.bu	$t4, $t0, $t7
	add.d	$a6, $a6, $t3
	addi.d	$a4, $a4, 12
	addi.d	$t1, $t1, 24
	add.d	$t2, $t2, $t4
	bltu	$t1, $a1, .LBB1_20
# %bb.21:                               # %count_bit_short_noESC.exit
	pcalau12i	$t0, %pc_hi20(cb_esc_end)
	st.d	$a4, $t0, %pc_lo12(cb_esc_end)
	addi.d	$t0, $a3, -2
	ori	$t1, $zero, 11
	add.w	$a3, $t2, $a6
	bltu	$t1, $t0, .LBB1_36
# %bb.22:                               # %count_bit_short_noESC.exit
	slli.d	$t0, $t0, 2
	pcalau12i	$t1, %pc_hi20(.LJTI1_0)
	addi.d	$t1, $t1, %pc_lo12(.LJTI1_0)
	ldx.w	$t0, $t1, $t0
	add.d	$t1, $t1, $t0
	move	$t0, $a5
	jr	$t1
.LBB1_23:
	addi.w	$t0, $a5, 1
	ori	$t1, $zero, 24
	mul.d	$t1, $t0, $t1
	add.d	$t1, $a7, $t1
	ld.d	$t1, $t1, 16
	addi.d	$t2, $a0, 24
	sltu	$t3, $t2, $a1
	masknez	$t2, $t2, $t3
	maskeqz	$t3, $a1, $t3
	or	$t2, $t3, $t2
	addi.d	$t2, $t2, -24
	xor	$t3, $t2, $a0
	sltu	$t3, $zero, $t3
	add.d	$t4, $a0, $t3
	sub.d	$t2, $t2, $t4
	lu12i.w	$t4, -349526
	ori	$t4, $t4, 2731
	lu32i.d	$t4, -349526
	lu52i.d	$t4, $t4, -1366
	mulh.du	$t2, $t2, $t4
	srli.d	$t2, $t2, 4
	add.d	$t2, $t2, $t3
	alsl.d	$t2, $t2, $t2, 1
	slli.d	$t3, $t2, 2
	pcalau12i	$t2, %pc_hi20(cb_esc_buf)
	addi.d	$t2, $t2, %pc_lo12(cb_esc_buf)
	add.d	$t3, $t2, $t3
	addi.d	$t3, $t3, 12
	addi.d	$t4, $t2, 4
	sltu	$t5, $t4, $t3
	maskeqz	$t3, $t3, $t5
	masknez	$t4, $t4, $t5
	or	$t3, $t3, $t4
	nor	$t4, $t2, $zero
	add.d	$t3, $t3, $t4
	ori	$t4, $zero, 28
	move	$t5, $a6
	bltu	$t3, $t4, .LBB1_27
# %bb.24:                               # %vector.ph174
	srli.d	$t2, $t3, 2
	addi.d	$t3, $t2, 1
	bstrpick.d	$t2, $t3, 62, 3
	slli.d	$t4, $t2, 3
	slli.d	$t2, $t2, 5
	pcalau12i	$t5, %pc_hi20(cb_esc_buf)
	addi.d	$t5, $t5, %pc_lo12(cb_esc_buf)
	pcalau12i	$t6, %pc_hi20(.LCPI1_0)
	vld	$vr0, $t6, %pc_lo12(.LCPI1_0)
	add.d	$t2, $t5, $t2
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	vrepli.b	$vr1, 0
	addi.d	$t5, $t5, 16
	move	$t6, $t4
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB1_25:                               # %vector.body177
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t5, -16
	vld	$vr4, $t5, 0
	vpickve2gr.w	$t7, $vr3, 3
	vpickve2gr.w	$t8, $vr3, 2
	vpickve2gr.w	$fp, $vr3, 1
	vpickve2gr.w	$s0, $vr3, 0
	vpickve2gr.w	$s1, $vr4, 3
	vpickve2gr.w	$s2, $vr4, 2
	vpickve2gr.w	$s3, $vr4, 1
	vpickve2gr.w	$s4, $vr4, 0
	ldx.b	$t7, $t1, $t7
	ldx.b	$t8, $t1, $t8
	ldx.b	$fp, $t1, $fp
	ldx.b	$s0, $t1, $s0
	st.b	$t7, $sp, 51
	st.b	$t8, $sp, 50
	st.b	$fp, $sp, 49
	st.b	$s0, $sp, 48
	vld	$vr3, $sp, 48
	ldx.b	$t7, $t1, $s1
	ldx.b	$t8, $t1, $s2
	ldx.b	$fp, $t1, $s3
	ldx.b	$s0, $t1, $s4
	st.b	$t7, $sp, 35
	st.b	$t8, $sp, 34
	st.b	$fp, $sp, 33
	st.b	$s0, $sp, 32
	vld	$vr4, $sp, 32
	vilvl.b	$vr3, $vr1, $vr3
	vilvl.h	$vr3, $vr1, $vr3
	vilvl.b	$vr4, $vr1, $vr4
	vilvl.h	$vr4, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB1_25
# %bb.26:                               # %middle.block186
	vadd.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t5, $vr0, 0
	beq	$t3, $t4, .LBB1_28
	.p2align	4, , 16
.LBB1_27:                               # %scalar.ph172
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t2, 0
	ldx.bu	$t3, $t1, $t3
	addi.d	$t4, $t2, 4
	add.w	$t5, $t5, $t3
	move	$t2, $t4
	bltu	$t4, $a4, .LBB1_27
.LBB1_28:                               # %count_bit_noESC2.exit
	slt	$t1, $t5, $a3
	masknez	$a5, $a5, $t1
	maskeqz	$t1, $t0, $t1
	or	$a5, $t1, $a5
	slt	$t1, $a3, $t5
	masknez	$t2, $t5, $t1
	maskeqz	$a3, $a3, $t1
	or	$a3, $a3, $t2
.LBB1_29:
	addi.w	$t0, $t0, 1
	ori	$t1, $zero, 24
	mul.d	$t1, $t0, $t1
	add.d	$a7, $a7, $t1
	ld.d	$a7, $a7, 16
	addi.d	$t1, $a0, 24
	sltu	$t2, $t1, $a1
	masknez	$t1, $t1, $t2
	maskeqz	$a1, $a1, $t2
	or	$a1, $a1, $t1
	addi.d	$a1, $a1, -24
	xor	$t1, $a1, $a0
	sltu	$t1, $zero, $t1
	add.d	$a0, $a0, $t1
	sub.d	$a0, $a1, $a0
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, -349526
	lu52i.d	$a1, $a1, -1366
	mulh.du	$a0, $a0, $a1
	srli.d	$a0, $a0, 4
	add.d	$a0, $a0, $t1
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a1, $a0, 2
	pcalau12i	$a0, %pc_hi20(cb_esc_buf)
	addi.d	$a0, $a0, %pc_lo12(cb_esc_buf)
	add.d	$a1, $a0, $a1
	addi.d	$a1, $a1, 12
	addi.d	$t1, $a0, 4
	sltu	$t2, $t1, $a1
	maskeqz	$a1, $a1, $t2
	masknez	$t1, $t1, $t2
	or	$a1, $a1, $t1
	nor	$t1, $a0, $zero
	add.d	$a1, $a1, $t1
	ori	$t1, $zero, 28
	bltu	$a1, $t1, .LBB1_33
# %bb.30:                               # %vector.ph196
	srli.d	$a0, $a1, 2
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 62, 3
	slli.d	$t1, $a0, 3
	slli.d	$a0, $a0, 5
	pcalau12i	$t2, %pc_hi20(.LCPI1_0)
	vld	$vr0, $t2, %pc_lo12(.LCPI1_0)
	pcalau12i	$t2, %pc_hi20(cb_esc_buf)
	addi.d	$t2, $t2, %pc_lo12(cb_esc_buf)
	add.d	$a0, $t2, $a0
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	vrepli.b	$vr1, 0
	addi.d	$a6, $t2, 16
	move	$t2, $t1
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB1_31:                               # %vector.body199
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vpickve2gr.w	$t3, $vr3, 3
	vpickve2gr.w	$t4, $vr3, 2
	vpickve2gr.w	$t5, $vr3, 1
	vpickve2gr.w	$t6, $vr3, 0
	vpickve2gr.w	$t7, $vr4, 3
	vpickve2gr.w	$t8, $vr4, 2
	vpickve2gr.w	$fp, $vr4, 1
	vpickve2gr.w	$s0, $vr4, 0
	ldx.b	$t3, $a7, $t3
	ldx.b	$t4, $a7, $t4
	ldx.b	$t5, $a7, $t5
	ldx.b	$t6, $a7, $t6
	st.b	$t3, $sp, 19
	st.b	$t4, $sp, 18
	st.b	$t5, $sp, 17
	st.b	$t6, $sp, 16
	vld	$vr3, $sp, 16
	ldx.b	$t3, $a7, $t7
	ldx.b	$t4, $a7, $t8
	ldx.b	$t5, $a7, $fp
	ldx.b	$t6, $a7, $s0
	st.b	$t3, $sp, 3
	st.b	$t4, $sp, 2
	st.b	$t5, $sp, 1
	st.b	$t6, $sp, 0
	vld	$vr4, $sp, 0
	vilvl.b	$vr3, $vr1, $vr3
	vilvl.h	$vr3, $vr1, $vr3
	vilvl.b	$vr4, $vr1, $vr4
	vilvl.h	$vr4, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t2, $t2, -8
	addi.d	$a6, $a6, 32
	bnez	$t2, .LBB1_31
# %bb.32:                               # %middle.block208
	vadd.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a6, $vr0, 0
	beq	$a1, $t1, .LBB1_34
	.p2align	4, , 16
.LBB1_33:                               # %scalar.ph194
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	ldx.bu	$a1, $a7, $a1
	addi.d	$t1, $a0, 4
	add.w	$a6, $a6, $a1
	move	$a0, $t1
	bltu	$t1, $a4, .LBB1_33
.LBB1_34:                               # %count_bit_noESC2.exit69
	slt	$a0, $a6, $a3
	masknez	$a1, $a5, $a0
	maskeqz	$a0, $t0, $a0
.LBB1_35:
	or	$a5, $a0, $a1
	slt	$a0, $a3, $a6
	masknez	$a1, $a6, $a0
	maskeqz	$a0, $a3, $a0
	or	$a3, $a0, $a1
.LBB1_36:
	ld.w	$a0, $a2, 0
	b	.LBB1_66
.LBB1_37:
	pcalau12i	$a3, %got_pc_hi20(ht)
	ld.d	$a6, $a3, %got_pc_lo12(ht)
	ld.w	$a5, $a6, 580
	addi.w	$a4, $a7, -15
	ori	$a3, $zero, 24
	bge	$a5, $a4, .LBB1_46
# %bb.38:
	ld.w	$a5, $a6, 604
	ori	$a3, $zero, 25
	bge	$a5, $a4, .LBB1_46
# %bb.39:
	ld.w	$a5, $a6, 628
	ori	$a3, $zero, 26
	bge	$a5, $a4, .LBB1_46
# %bb.40:
	ld.w	$a5, $a6, 652
	ori	$a3, $zero, 27
	bge	$a5, $a4, .LBB1_46
# %bb.41:
	ld.w	$a5, $a6, 676
	ori	$a3, $zero, 28
	bge	$a5, $a4, .LBB1_46
# %bb.42:
	ld.w	$a5, $a6, 700
	ori	$a3, $zero, 29
	bge	$a5, $a4, .LBB1_46
# %bb.43:
	ld.w	$a5, $a6, 724
	ori	$a3, $zero, 30
	bge	$a5, $a4, .LBB1_46
# %bb.44:
	ld.w	$a5, $a6, 748
	ori	$a3, $zero, 31
	bge	$a5, $a4, .LBB1_46
# %bb.45:
	ori	$a4, $zero, 24
	ori	$a3, $zero, 32
	b	.LBB1_51
.LBB1_46:                               # %.lr.ph.preheader
	slli.d	$a5, $a3, 4
	alsl.d	$a7, $a3, $a5, 3
	ori	$a5, $zero, 8
	ori	$t0, $zero, 768
	.p2align	4, , 16
.LBB1_47:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t1, $a6, $a7
	ld.w	$t1, $t1, -188
	bge	$t1, $a4, .LBB1_50
# %bb.48:                               #   in Loop: Header=BB1_47 Depth=1
	addi.d	$a7, $a7, 24
	addi.d	$a5, $a5, -1
	bne	$a7, $t0, .LBB1_47
# %bb.49:
	ori	$a4, $zero, 24
	b	.LBB1_51
.LBB1_50:                               # %._crit_edge.loopexit.split.loop.exit
	sub.w	$a4, $a3, $a5
.LBB1_51:                               # %._crit_edge
	ori	$a7, $zero, 24
	mul.d	$a5, $a4, $a7
	ldx.w	$a5, $a6, $a5
	mul.d	$a7, $a3, $a7
	ldx.w	$a7, $a6, $a7
	ld.d	$t0, $a6, 400
	ld.d	$t1, $a6, 592
	move	$a6, $zero
	move	$t4, $zero
	move	$t5, $zero
	ori	$t2, $zero, 14
	ori	$t3, $zero, 15
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_52:                               #   in Loop: Header=BB1_53 Depth=1
	ldx.bu	$t7, $t0, $t6
	ldx.bu	$t6, $t1, $t6
	add.w	$t4, $t4, $t7
	addi.d	$a0, $a0, 24
	add.w	$t5, $t5, $t6
	bgeu	$a0, $a1, .LBB1_65
.LBB1_53:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $a0, 0
	beqz	$t6, .LBB1_61
# %bb.54:                               #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a6, $a6, 1
	slt	$t7, $t2, $t6
	maskeqz	$t8, $a5, $t7
	add.d	$t4, $t8, $t4
	maskeqz	$t7, $a7, $t7
	add.d	$t5, $t7, $t5
	slti	$t7, $t6, 15
	masknez	$t8, $t3, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	slli.w	$t6, $t6, 4
	ld.w	$t7, $a0, 12
	beqz	$t7, .LBB1_56
.LBB1_55:                               #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a6, $a6, 1
	slt	$t8, $t2, $t7
	maskeqz	$fp, $a5, $t8
	add.d	$t4, $t4, $fp
	maskeqz	$fp, $a7, $t8
	add.d	$t5, $t5, $fp
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $t3, $t8
	or	$t7, $t8, $t7
	add.w	$t6, $t6, $t7
.LBB1_56:                               #   in Loop: Header=BB1_53 Depth=1
	ldx.bu	$t7, $t0, $t6
	ldx.bu	$t8, $t1, $t6
	ld.w	$t6, $a0, 4
	add.d	$t4, $t4, $t7
	add.d	$t5, $t5, $t8
	beqz	$t6, .LBB1_62
# %bb.57:                               #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a6, $a6, 1
	slt	$t7, $t2, $t6
	maskeqz	$t8, $a5, $t7
	add.d	$t4, $t8, $t4
	maskeqz	$t7, $a7, $t7
	add.d	$t5, $t7, $t5
	slti	$t7, $t6, 15
	masknez	$t8, $t3, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	slli.w	$t6, $t6, 4
	ld.w	$t7, $a0, 16
	beqz	$t7, .LBB1_59
.LBB1_58:                               #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a6, $a6, 1
	slt	$t8, $t2, $t7
	maskeqz	$fp, $a5, $t8
	add.d	$t4, $t4, $fp
	maskeqz	$fp, $a7, $t8
	add.d	$t5, $t5, $fp
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $t3, $t8
	or	$t7, $t8, $t7
	add.w	$t6, $t6, $t7
.LBB1_59:                               #   in Loop: Header=BB1_53 Depth=1
	ldx.bu	$t7, $t0, $t6
	ldx.bu	$t8, $t1, $t6
	ld.w	$t6, $a0, 8
	add.d	$t4, $t4, $t7
	add.d	$t5, $t5, $t8
	beqz	$t6, .LBB1_63
# %bb.60:                               #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a6, $a6, 1
	slt	$t7, $t2, $t6
	maskeqz	$t8, $a5, $t7
	add.d	$t4, $t8, $t4
	maskeqz	$t7, $a7, $t7
	add.d	$t5, $t7, $t5
	slti	$t7, $t6, 15
	masknez	$t8, $t3, $t7
	maskeqz	$t6, $t6, $t7
	or	$t6, $t6, $t8
	slli.w	$t6, $t6, 4
	ld.w	$t7, $a0, 20
	bnez	$t7, .LBB1_64
	b	.LBB1_52
	.p2align	4, , 16
.LBB1_61:                               #   in Loop: Header=BB1_53 Depth=1
	move	$t6, $zero
	ld.w	$t7, $a0, 12
	bnez	$t7, .LBB1_55
	b	.LBB1_56
	.p2align	4, , 16
.LBB1_62:                               #   in Loop: Header=BB1_53 Depth=1
	move	$t6, $zero
	ld.w	$t7, $a0, 16
	bnez	$t7, .LBB1_58
	b	.LBB1_59
	.p2align	4, , 16
.LBB1_63:                               #   in Loop: Header=BB1_53 Depth=1
	move	$t6, $zero
	ld.w	$t7, $a0, 20
	beqz	$t7, .LBB1_52
.LBB1_64:                               #   in Loop: Header=BB1_53 Depth=1
	addi.d	$a6, $a6, 1
	slt	$t8, $t2, $t7
	maskeqz	$fp, $a5, $t8
	add.d	$t4, $t4, $fp
	maskeqz	$fp, $a7, $t8
	add.d	$t5, $t5, $fp
	masknez	$t7, $t7, $t8
	maskeqz	$t8, $t3, $t8
	or	$t7, $t8, $t7
	add.w	$t6, $t6, $t7
	b	.LBB1_52
.LBB1_65:                               # %count_bit_short_ESC.exit
	slt	$a0, $t5, $t4
	masknez	$a1, $a4, $a0
	maskeqz	$a0, $a3, $a0
	or	$a5, $a0, $a1
	slt	$a0, $t4, $t5
	masknez	$a1, $t5, $a0
	ld.w	$a3, $a2, 0
	maskeqz	$a0, $t4, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a6
.LBB1_66:                               # %.thread87.sink.split
	add.d	$a0, $a0, $a3
.LBB1_67:                               # %.thread87.sink.split
	st.w	$a0, $a2, 0
.LBB1_68:
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	addi.w	$a0, $a5, 0
	ret
.LBB1_69:
	move	$a5, $zero
	b	.LBB1_68
.LBB1_70:
	ld.d	$a5, $a7, 376
	addi.d	$a7, $a0, 24
	sltu	$t0, $a7, $a1
	masknez	$a7, $a7, $t0
	maskeqz	$a1, $a1, $t0
	or	$a1, $a1, $a7
	addi.d	$a1, $a1, -24
	xor	$a7, $a1, $a0
	sltu	$a7, $zero, $a7
	add.d	$a0, $a0, $a7
	sub.d	$a0, $a1, $a0
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, -349526
	lu52i.d	$a1, $a1, -1366
	mulh.du	$a0, $a0, $a1
	srli.d	$a0, $a0, 4
	add.d	$a0, $a0, $a7
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a1, $a0, 2
	pcalau12i	$a0, %pc_hi20(cb_esc_buf)
	addi.d	$a0, $a0, %pc_lo12(cb_esc_buf)
	add.d	$a1, $a0, $a1
	addi.d	$a1, $a1, 12
	addi.d	$a7, $a0, 4
	sltu	$t0, $a7, $a1
	maskeqz	$a1, $a1, $t0
	masknez	$a7, $a7, $t0
	or	$a1, $a1, $a7
	nor	$a7, $a0, $zero
	add.d	$a1, $a1, $a7
	ori	$a7, $zero, 28
	bltu	$a1, $a7, .LBB1_74
# %bb.71:                               # %vector.ph154
	srli.d	$a0, $a1, 2
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 62, 3
	slli.d	$a7, $a0, 3
	slli.d	$a0, $a0, 5
	pcalau12i	$t0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $t0, %pc_lo12(.LCPI1_0)
	pcalau12i	$t0, %pc_hi20(cb_esc_buf)
	addi.d	$t0, $t0, %pc_lo12(cb_esc_buf)
	add.d	$a0, $t0, $a0
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	vrepli.b	$vr1, 0
	addi.d	$a6, $t0, 16
	move	$t0, $a7
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB1_72:                               # %vector.body157
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vpickve2gr.w	$t1, $vr3, 3
	vpickve2gr.w	$t2, $vr3, 2
	vpickve2gr.w	$t3, $vr3, 1
	vpickve2gr.w	$t4, $vr3, 0
	vpickve2gr.w	$t5, $vr4, 3
	vpickve2gr.w	$t6, $vr4, 2
	vpickve2gr.w	$t7, $vr4, 1
	vpickve2gr.w	$t8, $vr4, 0
	ldx.b	$t1, $a5, $t1
	ldx.b	$t2, $a5, $t2
	ldx.b	$t3, $a5, $t3
	ldx.b	$t4, $a5, $t4
	st.b	$t1, $sp, 83
	st.b	$t2, $sp, 82
	st.b	$t3, $sp, 81
	st.b	$t4, $sp, 80
	vld	$vr3, $sp, 80
	ldx.b	$t1, $a5, $t5
	ldx.b	$t2, $a5, $t6
	ldx.b	$t3, $a5, $t7
	ldx.b	$t4, $a5, $t8
	st.b	$t1, $sp, 67
	st.b	$t2, $sp, 66
	st.b	$t3, $sp, 65
	st.b	$t4, $sp, 64
	vld	$vr4, $sp, 64
	vilvl.b	$vr3, $vr1, $vr3
	vilvl.h	$vr3, $vr1, $vr3
	vilvl.b	$vr4, $vr1, $vr4
	vilvl.h	$vr4, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t0, $t0, -8
	addi.d	$a6, $a6, 32
	bnez	$t0, .LBB1_72
# %bb.73:                               # %middle.block165
	vadd.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a6, $vr0, 0
	beq	$a1, $a7, .LBB1_75
	.p2align	4, , 16
.LBB1_74:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	ldx.bu	$a1, $a5, $a1
	addi.d	$a7, $a0, 4
	add.w	$a6, $a6, $a1
	move	$a0, $a7
	bltu	$a7, $a4, .LBB1_74
.LBB1_75:                               # %count_bit_noESC2.exit72
	slt	$a0, $a6, $a3
	ori	$a1, $zero, 13
	masknez	$a1, $a1, $a0
	ori	$a4, $zero, 15
	maskeqz	$a0, $a4, $a0
	b	.LBB1_35
.Lfunc_end1:
	.size	choose_table_short, .Lfunc_end1-choose_table_short
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_36-.LJTI1_0
	.word	.LBB1_70-.LJTI1_0
                                        # -- End function
	.text
	.globl	best_huffman_divide             # -- Begin function best_huffman_divide
	.p2align	5
	.type	best_huffman_divide,@function
best_huffman_divide:                    # @best_huffman_divide
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
	move	$fp, $a3
	move	$s0, $a2
	addi.d	$a0, $sp, 0
	ori	$a2, $zero, 120
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(scalefac_band)
	ld.d	$s2, $a0, %got_pc_lo12(scalefac_band)
	ld.w	$a0, $sp, 4
	ld.w	$a1, $s2, 8
	slli.w	$s8, $a0, 1
	ori	$a0, $zero, 2
	blt	$s8, $a1, .LBB2_22
# %bb.1:
	ld.w	$a0, $sp, 88
	ld.w	$a2, $sp, 76
	add.d	$s4, $a2, $a0
	alsl.d	$s1, $s8, $fp, 2
	addi.d	$a2, $sp, 232
	st.w	$s4, $sp, 232
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	st.w	$a0, $sp, 132
	ori	$a0, $zero, 3
	blt	$s8, $a1, .LBB2_22
# %bb.2:
	addi.d	$a2, $sp, 236
	st.w	$s4, $sp, 236
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 16
	st.w	$a0, $sp, 136
	ori	$a0, $zero, 4
	blt	$s8, $a1, .LBB2_22
# %bb.3:
	addi.d	$a2, $sp, 240
	st.w	$s4, $sp, 240
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 20
	st.w	$a0, $sp, 140
	ori	$a0, $zero, 5
	blt	$s8, $a1, .LBB2_22
# %bb.4:
	addi.d	$a2, $sp, 244
	st.w	$s4, $sp, 244
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 24
	st.w	$a0, $sp, 144
	ori	$a0, $zero, 6
	blt	$s8, $a1, .LBB2_22
# %bb.5:
	addi.d	$a2, $sp, 248
	st.w	$s4, $sp, 248
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 28
	st.w	$a0, $sp, 148
	ori	$a0, $zero, 7
	blt	$s8, $a1, .LBB2_22
# %bb.6:
	addi.d	$a2, $sp, 252
	st.w	$s4, $sp, 252
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 32
	st.w	$a0, $sp, 152
	ori	$a0, $zero, 8
	blt	$s8, $a1, .LBB2_22
# %bb.7:
	addi.d	$a2, $sp, 256
	st.w	$s4, $sp, 256
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 36
	st.w	$a0, $sp, 156
	ori	$a0, $zero, 9
	blt	$s8, $a1, .LBB2_22
# %bb.8:
	addi.d	$a2, $sp, 260
	st.w	$s4, $sp, 260
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 40
	st.w	$a0, $sp, 160
	ori	$a0, $zero, 10
	blt	$s8, $a1, .LBB2_22
# %bb.9:
	addi.d	$a2, $sp, 264
	st.w	$s4, $sp, 264
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 44
	st.w	$a0, $sp, 164
	ori	$a0, $zero, 11
	blt	$s8, $a1, .LBB2_22
# %bb.10:
	addi.d	$a2, $sp, 268
	st.w	$s4, $sp, 268
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 48
	st.w	$a0, $sp, 168
	ori	$a0, $zero, 12
	blt	$s8, $a1, .LBB2_22
# %bb.11:
	addi.d	$a2, $sp, 272
	st.w	$s4, $sp, 272
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 52
	st.w	$a0, $sp, 172
	ori	$a0, $zero, 13
	blt	$s8, $a1, .LBB2_22
# %bb.12:
	addi.d	$a2, $sp, 276
	st.w	$s4, $sp, 276
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 56
	st.w	$a0, $sp, 176
	ori	$a0, $zero, 14
	blt	$s8, $a1, .LBB2_22
# %bb.13:
	addi.d	$a2, $sp, 280
	st.w	$s4, $sp, 280
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 60
	st.w	$a0, $sp, 180
	ori	$a0, $zero, 15
	blt	$s8, $a1, .LBB2_22
# %bb.14:
	addi.d	$a2, $sp, 284
	st.w	$s4, $sp, 284
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 64
	st.w	$a0, $sp, 184
	ori	$a0, $zero, 16
	blt	$s8, $a1, .LBB2_22
# %bb.15:
	addi.d	$a2, $sp, 288
	st.w	$s4, $sp, 288
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 68
	st.w	$a0, $sp, 188
	ori	$a0, $zero, 17
	blt	$s8, $a1, .LBB2_22
# %bb.16:
	addi.d	$a2, $sp, 292
	st.w	$s4, $sp, 292
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 72
	st.w	$a0, $sp, 192
	ori	$a0, $zero, 18
	blt	$s8, $a1, .LBB2_22
# %bb.17:
	addi.d	$a2, $sp, 296
	st.w	$s4, $sp, 296
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 76
	st.w	$a0, $sp, 196
	ori	$a0, $zero, 19
	blt	$s8, $a1, .LBB2_22
# %bb.18:
	addi.d	$a2, $sp, 300
	st.w	$s4, $sp, 300
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 80
	st.w	$a0, $sp, 200
	ori	$a0, $zero, 20
	blt	$s8, $a1, .LBB2_22
# %bb.19:
	addi.d	$a2, $sp, 304
	st.w	$s4, $sp, 304
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 84
	st.w	$a0, $sp, 204
	ori	$a0, $zero, 21
	blt	$s8, $a1, .LBB2_22
# %bb.20:
	addi.d	$a2, $sp, 308
	st.w	$s4, $sp, 308
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 88
	st.w	$a0, $sp, 208
	ori	$a0, $zero, 22
	blt	$s8, $a1, .LBB2_22
# %bb.21:
	addi.d	$a2, $sp, 312
	st.w	$s4, $sp, 312
	alsl.d	$a0, $a1, $fp, 2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 212
	ori	$a0, $zero, 23
.LBB2_22:                               # %.lr.ph.preheader
	ori	$a1, $zero, 25
	sub.d	$a2, $a1, $a0
	ori	$a3, $zero, 8
	lu12i.w	$a1, 24
	bgeu	$a2, $a3, .LBB2_24
# %bb.23:
	move	$a3, $a0
	b	.LBB2_27
.LBB2_24:                               # %vector.ph
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	add.d	$a3, $a0, $a4
	addi.d	$a5, $sp, 224
	alsl.d	$a0, $a0, $a5, 2
	addi.d	$a0, $a0, 16
	ori	$a5, $a1, 1696
	vreplgr2vr.w	$vr0, $a5
	move	$a5, $a4
	.p2align	4, , 16
.LBB2_25:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a0, -16
	vst	$vr0, $a0, 0
	addi.d	$a5, $a5, -8
	addi.d	$a0, $a0, 32
	bnez	$a5, .LBB2_25
# %bb.26:                               # %middle.block
	beq	$a2, $a4, .LBB2_29
.LBB2_27:                               # %.lr.ph.preheader66
	slli.d	$a0, $a3, 2
	ori	$a1, $a1, 1696
	addi.d	$a2, $sp, 224
	ori	$a3, $zero, 100
	.p2align	4, , 16
.LBB2_28:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	stx.w	$a1, $a0, $a2
	addi.d	$a0, $a0, 4
	bne	$a0, $a3, .LBB2_28
.LBB2_29:                               # %.preheader49
	move	$s4, $zero
	move	$s5, $zero
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_30:                               # %.loopexit
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$s5, $s5, 4
	addi.d	$s4, $s4, 1
	move	$s2, $s3
	ori	$a0, $zero, 64
	beq	$s5, $a0, .LBB2_57
.LBB2_31:                               # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s2, $s5
	ld.w	$a0, $s6, 4
	blt	$s8, $a0, .LBB2_57
# %bb.32:                               #   in Loop: Header=BB2_31 Depth=1
	st.w	$s4, $sp, 56
	st.w	$zero, $sp, 324
	alsl.d	$s1, $a0, $fp, 2
	addi.d	$a2, $sp, 324
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$s7, $sp, 324
	st.w	$a0, $sp, 32
	blt	$a1, $s7, .LBB2_57
# %bb.33:                               # %.preheader
                                        #   in Loop: Header=BB2_31 Depth=1
	move	$s3, $s2
	addi.d	$a0, $sp, 224
	add.d	$s2, $a0, $s5
	ld.w	$a0, $s2, 8
	add.w	$a0, $a0, $s7
	st.w	$a0, $sp, 0
	blt	$a1, $a0, .LBB2_36
# %bb.34:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s6, 8
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 0
	st.w	$a0, $sp, 36
	blt	$a1, $a2, .LBB2_36
# %bb.35:                               #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 124
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, 8
	st.w	$zero, $sp, 60
	st.w	$a0, $sp, 40
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_36:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s2, 12
	add.w	$a0, $a0, $s7
	st.w	$a0, $sp, 0
	blt	$a1, $a0, .LBB2_39
# %bb.37:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s6, 12
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 0
	st.w	$a0, $sp, 36
	blt	$a1, $a2, .LBB2_39
# %bb.38:                               #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 124
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, 12
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 60
	st.w	$a0, $sp, 40
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_39:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s2, 16
	add.w	$a0, $a0, $s7
	st.w	$a0, $sp, 0
	blt	$a1, $a0, .LBB2_42
# %bb.40:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s6, 16
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 0
	st.w	$a0, $sp, 36
	blt	$a1, $a2, .LBB2_42
# %bb.41:                               #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 124
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, 16
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 60
	st.w	$a0, $sp, 40
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_42:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s2, 20
	add.w	$a0, $a0, $s7
	st.w	$a0, $sp, 0
	blt	$a1, $a0, .LBB2_45
# %bb.43:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s6, 20
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 0
	st.w	$a0, $sp, 36
	blt	$a1, $a2, .LBB2_45
# %bb.44:                               #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 124
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 3
	st.w	$a1, $sp, 60
	st.w	$a0, $sp, 40
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_45:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s2, 24
	add.w	$a0, $a0, $s7
	st.w	$a0, $sp, 0
	blt	$a1, $a0, .LBB2_48
# %bb.46:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s6, 24
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 0
	st.w	$a0, $sp, 36
	blt	$a1, $a2, .LBB2_48
# %bb.47:                               #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 124
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, 24
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 60
	st.w	$a0, $sp, 40
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_48:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s2, 28
	add.w	$a0, $a0, $s7
	st.w	$a0, $sp, 0
	blt	$a1, $a0, .LBB2_51
# %bb.49:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s6, 28
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 0
	st.w	$a0, $sp, 36
	blt	$a1, $a2, .LBB2_51
# %bb.50:                               #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 124
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, 28
	ori	$a1, $zero, 5
	st.w	$a1, $sp, 60
	st.w	$a0, $sp, 40
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_51:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s2, 32
	add.w	$a0, $a0, $s7
	st.w	$a0, $sp, 0
	blt	$a1, $a0, .LBB2_54
# %bb.52:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s6, 32
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 0
	st.w	$a0, $sp, 36
	blt	$a1, $a2, .LBB2_54
# %bb.53:                               #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 124
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, 32
	ori	$a1, $zero, 6
	st.w	$a1, $sp, 60
	st.w	$a0, $sp, 40
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
.LBB2_54:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s2, 36
	add.w	$a0, $a0, $s7
	st.w	$a0, $sp, 0
	blt	$a1, $a0, .LBB2_30
# %bb.55:                               #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s6, 36
	alsl.d	$a1, $a0, $fp, 2
	addi.d	$a2, $sp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(choose_table)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $sp, 0
	st.w	$a0, $sp, 36
	blt	$a1, $a2, .LBB2_30
# %bb.56:                               #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a0, $sp, 124
	add.d	$a0, $a0, $s5
	ld.w	$a0, $a0, 36
	ori	$a1, $zero, 7
	st.w	$a1, $sp, 60
	st.w	$a0, $sp, 40
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB2_30
.LBB2_57:
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
.Lfunc_end2:
	.size	best_huffman_divide, .Lfunc_end2-best_huffman_divide
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function choose_table
.LCPI3_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.p2align	5
	.type	choose_table,@function
choose_table:                           # @choose_table
# %bb.0:
	bgeu	$a0, $a1, .LBB3_3
# %bb.1:                                # %iter.check
	addi.d	$sp, $sp, -512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 512
	bstrins.d	$sp, $zero, 4, 0
	move	$s0, $a1
	addi.d	$a3, $a0, 8
	sltu	$a4, $a3, $a1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a1, $a4
	or	$a3, $a4, $a3
	nor	$a4, $a0, $zero
	add.d	$t2, $a3, $a4
	srli.d	$a4, $t2, 3
	ori	$a5, $zero, 24
	addi.d	$s1, $a4, 1
	bgeu	$t2, $a5, .LBB3_4
# %bb.2:
	move	$a7, $zero
	move	$a6, $a0
	b	.LBB3_14
.LBB3_3:
	addi.w	$a0, $zero, 0
	ret
.LBB3_4:                                # %vector.main.loop.iter.check
	ori	$a5, $zero, 120
	bgeu	$t2, $a5, .LBB3_6
# %bb.5:
	move	$a5, $zero
	move	$a7, $zero
	b	.LBB3_10
.LBB3_6:                                # %vector.ph
	bstrpick.d	$a5, $s1, 61, 4
	slli.d	$a5, $a5, 4
	xvrepli.b	$xr0, 0
	addi.d	$a6, $a0, 64
	move	$a7, $a5
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB3_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a6, -64
	ld.w	$t1, $a6, -56
	ld.w	$t3, $a6, -48
	ld.w	$t4, $a6, -40
	ld.w	$t5, $a6, -32
	ld.w	$t6, $a6, -24
	ld.w	$t7, $a6, -16
	ld.w	$t8, $a6, -8
	xvinsgr2vr.w	$xr2, $t0, 0
	xvinsgr2vr.w	$xr2, $t1, 1
	xvinsgr2vr.w	$xr2, $t3, 2
	xvinsgr2vr.w	$xr2, $t4, 3
	xvinsgr2vr.w	$xr2, $t5, 4
	xvinsgr2vr.w	$xr2, $t6, 5
	xvinsgr2vr.w	$xr2, $t7, 6
	xvinsgr2vr.w	$xr2, $t8, 7
	ld.w	$t0, $a6, 0
	ld.w	$t1, $a6, 8
	ld.w	$t3, $a6, 16
	ld.w	$t4, $a6, 24
	ld.w	$t5, $a6, 32
	ld.w	$t6, $a6, 40
	ld.w	$t7, $a6, 48
	ld.w	$t8, $a6, 56
	xvinsgr2vr.w	$xr3, $t0, 0
	xvinsgr2vr.w	$xr3, $t1, 1
	xvinsgr2vr.w	$xr3, $t3, 2
	xvinsgr2vr.w	$xr3, $t4, 3
	xvinsgr2vr.w	$xr3, $t5, 4
	xvinsgr2vr.w	$xr3, $t6, 5
	xvinsgr2vr.w	$xr3, $t7, 6
	xvinsgr2vr.w	$xr3, $t8, 7
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	ld.w	$t0, $a6, -60
	ld.w	$t1, $a6, -52
	ld.w	$t3, $a6, -44
	ld.w	$t4, $a6, -36
	ld.w	$t5, $a6, -28
	ld.w	$t6, $a6, -20
	ld.w	$t7, $a6, -12
	ld.w	$t8, $a6, -4
	xvinsgr2vr.w	$xr2, $t0, 0
	xvinsgr2vr.w	$xr2, $t1, 1
	xvinsgr2vr.w	$xr2, $t3, 2
	xvinsgr2vr.w	$xr2, $t4, 3
	xvinsgr2vr.w	$xr2, $t5, 4
	xvinsgr2vr.w	$xr2, $t6, 5
	xvinsgr2vr.w	$xr2, $t7, 6
	xvinsgr2vr.w	$xr2, $t8, 7
	ld.w	$t0, $a6, 4
	ld.w	$t1, $a6, 12
	ld.w	$t3, $a6, 20
	ld.w	$t4, $a6, 28
	ld.w	$t5, $a6, 36
	ld.w	$t6, $a6, 44
	ld.w	$t7, $a6, 52
	ld.w	$t8, $a6, 60
	xvinsgr2vr.w	$xr3, $t0, 0
	xvinsgr2vr.w	$xr3, $t1, 1
	xvinsgr2vr.w	$xr3, $t3, 2
	xvinsgr2vr.w	$xr3, $t4, 3
	xvinsgr2vr.w	$xr3, $t5, 4
	xvinsgr2vr.w	$xr3, $t6, 5
	xvinsgr2vr.w	$xr3, $t7, 6
	xvinsgr2vr.w	$xr3, $t8, 7
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 128
	bnez	$a7, .LBB3_7
# %bb.8:                                # %middle.block
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a7, $xr0, 0
	beq	$s1, $a5, .LBB3_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a6, $s1, 12
	beqz	$a6, .LBB3_13
.LBB3_10:                               # %vec.epilog.ph
	bstrpick.d	$a6, $s1, 61, 2
	slli.d	$t0, $a6, 2
	slli.d	$a6, $a6, 5
	add.d	$a6, $a0, $a6
	vreplgr2vr.w	$vr0, $a7
	sub.d	$a7, $a5, $t0
	alsl.d	$a5, $a5, $a0, 3
	addi.d	$a5, $a5, 16
	.p2align	4, , 16
.LBB3_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a5, -16
	ld.w	$t3, $a5, -8
	ld.w	$t4, $a5, 0
	ld.w	$t5, $a5, 8
	vinsgr2vr.w	$vr1, $t1, 0
	vinsgr2vr.w	$vr1, $t3, 1
	vinsgr2vr.w	$vr1, $t4, 2
	vinsgr2vr.w	$vr1, $t5, 3
	vmax.w	$vr0, $vr0, $vr1
	ld.w	$t1, $a5, -12
	ld.w	$t3, $a5, -4
	ld.w	$t4, $a5, 4
	ld.w	$t5, $a5, 12
	vinsgr2vr.w	$vr1, $t1, 0
	vinsgr2vr.w	$vr1, $t3, 1
	vinsgr2vr.w	$vr1, $t4, 2
	vinsgr2vr.w	$vr1, $t5, 3
	vmax.w	$vr0, $vr0, $vr1
	addi.d	$a7, $a7, 4
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB3_11
# %bb.12:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a7, $vr0, 0
	bne	$s1, $t0, .LBB3_14
	b	.LBB3_15
.LBB3_13:
	alsl.d	$a6, $a5, $a0, 3
	.p2align	4, , 16
.LBB3_14:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a6, 0
	slt	$t0, $a5, $a7
	masknez	$a5, $a5, $t0
	ld.w	$t1, $a6, 4
	maskeqz	$a7, $a7, $t0
	or	$a5, $a7, $a5
	addi.d	$t0, $a6, 8
	slt	$a6, $t1, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t1, $a6
	or	$a7, $a5, $a6
	move	$a6, $t0
	bltu	$t0, $s0, .LBB3_14
.LBB3_15:                               # %ix_max.exit
	lu12i.w	$a5, 2
	ori	$a5, $a5, 14
	bgeu	$a5, $a7, .LBB3_17
# %bb.16:
	addi.d	$a3, $zero, -1
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1696
	b	.LBB3_68
.LBB3_17:
	ori	$a5, $zero, 15
	bltu	$a5, $a7, .LBB3_39
# %bb.18:
	beqz	$a7, .LBB3_57
# %bb.19:
	pcalau12i	$a3, %pc_hi20(huf_tbl_noESC)
	addi.d	$a3, $a3, %pc_lo12(huf_tbl_noESC)
	alsl.d	$a3, $a7, $a3, 2
	ld.wu	$a3, $a3, -4
	pcalau12i	$a5, %got_pc_hi20(ht)
	ld.d	$a6, $a5, %got_pc_lo12(ht)
	move	$a5, $zero
	move	$a7, $zero
	slli.d	$t0, $a3, 4
	alsl.d	$t0, $a3, $t0, 3
	add.d	$t0, $a6, $t0
	ld.d	$t2, $t0, 16
	addi.w	$t0, $a3, 0
	pcalau12i	$t1, %pc_hi20(cb_esc_buf)
	addi.d	$t1, $t1, %pc_lo12(cb_esc_buf)
	.p2align	4, , 16
.LBB3_20:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $a0, 0
	ld.w	$t4, $a0, 4
	sltu	$t5, $zero, $t3
	add.d	$a5, $a5, $t5
	sltu	$t5, $zero, $t4
	alsl.w	$t6, $t3, $t4, 4
	alsl.d	$t3, $t3, $t4, 4
	st.w	$t3, $t1, 0
	ldx.bu	$t3, $t2, $t6
	add.d	$a5, $a5, $t5
	addi.d	$t1, $t1, 4
	addi.d	$a0, $a0, 8
	add.d	$a7, $a7, $t3
	bltu	$a0, $s0, .LBB3_20
# %bb.21:                               # %count_bit_noESC.exit
	pcalau12i	$a0, %pc_hi20(cb_esc_end)
	st.d	$t1, $a0, %pc_lo12(cb_esc_end)
	addi.d	$a1, $t0, -2
	ori	$t0, $zero, 11
	add.w	$a0, $a7, $a5
	bltu	$t0, $a1, .LBB3_38
# %bb.22:                               # %count_bit_noESC.exit
	slli.d	$a1, $a1, 2
	pcalau12i	$a7, %pc_hi20(.LJTI3_0)
	addi.d	$a7, $a7, %pc_lo12(.LJTI3_0)
	ldx.w	$a1, $a7, $a1
	add.d	$t0, $a7, $a1
	addi.d	$a1, $t1, -4
	move	$a7, $a3
	jr	$t0
.LBB3_23:
	addi.w	$a7, $a3, 1
	slli.d	$t0, $a7, 4
	alsl.d	$t0, $a7, $t0, 3
	add.d	$t0, $a6, $t0
	ld.d	$t0, $t0, 16
	slli.d	$t2, $a4, 2
	pcalau12i	$t1, %pc_hi20(cb_esc_buf)
	addi.d	$t1, $t1, %pc_lo12(cb_esc_buf)
	alsl.d	$t3, $a4, $t1, 2
	sltu	$t3, $t3, $t2
	masknez	$t2, $t2, $t3
	ori	$t3, $zero, 28
	move	$t4, $a5
	bltu	$t2, $t3, .LBB3_27
# %bb.24:                               # %vector.ph265
	srli.d	$t1, $t2, 2
	addi.d	$t2, $t1, 1
	bstrpick.d	$t1, $t2, 61, 3
	slli.d	$t3, $t1, 3
	slli.d	$t1, $t1, 5
	pcalau12i	$t4, %pc_hi20(cb_esc_buf)
	addi.d	$t4, $t4, %pc_lo12(cb_esc_buf)
	pcalau12i	$t5, %pc_hi20(.LCPI3_0)
	vld	$vr0, $t5, %pc_lo12(.LCPI3_0)
	add.d	$t1, $t4, $t1
	vinsgr2vr.w	$vr1, $a5, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	vrepli.b	$vr1, 0
	addi.d	$t4, $t4, 16
	move	$t5, $t3
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB3_25:                               # %vector.body268
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t4, -16
	vld	$vr4, $t4, 0
	vpickve2gr.w	$t6, $vr3, 3
	vpickve2gr.w	$t7, $vr3, 2
	vpickve2gr.w	$t8, $vr3, 1
	vpickve2gr.w	$s0, $vr3, 0
	vpickve2gr.w	$s1, $vr4, 3
	vpickve2gr.w	$s2, $vr4, 2
	vpickve2gr.w	$s3, $vr4, 1
	vpickve2gr.w	$s4, $vr4, 0
	ldx.b	$t6, $t0, $t6
	ldx.b	$t7, $t0, $t7
	ldx.b	$t8, $t0, $t8
	ldx.b	$s0, $t0, $s0
	st.b	$t6, $sp, 147
	st.b	$t7, $sp, 146
	st.b	$t8, $sp, 145
	st.b	$s0, $sp, 144
	vld	$vr3, $sp, 144
	ldx.b	$t6, $t0, $s1
	ldx.b	$t7, $t0, $s2
	ldx.b	$t8, $t0, $s3
	ldx.b	$s0, $t0, $s4
	st.b	$t6, $sp, 131
	st.b	$t7, $sp, 130
	st.b	$t8, $sp, 129
	st.b	$s0, $sp, 128
	vld	$vr4, $sp, 128
	vilvl.b	$vr3, $vr1, $vr3
	vilvl.h	$vr3, $vr1, $vr3
	vilvl.b	$vr4, $vr1, $vr4
	vilvl.h	$vr4, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB3_25
# %bb.26:                               # %middle.block277
	vadd.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t4, $vr0, 0
	beq	$t2, $t3, .LBB3_29
.LBB3_27:                               # %scalar.ph263.preheader
	addi.d	$t1, $t1, -4
	.p2align	4, , 16
.LBB3_28:                               # %scalar.ph263
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $t1, 4
	ldx.bu	$t2, $t0, $t2
	addi.d	$t3, $t1, 4
	add.w	$t4, $t4, $t2
	move	$t1, $t3
	bltu	$t3, $a1, .LBB3_28
.LBB3_29:                               # %count_bit_noESC2.exit
	slt	$t0, $t4, $a0
	masknez	$a3, $a3, $t0
	maskeqz	$t0, $a7, $t0
	or	$a3, $t0, $a3
	slt	$t0, $a0, $t4
	masknez	$t1, $t4, $t0
	maskeqz	$a0, $a0, $t0
	or	$a0, $a0, $t1
.LBB3_30:
	addi.w	$a7, $a7, 1
	slli.d	$t0, $a7, 4
	alsl.d	$t0, $a7, $t0, 3
	add.d	$a6, $a6, $t0
	ld.d	$a6, $a6, 16
	slli.d	$t1, $a4, 2
	pcalau12i	$t0, %pc_hi20(cb_esc_buf)
	addi.d	$t0, $t0, %pc_lo12(cb_esc_buf)
	alsl.d	$a4, $a4, $t0, 2
	sltu	$a4, $a4, $t1
	masknez	$a4, $t1, $a4
	ori	$t1, $zero, 28
	bltu	$a4, $t1, .LBB3_34
# %bb.31:                               # %vector.ph285
	srli.d	$a4, $a4, 2
	addi.d	$a4, $a4, 1
	bstrpick.d	$t0, $a4, 61, 3
	slli.d	$t1, $t0, 3
	slli.d	$t0, $t0, 5
	pcalau12i	$t2, %pc_hi20(.LCPI3_0)
	vld	$vr0, $t2, %pc_lo12(.LCPI3_0)
	pcalau12i	$t2, %pc_hi20(cb_esc_buf)
	addi.d	$t2, $t2, %pc_lo12(cb_esc_buf)
	add.d	$t0, $t2, $t0
	vinsgr2vr.w	$vr1, $a5, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	vrepli.b	$vr1, 0
	addi.d	$a5, $t2, 16
	move	$t2, $t1
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB3_32:                               # %vector.body288
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vpickve2gr.w	$t3, $vr3, 3
	vpickve2gr.w	$t4, $vr3, 2
	vpickve2gr.w	$t5, $vr3, 1
	vpickve2gr.w	$t6, $vr3, 0
	vpickve2gr.w	$t7, $vr4, 3
	vpickve2gr.w	$t8, $vr4, 2
	vpickve2gr.w	$s0, $vr4, 1
	vpickve2gr.w	$s1, $vr4, 0
	ldx.b	$t3, $a6, $t3
	ldx.b	$t4, $a6, $t4
	ldx.b	$t5, $a6, $t5
	ldx.b	$t6, $a6, $t6
	st.b	$t3, $sp, 115
	st.b	$t4, $sp, 114
	st.b	$t5, $sp, 113
	st.b	$t6, $sp, 112
	vld	$vr3, $sp, 112
	ldx.b	$t3, $a6, $t7
	ldx.b	$t4, $a6, $t8
	ldx.b	$t5, $a6, $s0
	ldx.b	$t6, $a6, $s1
	st.b	$t3, $sp, 99
	st.b	$t4, $sp, 98
	st.b	$t5, $sp, 97
	st.b	$t6, $sp, 96
	vld	$vr4, $sp, 96
	vilvl.b	$vr3, $vr1, $vr3
	vilvl.h	$vr3, $vr1, $vr3
	vilvl.b	$vr4, $vr1, $vr4
	vilvl.h	$vr4, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t2, $t2, -8
	addi.d	$a5, $a5, 32
	bnez	$t2, .LBB3_32
# %bb.33:                               # %middle.block297
	vadd.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	beq	$a4, $t1, .LBB3_36
.LBB3_34:                               # %scalar.ph283.preheader
	addi.d	$a4, $t0, -4
	.p2align	4, , 16
.LBB3_35:                               # %scalar.ph283
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a4, 4
	ldx.bu	$t0, $a6, $t0
	addi.d	$t1, $a4, 4
	add.w	$a5, $a5, $t0
	move	$a4, $t1
	bltu	$t1, $a1, .LBB3_35
.LBB3_36:                               # %count_bit_noESC2.exit70
	slt	$a1, $a5, $a0
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a7, $a1
.LBB3_37:
	or	$a3, $a1, $a3
	slt	$a1, $a0, $a5
	masknez	$a4, $a5, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a4
.LBB3_38:
	ld.w	$a1, $a2, 0
	add.d	$a0, $a1, $a0
	b	.LBB3_68
.LBB3_39:
	pcalau12i	$a4, %got_pc_hi20(ht)
	ld.d	$a5, $a4, %got_pc_lo12(ht)
	ld.w	$t0, $a5, 580
	addi.w	$a6, $a7, -15
	ori	$s2, $zero, 24
	bge	$t0, $a6, .LBB3_48
# %bb.40:
	ld.w	$a7, $a5, 604
	ori	$s2, $zero, 25
	bge	$a7, $a6, .LBB3_48
# %bb.41:
	ld.w	$a7, $a5, 628
	ori	$s2, $zero, 26
	bge	$a7, $a6, .LBB3_48
# %bb.42:
	ld.w	$a7, $a5, 652
	ori	$s2, $zero, 27
	bge	$a7, $a6, .LBB3_48
# %bb.43:
	ld.w	$a7, $a5, 676
	ori	$s2, $zero, 28
	bge	$a7, $a6, .LBB3_48
# %bb.44:
	ld.w	$a7, $a5, 700
	ori	$s2, $zero, 29
	bge	$a7, $a6, .LBB3_48
# %bb.45:
	ld.w	$a7, $a5, 724
	ori	$s2, $zero, 30
	bge	$a7, $a6, .LBB3_48
# %bb.46:
	ld.w	$a7, $a5, 748
	ori	$s2, $zero, 31
	bge	$a7, $a6, .LBB3_48
# %bb.47:
	ori	$s3, $zero, 24
	ori	$s2, $zero, 32
	b	.LBB3_53
.LBB3_48:                               # %.lr.ph.preheader
	slli.d	$a7, $s2, 4
	alsl.d	$t0, $s2, $a7, 3
	ori	$a7, $zero, 8
	ori	$t1, $zero, 768
	.p2align	4, , 16
.LBB3_49:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t3, $a5, $t0
	ld.w	$t3, $t3, -188
	bge	$t3, $a6, .LBB3_52
# %bb.50:                               #   in Loop: Header=BB3_49 Depth=1
	addi.d	$t0, $t0, 24
	addi.d	$a7, $a7, -1
	bne	$t0, $t1, .LBB3_49
# %bb.51:
	ori	$s3, $zero, 24
	b	.LBB3_53
.LBB3_52:                               # %.lr.ph.i75.loopexit.split.loop.exit
	sub.w	$s3, $s2, $a7
.LBB3_53:                               # %iter.check149
	ori	$t3, $zero, 24
	mul.d	$a6, $s3, $t3
	ldx.w	$s4, $a5, $a6
	mul.d	$a7, $s2, $t3
	ldx.w	$s5, $a5, $a7
	ld.d	$s7, $a5, 400
	ld.d	$t1, $a5, 592
	bgeu	$t2, $t3, .LBB3_55
# %bb.54:
	move	$t8, $a2
	move	$t4, $zero
	move	$t5, $zero
	move	$t6, $zero
	move	$t3, $a0
	b	.LBB3_78
.LBB3_55:                               # %vector.main.loop.iter.check151
	ori	$a5, $zero, 120
	bgeu	$t2, $a5, .LBB3_58
# %bb.56:
	move	$t8, $a2
	move	$a3, $zero
	move	$t4, $zero
	move	$t5, $zero
	move	$t6, $zero
	b	.LBB3_64
.LBB3_57:
	move	$a3, $zero
	b	.LBB3_69
.LBB3_58:                               # %vector.ph152
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a5, $s1, 61, 4
	slli.d	$a1, $a5, 4
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	xvreplgr2vr.w	$xr0, $s4
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	xvreplgr2vr.w	$xr1, $s5
	addi.d	$t3, $a0, 64
	xvrepli.b	$xr2, 0
	xvrepli.w	$xr3, 14
	xvrepli.w	$xr5, 15
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	xvori.b	$xr9, $xr2, 0
	xvori.b	$xr10, $xr2, 0
	xvori.b	$xr7, $xr2, 0
	xvori.b	$xr8, $xr2, 0
	xvori.b	$xr6, $xr2, 0
	xvori.b	$xr4, $xr2, 0
	.p2align	4, , 16
.LBB3_59:                               # %vector.body159
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a5, $t3, -64
	ld.w	$t2, $t3, -56
	ld.w	$t5, $t3, -48
	ld.w	$t6, $t3, -40
	ld.w	$t7, $t3, -32
	ld.w	$t8, $t3, -24
	ld.w	$s0, $t3, -16
	ld.w	$s1, $t3, -8
	xvinsgr2vr.w	$xr11, $a5, 0
	xvinsgr2vr.w	$xr11, $t2, 1
	xvinsgr2vr.w	$xr11, $t5, 2
	xvinsgr2vr.w	$xr11, $t6, 3
	xvinsgr2vr.w	$xr11, $t7, 4
	xvinsgr2vr.w	$xr11, $t8, 5
	xvinsgr2vr.w	$xr11, $s0, 6
	xvinsgr2vr.w	$xr11, $s1, 7
	ld.w	$a5, $t3, 0
	ld.w	$t2, $t3, 8
	ld.w	$t5, $t3, 16
	ld.w	$t6, $t3, 24
	ld.w	$t7, $t3, 32
	ld.w	$t8, $t3, 40
	ld.w	$s0, $t3, 48
	ld.w	$s1, $t3, 56
	xvinsgr2vr.w	$xr12, $a5, 0
	xvinsgr2vr.w	$xr12, $t2, 1
	xvinsgr2vr.w	$xr12, $t5, 2
	xvinsgr2vr.w	$xr12, $t6, 3
	xvinsgr2vr.w	$xr12, $t7, 4
	xvinsgr2vr.w	$xr12, $t8, 5
	xvinsgr2vr.w	$xr12, $s0, 6
	xvinsgr2vr.w	$xr12, $s1, 7
	ld.w	$a5, $t3, -60
	ld.w	$t2, $t3, -52
	ld.w	$t5, $t3, -44
	ld.w	$t6, $t3, -36
	ld.w	$t7, $t3, -28
	ld.w	$t8, $t3, -20
	ld.w	$s0, $t3, -12
	ld.w	$s1, $t3, -4
	xvinsgr2vr.w	$xr13, $a5, 0
	xvinsgr2vr.w	$xr13, $t2, 1
	xvinsgr2vr.w	$xr13, $t5, 2
	xvinsgr2vr.w	$xr13, $t6, 3
	xvinsgr2vr.w	$xr13, $t7, 4
	xvinsgr2vr.w	$xr13, $t8, 5
	xvinsgr2vr.w	$xr13, $s0, 6
	xvinsgr2vr.w	$xr13, $s1, 7
	ld.w	$a5, $t3, 4
	ld.w	$t2, $t3, 12
	ld.w	$t5, $t3, 20
	ld.w	$t6, $t3, 28
	ld.w	$t7, $t3, 36
	ld.w	$t8, $t3, 44
	ld.w	$s0, $t3, 52
	ld.w	$s1, $t3, 60
	xvinsgr2vr.w	$xr14, $a5, 0
	xvinsgr2vr.w	$xr14, $t2, 1
	xvinsgr2vr.w	$xr14, $t5, 2
	xvinsgr2vr.w	$xr14, $t6, 3
	xvinsgr2vr.w	$xr14, $t7, 4
	xvinsgr2vr.w	$xr14, $t8, 5
	xvinsgr2vr.w	$xr14, $s0, 6
	xvinsgr2vr.w	$xr14, $s1, 7
	xvmini.w	$xr15, $xr11, 15
	xvmini.w	$xr16, $xr12, 15
	xvslli.w	$xr17, $xr15, 4
	xvslli.w	$xr18, $xr16, 4
	xvslt.w	$xr16, $xr3, $xr13
	xvslt.w	$xr15, $xr3, $xr14
	xvbitsel.v	$xr19, $xr13, $xr5, $xr16
	xvbitsel.v	$xr20, $xr14, $xr5, $xr15
	xvadd.w	$xr17, $xr17, $xr19
	xvadd.w	$xr18, $xr18, $xr20
	xvpermi.q	$xr19, $xr17, 1
	vpickve2gr.w	$s5, $vr19, 3
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	vpickve2gr.w	$a1, $vr19, 2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	vpickve2gr.w	$s0, $vr19, 1
	vpickve2gr.w	$t7, $vr19, 0
	vpickve2gr.w	$t5, $vr17, 3
	vpickve2gr.w	$ra, $vr17, 2
	vpickve2gr.w	$t2, $vr17, 1
	vpickve2gr.w	$a5, $vr17, 0
	xvpermi.q	$xr17, $xr18, 1
	vpickve2gr.w	$s2, $vr17, 3
	vpickve2gr.w	$s3, $vr17, 2
	vpickve2gr.w	$s4, $vr17, 1
	vpickve2gr.w	$s6, $vr17, 0
	vpickve2gr.w	$s1, $vr18, 3
	vpickve2gr.w	$t8, $vr18, 2
	vpickve2gr.w	$t6, $vr18, 1
	vpickve2gr.w	$s8, $vr18, 0
	ldx.b	$a4, $s7, $a5
	ldx.b	$a3, $s7, $t2
	ldx.b	$a2, $s7, $ra
	ldx.b	$a6, $s7, $t5
	ldx.b	$a7, $s7, $t7
	ldx.b	$t4, $s7, $s0
	ldx.b	$a1, $s7, $a1
	ldx.b	$t0, $s7, $s5
	st.b	$a6, $sp, 403
	st.b	$a2, $sp, 402
	st.b	$a3, $sp, 401
	st.b	$a4, $sp, 400
	st.b	$t0, $sp, 407
	st.b	$a1, $sp, 406
	st.b	$t4, $sp, 405
	st.b	$a7, $sp, 404
	vld	$vr17, $sp, 400
	ldx.b	$a1, $s7, $s8
	ldx.b	$a2, $s7, $t6
	ldx.b	$a3, $s7, $t8
	ldx.b	$a4, $s7, $s1
	ldx.b	$a6, $s7, $s6
	ldx.b	$a7, $s7, $s4
	ldx.b	$t0, $s7, $s3
	ldx.b	$t4, $s7, $s2
	st.b	$a4, $sp, 371
	st.b	$a3, $sp, 370
	st.b	$a2, $sp, 369
	st.b	$a1, $sp, 368
	st.b	$t4, $sp, 375
	st.b	$t0, $sp, 374
	st.b	$a7, $sp, 373
	st.b	$a6, $sp, 372
	vld	$vr18, $sp, 368
	st.b	$zero, $sp, 255
	st.h	$zero, $sp, 253
	st.b	$zero, $sp, 251
	st.h	$zero, $sp, 249
	st.b	$zero, $sp, 247
	st.h	$zero, $sp, 245
	st.b	$zero, $sp, 243
	st.h	$zero, $sp, 241
	st.b	$zero, $sp, 239
	st.h	$zero, $sp, 237
	st.b	$zero, $sp, 235
	st.h	$zero, $sp, 233
	st.b	$zero, $sp, 231
	st.h	$zero, $sp, 229
	st.b	$zero, $sp, 227
	st.h	$zero, $sp, 225
	addi.d	$a1, $sp, 252
	xvstelm.b	$xr17, $a1, 0, 7
	addi.d	$a1, $sp, 248
	xvstelm.b	$xr17, $a1, 0, 6
	addi.d	$a1, $sp, 244
	xvstelm.b	$xr17, $a1, 0, 5
	addi.d	$a1, $sp, 240
	xvstelm.b	$xr17, $a1, 0, 4
	addi.d	$a1, $sp, 236
	xvstelm.b	$xr17, $a1, 0, 3
	addi.d	$a1, $sp, 232
	xvstelm.b	$xr17, $a1, 0, 2
	addi.d	$a1, $sp, 228
	xvstelm.b	$xr17, $a1, 0, 1
	addi.d	$a1, $sp, 224
	xvstelm.b	$xr17, $a1, 0, 0
	xvld	$xr17, $sp, 224
	st.b	$zero, $sp, 319
	st.h	$zero, $sp, 317
	st.b	$zero, $sp, 315
	st.h	$zero, $sp, 313
	st.b	$zero, $sp, 311
	st.h	$zero, $sp, 309
	st.b	$zero, $sp, 307
	st.h	$zero, $sp, 305
	st.b	$zero, $sp, 303
	st.h	$zero, $sp, 301
	st.b	$zero, $sp, 299
	st.h	$zero, $sp, 297
	st.b	$zero, $sp, 295
	st.h	$zero, $sp, 293
	st.b	$zero, $sp, 291
	st.h	$zero, $sp, 289
	addi.d	$a1, $sp, 316
	xvstelm.b	$xr18, $a1, 0, 7
	addi.d	$a1, $sp, 312
	xvstelm.b	$xr18, $a1, 0, 6
	addi.d	$a1, $sp, 308
	xvstelm.b	$xr18, $a1, 0, 5
	addi.d	$a1, $sp, 304
	xvstelm.b	$xr18, $a1, 0, 4
	addi.d	$a1, $sp, 300
	xvstelm.b	$xr18, $a1, 0, 3
	addi.d	$a1, $sp, 296
	xvstelm.b	$xr18, $a1, 0, 2
	addi.d	$a1, $sp, 292
	xvstelm.b	$xr18, $a1, 0, 1
	addi.d	$a1, $sp, 288
	xvstelm.b	$xr18, $a1, 0, 0
	xvld	$xr18, $sp, 288
	ldx.b	$a1, $t1, $a5
	ldx.b	$a2, $t1, $t2
	ldx.b	$a3, $t1, $ra
	ldx.b	$a4, $t1, $t5
	ldx.b	$a5, $t1, $t7
	ldx.b	$a6, $t1, $s0
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ldx.b	$a7, $t1, $a7
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ldx.b	$t0, $t1, $t0
	st.b	$a4, $sp, 387
	st.b	$a3, $sp, 386
	st.b	$a2, $sp, 385
	st.b	$a1, $sp, 384
	st.b	$t0, $sp, 391
	st.b	$a7, $sp, 390
	st.b	$a6, $sp, 389
	st.b	$a5, $sp, 388
	vld	$vr19, $sp, 384
	ldx.b	$a1, $t1, $s8
	ldx.b	$a2, $t1, $t6
	ldx.b	$a3, $t1, $t8
	ldx.b	$a4, $t1, $s1
	ldx.b	$a5, $t1, $s6
	ldx.b	$a6, $t1, $s4
	ldx.b	$a7, $t1, $s3
	ldx.b	$t0, $t1, $s2
	st.b	$a4, $sp, 355
	st.b	$a3, $sp, 354
	st.b	$a2, $sp, 353
	st.b	$a1, $sp, 352
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.b	$t0, $sp, 359
	st.b	$a7, $sp, 358
	st.b	$a6, $sp, 357
	st.b	$a5, $sp, 356
	xvseqi.w	$xr20, $xr11, 0
	xvadd.w	$xr6, $xr6, $xr20
	xvseqi.w	$xr13, $xr13, 0
	xvadd.w	$xr6, $xr6, $xr13
	xvseqi.w	$xr13, $xr12, 0
	xvadd.w	$xr4, $xr4, $xr13
	xvslt.w	$xr11, $xr3, $xr11
	xvslt.w	$xr12, $xr3, $xr12
	xvseqi.w	$xr13, $xr14, 0
	xvadd.w	$xr4, $xr4, $xr13
	xvbitsel.v	$xr13, $xr2, $xr0, $xr11
	xvadd.w	$xr7, $xr7, $xr13
	xvbitsel.v	$xr13, $xr2, $xr0, $xr12
	xvadd.w	$xr8, $xr8, $xr13
	xvbitsel.v	$xr11, $xr2, $xr1, $xr11
	xvadd.w	$xr9, $xr9, $xr11
	xvbitsel.v	$xr11, $xr2, $xr1, $xr12
	xvadd.w	$xr10, $xr10, $xr11
	xvaddi.wu	$xr6, $xr6, 2
	xvaddi.wu	$xr4, $xr4, 2
	xvbitsel.v	$xr11, $xr2, $xr0, $xr16
	xvadd.w	$xr7, $xr7, $xr11
	xvbitsel.v	$xr11, $xr2, $xr0, $xr15
	xvadd.w	$xr8, $xr8, $xr11
	xvbitsel.v	$xr11, $xr2, $xr1, $xr16
	xvadd.w	$xr9, $xr9, $xr11
	xvbitsel.v	$xr11, $xr2, $xr1, $xr15
	xvadd.w	$xr10, $xr10, $xr11
	vld	$vr11, $sp, 352
	st.b	$zero, $sp, 287
	st.h	$zero, $sp, 285
	st.b	$zero, $sp, 283
	st.h	$zero, $sp, 281
	st.b	$zero, $sp, 279
	st.h	$zero, $sp, 277
	st.b	$zero, $sp, 275
	st.h	$zero, $sp, 273
	st.b	$zero, $sp, 271
	st.h	$zero, $sp, 269
	st.b	$zero, $sp, 267
	st.h	$zero, $sp, 265
	st.b	$zero, $sp, 263
	st.h	$zero, $sp, 261
	st.b	$zero, $sp, 259
	st.h	$zero, $sp, 257
	addi.d	$a2, $sp, 284
	xvstelm.b	$xr19, $a2, 0, 7
	addi.d	$a2, $sp, 280
	xvstelm.b	$xr19, $a2, 0, 6
	addi.d	$a2, $sp, 276
	xvstelm.b	$xr19, $a2, 0, 5
	addi.d	$a2, $sp, 272
	xvstelm.b	$xr19, $a2, 0, 4
	addi.d	$a2, $sp, 268
	xvstelm.b	$xr19, $a2, 0, 3
	addi.d	$a2, $sp, 264
	xvstelm.b	$xr19, $a2, 0, 2
	addi.d	$a2, $sp, 260
	xvstelm.b	$xr19, $a2, 0, 1
	addi.d	$a2, $sp, 256
	xvstelm.b	$xr19, $a2, 0, 0
	xvld	$xr12, $sp, 256
	st.b	$zero, $sp, 351
	st.h	$zero, $sp, 349
	st.b	$zero, $sp, 347
	st.h	$zero, $sp, 345
	st.b	$zero, $sp, 343
	st.h	$zero, $sp, 341
	st.b	$zero, $sp, 339
	st.h	$zero, $sp, 337
	st.b	$zero, $sp, 335
	st.h	$zero, $sp, 333
	st.b	$zero, $sp, 331
	st.h	$zero, $sp, 329
	st.b	$zero, $sp, 327
	st.h	$zero, $sp, 325
	st.b	$zero, $sp, 323
	st.h	$zero, $sp, 321
	addi.d	$a2, $sp, 348
	xvstelm.b	$xr11, $a2, 0, 7
	addi.d	$a2, $sp, 344
	xvstelm.b	$xr11, $a2, 0, 6
	addi.d	$a2, $sp, 340
	xvstelm.b	$xr11, $a2, 0, 5
	addi.d	$a2, $sp, 336
	xvstelm.b	$xr11, $a2, 0, 4
	addi.d	$a2, $sp, 332
	xvstelm.b	$xr11, $a2, 0, 3
	addi.d	$a2, $sp, 328
	xvstelm.b	$xr11, $a2, 0, 2
	addi.d	$a2, $sp, 324
	xvstelm.b	$xr11, $a2, 0, 1
	addi.d	$a2, $sp, 320
	xvstelm.b	$xr11, $a2, 0, 0
	xvld	$xr11, $sp, 320
	xvadd.w	$xr7, $xr7, $xr17
	xvadd.w	$xr8, $xr8, $xr18
	xvadd.w	$xr9, $xr9, $xr12
	xvadd.w	$xr10, $xr10, $xr11
	addi.d	$a1, $a1, -16
	addi.d	$t3, $t3, 128
	bnez	$a1, .LBB3_59
# %bb.60:                               # %middle.block199
	xvadd.w	$xr0, $xr10, $xr9
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t4, $xr0, 0
	xvadd.w	$xr0, $xr8, $xr7
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t5, $xr0, 0
	xvadd.w	$xr0, $xr4, $xr6
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t6, $xr0, 0
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	bne	$s1, $a3, .LBB3_62
# %bb.61:
	ld.d	$t8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	b	.LBB3_67
.LBB3_62:                               # %vec.epilog.iter.check209
	andi	$a1, $s1, 12
	ld.d	$t8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	beqz	$a1, .LBB3_77
# %bb.63:
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
.LBB3_64:                               # %vec.epilog.ph208
	bstrpick.d	$a1, $s1, 61, 2
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI3_0)
	slli.d	$t7, $a1, 2
	slli.d	$a1, $a1, 5
	add.d	$t3, $a0, $a1
	vinsgr2vr.w	$vr1, $t4, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vori.b	$vr7, $vr0, 0
	vshuf.w	$vr7, $vr2, $vr1
	vinsgr2vr.w	$vr1, $t5, 0
	vori.b	$vr6, $vr0, 0
	vshuf.w	$vr6, $vr2, $vr1
	vinsgr2vr.w	$vr1, $t6, 0
	vshuf.w	$vr0, $vr2, $vr1
	vreplgr2vr.w	$vr1, $s4
	vreplgr2vr.w	$vr2, $s5
	sub.d	$t4, $a3, $t7
	alsl.d	$a0, $a3, $a0, 3
	addi.d	$a0, $a0, 16
	vrepli.w	$vr3, 14
	vrepli.w	$vr4, 15
	vrepli.b	$vr5, 0
	.p2align	4, , 16
.LBB3_65:                               # %vec.epilog.vector.body218
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, -16
	ld.w	$a2, $a0, -8
	ld.w	$a3, $a0, 0
	ld.w	$a4, $a0, 8
	vinsgr2vr.w	$vr8, $a1, 0
	vinsgr2vr.w	$vr8, $a2, 1
	vinsgr2vr.w	$vr8, $a3, 2
	vinsgr2vr.w	$vr8, $a4, 3
	ld.w	$a1, $a0, -12
	ld.w	$a2, $a0, -4
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 12
	vinsgr2vr.w	$vr9, $a1, 0
	vinsgr2vr.w	$vr9, $a2, 1
	vinsgr2vr.w	$vr9, $a3, 2
	vinsgr2vr.w	$vr9, $a4, 3
	vslt.w	$vr10, $vr3, $vr8
	vmini.w	$vr11, $vr8, 15
	vslli.w	$vr11, $vr11, 4
	vseqi.w	$vr8, $vr8, 0
	vadd.w	$vr0, $vr0, $vr8
	vseqi.w	$vr8, $vr9, 0
	vadd.w	$vr0, $vr0, $vr8
	vbitsel.v	$vr8, $vr5, $vr1, $vr10
	vadd.w	$vr6, $vr6, $vr8
	vbitsel.v	$vr8, $vr5, $vr2, $vr10
	vadd.w	$vr7, $vr7, $vr8
	vslt.w	$vr8, $vr3, $vr9
	vbitsel.v	$vr9, $vr9, $vr4, $vr8
	vadd.w	$vr9, $vr11, $vr9
	vaddi.wu	$vr0, $vr0, 2
	vbitsel.v	$vr10, $vr5, $vr1, $vr8
	vadd.w	$vr6, $vr6, $vr10
	vbitsel.v	$vr8, $vr5, $vr2, $vr8
	vadd.w	$vr7, $vr7, $vr8
	vpickve2gr.w	$a1, $vr9, 3
	vpickve2gr.w	$a2, $vr9, 2
	vpickve2gr.w	$a3, $vr9, 1
	vpickve2gr.w	$a4, $vr9, 0
	ldx.b	$a5, $s7, $a1
	ldx.b	$a6, $s7, $a2
	ldx.b	$a7, $s7, $a3
	ldx.b	$t0, $s7, $a4
	st.b	$a5, $sp, 211
	st.b	$a6, $sp, 210
	st.b	$a7, $sp, 209
	st.b	$t0, $sp, 208
	vld	$vr8, $sp, 208
	ldx.b	$a1, $t1, $a1
	ldx.b	$a2, $t1, $a2
	ldx.b	$a3, $t1, $a3
	ldx.b	$a4, $t1, $a4
	st.b	$a1, $sp, 195
	st.b	$a2, $sp, 194
	st.b	$a3, $sp, 193
	st.b	$a4, $sp, 192
	vld	$vr9, $sp, 192
	vilvl.b	$vr8, $vr5, $vr8
	vilvl.h	$vr8, $vr5, $vr8
	vadd.w	$vr6, $vr6, $vr8
	vilvl.b	$vr8, $vr5, $vr9
	vilvl.h	$vr8, $vr5, $vr8
	vadd.w	$vr7, $vr7, $vr8
	addi.d	$t4, $t4, 4
	addi.d	$a0, $a0, 32
	bnez	$t4, .LBB3_65
# %bb.66:                               # %vec.epilog.middle.block237
	vshuf4i.w	$vr1, $vr7, 14
	vadd.w	$vr1, $vr7, $vr1
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$t4, $vr1, 0
	vshuf4i.w	$vr1, $vr6, 14
	vadd.w	$vr1, $vr6, $vr1
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$t5, $vr1, 0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t6, $vr0, 0
	bne	$s1, $t7, .LBB3_78
.LBB3_67:                               # %count_bit_ESC.exit
	slt	$a0, $t4, $t5
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s2, $a0
	or	$a3, $a0, $a1
	slt	$a0, $t5, $t4
	masknez	$a1, $t4, $a0
	ld.w	$a2, $t8, 0
	maskeqz	$a0, $t5, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $t6
	add.d	$a0, $a0, $a2
	move	$a2, $t8
.LBB3_68:                               # %.thread83.sink.split
	st.w	$a0, $a2, 0
.LBB3_69:
	addi.d	$sp, $fp, -512
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	addi.w	$a0, $a3, 0
	ret
.LBB3_70:
	ld.d	$a3, $a6, 376
	slli.d	$a7, $a4, 2
	pcalau12i	$a6, %pc_hi20(cb_esc_buf)
	addi.d	$a6, $a6, %pc_lo12(cb_esc_buf)
	alsl.d	$a4, $a4, $a6, 2
	sltu	$a4, $a4, $a7
	masknez	$a4, $a7, $a4
	ori	$a7, $zero, 28
	bltu	$a4, $a7, .LBB3_74
# %bb.71:                               # %vector.ph246
	srli.d	$a4, $a4, 2
	addi.d	$a4, $a4, 1
	bstrpick.d	$a6, $a4, 61, 3
	slli.d	$a7, $a6, 3
	slli.d	$a6, $a6, 5
	pcalau12i	$t0, %pc_hi20(.LCPI3_0)
	vld	$vr0, $t0, %pc_lo12(.LCPI3_0)
	pcalau12i	$t0, %pc_hi20(cb_esc_buf)
	addi.d	$t0, $t0, %pc_lo12(cb_esc_buf)
	add.d	$a6, $t0, $a6
	vinsgr2vr.w	$vr1, $a5, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	vrepli.b	$vr1, 0
	addi.d	$a5, $t0, 16
	move	$t0, $a7
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB3_72:                               # %vector.body249
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vpickve2gr.w	$t1, $vr3, 3
	vpickve2gr.w	$t2, $vr3, 2
	vpickve2gr.w	$t3, $vr3, 1
	vpickve2gr.w	$t4, $vr3, 0
	vpickve2gr.w	$t5, $vr4, 3
	vpickve2gr.w	$t6, $vr4, 2
	vpickve2gr.w	$t7, $vr4, 1
	vpickve2gr.w	$t8, $vr4, 0
	ldx.b	$t1, $a3, $t1
	ldx.b	$t2, $a3, $t2
	ldx.b	$t3, $a3, $t3
	ldx.b	$t4, $a3, $t4
	st.b	$t1, $sp, 179
	st.b	$t2, $sp, 178
	st.b	$t3, $sp, 177
	st.b	$t4, $sp, 176
	vld	$vr3, $sp, 176
	ldx.b	$t1, $a3, $t5
	ldx.b	$t2, $a3, $t6
	ldx.b	$t3, $a3, $t7
	ldx.b	$t4, $a3, $t8
	st.b	$t1, $sp, 163
	st.b	$t2, $sp, 162
	st.b	$t3, $sp, 161
	st.b	$t4, $sp, 160
	vld	$vr4, $sp, 160
	vilvl.b	$vr3, $vr1, $vr3
	vilvl.h	$vr3, $vr1, $vr3
	vilvl.b	$vr4, $vr1, $vr4
	vilvl.h	$vr4, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, 32
	bnez	$t0, .LBB3_72
# %bb.73:                               # %middle.block257
	vadd.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	beq	$a4, $a7, .LBB3_76
.LBB3_74:                               # %scalar.ph.preheader
	addi.d	$a4, $a6, -4
	.p2align	4, , 16
.LBB3_75:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 4
	ldx.bu	$a6, $a3, $a6
	addi.d	$a7, $a4, 4
	add.w	$a5, $a5, $a6
	move	$a4, $a7
	bltu	$a7, $a1, .LBB3_75
.LBB3_76:                               # %count_bit_noESC2.exit73
	slt	$a1, $a5, $a0
	ori	$a3, $zero, 13
	masknez	$a3, $a3, $a1
	ori	$a4, $zero, 15
	maskeqz	$a1, $a4, $a1
	b	.LBB3_37
.LBB3_77:
	alsl.d	$t3, $a3, $a0, 3
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
.LBB3_78:                               # %vec.epilog.scalar.ph207.preheader
	ori	$a0, $zero, 14
	ori	$a3, $zero, 15
	b	.LBB3_80
	.p2align	4, , 16
.LBB3_79:                               #   in Loop: Header=BB3_80 Depth=1
	ldx.bu	$a1, $s7, $a5
	ldx.bu	$a2, $t1, $a5
	add.w	$t5, $t5, $a1
	addi.d	$t3, $t3, 8
	add.w	$t4, $t4, $a2
	bgeu	$t3, $s0, .LBB3_67
.LBB3_80:                               # %vec.epilog.scalar.ph207
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $t3, 0
	beqz	$a5, .LBB3_82
# %bb.81:                               #   in Loop: Header=BB3_80 Depth=1
	addi.d	$t6, $t6, 1
	slt	$a1, $a0, $a5
	maskeqz	$a2, $s4, $a1
	add.d	$t5, $a2, $t5
	maskeqz	$a1, $s5, $a1
	add.d	$t4, $a1, $t4
	slti	$a1, $a5, 15
	masknez	$a2, $a3, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a2
	slli.w	$a5, $a1, 4
	ld.w	$t2, $t3, 4
	bnez	$t2, .LBB3_83
	b	.LBB3_79
	.p2align	4, , 16
.LBB3_82:                               #   in Loop: Header=BB3_80 Depth=1
	move	$a5, $zero
	ld.w	$t2, $t3, 4
	beqz	$t2, .LBB3_79
.LBB3_83:                               #   in Loop: Header=BB3_80 Depth=1
	addi.d	$t6, $t6, 1
	slt	$a1, $a0, $t2
	maskeqz	$a2, $s4, $a1
	add.d	$t5, $t5, $a2
	maskeqz	$a2, $s5, $a1
	add.d	$t4, $t4, $a2
	masknez	$a2, $t2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	add.w	$a5, $a5, $a1
	b	.LBB3_79
.Lfunc_end3:
	.size	choose_table, .Lfunc_end3-choose_table
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_30-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_30-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_23-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_23-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_38-.LJTI3_0
	.word	.LBB3_70-.LJTI3_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function best_scalefac_store
.LCPI4_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	best_scalefac_store
	.p2align	5
	.type	best_scalefac_store,@function
best_scalefac_store:                    # @best_scalefac_store
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
	addi.d	$s0, $a4, 48
	ori	$a6, $zero, 240
	mul.d	$a6, $a1, $a6
	add.d	$a6, $s0, $a6
	ori	$a7, $zero, 120
	mul.d	$a7, $a2, $a7
	add.d	$fp, $a6, $a7
	ld.wu	$t0, $fp, 80
	alsl.d	$a6, $a1, $a1, 3
	alsl.d	$a7, $a2, $a2, 3
	beqz	$t0, .LBB4_11
# %bb.1:                                # %.lr.ph152
	move	$t4, $zero
	ori	$t1, $zero, 244
	mul.d	$t1, $a2, $t1
	ori	$t2, $zero, 488
	mul.d	$t2, $a1, $t2
	add.d	$t2, $a5, $t2
	add.d	$t1, $t2, $t1
	slli.d	$t3, $a6, 9
	pcalau12i	$t2, %got_pc_hi20(scalefac_band)
	ld.d	$t2, $t2, %got_pc_lo12(scalefac_band)
	slli.d	$t5, $a7, 8
	add.d	$t3, $t3, $t5
	add.d	$t3, $a3, $t3
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                # %._crit_edge221
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$t5, $t4, 1
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	move	$t4, $t5
	bgeu	$t5, $t0, .LBB4_11
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	slli.d	$t5, $t4, 2
	ldx.w	$t6, $t1, $t5
	blez	$t6, .LBB4_2
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	ldx.w	$t6, $t2, $t5
	addi.d	$t5, $t4, 1
	slli.d	$t7, $t5, 2
	ldx.w	$t7, $t2, $t7
	bge	$t6, $t7, .LBB4_9
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$t8, $t6, $t3, 2
	.p2align	4, , 16
.LBB4_7:                                # %.lr.ph
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s1, $t8, 0
	bnez	$s1, .LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=2
	addi.w	$t6, $t6, 1
	addi.d	$t8, $t8, 4
	bne	$t7, $t6, .LBB4_7
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_9:                                # %._crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	bne	$t6, $t7, .LBB4_3
.LBB4_10:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$t0, $t4, $t1, 2
	st.w	$zero, $t0, 0
	ld.wu	$t0, $fp, 80
	b	.LBB4_3
.LBB4_11:                               # %.preheader146
	ld.w	$t0, $fp, 84
	ori	$t1, $zero, 12
	bge	$t0, $t1, .LBB4_44
# %bb.12:                               # %.lr.ph162
	slli.d	$a6, $a6, 9
	slli.d	$a7, $a7, 8
	add.d	$a7, $a6, $a7
	add.d	$t2, $a3, $a7
	ori	$a6, $zero, 244
	mul.d	$a6, $a2, $a6
	ori	$t3, $zero, 488
	pcalau12i	$t4, %got_pc_hi20(scalefac_band)
	ld.d	$t4, $t4, %got_pc_lo12(scalefac_band)
	mul.d	$t3, $a1, $t3
	add.d	$t3, $a5, $t3
	add.d	$t3, $t3, $a6
	addi.d	$a6, $t4, 92
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_13:                               # %._crit_edge224
                                        #   in Loop: Header=BB4_15 Depth=1
	addi.d	$t0, $t0, 1
.LBB4_14:                               #   in Loop: Header=BB4_15 Depth=1
	beq	$t0, $t1, .LBB4_22
.LBB4_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
	slli.d	$t4, $t0, 3
	alsl.d	$t4, $t0, $t4, 2
	add.d	$t4, $t3, $t4
	ld.w	$t5, $t4, 88
	blez	$t5, .LBB4_13
# %bb.16:                               #   in Loop: Header=BB4_15 Depth=1
	slli.d	$t5, $t0, 2
	ldx.w	$t5, $a6, $t5
	addi.d	$t0, $t0, 1
	slli.d	$t6, $t0, 2
	ldx.w	$t6, $a6, $t6
	bge	$t5, $t6, .LBB4_20
# %bb.17:                               # %.lr.ph155.preheader
                                        #   in Loop: Header=BB4_15 Depth=1
	slli.d	$t7, $t5, 3
	alsl.d	$t7, $t5, $t7, 2
	add.d	$t7, $t2, $t7
	.p2align	4, , 16
.LBB4_18:                               # %.lr.ph155
                                        #   Parent Loop BB4_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t8, $t7, 0
	bnez	$t8, .LBB4_20
# %bb.19:                               #   in Loop: Header=BB4_18 Depth=2
	addi.w	$t5, $t5, 1
	addi.d	$t7, $t7, 12
	bne	$t6, $t5, .LBB4_18
	b	.LBB4_21
	.p2align	4, , 16
.LBB4_20:                               # %._crit_edge156
                                        #   in Loop: Header=BB4_15 Depth=1
	bne	$t5, $t6, .LBB4_14
.LBB4_21:                               # %._crit_edge156.thread
                                        #   in Loop: Header=BB4_15 Depth=1
	addi.d	$t4, $t4, 88
	st.w	$zero, $t4, 0
	b	.LBB4_14
.LBB4_22:                               # %._crit_edge163
	ld.w	$t0, $fp, 84
	ori	$t1, $zero, 11
	blt	$t1, $t0, .LBB4_44
# %bb.23:                               # %.lr.ph162.1
	add.d	$a3, $a7, $a3
	addi.d	$a7, $a3, 4
	ori	$t1, $zero, 244
	mul.d	$t1, $a2, $t1
	ori	$t2, $zero, 488
	mul.d	$t2, $a1, $t2
	add.d	$t2, $a5, $t2
	add.d	$t1, $t2, $t1
	ori	$t2, $zero, 12
	b	.LBB4_26
	.p2align	4, , 16
.LBB4_24:                               # %._crit_edge223
                                        #   in Loop: Header=BB4_26 Depth=1
	addi.d	$t0, $t0, 1
.LBB4_25:                               #   in Loop: Header=BB4_26 Depth=1
	beq	$t0, $t2, .LBB4_33
.LBB4_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_29 Depth 2
	slli.d	$t3, $t0, 3
	alsl.d	$t3, $t0, $t3, 2
	add.d	$t3, $t1, $t3
	ld.w	$t4, $t3, 92
	blez	$t4, .LBB4_24
# %bb.27:                               #   in Loop: Header=BB4_26 Depth=1
	slli.d	$t4, $t0, 2
	ldx.w	$t4, $a6, $t4
	addi.d	$t0, $t0, 1
	slli.d	$t5, $t0, 2
	ldx.w	$t5, $a6, $t5
	bge	$t4, $t5, .LBB4_31
# %bb.28:                               # %.lr.ph155.preheader.1
                                        #   in Loop: Header=BB4_26 Depth=1
	slli.d	$t6, $t4, 3
	alsl.d	$t6, $t4, $t6, 2
	add.d	$t6, $a7, $t6
	.p2align	4, , 16
.LBB4_29:                               # %.lr.ph155.1
                                        #   Parent Loop BB4_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, 0
	bnez	$t7, .LBB4_31
# %bb.30:                               #   in Loop: Header=BB4_29 Depth=2
	addi.w	$t4, $t4, 1
	addi.d	$t6, $t6, 12
	bne	$t5, $t4, .LBB4_29
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_31:                               # %._crit_edge156.1
                                        #   in Loop: Header=BB4_26 Depth=1
	bne	$t4, $t5, .LBB4_25
.LBB4_32:                               # %._crit_edge156.1.thread
                                        #   in Loop: Header=BB4_26 Depth=1
	addi.d	$t3, $t3, 92
	st.w	$zero, $t3, 0
	b	.LBB4_25
.LBB4_33:                               # %._crit_edge163.1
	ld.w	$a7, $fp, 84
	ori	$t0, $zero, 11
	blt	$t0, $a7, .LBB4_44
# %bb.34:                               # %.lr.ph162.2
	addi.d	$a3, $a3, 8
	ori	$t0, $zero, 244
	mul.d	$t0, $a2, $t0
	ori	$t1, $zero, 488
	mul.d	$t1, $a1, $t1
	add.d	$t1, $a5, $t1
	add.d	$t0, $t1, $t0
	ori	$t1, $zero, 12
	b	.LBB4_37
	.p2align	4, , 16
.LBB4_35:                               # %._crit_edge222
                                        #   in Loop: Header=BB4_37 Depth=1
	addi.d	$a7, $a7, 1
.LBB4_36:                               #   in Loop: Header=BB4_37 Depth=1
	beq	$a7, $t1, .LBB4_44
.LBB4_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_40 Depth 2
	slli.d	$t2, $a7, 3
	alsl.d	$t2, $a7, $t2, 2
	add.d	$t2, $t0, $t2
	ld.w	$t3, $t2, 96
	blez	$t3, .LBB4_35
# %bb.38:                               #   in Loop: Header=BB4_37 Depth=1
	slli.d	$t3, $a7, 2
	ldx.w	$t3, $a6, $t3
	addi.d	$a7, $a7, 1
	slli.d	$t4, $a7, 2
	ldx.w	$t4, $a6, $t4
	bge	$t3, $t4, .LBB4_42
# %bb.39:                               # %.lr.ph155.preheader.2
                                        #   in Loop: Header=BB4_37 Depth=1
	slli.d	$t5, $t3, 3
	alsl.d	$t5, $t3, $t5, 2
	add.d	$t5, $a3, $t5
	.p2align	4, , 16
.LBB4_40:                               # %.lr.ph155.2
                                        #   Parent Loop BB4_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t5, 0
	bnez	$t6, .LBB4_42
# %bb.41:                               #   in Loop: Header=BB4_40 Depth=2
	addi.w	$t3, $t3, 1
	addi.d	$t5, $t5, 12
	bne	$t4, $t3, .LBB4_40
	b	.LBB4_43
	.p2align	4, , 16
.LBB4_42:                               # %._crit_edge156.2
                                        #   in Loop: Header=BB4_37 Depth=1
	bne	$t3, $t4, .LBB4_36
.LBB4_43:                               # %._crit_edge156.2.thread
                                        #   in Loop: Header=BB4_37 Depth=1
	addi.d	$t2, $t2, 96
	st.w	$zero, $t2, 0
	b	.LBB4_36
.LBB4_44:                               # %.split.us
	ld.w	$a3, $fp, 76
	ld.w	$a6, $fp, 0
	ld.w	$a7, $fp, 68
	sub.d	$a3, $a6, $a3
	st.w	$a3, $fp, 0
	bnez	$a7, .LBB4_77
# %bb.45:
	ld.w	$a3, $fp, 64
	bnez	$a3, .LBB4_77
# %bb.46:                               # %.preheader145
	ld.w	$a3, $fp, 80
	beqz	$a3, .LBB4_49
# %bb.47:                               # %iter.check
	ori	$a7, $zero, 4
	bstrpick.d	$a6, $a3, 31, 0
	bgeu	$a3, $a7, .LBB4_50
# %bb.48:
	move	$t0, $zero
	move	$a7, $zero
	b	.LBB4_59
.LBB4_49:
	move	$a7, $zero
	b	.LBB4_61
.LBB4_50:                               # %vector.main.loop.iter.check
	ori	$a7, $zero, 16
	bgeu	$a3, $a7, .LBB4_52
# %bb.51:
	move	$t0, $zero
	move	$a7, $zero
	b	.LBB4_56
.LBB4_52:                               # %vector.ph
	bstrpick.d	$a7, $a6, 31, 4
	slli.d	$t0, $a7, 4
	ori	$a7, $zero, 488
	mul.d	$a7, $a1, $a7
	ori	$t1, $zero, 244
	mul.d	$t1, $a2, $t1
	add.d	$a7, $a7, $t1
	add.d	$a7, $a7, $a5
	xvrepli.b	$xr0, 0
	addi.d	$a7, $a7, 32
	move	$t1, $t0
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB4_53:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, -32
	xvld	$xr3, $a7, 0
	xvor.v	$xr0, $xr2, $xr0
	xvor.v	$xr1, $xr3, $xr1
	addi.d	$t1, $t1, -16
	addi.d	$a7, $a7, 64
	bnez	$t1, .LBB4_53
# %bb.54:                               # %middle.block
	xvor.v	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvor.v	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvor.v	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvor.v	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a7, $xr0, 0
	beq	$t0, $a6, .LBB4_61
# %bb.55:                               # %vec.epilog.iter.check
	andi	$t1, $a6, 12
	beqz	$t1, .LBB4_59
.LBB4_56:                               # %vec.epilog.ph
	move	$t1, $t0
	bstrpick.d	$t0, $a6, 31, 2
	pcalau12i	$t2, %pc_hi20(.LCPI4_0)
	vld	$vr0, $t2, %pc_lo12(.LCPI4_0)
	slli.d	$t0, $t0, 2
	vinsgr2vr.w	$vr1, $a7, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	sub.d	$a7, $t1, $t0
	ori	$t2, $zero, 488
	mul.d	$t2, $a1, $t2
	ori	$t3, $zero, 244
	mul.d	$t3, $a2, $t3
	add.d	$t2, $t2, $t3
	alsl.d	$t1, $t1, $t2, 2
	add.d	$t1, $a5, $t1
	.p2align	4, , 16
.LBB4_57:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t1, 0
	vor.v	$vr0, $vr1, $vr0
	addi.d	$a7, $a7, 4
	addi.d	$t1, $t1, 16
	bnez	$a7, .LBB4_57
# %bb.58:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vor.v	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vor.v	$vr0, $vr0, $vr1
	vpickve2gr.w	$a7, $vr0, 0
	beq	$t0, $a6, .LBB4_61
.LBB4_59:                               # %vec.epilog.scalar.ph.preheader
	ori	$t1, $zero, 488
	mul.d	$t1, $a1, $t1
	ori	$t2, $zero, 244
	mul.d	$t2, $a2, $t2
	add.d	$t1, $t1, $t2
	alsl.d	$t1, $t0, $t1, 2
	add.d	$t1, $a5, $t1
	sub.d	$a6, $a6, $t0
	.p2align	4, , 16
.LBB4_60:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $t1, 0
	or	$a7, $t0, $a7
	addi.d	$a6, $a6, -1
	addi.d	$t1, $t1, 4
	bnez	$a6, .LBB4_60
.LBB4_61:                               # %._crit_edge168
	ld.w	$a6, $fp, 84
	ori	$t0, $zero, 11
	bltu	$t0, $a6, .LBB4_64
# %bb.62:                               # %.preheader144.preheader
	addi.d	$t0, $a6, 1
	ori	$t1, $zero, 488
	mul.d	$t1, $a1, $t1
	ori	$t2, $zero, 244
	mul.d	$t2, $a2, $t2
	add.d	$t1, $t1, $t2
	slli.d	$t2, $a6, 3
	alsl.d	$t2, $a6, $t2, 2
	add.d	$t1, $t1, $t2
	add.d	$t1, $t1, $a5
	addi.d	$t1, $t1, 96
	ori	$t2, $zero, 12
	.p2align	4, , 16
.LBB4_63:                               # %.preheader144
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t1, -8
	ld.w	$t4, $t1, -4
	ld.w	$t5, $t1, 0
	or	$a7, $t3, $a7
	or	$a7, $t4, $a7
	or	$a7, $t5, $a7
	bstrpick.d	$t3, $t0, 31, 0
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 12
	bne	$t3, $t2, .LBB4_63
.LBB4_64:                               # %._crit_edge174
	beqz	$a7, .LBB4_77
# %bb.65:                               # %._crit_edge174
	andi	$a7, $a7, 1
	bnez	$a7, .LBB4_77
# %bb.66:                               # %.preheader143
	beqz	$a3, .LBB4_70
# %bb.67:                               # %.lr.ph177
	move	$a3, $zero
	ori	$a6, $zero, 244
	mul.d	$a6, $a2, $a6
	ori	$a7, $zero, 488
	mul.d	$a7, $a1, $a7
	add.d	$a7, $a5, $a7
	add.d	$a6, $a7, $a6
	.p2align	4, , 16
.LBB4_68:                               # =>This Inner Loop Header: Depth=1
	ld.wu	$a7, $a6, 0
	srli.d	$t0, $a7, 31
	add.w	$a7, $a7, $t0
	srli.d	$a7, $a7, 1
	st.w	$a7, $a6, 0
	ld.wu	$a7, $fp, 80
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 4
	bltu	$a3, $a7, .LBB4_68
# %bb.69:                               # %._crit_edge178.loopexit
	ld.w	$a6, $fp, 84
.LBB4_70:                               # %._crit_edge178
	ori	$a3, $zero, 11
	bltu	$a3, $a6, .LBB4_73
# %bb.71:                               # %.preheader.preheader
	addi.d	$a3, $a6, 1
	ori	$a7, $zero, 488
	mul.d	$a7, $a1, $a7
	ori	$t0, $zero, 244
	mul.d	$t0, $a2, $t0
	add.d	$a7, $a7, $t0
	slli.d	$t0, $a6, 3
	alsl.d	$a6, $a6, $t0, 2
	add.d	$a6, $a7, $a6
	add.d	$a6, $a6, $a5
	addi.d	$a6, $a6, 96
	ori	$a7, $zero, 12
	.p2align	4, , 16
.LBB4_72:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$t0, $a6, -8
	srli.d	$t1, $t0, 31
	ld.wu	$t2, $a6, -4
	add.w	$t0, $t0, $t1
	srli.d	$t0, $t0, 1
	st.w	$t0, $a6, -8
	srli.d	$t0, $t2, 31
	ld.wu	$t1, $a6, 0
	add.w	$t0, $t2, $t0
	srli.d	$t0, $t0, 1
	st.w	$t0, $a6, -4
	srli.d	$t0, $t1, 31
	add.w	$t0, $t1, $t0
	srli.d	$t0, $t0, 1
	st.w	$t0, $a6, 0
	bstrpick.d	$t0, $a3, 31, 0
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 12
	bne	$t0, $a7, .LBB4_72
.LBB4_73:                               # %._crit_edge181
	move	$s1, $a4
	ori	$a3, $zero, 1
	st.w	$a3, $fp, 68
	lu12i.w	$a3, 24414
	ori	$a3, $a3, 255
	st.w	$a3, $fp, 76
	move	$s2, $a0
	ld.w	$a3, $a0, 200
	ori	$a0, $zero, 244
	move	$s3, $a2
	mul.d	$a0, $a2, $a0
	ori	$a2, $zero, 488
	move	$s4, $a1
	mul.d	$a1, $a1, $a2
	move	$s5, $a5
	add.d	$a1, $a5, $a1
	ori	$a2, $zero, 2
	add.d	$a0, $a1, $a0
	move	$a1, $fp
	bne	$a3, $a2, .LBB4_75
# %bb.74:
	pcaddu18i	$ra, %call36(scale_bitcount)
	jirl	$ra, $ra, 0
	b	.LBB4_76
.LBB4_75:
	pcaddu18i	$ra, %call36(scale_bitcount_lsf)
	jirl	$ra, $ra, 0
.LBB4_76:
	move	$a4, $s1
	move	$a2, $s3
	move	$a5, $s5
	move	$a1, $s4
	move	$a0, $s2
.LBB4_77:
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB4_114
# %bb.78:
	ld.w	$a1, $a0, 200
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB4_114
# %bb.79:
	ori	$a1, $zero, 120
	mul.d	$a3, $a2, $a1
	add.d	$a1, $s0, $a3
	ld.w	$a6, $a1, 24
	beq	$a6, $a0, .LBB4_114
# %bb.80:
	add.d	$a0, $a4, $a3
	ld.w	$a3, $a0, 312
	ori	$a6, $zero, 2
	beq	$a3, $a6, .LBB4_114
# %bb.81:
	addi.d	$a0, $a0, 288
	ld.w	$a3, $a1, 68
	ld.w	$a6, $a0, 68
	bne	$a3, $a6, .LBB4_114
# %bb.82:
	ld.w	$a1, $a1, 64
	ld.w	$a3, $a0, 64
	bne	$a1, $a3, .LBB4_114
# %bb.83:
	alsl.d	$a1, $a2, $a4, 4
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 12
	ori	$a1, $zero, 244
	mul.d	$a1, $a2, $a1
	add.d	$a3, $a5, $a1
	ldx.w	$a5, $a5, $a1
	ld.w	$a6, $a3, 488
	slli.d	$a2, $a2, 4
	addi.d	$a1, $a3, 488
	addi.d	$a4, $a4, 12
	bne	$a5, $a6, .LBB4_90
# %bb.84:                               # %.lr.ph.1122.i
	ld.w	$a5, $a3, 4
	ld.w	$a6, $a1, 4
	bne	$a5, $a6, .LBB4_90
# %bb.85:                               # %.lr.ph.2124.i
	ld.w	$a5, $a3, 8
	ld.w	$a6, $a1, 8
	bne	$a5, $a6, .LBB4_90
# %bb.86:                               # %.lr.ph.3126.i
	ld.w	$a5, $a3, 12
	ld.w	$a6, $a1, 12
	bne	$a5, $a6, .LBB4_90
# %bb.87:                               # %.lr.ph.4.i
	ld.w	$a5, $a3, 16
	ld.w	$a6, $a1, 16
	bne	$a5, $a6, .LBB4_90
# %bb.88:                               # %.lr.ph.5.i
	ld.w	$a5, $a3, 20
	ld.w	$a6, $a1, 20
	bne	$a5, $a6, .LBB4_90
# %bb.89:                               # %._crit_edge102.i
	addi.w	$a5, $zero, -1
	st.d	$a5, $a1, 16
	st.d	$a5, $a1, 8
	st.d	$a5, $a1, 0
	ori	$a5, $zero, 1
	stx.w	$a5, $a4, $a2
.LBB4_90:                               # %.lr.ph.preheader.1.i
	ld.w	$a5, $a3, 24
	ld.w	$a6, $a1, 24
	bne	$a5, $a6, .LBB4_96
# %bb.91:                               # %.lr.ph.1.1.i
	ld.w	$a5, $a3, 28
	ld.w	$a6, $a1, 28
	bne	$a5, $a6, .LBB4_96
# %bb.92:                               # %.lr.ph.1.2.i
	ld.w	$a5, $a3, 32
	ld.w	$a6, $a1, 32
	bne	$a5, $a6, .LBB4_96
# %bb.93:                               # %.lr.ph.1.3.i
	ld.w	$a5, $a3, 36
	ld.w	$a6, $a1, 36
	bne	$a5, $a6, .LBB4_96
# %bb.94:                               # %.lr.ph.1.4.i
	ld.w	$a5, $a3, 40
	ld.w	$a6, $a1, 40
	bne	$a5, $a6, .LBB4_96
# %bb.95:                               # %._crit_edge102.1.i
	addi.w	$a5, $zero, -1
	st.w	$a5, $a3, 528
	st.d	$a5, $a3, 520
	st.d	$a5, $a3, 512
	add.d	$a5, $a4, $a2
	ori	$a6, $zero, 1
	st.w	$a6, $a5, 4
.LBB4_96:                               # %.lr.ph.preheader.2.i
	ld.w	$a5, $a3, 44
	ld.w	$a6, $a1, 44
	bne	$a5, $a6, .LBB4_102
# %bb.97:                               # %.lr.ph.2.1.i
	ld.w	$a5, $a3, 48
	ld.w	$a6, $a1, 48
	bne	$a5, $a6, .LBB4_102
# %bb.98:                               # %.lr.ph.2.2.i
	ld.w	$a5, $a3, 52
	ld.w	$a6, $a1, 52
	bne	$a5, $a6, .LBB4_102
# %bb.99:                               # %.lr.ph.2.3.i
	ld.w	$a5, $a3, 56
	ld.w	$a6, $a1, 56
	bne	$a5, $a6, .LBB4_102
# %bb.100:                              # %.lr.ph.2.4.i
	ld.w	$a5, $a3, 60
	ld.w	$a6, $a1, 60
	bne	$a5, $a6, .LBB4_102
# %bb.101:                              # %._crit_edge102.2.i
	addi.w	$a5, $zero, -1
	st.w	$a5, $a3, 548
	st.d	$a5, $a3, 540
	st.d	$a5, $a3, 532
	add.d	$a5, $a4, $a2
	ori	$a6, $zero, 1
	st.w	$a6, $a5, 8
.LBB4_102:                              # %.lr.ph.preheader.3.i
	ld.w	$a5, $a3, 64
	ld.w	$a6, $a1, 64
	bne	$a5, $a6, .LBB4_108
# %bb.103:                              # %.lr.ph.3.1.i
	ld.w	$a5, $a3, 68
	ld.w	$a6, $a1, 68
	bne	$a5, $a6, .LBB4_108
# %bb.104:                              # %.lr.ph.3.2.i
	ld.w	$a5, $a3, 72
	ld.w	$a6, $a1, 72
	bne	$a5, $a6, .LBB4_108
# %bb.105:                              # %.lr.ph.3.3.i
	ld.w	$a5, $a3, 76
	ld.w	$a6, $a1, 76
	bne	$a5, $a6, .LBB4_108
# %bb.106:                              # %.lr.ph.3.4.i
	ld.w	$a5, $a3, 80
	ld.w	$a6, $a1, 80
	bne	$a5, $a6, .LBB4_108
# %bb.107:                              # %._crit_edge102.3.i
	addi.w	$a5, $zero, -1
	st.w	$a5, $a3, 568
	st.d	$a5, $a3, 560
	st.d	$a5, $a3, 552
	add.d	$a2, $a4, $a2
	ori	$a3, $zero, 1
	st.w	$a3, $a2, 12
.LBB4_108:                              # %.preheader.i
	ld.w	$a4, $a1, 0
	move	$a2, $zero
	move	$a3, $zero
	srai.d	$a5, $a4, 63
	andn	$a5, $a4, $a5
	ld.w	$a6, $a1, 4
	nor	$a4, $a4, $zero
	bstrpick.d	$a7, $a4, 31, 31
	addi.w	$a4, $zero, -1
	slt	$t0, $a4, $a6
	slt	$t1, $a6, $a5
	maskeqz	$t2, $a5, $t1
	masknez	$a6, $a6, $t1
	or	$a6, $t2, $a6
	add.d	$a7, $t0, $a7
	ld.w	$t1, $a1, 8
	masknez	$a5, $a5, $t0
	maskeqz	$a6, $a6, $t0
	or	$a5, $a6, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 12
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 16
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 20
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 24
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 28
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 32
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 36
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a5, $t0, $a5
	slt	$a6, $a4, $t1
	slt	$t0, $t1, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $t1, $t0
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $a6
	ld.w	$t1, $a1, 40
	maskeqz	$t0, $t0, $a6
	masknez	$a5, $a5, $a6
	or	$a6, $t0, $a5
	slt	$t0, $a4, $t1
	slt	$a5, $t1, $a6
	maskeqz	$t2, $a6, $a5
	masknez	$a5, $t1, $a5
	or	$t1, $t2, $a5
	add.d	$a5, $a7, $t0
	ld.w	$a7, $a1, 44
	maskeqz	$t1, $t1, $t0
	masknez	$a6, $a6, $t0
	or	$a6, $t1, $a6
	srai.d	$t0, $a7, 63
	ld.w	$t1, $a1, 48
	andn	$t0, $a7, $t0
	nor	$a7, $a7, $zero
	bstrpick.d	$a7, $a7, 31, 31
	slt	$t2, $a4, $t1
	slt	$t3, $t1, $t0
	masknez	$t1, $t1, $t3
	maskeqz	$t3, $t0, $t3
	or	$t1, $t3, $t1
	masknez	$t0, $t0, $t2
	ld.w	$t3, $a1, 52
	maskeqz	$t1, $t1, $t2
	or	$t0, $t1, $t0
	add.d	$a7, $t2, $a7
	slt	$t1, $a4, $t3
	slt	$t2, $t3, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	ld.w	$t3, $a1, 56
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $t1
	slt	$t1, $a4, $t3
	slt	$t2, $t3, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	ld.w	$t3, $a1, 60
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $t1
	slt	$t1, $a4, $t3
	slt	$t2, $t3, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	ld.w	$t3, $a1, 64
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $t1
	slt	$t1, $a4, $t3
	slt	$t2, $t3, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	ld.w	$t3, $a1, 68
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $t1
	slt	$t1, $a4, $t3
	slt	$t2, $t3, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	ld.w	$t3, $a1, 72
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $t1
	slt	$t1, $a4, $t3
	slt	$t2, $t3, $t0
	masknez	$t3, $t3, $t2
	maskeqz	$t2, $t0, $t2
	or	$t2, $t2, $t3
	maskeqz	$t2, $t2, $t1
	ld.w	$t3, $a1, 76
	masknez	$t0, $t0, $t1
	or	$t0, $t2, $t0
	add.d	$a7, $a7, $t1
	slt	$t1, $t3, $t0
	maskeqz	$t2, $t0, $t1
	masknez	$t1, $t3, $t1
	or	$t1, $t2, $t1
	slt	$t2, $a4, $t3
	maskeqz	$t1, $t1, $t2
	ld.w	$a1, $a1, 80
	masknez	$t0, $t0, $t2
	or	$t0, $t1, $t0
	add.d	$a7, $a7, $t2
	slt	$a4, $a4, $a1
	slt	$t1, $a1, $t0
	maskeqz	$t2, $t0, $t1
	masknez	$a1, $a1, $t1
	or	$a1, $t2, $a1
	maskeqz	$a1, $a1, $a4
	masknez	$t0, $t0, $a4
	or	$a1, $a1, $t0
	add.d	$a4, $a7, $a4
	ori	$a7, $zero, 64
	b	.LBB4_110
	.p2align	4, , 16
.LBB4_109:                              #   in Loop: Header=BB4_110 Depth=1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 1
	beq	$a2, $a7, .LBB4_114
.LBB4_110:                              # =>This Inner Loop Header: Depth=1
	pcalau12i	$t0, %pc_hi20(scfsi_calc.slen1_n)
	addi.d	$t0, $t0, %pc_lo12(scfsi_calc.slen1_n)
	ldx.w	$t0, $t0, $a2
	bge	$a6, $t0, .LBB4_109
# %bb.111:                              #   in Loop: Header=BB4_110 Depth=1
	pcalau12i	$t0, %pc_hi20(scfsi_calc.slen2_n)
	addi.d	$t0, $t0, %pc_lo12(scfsi_calc.slen2_n)
	ldx.w	$t0, $t0, $a2
	bge	$a1, $t0, .LBB4_109
# %bb.112:                              #   in Loop: Header=BB4_110 Depth=1
	pcalau12i	$t0, %pc_hi20(scfsi_calc.slen1_tab)
	addi.d	$t0, $t0, %pc_lo12(scfsi_calc.slen1_tab)
	ldx.w	$t0, $t0, $a2
	pcalau12i	$t1, %pc_hi20(scfsi_calc.slen2_tab)
	addi.d	$t1, $t1, %pc_lo12(scfsi_calc.slen2_tab)
	ldx.w	$t1, $t1, $a2
	ld.w	$t2, $a0, 76
	mul.d	$t0, $t0, $a5
	mul.d	$t1, $t1, $a4
	add.w	$t0, $t1, $t0
	bge	$t0, $t2, .LBB4_109
# %bb.113:                              #   in Loop: Header=BB4_110 Depth=1
	st.w	$t0, $a0, 76
	st.w	$a3, $a0, 16
	b	.LBB4_109
.LBB4_114:                              # %scfsi_calc.exit
	ld.w	$a0, $fp, 76
	ld.w	$a1, $fp, 0
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 0
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
.Lfunc_end4:
	.size	best_scalefac_store, .Lfunc_end4-best_scalefac_store
                                        # -- End function
	.type	subdv_table,@object             # @subdv_table
	.data
	.globl	subdv_table
	.p2align	2, 0x0
subdv_table:
	.space	8
	.space	8
	.space	8
	.space	8
	.space	8
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	7                               # 0x7
	.size	subdv_table, 184

	.type	huf_tbl_noESC,@object           # @huf_tbl_noESC
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
huf_tbl_noESC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	13                              # 0xd
	.size	huf_tbl_noESC, 60

	.type	cb_esc_buf,@object              # @cb_esc_buf
	.local	cb_esc_buf
	.comm	cb_esc_buf,1152,4
	.type	cb_esc_end,@object              # @cb_esc_end
	.local	cb_esc_end
	.comm	cb_esc_end,8,8
	.type	scfsi_calc.slen1_n,@object      # @scfsi_calc.slen1_n
	.p2align	2, 0x0
scfsi_calc.slen1_n:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	8                               # 0x8
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	16                              # 0x10
	.size	scfsi_calc.slen1_n, 64

	.type	scfsi_calc.slen2_n,@object      # @scfsi_calc.slen2_n
	.p2align	2, 0x0
scfsi_calc.slen2_n:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	8                               # 0x8
	.size	scfsi_calc.slen2_n, 64

	.type	scfsi_calc.slen1_tab,@object    # @scfsi_calc.slen1_tab
	.p2align	2, 0x0
scfsi_calc.slen1_tab:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.size	scfsi_calc.slen1_tab, 64

	.type	scfsi_calc.slen2_tab,@object    # @scfsi_calc.slen2_tab
	.p2align	2, 0x0
scfsi_calc.slen2_tab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.size	scfsi_calc.slen2_tab, 64

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cb_esc_buf
