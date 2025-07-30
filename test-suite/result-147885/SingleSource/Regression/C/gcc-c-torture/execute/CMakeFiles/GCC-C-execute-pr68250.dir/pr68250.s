	.file	"pr68250.c"
	.text
	.globl	fn1                             # -- Begin function fn1
	.p2align	5
	.type	fn1,@function
fn1:                                    # @fn1
# %bb.0:
	pcalau12i	$a0, %pc_hi20(o)
	ld.b	$a0, $a0, %pc_lo12(o)
	pcalau12i	$a1, %pc_hi20(d)
	ld.hu	$a1, $a1, %pc_lo12(d)
	bgtz	$a0, .LBB0_3
# %bb.1:
	ext.w.h	$a2, $a1
	ori	$a3, $zero, 1
	srl.w	$a3, $a3, $a0
	blt	$a3, $a2, .LBB0_3
# %bb.2:
	sll.w	$a1, $a2, $a0
.LBB0_3:
	pcalau12i	$a0, %pc_hi20(j)
	ld.w	$a2, $a0, %pc_lo12(j)
	pcalau12i	$a3, %pc_hi20(n)
	st.h	$a1, $a3, %pc_lo12(n)
	beqz	$a2, .LBB0_19
# %bb.4:                                # %iter.check
	pcalau12i	$a1, %pc_hi20(m)
	ld.bu	$a5, $a1, %pc_lo12(m)
	pcalau12i	$a3, %pc_hi20(c)
	ld.h	$a3, $a3, %pc_lo12(c)
	sltu	$a7, $zero, $a5
	sub.w	$a4, $zero, $a2
	ori	$a6, $zero, 4
	bstrpick.d	$a3, $a3, 15, 0
	bgeu	$a4, $a6, .LBB0_6
# %bb.5:
	move	$a6, $a7
	b	.LBB0_16
.LBB0_6:                                # %vector.main.loop.iter.check
	ori	$a6, $zero, 32
	bgeu	$a4, $a6, .LBB0_8
# %bb.7:
	move	$t0, $zero
	move	$a6, $a7
	b	.LBB0_12
.LBB0_8:                                # %vector.ph
	move	$t0, $a4
	bstrins.d	$t0, $zero, 4, 0
	move	$a6, $t0
	.p2align	4, , 16
.LBB0_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a6, $a6, -32
	bnez	$a6, .LBB0_9
# %bb.10:                               # %middle.block
	andi	$a6, $a5, 255
	or	$a6, $a3, $a6
	sltu	$a6, $zero, $a6
	beq	$t0, $a4, .LBB0_18
# %bb.11:                               # %vec.epilog.iter.check
	andi	$t1, $a4, 28
	beqz	$t1, .LBB0_15
.LBB0_12:                               # %vec.epilog.ph
	xor	$a6, $a6, $a7
	move	$a7, $a4
	bstrins.d	$a7, $zero, 1, 0
	add.w	$a2, $a2, $a7
	sub.d	$t0, $t0, $a7
	.p2align	4, , 16
.LBB0_13:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$t0, $t0, 4
	bnez	$t0, .LBB0_13
# %bb.14:                               # %vec.epilog.middle.block
	andi	$a5, $a5, 255
	sltu	$a5, $zero, $a5
	sltu	$t0, $zero, $a3
	or	$a6, $a6, $t0
	or	$a6, $a6, $a5
	bne	$a7, $a4, .LBB0_16
	b	.LBB0_18
.LBB0_15:
	add.w	$a2, $a2, $t0
.LBB0_16:                               # %vec.epilog.scalar.ph.preheader
	sltu	$a3, $zero, $a3
	.p2align	4, , 16
.LBB0_17:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a2, $a2, 1
	slli.d	$a4, $a2, 31
	or	$a6, $a3, $a6
	bgez	$a4, .LBB0_17
.LBB0_18:                               # %._crit_edge
	andi	$a2, $a6, 1
	st.b	$a2, $a1, %pc_lo12(m)
	st.w	$zero, $a0, %pc_lo12(j)
.LBB0_19:
	pcalau12i	$a0, %pc_hi20(f)
	ld.w	$a1, $a0, %pc_lo12(f)
	addi.d	$a2, $a1, 1
	pcalau12i	$a3, %pc_hi20(l)
	st.b	$a2, $a3, %pc_lo12(l)
	blez	$a1, .LBB0_21
# %bb.20:
	ret
.LBB0_21:                               # %.critedge
	pcalau12i	$a1, %pc_hi20(h)
	ld.b	$a1, $a1, %pc_lo12(h)
	addi.d	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(k)
	st.b	$a1, $a2, %pc_lo12(k)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(f)
	ret
.Lfunc_end0:
	.size	fn1, .Lfunc_end0-fn1
                                        # -- End function
	.globl	fn2                             # -- Begin function fn2
	.p2align	5
	.type	fn2,@function
fn2:                                    # @fn2
# %bb.0:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_2
# %bb.1:
	ret
.LBB1_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	fn2, .Lfunc_end1-fn2
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	pcalau12i	$a0, %pc_hi20(e)
	ld.w	$s2, $a0, %pc_lo12(e)
	pcalau12i	$a2, %pc_hi20(k)
	ld.bu	$a1, $a2, %pc_lo12(k)
	bgtz	$s2, .LBB2_67
# %bb.1:                                # %.lr.ph
	pcalau12i	$a4, %pc_hi20(j)
	ld.w	$t2, $a4, %pc_lo12(j)
	pcalau12i	$a5, %pc_hi20(m)
	ld.bu	$t3, $a5, %pc_lo12(m)
	pcalau12i	$a6, %pc_hi20(f)
	ld.w	$t4, $a6, %pc_lo12(f)
	pcalau12i	$a3, %pc_hi20(o)
	ld.b	$t5, $a3, %pc_lo12(o)
	pcalau12i	$a3, %pc_hi20(d)
	ld.h	$t6, $a3, %pc_lo12(d)
	pcalau12i	$a3, %pc_hi20(c)
	ld.h	$t1, $a3, %pc_lo12(c)
	pcalau12i	$a3, %pc_hi20(h)
	ld.b	$t0, $a3, %pc_lo12(h)
	pcalau12i	$a3, %pc_hi20(q)
	ld.w	$a7, $a3, %pc_lo12(q)
	bstrpick.d	$a3, $t6, 15, 0
	addi.d	$t0, $t0, 1
	blez	$t5, .LBB2_23
# %bb.2:                                # %.lr.ph.split.us.preheader
	pcalau12i	$t5, %pc_hi20(g)
	ori	$t6, $zero, 4
	bstrpick.d	$t7, $t1, 15, 0
	sltu	$t8, $zero, $t7
	ori	$fp, $zero, 32
                                        # implicit-def: $r23
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	move	$t2, $zero
	addi.w	$s2, $s1, 1
	beqz	$s1, .LBB2_66
.LBB2_4:                                # %.lr.ph.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
                                        #     Child Loop BB2_14 Depth 2
                                        #     Child Loop BB2_17 Depth 2
	move	$t1, $t4
	move	$s1, $s2
	beqz	$t2, .LBB2_19
# %bb.5:                                # %iter.check107
                                        #   in Loop: Header=BB2_4 Depth=1
	andi	$t4, $t3, 255
	sub.w	$t3, $zero, $t2
	sltu	$s3, $zero, $t4
	bgeu	$t3, $t6, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	move	$s2, $s3
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_7:                                # %vector.main.loop.iter.check109
                                        #   in Loop: Header=BB2_4 Depth=1
	bgeu	$t3, $fp, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_4 Depth=1
	move	$s4, $zero
	move	$s2, $s3
	b	.LBB2_13
.LBB2_9:                                # %vector.ph110
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$s4, $t3
	bstrins.d	$s4, $zero, 4, 0
	move	$s2, $s4
	.p2align	4, , 16
.LBB2_10:                               # %vector.body115
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s2, $s2, -32
	bnez	$s2, .LBB2_10
# %bb.11:                               # %middle.block120
                                        #   in Loop: Header=BB2_4 Depth=1
	or	$s2, $t7, $t4
	sltu	$s2, $zero, $s2
	beq	$s4, $t3, .LBB2_18
# %bb.12:                               # %vec.epilog.iter.check128
                                        #   in Loop: Header=BB2_4 Depth=1
	andi	$s5, $t3, 28
	beqz	$s5, .LBB2_16
.LBB2_13:                               # %vec.epilog.ph127
                                        #   in Loop: Header=BB2_4 Depth=1
	xor	$s2, $s2, $s3
	move	$s3, $t3
	bstrins.d	$s3, $zero, 1, 0
	add.w	$t2, $t2, $s3
	sub.d	$s4, $s4, $s3
	.p2align	4, , 16
.LBB2_14:                               # %vec.epilog.vector.body137
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s4, $s4, 4
	bnez	$s4, .LBB2_14
# %bb.15:                               # %vec.epilog.middle.block141
                                        #   in Loop: Header=BB2_4 Depth=1
	sltu	$t4, $zero, $t4
	or	$s2, $s2, $t8
	or	$s2, $s2, $t4
	bne	$s3, $t3, .LBB2_17
	b	.LBB2_18
.LBB2_16:                               #   in Loop: Header=BB2_4 Depth=1
	add.w	$t2, $t2, $s4
	.p2align	4, , 16
.LBB2_17:                               # %vec.epilog.scalar.ph126
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t2, $t2, 1
	slli.d	$t3, $t2, 31
	or	$s2, $t8, $s2
	bgez	$t3, .LBB2_17
.LBB2_18:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB2_4 Depth=1
	andi	$t3, $s2, 1
	st.b	$t3, $a5, %pc_lo12(m)
	st.w	$zero, $a4, %pc_lo12(j)
.LBB2_19:                               #   in Loop: Header=BB2_4 Depth=1
	move	$t4, $t1
	bgtz	$t1, .LBB2_21
# %bb.20:                               # %.critedge.i.us
                                        #   in Loop: Header=BB2_4 Depth=1
	st.b	$t0, $a2, %pc_lo12(k)
	ori	$t4, $zero, 1
	st.w	$t4, $a6, %pc_lo12(f)
	move	$a1, $t0
.LBB2_21:                               # %fn1.exit.us
                                        #   in Loop: Header=BB2_4 Depth=1
	andi	$t2, $a1, 255
	sltui	$t2, $t2, 1
	masknez	$s2, $a1, $t2
	maskeqz	$t2, $s0, $t2
	or	$s0, $t2, $s2
	ext.w.b	$t2, $s0
	bge	$a7, $t2, .LBB2_3
# %bb.22:                               #   in Loop: Header=BB2_4 Depth=1
	st.w	$zero, $t5, %pc_lo12(g)
	b	.LBB2_3
.LBB2_23:                               # %.lr.ph.split
	ori	$t7, $zero, 1
	srl.w	$t7, $t7, $t5
	bge	$t7, $t6, .LBB2_45
# %bb.24:                               # %.lr.ph.split.split.us.preheader
	pcalau12i	$t5, %pc_hi20(g)
	ori	$t6, $zero, 4
	bstrpick.d	$t7, $t1, 15, 0
	sltu	$t8, $zero, $t7
	ori	$fp, $zero, 32
                                        # implicit-def: $r23
	b	.LBB2_26
	.p2align	4, , 16
.LBB2_25:                               #   in Loop: Header=BB2_26 Depth=1
	move	$t2, $zero
	addi.w	$s2, $s1, 1
	beqz	$s1, .LBB2_66
.LBB2_26:                               # %.lr.ph.split.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_32 Depth 2
                                        #     Child Loop BB2_36 Depth 2
                                        #     Child Loop BB2_39 Depth 2
	move	$t1, $t4
	move	$s1, $s2
	beqz	$t2, .LBB2_41
# %bb.27:                               # %iter.check65
                                        #   in Loop: Header=BB2_26 Depth=1
	andi	$t4, $t3, 255
	sub.w	$t3, $zero, $t2
	sltu	$s3, $zero, $t4
	bgeu	$t3, $t6, .LBB2_29
# %bb.28:                               #   in Loop: Header=BB2_26 Depth=1
	move	$s2, $s3
	b	.LBB2_39
	.p2align	4, , 16
.LBB2_29:                               # %vector.main.loop.iter.check67
                                        #   in Loop: Header=BB2_26 Depth=1
	bgeu	$t3, $fp, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_26 Depth=1
	move	$s4, $zero
	move	$s2, $s3
	b	.LBB2_35
.LBB2_31:                               # %vector.ph68
                                        #   in Loop: Header=BB2_26 Depth=1
	move	$s4, $t3
	bstrins.d	$s4, $zero, 4, 0
	move	$s2, $s4
	.p2align	4, , 16
.LBB2_32:                               # %vector.body73
                                        #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s2, $s2, -32
	bnez	$s2, .LBB2_32
# %bb.33:                               # %middle.block78
                                        #   in Loop: Header=BB2_26 Depth=1
	or	$s2, $t7, $t4
	sltu	$s2, $zero, $s2
	beq	$s4, $t3, .LBB2_40
# %bb.34:                               # %vec.epilog.iter.check86
                                        #   in Loop: Header=BB2_26 Depth=1
	andi	$s5, $t3, 28
	beqz	$s5, .LBB2_38
.LBB2_35:                               # %vec.epilog.ph85
                                        #   in Loop: Header=BB2_26 Depth=1
	xor	$s2, $s2, $s3
	move	$s3, $t3
	bstrins.d	$s3, $zero, 1, 0
	add.w	$t2, $t2, $s3
	sub.d	$s4, $s4, $s3
	.p2align	4, , 16
.LBB2_36:                               # %vec.epilog.vector.body95
                                        #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s4, $s4, 4
	bnez	$s4, .LBB2_36
# %bb.37:                               # %vec.epilog.middle.block99
                                        #   in Loop: Header=BB2_26 Depth=1
	sltu	$t4, $zero, $t4
	or	$s2, $s2, $t8
	or	$s2, $s2, $t4
	bne	$s3, $t3, .LBB2_39
	b	.LBB2_40
.LBB2_38:                               #   in Loop: Header=BB2_26 Depth=1
	add.w	$t2, $t2, $s4
	.p2align	4, , 16
.LBB2_39:                               # %vec.epilog.scalar.ph84
                                        #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t2, $t2, 1
	slli.d	$t3, $t2, 31
	or	$s2, $t8, $s2
	bgez	$t3, .LBB2_39
.LBB2_40:                               # %._crit_edge.i.us14
                                        #   in Loop: Header=BB2_26 Depth=1
	andi	$t3, $s2, 1
	st.b	$t3, $a5, %pc_lo12(m)
	st.w	$zero, $a4, %pc_lo12(j)
.LBB2_41:                               #   in Loop: Header=BB2_26 Depth=1
	move	$t4, $t1
	bgtz	$t1, .LBB2_43
# %bb.42:                               # %.critedge.i.us16
                                        #   in Loop: Header=BB2_26 Depth=1
	st.b	$t0, $a2, %pc_lo12(k)
	ori	$t4, $zero, 1
	st.w	$t4, $a6, %pc_lo12(f)
	move	$a1, $t0
.LBB2_43:                               # %fn1.exit.us17
                                        #   in Loop: Header=BB2_26 Depth=1
	andi	$t2, $a1, 255
	sltui	$t2, $t2, 1
	masknez	$s2, $a1, $t2
	maskeqz	$t2, $s0, $t2
	or	$s0, $t2, $s2
	ext.w.b	$t2, $s0
	bge	$a7, $t2, .LBB2_25
# %bb.44:                               #   in Loop: Header=BB2_26 Depth=1
	st.w	$zero, $t5, %pc_lo12(g)
	b	.LBB2_25
.LBB2_45:                               # %.lr.ph.split.split.preheader
	sll.w	$a3, $t6, $t5
	pcalau12i	$t5, %pc_hi20(g)
	ori	$t6, $zero, 4
	bstrpick.d	$t7, $t1, 15, 0
	sltu	$t8, $zero, $t7
	ori	$fp, $zero, 32
                                        # implicit-def: $r23
	b	.LBB2_47
	.p2align	4, , 16
.LBB2_46:                               #   in Loop: Header=BB2_47 Depth=1
	move	$t2, $zero
	addi.w	$s2, $s1, 1
	beqz	$s1, .LBB2_66
.LBB2_47:                               # %.lr.ph.split.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_53 Depth 2
                                        #     Child Loop BB2_57 Depth 2
                                        #     Child Loop BB2_60 Depth 2
	move	$t1, $t4
	move	$s1, $s2
	beqz	$t2, .LBB2_62
# %bb.48:                               # %iter.check
                                        #   in Loop: Header=BB2_47 Depth=1
	andi	$t4, $t3, 255
	sub.w	$t3, $zero, $t2
	sltu	$s3, $zero, $t4
	bgeu	$t3, $t6, .LBB2_50
# %bb.49:                               #   in Loop: Header=BB2_47 Depth=1
	move	$s2, $s3
	b	.LBB2_60
	.p2align	4, , 16
.LBB2_50:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB2_47 Depth=1
	bgeu	$t3, $fp, .LBB2_52
# %bb.51:                               #   in Loop: Header=BB2_47 Depth=1
	move	$s4, $zero
	move	$s2, $s3
	b	.LBB2_56
.LBB2_52:                               # %vector.ph
                                        #   in Loop: Header=BB2_47 Depth=1
	move	$s4, $t3
	bstrins.d	$s4, $zero, 4, 0
	move	$s2, $s4
	.p2align	4, , 16
.LBB2_53:                               # %vector.body
                                        #   Parent Loop BB2_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s2, $s2, -32
	bnez	$s2, .LBB2_53
# %bb.54:                               # %middle.block
                                        #   in Loop: Header=BB2_47 Depth=1
	or	$s2, $t7, $t4
	sltu	$s2, $zero, $s2
	beq	$s4, $t3, .LBB2_61
# %bb.55:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB2_47 Depth=1
	andi	$s5, $t3, 28
	beqz	$s5, .LBB2_59
.LBB2_56:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB2_47 Depth=1
	xor	$s2, $s2, $s3
	move	$s3, $t3
	bstrins.d	$s3, $zero, 1, 0
	add.w	$t2, $t2, $s3
	sub.d	$s4, $s4, $s3
	.p2align	4, , 16
.LBB2_57:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB2_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$s4, $s4, 4
	bnez	$s4, .LBB2_57
# %bb.58:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB2_47 Depth=1
	sltu	$t4, $zero, $t4
	or	$s2, $s2, $t8
	or	$s2, $s2, $t4
	bne	$s3, $t3, .LBB2_60
	b	.LBB2_61
.LBB2_59:                               #   in Loop: Header=BB2_47 Depth=1
	add.w	$t2, $t2, $s4
	.p2align	4, , 16
.LBB2_60:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB2_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t2, $t2, 1
	slli.d	$t3, $t2, 31
	or	$s2, $t8, $s2
	bgez	$t3, .LBB2_60
.LBB2_61:                               # %._crit_edge.i
                                        #   in Loop: Header=BB2_47 Depth=1
	andi	$t3, $s2, 1
	st.b	$t3, $a5, %pc_lo12(m)
	st.w	$zero, $a4, %pc_lo12(j)
.LBB2_62:                               #   in Loop: Header=BB2_47 Depth=1
	move	$t4, $t1
	bgtz	$t1, .LBB2_64
# %bb.63:                               # %.critedge.i
                                        #   in Loop: Header=BB2_47 Depth=1
	st.b	$t0, $a2, %pc_lo12(k)
	ori	$t4, $zero, 1
	st.w	$t4, $a6, %pc_lo12(f)
	move	$a1, $t0
.LBB2_64:                               # %fn1.exit
                                        #   in Loop: Header=BB2_47 Depth=1
	andi	$t2, $a1, 255
	sltui	$t2, $t2, 1
	masknez	$s2, $a1, $t2
	maskeqz	$t2, $s0, $t2
	or	$s0, $t2, $s2
	ext.w.b	$t2, $s0
	bge	$a7, $t2, .LBB2_46
# %bb.65:                               #   in Loop: Header=BB2_47 Depth=1
	st.w	$zero, $t5, %pc_lo12(g)
	b	.LBB2_46
.LBB2_66:                               # %._crit_edge
	addi.d	$a2, $t1, 1
	pcalau12i	$a4, %pc_hi20(n)
	st.h	$a3, $a4, %pc_lo12(n)
	pcalau12i	$a3, %pc_hi20(l)
	st.b	$a2, $a3, %pc_lo12(l)
	ori	$a2, $zero, 1
	st.w	$a2, $a0, %pc_lo12(e)
.LBB2_67:
	ext.w.b	$a0, $a1
	pcaddu18i	$ra, %call36(fn2)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	b,@object                       # @b
	.bss
	.globl	b
b:
	.byte	0                               # 0x0
	.size	b, 1

	.type	a,@object                       # @a
	.globl	a
a:
	.byte	0                               # 0x0
	.size	a, 1

	.type	o,@object                       # @o
	.globl	o
o:
	.byte	0                               # 0x0
	.size	o, 1

	.type	d,@object                       # @d
	.globl	d
	.p2align	1, 0x0
d:
	.half	0                               # 0x0
	.size	d, 2

	.type	n,@object                       # @n
	.globl	n
	.p2align	1, 0x0
n:
	.half	0                               # 0x0
	.size	n, 2

	.type	j,@object                       # @j
	.globl	j
	.p2align	2, 0x0
j:
	.word	0                               # 0x0
	.size	j, 4

	.type	c,@object                       # @c
	.globl	c
	.p2align	1, 0x0
c:
	.half	0                               # 0x0
	.size	c, 2

	.type	m,@object                       # @m
	.globl	m
m:
	.byte	0                               # 0x0
	.size	m, 1

	.type	f,@object                       # @f
	.globl	f
	.p2align	2, 0x0
f:
	.word	0                               # 0x0
	.size	f, 4

	.type	l,@object                       # @l
	.globl	l
l:
	.byte	0                               # 0x0
	.size	l, 1

	.type	h,@object                       # @h
	.globl	h
h:
	.byte	0                               # 0x0
	.size	h, 1

	.type	k,@object                       # @k
	.globl	k
k:
	.byte	0                               # 0x0
	.size	k, 1

	.type	e,@object                       # @e
	.globl	e
	.p2align	2, 0x0
e:
	.word	0                               # 0x0
	.size	e, 4

	.type	q,@object                       # @q
	.globl	q
	.p2align	2, 0x0
q:
	.word	0                               # 0x0
	.size	q, 4

	.type	g,@object                       # @g
	.globl	g
	.p2align	2, 0x0
g:
	.word	0                               # 0x0
	.size	g, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
