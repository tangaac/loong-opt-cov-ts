	.file	"IntMM.c"
	.text
	.globl	Initrand                        # -- Begin function Initrand
	.p2align	5
	.type	Initrand,@function
Initrand:                               # @Initrand
# %bb.0:
	pcalau12i	$a0, %pc_hi20(seed)
	lu12i.w	$a1, 18
	ori	$a1, $a1, 1027
	st.d	$a1, $a0, %pc_lo12(seed)
	ret
.Lfunc_end0:
	.size	Initrand, .Lfunc_end0-Initrand
                                        # -- End function
	.globl	Rand                            # -- Begin function Rand
	.p2align	5
	.type	Rand,@function
Rand:                                   # @Rand
# %bb.0:
	pcalau12i	$a1, %pc_hi20(seed)
	ld.d	$a0, $a1, %pc_lo12(seed)
	ori	$a2, $zero, 1309
	mul.d	$a0, $a0, $a2
	lu12i.w	$a2, 3
	ori	$a2, $a2, 1561
	add.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $a1, %pc_lo12(seed)
	ret
.Lfunc_end1:
	.size	Rand, .Lfunc_end1-Rand
                                        # -- End function
	.globl	Initmatrix                      # -- Begin function Initmatrix
	.p2align	5
	.type	Initmatrix,@function
Initmatrix:                             # @Initmatrix
# %bb.0:
	pcalau12i	$a1, %pc_hi20(seed)
	ld.d	$a2, $a1, %pc_lo12(seed)
	addi.d	$a0, $a0, 168
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1309
	lu12i.w	$a5, 3
	ori	$a5, $a5, 1561
	lu12i.w	$a6, 8
	ori	$a6, $a6, 2185
	ori	$a7, $zero, 120
	ori	$t0, $zero, 160
	ori	$t1, $zero, 41
	.p2align	4, , 16
.LBB2_1:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	move	$t2, $zero
	.p2align	4, , 16
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a2, $a2, $a4
	add.d	$t3, $a2, $a5
	bstrpick.d	$a2, $t3, 15, 0
	mul.d	$t4, $a2, $a6
	srli.d	$t4, $t4, 22
	mul.d	$t4, $t4, $a7
	sub.d	$t3, $t3, $t4
	bstrpick.d	$t3, $t3, 15, 0
	addi.d	$t3, $t3, -60
	stx.w	$t3, $a0, $t2
	addi.d	$t2, $t2, 4
	bne	$t2, $t0, .LBB2_2
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 164
	bne	$a3, $t1, .LBB2_1
# %bb.4:
	st.d	$a2, $a1, %pc_lo12(seed)
	ret
.Lfunc_end2:
	.size	Initmatrix, .Lfunc_end2-Initmatrix
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function Innerproduct
.LCPI3_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI3_1:
	.word	0                               # 0x0
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	Innerproduct
	.p2align	5
	.type	Innerproduct,@function
Innerproduct:                           # @Innerproduct
# %bb.0:                                # %iter.check
	st.w	$zero, $a0, 0
	addi.d	$t0, $a0, 4
	ori	$a5, $zero, 164
	mul.d	$a6, $a3, $a5
	add.d	$a6, $a1, $a6
	addi.d	$a7, $a6, 4
	addi.d	$t1, $a6, 164
	alsl.d	$a2, $a4, $a2, 2
	sltu	$a4, $a0, $t1
	sltu	$a7, $a7, $t0
	and	$a4, $a4, $a7
	addi.d	$a7, $a2, 164
	bnez	$a4, .LBB3_3
# %bb.1:                                # %iter.check
	lu12i.w	$a4, 1
	ori	$t1, $a4, 2468
	add.d	$t1, $a2, $t1
	sltu	$t1, $a0, $t1
	sltu	$t0, $a7, $t0
	and	$t0, $t1, $t0
	bnez	$t0, .LBB3_3
# %bb.2:                                # %vector.body
	ori	$a5, $zero, 164
	mul.d	$a3, $a3, $a5
	add.d	$a1, $a1, $a3
	xvld	$xr0, $a1, 4
	xvld	$xr1, $a1, 36
	ld.w	$a3, $a2, 164
	ld.w	$a5, $a2, 328
	ld.w	$a6, $a2, 492
	ld.w	$a7, $a2, 656
	ld.w	$t0, $a2, 820
	ld.w	$t1, $a2, 984
	ld.w	$t2, $a2, 1148
	ld.w	$t3, $a2, 1312
	xvinsgr2vr.w	$xr2, $a3, 0
	xvinsgr2vr.w	$xr2, $a5, 1
	xvinsgr2vr.w	$xr2, $a6, 2
	xvinsgr2vr.w	$xr2, $a7, 3
	xvinsgr2vr.w	$xr2, $t0, 4
	xvinsgr2vr.w	$xr2, $t1, 5
	xvinsgr2vr.w	$xr2, $t2, 6
	xvinsgr2vr.w	$xr2, $t3, 7
	ld.w	$a3, $a2, 1476
	ld.w	$a5, $a2, 1640
	ld.w	$a6, $a2, 1804
	ld.w	$a7, $a2, 1968
	ori	$t0, $zero, 2132
	ldx.w	$t0, $a2, $t0
	ori	$t1, $zero, 2296
	ldx.w	$t1, $a2, $t1
	ori	$t2, $zero, 2460
	ldx.w	$t2, $a2, $t2
	ori	$t3, $zero, 2624
	ldx.w	$t3, $a2, $t3
	xvinsgr2vr.w	$xr3, $a3, 0
	xvinsgr2vr.w	$xr3, $a5, 1
	xvinsgr2vr.w	$xr3, $a6, 2
	xvinsgr2vr.w	$xr3, $a7, 3
	xvinsgr2vr.w	$xr3, $t0, 4
	xvinsgr2vr.w	$xr3, $t1, 5
	xvinsgr2vr.w	$xr3, $t2, 6
	xvinsgr2vr.w	$xr3, $t3, 7
	xvld	$xr4, $a1, 68
	xvld	$xr5, $a1, 100
	ori	$a3, $zero, 2788
	ldx.w	$a3, $a2, $a3
	ori	$a5, $zero, 2952
	ldx.w	$a5, $a2, $a5
	ori	$a6, $zero, 3116
	ldx.w	$a6, $a2, $a6
	ori	$a7, $zero, 3280
	ldx.w	$a7, $a2, $a7
	ori	$t0, $zero, 3444
	ldx.w	$t0, $a2, $t0
	ori	$t1, $zero, 3608
	ldx.w	$t1, $a2, $t1
	ori	$t2, $zero, 3772
	ldx.w	$t2, $a2, $t2
	ori	$t3, $zero, 3936
	ldx.w	$t3, $a2, $t3
	xvinsgr2vr.w	$xr6, $a3, 0
	xvinsgr2vr.w	$xr6, $a5, 1
	xvinsgr2vr.w	$xr6, $a6, 2
	xvinsgr2vr.w	$xr6, $a7, 3
	xvinsgr2vr.w	$xr6, $t0, 4
	xvinsgr2vr.w	$xr6, $t1, 5
	xvinsgr2vr.w	$xr6, $t2, 6
	xvinsgr2vr.w	$xr6, $t3, 7
	ori	$a3, $a4, 4
	ldx.w	$a3, $a2, $a3
	ori	$a5, $a4, 168
	ldx.w	$a5, $a2, $a5
	ori	$a6, $a4, 332
	ldx.w	$a6, $a2, $a6
	ori	$a7, $a4, 496
	ldx.w	$a7, $a2, $a7
	ori	$t0, $a4, 660
	ldx.w	$t0, $a2, $t0
	ori	$t1, $a4, 824
	ldx.w	$t1, $a2, $t1
	ori	$t2, $a4, 988
	ldx.w	$t2, $a2, $t2
	ori	$t3, $a4, 1152
	ldx.w	$t3, $a2, $t3
	xvinsgr2vr.w	$xr7, $a3, 0
	xvinsgr2vr.w	$xr7, $a5, 1
	xvinsgr2vr.w	$xr7, $a6, 2
	xvinsgr2vr.w	$xr7, $a7, 3
	xvinsgr2vr.w	$xr7, $t0, 4
	xvinsgr2vr.w	$xr7, $t1, 5
	xvinsgr2vr.w	$xr7, $t2, 6
	xvinsgr2vr.w	$xr7, $t3, 7
	xvmul.w	$xr4, $xr6, $xr4
	xvmul.w	$xr5, $xr7, $xr5
	pcalau12i	$a3, %pc_hi20(.LCPI3_0)
	xvld	$xr6, $a3, %pc_lo12(.LCPI3_0)
	xvmadd.w	$xr4, $xr2, $xr0
	xvmadd.w	$xr5, $xr3, $xr1
	xvadd.w	$xr0, $xr5, $xr4
	xvpermi.d	$xr1, $xr0, 78
	xvori.b	$xr2, $xr6, 0
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.w	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	pcalau12i	$a3, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI3_1)
	xvpickve2gr.w	$a3, $xr0, 0
	st.w	$a3, $a0, 0
	xvrepli.b	$xr2, 0
	xvshuf.w	$xr1, $xr2, $xr0
	xvld	$xr0, $a1, 132
	ori	$a1, $a4, 1316
	ldx.w	$a1, $a2, $a1
	ori	$a3, $a4, 1480
	ldx.w	$a3, $a2, $a3
	ori	$a5, $a4, 1644
	ldx.w	$a5, $a2, $a5
	ori	$a6, $a4, 1808
	ldx.w	$a6, $a2, $a6
	ori	$a7, $a4, 1972
	ldx.w	$a7, $a2, $a7
	ori	$t0, $a4, 2136
	ldx.w	$t0, $a2, $t0
	ori	$t1, $a4, 2300
	ldx.w	$t1, $a2, $t1
	ori	$a4, $a4, 2464
	ldx.w	$a2, $a2, $a4
	xvinsgr2vr.w	$xr2, $a1, 0
	xvinsgr2vr.w	$xr2, $a3, 1
	xvinsgr2vr.w	$xr2, $a5, 2
	xvinsgr2vr.w	$xr2, $a6, 3
	xvinsgr2vr.w	$xr2, $a7, 4
	xvinsgr2vr.w	$xr2, $t0, 5
	xvinsgr2vr.w	$xr2, $t1, 6
	xvinsgr2vr.w	$xr2, $a2, 7
	xvmadd.w	$xr1, $xr2, $xr0
	xvpermi.d	$xr0, $xr1, 78
	xvshuf.d	$xr6, $xr0, $xr0
	xvadd.w	$xr0, $xr1, $xr6
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a1, $xr0, 0
	st.w	$a1, $a0, 0
	ret
.LBB3_3:                                # %vec.epilog.scalar.ph.preheader
	move	$a1, $zero
	ori	$a2, $zero, 4
	.p2align	4, , 16
.LBB3_4:                                # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $a6, $a2
	ld.w	$a4, $a7, 0
	mul.d	$a3, $a4, $a3
	add.d	$a1, $a3, $a1
	st.w	$a1, $a0, 0
	addi.d	$a2, $a2, 4
	addi.d	$a7, $a7, 164
	bne	$a2, $a5, .LBB3_4
# %bb.5:                                # %.loopexit
	ret
.Lfunc_end3:
	.size	Innerproduct, .Lfunc_end3-Innerproduct
                                        # -- End function
	.globl	Intmm                           # -- Begin function Intmm
	.p2align	5
	.type	Intmm,@function
Intmm:                                  # @Intmm
# %bb.0:
	addi.d	$sp, $sp, -672
	st.d	$ra, $sp, 664                   # 8-byte Folded Spill
	st.d	$fp, $sp, 656                   # 8-byte Folded Spill
	st.d	$s0, $sp, 648                   # 8-byte Folded Spill
	st.d	$s1, $sp, 640                   # 8-byte Folded Spill
	st.d	$s2, $sp, 632                   # 8-byte Folded Spill
	st.d	$s3, $sp, 624                   # 8-byte Folded Spill
	st.d	$s4, $sp, 616                   # 8-byte Folded Spill
	st.d	$s5, $sp, 608                   # 8-byte Folded Spill
	st.d	$s6, $sp, 600                   # 8-byte Folded Spill
	st.d	$s7, $sp, 592                   # 8-byte Folded Spill
	st.d	$s8, $sp, 584                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 576                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 568                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 560                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 552                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 544                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 528                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 520                  # 8-byte Folded Spill
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ima)
	addi.d	$a0, $a0, %pc_lo12(ima)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $a0, 168
	ori	$a2, $zero, 1
	lu12i.w	$a0, 18
	ori	$a0, $a0, 1027
	ori	$a5, $zero, 1309
	lu12i.w	$a3, 3
	ori	$a3, $a3, 1561
	lu12i.w	$a4, 8
	ori	$a4, $a4, 2185
	ori	$a6, $zero, 120
	ori	$a7, $zero, 160
	ori	$t0, $zero, 41
	.p2align	4, , 16
.LBB4_1:                                # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
	move	$t1, $zero
	.p2align	4, , 16
.LBB4_2:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a0, $a0, $a5
	add.d	$t2, $a0, $a3
	bstrpick.d	$a0, $t2, 15, 0
	mul.d	$t3, $a0, $a4
	srli.d	$t3, $t3, 22
	mul.d	$t3, $t3, $a6
	sub.d	$t2, $t2, $t3
	bstrpick.d	$t2, $t2, 15, 0
	addi.d	$t2, $t2, -60
	stx.w	$t2, $a1, $t1
	addi.d	$t1, $t1, 4
	bne	$t1, $a7, .LBB4_2
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 164
	bne	$a2, $t0, .LBB4_1
# %bb.4:                                # %.preheader.i13.preheader
	pcalau12i	$a1, %pc_hi20(imb)
	addi.d	$a2, $a1, %pc_lo12(imb)
	addi.d	$a1, $a2, 168
	ori	$a5, $zero, 1
	ori	$a6, $zero, 1309
	ori	$a7, $zero, 120
	ori	$t0, $zero, 160
	ori	$t1, $zero, 41
	.p2align	4, , 16
.LBB4_5:                                # %.preheader.i13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	move	$t2, $zero
	.p2align	4, , 16
.LBB4_6:                                #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a0, $a0, $a6
	add.d	$t3, $a0, $a3
	bstrpick.d	$a0, $t3, 15, 0
	mul.d	$t4, $a0, $a4
	srli.d	$t4, $t4, 22
	mul.d	$t4, $t4, $a7
	sub.d	$t3, $t3, $t4
	bstrpick.d	$t3, $t3, 15, 0
	addi.d	$t3, $t3, -60
	stx.w	$t3, $a1, $t2
	addi.d	$t2, $t2, 4
	bne	$t2, $t0, .LBB4_6
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, 164
	bne	$a5, $t1, .LBB4_5
# %bb.8:                                # %Initmatrix.exit24
	pcalau12i	$a1, %pc_hi20(seed)
	st.d	$a0, $a1, %pc_lo12(seed)
	pcalau12i	$a0, %pc_hi20(imr)
	addi.d	$a0, $a0, %pc_lo12(imr)
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	addi.d	$a4, $a0, 168
	ori	$a1, $zero, 1
	ori	$a7, $zero, 2136
	ori	$t0, $zero, 2300
	ori	$t1, $zero, 2464
	ori	$t2, $zero, 2628
	ori	$t3, $zero, 2792
	ori	$t4, $zero, 2956
	ori	$t5, $zero, 3120
	ori	$t6, $zero, 3284
	ori	$t7, $zero, 3448
	ori	$t8, $zero, 3612
	ori	$fp, $zero, 3776
	ori	$s0, $zero, 3940
	lu12i.w	$s1, 1
	ori	$s2, $s1, 8
	ori	$s3, $s1, 172
	ori	$s4, $s1, 336
	ori	$s5, $s1, 500
	ori	$s6, $s1, 664
	ori	$s7, $s1, 828
	ori	$s8, $s1, 992
	ori	$ra, $zero, 160
	.p2align	4, , 16
.LBB4_9:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	move	$a0, $zero
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a3, $zero, 164
	mul.d	$a1, $a1, $a3
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	ld.w	$a3, $a1, 160
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a3, $a1, 156
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a3, $a1, 152
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a5, $a1, 4
	ld.w	$a3, $a1, 148
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a3, $a1, 8
	ld.w	$a6, $a1, 12
	xvreplgr2vr.w	$xr0, $a5
	xvst	$xr0, $sp, 480                  # 32-byte Folded Spill
	ld.w	$a5, $a1, 16
	xvreplgr2vr.w	$xr0, $a3
	xvst	$xr0, $sp, 448                  # 32-byte Folded Spill
	ld.w	$a3, $a1, 20
	xvreplgr2vr.w	$xr0, $a6
	xvst	$xr0, $sp, 416                  # 32-byte Folded Spill
	ld.w	$a6, $a1, 24
	xvreplgr2vr.w	$xr0, $a5
	xvst	$xr0, $sp, 384                  # 32-byte Folded Spill
	ld.w	$a5, $a1, 28
	xvreplgr2vr.w	$xr0, $a3
	xvst	$xr0, $sp, 352                  # 32-byte Folded Spill
	ld.w	$a3, $a1, 32
	xvreplgr2vr.w	$xr0, $a6
	xvst	$xr0, $sp, 320                  # 32-byte Folded Spill
	ld.w	$a6, $a1, 36
	xvreplgr2vr.w	$xr0, $a5
	xvst	$xr0, $sp, 288                  # 32-byte Folded Spill
	ld.w	$a5, $a1, 40
	xvreplgr2vr.w	$xr0, $a3
	xvst	$xr0, $sp, 256                  # 32-byte Folded Spill
	ld.w	$a3, $a1, 44
	xvreplgr2vr.w	$xr0, $a6
	xvst	$xr0, $sp, 224                  # 32-byte Folded Spill
	ld.w	$a6, $a1, 48
	xvreplgr2vr.w	$xr0, $a5
	xvst	$xr0, $sp, 192                  # 32-byte Folded Spill
	ld.w	$a5, $a1, 52
	xvreplgr2vr.w	$xr0, $a3
	xvst	$xr0, $sp, 160                  # 32-byte Folded Spill
	ld.w	$a3, $a1, 56
	xvreplgr2vr.w	$xr0, $a6
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	ld.w	$a6, $a1, 60
	xvreplgr2vr.w	$xr0, $a5
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	ld.w	$a5, $a1, 64
	xvreplgr2vr.w	$xr0, $a3
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	ld.w	$a3, $a1, 68
	xvreplgr2vr.w	$xr14, $a6
	ld.w	$a6, $a1, 72
	xvreplgr2vr.w	$xr15, $a5
	ld.w	$a5, $a1, 76
	xvreplgr2vr.w	$xr16, $a3
	ld.w	$a3, $a1, 80
	xvreplgr2vr.w	$xr17, $a6
	ld.w	$a6, $a1, 84
	xvreplgr2vr.w	$xr18, $a5
	ld.w	$a5, $a1, 88
	xvreplgr2vr.w	$xr19, $a3
	ld.w	$a3, $a1, 92
	xvreplgr2vr.w	$xr20, $a6
	ld.w	$a6, $a1, 96
	xvreplgr2vr.w	$xr21, $a5
	ld.w	$a5, $a1, 100
	xvreplgr2vr.w	$xr22, $a3
	ld.w	$a3, $a1, 104
	xvreplgr2vr.w	$xr23, $a6
	ld.w	$a6, $a1, 108
	xvreplgr2vr.w	$xr24, $a5
	ld.w	$a5, $a1, 112
	xvreplgr2vr.w	$xr25, $a3
	ld.w	$a3, $a1, 116
	xvreplgr2vr.w	$xr26, $a6
	ld.w	$a6, $a1, 120
	xvreplgr2vr.w	$xr27, $a5
	ld.w	$a5, $a1, 124
	xvreplgr2vr.w	$xr28, $a3
	ld.w	$a3, $a1, 128
	xvreplgr2vr.w	$xr29, $a6
	ld.w	$a6, $a1, 136
	xvreplgr2vr.w	$xr30, $a5
	ld.w	$a5, $a1, 132
	xvreplgr2vr.w	$xr31, $a3
	ld.w	$a3, $a1, 140
	ld.w	$a1, $a1, 144
	xvreplgr2vr.w	$xr0, $a5
	xvreplgr2vr.w	$xr1, $a6
	xvreplgr2vr.w	$xr2, $a3
	xvreplgr2vr.w	$xr3, $a1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	xvreplgr2vr.w	$xr4, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	xvreplgr2vr.w	$xr5, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	xvreplgr2vr.w	$xr6, $a1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	xvreplgr2vr.w	$xr7, $a1
	.p2align	4, , 16
.LBB4_10:                               # %vector.body
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $a2, $a0
	xvld	$xr8, $a6, 332
	xvld	$xr9, $a6, 168
	xvld	$xr10, $a6, 496
	xvld	$xr11, $a6, 660
	xvld	$xr12, $sp, 448                 # 32-byte Folded Reload
	xvmul.w	$xr8, $xr8, $xr12
	xvld	$xr12, $sp, 480                 # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr9, $xr12
	xvld	$xr9, $sp, 416                  # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr10, $xr9
	xvld	$xr9, $sp, 384                  # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr11, $xr9
	xvld	$xr9, $a6, 824
	xvld	$xr10, $a6, 988
	xvld	$xr11, $a6, 1152
	xvld	$xr12, $a6, 1316
	xvld	$xr13, $sp, 352                 # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr9, $xr13
	xvld	$xr9, $sp, 320                  # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr10, $xr9
	xvld	$xr9, $sp, 288                  # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr11, $xr9
	xvld	$xr9, $sp, 256                  # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr12, $xr9
	xvld	$xr9, $a6, 1480
	xvld	$xr10, $a6, 1644
	xvld	$xr11, $a6, 1808
	xvld	$xr12, $a6, 1972
	xvld	$xr13, $sp, 224                 # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr9, $xr13
	xvld	$xr9, $sp, 192                  # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr10, $xr9
	xvld	$xr9, $sp, 160                  # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr11, $xr9
	xvld	$xr9, $sp, 128                  # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr12, $xr9
	xvldx	$xr9, $a6, $a7
	xvldx	$xr10, $a6, $t0
	xvldx	$xr11, $a6, $t1
	xvldx	$xr12, $a6, $t2
	xvld	$xr13, $sp, 96                  # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr9, $xr13
	xvld	$xr9, $sp, 64                   # 32-byte Folded Reload
	xvmadd.w	$xr8, $xr10, $xr9
	xvmadd.w	$xr8, $xr11, $xr14
	xvmadd.w	$xr8, $xr12, $xr15
	xvldx	$xr9, $a6, $t3
	xvldx	$xr10, $a6, $t4
	xvldx	$xr11, $a6, $t5
	xvldx	$xr12, $a6, $t6
	xvmadd.w	$xr8, $xr9, $xr16
	xvmadd.w	$xr8, $xr10, $xr17
	xvmadd.w	$xr8, $xr11, $xr18
	xvmadd.w	$xr8, $xr12, $xr19
	xvldx	$xr9, $a6, $t7
	xvldx	$xr10, $a6, $t8
	xvldx	$xr11, $a6, $fp
	xvldx	$xr12, $a6, $s0
	xvmadd.w	$xr8, $xr9, $xr20
	xvmadd.w	$xr8, $xr10, $xr21
	xvmadd.w	$xr8, $xr11, $xr22
	xvmadd.w	$xr8, $xr12, $xr23
	xvldx	$xr9, $a6, $s2
	xvldx	$xr10, $a6, $s3
	xvldx	$xr11, $a6, $s4
	xvldx	$xr12, $a6, $s5
	xvmadd.w	$xr8, $xr9, $xr24
	xvmadd.w	$xr8, $xr10, $xr25
	xvmadd.w	$xr8, $xr11, $xr26
	xvmadd.w	$xr8, $xr12, $xr27
	xvldx	$xr9, $a6, $s6
	xvldx	$xr10, $a6, $s7
	xvldx	$xr11, $a6, $s8
	ori	$a1, $s1, 1156
	xvldx	$xr12, $a6, $a1
	xvmadd.w	$xr8, $xr9, $xr28
	xvmadd.w	$xr8, $xr10, $xr29
	xvmadd.w	$xr8, $xr11, $xr30
	xvmadd.w	$xr8, $xr12, $xr31
	ori	$a1, $s1, 1320
	xvldx	$xr9, $a6, $a1
	ori	$a1, $s1, 1484
	xvldx	$xr10, $a6, $a1
	ori	$a1, $s1, 1648
	xvldx	$xr11, $a6, $a1
	ori	$a1, $s1, 1812
	xvldx	$xr12, $a6, $a1
	xvmadd.w	$xr8, $xr9, $xr0
	xvmadd.w	$xr8, $xr10, $xr1
	xvmadd.w	$xr8, $xr11, $xr2
	xvmadd.w	$xr8, $xr12, $xr3
	ori	$a1, $s1, 1976
	xvldx	$xr9, $a6, $a1
	ori	$a1, $s1, 2140
	xvldx	$xr10, $a6, $a1
	ori	$a1, $s1, 2304
	xvldx	$xr11, $a6, $a1
	ori	$a1, $s1, 2468
	xvldx	$xr12, $a6, $a1
	xvmadd.w	$xr8, $xr9, $xr4
	xvmadd.w	$xr8, $xr10, $xr5
	xvmadd.w	$xr8, $xr11, $xr6
	xvmadd.w	$xr8, $xr12, $xr7
	xvstx	$xr8, $a4, $a0
	addi.d	$a0, $a0, 32
	bne	$a0, $ra, .LBB4_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 164
	ori	$a0, $zero, 41
	bne	$a1, $a0, .LBB4_9
# %bb.12:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 164
	mul.d	$a1, $a0, $a1
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	fld.d	$fs7, $sp, 520                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 536                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 544                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 552                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 560                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 568                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 576                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 648                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 656                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 664                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 672
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end4:
	.size	Intmm, .Lfunc_end4-Intmm
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(Intmm)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Intmm)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Intmm)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(Intmm)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(Intmm)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(Intmm)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(Intmm)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(Intmm)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(Intmm)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	pcaddu18i	$ra, %call36(Intmm)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
                                        # -- End function
	.type	seed,@object                    # @seed
	.bss
	.globl	seed
	.p2align	3, 0x0
seed:
	.dword	0                               # 0x0
	.size	seed, 8

	.type	ima,@object                     # @ima
	.globl	ima
	.p2align	2, 0x0
ima:
	.space	6724
	.size	ima, 6724

	.type	imb,@object                     # @imb
	.globl	imb
	.p2align	2, 0x0
imb:
	.space	6724
	.size	imb, 6724

	.type	imr,@object                     # @imr
	.globl	imr
	.p2align	2, 0x0
imr:
	.space	6724
	.size	imr, 6724

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4

	.type	value,@object                   # @value
	.bss
	.globl	value
	.p2align	2, 0x0
value:
	.word	0x00000000                      # float 0
	.size	value, 4

	.type	fixed,@object                   # @fixed
	.globl	fixed
	.p2align	2, 0x0
fixed:
	.word	0x00000000                      # float 0
	.size	fixed, 4

	.type	floated,@object                 # @floated
	.globl	floated
	.p2align	2, 0x0
floated:
	.word	0x00000000                      # float 0
	.size	floated, 4

	.type	permarray,@object               # @permarray
	.globl	permarray
	.p2align	2, 0x0
permarray:
	.space	44
	.size	permarray, 44

	.type	pctr,@object                    # @pctr
	.globl	pctr
	.p2align	2, 0x0
pctr:
	.word	0                               # 0x0
	.size	pctr, 4

	.type	tree,@object                    # @tree
	.globl	tree
	.p2align	3, 0x0
tree:
	.dword	0
	.size	tree, 8

	.type	stack,@object                   # @stack
	.globl	stack
	.p2align	2, 0x0
stack:
	.space	16
	.size	stack, 16

	.type	cellspace,@object               # @cellspace
	.globl	cellspace
	.p2align	2, 0x0
cellspace:
	.space	152
	.size	cellspace, 152

	.type	freelist,@object                # @freelist
	.globl	freelist
	.p2align	2, 0x0
freelist:
	.word	0                               # 0x0
	.size	freelist, 4

	.type	movesdone,@object               # @movesdone
	.globl	movesdone
	.p2align	2, 0x0
movesdone:
	.word	0                               # 0x0
	.size	movesdone, 4

	.type	rma,@object                     # @rma
	.globl	rma
	.p2align	2, 0x0
rma:
	.space	6724
	.size	rma, 6724

	.type	rmb,@object                     # @rmb
	.globl	rmb
	.p2align	2, 0x0
rmb:
	.space	6724
	.size	rmb, 6724

	.type	rmr,@object                     # @rmr
	.globl	rmr
	.p2align	2, 0x0
rmr:
	.space	6724
	.size	rmr, 6724

	.type	piececount,@object              # @piececount
	.globl	piececount
	.p2align	2, 0x0
piececount:
	.space	16
	.size	piececount, 16

	.type	class,@object                   # @class
	.globl	class
	.p2align	2, 0x0
class:
	.space	52
	.size	class, 52

	.type	piecemax,@object                # @piecemax
	.globl	piecemax
	.p2align	2, 0x0
piecemax:
	.space	52
	.size	piecemax, 52

	.type	puzzl,@object                   # @puzzl
	.globl	puzzl
	.p2align	2, 0x0
puzzl:
	.space	2048
	.size	puzzl, 2048

	.type	p,@object                       # @p
	.globl	p
	.p2align	2, 0x0
p:
	.space	26624
	.size	p, 26624

	.type	n,@object                       # @n
	.globl	n
	.p2align	2, 0x0
n:
	.word	0                               # 0x0
	.size	n, 4

	.type	kount,@object                   # @kount
	.globl	kount
	.p2align	2, 0x0
kount:
	.word	0                               # 0x0
	.size	kount, 4

	.type	sortlist,@object                # @sortlist
	.globl	sortlist
	.p2align	2, 0x0
sortlist:
	.space	20004
	.size	sortlist, 20004

	.type	biggest,@object                 # @biggest
	.globl	biggest
	.p2align	2, 0x0
biggest:
	.word	0                               # 0x0
	.size	biggest, 4

	.type	littlest,@object                # @littlest
	.globl	littlest
	.p2align	2, 0x0
littlest:
	.word	0                               # 0x0
	.size	littlest, 4

	.type	top,@object                     # @top
	.globl	top
	.p2align	2, 0x0
top:
	.word	0                               # 0x0
	.size	top, 4

	.type	z,@object                       # @z
	.globl	z
	.p2align	2, 0x0
z:
	.space	2056
	.size	z, 2056

	.type	w,@object                       # @w
	.globl	w
	.p2align	2, 0x0
w:
	.space	2056
	.size	w, 2056

	.type	e,@object                       # @e
	.globl	e
	.p2align	2, 0x0
e:
	.space	1040
	.size	e, 1040

	.type	zr,@object                      # @zr
	.globl	zr
	.p2align	2, 0x0
zr:
	.word	0x00000000                      # float 0
	.size	zr, 4

	.type	zi,@object                      # @zi
	.globl	zi
	.p2align	2, 0x0
zi:
	.word	0x00000000                      # float 0
	.size	zi, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
