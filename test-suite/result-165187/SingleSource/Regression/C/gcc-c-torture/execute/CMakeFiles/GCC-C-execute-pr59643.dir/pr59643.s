	.file	"pr59643.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ori	$a4, $zero, 3
	blt	$a3, $a4, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	addi.w	$a3, $a3, -1
	fld.d	$fa3, $a0, 8
	fld.d	$fa2, $a0, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 16
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa4, $a1, 0
	fld.d	$fa5, $a2, 0
	fld.d	$fa6, $a0, 0
	fmul.d	$fa3, $fa1, $fa3
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$fa2, $fa4, $fa2
	fadd.d	$fa2, $fa2, $fa6
	fmadd.d	$fa2, $fa0, $fa2, $fa3
	fst.d	$fa2, $a0, -8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 8
	fmov.d	$fa3, $fa6
	bnez	$a3, .LBB0_2
.LBB0_3:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -784
	st.d	$ra, $sp, 776                   # 8-byte Folded Spill
	move	$a0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	vreplgr2vr.d	$vr0, $a1
	addi.d	$a1, $sp, 520
	vrepli.w	$vr1, 7
	vrepli.w	$vr2, -4
	addi.d	$a2, $sp, 264
	addi.d	$a3, $sp, 8
	ori	$a4, $zero, 256
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vslli.w	$vr4, $vr0, 1
	vpickve2gr.w	$a5, $vr4, 1
	andi	$a5, $a5, 6
	movgr2fr.w	$fa5, $a5
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$a5, $vr4, 0
	andi	$a5, $a5, 6
	movgr2fr.w	$fa4, $a5
	ffint.d.w	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vstx	$vr4, $a0, $a1
	vand.v	$vr4, $vr3, $vr1
	vadd.w	$vr4, $vr4, $vr2
	vpickve2gr.w	$a5, $vr4, 1
	movgr2fr.w	$fa5, $a5
	ffint.d.w	$fa5, $fa5
	vpickve2gr.w	$a5, $vr4, 0
	movgr2fr.w	$fa4, $a5
	ffint.d.w	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vstx	$vr4, $a0, $a2
	vpickve2gr.w	$a5, $vr3, 1
	andi	$a5, $a5, 7
	movgr2fr.w	$fa4, $a5
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a5, $vr3, 0
	andi	$a5, $a5, 7
	movgr2fr.w	$fa5, $a5
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vstx	$vr5, $a0, $a3
	vaddi.wu	$vr0, $vr0, 2
	addi.d	$a0, $a0, 16
	vaddi.wu	$vr3, $vr3, 2
	bne	$a0, $a4, .LBB1_1
# %bb.2:                                # %middle.block
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 264
	addi.d	$a2, $sp, 8
	vldi	$vr0, -1024
	vldi	$vr1, -1016
	ori	$a3, $zero, 32
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 520
	pcalau12i	$a0, %pc_hi20(expected)
	addi.d	$a0, $a0, %pc_lo12(expected)
	fld.d	$fa1, $a0, 0
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.3:
	fld.d	$fa0, $sp, 528
	fld.d	$fa1, $a0, 8
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.4:
	fld.d	$fa0, $sp, 536
	fld.d	$fa1, $a0, 16
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.5:
	fld.d	$fa0, $sp, 544
	fld.d	$fa1, $a0, 24
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.6:
	fld.d	$fa0, $sp, 552
	fld.d	$fa1, $a0, 32
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.7:
	fld.d	$fa0, $sp, 560
	fld.d	$fa1, $a0, 40
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.8:
	fld.d	$fa0, $sp, 568
	fld.d	$fa1, $a0, 48
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.9:
	fld.d	$fa0, $sp, 576
	fld.d	$fa1, $a0, 56
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.10:
	fld.d	$fa0, $sp, 584
	fld.d	$fa1, $a0, 64
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.11:
	fld.d	$fa0, $sp, 592
	fld.d	$fa1, $a0, 72
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.12:
	fld.d	$fa0, $sp, 600
	fld.d	$fa1, $a0, 80
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.13:
	fld.d	$fa0, $sp, 608
	fld.d	$fa1, $a0, 88
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.14:
	fld.d	$fa0, $sp, 616
	fld.d	$fa1, $a0, 96
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.15:
	fld.d	$fa0, $sp, 624
	fld.d	$fa1, $a0, 104
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.16:
	fld.d	$fa0, $sp, 632
	fld.d	$fa1, $a0, 112
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.17:
	fld.d	$fa0, $sp, 640
	fld.d	$fa1, $a0, 120
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.18:
	fld.d	$fa0, $sp, 648
	fld.d	$fa1, $a0, 128
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.19:
	fld.d	$fa0, $sp, 656
	fld.d	$fa1, $a0, 136
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.20:
	fld.d	$fa0, $sp, 664
	fld.d	$fa1, $a0, 144
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.21:
	fld.d	$fa0, $sp, 672
	fld.d	$fa1, $a0, 152
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.22:
	fld.d	$fa0, $sp, 680
	fld.d	$fa1, $a0, 160
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.23:
	fld.d	$fa0, $sp, 688
	fld.d	$fa1, $a0, 168
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.24:
	fld.d	$fa0, $sp, 696
	fld.d	$fa1, $a0, 176
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.25:
	fld.d	$fa0, $sp, 704
	fld.d	$fa1, $a0, 184
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.26:
	fld.d	$fa0, $sp, 712
	fld.d	$fa1, $a0, 192
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.27:
	fld.d	$fa0, $sp, 720
	fld.d	$fa1, $a0, 200
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.28:
	fld.d	$fa0, $sp, 728
	fld.d	$fa1, $a0, 208
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.29:
	fld.d	$fa0, $sp, 736
	fld.d	$fa1, $a0, 216
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.30:
	fld.d	$fa0, $sp, 744
	fld.d	$fa1, $a0, 224
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.31:
	fld.d	$fa0, $sp, 752
	fld.d	$fa1, $a0, 232
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.32:
	fld.d	$fa0, $sp, 760
	fld.d	$fa1, $a0, 240
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.33:
	fld.d	$fa0, $sp, 768
	fld.d	$fa1, $a0, 248
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_35
# %bb.34:
	move	$a0, $zero
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 784
	ret
.LBB1_35:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	expected,@object                # @expected
	.data
	.globl	expected
	.p2align	3, 0x0
expected:
	.dword	0x0000000000000000              # double 0
	.dword	0x4024000000000000              # double 10
	.dword	0x4046000000000000              # double 44
	.dword	0x405b800000000000              # double 110
	.dword	0x406d000000000000              # double 232
	.dword	0x407ea00000000000              # double 490
	.dword	0x408fe00000000000              # double 1020
	.dword	0x40a03c0000000000              # double 2078
	.dword	0x40b0380000000000              # double 4152
	.dword	0x40c03d0000000000              # double 8314
	.dword	0x40d0430000000000              # double 16652
	.dword	0x40e045c000000000              # double 33326
	.dword	0x40f0468000000000              # double 66664
	.dword	0x4100475000000000              # double 133354
	.dword	0x411047f000000000              # double 266748
	.dword	0x4120483c00000000              # double 533534
	.dword	0x4130483800000000              # double 1067064
	.dword	0x4140483d00000000              # double 2134138
	.dword	0x4150484300000000              # double 4268300
	.dword	0x41604845c0000000              # double 8536622
	.dword	0x4170484680000000              # double 17073256
	.dword	0x4180484750000000              # double 34146538
	.dword	0x41904847f0000000              # double 68293116
	.dword	0x41a048483c000000              # double 136586270
	.dword	0x41b0484838000000              # double 273172536
	.dword	0x41c048483d000000              # double 546345082
	.dword	0x41d0484843000000              # double 1092690188
	.dword	0x41e0484845c00000              # double 2185380398
	.dword	0x41f0484846800000              # double 4370760808
	.dword	0x4200484847500000              # double 8741521642
	.dword	0x4210484847f00000              # double 17483043324
	.dword	0x4018000000000000              # double 6
	.size	expected, 256

	.section	".note.GNU-stack","",@progbits
	.addrsig
