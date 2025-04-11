	.file	"pr37573.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(p)
	addi.d	$a0, $a0, %pc_lo12(p)
	pcalau12i	$a1, %pc_hi20(q)
	addi.d	$a1, $a1, %pc_lo12(q)
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
# %bb.1:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.p2align	5                               # -- Begin function bar
	.type	bar,@function
bar:                                    # @bar
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -512
	lu12i.w	$a0, 10
	ori	$a1, $a0, 629
	st.w	$a1, $sp, 28
	ori	$a0, $zero, 1
	lu12i.w	$a2, -1
	ori	$a2, $a2, 1604
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 16
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a1, 31, 30
	xor	$a1, $a6, $a1
	mul.d	$a6, $a1, $a3
	add.w	$a1, $a6, $a5
	add.d	$a6, $a0, $a6
	add.d	$a7, $a4, $a2
	stptr.w	$a6, $a7, 2508
	addi.d	$a5, $a5, 1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB1_1
# %bb.2:
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 24
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(p)
	addi.d	$fp, $a1, %pc_lo12(p)
	ld.b	$a1, $fp, 0
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 1
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 2
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 2
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 3
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 3
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 4
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 4
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 5
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 5
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 6
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 6
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 7
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 7
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 8
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 8
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 9
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 9
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 10
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 10
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 11
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 11
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 12
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 12
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 13
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 13
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 14
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 14
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 15
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 15
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 16
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 16
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 17
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 17
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 18
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 18
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 19
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 19
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 20
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 20
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 21
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 21
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 22
	xor	$a0, $a1, $a0
	st.b	$a0, $fp, 22
	addi.d	$sp, $sp, 512
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar
                                        # -- End function
	.p2align	5                               # -- Begin function foo
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 8
	beqz	$a1, .LBB2_2
# %bb.1:                                # %..loopexit_crit_edge
	ld.d	$a1, $a0, 0
	b	.LBB2_5
.LBB2_2:                                # %vector.ph
	ld.w	$a2, $a0, 12
	move	$a4, $zero
	addi.d	$a1, $a0, 12
	vinsgr2vr.w	$vr0, $a2, 0
	vreplvei.w	$vr0, $vr0, 0
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4094
	vreplgr2vr.w	$vr1, $a2
	lu12i.w	$a3, -524288
	vreplgr2vr.w	$vr2, $a3
	vrepli.w	$vr3, 1
	vrepli.b	$vr4, 0
	lu12i.w	$a2, -421749
	ori	$a2, $a2, 223
	vreplgr2vr.w	$vr5, $a2
	ori	$a5, $zero, 896
	.p2align	4, , 16
.LBB2_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr6, $vr0, 0
	add.d	$a6, $a0, $a4
	vld	$vr0, $a6, 16
	vbsrl.v	$vr6, $vr6, 12
	vbsll.v	$vr7, $vr0, 4
	vor.v	$vr6, $vr7, $vr6
	vand.v	$vr7, $vr0, $vr1
	vand.v	$vr6, $vr6, $vr2
	vor.v	$vr6, $vr7, $vr6
	vsrli.w	$vr6, $vr6, 1
	vld	$vr7, $a6, 1600
	vand.v	$vr8, $vr0, $vr3
	vseqi.w	$vr8, $vr8, 0
	vbitsel.v	$vr8, $vr5, $vr4, $vr8
	vxor.v	$vr7, $vr8, $vr7
	vxor.v	$vr6, $vr7, $vr6
	addi.d	$a4, $a4, 16
	vst	$vr6, $a6, 12
	bne	$a4, $a5, .LBB2_3
# %bb.4:                                # %.loopexit.loopexit
	ld.wu	$a4, $a0, 912
	vpickve2gr.w	$a5, $vr0, 3
	lu32i.d	$a3, 0
	and	$a5, $a5, $a3
	srli.d	$a6, $a4, 1
	bstrins.d	$a5, $a6, 30, 1
	srli.d	$a5, $a5, 1
	andi	$a6, $a4, 1
	ori	$a7, $zero, 2496
	ldx.w	$a7, $a0, $a7
	sub.d	$a6, $zero, $a6
	lu32i.d	$a2, 0
	and	$a6, $a6, $a2
	xor	$a6, $a6, $a7
	ld.wu	$a7, $a0, 916
	xor	$a5, $a6, $a5
	st.w	$a5, $a0, 908
	and	$a4, $a4, $a3
	srli.d	$a5, $a7, 1
	bstrins.d	$a4, $a5, 30, 1
	srli.d	$a4, $a4, 1
	ori	$a5, $zero, 2500
	ldx.w	$a5, $a0, $a5
	andi	$a6, $a7, 1
	sub.d	$a6, $zero, $a6
	and	$a6, $a6, $a2
	xor	$a5, $a6, $a5
	ld.wu	$a6, $a0, 920
	xor	$a4, $a5, $a4
	st.w	$a4, $a0, 912
	and	$a3, $a7, $a3
	srli.d	$a4, $a6, 1
	bstrins.d	$a3, $a4, 30, 1
	srli.d	$a3, $a3, 1
	ori	$a4, $zero, 2504
	ldx.w	$a4, $a0, $a4
	andi	$a5, $a6, 1
	sub.d	$a5, $zero, $a5
	and	$a2, $a5, $a2
	xor	$a2, $a2, $a4
	xor	$a2, $a2, $a3
	st.w	$a2, $a0, 916
.LBB2_5:                                # %.loopexit
	ld.wu	$a2, $a1, 0
	srli.d	$a3, $a2, 11
	xor	$a2, $a3, $a2
	slli.d	$a3, $a2, 7
	lu12i.w	$a4, -404795
	ori	$a4, $a4, 1664
	lu32i.d	$a4, 127
	and	$a3, $a3, $a4
	xor	$a2, $a3, $a2
	slli.d	$a3, $a2, 15
	lu12i.w	$a4, 31744
	and	$a3, $a3, $a4
	xor	$a3, $a3, $a2
	srli.d	$a3, $a3, 19
	srli.d	$a2, $a2, 1
	xor	$a2, $a3, $a2
	addi.d	$a3, $a1, 4
	andi	$a1, $a2, 255
	st.d	$a3, $a0, 0
	move	$a0, $a1
	ret
.Lfunc_end2:
	.size	foo, .Lfunc_end2-foo
                                        # -- End function
	.type	p,@object                       # @p
	.data
p:
	.ascii	"\300I\0272b\036.\325L\031(I\221\344r\203\221=\223\203\263a8"
	.size	p, 23

	.type	q,@object                       # @q
q:
	.ascii	">AUTOIT UNICODE SCRIPT<"
	.size	q, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym p
	.addrsig_sym q
