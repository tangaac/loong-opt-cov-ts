	.file	"20050224-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ori	$a3, $zero, 245
	bne	$a0, $a3, .LBB0_4
# %bb.1:
	ori	$a0, $zero, 36
	bne	$a1, $a0, .LBB0_4
# %bb.2:
	ori	$a0, $zero, 444
	bne	$a2, $a0, .LBB0_4
# %bb.3:
	ret
.LBB0_4:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	8192                            # 0x2000
	.dword	12288                           # 0x3000
.LCPI1_1:
	.dword	0                               # 0x0
	.dword	4096                            # 0x1000
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -32
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	ld.d	$t4, $a0, %pc_lo12(a)
	pcalau12i	$a0, %pc_hi20(b)
	ld.d	$a0, $a0, %pc_lo12(b)
	bgeu	$t4, $a0, .LBB1_17
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %pc_hi20(c)
	ld.d	$a1, $a1, %pc_lo12(c)
	pcalau12i	$a2, %pc_hi20(d)
	ld.d	$a2, $a2, %pc_lo12(d)
	pcalau12i	$a3, %pc_hi20(e)
	ld.d	$a3, $a3, %pc_lo12(e)
	pcalau12i	$a4, %pc_hi20(f)
	ld.d	$a4, $a4, %pc_lo12(f)
	lu12i.w	$a5, 1
	add.d	$a6, $t4, $a5
	sltu	$a7, $a6, $a0
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $a0, $a7
	or	$a6, $a7, $a6
	nor	$a7, $t4, $zero
	add.d	$a6, $a6, $a7
	srli.d	$a6, $a6, 12
	ori	$a7, $zero, 7
	bgeu	$a6, $a7, .LBB1_3
# %bb.2:
	move	$t1, $zero
	move	$t2, $zero
	move	$t3, $zero
	move	$a6, $t4
	b	.LBB1_12
.LBB1_3:                                # %vector.ph
	addi.d	$a7, $a6, 1
	bstrpick.d	$a6, $a7, 52, 3
	pcalau12i	$t0, %pc_hi20(.LCPI1_0)
	vld	$vr4, $t0, %pc_lo12(.LCPI1_0)
	pcalau12i	$t0, %pc_hi20(.LCPI1_1)
	vld	$vr5, $t0, %pc_lo12(.LCPI1_1)
	slli.d	$t0, $a6, 3
	slli.d	$a6, $a6, 15
	add.d	$a6, $t4, $a6
	vreplgr2vr.d	$vr0, $a1
	vreplgr2vr.d	$vr1, $a2
	vreplgr2vr.d	$vr2, $a3
	vreplgr2vr.d	$vr3, $a4
	vreplgr2vr.d	$vr6, $t4
	vadd.d	$vr4, $vr6, $vr4
	vadd.d	$vr7, $vr6, $vr5
	vrepli.b	$vr5, 0
	lu12i.w	$t1, 4
	vreplgr2vr.d	$vr9, $t1
	vrepli.b	$vr11, -1
	vrepli.w	$vr13, 1
	lu12i.w	$t1, 8
	vreplgr2vr.d	$vr14, $t1
	move	$t1, $t0
	vori.b	$vr15, $vr5, 0
	vori.b	$vr10, $vr5, 0
	vori.b	$vr12, $vr5, 0
	vori.b	$vr6, $vr5, 0
	vori.b	$vr8, $vr5, 0
	.p2align	4, , 16
.LBB1_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.d	$vr16, $vr4, $vr9
	vadd.d	$vr17, $vr7, $vr9
	vsle.du	$vr18, $vr0, $vr7
	vsle.du	$vr19, $vr0, $vr4
	vpickev.w	$vr18, $vr19, $vr18
	vsle.du	$vr19, $vr0, $vr17
	vsle.du	$vr20, $vr0, $vr16
	vpickev.w	$vr19, $vr20, $vr19
	vsle.du	$vr20, $vr1, $vr7
	vsle.du	$vr21, $vr1, $vr4
	vpickev.w	$vr20, $vr21, $vr20
	vsle.du	$vr21, $vr1, $vr17
	vsle.du	$vr22, $vr1, $vr16
	vpickev.w	$vr21, $vr22, $vr21
	vslt.du	$vr22, $vr7, $vr2
	vslt.du	$vr23, $vr4, $vr2
	vpickev.w	$vr22, $vr23, $vr22
	vslt.du	$vr23, $vr17, $vr2
	vslt.du	$vr24, $vr16, $vr2
	vpickev.w	$vr23, $vr24, $vr23
	vand.v	$vr20, $vr20, $vr22
	vand.v	$vr21, $vr21, $vr23
	vxor.v	$vr22, $vr20, $vr11
	vxor.v	$vr23, $vr21, $vr11
	vand.v	$vr22, $vr18, $vr22
	vand.v	$vr23, $vr19, $vr23
	vslt.du	$vr24, $vr7, $vr3
	vslt.du	$vr25, $vr4, $vr3
	vpickev.w	$vr24, $vr25, $vr24
	vslt.du	$vr25, $vr17, $vr3
	vslt.du	$vr26, $vr16, $vr3
	vpickev.w	$vr25, $vr26, $vr25
	vand.v	$vr18, $vr18, $vr20
	vand.v	$vr19, $vr19, $vr21
	vslt.du	$vr20, $vr7, $vr0
	vslt.du	$vr21, $vr4, $vr0
	vpickev.w	$vr20, $vr21, $vr20
	vsub.w	$vr6, $vr6, $vr20
	vslt.du	$vr17, $vr17, $vr0
	vslt.du	$vr16, $vr16, $vr0
	vpickev.w	$vr16, $vr16, $vr17
	vsub.w	$vr8, $vr8, $vr16
	vand.v	$vr16, $vr22, $vr24
	vand.v	$vr16, $vr16, $vr13
	vadd.w	$vr10, $vr10, $vr16
	vand.v	$vr16, $vr23, $vr25
	vand.v	$vr16, $vr16, $vr13
	vadd.w	$vr12, $vr12, $vr16
	vsub.w	$vr5, $vr5, $vr18
	vsub.w	$vr15, $vr15, $vr19
	vadd.d	$vr4, $vr4, $vr14
	addi.d	$t1, $t1, -8
	vadd.d	$vr7, $vr7, $vr14
	bnez	$t1, .LBB1_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr15, $vr5
	vreplvei.d	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t1, $vr0, 0
	vadd.w	$vr0, $vr12, $vr10
	vreplvei.d	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t2, $vr0, 0
	vadd.w	$vr0, $vr8, $vr6
	vreplvei.d	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t3, $vr0, 0
	bne	$a7, $t0, .LBB1_12
.LBB1_6:                                # %._crit_edge
	ori	$a0, $zero, 444
	bne	$t3, $a0, .LBB1_17
# %bb.7:                                # %._crit_edge
	ori	$a0, $zero, 245
	bne	$t2, $a0, .LBB1_17
# %bb.8:                                # %._crit_edge
	ori	$a0, $zero, 36
	bne	$t1, $a0, .LBB1_17
# %bb.9:                                # %foo.exit
	move	$a0, $zero
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_12 Depth=1
	addi.w	$t3, $t3, 1
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=1
	add.d	$a6, $a6, $a5
	bgeu	$a6, $a0, .LBB1_6
.LBB1_12:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	bltu	$a6, $a1, .LBB1_10
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=1
	bltu	$a6, $a2, .LBB1_16
# %bb.14:                               #   in Loop: Header=BB1_12 Depth=1
	bgeu	$a6, $a3, .LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_12 Depth=1
	addi.w	$t1, $t1, 1
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_16:                               #   in Loop: Header=BB1_12 Depth=1
	sltu	$a7, $a6, $a4
	add.w	$t2, $t2, $a7
	b	.LBB1_11
.LBB1_17:                               # %._crit_edge.thread
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	a,@object                       # @a
	.data
	.globl	a
	.p2align	3, 0x0
a:
	.dword	3221225472                      # 0xc0000000
	.size	a, 8

	.type	b,@object                       # @b
	.globl	b
	.p2align	3, 0x0
b:
	.dword	3489660928                      # 0xd0000000
	.size	b, 8

	.type	c,@object                       # @c
	.globl	c
	.p2align	3, 0x0
c:
	.dword	3223042392                      # 0xc01bb958
	.size	c, 8

	.type	d,@object                       # @d
	.globl	d
	.p2align	3, 0x0
d:
	.dword	3223732224                      # 0xc0264000
	.size	d, 8

	.type	e,@object                       # @e
	.globl	e
	.p2align	3, 0x0
e:
	.dword	3223879680                      # 0xc0288000
	.size	e, 8

	.type	f,@object                       # @f
	.globl	f
	.p2align	3, 0x0
f:
	.dword	3224191864                      # 0xc02d4378
	.size	f, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
