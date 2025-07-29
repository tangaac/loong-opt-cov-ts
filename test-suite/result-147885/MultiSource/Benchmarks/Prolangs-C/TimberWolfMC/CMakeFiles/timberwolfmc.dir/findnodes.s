	.file	"findnodes.c"
	.text
	.globl	findnodes                       # -- Begin function findnodes
	.p2align	5
	.type	findnodes,@function
findnodes:                              # @findnodes
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
	pcalau12i	$a0, %got_pc_hi20(numRects)
	ld.d	$a0, $a0, %got_pc_lo12(numRects)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(rectArray)
	pcalau12i	$a2, %got_pc_hi20(Hlist)
	ld.d	$a2, $a2, %got_pc_lo12(Hlist)
	ld.d	$a1, $a1, %got_pc_lo12(rectArray)
	ld.d	$s4, $a2, 0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	beqz	$s4, .LBB0_148
# %bb.1:                                # %.lr.ph459.preheader
	pcalau12i	$a0, %got_pc_hi20(edgeList)
	ld.d	$s6, $a0, %got_pc_lo12(edgeList)
	pcalau12i	$a0, %got_pc_hi20(Vptrs)
	ld.d	$a0, $a0, %got_pc_lo12(Vptrs)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(Vroot)
	ld.d	$a0, $a0, %got_pc_lo12(Vroot)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, -25
	ori	$a0, $a0, 2400
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, -251659
	ori	$a0, $a0, 3113
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 20971
	ori	$a0, $a0, 2128
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 10485
	ori	$a0, $a0, 3112
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
                                        # implicit-def: $r31
                                        # implicit-def: $r22
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$s5, $fp
	move	$s3, $s8
.LBB0_3:                                # %.loopexit397
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s4, $s4, 16
	move	$s8, $s3
	move	$fp, $s5
	beqz	$s4, .LBB0_148
.LBB0_4:                                # %.lr.ph459
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #       Child Loop BB0_122 Depth 3
                                        #       Child Loop BB0_136 Depth 3
	ld.w	$a0, $s4, 0
	ld.d	$a1, $s6, 0
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 3
	add.d	$a0, $a1, $a2
	ld.w	$a1, $a0, 20
	bltz	$a1, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a1, $a0, 4
	ld.w	$a2, $a0, 8
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.w	$s0, $a0, 12
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s7, $s1, $a0
	beqz	$s7, .LBB0_2
# %bb.6:                                # %.lr.ph444.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph444
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #       Child Loop BB0_122 Depth 3
                                        #       Child Loop BB0_136 Depth 3
	ld.w	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 20
	bgtz	$a2, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	ld.w	$s2, $a1, 12
	blt	$t3, $s2, .LBB0_2
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	bge	$s2, $s1, .LBB0_12
	.p2align	4, , 16
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=2
	move	$s5, $fp
	move	$s3, $s8
.LBB0_11:                               # %.loopexit396
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$s7, $s7, 16
	move	$s8, $s3
	move	$fp, $s5
	bnez	$s7, .LBB0_7
	b	.LBB0_3
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=2
	ld.w	$a2, $a1, 4
	blt	$s0, $a2, .LBB0_10
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=2
	ld.w	$s5, $a1, 8
	blt	$s5, $s0, .LBB0_10
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=2
	add.d	$a0, $a0, $t2
	ld.w	$a2, $a0, 24
	ld.w	$a0, $a1, 24
	beqz	$a2, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_20
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=2
	beq	$s5, $s0, .LBB0_10
	b	.LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=2
	beqz	$a0, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_7 Depth=2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bne	$s2, $a0, .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $a0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s3, $a0
	beqz	$a0, .LBB0_36
# %bb.21:                               # %.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=2
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $s6, 0
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a2, $a1, $t2
	addi.d	$a2, $a2, 24
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_24
.LBB0_22:                               #   in Loop: Header=BB0_24 Depth=3
	beq	$s1, $t3, .LBB0_33
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_24 Depth=3
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_10
.LBB0_24:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a0, 0
	slli.d	$a4, $a3, 5
	alsl.d	$a3, $a3, $a4, 3
	add.d	$a3, $a1, $a3
	ld.w	$a4, $a3, 20
	bltz	$a4, .LBB0_23
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=3
	ld.w	$s1, $a3, 12
	blt	$s1, $s2, .LBB0_23
# %bb.26:                               #   in Loop: Header=BB0_24 Depth=3
	ld.w	$a4, $a3, 4
	blt	$s0, $a4, .LBB0_23
# %bb.27:                               #   in Loop: Header=BB0_24 Depth=3
	ld.w	$s5, $a3, 8
	blt	$s5, $s0, .LBB0_23
# %bb.28:                               #   in Loop: Header=BB0_24 Depth=3
	ld.w	$a4, $a2, 0
	ld.w	$a3, $a3, 24
	beqz	$a4, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_24 Depth=3
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB0_34
# %bb.30:                               #   in Loop: Header=BB0_24 Depth=3
	beq	$s5, $s0, .LBB0_23
	b	.LBB0_34
.LBB0_31:                               #   in Loop: Header=BB0_24 Depth=3
	ori	$a4, $zero, 1
	beq	$a3, $a4, .LBB0_22
# %bb.32:                               #   in Loop: Header=BB0_24 Depth=3
	bnez	$a3, .LBB0_23
	b	.LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=2
	move	$s1, $t3
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=2
	pcalau12i	$a0, %got_pc_hi20(Hptrs)
	ld.d	$a0, $a0, %got_pc_lo12(Hptrs)
	pcalau12i	$a1, %got_pc_hi20(Hroot)
	ld.d	$a1, $a1, %got_pc_lo12(Hroot)
	ld.d	$s3, $a0, 0
	ld.d	$a0, $a1, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s3, $a0
	beqz	$a1, .LBB0_36
# %bb.35:                               # %.lr.ph420
                                        #   in Loop: Header=BB0_7 Depth=2
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $s6, 0
	move	$a2, $zero
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_40
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=2
	move	$s5, $fp
	move	$s3, $s8
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=2
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_11
.LBB0_38:                               #   in Loop: Header=BB0_40 Depth=3
	move	$a2, $a7
	.p2align	4, , 16
.LBB0_39:                               # %.thread372
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_10
.LBB0_40:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s5, $a1, 0
	slli.d	$a3, $s5, 5
	alsl.d	$a3, $s5, $a3, 3
	add.d	$a3, $a0, $a3
	ld.w	$a4, $a3, 20
	bgtz	$a4, .LBB0_39
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$t4, $a3, 12
	blt	$t4, $s0, .LBB0_39
# %bb.42:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a6, $a3, 4
	blt	$s1, $a6, .LBB0_39
# %bb.43:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a5, $a3, 8
	blt	$a5, $s2, .LBB0_39
# %bb.44:                               #   in Loop: Header=BB0_40 Depth=3
	bne	$s1, $s2, .LBB0_51
# %bb.45:                               #   in Loop: Header=BB0_40 Depth=3
	bge	$a6, $s2, .LBB0_54
.LBB0_46:                               #   in Loop: Header=BB0_40 Depth=3
	blt	$s2, $a5, .LBB0_96
# %bb.47:                               #   in Loop: Header=BB0_40 Depth=3
	bne	$a5, $s2, .LBB0_39
# %bb.48:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a5, $a3, 24
	beqz	$a5, .LBB0_96
# %bb.49:                               #   in Loop: Header=BB0_40 Depth=3
	addi.w	$a5, $zero, -1
	blt	$a5, $a4, .LBB0_39
# %bb.50:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a3, $a3, 28
	slli.d	$a4, $a3, 5
	alsl.d	$a3, $a3, $a4, 3
	add.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 20
	move	$s3, $s5
	blez	$a3, .LBB0_39
	b	.LBB0_97
.LBB0_51:                               #   in Loop: Header=BB0_40 Depth=3
	beqz	$a2, .LBB0_58
# %bb.52:                               #   in Loop: Header=BB0_40 Depth=3
	ori	$a7, $zero, 1
	beq	$a2, $a7, .LBB0_75
# %bb.53:                               #   in Loop: Header=BB0_40 Depth=3
	move	$a7, $a2
	b	.LBB0_84
.LBB0_54:                               #   in Loop: Header=BB0_40 Depth=3
	bne	$a6, $s2, .LBB0_39
# %bb.55:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a6, $a3, 24
	beqz	$a6, .LBB0_46
# %bb.56:                               #   in Loop: Header=BB0_40 Depth=3
	addi.w	$a6, $zero, -1
	blt	$a6, $a4, .LBB0_39
# %bb.57:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a7, $a3, 32
	slli.d	$t0, $a7, 5
	alsl.d	$a7, $a7, $t0, 3
	add.d	$a7, $a0, $a7
	ld.w	$a7, $a7, 20
	blt	$a6, $a7, .LBB0_39
	b	.LBB0_46
.LBB0_58:                               #   in Loop: Header=BB0_40 Depth=3
	bge	$a6, $s2, .LBB0_66
.LBB0_59:                               #   in Loop: Header=BB0_40 Depth=3
	bge	$s2, $a5, .LBB0_70
.LBB0_60:                               #   in Loop: Header=BB0_40 Depth=3
	bge	$a6, $s1, .LBB0_72
.LBB0_61:                               #   in Loop: Header=BB0_40 Depth=3
	blt	$s1, $a5, .LBB0_96
# %bb.62:                               #   in Loop: Header=BB0_40 Depth=3
	bne	$a5, $s1, .LBB0_74
# %bb.63:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a7, $a3, 24
	beqz	$a7, .LBB0_96
# %bb.64:                               #   in Loop: Header=BB0_40 Depth=3
	addi.w	$a7, $zero, -1
	blt	$a7, $a4, .LBB0_74
# %bb.65:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a7, $a3, 28
	slli.d	$t0, $a7, 5
	alsl.d	$a7, $a7, $t0, 3
	add.d	$a7, $a0, $a7
	ld.w	$a7, $a7, 20
	blez	$a7, .LBB0_74
	b	.LBB0_96
.LBB0_66:                               #   in Loop: Header=BB0_40 Depth=3
	bne	$a6, $s2, .LBB0_74
# %bb.67:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a7, $a3, 24
	beqz	$a7, .LBB0_59
# %bb.68:                               #   in Loop: Header=BB0_40 Depth=3
	addi.w	$a7, $zero, -1
	blt	$a7, $a4, .LBB0_74
# %bb.69:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$t0, $a3, 32
	slli.d	$t1, $t0, 5
	alsl.d	$t0, $t0, $t1, 3
	add.d	$t0, $a0, $t0
	ld.w	$t0, $t0, 20
	blt	$a7, $t0, .LBB0_74
	b	.LBB0_59
.LBB0_70:                               #   in Loop: Header=BB0_40 Depth=3
	bne	$a5, $s2, .LBB0_74
# %bb.71:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a7, $a3, 24
	bnez	$a7, .LBB0_74
	b	.LBB0_60
.LBB0_72:                               #   in Loop: Header=BB0_40 Depth=3
	bne	$a6, $s1, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a7, $a3, 24
	beqz	$a7, .LBB0_61
.LBB0_74:                               #   in Loop: Header=BB0_40 Depth=3
	move	$a7, $zero
.LBB0_75:                               # %.thread
                                        #   in Loop: Header=BB0_40 Depth=3
	bge	$a6, $s1, .LBB0_79
.LBB0_76:                               #   in Loop: Header=BB0_40 Depth=3
	bge	$s1, $a5, .LBB0_81
.LBB0_77:                               #   in Loop: Header=BB0_40 Depth=3
	bnez	$a2, .LBB0_146
# %bb.78:                               #   in Loop: Header=BB0_40 Depth=3
	ori	$a7, $zero, 2
	ori	$t0, $zero, 1
	move	$fp, $s5
	bge	$a6, $s2, .LBB0_86
	b	.LBB0_90
.LBB0_79:                               #   in Loop: Header=BB0_40 Depth=3
	bne	$a6, $s1, .LBB0_84
# %bb.80:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$t0, $a3, 24
	bnez	$t0, .LBB0_84
	b	.LBB0_76
.LBB0_81:                               #   in Loop: Header=BB0_40 Depth=3
	bne	$a5, $s1, .LBB0_84
# %bb.82:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$t0, $a3, 24
	beqz	$t0, .LBB0_77
# %bb.83:                               #   in Loop: Header=BB0_40 Depth=3
	addi.w	$t0, $zero, -1
	bge	$t0, $a4, .LBB0_95
.LBB0_84:                               #   in Loop: Header=BB0_40 Depth=3
	move	$a2, $a7
	bstrins.d	$a2, $zero, 1, 1
	bnez	$a2, .LBB0_38
# %bb.85:                               #   in Loop: Header=BB0_40 Depth=3
	addi.d	$a2, $a7, -2
	sltui	$t0, $a2, 1
	blt	$a6, $s2, .LBB0_90
.LBB0_86:                               #   in Loop: Header=BB0_40 Depth=3
	bne	$a6, $s2, .LBB0_38
# %bb.87:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a2, $a3, 24
	beqz	$a2, .LBB0_90
# %bb.88:                               #   in Loop: Header=BB0_40 Depth=3
	addi.w	$a2, $zero, -1
	blt	$a2, $a4, .LBB0_38
# %bb.89:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a4, $a3, 32
	slli.d	$a6, $a4, 5
	alsl.d	$a4, $a4, $a6, 3
	add.d	$a4, $a0, $a4
	ld.w	$a4, $a4, 20
	blt	$a2, $a4, .LBB0_38
.LBB0_90:                               #   in Loop: Header=BB0_40 Depth=3
	bge	$s2, $a5, .LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_40 Depth=3
	ori	$a2, $zero, 1
	move	$s8, $s5
	move	$s3, $s5
	move	$s5, $fp
	beqz	$t0, .LBB0_39
	b	.LBB0_97
.LBB0_92:                               #   in Loop: Header=BB0_40 Depth=3
	bne	$a5, $s2, .LBB0_38
# %bb.93:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a2, $a3, 24
	sltui	$a2, $a2, 1
	and	$a3, $a2, $t0
	bnez	$a3, .LBB0_147
# %bb.94:                               #   in Loop: Header=BB0_40 Depth=3
	masknez	$a3, $s8, $a2
	maskeqz	$a4, $s5, $a2
	or	$s8, $a4, $a3
	masknez	$a3, $a7, $a2
	ori	$a4, $zero, 1
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	b	.LBB0_39
.LBB0_95:                               #   in Loop: Header=BB0_40 Depth=3
	ld.w	$t0, $a3, 28
	slli.d	$t1, $t0, 5
	alsl.d	$t0, $t0, $t1, 3
	add.d	$t0, $a0, $t0
	ld.w	$t0, $t0, 20
	ori	$t1, $zero, 1
	bge	$t0, $t1, .LBB0_77
	b	.LBB0_84
.LBB0_96:                               #   in Loop: Header=BB0_7 Depth=2
	move	$s3, $s5
.LBB0_97:                               # %.thread384
                                        #   in Loop: Header=BB0_7 Depth=2
	addi.w	$a4, $s3, 0
	ori	$a7, $zero, 40
	mul.d	$a1, $a4, $a7
	add.d	$a1, $a0, $a1
	ld.w	$a5, $a1, 12
	addi.w	$s8, $s5, 0
	mul.d	$a2, $s8, $a7
	add.d	$a2, $a0, $a2
	ld.w	$a6, $a2, 12
	slt	$a3, $a5, $a6
	slt	$a5, $a6, $a5
	masknez	$a6, $s8, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	masknez	$a4, $a4, $a3
	maskeqz	$a5, $s8, $a3
	or	$a4, $a5, $a4
	mul.d	$a4, $a4, $a7
	add.d	$a4, $a0, $a4
	ld.w	$a5, $a4, 8
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	st.d	$t4, $sp, 8                     # 8-byte Folded Spill
	blt	$t4, $a4, .LBB0_116
# %bb.98:                               #   in Loop: Header=BB0_7 Depth=2
	masknez	$a4, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	ld.w	$a2, $a2, 4
	bge	$a2, $s2, .LBB0_116
# %bb.99:                               #   in Loop: Header=BB0_7 Depth=2
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $a1, 24
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $fp, $a0
	ld.w	$a2, $a1, 0
	ld.d	$a0, $s6, 0
	ori	$a3, $zero, 40
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	ld.w	$a2, $a2, 12
.LBB0_100:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_100 Depth=3
	ld.w	$a3, $a1, 0
	slli.d	$a4, $a3, 5
	alsl.d	$a3, $a3, $a4, 3
	add.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 12
	bge	$a2, $a3, .LBB0_100
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a1, $a1, 8
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 8                     # 8-byte Folded Reload
	beqz	$a1, .LBB0_115
# %bb.103:                              # %.lr.ph430
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$t0, $sp, 0                     # 8-byte Folded Reload
	b	.LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_105 Depth=3
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB0_115
.LBB0_105:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bgtz	$a3, .LBB0_104
# %bb.106:                              #   in Loop: Header=BB0_105 Depth=3
	ld.w	$a3, $a2, 4
	blt	$t4, $a3, .LBB0_104
# %bb.107:                              #   in Loop: Header=BB0_105 Depth=3
	ld.w	$a4, $a2, 8
	blt	$a4, $t4, .LBB0_104
# %bb.108:                              #   in Loop: Header=BB0_105 Depth=3
	beqz	$t0, .LBB0_111
# %bb.109:                              #   in Loop: Header=BB0_105 Depth=3
	bne	$a3, $t4, .LBB0_114
# %bb.110:                              #   in Loop: Header=BB0_105 Depth=3
	blt	$a3, $a4, .LBB0_104
	b	.LBB0_114
.LBB0_111:                              #   in Loop: Header=BB0_105 Depth=3
	ld.w	$a5, $a2, 24
	ori	$a7, $zero, 1
	bne	$a5, $a7, .LBB0_114
# %bb.112:                              #   in Loop: Header=BB0_105 Depth=3
	beq	$a3, $t4, .LBB0_104
# %bb.113:                              #   in Loop: Header=BB0_105 Depth=3
	beq	$a4, $t4, .LBB0_104
.LBB0_114:                              #   in Loop: Header=BB0_7 Depth=2
	ld.w	$s2, $a2, 12
.LBB0_115:                              #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
.LBB0_117:                              # %.loopexit395
                                        #   in Loop: Header=BB0_7 Depth=2
	move	$a7, $s1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	blt	$t4, $a1, .LBB0_133
# %bb.118:                              # %.loopexit395
                                        #   in Loop: Header=BB0_7 Depth=2
	move	$a7, $s1
	bge	$s1, $a5, .LBB0_133
# %bb.119:                              #   in Loop: Header=BB0_7 Depth=2
	slli.d	$a1, $s8, 5
	alsl.d	$a1, $s8, $a1, 3
	add.d	$a0, $a0, $a1
	ld.w	$s8, $a0, 24
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s1
	move	$fp, $t4
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	move	$t4, $fp
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	move	$a7, $s1
	beqz	$a0, .LBB0_133
# %bb.120:                              # %.lr.ph435
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a1, $s6, 0
	b	.LBB0_122
	.p2align	4, , 16
.LBB0_121:                              #   in Loop: Header=BB0_122 Depth=3
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_132
.LBB0_122:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a1, $a2
	ld.w	$a3, $a2, 20
	bltz	$a3, .LBB0_121
# %bb.123:                              #   in Loop: Header=BB0_122 Depth=3
	ld.w	$a3, $a2, 4
	blt	$t4, $a3, .LBB0_121
# %bb.124:                              #   in Loop: Header=BB0_122 Depth=3
	ld.w	$a4, $a2, 8
	blt	$a4, $t4, .LBB0_121
# %bb.125:                              #   in Loop: Header=BB0_122 Depth=3
	beqz	$s8, .LBB0_128
# %bb.126:                              #   in Loop: Header=BB0_122 Depth=3
	bne	$a3, $t4, .LBB0_131
# %bb.127:                              #   in Loop: Header=BB0_122 Depth=3
	blt	$a3, $a4, .LBB0_121
	b	.LBB0_131
.LBB0_128:                              #   in Loop: Header=BB0_122 Depth=3
	ld.w	$a5, $a2, 24
	ori	$a7, $zero, 1
	bne	$a5, $a7, .LBB0_131
# %bb.129:                              #   in Loop: Header=BB0_122 Depth=3
	beq	$a3, $t4, .LBB0_121
# %bb.130:                              #   in Loop: Header=BB0_122 Depth=3
	beq	$a4, $t4, .LBB0_121
.LBB0_131:                              #   in Loop: Header=BB0_7 Depth=2
	ld.w	$a7, $a2, 12
	b	.LBB0_133
.LBB0_132:                              #   in Loop: Header=BB0_7 Depth=2
	move	$a7, $s1
.LBB0_133:                              # %.loopexit
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.w	$a1, $a6, 0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_138
# %bb.134:                              # %.lr.ph.i
                                        #   in Loop: Header=BB0_7 Depth=2
	addi.d	$a3, $a1, 1
	ori	$a2, $zero, 52
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a0, $a2
	addi.d	$a4, $a2, 20
	move	$a2, $a1
	b	.LBB0_136
	.p2align	4, , 16
.LBB0_135:                              #   in Loop: Header=BB0_136 Depth=3
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, -52
	ori	$a5, $zero, 1
	bge	$a5, $a3, .LBB0_141
.LBB0_136:                              #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a4, 0
	blt	$a5, $s2, .LBB0_135
# %bb.137:                              #   in Loop: Header=BB0_136 Depth=3
	ld.w	$a5, $a4, -4
	blt	$a7, $a5, .LBB0_135
	b	.LBB0_139
.LBB0_138:                              # %._crit_edge.i
                                        #   in Loop: Header=BB0_7 Depth=2
	move	$a2, $a1
	beqz	$a1, .LBB0_141
.LBB0_139:                              # %.thread.i
                                        #   in Loop: Header=BB0_7 Depth=2
	ori	$a3, $zero, 52
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 28
	blt	$a3, $s0, .LBB0_141
# %bb.140:                              # %backCheck.exit
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.w	$a2, $a2, 24
	bge	$t4, $a2, .LBB0_11
.LBB0_141:                              # %backCheck.exit.thread
                                        #   in Loop: Header=BB0_7 Depth=2
	addi.w	$a2, $a1, 1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a3, $a2, $a3
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	rotri.w	$a3, $a3, 2
	st.w	$a2, $a6, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	bgeu	$a4, $a3, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_7 Depth=2
	ori	$fp, $zero, 52
	b	.LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_7 Depth=2
	addi.w	$a1, $a1, 101
	ori	$fp, $zero, 52
	mul.d	$a1, $a1, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a6, 0
	st.d	$a0, $s8, 0
.LBB0_144:                              #   in Loop: Header=BB0_7 Depth=2
	mul.d	$a1, $a2, $fp
	add.d	$a1, $a0, $a1
	st.w	$s2, $a1, 16
	ld.w	$a1, $a6, 0
	mul.d	$a1, $a1, $fp
	add.d	$a1, $a0, $a1
	st.w	$a7, $a1, 20
	ld.w	$a1, $a6, 0
	mul.d	$a1, $a1, $fp
	add.d	$a1, $a0, $a1
	st.w	$s0, $a1, 24
	ld.w	$a1, $a6, 0
	mul.d	$a1, $a1, $fp
	add.d	$a1, $a0, $a1
	st.w	$t4, $a1, 28
	ld.w	$a1, $a6, 0
	mul.d	$a1, $a1, $fp
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 32
	ld.w	$a1, $a6, 0
	mul.d	$a1, $a1, $fp
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 36
	ld.w	$a1, $a6, 0
	mul.d	$a1, $a1, $fp
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 40
	ld.w	$a1, $a6, 0
	mul.d	$a1, $a1, $fp
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 44
	add.d	$a1, $a7, $s2
	ld.w	$a2, $a6, 0
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 1
	mul.d	$a1, $a2, $fp
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	stx.w	$a3, $a0, $a1
	add.d	$a1, $t4, $s0
	ld.w	$a2, $a6, 0
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 1
	mul.d	$a1, $a2, $fp
	add.d	$a1, $a0, $a1
	st.d	$a3, $sp, 0                     # 8-byte Folded Spill
	st.w	$a3, $a1, 4
	ld.w	$a1, $a6, 0
	mul.d	$a1, $a1, $fp
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 8
	ld.w	$a1, $a6, 0
	mul.d	$a1, $a1, $fp
	add.d	$a0, $a0, $a1
	st.w	$zero, $a0, 12
	ld.w	$a2, $a6, 0
	pcalau12i	$a0, %got_pc_hi20(hRectRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hRectRoot)
	move	$a1, $s2
	move	$s8, $a6
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s8, 0
	pcalau12i	$a0, %got_pc_hi20(vRectRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vRectRoot)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fpdebug)
	ld.d	$a3, $a0, %got_pc_lo12(fpdebug)
	ld.w	$a2, $s8, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a3, 0
	move	$s8, $a3
	mul.d	$a3, $a2, $fp
	add.d	$a4, $a1, $a3
	ldx.w	$a3, $a1, $a3
	ld.w	$a4, $a4, 4
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.w	$a2, $a1, $s2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.w	$a3, $a1, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(doPlacement)
	ld.d	$a0, $a0, %got_pc_lo12(doPlacement)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_37
# %bb.145:                              #   in Loop: Header=BB0_7 Depth=2
	pcalau12i	$a0, %got_pc_hi20(fpNodes)
	ld.d	$a0, $a0, %got_pc_lo12(fpNodes)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 0                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_37
.LBB0_146:                              #   in Loop: Header=BB0_7 Depth=2
	move	$s3, $s8
	b	.LBB0_97
.LBB0_147:                              #   in Loop: Header=BB0_7 Depth=2
	move	$s3, $s5
	move	$s5, $fp
	b	.LBB0_97
.LBB0_148:                              # %._crit_edge460
	pcaddu18i	$ra, %call36(rectlink)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(LEroot)
	ld.d	$a0, $a0, %got_pc_lo12(LEroot)
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(HRlist)
	ld.d	$a1, $a1, %got_pc_lo12(HRlist)
	pcalau12i	$a2, %got_pc_hi20(LEptrs)
	ld.d	$s3, $a2, %got_pc_lo12(LEptrs)
	ld.d	$s4, $a1, 0
	st.d	$a0, $s3, 0
	lu12i.w	$s2, -245
	beqz	$s4, .LBB0_155
# %bb.149:                              # %.lr.ph.preheader.i
	move	$a1, $zero
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a2, $s2, 3520
	ori	$s5, $zero, 52
	pcalau12i	$a3, %got_pc_hi20(LEroot)
	ld.d	$fp, $a3, %got_pc_lo12(LEroot)
	lu12i.w	$a3, -251659
	ori	$s6, $a3, 3113
	lu12i.w	$a3, 20971
	ori	$s7, $a3, 2128
	lu12i.w	$a3, 10485
	ori	$s8, $a3, 3112
	b	.LBB0_152
	.p2align	4, , 16
.LBB0_150:                              #   in Loop: Header=BB0_152 Depth=1
	slli.d	$a1, $s1, 3
	stx.d	$s4, $a0, $a1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s1
	move	$a2, $s0
.LBB0_151:                              #   in Loop: Header=BB0_152 Depth=1
	ld.d	$s4, $s4, 16
	beqz	$s4, .LBB0_155
.LBB0_152:                              # %.lr.ph.i327
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s4, 0
	mul.d	$a3, $a3, $s5
	add.d	$a3, $a0, $a3
	ld.w	$s0, $a3, 16
	bge	$a2, $s0, .LBB0_151
# %bb.153:                              #   in Loop: Header=BB0_152 Depth=1
	addi.w	$s1, $a1, 1
	mul.d	$a2, $s1, $s6
	ld.d	$a0, $s3, 0
	add.d	$a2, $a2, $s7
	rotri.w	$a2, $a2, 2
	bltu	$s8, $a2, .LBB0_150
# %bb.154:                              #   in Loop: Header=BB0_152 Depth=1
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, 808
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	b	.LBB0_150
.LBB0_155:                              # %makeRLEtree.exit
	pcalau12i	$a0, %got_pc_hi20(BEroot)
	ld.d	$a0, $a0, %got_pc_lo12(BEroot)
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(VRlist)
	ld.d	$a1, $a1, %got_pc_lo12(VRlist)
	pcalau12i	$a2, %got_pc_hi20(BEptrs)
	ld.d	$s3, $a2, %got_pc_lo12(BEptrs)
	ld.d	$s4, $a1, 0
	st.d	$a0, $s3, 0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	beqz	$s4, .LBB0_162
# %bb.156:                              # %.lr.ph.preheader.i332
	move	$a1, $zero
	ld.d	$a0, $s8, 0
	ori	$a2, $s2, 3520
	ori	$s2, $zero, 52
	pcalau12i	$a3, %got_pc_hi20(BEroot)
	ld.d	$fp, $a3, %got_pc_lo12(BEroot)
	lu12i.w	$a3, -251659
	ori	$s5, $a3, 3113
	lu12i.w	$a3, 20971
	ori	$s6, $a3, 2128
	lu12i.w	$a3, 10485
	ori	$s7, $a3, 3112
	b	.LBB0_159
	.p2align	4, , 16
.LBB0_157:                              #   in Loop: Header=BB0_159 Depth=1
	slli.d	$a1, $s1, 3
	stx.d	$s4, $a0, $a1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	move	$a1, $s1
	move	$a2, $s0
.LBB0_158:                              #   in Loop: Header=BB0_159 Depth=1
	ld.d	$s4, $s4, 16
	beqz	$s4, .LBB0_162
.LBB0_159:                              # %.lr.ph.i334
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s4, 0
	mul.d	$a3, $a3, $s2
	add.d	$a3, $a0, $a3
	ld.w	$s0, $a3, 24
	bge	$a2, $s0, .LBB0_158
# %bb.160:                              #   in Loop: Header=BB0_159 Depth=1
	addi.w	$s1, $a1, 1
	mul.d	$a2, $s1, $s5
	ld.d	$a0, $s3, 0
	add.d	$a2, $a2, $s6
	rotri.w	$a2, $a2, 2
	bltu	$s7, $a2, .LBB0_157
# %bb.161:                              #   in Loop: Header=BB0_159 Depth=1
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, 808
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	b	.LBB0_157
.LBB0_162:                              # %makeRBEtree.exit
	pcalau12i	$a0, %got_pc_hi20(doPlacement)
	ld.d	$a0, $a0, %got_pc_lo12(doPlacement)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_164
# %bb.163:
	pcalau12i	$a0, %got_pc_hi20(fpNodes)
	ld.d	$fp, $a0, %got_pc_lo12(fpNodes)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
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
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.LBB0_164:
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
.Lfunc_end0:
	.size	findnodes, .Lfunc_end0-findnodes
                                        # -- End function
	.globl	backCheck                       # -- Begin function backCheck
	.p2align	5
	.type	backCheck,@function
backCheck:                              # @backCheck
# %bb.0:
	pcalau12i	$a4, %got_pc_hi20(numRects)
	ld.d	$a4, $a4, %got_pc_lo12(numRects)
	ld.w	$a4, $a4, 0
	ori	$a6, $zero, 1
	blt	$a4, $a6, .LBB1_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a5, %got_pc_hi20(rectArray)
	ld.d	$a5, $a5, %got_pc_lo12(rectArray)
	ld.d	$a5, $a5, 0
	addi.d	$a7, $a4, 1
	ori	$t0, $zero, 52
	mul.d	$t0, $a4, $t0
	add.d	$t0, $t0, $a5
	addi.d	$t0, $t0, 20
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, -52
	bge	$a6, $a7, .LBB1_5
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $t0, 0
	blt	$t1, $a0, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	ld.w	$t1, $t0, -4
	blt	$a1, $t1, .LBB1_2
	b	.LBB1_7
.LBB1_5:                                # %._crit_edge
	beqz	$a4, .LBB1_8
# %bb.6:                                # %._crit_edge..thread_crit_edge
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$a0, $a0, %got_pc_lo12(rectArray)
	ld.d	$a5, $a0, 0
.LBB1_7:                                # %.thread
	ori	$a0, $zero, 52
	mul.d	$a0, $a4, $a0
	add.d	$a0, $a5, $a0
	ld.w	$a1, $a0, 28
	bge	$a1, $a2, .LBB1_9
.LBB1_8:
	move	$a0, $zero
	ret
.LBB1_9:
	ld.w	$a0, $a0, 24
	slt	$a0, $a3, $a0
	xori	$a0, $a0, 1
	ret
.Lfunc_end1:
	.size	backCheck, .Lfunc_end1-backCheck
                                        # -- End function
	.globl	rectlink                        # -- Begin function rectlink
	.p2align	5
	.type	rectlink,@function
rectlink:                               # @rectlink
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(HRlist)
	ld.d	$fp, $a0, %got_pc_lo12(HRlist)
	pcalau12i	$a0, %got_pc_hi20(VRlist)
	ld.d	$s1, $a0, %got_pc_lo12(VRlist)
	st.d	$zero, $fp, 0
	st.d	$zero, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(hRectRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hRectRoot)
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 28
	addi.d	$a3, $sp, 24
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB2_7
# %bb.1:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 24
	st.d	$a0, $fp, 0
	st.w	$a1, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(vRectRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vRectRoot)
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 28
	addi.d	$a3, $sp, 24
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 24
	ld.d	$s2, $fp, 0
	st.d	$a0, $s1, 0
	st.w	$a1, $a0, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(hRectRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hRectRoot)
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 28
	addi.d	$a3, $sp, 24
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB2_4
# %bb.2:                                # %.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(hRectRoot)
	ld.d	$fp, $a0, %got_pc_lo12(hRectRoot)
	.p2align	4, , 16
.LBB2_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 24
	move	$s0, $a0
	st.w	$a1, $a0, 0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 16
	st.d	$a0, $s2, 16
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 28
	addi.d	$a3, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	move	$s2, $s0
	bnez	$a0, .LBB2_3
.LBB2_4:                                # %._crit_edge
	ld.d	$s1, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(vRectRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vRectRoot)
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 28
	addi.d	$a3, $sp, 24
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB2_7
# %bb.5:                                # %.lr.ph17.preheader
	pcalau12i	$a0, %got_pc_hi20(vRectRoot)
	ld.d	$fp, $a0, %got_pc_lo12(vRectRoot)
	.p2align	4, , 16
.LBB2_6:                                # %.lr.ph17
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 24
	move	$s0, $a0
	st.w	$a1, $a0, 0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 16
	st.d	$a0, $s1, 16
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 28
	addi.d	$a3, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	move	$s1, $s0
	bnez	$a0, .LBB2_6
.LBB2_7:                                # %.loopexit
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	rectlink, .Lfunc_end2-rectlink
                                        # -- End function
	.globl	makeRLEtree                     # -- Begin function makeRLEtree
	.p2align	5
	.type	makeRLEtree,@function
makeRLEtree:                            # @makeRLEtree
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
	pcalau12i	$a0, %got_pc_hi20(LEroot)
	ld.d	$a0, $a0, %got_pc_lo12(LEroot)
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(HRlist)
	ld.d	$a1, $a1, %got_pc_lo12(HRlist)
	pcalau12i	$a2, %got_pc_hi20(LEptrs)
	ld.d	$s2, $a2, %got_pc_lo12(LEptrs)
	ld.d	$s3, $a1, 0
	st.d	$a0, $s2, 0
	beqz	$s3, .LBB3_7
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$s4, $a0, %got_pc_lo12(rectArray)
	move	$a1, $zero
	ld.d	$a0, $s4, 0
	lu12i.w	$a2, -245
	ori	$a2, $a2, 3520
	ori	$s5, $zero, 52
	lu12i.w	$a3, -251659
	ori	$s6, $a3, 3113
	lu12i.w	$a3, 20971
	pcalau12i	$a4, %got_pc_hi20(LEroot)
	ld.d	$fp, $a4, %got_pc_lo12(LEroot)
	ori	$s7, $a3, 2128
	lu12i.w	$a3, 10485
	ori	$s8, $a3, 3112
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a1, $s1, 3
	stx.d	$s3, $a0, $a1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	move	$a1, $s1
	move	$a2, $s0
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s3, $s3, 16
	beqz	$s3, .LBB3_7
.LBB3_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s3, 0
	mul.d	$a3, $a3, $s5
	add.d	$a3, $a0, $a3
	ld.w	$s0, $a3, 16
	bge	$a2, $s0, .LBB3_3
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s1, $a1, 1
	mul.d	$a2, $s1, $s6
	ld.d	$a0, $s2, 0
	add.d	$a2, $a2, $s7
	rotri.w	$a2, $a2, 2
	bltu	$s8, $a2, .LBB3_2
# %bb.6:                                #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, 808
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	b	.LBB3_2
.LBB3_7:                                # %._crit_edge
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
.Lfunc_end3:
	.size	makeRLEtree, .Lfunc_end3-makeRLEtree
                                        # -- End function
	.globl	makeRBEtree                     # -- Begin function makeRBEtree
	.p2align	5
	.type	makeRBEtree,@function
makeRBEtree:                            # @makeRBEtree
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
	pcalau12i	$a0, %got_pc_hi20(BEroot)
	ld.d	$a0, $a0, %got_pc_lo12(BEroot)
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(VRlist)
	ld.d	$a1, $a1, %got_pc_lo12(VRlist)
	pcalau12i	$a2, %got_pc_hi20(BEptrs)
	ld.d	$s2, $a2, %got_pc_lo12(BEptrs)
	ld.d	$s3, $a1, 0
	st.d	$a0, $s2, 0
	beqz	$s3, .LBB4_7
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$s4, $a0, %got_pc_lo12(rectArray)
	move	$a1, $zero
	ld.d	$a0, $s4, 0
	lu12i.w	$a2, -245
	ori	$a2, $a2, 3520
	ori	$s5, $zero, 52
	lu12i.w	$a3, -251659
	ori	$s6, $a3, 3113
	lu12i.w	$a3, 20971
	pcalau12i	$a4, %got_pc_hi20(BEroot)
	ld.d	$fp, $a4, %got_pc_lo12(BEroot)
	ori	$s7, $a3, 2128
	lu12i.w	$a3, 10485
	ori	$s8, $a3, 3112
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a1, $s1, 3
	stx.d	$s3, $a0, $a1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	move	$a1, $s1
	move	$a2, $s0
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s3, $s3, 16
	beqz	$s3, .LBB4_7
.LBB4_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s3, 0
	mul.d	$a3, $a3, $s5
	add.d	$a3, $a0, $a3
	ld.w	$s0, $a3, 24
	bge	$a2, $s0, .LBB4_3
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s1, $a1, 1
	mul.d	$a2, $s1, $s6
	ld.d	$a0, $s2, 0
	add.d	$a2, $a2, $s7
	rotri.w	$a2, $a2, 2
	bltu	$s8, $a2, .LBB4_2
# %bb.6:                                #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, 808
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	b	.LBB4_2
.LBB4_7:                                # %._crit_edge
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
.Lfunc_end4:
	.size	makeRBEtree, .Lfunc_end4-makeRBEtree
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rect Node: %d  at: %d %d "
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"  width:%d  height:%d\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"L NC;\n94 X%d %d %d;\n"
	.size	.L.str.2, 21

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"E\n"
	.size	.L.str.3, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hRectRoot
	.addrsig_sym vRectRoot
	.addrsig_sym LEroot
	.addrsig_sym BEroot
