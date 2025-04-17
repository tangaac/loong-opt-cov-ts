	.file	"quantize-pvt.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function iteration_init
.LCPI0_0:
	.dword	0x3ff5555555555555              # double 1.3333333333333333
	.text
	.globl	iteration_init
	.p2align	5
	.type	iteration_init,@function
iteration_init:                         # @iteration_init
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs2, $sp, 0                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 168
	move	$s0, $a1
	st.w	$zero, $a1, 8
	bnez	$a0, .LBB0_9
# %bb.1:                                # %.preheader70
	ld.w	$a0, $fp, 192
	ld.w	$a1, $fp, 224
	pcalau12i	$a2, %pc_hi20(sfBandIndex)
	addi.d	$a2, $a2, %pc_lo12(sfBandIndex)
	alsl.d	$a0, $a0, $a0, 1
	add.w	$a0, $a0, $a1
	ori	$a1, $zero, 148
	mul.d	$a0, $a0, $a1
	xvldx	$xr0, $a2, $a0
	add.d	$a0, $a2, $a0
	xvld	$xr1, $a0, 32
	pcalau12i	$a1, %pc_hi20(scalefac_band)
	addi.d	$a1, $a1, %pc_lo12(scalefac_band)
	xvst	$xr0, $a1, 0
	xvst	$xr1, $a1, 32
	xvld	$xr0, $a0, 64
	xvld	$xr1, $a0, 96
	vld	$vr2, $a0, 128
	ld.w	$a0, $a0, 144
	xvst	$xr0, $a1, 64
	xvst	$xr1, $a1, 96
	vst	$vr2, $a1, 128
	st.w	$a0, $a1, 144
	st.w	$zero, $s0, 0
	pcalau12i	$a0, %pc_hi20(ATH_l)
	addi.d	$a1, $a0, %pc_lo12(ATH_l)
	pcalau12i	$a0, %pc_hi20(ATH_s)
	addi.d	$a2, $a0, %pc_lo12(ATH_s)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(compute_ath)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(pow43)
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a1, %pc_lo12(.LCPI0_0)
	addi.d	$s3, $a0, %pc_lo12(pow43)
	lu12i.w	$s1, 2
	ori	$s4, $s1, 16
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s2, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s3, 0
	addi.w	$s2, $s2, 1
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	bnez	$s4, .LBB0_2
# %bb.3:                                # %.preheader68.preheader
	pcalau12i	$a0, %pc_hi20(pow43)
	addi.d	$s2, $a0, %pc_lo12(pow43)
	addi.d	$s3, $s2, 8
	fld.d	$fs0, $s2, 0
	pcalau12i	$a0, %pc_hi20(adj43)
	addi.d	$s4, $a0, %pc_lo12(adj43)
	ori	$s5, $zero, 1
	ori	$s6, $s1, 15
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB0_4:                                # %.preheader68
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fs1, $s3, 0
	bstrpick.d	$a0, $s5, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fs2, $fa1
	fadd.d	$fa0, $fa0, $fs1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fs2, $fa0
	fst.d	$fa0, $s4, 0
	addi.d	$s4, $s4, 8
	addi.d	$s6, $s6, -1
	addi.d	$s3, $s3, 8
	addi.w	$s5, $s5, 1
	fmov.d	$fa0, $fs1
	bnez	$s6, .LBB0_4
# %bb.5:
	pcalau12i	$a0, %pc_hi20(adj43)
	addi.d	$a0, $a0, %pc_lo12(adj43)
	lu12i.w	$a1, 16
	ori	$a1, $a1, 120
	lu52i.d	$a2, $zero, 1022
	stx.d	$a2, $a0, $a1
	addi.d	$s2, $s2, 8
	ori	$s1, $s1, 15
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fs1, $s2, 0
	fadd.d	$fa0, $fs0, $fs1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -920
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	fmov.d	$fs0, $fs1
	bnez	$s1, .LBB0_6
# %bb.7:                                # %.preheader67.preheader
	move	$s1, $zero
	addi.w	$s2, $zero, -210
	pcalau12i	$a0, %pc_hi20(ipow20)
	addi.d	$s3, $a0, %pc_lo12(ipow20)
	pcalau12i	$a0, %pc_hi20(pow20)
	addi.d	$s4, $a0, %pc_lo12(pow20)
	ori	$s5, $zero, 2048
	.p2align	4, , 16
.LBB0_8:                                # %.preheader67
                                        # =>This Inner Loop Header: Depth=1
	movgr2fr.w	$fa0, $s2
	ffint.d.w	$fs0, $fa0
	vldi	$vr0, -824
	fmul.d	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fstx.d	$fa0, $s3, $s1
	vldi	$vr0, -944
	fmul.d	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	fstx.d	$fa0, $s4, $s1
	addi.d	$s1, $s1, 8
	addi.w	$s2, $s2, 1
	bne	$s1, $s5, .LBB0_8
.LBB0_9:                                # %.loopexit
	pcalau12i	$a0, %pc_hi20(convert_mdct)
	ld.w	$a2, $fp, 228
	st.w	$zero, $a0, %pc_lo12(convert_mdct)
	pcalau12i	$a1, %pc_hi20(reduce_sidechannel)
	ori	$a3, $zero, 2
	st.w	$zero, $a1, %pc_lo12(reduce_sidechannel)
	bne	$a2, $a3, .LBB0_11
# %bb.10:
	ori	$a2, $zero, 1
	st.w	$a2, $a0, %pc_lo12(convert_mdct)
	st.w	$a2, $a1, %pc_lo12(reduce_sidechannel)
.LBB0_11:
	ld.w	$a1, $fp, 200
	ld.w	$a0, $fp, 204
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_22
# %bb.12:                               # %.preheader66.lr.ph
	blt	$a0, $a2, .LBB0_25
# %bb.13:                               # %.preheader66.us.preheader
	move	$a2, $zero
	bstrpick.d	$a3, $a0, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $s0, 488
	ori	$a5, $zero, 8
	ori	$a6, $zero, 120
	ori	$a7, $zero, 21
	ori	$t0, $zero, 12
	xvrepli.b	$xr0, 0
	xvrepli.w	$xr1, 21
	xvrepli.w	$xr2, 12
	move	$t1, $s0
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %._crit_edge.us
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a4, $a4, 240
	addi.d	$t1, $t1, 240
	beq	$a2, $a1, .LBB0_23
.LBB0_15:                               # %.preheader66.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_21 Depth 2
	bgeu	$a0, $a5, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	move	$t3, $zero
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_17:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$t2, $a4
	move	$t3, $a3
	.p2align	4, , 16
.LBB0_18:                               # %vector.body
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t2, -416
	ld.w	$t5, $t2, -296
	ld.w	$t6, $t2, -176
	ld.w	$t7, $t2, -56
	ld.w	$t8, $t2, 64
	ld.w	$s1, $t2, 184
	ld.w	$s2, $t2, 304
	ld.w	$s3, $t2, 424
	xvinsgr2vr.w	$xr3, $t4, 0
	xvinsgr2vr.w	$xr3, $t5, 1
	xvinsgr2vr.w	$xr3, $t6, 2
	xvinsgr2vr.w	$xr3, $t7, 3
	xvinsgr2vr.w	$xr3, $t8, 4
	xvinsgr2vr.w	$xr3, $s1, 5
	xvinsgr2vr.w	$xr3, $s2, 6
	xvinsgr2vr.w	$xr3, $s3, 7
	xvseqi.w	$xr3, $xr3, 2
	xvbitsel.v	$xr4, $xr1, $xr0, $xr3
	xvbitsel.v	$xr3, $xr2, $xr0, $xr3
	xvpickve2gr.w	$t4, $xr4, 0
	st.w	$t4, $t2, -360
	xvpickve2gr.w	$t4, $xr4, 1
	st.w	$t4, $t2, -240
	xvpickve2gr.w	$t4, $xr4, 2
	st.w	$t4, $t2, -120
	xvpickve2gr.w	$t4, $xr4, 3
	st.w	$t4, $t2, 0
	xvpickve2gr.w	$t4, $xr4, 4
	st.w	$t4, $t2, 120
	xvpickve2gr.w	$t4, $xr4, 5
	st.w	$t4, $t2, 240
	xvpickve2gr.w	$t4, $xr4, 6
	st.w	$t4, $t2, 360
	xvpickve2gr.w	$t4, $xr4, 7
	st.w	$t4, $t2, 480
	xvpickve2gr.w	$t4, $xr3, 0
	st.w	$t4, $t2, -356
	xvpickve2gr.w	$t4, $xr3, 1
	st.w	$t4, $t2, -236
	xvpickve2gr.w	$t4, $xr3, 2
	st.w	$t4, $t2, -116
	xvpickve2gr.w	$t4, $xr3, 3
	st.w	$t4, $t2, 4
	xvpickve2gr.w	$t4, $xr3, 4
	st.w	$t4, $t2, 124
	xvpickve2gr.w	$t4, $xr3, 5
	st.w	$t4, $t2, 244
	xvpickve2gr.w	$t4, $xr3, 6
	st.w	$t4, $t2, 364
	xvpickve2gr.w	$t4, $xr3, 7
	st.w	$t4, $t2, 484
	addi.d	$t3, $t3, -8
	addi.d	$t2, $t2, 960
	bnez	$t3, .LBB0_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$t3, $a3
	beq	$a3, $a0, .LBB0_14
.LBB0_20:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	mul.d	$t2, $t3, $a6
	sub.d	$t3, $a0, $t3
	.p2align	4, , 16
.LBB0_21:                               # %scalar.ph
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $t1, $t2
	ld.w	$t5, $t4, 72
	addi.d	$t5, $t5, -2
	sltui	$t5, $t5, 1
	masknez	$t6, $a7, $t5
	masknez	$t5, $t0, $t5
	st.w	$t6, $t4, 128
	st.w	$t5, $t4, 132
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 120
	bnez	$t3, .LBB0_21
	b	.LBB0_14
.LBB0_22:                               # %.preheader65
	blt	$a0, $a2, .LBB0_25
.LBB0_23:                               # %.preheader.lr.ph
	move	$a0, $zero
	addi.d	$a1, $s0, 12
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB0_24:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a1, 0
	ld.w	$a2, $fp, 204
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, 16
	blt	$a0, $a2, .LBB0_24
.LBB0_25:                               # %._crit_edge
	fld.d	$fs2, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	iteration_init, .Lfunc_end0-iteration_init
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function compute_ath
.LCPI1_0:
	.dword	0x408f400000000000              # double 1000
.LCPI1_1:
	.dword	0x547d42aea2879f2e              # double 9.9999999999999997E+98
.LCPI1_2:
	.dword	0x4092000000000000              # double 1152
.LCPI1_3:
	.dword	0x3f947ae147ae147b              # double 0.02
.LCPI1_4:
	.dword	0xbfe999999999999a              # double -0.80000000000000004
.LCPI1_5:
	.dword	0xc00a666666666666              # double -3.2999999999999998
.LCPI1_6:
	.dword	0xbfe3333333333333              # double -0.59999999999999998
.LCPI1_7:
	.dword	0x400d1eb851eb851f              # double 3.6400000000000001
.LCPI1_8:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
.LCPI1_10:
	.dword	0x4078000000000000              # double 384
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.LCPI1_9:
	.dword	0xc069000000000000              # double -200
	.dword	0xc05c800000000000              # double -114
	.text
	.globl	compute_ath
	.p2align	5
	.type	compute_ath,@function
compute_ath:                            # @compute_ath
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
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 56                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 16
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI1_0)
	move	$s0, $a2
	move	$s1, $a1
	move	$s6, $zero
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa2, $fa1, $fa0
	pcalau12i	$a0, %pc_hi20(scalefac_band)
	addi.d	$s4, $a0, %pc_lo12(scalefac_band)
	lu12i.w	$a0, -382855
	ori	$a0, $a0, 3886
	lu32i.d	$a0, -179538
	lu52i.d	$s2, $a0, 1351
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_1)
	fst.d	$fa0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fs7, $a0, %pc_lo12(.LCPI1_2)
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI1_3)
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI1_4)
	pcalau12i	$a0, %pc_hi20(.LCPI1_5)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI1_5)
	pcalau12i	$a0, %pc_hi20(.LCPI1_6)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI1_6)
	pcalau12i	$a0, %pc_hi20(.LCPI1_7)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_7)
	pcalau12i	$a0, %pc_hi20(.LCPI1_8)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_8)
	pcalau12i	$a0, %pc_hi20(.LCPI1_9)
	addi.d	$s3, $a0, %pc_lo12(.LCPI1_9)
	ori	$a2, $zero, 21
	fst.d	$fa2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fa1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %.loopexit53
                                        #   in Loop: Header=BB1_2 Depth=1
	beq	$s6, $a2, .LBB1_6
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	move	$a0, $s6
	slli.d	$a1, $s6, 2
	ldx.w	$s8, $s4, $a1
	addi.d	$s6, $s6, 1
	slli.d	$a1, $s6, 2
	ldx.w	$s5, $s4, $a1
	slli.d	$a1, $a0, 3
	stx.d	$s2, $s1, $a1
	bge	$s8, $s5, .LBB1_1
# %bb.3:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	alsl.d	$s7, $a0, $s1, 3
	fld.d	$fs5, $sp, 8                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_4:                                # %.lr.ph
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $s8
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa0, $fs7
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fsel	$fs1, $fa0, $fs4, $fcc0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fadd.d	$fa0, $fs1, $fs0
	fmul.d	$fa0, $fa0, $fa0
	fmul.d	$fa0, $fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -870
	fmul.d	$fa0, $fa0, $fa1
	fmov.d	$fs6, $fs3
	fmov.d	$fs3, $fs0
	fld.d	$fa1, $sp, 32                   # 8-byte Folded Reload
	fmadd.d	$fs0, $fs2, $fa1, $fa0
	vldi	$vr1, -1008
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 148
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	fldx.d	$fa1, $s3, $a0
	fld.d	$fa2, $sp, 24                   # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $fa2, $fs0
	fmov.d	$fs0, $fs3
	fmov.d	$fs3, $fs6
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -988
	fdiv.d	$fa1, $fa0, $fa1
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fa2, $sp, 48                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fs5, $fa0
	addi.w	$s8, $s8, 1
	fsel	$fs5, $fa0, $fs5, $fcc0
	bne	$s5, $s8, .LBB1_4
# %bb.5:                                # %..loopexit53_crit_edge
                                        #   in Loop: Header=BB1_2 Depth=1
	fst.d	$fs5, $s7, 0
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	ori	$a2, $zero, 21
	b	.LBB1_1
.LBB1_6:                                # %.preheader.preheader
	move	$s6, $zero
	addi.d	$s1, $s4, 92
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_1)
	fst.d	$fa0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI1_10)
	fld.d	$fs6, $a0, %pc_lo12(.LCPI1_10)
	ori	$s4, $zero, 12
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	beq	$s6, $s4, .LBB1_12
.LBB1_8:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	move	$a0, $s6
	slli.d	$a1, $s6, 2
	ldx.w	$s5, $s1, $a1
	addi.d	$s6, $s6, 1
	slli.d	$a1, $s6, 2
	ldx.w	$s7, $s1, $a1
	slli.d	$a1, $a0, 3
	stx.d	$s2, $s0, $a1
	bge	$s5, $s7, .LBB1_7
# %bb.9:                                # %.lr.ph58.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	alsl.d	$s8, $a0, $s0, 3
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs7, $sp, 32                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_10:                               # %.lr.ph58
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movgr2fr.w	$fa0, $s5
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa0, $fs6
	fcmp.clt.d	$fcc0, $fa0, $fs4
	fmov.d	$fs5, $fs1
	fsel	$fs1, $fa0, $fs4, $fcc0
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fld.d	$fa0, $sp, 16                   # 8-byte Folded Reload
	fadd.d	$fa0, $fs1, $fa0
	fmul.d	$fa0, $fa0, $fa0
	fmul.d	$fa0, $fa0, $fs3
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -870
	fmul.d	$fa0, $fa0, $fa1
	fmadd.d	$fs2, $fs2, $fs7, $fa0
	vldi	$vr1, -1008
	fmov.d	$fa0, $fs1
	fmov.d	$fs1, $fs5
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 148
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	fldx.d	$fa1, $s3, $a0
	fmadd.d	$fa0, $fa0, $fs5, $fs2
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -988
	fdiv.d	$fa1, $fa0, $fa1
	vldi	$vr0, -988
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fa2, $sp, 48                   # 8-byte Folded Reload
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.w	$s5, $s5, 1
	fsel	$fs0, $fa0, $fs0, $fcc0
	bne	$s7, $s5, .LBB1_10
# %bb.11:                               # %..loopexit_crit_edge
                                        #   in Loop: Header=BB1_8 Depth=1
	fst.d	$fs0, $s8, 0
	b	.LBB1_7
.LBB1_12:
	fld.d	$fs7, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	compute_ath, .Lfunc_end1-compute_ath
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ATHformula
.LCPI2_0:
	.dword	0x3f947ae147ae147b              # double 0.02
.LCPI2_1:
	.dword	0xbfe999999999999a              # double -0.80000000000000004
.LCPI2_2:
	.dword	0xc00a666666666666              # double -3.2999999999999998
.LCPI2_3:
	.dword	0xbfe3333333333333              # double -0.59999999999999998
.LCPI2_4:
	.dword	0x400d1eb851eb851f              # double 3.6400000000000001
.LCPI2_5:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.LCPI2_6:
	.dword	0xc069000000000000              # double -200
	.dword	0xc05c800000000000              # double -114
	.text
	.globl	ATHformula
	.p2align	5
	.type	ATHformula,@function
ATHformula:                             # @ATHformula
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI2_0)
	move	$fp, $a0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fs0, $fa0, $fa1, $fcc0
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_1)
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI2_3)
	fmov.d	$fs1, $fa0
	fadd.d	$fa0, $fs0, $fa1
	fmul.d	$fa0, $fa0, $fa0
	fmul.d	$fa0, $fa0, $fa2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_4)
	vldi	$vr2, -870
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fs1, $fs1, $fa1, $fa0
	vldi	$vr1, -1008
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 148
	pcalau12i	$a1, %pc_hi20(.LCPI2_5)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI2_5)
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.LCPI2_6)
	addi.d	$a1, $a1, %pc_lo12(.LCPI2_6)
	fldx.d	$fa2, $a1, $a0
	fmadd.d	$fa0, $fa0, $fa1, $fs1
	fadd.d	$fa0, $fa0, $fa2
	vldi	$vr1, -988
	fdiv.d	$fa1, $fa0, $fa1
	vldi	$vr0, -988
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(pow)
	jr	$t8
.Lfunc_end2:
	.size	ATHformula, .Lfunc_end2-ATHformula
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ms_convert
.LCPI3_0:
	.dword	0x3fe6a09e667f3bcd              # double 0.70710678118654757
	.text
	.globl	ms_convert
	.p2align	5
	.type	ms_convert,@function
ms_convert:                             # @ms_convert
# %bb.0:                                # %vector.memcheck
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1024
	add.d	$a3, $a1, $a2
	bgeu	$a0, $a3, .LBB3_4
# %bb.1:                                # %vector.memcheck
	add.d	$a3, $a0, $a2
	bgeu	$a1, $a3, .LBB3_4
# %bb.2:                                # %scalar.ph.preheader
	lu12i.w	$a3, -2
	pcalau12i	$a4, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a4, %pc_lo12(.LCPI3_0)
	ori	$a3, $a3, 3584
	lu12i.w	$a4, 1
	ori	$a4, $a4, 512
	.p2align	4, , 16
.LBB3_3:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a3
	fldx.d	$fa1, $a5, $a4
	fldx.d	$fa2, $a5, $a2
	fadd.d	$fa3, $fa1, $fa2
	fmul.d	$fa3, $fa3, $fa0
	add.d	$a5, $a0, $a3
	fstx.d	$fa3, $a5, $a4
	fsub.d	$fa1, $fa1, $fa2
	fmul.d	$fa1, $fa1, $fa0
	addi.d	$a3, $a3, 8
	fstx.d	$fa1, $a5, $a2
	bnez	$a3, .LBB3_3
	b	.LBB3_6
.LBB3_4:                                # %vector.body.preheader
	lu12i.w	$a3, -2
	ori	$a3, $a3, 3584
	lu12i.w	$a4, 1
	ori	$a4, $a4, 512
	lu12i.w	$a5, 419827
	ori	$a5, $a5, 3021
	lu32i.d	$a5, 434334
	lu52i.d	$a5, $a5, 1022
	xvreplgr2vr.d	$xr0, $a5
	.p2align	4, , 16
.LBB3_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a3
	xvldx	$xr1, $a5, $a4
	xvldx	$xr2, $a5, $a2
	xvfadd.d	$xr3, $xr1, $xr2
	xvfmul.d	$xr3, $xr3, $xr0
	add.d	$a5, $a0, $a3
	xvstx	$xr3, $a5, $a4
	xvfsub.d	$xr1, $xr1, $xr2
	xvfmul.d	$xr1, $xr1, $xr0
	addi.d	$a3, $a3, 32
	xvstx	$xr1, $a5, $a2
	bnez	$a3, .LBB3_5
.LBB3_6:                                # %middle.block
	ret
.Lfunc_end3:
	.size	ms_convert, .Lfunc_end3-ms_convert
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function on_pe
.LCPI4_0:
	.dword	0xc087700000000000              # double -750
.LCPI4_1:
	.dword	0x3ff8cccccccccccd              # double 1.55
	.text
	.globl	on_pe
	.p2align	5
	.type	on_pe,@function
on_pe:                                  # @on_pe
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a5
	move	$fp, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s0, $a0
	addi.d	$a1, $sp, 8
	addi.d	$a2, $sp, 12
	move	$a0, $a4
	move	$a3, $a5
	pcaddu18i	$ra, %call36(ResvMaxBits)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s0, 204
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB4_3
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ld.w	$a1, $sp, 12
	ld.w	$a2, $sp, 8
	alsl.d	$a3, $s1, $s3, 4
	ori	$a5, $zero, 240
	mul.d	$a5, $s1, $a5
	add.d	$a5, $a5, $s2
	pcalau12i	$a6, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a6, %pc_lo12(.LCPI4_0)
	pcalau12i	$a6, %pc_hi20(.LCPI4_1)
	fld.d	$fa1, $a6, %pc_lo12(.LCPI4_1)
	addi.d	$a5, $a5, 72
	ori	$a6, $zero, 500
	ori	$a7, $zero, 4095
	.p2align	4, , 16
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa2, $a3, 0
	div.w	$a4, $a2, $a4
	st.w	$a4, $fp, 0
	fadd.d	$fa2, $fa2, $fa0
	ld.w	$t0, $a5, 0
	fdiv.d	$fa2, $fa2, $fa1
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t1, $fa2
	addi.d	$t0, $t0, -2
	sltui	$t0, $t0, 1
	maskeqz	$t0, $a6, $t0
	slt	$t2, $t1, $t0
	masknez	$t1, $t1, $t2
	maskeqz	$t0, $t0, $t2
	or	$t0, $t0, $t1
	slt	$t1, $t0, $a1
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a1, $t1
	or	$t0, $t0, $t1
	add.w	$t1, $t0, $a4
	slt	$t1, $a7, $t1
	sub.d	$t2, $a7, $a4
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $t2, $t1
	or	$t0, $t1, $t0
	add.d	$a4, $t0, $a4
	st.w	$a4, $fp, 0
	sub.w	$a1, $a1, $t0
	ld.w	$a4, $s0, 204
	addi.d	$a0, $a0, 1
	addi.d	$fp, $fp, 4
	addi.d	$a3, $a3, 8
	addi.d	$a5, $a5, 120
	blt	$a0, $a4, .LBB4_2
.LBB4_3:                                # %._crit_edge
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end4:
	.size	on_pe, .Lfunc_end4-on_pe
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function reduce_side
.LCPI5_0:
	.dword	0x3fd51eb851eb851f              # double 0.33000000000000002
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI5_1:
	.word	0x42fa0000                      # float 125
	.text
	.globl	reduce_side
	.p2align	5
	.type	reduce_side,@function
reduce_side:                            # @reduce_side
# %bb.0:
	ld.w	$a2, $a0, 4
	ori	$a3, $zero, 125
	blt	$a2, $a3, .LBB5_5
# %bb.1:
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI5_0)
	vldi	$vr2, -928
	fsub.d	$fa0, $fa2, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	movgr2fr.w	$fa1, $zero
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	bstrpick.d	$a3, $a2, 31, 0
	movgr2fr.d	$fa1, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	fld.s	$fa3, $a3, %pc_lo12(.LCPI5_1)
	ffint.s.l	$fa2, $fa1
	fneg.s	$fa1, $fa2
	fmadd.s	$fa1, $fa1, $fa0, $fa2
	fcmp.cule.s	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB5_3
# %bb.2:
	ld.w	$a2, $a0, 0
	movgr2fr.w	$fa3, $a2
	ffint.s.w	$fa3, $fa3
	fmadd.s	$fa0, $fa2, $fa0, $fa3
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	st.w	$a2, $a0, 0
	ftintrz.w.s	$fa0, $fa1
	movfr2gr.s	$a2, $fa0
	b	.LBB5_4
.LBB5_3:
	ld.w	$a3, $a0, 0
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, -125
	st.w	$a2, $a0, 0
	ori	$a2, $zero, 125
.LBB5_4:                                # %.sink.split
	st.w	$a2, $a0, 4
.LBB5_5:
	ld.w	$a3, $a0, 0
	lu12i.w	$a4, 1
	ori	$a5, $a4, 1695
	bge	$a5, $a1, .LBB5_9
# %bb.6:                                # %.split.us.preheader
	blt	$a3, $a4, .LBB5_8
# %bb.7:
	ori	$a1, $zero, 4095
	st.w	$a1, $a0, 0
.LBB5_8:                                # %.split.us.1
	ori	$a1, $zero, 4095
	blt	$a1, $a2, .LBB5_12
	b	.LBB5_13
.LBB5_9:                                # %.split.preheader
	bstrpick.d	$a4, $a1, 31, 31
	add.w	$a1, $a1, $a4
	srai.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1200
	bge	$a1, $a3, .LBB5_11
# %bb.10:
	st.w	$a1, $a0, 0
.LBB5_11:                               # %.split.1
	bge	$a1, $a2, .LBB5_13
.LBB5_12:                               # %.split32.us.sink.split
	st.w	$a1, $a0, 4
.LBB5_13:                               # %.split32.us
	ret
.Lfunc_end5:
	.size	reduce_side, .Lfunc_end5-reduce_side
                                        # -- End function
	.globl	inner_loop                      # -- Begin function inner_loop
	.p2align	5
	.type	inner_loop,@function
inner_loop:                             # @inner_loop
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a4
	ld.w	$a4, $a4, 12
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	addi.d	$a0, $a4, -1
	st.w	$a0, $fp, 12
	.p2align	4, , 16
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 12
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(count_bits)
	jirl	$ra, $ra, 0
	blt	$s0, $a0, .LBB6_1
# %bb.2:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	inner_loop, .Lfunc_end6-inner_loop
                                        # -- End function
	.globl	scale_bitcount                  # -- Begin function scale_bitcount
	.p2align	5
	.type	scale_bitcount,@function
scale_bitcount:                         # @scale_bitcount
# %bb.0:
	ld.w	$a2, $a1, 24
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB7_3
# %bb.1:                                # %.preheader89
	ld.w	$a2, $a0, 88
	ld.w	$a3, $a0, 100
	ld.w	$a4, $a0, 112
	ld.w	$a5, $a0, 160
	ld.w	$a6, $a0, 172
	ld.w	$a7, $a0, 124
	ld.w	$t0, $a0, 136
	ld.w	$t1, $a0, 148
	slt	$t2, $a6, $a5
	ld.w	$t3, $a0, 184
	masknez	$a6, $a6, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $a6
	slt	$a6, $t3, $a5
	ld.w	$t2, $a0, 196
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t3, $a6
	or	$a5, $a5, $a6
	slt	$a6, $t2, $a5
	ld.w	$t3, $a0, 208
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t2, $a6
	or	$a5, $a5, $a6
	slt	$a6, $t3, $a5
	ld.w	$t2, $a0, 220
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t3, $a6
	or	$a5, $a5, $a6
	slt	$a6, $t2, $a5
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $t2, $a6
	or	$a6, $a5, $a6
	slt	$a5, $a3, $a2
	masknez	$a3, $a3, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a3
	slt	$a3, $a4, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a7, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a7, $a3
	or	$a2, $a2, $a3
	slt	$a3, $t0, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $t0, $a3
	or	$a2, $a2, $a3
	slt	$a3, $t1, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $t1, $a3
	or	$a7, $a2, $a3
	ld.w	$t0, $a0, 92
	ld.w	$a4, $a0, 104
	ld.w	$t1, $a0, 164
	ld.w	$a5, $a0, 116
	ld.w	$a3, $a0, 128
	ld.w	$a2, $a0, 140
	slt	$t2, $t1, $a6
	ld.w	$t3, $a0, 176
	maskeqz	$a6, $a6, $t2
	masknez	$t1, $t1, $t2
	or	$a6, $a6, $t1
	slt	$t1, $t3, $a6
	ld.w	$t2, $a0, 188
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t3, $t1
	or	$a6, $a6, $t1
	slt	$t1, $t2, $a6
	ld.w	$t3, $a0, 200
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t2, $t1
	or	$a6, $a6, $t1
	slt	$t1, $t3, $a6
	ld.w	$t2, $a0, 212
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t3, $t1
	or	$a6, $a6, $t1
	slt	$t1, $t2, $a6
	maskeqz	$a6, $a6, $t1
	ld.w	$t3, $a0, 224
	masknez	$t1, $t2, $t1
	ld.w	$t2, $a0, 152
	or	$a6, $a6, $t1
	slt	$t1, $t3, $a6
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t3, $t1
	or	$t1, $a6, $t1
	slt	$a6, $t0, $a7
	maskeqz	$a7, $a7, $a6
	masknez	$a6, $t0, $a6
	or	$a6, $a7, $a6
	slt	$a7, $a4, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a4, $a4, $a7
	or	$a4, $a6, $a4
	slt	$a6, $a5, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a5, $a5, $a6
	or	$a4, $a4, $a5
	slt	$a5, $a3, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a3, $a3, $a5
	or	$a3, $a4, $a3
	slt	$a4, $a2, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a2, $a2, $a4
	or	$a2, $a3, $a2
	slt	$a3, $t2, $a2
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $t2, $a3
	or	$a7, $a2, $a3
	ld.w	$t0, $a0, 96
	ld.w	$a5, $a0, 108
	ld.w	$a3, $a0, 168
	ld.w	$a6, $a0, 120
	ld.w	$a4, $a0, 132
	ld.w	$a2, $a0, 144
	slt	$t2, $a3, $t1
	ld.w	$t3, $a0, 180
	maskeqz	$t1, $t1, $t2
	masknez	$a3, $a3, $t2
	or	$a3, $t1, $a3
	slt	$t1, $t3, $a3
	ld.w	$t2, $a0, 192
	maskeqz	$a3, $a3, $t1
	masknez	$t1, $t3, $t1
	or	$a3, $a3, $t1
	slt	$t1, $t2, $a3
	ld.w	$t3, $a0, 204
	maskeqz	$a3, $a3, $t1
	masknez	$t1, $t2, $t1
	or	$a3, $a3, $t1
	slt	$t1, $t3, $a3
	maskeqz	$a3, $a3, $t1
	ld.w	$t2, $a0, 216
	masknez	$t1, $t3, $t1
	ld.w	$t3, $a0, 156
	or	$a3, $a3, $t1
	slt	$t1, $t2, $a3
	ld.w	$a0, $a0, 228
	maskeqz	$a3, $a3, $t1
	masknez	$t1, $t2, $t1
	or	$a3, $a3, $t1
	slt	$t1, $a0, $a3
	maskeqz	$a3, $a3, $t1
	masknez	$a0, $a0, $t1
	or	$a0, $a3, $a0
	srai.d	$a3, $a0, 63
	andn	$a3, $a0, $a3
	slt	$a0, $t0, $a7
	maskeqz	$a7, $a7, $a0
	masknez	$a0, $t0, $a0
	or	$a0, $a7, $a0
	slt	$a7, $a5, $a0
	maskeqz	$a0, $a0, $a7
	masknez	$a5, $a5, $a7
	or	$a0, $a0, $a5
	slt	$a5, $a6, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $a6, $a5
	or	$a0, $a0, $a5
	slt	$a5, $a4, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a4, $a4, $a5
	or	$a0, $a0, $a4
	slt	$a4, $a2, $a0
	maskeqz	$a0, $a0, $a4
	masknez	$a2, $a2, $a4
	or	$a0, $a0, $a2
	slt	$a2, $t3, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $t3, $a2
	or	$a0, $a0, $a2
	srai.d	$a2, $a0, 63
	andn	$a2, $a0, $a2
	pcalau12i	$a0, %pc_hi20(scale_bitcount.slen1_tab)
	addi.d	$a4, $a0, %pc_lo12(scale_bitcount.slen1_tab)
	lu12i.w	$a6, 24
	ori	$a5, $a6, 1696
	st.w	$a5, $a1, 76
	beqz	$a2, .LBB7_16
.LBB7_2:
	ori	$a6, $zero, 7
	ori	$a0, $zero, 2
	bgeu	$a6, $a2, .LBB7_26
	b	.LBB7_60
.LBB7_3:                                # %.preheader93.preheader
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a0, 4
	slt	$a4, $a3, $a2
	ld.w	$a5, $a0, 8
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	slt	$a3, $a5, $a2
	ld.w	$a4, $a0, 12
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a5, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a4, $a2
	ld.w	$a5, $a0, 16
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a5, $a2
	ld.w	$a4, $a0, 20
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a5, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a4, $a2
	ld.w	$a5, $a0, 24
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a5, $a2
	ld.w	$a4, $a0, 28
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a5, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a4, $a2
	ld.w	$a5, $a0, 32
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a5, $a2
	ld.w	$a4, $a0, 36
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a5, $a3
	or	$a2, $a2, $a3
	slt	$a3, $a4, $a2
	ld.w	$a5, $a0, 40
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $a4, $a3
	or	$a2, $a2, $a3
	slt	$a4, $a5, $a2
	maskeqz	$a2, $a2, $a4
	ld.w	$a6, $a1, 64
	ld.w	$a3, $a0, 44
	masknez	$a4, $a5, $a4
	or	$a2, $a2, $a4
	srai.d	$a4, $a2, 63
	bnez	$a6, .LBB7_15
# %bb.4:                                # %.preheader91.preheader
	pcalau12i	$a5, %pc_hi20(pretab)
	addi.d	$a5, $a5, %pc_lo12(pretab)
	ld.w	$a6, $a5, 44
	blt	$a3, $a6, .LBB7_15
# %bb.5:                                # %.preheader91.1
	ld.w	$a7, $a0, 48
	ld.w	$t0, $a5, 48
	blt	$a7, $t0, .LBB7_15
# %bb.6:                                # %.preheader91.2
	ld.w	$a7, $a0, 52
	ld.w	$t0, $a5, 52
	blt	$a7, $t0, .LBB7_15
# %bb.7:                                # %.preheader91.3
	ld.w	$a7, $a0, 56
	ld.w	$t0, $a5, 56
	blt	$a7, $t0, .LBB7_15
# %bb.8:                                # %.preheader91.4
	ld.w	$a7, $a0, 60
	ld.w	$t0, $a5, 60
	blt	$a7, $t0, .LBB7_15
# %bb.9:                                # %.preheader91.5
	ld.w	$a7, $a0, 64
	ld.w	$t0, $a5, 64
	blt	$a7, $t0, .LBB7_15
# %bb.10:                               # %.preheader91.6
	ld.w	$a7, $a0, 68
	ld.w	$t0, $a5, 68
	blt	$a7, $t0, .LBB7_15
# %bb.11:                               # %.preheader91.7
	ld.w	$a7, $a0, 72
	ld.w	$t0, $a5, 72
	blt	$a7, $t0, .LBB7_15
# %bb.12:                               # %.preheader91.8
	ld.w	$a7, $a0, 76
	ld.w	$t0, $a5, 76
	blt	$a7, $t0, .LBB7_15
# %bb.13:                               # %.preheader91.9
	ld.w	$a7, $a0, 80
	ld.w	$t0, $a5, 80
	blt	$a7, $t0, .LBB7_15
# %bb.14:                               # %.thread.loopexit
	ori	$a3, $zero, 1
	st.w	$a3, $a1, 64
	ld.w	$a3, $a0, 44
	sub.w	$a3, $a3, $a6
	st.w	$a3, $a0, 44
	ld.w	$a6, $a5, 48
	ld.w	$a7, $a0, 48
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 48
	ld.w	$a6, $a5, 52
	ld.w	$a7, $a0, 52
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 52
	ld.w	$a6, $a5, 56
	ld.w	$a7, $a0, 56
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 56
	ld.w	$a6, $a5, 60
	ld.w	$a7, $a0, 60
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 60
	ld.w	$a6, $a5, 64
	ld.w	$a7, $a0, 64
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 64
	ld.w	$a6, $a5, 68
	ld.w	$a7, $a0, 68
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 68
	ld.w	$a6, $a5, 72
	ld.w	$a7, $a0, 72
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 72
	ld.w	$a6, $a5, 76
	ld.w	$a7, $a0, 76
	sub.d	$a6, $a7, $a6
	st.w	$a6, $a0, 76
	ld.w	$a5, $a5, 80
	ld.w	$a6, $a0, 80
	sub.d	$a5, $a6, $a5
	st.w	$a5, $a0, 80
.LBB7_15:                               # %.thread
	ld.w	$a5, $a0, 48
	andn	$a2, $a2, $a4
	slt	$a4, $a5, $a3
	ld.w	$a6, $a0, 52
	masknez	$a5, $a5, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a5
	slt	$a4, $a6, $a3
	ld.w	$a5, $a0, 56
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a6, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a5, $a3
	ld.w	$a6, $a0, 60
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a6, $a3
	ld.w	$a5, $a0, 64
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a6, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a5, $a3
	ld.w	$a6, $a0, 68
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a6, $a3
	ld.w	$a5, $a0, 72
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a6, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a5, $a3
	ld.w	$a6, $a0, 76
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a6, $a3
	ld.w	$a0, $a0, 80
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a6, $a4
	or	$a3, $a3, $a4
	slt	$a4, $a0, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a0, $a0, $a4
	or	$a0, $a3, $a0
	srai.d	$a3, $a0, 63
	andn	$a3, $a0, $a3
	pcalau12i	$a0, %pc_hi20(scale_bitcount.slen2_tab)
	addi.d	$a4, $a0, %pc_lo12(scale_bitcount.slen2_tab)
	lu12i.w	$a6, 24
	ori	$a5, $a6, 1696
	st.w	$a5, $a1, 76
	bnez	$a2, .LBB7_2
.LBB7_16:
	ori	$a0, $zero, 2
	ori	$a7, $zero, 1
	ori	$a5, $a6, 1696
	beq	$a3, $a7, .LBB7_20
# %bb.17:
	bnez	$a3, .LBB7_37
# %bb.18:
	ld.w	$a7, $a4, 0
	ori	$a6, $a6, 1695
	blt	$a6, $a7, .LBB7_20
# %bb.19:
	move	$a0, $zero
	st.w	$a7, $a1, 76
	st.w	$zero, $a1, 16
	move	$a5, $a7
.LBB7_20:                               # %.thread120
	ld.w	$a6, $a4, 4
	bge	$a6, $a5, .LBB7_22
# %bb.21:
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 1
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_22:                               # %.thread131
	ld.w	$a6, $a4, 8
	bge	$a6, $a5, .LBB7_24
.LBB7_23:
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 2
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_24:                               # %.thread142
	ld.w	$a6, $a4, 12
	bge	$a6, $a5, .LBB7_26
# %bb.25:
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 3
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_26:                               # %.thread149
	bnez	$a3, .LBB7_29
# %bb.27:
	ld.w	$a6, $a4, 16
	bge	$a6, $a5, .LBB7_29
# %bb.28:
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 4
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_29:
	ori	$a6, $zero, 1
	bltu	$a6, $a2, .LBB7_33
# %bb.30:
	bltu	$a6, $a3, .LBB7_34
# %bb.31:
	ld.w	$a6, $a4, 20
	bge	$a6, $a5, .LBB7_35
# %bb.32:
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 5
	st.w	$a5, $a1, 16
	move	$a5, $a6
	b	.LBB7_35
.LBB7_33:
	ori	$a6, $zero, 3
	bgeu	$a6, $a2, .LBB7_42
	b	.LBB7_51
.LBB7_34:
	ori	$a6, $zero, 3
	bltu	$a6, $a3, .LBB7_39
.LBB7_35:                               # %.thread160
	ld.w	$a6, $a4, 24
	bge	$a6, $a5, .LBB7_40
# %bb.36:
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 6
	st.w	$a5, $a1, 16
	move	$a5, $a6
	b	.LBB7_40
.LBB7_37:
	ori	$a0, $zero, 3
	bltu	$a0, $a3, .LBB7_68
# %bb.38:
	ori	$a0, $zero, 2
	ori	$a5, $a6, 1696
	ld.w	$a6, $a4, 8
	blt	$a6, $a5, .LBB7_23
	b	.LBB7_24
.LBB7_39:
	ori	$a6, $zero, 7
	bltu	$a6, $a3, .LBB7_42
.LBB7_40:                               # %.thread171
	ld.w	$a6, $a4, 28
	bge	$a6, $a5, .LBB7_42
# %bb.41:
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 7
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_42:                               # %.thread178
	ori	$a6, $zero, 1
	bltu	$a6, $a3, .LBB7_45
# %bb.43:
	ld.w	$a6, $a4, 32
	bge	$a6, $a5, .LBB7_45
# %bb.44:
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 8
	st.w	$a5, $a1, 16
	move	$a5, $a6
	ld.w	$a7, $a4, 36
	blt	$a7, $a6, .LBB7_47
	b	.LBB7_49
.LBB7_45:
	ori	$a6, $zero, 3
	bltu	$a6, $a3, .LBB7_48
# %bb.46:
	move	$a6, $a5
	ld.w	$a7, $a4, 36
	bge	$a7, $a6, .LBB7_49
.LBB7_47:
	move	$a0, $zero
	st.w	$a7, $a1, 76
	ori	$a5, $zero, 9
	st.w	$a5, $a1, 16
	move	$a5, $a7
	b	.LBB7_49
.LBB7_48:
	ori	$a6, $zero, 7
	bltu	$a6, $a3, .LBB7_51
.LBB7_49:                               # %.thread198
	ld.w	$a6, $a4, 40
	bge	$a6, $a5, .LBB7_51
# %bb.50:
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 10
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_51:                               # %.thread193
	ori	$a6, $zero, 1
	bltu	$a6, $a3, .LBB7_54
# %bb.52:
	ld.w	$a6, $a4, 44
	bge	$a6, $a5, .LBB7_55
# %bb.53:
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 11
	st.w	$a5, $a1, 16
	move	$a5, $a6
	b	.LBB7_55
.LBB7_54:
	ori	$a6, $zero, 3
	bltu	$a6, $a3, .LBB7_57
.LBB7_55:                               # %.thread208
	ld.w	$a6, $a4, 48
	bge	$a6, $a5, .LBB7_58
# %bb.56:
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 12
	st.w	$a5, $a1, 16
	move	$a5, $a6
	b	.LBB7_58
.LBB7_57:
	ori	$a6, $zero, 7
	bltu	$a6, $a3, .LBB7_60
.LBB7_58:                               # %.thread219
	ld.w	$a6, $a4, 52
	bge	$a6, $a5, .LBB7_60
# %bb.59:
	move	$a0, $zero
	st.w	$a6, $a1, 76
	ori	$a5, $zero, 13
	st.w	$a5, $a1, 16
	move	$a5, $a6
.LBB7_60:                               # %.thread193.thread
	ori	$a6, $zero, 15
	bltu	$a6, $a2, .LBB7_67
# %bb.61:                               # %.thread226
	ori	$a2, $zero, 3
	bltu	$a2, $a3, .LBB7_64
# %bb.62:
	ld.w	$a2, $a4, 56
	bge	$a2, $a5, .LBB7_64
# %bb.63:
	move	$a0, $zero
	st.w	$a2, $a1, 76
	ori	$a3, $zero, 14
	st.w	$a3, $a1, 16
	move	$a5, $a2
	b	.LBB7_65
.LBB7_64:
	ori	$a2, $zero, 7
	bltu	$a2, $a3, .LBB7_67
.LBB7_65:                               # %.thread232
	ld.w	$a2, $a4, 60
	bge	$a2, $a5, .LBB7_67
# %bb.66:
	move	$a0, $zero
	st.w	$a2, $a1, 76
	ori	$a2, $zero, 15
	st.w	$a2, $a1, 16
.LBB7_67:                               # %.thread229
	ret
.LBB7_68:
	ori	$a0, $zero, 2
	ori	$a7, $zero, 7
	ori	$a5, $a6, 1696
	bgeu	$a7, $a3, .LBB7_24
	b	.LBB7_26
.Lfunc_end7:
	.size	scale_bitcount, .Lfunc_end7-scale_bitcount
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function scale_bitcount_lsf
.LCPI8_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI8_1:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI8_2:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	scale_bitcount_lsf
	.p2align	5
	.type	scale_bitcount_lsf,@function
scale_bitcount_lsf:                     # @scale_bitcount_lsf
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
	move	$t5, $a1
	ld.w	$s1, $a1, 64
	ld.w	$a2, $a1, 24
	move	$s3, $a0
	sltu	$a3, $zero, $s1
	ori	$a4, $zero, 2
	slli.d	$s2, $a3, 1
	bne	$a2, $a4, .LBB8_3
# %bb.1:
	slli.d	$a2, $s2, 5
	alsl.d	$a2, $s2, $a2, 4
	pcalau12i	$a4, %pc_hi20(nr_of_sfb_block)
	addi.d	$a4, $a4, %pc_lo12(nr_of_sfb_block)
	add.d	$a2, $a4, $a2
	addi.d	$s6, $a2, 16
	ld.wu	$a2, $a2, 16
	lu12i.w	$a4, -349526
	ori	$t6, $a4, 2731
	lu32i.d	$t6, 0
	ori	$t7, $zero, 3
	addi.d	$a5, $s3, 92
	addi.d	$a6, $s3, 96
	bgeu	$a2, $t7, .LBB8_6
# %bb.2:
	move	$s4, $zero
	move	$t4, $zero
	b	.LBB8_83
.LBB8_3:
	slli.d	$a0, $s2, 5
	alsl.d	$a0, $s2, $a0, 4
	pcalau12i	$a1, %pc_hi20(nr_of_sfb_block)
	addi.d	$a1, $a1, %pc_lo12(nr_of_sfb_block)
	ldx.w	$a5, $a1, $a0
	ori	$a7, $zero, 1
	add.d	$a6, $a1, $a0
	blt	$a5, $a7, .LBB8_8
# %bb.4:                                # %iter.check
	ori	$a0, $zero, 4
	bgeu	$a5, $a0, .LBB8_9
# %bb.5:
	move	$t0, $zero
	move	$s4, $zero
	b	.LBB8_20
.LBB8_6:                                # %iter.check325
	mul.d	$a2, $a2, $t6
	srli.d	$t4, $a2, 33
	addi.d	$a2, $t4, -1
	bgeu	$a2, $t7, .LBB8_11
# %bb.7:
	move	$t8, $zero
	move	$s4, $zero
	b	.LBB8_81
.LBB8_8:
	move	$s4, $zero
	move	$a5, $zero
	b	.LBB8_22
.LBB8_9:                                # %vector.main.loop.iter.check
	ori	$a0, $zero, 16
	bgeu	$a5, $a0, .LBB8_13
# %bb.10:
	move	$t0, $zero
	move	$s4, $zero
	b	.LBB8_17
.LBB8_11:                               # %vector.main.loop.iter.check327
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$fp, $a4, 1
	ori	$a4, $zero, 15
	pcalau12i	$a1, %pc_hi20(.LCPI8_2)
	xvrepli.d	$xr0, 12
	bgeu	$a2, $a4, .LBB8_37
# %bb.12:
	move	$t8, $zero
	move	$s4, $zero
	b	.LBB8_43
.LBB8_13:                               # %vector.ph
	bstrpick.d	$a0, $a5, 30, 4
	slli.d	$t0, $a0, 4
	xvrepli.b	$xr0, 0
	addi.d	$a2, $s3, 32
	move	$a4, $t0
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvmax.w	$xr0, $xr2, $xr0
	xvmax.w	$xr1, $xr3, $xr1
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	bnez	$a4, .LBB8_14
# %bb.15:                               # %middle.block
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	xvld	$xr2, $a0, %pc_lo12(.LCPI8_0)
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$s4, $xr0, 0
	beq	$t0, $a5, .LBB8_22
# %bb.16:                               # %vec.epilog.iter.check
	andi	$a0, $a5, 12
	beqz	$a0, .LBB8_20
.LBB8_17:                               # %vec.epilog.ph
	move	$a0, $t0
	bstrpick.d	$a1, $a5, 30, 2
	slli.d	$t0, $a1, 2
	vreplgr2vr.w	$vr0, $s4
	sub.d	$a2, $a0, $t0
	alsl.d	$a4, $a0, $s3, 2
	.p2align	4, , 16
.LBB8_18:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB8_18
# %bb.19:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s4, $vr0, 0
	beq	$t0, $a5, .LBB8_22
.LBB8_20:                               # %.lr.ph.preheader
	alsl.d	$a2, $t0, $s3, 2
	.p2align	4, , 16
.LBB8_21:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, 0
	slt	$a1, $s4, $a0
	masknez	$a3, $s4, $a1
	maskeqz	$a0, $a0, $a1
	or	$s4, $a0, $a3
	addi.w	$t0, $t0, 1
	addi.d	$a2, $a2, 4
	bne	$a5, $t0, .LBB8_21
.LBB8_22:                               # %._crit_edge
	ld.w	$t1, $a6, 4
	blt	$t1, $a7, .LBB8_25
# %bb.23:                               # %iter.check200
	ori	$a0, $zero, 4
	bstrpick.d	$a7, $a5, 31, 0
	bgeu	$t1, $a0, .LBB8_28
# %bb.24:
	move	$s5, $zero
	move	$t3, $zero
	move	$a2, $a7
	b	.LBB8_47
.LBB8_25:
	move	$s5, $zero
	ld.w	$t1, $a6, 8
	ori	$a7, $zero, 1
	bge	$t1, $a7, .LBB8_50
.LBB8_26:
	move	$t3, $zero
	ld.w	$a6, $a6, 12
	bge	$a6, $a7, .LBB8_65
.LBB8_27:
	move	$t7, $zero
	b	.LBB8_79
.LBB8_28:                               # %vector.main.loop.iter.check202
	ori	$a0, $zero, 16
	bgeu	$t1, $a0, .LBB8_30
# %bb.29:
	move	$t2, $zero
	move	$s5, $zero
	b	.LBB8_34
.LBB8_30:                               # %vector.ph203
	bstrpick.d	$a0, $t1, 30, 4
	slli.d	$t2, $a0, 4
	alsl.d	$a0, $a7, $s3, 2
	xvrepli.b	$xr0, 0
	addi.d	$a2, $a0, 32
	move	$t0, $t2
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_31:                               # %vector.body206
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvmax.w	$xr0, $xr2, $xr0
	xvmax.w	$xr1, $xr3, $xr1
	addi.d	$t0, $t0, -16
	addi.d	$a2, $a2, 64
	bnez	$t0, .LBB8_31
# %bb.32:                               # %middle.block213
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	xvld	$xr2, $a0, %pc_lo12(.LCPI8_0)
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$s5, $xr0, 0
	beq	$t2, $t1, .LBB8_49
# %bb.33:                               # %vec.epilog.iter.check220
	andi	$a0, $t1, 12
	beqz	$a0, .LBB8_46
.LBB8_34:                               # %vec.epilog.ph219
	bstrpick.d	$a0, $t1, 30, 2
	slli.d	$t3, $a0, 2
	alsl.d	$a2, $a0, $a7, 2
	vreplgr2vr.w	$vr0, $s5
	sub.d	$t0, $t2, $t3
	add.d	$a0, $t2, $a7
	alsl.d	$a7, $a0, $s3, 2
	.p2align	4, , 16
.LBB8_35:                               # %vec.epilog.vector.body225
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB8_35
# %bb.36:                               # %vec.epilog.middle.block232
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s5, $vr0, 0
	bne	$t3, $t1, .LBB8_47
	b	.LBB8_49
.LBB8_37:                               # %vector.ph328
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$t6, $sp, 96                    # 8-byte Folded Spill
	st.d	$t4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$t5, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a2, $fp, 32, 4
	slli.d	$t6, $a2, 4
	pcalau12i	$a2, %pc_hi20(.LCPI8_1)
	xvld	$xr1, $a2, %pc_lo12(.LCPI8_1)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	xvld	$xr2, $a1, %pc_lo12(.LCPI8_2)
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a4, $s3, 136
	xvrepli.b	$xr4, 0
	xvrepli.d	$xr3, 96
	st.d	$t6, $sp, 48                    # 8-byte Folded Spill
	xvori.b	$xr5, $xr4, 0
	.p2align	4, , 16
.LBB8_38:                               # %vector.body331
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a4, -48
	ld.w	$t2, $a4, -36
	ld.w	$t4, $a4, -24
	ld.w	$t5, $a4, -12
	ld.w	$t7, $a4, 0
	ld.w	$t8, $a4, 12
	ld.w	$fp, $a4, 24
	ld.w	$s0, $a4, 36
	xvinsgr2vr.w	$xr6, $a2, 0
	xvinsgr2vr.w	$xr6, $t2, 1
	xvinsgr2vr.w	$xr6, $t4, 2
	xvinsgr2vr.w	$xr6, $t5, 3
	xvinsgr2vr.w	$xr6, $t7, 4
	xvinsgr2vr.w	$xr6, $t8, 5
	xvinsgr2vr.w	$xr6, $fp, 6
	xvinsgr2vr.w	$xr6, $s0, 7
	ld.w	$a2, $a4, 48
	ld.w	$t2, $a4, 60
	ld.w	$t4, $a4, 72
	ld.w	$t5, $a4, 84
	ld.w	$t7, $a4, 96
	ld.w	$t8, $a4, 108
	ld.w	$fp, $a4, 120
	ld.w	$s0, $a4, 132
	xvinsgr2vr.w	$xr7, $a2, 0
	xvinsgr2vr.w	$xr7, $t2, 1
	xvinsgr2vr.w	$xr7, $t4, 2
	xvinsgr2vr.w	$xr7, $t5, 3
	xvinsgr2vr.w	$xr7, $t7, 4
	xvinsgr2vr.w	$xr7, $t8, 5
	xvinsgr2vr.w	$xr7, $fp, 6
	xvinsgr2vr.w	$xr7, $s0, 7
	xvmax.w	$xr4, $xr6, $xr4
	xvmax.w	$xr5, $xr7, $xr5
	xvmul.d	$xr6, $xr1, $xr0
	xvmul.d	$xr7, $xr2, $xr0
	xvori.b	$xr8, $xr3, 0
	xvmadd.d	$xr8, $xr1, $xr0
	xvori.b	$xr9, $xr3, 0
	xvmadd.d	$xr9, $xr2, $xr0
	xvpickve2gr.d	$s5, $xr7, 0
	xvpickve2gr.d	$s6, $xr7, 1
	xvpickve2gr.d	$s7, $xr7, 2
	xvpickve2gr.d	$s8, $xr7, 3
	xvpickve2gr.d	$ra, $xr6, 0
	xvpickve2gr.d	$a2, $xr6, 1
	xvpickve2gr.d	$t5, $xr6, 2
	xvpickve2gr.d	$t4, $xr6, 3
	xvpickve2gr.d	$t7, $xr9, 0
	xvpickve2gr.d	$t8, $xr9, 1
	xvpickve2gr.d	$fp, $xr9, 2
	xvpickve2gr.d	$s0, $xr9, 3
	xvpickve2gr.d	$s1, $xr8, 0
	xvpickve2gr.d	$s2, $xr8, 1
	xvpickve2gr.d	$s3, $xr8, 2
	xvpickve2gr.d	$s4, $xr8, 3
	ldx.w	$t2, $a5, $s5
	ldx.w	$t1, $a5, $s6
	ldx.w	$t0, $a5, $s7
	ldx.w	$a3, $a5, $s8
	ldx.w	$a7, $a5, $ra
	ldx.w	$a0, $a5, $a2
	ldx.w	$t3, $a5, $t5
	ldx.w	$a1, $a5, $t4
	xvinsgr2vr.w	$xr6, $t2, 0
	xvinsgr2vr.w	$xr6, $t1, 1
	xvinsgr2vr.w	$xr6, $t0, 2
	xvinsgr2vr.w	$xr6, $a3, 3
	xvinsgr2vr.w	$xr6, $a7, 4
	xvinsgr2vr.w	$xr6, $a0, 5
	xvinsgr2vr.w	$xr6, $t3, 6
	xvinsgr2vr.w	$xr6, $a1, 7
	ldx.w	$a0, $a5, $t7
	ldx.w	$a1, $a5, $t8
	ldx.w	$a3, $a5, $fp
	ldx.w	$a7, $a5, $s0
	ldx.w	$t0, $a5, $s1
	ldx.w	$t1, $a5, $s2
	ldx.w	$t2, $a5, $s3
	ldx.w	$t3, $a5, $s4
	xvinsgr2vr.w	$xr7, $a0, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	xvinsgr2vr.w	$xr7, $a3, 2
	xvinsgr2vr.w	$xr7, $a7, 3
	xvinsgr2vr.w	$xr7, $t0, 4
	xvinsgr2vr.w	$xr7, $t1, 5
	xvinsgr2vr.w	$xr7, $t2, 6
	xvinsgr2vr.w	$xr7, $t3, 7
	xvmax.w	$xr4, $xr6, $xr4
	xvmax.w	$xr5, $xr7, $xr5
	ldx.w	$a0, $a6, $s5
	ldx.w	$a1, $a6, $s6
	ldx.w	$a3, $a6, $s7
	ldx.w	$a7, $a6, $s8
	ldx.w	$t0, $a6, $ra
	ldx.w	$a2, $a6, $a2
	ldx.w	$t1, $a6, $t5
	ldx.w	$t2, $a6, $t4
	xvinsgr2vr.w	$xr6, $a0, 0
	xvinsgr2vr.w	$xr6, $a1, 1
	xvinsgr2vr.w	$xr6, $a3, 2
	xvinsgr2vr.w	$xr6, $a7, 3
	xvinsgr2vr.w	$xr6, $t0, 4
	xvinsgr2vr.w	$xr6, $a2, 5
	xvinsgr2vr.w	$xr6, $t1, 6
	xvinsgr2vr.w	$xr6, $t2, 7
	ldx.w	$a0, $a6, $t7
	ldx.w	$a1, $a6, $t8
	ldx.w	$a2, $a6, $fp
	ldx.w	$a3, $a6, $s0
	ldx.w	$a7, $a6, $s1
	ldx.w	$t0, $a6, $s2
	ldx.w	$t1, $a6, $s3
	ldx.w	$t2, $a6, $s4
	xvinsgr2vr.w	$xr7, $a0, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	xvinsgr2vr.w	$xr7, $a2, 2
	xvinsgr2vr.w	$xr7, $a3, 3
	xvinsgr2vr.w	$xr7, $a7, 4
	xvinsgr2vr.w	$xr7, $t0, 5
	xvinsgr2vr.w	$xr7, $t1, 6
	xvinsgr2vr.w	$xr7, $t2, 7
	xvmax.w	$xr4, $xr6, $xr4
	xvmax.w	$xr5, $xr7, $xr5
	xvaddi.du	$xr2, $xr2, 16
	xvaddi.du	$xr1, $xr1, 16
	addi.d	$t6, $t6, -16
	addi.d	$a4, $a4, 192
	bnez	$t6, .LBB8_38
# %bb.39:                               # %middle.block336
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	xvld	$xr1, $a0, %pc_lo12(.LCPI8_0)
	xvmax.w	$xr2, $xr4, $xr5
	xvpermi.d	$xr3, $xr2, 78
	xvshuf.d	$xr1, $xr0, $xr3
	xvmax.w	$xr1, $xr2, $xr1
	xvpermi.d	$xr2, $xr1, 68
	xvrepl128vei.d	$xr2, $xr2, 1
	xvmax.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvrepl128vei.w	$xr2, $xr2, 1
	xvmax.w	$xr1, $xr1, $xr2
	xvpickve2gr.w	$s4, $xr1, 0
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	bne	$fp, $t8, .LBB8_41
# %bb.40:
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ori	$t7, $zero, 3
	b	.LBB8_83
.LBB8_41:                               # %vec.epilog.iter.check343
	andi	$a0, $fp, 12
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ori	$t7, $zero, 3
	beqz	$a0, .LBB8_80
# %bb.42:
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
.LBB8_43:                               # %vec.epilog.ph342
	move	$a0, $t8
	xvld	$xr1, $a1, %pc_lo12(.LCPI8_2)
	bstrpick.d	$a1, $fp, 32, 2
	slli.d	$t8, $a1, 2
	xvreplgr2vr.d	$xr2, $a0
	xvor.v	$xr1, $xr2, $xr1
	vreplgr2vr.w	$vr2, $s4
	sub.d	$a2, $a0, $t8
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	add.d	$a0, $a0, $s3
	addi.d	$a4, $a0, 88
	.p2align	4, , 16
.LBB8_44:                               # %vec.epilog.vector.body348
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a4, 0
	ld.w	$a1, $a4, 12
	ld.w	$a3, $a4, 24
	ld.w	$a7, $a4, 36
	vinsgr2vr.w	$vr3, $a0, 0
	vinsgr2vr.w	$vr3, $a1, 1
	vinsgr2vr.w	$vr3, $a3, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vmax.w	$vr2, $vr3, $vr2
	xvmul.d	$xr3, $xr1, $xr0
	xvpickve2gr.d	$a0, $xr3, 0
	xvpickve2gr.d	$a1, $xr3, 1
	xvpickve2gr.d	$a3, $xr3, 2
	xvpickve2gr.d	$a7, $xr3, 3
	ldx.w	$t0, $a5, $a0
	ldx.w	$t1, $a5, $a1
	ldx.w	$t2, $a5, $a3
	ldx.w	$t3, $a5, $a7
	vinsgr2vr.w	$vr3, $t0, 0
	vinsgr2vr.w	$vr3, $t1, 1
	vinsgr2vr.w	$vr3, $t2, 2
	vinsgr2vr.w	$vr3, $t3, 3
	vmax.w	$vr2, $vr3, $vr2
	ldx.w	$a0, $a6, $a0
	ldx.w	$a1, $a6, $a1
	ldx.w	$a3, $a6, $a3
	ldx.w	$a7, $a6, $a7
	vinsgr2vr.w	$vr3, $a0, 0
	vinsgr2vr.w	$vr3, $a1, 1
	vinsgr2vr.w	$vr3, $a3, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vmax.w	$vr2, $vr3, $vr2
	xvaddi.du	$xr1, $xr1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 48
	bnez	$a2, .LBB8_44
# %bb.45:                               # %vec.epilog.middle.block356
	vreplvei.d	$vr0, $vr2, 1
	vmax.w	$vr0, $vr2, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s4, $vr0, 0
	bne	$fp, $t8, .LBB8_81
	b	.LBB8_83
.LBB8_46:
	add.d	$a2, $t2, $a7
	move	$t3, $t2
.LBB8_47:                               # %vec.epilog.scalar.ph218.preheader
	alsl.d	$a2, $a2, $s3, 2
	sub.d	$a7, $t1, $t3
	.p2align	4, , 16
.LBB8_48:                               # %vec.epilog.scalar.ph218
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, 0
	slt	$a1, $s5, $a0
	masknez	$a3, $s5, $a1
	maskeqz	$a0, $a0, $a1
	or	$s5, $a0, $a3
	addi.w	$a7, $a7, -1
	addi.d	$a2, $a2, 4
	bnez	$a7, .LBB8_48
.LBB8_49:                               # %._crit_edge.1
	add.w	$a5, $a5, $t1
	ld.w	$t1, $a6, 8
	ori	$a7, $zero, 1
	blt	$t1, $a7, .LBB8_26
.LBB8_50:                               # %iter.check241
	ori	$a0, $zero, 4
	bgeu	$t1, $a0, .LBB8_52
# %bb.51:
	move	$t3, $zero
	move	$t4, $zero
	move	$a2, $a5
	b	.LBB8_62
.LBB8_52:                               # %vector.main.loop.iter.check243
	ori	$a0, $zero, 16
	bgeu	$t1, $a0, .LBB8_54
# %bb.53:
	move	$t2, $zero
	move	$t3, $zero
	b	.LBB8_58
.LBB8_54:                               # %vector.ph244
	bstrpick.d	$a0, $t1, 30, 4
	slli.d	$t2, $a0, 4
	alsl.d	$a0, $a5, $s3, 2
	xvrepli.b	$xr0, 0
	addi.d	$a2, $a0, 32
	move	$t3, $t2
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_55:                               # %vector.body247
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvmax.w	$xr0, $xr2, $xr0
	xvmax.w	$xr1, $xr3, $xr1
	addi.d	$t3, $t3, -16
	addi.d	$a2, $a2, 64
	bnez	$t3, .LBB8_55
# %bb.56:                               # %middle.block254
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	xvld	$xr2, $a0, %pc_lo12(.LCPI8_0)
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t3, $xr0, 0
	beq	$t2, $t1, .LBB8_64
# %bb.57:                               # %vec.epilog.iter.check261
	andi	$a0, $t1, 12
	beqz	$a0, .LBB8_61
.LBB8_58:                               # %vec.epilog.ph260
	bstrpick.d	$a0, $t1, 30, 2
	slli.d	$t4, $a0, 2
	alsl.d	$a2, $a0, $a5, 2
	vreplgr2vr.w	$vr0, $t3
	sub.d	$t3, $t2, $t4
	add.d	$a0, $t2, $a5
	alsl.d	$t2, $a0, $s3, 2
	.p2align	4, , 16
.LBB8_59:                               # %vec.epilog.vector.body266
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t2, 0
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$t3, $t3, 4
	addi.d	$t2, $t2, 16
	bnez	$t3, .LBB8_59
# %bb.60:                               # %vec.epilog.middle.block274
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t3, $vr0, 0
	bne	$t4, $t1, .LBB8_62
	b	.LBB8_64
.LBB8_61:
	add.d	$a2, $t2, $a5
	move	$t4, $t2
.LBB8_62:                               # %vec.epilog.scalar.ph259.preheader
	alsl.d	$a2, $a2, $s3, 2
	sub.d	$t2, $t1, $t4
	.p2align	4, , 16
.LBB8_63:                               # %vec.epilog.scalar.ph259
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, 0
	slt	$a1, $t3, $a0
	masknez	$a3, $t3, $a1
	maskeqz	$a0, $a0, $a1
	or	$t3, $a0, $a3
	addi.w	$t2, $t2, -1
	addi.d	$a2, $a2, 4
	bnez	$t2, .LBB8_63
.LBB8_64:                               # %._crit_edge.2
	add.w	$a5, $a5, $t1
	ld.w	$a6, $a6, 12
	blt	$a6, $a7, .LBB8_27
.LBB8_65:                               # %iter.check283
	ori	$a0, $zero, 4
	bgeu	$a6, $a0, .LBB8_67
# %bb.66:
	move	$t7, $zero
	move	$t1, $zero
	move	$a2, $a5
	b	.LBB8_77
.LBB8_67:                               # %vector.main.loop.iter.check285
	ori	$a0, $zero, 16
	bgeu	$a6, $a0, .LBB8_69
# %bb.68:
	move	$a7, $zero
	move	$t7, $zero
	b	.LBB8_73
.LBB8_69:                               # %vector.ph286
	bstrpick.d	$a0, $a6, 30, 4
	slli.d	$a7, $a0, 4
	alsl.d	$a0, $a5, $s3, 2
	xvrepli.b	$xr0, 0
	addi.d	$a2, $a0, 32
	move	$t1, $a7
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_70:                               # %vector.body289
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvmax.w	$xr0, $xr2, $xr0
	xvmax.w	$xr1, $xr3, $xr1
	addi.d	$t1, $t1, -16
	addi.d	$a2, $a2, 64
	bnez	$t1, .LBB8_70
# %bb.71:                               # %middle.block296
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	xvld	$xr2, $a0, %pc_lo12(.LCPI8_0)
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvmax.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t7, $xr0, 0
	beq	$a7, $a6, .LBB8_79
# %bb.72:                               # %vec.epilog.iter.check303
	andi	$a0, $a6, 12
	beqz	$a0, .LBB8_76
.LBB8_73:                               # %vec.epilog.ph302
	bstrpick.d	$a0, $a6, 30, 2
	slli.d	$t1, $a0, 2
	alsl.d	$a2, $a0, $a5, 2
	vreplgr2vr.w	$vr0, $t7
	sub.d	$t2, $a7, $t1
	add.d	$a0, $a7, $a5
	alsl.d	$a5, $a0, $s3, 2
	.p2align	4, , 16
.LBB8_74:                               # %vec.epilog.vector.body308
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, 0
	vmax.w	$vr0, $vr1, $vr0
	addi.d	$t2, $t2, 4
	addi.d	$a5, $a5, 16
	bnez	$t2, .LBB8_74
# %bb.75:                               # %vec.epilog.middle.block316
	vreplvei.d	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t7, $vr0, 0
	bne	$t1, $a6, .LBB8_77
	b	.LBB8_79
.LBB8_76:
	add.d	$a2, $a7, $a5
	move	$t1, $a7
.LBB8_77:                               # %vec.epilog.scalar.ph301.preheader
	alsl.d	$a0, $a2, $s3, 2
	sub.d	$a2, $a6, $t1
	.p2align	4, , 16
.LBB8_78:                               # %vec.epilog.scalar.ph301
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	slt	$a3, $t7, $a1
	masknez	$a4, $t7, $a3
	maskeqz	$a1, $a1, $a3
	or	$t7, $a1, $a4
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB8_78
.LBB8_79:
	move	$s0, $zero
	b	.LBB8_137
.LBB8_80:
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
.LBB8_81:                               # %.preheader.preheader
	slli.d	$a0, $t8, 3
	alsl.d	$a0, $t8, $a0, 2
	add.d	$a0, $a0, $s3
	addi.d	$a2, $a0, 96
	sub.d	$t2, $t4, $t8
	.p2align	4, , 16
.LBB8_82:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, -8
	slt	$a1, $s4, $a0
	ld.w	$a3, $a2, -4
	masknez	$a4, $s4, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a4
	slt	$a1, $a0, $a3
	ld.w	$a4, $a2, 0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	slt	$a1, $a0, $a4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a4, $a1
	or	$s4, $a1, $a0
	addi.w	$t2, $t2, -1
	addi.d	$a2, $a2, 12
	bnez	$t2, .LBB8_82
.LBB8_83:                               # %._crit_edge111
	ld.wu	$a2, $s6, 4
	bgeu	$a2, $t7, .LBB8_87
# %bb.84:
	move	$s5, $zero
	ld.wu	$a2, $s6, 8
	ori	$t7, $zero, 3
	bltu	$a2, $t7, .LBB8_132
.LBB8_85:                               # %iter.check415
	mul.d	$a0, $a2, $t6
	srli.d	$t8, $a0, 33
	addi.d	$a2, $t8, -1
	bgeu	$a2, $t7, .LBB8_89
# %bb.86:
	move	$t3, $zero
	move	$fp, $zero
	move	$s0, $t4
	b	.LBB8_112
.LBB8_87:                               # %iter.check364
	mul.d	$a0, $a2, $t6
	srli.d	$fp, $a0, 33
	addi.d	$a2, $fp, -1
	ori	$a0, $zero, 3
	bgeu	$a2, $a0, .LBB8_91
# %bb.88:
	move	$s5, $zero
	move	$t7, $zero
	move	$t8, $t4
	b	.LBB8_129
.LBB8_89:                               # %vector.main.loop.iter.check417
	bstrpick.d	$a0, $a2, 31, 0
	ori	$a1, $zero, 15
	addi.d	$s7, $a0, 1
	bgeu	$a2, $a1, .LBB8_93
# %bb.90:
	move	$a2, $zero
	move	$t3, $zero
	move	$a3, $t4
	b	.LBB8_103
.LBB8_91:                               # %vector.main.loop.iter.check366
	bstrpick.d	$a0, $a2, 31, 0
	ori	$a1, $zero, 15
	addi.d	$s0, $a0, 1
	bgeu	$a2, $a1, .LBB8_97
# %bb.92:
	move	$a2, $zero
	move	$s5, $zero
	move	$a3, $t4
	b	.LBB8_108
.LBB8_93:                               # %vector.ph418
	st.d	$t8, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$t6, $sp, 96                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$t5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s7, 32, 4
	slli.d	$fp, $a0, 4
	pcalau12i	$a1, %pc_hi20(.LCPI8_1)
	xvld	$xr0, $a1, %pc_lo12(.LCPI8_1)
	pcalau12i	$a1, %pc_hi20(.LCPI8_2)
	xvld	$xr1, $a1, %pc_lo12(.LCPI8_2)
	alsl.d	$a0, $a0, $t4, 4
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	xvreplgr2vr.d	$xr2, $t4
	xvadd.d	$xr0, $xr2, $xr0
	xvadd.d	$xr1, $xr2, $xr1
	slli.d	$a0, $t4, 3
	st.d	$t4, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$a0, $t4, $a0, 2
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	add.d	$a0, $a0, $s3
	addi.d	$t3, $a0, 136
	xvrepli.b	$xr4, 0
	xvrepli.d	$xr2, 12
	xvrepli.d	$xr3, 96
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	xvori.b	$xr5, $xr4, 0
	.p2align	4, , 16
.LBB8_94:                               # %vector.body421
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $t3, -48
	ld.w	$a1, $t3, -36
	ld.w	$a2, $t3, -24
	ld.w	$a3, $t3, -12
	ld.w	$a4, $t3, 0
	ld.w	$a7, $t3, 12
	ld.w	$t1, $t3, 24
	ld.w	$t2, $t3, 36
	xvinsgr2vr.w	$xr6, $a0, 0
	xvinsgr2vr.w	$xr6, $a1, 1
	xvinsgr2vr.w	$xr6, $a2, 2
	xvinsgr2vr.w	$xr6, $a3, 3
	xvinsgr2vr.w	$xr6, $a4, 4
	xvinsgr2vr.w	$xr6, $a7, 5
	xvinsgr2vr.w	$xr6, $t1, 6
	xvinsgr2vr.w	$xr6, $t2, 7
	ld.w	$a0, $t3, 48
	ld.w	$a1, $t3, 60
	ld.w	$a2, $t3, 72
	ld.w	$a3, $t3, 84
	ld.w	$a4, $t3, 96
	ld.w	$a7, $t3, 108
	ld.w	$t1, $t3, 120
	ld.w	$t2, $t3, 132
	xvinsgr2vr.w	$xr7, $a0, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	xvinsgr2vr.w	$xr7, $a2, 2
	xvinsgr2vr.w	$xr7, $a3, 3
	xvinsgr2vr.w	$xr7, $a4, 4
	xvinsgr2vr.w	$xr7, $a7, 5
	xvinsgr2vr.w	$xr7, $t1, 6
	xvinsgr2vr.w	$xr7, $t2, 7
	xvmax.w	$xr4, $xr6, $xr4
	xvmax.w	$xr5, $xr7, $xr5
	xvmul.d	$xr6, $xr0, $xr2
	xvmul.d	$xr7, $xr1, $xr2
	xvori.b	$xr8, $xr3, 0
	xvmadd.d	$xr8, $xr0, $xr2
	xvori.b	$xr9, $xr3, 0
	xvmadd.d	$xr9, $xr1, $xr2
	xvpickve2gr.d	$a2, $xr7, 0
	xvpickve2gr.d	$t2, $xr7, 1
	xvpickve2gr.d	$s8, $xr7, 2
	xvpickve2gr.d	$ra, $xr7, 3
	xvpickve2gr.d	$t8, $xr6, 0
	xvpickve2gr.d	$t6, $xr6, 1
	xvpickve2gr.d	$t7, $xr6, 2
	xvpickve2gr.d	$t4, $xr6, 3
	xvpickve2gr.d	$s0, $xr9, 0
	xvpickve2gr.d	$s1, $xr9, 1
	xvpickve2gr.d	$s2, $xr9, 2
	xvpickve2gr.d	$s3, $xr9, 3
	xvpickve2gr.d	$s4, $xr8, 0
	xvpickve2gr.d	$s5, $xr8, 1
	xvpickve2gr.d	$s6, $xr8, 2
	xvpickve2gr.d	$s7, $xr8, 3
	ldx.w	$a0, $a5, $a2
	ldx.w	$a1, $a5, $t2
	ldx.w	$a3, $a5, $s8
	ldx.w	$a4, $a5, $ra
	ldx.w	$a7, $a5, $t8
	ldx.w	$t1, $a5, $t6
	ldx.w	$t5, $a5, $t7
	ldx.w	$t0, $a5, $t4
	xvinsgr2vr.w	$xr6, $a0, 0
	xvinsgr2vr.w	$xr6, $a1, 1
	xvinsgr2vr.w	$xr6, $a3, 2
	xvinsgr2vr.w	$xr6, $a4, 3
	xvinsgr2vr.w	$xr6, $a7, 4
	xvinsgr2vr.w	$xr6, $t1, 5
	xvinsgr2vr.w	$xr6, $t5, 6
	xvinsgr2vr.w	$xr6, $t0, 7
	ldx.w	$a0, $a5, $s0
	ldx.w	$a1, $a5, $s1
	ldx.w	$a3, $a5, $s2
	ldx.w	$a4, $a5, $s3
	ldx.w	$a7, $a5, $s4
	ldx.w	$t0, $a5, $s5
	ldx.w	$t1, $a5, $s6
	ldx.w	$t5, $a5, $s7
	xvinsgr2vr.w	$xr7, $a0, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	xvinsgr2vr.w	$xr7, $a3, 2
	xvinsgr2vr.w	$xr7, $a4, 3
	xvinsgr2vr.w	$xr7, $a7, 4
	xvinsgr2vr.w	$xr7, $t0, 5
	xvinsgr2vr.w	$xr7, $t1, 6
	xvinsgr2vr.w	$xr7, $t5, 7
	xvmax.w	$xr4, $xr6, $xr4
	xvmax.w	$xr5, $xr7, $xr5
	ldx.w	$a0, $a6, $a2
	ldx.w	$a1, $a6, $t2
	ldx.w	$a2, $a6, $s8
	ldx.w	$a3, $a6, $ra
	ldx.w	$a4, $a6, $t8
	ldx.w	$a7, $a6, $t6
	ldx.w	$t0, $a6, $t7
	ldx.w	$t1, $a6, $t4
	xvinsgr2vr.w	$xr6, $a0, 0
	xvinsgr2vr.w	$xr6, $a1, 1
	xvinsgr2vr.w	$xr6, $a2, 2
	xvinsgr2vr.w	$xr6, $a3, 3
	xvinsgr2vr.w	$xr6, $a4, 4
	xvinsgr2vr.w	$xr6, $a7, 5
	xvinsgr2vr.w	$xr6, $t0, 6
	xvinsgr2vr.w	$xr6, $t1, 7
	ldx.w	$a0, $a6, $s0
	ldx.w	$a1, $a6, $s1
	ldx.w	$a2, $a6, $s2
	ldx.w	$a3, $a6, $s3
	ldx.w	$a4, $a6, $s4
	ldx.w	$a7, $a6, $s5
	ldx.w	$t0, $a6, $s6
	ldx.w	$t1, $a6, $s7
	xvinsgr2vr.w	$xr7, $a0, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	xvinsgr2vr.w	$xr7, $a2, 2
	xvinsgr2vr.w	$xr7, $a3, 3
	xvinsgr2vr.w	$xr7, $a4, 4
	xvinsgr2vr.w	$xr7, $a7, 5
	xvinsgr2vr.w	$xr7, $t0, 6
	xvinsgr2vr.w	$xr7, $t1, 7
	xvmax.w	$xr4, $xr6, $xr4
	xvmax.w	$xr5, $xr7, $xr5
	xvaddi.du	$xr1, $xr1, 16
	xvaddi.du	$xr0, $xr0, 16
	addi.d	$fp, $fp, -16
	addi.d	$t3, $t3, 192
	bnez	$fp, .LBB8_94
# %bb.95:                               # %middle.block432
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI8_0)
	xvmax.w	$xr1, $xr4, $xr5
	xvpermi.d	$xr2, $xr1, 78
	xvshuf.d	$xr0, $xr0, $xr2
	xvmax.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t3, $xr0, 0
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	bne	$s7, $a2, .LBB8_101
# %bb.96:
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ori	$t7, $zero, 3
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	b	.LBB8_114
.LBB8_97:                               # %vector.ph367
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$t6, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$t5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s0, 32, 4
	slli.d	$t7, $a0, 4
	pcalau12i	$a1, %pc_hi20(.LCPI8_1)
	xvld	$xr0, $a1, %pc_lo12(.LCPI8_1)
	pcalau12i	$a1, %pc_hi20(.LCPI8_2)
	xvld	$xr1, $a1, %pc_lo12(.LCPI8_2)
	alsl.d	$a0, $a0, $t4, 4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	xvreplgr2vr.d	$xr2, $t4
	xvadd.d	$xr0, $xr2, $xr0
	xvadd.d	$xr1, $xr2, $xr1
	slli.d	$a0, $t4, 3
	st.d	$t4, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$a0, $t4, $a0, 2
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	add.d	$a0, $a0, $s3
	addi.d	$t0, $a0, 136
	xvrepli.b	$xr4, 0
	xvrepli.d	$xr2, 12
	xvrepli.d	$xr3, 96
	st.d	$t7, $sp, 16                    # 8-byte Folded Spill
	xvori.b	$xr5, $xr4, 0
	.p2align	4, , 16
.LBB8_98:                               # %vector.body370
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $t0, -48
	ld.w	$a1, $t0, -36
	ld.w	$a2, $t0, -24
	ld.w	$a3, $t0, -12
	ld.w	$a7, $t0, 0
	ld.w	$t1, $t0, 12
	ld.w	$t2, $t0, 24
	ld.w	$t4, $t0, 36
	xvinsgr2vr.w	$xr6, $a0, 0
	xvinsgr2vr.w	$xr6, $a1, 1
	xvinsgr2vr.w	$xr6, $a2, 2
	xvinsgr2vr.w	$xr6, $a3, 3
	xvinsgr2vr.w	$xr6, $a7, 4
	xvinsgr2vr.w	$xr6, $t1, 5
	xvinsgr2vr.w	$xr6, $t2, 6
	xvinsgr2vr.w	$xr6, $t4, 7
	ld.w	$a0, $t0, 48
	ld.w	$a1, $t0, 60
	ld.w	$a2, $t0, 72
	ld.w	$a3, $t0, 84
	ld.w	$a7, $t0, 96
	ld.w	$t1, $t0, 108
	ld.w	$t2, $t0, 120
	ld.w	$t4, $t0, 132
	xvinsgr2vr.w	$xr7, $a0, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	xvinsgr2vr.w	$xr7, $a2, 2
	xvinsgr2vr.w	$xr7, $a3, 3
	xvinsgr2vr.w	$xr7, $a7, 4
	xvinsgr2vr.w	$xr7, $t1, 5
	xvinsgr2vr.w	$xr7, $t2, 6
	xvinsgr2vr.w	$xr7, $t4, 7
	xvmax.w	$xr4, $xr6, $xr4
	xvmax.w	$xr5, $xr7, $xr5
	xvmul.d	$xr6, $xr0, $xr2
	xvmul.d	$xr7, $xr1, $xr2
	xvori.b	$xr8, $xr3, 0
	xvmadd.d	$xr8, $xr0, $xr2
	xvori.b	$xr9, $xr3, 0
	xvmadd.d	$xr9, $xr1, $xr2
	xvpickve2gr.d	$a2, $xr7, 0
	xvpickve2gr.d	$s6, $xr7, 1
	xvpickve2gr.d	$s7, $xr7, 2
	xvpickve2gr.d	$s8, $xr7, 3
	xvpickve2gr.d	$ra, $xr6, 0
	xvpickve2gr.d	$t6, $xr6, 1
	xvpickve2gr.d	$t4, $xr6, 2
	xvpickve2gr.d	$t2, $xr6, 3
	xvpickve2gr.d	$t8, $xr9, 0
	xvpickve2gr.d	$fp, $xr9, 1
	xvpickve2gr.d	$s0, $xr9, 2
	xvpickve2gr.d	$s1, $xr9, 3
	xvpickve2gr.d	$s2, $xr8, 0
	xvpickve2gr.d	$s3, $xr8, 1
	xvpickve2gr.d	$s4, $xr8, 2
	xvpickve2gr.d	$s5, $xr8, 3
	ldx.w	$a0, $a5, $a2
	ldx.w	$a1, $a5, $s6
	ldx.w	$a3, $a5, $s7
	ldx.w	$a7, $a5, $s8
	ldx.w	$t1, $a5, $ra
	ldx.w	$t5, $a5, $t6
	ldx.w	$t3, $a5, $t4
	ldx.w	$a4, $a5, $t2
	xvinsgr2vr.w	$xr6, $a0, 0
	xvinsgr2vr.w	$xr6, $a1, 1
	xvinsgr2vr.w	$xr6, $a3, 2
	xvinsgr2vr.w	$xr6, $a7, 3
	xvinsgr2vr.w	$xr6, $t1, 4
	xvinsgr2vr.w	$xr6, $t5, 5
	xvinsgr2vr.w	$xr6, $t3, 6
	xvinsgr2vr.w	$xr6, $a4, 7
	ldx.w	$a0, $a5, $t8
	ldx.w	$a1, $a5, $fp
	ldx.w	$a3, $a5, $s0
	ldx.w	$a4, $a5, $s1
	ldx.w	$a7, $a5, $s2
	ldx.w	$t1, $a5, $s3
	ldx.w	$t3, $a5, $s4
	ldx.w	$t5, $a5, $s5
	xvinsgr2vr.w	$xr7, $a0, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	xvinsgr2vr.w	$xr7, $a3, 2
	xvinsgr2vr.w	$xr7, $a4, 3
	xvinsgr2vr.w	$xr7, $a7, 4
	xvinsgr2vr.w	$xr7, $t1, 5
	xvinsgr2vr.w	$xr7, $t3, 6
	xvinsgr2vr.w	$xr7, $t5, 7
	xvmax.w	$xr4, $xr6, $xr4
	xvmax.w	$xr5, $xr7, $xr5
	ldx.w	$a0, $a6, $a2
	ldx.w	$a1, $a6, $s6
	ldx.w	$a2, $a6, $s7
	ldx.w	$a3, $a6, $s8
	ldx.w	$a4, $a6, $ra
	ldx.w	$a7, $a6, $t6
	ldx.w	$t1, $a6, $t4
	ldx.w	$t2, $a6, $t2
	xvinsgr2vr.w	$xr6, $a0, 0
	xvinsgr2vr.w	$xr6, $a1, 1
	xvinsgr2vr.w	$xr6, $a2, 2
	xvinsgr2vr.w	$xr6, $a3, 3
	xvinsgr2vr.w	$xr6, $a4, 4
	xvinsgr2vr.w	$xr6, $a7, 5
	xvinsgr2vr.w	$xr6, $t1, 6
	xvinsgr2vr.w	$xr6, $t2, 7
	ldx.w	$a0, $a6, $t8
	ldx.w	$a1, $a6, $fp
	ldx.w	$a2, $a6, $s0
	ldx.w	$a3, $a6, $s1
	ldx.w	$a4, $a6, $s2
	ldx.w	$a7, $a6, $s3
	ldx.w	$t1, $a6, $s4
	ldx.w	$t2, $a6, $s5
	xvinsgr2vr.w	$xr7, $a0, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	xvinsgr2vr.w	$xr7, $a2, 2
	xvinsgr2vr.w	$xr7, $a3, 3
	xvinsgr2vr.w	$xr7, $a4, 4
	xvinsgr2vr.w	$xr7, $a7, 5
	xvinsgr2vr.w	$xr7, $t1, 6
	xvinsgr2vr.w	$xr7, $t2, 7
	xvmax.w	$xr4, $xr6, $xr4
	xvmax.w	$xr5, $xr7, $xr5
	xvaddi.du	$xr1, $xr1, 16
	xvaddi.du	$xr0, $xr0, 16
	addi.d	$t7, $t7, -16
	addi.d	$t0, $t0, 192
	bnez	$t7, .LBB8_98
# %bb.99:                               # %middle.block381
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI8_0)
	xvmax.w	$xr1, $xr4, $xr5
	xvpermi.d	$xr2, $xr1, 78
	xvshuf.d	$xr0, $xr0, $xr2
	xvmax.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$s5, $xr0, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bne	$s0, $a2, .LBB8_106
# %bb.100:
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	b	.LBB8_131
.LBB8_101:                              # %vec.epilog.iter.check440
	andi	$a0, $s7, 12
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ori	$t7, $zero, 3
	ld.d	$t8, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB8_111
# %bb.102:
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
.LBB8_103:                              # %vec.epilog.ph439
	bstrpick.d	$a0, $s7, 32, 2
	pcalau12i	$a1, %pc_hi20(.LCPI8_2)
	xvld	$xr0, $a1, %pc_lo12(.LCPI8_2)
	slli.d	$fp, $a0, 2
	alsl.d	$s0, $a0, $t4, 2
	xvreplgr2vr.d	$xr1, $a3
	xvadd.d	$xr0, $xr1, $xr0
	vreplgr2vr.w	$vr2, $t3
	sub.d	$t3, $a2, $fp
	add.d	$a0, $a2, $t4
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	add.d	$a0, $a0, $s3
	addi.d	$a2, $a0, 124
	xvrepli.d	$xr1, 12
	.p2align	4, , 16
.LBB8_104:                              # %vec.epilog.vector.body445
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, -36
	ld.w	$a1, $a2, -24
	ld.w	$a3, $a2, -12
	ld.w	$a4, $a2, 0
	vinsgr2vr.w	$vr3, $a0, 0
	vinsgr2vr.w	$vr3, $a1, 1
	vinsgr2vr.w	$vr3, $a3, 2
	vinsgr2vr.w	$vr3, $a4, 3
	vmax.w	$vr2, $vr3, $vr2
	xvmul.d	$xr3, $xr0, $xr1
	xvpickve2gr.d	$a0, $xr3, 0
	xvpickve2gr.d	$a1, $xr3, 1
	xvpickve2gr.d	$a3, $xr3, 2
	xvpickve2gr.d	$a4, $xr3, 3
	ldx.w	$a7, $a5, $a0
	ldx.w	$t0, $a5, $a1
	ldx.w	$t1, $a5, $a3
	ldx.w	$t2, $a5, $a4
	vinsgr2vr.w	$vr3, $a7, 0
	vinsgr2vr.w	$vr3, $t0, 1
	vinsgr2vr.w	$vr3, $t1, 2
	vinsgr2vr.w	$vr3, $t2, 3
	vmax.w	$vr2, $vr3, $vr2
	ldx.w	$a0, $a6, $a0
	ldx.w	$a1, $a6, $a1
	ldx.w	$a3, $a6, $a3
	ldx.w	$a4, $a6, $a4
	vinsgr2vr.w	$vr3, $a0, 0
	vinsgr2vr.w	$vr3, $a1, 1
	vinsgr2vr.w	$vr3, $a3, 2
	vinsgr2vr.w	$vr3, $a4, 3
	vmax.w	$vr2, $vr3, $vr2
	xvaddi.du	$xr0, $xr0, 4
	addi.d	$t3, $t3, 4
	addi.d	$a2, $a2, 48
	bnez	$t3, .LBB8_104
# %bb.105:                              # %vec.epilog.middle.block457
	vreplvei.d	$vr0, $vr2, 1
	vmax.w	$vr0, $vr2, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t3, $vr0, 0
	bne	$s7, $fp, .LBB8_112
	b	.LBB8_114
.LBB8_106:                              # %vec.epilog.iter.check389
	andi	$a0, $s0, 12
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB8_128
# %bb.107:
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
.LBB8_108:                              # %vec.epilog.ph388
	bstrpick.d	$a0, $s0, 32, 2
	pcalau12i	$a1, %pc_hi20(.LCPI8_2)
	xvld	$xr0, $a1, %pc_lo12(.LCPI8_2)
	slli.d	$t7, $a0, 2
	alsl.d	$t8, $a0, $t4, 2
	xvreplgr2vr.d	$xr1, $a3
	xvadd.d	$xr0, $xr1, $xr0
	vreplgr2vr.w	$vr2, $s5
	sub.d	$t0, $a2, $t7
	add.d	$a0, $a2, $t4
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	add.d	$a0, $a0, $s3
	addi.d	$a2, $a0, 124
	xvrepli.d	$xr1, 12
	.p2align	4, , 16
.LBB8_109:                              # %vec.epilog.vector.body394
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, -36
	ld.w	$a1, $a2, -24
	ld.w	$a3, $a2, -12
	ld.w	$a4, $a2, 0
	vinsgr2vr.w	$vr3, $a0, 0
	vinsgr2vr.w	$vr3, $a1, 1
	vinsgr2vr.w	$vr3, $a3, 2
	vinsgr2vr.w	$vr3, $a4, 3
	vmax.w	$vr2, $vr3, $vr2
	xvmul.d	$xr3, $xr0, $xr1
	xvpickve2gr.d	$a0, $xr3, 0
	xvpickve2gr.d	$a1, $xr3, 1
	xvpickve2gr.d	$a3, $xr3, 2
	xvpickve2gr.d	$a4, $xr3, 3
	ldx.w	$a7, $a5, $a0
	ldx.w	$t1, $a5, $a1
	ldx.w	$t2, $a5, $a3
	ldx.w	$t3, $a5, $a4
	vinsgr2vr.w	$vr3, $a7, 0
	vinsgr2vr.w	$vr3, $t1, 1
	vinsgr2vr.w	$vr3, $t2, 2
	vinsgr2vr.w	$vr3, $t3, 3
	vmax.w	$vr2, $vr3, $vr2
	ldx.w	$a0, $a6, $a0
	ldx.w	$a1, $a6, $a1
	ldx.w	$a3, $a6, $a3
	ldx.w	$a4, $a6, $a4
	vinsgr2vr.w	$vr3, $a0, 0
	vinsgr2vr.w	$vr3, $a1, 1
	vinsgr2vr.w	$vr3, $a3, 2
	vinsgr2vr.w	$vr3, $a4, 3
	vmax.w	$vr2, $vr3, $vr2
	xvaddi.du	$xr0, $xr0, 4
	addi.d	$t0, $t0, 4
	addi.d	$a2, $a2, 48
	bnez	$t0, .LBB8_109
# %bb.110:                              # %vec.epilog.middle.block406
	vreplvei.d	$vr0, $vr2, 1
	vmax.w	$vr0, $vr2, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s5, $vr0, 0
	bne	$s0, $t7, .LBB8_129
	b	.LBB8_131
.LBB8_111:
	add.d	$s0, $a2, $t4
	move	$fp, $a2
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
.LBB8_112:                              # %.preheader.2.preheader
	slli.d	$a0, $s0, 3
	alsl.d	$a0, $s0, $a0, 2
	add.d	$a0, $a0, $s3
	addi.d	$a2, $a0, 96
	sub.d	$t2, $t8, $fp
	.p2align	4, , 16
.LBB8_113:                              # %.preheader.2
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, -8
	slt	$a1, $t3, $a0
	ld.w	$a3, $a2, -4
	masknez	$a4, $t3, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a4
	slt	$a1, $a0, $a3
	ld.w	$a4, $a2, 0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	slt	$a1, $a0, $a4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a4, $a1
	or	$t3, $a1, $a0
	addi.w	$t2, $t2, -1
	addi.d	$a2, $a2, 12
	bnez	$t2, .LBB8_113
.LBB8_114:                              # %._crit_edge111.2
	add.w	$t4, $t4, $t8
	ld.wu	$a2, $s6, 12
	ori	$s0, $zero, 1
	bltu	$a2, $t7, .LBB8_133
.LBB8_115:                              # %iter.check466
	mul.d	$a0, $a2, $t6
	srli.d	$s6, $a0, 33
	addi.d	$a2, $s6, -1
	ori	$a0, $zero, 3
	bgeu	$a2, $a0, .LBB8_117
# %bb.116:
	move	$t7, $zero
	move	$t8, $zero
	move	$fp, $t4
	b	.LBB8_135
.LBB8_117:                              # %vector.main.loop.iter.check468
	bstrpick.d	$a0, $a2, 31, 0
	ori	$a1, $zero, 15
	addi.d	$s7, $a0, 1
	bgeu	$a2, $a1, .LBB8_119
# %bb.118:
	move	$a2, $zero
	move	$t7, $zero
	move	$a3, $t4
	b	.LBB8_125
.LBB8_119:                              # %vector.ph469
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$t5, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s7, 32, 4
	slli.d	$fp, $a0, 4
	pcalau12i	$a1, %pc_hi20(.LCPI8_1)
	xvld	$xr0, $a1, %pc_lo12(.LCPI8_1)
	pcalau12i	$a1, %pc_hi20(.LCPI8_2)
	xvld	$xr1, $a1, %pc_lo12(.LCPI8_2)
	alsl.d	$a0, $a0, $t4, 4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	xvreplgr2vr.d	$xr2, $t4
	xvadd.d	$xr0, $xr2, $xr0
	xvadd.d	$xr1, $xr2, $xr1
	slli.d	$a0, $t4, 3
	st.d	$t4, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$a0, $t4, $a0, 2
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	add.d	$a0, $a0, $s3
	addi.d	$t7, $a0, 136
	xvrepli.b	$xr4, 0
	xvrepli.d	$xr2, 12
	xvrepli.d	$xr3, 96
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	xvori.b	$xr5, $xr4, 0
	.p2align	4, , 16
.LBB8_120:                              # %vector.body472
                                        # =>This Inner Loop Header: Depth=1
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a0, $t7, -48
	ld.w	$a1, $t7, -36
	ld.w	$a2, $t7, -24
	ld.w	$a3, $t7, -12
	ld.w	$a4, $t7, 0
	ld.w	$a7, $t7, 12
	ld.w	$t0, $t7, 24
	ld.w	$t1, $t7, 36
	xvinsgr2vr.w	$xr6, $a0, 0
	xvinsgr2vr.w	$xr6, $a1, 1
	xvinsgr2vr.w	$xr6, $a2, 2
	xvinsgr2vr.w	$xr6, $a3, 3
	xvinsgr2vr.w	$xr6, $a4, 4
	xvinsgr2vr.w	$xr6, $a7, 5
	xvinsgr2vr.w	$xr6, $t0, 6
	xvinsgr2vr.w	$xr6, $t1, 7
	ld.w	$a0, $t7, 48
	ld.w	$a1, $t7, 60
	ld.w	$a2, $t7, 72
	ld.w	$a3, $t7, 84
	ld.w	$a4, $t7, 96
	ld.w	$a7, $t7, 108
	ld.w	$t0, $t7, 120
	ld.w	$t1, $t7, 132
	xvinsgr2vr.w	$xr7, $a0, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	xvinsgr2vr.w	$xr7, $a2, 2
	xvinsgr2vr.w	$xr7, $a3, 3
	xvinsgr2vr.w	$xr7, $a4, 4
	xvinsgr2vr.w	$xr7, $a7, 5
	xvinsgr2vr.w	$xr7, $t0, 6
	xvinsgr2vr.w	$xr7, $t1, 7
	xvmax.w	$xr4, $xr6, $xr4
	xvmax.w	$xr5, $xr7, $xr5
	xvmul.d	$xr6, $xr0, $xr2
	xvmul.d	$xr7, $xr1, $xr2
	xvori.b	$xr8, $xr3, 0
	xvmadd.d	$xr8, $xr0, $xr2
	xvori.b	$xr9, $xr3, 0
	xvmadd.d	$xr9, $xr1, $xr2
	xvpickve2gr.d	$a2, $xr7, 0
	xvpickve2gr.d	$s7, $xr7, 1
	xvpickve2gr.d	$s8, $xr7, 2
	xvpickve2gr.d	$ra, $xr7, 3
	xvpickve2gr.d	$t6, $xr6, 0
	xvpickve2gr.d	$t4, $xr6, 1
	xvpickve2gr.d	$t5, $xr6, 2
	xvpickve2gr.d	$t1, $xr6, 3
	xvpickve2gr.d	$fp, $xr9, 0
	xvpickve2gr.d	$s0, $xr9, 1
	xvpickve2gr.d	$s1, $xr9, 2
	xvpickve2gr.d	$s2, $xr9, 3
	xvpickve2gr.d	$s3, $xr8, 0
	xvpickve2gr.d	$s4, $xr8, 1
	xvpickve2gr.d	$s5, $xr8, 2
	xvpickve2gr.d	$s6, $xr8, 3
	ldx.w	$a0, $a5, $a2
	ldx.w	$a1, $a5, $s7
	ldx.w	$a3, $a5, $s8
	ldx.w	$a4, $a5, $ra
	ldx.w	$a7, $a5, $t6
	ldx.w	$t0, $a5, $t4
	ldx.w	$t2, $a5, $t5
	ldx.w	$t8, $a5, $t1
	xvinsgr2vr.w	$xr6, $a0, 0
	xvinsgr2vr.w	$xr6, $a1, 1
	xvinsgr2vr.w	$xr6, $a3, 2
	xvinsgr2vr.w	$xr6, $a4, 3
	xvinsgr2vr.w	$xr6, $a7, 4
	xvinsgr2vr.w	$xr6, $t0, 5
	xvinsgr2vr.w	$xr6, $t2, 6
	xvinsgr2vr.w	$xr6, $t8, 7
	ldx.w	$a0, $a5, $fp
	ldx.w	$a1, $a5, $s0
	ldx.w	$a3, $a5, $s1
	ldx.w	$a4, $a5, $s2
	ldx.w	$a7, $a5, $s3
	ldx.w	$t0, $a5, $s4
	ldx.w	$t2, $a5, $s5
	ldx.w	$t8, $a5, $s6
	xvinsgr2vr.w	$xr7, $a0, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	xvinsgr2vr.w	$xr7, $a3, 2
	xvinsgr2vr.w	$xr7, $a4, 3
	xvinsgr2vr.w	$xr7, $a7, 4
	xvinsgr2vr.w	$xr7, $t0, 5
	xvinsgr2vr.w	$xr7, $t2, 6
	xvinsgr2vr.w	$xr7, $t8, 7
	xvmax.w	$xr4, $xr6, $xr4
	xvmax.w	$xr5, $xr7, $xr5
	ldx.w	$a0, $a6, $a2
	ldx.w	$a1, $a6, $s7
	ldx.w	$a2, $a6, $s8
	ldx.w	$a3, $a6, $ra
	ldx.w	$a4, $a6, $t6
	ldx.w	$a7, $a6, $t4
	ldx.w	$t0, $a6, $t5
	ldx.w	$t1, $a6, $t1
	xvinsgr2vr.w	$xr6, $a0, 0
	xvinsgr2vr.w	$xr6, $a1, 1
	xvinsgr2vr.w	$xr6, $a2, 2
	xvinsgr2vr.w	$xr6, $a3, 3
	xvinsgr2vr.w	$xr6, $a4, 4
	xvinsgr2vr.w	$xr6, $a7, 5
	xvinsgr2vr.w	$xr6, $t0, 6
	xvinsgr2vr.w	$xr6, $t1, 7
	ldx.w	$a0, $a6, $fp
	ldx.w	$a1, $a6, $s0
	ldx.w	$a2, $a6, $s1
	ldx.w	$a3, $a6, $s2
	ldx.w	$a4, $a6, $s3
	ldx.w	$a7, $a6, $s4
	ldx.w	$t0, $a6, $s5
	ldx.w	$t1, $a6, $s6
	xvinsgr2vr.w	$xr7, $a0, 0
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	xvinsgr2vr.w	$xr7, $a1, 1
	xvinsgr2vr.w	$xr7, $a2, 2
	xvinsgr2vr.w	$xr7, $a3, 3
	xvinsgr2vr.w	$xr7, $a4, 4
	xvinsgr2vr.w	$xr7, $a7, 5
	xvinsgr2vr.w	$xr7, $t0, 6
	xvinsgr2vr.w	$xr7, $t1, 7
	xvmax.w	$xr4, $xr6, $xr4
	xvmax.w	$xr5, $xr7, $xr5
	xvaddi.du	$xr1, $xr1, 16
	xvaddi.du	$xr0, $xr0, 16
	addi.d	$fp, $fp, -16
	addi.d	$t7, $t7, 192
	bnez	$fp, .LBB8_120
# %bb.121:                              # %middle.block483
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI8_0)
	xvmax.w	$xr1, $xr4, $xr5
	xvpermi.d	$xr2, $xr1, 78
	xvshuf.d	$xr0, $xr0, $xr2
	xvmax.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t7, $xr0, 0
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	bne	$s7, $a2, .LBB8_123
# %bb.122:
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ori	$s0, $zero, 1
	b	.LBB8_137
.LBB8_123:                              # %vec.epilog.iter.check491
	andi	$a0, $s7, 12
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ori	$s0, $zero, 1
	beqz	$a0, .LBB8_134
# %bb.124:
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
.LBB8_125:                              # %vec.epilog.ph490
	bstrpick.d	$a0, $s7, 32, 2
	pcalau12i	$a1, %pc_hi20(.LCPI8_2)
	xvld	$xr0, $a1, %pc_lo12(.LCPI8_2)
	slli.d	$t8, $a0, 2
	alsl.d	$fp, $a0, $t4, 2
	xvreplgr2vr.d	$xr1, $a3
	xvadd.d	$xr0, $xr1, $xr0
	vreplgr2vr.w	$vr2, $t7
	sub.d	$t6, $a2, $t8
	add.d	$a0, $a2, $t4
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	add.d	$a0, $a0, $s3
	addi.d	$a2, $a0, 124
	xvrepli.d	$xr1, 12
	.p2align	4, , 16
.LBB8_126:                              # %vec.epilog.vector.body496
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, -36
	ld.w	$a1, $a2, -24
	ld.w	$a3, $a2, -12
	ld.w	$a4, $a2, 0
	vinsgr2vr.w	$vr3, $a0, 0
	vinsgr2vr.w	$vr3, $a1, 1
	vinsgr2vr.w	$vr3, $a3, 2
	vinsgr2vr.w	$vr3, $a4, 3
	vmax.w	$vr2, $vr3, $vr2
	xvmul.d	$xr3, $xr0, $xr1
	xvpickve2gr.d	$a0, $xr3, 0
	xvpickve2gr.d	$a1, $xr3, 1
	xvpickve2gr.d	$a3, $xr3, 2
	xvpickve2gr.d	$a4, $xr3, 3
	ldx.w	$a7, $a5, $a0
	ldx.w	$t0, $a5, $a1
	ldx.w	$t1, $a5, $a3
	ldx.w	$t2, $a5, $a4
	vinsgr2vr.w	$vr3, $a7, 0
	vinsgr2vr.w	$vr3, $t0, 1
	vinsgr2vr.w	$vr3, $t1, 2
	vinsgr2vr.w	$vr3, $t2, 3
	vmax.w	$vr2, $vr3, $vr2
	ldx.w	$a0, $a6, $a0
	ldx.w	$a1, $a6, $a1
	ldx.w	$a3, $a6, $a3
	ldx.w	$a4, $a6, $a4
	vinsgr2vr.w	$vr3, $a0, 0
	vinsgr2vr.w	$vr3, $a1, 1
	vinsgr2vr.w	$vr3, $a3, 2
	vinsgr2vr.w	$vr3, $a4, 3
	vmax.w	$vr2, $vr3, $vr2
	xvaddi.du	$xr0, $xr0, 4
	addi.d	$t6, $t6, 4
	addi.d	$a2, $a2, 48
	bnez	$t6, .LBB8_126
# %bb.127:                              # %vec.epilog.middle.block508
	vreplvei.d	$vr0, $vr2, 1
	vmax.w	$vr0, $vr2, $vr0
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t7, $vr0, 0
	bne	$s7, $t8, .LBB8_135
	b	.LBB8_137
.LBB8_128:
	add.d	$t8, $a2, $t4
	move	$t7, $a2
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
.LBB8_129:                              # %.preheader.1.preheader
	slli.d	$a0, $t8, 3
	alsl.d	$a0, $t8, $a0, 2
	add.d	$a0, $a0, $s3
	addi.d	$a2, $a0, 96
	sub.d	$t2, $fp, $t7
	.p2align	4, , 16
.LBB8_130:                              # %.preheader.1
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, -8
	slt	$a1, $s5, $a0
	ld.w	$a3, $a2, -4
	masknez	$a4, $s5, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a4
	slt	$a1, $a0, $a3
	ld.w	$a4, $a2, 0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	slt	$a1, $a0, $a4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a4, $a1
	or	$s5, $a1, $a0
	addi.w	$t2, $t2, -1
	addi.d	$a2, $a2, 12
	bnez	$t2, .LBB8_130
.LBB8_131:                              # %._crit_edge111.1
	add.w	$t4, $t4, $fp
	ld.wu	$a2, $s6, 8
	ori	$t7, $zero, 3
	bgeu	$a2, $t7, .LBB8_85
.LBB8_132:
	move	$t3, $zero
	ld.wu	$a2, $s6, 12
	ori	$s0, $zero, 1
	bgeu	$a2, $t7, .LBB8_115
.LBB8_133:
	move	$t7, $zero
	b	.LBB8_137
.LBB8_134:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$fp, $a2, $a0
	move	$t8, $a2
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
.LBB8_135:                              # %.preheader.3.preheader
	slli.d	$a0, $fp, 3
	alsl.d	$a0, $fp, $a0, 2
	add.d	$a0, $a0, $s3
	addi.d	$a0, $a0, 96
	sub.d	$a2, $s6, $t8
	.p2align	4, , 16
.LBB8_136:                              # %.preheader.3
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, -8
	slt	$a3, $t7, $a1
	ld.w	$a4, $a0, -4
	masknez	$a5, $t7, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a5
	slt	$a3, $a1, $a4
	ld.w	$a5, $a0, 0
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a4, $a3
	or	$a1, $a3, $a1
	slt	$a3, $a1, $a5
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a5, $a3
	or	$t7, $a3, $a1
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 12
	bnez	$a2, .LBB8_136
.LBB8_137:                              # %.loopexit
	pcalau12i	$a0, %pc_hi20(max_range_sfac_tab)
	addi.d	$a0, $a0, %pc_lo12(max_range_sfac_tab)
	slli.d	$a1, $s2, 4
	ldx.w	$a1, $a0, $a1
	alsl.d	$a0, $s2, $a0, 4
	ld.w	$a2, $a0, 4
	slt	$a1, $a1, $s4
	ld.w	$a3, $a0, 8
	slt	$a2, $a2, $s5
	ld.w	$a0, $a0, 12
	add.d	$a1, $a1, $a2
	slt	$a2, $a3, $t3
	add.d	$a1, $a1, $a2
	slt	$a0, $a0, $t7
	add.d	$a0, $a1, $a0
	bnez	$a0, .LBB8_142
# %bb.138:
	slli.d	$a1, $s4, 2
	pcalau12i	$a2, %pc_hi20(scale_bitcount_lsf.log2tab)
	addi.d	$a3, $a2, %pc_lo12(scale_bitcount_lsf.log2tab)
	ldx.w	$a4, $a3, $a1
	st.w	$a4, $t5, 104
	slli.d	$a1, $s5, 2
	ldx.w	$a5, $a3, $a1
	st.w	$a5, $t5, 108
	slli.d	$a1, $t3, 2
	ldx.w	$a2, $a3, $a1
	slli.d	$a1, $s2, 5
	alsl.d	$a1, $s2, $a1, 4
	st.w	$a2, $t5, 112
	slli.d	$a6, $t7, 2
	ldx.w	$a3, $a3, $a6
	pcalau12i	$a6, %pc_hi20(nr_of_sfb_block)
	addi.d	$a6, $a6, %pc_lo12(nr_of_sfb_block)
	add.d	$a1, $a6, $a1
	alsl.d	$a6, $s0, $a1, 4
	st.d	$a6, $t5, 96
	st.w	$a3, $t5, 116
	beqz	$s1, .LBB8_140
# %bb.139:
	alsl.d	$a1, $a4, $a4, 1
	add.d	$a1, $a1, $a5
	addi.d	$a7, $a1, 500
	b	.LBB8_141
.LBB8_140:
	alsl.d	$a1, $a4, $a4, 2
	add.d	$a1, $a1, $a5
	slli.d	$a7, $a2, 2
	alsl.d	$a1, $a1, $a7, 4
	add.d	$a7, $a1, $a3
.LBB8_141:                              # %.critedge.loopexit
	st.w	$a7, $t5, 16
	st.w	$zero, $t5, 76
	ld.w	$a1, $a6, 0
	mul.d	$a1, $a1, $a4
	st.w	$a1, $t5, 76
	ld.w	$a4, $a6, 4
	mul.d	$a4, $a4, $a5
	add.d	$a1, $a1, $a4
	st.w	$a1, $t5, 76
	ld.w	$a4, $a6, 8
	mul.d	$a2, $a4, $a2
	add.d	$a1, $a1, $a2
	st.w	$a1, $t5, 76
	ld.w	$a2, $a6, 12
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	st.w	$a1, $t5, 76
.LBB8_142:                              # %.critedge
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
.Lfunc_end8:
	.size	scale_bitcount_lsf, .Lfunc_end8-scale_bitcount_lsf
                                        # -- End function
	.globl	calc_xmin                       # -- Begin function calc_xmin
	.p2align	5
	.type	calc_xmin,@function
calc_xmin:                              # @calc_xmin
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
	ld.w	$a0, $a0, 144
	ld.w	$a6, $a3, 84
	beqz	$a0, .LBB9_14
# %bb.1:
	ori	$a0, $zero, 11
	bltu	$a0, $a6, .LBB9_4
# %bb.2:                                # %.preheader114.lr.ph
	slli.d	$a0, $a6, 4
	alsl.d	$a0, $a6, $a0, 3
	add.d	$a0, $a0, $a4
	addi.d	$a0, $a0, 192
	pcalau12i	$a1, %pc_hi20(ATH_s)
	addi.d	$a1, $a1, %pc_lo12(ATH_s)
	alsl.d	$a1, $a6, $a1, 3
	addi.d	$a2, $a6, 1
	ori	$a5, $zero, 12
	.p2align	4, , 16
.LBB9_3:                                # %.preheader114
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a0, -16
	fst.d	$fa0, $a0, -8
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a0, 0
	bstrpick.d	$a6, $a2, 31, 0
	addi.d	$a0, $a0, 24
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 1
	bne	$a6, $a5, .LBB9_3
.LBB9_4:                                # %.preheader112
	ld.w	$a3, $a3, 80
	beqz	$a3, .LBB9_12
# %bb.5:                                # %.lr.ph.preheader
	move	$a1, $zero
	bstrpick.d	$a0, $a3, 31, 0
	pcalau12i	$a2, %pc_hi20(ATH_l)
	ori	$a5, $zero, 8
	addi.d	$a2, $a2, %pc_lo12(ATH_l)
	bltu	$a3, $a5, .LBB9_10
# %bb.6:                                # %.lr.ph.preheader
	sub.d	$a3, $a4, $a2
	ori	$a5, $zero, 64
	bltu	$a3, $a5, .LBB9_10
# %bb.7:                                # %vector.ph
	bstrpick.d	$a1, $a0, 31, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $a2, 32
	addi.d	$a5, $a4, 32
	move	$a6, $a1
	.p2align	4, , 16
.LBB9_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 64
	addi.d	$a3, $a3, 64
	bnez	$a6, .LBB9_8
# %bb.9:                                # %middle.block
	beq	$a1, $a0, .LBB9_12
.LBB9_10:                               # %.lr.ph.preheader224
	alsl.d	$a2, $a1, $a2, 3
	alsl.d	$a3, $a1, $a4, 3
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB9_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB9_11
.LBB9_12:
	move	$a0, $zero
.LBB9_13:                               # %.loopexit
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
.LBB9_14:
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 11
	pcalau12i	$a7, %pc_hi20(masking_lower)
	pcalau12i	$a3, %pc_hi20(scalefac_band)
	addi.d	$a5, $a3, %pc_lo12(scalefac_band)
	st.d	$a7, $sp, 0                     # 8-byte Folded Spill
	bltu	$a0, $a6, .LBB9_38
# %bb.15:                               # %.lr.ph125
	move	$a0, $zero
	fld.s	$fa0, $a7, %pc_lo12(masking_lower)
	addi.d	$t0, $a2, 664
	addi.d	$t1, $a4, 176
	addi.d	$a3, $a2, 176
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	fcvt.d.s	$fa0, $fa0
	alsl.d	$a3, $a6, $a5, 2
	ld.w	$a7, $a3, 92
	addi.d	$t3, $a2, 672
	addi.d	$t4, $a2, 184
	addi.d	$t5, $a4, 184
	addi.d	$t6, $a2, 680
	addi.d	$t7, $a2, 192
	addi.d	$t8, $a4, 192
	addi.d	$fp, $a1, 8
	addi.d	$s0, $a1, 16
	pcalau12i	$a3, %pc_hi20(ATH_s)
	addi.d	$s1, $a3, %pc_lo12(ATH_s)
	movgr2fr.d	$fa1, $zero
	ori	$s2, $zero, 12
	b	.LBB9_18
	.p2align	4, , 16
.LBB9_16:                               # %.loopexit111.loopexit136
                                        #   in Loop: Header=BB9_18 Depth=1
	fcmp.clt.d	$fcc0, $fa5, $fa2
	movcf2gr	$a3, $fcc0
	fcmp.clt.d	$fcc0, $fa4, $fa2
	add.d	$a0, $a0, $a3
	movcf2gr	$a3, $fcc0
	add.d	$a0, $a0, $a3
	fcmp.clt.d	$fcc0, $fa3, $fa4
	fsel	$fa3, $fa3, $fa4, $fcc0
.LBB9_17:                               # %.loopexit111
                                        #   in Loop: Header=BB9_18 Depth=1
	alsl.d	$a3, $s4, $s6, 3
	fstx.d	$fa3, $t8, $a3
	fld.d	$fa3, $s5, 0
	fcmp.clt.d	$fcc0, $fa3, $fa2
	movcf2gr	$a3, $fcc0
	add.w	$a0, $a0, $a3
	move	$a7, $s3
	beq	$a6, $s2, .LBB9_39
.LBB9_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_20 Depth 2
                                        #     Child Loop BB9_24 Depth 2
                                        #     Child Loop BB9_28 Depth 2
	move	$s4, $a6
	addi.d	$a6, $a6, 1
	alsl.d	$a3, $a6, $a5, 2
	ld.w	$s3, $a3, 92
	sub.d	$a3, $s3, $a7
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	alsl.d	$s5, $s4, $s1, 3
	slli.d	$s6, $s4, 4
	bge	$a7, $s3, .LBB9_32
# %bb.19:                               # %.preheader110.us.preheader
                                        #   in Loop: Header=BB9_18 Depth=1
	slli.d	$a3, $a7, 4
	alsl.d	$ra, $a7, $a3, 3
	sub.d	$a3, $s3, $a7
	add.d	$a7, $a1, $ra
	move	$t2, $a3
	fmov.d	$fa3, $fa1
	.p2align	4, , 16
.LBB9_20:                               #   Parent Loop BB9_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa4, $a7, 0
	fmul.d	$fa4, $fa4, $fa4
	fadd.d	$fa3, $fa3, $fa4
	addi.d	$t2, $t2, -1
	addi.d	$a7, $a7, 24
	bnez	$t2, .LBB9_20
# %bb.21:                               # %._crit_edge.us
                                        #   in Loop: Header=BB9_18 Depth=1
	alsl.d	$s8, $s4, $s6, 3
	fldx.d	$fa5, $t0, $s8
	fcmp.clt.d	$fcc0, $fa1, $fa5
	fdiv.d	$fa4, $fa3, $fa2
	bceqz	$fcc0, .LBB9_23
# %bb.22:                               #   in Loop: Header=BB9_18 Depth=1
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $s8
	fmul.d	$fa3, $fa4, $fa3
	fmul.d	$fa3, $fa3, $fa0
	fdiv.d	$fa5, $fa3, $fa5
.LBB9_23:                               # %.preheader110.us.1
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa3, $s5, 0
	fcmp.clt.d	$fcc0, $fa5, $fa3
	fsel	$fa3, $fa5, $fa3, $fcc0
	fstx.d	$fa3, $t1, $s8
	fld.d	$fa3, $s5, 0
	fcmp.clt.d	$fcc0, $fa3, $fa4
	movcf2gr	$a7, $fcc0
	add.d	$t2, $fp, $ra
	move	$s7, $a3
	fmov.d	$fa4, $fa1
	.p2align	4, , 16
.LBB9_24:                               #   Parent Loop BB9_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa5, $t2, 0
	fmul.d	$fa5, $fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	addi.d	$s7, $s7, -1
	addi.d	$t2, $t2, 24
	bnez	$s7, .LBB9_24
# %bb.25:                               # %._crit_edge.us.1
                                        #   in Loop: Header=BB9_18 Depth=1
	fldx.d	$fa5, $t3, $s8
	fcmp.cule.d	$fcc0, $fa5, $fa1
	fdiv.d	$fa4, $fa4, $fa2
	bcnez	$fcc0, .LBB9_27
# %bb.26:                               #   in Loop: Header=BB9_18 Depth=1
	fldx.d	$fa6, $t4, $s8
	fmul.d	$fa6, $fa4, $fa6
	fmul.d	$fa6, $fa6, $fa0
	fdiv.d	$fa5, $fa6, $fa5
.LBB9_27:                               # %.preheader110.us.2
                                        #   in Loop: Header=BB9_18 Depth=1
	fcmp.clt.d	$fcc0, $fa5, $fa3
	fsel	$fa3, $fa5, $fa3, $fcc0
	fstx.d	$fa3, $t5, $s8
	fld.d	$fa3, $s5, 0
	fcmp.clt.d	$fcc0, $fa3, $fa4
	add.d	$a0, $a0, $a7
	movcf2gr	$a7, $fcc0
	add.d	$t2, $s0, $ra
	fmov.d	$fa4, $fa1
	.p2align	4, , 16
.LBB9_28:                               #   Parent Loop BB9_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa5, $t2, 0
	fmul.d	$fa5, $fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	addi.d	$a3, $a3, -1
	addi.d	$t2, $t2, 24
	bnez	$a3, .LBB9_28
# %bb.29:                               # %._crit_edge.us.2
                                        #   in Loop: Header=BB9_18 Depth=1
	fldx.d	$fa5, $t6, $s8
	fcmp.cule.d	$fcc0, $fa5, $fa1
	fdiv.d	$fa2, $fa4, $fa2
	bcnez	$fcc0, .LBB9_31
# %bb.30:                               #   in Loop: Header=BB9_18 Depth=1
	fldx.d	$fa4, $t7, $s8
	fmul.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fdiv.d	$fa5, $fa4, $fa5
.LBB9_31:                               # %.loopexit111.loopexit
                                        #   in Loop: Header=BB9_18 Depth=1
	add.d	$a0, $a0, $a7
	fcmp.clt.d	$fcc0, $fa5, $fa3
	fsel	$fa3, $fa5, $fa3, $fcc0
	b	.LBB9_17
	.p2align	4, , 16
.LBB9_32:                               # %.split
                                        #   in Loop: Header=BB9_18 Depth=1
	alsl.d	$s7, $s4, $s6, 3
	fldx.d	$fa3, $t0, $s7
	fcmp.cule.d	$fcc0, $fa3, $fa1
	fdiv.d	$fa2, $fa1, $fa2
	bcnez	$fcc0, .LBB9_34
# %bb.33:                               #   in Loop: Header=BB9_18 Depth=1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	fldx.d	$fa4, $a3, $s7
	fmul.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fdiv.d	$fa3, $fa4, $fa3
.LBB9_34:                               # %.preheader110.1
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa4, $s5, 0
	fcmp.clt.d	$fcc0, $fa3, $fa4
	fsel	$fa3, $fa3, $fa4, $fcc0
	fstx.d	$fa3, $t1, $s7
	fldx.d	$fa3, $t3, $s7
	fcmp.cule.d	$fcc0, $fa3, $fa1
	bcnez	$fcc0, .LBB9_36
# %bb.35:                               #   in Loop: Header=BB9_18 Depth=1
	fldx.d	$fa4, $t4, $s7
	fmul.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fdiv.d	$fa3, $fa4, $fa3
.LBB9_36:                               # %.preheader110.2
                                        #   in Loop: Header=BB9_18 Depth=1
	fld.d	$fa5, $s5, 0
	fcmp.clt.d	$fcc0, $fa3, $fa5
	fsel	$fa3, $fa3, $fa5, $fcc0
	fstx.d	$fa3, $t5, $s7
	fldx.d	$fa3, $t6, $s7
	fld.d	$fa4, $s5, 0
	movgr2fr.d	$fa6, $zero
	fcmp.cule.d	$fcc0, $fa3, $fa6
	bcnez	$fcc0, .LBB9_16
# %bb.37:                               #   in Loop: Header=BB9_18 Depth=1
	fldx.d	$fa6, $t7, $s7
	fmul.d	$fa6, $fa2, $fa6
	fmul.d	$fa6, $fa6, $fa0
	fdiv.d	$fa3, $fa6, $fa3
	b	.LBB9_16
.LBB9_38:
	move	$a0, $zero
.LBB9_39:                               # %.preheader
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ld.wu	$a3, $a3, 80
	beqz	$a3, .LBB9_13
# %bb.40:                               # %.lr.ph132
	ld.d	$a6, $sp, 0                     # 8-byte Folded Reload
	fld.s	$fa0, $a6, %pc_lo12(masking_lower)
	move	$t3, $zero
	addi.d	$a6, $a2, 488
	fcvt.d.s	$fa0, $fa0
	ld.w	$t2, $a5, 0
	movgr2fr.d	$fa1, $zero
	pcalau12i	$a7, %pc_hi20(ATH_l)
	addi.d	$a7, $a7, %pc_lo12(ATH_l)
	b	.LBB9_42
	.p2align	4, , 16
.LBB9_41:                               #   in Loop: Header=BB9_42 Depth=1
	fldx.d	$fa4, $a7, $t3
	fcmp.clt.d	$fcc0, $fa3, $fa4
	fsel	$fa3, $fa3, $fa4, $fcc0
	fstx.d	$fa3, $a4, $t3
	fldx.d	$fa3, $a7, $t3
	fcmp.clt.d	$fcc0, $fa3, $fa2
	movcf2gr	$t2, $fcc0
	add.w	$a0, $a0, $t2
	move	$t2, $t1
	move	$t3, $t0
	beq	$t0, $a3, .LBB9_13
.LBB9_42:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_44 Depth 2
	addi.d	$t0, $t3, 1
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a5, $t1
	fmov.d	$fa2, $fa1
	bge	$t2, $t1, .LBB9_45
# %bb.43:                               # %.lr.ph128.preheader
                                        #   in Loop: Header=BB9_42 Depth=1
	alsl.d	$t4, $t2, $a1, 3
	sub.d	$t5, $t1, $t2
	fmov.d	$fa2, $fa1
	.p2align	4, , 16
.LBB9_44:                               # %.lr.ph128
                                        #   Parent Loop BB9_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t4, 0
	fmul.d	$fa3, $fa3, $fa3
	fadd.d	$fa2, $fa2, $fa3
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB9_44
.LBB9_45:                               # %._crit_edge
                                        #   in Loop: Header=BB9_42 Depth=1
	slli.d	$t3, $t3, 3
	fldx.d	$fa3, $a6, $t3
	sub.w	$t2, $t1, $t2
	movgr2fr.w	$fa4, $t2
	ffint.d.w	$fa4, $fa4
	fcmp.cule.d	$fcc0, $fa3, $fa1
	fdiv.d	$fa2, $fa2, $fa4
	bcnez	$fcc0, .LBB9_41
# %bb.46:                               #   in Loop: Header=BB9_42 Depth=1
	fldx.d	$fa4, $a2, $t3
	fmul.d	$fa4, $fa2, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fdiv.d	$fa3, $fa4, $fa3
	b	.LBB9_41
.Lfunc_end9:
	.size	calc_xmin, .Lfunc_end9-calc_xmin
                                        # -- End function
	.globl	loop_break                      # -- Begin function loop_break
	.p2align	5
	.type	loop_break,@function
loop_break:                             # @loop_break
# %bb.0:
	ld.wu	$a3, $a1, 80
	move	$a2, $a0
	beqz	$a3, .LBB10_4
# %bb.1:
	move	$a0, $a2
	.p2align	4, , 16
.LBB10_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	beqz	$a4, .LBB10_11
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB10_2
.LBB10_4:                               # %._crit_edge
	ld.w	$a3, $a1, 84
	ori	$a1, $zero, 11
	ori	$a0, $zero, 1
	bltu	$a1, $a3, .LBB10_10
# %bb.5:                                # %.preheader.lr.ph
	slli.d	$a1, $a3, 3
	alsl.d	$a1, $a3, $a1, 2
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 96
	addi.d	$a2, $a3, 1
	ori	$a3, $zero, 12
	.p2align	4, , 16
.LBB10_6:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, -8
	beqz	$a4, .LBB10_11
# %bb.7:                                #   in Loop: Header=BB10_6 Depth=1
	ld.w	$a4, $a1, -4
	beqz	$a4, .LBB10_11
# %bb.8:                                #   in Loop: Header=BB10_6 Depth=1
	ld.w	$a4, $a1, 0
	beqz	$a4, .LBB10_11
# %bb.9:                                #   in Loop: Header=BB10_6 Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a1, $a1, 12
	addi.d	$a2, $a2, 1
	bne	$a4, $a3, .LBB10_6
.LBB10_10:                              # %.loopexit
	ret
.LBB10_11:
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	loop_break, .Lfunc_end10-loop_break
                                        # -- End function
	.globl	bin_search_StepSize2            # -- Begin function bin_search_StepSize2
	.p2align	5
	.type	bin_search_StepSize2,@function
bin_search_StepSize2:                   # @bin_search_StepSize2
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
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s7, $a2
	move	$s3, $a1
	move	$s4, $a0
	st.w	$a2, $a5, 12
	move	$a1, $a3
	move	$a2, $a4
	move	$a3, $a5
	pcaddu18i	$ra, %call36(count_bits)
	jirl	$ra, $ra, 0
	pcalau12i	$s5, %pc_hi20(bin_search_StepSize2.CurrentStep)
	ld.w	$a1, $s5, %pc_lo12(bin_search_StepSize2.CurrentStep)
	ori	$s6, $zero, 1
	st.d	$s7, $sp, 0                     # 8-byte Folded Spill
	bne	$a1, $s6, .LBB11_2
.LBB11_1:                               # %._crit_edge
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	sub.w	$a1, $a1, $s7
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	sub.w	$a1, $a1, $a2
	sltui	$a1, $a1, 4
	ori	$a2, $zero, 4
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 2
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.w	$a1, $s5, %pc_lo12(bin_search_StepSize2.CurrentStep)
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
.LBB11_2:                               # %.lr.ph.preheader
	move	$fp, $zero
	move	$s8, $zero
	b	.LBB11_5
	.p2align	4, , 16
.LBB11_3:                               #   in Loop: Header=BB11_5 Depth=1
	add.w	$s7, $a1, $s7
	ori	$fp, $zero, 1
	ori	$a1, $zero, 255
	blt	$a1, $s7, .LBB11_1
.LBB11_4:                               #   in Loop: Header=BB11_5 Depth=1
	st.w	$s7, $s0, 12
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(count_bits)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(bin_search_StepSize2.CurrentStep)
	beq	$a1, $s6, .LBB11_1
.LBB11_5:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s8, .LBB11_7
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=1
	bstrpick.d	$a1, $a1, 31, 1
	st.w	$a1, $s5, %pc_lo12(bin_search_StepSize2.CurrentStep)
.LBB11_7:                               #   in Loop: Header=BB11_5 Depth=1
	bge	$s3, $a0, .LBB11_11
# %bb.8:                                #   in Loop: Header=BB11_5 Depth=1
	bnez	$s8, .LBB11_3
# %bb.9:                                #   in Loop: Header=BB11_5 Depth=1
	ori	$a2, $zero, 2
	bne	$fp, $a2, .LBB11_3
# %bb.10:                               #   in Loop: Header=BB11_5 Depth=1
	bstrpick.d	$a1, $a1, 31, 1
	st.w	$a1, $s5, %pc_lo12(bin_search_StepSize2.CurrentStep)
	ori	$s8, $zero, 1
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_11:                              #   in Loop: Header=BB11_5 Depth=1
	bge	$a0, $s3, .LBB11_1
# %bb.12:                               #   in Loop: Header=BB11_5 Depth=1
	bnez	$s8, .LBB11_15
# %bb.13:                               #   in Loop: Header=BB11_5 Depth=1
	bne	$fp, $s6, .LBB11_15
# %bb.14:                               #   in Loop: Header=BB11_5 Depth=1
	bstrpick.d	$a1, $a1, 31, 1
	st.w	$a1, $s5, %pc_lo12(bin_search_StepSize2.CurrentStep)
	ori	$s8, $zero, 1
.LBB11_15:                              #   in Loop: Header=BB11_5 Depth=1
	sub.w	$s7, $s7, $a1
	ori	$fp, $zero, 2
	bgez	$s7, .LBB11_4
	b	.LBB11_1
.Lfunc_end11:
	.size	bin_search_StepSize2, .Lfunc_end11-bin_search_StepSize2
                                        # -- End function
	.globl	quantize_xrpow                  # -- Begin function quantize_xrpow
	.p2align	5
	.type	quantize_xrpow,@function
quantize_xrpow:                         # @quantize_xrpow
# %bb.0:
	ld.wu	$a2, $a2, 12
	slli.d	$a2, $a2, 3
	pcalau12i	$a3, %pc_hi20(ipow20)
	addi.d	$a3, $a3, %pc_lo12(ipow20)
	fldx.d	$fa0, $a3, $a2
	xvreplve0.d	$xr0, $xr0
	ori	$a2, $zero, 73
	pcalau12i	$a3, %pc_hi20(adj43)
	addi.d	$a3, $a3, %pc_lo12(adj43)
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a0, 32
	xvld	$xr2, $a0, 0
	addi.d	$a0, $a0, 64
	addi.d	$a5, $a1, 32
	xvfmul.d	$xr1, $xr0, $xr1
	xvfmul.d	$xr2, $xr0, $xr2
	xvpickve2gr.d	$a6, $xr2, 0
	movgr2fr.d	$fa3, $a6
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a6, $fa3
	xvpickve2gr.d	$a7, $xr2, 1
	movgr2fr.d	$fa3, $a7
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a7, $fa3
	xvpickve2gr.d	$t0, $xr2, 2
	movgr2fr.d	$fa3, $t0
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t0, $fa3
	xvpickve2gr.d	$t1, $xr2, 3
	movgr2fr.d	$fa3, $t1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t1, $fa3
	xvpickve2gr.d	$t2, $xr1, 0
	movgr2fr.d	$fa3, $t2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t2, $fa3
	xvpickve2gr.d	$t3, $xr1, 1
	movgr2fr.d	$fa3, $t3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t3, $fa3
	xvpickve2gr.d	$t4, $xr1, 2
	movgr2fr.d	$fa3, $t4
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t4, $fa3
	slli.d	$a6, $a6, 3
	fldx.d	$fa3, $a3, $a6
	xvpickve2gr.d	$a6, $xr1, 3
	movgr2fr.d	$fa4, $a6
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a6, $fa4
	slli.d	$a7, $a7, 3
	fldx.d	$fa4, $a3, $a7
	slli.d	$a7, $t0, 3
	fldx.d	$fa5, $a3, $a7
	slli.d	$a7, $t1, 3
	slli.d	$t0, $t2, 3
	fldx.d	$fa6, $a3, $t0
	slli.d	$t0, $t3, 3
	fldx.d	$fa7, $a3, $t0
	slli.d	$t0, $t4, 3
	fldx.d	$ft0, $a3, $t0
	slli.d	$a6, $a6, 3
	fldx.d	$ft1, $a3, $a6
	fldx.d	$ft2, $a3, $a7
	movfr2gr.d	$a6, $fa6
	xvinsgr2vr.d	$xr6, $a6, 0
	movfr2gr.d	$a6, $fa7
	xvinsgr2vr.d	$xr6, $a6, 1
	movfr2gr.d	$a6, $ft0
	xvinsgr2vr.d	$xr6, $a6, 2
	movfr2gr.d	$a6, $ft1
	xvinsgr2vr.d	$xr6, $a6, 3
	movfr2gr.d	$a6, $fa3
	xvinsgr2vr.d	$xr3, $a6, 0
	movfr2gr.d	$a6, $fa4
	xvinsgr2vr.d	$xr3, $a6, 1
	movfr2gr.d	$a6, $fa5
	xvinsgr2vr.d	$xr3, $a6, 2
	movfr2gr.d	$a6, $ft2
	xvinsgr2vr.d	$xr3, $a6, 3
	xvfadd.d	$xr2, $xr2, $xr3
	xvfadd.d	$xr1, $xr1, $xr6
	xvpermi.d	$xr3, $xr1, 238
	xvfcvt.s.d	$xr1, $xr3, $xr1
	xvftintrz.w.s	$xr1, $xr1
	xvpermi.d	$xr3, $xr2, 238
	xvfcvt.s.d	$xr2, $xr3, $xr2
	xvftintrz.w.s	$xr2, $xr2
	xvpermi.q	$xr2, $xr1, 2
	addi.w	$a2, $a2, -1
	xvst	$xr2, $a1, 0
	move	$a1, $a5
	bltu	$a4, $a2, .LBB12_1
# %bb.2:
	ret
.Lfunc_end12:
	.size	quantize_xrpow, .Lfunc_end12-quantize_xrpow
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function quantize_xrpow_ISO
.LCPI13_0:
	.dword	0x3fe306f694467382              # double 0.59460000000000002
	.text
	.globl	quantize_xrpow_ISO
	.p2align	5
	.type	quantize_xrpow_ISO,@function
quantize_xrpow_ISO:                     # @quantize_xrpow_ISO
# %bb.0:                                # %vector.ph
	ld.wu	$a2, $a2, 12
	slli.d	$a2, $a2, 3
	pcalau12i	$a3, %pc_hi20(ipow20)
	addi.d	$a3, $a3, %pc_lo12(ipow20)
	fldx.d	$fa0, $a3, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI13_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI13_0)
	fdiv.d	$fa1, $fa1, $fa0
	xvreplve0.d	$xr0, $xr0
	xvreplve0.d	$xr1, $xr1
	addi.d	$a0, $a0, 32
	lu12i.w	$a2, -1
	ori	$a2, $a2, 1792
	lu12i.w	$a3, -166095
	ori	$a3, $a3, 2300
	lu32i.d	$a3, -396782
	lu52i.d	$a3, $a3, 1021
	xvreplgr2vr.d	$xr2, $a3
	vrepli.b	$vr3, 0
	ori	$a3, $zero, 2304
	ori	$a4, $zero, 2320
	.p2align	4, , 16
.LBB13_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a0, -32
	add.d	$a5, $a1, $a2
	xvld	$xr5, $a0, 0
	xvfcmp.clt.d	$xr6, $xr4, $xr1
	xvpickve2gr.d	$a6, $xr6, 0
	vinsgr2vr.w	$vr7, $a6, 0
	xvpickve2gr.d	$a6, $xr6, 1
	vinsgr2vr.w	$vr7, $a6, 1
	xvpickve2gr.d	$a6, $xr6, 2
	vinsgr2vr.w	$vr7, $a6, 2
	xvpickve2gr.d	$a6, $xr6, 3
	vinsgr2vr.w	$vr7, $a6, 3
	xvfcmp.clt.d	$xr6, $xr5, $xr1
	xvpickve2gr.d	$a6, $xr6, 0
	vinsgr2vr.w	$vr8, $a6, 0
	xvpickve2gr.d	$a6, $xr6, 1
	vinsgr2vr.w	$vr8, $a6, 1
	xvpickve2gr.d	$a6, $xr6, 2
	vinsgr2vr.w	$vr8, $a6, 2
	xvpickve2gr.d	$a6, $xr6, 3
	vinsgr2vr.w	$vr8, $a6, 3
	xvfmadd.d	$xr4, $xr0, $xr4, $xr2
	xvfmadd.d	$xr5, $xr0, $xr5, $xr2
	xvpermi.d	$xr6, $xr4, 238
	xvfcvt.s.d	$xr4, $xr6, $xr4
	xvftintrz.w.s	$xr4, $xr4
	xvpermi.d	$xr6, $xr5, 238
	xvfcvt.s.d	$xr5, $xr6, $xr5
	xvftintrz.w.s	$xr5, $xr5
	vbitsel.v	$vr4, $vr4, $vr3, $vr7
	vbitsel.v	$vr5, $vr5, $vr3, $vr8
	vstx	$vr4, $a5, $a3
	vstx	$vr5, $a5, $a4
	addi.d	$a2, $a2, 32
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB13_1
# %bb.2:                                # %middle.block
	ret
.Lfunc_end13:
	.size	quantize_xrpow_ISO, .Lfunc_end13-quantize_xrpow_ISO
                                        # -- End function
	.type	masking_lower,@object           # @masking_lower
	.data
	.globl	masking_lower
	.p2align	2, 0x0
masking_lower:
	.word	0x3f800000                      # float 1
	.size	masking_lower, 4

	.type	nr_of_sfb_block,@object         # @nr_of_sfb_block
	.globl	nr_of_sfb_block
	.p2align	2, 0x0
nr_of_sfb_block:
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	3                               # 0x3
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	12                              # 0xc
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	9                               # 0x9
	.word	12                              # 0xc
	.word	6                               # 0x6
	.word	11                              # 0xb
	.word	10                              # 0xa
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	15                              # 0xf
	.word	18                              # 0x12
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	15                              # 0xf
	.word	12                              # 0xc
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	12                              # 0xc
	.word	9                               # 0x9
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	9                               # 0x9
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	5                               # 0x5
	.word	0                               # 0x0
	.word	15                              # 0xf
	.word	12                              # 0xc
	.word	9                               # 0x9
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	18                              # 0x12
	.word	9                               # 0x9
	.word	0                               # 0x0
	.size	nr_of_sfb_block, 288

	.type	pretab,@object                  # @pretab
	.globl	pretab
	.p2align	2, 0x0
pretab:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.size	pretab, 84

	.type	sfBandIndex,@object             # @sfBandIndex
	.globl	sfBandIndex
	.p2align	2, 0x0
sfBandIndex:
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	36                              # 0x24
	.word	44                              # 0x2c
	.word	54                              # 0x36
	.word	66                              # 0x42
	.word	80                              # 0x50
	.word	96                              # 0x60
	.word	116                             # 0x74
	.word	140                             # 0x8c
	.word	168                             # 0xa8
	.word	200                             # 0xc8
	.word	238                             # 0xee
	.word	284                             # 0x11c
	.word	336                             # 0x150
	.word	396                             # 0x18c
	.word	464                             # 0x1d0
	.word	522                             # 0x20a
	.word	576                             # 0x240
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	42                              # 0x2a
	.word	56                              # 0x38
	.word	74                              # 0x4a
	.word	100                             # 0x64
	.word	132                             # 0x84
	.word	174                             # 0xae
	.word	192                             # 0xc0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	36                              # 0x24
	.word	44                              # 0x2c
	.word	54                              # 0x36
	.word	66                              # 0x42
	.word	80                              # 0x50
	.word	96                              # 0x60
	.word	114                             # 0x72
	.word	136                             # 0x88
	.word	162                             # 0xa2
	.word	194                             # 0xc2
	.word	232                             # 0xe8
	.word	278                             # 0x116
	.word	332                             # 0x14c
	.word	394                             # 0x18a
	.word	464                             # 0x1d0
	.word	540                             # 0x21c
	.word	576                             # 0x240
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	26                              # 0x1a
	.word	36                              # 0x24
	.word	48                              # 0x30
	.word	62                              # 0x3e
	.word	80                              # 0x50
	.word	104                             # 0x68
	.word	136                             # 0x88
	.word	180                             # 0xb4
	.word	192                             # 0xc0
	.word	0                               # 0x0
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	36                              # 0x24
	.word	44                              # 0x2c
	.word	54                              # 0x36
	.word	66                              # 0x42
	.word	80                              # 0x50
	.word	96                              # 0x60
	.word	116                             # 0x74
	.word	140                             # 0x8c
	.word	168                             # 0xa8
	.word	200                             # 0xc8
	.word	238                             # 0xee
	.word	284                             # 0x11c
	.word	336                             # 0x150
	.word	396                             # 0x18c
	.word	464                             # 0x1d0
	.word	522                             # 0x20a
	.word	576                             # 0x240
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	26                              # 0x1a
	.word	36                              # 0x24
	.word	48                              # 0x30
	.word	62                              # 0x3e
	.word	80                              # 0x50
	.word	104                             # 0x68
	.word	134                             # 0x86
	.word	174                             # 0xae
	.word	192                             # 0xc0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	36                              # 0x24
	.word	44                              # 0x2c
	.word	52                              # 0x34
	.word	62                              # 0x3e
	.word	74                              # 0x4a
	.word	90                              # 0x5a
	.word	110                             # 0x6e
	.word	134                             # 0x86
	.word	162                             # 0xa2
	.word	196                             # 0xc4
	.word	238                             # 0xee
	.word	288                             # 0x120
	.word	342                             # 0x156
	.word	418                             # 0x1a2
	.word	576                             # 0x240
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	22                              # 0x16
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	52                              # 0x34
	.word	66                              # 0x42
	.word	84                              # 0x54
	.word	106                             # 0x6a
	.word	136                             # 0x88
	.word	192                             # 0xc0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	36                              # 0x24
	.word	42                              # 0x2a
	.word	50                              # 0x32
	.word	60                              # 0x3c
	.word	72                              # 0x48
	.word	88                              # 0x58
	.word	106                             # 0x6a
	.word	128                             # 0x80
	.word	156                             # 0x9c
	.word	190                             # 0xbe
	.word	230                             # 0xe6
	.word	276                             # 0x114
	.word	330                             # 0x14a
	.word	384                             # 0x180
	.word	576                             # 0x240
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	22                              # 0x16
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	50                              # 0x32
	.word	64                              # 0x40
	.word	80                              # 0x50
	.word	100                             # 0x64
	.word	126                             # 0x7e
	.word	192                             # 0xc0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	36                              # 0x24
	.word	44                              # 0x2c
	.word	54                              # 0x36
	.word	66                              # 0x42
	.word	82                              # 0x52
	.word	102                             # 0x66
	.word	126                             # 0x7e
	.word	156                             # 0x9c
	.word	194                             # 0xc2
	.word	240                             # 0xf0
	.word	296                             # 0x128
	.word	364                             # 0x16c
	.word	448                             # 0x1c0
	.word	550                             # 0x226
	.word	576                             # 0x240
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	22                              # 0x16
	.word	30                              # 0x1e
	.word	42                              # 0x2a
	.word	58                              # 0x3a
	.word	78                              # 0x4e
	.word	104                             # 0x68
	.word	138                             # 0x8a
	.word	180                             # 0xb4
	.word	192                             # 0xc0
	.size	sfBandIndex, 888

	.type	scalefac_band,@object           # @scalefac_band
	.bss
	.globl	scalefac_band
	.p2align	5, 0x0
scalefac_band:
	.space	148
	.size	scalefac_band, 148

	.type	ATH_l,@object                   # @ATH_l
	.local	ATH_l
	.comm	ATH_l,168,8
	.type	ATH_s,@object                   # @ATH_s
	.local	ATH_s
	.comm	ATH_s,168,8
	.type	pow43,@object                   # @pow43
	.globl	pow43
	.p2align	3, 0x0
pow43:
	.space	65664
	.size	pow43, 65664

	.type	adj43,@object                   # @adj43
	.local	adj43
	.comm	adj43,65664,8
	.type	ipow20,@object                  # @ipow20
	.globl	ipow20
	.p2align	3, 0x0
ipow20:
	.space	2048
	.size	ipow20, 2048

	.type	pow20,@object                   # @pow20
	.globl	pow20
	.p2align	3, 0x0
pow20:
	.space	2048
	.size	pow20, 2048

	.type	convert_mdct,@object            # @convert_mdct
	.globl	convert_mdct
	.p2align	2, 0x0
convert_mdct:
	.word	0                               # 0x0
	.size	convert_mdct, 4

	.type	reduce_sidechannel,@object      # @reduce_sidechannel
	.globl	reduce_sidechannel
	.p2align	2, 0x0
reduce_sidechannel:
	.word	0                               # 0x0
	.size	reduce_sidechannel, 4

	.type	scale_bitcount.slen1_tab,@object # @scale_bitcount.slen1_tab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
scale_bitcount.slen1_tab:
	.word	0                               # 0x0
	.word	18                              # 0x12
	.word	36                              # 0x24
	.word	54                              # 0x36
	.word	54                              # 0x36
	.word	36                              # 0x24
	.word	54                              # 0x36
	.word	72                              # 0x48
	.word	54                              # 0x36
	.word	72                              # 0x48
	.word	90                              # 0x5a
	.word	72                              # 0x48
	.word	90                              # 0x5a
	.word	108                             # 0x6c
	.word	108                             # 0x6c
	.word	126                             # 0x7e
	.size	scale_bitcount.slen1_tab, 64

	.type	scale_bitcount.slen2_tab,@object # @scale_bitcount.slen2_tab
	.p2align	2, 0x0
scale_bitcount.slen2_tab:
	.word	0                               # 0x0
	.word	10                              # 0xa
	.word	20                              # 0x14
	.word	30                              # 0x1e
	.word	33                              # 0x21
	.word	21                              # 0x15
	.word	31                              # 0x1f
	.word	41                              # 0x29
	.word	32                              # 0x20
	.word	42                              # 0x2a
	.word	52                              # 0x34
	.word	43                              # 0x2b
	.word	53                              # 0x35
	.word	63                              # 0x3f
	.word	64                              # 0x40
	.word	74                              # 0x4a
	.size	scale_bitcount.slen2_tab, 64

	.type	max_range_sfac_tab,@object      # @max_range_sfac_tab
	.p2align	2, 0x0
max_range_sfac_tab:
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	15                              # 0xf
	.word	31                              # 0x1f
	.word	31                              # 0x1f
	.word	0                               # 0x0
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.size	max_range_sfac_tab, 96

	.type	scale_bitcount_lsf.log2tab,@object # @scale_bitcount_lsf.log2tab
	.p2align	2, 0x0
scale_bitcount_lsf.log2tab:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.size	scale_bitcount_lsf.log2tab, 64

	.type	bin_search_StepSize2.CurrentStep,@object # @bin_search_StepSize2.CurrentStep
	.data
	.p2align	2, 0x0
bin_search_StepSize2.CurrentStep:
	.word	4                               # 0x4
	.size	bin_search_StepSize2.CurrentStep, 4

	.type	ATH_mdct_long,@object           # @ATH_mdct_long
	.bss
	.globl	ATH_mdct_long
	.p2align	3, 0x0
ATH_mdct_long:
	.space	4608
	.size	ATH_mdct_long, 4608

	.type	ATH_mdct_short,@object          # @ATH_mdct_short
	.globl	ATH_mdct_short
	.p2align	3, 0x0
ATH_mdct_short:
	.space	1536
	.size	ATH_mdct_short, 1536

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nr_of_sfb_block
	.addrsig_sym ATH_l
	.addrsig_sym ATH_s
