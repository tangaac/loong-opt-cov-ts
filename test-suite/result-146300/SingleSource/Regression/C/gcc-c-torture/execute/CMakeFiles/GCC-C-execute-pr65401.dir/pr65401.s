	.file	"pr65401.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	move	$a0, $zero
	ori	$a1, $zero, 128
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a0, 2
	bne	$a0, $a1, .LBB0_1
# %bb.2:
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:
	move	$a1, $zero
	ori	$a2, $zero, 128
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	ldx.h	$a3, $a0, $a1
	revb.2h	$a3, $a3
	stx.h	$a3, $a0, $a1
	addi.d	$a1, $a1, 2
	bne	$a1, $a2, .LBB1_1
# %bb.2:
	ret
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI2_0:
	.half	16384                           # 0x4000
	.half	16129                           # 0x3f01
	.half	15874                           # 0x3e02
	.half	15619                           # 0x3d03
	.half	15364                           # 0x3c04
	.half	15109                           # 0x3b05
	.half	14854                           # 0x3a06
	.half	14599                           # 0x3907
	.half	14344                           # 0x3808
	.half	14089                           # 0x3709
	.half	13834                           # 0x360a
	.half	13579                           # 0x350b
	.half	13324                           # 0x340c
	.half	13069                           # 0x330d
	.half	12814                           # 0x320e
	.half	12559                           # 0x310f
.LCPI2_1:
	.half	12304                           # 0x3010
	.half	12049                           # 0x2f11
	.half	11794                           # 0x2e12
	.half	11539                           # 0x2d13
	.half	11284                           # 0x2c14
	.half	11029                           # 0x2b15
	.half	10774                           # 0x2a16
	.half	10519                           # 0x2917
	.half	10264                           # 0x2818
	.half	10009                           # 0x2719
	.half	9754                            # 0x261a
	.half	9499                            # 0x251b
	.half	9244                            # 0x241c
	.half	8989                            # 0x231d
	.half	8734                            # 0x221e
	.half	8479                            # 0x211f
.LCPI2_2:
	.half	8224                            # 0x2020
	.half	7969                            # 0x1f21
	.half	7714                            # 0x1e22
	.half	7459                            # 0x1d23
	.half	7204                            # 0x1c24
	.half	6949                            # 0x1b25
	.half	6694                            # 0x1a26
	.half	6439                            # 0x1927
	.half	6184                            # 0x1828
	.half	5929                            # 0x1729
	.half	5674                            # 0x162a
	.half	5419                            # 0x152b
	.half	5164                            # 0x142c
	.half	4909                            # 0x132d
	.half	4654                            # 0x122e
	.half	4399                            # 0x112f
.LCPI2_3:
	.half	4144                            # 0x1030
	.half	3889                            # 0xf31
	.half	3634                            # 0xe32
	.half	3379                            # 0xd33
	.half	3124                            # 0xc34
	.half	2869                            # 0xb35
	.half	2614                            # 0xa36
	.half	2359                            # 0x937
	.half	2104                            # 0x838
	.half	1849                            # 0x739
	.half	1594                            # 0x63a
	.half	1339                            # 0x53b
	.half	1084                            # 0x43c
	.half	829                             # 0x33d
	.half	574                             # 0x23e
	.half	319                             # 0x13f
.LCPI2_4:
	.dword	12                              # 0xc
	.dword	13                              # 0xd
	.dword	14                              # 0xe
	.dword	15                              # 0xf
.LCPI2_5:
	.dword	8                               # 0x8
	.dword	9                               # 0x9
	.dword	10                              # 0xa
	.dword	11                              # 0xb
.LCPI2_6:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI2_7:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 448
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI2_1)
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	xvld	$xr2, $a0, %pc_lo12(.LCPI2_2)
	pcalau12i	$a0, %pc_hi20(.LCPI2_3)
	xvld	$xr3, $a0, %pc_lo12(.LCPI2_3)
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 264
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr1, $sp, 296
	xvst	$xr2, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr2, $sp, 328
	xvst	$xr3, $sp, 0                    # 32-byte Folded Spill
	xvst	$xr3, $sp, 360
	addi.d	$a0, $sp, 264
	addi.d	$s4, $sp, 264
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	pcalau12i	$s0, %pc_hi20(.LCPI2_4)
	xvld	$xr0, $s0, %pc_lo12(.LCPI2_4)
	pcalau12i	$s1, %pc_hi20(.LCPI2_5)
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_5)
	pcalau12i	$s2, %pc_hi20(.LCPI2_6)
	xvld	$xr2, $s2, %pc_lo12(.LCPI2_6)
	pcalau12i	$s3, %pc_hi20(.LCPI2_7)
	xvld	$xr3, $s3, %pc_lo12(.LCPI2_7)
	xvrepli.d	$xr4, -255
	lu12i.w	$a0, 4
	xvreplgr2vr.d	$xr5, $a0
	xvrepli.b	$xr15, -1
	ori	$a0, $zero, 96
	.p2align	4, , 16
.LBB2_1:                                # %vector.body41
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	xvldx	$xr7, $a2, $s4
	xvori.b	$xr6, $xr5, 0
	xvmadd.d	$xr6, $xr0, $xr4
	xvori.b	$xr8, $xr5, 0
	xvst	$xr7, $sp, 224
	vld	$vr12, $sp, 240
	xvmadd.d	$xr8, $xr1, $xr4
	xvori.b	$xr9, $xr5, 0
	xvmadd.d	$xr9, $xr2, $xr4
	xvori.b	$xr11, $xr5, 0
	xvmadd.d	$xr11, $xr3, $xr4
	vpickve2gr.h	$a2, $vr12, 4
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr7, $a2, 0
	vpickve2gr.h	$a2, $vr12, 5
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr7, $a2, 1
	vpickve2gr.h	$a2, $vr12, 6
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr7, $a2, 2
	vpickve2gr.h	$a2, $vr12, 7
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr7, $a2, 3
	vpickve2gr.h	$a2, $vr12, 0
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr10, $a2, 0
	vpickve2gr.h	$a2, $vr12, 1
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr10, $a2, 1
	vpickve2gr.h	$a2, $vr12, 2
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr10, $a2, 2
	vpickve2gr.h	$a2, $vr12, 3
	vld	$vr12, $sp, 224
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr10, $a2, 3
	vpickve2gr.h	$a2, $vr12, 4
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr13, $a2, 0
	vpickve2gr.h	$a2, $vr12, 5
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr13, $a2, 1
	vpickve2gr.h	$a2, $vr12, 6
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr13, $a2, 2
	vpickve2gr.h	$a2, $vr12, 7
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr13, $a2, 3
	vpickve2gr.h	$a2, $vr12, 0
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr14, $a2, 0
	vpickve2gr.h	$a2, $vr12, 1
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr14, $a2, 1
	vpickve2gr.h	$a2, $vr12, 2
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr14, $a2, 2
	vpickve2gr.h	$a2, $vr12, 3
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr14, $a2, 3
	xvseq.d	$xr11, $xr11, $xr14
	xvxor.v	$xr11, $xr11, $xr15
	xvpickve2gr.d	$a2, $xr11, 0
	xvpickve2gr.d	$a3, $xr11, 1
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 1
	sub.d	$a2, $a3, $a2
	xvpickve2gr.d	$a3, $xr11, 2
	bstrins.d	$a2, $a3, 2, 2
	xvpickve2gr.d	$a3, $xr11, 3
	bstrins.d	$a2, $a3, 3, 3
	xvseq.d	$xr9, $xr9, $xr13
	xvxor.v	$xr9, $xr9, $xr15
	xvpickve2gr.d	$a3, $xr9, 0
	bstrins.d	$a2, $a3, 4, 4
	xvpickve2gr.d	$a3, $xr9, 1
	bstrins.d	$a2, $a3, 5, 5
	xvpickve2gr.d	$a3, $xr9, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 6
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr9, 3
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	xvseq.d	$xr8, $xr8, $xr10
	xvxor.v	$xr8, $xr8, $xr15
	xvpickve2gr.d	$a3, $xr8, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr8, 1
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr8, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr8, 3
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	xvseq.d	$xr6, $xr6, $xr7
	xvxor.v	$xr6, $xr6, $xr15
	xvpickve2gr.d	$a3, $xr6, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr6, 1
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr6, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr6, 3
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	bnez	$a3, .LBB2_3
# %bb.2:                                # %vector.body41
                                        #   in Loop: Header=BB2_1 Depth=1
	xvaddi.du	$xr3, $xr3, 16
	xvaddi.du	$xr2, $xr2, 16
	xvaddi.du	$xr1, $xr1, 16
	xvaddi.du	$xr0, $xr0, 16
	addi.d	$a2, $a1, 32
	bne	$a1, $a0, .LBB2_1
.LBB2_3:                                # %middle.split
	xvst	$xr15, $sp, 128                 # 32-byte Folded Spill
	bstrpick.d	$a0, $a3, 15, 0
	bnez	$a0, .LBB2_9
# %bb.4:                                # %vector.body50
	xvld	$xr0, $sp, 96                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 264
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 296
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 328
	xvld	$xr0, $sp, 0                    # 32-byte Folded Reload
	xvst	$xr0, $sp, 360
	addi.d	$a0, $sp, 264
	addi.d	$s4, $sp, 264
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	xvld	$xr0, $s0, %pc_lo12(.LCPI2_4)
	xvld	$xr1, $s1, %pc_lo12(.LCPI2_5)
	xvld	$xr2, $s2, %pc_lo12(.LCPI2_6)
	xvld	$xr3, $s3, %pc_lo12(.LCPI2_7)
	xvrepli.d	$xr4, 255
	xvrepli.d	$xr5, 64
	ori	$a0, $zero, 96
	xvld	$xr15, $sp, 128                 # 32-byte Folded Reload
	.p2align	4, , 16
.LBB2_5:                                # %vector.body60
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	xvldx	$xr7, $a2, $s4
	xvori.b	$xr6, $xr5, 0
	xvmadd.d	$xr6, $xr0, $xr4
	xvori.b	$xr8, $xr5, 0
	xvst	$xr7, $sp, 160
	vld	$vr12, $sp, 176
	xvmadd.d	$xr8, $xr1, $xr4
	xvori.b	$xr9, $xr5, 0
	xvmadd.d	$xr9, $xr2, $xr4
	xvori.b	$xr11, $xr5, 0
	xvmadd.d	$xr11, $xr3, $xr4
	vpickve2gr.h	$a2, $vr12, 4
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr7, $a2, 0
	vpickve2gr.h	$a2, $vr12, 5
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr7, $a2, 1
	vpickve2gr.h	$a2, $vr12, 6
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr7, $a2, 2
	vpickve2gr.h	$a2, $vr12, 7
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr7, $a2, 3
	vpickve2gr.h	$a2, $vr12, 0
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr10, $a2, 0
	vpickve2gr.h	$a2, $vr12, 1
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr10, $a2, 1
	vpickve2gr.h	$a2, $vr12, 2
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr10, $a2, 2
	vpickve2gr.h	$a2, $vr12, 3
	vld	$vr12, $sp, 160
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr10, $a2, 3
	vpickve2gr.h	$a2, $vr12, 4
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr13, $a2, 0
	vpickve2gr.h	$a2, $vr12, 5
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr13, $a2, 1
	vpickve2gr.h	$a2, $vr12, 6
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr13, $a2, 2
	vpickve2gr.h	$a2, $vr12, 7
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr13, $a2, 3
	vpickve2gr.h	$a2, $vr12, 0
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr14, $a2, 0
	vpickve2gr.h	$a2, $vr12, 1
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr14, $a2, 1
	vpickve2gr.h	$a2, $vr12, 2
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr14, $a2, 2
	vpickve2gr.h	$a2, $vr12, 3
	bstrpick.d	$a2, $a2, 15, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.d	$xr14, $a2, 3
	xvseq.d	$xr11, $xr11, $xr14
	xvxor.v	$xr11, $xr11, $xr15
	xvpickve2gr.d	$a2, $xr11, 0
	xvpickve2gr.d	$a3, $xr11, 1
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 1
	sub.d	$a2, $a3, $a2
	xvpickve2gr.d	$a3, $xr11, 2
	bstrins.d	$a2, $a3, 2, 2
	xvpickve2gr.d	$a3, $xr11, 3
	bstrins.d	$a2, $a3, 3, 3
	xvseq.d	$xr9, $xr9, $xr13
	xvxor.v	$xr9, $xr9, $xr15
	xvpickve2gr.d	$a3, $xr9, 0
	bstrins.d	$a2, $a3, 4, 4
	xvpickve2gr.d	$a3, $xr9, 1
	bstrins.d	$a2, $a3, 5, 5
	xvpickve2gr.d	$a3, $xr9, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 6
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr9, 3
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 7
	or	$a2, $a2, $a3
	xvseq.d	$xr8, $xr8, $xr10
	xvxor.v	$xr8, $xr8, $xr15
	xvpickve2gr.d	$a3, $xr8, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 8
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr8, 1
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 9
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr8, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 10
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr8, 3
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 11
	or	$a2, $a2, $a3
	xvseq.d	$xr6, $xr6, $xr7
	xvxor.v	$xr6, $xr6, $xr15
	xvpickve2gr.d	$a3, $xr6, 0
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 12
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr6, 1
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 13
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr6, 2
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 14
	or	$a2, $a2, $a3
	xvpickve2gr.d	$a3, $xr6, 3
	slli.d	$a3, $a3, 15
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 15, 0
	bnez	$a3, .LBB2_7
# %bb.6:                                # %vector.body60
                                        #   in Loop: Header=BB2_5 Depth=1
	xvaddi.du	$xr3, $xr3, 16
	xvaddi.du	$xr2, $xr2, 16
	xvaddi.du	$xr1, $xr1, 16
	xvaddi.du	$xr0, $xr0, 16
	addi.d	$a2, $a1, 32
	bne	$a1, $a0, .LBB2_5
.LBB2_7:                                # %middle.split66
	bstrpick.d	$a0, $a3, 15, 0
	bnez	$a0, .LBB2_9
# %bb.8:                                # %middle.block67
	move	$a0, $zero
	addi.d	$sp, $fp, -448
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.LBB2_9:                                # %vector.early.exit
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
